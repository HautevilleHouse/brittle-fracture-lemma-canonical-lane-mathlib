import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureAdmittedObject where
  domain : Type u
  crackSet : Set domain
  stressField : domain → ℝ
  admissibleCrack : Prop
  energyFinite : Prop
  conclusion : admissibleCrack ∧ energyFinite

structure AdmissibleClass where
  object : FractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse