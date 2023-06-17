# Flutter Basics

#### Row

- Shows children in a horizontal list
- Cannot be scrolled
- To align children use mainAxisAlignment and crossAxisAlignment

#### Flexible

- If you use multiple Flexible Widget in a row or column, you can tell them how they should relate to each other with the flex parameter
- Will be created last (fixed size widgets will be created first and dynamic ones after, so they know how much space they have)

#### Expanded

- Special form of a Flexible widget (fit: FlexFit.tight)
- Uses the available space given by flex
