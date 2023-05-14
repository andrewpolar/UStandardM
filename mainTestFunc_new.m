
clear variables;
close all;

%. data
N = 1.2e4;
Nid = 1e4 + 1;

%. labels
lab = ones(N,1);
lab(Nid:end) = 2;
identID = 1;
verifID = 2;

%. regularisation
alp = 0.04;

%. num. of runs through the data
Nrun = 500;

%. limits
xmin = 0;
xmax = 1;
ymin = 0;
ymax = 8/3;

%. num. of nodes Bottom
n = 5;

%. num. of nodes Top
q = 7;

%. num. of bottom operators, 2*m+1 for classical K.-A.
p = 11;

Nens = 10;
for ii=1:Nens

    %. generate data
    x = rand(N,5);
    y = funcVal(x,0);

    fprintf( 'Run %02.0f out of %02.0f:', ii, Nens );
    
    %. build K.-A.
    [ yhat_all, fnB, fnT, RSME, t_min_all, t_max_all ] = buildKA_new( x, y, lab, identID, verifID, n, q, p, alp, Nrun, xmin, xmax, ymin, ymax, 0 );

    %. save
    fn = sprintf( 'testFn_alp004_ens%02i', ii );
    save( fn, 'yhat_all', 'fnB', 'fnT', 'RSME', 't_min_all', 't_max_all', 'x', 'y', 'n', 'q', 'p', 'alp', 'Nrun' );

end
