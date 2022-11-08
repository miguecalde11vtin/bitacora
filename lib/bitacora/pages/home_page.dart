import 'package:flutter/material.dart';
import 'package:bitacora/bitacora/pages/blog_detail.dart';
import 'package:bitacora/bitacora/model/blog.dart';
// <>

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: dummyData.length,
        itemBuilder: (context, position) {
          return GestureDetector(
              child: Column(children: [
                const Divider(height: 10.0),
                itemBlog(context, position)
              ]),
              onTap: () {
                Navigator.push<bool>(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => const BlogDetail(),
                    ));
              });
        });
  }
}

Widget itemBlog(BuildContext context, int position) {
  return Container(
    padding: const EdgeInsets.only(bottom: 12.0, left: 8.0, right: 10.0),
    child: Column(
      children: [
        Container(
            padding: const EdgeInsets.all(8.0),
            alignment: Alignment.bottomLeft,
            child: Text(dummyData[position].category!,
                style: const TextStyle(fontSize: 16, color: Colors.grey))),
        Container(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            padding: const EdgeInsets.only(bottom: 4.0),
                            child: Text(
                              dummyData[position].title!,
                              style: const TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                              maxLines: 3,
                            )),
                        Text(dummyData[position].description!,
                            textAlign: TextAlign.left,
                            style: const TextStyle(color: Colors.grey)),
                        const SizedBox(height: 30),
                      ]),
                  Container(
                      height: 84,
                      width: 84,
                      child: Image.network(dummyData[position].image!,
                          fit: BoxFit.cover))
                ])),
        Container(
          padding: const EdgeInsets.only(top: 8.0, left: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      padding: const EdgeInsets.only(bottom: 4.0),
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        dummyData[position].author!,
                      )),
                  Row(
                    children: [
                      Text(
                        dummyData[position].date!,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      Text(
                        dummyData[position].readTime!,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                      const Icon(Icons.star, size: 16, color: Colors.grey)
                    ],
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(Icons.bookmark_border),
                  SizedBox(width: 16),
                  Icon(Icons.more_vert)
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
