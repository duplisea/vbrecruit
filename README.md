# vbrecruit
Proportion of a cohort recruiting to different sizes each year

Install in R by pasting the following into the R command line

    library(devtools)
  
    install_github("duplisea/vbrecruit")
  
  
Then run a test as

    library(vbrecruit)
  
    recruit=vbrecruit.f(birth.year = 2011, final.year = 2035, Linf = 42, k = 0.086, t0 = -1.57, cv = 0.089,
       lw.a = -4.605, lw.b = 3.08, lengths.of.interest = c(25,27,30,35))
