import 'package:flutter/material.dart';

class CounterFuncionScreen extends StatefulWidget {
  const CounterFuncionScreen({Key? key}) : super(key: key);

  @override
  State<CounterFuncionScreen> createState() => _CounterFuncionScreenState();
}

class _CounterFuncionScreenState extends State<CounterFuncionScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Funcion'),
        actions: [
          IconButton(
  icon: const Icon(Icons.refresh_rounded),
  onPressed: () {
    setState(() {
      clickCounter = 0;
    });
  },
),  
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '$clickCounter',
              
              style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
            ),
             Text('Click${ clickCounter== 1 ? '': 's'}',
              style: const TextStyle(fontSize: 25),
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          
   CustomButton( 
    icon: Icons.refresh_rounded,
    onPressed: (){
      clickCounter = 0;
      setState(() {}
);
    },),
   const SizedBox( height:  10 ),
   

   CustomButton( 
    icon: Icons.plus_one,
      onPressed: (){
      clickCounter ++;
      setState(() {}
);
    },),
   const SizedBox( height: 10),

CustomButton( 
  icon: Icons.exposure_minus_1_outlined,
    onPressed: (){
      if (clickCounter == 0) return;
      clickCounter --;
      setState(() {}
);
    },),      
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
final VoidCallback? onPressed;

  const CustomButton({
    super.key, 
    required this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return     FloatingActionButton(
      //shape: const StadiumBorder(),
      elevation: 5,
      backgroundColor: Color.fromARGB(255, 89, 226, 250),
      onPressed: onPressed,
      child: Icon(icon),
      );
  }
}
