import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:habit_tracker/themes/themeprov.dart';
import 'package:provider/provider.dart';

class homepg extends StatefulWidget {
  const homepg({super.key});

  @override
  State<homepg> createState() => _homepgState();
}

class _homepgState extends State<homepg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Habit Tracker.", style: GoogleFonts.b612()),
        centerTitle: true,
        elevation: 900,
      ),

      drawer: Drawer(
        backgroundColor: Theme.of(context).colorScheme.surface,
        child: Center(
          child: Switch(
            //value: true,
            value: Provider.of<themeprovider>(context).isDark,
            onChanged: (value) {
              Provider.of<themeprovider>(context, listen: false).toggleTheme();
            },
          ),
        ),
      ),
    );
  }
}
