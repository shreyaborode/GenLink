import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: DashboardPage()));

class DashboardPage extends StatelessWidget {
  final List<String> storyImages = [
    'assets/images/story1.jpg',
    'assets/images/story2.jpg',
    'assets/images/story3.jpg',
    'assets/images/story4.jpg',
    'assets/images/story5.jpg',
    'assets/images/story6.jpg',
  ];

  final List<String> userNames = [
    'Shreya',
    'Vijaya Jain',
    'Jankalyan Organization',
    'Happy Hours Organization',
    'Omkar',
  ];

  final List<String> profilePhotos = [
    'assets/images/story1.jpg',
    'assets/images/story2.jpg',
    'assets/images/story3.jpg',
    'assets/images/story4.jpg',
    'assets/images/story5.jpg',
  ];

  final List<String> postImages = [
    'assets/images/post1.jpg',
    'assets/images/post2.jpg',
    'assets/images/post3.jpg',
    'assets/images/post4.jpg',
    'assets/images/post5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(storyImages.length, (index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(storyImages[index]),
                    ),
                  );
                }),
              ),
            ),
            Divider(),
            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: userNames.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                  child: Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    elevation: 5,
                    child: Column(
                      children: [
                        ListTile(
                          leading: CircleAvatar(
                            backgroundImage: AssetImage(profilePhotos[index]),
                          ),
                          title: Text(userNames[index], style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Image.asset(
                            postImages[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              IconButton(
                                icon: Icon(Icons.favorite_border),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.comment),
                                onPressed: () {},
                              ),
                              IconButton(
                                icon: Icon(Icons.monetization_on),
                                color: Colors.green,
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
