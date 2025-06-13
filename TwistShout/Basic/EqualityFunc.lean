-- Basics/EqualityFunc.lean
import Mathlib.Data.Fin.Basic
import Mathlib.Algebra.BigOperators

namespace TwistShout.Basics
open BigOperators

variable {s : ℕ} {𝔽 : Type} [Field 𝔽]

/-- Multilinear extension of equality  
`eqₑ (x, e) = ∏ᵢ (xᵢ * eᵢ + (1‑xᵢ)(1‑eᵢ))`. -/
def eqe (x e : Fin s → 𝔽) : 𝔽 :=
  ∏ i, (x i * e i + (1 - x i) * (1 - e i))

end TwistShout.Basics
