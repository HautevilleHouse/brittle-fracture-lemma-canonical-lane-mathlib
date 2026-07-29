import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure FractureToughnessPackage where
  materialConstant : ℝ
  criticalStressIntensity : ℝ
  toughnessBound : Prop
  temperatureDependence : ℝ → ℝ

structure FractureToughnessEvidence (F : FractureToughnessPackage) where
  toughnessBoundValid : F.toughnessBound
  temperatureDependenceValid : ∀ T : ℝ, F.temperatureDependence T > 0

def FractureToughnessClosed (F : FractureToughnessPackage) : Prop :=
  F.toughnessBound ∧ ∀ T : ℝ, F.temperatureDependence T > 0

theorem fracture_toughness_closed_from_evidence (F : FractureToughnessPackage) (E : FractureToughnessEvidence F) :
    FractureToughnessClosed F := by
  exact And.intro E.toughnessBoundValid E.temperatureDependenceValid

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
