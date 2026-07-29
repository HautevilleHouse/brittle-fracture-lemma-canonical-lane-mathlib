import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure BrittleFractureTestPackage where
  material : Type u
  crackGeometry : Type v
  stressField : Type w
  toughnessParameter : Type x
  energyReleaseRate : Type y
  modeIStressIntensity : Prop
  modeIIToughnessAdmissible : Prop
  fractureCriterionMet : Prop
  crackPathStable : Prop

structure BrittleFractureTestEvidence (P : BrittleFractureTestPackage) where
  modeIStressIntensityClosed : P.modeIStressIntensity
  modeIIToughnessAdmissibleClosed : P.modeIIToughnessAdmissible
  fractureCriterionMetClosed : P.fractureCriterionMet
  crackPathStableClosed : P.crackPathStable

def BrittleFractureTestClosed (P : BrittleFractureTestPackage) : Prop :=
  P.modeIStressIntensity ∧ P.modeIIToughnessAdmissible ∧
  P.fractureCriterionMet ∧ P.crackPathStable

theorem brittle_fracture_test_closed_from_evidence (P : BrittleFractureTestPackage)
    (E : BrittleFractureTestEvidence P) : BrittleFractureTestClosed P := by
  exact And.intro E.modeIStressIntensityClosed
    (And.intro E.modeIIToughnessAdmissibleClosed
      (And.intro E.fractureCriterionMetClosed E.crackPathStableClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse