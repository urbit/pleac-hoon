# PLEAC in Hoon

## Foreword (copied verbatum from the [original PLEAC project](http://pleac.sourceforge.net/))

Following the Perl Cookbook (by Tom Christiansen and Nathan Torkington, published by O'Reilly) spirit, the PLEAC Project aims to gather fans of programming, in order to implement the solutions in other programming languages.

In this document, you'll find an implementation of the Solutions of the Perl Cookbook in the Hoon language.

The material, considered as some Documentation, is wholly released under the GNU [Free Documentation License](http://www.gnu.org/copyleft/fdl.html).

## Commentary

We've realized we need a searchable Hoon/Arvo cookbook to supplement our core reference doc and high-level tutorials. We've decided to start a community project to implement the *Programming Language Examples Alike Cookbook*], or [*PLEAC*](http://pleac.sourceforge.net/), in Hoon.

PLEAC is the closest thing to a complete repository offering side-by-side comparisons of canonical solutions to example recipes in different programming languages. PLEAC has a more practical focus on discrete programming-language features than other example repositories like [Project Euler](https://projecteuler.net/), which has more of a mathematical, general problem-solving focus. A PLEAC implementation in Hoon would be a great resource for programmers new to Urbit. They would quickly be able to see, "Here's how I might do *x* in Python; here's how I might do something similar in Hoon."

But PLEAC isn't perfect. The main problems with PLEAC are:
1. It's outdated.
2. Many of the PLEAC recipes don't translate well to Hoon/Arvo.
3. Implementing only the existing PLEAC recipes would leave many unique Hoon/Arvo concepts uncovered.

We think the best way to solve these problems is for us to do all of PLEAC anyways, as closely as possible to the existing canonical solutions, and discuss our Hoon solutions publicly. Inevitably, it will become clear what Hoon/Arvo topics are not being covered, and we can add those to create our own complete Urbit cookbook over time.

## Contributing

Help us finish this! We're now accepting pull requests.

For each PLEAC chapter, we've set up a corresponding [Github project](https://github.com/urbit/pleac-hoon/projects?query=is%3Aopen+sort%3Aname-asc) to track progress publicly. If you want to take on a subsection of a chapter, just add your username to the end of the matching To Do card and move your card into the In Progress column. That way nobody else accidentally starts working on the same thing you're working on!

In general, please try to follow as closely as possible the style of the few solutions that have already been pushed, which is a very rough maintenance-branch translation of @cgyarvin's [doccord](https://urbit.org/fora/posts/~2017.4.7..06.37.22..c960~/) style guide. For general Urbit contributing guidelines, see [this document](https://github.com/urbit/urbit/blob/maint-0.4/CONTRIBUTING.md).

## Fora

The original Fora post discussing this project can be found [here](https://urbit.org/~~/fora/posts/~2017.7.8..00.18.47..9d5e~/). After looking through the [original PLEAC chapters](http://pleac.sourceforge.net/pleac_perl/index.html) a bit, **comment on the post**: what would be great additional (or modified) Hoon/Arvo-specific chapters? Just a few things that come to mind are:
* Molds and auras
* Subject-oriented programming
* Units
* Arrays vs. Hoon tuples and lists
* OOP vs. pure FP, generally speaking
* Wet gates
* Hints and jets
* Unix interfaces vs. Arvo vane interfaces.

Thanks!
