@isTest
private class AnimalLocatorTest {
    @isTest static  void testAnimalLocator() {
        // Set mock callout class
        Test.setMock(HttpCalloutMock.class, new AnimalLocatorMock());
        // Call method to test
        String s = AnimalLocator.getAnimalNameById(1);
        // Verify mock response is not null
        System.assertNotEquals(null, s, 'The callout returned a null response.');
        // Verify the animal name is 'chicken'
        System.assertEquals('chicken', s, 'The animal name is not "chicken".');
    }
}