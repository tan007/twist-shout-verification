# Twist & Shout Formal Verification Work Plan

| ID | Sub‑task (Lean component) | What must be produced & accepted | Direct prerequisites | Unblocks |
|----|---------------------------|----------------------------------|----------------------|-----------|
| **F‑1** | **Basic algebra kernels**  (`Basics/Field`, `BitVector`, `MLE`, `EqualityFunc`) | – typeclasses<br>– helper lemmas tested by `#eval`/`#check`<br>– CI target `Basics.all` green | none | S‑1, O‑1 |
| **S‑1** | **Generic Sum‑check library** (`SumCheck/Protocol`, `Completeness`, `Soundness`) | – inductive transcript defs<br>– theorems `sumcheck_complete`, `sumcheck_sound` proved up to `sorry`‑free | F‑1 | O‑1, SH‑1, TW‑2 |
| **O‑1** | **One‑hot encoding PIOP** (`OneHot/Encoding`, `BooleanityPIOP`, `OneHotSound`) | – predicates & checks compile<br>– lemma `oneHot_piop_sound` formalised | F‑1, S‑1 | SH‑1 |
| **TW‑1** | **Increment calculus** (`Twist/Increments`) | – definitions of `Inc`, equation (9) ⟶ Lean<br>– reconstruction lemma eq. (11) | F‑1 | TW‑2 |
| **SH‑1** | **Shout core PIOP d = 1** (`Shout/Core`, `OneHotCheck`, `SoundnessD1`) | – protocol of Fig. 5<br>– theorem 1 soundness bound proven | F‑1, S‑1, O‑1 | SH‑2 |
| **SH‑2** | **Shout general d & table variants** (`SoundnessD`, `LargeTableVariant`) | – protocol of Fig. 7 & Theorem 3<br>– sparse‑dense variant (Theorem 7) | SH‑1 | INT‑1 |
| **TW‑2** | **Twist core PIOP** (`Twist/Core`, `ReadCheck`, `WriteCheck`) | – read‑/write‑check sum‑checks<br>– local‑access optimisation lemmas | TW‑1, S‑1 | TW‑3 |
| **TW‑3** | **Twist soundness theorem** (`Twist/Soundness`) | – full proof of Theorem 4 using Sum‑check, One‑hot and Increment lemmas | TW‑2, O‑1, S‑1 | INT‑1 |
| **COM‑1** | **Polynomial‑commit interface + Pedersen instance** (`Commit/Interface`, `EllipticPedersen`) | – class `PolynomialCommit` + proof‑of‑evaluation axiom<br>– concrete curve instantiation passes test vectors | none | INT‑1 |
| **INT‑1** | **Integration layer** (`Integration/JoltGlue`, `MainTheorem`) | – glue code tying Twist & Shout to Jolt states<br>– top‑level theorem `twist_shout_overall_sound` closed (no `sorry`) | SH‑2, TW‑3, COM‑1 | **Project complete** |
