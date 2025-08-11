# Sales Data Analysis

## 📊 Project Overview
This project analyzes a fictional retail sales dataset to identify revenue trends, customer purchasing patterns, and top-performing products.  
The dataset contains order details such as order date, product, category, quantity, unit price, and customer region.

**Tools Used:**  
- SQL (for data extraction & analysis)  
- Power BI (for data visualization)  
- GitHub (for version control & project documentation)

---

## 📁 Dataset Structure
| Column         | Description                           |
|----------------|---------------------------------------|
| order_id       | Unique identifier for each order      |
| customer_id    | Unique ID for each customer           |
| region         | Region where the order was placed     |
| order_date     | Date of the order                     |
| product        | Name of the product                   |
| category       | Product category (e.g., Electronics)  |
| quantity       | Number of units ordered               |
| unit_price     | Price per unit                        |

---

## 🛠️ Sample SQL Queries

**1. Total Revenue by Category**
```sql
SELECT category, 
       SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

| category        | total\_revenue |
| --------------- | -------------- |
| Electronics     | 18,400         |
| Furniture       | 12,600         |
| Office Supplies | 5,800          |

SELECT product, 
       SUM(quantity) AS total_units_sold
FROM sales
GROUP BY product
ORDER BY total_units_sold DESC
LIMIT 5;

| product      | total\_units\_sold |
| ------------ | ------------------ |
| Office Chair | 55                 |
| Laptop       | 48                 |
| Desk Lamp    | 44                 |
| Printer      | 42                 |
| Bookshelf    | 40                 |

Key Insights
Electronics generated the highest revenue, contributing 45% of total sales.

Office Chairs and Laptops are the top-selling products, suggesting strong demand in the office equipment segment.

The North region had the highest sales volume, indicating a potentially larger market share there.

Seasonal peaks in sales were observed in Q4, aligning with holiday shopping trends.

Business Recommendations
Increase marketing efforts for electronics in underperforming regions to boost sales.

Maintain sufficient stock for top-selling products like Office Chairs and Laptops to avoid stockouts.

Offer Q4 promotions in regions with lower sales to maximize seasonal demand.

Explore bundling office furniture and electronics for upselling opportunities.

