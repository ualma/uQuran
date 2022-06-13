import 'package:flutter/material.dart';

import '../expandable_tree_menu.dart';
import 'myexpansion_tile.dart';
import 'defaults.dart';

/// Node without children / sub-items
class ExpandableMenuLeafNode extends StatelessWidget {
  final VoidCallback onSelect;
  final Widget child;

  const ExpandableMenuLeafNode({
    Key key,
    this.onSelect,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: this.onSelect,
          child: child,
        ));
  }
}

/// Header for a Node with children / sub-items
class ExpandableNode extends StatelessWidget {
  final VoidCallback onSelect;
  final Widget child;

  const ExpandableNode({
    Key key,
    this.onSelect,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
    );
  }
}

typedef NodeSelectedCallback<T> = void Function(T value);

typedef NodeBuilder<T> = Widget Function(BuildContext context, T value);

/// Wrapper for node with children / sub-items.
class CustomSubTreeWrapper<T> extends StatefulWidget {
  final NodeSelectedCallback<T> onSelect;
  final List<TreeNode<T>> subNodes;
  final Widget closedTwisty;
  final Widget openTwisty;
  final NodeBuilder<T> nodeBuilder;
  final TreeNode<T> node; // Null when this is the root of the tree
  final double childIndent;
  final TwistyState defaultState;
  final Color openTwistyColor;
  final Color closedTwistyColor;
  final Color submenuClosedColor;
  final Color submenuOpenColor;
  final TwistyPosition twistyPosition;
  final BoxDecoration submenuDecoration;
  final BoxDecoration childrenDecoration;
  final EdgeInsets childrenMargin;
  final EdgeInsets submenuMargin;

  const CustomSubTreeWrapper({
    Key key,
    this.onSelect,
    this.closedTwisty = DEFAULT_CLOSED_TWISTY,
    this.openTwisty = DEFAULT_OPENED_TWISTY,
    this.subNodes,
    this.nodeBuilder,
    this.node,
    this.childIndent,
    this.defaultState,
    this.twistyPosition,
    this.openTwistyColor,
    this.closedTwistyColor,
    this.submenuDecoration,
    this.childrenDecoration,
    this.submenuMargin,
    this.childrenMargin,
    this.submenuClosedColor,
    this.submenuOpenColor,
  }) : super(key: key);

  @override
  _CustomSubTreeWrapperState<T> createState() =>
      _CustomSubTreeWrapperState<T>();
}

class _CustomSubTreeWrapperState<T> extends State<CustomSubTreeWrapper<T>> {
  TwistyState twistyState = DEFAULT_EXPANDED_STATE;

  bool maintainState = false;
  GlobalKey key = GlobalKey();

  @override
  void initState() {
    twistyState = widget.defaultState;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.transparent,
      child: Container(
        margin: widget.submenuMargin,
        decoration: widget.submenuDecoration,
        child: MyExpansionTile(
          key: key,
          // maintainState: maintainState,
          collapsedBackgroundColor: widget.submenuClosedColor,
          backgroundColor: widget.submenuOpenColor,
          onExpansionChanged: toggleState,
          leading: widget.twistyPosition == TwistyPosition.before
              ? (twistyState == TwistyState.open
                  ? widget.openTwisty
                  : widget.closedTwisty)
              : null,
          trailing: widget.twistyPosition == TwistyPosition.after
              ? (twistyState == TwistyState.open
                  ? widget.openTwisty
                  : widget.closedTwisty)
              : SizedBox.shrink(),
          iconColor: widget.openTwistyColor,
          collapsedIconColor: widget.closedTwistyColor,
          initiallyExpanded:
              maintainState, //widget.defaultState == TwistyState.open,
          tilePadding: EdgeInsets.zero,
          childrenPadding: EdgeInsets.only(right: widget.childIndent),
          title: ExpandableNode(
            onSelect: () {
              // setState(() {
              //   // twistyState = twistyState == TwistyState.open
              //   //     ? TwistyState.closed
              //   //     : TwistyState.open;
              //   maintainState = !maintainState;
              // });
              // print(maintainState);
              // key.currentState._handleTap();

              widget.onSelect(widget.node.value);
            },
            child: widget.nodeBuilder(context, widget.node.value),
          ),
          children: [
            // _ThinDivider(),
            Container(
              decoration: widget.childrenDecoration,
              margin: widget.childrenMargin,
              child: ExpandableTree<T>(
                twistyPosition: widget.twistyPosition,
                initiallyExpanded: widget.defaultState == TwistyState.open,
                childIndent: widget.childIndent,
                nodes: widget.subNodes,
                nodeBuilder: widget.nodeBuilder,
                onSelect: widget.onSelect,
                openTwistyColor: widget.openTwistyColor,
                closedTwistyColor: widget.closedTwistyColor,
                openTwisty: widget.openTwisty,
                closedTwisty: widget.closedTwisty,
                childrenDecoration: widget.childrenDecoration,
                submenuDecoration: widget.submenuDecoration,
                submenuMargin: widget.submenuMargin,
                childrenMargin: widget.childrenMargin,
                submenuClosedColor: widget.submenuClosedColor,
                submenuOpenColor: widget.submenuOpenColor,
              ),
            ),
          ],
        ),
      ),
    );
  }

  void toggleState(bool isExpanded) {
    setState(() {
      twistyState = isExpanded ? TwistyState.open : TwistyState.closed;
    });
    print("hello");
  }
}
