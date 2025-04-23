package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "LogsnewPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				showTime:                 bool
				wrapLogMessage:           bool
				enableLogDetails:         bool
				sortOrder:                common.LogsSortOrder
				dedupStrategy:            common.LogsDedupStrategy
				enableInfiniteScrolling?: bool
				onNewLogsReceived?:       _
			} @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
