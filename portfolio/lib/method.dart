import 'package:url_launcher/url_launcher.dart';

class Method {
  launchURL(String link) async {
    print('pressed');
    var url = link;
    //const url =
    //   'https://drive.google.com/file/d/1V_dgikOvorZBzhFAt5cqShijqtTg6hfv/view?usp=share_link';
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    } else {
      throw 'Could not launch $url';
    }
  }

  launchCaller() async {
    const url = "tel:8979043181";
    if (await canLaunchUrl(url as Uri)) {
      await launchUrl(url as Uri);
    } else {
      throw 'Could not launch $url';
    }
  }

  launchEmail() async {
    // ignore: deprecated_member_use
    if (await canLaunch("mailto:vaishnavisangal787@gmail.com")) {
      // ignore: deprecated_member_use
      await launch("mailto:vaishnavisangal787@gmail.com");
    } else {
      throw 'Could not launch';
    }
  }
}
