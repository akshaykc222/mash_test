import 'package:mash/mash/domain/entities/payment/payment_dashboard_entity.dart';

class PaymentDashboardModel extends PaymentDashboardEntity {
  PaymentDashboardModel(
      {required super.feeTrackId,
      required super.planName,
      required super.instalmentName,
      required super.feeHeadName,
      required super.academicId,
      required super.feeAmount,
      required super.feeAmountPaid,
      required super.feeAmountBalance,
      required super.payableAmount,
      required super.paidDate,
      required super.annualConcession,
      required super.fineAmount,
      required super.concessionAmount,
      required super.dueDate,
      required super.due,
      required super.isDue});
  factory PaymentDashboardModel.fromJson(Map<String, dynamic> json) {
    return PaymentDashboardModel(
      feeTrackId: json['FEE_TRACK_ID'],
      planName: json['PLAN_NAME'],
      instalmentName: json['INSTALMNT_NM'],
      feeHeadName: json['FEE_HEAD_NAME'],
      academicId: json['ACCADEMIC_ID'],
      feeAmount: json['FEE_AMNT'],
      feeAmountPaid: json['FEE_AMNT_PAID'],
      feeAmountBalance: json['FEE_AMNT_BALANCE'],
      payableAmount: json['PAYABLE_AMT'],
      paidDate: json['PAID_DATE'],
      annualConcession: json['ANNUAL_CONCESSION'],
      fineAmount: json['FINE_AMOUNT'],
      concessionAmount: json['CONCESSION_AMT'],
      dueDate: json['DUE_DATE'],
      due: json['DUE'],
      isDue: json['IS_DUE'],
    );
  }
}
