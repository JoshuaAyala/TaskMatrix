import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



const Color darkBlue = Color(0xFF2F3640);
const Color semidarkBlue = Color(0xFF38404C);
const Color lightBlue = Color(0xFF616E82);

class RegistroScreen extends StatelessWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: darkBlue, // Usar colorFondo como color de fondo del body
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center, // Centro de la columna
                children: <Widget>[
                  Image.asset(
                    'assets/task_matrix.png', // Ruta de la imagen
                    width: 250.0, // Ancho deseado
                    height: 100.0, // Alto deseado
                  ),
                  Text(
                    'Regístrate', // Cambia el texto "Iniciar Sesión" a "Regístrate"
                    style: TextStyle(
                      fontSize: 20.0, // Tamaño de fuente deseado
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20.0),

                  Container(
                    padding: EdgeInsets.all(20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: semidarkBlue,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1), // Color y opacidad de la sombra
                          spreadRadius: 3, // Radio de propagación de la sombra
                          blurRadius: 7, // Radio de desenfoque de la sombra
                          offset: Offset(0, 3), // Desplazamiento de la sombra (eje x, eje y)
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Alinea los elementos a la izquierda
                      children: <Widget>[
                        Text(
                          'Usuario/Email', // Cambia el texto "Usuario" a "Usuario/Email"
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Introduce tu usuario o email', // Cambia el hintText
                            hintStyle: TextStyle(
                              color: Colors.white, // Cambia el color del hintText aquí
                            ),
                          ),
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 20.0),
                        Text(
                          'Contraseña',
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextField(
                          style: TextStyle(color: Colors.white),
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Introducir contraseña',
                            hintStyle: TextStyle(
                              color: Colors.white, // Cambia el color del hintText aquí
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            // Agrega la lógica para registrarse aquí
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: lightBlue,
                            minimumSize: Size(double.infinity, 50.0), // Ancho igual al contenedor
                            elevation: 5, // Establece la elevación
                          ),
                          child: Text(
                            'Regístrate', // Cambia el texto del botón
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0),
                        Container(
                          color: Colors.white, // Color de fondo blanco
                          height: 1.0, // Altura de la separación
                        ),
                        SizedBox(height: 20.0),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context); // Navegar atrás al botón "Regresar"
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            backgroundColor: Colors.white,
                            minimumSize: Size(double.infinity, 50.0), // Ancho igual al contenedor
                            elevation: 5, // Establece la elevación
                          ),
                          child: Text(
                            'Regresar', // Cambia el texto del botón
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.0,
                            ),
                          ),
                        ),
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
