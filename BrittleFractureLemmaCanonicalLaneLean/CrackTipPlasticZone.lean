import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.BrittleFractureTestPackage

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackTipPlasticZonePackage {P : BrittleFractureTestPackage}
    (T : BrittleFractureTestEvidence P) where
  plasticZoneRadius : Type u
  yieldStress : Type v
  plasticEnergyDissipation : Prop
  plasticZoneContained : Prop
  smallScaleYielding : Prop

structure CrackTipPlasticZoneEvidence {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} (R : CrackTipPlasticZonePackage T) where
  plasticEnergyDissipationClosed : R.plasticEnergyDissipation
  plasticZoneContainedClosed : R.plasticZoneContained
  smallScaleYieldingClosed : R.smallScaleYielding

def CrackTipPlasticZoneClosed {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} (R : CrackTipPlasticZonePackage T) : Prop :=
  R.plasticEnergyDissipation ∧ R.plasticZoneContained ∧ R.smallScaleYielding

theorem crack_tip_plastic_zone_closed_from_evidence {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} (R : CrackTipPlasticZonePackage T)
    (Ev : CrackTipPlasticZoneEvidence R) : CrackTipPlasticZoneClosed R := by
  exact And.intro Ev.plasticEnergyDissipationClosed
    (And.intro Ev.plasticZoneContainedClosed Ev.smallScaleYieldingClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse