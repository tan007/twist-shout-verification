-- OneHot/Encoding.lean
import TwistShout.Basics.EqualityFunc
import Mathlib.Algebra.BigOperators

namespace TwistShout.OneHot
open BigOperators

variable {K : ℕ} {𝔽} [Field 𝔽]

/-- One‑hot predicate used throughout Shout. -/
def oneHot (v : Fin K → 𝔽) : Prop :=
  (∑ i, v i = 1) ∧ (∀ i, (v i) ^ 2 = v i)

/-- Direct multilinear encoding `oneHotₑ` (sum‑product form). -/
def oneHotE (v : Fin K → 𝔽) : 𝔽 :=
  (∑ i, v i) - 1 + ∑ i, (v i) ^ 2 - v i   -- zero ⇔ v is one‑hot

end TwistShout.OneHot

