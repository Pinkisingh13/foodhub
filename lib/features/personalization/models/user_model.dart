class UserModel {
  final String id;
  final String fullName;
  final String email;
  String phoneNumber;
  String password;
  String profilePicture;

  UserModel({
    required this.id,
    required this.fullName,
    required this.password,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  /// Helper function to get the full name.
  // String get fullName => '$firstName $lastName';

  /// Helper function to format phonenumber.
  // String get formattedNumber => PFormatter.formatPhoneNumber(phoneNumber);

  /// static function to split full name into first and last name.
  static List<String> nameParts(fullName) => fullName.split(" ");

  /// Static function to generate a username from the full name.
  static String generateUsername(fullName) {
    List<String> nameParts = fullName.split(" ");
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : "";
    String camelCaseUserName = "$firstName$lastName";
    String usernameWithPrefix = "cwt_$camelCaseUserName";
    return usernameWithPrefix;
  }

  /// static function to create an empty user model.
  static UserModel empty() => UserModel(
      id: '',
      password: '',
      fullName: '',
      email: '',
      phoneNumber: '',
      profilePicture: '');

  /// convert model to JSON structure for storing data in Firebase.
  Map<String, dynamic> toJson() {
    return {
      'FullName': fullName,
      'Email': email,
      'Password': password,
      'PhoneNumber': phoneNumber,
      'ProfilePicture': profilePicture,
    };
  }

  // Factory method to create a UserModel from a firebase document snapshot.
  // factory UserModel.fromSnapshot(
  //     DocumentSnapshot<Map<String, dynamic>> document) {
  //   if (document.data() != null) {
  //     final data = document.data()!;
  //     return UserModel(
  //       id: document.id,
  //       firstName: data['FirstName'] ?? '',
  //       lastName: data['LastName'] ?? '',
  //       userName: data['UserName'] ?? '',
  //       email: data['Email'] ?? '',
  //       phoneNumber: data['PhoneNumber'] ?? '',
  //       profilePicture: data['ProfilePicture'] ?? '',
  //     );
  //   }
  // }
}
