package grafanaplugin

import ui "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "StatushistoryPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				ui.OptionsWithLegend
				ui.OptionsWithTooltip
				ui.OptionsWithTimezones

				//Set the height of the rows
				rowHeight: float32 & >=0 & <=1 | *0.9
				//Show values on the columns
				showValue: ui.VisibilityMode & (*"auto" | _)
				//Controls the column width
				colWidth?: float & <=1 | *0.9
			} @cuetsy(kind="interface")
			FieldConfig: {
				ui.AxisConfig
				ui.HideableFieldConfig
				lineWidth?:   uint32 & <=10 | *1
				fillOpacity?: uint32 & <=100 | *70
			} @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
