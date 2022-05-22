class Logger {
  
  /// This Color Print is White
  Logger.d(String debug) {
    print("\u001b[37m|-------------------------------");
    print("\u001b[37m|  $debug  ");
    print("\u001b[37m|-------------------------------");
  }

  /// This Color Print is Blue
  Logger.i(String info) {
    print("\u001b[34m|-------------------------------");
    print("\u001b[34m|  $info  ");
    print("\u001b[34m|-------------------------------");
  }

  /// This Color Print is Yellow
  Logger.w(String warning){
    print("\u001b[33m|-------------------------------");
    print("\u001b[33m|  $warning  ");
    print("\u001b[33m|-------------------------------");
  }

  /// This Color Print is Red
  Logger.e(String error){
    print("\u001b[31m|-------------------------------");
    print("\u001b[31m|  $error  ");
    print("\u001b[31m|-------------------------------");
  }

}
