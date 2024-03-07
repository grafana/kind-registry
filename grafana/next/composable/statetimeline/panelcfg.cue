package grafanaplugin

import ui "github.com/grafana/grafana/packages/grafana-schema/src/common"

maturity:        "experimental"
schemaInterface: "PanelCfg"
name:            "StateTimelinePanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				ui.OptionsWithLegend
				ui.OptionsWithTooltip
				ui.OptionsWithTimezones

				//Show timeline values on chart
				showValue: ui.VisibilityMode & (*"auto" | _)
				//Controls the row height
				rowHeight: float & <=1 | *0.9
				//Merge equal consecutive values
				mergeValues?: bool | *true
				//Controls value alignment on the timelines
				alignValue?: ui.TimelineValueAlignment & (*"left" | _)
			} @cuetsy(kind="interface")
			FieldConfig: {
				ui.HideableFieldConfig
				lineWidth?:   uint32 & <=10 | *0
				fillOpacity?: uint32 & <=100 | *70
			} @cuetsy(kind="interface")
		}
	}]
	name: "StateTimelinePanelCfg"
	lenses: []
}
