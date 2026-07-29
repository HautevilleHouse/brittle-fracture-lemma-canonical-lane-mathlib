import canonicalLaneMathlib.AdmissibleClass
import BrittleFractureLemmaCanonicalLaneLean.BrittleFractureEnergy
import BrittleFractureLemmaCanonicalLaneLean.CrackPathTopology
import BrittleFractureLemmaCanonicalLaneLean.GriffithCriterion
import BrittleFractureLemmaCanonicalLaneLean.VariationalInequality

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

def ConstrainedBrittleFractureClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_brittle_fracture_endgame (A : AdmissibleClass) :
    ConstrainedBrittleFractureClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse