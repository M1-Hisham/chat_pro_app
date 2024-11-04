import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          // const Text("Change Theme"),
          // const SizedBox(height: 8),
          Container(
            width: 190,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.grey,
                style: BorderStyle.solid,
                width: 2,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        left: Radius.circular(40)),
                    color: AdaptiveTheme.of(context).mode.isDark
                        ? Colors.transparent
                        : AdaptiveTheme.of(context).mode.isSystem
                            ? Colors.transparent
                            : Colors.teal,
                  ),
                  child: IconButton(
                    onPressed: () {
                      if (AdaptiveTheme.of(context).mode.isDark ||
                          AdaptiveTheme.of(context).mode.isSystem) {
                        AdaptiveTheme.of(context).setLight();
                      }
                    },
                    icon: const Icon(
                      Icons.sunny,
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                  endIndent: 9,
                  indent: 9,
                ),
                Container(
                  color: AdaptiveTheme.of(context).mode.isLight
                      ? Colors.transparent
                      : AdaptiveTheme.of(context).mode.isSystem
                          ? Colors.transparent
                          : Colors.teal,
                  child: IconButton(
                    onPressed: () {
                      if (AdaptiveTheme.of(context).mode.isLight ||
                          AdaptiveTheme.of(context).mode.isSystem) {
                        AdaptiveTheme.of(context).setDark();
                      }
                    },
                    icon: const Icon(
                      Icons.dark_mode,
                    ),
                  ),
                ),
                const VerticalDivider(
                  color: Colors.grey,
                  thickness: 2,
                  endIndent: 9,
                  indent: 9,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.horizontal(
                        right: Radius.circular(40)),
                    color: AdaptiveTheme.of(context).mode.isSystem
                        ? Colors.teal
                        : Colors.transparent,
                  ),
                  child: IconButton(
                    onPressed: () {
                      AdaptiveTheme.of(context).setSystem();
                    },
                    icon: const Icon(
                      Icons.brightness_auto_outlined,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
