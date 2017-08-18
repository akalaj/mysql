# Rebuild Process For Insight

<i>This is a general overview of the process required to rebuild the insight slaves.</i>

<b>Players Involved In The Operation</b>

```
db-insight-1201.ord.smartsheet.com
db-insight-1202.ord.smartsheet.com
db-insight-1203.ord.smartsheet.com
db-insight-1204.ord.smartsheet.com
db-insight-1205.ord.smartsheet.com
```

## Synopsis

In the wake of the latest Insight binary corruption, we find ourselves in a position where we need to rebuild all Insight slaves. While we are trying to rebuild the slaves, we are also wanting to cut over to a Insight master that will allow us to use LVM rebuilds in the event that binary corruption occurs again.

# Rebuild Methodology

1.) Create "state-in-time" snapshot of Insight Master data locally

2.) Ship the data from 1201 TO 1202

3.) Let replica 1202 catch up to 1201

4.) Once master/replica sync'ed cutover to 1202

5.) LVM Snapshot 1202 for the rebuild of 1203

6.) Ship data to 1203 FROM 1202

7.) Let replica 1203 catch up on replication

8.) LVM snapshot 1203 for rebuild of 1204 {repeat for 1205}

<b><u>TimeFrames</u></b>
```
Step 1 => 12 hours for build
Step 2 => 24 hours for shipment
Step 3 => 24 hours for sync
Step 4 => 1 hour (Time designated for cutover)
Step 5 => 1 minute for snapshot
Step 6 => 12 hours for shipment
Step 7 => 24 hours for sync

EST COMPLETION TIME: 5 days
```
