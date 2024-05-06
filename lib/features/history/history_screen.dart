import 'package:easy_localization/easy_localization.dart';
import 'package:home_ease/core/theming/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:home_ease/core/theming/text_styles%20.dart';
import 'package:flutter/material.dart';
import 'package:home_ease/features/history/widget/container_past.dart';
import 'package:home_ease/features/history/widget/container_ongoing.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Durations.short3,
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        backgroundColor: ColorsApp.lightGreen,
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          title: Text('History', style: TextStyles.font18Black700),
          bottom: TabBar(
            dividerColor: ColorsApp.white,
            isScrollable: false,
            labelColor: ColorsApp.black,
            labelStyle: TextStyles.font16Black600,
            indicatorColor: ColorsApp.mainGreen,
            indicatorWeight: 4,
            tabs: const <Widget>[
              Tab(
                text: 'Ongoing',
              ),
              Tab(
                text: 'Past',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            NestedTabBarOngoing(),
            NestedTabBarPast(),
          ],
        ),
      ),
    );
  }
}
