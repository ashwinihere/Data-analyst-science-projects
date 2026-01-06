create database schoolperformance
use schoolperformance
--Display all student records to verify successful data import
select * from [dbo].[student_marks]
--To find the total number of students in the dataset:-(38)
select count(*) as Total_students from [dbo].[student_marks]
--Check for duplicate Roll Numbers to ensure each student is uniquely identified.
--no duplicates
select Roll_no, count(*) as Occurence_count from [dbo].[student_marks]
group by Roll_no having count(*)>1
--Check for null values
select *from [dbo].[student_marks] where Eng_term2_marks is null
--
select
sum(case when Roll_No is null then 1 else 0 end) as Null_Roll_no,
sum(case when Eng_term2_marks is null then 1 else 0 end) as Null_Eng_term2_marks,
sum(case when Eng_term1_marks is null then 1 else 0 end) as Null_Eng_term1_marks,
sum(case when Eng_total_marks is null then 1 else 0 end) as Null_Eng_total_marks,
sum(case when Eng_total_percent is null then 1 else 0 end) as Null_Eng_total_percent,
sum(case when Kan_term2_marks is null then 1 else 0 end) as Null_Kan_term2_marks,
sum(case when Kan_term1_marks is null then 1 else 0 end) as Null_Kan_term1_marks,
sum(case when Kan_total_marks is null then 1 else 0 end) as Null_Kan_total_marks,
sum(case when Kan_total_percent is null then 1 else 0 end) as Null_Kan_total_percent,
sum(case when Hin_term2_marks is null then 1 else 0 end) as Null_Hin_term2_marks,
sum(case when Hin_term1_marks is null then 1 else 0 end) as Null_Hin_term1_marks,
sum(case when Hin_total_marks is null then 1 else 0 end) as Null_Hin_total_marks,
sum(case when Hin_total_percent is null then 1 else 0 end) as Null_Hin_total_percent,
sum(case when Maths_term2_marks is null then 1 else 0 end) as Null_Maths_term2_marks,
sum(case when Maths_term1_marks is null then 1 else 0 end) as Null_Maths_term1_marks,
sum(case when Maths_total_marks is null then 1 else 0 end) as Null_Maths_total_marks,
sum(case when Maths_total_percent is null then 1 else 0 end) as Null_Maths_total_percent,
sum(case when EVS_term2_marks is null then 1 else 0 end) as Null_EVS_term2_marks,
sum(case when EVS_term1_marks is null then 1 else 0 end) as Null_EVS_term1_marks,
sum(case when EVS_total_marks is null then 1 else 0 end) as Null_EVS_total_marks,
sum(case when EVS_total_percent is null then 1 else 0 end) as Null_EVS_total_percent,
sum(case when Comp_term2_marks is null then 1 else 0 end) as Null_Comp_term2_marks,
sum(case when Comp_term1_marks is null then 1 else 0 end) as Null_Comp_term1_marks,
sum(case when Comp_total_marks is null then 1 else 0 end) as Null_Comp_total_marks,
sum(case when Comp_total_percent is null then 1 else 0 end) as Null_Comp_total_percent,
sum(case when Term1_grandtotal is null then 1 else 0 end) as Null_Term1_grandtotal,
sum(case when Term2_grandtotal is null then 1 else 0 end) as Null_Term2_grandtotal,
sum(case when Grand_total is null then 1 else 0 end) as Null_Grand_total,
sum(case when Grand_percent is null then 1 else 0 end) as Null_Grand_percent,
sum(case when Term1_percent is null then 1 else 0 end) as Null_Term1_percent,
sum(case when Term2_percent is null then 1 else 0 end) as Null_Term2_percent
from [dbo].[student_marks]
--
select * from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for 
English total marks and percentage to analyze student performance in English
Step: Analyze English Performance
-- Min English Total Marks: 76.5
-- Max English Total Marks: 193.5
-- Average English Total Marks: 143.60
-- Min English Total Percent: 38.25%
-- Max English Total Percent: 96.75%
-- Average English Total Percent: 71.80%
-- Insights:
-- 1. Wide range of student performance from 38% to 96%.
-- 2. Average performance is decent at around 71%.
-- 3. Some students may need extra support in English*/
select 
min(Eng_total_marks) as Min_Eng_total_marks, 
max(Eng_total_marks) as Max_Eng_total_marks,
cast(avg(Eng_total_marks) as decimal(10,2)) as Avg_Eng_total_marks,
min(Eng_total_percent) as Min_Eng_total_percent, 
max(Eng_total_percent) as Max_Eng_total_percent,
cast(avg(Eng_total_percent) as decimal(10,2)) as Avg_Eng_total_percent
from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for 
Kannada total marks and percentage to analyze student performance in Kannada
Step: Analyze Kannada Performance
-- Min Kannada Total Marks: 62
-- Max Kannada Total Marks: 197.75
-- Average Kannada Total Marks: 138.41
-- Min Kannada Total Percent: 31%
-- Max Kannada Total Percent: 98.88%
-- Average Kannada Total Percent: 69.20%
-- Insights:
-- 1. Wide student performance gap from 31% to 98%.
-- 2. Average performance is fair at around 69%, slightly lower than English.
-- 3. Some students may need extra support in Kannada.
-- 4. Kannada might be a subject where students need more engagement or better support strategies.*/
select 
min(Kan_total_marks) as Min_Kan_total_marks, 
max(Kan_total_marks) as Max_Kan_total_marks,
cast(avg(Kan_total_marks) as decimal(10,2)) as Avg_Kan_total_marks,
min(Kan_total_percent) as Min_Kan_total_percent, 
max(Kan_total_percent) as Max_Kan_total_percent,
cast(avg(Kan_total_percent) as decimal(10,2)) as Avg_Kan_total_percent
from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for 
Hindi total marks and percentage to analyze student performance in Hindi.
--Step: Analyze Hindi Performance
-- Min Hindi Total Marks: 63.5
-- Max Hindi Total Marks: 199
-- Average Hindi Total Marks: 145.84
-- Min Hindi Total Percent: 31.73%
-- Max Hindi Total Percent: 99.5%
-- Average Hindi Total Percent: 72.92%
-- Insights:
-- 1. Wide student performance gap from 31.73% to 99.5%.
-- 2. Average performance is good at around 72.92%, showing overall comfort with the subject.
-- 3. Some students need extra support to improve.
-- 4. Hindi appears to be a strong subject for most students, but focus is needed on the lowest performers.*/
select 
min(Hin_total_marks) as Min_Hin_total_marks, 
max(Hin_total_marks) as Max_Hin_total_marks,
cast(avg(Hin_total_marks) as decimal(10,2)) as Avg_Hin_total_marks,
min(Hin_total_percent) as Min_Hin_total_percent, 
max(Hin_total_percent) as Max_Hin_total_percent,
cast(avg(Hin_total_percent) as decimal(10,2)) as Avg_Hin_total_percent
from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for 
Maths total marks and percentage to analyze student performance in Maths.
-- Step: Analyze Maths Performance
-- Min Maths Total Marks: 73.5
-- Max Maths Total Marks: 189.25
-- Average Maths Total Marks: 126.70
-- Min Maths Total Percent: 36.75%
-- Max Maths Total Percent: 94.625%
-- Average Maths Total Percent: 63.35%
-- Insights:
-- 1. Maths seems to be the subject where students face the most difficulty so far. The average percentage (63.35%) is lower compared to English and Kannada, showing that overall class performance in Maths is weaker.
-- 2. The lowest scorer is at 36.75%, which is concerning. It shows that some students are struggling to grasp the subject.
-- 3. Even the highest scorer (94.625%) is slightly lower than the toppers in English and Kannada. This could mean that even the best students find Maths a bit challenging.
-- 4. The performance range is wide, but unlike English and Kannada, here it seems like the whole class is a little behind.
-- 5. Actionable Insight: School may consider extra Maths sessions, more practice tests, or peer tutoring programs to help raise the overall class performance.
-- 6. Teachers could also review whether the teaching pace or methods need to be adjusted.*/
select 
min(Maths_total_marks) as Min_Maths_total_marks, 
max(Maths_total_marks) as Max_Maths_total_marks,
cast(avg(Maths_total_marks) as decimal(10,2)) as Avg_Maths_total_marks,
min(Maths_total_percent) as Min_Maths_total_percent, 
max(Maths_total_percent) as Max_Maths_total_percent,
cast(avg(Maths_total_percent) as decimal(10,2)) as Avg_Maths_total_percent
from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for 
EVS total marks and percentage to analyze student performance in EVS.
-- Step: Analyze EVS Performance
-- Min EVS Total Marks: 75.5
-- Max EVS Total Marks: 196
-- Average EVS Total Marks: 133.31
-- Min EVS Total Percent: 37.75%
-- Max EVS Total Percent: 98%
-- Average EVS Total Percent: 66.65%

-- Insights:
-- 1. EVS performance is somewhat better than Maths but still lower compared to English and Kannada.
-- 2. The average percentage is 66.65%, which shows that most students are passing but may not have mastered the subject fully.
-- 3. The minimum score of 37.75% indicates there are a few students struggling significantly in EVS.
-- 4. The top score is 98%, showing that some students are doing really well and understand the subject deeply.
-- 5. The gap between the top and bottom scorers is wide, suggesting mixed understanding across the class.
-- 6. Actionable Insight: Teachers may consider more interactive or practical teaching methods for EVS to help engage weaker students.
-- 7. Class activities like group projects, field visits, or hands-on experiments might help boost interest and perform
*/
select 
min(EVS_total_marks) as Min_EVS_total_marks, 
max(EVS_total_marks) as Max_EVS_total_marks,
cast(avg(EVS_total_marks) as decimal(10,2)) as Avg_EVS_total_marks,
min(EVS_total_percent) as Min_EVS_total_percent, 
max(EVS_total_percent) as Max_EVS_total_percent,
cast(avg(EVS_total_percent) as decimal(10,2)) as Avg_EVS_total_percent
from [dbo].[student_marks]
--
select * from [dbo].[student_marks]
--
update [dbo].[student_marks] 
set Comp_total_percent = ((Comp_term1_marks + Comp_term2_marks)/75.0)*100
/*Calculating minimum, maximum, and average for 
Comp total marks and percentage to analyze student performance in Comp.
-- Step: Analyze Computer Performance
-- Min Computer Total Marks: 31.5
-- Max Computer Total Marks: 74
-- Average Computer Total Marks: 48.18
-- Min Computer Percent: 42%
-- Max Computer Percent: 98.67%
-- Average Computer Percent: 64.25%

-- Insights:
-- 1. The minimum percentage (42%) shows that even the lowest performers are not drastically behind.
-- 2. The average percentage (64.25%) is quite reasonable, especially considering this is an additional subject.
-- 3. The highest performers are scoring close to full marks (98.67%), indicating that students who focus on this subject can excel.
-- 4. The performance range is healthy but not too wide, suggesting more consistency in how students approach this subject compared to core subjects.
-- 5. Actionable Insight: Since Computer is an extra subject, the school may not need to put heavy additional effort here, but can encourage high performers to explore more advanced computer skills.
-- 6. The correction in percentage calculation has given a more accurate picture of student performance.
*/
select 
min(Comp_total_marks) as Min_Comp_total_marks, 
max(Comp_total_marks) as Max_Comp_total_marks,
cast(avg(Comp_total_marks) as decimal(10,2)) as Avg_Comp_total_marks,
min(Comp_total_percent) as Min_Comp_total_percent, 
cast(max(Comp_total_percent) as decimal(10,2))as Max_Comp_total_percent,
cast(avg(Comp_total_percent) as decimal(10,2)) as Avg_Comp_total_percent
from [dbo].[student_marks]
/*Calculating minimum, maximum, and average for Term1  total marks, Term 2 total marks ,
Grand total marks  and Term1  total percentage, Term 2 total percentage , Grand total percent
to analyze student performance.
-- Step: Analyze Term-wise and Overall Performance
-- Term 1 Grand Total:
-- Min: 146.5, Max: 512.75, Avg: 349.03
-- Term 2 Grand Total:
-- Min: 241, Max: 529.75, Avg: 387.00
-- Yearly Grand Total:
-- Min: 387.5, Max: 1041, Avg: 736.03
-- Term 1 Percentage:
-- Min: 27.90%, Max: 97.67%, Avg: 66.48%
-- Term 2 Percentage:
-- Min: 43.82%, Max: 96.32%, Avg: 70.36%
-- Yearly Grand Percentage:
-- Min: 36.05%, Max: 96.84%, Avg: 68.47%
-- Insights:
-- 1. Students generally performed better in Term 2 
(higher average and minimum) compared to Term 1.
-- 2. The lowest percentage in Term 1 is very concerning at 
27.9% – this student was at risk of failing early in the year.
-- 3. Grand Percentages show most students are performing around 68%, 
which is decent but shows room for improvement.
-- 4. The improvement from Term 1 to Term 2 (avg from 66.48% to 70.36%)
indicates positive progress across the class.
-- 5. Actionable Insight: Students who struggled in Term 1 seem to 
have recovered somewhat in Term 2 – the school could explore what support
or changes helped and strengthen those strategies.
-- 6. The school can aim to raise the class average closer to 75%
in future terms with focused interventions.
*/
select 
min(Term1_grandtotal) as Min_Term1_grandtotal, 
max(Term1_grandtotal) as Max_Term1_grandtotal,
cast(avg(Term1_grandtotal) as decimal(10,2)) as Avg_Term1_grandtotal,
min(Term2_grandtotal) as Min_Term2_grandtotal, 
max(Term2_grandtotal) as Max_Term2_grandtotal,
cast(avg(Term2_grandtotal) as decimal(10,2)) as Avg_Term2_grandtotal,
min(Grand_total) as Min_Grand_total, 
max(Grand_total) as Max_Grand_total,
cast(avg(Grand_total) as decimal(10,2)) as Avg_Grand_total,
cast(min(Term1_percent) as decimal(10,2)) as Min_Term1_percent, 
cast(max(Term1_percent) as decimal(10,2)) as Max_Term1_percent,
cast(avg(Term1_percent) as decimal(10,2)) as Avg_Term1_percent,
cast(min(Term2_percent) as decimal(10,2)) as Min_Term2_percent, 
cast(max(Term2_percent) as decimal(10,2)) as Max_Term2_percent,
cast(avg(Term2_percent) as decimal(10,2)) as Avg_Term2_percent,
cast(min(Grand_percent) as decimal(10,2)) as Min_Grand_percent, 
cast(max(Grand_percent) as decimal(10,2)) as Max_Grand_percent,
cast(avg(Grand_percent) as decimal(10,2)) as Avg_Grand_percent
from [dbo].[student_marks]
--Add a grade column 
alter table [dbo].[student_marks]
add Grade varchar(4)
--Not mentioned term which can be confusing as we want three grade column so drop column
alter table [dbo].[student_marks]
drop column Grade
--Check table if Grade column is dropped or not 
select * from [dbo].[student_marks]
--Add three column for grade for term1%, term2% and grand total %
alter table [dbo].[student_marks]
add Term1_grade varchar(5),
    Term2_grade varchar(5),
    Grand_grade varchar(5)
/*Step: Assign Grades Based on Term 1, Term 2, and Grand Percentages
-- Purpose: Categorize student performance into grades (A to E) based on percentage ranges
-- Logic:
-- A: 90–100%, B: 80–89%, C: 70–79%, D: 60–69%, E: Below 60%
-- This helps simplify analysis, reporting, and identifying students who need academic support*/
--1. For term1_grade
update [dbo].[student_marks]
set Term1_grade =
case 
when Term1_percent >= 90 then 'A'
when Term1_percent >= 80 then 'B'
when Term1_percent >= 70 then 'C'
when Term1_percent >= 60 then 'D'
else 'E'
End
--2.For term 2 Grade
update [dbo].[student_marks]
set Term2_grade =
case 
when Term2_percent >= 90 then 'A'
when Term2_percent >= 80 then 'B'
when Term2_percent >= 70 then 'C'
when Term2_percent >= 60 then 'D'
else 'E'
end
--3.For Grand Grade
update [dbo].[student_marks]
set Grand_grade =
case 
when Grand_percent >= 90 then 'A'
when Grand_percent >= 80 then 'B'
when Grand_percent >= 70 then 'C'
when Grand_percent >= 60 then 'D'
else 'E'
end
--To go through table to check all included grades in the new columns
select * from [dbo].[student_marks]
/*Step: Analyze Grade Distribution for Term 1
-- Purpose: Understand how many students fall into each grade category
-- Grouped by: Term1_Grade
-- This gives a quick overview of class performance and helps identify grade trends and academic gaps*/
--1. For Term1 Grade
select Term1_grade,count(*)as Grade_count from [dbo].[student_marks] group by Term1_grade
/*Insights:
-- A total of 5 students achieved Grade A (excellent performance)
-- 14 students received Grade E (scored below 60%), which is a major concern
-- The distribution shows that a large portion of the class is underperforming
-- Interventions should be planned to support students in Grades D and E*/
--2.For term2
select count(*) as Grade_count,Term2_grade from [dbo].[student_marks] group by Term2_grade
/*Insights:
-- 5 students scored A (excellent performance in Term 2)
-- 7 students received B and 7 got C - a solid middle-performing group
-- 7 students scored D - may need support to improve
-- 12 students scored E (below 60%) - shows continued academic struggle for a large portion
-- Suggests the need for academic reinforcement or review sessions for struggling students*/
--3.For term3
select count(*) as Grade_count,Grand_grade from [dbo].[student_marks] group by Grand_grade
/*Insights:
-- Only 5 students scored A overall — indicates high standards or tough assessments
-- 6 students got B and 7 got C - consistent mid-range performers
-- 8 students scored D and 12 students scored E overall - over 50% of students are below 70%
-- Indicates that many students are struggling with consistency or overall syllabus coverage
-- Recommendation: Schools may consider cumulative revision programs or parent-teacher 
consultations for students in D/E groups*/