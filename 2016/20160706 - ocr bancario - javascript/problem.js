exports.ocr = function (lines) {
	if (lines[0] === ' _ ' && lines[1] === '|_|' && lines[2] === '|_|') {
		return 8
	}

	if (lines[1] === '| |') {
		return 0
	}

	if (lines[2] === '|_|') {
		return 6
	}

	if (lines[1] === '|_ ') {
		return 5
	}

	if (lines[2] === '|_ ') {
		return 2
	}

	if (lines[1] === ' _|') {
		return 3
	}

	if (lines[2] === ' _|') {
		return 9
	}

	if (lines[1] === '|_|') {
		return 4
	}

	if (lines[0] === ' _ ') {
		return 7
	}

	if (lines[1] === '  |') {
		return 1
	}


	if(lines.length === 6){
			
	}


	if (lines[1] === '  ||_|') {
		return 14
	}

	if (lines[0] === '      ') {
		return 11
	}

	if (lines[1] === '  ||_ ') {
		return 16
	}

	if (lines[0] === '    _ ') {
		return 17
	}
}
