package grafanaplugin

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Gauge" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					common.SingleStatBaseOptions
					showThresholdLabels:  bool | *false
					showThresholdMarkers: bool | *true
					sizing:               common.BarGaugeSizing & (*"auto" | _)
					minVizWidth:          uint32 | *200
					minVizHeight:         uint32 | *200
				} @cuetsy(kind="interface")
			}
		}]
		name: "Gauge" + "PanelCfg"
		lenses: []
	}
}
