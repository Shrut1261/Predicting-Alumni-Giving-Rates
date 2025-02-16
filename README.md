# Predicting Alumni Giving Rates at National Universities ( Mini Project )

---

## Managerial Report: Predicting Alumni Giving Rates at National Universities

### Abstract
This report examines the relationship between university characteristics and alumni giving rates using data from 48 national universities. It applies **descriptive statistics, linear regression models, and residual analysis** to determine key factors influencing alumni contributions.
- A **positive correlation** was found between **graduation rate** and **alumni giving rate**.
- A **negative correlation** was identified between **student-faculty ratio** and **alumni giving rate**.
- The inclusion of additional independent variables improved model accuracy, though limitations remain. Future research directions are suggested to enhance predictive capabilities.

### Introduction
Alumni donations play a significant role in university funding, influencing **resource allocation** and **program development**. This study investigates how factors like **graduation rates, class sizes, and student-faculty ratios** impact alumni giving rates.
Using **descriptive statistics, linear regression, and residual analysis**, this report aims to:
1. Summarize key university characteristics.
2. Explore the relationship between **graduation rate** and **alumni giving rate**.
3. Develop a predictive model for alumni giving.
4. Identify universities with unexpectedly high giving rates.
5. Discuss limitations and suggest future research.

### Methodology
#### 1. Data Description
- The dataset includes data for **48 universities**, covering:
  - **Graduation Rate**
  - **Percentage of Small Classes (<20 students)**
  - **Student-Faculty Ratio**
  - **Alumni Giving Rate**
- Descriptive statistics were computed to understand variable distributions.

#### 2. Hypothesis Testing
- Hypothesis: **Higher graduation rates correlate with increased alumni giving rates**.
- A **simple linear regression model** tested this hypothesis, treating graduation rate as the independent variable and alumni giving rate as the dependent variable.

#### 3. Model Development
- A **multiple linear regression model** incorporated:
  - **Graduation Rate**
  - **Percentage of Small Classes**
  - **Student-Faculty Ratio**
- **Model fit and variable significance** were assessed using **R-squared values and p-values**.

#### 4. Residual Analysis
- Universities with **alumni giving rates higher than predicted** were identified by analyzing residuals.

---

### Results
#### 1. Descriptive Statistics
- **Graduation Rate**: 66% to 97% (Mean: **83%**)
- **Percentage of Small Classes**: 29% to 77% (Mean: **56%**)
- **Student-Faculty Ratio**: 3 to 23 (Mean: **11.5**)
- **Alumni Giving Rate**: 7% to 67% (Mean: **29%**)

#### 2. Hypothesis Testing
- Regression analysis confirmed a **statistically significant positive correlation** between **graduation rate** and **alumni giving rate** (**p-value < 0.001**).

#### 3. Model Development
- The **multiple linear regression model** demonstrated improved predictive capability (**R² = 0.6999**) compared to the **single-variable model** (**R² = 0.5715**).
- **Graduation Rate remained a strong predictor** (**p-value < 0.001**).
- **Student-Faculty Ratio showed a significant negative correlation** (**p-value = 0.0035**), indicating that lower student-faculty ratios contribute to higher alumni giving rates.
- **Percentage of Small Classes was not statistically significant** (**p-value = 0.8358**).

#### 4. Residual Analysis
- Universities exceeding expected alumni giving rates include:
  - **Dartmouth College**
  - **Princeton University**
  - **University of Notre Dame**

---

### E. Discussion
- Findings support the hypothesis that **higher graduation rates correlate with higher alumni giving rates**.
- **Lower student-faculty ratios appear to foster stronger alumni engagement**, possibly due to more personalized student experiences.
- The **non-significance of small class percentages** suggests further research is needed to determine its impact on alumni giving.

### Limitations and Future Research
- **Limited Sample**: The dataset represents only 48 universities, affecting generalizability.
- **Unobserved Factors**: The model does not account for variables such as **academic reputation, financial aid policies, or alumni engagement efforts**.
- **Future Research Directions**:
  - Expanding the dataset to include **a broader range of universities**.
  - Incorporating additional predictors, such as **institutional reputation and alumni satisfaction**.
  - Utilizing **qualitative methods** to understand alumni motivations for giving.

### Conclusion
This study identifies **graduation rate** and **student-faculty ratio** as significant predictors of alumni giving rates. While the model improves predictive capability, further research is required to refine its accuracy and incorporate additional influencing factors.
```

