package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "PiechartPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			// Select the pie chart display style.
			PieChartType: "pie" | "donut" @cuetsy(kind="enum")
			// Select labels to display on the pie chart.
			//  - Name - The series or field name.
			//  - Percent - The percentage of the whole.
			//  - Value - The raw numerical value.
			PieChartLabels: "name" | "value" | "percent" @cuetsy(kind="enum")
			// Select values to display in the legend.
			//  - Percent: The percentage of the whole.
			//  - Value: The raw numerical value.
			PieChartLegendValues: "value" | "percent" @cuetsy(kind="enum")
			PieChartLegendOptions: {
				common.VizLegendOptions
				values: [...PieChartLegendValues]
			} @cuetsy(kind="interface")
			Options: {
				common.OptionsWithTooltip
				common.SingleStatBaseOptions
				pieType: PieChartType
				displayLabels: [...PieChartLabels]
				legend: PieChartLegendOptions
			} @cuetsy(kind="interface")
			FieldConfig: common.HideableFieldConfig @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
