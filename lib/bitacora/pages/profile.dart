import 'package:flutter/material.dart';
import 'package:bitacora/bitacora/utils/constant.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bitacora/bitacora/pages/home_page.dart';
// <>

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Theme.of(context).cardColor,
          actions: <Widget>[
            Padding(
                padding: const EdgeInsets.all(12.0),
                child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                        foregroundColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4.0),
                        ),
                        side: const BorderSide(
                            color: Colors.green,
                            style: BorderStyle.solid,
                            width: 1)),
                    child: const Text("Followme"),
                    onPressed: () {})),
            PopupMenuButton<String>(itemBuilder: (BuildContext context) {
              return Constants.choices.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(choice),
                );
              }).toList();
            })
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Column(
                children: <Widget>[
                  Container(
                      width: 96,
                      height: 96,
                      child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://banner2.kisspng.com/20190131/aob/kisspng-ad-blocking-adguard-computer-software-download-mob-5c537e57554f10.6046552315489757033494.jpg"),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                              padding: const EdgeInsets.only(left: 12.0),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    const Text(
                                      "Ali Anil Kocak",
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20),
                                    ),
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 6.0),
                                        width:
                                            MediaQuery.of(context).size.width /
                                                2,
                                        child: const Text(
                                          "El economista estadounidense Milton Friedman alcanzó prominencia en la segunda mitad del siglo XX como uno de los principales críticos de las teorías económicas prevalecientes de John Maynard Keynes, cuyo modelo de economía mixta se convirtió en la norma para muchos países desarrollados durante y después de la Segunda Guerra Mundial. Nacido en Brooklyn en el seno de una familia judía de modestos recursos en 1912, Friedman se distinguió académicamente a temprana edad. Después de graduarse de la escuela secundaria a los 16 años, asistió a la Universidad de Rutgers, donde estudió matemáticas y economía. Continuó su educación en la Universidad de Chicago, donde obtuvo una maestría en economía y finalmente se retiraría en 1977, después de más de 30 años de enseñanza, un año después de recibir el Premio Nobel por sus contribuciones a las ciencias económicas. Friedman continuó escribiendo y hablando públicamente a través de varios medios (columnas de revistas, televisión, publicaciones académicas y editoriales) hasta su muerte en 2006.",
                                          style: TextStyle(fontSize: 16),
                                        ))
                                  ])),
                          Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Row(
                                children: const [
                                  Icon(FontAwesomeIcons.twitter),
                                  SizedBox(width: 8.0),
                                  Icon(FontAwesomeIcons.facebook)
                                ],
                              ))
                        ],
                      )),
                  const Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: Divider(height: 2.0)),
                  Container(
                      padding: const EdgeInsets.only(left: 24.0),
                      alignment: Alignment.bottomLeft,
                      child: const Text(
                          "Followed by Tarik Guney and Anil Kocak",
                          textAlign: TextAlign.left,
                          style: TextStyle(color: Colors.black45))),
                  const Padding(
                      padding: EdgeInsets.only(top: 16.0),
                      child: Divider(height: 2.0)),
                  Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      alignment: Alignment.bottomLeft,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text("116 Following"),
                            Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16.0),
                                child: Container(
                                    height: 50.0,
                                    width: 1.0,
                                    color: Colors.black26,
                                    margin: const EdgeInsets.only(
                                        left: 10.0, right: 10.0))),
                            const Text("576 Followers")
                          ])),
                  const TabBar(labelColor: Colors.black54, tabs: [
                    Tab(text: "Profile"),
                    Tab(text: "Claps"),
                    Tab(text: "Highlight"),
                    Tab(text: "Responses"),
                  ]),
                  Container(
                    padding: const EdgeInsets.only(top: 12.0),
                    child: Column(
                      children: [
                        itemBlog(context, 2),
                        const Divider(height: 2.0),
                        itemBlog(context, 3),
                        const Divider(height: 2.0),
                        itemBlog(context, 1),
                        const Divider(height: 2.0),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
