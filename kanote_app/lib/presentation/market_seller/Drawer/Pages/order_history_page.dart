import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kanote_app/presentation/market_seller/res/custom_textstyles.dart';
import 'package:kanote_app/presentation/market_seller/widgets/custom_divider.dart';

import '../../res/colors.dart';
import '../views/order/custom_order_list_view.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  bool isTapped = false;
  bool isTabChanged = true;
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_ios,
              color: deepPurpleColor,
            ),
          ),
          centerTitle: false,
          title: Text(
            "Order History",
            style: TextStyle(
              color: greyColor,
            ),
          ),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "All",
                    style: styleWithDeePurpleLighter(),
                  ),
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          isTapped = !isTapped;
                        });
                      },
                      child: Image.asset(
                        "assets/images/calendar_icon.png",
                        height: 26,
                      ))
                ],
              ),
            ),
            customDivider(),
            if (isTapped) const DateFilterView(),
            SizedBox(
              height: 60,
              child: AppBar(
                backgroundColor: primaryColor,
                elevation: 0,
                bottom: TabBar(
                    onTap: (index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    labelStyle: const TextStyle(fontSize: 16),
                    isScrollable: false,
                    indicatorColor: primaryColor,
                    tabs: [
                      Tab(
                          child: Container(
                        height: 36,
                        width: 100,
                        decoration: BoxDecoration(
                            color: currentIndex == 0
                                ? secondaryPurpleColor
                                : const Color(0xffb5b5b5),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            "Pending",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      )),
                      Tab(
                          child: Container(
                        height: 36,
                        width: 100,
                        decoration: BoxDecoration(
                            color: currentIndex == 1
                                ? secondaryPurpleColor
                                : const Color(0xffb5b5b5),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            "Delivered",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      )),
                      Tab(
                          child: Container(
                        height: 36,
                        width: 100,
                        decoration: BoxDecoration(
                            color: currentIndex == 2
                                ? secondaryPurpleColor
                                : const Color(0xffb5b5b5),
                            borderRadius: BorderRadius.circular(4)),
                        child: Center(
                          child: Text(
                            "Cancelled",
                            style: TextStyle(color: primaryColor),
                          ),
                        ),
                      )),
                    ]),
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                CustomOrdeListView(),
                CustomOrdeListView(),
                CustomOrdeListView(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class DateFilterView extends StatelessWidget {
  const DateFilterView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Text(
                "From Time",
                style: styleWithDeePurpleLighter(),
              ),
              const SizedBox(
                width: 40,
              ),
              Text(
                "End Time",
                style: styleWithDeePurpleLighter(),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const StartDatePickerView(),
              const SizedBox(
                width: 5,
              ),
              const Text(
                "-",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                width: 5,
              ),
              const EndDatePickerView(),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Container(
                  height: 30,
                  width: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(2),
                      color: secondaryPurpleColor),
                  child: Center(
                      child: Text(
                    "OK",
                    style: TextStyle(color: primaryColor),
                  )),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        customDivider(),
      ],
    );
  }
}

class StartDatePickerView extends StatefulWidget {
  const StartDatePickerView({super.key});

  @override
  State<StartDatePickerView> createState() => _StartDatePickerViewState();
}

class _StartDatePickerViewState extends State<StartDatePickerView> {
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (BuildContext context) => Container(
            height: 216,
            padding: const EdgeInsets.only(top: 6.0),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: SafeArea(
              top: false,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: date,
                use24hFormat: true,
                showDayOfWeek: true,
                onDateTimeChanged: (DateTime newDateTime) {
                  setState(() => date = newDateTime);
                },
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: dividerColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${date.month}/${date.day}/${date.year}',
                style: styleWithGreySmall()),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}

class EndDatePickerView extends StatefulWidget {
  const EndDatePickerView({super.key});

  @override
  State<EndDatePickerView> createState() => _EndDatePickerViewState();
}

class _EndDatePickerViewState extends State<EndDatePickerView> {
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showCupertinoModalPopup<void>(
          context: context,
          builder: (BuildContext context) => Container(
            height: 216,
            padding: const EdgeInsets.only(top: 6.0),
            margin: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            color: CupertinoColors.systemBackground.resolveFrom(context),
            child: SafeArea(
              top: false,
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: date,
                use24hFormat: true,
                showDayOfWeek: true,
                onDateTimeChanged: (DateTime newDateTime) {
                  setState(() => date = newDateTime);
                },
              ),
            ),
          ),
        );
      },
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(2), color: dividerColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${date.month}/${date.day}/${date.year}',
                style: styleWithGreySmall()),
            const Icon(Icons.arrow_drop_down),
          ],
        ),
      ),
    );
  }
}
