package kind

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
				} @cuetsy(kind="interface")
			}
		}]
		name: "Gauge" + "PanelCfg"
		lenses: []
	}
}
