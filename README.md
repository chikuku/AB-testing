# A/B Testing Project: Evaluating the Causal Impact of Product Videos on E-commerce Sales

## Background & Overview  
This project analyzes a US mid-size women's apparel retailer. The retailer sought to determine whether adding product videos to their website could boost e-commerce sales. In other words, are there valid causal relationships exist? Additionally, it  explored how integrating this feature with other promotional strategies influenced customer behavior and overall sales performance.

The retailer has 571 products that were divided into two categories: Focal and Coordinating. Focal products are tops, bottoms, and dresses; coordinating products include accessories and shoes. Videos were added exclusively to focal products by random selections. Each videos are around 15-20 seconds. The models in the videos display focal products with matching coordinating products. The videos were shot with limited models and settings to reduce the differences. The experiment lasted 28 weeks of spring collection on the firm's website. 

## Project Outline
This analysis is divided into three key parts:

1. **Assessing Group Balance with a T-Test**  
  **Goal**: Ensure the treatment and control groups have similar product prices to avoid selection bias.  
  **Conclusion**: Product prices were balanced between the groups, confirming the experiment's validity.
2. **Measuring the Effect of Product Videos on Focal & Coordinating Product Sales**  
  **Goal**: Investigate whether adding product videos directly increases sales. Test the focal and coordinating products separately.
  **Conclusion**: Adding videos led to a statistically significant increase in sales on both categories. For focal products, it increased 15.68 dollars per week; for coordinating products, it increased 
3. **Analyzing the Interaction of Videos and Promotions on Sales**  
  **Goal**: Understand the combined effect of product videos and other promotional strategies on sales performance.  
  **Conclusion**: The interaction of videos and promotions further increased sales, suggesting a synergistic effect.

## Business Suggestions  
1. Cost-Benefit Analysis for Videos  
2. Targeted Deployment
3. Optimizing Promotions

## Data Dictionary

The following table outlines the variables included in the dataset:

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
### 2. Adding videos on the focal products page increased sales
### 3. Promotion Combination Analysis: some promotions had great outcomes, while others did not.
- Video with focal product catalog promotion (VidWk & FpCatalogWk) combination has a significant positive effect.
The coefficient is 94.69, and the P value < 0.01 indicates that using these 2 methods increased 94.69 dollars of sales.

- Video with coordinating product catalog promotion (VidWk & CpCatalogWk) has a negative outcome. The coefficient is -278.79, and the P value < 0.001 indicates that these two methods used together led a negative outcome on sales
