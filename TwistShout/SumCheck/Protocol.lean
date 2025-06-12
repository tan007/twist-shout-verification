-- SumCheck/Protocol.lean
import Mathlib.Tactic
namespace TwistShout.SumCheck

/-- Abstract transcript type (placeholder). -/
inductive Transcript | nil | cons : ℕ → Transcript → Transcript

end TwistShout.SumCheck
