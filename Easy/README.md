## imputeTestbench: Evaluating Imputation Methods

This example demonstrates how to use the impute_errors() function from the imputeTestbench package to evaluate the performance of the "na.locf" (Last Observation Carried Forward) imputation method on time series data.

### Parameters
* dataIn: The input time series data (in this case, the 'nottem' dataset)

* methods: Imputation method to evaluate (Last Observation Carried Forward)

* missPercentFrom: Starting percentage of missing data (10%)

* missPercentTo: Ending percentage of missing data (30%)

* interval: Step size between missing data percentages (10%)

* repetition: Number of times to repeat the evaluation (1)

### Output

The results object will contain error metrics (e.g., RMSE) for the "na.locf" method at different percentages of missing data (10%, 20%, 30%). This helps assess how well the Last Observation Carried Forward method performs under various missing data scenarios.

![Output](image.png)