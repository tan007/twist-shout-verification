-- Basics/BitVector.lean 
import Mathlib.Data.Fin.Tuple
import Mathlib.Data.Nat.Bitwise

namespace TwistShout.Basics

/-- Boolean vector of length `n`. -/
abbrev BitVec (n : ℕ) := Fin n → Bool

/-- Interpret a little‑endian bit‑vector as a natural number. -/
def bitvecToNat {n} (v : BitVec n) : ℕ :=
  Fin.fold (fun acc i ↦ acc + if v i then (1 <<< i) else 0) 0

end TwistShout.Basics

