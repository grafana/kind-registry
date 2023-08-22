package kind

import (
	"github.com/grafana/kindsys"
	ui "github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "Geomap" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				Options: {
					view:     MapViewConfig
					controls: ControlsOptions
					basemap:  ui.MapLayerOptions
					layers: [...ui.MapLayerOptions]
					tooltip: TooltipOptions
				} @cuetsy(kind="interface")
				MapViewConfig: {
					id:         string | *"zero"
					lat?:       int64 | *0
					lon?:       int64 | *0
					zoom?:      int64 | *1
					minZoom?:   int64
					maxZoom?:   int64
					padding?:   int64
					allLayers?: bool | *true
					lastOnly?:  bool
					layer?:     string
					shared?:    bool
				} @cuetsy(kind="interface")
				ControlsOptions: {
					// Zoom (upper left)
					showZoom?: bool
					// let the mouse wheel zoom
					mouseWheelZoom?: bool
					// Lower right
					showAttribution?: bool
					// Scale options
					showScale?: bool
					// Show debug
					showDebug?: bool
					// Show measure
					showMeasure?: bool
				} @cuetsy(kind="interface")
				TooltipOptions: {
					mode: TooltipMode
				} @cuetsy(kind="interface")
				TooltipMode: "none" | "details"        @cuetsy(kind="enum",memberNames="None|Details")
				MapCenterID: "zero" | "coords" | "fit" @cuetsy(kind="enum",members="Zero|Coordinates|Fit")
			}
		}]
		name: "Geomap" + "PanelCfg"
		lenses: []
	}
}
