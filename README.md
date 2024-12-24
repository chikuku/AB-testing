# A/B Testing Project: Evaluating the Impact of Product Videos on E-commerce Sales
Background & Overview
This project analyzes an experiment conducted by a mid-size women's apparel retailer in the US. The retailer aimed to determine whether adding product videos to their website could boost e-commerce sales. The study also explored how combining this feature with other promotional strategies influenced customer behavior and overall sales performance.

## Project Outline
This analysis is divided into three key parts:

1. **Assessing Group Balance with a T-Test**  
  **Goal**: Ensure the treatment and control groups have similar product prices to avoid selection bias.  
  **Conclusion**: Product prices were balanced between the groups, confirming the experiment's validity.
2. **Measuring the Effect of Product Videos on Sales**  
  **Goal**: Investigate whether adding product videos directly increases sales.  
  **Conclusion**: Adding videos led to a statistically significant increase in sales.
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
