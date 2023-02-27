public class ParkLocator {
    public static String[] country(String c) {
        parkService.ParksImplPort parks = new parkService.ParksImplPort();
        return parks.byCountry(c);
    }
}