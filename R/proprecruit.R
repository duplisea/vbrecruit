#' Proportion of a cohort recruiting each year 
#'
#' Using a Von Bertalanffy growth function and parameters you supply, this determines the proportion
#' of a cohort's numbers and biomass that are at or above different size classes each year
#' @param birth.year four digit year of birth
#' @param final.year four digit final year of the growth projection (birth year + average max age is a good)
#' @param Linf VB maximum length (cm)
#' @param k VB k
#' @param t0 VB t-zero
#' @param cv coefficient of variation on length for an age
#' @param lw.a a parameter for length (cm) - weight (g) exponential function
#' @param lw.b b parameter for length (cm) - weight (g) exponential function
#' @keywords VonBertalanffy growth recruit age
#' @export
#' @examples
#' cohort.props.f(birth.year=2011, final.year = 2030, Linf = 42, k = 0.086, t0 = -1.57, cv = 0.089, lw.a = -4.605, lw.b = 3.08)
 
cohort.props.f= function(birth.year, final.year, Linf, k, t0, cv,lw.a,lw.b){
  years= 1:(final.year-birth.year)
  lengths=ceiling(Linf+Linf*cv*3):1 #need to reverse length vector to make diff work properly.
  props.gte.len= matrix(nrow=length(lengths),ncol=length(years))
  for (i in years){
    len= Linf*(1-exp(-k*(i-t0)))
    props.gte.len[,i]= 1-pnorm(lengths,len,len*cv)
  }
  props.gte.len= as.data.frame(props.gte.len)
  names(props.gte.len)=c(paste("Y",(birth.year+1):final.year,sep=""))
  row.names(props.gte.len)=paste(lengths,"cm",sep="")

  props.eq.len= apply(props.gte.len,2,diff) #computes the proportion of individuals in each size class noting that they are from largest to smallest size
  weight= (exp(lw.a)*lengths^lw.b)[-1]
  bmass.len= props.eq.len*weight # multiply the proportion in each length class by the nominal weight of individuals in that length class. this is essentially biomass


  bmass.sum= apply(bmass.len,2,sum) # compute the total biomass for a year
  props.bmass.len= t(t(bmass.len)/bmass.sum)
  props.bms.gte.len= apply(props.bmass.len,2,cumsum)

  # The output is reversed again so it goes from smallest to largest size
  outp= list(abundance.props= props.gte.len[lengths,][-length(lengths),], biomass.props= props.bms.gte.len[lengths[-1],])
  outp
}

#' Von Bertalanffy growth 
#'
#' Using a Von Bertalanffy growth function and parameters you supply, show the trajectory for the supplied age vector
#' @param age.vector ages
#' @param Linf VB maximum length (cm)
#' @param k VB k
#' @param t0 VB t-zero
#' @param cv coefficient of variation on length for an age
#' @param lw.a a parameter for length (cm) - weight (g) exponential function
#' @param lw.b b parameter for length (cm) - weight (g) exponential function
#' @keywords VonBertalanffy growth recruit age
#' @export
#' @examples
#' vb.growth.f(age.vector=1:40,Linf=42,k=0.086,t0=-1.57,cv=0.1)
  
vb.growth.f= function(age.vector,Linf,k,t0,cv){
  Amax= max(age.vector) #maximum age
  A=age.vector
  L= Linf*(1-exp(-k*(age.vector-t0)))
  stdev= cv*L
  CI.low= L-1.96*stdev
  CI.high= L+1.96*stdev
  vb.growth= data.frame(Age=A,Length=L,Length.CI.low= CI.low, Length.CI.high=CI.high)
  vb.growth
}

#create a plotting function so the vb curve is plotted as well as the proportion recruiting in both numbers and biomass
# four panel, parameters in panel 1, vb growth curve in panel 2, prop numbers in panel 3, prop biomass in panel 4


