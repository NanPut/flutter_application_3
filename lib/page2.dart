import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Center(
          child: Text('List View'),
        ),
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Pemerograman Perangkat Bergerak'),
                subtitle: Text('Hario Jati Setiyadi, M.Kom.'),
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Perencanaan Strategis SI/TI'),
                subtitle: Text('Vina Zahrotun Kamila, M.Kom.'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Pengukuran Kinerja & Evaluasi SI'),
                subtitle: Text('Vina Zahrotun Kamila, M.Kom.'),
              ),
              ListTile(
                leading: Icon(Icons.favorite_border),
                title: Text('Pengolahan Citra Digital'),
                subtitle: Text('Amin Padmo Azam Masa, M.Cs'),
              ),
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text('Konstruksi & Pengujian Perangkat Lunak'),
                subtitle: Text('Islamiyah, M.Kom.\n\n'),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Kembali ke Page1'),
                  ),
                  Spacer(
                    flex: 1,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/card');
                    },
                    child: const Text('ke CardWidget'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
