import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.CrackTipPlasticZone

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure EnergyReleaseRateCalculationPackage {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    (Z : CrackTipPlasticZoneEvidence R) where
  JIntegral : Type u
  stressIntensityFactor : Type v
  energyReleaseRate : Prop
  pathIndependence : Prop
  planeStrainCondition : Prop
  energyEquivalence : Prop

structure EnergyReleaseRateCalculationEvidence {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    {Z : CrackTipPlasticZoneEvidence R} (G : EnergyReleaseRateCalculationPackage Z) where
  energyReleaseRateClosed : G.energyReleaseRate
  pathIndependenceClosed : G.pathIndependence
  planeStrainConditionClosed : G.planeStrainCondition
  energyEquivalenceClosed : G.energyEquivalence

def EnergyReleaseRateCalculationClosed {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    {Z : CrackTipPlasticZoneEvidence R} (G : EnergyReleaseRateCalculationPackage Z) : Prop :=
  G.energyReleaseRate ∧ G.pathIndependence ∧ G.planeStrainCondition ∧ G.energyEquivalence

theorem energy_release_rate_calculation_closed_from_evidence
    {P : BrittleFractureTestPackage} {T : BrittleFractureTestEvidence P}
    {R : CrackTipPlasticZonePackage T} {Z : CrackTipPlasticZoneEvidence R}
    (G : EnergyReleaseRateCalculationPackage Z) (Ev : EnergyReleaseRateCalculationEvidence G) :
    EnergyReleaseRateCalculationClosed G := by
  exact And.intro Ev.energyReleaseRateClosed
    (And.intro Ev.pathIndependenceClosed
      (And.intro Ev.planeStrainConditionClosed Ev.energyEquivalenceClosed))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse