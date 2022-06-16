import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../themes/palette.dart';

class TextLaunchWidget extends StatelessWidget {
  const TextLaunchWidget({Key? key, required this.url, required this.type})
      : super(key: key);
  final String url;
  final String type;

  _launch(url) async {
    String text = '';
    switch (type) {
      case 'phone':
        {
          debugPrint("working");
          text = 'tel://$url';

          break;
        }

      case 'whatsApp':
        {
          text = 'whatsapp://send?phone=$url';
          break;
        }


      case 'mail':
        {
          debugPrint("email");
          final Uri params = Uri(
            scheme: 'mailto',
            path: "$url",
          );
          String _url = params.toString();
          if (await canLaunch(_url)) {
            await launch(_url);
          } else {
            print('Could not launch $url');
          }

          break;
        }
      default:
        {
          text = url;
        }
    }
    if (text.isNotEmpty) {
      debugPrint(text);
      Uri uri = Uri.parse(text);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri);
      } else {
        throw 'Could not launch $url';
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await _launch(url);
      },
      child: RichText(
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        text: TextSpan(children: [
          TextSpan(
            text: url,
            style: TextStyle(
                color: Palette.color, decoration: TextDecoration.underline),

            //    recognizer: TapGestureRecognizer()..onTap = () => _launch(url)
          )
        ]),
      ),
    );
  }
}
