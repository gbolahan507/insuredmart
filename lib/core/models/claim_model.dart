import 'package:flutter/cupertino.dart';

class ClaimModel {
  final int claimId;
  double claimRating;
  final String heading;
  final String vehicleModel;
  final String date;
  final String descrpitions;
  final Color color;

  ClaimModel({
    this.claimId,
    this.claimRating,
    this.heading,
    this.vehicleModel,
    this.date,
    this.color,
    this.descrpitions,
  });
}

List<ClaimModel> claimModel = <ClaimModel>[
  ClaimModel(
      claimId: 975252,
      claimRating: 0.6,
      heading: 'Under Review And Adjustment',
      descrpitions: 'Under Review And Adjustment',
      vehicleModel: 'Camry corrola'),
  ClaimModel(
    claimId: 3567246,
    claimRating: 0.3,
    heading: 'More Info Needed',
    vehicleModel: 'Ford Focus',
    descrpitions: 'More Info Needed',
  ),
  ClaimModel(
    claimId: 3567246,
    claimRating: 0.8,
    heading: 'Offer Received',
    vehicleModel: 'Ford Focus',
    descrpitions: 'More Info Needed',
  ),
  ClaimModel(
    claimId: 3567246,
    claimRating: 1.0,
    heading: 'Offer Rejected',
    vehicleModel: 'Ford Focus',
    descrpitions: 'More Info Needed',
  ),
];
