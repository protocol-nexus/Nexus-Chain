package app

import (
	nexus "github.com/nexusnet/nexus-chain/types"
)

func SetConfig() {
	config := nexus.GetConfig()

	config.Seal()
}
