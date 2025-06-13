-- Integration/MemoryModel.lean  
import Mathlib.Data.Vector
import TwistShout.Twist.Increments

namespace TwistShout.Integration

variable {𝔽} [Field 𝔽]

/-- Trace vectors sent by a Jolt prover. -/
structure Trace (K T : ℕ) :=
  (raf waf : Vector 𝔽 T)        -- read / write addresses
  (rv wv  : Vector 𝔽 T)         -- read / write values

/-- Correct‑memory predicate: every read returns last written value or 0. -/
def goodMemory {K T} (tr : Trace (K:=K) (T:=T)) : Prop :=
  ∀ j < T,
    let addr := tr.raf.get ⟨j, ‹_›⟩
    let lastWrite? : Option ℕ :=
      (List.range j).reverse.find? (fun j' ↦
        tr.waf.get ⟨j', by
          have : j' < T := by
            have h1 : j' < j := by
              exact List.mem_range.mp (List.mem_range_reverse_find? _)
            exact Nat.lt_trans h1 ‹j < T›
          exact this
      = addr)
    (tr.rv.get ⟨j, ‹_›⟩) =
      match lastWrite? with
      | none     => 0
      | some j'  => tr.wv.get ⟨j', by
            have : j' < T := (List.mem_range.mp (List.mem_range_reverse_find? _))
            exact this⟩

end TwistShout.Integration
