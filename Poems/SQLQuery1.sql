-- 1. What grades are stored in the database?
SELECT Name FROM Grade; 

-- 2. What emotions may be associated with a poem?
-- select emotions form poem 
SELECT PoemEmotion.EmotionId 
  FROM PoemEmotion
  GROUP BY PoemEmotion.EmotionId;

-- 3. How many poems are in the database?
select COUNT(poem.Id) FROM Poem; 

-- 4. Sort authors alphabetically by name. 
-- What are the names of the top 76 authors?
SELECT Author.Name 
FROM Author
WHERE Author.Id < 77;

-- 5. Starting with the above query, add the grade of each of the authors.
SELECT * 
 FROM Author a
 INNER JOIN
 Grade g on a.GradeId = g.id
 ORDER BY a.name;

-- 6. Starting with the above query, add the recorded gender of each of the authors.
SELECT * 
 FROM Author a
 INNER JOIN
 Gender g on a.GenderId = g.id
 ORDER BY a.name;


-- 7. What is the total number of words in all poems in the database?
SELECT Sum(Poem.WordCount) as 'Total Word count'
 FROM Poem;

-- 8. Which poem has the fewest characters?
SELECT Min(Poem.CharCount) as 'Min Character count'
 FROM Poem;

-- 9. How many authors are in the third grade?
SELECT COUNT(GradeId)
from Author
Where GradeId BETWEEN 1 AND 3;

-- 10. How many authors are in the first, second or third grades?
SELECT Count(au.name) 
from Author au 
WHERE au.gradeId = (
	SELECT g.id 
	FROM Grade g 
	WHERE g.name = '3rd grade');

-- 11. What is the total number of poems written by fourth graders?
select count(p.Title) as 'numPoems4thGrade'
from Poem p
join Author a on p.AuthorId = a.id
WHERE a.GradeId = 4;

-- 12. How many poems are there per grade?


-- 13. How many authors are in each grade? (Order your results by grade starting with 1st Grade)

-- 14. What is the title of the poem that has the most words?

-- 15. Which author(s) have the most poems? (Remember authors can have the same name.)

-- 16. How many poems have an emotion of sadness?

-- 17. How many poems are not associated with any emotion?

-- 18. Which emotion is associated with the least number of poems?

-- 19. Which grade has the largest number of poems with an emotion of joy?

-- 20. Which gender has the least number of poems with an emotion of fear?