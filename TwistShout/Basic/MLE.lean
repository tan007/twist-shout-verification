-- Basics/MLE.lean 
import Mathlib.Data.Fin.Basic
import TwistShout.Basics.EqualityFunc

namespace TwistShout.Basics
open BigOperators

variable {n : ℕ} {𝔽} [Field 𝔽]

/-- Generic multilinear extension: `mle f x = ∑_{y∈{0,1}ⁿ} f y • eqₑ(y,x)` -/
def mle (f : (Fin n → Bool) → 𝔽) (x : Fin n → 𝔽) : 𝔽 :=
  ∑ y : (Fin n → Bool), f y * eqe (fun i ↦ if y i then 1 else 0) x

end TwistShout.Basics
