package grafanaplugin

import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "News" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					// empty/missing will default to grafana blog
					feedUrl?:   string
					showImage?: bool | *true
				} @cuetsy(kind="interface")
			}
		}]
		name: "News" + "PanelCfg"
		lenses: []
	}
}
