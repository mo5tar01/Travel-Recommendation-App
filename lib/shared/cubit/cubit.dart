import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sqflite/sqflite.dart';
import 'package:udemy_flutter/modules/todo_app/archived_tasks/archived_task_screen.dart';
import 'package:udemy_flutter/modules/todo_app/done_tasks/done_task_screen.dart';
import 'package:udemy_flutter/modules/todo_app/new_tasks/new_task_screen.dart';
import 'package:udemy_flutter/shared/components/constants.dart';
import 'package:udemy_flutter/shared/cubit/states.dart';

class AppCubit extends Cubit<AppStates>
{
  AppCubit() : super(AppInitialState());

  static AppCubit get(context) => BlocProvider.of(context);

  int currentIndex = 0;
  List<Widget> screens = [
    NewTaskScreen(),
    DoneTaskScreen(),
    ArchivedTaskScreen(),
  ];
  List<String> titles = [
    'Tasks',
    'Done Tasks',
    'Archived Tasks',
  ];
  void changeIndex(int index){
    currentIndex = index;
    emit(AppChangeBottomNavBarState());

  }
  late Database database;
  List <Map> newTasks = [];
  List <Map> doneTasks = [];
  List <Map> archivedTasks = [];


  void createDatabase()  {
      openDatabase(
      'todo.db',
      version: 1,
      onCreate: (database, version) {
        print('database created');
        database
            .execute(
            'CREATE TABLE tasks (id INTEGER PRIMARY KEY, title TEXT, date Text, time TEXT, status TEXT )')
            .then((value) {
          print('table created');
        }).catchError((error) {
          print('error when creating table ${error.toString()}');
        });
      },
      onOpen: (database) {
        getDataFromDatabase(database);
        print('database opened');
      },
    ).then((value)
      {
        database = value;
        emit(AppCreateDatabaseState());
      }
      );
  }

   insertToDatabase({
    required String title,
    required String time,
    required String date,
  })  async{
    await  database.transaction((txn) async {
      txn.rawInsert(
          'INSERT INTO tasks (title, date, time, status) VALUES("$title","$date","$time","new")')
          .then((value) {
        print('$value inserted successfully ');
        emit(AppInsertDatabaseState());

        getDataFromDatabase(database);
      }).catchError((error) {
        print('Error when instering new record ${error.toString()}');
      });
    });
  }

  void getDataFromDatabase(database)  {
    newTasks = [];
    doneTasks = [];
    archivedTasks = [];
    emit (AppGetDatabaseLoadingState());
     database.rawQuery('SELECT * FROM tasks').then((value) {
       value.forEach((element) {
         if (element['status'] == 'new')
           newTasks.add(element);
           else if (element['status'] == 'done')
             doneTasks.add(element);
           else if (element['status'] == 'archived')
             archivedTasks.add(element);
           else archivedTasks.add(element);

         print(element['status']);
       });
       emit (AppGetDatabaseState());
     });
  }
  void updateDate({
  required String status,
    required int id,
})async{
     database.rawUpdate(
      'UPDATE tasks SET status = ?  WHERE id = ?' ,
      ['$status' , '$id' ],
    ).then((value)
     {
       getDataFromDatabase(database);
       emit(AppUpdateDatabaseState());
     });
  }
  void deleteDate({
    required int id,
  })async{
    database.rawDelete(
      'DELETE FROM tasks   WHERE id = ?' ,
      [ '$id' ],
    ).then((value)
    {
      getDataFromDatabase(database);
      emit(AppDeleteDatabaseState());
    });
  }
  bool isBottomSheetShown = false;
  IconData fabIcon = Icons.edit;
  void changeBottomSheetState({
  required bool isShow,
    required IconData icon,
}){
    isBottomSheetShown = isShow;
    fabIcon = icon;
    emit (AppChangeBottomSheetState());

  }
  bool isDark = false;
  ThemeMode appMode = ThemeMode.dark;
void changeAppMode(){

    isDark = !isDark;


    emit(AppChangeModeState());

}
}