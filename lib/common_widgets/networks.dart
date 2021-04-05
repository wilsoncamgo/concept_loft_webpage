
import 'package:concept_loft_webpage/locator.dart';
import 'package:concept_loft_webpage/services/analytics_service.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:url_launcher/url_launcher.dart';

class Networks {
  Networks();
  final _analytics = locator<AnalyticsService>().getAnalyticsObserver();

  launchForm() async {
    _analytics.analytics.logEvent(name: 'form_called');
    const url = 'https://forms.gle/TdYHfg8kQ4CSs85J8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchWhatsapp() async {
    _analytics.analytics.logEvent(name: 'whatsapp_called');
    const url =
        'https://api.whatsapp.com/send?phone=573228648959&text=Estoy%20interesado%20en%20sus%20servicios%20vengo%20por%20la%20promocion%20web';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchInstagram() async {
    _analytics.analytics.logEvent(name: 'instagram_called');
    const url = 'https://www.instagram.com/afiliaciones_eps_7_agosto/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchBlog() async {
    _analytics.analytics.logEvent(name: 'blog_called');
    const url = 'https://blog.alianzaseguridadsocial.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchFacebook() async {
    _analytics.analytics.logEvent(name: 'facebook_called');
    const url = 'https://www.facebook.com/alianzaseguridadsocial';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
