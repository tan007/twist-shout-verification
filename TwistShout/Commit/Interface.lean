-- Commit/Interface.lean
import Mathlib.Algebra.Polynomial.Basic
namespace TwistShout.Commit

variable (𝔽 α : Type) [Field 𝔽]

/-- Skeleton of a polynomial‑commitment interface. -/
class PolynomialCommit where
  commit      : Polynomial 𝔽 → α
  verify_eval : α → 𝔽 → 𝔽 → Prop
  sound       : Prop

end TwistShout.Commit
