@isTest
global class AnimalLocatorMock implements HttpCalloutMock {
    // Implement this interface method
    global HTTPResponse respond(HTTPRequest request) {
        // Create a fake response
        HttpResponse response = new HttpResponse();
        response.setStatusCode(200);
        response.setBody('{"animal": {"id":1,"name":"chicken","eats":"chicken food","says":"cluck cluck"}}');
        return response;
    }
}