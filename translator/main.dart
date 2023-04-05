import 'package:translator/translator.dart';

void main() async {
  final translator = GoogleTranslator();
  final input = "Здравствуйте. Ты в порядке?";

  // Using the Future API: 비동기 방식
  translator.translate(input, to: 'ko')
      .then((result) => print("Source: $input\nTranslated: $result"));

  // Passing the translation to a variable: 동기 방식
  var translation = await translator.translate("I would buy a car, if I had money.", from: 'en', to: 'ko');
  print("translation: $translation");

  // You can also call the extension method directly on the input
  //string으로 바로 처리가 가능하네?ㅎ
  print('Translated: ${await input.translate(to: 'ko')}');

}