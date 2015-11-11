import spock.lang.*
import erdos

class ErdosSpec extends spock.lang.Specification {
    def "only Erdos"() {
        expect:
		erdos.numbers(["X": ["Erdos"]]) == ["Erdos": 0]
	}

	def "Erdos with other one"() {
        expect:
		erdos.numbers([
			"X": ["Erdos", "Ze"]]) == ["Erdos": 0, "Ze": 1]
	}
		
	def "Erdos with many authors"(){
        expect:
		erdos.numbers([
			"X": ["Erdos", "Ze", "Maria"]]) == ["Erdos": 0, "Ze": 1, "Maria": 1]
	}
}