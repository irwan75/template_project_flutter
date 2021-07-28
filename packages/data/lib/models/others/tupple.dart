class Tupple<HandleFailure, OnSuccess> {
  HandleFailure? handleFailure;
  OnSuccess? onSuccess;

  Tupple({this.handleFailure, this.onSuccess});
}