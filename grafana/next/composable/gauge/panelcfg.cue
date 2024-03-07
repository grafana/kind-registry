package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

maturity:        "experimental"
schemaInterface: "PanelCfg"
name:            "GaugePanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				common.SingleStatBaseOptions
				showThresholdLabels:  bool | *false
				showThresholdMarkers: bool | *true
				sizing:               common.BarGaugeSizing & (*"auto" | _)
				minVizWidth:          uint32 | *75
				minVizHeight:         uint32 | *75
			} @cuetsy(kind="interface")
		}
	}]
	name: "GaugePanelCfg"
	lenses: []
}
