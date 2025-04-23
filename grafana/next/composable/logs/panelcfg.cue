package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "PanelCfg"
name:            "LogsPanelCfg"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			Options: {
				showLabels:               bool
				showCommonLabels:         bool
				showTime:                 bool
				showLogContextToggle:     bool
				showControls?:            bool
				controlsStorageKey?:      string
				wrapLogMessage:           bool
				prettifyLogMessage:       bool
				enableLogDetails:         bool
				sortOrder:                common.LogsSortOrder
				dedupStrategy:            common.LogsDedupStrategy
				enableInfiniteScrolling?: bool
				// TODO: figure out how to define callbacks
				onClickFilterLabel?:     _
				onClickFilterOutLabel?:  _
				isFilterLabelActive?:    _
				onClickFilterString?:    _
				onClickFilterOutString?: _
				onClickShowField?:       _
				onClickHideField?:       _
				onLogOptionsChange?:     _
				logRowMenuIconsBefore?:  _
				logRowMenuIconsAfter?:   _
				onNewLogsReceived?:      _
				displayedFields?: [...string]
			} @cuetsy(kind="interface")
		}
	}]
	lenses: []
}
