// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'product.dart';

class ProductsRepository {
  static List<Product> loadProducts(Category category) {
    const allProducts = <Product>[
      // PC Games
      Product(
        category: Category.pc,
        id: 0,
        isFeatured: true,
        name: 'Baldur\'s Gate 3',
        price: 59000,
      ),
      Product(
        category: Category.pc,
        id: 1,
        isFeatured: true,
        name: 'Counter-Strike 2',
        price: 10000,
      ),
      Product(
        category: Category.pc,
        id: 2,
        isFeatured: false,
        name: 'The Witcher 3: Wild Hunt',
        price: 39000,
      ),
      Product(
        category: Category.pc,
        id: 3,
        isFeatured: true,
        name: 'Cyberpunk 2077',
        price: 49000,
      ),
      Product(
        category: Category.pc,
        id: 4,
        isFeatured: false,
        name: 'Minecraft Java Edition',
        price: 26000,
      ),
      Product(
        category: Category.pc,
        id: 5,
        isFeatured: true,
        name: 'Valorant',
        price: 10000,
      ),
      Product(
        category: Category.pc,
        id: 6,
        isFeatured: false,
        name: 'Dota 2',
        price: 10000,
      ),
      Product(
        category: Category.pc,
        id: 7,
        isFeatured: true,
        name: 'Apex Legends',
        price: 10000,
      ),
      Product(
        category: Category.pc,
        id: 8,
        isFeatured: false,
        name: 'Stardew Valley',
        price: 15000,
      ),
      Product(
        category: Category.pc,
        id: 9,
        isFeatured: true,
        name: 'Hades',
        price: 25000,
      ),
      Product(
        category: Category.pc,
        id: 10,
        isFeatured: true,
        name: 'Half-Life: Alyx',
        price: 59000,
      ),
      Product(
        category: Category.pc,
        id: 11,
        isFeatured: false,
        name: 'League of Legends',
        price: 10000,
      ),
      Product(
        category: Category.pc,
        id: 12,
        isFeatured: true,
        name: 'DOOM Eternal',
        price: 59000,
      ),

      // Console Games
      Product(
        category: Category.console,
        id: 13,
        isFeatured: true,
        name: 'God of War Ragnarök',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 14,
        isFeatured: true,
        name: 'Elden Ring',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 15,
        isFeatured: false,
        name: 'FIFA 25',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 16,
        isFeatured: true,
        name: 'Spider-Man 2',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 17,
        isFeatured: false,
        name: 'Gran Turismo 7',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 18,
        isFeatured: true,
        name: 'Horizon Forbidden West',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 19,
        isFeatured: false,
        name: 'Street Fighter 6',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 20,
        isFeatured: true,
        name: 'Mortal Kombat 1',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 21,
        isFeatured: false,
        name: 'Resident Evil 4 Remake',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 22,
        isFeatured: true,
        name: 'Assassin\'s Creed Mirage',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 23,
        isFeatured: false,
        name: 'Final Fantasy XVI',
        price: 69000,
      ),
      Product(
        category: Category.console,
        id: 24,
        isFeatured: true,
        name: 'The Last of Us Part I',
        price: 59000,
      ),
      Product(
        category: Category.console,
        id: 25,
        isFeatured: false,
        name: 'Tekken 8',
        price: 69000,
      ),

      // Nintendo Games
      Product(
        category: Category.nintendo,
        id: 26,
        isFeatured: true,
        name: 'The Legend of Zelda: Tears of the Kingdom',
        price: 69000,
      ),
      Product(
        category: Category.nintendo,
        id: 27,
        isFeatured: true,
        name: 'Super Mario Odyssey',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 28,
        isFeatured: false,
        name: 'Pokémon Scarlet and Violet',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 29,
        isFeatured: true,
        name: 'Super Smash Bros. Ultimate',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 30,
        isFeatured: true,
        name: 'Splatoon 3',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 31,
        isFeatured: false,
        name: 'Animal Crossing: New Horizons',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 32,
        isFeatured: true,
        name: 'Metroid Dread',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 33,
        isFeatured: false,
        name: 'Xenoblade Chronicles 3',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 34,
        isFeatured: true,
        name: 'Luigi\'s Mansion 3',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 35,
        isFeatured: false,
        name: 'Kirby and the Forgotten Land',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 36,
        isFeatured: true,
        name: 'Fire Emblem Engage',
        price: 59000,
      ),
      Product(
        category: Category.nintendo,
        id: 37,
        isFeatured: true,
        name: 'Bayonetta 3',
        price: 59000,
      ),
    ];
    if (category == Category.all) {
      return allProducts;
    } else {
      return allProducts.where((Product p) {
        return p.category == category;
      }).toList();
    }
  }
}
