INSERT INTO project.CLIENT VALUES (1, 'Ivan Ivanov', '+71234567892', 0);
INSERT INTO project.CLIENT VALUES (2, 'Andrey Andreev', '+79887667892', 3);
INSERT INTO project.CLIENT VALUES (3, 'Jared Padalecki', '+15159929344', 7);
INSERT INTO project.CLIENT VALUES (4, 'David Tennant', '+13458655778', 17);
INSERT INTO project.CLIENT VALUES (5, 'Robert Pattinson', '+13231920539', 10);
INSERT INTO project.CLIENT VALUES (6, 'Johnny Depp', '+13102736700', 17);
INSERT INTO project.CLIENT VALUES (7, 'Matthew McConaughey', '+13117757878', 15);
INSERT INTO project.CLIENT VALUES (8, 'Marshall Mathers', '+17646976876', 17);
INSERT INTO project.CLIENT VALUES (9, 'Miron Fyodorov', '+78868535475', 17);
INSERT INTO project.CLIENT VALUES (10, 'Ichigo Kurosaki', '+80085180085', 20);

INSERT INTO project.STOCK VALUES (1, 'Dolgoprudny', 'obshyaga', 50);
INSERT INTO project.STOCK VALUES (2, 'Moscow', 'airport', 200000);
INSERT INTO project.STOCK VALUES (3, 'Kiev', 'airport', 120000);
INSERT INTO project.STOCK VALUES (4, 'Novorossiysk', 'port', 500000);
INSERT INTO project.STOCK VALUES (5, 'Saint Petersburg', 'airport', 150000);
INSERT INTO project.STOCK VALUES (6, 'Minsk', 'airport', 50000);
INSERT INTO project.STOCK VALUES (7, 'Rostov-on-Don', 'airport', 80000);
INSERT INTO project.STOCK VALUES (8, 'Instanbul', 'port', 350000);
INSERT INTO project.STOCK VALUES (9, 'Suez', 'port', 700000);
INSERT INTO project.STOCK VALUES (10, 'Moscow', 'stock', 1000000);
INSERT INTO project.STOCK VALUES (11, 'Novosibirsk', 'stock', 300000);

INSERT INTO project.TRANSPORT VALUES (1, 'ship', 10000);
INSERT INTO project.TRANSPORT VALUES (2, 'airplane', 2000);
INSERT INTO project.TRANSPORT VALUES (3, 'truck', 200);
INSERT INTO project.TRANSPORT VALUES (4, 'truck', 150);
INSERT INTO project.TRANSPORT VALUES (5, 'ship', 15000);
INSERT INTO project.TRANSPORT VALUES (6, 'ship', 13000);
INSERT INTO project.TRANSPORT VALUES (7, 'airplane', 5000);
INSERT INTO project.TRANSPORT VALUES (8, 'truck', 300);
INSERT INTO project.TRANSPORT VALUES (9, 'car', 0.5);
INSERT INTO project.TRANSPORT VALUES (10, 'car', 0.4);
INSERT INTO project.TRANSPORT VALUES (11, 'car', 0.4);
INSERT INTO project.TRANSPORT VALUES (12, 'car', 0.3);

INSERT INTO project.EMPLOYEE VALUES (1, 'Ember Herd', 0);
INSERT INTO project.EMPLOYEE VALUES (2, 'Sanya Stone', 1);
INSERT INTO project.EMPLOYEE VALUES (3, 'Gigachad', 1000000);
INSERT INTO project.EMPLOYEE VALUES (4, 'Piter Parker', 2000);
INSERT INTO project.EMPLOYEE VALUES (5, 'Oleg Tinkov', 1234567);
INSERT INTO project.EMPLOYEE VALUES (6, 'Elon Musk', 100000000);
INSERT INTO project.EMPLOYEE VALUES (7, 'Barry Allen', 3000);
INSERT INTO project.EMPLOYEE VALUES (8, 'Petr Petrov', 700);
INSERT INTO project.EMPLOYEE VALUES (9, 'Artyom Artemov', 600);
INSERT INTO project.EMPLOYEE VALUES (10, 'Alexey Alexeev', 500);

INSERT INTO project.STOCK_STUFF VALUES (1, 1, 'shit maker');
INSERT INTO project.STOCK_STUFF VALUES (1, 2, 'shit maker');
INSERT INTO project.STOCK_STUFF VALUES (1, 3, 'shit maker');
INSERT INTO project.STOCK_STUFF VALUES (1, 4, 'shit maker');
INSERT INTO project.STOCK_STUFF VALUES (2, 1, 'ultimate helper');
INSERT INTO project.STOCK_STUFF VALUES (2, 2, 'ultimate helper');
INSERT INTO project.STOCK_STUFF VALUES (2, 3, 'ultimate helper');
INSERT INTO project.STOCK_STUFF VALUES (2, 4, 'ultimate helper');
INSERT INTO project.STOCK_STUFF VALUES (3, 1, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 2, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 3, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 4, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 5, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 6, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 7, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 8, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 9, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 10, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (3, 11, 'boss of the gym');
INSERT INTO project.STOCK_STUFF VALUES (4, 1, 'reporter');
INSERT INTO project.STOCK_STUFF VALUES (5, 1, 'founder');
INSERT INTO project.STOCK_STUFF VALUES (6, 1, 'main PR');

UPDATE project.STOCK_STUFF SET "FUNCTION" = 'second boss of the gym' WHERE empl_id = 3 AND stock_id = 1;

INSERT INTO project.TRANSPORT_STUFF VALUES (7, 3, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 4, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 8, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 9, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 10, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 11, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (7, 12, 'driver');
INSERT INTO project.TRANSPORT_STUFF VALUES (8, 1, 'captain');
INSERT INTO project.TRANSPORT_STUFF VALUES (9, 2, 'captain');
INSERT INTO project.TRANSPORT_STUFF VALUES (10, 1, 'mechanic');

INSERT INTO project.ORDER VALUES (1, 4, 'Moscow', 'Istanbul', 100, date '2022-05-10', date '2022-06-15');
INSERT INTO project.ORDER VALUES (2, 1, 'Moscow', 'Rostov-On-Don', 10, date '2022-05-29', date '2022-06-05');
INSERT INTO project.ORDER VALUES (3, 9, 'Moscow', 'Saint Petersburg', 30, date '2022-05-10', date '2022-05-15');
INSERT INTO project.ORDER VALUES (4, 7, 'Rostov-On-Don', 'Novorossiysk', 50, date '2022-06-10', date '2022-06-13');
INSERT INTO project.ORDER VALUES (5, 8, 'Moscow', 'Novosibirsk', 80, date '2022-05-06', date '2022-06-17');
INSERT INTO project.ORDER VALUES (6, 1, 'Minsk', 'Moscow', 90, date '2022-05-10', date '2022-07-15');

INSERT INTO project.ORDER_PARAMS VALUES (1, 5, 0.3, 0.5, 0.4);
INSERT INTO project.ORDER_PARAMS VALUES (2, 0.3, 0.2, 0.3, 0.3);
INSERT INTO project.ORDER_PARAMS VALUES (3, 10000, 3, 10, 5);
INSERT INTO project.ORDER_PARAMS VALUES (4, 2000, 1, 5, 5);
INSERT INTO project.ORDER_PARAMS VALUES (5, 10, 0.5, 1, 1);
INSERT INTO project.ORDER_PARAMS VALUES (6, 2, 0.4, 0.5, 0.5);

INSERT INTO project.INTERM_DELIVERY VALUES (1, 9, 0, 2);
INSERT INTO project.INTERM_DELIVERY VALUES (1, 2, 2, 7);
INSERT INTO project.INTERM_DELIVERY VALUES (1, 10, 7, 4);
INSERT INTO project.INTERM_DELIVERY VALUES (1, 1, 4, 8);
INSERT INTO project.INTERM_DELIVERY VALUES (1, 11, 8, 0);

INSERT INTO project.INTERM_DELIVERY VALUES (2, 9, 0, 0);
INSERT INTO project.INTERM_DELIVERY VALUES (3, 9, 0, 0);
INSERT INTO project.INTERM_DELIVERY VALUES (4, 10, 0, 0);

DELETE FROM project.INTERM_DELIVERY WHERE order_id = 2;
DELETE FROM project.INTERM_DELIVERY WHERE order_id = 3;
DELETE FROM project.INTERM_DELIVERY WHERE order_id = 4;

INSERT INTO project.INTERM_DELIVERY VALUES (2, 3, 0, 0);
INSERT INTO project.INTERM_DELIVERY VALUES (3, 4, 0, 0);
INSERT INTO project.INTERM_DELIVERY VALUES (4, 3, 0, 0);
INSERT INTO project.INTERM_DELIVERY VALUES (5, 8, 0, 0);

INSERT INTO project.INTERM_DELIVERY VALUES (6, 12, 0, 6);
INSERT INTO project.INTERM_DELIVERY VALUES (6, 2, 6, 2);
INSERT INTO project.INTERM_DELIVERY VALUES (6, 9, 2, 0);

UPDATE project.ORDER SET arrival_dt = date '2022-08-15' WHERE order_id = 1;
UPDATE project.ORDER SET price = 170 WHERE order_id = 1;