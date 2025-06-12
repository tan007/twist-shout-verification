-- OneHot/Encoding.lean
import Mathlib.Algebra.BigOperators
namespace TwistShout.OneHot
open BigOperators

variable {K : ℕ} {𝔽} [Field 𝔽]

/-- One‑hot predicate. -/
def oneHot (v : Fin K → 𝔽) : Prop :=
  (∑ i, v i = 1) ∧ ∀ i, (v i)^2 = v i

end TwistShout.OneHot
