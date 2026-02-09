import pandas as pd
import matplotlib.pyplot as plt
import os

PROJECT_PATH = r"C:\Users\Hp\Downloads\Telegram Desktop\PROJECT 1 E-Commerce Sales Performance Analysis"

print("Project path:", PROJECT_PATH)

# ==================================================
# LOAD DATA
# ==================================================

df = pd.read_excel(os.path.join(PROJECT_PATH, "Amazon_Sales_Cleaned.xlsx"))

# ==================================================
# KPI CALCULATIONS
# ==================================================

total_revenue = df["Revenue"].sum()
total_orders = df["Order ID"].nunique()
total_products_sold = df["Qty"].sum()
average_order_value = total_revenue / total_orders

print("Total Revenue:", round(total_revenue, 2))
print("Total Orders:", total_orders)
print("Total Products Sold:", total_products_sold)
print("Average Order Value:", round(average_order_value, 2))

# ==================================================
# CATEGORY ANALYSIS
# ==================================================

category_revenue = (
    df.groupby("Category")["Revenue"]
    .sum()
    .sort_values(ascending=False)
)

# ==================================================
# MONTHLY ANALYSIS
# ==================================================

df["Date"] = pd.to_datetime(df["Date"])
df["Month"] = df["Date"].dt.to_period("M")

monthly_revenue = df.groupby("Month")["Revenue"].sum()

# ==================================================
# CHART 1 – CATEGORY REVENUE
# ==================================================

plt.figure()
category_revenue.head(5).plot(kind="bar")
plt.title("Top 5 Categories by Revenue")
plt.xlabel("Category")
plt.ylabel("Revenue")
plt.tight_layout()
plt.show(block=True)   # FORCE chart to stay

# ==================================================
# CHART 2 – MONTHLY REVENUE
# ==================================================

plt.figure()
monthly_revenue.plot(kind="bar")
plt.title("Monthly Revenue")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.tight_layout()
plt.show(block=True)   # FORCE chart to stay





