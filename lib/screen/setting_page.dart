import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled1/themes/theme_provider.dart';
class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(title: Text("Setting"),
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //dark mode
            Text("Dark Mode",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            //switch
            CupertinoSwitch(
                value: Provider.of<ThemeProvider>(context,listen:false).isDarkMode,
                onChanged: (value)=>Provider.of<ThemeProvider>(context,listen:false).toggleTheme()
            ),

          ],
        ),
      ),
    );
  }
}
