import 'package:pretty_duration/pretty_duration.dart';

void main() {
  print(prettyDuration(Duration(hours: 2, minutes: 14))); 
  print(prettyDuration(Duration(seconds: 45)));
  print(prettyDuration(Duration(days: 1, hours: 3), short: false));
}
