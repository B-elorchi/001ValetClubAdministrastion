import 'package:flutter/material.dart';
import 'package:valet_club_administration/helpers/reponsiveness.dart';
import 'package:valet_club_administration/constants/controllers.dart';
import 'package:valet_club_administration/pages/overview/widgets/available_drivers_table.dart';
import 'package:valet_club_administration/pages/overview/widgets/overview_cards_large.dart';
import 'package:valet_club_administration/pages/overview/widgets/overview_cards_medium.dart';
import 'package:valet_club_administration/pages/overview/widgets/overview_cards_small.dart';
import 'package:valet_club_administration/pages/overview/widgets/revenue_section_large.dart';
import 'package:valet_club_administration/widgets/custom_text.dart';
import 'package:get/get.dart';

import 'widgets/revenue_section_small.dart';

class OverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Obx(
            () => Row(
              children: [
                Container(
                    margin: EdgeInsets.only(
                        top: ResponsiveWidget.isSmallScreen(context) ? 56 : 6),
                    child: CustomText(
                      text: menuController.activeItem.value,
                      size: 24,
                      weight: FontWeight.bold,
                    )),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            children: [
              if (ResponsiveWidget.isLargeScreen(context) ||
                  ResponsiveWidget.isMediumScreen(context))
                if (ResponsiveWidget.isCustomSize(context))
                  OverviewCardsMediumScreen()
                else
                  OverviewCardsLargeScreen()
              else
                OverviewCardsSmallScreen(),
              if (!ResponsiveWidget.isSmallScreen(context))
                RevenueSectionLarge()
              else
                RevenueSectionSmall(),

                AvailableDriversTable(),
             
            ],
          ))
        ],
      ),
    );
  }
}
