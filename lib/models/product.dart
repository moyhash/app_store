class Product {
  final int id, price;
  final String title, subTitle, description, image;

  Product(this.id, this.price, this.title, this.subTitle, this.image,
      this.description);
}

// Liste des products
List<Product> products = [
  Product(
    1,
    59,
    "Casque Bluetooth",
    "Tres haut Sond",
    "images/Casque.png",
    "Un style simple mais classique et des performances audio Bluetooth exceptionnelles. Le design pliable, léger et compact les rend parfaits pour voyager ou faire des déplacements et dispose d&apos;une grande zone de marquage pour votre logo.",
  ),
  Product(
    2,
    1099,
    "Telephhone Mobil",
    "Tres fort Avec Xiaomi ",
    "images/xiomi.png",
    "Le débit d’absorption spécifiq local quantifie l’exposition de l’utilisateur aux ondes électromagnétiques de l’équipement concerné. Le DAS maximal autorisé est de 2 W/kg pour la tête et le tronc et de 4 W/kg pour les membres",
  ),
  Product(
    3,
    39,
    "Camera 3D",
    "Visionner Autour",
    "images/camera.png",
    "Détection anticipée avec la caméra extérieure, Caméra extérieure intelligente pour une détection précoce optimale",
  ),
  Product(
    4,
    56,
    "Ecouteur",
    "Longue Resistance ",
    "images/Apple-airpod.png",
    "Découvrez nos écouteurs True Wireless avec la technologie de réduction de bruit Devialet™.",
  ),
  Product(
    5,
    68,
    "Apple Iphone",
    "La Pussance avec Iphone ",
    "images/iphone.png",
    "L’iPhone est le téléphone intelligent proposé par Apple depuis l’année 2007. Comme tous les smartphones, il propose un écran tactile et de nombreuses fonctionnalités",
  ),
  Product(
    6,
    39,
    "Camera Ordinateur",
    "Haut de Game",
    "images/camera-sa.png",
    "Cette webcam possède une excellente résolution. Grâce aux composants optiques 1080p et à son large champ de vision, elle rend parfaitement visibles tous les intervenants.",
  ),
  Product(
    7,
    68,
    "Mini USB",
    "Tres Grande Vitesse",
    "images/mini-usb3.png",
    "L’iPhone est le téléphone intelligent proposé par Apple depuis l’année 2007. Comme tous les smartphones, il propose un écran tactile et de nombreuses fonctionnalités",
  ),
  Product(
    8,
    39,
    "Adaptateur USB 2",
    "Câble mini USB vers USB",
    "images/adapt-usb.png",
    "Adaptateur Mini USB 2.0 type B mâle vers Micro USB femelleAdaptateur Mini USB type B mâle vers Micro USB femelleCat adaptateur permet de .",
  ),
];
