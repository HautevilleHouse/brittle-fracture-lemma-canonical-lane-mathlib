import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackTipFieldPackage where
  displacementField : Type u
  strainField : Type v
  stressField : Type w
  westergaardFunction : Prop
  complexPotential : Prop

structure CrackTipFieldEvidence (C : CrackTipFieldPackage) where
  displacementFieldClosed : C.displacementField
  strainFieldClosed : C.strainField
  stressFieldClosed : C.stressField
  westergaardFunctionClosed : C.westergaardFunction
  complexPotentialClosed : C.complexPotential

def CrackTipFieldClosed (C : CrackTipFieldPackage) : Prop :=
  C.displacementField ∧ C.strainField ∧ C.stressField ∧ C.westergaardFunction ∧ C.complexPotential

theorem crack_tip_field_closed_from_evidence
    (C : CrackTipFieldPackage) (E : CrackTipFieldEvidence C) :
    CrackTipFieldClosed C := by
  exact And.intro E.displacementFieldClosed
    (And.intro E.strainFieldClosed
      (And.intro E.stressFieldClosed
        (And.intro E.westergaardFunctionClosed E.complexPotentialClosed)))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
