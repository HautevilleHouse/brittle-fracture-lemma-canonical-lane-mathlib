import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.EnergyReleaseRateCalculation

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure GriffithEnergyBalancePackage {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    {Z : CrackTipPlasticZoneEvidence R} {G : EnergyReleaseRateCalculationPackage Z}
    (H : EnergyReleaseRateCalculationEvidence G) where
  elasticStrainEnergy : Type u
  fractureSurfaceEnergy : Type v
  totalEnergyBalance : Prop
  criticalEnergyReleaseRate : Prop
  crackGrowthCriterion : Prop

structure GriffithEnergyBalanceEvidence {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    {Z : CrackTipPlasticZoneEvidence R} {G : EnergyReleaseRateCalculationPackage Z}
    {H : EnergyReleaseRateCalculationEvidence G} (Q : GriffithEnergyBalancePackage H) where
  totalEnergyBalanceClosed : Q.totalEnergyBalance
  criticalEnergyReleaseRateClosed : Q.criticalEnergyReleaseRate
  crackGrowthCriterionClosed : Q.crackGrowthCriterion

def GriffithEnergyBalanceClosed {P : BrittleFractureTestPackage}
    {T : BrittleFractureTestEvidence P} {R : CrackTipPlasticZonePackage T}
    {Z : CrackTipPlasticZoneEvidence R} {G : EnergyReleaseRateCalculationPackage Z}
    {H : EnergyReleaseRateCalculationEvidence G} (Q : GriffithEnergyBalancePackage H) : Prop :=
  Q.totalEnergyBalance ∧ Q.criticalEnergyReleaseRate ∧ Q.crackGrowthCriterion

theorem griffith_energy_balance_closed_from_evidence
    {P : BrittleFractureTestPackage} {T : BrittleFractureTestEvidence P}
    {R : CrackTipPlasticZonePackage T} {Z : CrackTipPlasticZoneEvidence R}
    {G : EnergyReleaseRateCalculationPackage Z} {H : EnergyReleaseRateCalculationEvidence G}
    (Q : GriffithEnergyBalancePackage H) (Ev : GriffithEnergyBalanceEvidence Q) :
    GriffithEnergyBalanceClosed Q := by
  exact And.intro Ev.totalEnergyBalanceClosed
    (And.intro Ev.criticalEnergyReleaseRateClosed Ev.crackGrowthCriterionClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse