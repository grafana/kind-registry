package grafanaplugin

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Stat" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					common.SingleStatBaseOptions
					graphMode:   common.BigValueGraphMode & (*"area" | _)
					colorMode:   common.BigValueColorMode & (*"value" | _)
					justifyMode: common.BigValueJustifyMode & (*"auto" | _)
					textMode:    common.BigValueTextMode & (*"auto" | _)
					wideLayout:  bool | *true
				} @cuetsy(kind="interface")
			}
		}]
		name: "Stat" + "PanelCfg"
		lenses: []
	}
}
