import 'package:credit_card/credit_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:insure_marts/core/models/card_model.dart';
import 'package:insure_marts/core/provider/card_provider.dart';
import 'package:insure_marts/util/spacing.dart';
import 'package:insure_marts/util/styles.dart';
import 'package:insure_marts/widget/bottomsheet/add_card_sheet2.dart';
import 'package:insure_marts/widget/car_upload_header.dart';
import 'package:insure_marts/widget/custom_button.dart';
import 'package:insure_marts/widget/custom_icon.dart';
import 'package:insure_marts/widget/custom_text_widget.dart';
import 'package:insure_marts/widget/empty_card.dart';
import 'package:insure_marts/widget/size_calculator.dart';
import 'package:provider/provider.dart';




class CarUploadScreen5 extends StatefulWidget {

  @override
  _CarUploadScreen5State createState() => _CarUploadScreen5State();
}

class _CarUploadScreen5State extends State<CarUploadScreen5> {

  void onRemove(CardModel card) {
    Provider.of<CardProvider>(context, listen: false).removeCard(card);

  }



  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: Container(
        color: Styles.colorWhite,
        child: ListView(
          children: [
            SizedBox(
              height: screenAwareSize(40, context),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  CustomIcon(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  horizontalSpaceTiny,
                  CustomText(
                    'New Car Insurance',
                    color: Styles.colorBlack,
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ],
              ),
            ),
            verticalSpaceMedium,
            CarUploadHeader(
              steps: 'step 5 0f 5',
              title: 'Payment',
              indicatorwidth: 1.0,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                onTap: () {
                  showModalBottomSheet<void>(
                      shape: const RoundedRectangleBorder(
                        borderRadius:
                      BorderRadius.vertical(top: Radius.circular(20.0)),
                      ),
                      context: context,
                      isScrollControlled: true,
                      builder: (_) {
                        return AddcardSheet2();
                      });
                  print('add card');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomIcon(
                      icon: Icons.add,
                      color: Styles.colorLightBlue,
                    ),
                    CustomText(
                      'Add New Card',
                      fontSize: 13,
                      color: Styles.colorLightBlue,
                      fontWeight: FontWeight.w700,
                    )
                  ],
                ),
              ),
            ),
         Provider.of<CardProvider>(context).getCardLength() > 0 ?

            Consumer<CardProvider>(
              builder: (_, choose, child) => Container(
                          child: Container(
                            // color: Colors.red,
                margin: EdgeInsets.only(right: 20),
                height: 200,
                child: ListView.builder(
                    itemCount: choose.cards.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return  
                        CreditCardWidget(
                cardNumber: choose.cards[index].cardNumber,
                // exp: choose.cards[index].exp,
                // margin: EdgeInsets.only(left: 20),
                expiryDate: choose.cards[index].exp,
                cardHolderName: choose.cards[index].cardHolderName,
                cvvCode: choose.cards[index].cvv,
                showBackView: false,
              );
                      //   MyCard(
                      //   cardHolderName: choose.cards[index].cardHolderName,
                      //   c
                      //   id: DateTime.now().toString(),
                      //   exp: choose.cards[index].exp,
                      // );
                    }),
              ),
            ),
            ) :
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: EmptyCard(
                  margin: EdgeInsets.all(0),
                  padding: EdgeInsets.symmetric(horizontal:20, vertical: 20),
                  width: double.infinity,
                )),
            // verticalSpaceLarge,
            // 
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        'Amount Insured',
                        fontSize: 14,
                        bottomMargin: 10,
                      ),
                      CustomText(
                        '#18100',
                        fontSize: 14,
                        bottomMargin: 10,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        'Insurance Company Rate',
                        fontSize: 14,
                        bottomMargin: 10,
                      ),
                      CustomText(
                        '5%',
                        fontSize: 14,
                        bottomMargin: 10,
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        'Extension Added',
                        fontSize: 14,
                        bottomMargin: 5,
                      ),
                      CustomText(
                        '2',
                        fontSize: 14,
                        bottomMargin: 5,
                      ),
                    ],
                  ),
                  Divider(
                    color: Styles.colorDeepGreen,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        'Summary',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Styles.colorDeepGreen,
                      ),
                      CustomText(
                        '#181,700',
                        fontSize: 16,
                        color: Styles.colorDeepGreen,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  verticalSpaceMedium,
                  verticalSpaceTiny,
                  CustomButton(
                    checkicon: true,
                    newWidget: Image.asset('images/lock.png'),
                    title: 'PAY',
                    fontSize: 12,
                    height: 50,
                    buttonColor: Styles.appBackground1,
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen5()));
                    },
                  ),
                  verticalSpaceSmall,
                  CustomButton(
                    title: 'SAVE & CONTINUE LATER',
                    fontSize: 12,
                    height: 50,
                    textColor: Styles.appBackground1,
                    buttonColor: Styles.colorWhite,
                    onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) => CarUploadScreen2()));
                    },
                  ),
                  verticalSpaceMedium,
                  verticalSpaceSmall
                ],
              ),
            ),
          ],
        ),
      ),
    
    );
  }
}





