import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace BrittleFractureLemmaCanonicalLaneLean

structure CrackDomain where
  materialManifold : Type u
  crackSurface : Set (materialManifold × materialManifold)  -- representing crack faces
  isOpenCrack : Prop
  isSmoothCrack : Prop

structure CrackGeometryPackage where
  domain : CrackDomain
  crackFront : Type v
  crackLength : crackFront → ℝ
  regularity : Prop

structure CrackGeometryEvidence (C : CrackGeometryPackage) where
  regularityClosed : C.regularity

def CrackGeometryClosed (C : CrackGeometryPackage) : Prop :=
  C.regularity

theorem crack_geometry_closed_from_evidence (C : CrackGeometryPackage) (E : CrackGeometryEvidence C) : CrackGeometryClosed C :=
  E.regularityClosed

end BrittleFractureLemmaCanonicalLaneLean
end HautevilleHouse
