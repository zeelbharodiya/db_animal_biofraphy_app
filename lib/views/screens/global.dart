import 'dart:ui';
import 'package:db_animal_biography_app/helper_class/api_animal.dart';

import '../../models/animal_class.dart';


class Global {

  static Color color = const Color(0xffC19E82);

  static List<Subscription> subscription = [
    Subscription(name: "Pets",page: "Pet_Page"),
    Subscription(name: "Farm",page: "Farm_Page"),
    Subscription(name: "Wild",page: "Wild_Page"),
    Subscription(name: "Mammal",page: "Mammal_Page"),
    Subscription(name: "Sea",page: "Sea_Page"),
    Subscription(name: "Insect",page: "Insect_Page"),
  ];

  static List<Map<String,dynamic>> all =
    [
      {
        'name': "Dog",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFTgh1DFRt2_fivO7gJriZj5cdMhru38JZeA&usqp=CAU",
        'type' : "Pets Animal",
      },
      {
        'name': "Turtle",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcST4SLFdnPa98SP28MTbtob0SOepRGZ74Yejy8Zxg-CGpGEHrtJxxk0JTkQ2fCCB-XyKew&usqp=CAU",
        'type' : "Pets Animal",
      },
      {
        'name': "Rabbit",
        'image': "https://cff2.earth.com/uploads/2022/10/07115304/Rabbit-virus-scaled.jpg",
        'type' : "Pets Animal",
      },
      {
        'name': "Cat",
        'image': "https://cdn.mos.cms.futurecdn.net/VSy6kJDNq2pSXsCzb6cvYF.jpg",
        'type' : "Pets Animal",
      },
      {
        'name': "Gerbil",
        'image': "https://upload.wikimedia.org/wikipedia/commons/9/9c/Meriones_unguiculatus_%28wild%29.jpg",
        'type' : "Pets Animal",
      },
      {
        'name': "Gecko",
        'image': "http://cdn.shopify.com/s/files/1/0556/8725/0116/articles/4_Care_Tips_to_Help_Your_Gecko_Thrive_Tile_Image_663x349_84102264-d840-448c-bceb-70570b47cacc.jpg?v=1652203587",
        'type' : "Pets Animal",
      },
      {
        'name': "Chameleon",
        'image': "https://www.worldatlas.com/r/w768/upload/71/8d/39/shutterstock-779977204.jpg",
        'type' : "Pets Animal",
      },
    ];


  static List<Map<String,dynamic>> all1 =
  [
    {
      'name': "Cow",
      'image': "https://www.ucdavis.edu/sites/default/files/styles/sf_landscape_16x9/public/home-site/blogs/one-health/blog-posts/2018/cow-field-one-health-uc-davis.jpg?h=c74750f6&itok=hQ2gfqOw",
      'type' : "Farm Animal",
    },
    {
      'name': "Pig",
      'image': "https://www.treehugger.com/thmb/mJQG8jpmRwB1NDZbhQlaFzoYZXM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/piglet-grass-dandelions-01-b21d7ef8f881496f8346dbe01859537e.jpg",
      'type' : "Farm Animal",
    },
    {
      'name': "Goat",
      'image': "https://upload.wikimedia.org/wikipedia/commons/b/b2/Hausziege_04.jpg",
      'type' : "Farm Animal",
    },
    {
      'name': "Deer",
      'image': "https://a-z-animals.com/media/2022/11/shutterstock_1722903079-1-1024x683.jpg",
      'type' : "Farm Animal",
    },
    {
      'name': "Sheep",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS79R-FNGfM9cZykq6bx9bfdPL4Rn8MahqpgQ&usqp=CAU",
      'type' : "Farm Animal",
    },
    {
      'name': "Horse",
      'image': "https://static.wikia.nocookie.net/phobia/images/3/39/Horse.jpg/revision/latest?cb=20161109214647",
      'type' : "Farm Animal",
    },
    {
      'name': "Ovis",
      'image': "https://img.freepik.com/premium-photo/european-mouflon-ovis-aries-musimon-standing-grass_260896-313.jpg",
      'type' : "Farm Animal",
    },
    {
      'name': "Zebu",
      'image': "https://a-z-animals.com/media/zebu-3.jpg",
      'type' : "Farm Animal",
    },
    {
      'name': "Kune Kune",
      'image': "http://zoohoo.dallaszoo.com/wp-content/uploads/2016/09/IMG_0288-Kune-Kune-Piglets-CS.jpg",
      'type' : "Farm Animal",
    },
  ];



  static List<Map<String,dynamic>> all2 =
  [
    {
      'name': "Giraffe",
      'image': "https://cdn.mos.cms.futurecdn.net/mEuBJTDhXuTfSKdLefzSKg-1200-80.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Camel",
      'image': "https://images.sbs.com.au/dims4/default/e00b5d9/2147483647/strip/true/crop/6000x3375+0+313/resize/1280x720!/quality/90/?url=http%3A%2F%2Fsbs-au-brightspot.s3.amazonaws.com%2Fbd%2F58%2F2f6e3471400c878759671c448b0f%2Fgettyimages-1146381540.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Koala",
      'image': "https://cdn.britannica.com/26/162626-050-3534626F/Koala.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Tiger",
      'image': "https://files.worldwildlife.org/wwfcmsprod/images/Tiger_resting_Bandhavgarh_National_Park_India/hero_small/6aofsvaglm_Medium_WW226365.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Bear",
      'image': "https://merriam-webster.com/assets/mw/images/article/art-wap-landing-mp-lg/brown%20bear%20in%20woods-9278-9df5d21eef63b1afd5d18c791abfc771@1x.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Crocodile",
      'image': "https://images.immediate.co.uk/production/volatile/sites/23/2014/11/GettyImages-123529247-2a29d6c.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Chimpanze",
      'image': "https://www.animalfunfacts.net/images/stories/photos/mammals/primates/chimpanzee/chimpanzee_l.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Elephant",
      'image': "https://www.daysoftheyear.com/wp-content/uploads/save-the-elephant-day1-scaled.jpg",
      'type' : "Wild Animal",
    },
    {
      'name': "Fox",
      'image': "https://www.reconnectwithnature.org/getmedia/b3d7982c-0938-4df6-987c-c225baaac277/red-fox-looking-back-shutterstock.jpg?width=1500&height=1000&ext=.jpg",
      'type' : "Wild Animal",
    },
  ];


  static List<Map<String,dynamic>> all3 =
  [
    {
      'name': "Squirrel",
      'image': "https://media.npr.org/assets/img/2017/04/25/istock-115796521-fcf434f36d3d0865301cdcb9c996cfd80578ca99-s1100-c50.jpg",
      'type' : "Mammal Animal",
    },
    {
      'name': "Ox",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcReD6K_LMKCjGJ6VNnumYFmzz1_2_EXpAx-ubh2Tv7QPF6NW1sUAgtqrrx5xrknpkqeO7k&usqp=CAU",
      'type' : "Mammal Animal",
    },
    {
      'name': "Panda",
      'image': "https://cdn.britannica.com/80/150980-050-84B9202C/Giant-panda-cub-branch.jpg",
      'type' : "Mammal Animal",
    },
    {
      'name': "Walrus",
      'image': "https://images.moneycontrol.com/static-mcnews/2022/08/freya-walrus-ImResizer.jpg?impolicy=website&width=770&height=431",
      'type' : "Mammal Animal",
    },
    {
      'name': "Otter",
      'image': "https://www.ndow.org/wp-content/uploads/2021/10/lontra_canadensis-992x657.jpeg",
      'type' : "Mammal Animal",
    },
    {
      'name': "Kangaroo",
      'image': "https://media.australian.museum/media/dd/images/red_kangaroo.d517513.width-1200.fffb47b.jpg",
      'type' : "Mammal Animal",
    },
    {
      'name': "Leopard",
      'image': "https://lp-cms-production.imgix.net/image_browser/leopard-africa-safari.jpg?w=600&h=400",
      'type' : "Mammal Animal",
    },
  ];


  static List<Map<String,dynamic>> all4 =
  [
    {
      'name': "Crab",
      'image': "https://nationaltoday.com/wp-content/uploads/2022/06/1-Crab-Race-640x514.jpg",
      'type' : "Sea Animal",
    },
    {
      'name': "Fish",
      'image': "https://i.ytimg.com/vi/vXIek3627DY/maxresdefault.jpg",
      'type' : "Sea Animal",
    },
    {
      'name': "Seal",
      'image': "https://animalia-bio.us-east-1.linodeobjects.com/animals/photos/full/1.25x1/harp-seal-4.webp",
      'type' : "Sea Animal",
    },
    {
      'name': "Octopus",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRACHOYAHNc1POwpo3uFkRdMe662tJKtDST4Q&usqp=CAU",
      'type' : "Sea Animal",
    },
    {
      'name': "Shark",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRKf-x2qjhHp2Tjl61ZH25XrHR7L9r3Qoqc9U5LurLwEu3f6mfCW4vQCUUefkPQb-e5ALY&usqp=CAU",
      'type' : "Sea Animal",
    },
    {
      'name': "Whale",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmTwgiKXZPnrt0YabJ2F0ELa1vF3y74zIupFvjdI8MwkNkGRbPhIlMlEVwEVN4Lu3fZKU&usqp=CAU",
      'type' : "Sea Animal",
    },
    {
      'name': "Starfish",
      'image': "https://www.tell-a-tale.com/wp-content/uploads/2017/07/animal-1851289_960_720_compressed.jpg",
      'type' : "Sea Animal",
    },
    {
      'name': "Penguin",
      'image': "https://cdn.britannica.com/70/192570-138-848FB7B3/penguin-species-places-Galapagos-Antarctica.jpg?w=800&h=450&c=crop",
      'type' : "Sea Animal",
    },
    {
      'name': "Dolphin",
      'image': "https://www.thoughtco.com/thmb/5dYYso5ZSMnYiwVfUz-7zZCL8l0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/atlantic-bottlenose-dolphin--jumping-high-during-a-dolphin-training-demonstration-154724035-59ce93949abed50011352530.jpg",
      'type' : "Sea Animal",
    },
    {
      'name': "Wrasses",
      'image': "https://www.frankbaensch.com/wp-content/uploads/2019/01/sunset-wrasse-20070227-130444-e1547401470506.jpg",
      'type' : "Sea Animal",
    },
  ];


  static List<Map<String,dynamic>> all5 =
  [
    {
      'name': "Moth",
      'image': "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/pretty-mother-shipton-moth-perching-on-a-stitchwort-royalty-free-image-1589358918.jpg",
      'type' : "Insects",

    },
    {
      'name': "Butterfly",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQkw93LjIQgObWzO8tim2pK8u-fltvSBl7ufg&usqp=CAU",
      'type' : "Insects",
    },
    {
      'name': "Dragonfly",
      'image': "https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Sympetrum_flaveolum_-_side_%28aka%29.jpg/640px-Sympetrum_flaveolum_-_side_%28aka%29.jpg",
      'type' : "Insects",
    },
    {
      'name': "Mosquito",
      'image': "https://www.reconnectwithnature.org/getmedia/65f0047f-cedf-4fa6-83bc-03b282cd712a/Mosquito-on-leaf-Shutterstock.jpg?width=1500&height=1000&ext=.jpg",
      'type' : "Insects",
    },
    {
      'name': "Grasshoppe",
      'image': "https://www.thoughtco.com/thmb/6KQvpGVJksOENZIgFbvffkxAzYY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-154936560-59ffde3d482c52001aec81fd.jpg",
      'type' : "Insects",
    },
    {
      'name': "Beetle",
      'image': "https://cdn.britannica.com/64/133964-050-93C53137/European-rhinoceros-beetle.jpg",
      'type' : "Insects",
    },
    {
      'name': "Cockroach",
      'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRxMbKlZMw1cZ9Rl3HOf57JFFKhQWMjcCKdQWnQ5yf5mMH9e9uDx7q6_i7iRyjaSUwBWE&usqp=CAU",
      'type' : "Insects",
    },
    {
      'name': "Odonata",
      'image': "https://cdn.pixabay.com/photo/2016/01/13/17/46/damselfly-1138638_960_720.jpg",
      'type' : "Insects",
    },
  ];



  static List<Animal> animal = [
    Animal(
      name: "Zebra",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Zebra",
    ),
    Animal(
      name: "Elephant",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Elephant",
    ),
    Animal(
      name: "Black Bear",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Bear",
    ),
    Animal(
      name: "Brown Bear",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Bear",
    ),
    Animal(
      name: "Polar Bear",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Bear",
    ),
    Animal(
      name: "Asiatic Lion",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Lion",
    ),
    Animal(
      name: "Transvaal Lion",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Lion",
    ),
    Animal(
      name: "Black Mamba",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Snake",
    ),
    Animal(
      name: "Green Tree Python",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Snake",
    ),
    Animal(
      name: "Indian cobra",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Snake",
    ),
    Animal(
      name: "German Shepherd",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Dog",
    ),
    Animal(
      name: "LebraDor",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Dog",
    ),
    Animal(
      name: "Pit Bull",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Dog",
    ),
    Animal(
      name: "Pug",
      description:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.",
      category: "Dog",
    ),
  ];
}