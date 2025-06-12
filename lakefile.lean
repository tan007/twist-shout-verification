import Lake
open Lake DSL

package jolt where
  -- This package contains Lean 4 implementations of Twist and Shout subprotocol
  srcDir := "."

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.21.0-rc3"

require Arklib from git
  "https://github.com/Verified-zkEVM/ArkLib.git" @ "v4.21.0-rc3"

@[default_target]
lean_lib JoltVerification where
  -- add library configuration options here
  roots := #[
    'TwistShout.Basic.BitVector.lean,
    'TwistShout.Basic.EqualityFunc.lean,
    'TwistShout.Basic.Field,
    'TwistShout.Basic.MLE,
    'TwistShout.Commit.EllipticPedersen,
    'TwistShout.Commit.Interface,
    'TwistShout.OneHot.BooleanityPIOP,
    'TwistShout.OneHot.Encoding,
    'TwistShout.OneHot.OneHotSound,
    'TwistShout.Shout.core,
    'TwistShout.Shout.LargeTablevariant,
    'TwistShout.Shout.OneHotCheck,
    'TwistShout.Shout.SoundnessD1,
    'TwistShout.Shout.SoundnessD,
    'TwistShout.Twist.Core,
    'TwistShout.Twist.Increments,
    'TwistShout.Twist.ReadCheck,
    'TwistShout.Twist.WriteCheck,
    'TwistShout.Twist.Soundness,
    'TwistShout.SumCheck.Protocol,
    'TwistShout.SumCheck.Soundness,
    'TwistShout.SumCheck.Completeness,
    'TwistShout.Integration.JoltGlue,
    'TwistShout.Integration.MainTheorem
  ]
