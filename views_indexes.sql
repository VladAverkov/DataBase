CREATE INDEX TRANSPORT_STUFF_FUNCTION
    ON project.TRANSPORT_STUFF("FUNCTION");

CREATE INDEX STOCK_STUFF_FUNCTION
    ON project.STOCK_STUFF("FUNCTION");

CREATE INDEX STOCK_CITY
    ON project.STOCK(city);

CREATE VIEW project.CLIENT_VIEW AS
SELECT client_id,
       discount_coeff
  FROM project.CLIENT;

CREATE VIEW project.EMPLOYEE_VIEW AS
SELECT empl_id,
       empl_nm
  FROM project.EMPLOYEE;

CREATE VIEW project.CLIENT_STAT_FROM AS
SELECT client_nm,
       CLIENT.client_id,
       "FROM",
       count(order_id) over (partition by (project.ORDER.client_id, "FROM"))
  FROM project.CLIENT
 INNER JOIN project.ORDER
    ON CLIENT.client_id = project.ORDER.client_id
 ORDER BY client_id;

CREATE VIEW project.CLIENT_STAT_TO AS
SELECT client_nm,
       CLIENT.client_id,
       "TO",
       count(order_id) over (partition by (project.ORDER.client_id, "TO"))
  FROM project.CLIENT
 INNER JOIN project.ORDER
    ON CLIENT.client_id = project.ORDER.client_id
 ORDER BY client_id;

CREATE VIEW project.EMPLOYEE_STOCK_STAT AS
SELECT DISTINCT empl_nm,
       EMPLOYEE.empl_id,
       "FUNCTION",
       count("FUNCTION") over (partition by (STOCK_STUFF.empl_id, "FUNCTION") order by "FUNCTION")
  FROM project.EMPLOYEE
 INNER JOIN project.STOCK_STUFF
    ON EMPLOYEE.empl_id = STOCK_STUFF.empl_id
 ORDER BY empl_nm;

CREATE VIEW project.EMPLOYEE_TRANSPORT_STAT AS
SELECT DISTINCT empl_nm,
       EMPLOYEE.empl_id,
       "FUNCTION",
       count("FUNCTION") over (partition by (TRANSPORT_STUFF.empl_id, "FUNCTION") order by "FUNCTION")
  FROM project.EMPLOYEE
 INNER JOIN project.TRANSPORT_STUFF
    ON EMPLOYEE.empl_id = TRANSPORT_STUFF.empl_id
 ORDER BY empl_nm;
