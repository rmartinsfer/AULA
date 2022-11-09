import 'dart:convert';
import 'package:apptv/response/channel_details.dart';
import 'package:apptv/response/channel_response.dart';
import 'package:http/http.dart' as http;

String apiKey = "lx6zc5gkfboymsm2vsb9z58b";
String urlHomeContent =
    "http://skytecnettv.com.br:8085/rest-api/v130/tv_home_content";
String username = "r.martins@skytecnet.com.br";
String password = "1234569999";

class ApiOxoo {
  Future<ChannelResponse> getHomeContent() async {
    final endpoint = urlHomeContent;
    String basicAuth =
        'Basic ' + base64Encode(utf8.encode('$username:$password'));
    final Url = Uri.parse(endpoint);
    final headers = {"API-KEY": apiKey, 'authorization': basicAuth};
    final response = await http.get(Url, headers: headers);
    final jsonString = response.body;
    //print(jsonString);
    final map = jsonDecode(jsonString);
    final object = ChannelResponse.fromJson(map);

    return object;
  }

  String urlChannelDetails =
      "http://skytecnettv.com.br:8085/rest-api/v130/single_details?type=tv&id=1";

  Future<ChannelDetailsResponse> getChannelDetails() async {
    final endpoint = urlHomeContent;
    final Url = Uri.parse(endpoint);
    final headers = {"API-KEY": apiKey};
    final response = await http.get(Url, headers: headers);
    final jsonString = response.body;
    //print(jsonString);
    final map = jsonDecode(jsonString);
    final object = ChannelDetailsResponse.fromJson(map);
    print(object);
    return object;
  }
}
