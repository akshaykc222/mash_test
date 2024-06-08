import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/request/payment_final_amount_request.dart';
import 'package:mash/mash/domain/repositories/payment_repository.dart';

import '../../../../core/usecase.dart';

@lazySingleton
@injectable
class GetPaymentFinalAmountUsecase
    implements UseCase<String, PaymentFinalRequest> {
  final PaymentRepository paymentRepository;

  GetPaymentFinalAmountUsecase({required this.paymentRepository});
  @override
  Future<String> call(PaymentFinalRequest params) {
    return paymentRepository.getPaymentFinal(params);
  }
}
