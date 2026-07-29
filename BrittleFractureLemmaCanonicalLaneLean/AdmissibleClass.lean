import BrittleFractureLemmaCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure AdmissibleClass where
  object : BrittleFractureAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  BrittleFractureWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
