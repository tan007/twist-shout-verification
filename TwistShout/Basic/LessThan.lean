-- Basics/LessThan.lean 
import TwistShout.Basics.BitVector
import Mathlib.Algebra.BigOperators

namespace TwistShout.Basics
open BigOperators

variable {ℓ : ℕ} {𝔽} [Field 𝔽]

/-- Boolean less‑than on {0,1}ᶫ seen as binary integers. -/
def ltBool (j' j : BitVec ℓ) : Bool :=
  bitvecToNat j' < bitvecToNat j

/-- Multilinear extension of the less‑than function.  
We use the standard Lagrange interpolation identity  
`LTₑ(j',j) = ∑_{y∈{0,1}ᶫ} eqₑ(y,j') · 𝟙[int y < int j]`. -/
def LT (j' j : Fin ℓ → 𝔽) : 𝔽 :=
  ∑ y : (Fin ℓ → Bool), by
    let yF : Fin ℓ → 𝔽 := fun i ↦ if y i then 1 else 0
    exact if ltBool y y then eqe yF j' else 0

-- TODO: prove evaluation cost O(ℓ) as in the paper.

end TwistShout.Basics
