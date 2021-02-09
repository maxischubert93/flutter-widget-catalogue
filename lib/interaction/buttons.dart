import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

class ButtonsScreen extends StatefulWidget {
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  @override
  Widget build(BuildContext context) {
    final typography = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return PlatformScaffold(
      appBar: PlatformAppBar(
        title: Text("Buttons"),
      ),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: [
            Text(
              "Platform Buttons:",
              style: typography.headline6,
            ),
            SizedBox(height: 10),
            PlatformButton(
              onPressed: () {},
              child: Text("Platform Button"),
            ),
            PlatformButton(
              onPressed: null,
              child: Text("Platform Button Disabled"),
            ),
            PlatformButton(
              onPressed: () {},
              child: Text(
                "Platform Button filled",
                style: TextStyle(color: colorScheme.onPrimary),
              ),
              color: colorScheme.primary,
            ),
            SizedBox(height: 10),
            PlatformButton(
              onPressed: null,
              child: Text("Filled disabled"),
              color: colorScheme.primary,
            ),
            SizedBox(height: 20),
            Text(
              "Icon Buttons:",
              style: typography.headline6,
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: PlatformIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(PlatformIcons(context).playArrowSolid),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: PlatformIconButton(
                  padding: EdgeInsets.zero,
                  onPressed: null,
                  icon: Icon(PlatformIcons(context).playArrowSolid),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: PlatformIconButton(
                  padding: EdgeInsets.zero,
                  color: colorScheme.primary,
                  onPressed: () {},
                  icon: Icon(PlatformIcons(context).playArrowSolid),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: SizedBox(
                width: 50,
                height: 50,
                child: PlatformIconButton(
                  padding: EdgeInsets.zero,
                  color: colorScheme.primary,
                  onPressed: null,
                  icon: Icon(PlatformIcons(context).playArrowSolid),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Non platform button widgets",
              style: typography.headline5,
            ),
            SizedBox(height: 20),
            Text(
              "Icon Buttons:",
              style: typography.headline6,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Elevated Button"),
            ),
          ],
        ),
      ),
    );
  }
}
