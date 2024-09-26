import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class AlbumsModelScreen extends StatefulWidget {
  const AlbumsModelScreen({super.key});

  @override
  State<AlbumsModelScreen> createState() => AlbumsModelScreenState();
}

class AlbumsModelScreenState extends State<AlbumsModelScreen> {
  final Dio dio = Dio();
  Future<Response> getData() async {
    return await dio.get('https://jsonplaceholder.typicode.com/albums');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
          future: getData(),
          builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return const Center(child: Text('Xato kod kritilgan'));
            } else if (snapshot.hasData) {
              final Response response = snapshot.data as Response;
              final List<AlbumsModel> albums = (response.data as List)
                  .map((e) => AlbumsModel.fromJson(e))
                  .toList();
              return ListView.builder(
                  itemCount: albums.length,
                  itemBuilder: (context, i) {
                    return Card(
                        child: Column(
                      children: [
                        Row(
                          children: [
                            const Text('Id si:'),
                            Text(albums[i].id.toString())
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text('UserId :'),
                            Text(albums[i].userId.toString())
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text('title :'),
                            Text(albums[i].title)
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text('url si:'),
                            Text(albums[i].url)
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Row(
                          children: [
                            const Text('thumbnailUrl si:'),
                            Text(albums[i].thumbnailUrl)
                          ],
                        )
                      ],
                    ));
                  });
            } else {
              return const Center(
                child: Text('Xato  boldi'),
              );
            }
          }),
    );
  }
}

class AlbumsModel {
  final int userId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  AlbumsModel(
      {required this.userId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl});
  factory AlbumsModel.fromJson(Map<String, dynamic> json) => AlbumsModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']);
}
