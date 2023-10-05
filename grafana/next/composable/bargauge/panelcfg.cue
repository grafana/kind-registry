package grafanaplugin

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "BarGauge" + "PanelCfg"
	schemaInterface: "PanelCfg"
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
					minVizWidth:   uint32 | *0
					minVizHeight:  uint32 | *10
				} @cuetsy(kind="interface")
			}
		}]
		name: "BarGauge" + "PanelCfg"
		lenses: []
	}
}
