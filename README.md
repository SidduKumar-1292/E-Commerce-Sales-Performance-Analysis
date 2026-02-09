# E-Commerce Sales Performance Analysis

## 📊 Project Overview
Analyzed 10,000+ e-commerce transaction records to identify sales patterns, top-performing product categories, and order fulfillment performance. This project demonstrates end-to-end data analysis skills using Excel, SQL, Power BI, and Python.

## 🎯 Business Problem
An e-commerce business needs to understand:
- Which product categories drive the most revenue
- Daily sales trends and performance patterns
- Order fulfillment efficiency and cancellation rates
- Actionable insights to optimize inventory and reduce revenue loss

## 🛠️ Tools & Technologies
- **Microsoft Excel**: Data cleaning, pivot tables, formulas, analysis
- **SQL**: Database queries, aggregations, business intelligence
- **Power BI**: Interactive dashboard visualization
- **Python**: Statistical analysis and data visualization (Pandas, Matplotlib)

## 📁 Dataset Information
- **Records**: 10,097 transaction line items across 9,458 orders
- **Time Period**: April 2022
- **Key Fields**: Order ID, Date, Product Category, Quantity, Revenue, Order Status, Fulfillment Method, Location
- **Geography**: India (IN)
- **Source**: Public e-commerce sales dataset

## 🔍 Key Findings

### Revenue Metrics
- **Total Revenue**: ₹6,306,815 (~₹6.3 Million)
- **Total Orders**: 9,458 unique orders
- **Average Order Value**: ₹666.82
- **Total Units Sold**: 9,615 products

### Category Performance
| Category | Revenue | % of Total |
|----------|---------|------------|
| Set | ₹3.38M | 53.6% |
| Kurta | ₹1.72M | 27.3% |
| Western Dress | ₹0.66M | 10.5% |
| Top | ₹0.43M | 6.8% |
| Others | ₹0.11M | 1.8% |

**Critical Insight**: Top 2 categories (Set & Kurta) account for **81% of total revenue** - indicating high concentration and potential inventory optimization opportunity.

### Order Fulfillment Analysis
- **Successfully Shipped**: 5,600 orders (59.2%)
- **Delivered to Buyer**: 2,800 orders (29.6%)
- **Cancelled**: 800 orders (8.5%)
- **Returned to Seller**: 200 orders (2.1%)
- **Lost in Transit**: <50 orders (<0.5%)

**Critical Insight**: **9% cancellation/return rate** presents significant revenue recovery opportunity.

### Daily Sales Trends
- **Peak Sales Day**: Day 24 with ₹1.03M revenue
- **Average Daily Revenue**: ₹850,000 – ₹900,000 (single-month dataset)
- **Performance**: Consistent revenue across days (₹840K - ₹1.03M range)

## 💡 Business Recommendations

1. **Inventory Optimization**
   - Focus procurement and storage on "Set" and "Kurta" categories (81% revenue contribution)
   - Reduce investment in low-performing categories (Bottom, Saree, Blouse: <₹50K each)
   - Allocate warehouse space proportionally to revenue contribution

2. **Revenue Recovery**
   - Investigate root causes of 8.5% order cancellation rate
   - Implement better product descriptions, sizing guides, and quality images
   - Enhance pre-purchase customer support to reduce cancellations
   - **Estimated impact**: Reducing cancellations by 50% could recover ₹200K+ in revenue

3. **Replicate Success Patterns**
   - Analyze what drove ₹1.03M peak on Day 24
   - Identify promotional strategies, marketing campaigns, or external factors
   - Implement similar tactics during slower sales periods

4. **Fulfillment Efficiency**
   - Minimize "Lost in Transit" incidents through carrier performance reviews
   - Analyze "Returned to Seller" patterns to identify quality or expectation issues
   - Improve delivery time estimates to reduce customer cancellations

## 📂 Project Files

| File Name | Description |
|-----------|-------------|
| `Amazon_Sales_Raw.xlsx` | Original unprocessed dataset (10,097 records) |
| `Amazon_Sales_Cleaned.xlsx` | Cleaned, validated, analysis-ready data |
| `Amazon_Sales_Analysis.xlsx` | Multi-sheet workbook with pivot tables and analysis |
| `Sales_Performance_Summary.xlsx` | Executive summary with key metrics |
| `sales_analysis.sql` | SQL queries for KPI calculation, category analysis, and daily sales trends |
| `sales_analysis_python.py` | Python script for analysis and visualization |
| `Amazon_Sales_Dashboard_PowerBi.pbix` | Interactive Power BI dashboard |
| `PowerBi_Dashboard.png` | Dashboard screenshot for quick preview |

## 🚀 How to Use This Project

### Excel Analysis
1. Download `Amazon_Sales_Analysis.xlsx`
2. Explore the 4 analysis sheets:
   - **Amazon_Sales_Cleaned**: Working dataset
   - **Category_Performance**: Revenue analysis by product category
   - **Daily_Sales_Trend**: Time-based sales patterns
   - **Order_Status_Analysis**: Fulfillment performance metrics
3. Review pivot tables, charts, and formulas

### SQL Analysis
1. Import `Amazon_Sales_Cleaned.xlsx` into your SQL database
   - Supported: MySQL, PostgreSQL, SQLite, SQL Server
2. Open `sales_analysis.sql`
3. Run queries to explore:
   - KPI calculations (revenue, orders, AOV)
   - Category-wise performance
   - Time-based trends
   - Business insights and data validation

### Power BI Dashboard
1. Download and install [Power BI Desktop](https://powerbi.microsoft.com/desktop/) (free)
2. Open `Amazon_Sales_Dashboard_PowerBi.pbix`
3. Interact with the dashboard:
   - View KPI cards (Revenue, Orders, Units, AOV)
   - Analyze revenue by product category
   - Track daily sales performance
   - Review order status distribution

### Python Analysis
1. Ensure Python 3.x is installed with required libraries:
   ```bash
   pip install pandas matplotlib openpyxl
   ```
2. Update `PROJECT_PATH` in `sales_analysis.python.py` to your local directory
3. Run the script:
   ```bash
   python sales_analysis.python.py
   ```
4. View console output (KPIs) and generated charts

## 📊 Dashboard Preview

![Power BI Dashboard](PowerBi_Dashboard.png)

*Interactive dashboard showing KPIs, category revenue, daily sales trends, and order status distribution*

## 🎓 Skills Demonstrated

### Technical Skills
- **Data Cleaning & Preparation**: Handling missing values, duplicates, data validation
- **Excel**: Pivot tables, formulas, charts, data analysis
- **SQL**: Aggregations, GROUP BY, filtering, business intelligence queries
- **Power BI**: Dashboard design, DAX measures, KPI cards, data visualization
- **Python**: Pandas (data manipulation), Matplotlib (visualization), analysis automation

### Analytical Skills
- Exploratory Data Analysis (EDA)
- Business Intelligence & Reporting
- Statistical Analysis
- Trend Identification
- Root Cause Analysis
- Data-Driven Decision Making

### Business Skills
- Revenue Analysis
- Category Performance Evaluation
- Operational Metrics (Fulfillment, Cancellations)
- Strategic Recommendations
- Stakeholder Communication

## 📈 Analysis Methodology

1. **Data Collection**: Imported raw e-commerce transaction data
2. **Data Cleaning**: Removed duplicates, handled nulls, validated data types
3. **Exploratory Analysis**: Used Excel pivot tables to understand data structure
4. **Deep Dive Analysis**: SQL queries for detailed business insights
5. **Visualization**: Created Power BI dashboard for stakeholder communication
6. **Validation**: Python scripts to verify calculations and findings
7. **Recommendations**: Translated insights into actionable business strategies

## 🔄 Future Enhancements
- Customer segmentation analysis (RFM model)
- Geographic performance analysis by state/city
- Seasonal trend analysis across multiple months
- Predictive analytics for demand forecasting
- Customer lifetime value (CLV) calculation
- A/B testing framework for promotional strategies

## 👤 About This Project
This project was created to demonstrate end-to-end data analysis capabilities as part of my transition from customer operations to data analytics. It showcases my ability to:
- Work with real-world messy data
- Apply multiple analytical tools effectively
- Generate business insights from data
- Communicate findings clearly
- Provide actionable recommendations

## 📧 Contact
**Siddu Kumar Atti**
- 📧 Email: siddukumar1292@gmail.com
- 💼 LinkedIn: linkedin.com/in/siddu-kumar-045a24244
- 📊 Portfolio: github.com/SidduKumar-1292

---

### ⭐ If you found this project helpful, please give it a star!

*Last Updated: February 2026*
