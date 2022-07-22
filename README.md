### CSV Processing 📇

CSV stands for Comma Separated Values.

You can open the csv file in vscode and see the data in the table.

Our goal is to parse the csv file using dart and generate a report with the following information:

- A map of `Cumulative Experience` for each department in the company.
- A list of employees names who have weak passwords `less than 5 char`.
- A list of employees names who are from `europe` and a list for who are not.

Fork and clone the [repository](https://github.com/JoinCODED/MP-Dart-CSV) to find the `main.dart` file and an `csv` file.

### Hints 💡:

- Import the `dart:io` library.

```dart
import 'dart:io';
```

- To pass arguments to the `main` function:

```dart
main(List<String> args) {
    print(args);
}
```

- Try to run the program with: `dart main.dart I'm a list of arguments!`

- To read the csv file:

```dart
  final lines = File(args.first).readAsLinesSync();
  print(lines);
```

- Run the program with: `dart main.dart employees.csv`
