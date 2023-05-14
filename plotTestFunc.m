
clear variables;
close all;

figure(1);
hold on;

Nrun = 500;
Nens = 10;

runs = log(1:Nrun).'/log(10);
for ii=1:Nens

    %. load
    fn = sprintf( 'testFn_alp004_ens%02i', ii );
    load( fn );
    
    plot( runs, log(RSME)/log(10), '-', 'LineWidth', 0.5, 'Color', 'r' );

end

hold off;

aspRatio = 1;
pbaspect( [ aspRatio 1 1 ] );
limits = [ 0 2.7 -2.4 -1.2 ];
axis( limits );
