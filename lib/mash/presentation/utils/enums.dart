enum CustomBottomNavigationItems {
  home,
  timetable,
  homework,
  library,
  addOn,
}

enum ProgressIndicatorType {
  linear,
  circular,
}

enum Day { monday, tuesday, wednesday, thursday, friday, saturday, sunday }

enum ChatType {
  personal,
  group,
}

enum HomeWorkAndNoteScreenType {
  homeworkScreen,
  noteScreen,
}

enum PaymentStatusType {
  paid,
  pending,
  transaction,
}

enum DoucumentType {
  PDF,
  JPG,
  JPEG,
  PNG,
}

enum OrderStatus {
  PAID,
  ACTIVE,
  FAILED,
}

enum UserTypes { staff, student, parent }

UserTypes getUserType(String userType) {
  switch (userType) {
    case "2":
      return UserTypes.student;

    case "3":
      return UserTypes.parent;

    case "5":
      return UserTypes.staff;

    default:
      return UserTypes.student;
  }
}

enum NonAcademicTypes { all, fiction, non_fiction, bookmarks }

enum SeeAllNonAcademicTypes { subCategory, medium }

extension GetTypString on SeeAllNonAcademicTypes {
  String toName() {
    switch (this) {
      case SeeAllNonAcademicTypes.subCategory:
        return "Sub categories";
      case SeeAllNonAcademicTypes.medium:
        return "Medium";
    }
  }
}
