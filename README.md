[![unstable](http://badges.github.io/stability-badges/dist/unstable.svg)](http://github.com/badges/stability-badges)

Time of recruitment to different sizes
--------------------------------------

Based on von Bertalanffy growth parameters given to the function, the CV
around length at age and the year of birth, this determines the
proporption of a year class’s individuals that are at or above a certain
specified length in each year. This is plotted as cumulative
distribution functions. It assumes normally distributed lengths for an
age based on the cv supplied.

    devtools::install_github("duplisea/vbrecruit")
    library(vbrecruit)

Make a run. Based on Unit 1+2 redfish (Sebastes spp.)
-----------------------------------------------------

    recruit= vbrecruit.f(birth.year=2011, final.year = 2035, Linf = 42, k = 0.086, t0 = -1.57, 
      cv = 0.089, lengths.of.interest=c(22,25,27,30,35))

![Figure 1: the VB growth curve (top) and the proportion of individuals
in the cohort at particular lengths (circles) based on the growth rate
and CV.](README_files/figure-markdown_strict/runvb-1.png)
