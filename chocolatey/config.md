# Chocolatey config

```shell
choco config set --name ignoreUnfoundPackagesOnUpgradeOutdated --value true
choco config set --name ignoreInvalidOptionsSwitches --value true
choco config set --name allowGlobalConfirmation --value true
choco config set --name checksumFiles --value false
choco config set --name allowEmptyChecksums --value true
choco config set --name allowEmptyChecksumsSecure --value true
choco config set --name failOnInvalidOrMissingLicense --value false
choco config set --name stopOnFirstPackageFailure --value false
choco config set --name logValidationResultsOnWarnings --value false
choco config set --name usePackageRepositoryOptimizations --value true
choco config set --name ignoreInvalidOptionsSwitches --value true
choco feature enable -n allowGlobalConfirmation
```