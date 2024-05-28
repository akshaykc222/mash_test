


import 'package:injectable/injectable.dart';
import 'package:mash/mash/data/remote/data_sources/id_request_datasource.dart';
import 'package:mash/mash/data/remote/models/request/transfer_request_type_request.dart';
import 'package:mash/mash/domain/entities/id_module/id_request_entity.dart';


import '../../domain/repositories/id_request_repository.dart';


@LazySingleton(as: IdRequestRepository)
@injectable
class IdRequestTypeRepoImpl extends IdRequestRepository{
  final IdRequestTypeDataSource dataSource;

  IdRequestTypeRepoImpl( this.dataSource);

  @override
  Future<List<IdRequestEntity>> getIdRequestType(IdRequest request) {
    return dataSource.getIdRequestType(request);
  }

}