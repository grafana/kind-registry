import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & kindsys.Composable & {
	maturity:        "experimental"
	name:            "Loki"+"DataQuery" & "Loki"+"DataQuery"
	schemaInterface: "DataQuery" & "DataQuery"
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
				// Used to scale the interval value.
				resolution?: int64
				editorMode?: #QueryEditorMode
				// @deprecated, now use queryType.
				range?: bool
				// @deprecated, now use queryType.
				instant?:             bool
				#QueryEditorMode:     "code" | "builder"                         @cuetsy(kind="enum")
				#LokiQueryType:       "range" | "instant" | "stream"             @cuetsy(kind="enum")
				#SupportingQueryType: "logsVolume" | "logsSample" | "dataSample" @cuetsy(kind="enum")
				#LokiQueryDirection:  "forward" | "backward"                     @cuetsy(kind="enum")
			}
		}]
		name: "Loki"+"DataQuery" & "Loki"+"DataQuery"
		lenses: []
	}
}