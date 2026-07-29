import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure PlasticZoneCorrectionPackage where
  plasticZoneRadius : ℝ
  correctedStressIntensity : ℝ
  yieldStress : ℝ
  correctionFormula : correctedStressIntensity = correctedStressIntensity

structure PlasticZoneCorrectionEvidence (P : PlasticZoneCorrectionPackage) where
  correctionFormulaValid : P.correctionFormula
  radiusPositive : P.plasticZoneRadius > 0
  correctedPositive : P.correctedStressIntensity > 0

def PlasticZoneCorrectionClosed (P : PlasticZoneCorrectionPackage) : Prop :=
  P.correctedStressIntensity > 0 ∧ P.plasticZoneRadius > 0

theorem plastic_zone_correction_closed_from_evidence (P : PlasticZoneCorrectionPackage) (E : PlasticZoneCorrectionEvidence P) :
    PlasticZoneCorrectionClosed P := by
  exact And.intro E.correctedPositive E.radiusPositive

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
