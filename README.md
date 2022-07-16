## Nexus-Chain

`Nexus` is a decentralized data architecture that provides scalable, reliable, self-balanced storage, database and computation network, and offers a solid foundation for data processing.
`Nexus-Chain` is a Golang implementation of the `Nexus` protocol.

## Recommended hardware/software

- <b>Recommended Hardware</b>

        * CPU           i5 (4 cores)
        * RAM           16GB
        * Hard disk     2TB

- <b>Software(tested version)</b>

        * Ubuntu 18.04+
        * Go 1.16+ linux/amd64

- <b>Platform</b>

  - Linux(tested on Ubuntu18.04 and 20.04)
  - Mac OS
  - Windows

    It is possible to build and run the software on Windows. However, we did not test it on Windows completely.
    It may give you unexpected results, or it may require additional setup.

    An alternative option is to install a separate virtual Linux system using [VirtualBox](https://www.virtualbox.org/wiki/Downloads) or [VMware Workstation](https://www.vmware.com/ca/products/workstation-player/workstation-player-evaluation.html)

### `nexuscli`

The CLI is under development and we are targeting the following featuresets

- [x] Initialize private validator, p2p, genesis, and application configuration files
- [x] Collect genesis txs and output a genesis.json file
- [x] Migrate genesis to a specified target version
- [ ] Generate a genesis tx carrying a self delegation
- [ ]validates the genesis file at the default location or at the location passed as an arg
- [ ] Add a genesis account to genesis.json
- [ ] Run a faucet cmd

## Contribution

Thank you for considering to help out with the source code! We welcome contributions
from anyone on the internet, and are grateful for even the smallest of fixes!

If you'd like to contribute to nexus-chain, please fork, fix, commit and send a pull request
for the maintainers to review and merge into the main code base.

Please make sure your contributions adhere to our coding guidelines:

- Code must adhere to the official Go [formatting](https://golang.org/doc/effective_go.html#formatting)
  guidelines (i.e. uses [gofmt](https://golang.org/cmd/gofmt/)).
- Code must be documented adhering to the official Go [commentary](https://golang.org/doc/effective_go.html#commentary)
  guidelines.
- Pull requests need to be based on and opened against the `main` branch.
- Commit messages should be prefixed with the package(s) they modify.
  - E.g. "eth, rpc: make trace configs optional"
