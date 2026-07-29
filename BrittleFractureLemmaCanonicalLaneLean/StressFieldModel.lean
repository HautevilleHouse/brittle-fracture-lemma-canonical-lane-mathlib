import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure StressFieldModelPackage (O : FractureObject) where
  crackTipStress : Prop
  stressIntensityFactorComputed : Prop
  asymptoticField : Prop
  energyReleaseRate : Prop

structure StressFieldModelEvidence {O : FractureObject} (P : StressFieldModelPackage O) where
  crackTipStressClosed : P.crackTipStress
  stressIntensityFactorComputedClosed : P.stressIntensityFactorComputed
  asymptoticFieldClosed : P.asymptoticField
  energyReleaseRateClosed : P.energyReleaseRate

def StressFieldModelClosed {O : FractureObject} (P : StressFieldModelPackage O) : Prop :=
  P.crackTipStress ∧ P.stressIntensityFactorComputed ∧ P.asymptoticField ∧ P.energyReleaseRate

theorem stress_field_model_closed_from_evidence {O : FractureObject} (P : StressFieldModelPackage O) (E : StressFieldModelEvidence P) :
    StressFieldModelClosed P := by
  exact And.intro E.crackTipStressClosed (And.intro E.stressIntensityFactorComputedClosed (And.intro E.asymptoticFieldClosed E.energyReleaseRateClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse