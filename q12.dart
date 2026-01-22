// Create a Dart program that safely reads a phone number from a map. If the phone number is null,
// print a default message. Then update the phone number and print its length.
void main() {
  Map<String, String?> phoneNumber = {'phone': null};
  if (phoneNumber['phone'] == null) {
    print('No phone number found. Please update your profile');
  } else
    print(phoneNumber['phone']);
  phoneNumber['phone'] = '01006563386';
  print(phoneNumber['phone']!.length);
}
