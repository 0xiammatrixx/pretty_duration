library pretty_duration;

/// Converts a [Duration] into a human-readable string.
///
/// Example:
/// ```dart
/// prettyDuration(Duration(hours: 2, minutes: 45)); // "2h 45m"
/// prettyDuration(Duration(days: 1, hours: 3), short: false); // "1 day 3 hours"
/// ```
String prettyDuration(Duration duration, {bool short = true}) {
  if (duration.inSeconds < 1) return short ? "0s" : "0 seconds";

  final days = duration.inDays;
  final hours = duration.inHours % 24;
  final minutes = duration.inMinutes % 60;
  final seconds = duration.inSeconds % 60;

  final parts = <String>[];

  if (days > 0) {
    parts.add(
      short ? "${days}d" : "$days day${days == 1 ? '' : 's'}",
    );
  }

  if (hours > 0) {
    parts.add(
      short ? "${hours}h" : "$hours hour${hours == 1 ? '' : 's'}",
    );
  }

  if (minutes > 0) {
    parts.add(
      short ? "${minutes}m" : "$minutes minute${minutes == 1 ? '' : 's'}",
    );
  }

  if (seconds > 0) {
    parts.add(
      short ? "${seconds}s" : "$seconds second${seconds == 1 ? '' : 's'}",
    );
  }

  return parts.join(" ");
}
