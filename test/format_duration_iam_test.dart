import 'package:format_duration_iam/format_duration_iam.dart';

void main() {
  print(formatDuration(Duration(hours: 2, minutes: 14))); 
  print(formatDuration(Duration(seconds: 45)));
  print(formatDuration(Duration(days: 1, hours: 3), short: false));
}
