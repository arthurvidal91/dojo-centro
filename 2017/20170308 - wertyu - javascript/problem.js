var map = {
	'W': 'Q',
	'E': 'W',
	'R': 'E',
	'T': 'R',
	'Y': 'T',
	'U': 'Y',
	'I': 'U',
	'O': 'I',
	'P': 'O',
	'`': 'P',

	'S': 'A',
	'D': 'S',
	'F': 'D',
	'G': 'F',
	'H': 'G',
	'J': 'H',
	'K': 'J',
	'L': 'K',
	'Ç': 'L',
	'~': 'Ç',

	'X': 'Z',
	'C': 'X',
	'V': 'C',
	'B': 'V',
	'N': 'B',
	'M': 'N',
	',': 'M',
	'.': ',',
	';': '.',
	'/': ';',

	' ': ' '
}
exports.wertyu = function (message) {
	if ( !message ) return ''

	var outputmessage = ''

	for (var i = 0; i < message.length; i++) {
		outputmessage += map[message[i]]
	}

	return outputmessage
};