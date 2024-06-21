import 'package:equatable/equatable.dart';

class GetAddOnEntity extends Equatable {
  final double categoryId;
  final String categoryName;
  final String? description;
  final double imgStatus;
  final double categoryType;
  final String imgUrl;

  const GetAddOnEntity({required this.categoryId, required this.categoryName, required this.description, required this.imgStatus, required this.categoryType, required this.imgUrl});


  @override
  List<Object?> get props => [categoryId];
}
