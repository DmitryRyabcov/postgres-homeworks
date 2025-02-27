-- Напишите запросы, которые выводят следующую информацию:
-- 1. "имя контакта" и "город" (contact_name, city) из таблицы customers (только эти две колонки)
SELECT contact_name, country FROM customers

-- 2. идентификатор заказа и разницу между датами формирования (order_date) заказа и его отгрузкой (shipped_date) из таблицы orders
SELECT * FROM orders
SELECT order_id, order_date-shipped_date as difference_date FROM orders

-- 3. все города без повторов, в которых зарегистрированы заказчики (customers)
SELECT * FROM customers
SELECT DISTINCT city FROM customers


-- 4. количество заказов (таблица orders)
SELECT * FROM orders
SELECT COUNT(*) FROM orders

-- 5. количество стран, в которые отгружался товар (таблица orders, колонка ship_country)
SELECT * FROM orders
SELECT COUNT(DISTINCT ship_country) FROM orders