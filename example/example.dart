import 'package:geoip/geoip.dart' as geoip;

main() async {
  var Data = await geoip.GetData("1.1.1.1");

  print(geoip.latlong(Data)[0]); // Print latitude

  print(geoip.latlong(Data)[1]); // Print longitude

  print(geoip.ipnumber(Data)); // Print ip address number

  print(geoip.protoversion(Data)); //Print internet protocall version

  print(geoip.region(Data)); // Print  region

  print(geoip.countrycode(Data)); // Print countrycode

  print(geoip.country(Data)); // Print country

  print(geoip.city(Data)); // Print city

  print(geoip.timezone(Data)); // Print timezone (+10:00)

  print(geoip.zipcode(Data)); // Print zipcode
}