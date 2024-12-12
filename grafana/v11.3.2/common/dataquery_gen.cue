// Code generated - EDITING IS FUTILE. DO NOT EDIT.
//
// Generated by:
//     kinds/gen.go
// Using jennies:
//     CommonSchemaJenny
//
// Run 'make gen-cue' from repository root to regenerate.

package common

// Canonically defined in pkg/kindsys/dataquery.cue FOR NOW to avoid having any external imports
// in kindsys. Code generation copies this file to the common schemas in packages/grafana-schema/src/common.
//
// NOTE make gen-cue must be run twice when updating this file

// These are the common properties available to all queries in all datasources.
// Specific implementations will *extend* this interface, adding the required
// properties for the given context.
DataQuery: {
	// A unique identifier for the query within the list of targets.  
	// In server side expressions, the refId is used as a variable name to identify results.
	// By default, the UI will assign A->Z; however setting meaningful names may be useful.
	refId: string

    // If hide is set to true, Grafana will filter out the response(s) associated with this query before returning it to the panel. 
	hide?: bool

	// Specify the query flavor
	// TODO make this required and give it a default
	queryType?: string

    // For mixed data sources the selected datasource is on the query level.
    // For non mixed scenarios this is undefined.
	// TODO find a better way to do this ^ that's friendly to schema
	// TODO this shouldn't be unknown but DataSourceRef | null
	datasource?: _
} @cuetsy(kind="interface")

DataSourceRef: {
	// The plugin type-id
	type?: string
	// Specific datasource instance
	uid?: string
	//  Datasource API version
	apiVersion?: string
} @cuetsy(kind="interface")