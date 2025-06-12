-- Basics/Field.lean
import Mathlib.Algebra.Field
namespace TwistShout.Basics

/-- A placeholder wrapper for the prime field used throughout the project. -/
variable (𝔽 : Type) [Field 𝔽]

/-- Convenience lemma: additive commutativity (stub). -/
lemma add_comm' {a b : 𝔽} : a + b = b + a := by
  simpa using add_comm a b

end TwistShout.Basics
