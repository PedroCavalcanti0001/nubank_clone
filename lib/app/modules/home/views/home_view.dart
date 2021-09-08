import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_clone/app/modules/home/widgets/account.dart';
import 'package:nubank_clone/app/modules/home/widgets/app_bar.dart';
import 'package:nubank_clone/app/modules/home/widgets/credit_card.dart';
import 'package:nubank_clone/app/modules/home/widgets/find_more.dart';
import 'package:nubank_clone/app/modules/home/widgets/life_insurance.dart';
import 'package:nubank_clone/app/modules/home/widgets/loan.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: RefreshIndicator(
          key: controller.refreshIndicatorKey,
          onRefresh: () async {
            return await Future.delayed(Duration(seconds: 3));
          },
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomAppBar(),
                  Account(controller),
                  CreditCard(),
                  Loan(),
                  LifeInsurance(),
                  FindMore(controller)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
