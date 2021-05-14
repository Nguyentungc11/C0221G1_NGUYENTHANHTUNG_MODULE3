use management_study;
insert into class
values  (1,'A','2021-12-12',1),
		(2,'B','2021-09-16',1),
		(3,'C','2021-04-25',0),
		(4,'D','2021-11-08',0),
		(5,'A','2021-01-08',1);
        
insert into student(student_name,address,phone,`status`,class_id)
values  ("Hùng","Đà Nẵng","0909564254",1,1 ),    
		("Nam","Quảng Nam ","0905564232",1,2),    
		("Ngọc","Hà Nội","0923564214",1,2 ),    
		("Quỳnh","Quảng Ngãi","0905564987",1,3),
		("Hương","Quảng Ninh","0125564987",1,4);
        
insert into subjects(sub_name,credit,`status`)
values  ("toán",2,1),
		("lí",6,1),
		("hóa",4,0),
		("văn",1,0),
		("toán",5,1);
insert into mark(sub_id,student_id,mark,exam_time)
values  (1, 1, 8, 1),
        (2, 2, 10, 2),
        (3, 3, 12, 1),
		(4, 5, 14, 3),
		(5, 4, 15, 4);

