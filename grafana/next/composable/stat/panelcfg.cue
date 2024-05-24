package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "StatPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				common.SingleStatBaseOptions
				graphMode:              common.BigValueGraphMode & (*"area" | _)
				colorMode:              common.BigValueColorMode & (*"value" | _)
				justifyMode:            common.BigValueJustifyMode & (*"auto" | _)
				textMode:               common.BigValueTextMode & (*"auto" | _)
				wideLayout:             bool | *true
				showPercentChange:      bool | *false
				percentChangeColorMode: common.PercentChangeColorMode & (*"standard" | _)
			} @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
