import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:quechainlink/pages/booking_page.dart';
import 'package:quechainlink/pages/info_on_app_page.dart';
import 'package:quechainlink/pages/detailspage.dart';
import 'package:quechainlink/pages/peoplepage.dart';
import 'package:quechainlink/start/start.dart';

//routes for when you click
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    // Getting arguments passed in while calling Navigator.pushNamed
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return GetPageRoute(
          page: () => Start(),
        );
      case '/cool':
        return GetPageRoute(
          page: () => InfoAboutApp(),
        );

      case '/listofpeople':
        return GetPageRoute(
          page: () => PeoplePage(),
        );
      case '/details':

        // Validation of correct data type
        if (args is String) {
          return GetPageRoute(
            page: () => DetailsPage(imgUrl: args),
          );
        }
        // If args is not of the correct type, return an error page.
        // You can also throw an exception while in development.
        return _errorRoute();
      case '/booking':
        return GetPageRoute(page: () => BookingPage());

      default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
