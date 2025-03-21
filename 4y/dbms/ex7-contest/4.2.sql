update
    Marks
set
    Mark = (
        select
            Mark
        from
            NewMarks
        where
            StudentId = Marks.StudentId
            and CourseId = Marks.CourseId
    )
    where exists (
        select
            StudentId, CourseId, Mark
        from
            NewMarks
        where
            StudentId = Marks.StudentId
            and CourseId = Marks.CourseId
    )
;
