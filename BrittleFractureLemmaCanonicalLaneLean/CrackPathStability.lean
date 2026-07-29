import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackPathStabilityPackage where
  crackTipPath : ℝ → ℝ^2
  stabilityCondition : Prop
  perturbationResponse : Prop
  maximalDissipation : Prop
  directionalStability : Prop

structure CrackPathStabilityEvidence (P : CrackPathStabilityPackage) where
  stabilityConditionClosed : P.stabilityCondition
  perturbationResponseClosed : P.perturbationResponse
  maximalDissipationClosed : P.maximalDissipation
  directionalStabilityClosed : P.directionalStability

def CrackPathStabilityClosed (P : CrackPathStabilityPackage) : Prop :=
  P.stabilityCondition ∧ P.perturbationResponse ∧
  P.maximalDissipation ∧ P.directionalStability

theorem crack_path_stability_closed (P : CrackPathStabilityPackage) (E : CrackPathStabilityEvidence P) :
    CrackPathStabilityClosed P := by
  exact And.intro E.stabilityConditionClosed
    (And.intro E.perturbationResponseClosed
      (And.intro E.maximalDissipationClosed E.directionalStabilityClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse