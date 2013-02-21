#SemVer FTW

[NPM](https://npmjs.org/) packages specify versions in the semver format: `MAJOR.MINOR.PATCH` (e.g. `3.0.2`). 

## Major: "breaking changes"
Increment MAJOR version when you have removed or changed a feature, and dependent modules must be updated to use the new version.

## Minor: "new feature"
Increment MINOR version when you have added a feature, but the module is backwards compatible.

## Patch: "bugfix"
Increment PATCH version when you have fixed a problem, but not broken or changed anything else.

## the semver spec
[semver.org](http://semver.org)

## Example

Suppose a new module called `pizza` gets published to NPM as version `0.0.1`. 

When the author of the module decides to add some new functions like `.pepperoni()` it should get incremented to `0.1.0`.

When an issue on github is opened about a bug in `.pepperoni()` and the bug gets fixed it should get pushed as `0.1.1`.

When the author goes vegetarian and eliminates the `.pepperoni()` method it should be published as `1.0.0`. 

## What does 1.0.0 mean?

Don't worry too much about using 1.0.0, it is just a number. Some consider software 'beta' when it is below 1.0.0 and 'finished' when it is above, but for small modules like those on NPM this shouldn't necessarily apply. 
