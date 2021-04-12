
import 'package:concept_loft_webpage/locator.dart';
import 'package:concept_loft_webpage/services/analytics_service.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:url_launcher/url_launcher.dart';

class Networks {
  Networks();
  final _analytics = locator<AnalyticsService>().getAnalyticsObserver();



  launchWhatsapp() async {
    _analytics.analytics.logEvent(name: 'whatsapp_called');
    const url =
        'https://api.whatsapp.com/send?phone=573208393398&text=Estoy%20interesado%20en%20sus%20servicios%20vengo%20por%20la%20promocion%20web';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchInstagram() async {
    _analytics.analytics.logEvent(name: 'instagram_called');
    const url = 'https://instagram.com/newconceptloft?igshid=1qc2vqwpnacut';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  launchFacebook() async {
    _analytics.analytics.logEvent(name: 'facebook_called');
    const url = 'https://www.facebook.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
