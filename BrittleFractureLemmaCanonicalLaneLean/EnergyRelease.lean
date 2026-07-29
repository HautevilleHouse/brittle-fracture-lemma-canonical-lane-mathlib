import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.AdmissibleClass
import HautevilleHouse.BrittleFractureLemmaCanonicalLaneLean.CrackPath

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure EnergyReleaseRatePackage {G : CrackPathPackage}
    (S : StressIntensityFactorPackage G) where
  energyReleaseRate : Prop
  pathIndependence : Prop
  criticalEnergyRelease : Prop

structure EnergyReleaseRateEvidence {G : CrackPathPackage}
    {S : StressIntensityFactorPackage G} (E : EnergyReleaseRatePackage S) where
  energyReleaseRateClosed : E.energyReleaseRate
  pathIndependenceClosed : E.pathIndependence
  criticalEnergyReleaseClosed : E.criticalEnergyRelease

def EnergyReleaseRateClosed {G : CrackPathPackage}
    {S : StressIntensityFactorPackage G} (E : EnergyReleaseRatePackage S) : Prop :=
  E.energyReleaseRate ∧ E.pathIndependence ∧ E.criticalEnergyRelease

theorem energy_release_rate_closed_from_evidence
    {G : CrackPathPackage} {S : StressIntensityFactorPackage G}
    (E : EnergyReleaseRatePackage S) (Ev : EnergyReleaseRateEvidence E) :
    EnergyReleaseRateClosed E := by
  exact And.intro Ev.energyReleaseRateClosed
    (And.intro Ev.pathIndependenceClosed Ev.criticalEnergyReleaseClosed)

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse