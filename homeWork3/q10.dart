// Create a Dart program that builds a map of country codes. Print the value for 'EG', add a new entry
// 'QA': 'Qatar', print the total length, and check if 'JO' exists—if not, print 'Jordan missing'
void main() {
  Map<String, String> countryCodes = {'EG': 'Egypt', 'LY': 'Libya'};
  print(countryCodes['EG']);
  countryCodes['QA'] = 'Qatar';
  int totalLength = countryCodes.length;
  print('total length : $totalLength');

  if (countryCodes.containsKey('JO') == false) print('Jordan missing');
}
