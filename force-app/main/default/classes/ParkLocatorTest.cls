@isTest
private class ParkLocatorTest {
    @isTest static void testParkLocator() {
        // This causes a fake response to be generated
        Test.setMock(WebServiceMock.class, new ParkServiceMock());
        // Call the method that invokes a callout
        String[] parks = ParkLocator.country('India');
        // Verify that a fake result is returned
        System.assertEquals('Park1', parks[0]);
    }
}