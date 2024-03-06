package grafanaplugin

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Histogram" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					common.OptionsWithLegend
					common.OptionsWithTooltip

					//Bucket count (approx)
					bucketCount?: int32 & >0 | *30
					//Size of each bucket
					bucketSize?: int32
					//Offset buckets by this amount
					bucketOffset?: float32 | *0
					//Combines multiple series into a single histogram
					combine?: bool
				} @cuetsy(kind="interface")
				FieldConfig: {
					common.AxisConfig
					common.HideableFieldConfig

					// Controls line width of the bars.
					lineWidth?: uint32 & <=10 | *1
					// Controls the fill opacity of the bars.
					fillOpacity?: uint32 & <=100 | *80
					// Set the mode of the gradient fill. Fill gradient is based on the line color. To change the color, use the standard color scheme field option.
					// Gradient appearance is influenced by the Fill opacity setting.
					gradientMode?: common.GraphGradientMode & (*"none" | _)
				} @cuetsy(kind="interface")
			}
		}]
		name: "Histogram" + "PanelCfg"
		lenses: []
	}
}
