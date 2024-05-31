class SelectedRange {
  String? fromDate;
  String? toDate;

  SelectedRange([this.fromDate, this.toDate]);
  // SelectedRange copyWith({})
  SelectedRange copyWith({String? fromDate, String? toDate}) {
    return SelectedRange(
      fromDate ?? this.fromDate,
      toDate ?? this.toDate,
    );
  }
}
