package tests;

using Hx0b;
using buddy.Should;
import buddy.CompilationShould;

class TestMain extends buddy.SingleSuite
{
    public function new() {
        describe("Binary literals", {
            it("should reject invalid binary string 2", {
                CompilationShould.failFor(Hx0b.b("2"));
            });

            it("should reject invalid binary string 0002", {
                CompilationShould.failFor(Hx0b.b("0002"));
            });

            it("should reject invalid binary string 0xFFFF", {
                CompilationShould.failFor(Hx0b.b("0xFFFF"));
            });

            it("should reject invalid binary string 0b1001", {
                CompilationShould.failFor(Hx0b.b("0b1001"));
            });

            it("should return 0 for 0", {
                Hx0b.b("0").should.be(0);
            });

            it("should return 0 for 00000000", {
                Hx0b.b("00000000").should.be(0);
            });

            it("should return 1 for 1", {
                Hx0b.b("1").should.be(1);
            });

            it("should return 5 for 101", {
                Hx0b.b("101").should.be(5);
            });

            it("should return 255 for 11111111", {
                Hx0b.b("11111111").should.be(255);
            });

            it("should return 146 for 10010010", {
                Hx0b.b("10010010").should.be(146);
            });
        });
    }
}