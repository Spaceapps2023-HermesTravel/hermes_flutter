import 'package:flutter/material.dart';

class BookTourPage extends StatelessWidget {
  const BookTourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final t = Theme.of(context);
    final tt = t.textTheme;
    final c = t.colorScheme;
    final id = InputDecoration(
      fillColor: Colors.white,
    );
    return Stack(
      children: [
        Image.asset('assets/space-bg.jpg', fit: BoxFit.cover),
        Container(
          margin: EdgeInsets.symmetric(vertical: 128, horizontal: 64),
          padding: EdgeInsets.all(64),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.lerp(c.background, Colors.white, 0.2)!,
              width: 2,
            ),
            color: Color.lerp(c.background, Colors.white, 0.07),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Please enter", style: tt.headlineMedium),
              SizedBox(height: 16),
              Text('Travelers'),
              SizedBox(height: 8),
              Row(
                children: [
                  FilledButton(
                      onPressed: () {}, child: Icon(Icons.one_x_mobiledata)),
                  SizedBox(width: 8),
                  FilledButton(onPressed: () {}, child: Icon(Icons.add)),
                ],
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Personal information:'),
                        TextField(
                          decoration: InputDecoration(hintText: "Name:"),
                        ),
                        TextField(
                          decoration: InputDecoration(hintText: "Surname:"),
                        ),
                        TextField(
                          decoration:
                              InputDecoration(hintText: "Date of birth:"),
                        ),
                        SizedBox(height: 16),
                        ListTile(
                          leading: Checkbox(
                            value: true,
                            onChanged: (bool? value) {},
                          ),
                          title: Text(
                              "I have read the website regulations, rules for participating in trips and I am aware of the need to take part in the training before the cruise"),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 32),
                  Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Luggages:'),
                        Row(
                          children: [
                            Expanded(child: TextField()),
                            SizedBox(width: 16),
                            Expanded(child: TextField()),
                          ],
                        ),
                        SizedBox(height: 32),
                        Row(
                          children: [
                            Expanded(
                              child: Icon(
                                Icons.luggage,
                                color: c.primary,
                                size: 64,
                              ),
                            ),
                            Expanded(
                              child: Icon(
                                Icons.luggage_outlined,
                                color: c.primary,
                                size: 64,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Align(
                alignment: Alignment.bottomCenter,
                child: FilledButton(
                  onPressed: () {},
                  child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(
                      'BOOK',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
