import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bitacora/bitacora/pages/profile.dart';
import 'package:bitacora/bitacora/pages/home_page.dart';

// <>
class BlogDetail extends StatelessWidget {
  const BlogDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Theme.of(context).cardColor,
          title: GestureDetector(
              //onTap() {},
              child: Row(
            children: <Widget>[
              Container(
                  margin: const EdgeInsets.only(right: 8),
                  child: const CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://miro.medium.com./max/154/1*0dQNpR0DrpaZfMM8mXsvig.png"))),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('PUBLISED IN',
                        style: TextStyle(color: Colors.black45, fontSize: 14)),
                    Visibility(
                        visible: true,
                        child: Text('FlutterCommunity',
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.black)))
                  ])
            ],
          ))),
      body: SingleChildScrollView(
          child: Container(
              color: Colors.white,
              child: Center(
                  child: Column(
                children: <Widget>[
                  const Padding(
                      padding: EdgeInsets.only(left: 12, top: 12.0, right: 8),
                      child: Text(
                          "Refrigator Ladies: The First Computer Programmers",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))),
                  const Padding(
                      padding: EdgeInsets.only(left: 12, top: 12.0, right: 8),
                      child: Text(
                          "The story of ENIAC, the first completly electronic computer and the woman who made it possible",
                          style:
                              TextStyle(color: Colors.black45, fontSize: 17))),
                  Padding(
                      padding:
                          const EdgeInsets.only(left: 12, top: 12.0, right: 8),
                      child: Row(
                        children: <Widget>[
                          // ignore: sized_box_for_whitespace
                          Container(
                              width: 24,
                              height: 24,
                              child: const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                              )),
                          const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Ali Anil Kocak",
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold))),
                          const Text(
                            "08/03/2018 - 11 min read",
                            style: TextStyle(color: Colors.black45),
                          )
                        ],
                      )),
                  Container(
                    padding: const EdgeInsets.only(top: 4.0),
                    width: MediaQuery.of(context).size.width,
                    child: Image.network(
                        "https://cdn-images-1.medium.com/max/2600/1*A0KxddStHqQOTIIj2ri1gg.jpeg"),
                  ),
                  const Padding(
                      padding: EdgeInsets.only(left: 16, top: 12, right: 12),
                      child: Text(
                          "El economista estadounidense Milton Friedman alcanzó prominencia en la segunda mitad del siglo XX como uno de los principales críticos de las teorías económicas prevalecientes de John Maynard Keynes, cuyo modelo de economía mixta se convirtió en la norma para muchos países desarrollados durante y después de la Segunda Guerra Mundial. Nacido en Brooklyn en el seno de una familia judía de modestos recursos en 1912, Friedman se distinguió académicamente a temprana edad. Después de graduarse de la escuela secundaria a los 16 años, asistió a la Universidad de Rutgers, donde estudió matemáticas y economía. Continuó su educación en la Universidad de Chicago, donde obtuvo una maestría en economía y finalmente se retiraría en 1977, después de más de 30 años de enseñanza, un año después de recibir el Premio Nobel por sus contribuciones a las ciencias económicas. Friedman continuó escribiendo y hablando públicamente a través de varios medios (columnas de revistas, televisión, publicaciones académicas y editoriales) hasta su muerte en 2006.",
                          style: TextStyle(fontSize: 16))),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24),
                      child: Divider(height: 2.0)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                            backgroundImage: NetworkImage(
                                "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg")),
                        Column(children: const [
                          Text("Published in",
                              style: TextStyle(color: Colors.black45)),
                          Text("published in"),
                        ]),
                        const Divider(height: 2),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                side: const BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            child: const Text("Followme"),
                            onPressed: () {})
                      ]),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(height: 2)),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                        ),
                        Column(children: const [
                          Text("Published in",
                              style: TextStyle(color: Colors.black45)),
                          Text("Ali Anil Kocak")
                        ]),
                        const Divider(height: 2),
                        OutlinedButton(
                            style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.blue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(4.0),
                                ),
                                side: const BorderSide(
                                    color: Colors.blue,
                                    style: BorderStyle.solid,
                                    width: 1)),
                            child: const Text("Followme"),
                            onPressed: () {
                              Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          const Profile()));
                            })
                      ]),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 24.0),
                      child: Divider(height: 2.0)),
                  itemBlog(context, 1),
                  itemBlog(context, 2),
                  itemBlog(context, 3),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Divider(
                        height: 2.0,
                      )),
                  Container(
                    child: const ListTile(
                        title: Text("Write a response...",
                            style: TextStyle(
                              color: Colors.black45,
                            )),
                        leading: Icon(FontAwesomeIcons.userSecret)),
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Divider(height: 2))
                ],
              )))),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.access_time),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.bookmark_border),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.share),
              ),
              SizedBox(
                width: 192,
              ),
              Icon(Icons.text_fields)
            ],
          ),
        ),
      ),
    );
  }
}
