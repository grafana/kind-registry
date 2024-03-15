package grafanaplugin

import "github.com/grafana/grafana/packages/grafana-schema/src/common"

schemaInterface: "DataQuery"
name:            "ParcaDataQuery"
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
	lenses: []
}
