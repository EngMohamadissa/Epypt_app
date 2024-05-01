import 'package:eghypt_c/core/styles.dart';
import 'package:eghypt_c/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CompaniesPage extends StatefulWidget {
  const CompaniesPage({super.key});

  @override
  State<CompaniesPage> createState() => _CompaniesPageState();
}

class _CompaniesPageState extends State<CompaniesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: drawerMethod(),

      backgroundColor: const Color.fromARGB(136, 224, 214, 214),
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Center(
          child: Text('شركات', style: Styles.textStyle20),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(AppRouter.kNotificationView);
            },
            icon: const Icon(Icons.notifications_outlined),
          ),
          Directionality(
            textDirection: TextDirection.ltr,
            child: Builder(
              builder: (BuildContext context) {
                return IconButton(
                  icon: const Icon(
                    Icons.menu,
                  ),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                );
              },
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black,
        ),
        centerTitle: true,
      ),

      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 3, right: 3),
              child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 12,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2,
                    crossAxisSpacing: 1,
                    mainAxisExtent: 195,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(1),
                          child: SizedBox(
                            width: 130,
                            height: 130,
                            child: Card(
                              borderOnForeground: true,
                              color: Colors.white,
                              elevation: 1,
                              child: Padding(
                                padding: EdgeInsets.only(right: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(top: 5),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          CircleAvatar(
                                            backgroundColor:
                                                Color.fromARGB(255, 132, 80, 2),
                                            radius: 35,
                                            backgroundImage: AssetImage(
                                                'assets/images/boy.png'),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 90,
                                          height: 30,
                                          child: FittedBox(
                                            fit: BoxFit.contain,
                                            child: Text(
                                              ' ميكس',
                                              style: TextStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.w800),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'شركة',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'التوصيل خلال: 3 ايام',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'الحد الأدنى: 200ج',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 3),
                                      child: Text(
                                        'اقل عدد منتجات:2',
                                        style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ));
                  }),
            ),
          )
        ],
      ),
      // floatingActionButton: CircleAvatar(child: FlutterLogo(),),
    );
  }

  Drawer drawerMethod() {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            padding: EdgeInsets.zero,
            decoration: BoxDecoration(
              color: Colors.red,
            ),
            child: Center(
              child: Text(
                ' اهلا بك ابو عامر',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.person_outline,
              color: Colors.red,
            ),
            title: const Text('بياناتي'),
            onTap: () {
              GoRouter.of(context).push(AppRouter.kMyDataView);
            },
          ),
          ListTile(
            leading: const Icon(Icons.call_outlined, color: Colors.red),
            title: const Text(' اتصل بياناتي'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(
              Icons.exit_to_app,
              color: Color.fromARGB(255, 180, 32, 22),
            ),
            title: const Text('تسجيل الخروج'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
