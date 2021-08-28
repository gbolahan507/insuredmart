import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/progress_bar/gf_progress_bar.dart';
import 'package:insure_marts/core/view_model/others_vm.dart';
import 'package:insure_marts/ui/claim/new_claim_screen.dart';
import 'package:insure_marts/ui/claim/page/Rreject_claim.dart';
import 'package:insure_marts/ui/claim/page/claim_discharge.dart';
import 'package:insure_marts/util/constant/base_view.dart';
import 'package:insure_marts/widget/export.dart';

class MyClaimScreen extends StatefulWidget {
  @override
  _MyClaimScreenState createState() => _MyClaimScreenState();
}

class _MyClaimScreenState extends State<MyClaimScreen> {
  bool about = false;
  bool viewdetails = false;

  @override
  Widget build(BuildContext context) {
    return BaseView<OthersViewModel>(
        onModelReady: (OthersViewModel model) => model.getClaimModel(),
        builder: (_, OthersViewModel model, __) {
          return Scaffold(
              appBar: PreferredSize(
                preferredSize: Size.fromHeight(70),
                child: CustomAppBar(
                  title: 'Claims',
                  check: true,
                  backbutton: false,
                ),
              ),
              body: model.busy
                  ? Center(child: CupertinoActivityIndicator())
                  : Container(
                      child: ListView.builder(
                          itemCount: model.claimModel?.length ?? 0,
                          itemBuilder: (context, index) {
                            print(model.claimModel.length);
                            return buildGetClaim(context, model, index);
                          }),
                    ));
        });
  }

  Padding buildGetClaim(
      BuildContext context, OthersViewModel model, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
      child: Column(
        children: [
          CustomContainer(
            containerColor: Styles.colorGrey1,
            borderColor: Styles.colorGrey1,
            onPressed: () {
              routeTo(context, NewClaimScreen());
            },
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            widget: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  'Claim #${model.claimModel[index].claimId}',
                  color: Styles.colorBlack,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  bottomMargin: 20,
                ),
                CustomText(
                  'Claim status',
                  // color: Styles.colorBlack,
                  fontSize: 12,
                  bottomMargin: 5,
                ),
                GFProgressBar(
                  percentage: model.claimModel[index].claimRating,
                  lineHeight: 13,
                  alignment: MainAxisAlignment.spaceBetween,
                  backgroundColor: Colors.black26,
                  progressBarColor:
                      model.claimModel[index].claimRating <= 0.3 ||
                              model.claimModel[index].claimRating == 1.0
                          ? Styles.colorRed
                          : model.claimModel[index].claimRating >= 0.5 &&
                                  model.claimModel[index].claimRating < 0.7
                              ? Styles.colorNavGreen
                              : model.claimModel[index].claimRating >= 0.7 ||
                                      model.claimModel[index].claimRating < 1.0
                                  ? Styles.colorBlack
                                  : Styles.colorRed,
                ),
                CustomText(
                  '${model.claimModel[index].heading}',
                  color: model.claimModel[index].claimRating <= 0.3 ||
                          model.claimModel[index].claimRating == 1.0
                      ? Styles.colorRed
                      : model.claimModel[index].claimRating >= 0.5 &&
                              model.claimModel[index].claimRating < 0.7
                          ? Styles.colorNavGreen
                          : model.claimModel[index].claimRating >= 0.7 ||
                                  model.claimModel[index].claimRating < 1.0
                              ? Styles.colorBlack
                              : Styles.colorRed,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  bottomMargin: model.claimModel[index].claimRating >= 0.7 &&
                          model.claimModel[index].claimRating < 1.0
                      ? 25
                      : 0,
                  topMargin: 8,
                ),
                model.claimModel[index].claimRating >= 0.7 &&
                        model.claimModel[index].claimRating < 1.0
                    ? Column(children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          decoration: BoxDecoration(
                            color: Styles.colorGrey2,
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Styles.colorGrey2, blurRadius: 4),
                            ],
                          ),
                          child: Column(
                            children: [
                              Heading(
                                title: 'Claim Detail',
                                color: Styles.colorBlack,
                                onTap: () {
                                  about = !about;
                                  setState(() {});
                                },
                              ),
                              about
                                  ? Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              CustomText(
                                                'Cover',
                                                fontSize: 12,
                                                bottomMargin: 5,
                                              ),
                                              CustomText(
                                                'Camry Toyota',
                                                color: Styles.colorBlue3,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                bottomMargin: 20,
                                              ),
                                              CustomText(
                                                'Policy/Policy Number',
                                                fontSize: 12,
                                                bottomMargin: 5,
                                              ),
                                              CustomText(
                                                'Joshua Hawkins’s Car Insurance',
                                                color: Styles.colorBlue3,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                bottomMargin: 20,
                                              ),
                                              CustomText(
                                                'Date of Incident',
                                                fontSize: 12,
                                                bottomMargin: 5,
                                              ),
                                              CustomText(
                                                '20-02-2021',
                                                color: Styles.colorBlack,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold,
                                                bottomMargin: 20,
                                              ),
                                              CustomText(
                                                'Claim Description',
                                                fontSize: 12,
                                                bottomMargin: 5,
                                              ),
                                              CustomText(
                                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At sed venenatis et vel magna.',
                                                color: Styles.colorBlack,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                bottomMargin: 20,
                                                textAlign: TextAlign.start,
                                              ),
                                              CustomText(
                                                'Claimed Amount',
                                                fontSize: 12,
                                                bottomMargin: 5,
                                              ),
                                              CustomText(
                                                '#21,085337.00',
                                                color: Styles.colorBlack,
                                                fontSize: 13,
                                                fontWeight: FontWeight.normal,
                                                bottomMargin: 20,
                                                textAlign: TextAlign.start,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  : SizedBox()
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  'Final Offer',
                                  fontSize: 12,
                                  bottomMargin: 5,
                                  topMargin: 20,
                                ),
                                CustomText(
                                  '#21,085337.00',
                                  color: Styles.colorNavGreen,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  bottomMargin: 15,
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              viewdetails = !viewdetails;
                            });
                          },
                          child: Row(
                            children: [
                              CustomText(
                                'VIEW OFFER DETAILS',
                                color: Styles.colorblue2,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                textAlign: TextAlign.start,
                              ),
                              horizontalSpaceSmall,
                              CustomIcon(
                                  icon: viewdetails
                                      ? Icons.arrow_drop_up
                                      : Icons.arrow_drop_down,
                                  color: Styles.colorblue2,
                                  size: 25,
                                  onPressed: () {})
                            ],
                          ),
                        ),
                        verticalSpaceSmall,
                        viewdetails
                            ? Column(
                                children: [
                                  Container(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 10),
                                    decoration: BoxDecoration(
                                      color: Styles.colorGrey2,
                                      boxShadow: <BoxShadow>[
                                        BoxShadow(
                                            color: Styles.colorGrey2,
                                            blurRadius: 4),
                                      ],
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            CustomText(
                                              'Policy Terms',
                                              fontSize: 12,
                                              bottomMargin: 10,
                                            ),
                                          ],
                                        ),
                                        CustomText(
                                          'Our Comprehensive Motor Insurance provides the widest cover against fire, theft and other damages caused to your vehicle. It also covers death, bodily injury and damages to the vehicle or property of third parties caused by the insured vehicle(s)',
                                          textAlign: TextAlign.start,
                                          fontSize: 12,
                                          fontWeight: FontWeight.normal,
                                          color: Styles.colorBlack,
                                        )
                                      ],
                                    ),
                                  ),
                                  verticalSpaceMedium,
                                  Row(
                                    children: [
                                      Expanded(
                                        child: CustomButton(
                                          height: 40,
                                          title: 'ACCEPT',
                                          onPressed: () => routeTo(
                                              context, ClaimDischargePage()),
                                          textColor: Styles.colorBlue3,
                                          fontSize: 12,
                                          borderColor: Styles.colorGrey2,
                                          buttonColor: Styles.colorGrey2,
                                        ),
                                      ),
                                      horizontalSpaceMedium,
                                      Expanded(
                                        child: CustomButton(
                                          height: 40,
                                          title: 'DECLINE',
                                          onPressed: () => routeTo(
                                              context, RejectClaimPage()),
                                          textColor: Styles.colorRed,
                                          fontSize: 12,
                                          borderColor: Styles.colorGrey2,
                                          buttonColor: Styles.colorGrey2,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            : SizedBox(),
                      ])
                    : SizedBox(),
                verticalSpaceMedium,
                model.claimModel[index].claimRating >= 0.7 &&
                        model.claimModel[index].claimRating < 1.0
                    ? SizedBox()
                    : Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CustomText(
                                  'Asset',
                                  fontSize: 12,
                                  bottomMargin: 5,
                                ),
                                CustomText(
                                  'Camry Toyota',
                                  color: Styles.colorBlue3,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  bottomMargin: 20,
                                ),
                                CustomText(
                                  'Date of Incident',
                                  fontSize: 12,
                                  bottomMargin: 5,
                                ),
                                CustomText(
                                  '20-02-2021',
                                  color: Styles.colorBlack,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  bottomMargin: 20,
                                ),
                                CustomText(
                                  'Claim Description',
                                  fontSize: 12,
                                  bottomMargin: 5,
                                ),
                                CustomText(
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. At sed venenatis et vel magna.',
                                  color: Styles.colorBlack,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal,
                                  bottomMargin: 20,
                                  textAlign: TextAlign.start,
                                ),
                                model.claimModel[index].claimRating == 1.0
                                    ? Row(
                                        children: <Widget>[
                                          OthersPackage(
                                              title: 'Asking Repair Amount',
                                              subTitleColor:
                                                  Styles.colorDeepGreen,
                                              subtitle: '#23,18253,52'),
                                          OthersPackage(
                                              title: 'Approved Amount',
                                              subTitleColor:
                                                  Styles.colorDeepGreen,
                                              subtitle: '#00000.00')
                                        ],
                                      )
                                    : SizedBox(),
                                verticalSpaceMedium,
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CustomIcon(
                                      icon: Icons.edit,
                                      size: 25,
                                    ),
                                    horizontalSpaceMedium,
                                    CustomIcon(
                                      icon: Icons.delete,
                                      size: 25,
                                      onPressed: () =>
                                          routeTo(context, NewClaimScreen()),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
