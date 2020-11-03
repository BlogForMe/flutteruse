
class Tool {
  static log(Object object) {
    bool inProduction = const bool.fromEnvironment("dart.vm.product");
    if (!inProduction) {
      print(object);
    }
  }

  static getCurrentTime() {
    String time = DateTime.now().toString();
    List<String> list = time.split(' ');
    return list[1].substring(0, 5);
  }

  static longPrint(String msg) {
    //因为String的length是字符数量不是字节数量所以为了防止中文字符过多，
    //  把4*1024的MAX字节打印长度改为1000字符数
    int maxStrLength = 1000;
    //大于1000时
    while (msg.length > maxStrLength) {
      print(msg.substring(0, maxStrLength));
      msg = msg.substring(maxStrLength);
    }
    print(msg);
  }

  static getCurrentDate(){
    String time = DateTime.now().toString();
    List<String> list = time.split(' ');
    return list[0].replaceAll(RegExp(r'-'), '.');
  }

}
  
