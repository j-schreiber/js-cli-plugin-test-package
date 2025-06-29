A package that its entire purpose is adding some useless components to an org and then deprecating the components by installing older or other package versions.

## Deployment

CI pipeline runs in CircleCI and requires access to the repo. The pipeline creates a scratch org & pushes source. Then tests pushed source locally. In parallel, a package version is built. After scratch org tests, it creates a "UAT" scratch org and installs the package, then runs tests again. The next step requires manual approval, after which the package is promoted.

## How To Add New Metadata Types

The CI from [sf-cli-plugin](https://github.com/j-schreiber/js-sf-cli-plugin) uses this package during garbage collector E2E tests.
The tests manually specify the package versions that are used to deprecate components. After adding new metadata and finishing package release, set the new version in garbage collection test, and update the expected garbage results accordingly.
