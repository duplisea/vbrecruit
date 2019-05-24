[![unstable](http://badges.github.io/stability-badges/dist/unstable.svg)](http://github.com/badges/stability-badges)

Time of recruitment to different sizes
--------------------------------------

Based on von Bertalanffy growth parameters given to the function, the CV
around length at age and the year of birth, this determines the
proporption of a year class’s individuals that are at or above a certain
specified length in each year. This is plotted as cumulative
distribution functions. It assumes normally distributed lengths for an
age based on the cv supplied. There are assumptions about mortality
inherent in this, namely that mortality is not size based.

It is a broad method that will provide an idea of the year when the
majority of individuals in a cohort will reach a certain size.

    devtools::install_github("duplisea/vbrecruit")
    library(vbrecruit)

Make a run. Based on Unit 1+2 redfish (Sebastes spp.)
-----------------------------------------------------

    recruit= vbrecruit.f(birth.year=2011, final.year = 2035, Linf = 42, k = 0.086, t0 = -1.57, 
      cv = 0.089, lengths.of.interest=c(22,25,27,30,35))

![Figure 1: the VB growth curve (top) and the proportion of individuals
in the cohort at particular lengths (circles) based on the growth rate
and CV.](README_files/figure-markdown_strict/runvb-1.png)

The top figure shows the Von Bertalanffy growth curve give the
parameters supplied. The bottom figure shows the cumlative probability
distributions for each size. So if a curve is identified by the number
in the circle “25”, the way you read this is by seeing what propoportion
of a cohort from your specified birth year will be greater than or equal
to 25cm in each year. The 50% values are highlighted for each of your
lengths of interest. That is, the 50% mark show when half of your
individuals in the cohort will at that size.
