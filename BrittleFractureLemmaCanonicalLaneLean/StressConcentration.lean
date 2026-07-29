import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure StressConcentrationPackage where
  stressField : Type u
  singularityOrder : Prop
  stressIntensityFactor : Prop
  asymptoticField : Prop
  concentrationZone : Prop

structure StressConcentrationEvidence (S : StressConcentrationPackage) where
  singularityOrderClosed : S.singularityOrder
  stressIntensityFactorClosed : S.stressIntensityFactor
  asymptoticFieldClosed : S.asymptoticField
  concentrationZoneClosed : S.concentrationZone

def StressConcentrationClosed (S : StressConcentrationPackage) : Prop :=
  S.singularityOrder ∧ S.stressIntensityFactor ∧ S.asymptoticField ∧ S.concentrationZone

theorem stress_concentration_closed_from_evidence
    (S : StressConcentrationPackage) (E : StressConcentrationEvidence S) :
    StressConcentrationClosed S := by
  exact And.intro E.singularityOrderClosed
    (And.intro E.stressIntensityFactorClosed
      (And.intro E.asymptoticFieldClosed E.concentrationZoneClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
