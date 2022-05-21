// Shared init code

// Helper wrapper around native DoIncludeScript
function include(file, scope = null) {
	if (scope == null) // default scope to this file
		scope = this;
	DoIncludeScript(file, scope);
}



// ------ util scripts ------ //
include("lib/util/document.nut")
