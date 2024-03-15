package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "TimeseriesPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: common.OptionsWithTimezones & {
					legend:       common.VizLegendOptions
					tooltip:      common.VizTooltipOptions
					orientation?: common.VizOrientation
			}            @cuetsy(kind="interface")
			FieldConfig: common.GraphFieldConfig @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
