This code constructs the Kolmogorov-Arnold representation based on the input-output data, see [M. Poluektov, A. Polar, "A new iterative method for construction of the Kolmogorov-Arnold representation"].

Language: MATLAB (tested on MATLAB 2020a).

The files reproduce Example 2 of the paper.

File list:
    buildKA_new.m        function, the algorithm for building the Kolmogorov-Arnold representation
    funcVal.m            function, generation of the input-output data for the example, see equation (33) of the paper
    mainTestFunc_new.m   script, main script that generates the data and runs the algorithm
    plotTestFunc.m       script, plotting of the results

To reproduce the plots of Example 2 of the paper, run mainTestFunc_new.m. It will generate the data files for the specific value of the regularisation parameter (Greek letter mu in the paper). Execute plotTestFunc.m to plot the data. To obtain a subplot for another value of mu, change line 16 of mainTestFunc_new.m accordingly and repeat the steps.
