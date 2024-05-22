part of 'drawer_bloc.dart';

@freezed
class DrawerState with _$DrawerState {
  const factory DrawerState({
    required ResponseClassify<List<NewsBoardEntity?>> newsBoardResponse,
    required ResponseClassify<String> pdfDownLoadResponse,
    required int pdfDownloadProgressState,
  }) = _DrawerState;
  factory DrawerState.initial() => DrawerState(
        newsBoardResponse: ResponseClassify.initial(),
        pdfDownLoadResponse: ResponseClassify.initial(),
        pdfDownloadProgressState: 0,
      );
}
