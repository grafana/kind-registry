package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

maturity:        "experimental"
schemaInterface: "PanelCfg"
name:            "LogsPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				showLabels:           bool
				showCommonLabels:     bool
				showTime:             bool
				showLogContextToggle: bool
				wrapLogMessage:       bool
				prettifyLogMessage:   bool
				enableLogDetails:     bool
				sortOrder:            common.LogsSortOrder
				dedupStrategy:        common.LogsDedupStrategy
			} @cuetsy(kind="interface")
		}
	}]
	name: "LogsPanelCfg"
	lenses: []
}
