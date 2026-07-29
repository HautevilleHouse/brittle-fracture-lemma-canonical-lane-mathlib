import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.FractureAdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FractureWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse