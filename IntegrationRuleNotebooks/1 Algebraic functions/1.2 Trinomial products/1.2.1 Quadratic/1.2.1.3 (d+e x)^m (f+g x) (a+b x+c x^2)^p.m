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
Int[(e_.*x_)^m_.*(f_+g_.*x_)*(b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  g*(e*x)^m*(b*x+c*x^2)^(p+1)/(c*(m+2*p+2)) /;
FreeQ[{b,c,e,f,g,m,p},x] && EqQ[b*g*(m+p+1)-c*f*(m+2*p+2),0] && NeQ[m+2*p+2,0]


(* ::Code:: *)
Int[x_^m_.*(f_+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  f*Int[x^m*(a+c*x^2)^p,x] + g*Int[x^(m+1)*(a+c*x^2)^p,x] /;
FreeQ[{a,c,f,g,p},x] && IntegerQ[m] && Not[IntegerQ[2*p]]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(e*x)^m*(f+g*x)*(a+b*x+c*x^2)^p,x],x] /;
FreeQ[{a,b,c,e,f,g,m},x] && IntegerQ[p] && (GtQ[p,0] || EqQ[a,0] && IntegerQ[m])


(* ::Code:: *)
Int[(e_.*x_)^m_.*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(e*x)^m*(f+g*x)*(a+c*x^2)^p,x],x] /;
FreeQ[{a,c,e,f,g,m},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_+g_.*x_)*(a_+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -f*g*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(b*(p+1)*(e*f-d*g)) /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && EqQ[b^2-4*a*c,0] && EqQ[m+2*p+3,0] && EqQ[2*c*f-b*g,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  g*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(2*c*(p+1)) - 
  e*g*m/(2*c*(p+1))*Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && EqQ[2*c*f-b*g,0] && LtQ[p,-1] && GtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_.+g_.*x_)*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -2*c*(e*f-d*g)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/((p+1)*(2*c*d-b*e)^2) + 
  (2*c*f-b*g)/(2*c*d-b*e)*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && EqQ[b^2-4*a*c,0] && EqQ[m+2*p+3,0] && NeQ[2*c*f-b*g,0] && NeQ[2*c*d-b*e,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (a+b*x+c*x^2)^FracPart[p]/(c^IntPart[p]*(b/2+c*x)^(2*FracPart[p]))*Int[(d+e*x)^m*(f+g*x)*(b/2+c*x)^(2*p),x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && EqQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(f+g*x)*(a+b*x+c*x^2)^p,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && IntegerQ[p] && (GtQ[p,0] || EqQ[a,0] && IntegerQ[m])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_.*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(f+g*x)*(a+c*x^2)^p,x],x] /;
FreeQ[{a,c,d,e,f,g,m},x] && IGtQ[p,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_+g_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  e*g*x/c + 1/c*Int[(c*d*f-a*e*g+(c*e*f+c*d*g-b*e*g)*x)/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_+g_.*x_)/(a_+c_.*x_^2),x_Symbol] :=
  e*g*x/c + 1/c*Int[(c*d*f-a*e*g+c*(e*f+d*g)*x)/(a+c*x^2),x] /;
FreeQ[{a,c,d,e,f,g},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -(b*e*g*(p+2)-c*(e*f+d*g)*(2*p+3)-2*c*e*g*(p+1)*x)*(a+b*x+c*x^2)^(p+1)/(2*c^2*(p+1)*(2*p+3)) /;
FreeQ[{a,b,c,d,e,f,g,p},x] && NeQ[b^2-4*a*c,0] && EqQ[b^2*e*g*(p+2)-2*a*c*e*g+c*(2*c*d*f-b*(e*f+d*g))*(2*p+3),0] && NeQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  ((e*f+d*g)*(2*p+3)+2*e*g*(p+1)*x)*(a+c*x^2)^(p+1)/(2*c*(p+1)*(2*p+3)) /;
FreeQ[{a,c,d,e,f,g,p},x] && EqQ[a*e*g-c*d*f*(2*p+3),0] && NeQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -(2*a*c*(e*f+d*g)-b*(c*d*f+a*e*g)-(b^2*e*g-b*c*(e*f+d*g)+2*c*(c*d*f-a*e*g))*x)*(a+b*x+c*x^2)^(p+1)/(c*(p+1)*(b^2-4*a*c)) - 
  (b^2*e*g*(p+2)-2*a*c*e*g+c*(2*c*d*f-b*(e*f+d*g))*(2*p+3))/(c*(p+1)*(b^2-4*a*c))*Int[(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (a*(e*f+d*g)-(c*d*f-a*e*g)*x)*(a+c*x^2)^(p+1)/(2*a*c*(p+1)) - 
  (a*e*g-c*d*f*(2*p+3))/(2*a*c*(p+1))*Int[(a+c*x^2)^(p+1),x] /;
FreeQ[{a,c,d,e,f,g},x] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  -(b*e*g*(p+2)-c*(e*f+d*g)*(2*p+3)-2*c*e*g*(p+1)*x)*(a+b*x+c*x^2)^(p+1)/(2*c^2*(p+1)*(2*p+3)) + 
  (b^2*e*g*(p+2)-2*a*c*e*g+c*(2*c*d*f-b*(e*f+d*g))*(2*p+3))/(2*c^2*(2*p+3))*Int[(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,p},x] && NeQ[b^2-4*a*c,0] && Not[LeQ[p,-1]]


(* ::Code:: *)
Int[(d_.+e_.*x_)*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  ((e*f+d*g)*(2*p+3)+2*e*g*(p+1)*x)*(a+c*x^2)^(p+1)/(2*c*(p+1)*(2*p+3)) - 
  (a*e*g-c*d*f*(2*p+3))/(c*(2*p+3))*Int[(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,f,g,p},x] && Not[LeQ[p,-1]]


(* ::Code:: *)
Int[(e_.*x_)^m_.*(f_.+g_.*x_)*(b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  1/e^p*Int[(e*x)^(m+p)*(f+g*x)*(b+c*x)^p,x] /;
FreeQ[{b,c,e,f,g,m},x] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+p)*(f+g*x)*(a/d+c/e*x)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^(m+p)*(f+g*x)*(a/d+c/e*x)^p,x] /;
FreeQ[{a,c,d,e,f,g,m},x] && EqQ[c*d^2+a*e^2,0] && (IntegerQ[p] || GtQ[a,0] && GtQ[d,0] && EqQ[m+p,0])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  d^m*e^m*Int[(f+g*x)*(a+b*x+c*x^2)^(m+p)/(a*e+c*d*x)^m,x] /;
FreeQ[{a,b,c,d,e,f,g,p},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && Not[IntegerQ[2*p]] && ILtQ[m,0]


(* ::Code:: *)
Int[x_*(d_+e_.*x_)^m_*(a_+c_.*x_^2)^p_,x_Symbol] :=
  d^m*e^m*Int[x*(a+c*x^2)^(m+p)/(a*e+c*d*x)^m,x] /;
FreeQ[{a,c,d,e,p},x] && EqQ[c*d^2+a*e^2,0] && Not[IntegerQ[p]] && ILtQ[m,0]          && EqQ[m,-1] && Not[ILtQ[p-1/2,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  g*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+2)) /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && EqQ[m*(g*(c*d-b*e)+c*e*f)+e*(p+1)*(2*c*f-b*g),0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  g*(d+e*x)^m*(a+c*x^2)^(p+1)/(c*(m+2*p+2)) /;
FreeQ[{a,c,d,e,f,g,m,p},x] && EqQ[c*d^2+a*e^2,0] && EqQ[m*(d*g+e*f)+2*e*f*(p+1),0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (g*(c*d-b*e)+c*e*f)*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(c*(p+1)*(2*c*d-b*e)) - 
  e*(m*(g*(c*d-b*e)+c*e*f)+e*(p+1)*(2*c*f-b*g))/(c*(p+1)*(2*c*d-b*e))*
    Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && GtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (d*g+e*f)*(d+e*x)^m*(a+c*x^2)^(p+1)/(2*c*d*(p+1)) - 
  e*(m*(d*g+e*f)+2*e*f*(p+1))/(2*c*d*(p+1))*Int[(d+e*x)^(m-1)*(a+c*x^2)^(p+1),x] /;
FreeQ[{a,c,d,e,f,g},x] && EqQ[c*d^2+a*e^2,0] && LtQ[p,-1] && GtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (g*(c*d-b*e)+c*e*f)*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(c*(p+1)*(2*c*d-b*e)) - 
  e*(m*(g*(c*d-b*e)+c*e*f)+e*(p+1)*(2*c*f-b*g))/(c*(p+1)*(2*c*d-b*e))*
    Int[(d+e*x)^Simplify[m-1]*(a+b*x+c*x^2)^Simplify[p+1],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && SumSimplerQ[p,1] && SumSimplerQ[m,-1] && NeQ[p,-1]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (d*g+e*f)*(d+e*x)^m*(a+c*x^2)^(p+1)/(2*c*d*(p+1)) - 
  e*(m*(d*g+e*f)+2*e*f*(p+1))/(2*c*d*(p+1))*Int[(d+e*x)^Simplify[m-1]*(a+c*x^2)^Simplify[p+1],x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && EqQ[c*d^2+a*e^2,0] && SumSimplerQ[p,1] && SumSimplerQ[m,-1] && NeQ[p,-1] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d*g-e*f)*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/((2*c*d-b*e)*(m+p+1)) + 
  (m*(g*(c*d-b*e)+c*e*f)+e*(p+1)*(2*c*f-b*g))/(e*(2*c*d-b*e)*(m+p+1))*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && 
  (LtQ[m,-1] && Not[IGtQ[m+p+1,0]] || LtQ[m,0] && LtQ[p,-1] || EqQ[m+2*p+2,0]) && NeQ[m+p+1,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (d*g-e*f)*(d+e*x)^m*(a+c*x^2)^(p+1)/(2*c*d*(m+p+1)) + 
  (m*(g*c*d+c*e*f)+2*e*c*f*(p+1))/(e*(2*c*d)*(m+p+1))*Int[(d+e*x)^(m+1)*(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && EqQ[c*d^2+a*e^2,0] && 
  (LtQ[m,-1] && Not[IGtQ[m+p+1,0]] || LtQ[m,0] && LtQ[p,-1] || EqQ[m+2*p+2,0]) && NeQ[m+p+1,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  g*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+2)) + 
  (m*(g*(c*d-b*e)+c*e*f)+e*(p+1)*(2*c*f-b*g))/(c*e*(m+2*p+2))*Int[(d+e*x)^m*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && EqQ[c*d^2-b*d*e+a*e^2,0] && NeQ[m+2*p+2,0] && (NeQ[m,2] || EqQ[d,0])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  g*(d+e*x)^m*(a+c*x^2)^(p+1)/(c*(m+2*p+2)) + 
  (m*(d*g+e*f)+2*e*f*(p+1))/(e*(m+2*p+2))*Int[(d+e*x)^m*(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && EqQ[c*d^2+a*e^2,0] && NeQ[m+2*p+2,0] && NeQ[m,2]


(* ::Code:: *)
Int[x_^2*(f_+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  x^2*(a*g-c*f*x)*(a+c*x^2)^(p+1)/(2*a*c*(p+1)) - 
  1/(2*a*c*(p+1))*Int[x*Simp[2*a*g-c*f*(2*p+5)*x,x]*(a+c*x^2)^(p+1),x] /;
FreeQ[{a,c,f,g},x] && EqQ[a*g^2+f^2*c,0] && LtQ[p,-2]


(* ::Code:: *)
Int[x_^2*(f_+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  1/c*Int[(f+g*x)*(a+c*x^2)^(p+1),x] - a/c*Int[(f+g*x)*(a+c*x^2)^p,x] /;
FreeQ[{a,c,f,g,p},x] && EqQ[a*g^2+f^2*c,0]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^m*(f+g*x)^(p+1)*(a/f+c/g*x)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && EqQ[c*f^2-b*f*g+a*g^2,0] && IntegerQ[p]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+c_.*x_^2)^p_.,x_Symbol] :=
  Int[(d+e*x)^m*(f+g*x)^(p+1)*(a/f+c/g*x)^p,x] /;
FreeQ[{a,c,d,e,f,g,m},x] && EqQ[c*f^2+a*g^2,0] && (IntegerQ[p] || GtQ[a,0] && GtQ[f,0] && EqQ[p,-1])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(f+g*x)/(a+b*x+c*x^2),x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && IntegerQ[m]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m*(f+g*x)/(a+c*x^2),x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && IntegerQ[m]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -(e*f-d*g)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(2*(p+1)*(c*d^2-b*d*e+a*e^2)) /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[Simplify[m+2*p+3],0] && EqQ[b*(e*f+d*g)-2*(c*d*f+a*e*g),0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  -(e*f-d*g)*(d+e*x)^(m+1)*(a+c*x^2)^(p+1)/(2*(p+1)*(c*d^2+a*e^2)) /;
FreeQ[{a,c,d,e,f,g,m,p},x] && NeQ[c*d^2+a*e^2,0] && EqQ[Simplify[m+2*p+3],0] && EqQ[c*d*f+a*e*g,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(a+b*x+c*x^2)^(p+1)*(b*f-2*a*g+(2*c*f-b*g)*x)/((p+1)*(b^2-4*a*c)) - 
  m*(b*(e*f+d*g)-2*(c*d*f+a*e*g))/((p+1)*(b^2-4*a*c))*Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[Simplify[m+2*p+3],0] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(a+c*x^2)^(p+1)*(a*g-c*f*x)/(2*a*c*(p+1)) - 
  m*(c*d*f+a*e*g)/(2*a*c*(p+1))*Int[(d+e*x)^(m-1)*(a+c*x^2)^(p+1),x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && EqQ[Simplify[m+2*p+3],0] && LtQ[p,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -(e*f-d*g)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/(2*(p+1)*(c*d^2-b*d*e+a*e^2)) - 
  (b*(e*f+d*g)-2*(c*d*f+a*e*g))/(2*(c*d^2-b*d*e+a*e^2))*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && EqQ[Simplify[m+2*p+3],0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  -(e*f-d*g)*(d+e*x)^(m+1)*(a+c*x^2)^(p+1)/(2*(p+1)*(c*d^2+a*e^2)) + 
  (c*d*f+a*e*g)/(c*d^2+a*e^2)*Int[(d+e*x)^(m+1)*(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && NeQ[c*d^2+a*e^2,0] && EqQ[Simplify[m+2*p+3],0]


(* ::Code:: *)
Int[(e_.*x_)^m_*(f_+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  f*Int[(e*x)^m*(a+c*x^2)^p,x] + g/e*Int[(e*x)^(m+1)*(a+c*x^2)^p,x] /;
FreeQ[{a,c,e,f,g,p},x] && Not[RationalQ[m]] && Not[IGtQ[p,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^FracPart[p]*(a+b*x+c*x^2)^FracPart[p]/(a*d+c*e*x^3)^FracPart[p]*Int[(f+g*x)*(a*d+c*e*x^3)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && EqQ[m,p] && EqQ[b*d+a*e,0] && EqQ[c*d+b*e,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -(d+e*x)^(m+1)*(a+b*x+c*x^2)^p/(e^2*(m+1)*(m+2)*(c*d^2-b*d*e+a*e^2))*
    ((d*g-e*f*(m+2))*(c*d^2-b*d*e+a*e^2)-d*p*(2*c*d-b*e)*(e*f-d*g)-e*(g*(m+1)*(c*d^2-b*d*e+a*e^2)+p*(2*c*d-b*e)*(e*f-d*g))*x) - 
  p/(e^2*(m+1)*(m+2)*(c*d^2-b*d*e+a*e^2))*Int[(d+e*x)^(m+2)*(a+b*x+c*x^2)^(p-1)*
    Simp[2*a*c*e*(e*f-d*g)*(m+2)+b^2*e*(d*g*(p+1)-e*f*(m+p+2))+b*(a*e^2*g*(m+1)-c*d*(d*g*(2*p+1)-e*f*(m+2*p+2)))-
      c*(2*c*d*(d*g*(2*p+1)-e*f*(m+2*p+2))-e*(2*a*e*g*(m+1)-b*(d*g*(m-2*p)+e*f*(m+2*p+2))))*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && 
  GtQ[p,0] && LtQ[m,-2] && LtQ[m+2*p,0] && Not[ILtQ[m+2*p+3,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  -(d+e*x)^(m+1)*(a+c*x^2)^p/(e^2*(m+1)*(m+2)*(c*d^2+a*e^2))*
    ((d*g-e*f*(m+2))*(c*d^2+a*e^2)-2*c*d^2*p*(e*f-d*g)-e*(g*(m+1)*(c*d^2+a*e^2)+2*c*d*p*(e*f-d*g))*x) - 
  p/(e^2*(m+1)*(m+2)*(c*d^2+a*e^2))*Int[(d+e*x)^(m+2)*(a+c*x^2)^(p-1)*
    Simp[2*a*c*e*(e*f-d*g)*(m+2)-c*(2*c*d*(d*g*(2*p+1)-e*f*(m+2*p+2))-2*a*e^2*g*(m+1))*x,x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && 
  GtQ[p,0] && LtQ[m,-2] && LtQ[m+2*p,0] && Not[ILtQ[m+2*p+3,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(e*f*(m+2*p+2)-d*g*(2*p+1)+e*g*(m+1)*x)*(a+b*x+c*x^2)^p/(e^2*(m+1)*(m+2*p+2)) + 
  p/(e^2*(m+1)*(m+2*p+2))*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p-1)*
    Simp[g*(b*d+2*a*e+2*a*e*m+2*b*d*p)-f*b*e*(m+2*p+2)+(g*(2*c*d+b*e+b*e*m+4*c*d*p)-2*c*e*f*(m+2*p+2))*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && RationalQ[p] && p>0 && 
  (LtQ[m,-1] || EqQ[p,1] || IntegerQ[p] && Not[RationalQ[m]]) && NeQ[m,-1] && Not[ILtQ[m+2*p+1,0]] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(e*f*(m+2*p+2)-d*g*(2*p+1)+e*g*(m+1)*x)*(a+c*x^2)^p/(e^2*(m+1)*(m+2*p+2)) + 
  p/(e^2*(m+1)*(m+2*p+2))*Int[(d+e*x)^(m+1)*(a+c*x^2)^(p-1)*
    Simp[g*(2*a*e+2*a*e*m)+(g*(2*c*d+4*c*d*p)-2*c*e*f*(m+2*p+2))*x,x],x] /;
FreeQ[{a,c,d,e,f,g,m},x] && NeQ[c*d^2+a*e^2,0] && RationalQ[p] && p>0 && 
  (LtQ[m,-1] || EqQ[p,1] || IntegerQ[p] && Not[RationalQ[m]]) && NeQ[m,-1] && Not[ILtQ[m+2*p+1,0]] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(c*e*f*(m+2*p+2)-g*(c*d+2*c*d*p-b*e*p)+g*c*e*(m+2*p+1)*x)*(a+b*x+c*x^2)^p/
    (c*e^2*(m+2*p+1)*(m+2*p+2)) - 
  p/(c*e^2*(m+2*p+1)*(m+2*p+2))*Int[(d+e*x)^m*(a+b*x+c*x^2)^(p-1)*
    Simp[c*e*f*(b*d-2*a*e)*(m+2*p+2)+g*(a*e*(b*e-2*c*d*m+b*e*m)+b*d*(b*e*p-c*d-2*c*d*p))+
      (c*e*f*(2*c*d-b*e)*(m+2*p+2)+g*(b^2*e^2*(p+m+1)-2*c^2*d^2*(1+2*p)-c*e*(b*d*(m-2*p)+2*a*e*(m+2*p+1))))*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && 
  GtQ[p,0] && (IntegerQ[p] || Not[RationalQ[m]] || GeQ[m,-1] && LtQ[m,0]) && Not[ILtQ[m+2*p,0]] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m+1)*(c*e*f*(m+2*p+2)-g*c*d*(2*p+1)+g*c*e*(m+2*p+1)*x)*(a+c*x^2)^p/
    (c*e^2*(m+2*p+1)*(m+2*p+2)) + 
  2*p/(c*e^2*(m+2*p+1)*(m+2*p+2))*Int[(d+e*x)^m*(a+c*x^2)^(p-1)*
    Simp[f*a*c*e^2*(m+2*p+2)+a*c*d*e*g*m-(c^2*f*d*e*(m+2*p+2)-g*(c^2*d^2*(2*p+1)+a*c*e^2*(m+2*p+1)))*x,x],x] /;
FreeQ[{a,c,d,e,f,g,m},x] && NeQ[c*d^2+a*e^2,0] && 
  GtQ[p,0] && (IntegerQ[p] || Not[RationalQ[m]] || GeQ[m,-1] && LtQ[m,0]) && Not[ILtQ[m+2*p,0]] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  Int[(a+b*x+c*x^2)^p*ExpandIntegrand[(d+e*x)^m*(f+g*x),x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[p,-1] && IGtQ[m,0] && RationalQ[a,b,c,d,e,f,g]


(* ::Code:: *)
Int[(d_+e_.*x_)^m_*(f_+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  Int[(a+c*x^2)^p*ExpandIntegrand[(d+e*x)^m*(f+g*x),x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[p,-1] && IGtQ[m,0] && RationalQ[a,c,d,e,f,g]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  -(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)*(2*a*c*(e*f+d*g)-b*(c*d*f+a*e*g)-(2*c^2*d*f+b^2*e*g-c*(b*e*f+b*d*g+2*a*e*g))*x)/
    (c*(p+1)*(b^2-4*a*c)) - 
  1/(c*(p+1)*(b^2-4*a*c))*Int[(d+e*x)^(m-2)*(a+b*x+c*x^2)^(p+1)*
    Simp[2*c^2*d^2*f*(2*p+3)+b*e*g*(a*e*(m-1)+b*d*(p+2))-c*(2*a*e*(e*f*(m-1)+d*g*m)+b*d*(d*g*(2*p+3)-e*f*(m-2*p-4))) + 
      e*(b^2*e*g*(m+p+1)+2*c^2*d*f*(m+2*p+2)-c*(2*a*e*g*m+b*(e*f+d*g)*(m+2*p+2)))*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && GtQ[m,1] && 
  (EqQ[m,2] && EqQ[p,-3] && RationalQ[a,b,c,d,e,f,g] || Not[ILtQ[m+2*p+3,0]])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  (d+e*x)^(m-1)*(a+c*x^2)^(p+1)*(a*(e*f+d*g)-(c*d*f-a*e*g)*x)/(2*a*c*(p+1)) - 
  1/(2*a*c*(p+1))*Int[(d+e*x)^(m-2)*(a+c*x^2)^(p+1)*
    Simp[a*e*(e*f*(m-1)+d*g*m)-c*d^2*f*(2*p+3)+e*(a*e*g*m-c*d*f*(m+2*p+2))*x,x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && GtQ[m,1] && 
  (EqQ[d,0] || EqQ[m,2] && EqQ[p,-3] && RationalQ[a,c,d,e,f,g] || Not[ILtQ[m+2*p+3,0]])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(a+b*x+c*x^2)^(p+1)*(f*b-2*a*g+(2*c*f-b*g)*x)/((p+1)*(b^2-4*a*c)) + 
  1/((p+1)*(b^2-4*a*c))*Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^(p+1)*
    Simp[g*(2*a*e*m+b*d*(2*p+3))-f*(b*e*m+2*c*d*(2*p+3))-e*(2*c*f-b*g)*(m+2*p+3)*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && GtQ[m,0] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^m*(a+c*x^2)^(p+1)*(a*g-c*f*x)/(2*a*c*(p+1)) - 
  1/(2*a*c*(p+1))*Int[(d+e*x)^(m-1)*(a+c*x^2)^(p+1)*Simp[a*e*g*m-c*d*f*(2*p+3)-c*e*f*(m+2*p+3)*x,x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && GtQ[m,0] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_,x_Symbol] :=
  (d+e*x)^(m+1)*(f*(b*c*d-b^2*e+2*a*c*e)-a*g*(2*c*d-b*e)+c*(f*(2*c*d-b*e)-g*(b*d-2*a*e))*x)*(a+b*x+c*x^2)^(p+1)/
    ((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2)) + 
  1/((p+1)*(b^2-4*a*c)*(c*d^2-b*d*e+a*e^2))*Int[(d+e*x)^m*(a+b*x+c*x^2)^(p+1)*
    Simp[f*(b*c*d*e*(2*p-m+2)+b^2*e^2*(p+m+2)-2*c^2*d^2*(2*p+3)-2*a*c*e^2*(m+2*p+3))-
      g*(a*e*(b*e-2*c*d*m+b*e*m)-b*d*(3*c*d-b*e+2*c*d*p-b*e*p))+
      c*e*(g*(b*d-2*a*e)-f*(2*c*d-b*e))*(m+2*p+4)*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[p,-1] && (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_,x_Symbol] :=
  -(d+e*x)^(m+1)*(f*a*c*e-a*g*c*d+c*(c*d*f+a*e*g)*x)*(a+c*x^2)^(p+1)/(2*a*c*(p+1)*(c*d^2+a*e^2)) + 
  1/(2*a*c*(p+1)*(c*d^2+a*e^2))*Int[(d+e*x)^m*(a+c*x^2)^(p+1)*
    Simp[f*(c^2*d^2*(2*p+3)+a*c*e^2*(m+2*p+3))-a*c*d*e*g*m+c*e*(c*d*f+a*e*g)*(m+2*p+4)*x,x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && LtQ[p,-1] && (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  g*(d+e*x)^m/(c*m) + 
  1/c*Int[(d+e*x)^(m-1)*Simp[c*d*f-a*e*g+(g*c*d-b*e*g+c*e*f)*x,x]/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && FractionQ[m] && GtQ[m,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_+c_.*x_^2),x_Symbol] :=
  g*(d+e*x)^m/(c*m) + 
  1/c*Int[(d+e*x)^(m-1)*Simp[c*d*f-a*e*g+(g*c*d+c*e*f)*x,x]/(a+c*x^2),x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && FractionQ[m] && GtQ[m,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)/(Sqrt[d_.+e_.*x_]*(a_.+b_.*x_+c_.*x_^2)),x_Symbol] :=
  2*Subst[Int[(e*f-d*g+g*x^2)/(c*d^2-b*d*e+a*e^2-(2*c*d-b*e)*x^2+c*x^4),x],x,Sqrt[d+e*x]] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0]


(* ::Code:: *)
Int[(f_.+g_.*x_)/(Sqrt[d_.+e_.*x_]*(a_+c_.*x_^2)),x_Symbol] :=
  2*Subst[Int[(e*f-d*g+g*x^2)/(c*d^2+a*e^2-2*c*d*x^2+c*x^4),x],x,Sqrt[d+e*x]] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/(c*d^2-b*d*e+a*e^2)*Int[(d+e*x)^(m+1)*Simp[c*d*f-f*b*e+a*e*g-c*(e*f-d*g)*x,x]/(a+b*x+c*x^2),x] /;
FreeQ[{a,b,c,d,e,f,g,m},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && FractionQ[m] && LtQ[m,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_+c_.*x_^2),x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)/((m+1)*(c*d^2+a*e^2)) + 
  1/(c*d^2+a*e^2)*Int[(d+e*x)^(m+1)*Simp[c*d*f+a*e*g-c*(e*f-d*g)*x,x]/(a+c*x^2),x] /;
FreeQ[{a,c,d,e,f,g,m},x] && NeQ[c*d^2+a*e^2,0] && FractionQ[m] && LtQ[m,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_.+b_.*x_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m,(f+g*x)/(a+b*x+c*x^2),x],x] /;
FreeQ[{a,b,c,d,e,f,g},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[RationalQ[m]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)/(a_+c_.*x_^2),x_Symbol] :=
  Int[ExpandIntegrand[(d+e*x)^m,(f+g*x)/(a+c*x^2),x],x] /;
FreeQ[{a,c,d,e,f,g},x] && NeQ[c*d^2+a*e^2,0] && Not[RationalQ[m]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  g*(d+e*x)^m*(a+b*x+c*x^2)^(p+1)/(c*(m+2*p+2)) + 
  1/(c*(m+2*p+2))*Int[(d+e*x)^(m-1)*(a+b*x+c*x^2)^p*
    Simp[m*(c*d*f-a*e*g)+d*(2*c*f-b*g)*(p+1)+(m*(c*e*f+c*d*g-b*e*g)+e*(p+1)*(2*c*f-b*g))*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && GtQ[m,0] && NeQ[m+2*p+2,0] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p]) && Not[IGtQ[m,0] && EqQ[f,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  g*(d+e*x)^m*(a+c*x^2)^(p+1)/(c*(m+2*p+2)) + 
  1/(c*(m+2*p+2))*Int[(d+e*x)^(m-1)*(a+c*x^2)^p*
    Simp[c*d*f*(m+2*p+2)-a*e*g*m+c*(e*f*(m+2*p+2)+d*g*m)*x,x],x] /;
FreeQ[{a,c,d,e,f,g,p},x] && NeQ[c*d^2+a*e^2,0] && GtQ[m,0] && NeQ[m+2*p+2,0] && 
  (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p]) && Not[IGtQ[m,0] && EqQ[f,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/((m+1)*(c*d^2-b*d*e+a*e^2))*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p*
    Simp[(c*d*f-f*b*e+a*e*g)*(m+1)+b*(d*g-e*f)*(p+1)-c*(e*f-d*g)*(m+2*p+3)*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && LtQ[m,-1] && (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)*(a+c*x^2)^(p+1)/((m+1)*(c*d^2+a*e^2)) + 
  1/((m+1)*(c*d^2+a*e^2))*Int[(d+e*x)^(m+1)*(a+c*x^2)^p*Simp[(c*d*f+a*e*g)*(m+1)-c*(e*f-d*g)*(m+2*p+3)*x,x],x] /;
FreeQ[{a,c,d,e,f,g,p},x] && NeQ[c*d^2+a*e^2,0] && LtQ[m,-1] && (IntegerQ[m] || IntegerQ[p] || IntegersQ[2*m,2*p])


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)*(a+b*x+c*x^2)^(p+1)/((m+1)*(c*d^2-b*d*e+a*e^2)) + 
  1/((m+1)*(c*d^2-b*d*e+a*e^2))*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p*
    Simp[(c*d*f-f*b*e+a*e*g)*(m+1)+b*(d*g-e*f)*(p+1)-c*(e*f-d*g)*(m+2*p+3)*x,x],x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && ILtQ[Simplify[m+2*p+3],0] && NeQ[m,-1]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  (e*f-d*g)*(d+e*x)^(m+1)*(a+c*x^2)^(p+1)/((m+1)*(c*d^2+a*e^2)) + 
  1/((m+1)*(c*d^2+a*e^2))*Int[(d+e*x)^(m+1)*(a+c*x^2)^p*Simp[(c*d*f+a*e*g)*(m+1)-c*(e*f-d*g)*(m+2*p+3)*x,x],x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && NeQ[c*d^2+a*e^2,0] && ILtQ[Simplify[m+2*p+3],0] && NeQ[m,-1]


(* ::Code:: *)
Int[(f_+g_.*x_)/((d_.+e_.*x_)*Sqrt[a_.+b_.*x_+c_.*x_^2]),x_Symbol] :=
  4*f*(a-d)/(b*d-a*e)*Subst[Int[1/(4*(a-d)-x^2),x],x,(2*(a-d)+(b-e)*x)/Sqrt[a+b*x+c*x^2]] /;
FreeQ[{a,b,c,d,e,f,g},x] && EqQ[4*c*(a-d)-(b-e)^2,0] && EqQ[e*f*(b-e)-2*g*(b*d-a*e),0] && NeQ[b*d-a*e,0]


(* ::Code:: *)
Int[(f_+g_.*x_)/(Sqrt[x_]*Sqrt[a_+b_.*x_+c_.*x_^2]),x_Symbol] :=
  2*Subst[Int[(f+g*x^2)/Sqrt[a+b*x^2+c*x^4],x],x,Sqrt[x]] /;
FreeQ[{a,b,c,f,g},x] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(f_+g_.*x_)/(Sqrt[x_]*Sqrt[a_+c_.*x_^2]),x_Symbol] :=
  2*Subst[Int[(f+g*x^2)/Sqrt[a+c*x^4],x],x,Sqrt[x]] /;
FreeQ[{a,c,f,g},x]


(* ::Code:: *)
Int[(f_+g_.*x_)/(Sqrt[e_*x_]*Sqrt[a_+b_.*x_+c_.*x_^2]),x_Symbol] :=
  Sqrt[x]/Sqrt[e*x]*Int[(f+g*x)/(Sqrt[x]*Sqrt[a+b*x+c*x^2]),x] /;
FreeQ[{a,b,c,e,f,g},x] && NeQ[b^2-4*a*c,0]


(* ::Code:: *)
Int[(f_+g_.*x_)/(Sqrt[e_*x_]*Sqrt[a_+c_.*x_^2]),x_Symbol] :=
  Sqrt[x]/Sqrt[e*x]*Int[(f+g*x)/(Sqrt[x]*Sqrt[a+c*x^2]),x] /;
FreeQ[{a,c,e,f,g},x]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_.+b_.*x_+c_.*x_^2)^p_.,x_Symbol] :=
  g/e*Int[(d+e*x)^(m+1)*(a+b*x+c*x^2)^p,x] + (e*f-d*g)/e*Int[(d+e*x)^m*(a+b*x+c*x^2)^p,x] /;
FreeQ[{a,b,c,d,e,f,g,m,p},x] && NeQ[b^2-4*a*c,0] && NeQ[c*d^2-b*d*e+a*e^2,0] && Not[IGtQ[m,0]]


(* ::Code:: *)
Int[(d_.+e_.*x_)^m_*(f_.+g_.*x_)*(a_+c_.*x_^2)^p_.,x_Symbol] :=
  g/e*Int[(d+e*x)^(m+1)*(a+c*x^2)^p,x] + (e*f-d*g)/e*Int[(d+e*x)^m*(a+c*x^2)^p,x] /;
FreeQ[{a,c,d,e,f,g,m,p},x] && NeQ[c*d^2+a*e^2,0] && Not[IGtQ[m,0]]



