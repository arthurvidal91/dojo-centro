var assert = require ('assert'),
    ocr = require('./problem').ocr;

describe('ocr', function() {
    it('simple sample', function () {
        var bar = ["   ",
                   "   ",
                   "   "]
        assert.equal(ocr(bar), undefined)
    })

    it('one', function () {
        var bar = ["   ",
                   "  |",
                   "  |"]
        assert.equal(ocr(bar), 1)
    })

    it('seven', function () {
        var bar = [" _ ",
                   "  |",
                   "  |"]
        assert.equal(ocr(bar), 7)
    })

    it('four', function () {
        var bar = ["   ",
		           "|_|",
		           "  |"]
        assert.equal(ocr(bar), 4)
    })

    it('nine', function () {
        var bar = [" _ ",
		           "|_|",
		           " _|"]
        assert.equal(ocr(bar), 9)
    })

    it('five', function () {
        var bar = [" _ ",
		           "|_ ",
		           " _|"]
        assert.equal(ocr(bar), 5)
    })

    it('three', function () {
        var bar = [" _ ",
		           " _|",
		           " _|"]
        assert.equal(ocr(bar), 3)
    })

    it('two', function () {
        var bar = [" _ ",
		           " _|",
		           "|_ "]
        assert.equal(ocr(bar), 2)
    })

    it('six', function () {
        var bar = [" _ ",
		           "|_ ",
		           "|_|"]
        assert.equal(ocr(bar), 6)
    })

    it('eight', function () {
        var bar = [" _ ",
		           "|_|",
		           "|_|"]
        assert.equal(ocr(bar), 8)
    })

    it('zero', function () {
        var bar = [" _ ",
		           "| |",
		           "|_|"]
        assert.equal(ocr(bar), 0)
    })

    it('eleven', function () {
        var bar = ["      ",
                   "  |  |",
                   "  |  |"]
        assert.equal(ocr(bar), 11)
    })

    it('seventeen', function () {
        var bar = ["    _ ",
                   "  |  |",
                   "  |  |"]
        assert.equal(ocr(bar), 17)
    })

    it('sixteen', function () {
        var bar = ["    _ ",
                   "  ||_ ",
                   "  ||_|"]
        assert.equal(ocr(bar), 16)
    })

    it('fourteen', function () {
        var bar = ["      ",
                   "  ||_|",
                   "  |  |"]
        assert.equal(ocr(bar), 14)
    })
})