package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "DataQuery"
name:            "GrafanapyroscopeDataQuery"
lineage: {
	schemas: [{
		version: [0, 0]
		schema: {
			common.DataQuery

			// Specifies the query label selectors.
			labelSelector: string | *"{}"
			// Specifies the query span selectors.
			spanSelector?: [...string]
			// Specifies the type of profile to query.
			profileTypeId: string
			// Allows to group the results.
			groupBy: [...string]
			// Sets the maximum number of nodes in the flamegraph.
			maxNodes?:           int64
			#PyroscopeQueryType: "metrics" | "profile" | *"both" @cuetsy(kind="type")
		}
	}]
	lenses: []
}
