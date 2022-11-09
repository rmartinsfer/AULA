import 'package:apptv/model/api_channels.dart';
import 'package:apptv/response/channel_details.dart';
import 'package:apptv/response/channel_response.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ChannelResponse? _channelResponse;
  ChannelDetailsResponse? _channelDetailsResponse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 100,
            childAspectRatio: 4 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: _channelDetailsResponse?.liveTvId?.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                // Container(
                //   child: Image.network(
                //     _channelDetailsResponse?.thumbnailUrl?[index] ?? "",
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  _channelDetailsResponse?.tvName?[index] ?? " ",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    final homeContent = ApiOxoo();
    homeContent.getHomeContent().then((getHomeValue) {
      setState(() {
        _channelResponse = getHomeValue;
      });
    });

    final channelDetails = ApiOxoo();
    channelDetails.getChannelDetails().then((getChannelDetailsValue) {
      setState(() {
        _channelDetailsResponse = getChannelDetailsValue;
      });
    });

    super.initState();
  }
}
