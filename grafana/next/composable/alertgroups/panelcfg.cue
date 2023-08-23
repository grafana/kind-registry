package grafanaplugin

import "github.com/grafana/kindsys"

kindsys.Composable & {
	name:            "AlertGroups" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					// Comma-separated list of values used to filter alert results
					labels: string
					// Name of the alertmanager used as a source for alerts
					alertmanager: string
					// Expand all alert groups by default
					expandAll: bool
				} @cuetsy(kind="interface")
			}
		}]
		name: "AlertGroups" + "PanelCfg"
		lenses: []
	}
}
