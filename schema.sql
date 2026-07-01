create database zz;
use zz;

create table client (
client_id int primary key,
first_name varchar(15),
last_name varchar(15),
phone_number varchar(15)
);

create table C_ServiceType(
cli_id int foreign key references client(client_id),
ServiceType varchar(30),
primary key (cli_id ,ServiceType)
);

create table sale_invoice (
Sales_ID int primary key,
Ca_id int foreign key references Cars(Car_ID),
Sales_Date varchar(10),
Warranty_Duration int,
Cost decimal(10, 2),
CL_ID int foreign key references client(client_id)
);

create table employee (
employee_id int primary key,
first_name varchar(15),
last_name varchar(15),
department varchar(30),
job_title varchar(30),
salary decimal(6, 2),
phone_number varchar(15),
super_employee_id int foreign key references employee(employee_id)
);

create table work_onSale(
Sa_ID int foreign key references sale_invoice(Sales_ID),
em_id int foreign key references employee(employee_id),
primary key (em_id , Sa_ID)
);

create table maintenance_invoice (
maintenance_id int primary key,
customer_car_type varchar(30),
warranty_duration int,
maintenance_date varchar(10),
cost decimal(6, 2),
clie_id int foreign key references client(client_id)
);

create table Maint_Type(
maint_id int foreign key references maintenance_invoice(maintenance_id),
maintenance_Type varchar(30),
primary key (maint_id , maintenance_Type)
);

create table work_onMaint (
WM_maint_id int foreign key references maintenance_invoice(maintenance_id),
empl_id int foreign key references employee(employee_id),
primary key (empl_id , WM_maint_id)
);

create table pieces (
pieces_id int primary key,
pieces_name varchar(25),
price_piece decimal(10, 2),
export_country varchar(30)
);

create table maintenance_pieces (
MP_maint_id int foreign key references maintenance_invoice(maintenance_id),
pi_id int foreign key references pieces(pieces_id),
primary key (MP_maint_id , pi_id)
);
