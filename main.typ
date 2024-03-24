#set text(font: "Georgia")
#set par(justify: true)

#text(24pt)[ *Space Numbers* ]

#text(16pt)[by Md Abid Sikder]

_Thanks to Mehrab Jamee for helping me ideate when I first had these thoughts._

*Overview*:
This is an introduction to the a mathematical concept I have created that I am calling _space numbers_.
I hope in this writeup to outline both the concept as well as some exciting directions for further development that I am currently pursuing.

= Motivation

_I should note that I mean motivation in a sense of "what's the problem I am solving?" If you're asking me about the "real world" utility of these space numbers...well I'm not sure :) I think of this as more of an exercise in creativity or art: I'm just having fun expressing myself._

In the 2D coordinate system we have the familiar four quadrants. In 3D however, we only have the first octant (the portion defined by the $x^+, y^+, z^+$ rays). While you can find some definitions online of the other octants, any spaces in higher dimensions seem from my research to be undefined.
I'm defining a space is any portion of a coordinate system whose borders are the axis lines.

Anyway, noticing this I wanted solve this problem by creating a way to name all spaces in all coordinate systems.

I also wanted these names to satisfy certain "nice" properties:
- *Backwards Compatible*: the space marked by $x^+, y^+$ in 2D should be labeled the exact same even if that plane is in 3D.

For example, the space N should have the same name in either of the illustrated cases, despite the quadrant being embedded in 3D space in one case.

#image("2d.png", width: 50%)
#image("3d.png", width: 50%)

- *Positive, Negative Information*: I think the essence of what the original quadrants in 2D express is the sign of the components of a point in that space. Thus these names should also indicate this information.

= Basic Definition
Now to the meat of what these space numbers are.

I have created a way to take any quadrant/octant/etc. and turn it into a number, as well as go backwards to get back the rays that define the space.

Just follow these steps every time:
+ List the coordinate signs in reverse order.
+ Place either 0, $+$, or $-$ for the coordinates depending on the space.
+ Substitute $0 arrow 0, + arrow 1, - arrow 2$ to get a nonnegative number, in base 3 . This is the space number.

To find information about a space based on the space number, just go backwards:
+ Convert the number into base 3 if it isn't already.
+ Convert numbers to signs. $0 arrow 0, 1 arrow +, 2 arrow -$
+ List the coordinates in reverse order. Match up coordinates to signs to get the information you need.

Let's look at some examples to handle the cases.

== Illustrative Space Number Constructions
=== Quadrant III $x^+, y^-$, in 2D: A familiar example
Let's find the space number of quadrant III:
+ First, we list the coordinate signs in reverse order. $y x$
+ Now, we substitute $y x arrow - +$
+ Now we substitute in the numbers, yielding our final space number. $-+ arrow 21_3$. In our usual base 10, this would be 7.

===  Quadrant III $x^+, y^-$, in 3D: Demonstrating backwards compatibility across dimensions
Let's find the space number of quadrant III in the 3D coordinate space:
+ First we list $z y x$
+ Substitute in the signs. For cases where there is no sign, place a $0$, since that coordinate is always 0 in the specific space. $z y x arrow 0-+$
+ Substitute the numbers for the signs: $0-+ arrow 021_3 = 21_3 = 7_10$.

Just like our previous space number!

Design note, this backwards compatibility across dimensions for the same space number is the reason why we reverse the coordinates in the number, that way we treat all "unseen" dimensions as $0$s in the front of the number.

=== Quadrant $x^+, z^+$, in 3D: Handling lower dimensional spaces in higher dimensional coordinate systems
+ First we list $z y x$
+ Substitute in the signs. $z y x arrow +0+$
+ Substitute in the numbers $+0+ arrow 101_3 = 10_10$.

=== Translating backwards from a space number: $11 arrow space ?$
+ First, we substitute in the signs. $11 arrow ++$
+ List all the usual coordinates in reverse order, that's $y x$
+ Matching up the coordinates, we get that our space is defined by $x^+, y^+$. This means that this is the familiar quadrant I.

= Looking Forward, Directions for Further Development
What I've created is essentially a way to map the set of spaces to a set of nonnegative whole numbers. I want to now take the set of spaces, and create operations on them. Hopefully, these operations will mean something both geomrtically, but also be computable using the set of space numbers.

I understand some of the basics of Group Theory, namely and most importantly in this case, the definition of a Group. I am currently trying to develop an operation to turn these spaces into a group.

It'd be nice to create a group out of the space numbers since then I'd get a bunch of theorems from the field of Group Theory for "free", as long as I can fit into the assumptions. I am curious what these properties will mean on these spaces.

One operation I am currently thinking of is the intersection operation. Conceptually, it is similar to the idea of conjunction from boolean algebra. For two spaces $s_1, s_2$, the intersection operation is defined as $s_1 and s_2 = s_3$ where $s_3$ is a space such that it contains points that can exist in either $s_1$ or $s_2$.

For example, if $s_1$ was $x^+, y^+, z^+$ and $s_2$ was $x^+, y^+$, then $s_3 = x^+,y^+$.
Now to compute the interesction of any two spaces, you can also first map to space numbers, and compute digit by digit using these rules:
+ $x and x = x$
+ $(x eq.not y), x and y = 0$
For example, $212 and 201 = 200$. These computational rules basically express that the only way the coordinate of a point can satisfy both spaces is if it has the same sign as in both spaces.

The intersection operation is nice since it has both a geometric meaning and a computational method. As someone interested in mostly computers, I want to create algorithmically tractable operations.

I'll have to see if I can now prove that these spaces form a group with the intersection operation, or if I will end up needing some other operation.

Ideally, other geometric operations I create will also have computational analogs, which I am personally excited by. I am currently thinking of also a union operation, which would result in a space that is the result of just combining two other spaces.

This one I am having a more difficult time creating. This would mean redefining the definition of a space, which would change the geometry. A computational method is also difficult, as it basically involves expanding the numerical representation of these spaces. But I want to explore this as this seems like a natural twin to the interesction operation.

= Conclusion and Parting Words
Now that I've created this concept of space numbers, I want to pursue it further and flesh it out. With the creation of the intersection operation, the possibility of trying to fit it into other pre-existing well studied algebraic structures is very exciting. I hope to study Group Theory, abstract algebra, and areas in geometry further to try to see what tools are available, and how I can integrate and link spaces and space numbers to other mathematics concepts. Who knows, perhaps this has already been studied, and there are mathematical formalisms about defining spaces!

If you find this work interesting and want to collaborate, please by all means contact me! My email is just "abid" at my domain abidsikder.com.
