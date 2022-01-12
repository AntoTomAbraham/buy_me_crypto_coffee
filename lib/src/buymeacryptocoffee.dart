import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:google_fonts/google_fonts.dart';

const String buyMeACryptoCoffeeUrl = "https://www.buymeacryptocoffee.xyz/";

/// The [BuyMeACryptoCoffeeWidget] is the widget. It has a tap event and will trigger as soon someone taps it.
/// It opens up a browser window in the default browser of the device and
/// navigates to the specified address on Buy me a crypto coffee.
class BuyMeACryptoCoffeeWidget extends StatelessWidget {
  /// The id for the user where it should link to.
  final String address;

  const BuyMeACryptoCoffeeWidget({
    Key? key,
    required this.address,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        var urlString = buyMeACryptoCoffeeUrl + address;
        if (await canLaunch(urlString)) {
          await launch(urlString);
        } else {
          throw "BuyMeACryptoCoffeWidget - Something went wrong!";
        }
      },
      child: ConstrainedBox(
        constraints: BoxConstraints(minWidth: 217.0),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 7.0, horizontal: 10.0),
          height: 53.0,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: Color(0xff9366F9), width: 1.0),
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(190, 190, 190, 0.5),
                blurRadius: 2.0,
                offset: Offset.lerp(Offset(0, 0), Offset(1, 1), 1)!,
              )
            ],
            borderRadius: BorderRadius.all(
              Radius.circular(5.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.network(
                "https://pbs.twimg.com/profile_images/1471381341480505344/ke8Wz06g_400x400.jpg",
                width: 35.0,
              ),
              SizedBox(width: 4),
              Column(
                children: [
                  Text(
                    "CRYPTO",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff9366F9),
                    ),
                  ),
                  Text(
                    "COFFEE",
                    style: GoogleFonts.poppins(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
