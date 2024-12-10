import 'package:ativ_volley_app/presentation/widgets/home/header.dart';
import 'package:flutter/services.dart';
import 'package:ativ_volley_app/core/system_colors.dart';
import 'package:ativ_volley_app/core/buttons/add_button.dart';
import 'package:ativ_volley_app/presentation/widgets/home/initial_buttons.dart';
import 'package:ativ_volley_app/presentation/widgets/home/team_details_list.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]); // Define a orientação para portrait

    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.immersive,
    ); // Remove a barra de notificações para modo tela cheia
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: SystemColors.blue2,
        fontFamily: 'Concert One',
      ),
      home: const Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: TopWidget(),
              ),

              Spacer(flex: 2),

              TeamsContainer(), // centralizado

              Spacer(flex: 2),

              InitialButtons(),

              Spacer(flex: 5),
            ],
          ),
        ),
        floatingActionButton: AddButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      ),
    );
  }
}
