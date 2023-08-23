package grafanaplugin

import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Datagrid" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					selectedSeries: int32 & >=0 | *0
				} @cuetsy(kind="interface")
			}
		}]
		name: "Datagrid" + "PanelCfg"
		lenses: []
	}
}
