import 'package:flutter/material.dart';

void main() => runApp(NewsFeedApp());

class NewsFeedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News Feed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: NewsFeedPage(),
    );
  }
}

class NewsFeedPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return ListView.builder(
            itemCount: articles.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(
                  articles[index].thumbnailUrl,
                  width: orientation == Orientation.portrait ? 100 : 150,
                  height: orientation == Orientation.portrait ? 100 : 150,
                  fit: BoxFit.cover,
                ),
                title: Text(
                  articles[index].title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(articles[index].description),
              );
            },
          );
        },
      ),
    );
  }
}

class Article {
  final String thumbnailUrl;
  final String title;
  final String description;

  Article({
    required this.thumbnailUrl,
    required this.title,
    required this.description,
  });
}

final List<Article> articles = [
  Article(
    thumbnailUrl:
    'https://external.xx.fbcdn.net/emg1/v/t13/16794161010878106830?url=https%3A%2F%2Fcdn.dribbble.com%2Fusers%2F11117806%2Fscreenshots%2F18483717%2Fmedia%2F9a011af0e4b1281aa62f24c44cba3fdf.png%3Fresize%3D400x0&fb_obo=1&utld=dribbble.com&stp=c0.5000x0.5000f_dst-emg0_p150x78_q75&_nc_eui2=AeHpRArP64SKNY3k_TEY6d0MmvgBtZTrk2Sa-AG1lOuTZDWyL7582LPzF4rIY6kjZntwdpJia29E_EIV9FwUyLlq&ccb=13-1&oh=06_AbFjpA29DhKuCx4K6SKXCd1LFH2ngSGfjfLScOc1rN1Reg&oe=64B6DF91&_nc_sid=e9c42e',
    title: 'Article 1',
    description: 'Description for Article 1',
  ),
  Article(
    thumbnailUrl:
    'https://external.xx.fbcdn.net/emg1/v/t13/16794161010878106830?url=https%3A%2F%2Fcdn.dribbble.com%2Fusers%2F11117806%2Fscreenshots%2F18483717%2Fmedia%2F9a011af0e4b1281aa62f24c44cba3fdf.png%3Fresize%3D400x0&fb_obo=1&utld=dribbble.com&stp=c0.5000x0.5000f_dst-emg0_p150x78_q75&_nc_eui2=AeHpRArP64SKNY3k_TEY6d0MmvgBtZTrk2Sa-AG1lOuTZDWyL7582LPzF4rIY6kjZntwdpJia29E_EIV9FwUyLlq&ccb=13-1&oh=06_AbFjpA29DhKuCx4K6SKXCd1LFH2ngSGfjfLScOc1rN1Reg&oe=64B6DF91&_nc_sid=e9c42e',
    title: 'Article 2',
    description: 'Description for Article 2',
  ),
  Article(
    thumbnailUrl:
    'https://external.xx.fbcdn.net/emg1/v/t13/16794161010878106830?url=https%3A%2F%2Fcdn.dribbble.com%2Fusers%2F11117806%2Fscreenshots%2F18483717%2Fmedia%2F9a011af0e4b1281aa62f24c44cba3fdf.png%3Fresize%3D400x0&fb_obo=1&utld=dribbble.com&stp=c0.5000x0.5000f_dst-emg0_p150x78_q75&_nc_eui2=AeHpRArP64SKNY3k_TEY6d0MmvgBtZTrk2Sa-AG1lOuTZDWyL7582LPzF4rIY6kjZntwdpJia29E_EIV9FwUyLlq&ccb=13-1&oh=06_AbFjpA29DhKuCx4K6SKXCd1LFH2ngSGfjfLScOc1rN1Reg&oe=64B6DF91&_nc_sid=e9c42e',
    title: 'Article 3',
    description: 'Description for Article 3',
  ),
  // Add more articles as needed
];
