import 'package:fitbod_worksut_screen/screens/WorkoutBox/set_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  final PageController _controller = PageController();
  final int maxListTileCount = 10;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            'Exercise Name', // Update the title dynamically
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondaryContainer,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          leading: IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () {},
            color: Theme.of(context).colorScheme.secondaryContainer,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.timer),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.play_arrow),
            ),
          ],
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.background,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: PageView.builder(
          controller: _controller,
          itemCount: 10, // Total number of pages
          scrollDirection: Axis.vertical,
          pageSnapping: true,
          itemBuilder: (context, position) {
            return Container(
              color: Theme.of(context).colorScheme.tertiary,
              child: SingleChildScrollView(
                child: Container(
                  color: Theme.of(context).colorScheme.primary,
                  child: Column(
                    children: List.generate(maxListTileCount, (index) {
                      return SetListTile(title: 'Set Title $index');
                    }),
                  ),
                ),
              ),
            );
          },
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: SpeedDial(
          icon: FontAwesomeIcons.plus,
          backgroundColor: Theme.of(context).colorScheme.primary,
          overlayColor: Theme.of(context).colorScheme.secondary,
          overlayOpacity: 1.0,
          spacing: 10,
          spaceBetweenChildren: 20,
          label: Text(
            'ROSHI AI',
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondaryContainer,
            ),
          ),
          elevation: 0,
          children: [
            SpeedDialChild(
              elevation: 0,
              label: 'Analyse',
              labelStyle: TextStyle(
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: const Icon(FontAwesomeIcons.chartBar),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              labelBackgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            SpeedDialChild(
              elevation: 0,
              label: 'Ai Chat',
              labelStyle: TextStyle(
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: const Icon(FontAwesomeIcons.message),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              labelBackgroundColor: Theme.of(context).colorScheme.secondary,
            ),
            SpeedDialChild(
              elevation: 0,
              label: 'Rep Indicator',
              labelStyle: TextStyle(
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              child: Icon(
                FontAwesomeIcons.iCursor,
                color: Theme.of(context).colorScheme.secondaryContainer,
              ),
              backgroundColor: Theme.of(context).colorScheme.secondary,
              labelBackgroundColor: Theme.of(context).colorScheme.secondary,
            ),
          ],
        ),
      ),
    );
  }
}
