import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	name:            "Trend" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				// Identical to timeseries... except it does not have timezone settings
				Options: {
					legend:  common.VizLegendOptions
					tooltip: common.VizTooltipOptions

					// Name of the x field to use (defaults to first number)
					xField?: string
				} @cuetsy(kind="interface")
				FieldConfig: common.GraphFieldConfig @cuetsy(kind="interface")
			}
		}]
		name: "Trend" + "PanelCfg"
		lenses: []
	}
}
