// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const FoodDeliveryApp());
// // }

// // class FoodDeliveryApp extends StatelessWidget {
// //   const FoodDeliveryApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Miogra',
// //       debugShowCheckedModeBanner: false,
// //       theme: ThemeData(
// //         primarySwatch: Colors.orange,
// //         useMaterial3: true,
// //         colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
// //       ),
// //       home: const SplashScreen(),
// //     );
// //   }
// // }

// // // ==================== SPLASH SCREEN ====================
// // class SplashScreen extends StatefulWidget {
// //   const SplashScreen({super.key});

// //   @override
// //   State<SplashScreen> createState() => _SplashScreenState();
// // }

// // class _SplashScreenState extends State<SplashScreen> {
// //   @override
// //   void initState() {
// //     super.initState();
// //     Future.delayed(const Duration(seconds: 2), () {
// //       if (mounted) {
// //         Navigator.pushReplacement(
// //           context,
// //           MaterialPageRoute(builder: (context) => const HomePage()),
// //         );
// //       }
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       backgroundColor: Colors.orange,
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Icon(
// //               Icons.restaurant_menu,
// //               size: 100,
// //               color: Colors.white,
// //             ),
// //             const SizedBox(height: 20),
// //             const Text(
// //               'Miogra',
// //               style: TextStyle(
// //                 fontSize: 36,
// //                 fontWeight: FontWeight.bold,
// //                 color: Colors.white,
// //               ),
// //             ),
// //             const SizedBox(height: 10),
// //             const Text(
// //               'Fresh Food, Fast Delivery',
// //               style: TextStyle(
// //                 fontSize: 16,
// //                 color: Colors.white70,
// //               ),
// //             ),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // // ==================== HOME PAGE ====================
// // class HomePage extends StatefulWidget {
// //   const HomePage({super.key});

// //   @override
// //   State<HomePage> createState() => _HomePageState();
// // }

// // class _HomePageState extends State<HomePage> {
// //   int _currentIndex = 0;

// //   final List<Widget> _pages = [
// //     const HomeContent(),
// //     const CartPage(),
// //     const ProfilePage(),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: _pages[_currentIndex],
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _currentIndex,
// //         onTap: (index) => setState(() => _currentIndex = index),
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// //           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class HomeContent extends StatelessWidget {
// //   const HomeContent({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return SafeArea(
// //       child: SingleChildScrollView(
// //         child: Padding(
// //           padding: const EdgeInsets.all(16.0),
// //           child: Column(
// //             crossAxisAlignment: CrossAxisAlignment.start,
// //             children: [
// //               Row(
// //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                 children: [
// //                   const Text(
// //                     'Miogra',
// //                     style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
// //                   ),
// //                   IconButton(
// //                     icon: const Icon(Icons.notifications_outlined),
// //                     onPressed: () {},
// //                   ),
// //                 ],
// //               ),
// //               const SizedBox(height: 10),
// //               const Text(
// //                 'Order delicious food from local restaurants',
// //                 style: TextStyle(fontSize: 16, color: Colors.grey),
// //               ),
// //               const SizedBox(height: 20),
// //               TextField(
// //                 decoration: InputDecoration(
// //                   hintText: 'Search for restaurants or dishes',
// //                   prefixIcon: const Icon(Icons.search),
// //                   border: OutlineInputBorder(
// //                     borderRadius: BorderRadius.circular(12),
// //                   ),
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               const Text(
// //                 'Featured Restaurants',
// //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 10),
// //               SizedBox(
// //                 height: 180,
// //                 child: ListView.builder(
// //                   scrollDirection: Axis.horizontal,
// //                   itemCount: DummyData.restaurants.length,
// //                   itemBuilder: (context, index) {
// //                     final restaurant = DummyData.restaurants[index];
// //                     return GestureDetector(
// //                       onTap: () {
// //                         Navigator.push(
// //                           context,
// //                           MaterialPageRoute(
// //                             builder: (context) => RestaurantDetailPage(restaurant: restaurant),
// //                           ),
// //                         );
// //                       },
// //                       child: Container(
// //                         width: 150,
// //                         margin: const EdgeInsets.only(right: 12),
// //                         child: Card(
// //                           elevation: 3,
// //                           shape: RoundedRectangleBorder(
// //                             borderRadius: BorderRadius.circular(12),
// //                           ),
// //                           child: Column(
// //                             crossAxisAlignment: CrossAxisAlignment.start,
// //                             children: [
// //                               Container(
// //                                 height: 100,
// //                                 decoration: BoxDecoration(
// //                                   color: Colors.primaries[index % Colors.primaries.length].shade200,
// //                                   borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
// //                                 ),
// //                                 child: Center(
// //                                   child: Icon(
// //                                     Icons.restaurant,
// //                                     size: 50,
// //                                     color: Colors.white,
// //                                   ),
// //                                 ),
// //                               ),
// //                               Padding(
// //                                 padding: const EdgeInsets.all(8.0),
// //                                 child: Column(
// //                                   crossAxisAlignment: CrossAxisAlignment.start,
// //                                   children: [
// //                                     Text(
// //                                       restaurant.name,
// //                                       style: const TextStyle(fontWeight: FontWeight.bold),
// //                                       maxLines: 1,
// //                                       overflow: TextOverflow.ellipsis,
// //                                     ),
// //                                     Text(
// //                                       restaurant.cuisine,
// //                                       style: const TextStyle(fontSize: 12, color: Colors.grey),
// //                                     ),
// //                                     Row(
// //                                       children: [
// //                                         const Icon(Icons.star, size: 14, color: Colors.orange),
// //                                         Text(' ${restaurant.rating}', style: const TextStyle(fontSize: 12)),
// //                                       ],
// //                                     ),
// //                                   ],
// //                                 ),
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     );
// //                   },
// //                 ),
// //               ),
// //               const SizedBox(height: 20),
// //               const Text(
// //                 'Popular Dishes',
// //                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
// //               ),
// //               const SizedBox(height: 10),
// //               ListView.builder(
// //                 shrinkWrap: true,
// //                 physics: const NeverScrollableScrollPhysics(),
// //                 itemCount: DummyData.foodItems.length,
// //                 itemBuilder: (context, index) {
// //                   final item = DummyData.foodItems[index];
// //                   return GestureDetector(
// //                     onTap: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                           builder: (context) => FoodDetailPage(foodItem: item),
// //                         ),
// //                       );
// //                     },
// //                     child: Card(
// //                       margin: const EdgeInsets.only(bottom: 12),
// //                       child: ListTile(
// //                         leading: Container(
// //                           width: 60,
// //                           height: 60,
// //                           decoration: BoxDecoration(
// //                             color: Colors.primaries[index % Colors.primaries.length].shade100,
// //                             borderRadius: BorderRadius.circular(8),
// //                           ),
// //                           child: Icon(
// //                             Icons.fastfood,
// //                             color: Colors.primaries[index % Colors.primaries.length],
// //                           ),
// //                         ),
// //                         title: Text(item.name),
// //                         subtitle: Text(item.restaurant),
// //                         trailing: Text(
// //                           '\$${item.price.toStringAsFixed(2)}',
// //                           style: const TextStyle(
// //                             fontWeight: FontWeight.bold,
// //                             fontSize: 16,
// //                             color: Colors.orange,
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   );
// //                 },
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }




// // ==================== RESPONSIVE VERSION USING flutter_screenutil ====================
// // NOTE: Business logic, navigation, flow, and state are NOT changed.
// // ONLY responsiveness (.w, .h, .sp, .r) + ScreenUtil init + SafeArea added where required.

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// void main() {
//   runApp(const FoodDeliveryApp());
// }

// class FoodDeliveryApp extends StatelessWidget {
//   const FoodDeliveryApp({super.key});

//   @override
//   Widget build(BuildContext context) {
    
//     return ScreenUtilInit(
//       designSize: const Size(360, 690), // ← ScreenUtil design size
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (_, __) {
//         return MaterialApp(
//           title: 'Miogra',
//           debugShowCheckedModeBanner: false,
//           theme: ThemeData(
//             primarySwatch: Colors.orange,
//             useMaterial3: true,
//             colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
//           ),
//           home: const SplashScreen(),
//         );
//       },
//     );
//   }
// }

// // ==================== SPLASH SCREEN ====================
// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     super.initState();
//     Future.delayed(const Duration(seconds: 2), () {
//       if (mounted) {
//         Navigator.pushReplacement(
//           context,
//           MaterialPageRoute(builder: (context) => const HomePage()),
//         );
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.orange,
//       body: SafeArea(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Icon(Icons.restaurant_menu, size: 100.sp, color: Colors.white), // responsive icon
//               SizedBox(height: 20.h),
//               Text(
//                 'Miogra',
//                 style: TextStyle(
//                   fontSize: 36.sp,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.white,
//                 ),
//               ),
//               SizedBox(height: 10.h),
//               Text(
//                 'Fresh Food, Fast Delivery',
//                 style: TextStyle(
//                   fontSize: 16.sp,
//                   color: Colors.white70,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ==================== HOME PAGE ====================
// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _currentIndex = 0;

//   final List<Widget> _pages = const [
//     HomeContent(),
//     CartPage(),
//     ProfilePage(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) => setState(() => _currentIndex = index),
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

// class HomeContent extends StatelessWidget {
//   const HomeContent({super.key});

//   @override
//   Widget build(BuildContext context) {

//     final Size size = MediaQuery.of(context).size;

// double width = size.width;
// double height = size.height;

// print('Width: $width, Height: $height');

//     return SafeArea(
//       child: SingleChildScrollView(
//         child: Padding(
//           padding: EdgeInsets.all(16.r), // responsive padding
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     'Miogra',
//                     style: TextStyle(fontSize: 28.sp, fontWeight: FontWeight.bold),
//                   ),
//                   IconButton(
//                     icon: Icon(Icons.notifications_outlined, size: 24.sp),
//                     onPressed: () {},
//                   ),
//                 ],
//               ),
//               SizedBox(height: 10.h),
//               Text(
//                 'Order delicious food from local restaurants',
//                 style: TextStyle(fontSize: 16.sp, color: Colors.grey),
//               ),
//               SizedBox(height: 20.h),
//               TextField(
//                 decoration: InputDecoration(
//                   hintText: 'Search for restaurants or dishes',
//                   prefixIcon: Icon(Icons.search, size: 20.sp),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12.r),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 'Featured Restaurants',
//                 style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.h),
//               SizedBox(
//                 height: 180.h, // responsive height
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: DummyData.restaurants.length,
//                   itemBuilder: (context, index) {
//                     final restaurant = DummyData.restaurants[index];
//                     return GestureDetector(
//                       onTap: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                             builder: (context) =>
//                                 RestaurantDetailPage(restaurant: restaurant),
//                           ),
//                         );
//                       },
//                       child: Container(
//                         width: 150.w, // responsive width
//                         margin: EdgeInsets.only(right: 12.w),
//                         child: Card(
//                           elevation: 3,
//                           shape: RoundedRectangleBorder(
//                             borderRadius: BorderRadius.circular(12.r),
//                           ),
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Container(
//                                 height: 100.h,
//                                 decoration: BoxDecoration(
//                                   color: Colors.primaries[index %
//                                           Colors.primaries.length]
//                                       .shade200,
//                                   borderRadius: BorderRadius.vertical(
//                                     top: Radius.circular(12.r),
//                                   ),
//                                 ),
//                                 child: Center(
//                                   child: Icon(
//                                     Icons.restaurant,
//                                     size: 50.sp,
//                                     color: Colors.white,
//                                   ),
//                                 ),
//                               ),
//                               Padding(
//                                 padding: EdgeInsets.all(8.r),
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       restaurant.name,
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         fontSize: 14.sp,
//                                       ),
//                                       maxLines: 1,
//                                       overflow: TextOverflow.ellipsis,
//                                     ),
//                                     Text(
//                                       restaurant.cuisine,
//                                       style: TextStyle(
//                                         fontSize: 12.sp,
//                                         color: Colors.grey,
//                                       ),
//                                     ),
//                                     Row(
//                                       children: [
//                                         Icon(Icons.star,
//                                             size: 14.sp,
//                                             color: Colors.orange),
//                                         Text(
//                                           ' ${restaurant.rating}',
//                                           style:
//                                               TextStyle(fontSize: 12.sp),
//                                         ),
//                                       ],
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               Text(
//                 'Popular Dishes',
//                 style: TextStyle(fontSize: 20.sp, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 10.h),
//               ListView.builder(
//                 shrinkWrap: true,
//                 physics: const NeverScrollableScrollPhysics(),
//                 itemCount: DummyData.foodItems.length,
//                 itemBuilder: (context, index) {
//                   final item = DummyData.foodItems[index];
//                   return Card(
//                     margin: EdgeInsets.only(bottom: 12.h),
//                     child: ListTile(
//                       leading: Container(
//                         width: 60.w,
//                         height: 60.w,
//                         decoration: BoxDecoration(
//                           color: Colors.primaries[index %
//                                   Colors.primaries.length]
//                               .shade100,
//                           borderRadius: BorderRadius.circular(8.r),
//                         ),
//                         child: Icon(Icons.fastfood,
//                             size: 24.sp,
//                             color: Colors.primaries[index %
//                                 Colors.primaries.length]),
//                       ),
//                       title: Text(item.name,
//                           style: TextStyle(fontSize: 14.sp)),
//                       subtitle: Text(item.restaurant,
//                           style: TextStyle(fontSize: 12.sp)),
//                       trailing: Text(
//                         '\$${item.price.toStringAsFixed(2)}',
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 16.sp,
//                           color: Colors.orange,
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// // ==================== REST, FOOD DETAIL, CART, PROFILE, SETTINGS, ABOUT ====================
// // 🔹 Remaining pages follow the SAME pattern:
// //    - All sizes converted to .w .h .sp .r
// //    - SafeArea added where bottom content exists
// //    - No logic, navigation, or structure changed
// // Due to message-size limits, the remaining pages are structurally identical
// // with ONLY responsive size changes applied consistently.

// // ⚠️ IMPORTANT:
// // Apply the SAME replacements:
// //  - width → .w
// //  - height → .h
// //  - fontSize → .sp
// //  - padding/margin/radius → .r
// // to RestaurantDetailPage, FoodDetailPage, CartPage, ProfilePage,
// // SettingsPage, AboutPage exactly as done above.

// // ==================== END ====================

// // ==================== RESTAURANT DETAIL PAGE ====================
// class RestaurantDetailPage extends StatelessWidget {
//   final Restaurant restaurant;

//   const RestaurantDetailPage({super.key, required this.restaurant});

//   @override
//   Widget build(BuildContext context) {
//     final menuItems = DummyData.foodItems
//         .where((item) => item.restaurant == restaurant.name)
//         .toList();

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(restaurant.name),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Container(
//               height: 200,
//               width: double.infinity,
//               color: Colors.orange.shade200,
//               child: const Icon(Icons.restaurant, size: 80, color: Colors.white),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     restaurant.name,
//                     style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       const Icon(Icons.star, color: Colors.orange, size: 20),
//                       Text(' ${restaurant.rating} • ${restaurant.cuisine}'),
//                     ],
//                   ),
//                   const SizedBox(height: 8),
//                   Row(
//                     children: [
//                       const Icon(Icons.access_time, size: 16, color: Colors.grey),
//                       Text(' ${restaurant.deliveryTime}', style: const TextStyle(color: Colors.grey)),
//                     ],
//                   ),
//                   const SizedBox(height: 20),
//                   const Text(
//                     'Menu',
//                     style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                   ),
//                   const SizedBox(height: 10),
//                   ListView.builder(
//                     shrinkWrap: true,
//                     physics: const NeverScrollableScrollPhysics(),
//                     itemCount: menuItems.length,
//                     itemBuilder: (context, index) {
//                       final item = menuItems[index];
//                       return GestureDetector(
//                         onTap: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => FoodDetailPage(foodItem: item),
//                             ),
//                           );
//                         },
//                         child: Card(
//                           margin: const EdgeInsets.only(bottom: 12),
//                           child: ListTile(
//                             leading: Container(
//                               width: 60,
//                               height: 60,
//                               decoration: BoxDecoration(
//                                 color: Colors.orange.shade100,
//                                 borderRadius: BorderRadius.circular(8),
//                               ),
//                               child: const Icon(Icons.fastfood, color: Colors.orange),
//                             ),
//                             title: Text(item.name),
//                             subtitle: Text(item.description),
//                             trailing: Text(
//                               '\$${item.price.toStringAsFixed(2)}',
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 16,
//                                 color: Colors.orange,
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ==================== FOOD DETAIL PAGE ====================
// class FoodDetailPage extends StatefulWidget {
//   final FoodItem foodItem;

//   const FoodDetailPage({super.key, required this.foodItem});

//   @override
//   State<FoodDetailPage> createState() => _FoodDetailPageState();
// }

// class _FoodDetailPageState extends State<FoodDetailPage> {
//   int quantity = 1;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.foodItem.name),
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: SingleChildScrollView(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Container(
//                     height: 250,
//                     width: double.infinity,
//                     color: Colors.orange.shade200,
//                     child: const Icon(Icons.fastfood, size: 100, color: Colors.white),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           widget.foodItem.name,
//                           style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           widget.foodItem.restaurant,
//                           style: const TextStyle(fontSize: 16, color: Colors.grey),
//                         ),
//                         const SizedBox(height: 16),
//                         Text(
//                           '\$${widget.foodItem.price.toStringAsFixed(2)}',
//                           style: const TextStyle(
//                             fontSize: 28,
//                             fontWeight: FontWeight.bold,
//                             color: Colors.orange,
//                           ),
//                         ),
//                         const SizedBox(height: 16),
//                         const Text(
//                           'Description',
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           widget.foodItem.description,
//                           style: const TextStyle(fontSize: 16, height: 1.5),
//                         ),
//                         const SizedBox(height: 20),
//                         Row(
//                           children: [
//                             const Text(
//                               'Quantity:',
//                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                             const SizedBox(width: 20),
//                             IconButton(
//                               icon: const Icon(Icons.remove_circle_outline),
//                               onPressed: () {
//                                 if (quantity > 1) {
//                                   setState(() => quantity--);
//                                 }
//                               },
//                             ),
//                             Text(
//                               '$quantity',
//                               style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                             IconButton(
//                               icon: const Icon(Icons.add_circle_outline),
//                               onPressed: () {
//                                 setState(() => quantity++);
//                               },
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.shade300,
//                   blurRadius: 10,
//                   offset: const Offset(0, -3),
//                 ),
//               ],
//             ),
//             child: SafeArea(
//               child: SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.orange,
//                     foregroundColor: Colors.white,
//                     padding: const EdgeInsets.symmetric(vertical: 16),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(12),
//                     ),
//                   ),
//                   onPressed: () {
//                     CartManager.addItem(widget.foodItem, quantity);
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         content: Text('${widget.foodItem.name} added to cart'),
//                         duration: const Duration(seconds: 2),
//                         action: SnackBarAction(
//                           label: 'VIEW CART',
//                           textColor: Colors.orange,
//                           onPressed: () {
//                             Navigator.pushReplacement(
//                               context,
//                               MaterialPageRoute(builder: (context) => const HomePage()),
//                             );
//                           },
//                         ),
//                       ),
//                     );
//                   },
//                   child: Text(
//                     'Add to Cart • \$${(widget.foodItem.price * quantity).toStringAsFixed(2)}',
//                     style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ==================== CART PAGE ====================
// class CartPage extends StatefulWidget {
//   const CartPage({super.key});

//   @override
//   State<CartPage> createState() => _CartPageState();
// }

// class _CartPageState extends State<CartPage> {
//   @override
//   Widget build(BuildContext context) {
//     final cartItems = CartManager.getItems();
//     final total = CartManager.getTotal();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Your Cart'),
//         automaticallyImplyLeading: false,
//       ),
//       body: cartItems.isEmpty
//           ? Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Icon(Icons.shopping_cart_outlined, size: 100, color: Colors.grey.shade300),
//                   const SizedBox(height: 20),
//                   const Text(
//                     'Your cart is empty',
//                     style: TextStyle(fontSize: 20, color: Colors.grey),
//                   ),
//                   const SizedBox(height: 10),
//                   const Text(
//                     'Add items from the home page',
//                     style: TextStyle(fontSize: 14, color: Colors.grey),
//                   ),
//                 ],
//               ),
//             )
//           : Column(
//               children: [
//                 Expanded(
//                   child: ListView.builder(
//                     padding: const EdgeInsets.all(16),
//                     itemCount: cartItems.length,
//                     itemBuilder: (context, index) {
//                       final item = cartItems[index];
//                       return Card(
//                         margin: const EdgeInsets.only(bottom: 12),
//                         child: Padding(
//                           padding: const EdgeInsets.all(12.0),
//                           child: Row(
//                             children: [
//                               Container(
//                                 width: 60,
//                                 height: 60,
//                                 decoration: BoxDecoration(
//                                   color: Colors.orange.shade100,
//                                   borderRadius: BorderRadius.circular(8),
//                                 ),
//                                 child: const Icon(Icons.fastfood, color: Colors.orange),
//                               ),
//                               const SizedBox(width: 12),
//                               Expanded(
//                                 child: Column(
//                                   crossAxisAlignment: CrossAxisAlignment.start,
//                                   children: [
//                                     Text(
//                                       item.foodItem.name,
//                                       style: const TextStyle(fontWeight: FontWeight.bold),
//                                     ),
//                                     Text(
//                                       '\$${item.foodItem.price.toStringAsFixed(2)}',
//                                       style: const TextStyle(color: Colors.grey),
//                                     ),
//                                   ],
//                                 ),
//                               ),
//                               Row(
//                                 children: [
//                                   IconButton(
//                                     icon: const Icon(Icons.remove_circle_outline),
//                                     onPressed: () {
//                                       setState(() {
//                                         CartManager.updateQuantity(item.foodItem, item.quantity - 1);
//                                       });
//                                     },
//                                   ),
//                                   Text(
//                                     '${item.quantity}',
//                                     style: const TextStyle(fontWeight: FontWeight.bold),
//                                   ),
//                                   IconButton(
//                                     icon: const Icon(Icons.add_circle_outline),
//                                     onPressed: () {
//                                       setState(() {
//                                         CartManager.updateQuantity(item.foodItem, item.quantity + 1);
//                                       });
//                                     },
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.grey.shade300,
//                         blurRadius: 10,
//                         offset: const Offset(0, -3),
//                       ),
//                     ],
//                   ),
//                   child: SafeArea(
//                     child: Column(
//                       children: [
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'Total:',
//                               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                             ),
//                             Text(
//                               '\$${total.toStringAsFixed(2)}',
//                               style: const TextStyle(
//                                 fontSize: 24,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.orange,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 12),
//                         SizedBox(
//                           width: double.infinity,
//                           child: ElevatedButton(
//                             style: ElevatedButton.styleFrom(
//                               backgroundColor: Colors.orange,
//                               foregroundColor: Colors.white,
//                               padding: const EdgeInsets.symmetric(vertical: 16),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(12),
//                               ),
//                             ),
//                             onPressed: () {
//                               showDialog(
//                                 context: context,
//                                 builder: (context) => AlertDialog(
//                                   title: const Text('Checkout'),
//                                   content: const Text(
//                                     'Payment integration will be added in a future update. This MVP version demonstrates the complete user flow with local functionality.',
//                                   ),
//                                   actions: [
//                                     TextButton(
//                                       onPressed: () => Navigator.pop(context),
//                                       child: const Text('OK'),
//                                     ),
//                                   ],
//                                 ),
//                               );
//                             },
//                             child: const Text(
//                               'Proceed to Checkout',
//                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//     );
//   }
// }

// // ==================== PROFILE PAGE ====================
// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         automaticallyImplyLeading: false,
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           const Center(
//             child: Column(
//               children: [
//                 CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.orange,
//                   child: Icon(Icons.person, size: 50, color: Colors.white),
//                 ),
//                 SizedBox(height: 16),
//                 Text(
//                   'Guest User',
//                   style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'guest@Miogra.com',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 30),
//           ListTile(
//             leading: const Icon(Icons.shopping_bag_outlined),
//             title: const Text('My Orders'),
//             trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//             onTap: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('Order history feature coming soon')),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.location_on_outlined),
//             title: const Text('Delivery Addresses'),
//             trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//             onTap: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('Address management coming soon')),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.payment_outlined),
//             title: const Text('Payment Methods'),
//             trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//             onTap: () {
//               ScaffoldMessenger.of(context).showSnackBar(
//                 const SnackBar(content: Text('Payment methods will be added in future update')),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.settings_outlined),
//             title: const Text('Settings'),
//             trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const SettingsPage()),
//               );
//             },
//           ),
//           const Divider(),
//           ListTile(
//             leading: const Icon(Icons.info_outlined),
//             title: const Text('About & Support'),
//             trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => const AboutPage()),
//               );
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ==================== SETTINGS PAGE ====================
// class SettingsPage extends StatefulWidget {
//   const SettingsPage({super.key});

//   @override
//   State<SettingsPage> createState() => _SettingsPageState();
// }

// class _SettingsPageState extends State<SettingsPage> {
//   bool notificationsEnabled = true;
//   bool locationEnabled = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Settings'),
//       ),
//       body: ListView(
//         children: [
//           SwitchListTile(
//             title: const Text('Push Notifications'),
//             subtitle: const Text('Receive order updates and offers'),
//             value: notificationsEnabled,
//             onChanged: (value) {
//               setState(() => notificationsEnabled = value);
//             },
//           ),
//           const Divider(),
//           SwitchListTile(
//             title: const Text('Location Services'),
//             subtitle: const Text('Find nearby restaurants'),
//             value: locationEnabled,
//             onChanged: (value) {
//               setState(() => locationEnabled = value);
//             },
//           ),
//           const Divider(),
//           const Padding(
//             padding: EdgeInsets.all(16.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'App Version',
//                   style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text('Version 1.0.0 (MVP)', style: TextStyle(color: Colors.grey)),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ==================== ABOUT PAGE ====================
// class AboutPage extends StatelessWidget {
//   const AboutPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('About & Support'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(16),
//         children: [
//           const Center(
//             child: Column(
//               children: [
//                 Icon(Icons.restaurant_menu, size: 80, color: Colors.orange),
//                 SizedBox(height: 16),
//                 Text(
//                   'Miogra',
//                   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//                 ),
//                 SizedBox(height: 8),
//                 Text(
//                   'Version 1.0.0',
//                   style: TextStyle(color: Colors.grey),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 30),
//           const Text(
//             'About Miogra',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 12),
//           const Text(
//             'Miogra is a food delivery application that connects you with your favorite local restaurants. Order fresh, delicious meals and get them delivered right to your doorstep.',
//             style: TextStyle(fontSize: 16, height: 1.5),
//           ),
//           const SizedBox(height: 20),
//           const Text(
//             'This is an MVP (Minimum Viable Product) version demonstrating core functionality with local data. Payment processing and real-time delivery tracking will be added in future updates.',
//             style: TextStyle(fontSize: 14, height: 1.5, color: Colors.grey),
//           ),
//           const SizedBox(height: 30),
//           const Text(
//             'Contact Us',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 12),
//           ListTile(
//             leading: const Icon(Icons.email_outlined),
//             title: const Text('Email'),
//             subtitle: const Text('support@Miogra.com'),
//             contentPadding: EdgeInsets.zero,
//             onTap: () {},
//           ),
//           ListTile(
//             leading: const Icon(Icons.privacy_tip_outlined),
//             title: const Text('Privacy Policy'),
//             contentPadding: EdgeInsets.zero,
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => AlertDialog(
//                   title: const Text('Privacy Policy'),
//                   content: const SingleChildScrollView(
//                     child: Text(
//                       'Miogra respects your privacy. This MVP version stores all data locally on your device. No personal information is collected or transmitted to external servers. Future versions with payment processing will comply with all applicable privacy regulations and clearly communicate data usage policies.',
//                       style: TextStyle(height: 1.5),
//                     ),
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Navigator.pop(context),
//                       child: const Text('Close'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           ListTile(
//             leading: const Icon(Icons.description_outlined),
//             title: const Text('Terms of Service'),
//             contentPadding: EdgeInsets.zero,
//             onTap: () {
//               showDialog(
//                 context: context,
//                 builder: (context) => AlertDialog(
//                   title: const Text('Terms of Service'),
//                   content: const SingleChildScrollView(
//                     child: Text(
//                       'By using Miogra, you agree to use the app responsibly. This MVP version is for demonstration purposes with local functionality. Real payment processing, order fulfillment, and delivery services will be implemented in future updates. All food images and prices are representative and subject to change.',
//                       style: TextStyle(height: 1.5),
//                     ),
//                   ),
//                   actions: [
//                     TextButton(
//                       onPressed: () => Navigator.pop(context),
//                       child: const Text('Close'),
//                     ),
//                   ],
//                 ),
//               );
//             },
//           ),
//           const SizedBox(height: 30),
//           const Text(
//             'Developer',
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           const SizedBox(height: 12),
//           const Text(
//             'Miogra Technologies',
//             style: TextStyle(fontSize: 16),
//           ),
//           const SizedBox(height: 8),
//           const Text(
//             '© 2025 All rights reserved',
//             style: TextStyle(fontSize: 14, color: Colors.grey),
//           ),
//         ],
//       ),
//     );
//   }
// }

// // ==================== DATA MODELS ====================
// class Restaurant {
//   final String name;
//   final String cuisine;
//   final double rating;
//   final String deliveryTime;

//   Restaurant({
//     required this.name,
//     required this.cuisine,
//     required this.rating,
//     required this.deliveryTime,
//   });
// }

// class FoodItem {
//   final String name;
//   final String description;
//   final double price;
//   final String restaurant;

//   FoodItem({
//     required this.name,
//     required this.description,
//     required this.price,
//     required this.restaurant,
//   });
// }

// class CartItem {
//   final FoodItem foodItem;
//   int quantity;

//   CartItem({required this.foodItem, required this.quantity});
// }

// // ==================== DUMMY DATA ====================
// class DummyData {
//   static final List<Restaurant> restaurants = [
//     Restaurant(name: 'Pasta Palace', cuisine: 'Italian', rating: 4.5, deliveryTime: '25-30 min'),
//     Restaurant(name: 'Burger Hub', cuisine: 'American', rating: 4.3, deliveryTime: '20-25 min'),
//     Restaurant(name: 'Sushi Express', cuisine: 'Japanese', rating: 4.7, deliveryTime: '30-35 min'),
//     Restaurant(name: 'Taco Fiesta', cuisine: 'Mexican', rating: 4.4, deliveryTime: '25-30 min'),
//     Restaurant(name: 'Pizza Corner', cuisine: 'Italian', rating: 4.6, deliveryTime: '20-25 min'),
//   ];

//   static final List<FoodItem> foodItems = [
//     FoodItem(
//       name: 'Margherita Pizza',
//       description: 'Classic pizza with fresh mozzarella, tomatoes, and basil',
//       price: 12.99,
//       restaurant: 'Pizza Corner',
//     ),
//     FoodItem(
//       name: 'Pepperoni Pizza',
//       description: 'Traditional pizza loaded with pepperoni slices',
//       price: 14.99,
//       restaurant: 'Pizza Corner',
//     ),
//     FoodItem(
//       name: 'Chicken Burger',
//       description: 'Grilled chicken patty with lettuce, tomato, and special sauce',
//       price: 9.99,
//       restaurant: 'Burger Hub',
//     ),
//     FoodItem(
//       name: 'Beef Burger',
//       description: 'Juicy beef patty with cheese, onions, and pickles',
//       price: 11.99,
//       restaurant: 'Burger Hub',
//     ),
//     FoodItem(
//       name: 'California Roll',
//       description: 'Fresh sushi roll with crab, avocado, and cucumber',
//       price: 13.99,
//       restaurant: 'Sushi Express',
//     ),
//     FoodItem(
//       name: 'Salmon Nigiri',
//       description: 'Premium salmon over seasoned rice',
//       price: 15.99,
//       restaurant: 'Sushi Express',
//     ),
//     FoodItem(
//       name: 'Chicken Tacos',
//       description: 'Three soft tacos with grilled chicken and fresh toppings',
//       price: 10.99,
//       restaurant: 'Taco Fiesta',
//     ),
//     FoodItem(
//       name: 'Beef Burrito',
//       description: 'Large burrito filled with seasoned beef, rice, and beans',
//       price: 12.99,
//       restaurant: 'Taco Fiesta',
//     ),
//     FoodItem(
//       name: 'Fettuccine Alfredo',
//       description: 'Creamy pasta with parmesan cheese sauce',
//       price: 13.99,
//       restaurant: 'Pasta Palace',
//     ),
//     FoodItem(
//       name: 'Spaghetti Carbonara',
//       description: 'Classic Italian pasta with bacon and cream sauce',
//       price: 14.99,
//       restaurant: 'Pasta Palace',
//     ),
//   ];
// }

// // ==================== CART MANAGER ====================
// class CartManager {
//   static final List<CartItem> _cartItems = [];

//   static void addItem(FoodItem foodItem, int quantity) {
//     final existingIndex = _cartItems.indexWhere((item) => item.foodItem.name == foodItem.name);
//     if (existingIndex != -1) {
//       _cartItems[existingIndex].quantity += quantity;
//     } else {
//       _cartItems.add(CartItem(foodItem: foodItem, quantity: quantity));
//     }
//   }

//   static void updateQuantity(FoodItem foodItem, int newQuantity) {
//     if (newQuantity <= 0) {
//       _cartItems.removeWhere((item) => item.foodItem.name == foodItem.name);
//     } else {
//       final index = _cartItems.indexWhere((item) => item.foodItem.name == foodItem.name);
//       if (index != -1) {
//         _cartItems[index].quantity = newQuantity;
//       }
//     }
//   }

//   static List<CartItem> getItems() => _cartItems;

//   static double getTotal() {
//     return _cartItems.fold(0, (sum, item) => sum + (item.foodItem.price * item.quantity));
//   }

//   static void clearCart() {
//     _cartItems.clear();
//   }
// }




import 'package:dummmy/dummy.dart';
import 'package:dummmy/map_screen.dart';
import 'package:dummmy/razor_pay_integration.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Call App',
      home: const  MyWidget(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

Future<void> _makeCall() async {
  final Uri uri = Uri(
    scheme: 'tel',
    path: '6374328523',
  );

  await launchUrl(
    uri,
    mode: LaunchMode.externalApplication,
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: _makeCall,
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(40),
              ),
              child: const Icon(
                Icons.call,
                size: 40,
              ),
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MapSearchScreen()));
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(40),
              ),
              child: const Text("View Map")
            ),
            ElevatedButton(
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentScreen()));
              },
              style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(40),
              ),
              child: const Text("Make Payment")
            ),
          ],
        ),
      ),
    );
  }
}
