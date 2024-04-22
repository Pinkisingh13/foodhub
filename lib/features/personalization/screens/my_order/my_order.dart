import 'package:flutter/material.dart';
import 'package:foodhub/features/personalization/screens/my_order/widgets/single_tabbarview.dart';
import 'package:foodhub/features/shop/models/restaurant/restaurant.dart';
import 'package:foodhub/utils/constants/colors.dart';


class MyOrder extends StatelessWidget {
  const MyOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Orders"),
      ),
      body: Column(
        // shrinkWrap: true,
        children: [
          DefaultTabController(
            length: 2,
            child: Column(
              children: [
                const TabBar(
                  indicatorColor: PColors.secondary,
                  labelColor: PColors.primary,
                  padding: EdgeInsets.all(10),
                  tabs: [
                    Tab(
                      text: "Ongoing",
                    ),
                    Tab(
                      text: "History",
                    ),
                  ],
                ),
                SizedBox(
                  height: 580,
                  child: TabBarView(
                    children: [
                      const TabBarViewWidgets(
                        status: "Ongoing",
                        length: 2,
                      ),
                      TabBarViewWidgets(
                        status: "Completed",
                       length:  restaurantDetails.length - 9
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

