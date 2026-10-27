class Prenda{
  final String id;
  final String nombre;
  final String descripcion;
  final String precio;
  final String imagenUrl;

  const Prenda({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.imagenUrl,
  });
}

//Lista de prodcutos
final List<Prenda> listaPrendas = [
  const Prenda(
    id: '1',
    nombre: 'Vestido con flores pastel',
    descripcion: 'Vestido ligero ideal para primavera.',
    precio: '29.99 €',
    imagenUrl: 'https://i.postimg.cc/pdDBD4wv/vestido-Flores.jpg',
  ),
  const Prenda(
    id: '2',
    nombre: 'Cárdigan de punto color vainilla',
    descripcion: 'Cárdigan suave y abrigado con botones.',
    precio: '34.50 €',
    imagenUrl: 'https://i.postimg.cc/ydsynnKh/cardigan.jpg',
  ),
    const Prenda(
    id: '3',
    nombre: 'Bailarinas de satén rosa',
    descripcion: 'Bailarinas cómodas con lazo.',
    precio: '19.90 €',
    imagenUrl: 'https://i.postimg.cc/gj0qbJnw/bailarinas.jpg',
  ),
      const Prenda(
    id: '4',
    nombre: 'Bolso corazón acolchado',
    descripcion: 'Bolso pequeño de piel sintética.',
    precio: '24.99 €',
    imagenUrl: 'https://i.postimg.cc/KYvKV2Bw/bolso-P.jpg',
  ),
      const Prenda(
    id: '5',
    nombre: 'Top de encaje lila',
    descripcion: 'Top con detalles de encaje.',
    precio: '15.99 €',
    imagenUrl: 'https://i.postimg.cc/zDdFSncp/encaje.jpg',
  ),
      const Prenda(
    id: '6',
    nombre: 'Falda plisada blanca',
    descripcion: 'Falda corta estilo tenis.',
    precio: '22.50 €',
    imagenUrl: 'https://i.postimg.cc/Fs8bwhmR/falda.jpg',
  ),
      const Prenda(
    id: '7',
    nombre: 'Diadema de perlas',
    descripcion: 'Accesorio para el pelo elegante.',
    precio: '9.99 €',
    imagenUrl: 'https://i.postimg.cc/DzKry58M/diadema.jpg',
  ),
];