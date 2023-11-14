package grafanaplugin

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "GrafanaPyroscope" + "DataQuery"
	schemaInterface: "DataQuery"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				common.DataQuery

				// Specifies the query label selectors.
				labelSelector: string | *"{}"
				// Specifies the type of profile to query.
				profileTypeId: string
				// Allows to group the results.
				groupBy: [...string]
				// Sets the maximum number of nodes in the flamegraph.
				maxNodes?:           int64
				#PyroscopeQueryType: "metrics" | "profile" | *"both" @cuetsy(kind="type")
			}
		}]
		name: "GrafanaPyroscope" + "DataQuery"
		lenses: []
	}
}
