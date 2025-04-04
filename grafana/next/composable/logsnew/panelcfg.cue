package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "LogsnewPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				showControls:             bool
				showTime:                 bool
				wrapLogMessage:           bool
				enableLogDetails:         bool
				syntaxHighlighting:       bool
				sortOrder:                common.LogsSortOrder
				dedupStrategy:            common.LogsDedupStrategy
				grammar?:                 _
				enableInfiniteScrolling?: bool
				onLogOptionsChange?:      _
				onNewLogsReceived?:       _
			} @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
