import 'dart:io';
import 'dart:math';

void main() {
  int num, userGuess;
  Random random = Random();
  num = random.nextInt(10) + 1;

  print(
      'Random Number has been generated It is between 1 to 100 \n Try to guess it.');

  while (true) {
    print('Guess:');
    userGuess = int.parse(stdin.readLineSync()!);
    if (userGuess > num) {
      print('You guessed a bit high try lower.');
    } else if (userGuess < num) {
      print('You guessed a bit low try higher');
    } else {
      break;
    }
  }
  print('Congratulations you guessed it right.');
}
