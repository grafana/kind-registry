package grafanaplugin

{
	maturity:        "experimental"
	schemaInterface: "PanelCfg"
	name:            "NewsPanelCfg"
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
		name: "NewsPanelCfg"
		lenses: []
	}
}