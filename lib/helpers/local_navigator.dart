import 'package:flutter/cupertino.dart';
import 'package:valet_club_administration/constants/controllers.dart';
import 'package:valet_club_administration/routing/router.dart';
import 'package:valet_club_administration/routing/routes.dart';

Navigator localNavigator() =>   Navigator(
      key: navigationController.navigatorKey,
      onGenerateRoute: generateRoute,
      initialRoute: overviewPageRoute,
    );



