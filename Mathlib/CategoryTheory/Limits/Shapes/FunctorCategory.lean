/-
Copyright (c) 2022 Scott Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Scott Morrison

! This file was ported from Lean 3 source module category_theory.limits.shapes.functor_category
! leanprover-community/mathlib commit 024a4231815538ac739f52d08dd20a55da0d6b23
! Please do not edit these lines, except to modify the commit id
! if you have ported upstream changes.
-/
import Mathlib.CategoryTheory.Limits.Shapes.FiniteLimits
import Mathlib.CategoryTheory.Limits.FunctorCategory

/-!
# If `D` has finite (co)limits, so do the functor categories `C ⥤ D`.

These are boiler-plate instances, in their own file as neither import otherwise needs the other.
-/


open CategoryTheory

namespace CategoryTheory.Limits

universe v₁ v₂ u₁ u₂ w

variable {C : Type u₁} [Category.{v₁} C]

variable {D : Type u₂} [Category.{v₂} D]

instance functor_category_hasFiniteLimits [HasFiniteLimits D] : HasFiniteLimits (C ⥤ D)
    where out _ _ _ := inferInstance
#align category_theory.limits.functor_category_has_finite_limits CategoryTheory.Limits.functor_category_hasFiniteLimits

instance functor_category_hasFiniteColimits [HasFiniteColimits D] : HasFiniteColimits (C ⥤ D)
    where out _ _ _ := inferInstance
#align category_theory.limits.functor_category_has_finite_colimits CategoryTheory.Limits.functor_category_hasFiniteColimits

end CategoryTheory.Limits
