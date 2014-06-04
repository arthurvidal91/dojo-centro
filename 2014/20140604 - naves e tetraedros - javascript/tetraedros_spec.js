var assert = require('assert');
var tetraedros = require('./tetraedros');

describe('Tetraedros', function () {
    describe('distancias ponto a ponto', function () {
        var pontoAPonto = tetraedros.pontoAPonto
        describe('no mesmo eixo', function(){
            context('no eixo x', function(){
                it('0 e 1', function () {
                    var ponto1 = [0, 0, 0],
                    ponto2 = [1, 0, 0]

                    assert.equal(pontoAPonto(ponto1, ponto2), 1)
                })
                it('só que mais longe', function () {
                    var ponto1 = [0, 0, 0],
                    ponto2 = [10, 0, 0]

                    assert.equal(pontoAPonto(ponto1, ponto2), 10)
                })
            })

            it('no mesmo eixo, só no y', function () {
                var ponto1 = [0, 1, 0],
                ponto2 = [0, 0, 0]

                assert.equal(pontoAPonto(ponto1, ponto2), 1)
            })

            it('no mesmo eixo, só no y no ponto2', function () {
                var ponto1 = [0, 0, 0],
                ponto2 = [0, 2, 0]

                assert.equal(pontoAPonto(ponto1, ponto2), 2)
            })

            it('no mesmo eixo, só no z', function () {
                var ponto1 = [0, 0, 10],
                ponto2 = [0, 0, 0]

                assert.equal(pontoAPonto(ponto1, ponto2), 10)
            })

            it('no mesmo eixo, só no z no ponto2', function () {
                var ponto1 = [0, 0, 0],
                ponto2 = [0, 0, 10]

                assert.equal(pontoAPonto(ponto1, ponto2), 10)
            })

            it('no mesmo eixo, fora da origem', function () {
                var ponto1 = [1, 0, 0],
                ponto2 = [2, 0, 0]

                assert.equal(pontoAPonto(ponto1, ponto2), 1)
            })

            it('no eixo y, fora da origem', function () {
                var ponto1 = [0, 2, 0],
                ponto2 = [0, 3, 0]

                assert.equal(pontoAPonto(ponto1, ponto2), 1)
            })

            it('no eixo z, fora da origem', function () {
                var ponto1 = [0, 0, 1],
                ponto2 = [0, 0, 2]

                assert.equal(pontoAPonto(ponto1, ponto2), 1)
            })
        })
        
    })
})
