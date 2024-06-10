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
