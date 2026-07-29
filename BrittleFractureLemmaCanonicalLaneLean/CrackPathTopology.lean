import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackPathTopologyPackage where
  crackPathSet : Type
  crackPathTopology : TopologicalSpace crackPathSet
  crackPathDimension : Nat
  crackPathRegularity : Prop
  pathConnectedness : Prop
  localPathStructure : Prop
  crackPathSingularities : Prop
  crackFrontGeometry : Prop

structure CrackPathTopologyEvidence (C : CrackPathTopologyPackage) where
  crackPathSetClosed : C.crackPathSet
  crackPathTopologyClosed : C.crackPathTopology
  crackPathDimensionClosed : C.crackPathDimension
  crackPathRegularityClosed : C.crackPathRegularity
  pathConnectednessClosed : C.pathConnectedness
  localPathStructureClosed : C.localPathStructure
  crackPathSingularitiesClosed : C.crackPathSingularities
  crackFrontGeometryClosed : C.crackFrontGeometry

def CrackPathTopologyClosed (C : CrackPathTopologyPackage) : Prop :=
  C.crackPathSet ∧ C.crackPathTopology ∧ C.crackPathDimension ∧
  C.crackPathRegularity ∧ C.pathConnectedness ∧ C.localPathStructure ∧
  C.crackPathSingularities ∧ C.crackFrontGeometry

theorem crack_path_topology_closed_from_evidence (C : CrackPathTopologyPackage)
    (Ev : CrackPathTopologyEvidence C) : CrackPathTopologyClosed C := by
  exact And.intro Ev.crackPathSetClosed
    (And.intro Ev.crackPathTopologyClosed
      (And.intro Ev.crackPathDimensionClosed
        (And.intro Ev.crackPathRegularityClosed
          (And.intro Ev.pathConnectednessClosed
            (And.intro Ev.localPathStructureClosed
              (And.intro Ev.crackPathSingularitiesClosed Ev.crackFrontGeometryClosed))))))

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse