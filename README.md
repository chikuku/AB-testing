# A/B Testing Project: Evaluating the Causal Impact of Product Videos on E-commerce Sales

## Background 
This project evaluates the causal impact of adding product videos on e-commerce sales for a mid-size US women's apparel retailer using A/B testing. The retailer sought to assess whether adding product videos to their website could boost e-commerce sales. Additionally, it explored how integrating this feature with other promotional strategies influenced sales performance. The ultimate goal was to optimize sales by leveraging data-driven insights. 

## Executive Summary

Key findings indicate that while adding product videos led to a modest increase in weekly sales (23 units for focal products and 17 units for coordinating products), four existing promotional strategies, such as email and catalog promotions, significantly outperformed videos in driving short-term sales.

Interaction effects showed contrasting results: Positive synergy was observed when videos were combined with homepage and category front page promotions, with increased sales of 102.1 and 164.15 units, respectively. However, combining videos with catalog promotions resulted in a significant negative effect, suggesting these two strategies should not be used together.

Videos have the potential unique long-term advantages, such as permanent visibility on product pages and no recurring costs, which could contribute to sustained growth. These factors could be further explored in future studies and strategic planning.

## Recommendations
1. Strengthen Effective Combinations: Continue using videos combined with homepage and category front page promotions, as these combinations have shown significant positive effects, with coefficients of 102.1 and 164.15, respectively.
2. Avoid Ineffective Combinations: Exclude catalog promotions when implementing videos to prevent adverse effects on sales. This ensures a focused and effective strategy.
3. Optimize Costs: Reduce video production expenses by creating shorter videos, reusing existing content, or selectively implementing videos for high-margin products.
4. Strategically Differentiate Products: Classify products into short-term and long-term focus groups to align promotional strategies effectively. This approach maximizes the impact of each promotional effort.

## Methodology

### Experiment Design

The retailer has 571 products that were divided into two categories: Focal and Coordinating. Focal products are tops, bottoms, and dresses; coordinating products include accessories and shoes. Videos were added exclusively to focal products by random selections. Each videos are around 15-20 seconds. In the video, models displayed focal products with matching coordinating products. The videos were shot with limited models and settings to reduce the differences. The experiment lasted 28 weeks of spring collection on the firm's website. 

### Statistical Analysis

The analysis employed t-tests to assess group balance and statistical models to measure the causal impact of videos on sales. Linear regression models were implemented using R scripts to evaluate the relationships between video usage, promotional strategies, and sales outcomes. Interaction effects between videos and other promotions were also analyzed.

### Outline
This analysis is divided into three key parts:

1. **Assessing Group Balance with a T-Test**  
2. **Measuring the Effect of Product Videos on Focal & Coordinating Product Sales and compare the results with existing promotions** 
3. **Analyzing the Interaction of Videos and Other Promotions on Sales**  

## Data Dictionary Example
There are 4 sheets in the dataset: Data Dictionary, Random check, FP Analysis data, CP Anaylsis data.
The Data Dictionary sheet contains 2 tables; the following one outlines the variables in the 'FP Analysis data' sheet:

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
#### Part 1. Assessing the treatment and control groups have similar product prices to avoid selection bias.  
**Conclusion**: Product prices were balanced between the groups, confirming the experiment's validity.
The average product price in the experiment and control groups passed the t-test; thus, the selection was valid without bias. 
(This part's [R script](https://github.com/chikuku/AB-testing/blob/e2b1a3ea37fee73ce375e58e572bf63d2439c7c0/github_videoCase.R#L11))
- The null hypothesis is the 2 groups have the same product price. The t-test failed to reject the H0 because of the following reasons: 
  1. The control group's mean is 20.41, and the treatment group's is 20.71. The two are pretty close.
  2. The P-value is 0.71: it is not greater than the common significant level of 0.05, which means it is not statistically significant.
  3. 95% Confidence interval [−1.852871, 1.271512] contains 0.
  Thus, the 2 groups had no significant difference and remained the randomization. 
#### Part 2. Examine if adding videos on the focal product's page increased focal & coordinating product sales. 
**Conclusion**: They both increased, and the focal product sales increased more than the coordinating products. 
- 1. **Focal Product Weekly Sales** average increased by 23.58 units compared to those weeks that did not play videos.
  2. Compared to videos, four promotions have impressive better positive outcomes: **Email**: 105.44 units, **Catalog:** Significant increase of 209.99 , **Home Page:** 90.87, and **Category Page:** 101.63 units. 
- <img src="https://github.com/chikuku/AB-testing/blob/main/Analysis%20Screenshot/Part2_Focal_Vid_Promotions.jpg" alt="part2_fp_image" width="550">

- 2. **Coordinating Product Weekly Sales** average was increased by 17.73 units compared to those weeks that did not play videos.
  
#### Part 3. Focal Products Promotion Combination Analysis 
**Conclusion**: Two combination promotions had great outcomes, while one did not. [R script](https://github.com/chikuku/AB-testing/blob/49532ec749e30e64bcea5feaa8f6a670f3beb635/github_videoCase.R#L37)
- 1. Video with home page and catalog front page promotion (VidWk: HomePgWk & VidWk :CatPgWk) combinations had significant positive effects.
The coefficients are 102.1 and 164.15, suggesting that these 2 promotions integrated with videos can further boost sales.
- 2. However, when videos combined with catalog promotion(VidWk:CatalogWk) had significant negative effect. Thus, we should avoid using them together. 
<img src= "https://github.com/chikuku/AB-testing/blob/main/Analysis%20Screenshot/Part3_Focal_Vid_combine_Promotions.jpg" alt="part2_fp_image" width="550">

## Business Suggestions  

Based on the results of the A/B test project, four marketing strategies (Email, Catalog, Home Page, and Category Page promotions) demonstrated a greater short-term increase in average sales compared to adding videos. However, this does not imply that adding videos is less valuable, as videos provide unique advantages:

* Videos are a one-time cost and serve as a permanent promotion on product pages, unlike other strategies that incur recurring fees for each campaign.
* The experiment only reflects short-term outcomes and does not account for the long-term value of videos.

### Recommendations

#### 1. Differentiate Products by Marketing Strategy
&nbsp;&nbsp;&nbsp;&nbsp; I recommend categorizing products into short-term and long-term focus groups. Tailoring promotional strategies to these categories can maximize the benefits of both types.

##### *Short-Term Comparison*
&nbsp;&nbsp;&nbsp;&nbsp; During the test period, the focal product's sales increased: 
* **Videos:** Modest increase of **23.59 units**  
* **Email Promotions:** Significant increase of **105.44 units**  
* **Catalog Promotions:** Significant increase of **209.99 units**  
* **Home Page Promotions:** Significant increase of **90.87 units**  
* **Category Page Promotions:** Significant increase of **101.63 units**

##### *Long-Term Value of Videos* 
&nbsp;&nbsp;&nbsp;&nbsp; Videos could offer continuous value after implementation:
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

## Next Steps
This analysis examines the potential of product videos to enhance sales while identifying limitations in their effectiveness compared to other promotions. Future steps could include:
1. Conducting long-term studies to assess the cumulative effects of videos on sales.
2. Exploring alternative combinations of promotions for greater synergy.
3. Analyzing the relationship between focal products and coordinating products to determine which focal products drive more significant increases in coordinating product sales.
4. Understanding the factors that shape customers' positive or negative attitudes toward promotions. 
