// Code generated - EDITING IS FUTILE. DO NOT EDIT.
//
// Generated by:
//     public/app/plugins/gen.go
// Using jennies:
//     PluginSchemaRegistryJenny
//
// Run 'make gen-cue' from repository root to regenerate.

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "PieChart" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		seqs: [{
			schemas: [{
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
				PanelOptions: {
					common.OptionsWithTooltip
					common.SingleStatBaseOptions
					pieType: PieChartType
					displayLabels: [...PieChartLabels]
					legend: PieChartLegendOptions
				} @cuetsy(kind="interface")
				PanelFieldConfig: common.HideableFieldConfig @cuetsy(kind="interface")
			}]
		}]
		name: "PieChart" + "PanelCfg"
	}
}
