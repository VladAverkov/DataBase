-- Выведет в порядке возрастания order_id тех заказов, в доставке которых принимает участие грузовик
SELECT DISTINCT INTERM_DELIVERY.order_id
  FROM project.INTERM_DELIVERY
 INNER JOIN project.TRANSPORT
    ON INTERM_DELIVERY.transport_id = TRANSPORT.transport_id
 WHERE TRANSPORT."TYPE" = 'truck'
 ORDER BY INTERM_DELIVERY.order_id;

-- Выведет в порядке возрастания order_id тех заказов, для доставки которых нужен хотя бы 1 склад
SELECT order_id
  FROM project.INTERM_DELIVERY
 GROUP BY order_id
HAVING COUNT(from_id) > 1
 ORDER BY order_id;

-- Выведет порядковый номер внутри группы одного транспорта, transport_id и его тип (отсортированные внутри группы по id)
SELECT row_number() OVER (partition by "TYPE" order by transport_id),
       transport_id,
       "TYPE"
  FROM project.TRANSPORT;

-- Выведет имя клиента и количество его заказов
SELECT DISTINCT client_nm,
       count(order_id) OVER (partition by project.ORDER.client_id)
  FROM project.ORDER
 INNER JOIN project.CLIENT
    ON project.ORDER.client_id = CLIENT.client_id;

-- Выведет для каждого работника (если он работает на складе), его имя и первую (в порядки сортировки) функцию, которую он исполнят
SELECT DISTINCT empl_nm,
       first_value("FUNCTION") over (partition by STOCK_STUFF.empl_id)
  FROM project.STOCK_STUFF
 INNER JOIN project.EMPLOYEE
    ON STOCK_STUFF.empl_id = EMPLOYEE.empl_id;

-- Выведет все занумерованные строки из interm_delivery
SELECT row_number() over (order by order_id),
       *
  FROM project.INTERM_DELIVERY;
