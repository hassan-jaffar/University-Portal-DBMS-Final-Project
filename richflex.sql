
use richflex


INSERT INTO teachers (teacherId, tchname, email, password, gendar, cnic, phoneNo, nationality)
VALUES 
    ('001', 'Ali Hassan', 'alihassan@gmail.com', 'password123', 'M', '35202-5678945-7', '03215678901', 'Pakistani'),
    ('002', 'Saba Asif', 'sabaasif@hotmail.com', 'password456', 'F', '42301-2345678-9', '03334567890', 'Pakistani'),
    ('003', 'Khalid Raza', 'khalidraza@gmail.com', 'password789', 'M', '31205-6789123-4', '03123456789', 'Pakistani'),
    ('004', 'Fizza Naqvi', 'fizzanaqvi@yahoo.com', 'passwordabc', 'F', '42401-3456789-0', '03001234567', 'Pakistani'),
    ('005', 'Ahmed Ali', 'ahmedali@gmail.com', 'passworddef', 'M', '36402-4567890-1', '03332345678', 'Pakistani')

INSERT INTO students (rollnum, stdname, email, password, dob, fatherName, bloodGroup, cnic, phoneNo, gendar, nationality, degree)
VALUES
    ('PAK00001', 'Ali Khan', 'alikhan@gmail.com', 'password123', '1999-05-20', 'Mohammad Khan', 'B+', '11111-1111111-1', '0333-123456', 'M', 'Pakistani', 'BSSE'),
    ('PAK00002', 'Sana Ahmed', 'sanaahmed@yahoo.com', 'sana123', '2000-02-14', 'Ahmed Khan', 'O+', '22222-2222222-2', '0300-987654', 'F', 'Pakistani', 'BSCS'),
    ('PAK00003', 'Usman Ali', 'usman_ali@hotmail.com', 'usman123', '1998-11-30', 'Abdul Ali', 'AB+', '33333-3333333-3', '0321-246810', 'M', 'Pakistani', 'BBA'),
    ('PAK00004', 'Aisha Mahmood', 'aishmahmood@gmail.com', 'aisha123', '2001-07-01', 'Mahmood Khan', 'A-', '44444-4444444-4', '0345-135790', 'F', 'Pakistani', 'BEd'),
    ('PAK00005', 'Ahmed Hassan', 'ahmedhassan@yahoo.com', 'ahmed123', '1999-09-10', 'Hassan Ali', 'B-', '55555-5555555-5', '0312-345678', 'M', 'Pakistani', 'BBA');

INSERT INTO AvailableCourses (crsId, crsName, department, creditHours, gradingScheme, fee)
VALUES
    ('100', 'Introduction to Computer Science', 'CS', 3, 'r', 5000),
    ('101', 'English Composition', 'ENG', 3, 'r', 5000),
    ('102', 'Calculus I', 'MATH', 4, 'r', 6000),
    ('103', 'Mechanics', 'PHYS', 3, 'r', 5500),
    ('104', 'Introduction to Management', 'MGMT', 3, 'r', 5000)

INSERT INTO courseSections (sectionId, courseId, section, instId, startTime, endTime, roomNum)
VALUES
    ('200', '100', 'A1', '001', '08:00:00', '09:30:00', 'A101'),
    ('201', '101', 'B1', '002', '10:00:00', '11:30:00', 'B102'),
    ('202', '102', 'C1', '003', '13:00:00', '14:30:00', 'C101'),
    ('203', '103', 'D1', '004', '15:00:00', '16:30:00', 'D103'),
    ('204', '104', 'E1', '005', '11:00:00', '12:30:00', 'E102')

INSERT INTO allotedSections ( stdId, sectionId, attendnace, feedback)
VALUES  ('PAK00001', '200', 90, 'Good job!'),
		('PAK00002', '200', 85, 'Could improve attendance'),
		('PAK00003', '201', 95, 'Excellent work!'),
		('PAK00004', '201', 75, 'Needs to work on assignments'),
		('PAK00005', '202', 100, 'Outstanding performance!')

INSERT INTO transcript ( stdId, sectionId, grade, semesterNum) 
VALUES ('PAK00001', '200', 'A', 'Fall 2022'),
       ( 'PAK00002', '201', 'B+', 'Fall 2022'),
       ( 'PAK00003', '201', 'C', 'Fall 2022'),
       ( 'PAK00004', '200', 'B', 'Fall 2022'),
       ( 'PAK00005', '201', 'A-', 'Fall 2022')

INSERT INTO attendance ( stdId, sectionId, classDate, status) 
VALUES ( 'PAK00001', '200', '2022-09-01', 'P'),
       ( 'PAK00002', '201', '2022-09-02', 'P'),
       ( 'PAK00003', '201', '2022-09-03', 'A'),
       ('PAK00004', '200', '2022-09-04', 'P'),
       ( 'PAK00005', '201', '2022-09-05', 'P')

INSERT INTO marks (marksid, stdId, sectionId, q1, q2, q3, a1, a2, a3, a4, m1, m2, f, gtotal) 
VALUES ('M001', 'PAK00001', '200', 15, 20, 18, 10, 12, 13, 14, 45, 46, 78, 261),
       ('M002', 'PAK00002', '201', 12, 14, 16, 15, 17, 18, 19, 41, 48, 80, 270),
       ('M003', 'PAK00003', '201', 18, 19, 20, 12, 14, 16, 18, 40, 44, 76, 277),
       ('M004', 'PAK00004', '200', 16, 17, 18, 11, 13, 15, 17, 42, 48, 79, 268),
       ('M005', 'PAK00005', '201', 20, 20, 20, 20, 20, 20, 20, 50, 50, 90, 310)

INSERT INTO list (listId, stdId, gpa) 
VALUES ('L001', 'PAK00001', 3.6),
       ('L002', 'PAK00002', 3.2),
       ('L003', 'PAK00003', 2.8),
       ('L004', 'PAK00004', 3.4),
       ('L005', 'PAK00005', 3.9)

INSERT INTO feeDetails (challanId, stdId, totalFees, semNum, status)
VALUES 
  ('01', 'PAK00001', 20000, 1, 'p'),
  ('02', 'PAK00002', 15000, 1, 'n'),
  ('03', 'PAK00003', 25000, 2, 'n'),
  ('04', 'PAK00004', 18000, 2, 'p'),
  ('05', 'PAK00005', 20000, 3, 'n')





--LOGIN STUDENT
create procedure loginToAccount
@id char(8),
@password  varchar(256)
as 
begin
	select * from students as s where s.rollnum = @id and s.password = @password
end

execute loginToAccount
@id = 'PAK00001',
@password = 'password123'


--SIGNUP STUDENT
CREATE PROCEDURE StudentSignUp
    @rollnum CHAR(8),
    @stdname VARCHAR(256),
    @email VARCHAR(21),
    @password VARCHAR(256),
    @dob DATE,
    @fatherName VARCHAR(256),
    @bloodGroup CHAR(3),
    @cnic CHAR(15),
    @phoneNo CHAR(11),
    @gendar CHAR(1),
    @nationality VARCHAR(256),
    @degree CHAR(4)
AS
BEGIN
    IF NOT EXISTS (SELECT 1 FROM students WHERE rollnum = @rollnum)
    BEGIN
        INSERT INTO students (rollnum, stdname, email, password, dob, fatherName, bloodGroup, cnic, phoneNo, gendar, nationality, degree)
        VALUES (@rollnum, @stdname, @email, @password, @dob, @fatherName, @bloodGroup, @cnic, @phoneNo, @gendar, @nationality, @degree)
        SELECT 'Signup successful' AS Status
    END
    ELSE
    BEGIN
        SELECT 'Roll number already exists. Please use a different roll number.' AS Status
    END
END

execute StudentSignUp 'PAK00006', 'Zainab Ali', 'zainabali@gmail.com', 'zainab123', '2002-03-15', 'Ali Khan', 'A+', '66666-6666666-6', '0312-345678', 'F', 'Pakistani', 'BSSE'


--TEACHER SIGN UP
CREATE PROCEDURE spTeacherSignUp
    @teacherId char(3),
    @tchname varchar(256),
    @email char(21),
    @password varchar(256),
    @gender char(1),
    @cnic char(15),
    @phoneNo char(11),
    @nationality varchar(256)
AS
BEGIN
    SET NOCOUNT ON;

    -- check if the teacher ID already exists
    IF EXISTS(SELECT * FROM teachers WHERE teacherId = @teacherId)
    BEGIN
        THROW 50001, 'Teacher ID already exists', 1;
        RETURN;
    END

    -- insert the new teacher record
    INSERT INTO teachers (teacherId, tchname, email, password, gendar, cnic, phoneNo, nationality)
    VALUES (@teacherId, @tchname, @email, @password, @gender, @cnic, @phoneNo, @nationality);

    -- return success message
    SELECT 'Teacher sign-up successful.' AS Message;
END

EXECUTE spTeacherSignUp 
    @teacherId = '006',
    @tchname = 'Samin Iftikhar',
    @email = 'samin@example.com',
    @password = 'mypassword',
    @gender = 'F',
    @cnic = '123456789012345',
    @phoneNo = '01234567890',
    @nationality = 'Pakistani';


--TEACHER LOGIN
CREATE PROCEDURE spTeacherLogin
    @teacherId char(3),
    @password varchar(256)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the teacherId and password match a record in the teachers table
    IF EXISTS (SELECT * FROM teachers WHERE teacherId = @teacherId AND password = @password)
    BEGIN
        -- Return the teacher's information if a match is found
        SELECT teacherId, tchname, email, gendar, cnic, phoneNo, nationality
        FROM teachers
        WHERE teacherId = @teacherId;
    END
    ELSE
    BEGIN
        -- If no match is found, return an error message
        PRINT 'Invalid login credentials';
    END
END

EXEC spTeacherLogin '001', 'password123';


--REGISTER COURSE
CREATE PROCEDURE spCrsRegistration
    @rollnum char(8),
    @sectionId char(4),
    @action varchar(10) -- 'register' or 'withdraw'
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if the student has already registered for the section
    IF @action = 'register' AND EXISTS (SELECT * FROM allotedSections WHERE stdId = @rollnum AND sectionId = @sectionId)
    BEGIN
        PRINT 'You have already registered for this section.';
        RETURN;
    END

    -- Check if the student has the required number of credits to register for the course
    IF @action = 'register' AND EXISTS (
        SELECT *
        FROM AvailableCourses ac
        INNER JOIN courseSections cs ON ac.crsId = cs.courseId
        WHERE cs.sectionId = @sectionId
        AND NOT EXISTS (
            SELECT *
            FROM allotedSections als
            INNER JOIN courseSections cse ON als.sectionId = cse.sectionId
            WHERE als.stdId = @rollnum
            AND cse.startTime BETWEEN cs.startTime AND cs.endTime
            AND cse.endTime BETWEEN cs.startTime AND cs.endTime
        )
        AND ac.creditHours > (
            SELECT SUM(ac.creditHours)
            FROM allotedSections als
            INNER JOIN courseSections cse ON als.sectionId = cse.sectionId
            INNER JOIN AvailableCourses ac ON cse.courseId = ac.crsId
            WHERE als.stdId = @rollnum
            AND cse.startTime BETWEEN cs.startTime AND cs.endTime
            AND cse.endTime BETWEEN cs.startTime AND cs.endTime
        )
    )
    BEGIN
        PRINT 'You do not have enough credits to register for this course.';
        RETURN;
    END

    -- Check if the section has available spots
    IF @action = 'register' AND EXISTS (
        SELECT *
        FROM courseSections cs
        INNER JOIN (
            SELECT als.sectionId, COUNT(*) AS numStudents
            FROM allotedSections als
            GROUP BY als.sectionId
        ) als ON cs.sectionId = als.sectionId
        WHERE cs.sectionId = @sectionId
        AND als.numStudents >= (
            SELECT COUNT(*) + 1
            FROM allotedSections
            WHERE sectionId = @sectionId
        )
    )
    BEGIN
        PRINT 'This section is full.';
        RETURN;
    END

    -- Register or withdraw the student from the section
    IF @action = 'register'
    BEGIN
        INSERT INTO allotedSections ( stdId, sectionId)
        VALUES (@rollnum, @sectionId);
		
		DECLARE @alsodoofus varchar(10) 
		select @alsodoofus = semester from courseSections as cs where cs.sectionId = @sectionId

		Insert into transcript(stdId, sectionId,grade, semesterNum)
		VALUES ( @rollNum, @sectionId, NULL, @alsodoofus)
        PRINT 'Registration successful.';
    END
    ELSE IF @action = 'withdraw'
    BEGIN
        DELETE FROM allotedSections
        WHERE stdId = @rollnum
        AND sectionId = @sectionId;

		DELETE FROM transcript
		where stdId = @rollnum and sectionId = @sectionId

        PRINT 'Withdrawal successful.';
    END
    ELSE
    BEGIN
        PRINT 'Invalid action.';
        RETURN;
    END
 

    -- Display details of the registered courses
    SELECT cs.sectionId, ac.crsName, ac.creditHours, cs.startTime, cs.endTime, cs.roomNum
    FROM allotedSections als
    INNER JOIN courseSections cs ON als.sectionId = cs.sectionId
    INNER JOIN AvailableCourses ac ON cs.courseId = ac.crsId
    WHERE als.stdId = @rollnum;
END


EXEC spCrsRegistration 
    @rollnum = 'PAK00001', 
    @sectionId = '204',
	@action = 'register'

select * from transcript where stdId = 'PAK00001'
select * from courseSections
select * from AvailableCourses

--CHANGE GRADE
CREATE PROCEDURE spChangeStdGrade
    @teacherId varchar(10),
    @studentRollNum varchar(10),
    @crsId varchar(10),
    @newGrade varchar(2)
AS
BEGIN
    -- Check if the teacher is teaching the specified course
    IF EXISTS (SELECT * FROM courseSections WHERE courseId = @crsId AND instId = @teacherId)
    BEGIN
        -- Check if the student is enrolled in the specified course
        IF EXISTS (SELECT * FROM allotedSections AS a JOIN courseSections AS c ON a.sectionId = c.sectionId WHERE a.stdId = @studentRollNum AND c.courseId = @crsId)
        BEGIN
            -- Update the grade in the student's transcript
            UPDATE transcript
            SET grade = @newGrade
            WHERE stdId = @studentRollNum AND sectionId = (select sectionId from courseSections as cs where cs.courseId = @crsId)
        END
        ELSE
        BEGIN
            RAISERROR('The specified student is not enrolled in the specified course', 16, 1)
        END
    END
    ELSE
    BEGIN
        RAISERROR('The specified teacher is not assigned to the specified course', 16, 1)
    END
END


EXEC spChangeStdGrade @teacherId = '001', @studentRollNum = 'PAK00001', @crsId = '100', @newGrade = 'F'

select * from courseSections

select * from transcript --where stdId = 'PAK00001'

select s.stdId, s.grade, s.sectionId, ac.crsName, ac.crsId from transcript as s, AvailableCourses as ac, courseSections as cs 
where s.stdId = 'PAK00001' and ac.crsId = cs.courseId and cs.sectionId = s.sectionId


--VIEW TRANSCRIPT
CREATE PROCEDURE spViewGrades (
    @studentId char(8)
)
AS
BEGIN
    
        select s.stdname, t.stdId, t.semesterNum, t.sectionId, cs.courseId, ac.crsName, t.grade, ac.creditHours, ac.department
		from transcript t, courseSections cs, availableCourses ac, students s
		where s.rollnum = @studentId and t.stdId = s.rollnum and ac.crsId = cs.courseId and cs.sectionId = t.sectionId
END

--CHECK ATTENDANCE
CREATE PROCEDURE spCheckAttendance
    @studentID CHAR(8)
AS
BEGIN
    SET NOCOUNT ON;

    -- Check if student exists
    IF NOT EXISTS (SELECT * FROM Students WHERE rollnum = @studentID)
    BEGIN
        RAISERROR('Invalid student ID', 16, 1);
        RETURN;
    END

    -- Get all courses the student is registered in
    SELECT als.sectionId, cs.courseId, ac.crsName, als.attendnace
    FROM allotedSections as als, courseSections as cs, AvailableCourses as ac
    WHERE als.stdId = @studentID and cs.sectionId = als.sectionId and ac.crsId = cs.courseId
END


--UPDATE ATTENDANCE
create procedure spChangeAttendance @studentId char(8), @teacherId char(3), @sectionId char(4), 
@status char(1), @classDate date
as
BEGIN
	--CHECK IF STUDENT IS REGISTERED IN COURSE OR NOT
	if exists (select * from transcript t where t.stdId = @studentId and t.sectionId = @sectionId)
	begin
		IF EXISTS (SELECT * FROM courseSections WHERE sectionId = @sectionId AND instId = @teacherId)
		BEGIN
			UPDATE attendance
			set attendance.status = @status
			where attendance.stdId = @studentId and attendance.sectionId = @sectionId	

			select * from attendance where stdId = 'PAK00001'
		END
		else
		begin 
			select 'Teacher not registred' as status		
		END
	END
	else
	begin
		select 'Student not registred' as status
	end
END

select * from attendance where std

exec spChangeAttendance @studentId = 'PAK00001', @sectionId = '204', @status = 'P', @teacherId = '005'
