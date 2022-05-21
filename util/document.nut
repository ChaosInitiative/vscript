/* Prints script help in markdown for easy export */

function ExtractClassName(sig) {
	if(sig.find("::") != null) {
		return split(sig, ": ")[1]
	}
	return null; 
}

// Prints documentation for all registered functions in a nice markdown format
function PrintMarkdownDoc() {
	local matches = []
	local classes = {}
	
	foreach(name, doc in Documentation.functions) {
		matches.append(name)
	}
	matches.sort();
	
	printl("## Globals")
	printl("\n|Signature|Description|")
	printl("|---|---|")
	
	foreach( name in matches ) {
		local documentation = Documentation.functions[name];

		local signature = null;
		if ( documentation[0] != "#" ) {
			signature = documentation[0];
		}
		else {
			signature = GetFunctionSignature( this[name], name );
		}
		
		// Check for :: class separator
		if(signature.find("::") != null) {
			local s = split(signature, ": ");
			try {
				classes[s[1]].append([signature,name]);
			} 
			catch(id) {
				classes[s[1]] <- [[signature,name]];
			}
			continue;
		}
		
		printl("| " + signature + "|" + documentation[1] + "|");
	}
	
	foreach(cls in classes) {
		printl("\n## " + ExtractClassName(cls[0][0]))
		printl("\n|Signature|Description|")
		printl("|---|---|")
		foreach(func in cls) {
			local doc = Documentation.functions[func[1]];
			printl("| " + doc[0] + " | " + doc[1] + " | ")
		}
	}

	// Global constants

	local enums = []
	foreach(k,v in getroottable()) {
		if (typeof v == "integer" || typeof v == "float")
			enums.append(k)
	}
	enums.sort();

	printl("\n## Script Constants\n")
	printl("\n|Name|Value|")
	printl("|---|---|")
	foreach(k in enums) {
		local v = getroottable()[k]
		printl("| `" + k + "` | `" + v + "` | ")
	}
}

