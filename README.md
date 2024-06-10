# Full reproduction

First, clone the repo:

```
git clone https://github.com/joneugster/test_deprecation
cd test_deprecation/
```

Then call:

```
lake exe update_deprecations
```

and you see an error:

```
uncaught exception: unknown package 'UpdateDeprecations'
You might need to open '/home/user/Lean/Test/test_deprecation' as a workspace in your editor
```

but if you call

```
lake build updateDeprecations
lake exe update_deprecations
```

it works fine.


# Local repo

However, if you use a local dep, you get a different behaviour:

For that, Reclone the repo or run `rm -rf .lake` to get a fresh state.

Then edit the `require` lines in the `lakefile.lean` to
require `updateDeprecations` locally. Now run the following:

```
git submodule update --init
lake update
lake exe update_deprecations
```

This is successful.
