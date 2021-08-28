import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:insure_marts/core/provider/card_provider.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:provider/provider.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';

class AddcardSheet2 extends StatefulWidget {
  @override
  _AddcardSheet2State createState() => _AddcardSheet2State();
}

class _AddcardSheet2State extends State<AddcardSheet2> {
  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;
  final _formKey = new GlobalKey<FormState>();

  void onadd() {
    CardModel card = CardModel(
      cardHolderName: cardHolderName,
      cardNumber: cardNumber,
      exp: expiryDate,
      cvv: cvvCode,
      id: DateTime.now().toString(),
    );

    print(cardHolderName);
    print(cardNumber);
    print(expiryDate);
    print(cvvCode);
    Provider.of<CardProvider>(context, listen: false).addCard(card);
    Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          children: [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                obscureCardNumber: true,
                obscureCardCvv: true,
                showBackView: isCvvFocused),
            CreditCardForm(
              expiryDate: expiryDate,
              cardHolderName: cardHolderName,
              cvvCode: cvvCode,
              cardNumber: cardNumber,
              themeColor: Styles.colorNavGreen,
              formKey: _formKey,
              onCreditCardModelChange: onCreditCardModelChange,
              cardNumberDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Number',
                  hintText: 'xxxx xxxx xxxx xxxx'),
              expiryDateDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Expiry Date',
                  hintText: 'xx/xx'),
              cvvCodeDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'CVV',
                  hintText: 'xxx'),
              cardHolderDecoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Card Holder Name',
                  hintText: 'Aramide'),
            ),
            verticalSpaceMedium,
            Container(
              padding: EdgeInsets.all(20),
              child: CustomButton(
                title: 'Check',
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    onadd();
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cardHolderName = creditCardModel.cardHolderName;
      cvvCode = creditCardModel.cvvCode;
      isCvvFocused = creditCardModel.isCvvFocused;
    });
  }
}
