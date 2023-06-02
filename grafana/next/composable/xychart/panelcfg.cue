import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & kindsys.Composable & {
	maturity:        "experimental"
	name:            "XYChart"+"PanelCfg" & "XYChart"+"PanelCfg"
	schemaInterface: "PanelCfg" & "PanelCfg"
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
				ScatterFieldConfig: {
					common.HideableFieldConfig
					common.AxisConfig
					show?:       ScatterShow & (*"points" | _)
					pointSize?:  common.ScaleDimensionConfig
					lineColor?:  common.ColorDimensionConfig
					pointColor?: common.ColorDimensionConfig
					labelValue?: common.TextDimensionConfig
					lineWidth?:  int32 & >=0
					lineStyle?:  common.LineStyle
					label?:      common.VisibilityMode & (*"auto" | _)
				} @cuetsy(kind="interface",TSVeneer="type")
				ScatterSeriesConfig: {
					ScatterFieldConfig
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
		name: "XYChart"+"PanelCfg" & "XYChart"+"PanelCfg"
		lenses: []
	}
}
