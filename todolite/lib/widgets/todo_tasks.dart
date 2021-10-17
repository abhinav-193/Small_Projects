import 'package:flutter/material.dart';
import 'package:implicitly_animated_reorderable_list/implicitly_animated_reorderable_list.dart';
import 'package:implicitly_animated_reorderable_list/transitions.dart';
import 'package:todolite/widgets/task_tile.dart';
import '../models/taskmodel.dart';
import 'package:provider/provider.dart';
import '../providers/taskManagerProvider.dart';

class TodoTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Task> taskItems = Provider.of<TaskManagerProvider>(context).taskItems;
    return ShaderMask(
      blendMode: BlendMode.dstOut,
      shaderCallback: (Rect rect) {
        return LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.transparent,
            Colors.white
          ],
        ).createShader(rect);
      },
      child: Container(
        child: ImplicitlyAnimatedReorderableList<Task>(
          items: taskItems,
          areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
          onReorderFinished: (item, from, to, newItems) {
            Provider.of<TaskManagerProvider>(context, listen: false)
                .rearrangeList(newItems);
          },
          itemBuilder: (ctx, itemAnimation, item, index) {
            return Reorderable(
              key: ValueKey(item),
              builder: (ctx, dragAnimation, inDrag) {
                return SizeFadeTransition(
                    sizeFraction: 0.7,
                    curve: Curves.easeInOut,
                    animation: itemAnimation,
                    child: TaskTile(
                      index: index,
                      task: item,
                    ));
              },
            );
          },
        ),
      ),
    );
  }
}
