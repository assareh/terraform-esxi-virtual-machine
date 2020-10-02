# ESXi Virtual Machine Request

This module is supplied by the cloud platforms team for all virtual machines on VMware ESXi.
Please note that all requests for virtual machines that bypass this module will be blocked by default.

If this module does not do what you need, please raise an issue or even better a pull request!

## Usage

The following inputs are required for this module:
- App name
    - This is used as a unique identifier for your virtual machine in our VMware tenancy
    - Please use the syntax teamName-projectName-appName
- Description
    - A single sentence describing the purpose of the virtual machine
- Environment
    - Please tag appropriately with the following options:
    - dev, test, stage, prod
- Owner
    - This should be your internal ID or project ID if you are a contractor.
