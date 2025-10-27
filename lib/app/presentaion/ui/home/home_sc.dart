import 'package:ezzat_app/app/core/utilts/color_manager.dart';
import 'package:ezzat_app/app/core/utilts/path_manger.dart';
import 'package:ezzat_app/app/presentaion/providers/home/home_provider.dart';
import 'package:ezzat_app/app/presentaion/ui/home/widget/drawer_item_widget.dart';
import 'package:ezzat_app/app/presentaion/ui/home/widget/horizental_home_widget.dart';
import 'package:ezzat_app/app/presentaion/ui/home/widget/item_card_widget.dart';
import 'package:ezzat_app/app/presentaion/ui/home/widget/nav_item_widget.dart';
import 'package:ezzat_app/app/presentaion/ui/home/widget/profile_appar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class HomeSc extends StatelessWidget {
  const HomeSc({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 700;

    return ChangeNotifierProvider(
      create: (BuildContext context) => HomeProvider()..loadTrips(),
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: isMobile ? _mobileAppBar(context) : _webAppBar(context),
        drawer: isMobile ? _mobileDrawer(context) : null,
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 80,
            vertical: isMobile ? 16 : 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HorizntalHomeWidget(),
              SizedBox(height: 25),
              Expanded(
                child: Consumer<HomeProvider>(
                  builder: (context, provider, _) {
                    if (provider.tripsModel == null) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    final model = provider.tripsModel!;
                    return LayoutBuilder(
                      builder: (context, constraints) {
                        int crossAxisCount = constraints.maxWidth < 600
                            ? 1
                            : constraints.maxWidth < 900
                            ? 2
                            : constraints.maxWidth < 1200
                            ? 3
                            : 4;
                        return GridView.builder(
                          padding: EdgeInsets.only(top: 25),
                          itemCount: model.trips?.length ?? 0,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                crossAxisSpacing: 16,
                                mainAxisSpacing: 20,
                                mainAxisExtent: 385,
                              ),
                          itemBuilder: (context, index) {
                            final item = model.trips![index];
                            return ItemCard(item: item);
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _webAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: Padding(
        padding: EdgeInsets.only(top: 10, left: 70, right: 70),
        child: Column(
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  "${PathManager.SVG_PATH}logoipsum-332 1.svg",
                  width: 82,
                  height: 40,
                ),
                const Spacer(),
                const NavItemWidget(title: 'Items', active: true),
                const NavItemWidget(title: 'Pricing', active: false),
                const NavItemWidget(title: 'Info', active: false),
                const NavItemWidget(title: 'Tasks', active: false),
                const NavItemWidget(title: 'Analytics', active: false),
                Container(width: 1, height: 22, color: ColorManager.border),
                SizedBox(width: 16,),

                SvgPicture.asset(
                  "${PathManager.SVG_PATH}setting_bar.svg",
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 16,),
                SvgPicture.asset(
                  "${PathManager.SVG_PATH}notification.svg",
                  width: 24,
                  height: 24,
                ),
                SizedBox(width: 16,),
                Container(width: 1, height: 22, color: ColorManager.border),
                SizedBox(width: 36,),
                const ProfileApparWidget(),
              ],
            ),
            SizedBox(height: 18,),
            Container(width: double.infinity, height: 1, color: ColorManager.border),
          ],
        ),
      ),
    );
  }

  PreferredSizeWidget _mobileAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      elevation: 0,
      title: SvgPicture.asset(
        "${PathManager.SVG_PATH}logoipsum-332 1.svg",
        width: 60,
        height: 30,
      ),
      centerTitle: true,
    );
  }

  Drawer _mobileDrawer(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ProfileApparWidget(),
              const Divider(color: ColorManager.border),
            SizedBox(height: 10,),

              const DrawerItemWidget(title: "Items", active: true),
              const DrawerItemWidget(title: "Pricing", active: false),
              const DrawerItemWidget(title: "Info", active: false),
              const DrawerItemWidget(title: "Tasks", active: false),
              const DrawerItemWidget(title: "Analytics", active: false),
            ],
          ),
        ),
      ),
    );
  }
}
