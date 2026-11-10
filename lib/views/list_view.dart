import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gemma_mouna_p1/models/prenda_models.dart';
import 'detalle_view.dart';

//CLASE PARA EL TÍTULO, BUSCADOR Y FONDO
class Buscador extends StatefulWidget{
  const Buscador({super.key});

  @override
  State<Buscador> createState() => _BuscadorState();
}

class _BuscadorState extends State<Buscador>{

  //VARIABLES DE ESTADO
  bool _mostrarColeccion1 = true;
  late Future<List<Prenda>>_futurePrendas;

  @override
  void initState(){
    super.initState();
    _futurePrendas = _cargarPrendas();
  }

  //FUNCIÓN QUE LEE EL JSON
  Future<List<Prenda>> _cargarPrendas() async{
    await Future.delayed(const Duration(seconds: 1));//Retraso
    final String archivo = _mostrarColeccion1 ? 'assets/coleccion1.json' : 'assets/coleccion2.json';
    final String respuestaString = await rootBundle.loadString(archivo);
    final List<dynamic> datosJson=json.decode(respuestaString);
    return datosJson.map((json) => Prenda.fromJson(json)).toList();
  }

  //FUNCIÓN PARA RECARGAR
  Future<void> _recargarColeccion() async{
    setState((){
      _mostrarColeccion1 = !_mostrarColeccion1;
      _futurePrendas = _cargarPrendas();
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      //COLOR DE FONDO
      backgroundColor: const Color.fromARGB(255, 255, 240, 246),

      //TÍTULO
      appBar: AppBar( 
        backgroundColor: const Color.fromARGB(255, 243, 232, 255),
        title: const Text(
          'Tu rincón favorito 🎀',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 123, 44, 191)
          )
        ),

        //BOTÓN DE CERRAR SESIÓN Y VOLVER A PANTALLA PRINCIPAL
        actions:[
          IconButton(
            //ICONO DE SALIDA
            icon: const Icon(
              Icons.logout,
              color: Color.fromARGB(255, 123, 44, 191),
            ),
            tooltip: 'Cerrar sesión',
            onPressed:(){
              Navigator.pop(context);
            }
          )
        ],
      ),
      
      //CAJA DEL BUSCADOR Y TÍTULO DE ABAJO
      body: Column(
        children:[
          const SizedBox(width: double.infinity),

          //CAJA
          TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25.0),
              ),
              //TEXTO
              labelText: 'Buscar prenda...',

              //ICONO DE LUPA
              prefixIcon: const Icon(
                Icons.search,
                color: Color.fromARGB(255, 255, 143, 171),
              )
            )
          ),

          const SizedBox(height: 20), //Separador

          //TÍTULO DE ABAJO
          const Row(
            children: [
              SizedBox(width: 20),//Separador

              //ICONO DE ESTRELLAS
              FaIcon(
                FontAwesomeIcons.wandMagicSparkles,
                color: Color.fromARGB(255, 218, 192, 47),
                size: 16,
              ),

              SizedBox(width: 8),//Separador

              //TEXTO
              Text(
                'Prendas destacadas:',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 123, 44, 191),
                  fontSize: 18.0,
                  letterSpacing: 1.5
                )
              )
            ]
          ),

          const SizedBox(height: 15), //Separador

          //LISTA DE LOS ELEMENTOS
          Expanded(
            child: FutureBuilder<List<Prenda>>(
              future: _futurePrendas,
              builder: (context, snapshot){

                //RUEDA ROSA AL CARGAR
                if (snapshot.connectionState==ConnectionState.waiting){
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Color.fromARGB(255, 255, 143, 171),
                    )
                  );
                }

                //SI HAY DATOS, MOSTRAMOS LA LISTA
                else if(snapshot.hasData){
                  final prendas = snapshot.data!;

                  return RefreshIndicator(
                    color: const Color.fromARGB(255,255,143,171),
                    onRefresh: _recargarColeccion, //Cambio de colección
                    child: ListView.builder(
                      physics: const AlwaysScrollableScrollPhysics(),

                      itemCount: prendas.length,
                      itemBuilder: (context, index){
                        final prenda = prendas[index];

                        return Container(
                          margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                          decoration: BoxDecoration(
                            color:Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: ListTile(
                            contentPadding: const EdgeInsets.symmetric(horizontal:16, vertical: 5),
                            horizontalTitleGap: 30,

                            //ANIMACIÓN HERO
                            leading: Hero(
                              tag: prenda.id,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.network(
                                  prenda.imagenUrl,
                                  width: 50,
                                  height: 50,
                                  fit: BoxFit.cover,
                                )
                              )
                            ),

                            //NOMBRE PRENDA
                            title: Text(
                              prenda.nombre,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              )
                            ),

                            //DESCRIPCIÓN Y PRECIO
                            subtitle: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(prenda.descripcion),
                                const SizedBox(height: 4),
                                Text(
                                  prenda.precio,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255,123,44,191),
                                  )
                                )
                              ]
                            ),


                            //ICONO DE ESTRELLA
                            trailing: const FaIcon(
                              FontAwesomeIcons.solidStar,
                              color: Color.fromARGB(255,255,229,81),
                              size:20,
                            ),

                            //NAVEGAR A LA SIGUIENTE PANTALLA
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetalleView(prenda: prenda),
                                )
                              );
                            }
                          )
                        );
                      }
                    )
                  );
                }

                //SI HAY ERROR
                return const Center(child: Text('Error al cargar la colección.'));
              }
            )
          )

        ]
      )
    );
  }
}
