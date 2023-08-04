import 'package:flutter/material.dart';
import 'package:project/pages/screens/DrawerScreen.dart';
import 'package:project/models/post.dart';
import 'package:project/services/remote_service.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

class _NewsState extends State<News> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();

    //fetch data from API
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
      ),
      drawer: DrawerScreen(),
      body: Visibility(
        visible: isLoaded,
        child: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Text(posts![index].id.toString()),
                title: Text(posts![index].title),
                subtitle: Text(posts![index].body),
              ),
            );
          },
        ),
        replacement: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
