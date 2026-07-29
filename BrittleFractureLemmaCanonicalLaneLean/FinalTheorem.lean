import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

def ConstrainedFractureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fracture_endgame (A : AdmissibleClass) :
    ConstrainedFractureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse