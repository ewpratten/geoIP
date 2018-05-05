import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:core';

String apiurl = "https://ip-thingy.com/?json=true&ip=";

// Get the info from the server (used for feeding data into other functions)
GetData(String ip) async {
  apiurl += ip;
  var response = await http.get(apiurl);
  return response;
}

// Returns latitude, longitude in an array
latlong(var response) {
  Map json = JSON.decode(response.body);
  return [json['latitude'], json['longitude']];
}

// Returns the ideltification number of the ip address
ipnumber(var response) {
  Map json = JSON.decode(response.body);
  return json['ip_number'];
}

// Returns the internet protocall version
protoversion(var response) {
  Map json = JSON.decode(response.body);
  return json['ip_version'];
}

// Returns the country code of the ip address
countrycode(var response) {
  Map json = JSON.decode(response.body);
  return json['country_code'];
}

// Returns the country name
country(var response) {
  Map json = JSON.decode(response.body);
  return json['country_name'];
}

// Returns the region name
region(var response) {
  Map json = JSON.decode(response.body);
  return json['region_name'];
}

// Returns the city name
city(var response) {
  Map json = JSON.decode(response.body);
  return json['city_name'];
}

// Returns the timezone
timezone(var response) {
  Map json = JSON.decode(response.body);
  return json['time_zone'];
}

// Returns the zip code
zipcode(var response) {
  Map json = JSON.decode(response.body);
  return json['zip_code'];
}