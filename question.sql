BEGIN;
CALL simpleQuestion();
SELECT `answer` INTO @myAnswer FROM `paivand` WHERE `question`='are you single?';
//
CASE
	IF @myAnswer='yes' THEN
	SET nextQuestion = CONCAT('Wanna go out sometime', '?');
		RETURN nextQuestion;
	END IF;
	CALL Alex(4807519969);
ELSE
	UPDATE alex.notes SET answer='NO', SET paivandStatus='NotSingle', SET Noted='Noted!';
	INSERT `head` INTO `hands`;
	CALL cry();
END;
/*
Low key. No pressure. No SQL response needed. lol.
*/
