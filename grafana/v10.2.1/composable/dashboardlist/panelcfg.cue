package grafanaplugin

import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "DashboardList" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					keepTime:           bool | *false
					includeVars:        bool | *false
					showStarred:        bool | *true
					showRecentlyViewed: bool | *false
					showSearch:         bool | *false
					showHeadings:       bool | *true
					maxItems:           int | *10
					query:              string | *""
					tags:               [...string] | *[]
					// folderId is deprecated, and migrated to folderUid on panel init
					folderId?:  int
					folderUID?: string
				} @cuetsy(kind="interface")
			}
		}]
		name: "DashboardList" + "PanelCfg"
		lenses: []
	}
}
