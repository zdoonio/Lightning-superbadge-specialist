/**
 * Created by dominik on 18.02.19.
 */

@isTest
private class Calculator_Tests {

    @isTest
    private static void additionTest() {
        Test.startTest();
        System.assertEquals(Calculator.addition(6,6), 12, '6 + 6 should be 12');
        Test.stopTest();
    }

    @isTest
    private static void subtractionTest() {
        Test.startTest();
        System.assertEquals(Calculator.subtraction(6,6), 0, '6 - 6 should be 0');
        Test.stopTest();
    }

    @isTest
    private static void multiplyTest() {
        Test.startTest();
        System.assertEquals(Calculator.multiply(6,6), 36, '6 * 6 should be 36');
        Test.stopTest();
    }

    @isTest
    private static void multiplyNegativeTest() {
        Test.startTest();
        List<Boolean> exceptions = new List<Boolean>();
        try {
            Calculator.multiply(6, 0);
        } catch (Calculator.CalculatorException cleException) {
            exceptions.add(true);
        }
        Test.stopTest();
        for (Boolean b : exceptions) {
            System.assert(b, 'Account should have thrown an exception');

        }
    }

    @isTest
    private static void divideTest() {
        Test.startTest();
        System.assertEquals(Calculator.divide(6,6), 1, '6 / 6 should be 1');
        Test.stopTest();
    }

    @isTest
    private static void divideFirstNegativeTest() {
        Test.startTest();
        List<Boolean> exceptions = new List<Boolean>();
        try {
            Calculator.divide(6, 0);
        } catch (Calculator.CalculatorException cleException) {
            exceptions.add(true);
        }
        Test.stopTest();
        for (Boolean b : exceptions) {
            System.assert(b, 'you still can\'t divide by zero');

        }
    }

    @isTest
    private static void divideSecondNegativeTest() {
        Test.startTest();
        Integer returnValue = -1;
        List<Boolean> exceptions = new List<Boolean>();
        try {
            Calculator.divide(6, -6);
        } catch (Calculator.CalculatorException cleException) {
            exceptions.add(true);
        }
        Test.stopTest();
        for (Boolean b : exceptions) {
            System.assert(b, 'Division returned a negative value.' + returnValue);

        }
    }
}