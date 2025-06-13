-- Twist/Increments.lean  
import Mathlib.Algebra.FieldPower

namespace TwistShout.Twist

variable {𝔽} [Field 𝔽]

/-- Core increment relation `Inc = wa * (wv - Val)`. -/
structure IncRelation :=
  (K T : ℕ)
  (wa wv Val Inc : Fin K → Fin T → 𝔽)
  (h_eq : ∀ k j, Inc k j = wa k j * (wv k j - Val k j))

end TwistShout.Twist

