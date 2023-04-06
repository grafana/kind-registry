// Code generated - EDITING IS FUTILE. DO NOT EDIT.
//
// Generated by:
//     public/app/plugins/gen.go
// Using jennies:
//     PluginSchemaRegistryJenny
//
// Run 'make gen-cue' from repository root to regenerate.

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "BarGauge" + "PanelCfg"
	schemaInterface: "PanelCfg"
	lineage: {
		seqs: [{
			schemas: [{
				PanelOptions: {
					common.SingleStatBaseOptions
					displayMode:  common.BarGaugeDisplayMode | *"gradient"
					valueMode:    common.BarGaugeValueMode | *"color"
					showUnfilled: bool | *true
					minVizWidth:  int & >=0 & <=4294967295 | *0
					minVizHeight: int & >=0 & <=4294967295 | *10
				} @cuetsy(kind="interface")
			}]
		}]
		name: "BarGauge" + "PanelCfg"
	}
}
