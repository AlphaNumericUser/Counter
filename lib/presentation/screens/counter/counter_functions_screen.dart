import 'package:flutter/material.dart';

// Selecciona con click y despues F2 para cambiar todas las ocurrencias
class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  // Variable para controlar los clicks
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // Define la barra de aplicaciones de la aplicación y establece el título
        appBar: AppBar(
          title: const Text('Counter Functions'),
        ),

        // Define el cuerpo de la aplicación
        body: Center(
          child: Column(
          // Centra verticalmente los elementos de la columna
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Muestra el valor de la variable clickCounter en un tamaño de fuente grande
              Text(
                '$clickCounter',
                style: const TextStyle(fontSize: 160, fontWeight: FontWeight.w100),
              ),

              // Muestra la palabra "Click" seguida de una "s" si clickCounter no es igual a 1,
              // o solo la palabra "Click" si clickCounter es igual a 1
              Text(
                'Click${clickCounter == 1 ? '' : 's'}',
                style: const TextStyle(fontSize: 25),
              )
            ],
          ),
        ),


        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
//-----------------------------------------------------------------------------------------------------            
            // Define un espacio vertical de 15 puntos
            const SizedBox(height: 15),

            // Crea un botón personalizado con un icono de "menos 1" y una acción que disminuye el contador
            CustomButton(
              icon: Icons.restart_alt_outlined,  // Define el icono del botón
              onPressed: () {  // Define la acción que se ejecutará cuando se presione el botón
                setState(() {  // Actualiza el estado de la aplicación
                  clickCounter=0;  // De lo contrario, disminuye el contador en uno
                });
              },
            ),
//-----------------------------------------------------------------------------------------------------
            // Define un espacio vertical de 15 puntos
            const SizedBox(height: 15),

            // Crea un botón personalizado con un icono de "menos 1" y una acción que disminuye el contador
            CustomButton(
              icon: Icons.plus_one,  // Define el icono del botón
              onPressed: () {  // Define la acción que se ejecutará cuando se presione el botón
                setState(() {  // Actualiza el estado de la aplicación
                  clickCounter++;  // De lo contrario, disminuye el contador en uno
                });
              },
            ),

//-----------------------------------------------------------------------------------------------------
            // Define un espacio vertical de 15 puntos
            const SizedBox(height: 15),

            // Crea un botón personalizado con un icono de "menos 1" y una acción que disminuye el contador
            CustomButton(
              icon: Icons.exposure_minus_1_outlined,  // Define el icono del botón
              onPressed: () {  // Define la acción que se ejecutará cuando se presione el botón
                setState(() {  // Actualiza el estado de la aplicación
                  if (clickCounter == 0) return;  // Si el contador ya es cero, no hagas nada
                  clickCounter--;  // De lo contrario, disminuye el contador en uno
                });
              },
            ),
          ],
        )
      );
  }
}

//--------------------------------------------------------------------------------------------------

// Define una clase para un botón personalizado
class CustomButton extends StatelessWidget {
  final IconData icon;  // El icono que se mostrará en el botón
  final VoidCallback? onPressed;  // La acción que se ejecutará cuando se presione el botón (puede ser null)

  // Constructor para la clase CustomButton
  const CustomButton({
    super.key,  // Llama al constructor de la superclase y le pasa la clave (si se proporciona)
    required this.icon,  // El icono es requerido y debe ser proporcionado al crear una instancia del botón
    this.onPressed,  // La acción es opcional y puede ser null
  });

  // Sobrescribe el método build para crear el botón personalizado
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),  // Define la forma del botón como un borde de estadio
      onPressed: onPressed,  // Asigna la acción al botón (puede ser null)
      child: Icon(icon),  // Muestra el icono en el botón
    );
  }
}

