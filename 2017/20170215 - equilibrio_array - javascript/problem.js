exports.equilibrio = function (vetor) {
	if (!vetor.length)
		return null

	if (vetor.length == 1)
		return 0

	if (vetor.length == 3) {

		if (vetor[0] == vetor[2])
			return 1

		var soma1 = vetor[0] + vetor[1]
		var soma2 = vetor[1] + vetor[2]

		if (soma1 > soma2)
			return vetor[0] > vetor[1] ? 0 : 1
		else 
			return vetor[1] >= vetor[2] ? 1 : 2
	}
		

	return vetor[1] > vetor[0] ? 1 : 0  

};
