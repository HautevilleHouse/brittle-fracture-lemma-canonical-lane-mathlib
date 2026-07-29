import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.EnergyReleaseRate

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure BrittleFractureCriterionPackage {G : CrackGeometryPackage} {F : FractureEnergyPackage G} {E : EnergyReleaseRatePackage G F} where
  criticalRate : ℝ
  griffithCriterion : ∀ a, E.derivativeWrtCrackLength a ≥ criticalRate
  fractureOccurs : Prop
  criterionConclusion : fractureOccurs ↔ ∀ a, griffithCriterion a

structure BrittleFractureCriterionEvidence {G : CrackGeometryPackage} {F : FractureEnergyPackage G} {E : EnergyReleaseRatePackage G F} (C : BrittleFractureCriterionPackage G F E) where
  criticalRateClosed : C.criticalRate > 0
  griffithCriterionClosed : ∀ a, C.griffithCriterion a
  fractureOccursClosed : C.fractureOccurs
  criterionConclusionClosed : C.criterionConclusion

def BrittleFractureCriterionClosed {G : CrackGeometryPackage} {F : FractureEnergyPackage G} {E : EnergyReleaseRatePackage G F} (C : BrittleFractureCriterionPackage G F E) : Prop :=
  C.criticalRate > 0 ∧ (∀ a, C.griffithCriterion a) ∧ C.fractureOccurs ∧ C.criterionConclusion

theorem brittle_fracture_criterion_closed_from_evidence {G : CrackGeometryPackage} {F : FractureEnergyPackage G} {E : EnergyReleaseRatePackage G F} (C : BrittleFractureCriterionPackage G F E) (Ev : BrittleFractureCriterionEvidence C) : BrittleFractureCriterionClosed C :=
  And.intro Ev.criticalRateClosed (And.intro Ev.griffithCriterionClosed (And.intro Ev.fractureOccursClosed Ev.criterionConclusionClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
