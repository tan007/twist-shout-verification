-- Basics/MLE.lean
import Mathlib.Data.Fin.Basic
namespace TwistShout.Basics

variable {n : ℕ} {𝔽} [Field 𝔽]

/-- Multilinear extension skeleton. -/
def mle (f : Fin n → Bool) : 𝔽 := 0

end TwistShout.Basics
