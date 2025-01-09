# A/B Testing Project: Evaluating the Causal Impact of Product Videos on E-commerce Sales

## Background & Overview  
This project analyzes a US mid-size women's apparel retailer. The retailer sought to determine whether adding product videos to their website could boost e-commerce sales. In other words, are there valid causal relationships exist? Additionally, it  explored how integrating this feature with other promotional strategies influenced customer behavior and overall sales performance.

The retailer has 571 products that were divided into two categories: Focal and Coordinating. Focal products are tops, bottoms, and dresses; coordinating products include accessories and shoes. Videos were added exclusively to focal products by random selections. Each videos are around 15-20 seconds. The models in the videos display focal products with matching coordinating products. The videos were shot with limited models and settings to reduce the differences. The experiment lasted 28 weeks of spring collection on the firm's website. 

## Project Outline
This analysis is divided into three key parts:

1. **Assessing Group Balance with a T-Test**  
  **Goal**: Ensure the treatment and control groups have similar product prices to avoid selection bias.  
  **Conclusion**: Product prices were balanced between the groups, confirming the experiment's validity.
2. **Measuring the Effect of Product Videos on Focal & Coordinating Product Sales and compare the results with existing promotions** 
  **Goal**: Examine whether adding product videos increased sales. If it did, was it better than existing promotions? Test the focal and coordinating products separately.
  **Conclusion**: Adding videos led to a statistically significant increase in sales in both categories. For focal products, it increased 23 units; for coordinating products, it increased 17 units. However, four other promotions increased sales more than adding videos. 
3. **Analyzing the Interaction of Videos and Promotions on Sales**  
  **Goal**: Understand the combined effect of product videos and other promotional strategies on sales performance.  
  **Conclusion**: The interaction of videos and promotions further increased sales, suggesting a synergistic effect.

## Business Suggestions  

Based on the results of the A/B test project, four marketing strategies (Email, Catalog, Home Page, and Category Page promotions) demonstrated a greater short-term increase in average sales compared to adding videos. However, this does not imply that adding videos is less valuable, as videos provide unique advantages:

* Videos are a one-time cost and serve as a permanent promotion on product pages, unlike other strategies that incur recurring fees for each campaign.
* The experiment only reflects short-term outcomes and does not account for the long-term value of videos.

### Recommendations

#### 1. Differentiate Products by Marketing Strategy
&nbsp;&nbsp;&nbsp;&nbsp; I recommend categorizing products into short-term and long-term focus groups. Tailoring promotional strategies to these categories can maximize the benefits of both types.

#### *Short-Term Comparison*
&nbsp;&nbsp;&nbsp;&nbsp; During the test period, the focal product's sales increased: 
* **Videos:** Modest increase of **23.59 units**  
* **Email Promotions:** Significant increase of **105.44 units**  
* **Catalog Promotions:** Significant increase of **209.99 units**  
* **Home Page Promotions:** Significant increase of **90.87 units**  
* **Category Page Promotions:** Significant increase of **101.63 units**

#### *Long-Term Value of Videos* 
&nbsp;&nbsp;&nbsp;&nbsp; Videos offer continuous value after implementation:
* Permanently displayed on product pages  
* No recurring costs for maintenance  
* Can influence multiple purchase decisions over time, potentially leading to greater cumulative sales growth.

#### 2. Optimize the Cost-Benefit Ratio of Video Implementation 
&nbsp;&nbsp;&nbsp;&nbsp; To further enhance the benefits of adding videos, I suggest two strategies:
* 1. **Selective Implementation:**  
   * Add videos only for products where the product's profit increase (e.g., 23 units from focal sales + 17 units from co-sales, multiplied by the product price) exceeds the video production cost.

 * 2. **Reduce Production Costs:**  
   * Consider cost-saving measures, such as creating shorter videos, using lower-budget production settings, or repurposing existing content.

This approach optimizes the balance between short-term profitability and long-term value.

## Data Dictionary
There are 4 sheets in the dataset: Data Dictionary, Random check, FP Analysis data, CP Anaylsis data.
The Data Dictionary sheet contains 2 tables; the following one outlines the variables in the FP Analysis data sheet:

| **Variable Name** | **Description**                                                                                   |
|--------------------|---------------------------------------------------------------------------------------------------|
| CpordID         | Coordinating Product ID                                                                           |
| `Wk`              | Week number                                                                                       |
| `VidWk`           | Indicator variable = 1 if the focal product's video is switched on on the website, 0 otherwise   |
| `PreVidWk`        | Indicator variable = 1 for weeks before the focal product's video is switched on, 0 otherwise    |
| `PostVidWk`       | Indicator variable = 1 for weeks after the focal product's video is switched off, 0 otherwise    |
| `CpSales`         | Weekly coordinating product sales in numbers                                                     |
| `FpPriceDiscWk`   | Indicator variable = 1 if there is a price discount on the focal product, 0 otherwise            |
| `FpEmailWk`       | Indicator variable = 1 if there is an email promotion for the focal product, 0 otherwise         |
| `FpCatalogWk`     | Indicator variable = 1 if there is a catalog promotion for the focal product, 0 otherwise        |
| `FpHomePgWk`      | Indicator variable = 1 if the focal product is promoted on the homepage of the website, 0 otherwise|
| `FpCatPgWk`       | Indicator variable = 1 if the focal product is promoted on the category front page, 0 otherwise  |
| `CpPriceDiscWk`   | Indicator variable = 1 if there is a price discount on the coordinating product, 0 otherwise     |
| `CpEmailWk`       | Indicator variable = 1 if there is an email promotion for the coordinating product, 0 otherwise  |
| `CpCatalogWk`     | Indicator variable = 1 if there is a catalog promotion for the coordinating product, 0 otherwise |
| `CpHomePgWk`      | Indicator variable = 1 if the coordinating product is promoted on the homepage, 0 otherwise      |
| `CpCatPgWk`       | Indicator variable = 1 if the coordinating product is promoted on the category main page, 0 otherwise|

---

## Insights Deep-Dive
#### 1. The average product price in the experiment and control groups passed the t-test; thus, the selection was valid without bias. 
(This part's [R script](https://github.com/chikuku/AB-testing/blob/e2b1a3ea37fee73ce375e58e572bf63d2439c7c0/github_videoCase.R#L11))
- The null hypothesis is the 2 groups have the same product price. The t-test failed to reject the H0 because of the following reasons: 
  1. The control group's mean is 20.41, and the treatment group's is 20.71. The two are pretty close.
  2. The P-value is 0.71: it is not greater than the common significant level of 0.05, which means it is not statistically significant.
  3. 95% Confidence interval [−1.852871, 1.271512] contains 0.
  Thus, the 2 groups had no significant difference and remained the randomization. 
#### 2. Examine if adding videos on the focal product's page increased focal & coordinating product sales. In conclusion, they both increased, and the focal product sales increased more than the coordinating products'. 
- **Focal Product Weekly Sales** average increased by 23.58 units compared to those weeks that did not play videos.
  
- **Coordinating Product Weekly Sales** average was increased by 17.73 units compared to those weeks that did not play videos.
  
#### 3. Promotion Combination Analysis: some promotions had great outcomes, while others did not.
- Video with focal product catalog promotion (VidWk & FpCatalogWk) combination has a significant positive effect.
The coefficient is 94.69, and the P value < 0.01 indicates that using these 2 methods increased 94.69 dollars of sales.

- Video with coordinating product catalog promotion (VidWk & CpCatalogWk) has a negative outcome. The coefficient is -278.79, and the P value < 0.001 indicates that these two methods used together led a negative outcome on sales
