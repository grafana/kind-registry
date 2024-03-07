package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

maturity:        "experimental"
schemaInterface: "PanelCfg"
name:            "BarGaugePanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				common.SingleStatBaseOptions
				displayMode:   common.BarGaugeDisplayMode & (*"gradient" | _)
				valueMode:     common.BarGaugeValueMode & (*"color" | _)
				namePlacement: common.BarGaugeNamePlacement & (*"auto" | _)
				showUnfilled:  bool | *true
				sizing:        common.BarGaugeSizing & (*"auto" | _)
				minVizWidth:   uint32 | *8
				minVizHeight:  uint32 | *16
				maxVizHeight:  uint32 | *300
			} @cuetsy(kind="interface")
		}
	}]
	name: "BarGaugePanelCfg"
	lenses: []
}
