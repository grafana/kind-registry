package kind

import (
	"github.com/grafana/kindsys"
	"github.com/grafana/grafana/packages/grafana-schema/src/common"
)

kindsys.Composable & {
	maturity:        "experimental"
	name:            "TestData" + "DataQuery"
	schemaInterface: "DataQuery"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				common.DataQuery
				alias?:       string
				scenarioId?:  #TestDataQueryType & (*"random_walk" | _)
				stringInput?: string
				stream?:      #StreamingQuery
				pulseWave?:   #PulseWaveQuery
				sim?:         #SimulationQuery
				csvWave?: [...#CSVWave]
				labels?:          string
				lines?:           int64
				levelColumn?:     bool
				channel?:         string
				nodes?:           #NodesQuery
				csvFileName?:     string
				csvContent?:      string
				rawFrameContent?: string
				seriesCount?:     int32
				usa?:             #USAQuery
				errorType?:       "server_panic" | "frontend_exception" | "frontend_observable"
				spanCount?:       int32
				points?: [...[...string | int64]]

				// Drop percentage (the chance we will lose a point 0-100)
				dropPercent?:       float64
				#TestDataQueryType: "random_walk" | "slow_query" | "random_walk_with_error" | "random_walk_table" | "exponential_heatmap_bucket_data" | "linear_heatmap_bucket_data" | "no_data_points" | "datapoints_outside_range" | "csv_metric_values" | "predictable_pulse" | "predictable_csv_wave" | "streaming_client" | "simulation" | "usa" | "live" | "grafana_api" | "arrow" | "annotations" | "table_static" | "server_error_500" | "logs" | "node_graph" | "flame_graph" | "raw_frame" | "csv_file" | "csv_content" | "trace" | "manual_entry" | "variables-query" @cuetsy(kind="enum", memberNames="RandomWalk|SlowQuery|RandomWalkWithError|RandomWalkTable|ExponentialHeatmapBucketData|LinearHeatmapBucketData|NoDataPoints|DataPointsOutsideRange|CSVMetricValues|PredictablePulse|PredictableCSVWave|StreamingClient|Simulation|USA|Live|GrafanaAPI|Arrow|Annotations|TableStatic|ServerError500|Logs|NodeGraph|FlameGraph|RawFrame|CSVFile|CSVContent|Trace|ManualEntry|VariablesQuery")
				#StreamingQuery: {
					type:   "signal" | "logs" | "fetch"
					speed:  int32
					spread: int32
					noise:  int32
					bands?: int32
					url?:   string
				} @cuetsy(kind="interface")
				#PulseWaveQuery: {
					timeStep?: int64
					onCount?:  int64
					offCount?: int64
					onValue?:  float64
					offValue?: float64
				} @cuetsy(kind="interface")
				#SimulationQuery: {
					key: {
						type: string
						tick: float64
						uid?: string
					}
					config?: {
						...
					}
					stream?: bool
					last?:   bool
				} @cuetsy(kind="interface")
				#NodesQuery: {
					type?:  "random" | "response" | "random edges"
					count?: int64
				} @cuetsy(kind="interface")
				#USAQuery: {
					mode?:   string
					period?: string
					fields?: [...string]
					states?: [...string]
				} @cuetsy(kind="interface")
				#CSVWave: {
					timeStep?:  int64
					name?:      string
					valuesCSV?: string
					labels?:    string
				} @cuetsy(kind="interface")

				// TODO: Should this live here given it's not used in the dataquery?
				#Scenario: {
					id:              string
					name:            string
					stringInput:     string
					description?:    string
					hideAliasField?: bool
				} @cuetsy(kind="interface")
			}
		}]
		name: "TestData" + "DataQuery"
		lenses: []
	}
}
