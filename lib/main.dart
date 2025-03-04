import 'package:flutter/material.dart';
import './models/data.dart';
import 'package:nested/providers/penampungan.dart';
import './screens/awal.dart';
import './screens/afterawal.dart';
import 'package:provider/provider.dart';
import 'package:flutter/foundation.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  const App({super.key});

  @override
  Widget build(BuildContext context) {
  //   return ChangeNotifierProvider(
  //     create: (context) => Penampungan(),
  //     child: MaterialApp(
  //       home: awal(),
  //       )
  //     )
  // }


//     return ChangeNotifierProvider<Penampungan>(
//       create: (context) => Penampungan(),
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: awal(),
//         routes: {
//           afterawal.nameroute: (ctx) => afterawal(),
//         },
//         theme: ThemeData(
//             primarySwatch: Colors.indigo,
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.black)
//             ),
//       ),
//     );
//   }
// }


    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: awal(),
      routes: {
        awal.nameroute : (ctx) => awal(),
        afterawal.nameroute : (ctx) => afterawal(),
      },
    );
  }
}

// return MultiProvider(
//       providers: [
//         ChangeNotifierProvider(create: (context) => Penampungan()),
//       ],
//       child: MaterialApp(
//         debugShowCheckedModeBanner: false,
//         home: awal(),
//         routes: {
//           afterawal.nameroute: (ctx) => afterawal(),
//         },
//         theme: ThemeData(
//           primarySwatch: Colors.indigo,
//           colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
//         ),
//       ),
//     );
//   }
// }