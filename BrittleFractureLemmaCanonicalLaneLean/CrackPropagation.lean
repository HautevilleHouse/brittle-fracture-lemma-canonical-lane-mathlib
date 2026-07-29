import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackPropagationPackage {O : FractureObject} (S : StressFieldModelPackage O) where
  propagationCriterion : Prop
  criticalEnergyRelease : Prop
  fractureToughness : Prop
  crackGrowthDirection : Prop

structure CrackPropagationEvidence {O : FractureObject} {S : StressFieldModelPackage O} (P : CrackPropagationPackage S) where
  propagationCriterionClosed : P.propagationCriterion
  criticalEnergyReleaseClosed : P.criticalEnergyRelease
  fractureToughnessClosed : P.fractureToughness
  crackGrowthDirectionClosed : P.crackGrowthDirection

def CrackPropagationClosed {O : FractureObject} {S : StressFieldModelPackage O} (P : CrackPropagationPackage S) : Prop :=
  P.propagationCriterion ∧ P.criticalEnergyRelease ∧ P.fractureToughness ∧ P.crackGrowthDirection

theorem crack_propagation_closed_from_evidence {O : FractureObject} {S : StressFieldModelPackage O} (P : CrackPropagationPackage S) (E : CrackPropagationEvidence P) :
    CrackPropagationClosed P := by
  exact And.intro E.propagationCriterionClosed (And.intro E.criticalEnergyReleaseClosed (And.intro E.fractureToughnessClosed E.crackGrowthDirectionClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse