import "github.com/grafana/kindsys"

kindsys.Composable & {
	maturity:        "experimental"
	name:            "NodeGraph" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				ArcOption: {
					// Field from which to get the value. Values should be less than 1, representing fraction of a circle.
					field?: string
					// The color of the arc.
					color?: string
				} @cuetsy(kind="interface")
				NodeOptions: {
					// Unit for the main stat to override what ever is set in the data frame.
					mainStatUnit?: string
					// Unit for the secondary stat to override what ever is set in the data frame.
					secondaryStatUnit?: string
					// Define which fields are shown as part of the node arc (colored circle around the node).
					arcs?: [...ArcOption]
				}
				EdgeOptions: {
					// Unit for the main stat to override what ever is set in the data frame.
					mainStatUnit?: string
					// Unit for the secondary stat to override what ever is set in the data frame.
					secondaryStatUnit?: string
				}
				Options: {
					nodes?: NodeOptions
					edges?: EdgeOptions
				} @cuetsy(kind="interface")
			}
		}]
		name: "NodeGraph" + "PanelCfg"
		lenses: []
	}
}
