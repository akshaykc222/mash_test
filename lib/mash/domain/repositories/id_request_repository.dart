


import 'package:mash/mash/data/remote/models/request/transfer_request_type_request.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';

abstract class IdRequestRepository{
  Future<List<IdRequestEntity>>  getIdRequestType(IdRequest request);
}