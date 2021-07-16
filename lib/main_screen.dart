import 'package:flutter/material.dart';
import 'package:flutter_application_2/detail_screen.dart';
import 'package:flutter_application_2/model/books_list.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'E-book App',
          ),
        ),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Books book = booksList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(book: book);
              }));
            },
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(book.imageAsset),
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          book.title,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          book.author,
                          style: TextStyle(color: Colors.blue),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          book.description,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: booksList.length,
      ),
    );
  }
}
