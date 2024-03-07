package grafanaplugin

{
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
		name: "AlertGroupsPanelCfg"
		lenses: []
	}
	schemaInterface: "PanelCfg"
	name:            "AlertGroupsPanelCfg"
}