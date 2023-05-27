
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:udemy_flutter/models/shop_app/login_model.dart';
import 'package:udemy_flutter/modules/shop_app/Main/Home_Screen.dart';
import 'package:udemy_flutter/modules/shop_app/login/cubit/states.dart';
import 'package:udemy_flutter/shared/components/components.dart';
import 'package:udemy_flutter/shared/network/end_point.dart';
import 'package:udemy_flutter/shared/network/remote/dio_helper.dart';

class ShopLoginCubit extends Cubit<ShopLoginState>
{
  ShopLoginCubit(ShopLoginState initialState) : super(initialState);
  static ShopLoginCubit get (context) => BlocProvider.of(context);
  ShopLoginModel? loginModel;
      void userLogin({
    required String email,
    required String password,
}){
        emit(ShopLoginLoadingState());
        DioHelper.postData(
          url:LOGIN,
          data:{
            'email' : email,
            'password': password,
          } ,).then((value){
            print(value.data);
           loginModel = ShopLoginModel.fromJson(value.data);
           print(loginModel?.data?.token);
           print(loginModel?.status);
           print(loginModel?.message);
            emit(ShopLoginSuccessState(loginModel!));
        }).catchError((error){
          print(error.toString());
          emit(ShopLoginErrorState(error.toString()));

        });
      }
}