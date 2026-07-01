insert into client
values (211, 'Ahmed', 'Ali', '0796748245'),
       (212, 'zaid', 'Said', '0796748242'),
       (213, 'muhanad', 'seed', '0795364805'),
       (214, 'Sarah', 'khaled', '0796064823'),
       (215, 'Ali', 'jalal', '0787753640'),
       (216, 'bilal', 'anas', '0778966542'),
       (217, 'Hassan', 'jawad', '0796511235'),
       (218, 'Reem', 'faisal', '0788857632');

insert into C_ServiceType
values (211 , 'buying'),
       (212 , 'maintenance'),
       (213 , 'maintenance'),
       (214 , 'buying'),
       (215 , 'maintenance'),
       (216 , 'buying'),
       (217 , 'maintenance'),
       (218 , 'buying');

insert into sale_invoice
values (500, 101, '2025-01-20', 4, 65000.00, 211),
       (501, 102, '2025-01-22', 3, 45000.00, 216),
       (502, 103, '2025-01-25', 2, 35000.00, 213),
       (503, 104, '2025-01-28', 1, 95000.00, 218);

insert into employee
values (3, 'Ahmed', 'muhanad', 'Sales', 'Sales Manager', 3000.00, '0797674823', 3),
       (2, 'Fatima', 'zaid', 'Sales', 'Sales Representative', 600.00, '0796711242', 3),
       (5, 'Lina', 'Hassan', 'Sales', 'Sales Representative', 1200.00, '0798765432', 3),
       (1, 'Adel', 'ali', 'Maintenance', 'Maintenance Manager', 2000.00, '0796789245', 1),
       (4, 'Mahmoud', 'ahmad', 'Maintenance', 'Maintenance Technician', 700.00, '0795397805', 1),
       (6, 'khaled', 'Yousef', 'Maintenance', 'Maintenance Technician', 1100.00, '0786452387', 1);

insert into work_onSale
values (500, 2), (502, 5), (501, 2), (503, 5), (502, 3);

insert into maintenance_invoice
values (300, 'Mercedes-Benz GLA', 1, '2025-01-20', 350.00, 217),
       (301, 'Mercedes-Benz A-Class Sedan', 2, '2025-01-22', 400.00, 212),
       (302, 'Mercedes-Benz EQB', 3, '2025-01-25', 550.00, 214),
       (303, 'Mercedes-Benz CLS', 4, '2025-01-28', 700.00, 215);

insert into Maint_Type
values (300, 'Tire Replacement'),
       (301, 'Brake Pads Replacement'),
       (302, 'Engine Replacement'),
       (303, 'Complete System Overhaul');

insert into work_onMaint
values (300, 4), (301, 4), (303, 6), (303, 1), (302, 6);

insert into pieces
values (1000, 'Tire', 300.00, 'Germany'),
       (1001, 'Car Battery', 1000.00, 'USA'),
       (1002, 'Brake Pads', 45.75, 'Japan'),
       (1003, 'Car Engine', 3500.00, 'Germany'),
       (1004, 'Alternator', 1200.00, 'Germany'),
       (1005, 'Air Filter', 50.00, 'UK');

insert into maintenance_pieces
values (301, 1002),
       (302, 1003),
       (303, 1001),
       (300, 1000);
