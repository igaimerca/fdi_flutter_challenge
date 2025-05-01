import 'package:get/get.dart';
import '../modules/welcome/views/welcome_view.dart';
import '../modules/welcome/bindings/welcome_binding.dart';

import '../modules/home/views/home_view.dart';
import '../modules/home/bindings/home_binding.dart';

import '../modules/send_money/views/send_money_view.dart';
import '../modules/send_money/bindings/send_money_binding.dart';

import '../modules/receipt/views/transfer_receipt_view.dart';
import '../modules/receipt/bindings/receipt_binding.dart';

import 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.welcome;

  static final routes = [
    GetPage(
      name: AppRoutes.welcome,
      page: () => const WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: AppRoutes.home,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: AppRoutes.sendMoney,
      page: () => const SendMoneyView(),
      binding: SendMoneyBinding(),
    ),
    GetPage(
      name: AppRoutes.receipt,
      page: () =>  TransferReceiptView(),
      binding: ReceiptBinding(),
    ),
  ];
}
