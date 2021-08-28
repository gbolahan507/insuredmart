import 'package:flutter/material.dart';
import 'package:insure_marts/ui/car_upload/pages/success_payment.dart';
import 'package:insure_marts/widget/bottomsheet/save_continue_sheet.dart';

import 'package:insure_marts/widget/export.dart';

class CarUploadScreen6 extends StatefulWidget {
  const CarUploadScreen6({Key key}) : super(key: key);

  @override
  _CarUploadScreen6State createState() => _CarUploadScreen6State();
}

class _CarUploadScreen6State extends State<CarUploadScreen6> {
  PageController controller = PageController(
    initialPage: 1,
  );
  void onRemove(CardModel card) {
    Provider.of<CardProvider>(context, listen: false).removeCard(card);
  }

  List<Widget> carding = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: CustomAppBar(
            title: 'New Car Insurance',
          ),
        ),
        body: Container(
            color: Styles.colorWhite,
            child: Column(children: [
              CarUploadHeader(
                steps: 'step 6 0f 6',
                title: 'Payment',
                indicatorwidth: 1.0,
              ),
              Expanded(
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: InkWell(
                        onTap: () {
                          showModalBottomSheet<void>(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20.0)),
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
                              color: Styles.colorBlue2,
                            ),
                            CustomText(
                              'Add New Card',
                              fontSize: 13,
                              color: Styles.colorBlue2,
                              fontWeight: FontWeight.w700,
                            )
                          ],
                        ),
                      ),
                    ),
                    verticalSpaceMedium,
                    verticalSpaceMedium,

                    Provider.of<CardProvider>(context).getCardLength() > 0
                        ? Consumer<CardProvider>(builder: (_, choose, child) {
                            for (var index = 0;
                                index < choose.cards.length;
                                index++) {
                              var cardview = Container(
                                child: CreditCardWidget(
                                  cardType: CardType.mastercard,
                                  cardNumber: choose.cards[index].cardNumber,
                                  expiryDate: choose.cards[index].exp,
                                  cardHolderName:
                                      choose.cards[index].cardHolderName,
                                  cvvCode: choose.cards[index].cvv,
                                  showBackView: false,
                                ),
                              );
                              carding.add(cardview);
                            }
                            return Container(
                                height: 220,
                                child: PageView(
                                  controller: controller,
                                  scrollDirection: Axis.horizontal,
                                  children: carding,
                                ));
                          })
                        : Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            child: EmptyCard(
                              margin: EdgeInsets.all(0),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              width: double.infinity,
                            )),
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
                                color: Styles.colorGreen1,
                              ),
                              CustomText(
                                '#181,700',
                                fontSize: 16,
                                color: Styles.colorGreen1,
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
                            buttonColor: Styles.colorBlue3,
                            onPressed: () {
                              routeTo(context, SuccessPaymennt());
                            },
                          ),
                          verticalSpaceMedium,
                          CustomButton(
                            title: 'SAVE & CONTINUE LATER',
                            fontSize: 12,
                            height: 50,
                            textColor: Styles.colorBlue3,
                            buttonColor: Styles.colorWhite,
                            onPressed: () {
                              save();
                            },
                          ),
                          verticalSpaceMedium,
                          verticalSpaceSmall
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ])));
  }

  void save() => showModalBottomSheet(
      context: context,
      builder: (context) {
        return SaveBottomSheet();
      });
}
