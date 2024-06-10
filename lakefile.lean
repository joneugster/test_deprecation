import Lake
open Lake DSL

package «test_deprecation» where
  -- add package configuration options here

lean_lib «TestDeprecation» where
  -- add library configuration options here

require updateDeprecations from "UpdateDeprecations"

@[default_target]
lean_exe «test_deprecation» where
  root := `Main
