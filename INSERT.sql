INSERT INTO Work_Location VALUES ('N','North',4,'Ha Giang');
INSERT INTO Work_Location VALUES ('E','East',4,'Khanh Hoa');
INSERT INTO Work_Location VALUES ('W','West',4,'Dien Bien');
INSERT INTO Work_Location VALUES ('S','South',4,'Ca Mau');

INSERT INTO Department VALUES ('HR','Human Resources');
INSERT INTO Department VALUES ('SD','Software Development');
INSERT INTO Department VALUES ('DA','Data Analysis');
INSERT INTO Department VALUES ('DS','Data Science');
INSERT INTO Department VALUES ('BI','Business Intelligence');
INSERT INTO Department VALUES ('DE','Data Engineering');
INSERT INTO Department VALUES ('MF','Manufacturing');
INSERT INTO Department VALUES ('QC','Quality Control');

INSERT INTO Employee VALUES ('N101','Long','Nguyen','14-APR-16','N','DA');
INSERT INTO Employee VALUES ('N102','Minh','Le','15-JUL-21','N','HR');
INSERT INTO Employee VALUES ('E101','Minh','Pham','20-JUN-20','E','DS');
INSERT INTO Employee VALUES ('E102','Kien','Tran','01-APR-18','E','SD');
INSERT INTO Employee VALUES ('E103','Hung','Nguyen','23-FEB-22','E','DE');
INSERT INTO Employee VALUES ('W101','Hoang','Tong','18-MAR-19','W','SD');
INSERT INTO Employee VALUES ('W102','Duy','Pham','14-APR-24','W','DA');
INSERT INTO Employee VALUES ('W103','Uyen','Hoang','19-OCT-21','W','QC');
INSERT INTO Employee VALUES ('S101','Tien','Le','31-MAY-21','S','MF');
INSERT INTO Employee VALUES ('S102','Anh','Ngo','24-DEC-20','S','QC');


INSERT INTO AccountDetails VALUES ('AN101','MB Bank','S12344','N101');
INSERT INTO AccountDetails VALUES ('AN102','VP Bank','S12345','N102');
INSERT INTO AccountDetails VALUES ('AE101','TP Bank','S12346','E101');
INSERT INTO AccountDetails VALUES ('AE102','MB Bank','S12347','E102');
INSERT INTO AccountDetails VALUES ('AE103','TP Bank','C12344','E103');
INSERT INTO AccountDetails VALUES ('AW101','MB Bank','C12345','W101');
INSERT INTO AccountDetails VALUES ('AW102','VP Bank','C12347','W102');
INSERT INTO AccountDetails VALUES ('AW103','TP Bank','C12334','W103');
INSERT INTO AccountDetails VALUES ('AS101','VP Bank','C12378','S101');
INSERT INTO AccountDetails VALUES ('AS102','MB Bank','C12390','S102');


INSERT INTO Attendance VALUES ('N90',10, '14-APR-24');
INSERT INTO Attendance VALUES ('N91',20, '14-MAR-24');
INSERT INTO Attendance VALUES ('E87',30, '14-MAY-24');
INSERT INTO Attendance VALUES ('E88',40, '14-JUN-24');
INSERT INTO Attendance VALUES ('W95',45, '14-JUL-24');
INSERT INTO Attendance VALUES ('N82',56, '14-APR-24');
INSERT INTO Attendance VALUES ('N83',58, '14-DEC-24');




INSERT INTO Employee_Attendance VALUES ('N101','N90');
INSERT INTO Employee_Attendance VALUES ('N102','N91');
INSERT INTO Employee_Attendance VALUES ('E101','E87');
INSERT INTO Employee_Attendance VALUES ('E102','E87');
INSERT INTO Employee_Attendance VALUES ('E103','E88');
INSERT INTO Employee_Attendance VALUES ('W101','W95');
INSERT INTO Employee_Attendance VALUES ('W102','W95');
INSERT INTO Employee_Attendance VALUES ('W103','W95');
INSERT INTO Employee_Attendance VALUES ('S101','S82');
INSERT INTO Employee_Attendance VALUES ('S102','S83');





