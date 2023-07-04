package kind

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & kindsys.Composable & {
	maturity:        "experimental"
	name:            "Parca"+"DataQuery" & "Parca"+"DataQuery"
	schemaInterface: "DataQuery" & "DataQuery"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				common.DataQuery

				// Specifies the query label selectors.
				labelSelector: string | *"{}"
				// Specifies the type of profile to query.
				profileTypeId:   string
				#ParcaQueryType: "metrics" | "profile" | *"both" @cuetsy(kind="type")
			}
		}]
		name: "Parca"+"DataQuery" & "Parca"+"DataQuery"
		lenses: []
	}
}
