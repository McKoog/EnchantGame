import 'package:enchantment_game/data_providers/show_providers.dart';
import 'package:enchantment_game/decorations/bottons_decoration.dart';
import 'package:enchantment_game/decorations/text_decoration.dart';
import 'package:enchantment_game/models/monster.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MonsterHeader extends ConsumerWidget {
  const MonsterHeader({Key? key,required this.width, required this.monster}) : super(key: key);

  final double width;
  final Monster monster;

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
            onTap: () {
              ref
                  .read(showHuntMonsterPage.notifier)
                  .update((state) => false);
            },
            child: const Icon(
              Icons.arrow_back,
              size: 40,
              color: Colors.yellow,
            )),
        SizedBox(
          height: 80,
          width:width - 100,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SvgPicture.asset(
                "assets/hunt_button_icon.svg",
                height: 50,
                color: Colors.yellow,
              ),
              Expanded(
                  child: Container(
                      alignment: Alignment.center,
                      height: 50,
                      decoration: monsterNameFieldDecoration,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            monster.name,
                            style: FarmMonsterNameTextDecoration,
                          ),
                          const Text(
                            "show droplist",
                            style: TextStyle(color: Colors.yellow),
                          ),
                        ],
                      ))),
              SvgPicture.asset("assets/hunt_button_icon.svg",
                  height: 50, color: Colors.yellow),
            ],
          ),
        ),
        const Icon(
          Icons.arrow_forward,
          size: 40,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
