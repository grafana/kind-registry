package grafanaplugin

import (
	"github.com/grafana/kindsys"
	ui "github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Table" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					// Represents the index of the selected frame
					frameIndex: number | *0
					// Controls whether the panel should show the header
					showHeader: bool | *true
					// Controls whether the header should show icons for the column types
					showTypeIcons?: bool | *false
					// Used to control row sorting
					sortBy?: [...ui.TableSortByFieldState]
					// Controls footer options
					footer?: ui.TableFooterOptions | *{
						// Controls whether the footer should be shown
						show: false
						// Controls whether the footer should show the total number of rows on Count calculation
						countRows: false
						// Represents the selected calculations
						reducer: []
					}
					// Controls the height of the rows
					cellHeight?: ui.TableCellHeight & (*"sm" | _)
				} @cuetsy(kind="interface")
			}
		}]
		name: "Table" + "PanelCfg"
		lenses: []
	}
}
