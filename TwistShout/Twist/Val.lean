-- Twist/Val.lean  
import TwistShout.Basics.LessThan
import TwistShout.Twist.Increments
import Mathlib.Algebra.BigOperators

namespace TwistShout.Twist
open BigOperators Basics

variable {𝔽} [Field 𝔽]

/-- `Val k j = Σ_{j'<j} Inc k j'`  using the `LT` extension. -/
def ValFromInc
    (K T : ℕ) (Inc : Fin K → Fin T → 𝔽) :
    Fin K → Fin T → 𝔽 :=
  fun k j ↦
    ∑ j' : Fin T, (Inc k j') * (if j'.val < j.val then 1 else 0)

end TwistShout.Twist
