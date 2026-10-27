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
    imagenUrl: 'https://i.pinimg.com/736x/c3/f3/d0/c3f3d0cb9c5a5ad4c6a738306b9c278b.jpg',
  ),
    const Prenda(
    id: '3',
    nombre: 'Bailarinas de satén rosa',
    descripcion: 'Bailarinas cómodas con lazo.',
    precio: '19.90 €',
    imagenUrl: 'https://i.pinimg.com/736x/8b/39/3a/8b393a4aa1c7a54ebd5152797e13f070.jpg',
  ),
      const Prenda(
    id: '4',
    nombre: 'Bolso corazón acolchado',
    descripcion: 'Bolso pequeño de piel sintética.',
    precio: '25.00 €',
    imagenUrl: 'https://i.pinimg.com/736x/d2/d1/73/d2d173ba1395b0d8293f1641538775d4.jpg',
  ),
      const Prenda(
    id: '5',
    nombre: 'Top de encaje lila',
    descripcion: 'Top con detalles de encaje.',
    precio: '15.99 €',
    imagenUrl: 'https://i.pinimg.com/1200x/3e/4d/51/3e4d51f1c7d6f50877e01ad0a8c1be8a.jpg',
  ),
      const Prenda(
    id: '6',
    nombre: 'Falda plisada blanca',
    descripcion: 'Falda corta estilo tenis.',
    precio: '22.50 €',
    imagenUrl: 'https://i.pinimg.com/736x/e6/28/96/e62896f8ff0d8bc7a44de32569bb5560.jpg',
  ),
      const Prenda(
    id: '7',
    nombre: 'Diadema de perlas',
    descripcion: 'Accesorio para el pelo elegante.',
    precio: '9.99 €',
    imagenUrl: 'https://i.pinimg.com/736x/75/0c/43/750c4346bdab192d0643bf49e7363a94.jpg',
  ),
];