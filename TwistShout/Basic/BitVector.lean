-- Basics/BitVector.lean
import Mathlib.Data.Vector
namespace TwistShout.Basics

def BitVec (n : ℕ) := Vector Bool n

/-- Little‑endian to nat (stub). -/
def le2nat {n} : BitVec n → ℕ := fun _ => 0

end TwistShout.Basics
