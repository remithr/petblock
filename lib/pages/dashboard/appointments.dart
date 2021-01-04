import 'package:flutter/material.dart';
import 'package:petblock/styles/style.dart';
import 'package:table_calendar/table_calendar.dart';

class AppointmentsTab extends StatefulWidget {
  @override
  _AppointmentsTabState createState() => _AppointmentsTabState();
}

class _AppointmentsTabState extends State<AppointmentsTab> {
  Map<DateTime, List> _events;
  List _selectedEvents;
  CalendarController _calendarController;
  final _today = DateTime.now();
  GlobalKey _calendarTab = GlobalKey();
  @override
  void initState() {
    super.initState();
    final _appointmentDay = DateTime.now();

    _events = {
      _appointmentDay: [
        {
          "title": 'Nail Trim & Ear Cleaning',
          "time": "10:00 am - 11:30am",
          "place": "Main Streets New York",
          "pic": "",
          "service_provider": "Posh Pows",
          "pet_name": "Charlie",
          "age": "2 Years",
          "breed": "Labrador",
          "species": "Dog",
        },
        {
          "title": 'Shower',
          "time": "01:00pm - 02:30pm",
          "place": "Main Streets New York",
          "pic": "",
          "service_provider": "Posh Pows 1",
          "pet_name": "Max",
          "age": "2.5 Years",
          "breed": "Pug",
          "species": "Dog",
        },
      ],
      _appointmentDay.add(Duration(days: 3)): Set.from([
        {
          "title": 'Shower',
          "time": "01:00pm - 02:30pm",
          "place": "Main Streets New York",
          "pic": "",
          "service_provider": "Posh Pows 3",
          "pet_name": "Bob",
          "age": "1 Year",
          "breed": "Bulldog",
          "species": "Dog",
        },
      ]).toList(),
      _appointmentDay.subtract(Duration(days: 2)): [
        {
          "title": 'Nail Trim & Ear Cleaning',
          "time": "10:00 am - 11:30am",
          "place": "Main Streets New York",
          "pic": "",
          "service_provider": "Posh Pows 4",
          "pet_name": "Mia",
          "age": "3 Years",
          "breed": "Poodle",
          "species": "Dog",
        },
      ],
    };

    _selectedEvents = _events[_today] ?? [];
    _calendarController = CalendarController();

    // _animationController = AnimationController(
    //   vsync: this,
    //   duration: const Duration(milliseconds: 400),
    // );

    // _animationController.forward();
  }

  @override
  void dispose() {
    _calendarController.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime day, List events, List holidays) {
    print('CALLBACK: _onDaySelected');
    setState(() {
      _selectedEvents = events;
    });
  }

  void _onVisibleDaysChanged(
      DateTime first, DateTime last, CalendarFormat format) {
    _selectedEvents = [];
    getCalTabHeight();
    // _events = {};
    setState(() {});
    print('CALLBACK: _onVisibleDaysChanged');
  }

  void _onCalendarCreated(
      DateTime first, DateTime last, CalendarFormat format) {
    print('CALLBACK: _onCalendarCreated');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        _buildTableCalendar(),
        // const SizedBox(height: 4.0),
        Container(
          height: MediaQuery.of(context).size.height * 0.15,
          // child: _buildEventList(),
          child: _eventList(),
        ),
      ],
    );
  }

  getCalTabHeight() {
    print(_calendarTab.currentContext.size.height);
    print(MediaQuery.of(context).size.height);
  }

  // Simple TableCalendar configuration (using Styles)
  Widget _buildTableCalendar() {
    return TableCalendar(
      key: _calendarTab,
      calendarController: _calendarController,
      events: _events,
      // holidays: _holidays,
      startingDayOfWeek: StartingDayOfWeek.sunday,
      calendarStyle: CalendarStyle(
        selectedColor: primaryColor,
        todayColor: tgrey,
        markersColor: Colors.blue,
        outsideDaysVisible: false,
      ),
      availableCalendarFormats: const {
        CalendarFormat.month: '',
      },
      onDaySelected: _onDaySelected,
      onVisibleDaysChanged: _onVisibleDaysChanged,
      onCalendarCreated: _onCalendarCreated,
    );
  }

  Widget _buildEventList() {
    return ListView(
      children: _selectedEvents
          .map(
            (event) => Container(
              // height: 80,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.8,
                ),
                borderRadius: BorderRadius.circular(
                  12.0,
                ),
              ),
              margin: const EdgeInsets.symmetric(
                horizontal: 8.0,
                vertical: 4.0,
              ),
              child: ListTile(
                isThreeLine: true,
                title: Text(
                  event['title'].toString(),
                ),
                subtitle: Text(
                  event['time'].toString() + '\n' + event['place'].toString(),
                ),
                onTap: () {
                  print(event);
                  print(event['title']);
                },
              ),
            ),
          )
          .toList(),
    );
  }

  Widget _eventList() {
    return ListView.builder(
      itemBuilder: (BuildContext ctx, int i) {
        return Container(
          // height: 80,
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.8,
            ),
            borderRadius: BorderRadius.circular(
              12.0,
            ),
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 4.0,
          ),
          child: ListTile(
            isThreeLine: true,
            title: Text(
              _selectedEvents[i]['title'].toString(),
            ),
            subtitle: Text(
              _selectedEvents[i]['time'].toString() +
                  '\n' +
                  _selectedEvents[i]['place'].toString(),
            ),
            onTap: () {
              print(_selectedEvents);
              print(_selectedEvents[i]['title']);
              Navigator.of(context).pushNamed('appointment-details',
                  arguments: _selectedEvents[i]);
            },
          ),
        );
      },
      itemCount: _selectedEvents.length,
    );
  }
}
