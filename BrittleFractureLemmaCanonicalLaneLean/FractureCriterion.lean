import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureCriterionPackage where
  criticalStressIntensity : Prop
  criticalEnergyReleaseRate : Prop
  toughnessParameter : Prop
  modeSeparation : Prop
  crackGrowthCondition : Prop

structure FractureCriterionEvidence (F : FractureCriterionPackage) where
  criticalStressIntensityClosed : F.criticalStressIntensity
  criticalEnergyReleaseRateClosed : F.criticalEnergyReleaseRate
  toughnessParameterClosed : F.toughnessParameter
  modeSeparationClosed : F.modeSeparation
  crackGrowthConditionClosed : F.crackGrowthCondition

def FractureCriterionClosed (F : FractureCriterionPackage) : Prop :=
  F.criticalStressIntensity ∧ F.criticalEnergyReleaseRate ∧ F.toughnessParameter ∧ F.modeSeparation ∧ F.crackGrowthCondition

theorem fracture_criterion_closed_from_evidence
    (F : FractureCriterionPackage) (E : FractureCriterionEvidence F) :
    FractureCriterionClosed F := by
  exact And.intro E.criticalStressIntensityClosed
    (And.intro E.criticalEnergyReleaseRateClosed
      (And.intro E.toughnessParameterClosed
        (And.intro E.modeSeparationClosed E.crackGrowthConditionClosed)))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
