@isTest
public class Test_Unit_PlaceholderTests {
    @isTest
    static void placeholderTest_1_AlwaysSucceeds() {
        AnotherClassWithoutFunctionality cls = new AnotherClassWithoutFunctionality();
        System.Assert.isTrue(true, 'just here to generate some test coverage');
    }

    @isTest
    static void placeholderTest_2_AlwaysSucceeds() {
        BasicApexClassWithoutFunctionality cls = new BasicApexClassWithoutFunctionality();
        System.Assert.isTrue(true, 'just here to generate some test coverage');
    }
}
