fish= "Gadus morhua"
vb.params= popgrowth(fish,fields=c("TLinfinity","K","to"))
vb.mean= apply(vb.params,2,mean,na.rm=T)
vbout= vbrecruit.f(birth.year= 2017, final.year= 2030, Linf= round(vb.mean[1],0), k= round(vb.mean[2],2), t0= round(vb.mean[3],2),
  cv= 0.1, lengths.of.interest=c(25,45,60,80))
title(fish)

fish= "Reinhardtius hippoglossoides"
vb.params= popgrowth(fish,fields=c("TLinfinity","K","to"))
vb.mean= apply(vb.params,2,mean,na.rm=T)
vbout= vbrecruit.f(birth.year= 2014, final.year= 2040, Linf= round(vb.mean[1],0), k= round(vb.mean[2],2), t0= round(vb.mean[3],2),
  cv= 0.1, lengths.of.interest=c(25,45,60,80))
title(fish)

fish= "Hippoglossus hippoglossus"
vb.params= popgrowth(fish,fields=c("TLinfinity","K","to"))
vb.mean= apply(vb.params,2,mean,na.rm=T)
vbout= vbrecruit.f(birth.year= 2014, final.year= 2050, Linf= round(vb.mean[1],0), k= round(vb.mean[2],2), t0= round(vb.mean[3],2),
  cv= 0.1, lengths.of.interest=c(60,85,120,150,200))
title(fish)

fish= "Sebastes mentella"
vb.params= popgrowth(fish,fields=c("TLinfinity","K","to"))
vb.mean= apply(vb.params,2,mean,na.rm=T)
vbout= vbrecruit.f(birth.year= 2011, final.year= 2030, Linf= round(vb.mean[1],0), k= round(vb.mean[2],2), t0= round(vb.mean[3],2),
  cv= 0.1, lengths.of.interest=c(15,22,25,30,35))
title(fish)

fish= "Melanogrammus aeglefinus"
vb.params= popgrowth(fish,fields=c("TLinfinity","K","to"))
vb.mean= apply(vb.params,2,mean,na.rm=T)
vbout= vbrecruit.f(birth.year= 2017, final.year= 2030, Linf= round(vb.mean[1],0), k= round(vb.mean[2],2), t0= round(vb.mean[3],2),
  cv= 0.1, lengths.of.interest=c(35,45,60))
title(fish)
