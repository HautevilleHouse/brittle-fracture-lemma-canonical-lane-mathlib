import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.FractureMathlibObjects

/-!
# Stress Intensity Package
-/

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure StressIntensityPackage (O : FractureAdmittedObject) where
  stressIntensityFactor : Prop
  fractureToughness : Prop
  crackGrowthCriterion : Prop
  criticalStressLevel : Prop

structure StressIntensityEvidence {O : FractureAdmittedObject} (S : StressIntensityPackage O) where
  stressIntensityFactorClosed : S.stressIntensityFactor
  fractureToughnessClosed : S.fractureToughness
  crackGrowthCriterionClosed : S.crackGrowthCriterion
  criticalStressLevelClosed : S.criticalStressLevel

def StressIntensityClosed {O : FractureAdmittedObject} (S : StressIntensityPackage O) : Prop :=
  S.stressIntensityFactor ∧ S.fractureToughness ∧ S.crackGrowthCriterion ∧ S.criticalStressLevel

theorem stress_intensity_closed_from_evidence
    {O : FractureAdmittedObject} (S : StressIntensityPackage O) (E : StressIntensityEvidence S) :
    StressIntensityClosed S := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.crackGrowthCriterionClosed E.criticalStressLevelClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse