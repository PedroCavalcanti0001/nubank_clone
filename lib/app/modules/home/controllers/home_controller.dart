import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nubank_clone/app/data/models/account_option.dart';
import 'package:nubank_clone/app/data/models/custom_card.dart';

class HomeController extends GetxController {
  List<AccountOption> accountOptionList = [];
  List<CustomCard> findMoreCardList = [];

  final GlobalKey<RefreshIndicatorState> refreshIndicatorKey =
      GlobalKey<RefreshIndicatorState>();

  @override
  void onInit() {
    super.onInit();
    _init();
  }

  _init() {
    accountOptionList.add(AccountOption(Icons.person, ["Pix"], () {}));
    accountOptionList.add(AccountOption(Icons.person, ["Pagar"], () {}));
    accountOptionList.add(AccountOption(Icons.person, ["Transferir"], () {}));
    accountOptionList.add(AccountOption(Icons.person, ["Depositar"], () {}));
    accountOptionList
        .add(AccountOption(Icons.person, ["Recarga ", "de celular"], () {}));
    accountOptionList.add(AccountOption(Icons.person, ["Cobrar"], () {}));
    accountOptionList.add(AccountOption(Icons.person, ["Doação"], () {}));
    accountOptionList
        .add(AccountOption(Icons.person, ["Encontrar ", "atalhos"], () {}));

    findMoreCardList.add(CustomCard(
        "Parcele com a gente",
        "A loja não parcela? Faça a compra e parcele depois, direto aqui no app.",
        "Parcelar compra",
        () {},
        false));
    findMoreCardList.add(CustomCard(
        "Indique seus amigos",
        "Mostre aos seua amigos como é fácil ter uma vida sem burocracia",
        "Indicar amigos",
        () {},
        false));
    findMoreCardList.add(CustomCard(
        "Whatsapp",
        "Pagamentos seguros, rápidos e sem tarifa. A experiência Nubank sem sair da sua casa.",
        "Indicar amigos",
        () {},
        true));
  }
}
