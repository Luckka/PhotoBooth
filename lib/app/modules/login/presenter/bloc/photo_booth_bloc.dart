import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:photo_booth/app/modules/login/presenter/bloc/photo_booth_event.dart';
import 'package:photo_booth/app/modules/login/presenter/bloc/photo_booth_state.dart';

class PhotoBoothBloc extends Bloc<PhotoBoothEvent,PhotoBoothState>{
  PhotoBoothBloc() : super(PhotoBoothState().init()){
    on<InitialEvent>(_init);
  }

  Future<void> _init(InitialEvent event, Emitter<PhotoBoothState> emit) async{
    
  }
}