import 'package:blockdemo/Blockclass.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class eventclass extends Bloc<blockclass,int>
{
  eventclass(int initialState) : super(initialState){
    on((blockclass bclass, emit) {

      if(bclass.m=="sum")
        {
          emit (int.parse(bclass.a!)+int.parse(bclass.b!));
        }
      else if(bclass.m=="div")
      {
        emit (int.parse(bclass.a!)~/int.parse(bclass.b!));
      }
      else if(bclass.m=="sub")
      {
        emit (int.parse(bclass.a!)-int.parse(bclass.b!));
      }
    });
  }
}
