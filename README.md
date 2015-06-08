#SemVer FTW

[npm](https://npmjs.org/) packages specify versions in the semver format: `MAJOR.MINOR.PATCH` (e.g. `3.0.2`). 

## When Publishing:

## Major: "breaking changes"
Increment MAJOR version when you have removed or changed a feature,
and dependent modules will have to modified to be compatible with the new version.

## Minor: "new feature"
Increment MINOR version when you have added a feature,
but the module is backwards compatible.

## Patch: "bugfix"
Increment PATCH version when you have fixed a problem,
but not broken or changed anything else.

## the semver spec
[semver.org](http://semver.org)

## Example

Suppose a new module called `pizza` gets published to npm as version `0.0.1`. 

When the author of the module decides to add some new functions 
like `.pepperoni()` it should get incremented to `0.1.0`.

When an issue on github is opened about a bug in `.pepperoni()` 
and the bug gets fixed it should get pushed as `0.1.1`.

When the author goes vegetarian and eliminates the `.pepperoni()`
method it should be published as `1.0.0`. 

## What does 1.0.0 mean?

there is some disagreement about the best use of `0.x.y` range semvers.
[see this discussion](https://github.com/dominictarr/semver-ftw/issues/2)
I suggest pubishing your module starting at `1.0.0` and after that,
incrementing the major version on each breaking change.

If you wish to indicate the stability of your module,
do so in the README, in same way that node.js does.
[stability index](http://nodejs.org/api/documentation.html#documentation_stability_index)

## When Using Published Modules

Module authors need to take care to correctly express the nature of
changes with their version number, but it is the module user's responsibility
to request sensible ranges.

## DON'T

Don't specify ranges that are too wide. The following may cause npm to install
a version of a dependency that does not work with your module.
``` js
"dependencies" : {
  "anything-goes":"*",
  "greater-than": ">1",
}
```

## DO

It is best to specify modules that you _know_ work.

``` js
"dependencies" : {
  "patches"    :"~1.3.7",
  "major-minor":"1.4.x"
}
```

These ranges demand specific module major and minor versions,
but allow patches. If the author of one of these modules publishes a patch,
and it breaks your module (and you where using the module as documented)
Then it was their fault, and you should post an issue.

## Also DO

This is also good.

``` js
  "exact"      : "3.5.2"
```

This is the safest solution. It will almost never break.

This can still break if dependencies of your dependencies are using ~ or ^.
