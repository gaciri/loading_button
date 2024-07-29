import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:loading_button/blocs/button/bloc.dart';
import 'package:loading_button/blocs/button/state.dart';
import 'package:loading_button/blocs/controller.dart';

class LoadingButton extends StatelessWidget {
  final double height;
  final double width;
  final Widget buttonWidget;
  final LoadingButtonController controller;

  const LoadingButton(
      {super.key, required this.height, required this.width, required this.buttonWidget, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ButtonBloc>(
      create: (context) => controller.bloc,
      child: Container(
        constraints: BoxConstraints(
          maxHeight: height,
          maxWidth: width,
        ),
        child: BlocBuilder<ButtonBloc, ButtonState>(
          builder: (context, state) {
            if(state is SuccessButtonState){
              return Center(child: _buildAlert(Icons.check_circle_rounded, state.message, Colors.lightGreen));
            } else if(state is ErrorButtonState){
              return Center(child: _buildAlert(Icons.error_outline, state.message, Colors.red));
            }  else if(state is LoadingButtonState){
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  const SizedBox(width: 4,),
                  Text(state.message)
                ],
              );
            }

            else{
              return buttonWidget;
            }

          },
        ),
      ),
    );
  }

  Widget _buildAlert(IconData iconData,String message,Color themeColor){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,color: themeColor,),
        const SizedBox(width: 4,),
        Text(message)
      ],
    );
  }

}