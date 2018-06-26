BEGIN;
CALL simpleQuestion();
SELECT `answer` INTO @herAnswer FROM `paivand` WHERE `question`='you busy Saturday?';
//
CASE
	IF @herAnswer='No' THEN
	SET nextQuestion = CONCAT('Wanna see a comedy show with me', '?');
		RETURN nextQuestion;
	END IF;
	CALL Alex(480-751-9969);
ELSE
	UPDATE alex.notes SET answer='NO', SET paivandStatus='SheBusy', SET Noted='Noted!';
	INSERT `head` INTO `hands`;
	CALL cry();
END;
/*
Low key. No pressure. No SQL response needed. lol.
Event details & location => http://comedyunderground.com/event/kortney-shane-williams-rodger-lizaola-comedy-recording-session/2016-10-21/
*/
