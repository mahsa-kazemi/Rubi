(* ::Package:: *)

(************************************************************************)
(* This file was generated automatically by the Mathematica front end.  *)
(* It contains Initialization cells from a Notebook file, which         *)
(* typically will have the same name as this file except ending in      *)
(* ".nb" instead of ".m".                                               *)
(*                                                                      *)
(* This file is intended to be loaded into the Mathematica kernel using *)
(* the package loading commands Get or Needs.  Doing so is equivalent   *)
(* to using the Evaluate Initialization Cells menu command in the front *)
(* end.                                                                 *)
(*                                                                      *)
(* DO NOT EDIT THIS FILE.  This entire file is regenerated              *)
(* automatically each time the parent Notebook file is saved in the     *)
(* Mathematica front end.  Any changes you make to this file will be    *)
(* overwritten.                                                         *)
(************************************************************************)



(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  d^m*Int[x^(m+n*p)*(b+c*x^n)^p,x] /;
FreeQ[{b,c,d,m,n},x] && EqQ[n2,2*n] && IntegerQ[p] && (IntegerQ[m] || GtQ[d,0]) *)


(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  1/d^(n*p)*Int[(d*x)^(m+n*p)*(b+c*x^n)^p,x] /;
FreeQ[{b,c,d,m},x] && EqQ[n2,2*n] && IntegerQ[p] && IntegerQ[n] *)


(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  (d*x)^m/x^m*Int[x^(m+n*p)*(b+c*x^n)^p,x] /;
FreeQ[{b,c,d,m,n},x] && EqQ[n2,2*n] && IntegerQ[p] && Not[IntegerQ[m] || GtQ[d,0]] *)


(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  (b*x^n+c*x^(2*n))^p/((d*x)^(n*p)*(b+c*x^n)^p)*Int[(d*x)^(m+n*p)*(b+c*x^2)^p,x] /;
FreeQ[{b,c,d,m,n,p},x] && EqQ[n2,2*n] && Not[IntegerQ[p]] *)


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  1/n*Subst[Int[(a+b*x+c*x^2)^p,x],x,x^n] /;
FreeQ[{a,b,c,m,n,p},x] && EqQ[n2,2*n] && EqQ[Simplify[m-n+1],0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d*x)^m*(a+b*x^n+c*x^(2*n))^p,x],x] /;
FreeQ[{a,b,c,d,m,n},x] && EqQ[n2,2*n] && IGtQ[p,0] && Not[IntegerQ[Simplify[(m+1)/n]]]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  Int[x^(m+2*n*p)*(c+b*x^(-n)+a*x^(-2*n))^p,x] /;
FreeQ[{a,b,c,m,n},x] && EqQ[n2,2*n] && ILtQ[p,0] && NegQ[n]


(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(a_+b_.*x_^n_.+c_.*x_^n2_.)^p_,x_Symbol] :=
  1/c^p*Int[(d*x)^m*(b/2+c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && EqQ[b^2-4*a*c,0] && IntegerQ[p] *)


(* ::Code:: *)
(* Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  (d*x)^(m+1)*(a+b*x^n+c*x^(2*n))^(p+1)/(2*a*d*n*(p+1)*(2*p+1)) - 
  (d*x)^(m+1)*(2*a+b*x^n)*(a+b*x^n+c*x^(2*n))^p/(2*a*d*n*(2*p+1)) /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && EqQ[b^2-4*a*c,0] && Not[IntegerQ[p]] && EqQ[m+2*n*(p+1)+1,0] && NeQ[2*p+1,0] *)


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_.+c_.*x_^n2_.)^p_,x_Symbol] :=
  (a+b*x^n+c*x^(2*n))^FracPart[p]/(c^IntPart[p]*(b/2+c*x^n)^(2*FracPart[p]))*Int[(d*x)^m*(b/2+c*x^n)^(2*p),x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && EqQ[b^2-4*a*c,0] && IntegerQ[p-1/2]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_.+c_.*x_^n2_.)^p_,x_Symbol] :=
  a^IntPart[p]*(a+b*x^n+c*x^(2*n))^FracPart[p]/(1+2*c*x^n/b)^(2*FracPart[p])*Int[(d*x)^m*(1+2*c*x^n/b)^(2*p),x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && EqQ[b^2-4*a*c,0] && Not[IntegerQ[2*p]]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  1/n*Subst[Int[x^(Simplify[(m+1)/n]-1)*(a+b*x+c*x^2)^p,x],x,x^n] /;
FreeQ[{a,b,c,m,n,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IntegerQ[Simplify[(m+1)/n]]


(* ::Code:: *)
Int[(d_*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_.,x_Symbol] :=
  d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]*Int[x^m*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IntegerQ[Simplify[(m+1)/n]]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  With[{k=GCD[m+1,n]},
  1/k*Subst[Int[x^((m+1)/k-1)*(a+b*x^(n/k)+c*x^(2*n/k))^p,x],x,x^k] /;
 k!=1] /;
FreeQ[{a,b,c,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && IntegerQ[m]


(* ::Code:: *)
Int[(d_.*x_)^m_*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  With[{k=Denominator[m]},
  k/d*Subst[Int[x^(k*(m+1)-1)*(a+b*x^(k*n)/d^n+c*x^(2*k*n)/d^(2*n))^p,x],x,(d*x)^(1/k)]] /;
FreeQ[{a,b,c,d,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && FractionQ[m] && IntegerQ[p]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  d^(n-1)*(d*x)^(m-n+1)*(a+b*x^n+c*x^(2*n))^p*(b*n*p+c*(m+n*(2*p-1)+1)*x^n)/(c*(m+2*n*p+1)*(m+n*(2*p-1)+1)) - 
  n*p*d^n/(c*(m+2*n*p+1)*(m+n*(2*p-1)+1))*
    Int[(d*x)^(m-n)*(a+b*x^n+c*x^(2*n))^(p-1)*Simp[a*b*(m-n+1)-(2*a*c*(m+n*(2*p-1)+1)-b^2*(m+n*(p-1)+1))*x^n,x],x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && IGtQ[p,0] && GtQ[m,n-1] && NeQ[m+2*n*p+1,0] && NeQ[m+n*(2*p-1)+1,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  (d*x)^(m+1)*(a+b*x^n+c*x^(2*n))^p/(d*(m+1)) - 
  n*p/(d^n*(m+1))*Int[(d*x)^(m+n)*(b+2*c*x^n)*(a+b*x^n+c*x^(2*n))^(p-1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && IGtQ[p,0] && LtQ[m,-1]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  (d*x)^(m+1)*(a+b*x^n+c*x^(2*n))^p/(d*(m+2*n*p+1)) + 
  n*p/(m+2*n*p+1)*Int[(d*x)^m*(2*a+b*x^n)*(a+b*x^n+c*x^(2*n))^(p-1),x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && IGtQ[p,0] && NeQ[m+2*n*p+1,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  d^(n-1)*(d*x)^(m-n+1)*(b+2*c*x^n)*(a+b*x^n+c*x^(2*n))^(p+1)/(n*(p+1)*(b^2-4*a*c)) - 
  d^n/(n*(p+1)*(b^2-4*a*c))*
    Int[(d*x)^(m-n)*(b*(m-n+1)+2*c*(m+2*n*(p+1)+1)*x^n)*(a+b*x^n+c*x^(2*n))^(p+1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && ILtQ[p,-1] && GtQ[m,n-1] && LeQ[m,2*n-1]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  -d^(2*n-1)*(d*x)^(m-2*n+1)*(2*a+b*x^n)*(a+b*x^n+c*x^(2*n))^(p+1)/(n*(p+1)*(b^2-4*a*c)) + 
  d^(2*n)/(n*(p+1)*(b^2-4*a*c))*
    Int[(d*x)^(m-2*n)*(2*a*(m-2*n+1)+b*(m+n*(2*p+1)+1)*x^n)*(a+b*x^n+c*x^(2*n))^(p+1),x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && ILtQ[p,-1] && GtQ[m,2*n-1]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  -(d*x)^(m+1)*(b^2-2*a*c+b*c*x^n)*(a+b*x^n+c*x^(2*n))^(p+1)/(a*d*n*(p+1)*(b^2-4*a*c)) + 
  1/(a*n*(p+1)*(b^2-4*a*c))*
    Int[(d*x)^m*(a+b*x^n+c*x^(2*n))^(p+1)*Simp[b^2*(m+n*(p+1)+1)-2*a*c*(m+2*n*(p+1)+1)+b*c*(m+n*(2*p+3)+1)*x^n,x],x] /;
FreeQ[{a,b,c,d,m},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && ILtQ[p,-1]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  d^(2*n-1)*(d*x)^(m-2*n+1)*(a+b*x^n+c*x^(2*n))^(p+1)/(c*(m+2*n*p+1)) - 
  d^(2*n)/(c*(m+2*n*p+1))*
    Int[(d*x)^(m-2*n)*Simp[a*(m-2*n+1)+b*(m+n*(p-1)+1)*x^n,x]*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && GtQ[m,2*n-1] && NeQ[m+2*n*p+1,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_.*x_)^m_*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  (d*x)^(m+1)*(a+b*x^n+c*x^(2*n))^(p+1)/(a*d*(m+1)) - 
  1/(a*d^n*(m+1))*Int[(d*x)^(m+n)*(b*(m+n*(p+1)+1)+c*(m+2*n*(p+1)+1)*x^n)*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && LtQ[m,-1] && IntegerQ[p]


(* ::Code:: *)
Int[(d_.*x_)^m_/(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  (d*x)^(m+1)/(a*d*(m+1)) -
  1/(a*d^n)*Int[(d*x)^(m+n)*(b+c*x^n)/(a+b*x^n+c*x^(2*n)),x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && LtQ[m,-1]


(* ::Code:: *)
Int[x_^m_/(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  Int[PolynomialDivide[x^m,(a+b*x^n+c*x^(2*n)),x],x] /;
FreeQ[{a,b,c},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && IGtQ[m,3*n-1]


(* ::Code:: *)
Int[(d_.*x_)^m_/(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  d^(2*n-1)*(d*x)^(m-2*n+1)/(c*(m-2*n+1)) -
  d^(2*n)/c*Int[(d*x)^(m-2*n)*(a+b*x^n)/(a+b*x^n+c*x^(2*n)),x] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && GtQ[m,2*n-1]


(* ::Code:: *)
Int[x_^m_./(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  With[{q=Rt[a/c,2]},
  With[{r=Rt[2*q-b/c,2]},
  1/(2*c*r)*Int[x^(m-3*(n/2))*(q+r*x^(n/2))/(q+r*x^(n/2)+x^n),x] - 
  1/(2*c*r)*Int[x^(m-3*(n/2))*(q-r*x^(n/2))/(q-r*x^(n/2)+x^n),x]]] /;
FreeQ[{a,b,c},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n/2,0] && IGtQ[m,0] && GeQ[m,3*n/2] && LtQ[m,2*n] && NegQ[b^2-4*a*c]


(* ::Code:: *)
Int[x_^m_./(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  With[{q=Rt[a/c,2]},
  With[{r=Rt[2*q-b/c,2]},
  1/(2*c*r)*Int[x^(m-n/2)/(q-r*x^(n/2)+x^n),x] - 
  1/(2*c*r)*Int[x^(m-n/2)/(q+r*x^(n/2)+x^n),x]]] /;
FreeQ[{a,b,c},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n/2,0] && IGtQ[m,0] && GeQ[m,n/2] && LtQ[m,3*n/2] && NegQ[b^2-4*a*c]


(* ::Code:: *)
Int[(d_.*x_)^m_/(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  d^n/2*(b/q+1)*Int[(d*x)^(m-n)/(b/2+q/2+c*x^n),x] - 
  d^n/2*(b/q-1)*Int[(d*x)^(m-n)/(b/2-q/2+c*x^n),x]] /;
FreeQ[{a,b,c,d},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0] && GeQ[m,n]


(* ::Code:: *)
Int[(d_.*x_)^m_./(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  c/q*Int[(d*x)^m/(b/2-q/2+c*x^n),x] - c/q*Int[(d*x)^m/(b/2+q/2+c*x^n),x]] /;
FreeQ[{a,b,c,d,m},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IGtQ[n,0]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  -Subst[Int[(a+b*x^(-n)+c*x^(-2*n))^p/x^(m+2),x],x,1/x] /;
FreeQ[{a,b,c,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && ILtQ[n,0] && IntegerQ[m]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  With[{k=Denominator[m]},
  -k/d*Subst[Int[(a+b*d^(-n)*x^(-k*n)+c*d^(-2*n)*x^(-2*k*n))^p/x^(k*(m+1)+1),x],x,1/(d*x)^(1/k)]] /;
FreeQ[{a,b,c,d,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && ILtQ[n,0] && FractionQ[m]


(* ::Code:: *)
Int[(d_.*x_)^m_*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  -d^IntPart[m]*(d*x)^FracPart[m]*(x^(-1))^FracPart[m]*Subst[Int[(a+b*x^(-n)+c*x^(-2*n))^p/x^(m+2),x],x,1/x] /;
FreeQ[{a,b,c,d,m,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && ILtQ[n,0] && Not[RationalQ[m]]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  With[{k=Denominator[n]},
  k*Subst[Int[x^(k*(m+1)-1)*(a+b*x^(k*n)+c*x^(2*k*n))^p,x],x,x^(1/k)]] /;
FreeQ[{a,b,c,m,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && FractionQ[n]


(* ::Code:: *)
Int[(d_*x_)^m_*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]*Int[x^m*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,m,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && FractionQ[n]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  1/(m+1)*Subst[Int[(a+b*x^Simplify[n/(m+1)]+c*x^Simplify[2*n/(m+1)])^p,x],x,x^(m+1)] /;
FreeQ[{a,b,c,m,n,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(d_*x_)^m_*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]*Int[x^m*(a+b*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && IntegerQ[Simplify[n/(m+1)]] && Not[IntegerQ[n]]


(* ::Code:: *)
Int[(d_.*x_)^m_./(a_+b_.*x_^n_+c_.*x_^n2_.),x_Symbol] :=
  With[{q=Rt[b^2-4*a*c,2]},
  2*c/q*Int[(d*x)^m/(b-q+2*c*x^n),x] -
  2*c/q*Int[(d*x)^m/(b+q+2*c*x^n),x]] /;
FreeQ[{a,b,c,d,m,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  -(d*x)^(m+1)*(b^2-2*a*c+b*c*x^n)*(a+b*x^n+c*x^(2*n))^(p+1)/(a*d*n*(p+1)*(b^2-4*a*c)) + 
  1/(a*n*(p+1)*(b^2-4*a*c))*
    Int[(d*x)^m*(a+b*x^n+c*x^(2*n))^(p+1)*Simp[b^2*(n*(p+1)+m+1)-2*a*c*(m+2*n*(p+1)+1)+b*c*(2*n*p+3*n+m+1)*x^n,x],x] /;
FreeQ[{a,b,c,d,m,n},x] && EqQ[n2,2*n] && NeQ[b^2-4*a*c,0] && ILtQ[p+1,0]


(* ::Code:: *)
Int[(d_.*x_)^m_.*(a_+b_.*x_^n_+c_.*x_^n2_.)^p_,x_Symbol] :=
  a^IntPart[p]*(a+b*x^n+c*x^(2*n))^FracPart[p]/
    ((1+2*c*x^n/(b+Rt[b^2-4*a*c,2]))^FracPart[p]*(1+2*c*x^n/(b-Rt[b^2-4*a*c,2]))^FracPart[p])*
    Int[(d*x)^m*(1+2*c*x^n/(b+Sqrt[b^2-4*a*c]))^p*(1+2*c*x^n/(b-Sqrt[b^2-4*a*c]))^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[n2,2*n]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^mn_+c_.*x_^n_.)^p_.,x_Symbol] :=
  Int[x^(m-n*p)*(b+a*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,m,n},x] && EqQ[mn,-n] && IntegerQ[p] && PosQ[n]


(* ::Code:: *)
Int[x_^m_.*(a_+b_.*x_^mn_+c_.*x_^n_.)^p_.,x_Symbol] :=
  x^(n*FracPart[p])*(a+b/x^n+c*x^n)^FracPart[p]/(b+a*x^n+c*x^(2*n))^FracPart[p]*Int[x^(m-n*p)*(b+a*x^n+c*x^(2*n))^p,x] /;
FreeQ[{a,b,c,m,n,p},x] && EqQ[mn,-n] && Not[IntegerQ[p]] && PosQ[n]


(* ::Code:: *)
Int[(d_*x_)^m_.*(a_+b_.*x_^mn_+c_.*x_^n_.)^p_.,x_Symbol] :=
  d^IntPart[m]*(d*x)^FracPart[m]/x^FracPart[m]*Int[x^m*(a+b*x^(-n)+c*x^n)^p,x] /;
FreeQ[{a,b,c,d,m,n,p},x] && EqQ[mn,-n]


(* ::Code:: *)
Int[x_^m_.*(a_.+b_.*v_^n_+c_.*v_^n2_.)^p_.,x_Symbol] :=
  1/Coefficient[v,x,1]^(m+1)*Subst[Int[SimplifyIntegrand[(x-Coefficient[v,x,0])^m*(a+b*x^n+c*x^(2*n))^p,x],x],x,v] /;
FreeQ[{a,b,c,n,p},x] && EqQ[n2,2*n] && LinearQ[v,x] && IntegerQ[m] && NeQ[v,x]


(* ::Code:: *)
Int[u_^m_.*(a_.+b_.*v_^n_+c_.*v_^n2_.)^p_.,x_Symbol] :=
  u^m/(Coefficient[v,x,1]*v^m)*Subst[Int[x^m*(a+b*x^n+c*x^(2*n))^p,x],x,v] /;
FreeQ[{a,b,c,m,n,p},x] && EqQ[n2,2*n] && LinearPairQ[u,v,x]



