--1
SELECT A_STRONGLY_AGREE
  FROM nss
 WHERE question='Q01'
   AND institution='Edinburgh Napier University'
   AND subject='(8) Computer Science'


--2
SELECT institution, subject
  FROM nss
 WHERE question='Q15'
   AND score>=100


--3
SELECT institution,score
  FROM nss
 WHERE question='Q15'
   AND score<50
   AND subject='(8) Computer Science'


--4
SELECT subject,sum(response)
  FROM nss
 WHERE question='Q22'
   AND (subject='(8) Computer Science'
OR subject='(H) Creative Arts and Design')
GROUP BY subject


--5
SELECT subject, SUM(A_STRONGLY_AGREE*response/100)
  FROM nss
 WHERE question='Q22'
AND (subject='(8) Computer Science'
OR subject='(H) Creative Arts and Design')
GROUP BY subject
