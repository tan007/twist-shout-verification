-- Commit/Interface.lean
import Mathlib.Algebra.Polynomial
import Mathlib.Tactic

namespace TwistShout.Commit
open scoped Polynomial

variable (𝔽 : Type) [Field 𝔽]

/-- Interface matching Definition 3.2 (extractable polynomial commitment). -/
class PolynomialCommit (α : Type) where
  gen    : ℕ → IO α                 -- simplified: gen(ℓ)
  commit : (n : ℕ) → (Poly : MVPolynomial (Fin n) 𝔽) → α
  -- proof object type
  eval_proof : Type
  -- verifier for an evaluation claim g(r)=v
  verify_eval :
    {n : ℕ} →
    (C : α) → (r : Fin n → 𝔽) → (v : 𝔽) →
    eval_proof → Prop
  sound :
    ∀ {n g r v π},
      verify_eval (C := commit n g) r v π →
      v = (g.eval fun i ↦ r i)

end TwistShout.Commit
