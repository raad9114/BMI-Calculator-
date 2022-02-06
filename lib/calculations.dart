import 'dart:math';

class calculations{
  int h;
  int w;
  late double result = .9;
  calculations({required this.h,required this.w});
  calc(){
    result=(w/(h*h));
    return result.toString();
  }
  feedback(){
    if(result<18){
      return "Under Weight";
    }
    else if(result<25){
      return "Normal";
    }
    else if(result>25){
      return "Over Weight";
    }

  }

}
