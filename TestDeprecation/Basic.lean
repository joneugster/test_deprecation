theorem hi : True := .intro

@[deprecated hi]
theorem True.the_old_hi : True := .intro

open True
example : True ∧ True := by
  constructor
  exact True.the_old_hi
  exact the_old_hi
