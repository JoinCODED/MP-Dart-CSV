import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('Usage: dart solution.dart <input_file>');
    return;
  }
  final lines = File(args.first).readAsLinesSync();
  final europe = ['Paris', 'London', 'Madrid', 'Berlin', 'Rome', 'Vienna'];
  var cumulativeExperience = {};
  var inSecurePasswords = [];
  var locals = [];
  var nonLocals = [];
  lines.removeAt(0);
  for (var line in lines) {
    final values = line.split(',');
    final department = values[5];
    final experience = int.parse(values[7]);
    final location = values[6];
    final password = values[0];
    final firstName = values[3];
    if (cumulativeExperience[department] == null) {
      cumulativeExperience[department] = experience;
    } else {
      cumulativeExperience[department] += experience;
    }

    if (password.length < 5) {
      inSecurePasswords.add(firstName);
    }

    if (europe.contains(location)) {
      locals.add(firstName);
    } else {
      nonLocals.add(firstName);
    }
  }
  print(cumulativeExperience);
  print("Insecure passwords: ${inSecurePasswords}");
  print("Locals: $locals");
  print("Non-locals: $nonLocals");
}
