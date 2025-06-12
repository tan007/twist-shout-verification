-- Commit/EllipticPedersen.lean
import TwistShout.Commit.Interface
namespace TwistShout.Commit

variable {𝔽 : Type} [Field 𝔽]

/-- Placeholder instance (to be implemented). -/
instance : PolynomialCommit 𝔽 (Unit) where
  commit      := fun _ => ()
  verify_eval := fun _ _ _ => True
  sound       := True

end TwistShout.Commit
