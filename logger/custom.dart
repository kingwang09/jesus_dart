import 'package:logger/logger.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

void main(){
  logger.d("hello world");
  logger.i("hello world");
  logger.w("hello world");
  logger.wtf("hello world");
}