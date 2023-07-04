package kind

import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "AnnotationsList" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					onlyFromThisDashboard: bool | *false
					onlyInTimeRange:       bool | *false
					tags: [...string]
					limit:           uint32 | *10
					showUser:        bool | *true
					showTime:        bool | *true
					showTags:        bool | *true
					navigateToPanel: bool | *true
					navigateBefore:  string | *"10m"
					navigateAfter:   string | *"10m"
				} @cuetsy(kind="interface")
			}
		}]
		name: "AnnotationsList" + "PanelCfg"
		lenses: []
	}
}
