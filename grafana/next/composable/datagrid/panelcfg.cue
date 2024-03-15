package grafanaplugin

{
	schemaInterface: "PanelCfg"
	name:            "DatagridPanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					selectedSeries: int32 & >=0 | *0
				} @cuetsy(kind="interface")
			}
		}]
		lenses: []
	}
}