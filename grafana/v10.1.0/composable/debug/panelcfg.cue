package kind

import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Debug" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				UpdateConfig: {
					render:        bool
					dataChanged:   bool
					schemaChanged: bool
				} @cuetsy(kind="type")
				DebugMode: "render" | "events" | "cursor" | "State" | "ThrowError" @cuetsy(kind="enum")
				Options: {
					mode:      DebugMode
					counters?: UpdateConfig
				} @cuetsy(kind="interface")
			}
		}]
		name: "Debug" + "PanelCfg"
		lenses: []
	}
}
