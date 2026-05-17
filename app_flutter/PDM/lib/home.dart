import 'package:flutter/material.dart';
import 'package:pdm/login_cliente.dart';

import 'login_barbeiro.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Barber App', style: TextStyle(fontSize: 28.00)),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    fixedSize: const Size(280, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Sou Barbeiro', style: TextStyle(color:Colors.white,fontSize: 18.00),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginBarbeiro()),
                    );
                  },
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    fixedSize: const Size(280, 50),
                    side: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text('Sou Cliente', style: TextStyle(color: Colors.black,fontSize: 18.00),),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginCliente()),
                    );
                  },
                )
              ],
            ),
          ],
        )
    );
  }
}
