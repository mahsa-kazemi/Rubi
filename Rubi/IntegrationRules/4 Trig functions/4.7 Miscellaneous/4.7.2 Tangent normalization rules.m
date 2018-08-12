
(* ::Section:: *)
(* 4.7.2 Tangent normalization rules *)

(* ::Subsection::Closed:: *)
(* 4.7.2 Tangent normalization rules *)
Int[(u_)*((c_.)*cot[(a_.) + (b_.)*(x_)])^(m_.)*((d_.)*tan[(a_.) + (b_.)*(x_)])^(n_.), x_Symbol] := (c*Cot[a + b*x])^m*(d*Tan[a + b*x])^m*Int[ActivateTrig[u]*(d*Tan[a + b*x])^(n - m), x] /; FreeQ[{a, b, c, d, m, n}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((c_.)*tan[(a_.) + (b_.)*(x_)])^(m_.)*((d_.)*cos[(a_.) + (b_.)*(x_)])^(n_.), x_Symbol] := (c*Tan[a + b*x])^m*((d*Cos[a + b*x])^m/(d*Sin[a + b*x])^m)*Int[ActivateTrig[u]*((d*Sin[a + b*x])^m/(d*Cos[a + b*x])^(m - n)), x] /; FreeQ[{a, b, c, d, m, n}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((c_.)*cot[(a_.) + (b_.)*(x_)])^(m_.), x_Symbol] := (c*Cot[a + b*x])^m*(c*Tan[a + b*x])^m*Int[ActivateTrig[u]/(c*Tan[a + b*x])^m, x] /; FreeQ[{a, b, c, m}, x] &&  !IntegerQ[m] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((c_.)*tan[(a_.) + (b_.)*(x_)])^(m_.), x_Symbol] := (c*Cot[a + b*x])^m*(c*Tan[a + b*x])^m*Int[ActivateTrig[u]/(c*Cot[a + b*x])^m, x] /; FreeQ[{a, b, c, m}, x] &&  !IntegerQ[m] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((c_.)*tan[(a_.) + (b_.)*(x_)])^(n_.)*((A_) + (B_.)*cot[(a_.) + (b_.)*(x_)]), x_Symbol] := c*Int[ActivateTrig[u]*(c*Tan[a + b*x])^(n - 1)*(B + A*Tan[a + b*x]), x] /; FreeQ[{a, b, c, A, B, n}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((c_.)*cot[(a_.) + (b_.)*(x_)])^(n_.)*((A_) + (B_.)*tan[(a_.) + (b_.)*(x_)]), x_Symbol] := c*Int[ActivateTrig[u]*(c*Cot[a + b*x])^(n - 1)*(B + A*Cot[a + b*x]), x] /; FreeQ[{a, b, c, A, B, n}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((A_) + (B_.)*cot[(a_.) + (b_.)*(x_)]), x_Symbol] := Int[ActivateTrig[u]*((B + A*Tan[a + b*x])/Tan[a + b*x]), x] /; FreeQ[{a, b, A, B}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((A_) + (B_.)*tan[(a_.) + (b_.)*(x_)]), x_Symbol] := Int[ActivateTrig[u]*((B + A*Cot[a + b*x])/Cot[a + b*x]), x] /; FreeQ[{a, b, A, B}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_.)*((c_.)*tan[(a_.) + (b_.)*(x_)])^(n_.)*((A_.) + (B_.)*cot[(a_.) + (b_.)*(x_)] + (C_.)*cot[(a_.) + (b_.)*(x_)]^2), x_Symbol] := c^2*Int[ActivateTrig[u]*(c*Tan[a + b*x])^(n - 2)*(C + B*Tan[a + b*x] + A*Tan[a + b*x]^2), x] /; FreeQ[{a, b, c, A, B, C, n}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_.)*((c_.)*cot[(a_.) + (b_.)*(x_)])^(n_.)*((A_.) + (B_.)*tan[(a_.) + (b_.)*(x_)] + (C_.)*tan[(a_.) + (b_.)*(x_)]^2), x_Symbol] := c^2*Int[ActivateTrig[u]*(c*Cot[a + b*x])^(n - 2)*(C + B*Cot[a + b*x] + A*Cot[a + b*x]^2), x] /; FreeQ[{a, b, c, A, B, C, n}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_.)*((c_.)*tan[(a_.) + (b_.)*(x_)])^(n_.)*((A_) + (C_.)*cot[(a_.) + (b_.)*(x_)]^2), x_Symbol] := c^2*Int[ActivateTrig[u]*(c*Tan[a + b*x])^(n - 2)*(C + A*Tan[a + b*x]^2), x] /; FreeQ[{a, b, c, A, C, n}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_.)*((c_.)*cot[(a_.) + (b_.)*(x_)])^(n_.)*((A_) + (C_.)*tan[(a_.) + (b_.)*(x_)]^2), x_Symbol] := c^2*Int[ActivateTrig[u]*(c*Cot[a + b*x])^(n - 2)*(C + A*Cot[a + b*x]^2), x] /; FreeQ[{a, b, c, A, C, n}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((A_.) + (B_.)*cot[(a_.) + (b_.)*(x_)] + (C_.)*cot[(a_.) + (b_.)*(x_)]^2), x_Symbol] := Int[ActivateTrig[u]*((C + B*Tan[a + b*x] + A*Tan[a + b*x]^2)/Tan[a + b*x]^2), x] /; FreeQ[{a, b, A, B, C}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((A_.) + (B_.)*tan[(a_.) + (b_.)*(x_)] + (C_.)*tan[(a_.) + (b_.)*(x_)]^2), x_Symbol] := Int[ActivateTrig[u]*((C + B*Cot[a + b*x] + A*Cot[a + b*x]^2)/Cot[a + b*x]^2), x] /; FreeQ[{a, b, A, B, C}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((A_) + (C_.)*cot[(a_.) + (b_.)*(x_)]^2), x_Symbol] := Int[ActivateTrig[u]*((C + A*Tan[a + b*x]^2)/Tan[a + b*x]^2), x] /; FreeQ[{a, b, A, C}, x] && KnownTangentIntegrandQ[u, x]
Int[(u_)*((A_) + (C_.)*tan[(a_.) + (b_.)*(x_)]^2), x_Symbol] := Int[ActivateTrig[u]*((C + A*Cot[a + b*x]^2)/Cot[a + b*x]^2), x] /; FreeQ[{a, b, A, C}, x] && KnownCotangentIntegrandQ[u, x]
Int[(u_)*((A_.) + (B_.)*tan[(a_.) + (b_.)*(x_)] + (C_.)*cot[(a_.) + (b_.)*(x_)]), x_Symbol] := Int[ActivateTrig[u]*((C + A*Tan[a + b*x] + B*Tan[a + b*x]^2)/Tan[a + b*x]), x] /; FreeQ[{a, b, A, B, C}, x]
Int[(u_)*((A_.)*tan[(a_.) + (b_.)*(x_)]^(n_.) + (B_.)*tan[(a_.) + (b_.)*(x_)]^(n1_) + (C_.)*tan[(a_.) + (b_.)*(x_)]^(n2_)), x_Symbol] := Int[ActivateTrig[u]*Tan[a + b*x]^n*(A + B*Tan[a + b*x] + C*Tan[a + b*x]^2), x] /; FreeQ[{a, b, A, B, C, n}, x] && EqQ[n1, n + 1] && EqQ[n2, n + 2]
Int[(u_)*((A_.)*cot[(a_.) + (b_.)*(x_)]^(n_.) + (B_.)*cot[(a_.) + (b_.)*(x_)]^(n1_) + (C_.)*cot[(a_.) + (b_.)*(x_)]^(n2_)), x_Symbol] := Int[ActivateTrig[u]*Cot[a + b*x]^n*(A + B*Cot[a + b*x] + C*Cot[a + b*x]^2), x] /; FreeQ[{a, b, A, B, C, n}, x] && EqQ[n1, n + 1] && EqQ[n2, n + 2]