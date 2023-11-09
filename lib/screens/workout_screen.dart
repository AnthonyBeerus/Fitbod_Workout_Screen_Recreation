import 'package:fitbod_worksut_screen/screens/WorkoutBox/set_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WorkoutScreen extends StatefulWidget {
  @override
  _WorkoutScreenState createState() => _WorkoutScreenState();
}

class _WorkoutScreenState extends State<WorkoutScreen> {
  final PageController _controller = PageController();
  final int maxListTileCount = 4;
  final int pageCount = 5;

  void nextPage() {
    _controller.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

  void previousPage() {
    _controller.previousPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.ease,
    );
  }

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
        body: Column(
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _controller,
                itemCount: pageCount, // Total number of pages
                scrollDirection: Axis.horizontal,
                pageSnapping: true,
                itemBuilder: (context, position) {
                  return Container(
                    color: Theme.of(context).colorScheme.background,
                    child: SingleChildScrollView(
                      child: Container(
                        color: Theme.of(context).colorScheme.background,
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
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: previousPage,
                  icon: Icon(
                    Icons.arrow_back,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                SmoothPageIndicator(
                  controller: _controller,
                  count: pageCount,
                  effect: ExpandingDotsEffect(
                    dotColor: Colors.grey, // Change the color of inactive dots
                    activeDotColor: Theme
                        .of(context)
                        .colorScheme
                        .primary, // Change the color of the active dot
                    dotWidth: 18,
                  ),
                ),
                IconButton(
                  onPressed: nextPage,
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Container(
          margin: const EdgeInsets.only(bottom: 50.0,),
          child: SpeedDial(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  8.0), // Adjust the border radius as needed
            ),
            icon: FontAwesomeIcons.plus,
            foregroundColor: Colors.white,
            backgroundColor: Theme.of(context).colorScheme.primary,
            overlayColor: Theme.of(context).colorScheme.background,
            overlayOpacity: 1.0,
            spacing: 10,
            spaceBetweenChildren: 20,
            elevation: 0,
            children: [
              SpeedDialChild(
                elevation: 0,
                
                child: const Icon(FontAwesomeIcons.chartBar),
                backgroundColor: Theme.of(context).colorScheme.primary,
                labelBackgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              SpeedDialChild(
                elevation: 0,
                child: const Icon(FontAwesomeIcons.message),
                backgroundColor: Theme.of(context).colorScheme.primary,
                labelBackgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              SpeedDialChild(
                elevation: 0,
                child: Icon(
                  FontAwesomeIcons.iCursor,
                  color: Theme.of(context).colorScheme.secondaryContainer,
                ),
                backgroundColor: Theme.of(context).colorScheme.primary,
                labelBackgroundColor: Theme.of(context).colorScheme.secondary,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
