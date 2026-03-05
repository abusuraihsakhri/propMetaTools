# propMetaTools

propMetaTools is an R package designed to simplify proportional meta-analysis workflows.

The package provides tools for:

• Preparing meta-analysis datasets  
• Running proportional meta-analysis using Freeman–Tukey transformation  
• Generating forest plots  
• Assessing publication bias using funnel plots and Egger regression

## Example Workflow

```r
clean <- prepare_meta_data(df)

meta_result <- run_prop_meta(clean)

plot_forest(meta_result)

bias <- assess_bias(meta_result)