package grafanaplugin

{
	schemaInterface: "PanelCfg"
	name:            "TextPanelCfg"
	lineage: {
		schemas: [{
			version: [0, 0]
			schema: {
				TextMode:     "html" | "markdown" | "code"                                                               @cuetsy(kind="enum",memberNames="HTML|Markdown|Code")
				CodeLanguage: "json" | "yaml" | "xml" | "typescript" | "sql" | "go" | "markdown" | "html" | *"plaintext" @cuetsy(kind="enum")
				CodeOptions: {
					// The language passed to monaco code editor
					language:        CodeLanguage
					showLineNumbers: bool | *false
					showMiniMap:     bool | *false
				} @cuetsy(kind="interface")
				Options: {
					mode:    TextMode & (*"markdown" | _)
					code?:   CodeOptions
					content: string | *"""
						# Title

						For markdown syntax help: [commonmark.org/help](https://commonmark.org/help/)
						"""
				} @cuetsy(kind="interface")
			}
		}]
		lenses: []
	}
}