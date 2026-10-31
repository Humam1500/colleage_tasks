import 'package:colleage_tasks/Pages/QuizTask/Answer.dart';
import 'package:colleage_tasks/Pages/QuizTask/Answer2.dart';
import 'package:colleage_tasks/Pages/QuizTask/Answer3.dart';
import 'package:colleage_tasks/Pages/QuizTask/ResultScreen.dart';
import 'package:colleage_tasks/Pages/QuizTask/StartQuiz.dart';
import 'package:flutter/material.dart';

class Quizpage extends StatefulWidget {
  const Quizpage({super.key});

  @override
  State<Quizpage> createState() => _QuizpageState();
}
class _QuizpageState extends State<Quizpage> {
  int stage=0;
  bool _isCorrect=false;
  void _startQuiz(){
    setState(() {
      stage=1;
    });
  }

    void _answer(bool isCorrect){
      setState(() {
        _isCorrect=isCorrect;
        stage=isCorrect ? 2 : 4;
      });
      

    }

    void _answer2(bool isCorrect){
      setState(() {
        _isCorrect=isCorrect;
        stage=isCorrect ? 3 : 4;
      });
    }

    void _answer3(bool isCorrcet){
      setState(() {
        _isCorrect=isCorrcet;
        stage=4;
      });
    }


      
    void restart(){
      setState(() {
        _isCorrect=false;
        stage=0;
      });
    }

    

    Widget _currentScreen(){
      if(stage==0){
        return Startquiz(onStartQuiz:_startQuiz,);
      }else if(stage==1){
        return Answer(onAnswer: _answer);
      }else if(stage==2){
        return Answer2(onAnswer: _answer2);
      }else if(stage==3){
        return Answer3(onAnswer: _answer3);
      }
      else{
        return Resultscreen(isCorrect: _isCorrect, onRestart: restart);
      }


    }
 
  
 @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Center(
        child: _currentScreen(),
      ),
    );
  }
  

    
    }


