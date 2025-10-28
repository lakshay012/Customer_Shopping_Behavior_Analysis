-- Q1 Total purchase amount by male and female


select gender, sum(purchase_amount) as total_purchase
from customer
group by gender;

-- Q2 Top 5 products with highest avg rating


select item_purchased,
       round(avg(review_rating::numeric),1) as avg_review
from customer
group by item_purchased
order by avg_review desc
limit 5;

-- Q3 Compare avg purchase amount between shipping types

select shipping_type,
       round(avg(purchase_amount),2) as avg_purchase
from customer
group by shipping_type;

-- Q4 Compare average spend & total revenue (Subscribers vs Non-subscribers)

select subscription_status,
       round(sum(purchase_amount),2) as total_purchase,
       round(avg(purchase_amount),2) as avg_purchase
from customer
group by subscription_status
order by subscription_status desc;

-- Q5 Top 5 products by discount % usage

SELECT item_purchased,
       ROUND(100.0 * SUM(CASE WHEN discount_applied = 'Yes' THEN 1 ELSE 0 END)/COUNT(*),2) AS discount_rate
FROM customer
GROUP BY item_purchased
ORDER BY discount_rate DESC
LIMIT 5;

-- Q6 Top 3 most purchased products within each category

WITH item_counts AS (
    SELECT category,
           item_purchased,
           COUNT(customer_id) AS total_orders,
           ROW_NUMBER() OVER (PARTITION BY category ORDER BY COUNT(customer_id) DESC) AS item_rank
    FROM customer
    GROUP BY category, item_purchased
)
SELECT item_rank, category, item_purchased, total_orders
FROM item_counts
WHERE item_rank <=3;

-- Q7 Repeat buyers & subscription relation
SELECT subscription_status, COUNT(customer_id) AS repeat_buyers
FROM customer
WHERE previous_purchases > 5
GROUP BY subscription_status;


-- Q8 Revenue contribution by age group

SELECT age_group, SUM(purchase_amount) AS total_revenue
FROM customer
GROUP BY age_group
ORDER BY total_revenue DESC;
