# Full reproduction

First, clone the repo:

```
git clone https://github.com/joneugster/test_deprecation
cd test_deprecation/
```

Then call:

```
lake build
lake exe update_deprecations
```

This will cause the error:

```
uncaught exception: unknown package 'UpdateDeprecations'
You might need to open '/home/jeugster/Lean/Test/test_deprecation' as a workspace in your editor
```


Next, (un)comment the `require` lines in the `lakefile.lean` to
require `updateDeprecations` locally. Then run the following:

```
git submodule update --init
lake update
lake build
lake exe update_deprecations
git diff | cat
```

This is successful:

```
3 modifications across 1 file, all successful

diff --git a/UpdateDeprecations/TUD.lean b/UpdateDeprecations/TUD.lean
index 6b570c7..6013c24 100644
--- a/UpdateDeprecations/TUD.lean
+++ b/UpdateDeprecations/TUD.lean
@@ -11,5 +11,5 @@ theorem True.hello2 (t : True) : True := t.ok2
 open True
 example : True ∧ True := by
   constructor
-  · exact hello1
-  · exact hello2 hello1
+  · exact ok1
+  · exact True.ok2 ok1
```