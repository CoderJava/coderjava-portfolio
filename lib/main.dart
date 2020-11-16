import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CoderJava',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          var deviceScreenType = sizingInformation.deviceScreenType;
          if (deviceScreenType == DeviceScreenType.desktop) {
            // TODO: buat UI untuk desktop
            return HomePageDesktop();
          } else if (deviceScreenType == DeviceScreenType.mobile) {
            // TODO: buat UI untuk mobile
            return Center(
              child: Text('Mobile screen'),
            );
          } else if (deviceScreenType == DeviceScreenType.tablet) {
            // TODO: buat UI untuk tablet
            return Center(
              child: Text('Tablet screen'),
            );
          } else {
            return Center(
              child: Text('Unsupported screen'),
            );
          }
        },
      ),
    );
  }
}

class HomePageDesktop extends StatefulWidget {
  @override
  _HomePageDesktopState createState() => _HomePageDesktopState();
}

class _HomePageDesktopState extends State<HomePageDesktop> {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData = MediaQuery.of(context);
    var widthScreen = mediaQueryData.size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          width: widthScreen / 2,
          padding: EdgeInsets.all(16),
          child: ListView(
            children: [
              //_buildWidgetCustomAppBar(),
              SizedBox(height: 32),
              Text(
                'Yudi Setiawan',
                style: Theme.of(context).textTheme.headline2.copyWith(color: Colors.grey[900]),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildWidgetJobTitle('Software Engineer'),
                  _buildWidgetDividerJobTitle(),
                  _buildWidgetJobTitle('Writer'),
                  _buildWidgetDividerJobTitle(),
                  _buildWidgetJobTitle('Console Gamer'),
                ],
              ),
              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _buildWidgetIconContact(FontAwesomeIcons.github, 'https://github.com/coderjava/'),
                  _buildWidgetIconContact(FontAwesomeIcons.twitter, 'https://twitter.com/CoderJavaX'),
                  _buildWidgetIconContact(FontAwesomeIcons.medium, 'https://coderjava.medium.com/'),
                  _buildWidgetIconContact(FontAwesomeIcons.linkedin, 'https://www.linkedin.com/in/yudi-setiawan-179401131/'),
                ],
              ),
              SizedBox(height: 8),
              Divider(thickness: 1),
              SizedBox(height: 8),
              Text(
                'What I\'m Doing Right Now',
                style: titleTextStyle(),
              ),
              Text(
                'Careers',
                style: subtitleTextStyle(),
              ),
              Text(
                'Working as a Mobile Software Engineer at Nusanet Medan.',
                style: bodyTextStyle(),
              ),
              SizedBox(height: 16),
              Text(
                'Activities',
                style: subtitleTextStyle(),
              ),
              Text(
                '• Learning some technology stuff from the internet, especially in mobile development.\n'
                '• Enjoying sharing my experiences throught writing on Medium.\n'
                '• I\'m currently focus learning Flutter.',
                style: bodyTextStyle(),
              ),
              SizedBox(height: 16),
              Text(
                'My Stacks',
                style: subtitleTextStyle(),
              ),
              Text(
                '• Kotlin for native Android development.\n'
                '• REST for API usage.\n'
                '• Flutter for cross platform development.\n'
                '• Understand and know how to use Git as collaborative tool.',
                style: bodyTextStyle(),
              ),
              SizedBox(height: 16),
              Text(
                'Software That I Use',
                style: subtitleTextStyle(),
              ),
              Text(
                '• Code Editor: Android Studio + plugin Vim Editor and iTerm\n'
                '• Browser: Google Chrome\n'
                '• OS: MacOS\n'
                '• HTTP Client: Insomnia\n'
                '• Others: Spotify, Discord, & Spotify\n',
                style: bodyTextStyle(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextStyle subtitleTextStyle() => Theme.of(context).textTheme.headline5.copyWith(color: Colors.grey);

  TextStyle titleTextStyle() => Theme.of(context).textTheme.headline4.copyWith(color: Colors.grey[900]);

  TextStyle bodyTextStyle() => Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.w300);

  Widget _buildWidgetIconContact(IconData iconData, String url) {
    return InkWell(
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Icon(
          iconData,
          size: 36,
        ),
      ),
    );
  }

  Widget _buildWidgetDividerJobTitle() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Text(
        '•',
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }

  Widget _buildWidgetJobTitle(String label) {
    return Container(
      color: Theme.of(context).accentColor.withOpacity(.3),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: Text(
        label,
        style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.w300),
      ),
    );
  }
}
