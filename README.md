# 📞 Telecom Customer Churn Prediction

## 📌 Overview

Customer churn is one of the most significant challenges faced by telecommunication companies, as retaining existing customers is considerably more cost-effective than acquiring new ones. This project develops an end-to-end machine learning solution to predict customer churn using customer demographics, account information, service subscriptions, and billing data.

The project demonstrates the complete analytics lifecycle—from cloud-based data storage and warehousing to data preprocessing, feature engineering, machine learning model development, and business intelligence visualization.

---

# 🏗️ Project Architecture

The project follows an end-to-end cloud analytics pipeline:

```
                    AWS S3
              (Raw Customer Data)
                       │
                       ▼
            Snowflake Data Warehouse
      (Data Validation & Initial Analysis)
                        &
          Data Cleaning and Feature Engineering
      (Encoding, Scaling, Data Preparation)
                        &
                Model Development
        (Logistic Regression and XGBoost)
                        |
                        ▼
            Jupyter Notebook (Python)
                      ANN
                       │
                       ▼
                Power BI Dashboard
          (Business Insights & Visualizations)
```

---

# 🎯 Business Objective

The primary objective of this project is to accurately predict customers who are likely to churn, enabling telecom companies to:

- Improve customer retention
- Reduce customer attrition
- Minimize revenue loss
- Increase customer lifetime value
- Design targeted retention campaigns
- Support data-driven business decisions

---

# 📂 Dataset

The dataset contains customer-related information including:

- Customer demographics
- Account information
- Internet services
- Phone services
- Contract type
- Payment methods
- Monthly charges
- Total charges
- Customer tenure

**Target Variable**

- **Churn**
  - Yes
  - No

---

# ☁️ Data Engineering

The project begins with a cloud-based data engineering pipeline.

### AWS S3

- Raw customer data is stored in an **AWS S3 bucket**.

### Snowflake

The AWS S3 bucket is integrated with **Snowflake**, where the following tasks are performed:

- Data ingestion
- Data validation
- Initial exploratory analysis
- Missing value analysis
- Data quality checks
- Data cleaning
- Data transformation

This provides a scalable and centralized environment for preparing data before machine learning.

---

# 🧹 Data Preprocessing & Feature Engineering

The processed data is exported into **Jupyter Notebook**, where additional preprocessing and feature engineering are performed.

### Data Preprocessing

- Missing value handling
- Duplicate removal
- Data cleaning
- Data type conversion
- Outlier inspection
- Train-Test Split

### Feature Engineering

- Label Encoding
- One-Hot Encoding
- Feature Scaling using StandardScaler
- Feature selection
- Feature transformation

---

# 🤖 Machine Learning Models

Three supervised machine learning models were developed and compared.

### Models Implemented

- Logistic Regression
- XGBoost Classifier
- Artificial Neural Network (ANN)

Model development was performed using **Python** in **Jupyter Notebook**.

---

# 📊 Model Evaluation

The models were evaluated using the following metrics:

- Accuracy
- Precision
- Recall
- F1-Score
- ROC-AUC Score
- Confusion Matrix
- ROC Curve

---

# 📈 Results

Three machine learning models were developed and evaluated for predicting customer churn.

## Model Performance Comparison

| Model | Accuracy | Precision | Recall | F1-Score | ROC-AUC |
|:------|---------:|----------:|--------:|---------:|--------:|
| Logistic Regression | **79.67%** | 64.10% | 53.48% | 58.31% | 83.90% |
| XGBoost | **80.09%** | **65.56%** | 52.94% | **58.58%** | **84.00%** |
| Artificial Neural Network (ANN) | 76.00% | 54.00% | **56.00%** | 57.00% | 78.40% |

---

## Key Findings

  - **XGBoost** achieved the highest overall performance with:
  - **Accuracy:** 80.09%
  - **Precision:** 65.56%
  - **F1-Score:** 58.58%
  - **ROC-AUC:** 84.00%

- **Logistic Regression** provided a strong and highly interpretable baseline model while delivering competitive predictive performance.

- **Artificial Neural Network (ANN)** achieved the highest Recall (56.00%), identifying slightly more customers who were likely to churn, although it produced lower Precision and overall Accuracy.

---

## Final Model Selection

Based on the evaluation metrics, **XGBoost** was selected as the final model due to its superior overall performance.

Its high Accuracy, Precision, F1-Score, and ROC-AUC demonstrate its effectiveness in identifying customers at risk of churn while maintaining a balanced trade-off between false positives and false negatives.

---

# 📊 Business Intelligence Dashboard

Interactive dashboards were developed using **Power BI** to provide business insights into customer churn.

The dashboards include visualizations for:

- Customer demographics
- Churn distribution
- Contract type analysis
- Payment method analysis
- Monthly charges
- Customer tenure
- Internet service usage
- Customer segmentation
- Business KPIs

---

# 🛠️ Technologies Used

### Cloud Technologies

- AWS S3
- Snowflake

### Programming Language

- Python

### Machine Learning Libraries

- Scikit-learn
- XGBoost
- TensorFlow
- Keras

### Data Analysis

- Pandas
- NumPy

### Data Visualization

- Matplotlib
- Seaborn
- Power BI

### Development Environment

- Jupyter Notebook

---


# 🔮 Future Enhancements

- Hyperparameter optimization using GridSearchCV
- Automated ML pipelines
- Model deployment using Flask or FastAPI
- Docker containerization
- CI/CD integration
- Real-time churn prediction
- MLOps deployment using AWS services

---

# 💼 Skills Demonstrated

- AWS S3
- Snowflake
- SQL
- Python
- Pandas
- NumPy
- Data Validation
- Data Cleaning
- Feature Engineering
- Label Encoding
- One-Hot Encoding
- StandardScaler
- Exploratory Data Analysis
- Logistic Regression
- XGBoost
- Artificial Neural Networks (ANN)
- Model Evaluation
- Power BI
- Business Intelligence
- Predictive Analytics
- Customer Churn Prediction

---

# 👩‍💻 Author

**Naga Sai Dhanya Veerepalli**

📧 Open to Data Science, Machine Learning, Data Engineering, and Analytics opportunities.

GitHub: https://github.com/dhanya0509

---

## ⭐ Support

If you found this project helpful or informative, consider giving the repository a ⭐ on GitHub.
