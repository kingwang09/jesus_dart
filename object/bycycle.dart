class Bicycle {
  int cadence;
  int _speed = 0;
  int get speed => this._speed;
  int gear;

  /**
   * 아래 코드는 다음과 같습니다.
   * Bicycle(int cadence, int speed, int gear){
   *  this.cadence = cadence;
   *  this.speed = speed;
   *  this.gear = gear;
   * }
   */
  Bicycle(this.cadence, this.gear);

  void applyBrake(int decrement) {
    _speed -= decrement;
  }

  void speedUp(int increment) {
    _speed += increment;
  }

  @override
  String toString() => "Bicycle: $_speed mph, gear: $gear.";

}

void main(){

}