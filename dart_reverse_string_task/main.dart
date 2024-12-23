import 'dart:io';

void main() {
  print('Please enter long string containing multiple words: ');
  String sentence = stdin.readLineSync()!;
  reverseString(sentence);
}

void reverseString(String sentence) {
  String reversedSentence = '';
  List<String> wordsList = sentence.split(' ');
  for (int i = wordsList.length - 1; i >= 0; i--) {
    reversedSentence += wordsList[i];
    if(i != 0) {
      reversedSentence += ' ';
    }
  }
  print(reversedSentence);
}