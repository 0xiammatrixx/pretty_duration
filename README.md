# pretty_duration

A tiny Dart utility for formatting Duration objects into clean, human-friendly strings.

## ✨ Features

- Short or long format

- Handles days, hours, minutes, seconds

- Zero dependencies

- Lightweight and fast

- Works on Flutter & pure Dart

## 📌 Usage
```
import 'package:pretty_duration/pretty_duration.dart';

void main() {
  print(prettyDuration(Duration(hours: 2, minutes: 14))); 
  print(prettyDuration(Duration(seconds: 45)));
  print(prettyDuration(Duration(days: 1, hours: 3), short: false));
}
```

### Output
```
2h 14m
45s
1 day 3 hours
```

## 🔧 Parameters

| Param	| Type | Default | Description|
|-------|------|---------|------------|
| duration | Duration |	required |	The input duration |
| short | bool | true |	Toggles between 2h 14m and 2 hours 14 minutes |

## 📜 License
MIT