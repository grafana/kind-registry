package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "DataQuery"
name:            "LokiDataQuery"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			common.DataQuery

			// The LogQL query.
			expr: string
			// Used to override the name of the series.
			legendFormat?: string
			// Used to limit the number of log rows returned.
			maxLines?: int64
			// @deprecated, now use step.
			resolution?: int64
			editorMode?: #QueryEditorMode
			// @deprecated, now use queryType.
			range?: bool
			// @deprecated, now use queryType.
			instant?: bool
			// Used to set step value for range queries.
			step?:                string
			#QueryEditorMode:     "code" | "builder"                                            @cuetsy(kind="enum")
			#LokiQueryType:       "range" | "instant" | "stream"                                @cuetsy(kind="enum")
			#SupportingQueryType: "logsVolume" | "logsSample" | "dataSample" | "infiniteScroll" @cuetsy(kind="enum")
			#LokiQueryDirection:  "forward" | "backward"                                        @cuetsy(kind="enum")
		}
	}]
	lenses: []
}
