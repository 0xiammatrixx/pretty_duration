library format_duration_iam;

String formatDuration(Duration duration, {bool short = true}) {
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
