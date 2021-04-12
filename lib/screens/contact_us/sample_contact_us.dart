import 'package:concept_loft_webpage/common_widgets/networks.dart';
import 'package:concept_loft_webpage/common_widgets/preset_button.dart';
import 'package:flutter/material.dart';
import 'dart:math';
import 'package:transparent_image/transparent_image.dart';
import 'dart:html';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;
import 'package:url_launcher/url_launcher.dart';

class SampleContactUs extends StatefulWidget {
  const SampleContactUs({Key key}) : super(key: key);

  @override
  _SampleContactUsState createState() => _SampleContactUsState();
}

class _SampleContactUsState extends State<SampleContactUs> {
  String cupon = "";

  @override
  void initState() {
    super.initState();
    var rng = new Random();
    int random = rng.nextInt(100);
    cupon = "CONCPT$random";
  }

  Widget getMap() {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final xCaretUbication = LatLng(4.6727389,-74.0722429);

      final mapOptions = MapOptions()
        ..zoom = 15
        ..center = LatLng(33.821303336425125, -117.98206076620306)
        ..gestureHandling = "cooperative";

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      final mark = Marker(MarkerOptions()
        ..position = xCaretUbication
        ..map = map
        ..clickable = true);
      var xCaretEventsText = '<div id="content">' +
          '<div id="siteNotice">' +
          '</div>' +
          '<h1 id="firstHeading" class="firstHeading">Xcaret Events</h1>' +
          '<div id="bodyContent">' +
          '<p>Specialized in High End Events'
              '</p> Make your dream come true, contact us and get your quote</p>' +
          '<p>Contact Us:  <a href="https://api.whatsapp.com/send?phone=+17143567188">' +
          'Whatsapp Business</a> ' +
          '</p>' +
          '<p>How to get?<a href="https://www.google.com/maps/search/?api=1&query=2746W%20Stonybrook%20DR%20Anaheim%2C%20District%20of%20California%2C%2020003">' +
          'Get directions on Google Maps</a></p>' +
          '</div>' +
          '</div>';
      final infoXcaret =
          InfoWindow(InfoWindowOptions()..content = xCaretEventsText);
      mark.onClick.listen((event) => infoXcaret.open(map, mark));
      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final net = Networks();

    return Container(
      color: Color(0xFFf4ece7),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "ConceptLoft a unos clicks de distancia",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: width * 0.04,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Usa este cupon de descuento para tu primera compra!",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: width * 0.02,
            ),
          ),
          Text(
            "$cupon",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w200,
              fontSize: width * 0.02,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => net.launchWhatsapp(),
                  child: Container(
                    color: Color(0xFF25D366),
                    height: 100,
                    padding: EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/img/whatsapp.png',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => net.launchFacebook(),
                  child: Container(
                    color: Color(0xFF3b5998),
                    height: 100,
                    padding: EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/img/facebook.png',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () => net.launchInstagram(),
                  child: Container(
                    color: Color(0xFF833AB4),
                    height: 100,
                    padding: EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/img/instagram.png',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              /*
              Expanded(
                child: InkWell(
                  onTap: () => net.launchYelp(),
                  child: Container(
                    color: Color(0xFFc41200),
                    height: 100,
                    padding: EdgeInsets.all(25),
                    child: Image.asset(
                      'assets/img/yelp.png',
                      color: Colors.white,
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              */
            ],
          ),
          SizedBox(
            height: 600,
            child: getMap(),
          ),
        ],
      ),
    );
  }
}
