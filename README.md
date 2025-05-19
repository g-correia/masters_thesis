  In this project, we investigate whether a single, well‐designed platform trial with a common control can achieve comparable evidence as that of the traditional two‐trial paradigm, and assess the impact of various multiplicity adjustments. 
  
  By conducting a simulation study comparing platform and two‐trial configurations in two settings: (i) a single experimental treatment evaluated twice versus two separate trials; (ii) two distinct treatments assessed concurrently or sequentially within the platform versus paired independent trials. 
  
  The outcome is binary, and we vary response rates, allocation ratios, and treatment effect scenarios to reflect typical oncology settings. We examined unadjusted analyses alongside typical multiplicity adjustments, Bonferroni and Dunnett’s, besides a proposed stringent “single‐pivotal” threshold. We also applied the online procedure (modified LOND) for sequential testing. The metrics evaluated were type I error, power, and false discovery rate.

  All data is fully generated such that the arms follow a binomial distribution with the corresponding response rates and treatment effects. 

The structure of this archive is as follows:
- Main folders: scenario_1 and scenario_2 are subdivided into trial design folders:
  - 'platform' and two-trial'. Each trial design subfolder (platform/two-trial) has it's own: 
    - 'functions' folder, that contain the 
      - generative process for the respective trial ('gen_' starting .R files) and 
      - functions to obtain the outcome measures ('rejection_rate'/'false_discovery_rate.R').
  
  The analysis of (i) a single experimental treatment is under the files of folder scenario_1, and the analysis for (ii) two distinct treatments + one individual trial is under the files of folder scenario_2.

Steps to retrieve the analyses:
(1) Retrieve results for scenario 1: simply run all the lines of the file results.R: within the platform folder to obtain the results for the platform trial or within the two-trial folder for results of the two individual trials.

(2) Retrieve for scenario 2: 

     a. Run the lines of file call.R to load the functions and iterations numbers needed for the analyses;
     
     b. Run all the lines of the files starting with 'results' (extension .R): within the platform folder to obtain the results for the platform trial or within the two-trial folder for results of the two individual trials.
     
(3) Outputs: after running (1), the output dataframes for scenario 1 will be saved under main folder "output". However, to obtain and save the outputs for scenario 2, in path 'scenario_2' -> 'results_tables', first run file "result_objects.R" and then the .R extension 'table_' starting files. These will result in the outcome dataframes, saved in main folder "output".

  Note 1: the data consists simply of vectors generated from the binomial distribution. There was no need for a specific file archivation of these vectors, however, the data can be retrieved from the 'gen_' starting .R extension functions within the 'functions' subfolders. Refer to the headers for further specifications on the generative functions for scenario 1, and to the README file for scenario 2.
 
  Note 2: the functions used to obtain the outcome measures are contained within the subfolders "functions". Refer to the headers for further specifications on the outcome measures functions.
  
  Note 3: besides the output files, the 'results_tables' .R extension files contained within scenario_2 also provide html versions of the visualizations in the report (as well as supporting latex code for text generation in tex). The remaining .R files starting with "results_tables_" are the outputs for the tables in the appendix and results section of the report.


  All results were obtained using R version 4.3.1. For the Dunnett's test, we used DescTools package version 0.99.58; and for the LOND adjustment, we used the onlineFDR package version 2.10.0. Other packages used in this project include dplyr version 1.1.4, and kableExtra version 1.4.0. The analyses are available in the GitHub repository https://github.com/g-correia/masters_thesis.

