import 'package:flutter/material.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PerfilPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PerfilPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color verde = Color(0xFF146C43);

    return Scaffold(
      backgroundColor: Color(0xFFF8F5F3),

      appBar: AppBar(
        backgroundColor: verde,
        title: Text(
          "Perfil",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        leading: Icon(Icons.arrow_back, color: Colors.white, size: 24),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.menu, color: Colors.white, size: 24),
          )
        ],
      ),

      body: Center(
        child: Column(
          children: [

            SizedBox(height: 120),

            Container(
              width: 96,
              height: 96,
              decoration: BoxDecoration(
                color: Color(0xFFE8F5E9),
                shape: BoxShape.circle,
              ),
              child: Icon(
                Icons.person,
                color: verde,
                size: 32,
              ),
            ),

            SizedBox(height: 20),

            Text(
              "Daniel Santos",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 4),

            Text(
              "Desenvolvedor Flutter",
              style: TextStyle(
                fontSize: 14,
                color: Color(0xFF757575),
              ),
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                card(Icons.article, "128", "Posts"),

                SizedBox(width: 12),

                card(Icons.group, "389", "Seguidores"),

                SizedBox(width: 12),

                card(Icons.person_add, "56", "Seguindo"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card(IconData icone, String numero, String texto) {
    return Container(
      width: 92,
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Color(0xFFE0E0E0)),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [

          Icon(
            icone,
            color: Color(0xFF146C43),
            size: 24,
          ),

          SizedBox(height: 10),

          Text(
            numero,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 2),

          Text(
            texto,
            style: TextStyle(
              fontSize: 12,
              color: Color(0xFF757575),
            ),
          ),
        ],
      ),
    );
  }
}