import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FractureSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FractureAdmittedObject where
  space : FractureSpace
  crackGeometry : Prop
  stressField : Prop
  fractureCriterion : Prop
  conclusion : fractureCriterion

structure FractureEndgameState where
  object : FractureAdmittedObject

def FractureWitnessClosed (O : FractureAdmittedObject) : Prop :=
  O.fractureCriterion

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse