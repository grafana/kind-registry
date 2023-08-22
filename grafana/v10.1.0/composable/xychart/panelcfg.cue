package kind

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "XYChart" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				SeriesMapping: "auto" | "manual"                   @cuetsy(kind="enum")
				ScatterShow:   "points" | "lines" | "points+lines" @cuetsy(kind="enum", memberNames="Points|Lines|PointsAndLines")
				XYDimensionConfig: {
					frame: int32 & >=0
					x?:    string
					exclude?: [...string]
				} @cuetsy(kind="interface")
				FieldConfig: {
					common.HideableFieldConfig
					common.AxisConfig
					show?:       ScatterShow & (*"points" | _)
					pointSize?:  common.ScaleDimensionConfig
					pointColor?: common.ColorDimensionConfig
					lineColor?:  common.ColorDimensionConfig
					lineWidth?:  int32 & >=0
					lineStyle?:  common.LineStyle
					label?:      common.VisibilityMode & (*"auto" | _)
					labelValue?: common.TextDimensionConfig
				} @cuetsy(kind="interface",TSVeneer="type")
				ScatterSeriesConfig: {
					FieldConfig
					x?:    string
					y?:    string
					name?: string
				} @cuetsy(kind="interface")
				Options: {
					common.OptionsWithLegend
					common.OptionsWithTooltip
					seriesMapping?: SeriesMapping
					dims:           XYDimensionConfig
					series: [...ScatterSeriesConfig]
				} @cuetsy(kind="interface")
			}
		}]
		name: "XYChart" + "PanelCfg"
		lenses: []
	}
}
