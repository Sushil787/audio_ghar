import 'package:audio_ghar/core/theme/app_color.dart';
import 'package:audio_ghar/feature/homepage/data/audio_book_data.dart';
import 'package:audio_ghar/feature/homepage/data/model/audio_book_model.dart';
import 'package:audio_ghar/feature/homepage/widget/custom_search_Field.dart';
import 'package:audio_ghar/feature/homepage/widget/custom_title.dart';
import 'package:audio_ghar/feature/homepage/widget/item_card.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: _buildNavBar(),
    );
  }

  Widget _buildBody() {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        sliverAppBarWidget(),
        SliverGridWidget(modelBook),
      ],
    );
  }

  SliverGrid SliverGridWidget(List<AudioBook> audioBooks) {
    return SliverGrid(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        childAspectRatio: 1.0,
        mainAxisExtent: 300,
      ),
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return customAudioCard(context, audioBooks[index]);
        },
        childCount: 10,
      ),
    );
  }

  SliverAppBar sliverAppBarWidget() {
    return SliverAppBar(
      pinned: true,
      stretch: true,
      flexibleSpace: Container(
        margin: const EdgeInsets.all(10),
        height: 180,
        width: 400,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomTitleWidget(
              context: context,
              title: "Hi, Sushil Welcome back",
            ),
            BuildSearchBar(context: context),
            BuildTabBar()
          ],
        ),
      ),
      toolbarHeight: 170,
      backgroundColor: LightColor.whiteColor,
    );
  }

  Widget _buildNavBar() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 20,
            color: Colors.black.withOpacity(.1),
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
        child: GNav(
          rippleColor: Colors.grey[200]!,
          hoverColor: Colors.grey[100]!,
          gap: 8,
          activeColor: const Color.fromARGB(255, 255, 255, 255),
          iconSize: 24,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          duration: const Duration(milliseconds: 400),
          tabBackgroundColor: LightColor.orange,
          color: Colors.black,
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Likes',
            ),
            GButton(
              icon: Icons.local_activity_outlined,
              text: 'local',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            ),
          ],
          selectedIndex: _selectedIndex,
          onTabChange: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class BuildTabBar extends StatefulWidget {
  BuildTabBar({
    super.key,
  });

  @override
  State<BuildTabBar> createState() => _BuildTabBarState();
}

class _BuildTabBarState extends State<BuildTabBar> {
  int _selceted = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: AudioBookCategory.values.length,
              itemBuilder: ((context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      _selceted = index;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 4,
                      ),
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: _selceted == index ? LightColor.orange : null,
                          border: Border.all(color: LightColor.secondaryColor),
                          borderRadius: BorderRadius.circular(
                            5,
                          )),
                      child: Text(AudioBookCategory.values[index].name),
                    ),
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
