
void main() async{
  await getVersion().then((value) => print(value));
  print("end Process");
}

Future<String> getVersion() async{
  var versionName = await lookUpVersionName();
  return versionName;
}

String lookUpVersionName(){
  return "Android Q";
}