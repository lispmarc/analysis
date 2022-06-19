<TeXmacs|2.1>

<project|Book.tm>

<style|<tuple|book|old-spacing|old-dots|old-lengths|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|13><chapter|Differentiability in normed vector spaces>

  We assume in this chapter that, unless stated otherwise, all the normed and
  Banach spaces are using the same field <math|\<bbb-K\>> where
  <math|\<bbb-K\>> is either <math|\<bbb-C\>> or <math|\<bbb-R\>>. Further we
  use the following notation for constant functions.

  <\notation>
    Let <math|X,Y> be sets, <math|y\<in\>Y> then
    <math|C<rsub|X,Y,y>:X\<rightarrow\>Y> is defined
    <math|C<rsub|X,Y,y><around*|(|x|)>=y> [see <reference|constant function>]
    For example if <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are normed spaces and <math|U\<subseteq\>X> then we have\ 

    <\enumerate>
      <item><math|C<rsub|X,Y,y>> is the function from <math|X> to <math|Y>
      defined by <math|C<rsub|X,Y,y><around*|(|x|)>=y\<in\>Y>

      <item><math|C<rsub|X,Y,0>> is the function from <math|X> to <math|Y>
      defined by <math|C<rsub|X,Y,0><around*|(|x|)>=0> where <math|0> is the
      neutral element of <math|Y>

      <item><math|C<rsub|U,Y,y>> is the function from <math|U> to <math|Y>
      defined by <math|C<rsub|U,Y,y><around*|(|x|)>=y\<in\>Y>

      <item><math|C<rsub|U,Y,0>> is the function from <math|U> to <math|Y>
      defined by <math|C<rsub|U,Y,0><around*|(|x|)>=0> where <math|0> is the
      neutral element of <math|Y>

      <item>Let <math|n\<in\>\<bbb-N\>> then
      <math|C<rsub|X,L<rsup|n>*<around*|(|X;Y|)>,0>> is the function from
      <math|X> to <math|Y> defined by <math|><math|C<rsub|X,L<rsup|n>*<around*|(|X;Y|)>,0><around*|(|x|)>=0>
      where <math|0> is the neutral element in
      <math|L<rsup|n><around*|(|X,Y|)>>

      <item>Let <math|n\<in\>\<bbb-N\>> then
      <math|C<rsub|U,L<rsup|n>*<around*|(|X;Y|)>,0>> is the function from
      <math|U> to <math|Y> defined by <math|><math|C<rsub|U,L<rsup|n>*<around*|(|X;Y|)>,0><around*|(|x|)>=0>
      where <math|0> is the neutral element in
      <math|L<rsup|n><around*|(|X,Y|)>>
    </enumerate>
  </notation>

  <section|Differentiability>

  \;

  <subsection|Differential>

  \;

  A function is differentiable at a point if we can approximate the function
  with a continuous linear function in a small enough neighborhood around the
  point. To ensure that we don't evaluate the function outside its domain we
  define given a set <math|U> the set <math|U<rsub|x>>.

  <\definition>
    <label|Ux definition><index|<math|U<rsub|x>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed vector space and let <math|U\<subseteq\>X,x\<in\>U> then
    <math|U<rsub|x>=<around*|{|h\<in\>X\|x+h\<in\>U|}>>
  </definition>

  <\proposition>
    <label|B(0,d)=B(x,d)_x>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|\<delta\>\<gtr\>0> and <math|x\<in\>X> then
    <math|B<around*|(|0,\<delta\>|)>=B<around*|(|x,\<delta\>|)><rsub|x>>\ 
  </proposition>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h\<in\>B<around*|(|x,\<delta\>|)><rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|x+h\<in\>B<around*|(|x,\<delta\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>X\<wedge\><around*|\<\|\|\>|x+h-x|\<\|\|\>>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>X\<wedge\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>>>>>
    </eqnarray*>

    \;
  </proof>

  <\theorem>
    <label|alternative definition of Ux>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed vector space, <math|U\<subseteq\>X>, <math|x\<in\>U> then
    <math|U<rsub|x>=<around*|(|-x|)>+U=U-x>
  </theorem>

  <\proof>
    \ First\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h\<in\>U<rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|x+h\<in\>U>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>U
      with x+h=y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>U
      with h=<around*|(|-x|)>+y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\><around*|(|-x|)>+U>>>>
    </eqnarray*>

    Second\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|h\<in\><around*|(|-x|)>+U>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>U
      with h=<around*|(|-x|)>+y>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>y\<in\>U
      with h=y-x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|h\<in\>U-x>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|Ux is open>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed vector space and let <math|U\<subseteq\>X open,x\<in\>U> then
    <math|U<rsub|x>> is open.
  </theorem>

  <\proof>
    This follows directly from the above and <reference|normed space
    properties>\ 
  </proof>

  Let's now define the differentiability of a function.\ 

  <\definition>
    <label|differentiability definition one>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be real normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y> then a function <math|f:U\<rightarrow\>V> is
    differentiable at <math|x\<in\>U> if and only if there exists a
    continuous linear function <math|L:X\<rightarrow\>Y> (or
    <math|L\<in\>L<around*|(|X,Y|)>>) such that
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> such that for all <math|h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|x>\<less\>\<delta\>> we have
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
  </definition>

  Note that <math|h\<in\>U<rsub|x>> ensures that
  <math|x+h\<in\>U=dom<around*|(|f|)>> so our definition is well defined.
  Next we will prove that the linear approximation of <math|f> is unique.

  <\theorem>
    <label|uniqueness of differential>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be real normed space, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U> and <math|f:U\<rightarrow\>V>
    differentiable at <math|x> then the <math|L> used in the above definition
    is unique
  </theorem>

  <\proof>
    Let <math|h\<in\>X> then we have the following cases to consider:

    <\description>
      <item*|<math|h=0>>then <math|<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<rsub|1><around*|(|0|)>-L<rsub|2><around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0-0|\<\|\|\>><rsub|\|Y>=0>

      <item*|<math|h\<neq\>0>>Let <math|\<varepsilon\>\<gtr\>0> then for
      <math|i\<in\><around*|{|1,.2|}>> there exists
      <math|\<delta\><rsub|i>\<gtr\>0> such that for <math|h\<in\>U<rsub|x>>
      and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|i>>
      we have <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<rsub|i><around*|(|h|)>|)>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Further as <math|U<rsub|x>> is open there exists a
      <math|\<delta\><rsub|3>\<gtr\>0> such that
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|3>|)>\<subseteq\>U<rsub|x>>.
      Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
      and define <math|h<rprime|'>=<frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>><around*|\<nobracket\>|\<cdot\>h|\<nobracket\>>>
      then <math|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>=<frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<frac|\<delta\>|2>\<less\>\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>>
      so that <math|h<rprime|'>\<in\>U<rsub|x>> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<rsub|1><around*|(|h<rprime|'>|)>-L<rsub|2><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x<rprime|'>|)>-L<rsub|2><around*|(|h<rprime|'>|)>|)>-<around*|(|f<around*|(|x+h<rprime|'>|)>-f<around*|(|x|)>-L<rsub|1><around*|(|h<rprime|'>|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X><eq-number><label|eq
        14.1.100>>>>>
      </eqnarray*>

      hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|L<rsub|1>L<rsub|2>
        are linear>>|<cell|<around*|\<\|\|\>|L<rsub|2><around*|(|<frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\>h|)>-L<rsub|1><around*|(|<frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\>h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<rsub|2><around*|(|h<rprime|'>|)>-L<rsub|1><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        14.1.100>>>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      As <math|\<varepsilon\>> was chosen arbitrary we have by
      <reference|consequence of the Archimedean property (2)> that
      <math|><math|0\<leqslant\><frac|\<delta\>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>0>
      proving that <math|<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>=0>.
      \ 
    </description>

    So we have for <math|h\<in\>X> that <math|<around*|\<\|\|\>|L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>|\<\|\|\>><rsub|Y>=0\<Rightarrow\>L<rsub|1><around*|(|h|)>-L<rsub|2><around*|(|h|)>=0\<Rightarrow\>L<rsub|1><around*|(|h|)>=L<rsub|2><around*|(|h|)>>
    which proves that <math|L<rsub|1>=L<rsub|2>>.
  </proof>

  The unique continuous linear approximation of a function at a point is
  called the differential of the function at this point.

  <\definition>
    <label|differential of a function><index|<math|Df<around*|(|x|)>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be real normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U> and <math|f:U\<rightarrow\>V>
    differentiable at <math|x> then the unique [by the previous theorem]
    <math|L\<in\>L<around*|(|X,Y|)>> such that
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> so that if <math|h\<in\>U<rsub|x>> and
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
    is called the <with|font-series|bold|differential of f at x> and is noted
    as <math|D f<around*|(|x|)>>. In other words <math|f> is differentiable
    at <math|x> with differential <math|D f<around*|(|x|)>> if and only there
    exists a <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> [which is
    unique] such that \ <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists
    a <math|\<delta\>\<gtr\>0> such that if <math|h\<in\>U<rsub|x>> and
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
  </definition>

  The next theorem shows that differentiation is independent of the chosen
  norm (as long as the norms are equivalent).

  <\theorem>
    <label|differentiability at x is independent of norms>Let <math|X,Y> be
    vector spaces over <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X>, equivalent norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>
    on <math|Y>, <math|U\<subseteq\>X> a open set [as norms are equivalent
    the topology on <math|X,Y> is the same for the two norms hence <math|U>
    is open in both topologies], <math|V\<subseteq\>Y> and
    <math|f:U\<rightarrow\>V> a function then if <math|f> is differentiable
    at <math|x\<in\>U> with differential <math|D f<around*|(|x|)>> [using
    norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>]
    we have that <math|f> is differentiable at <math|x\<in\>U> with
    differential <math|D f<around*|(|x|)>> [using norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>]
  </theorem>

  <\proof>
    From the equivalence of the norms we have by <reference|equivalence of
    norms> that there exists <math|\<alpha\><rsub|X>,\<beta\><rsub|X>,\<alpha\><rsub|Y>,\<beta\><rsub|Y>\<gtr\>0>
    such that <math|\<forall\>x\<in\>X> and <math|\<forall\>y\<in\>Y> we have\ 

    <\equation>
      <label|eq 14.8.100>\<alpha\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>><infix-and>\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>
    </equation>

    Assume that <math|f:U\<rightarrow\>V> is differentiable at <math|x> with
    differential <math|D f<around*|(|x|)>> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>,<math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>.
    Then for <math|\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\><rprime|'>> such that\ 

    <\equation>
      <label|eq 14.9.100><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>
    </equation>

    Take <math|\<delta\>=<frac|\<delta\><rprime|'>|\<beta\><rsub|X>>> then
    <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\>> we
    have <math|\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>\<less\>\<delta\><rprime|'>\<Rightarrowlim\><rsub|<text|<reference|eq
    14.8.100>>><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<less\>\<delta\><rprime|'>>
    so using <reference|eq 14.9.100> we have that
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|Y>\<cdot\>\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>>
    so that <math|\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\><rsub|<text|<reference|eq
    14.8.100>>>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>>
    or using <reference|eq 14.8.100> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>
    </equation*>

    which together with the fact that <math|D f<around*|(|x|)>> is also a
    continuous function between <math|X> an <math|Y> [as the topologies are
    the same] proves that <math|f> has also a differential <math|D
    f<around*|(|x|)>> at <math|x> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>.
  </proof>

  We now prove that differentiability of <math|f:U\<rightarrow\>V> at
  <math|x> is essential a local property and is not dependent on <math|U> but
  just on the value of <math|f> near <math|x>. Further differentiability is
  only dependent on the range of a function\ 

  <\theorem>
    <label|differentiability and restricted mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    \ <math|x\<in\>U> and <math|f:U\<rightarrow\>V> then

    <\enumerate>
      <item>If <math|f> is differentiable at <math|x> then\ 

      <\enumerate>
        <item><math|\<forall\>W> open with <math|x\<in\>W\<subseteq\>U> we
        have that <math|f<rsub|\|W>:W\<rightarrow\>Y> is differentiable at
        <math|x>

        <item><math|\<forall\>W\<subseteq\>Y> with
        <math|range<around*|(|f|)>\<subseteq\>W> we have that
        <math|f:U\<rightarrow\>W> is differentiable at <math|x>
      </enumerate>

      <item>If there exists a <math|W\<subseteq\>X> open with
      <math|x\<in\>W\<subseteq\>U> such that
      <math|f<rsub|\|W>:W\<rightarrow\>V> is differentiable at <math|x> then
      <math|f:U\<rightarrow\>V> is differentiable at <math|x>.

      <item>If there exists a <math|W\<subseteq\>Y> with
      <math|range<around*|(|f|)>\<subseteq\>W> such that
      <math|f:U\<rightarrow\>W> is differentiable at <math|x> then
      <math|f:U\<rightarrow\>V> is differentiable at <math|x>
    </enumerate>

    Also <math|D f<around*|(|x|)>=D<around*|(|f<rsub|\|V>|)><around*|(|x|)>>
    in (1),(2) and (3).
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item> As <math|f> is differentiable we have given
      <math|\<varepsilon\>\<gtr\>0> a <math|\<delta\>\<gtr\>0> so that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.

      <\enumerate>
        <item>Now if <math|h\<in\>W<rsub|x>\<Rightarrow\>x+h\<in\>W\<subseteq\>U\<Rightarrow\>h\<in\>U<rsub|x>\<Rightarrow\>W<rsub|x>\<subseteq\>U<rsub|x>>.
        So if <math|h\<in\>W<rsub|x>> with
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
        <math|<around*|\<\|\|\>|f<rsub|\|W><around*|(|x+h|)>-f<rsub|\|W><around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x+h,x\<in\>W><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
        proving that <math|f<rsub|\|W>:W\<rightarrow\>Z> is differentiable
        with differential <math|D f<around*|(|x|)>> and thus
        <math|D<around*|(|f<rsub|\|W>|)><around*|(|x|)>=D f<around*|(|x|)>>

        <item>Note that differentiability is a property of the graph of a
        function. Hence if <math|range<around*|(|f|)>\<subseteq\>W\<subseteq\>Y>
        then as the graph of <math|f:U\<rightarrow\>V> and
        <math|f:U\<rightarrow\>W> is <math|f> we have that
        <math|f:U\<rightarrow\>W> is differentiable at <math|x> with the same
        differential <math|D f<around*|(|x|)>>
      </enumerate>

      <item>First as <math|x\<in\>W> open there exists a
      <math|\<delta\><rsub|1>\<gtr\>0> such that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>W>,
      so if <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<leqslant\>\<delta\><rsub|1>
      then <around*|\<\|\|\>|x+h-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>\<Rightarrow\>x+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>W>
      or in other words

      <\equation>
        <label|eq 12.1>\<exists\>\<delta\><rsub|1>\<gtr\>0 such that if
        <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<leqslant\>\<delta\><rsub|1>\<Rightarrow\>h\<in\>W<rsub|x>
      </equation>

      Take now <math|\<varepsilon\>\<gtr\>0>, then by differentiability of
      <math|f<rsub|\|W>> there exists a <math|\<delta\><rsub|2>\<gtr\>0> such
      that if <math|h\<in\>W<rsub|x>> and
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      then <math|<around*|\<\|\|\>|f<rsub|\|W><around*|(|x+h|)>-f<rsub|\|W><around*|(|x|)>-D<around*|(|f<rsub|\|W>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<around*|(|f<rsub|\|W>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|\|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      or in other words

      <\equation>
        <label|eq 12.2>if h\<in\>W<rsub|x> and
        <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2> then
        <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<around*|(|f<rsub|\|W>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
      </equation>

      Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then \ if <math|h\<in\>U<rsub|x>> and
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>\<Rightarrowlim\><rsub|<with|mode|text|<reference|eq
      12.1>>>h\<in\>W<rsub|x>> and as <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      we have by <reference|eq 12.2> that
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D<around*|(|f<rsub|\|W>|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving that <math|f> is differentiable at <math|x> with differential
      <math|D<around*|(|f<rsub|\|W>|)><around*|(|x|)>> thus <math|D
      f<around*|(|x|)>=D<around*|(|f<rsub|W>|)><around*|(|x|)>>.

      <item>Note that differentiability is a property of the graph of a
      function. Hence if <math|range<around*|(|f|)>\<subseteq\>W\<subseteq\>Y>
      then as the graph of <math|f:U\<rightarrow\>V> and
      <math|f:U\<rightarrow\>W> is <math|f> we have that
      <math|f:U\<rightarrow\>V> is differentiable at <math|x> with the same
      differential <math|D f<around*|(|x|)>>.
    </enumerate>
  </proof>

  \;

  Let's now look at some alternative definitions for differentiability at a
  point.\ 

  <\definition>
    <label|e-mappings><index|<math|\<varepsilon\>>-mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and <math|x\<in\>U>
    then a <math|\<varepsilon\>>-mapping at <math|x> is a function
    <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> which is continuous at
    <math|0\<in\>U<rsub|x>> [using the subspace topology on <math|U<rsub|x>>]
    and for which <math|\<varepsilon\><around*|(|0|)>=0>\ 
  </definition>

  We prove now the following equivalent alternative definitions of
  differentiability

  <\theorem>
    <label|alternative definitions of differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U> and <math|f:U\<rightarrow\>V> a
    function then the following are equivalent

    <\enumerate>
      <item><math|f> is differentiable at <math|x> with differential <math|D
      f<around*|(|x|)>>

      <item>There exists a <math|D f<around*|(|x|)>\<in\>:<around*|(|X,Y|)>>
      and a <math|\<varepsilon\>>-mapping
      <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> such that
      <math|\<forall\>h\<in\>U<rsub|x>> we have
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

      <item>There exists a <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
      such that <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<varepsilon\>>
      \ we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>

      <item>There exists a <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
      such that <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      with <math|<below|lim|h\<rightarrow\>0>h<rsub|i>=0> and
      <math|\<forall\>i\<in\>\<bbb-N\>> <math|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>\<gtr\>0>
      and <math|h<rsub|i>\<in\>U<rsub|x>> we have that
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Define
      <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> by
      <math|\<varepsilon\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|0
      if h=0>>|<row|<cell|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      if h\<neq\>0>>>>>> then we have that
      <math|\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=<choice|<tformat|<table|<row|<cell|0
      if h=0>>|<row|<cell|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)> if h\<neq\>0>>>>>=f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>>. Further
      take <math|\<zeta\>\<gtr\>0> then by definition there exists a
      <math|\<delta\>\<gtr\>0> such that for <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<zeta\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<zeta\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>><space|1em>so
      that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>\<less\>\<zeta\>
        if h=0>>|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<zeta\>
        if h\<neq\>0>>>>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<zeta\>>>>>
      </eqnarray*>

      which using <reference|subspace topology of a normed space> and
      <reference|continuity of function in a normed space> proves that
      <math|\<varepsilon\>> is continuous at <math|0> in the subspace
      topology on <math|U<rsub|x>>.

      <item*|<math|2\<Rightarrow\>3>>Let <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y>
      be the <math|\<varepsilon\>>-mapping such that
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      <math|\<forall\>h\<in\>U<rsub|x>>. Then as <math|\<varepsilon\>> is
      continuous at <math|0> and <math|\<varepsilon\><around*|(|0|)>=0> there
      exists given a <math|\<zeta\>\<gtr\>0> a <math|\<delta\>\<gtr\>0> such
      that if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>>
      so that if additional <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|X>\<less\>\<zeta\>>.

      <item*|<math|3\<Rightarrow\>1>>Let <math|\<varepsilon\>\<gtr\>0>, find
      a <math|\<delta\>\<gtr\>0> such that for <math|h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|Y>>\<less\>\<varepsilon\>>.
      Now <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      two cases to consider

      <\description>
        <item*|<math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=0>>then <math|h=0>
        so that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=0\<leqslant\>0=\<varepsilon\>\<cdot\>0=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

        <item*|<math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<neq\>0>>then
        <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      </description>

      so in all cases we have <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving differentiability at <math|x>.

      <item*|<math|3\<Rightarrow\>4>>Let <math|<around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      be a sequence of strict positive real numbers with limit <math|0>. Take
      now <math|\<varepsilon\>\<gtr\>0> then by (3) there exists a
      <math|\<delta\><rsub|\<varepsilon\>>> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|\<varepsilon\>>>
      we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>.
      As <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0> there exists
      a <math|N\<in\>\<bbb-N\>> such that <math|\<forall\>n\<geqslant\>N> we
      have <math|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>>\<less\>\<delta\><rsub|\<varepsilon\>>>,
      then as we have assumed that <math|\<forall\>n\<in\>\<bbb-N\>>
      \ <math|0\<less\>h<rsub|n>\<in\>U<rsub|x>>, we have if
      \ <math|n\<geqslant\>N> \ that <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>
      proving that

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0
      </equation*>

      <item*|<math|4\<Rightarrow\>3>>Assume that (3) is false then there
      exists a <math|\<varepsilon\><rsub|0>\<gtr\>0> such that
      <math|\<forall\>\<delta\>\<gtr\>0> there exists a
      <math|h\<in\>U<rsub|x>> with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      so that <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>>.
      So for every <math|n\<in\>\<bbb-N\>> there exists a
      <math|h<rsub|n>\<in\>U<rsub|x>> with
      <math|0\<less\><around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<less\><frac|1|n>>
      so that <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<gtr\>\<varepsilon\><rsub|0>>.
      Now if <math|\<delta\>\<gtr\>0> there exists by the Archimedean
      property [see <reference|consequence of the archimedean property for
      the reals>] a <math|N<rsub|\<delta\>>\<in\>\<bbb-N\>> such that
      <math|<frac|1|N<rsub|\<delta\>>>\<less\>\<delta\>> so if
      <math|n\<geqslant\>N<rsub|\<delta\>>> we have
      <math|<around*|\<\|\|\>|h<rsub|n>-0|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<less\><frac|1|n>\<leqslant\><frac|1|N<rsub|\<delta\>>>\<less\>\<delta\>>
      proving that <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0>.
      Now by the hypothesis (4) we must have that
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0>
      and thus there exists a <math|N\<in\>\<bbb-N\>> such that for
      <math|n\<geqslant\>max<around*|(|N,N<rsub|\<delta\>>|)>> we have
      <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>>>\<less\>\<varepsilon\><rsub|0>>
      contradicting <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|N>|\<\|\|\>>>\<gtr\>\<varepsilon\><rsub|0>>.
      As the assumption gives a contradiction we must have that (3) is true.
    </description>
  </proof>

  <\remark>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are finite dimensional spaces then by <reference|linear maps between
    finite dimesnional spaces are continuous> we have that every linear map
    between <math|X> and <math|Y> is continuous, so in the the previous
    theorem and the definition of differentiability we can leave out the
    requirement for the continuity of <math|D f<around*|(|x|)>> in the finite
    dimensional case.
  </remark>

  Using the alternative definitions of differentiability [see
  <reference|alternative definitions of differentiability>] and the locality
  of the differential [see <reference|differentiability and restricted
  mapping>] we have then the following criteria for differentiability.

  <\corollary>
    <label|alternative definition of differentiability (2)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U>,
    <math|V\<subseteq\>Y> and <math|f:U\<rightarrow\>V> a function then the
    following are equivalent

    <\enumerate>
      <item><math|f> is differentiable at <math|x> with differential <math|D
      f<around*|(|x|)>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W>, a
      <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> and a
      <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:W<rsub|x>\<rightarrow\>Y>
      such that <math|\<forall\>h\<in\>W<rsub|x>> we have
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W,> a
      <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>W<rsub|x>>
      with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<varepsilon\>>
      \ we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W>, a
      <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> such that
      <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> with
      <math|<below|lim|h\<rightarrow\>0>h<rsub|i>=0> and
      <math|\<forall\>i\<in\>\<bbb-N\>> <math|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>>\<gtr\>0>
      and <math|h<rsub|i>\<in\>W<rsub|x>> we have that
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0>
    </enumerate>
  </corollary>

  The following theorem is a consequence of the fact that the differential is
  a continuous map.

  <\theorem>
    <label|differentiability at x implies continuity at x>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y,> <math|x\<in\>U>and <math|f:U\<rightarrow\>V> a
    function that is differentiable at <math|x> then <math|f> is continuous
    at <math|x>.
  </theorem>

  <\proof>
    Let <math|W> be a open subset of <math|Y> with
    <math|f<around*|(|x|)>\<in\>W> then we have\ 

    <\equation>
      <label|eq 14.2.100>\<exists\>\<delta\><rsub|1>\<gtr\>0 such that
      f<around*|(|x|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|f<around*|(|x|)>,\<delta\><rsub|1>|)>\<subseteq\>W
    </equation>

    From the alternative \ definition of differentiability at <math|x> (see
    <reference|alternative definitions of differentiability>) there exists a
    <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y>
    such that <math|\<forall\>h\<in\>U<rsub|x>> we have
    <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
    As <math|\<varepsilon\>> is continuous at <math|0> and
    <math|\<varepsilon\><around*|(|0|)>=0> there exists a
    <math|\<delta\><rsub|2><rprime|'>\<gtr\>0> such that if
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>>.
    Take now <math|\<delta\><rsub|2>=min<around*|(|\<delta\><rprime|'><rsub|2>,1|)>>
    then we have <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\>|2>>
    if <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
    giving

    <\equation>
      <label|eq 14.3.100>If h\<in\>U<rsub|x><infix-and><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>
      then <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>
    </equation>

    Using the continuity of the linear map <math|D f<around*|(|x|)>> and
    <math|D f<around*|(|x|)><around*|(|0|)>=0> we have also\ 

    <\equation>
      <label|eq 14.4.100>\<exists\>\<delta\><rsub|3>\<gtr\>0 such that if
      <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|3> then
      <around*|\<\|\|\>|D f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>
    </equation>

    As <math|U> is open and <math|x\<in\>U> we have\ 

    <\equation>
      <label|eq 14.5.100>\<exists\>\<delta\><rsub|4>\<gtr\>0 such that
      x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|4>|)>\<subseteq\>U
    </equation>

    Define now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>,\<delta\><rsub|4>|)>>.
    If <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\><rsub|4>|)>>
    then by the above <math|y\<in\>U> so that
    <math|<around*|(|y-x|)>+x=y\<in\>U> or <math|y-x\<in\>U<rsub|x>> and as
    <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\>\<less\>\<delta\><rsub|2>>
    we have by <reference|eq 14.3.100> that
    <math|<around*|\<\|\|\>|f<around*|(|x+<around*|(|y-x|)>|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>>
    giving\ 

    <\equation>
      <label|eq 14.6.100>\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>
      we have \ <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>
    </equation>

    Further if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    we have also that \ <math|<around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|3>>
    so that by <reference|eq 14.4.100> we have\ 

    <\equation>
      <label|eq 14.7.100>\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,y|)>
      we have <around*|\<\|\|\>|D f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rsub|1>|2>
    </equation>

    Finally if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>+D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      14.6.100>.<reference|eq 14.7.100>>>>|<cell|<frac|\<delta\><rsub|1>|2>+<frac|\<delta\><rsub|1>|2>=\<delta\>>>>>
    </eqnarray*>

    which proves that <math|f> is continuous at <math|x>.
  </proof>

  Let's study now some trivial examples of functions differentiable at a
  point.

  <\example>
    <label|differential of the constant function><index|differential of a
    constant function><dueto|Differential of a constant function>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|y\<in\>Y>, <math|U\<subseteq\>X,V\<subseteq\>Y>
    open and <math|C<rsub|U,V,y>:U\<rightarrow\>V> defined by
    <math|C<rsub|U,V,y><around*|(|x|)>=y> then
    <math|C<rsub|U,V,y>:U\<rightarrow\>V> is differentiable at every
    <math|x\<in\>U> and <math|D C<rsub|U,V,y><around*|(|x|)>=C<rsub|X,Y,0>>
    where <math|C<rsub|X,Y,0>:X\<rightarrow\>Y> is defined by
    <math|C<rsub|X,V,0><around*|(|x|)>=0>
  </example>

  <\proof>
    Let <math|x\<in\>U> and take <math|\<varepsilon\>\<gtr\>0> then for
    <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1>
    we have <math|<around*|\<\|\|\>|C<rsub|U,V,y><around*|(|x+h|)>-C<rsub|U,V,y><around*|(|x|)>-C<rsub|X,Y,0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
    Also as <math|\<forall\>x\<in\>X> <math|>we have
    <math|<around*|\<\|\|\>|C<rsub|X,Y,0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>0\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    it follows that <math|C<rsub|X,Y,0>\<in\>L<around*|(|X,Y|)>>.
  </proof>

  <\example>
    <label|differential of a linear function><index|differential of a linear
    \ function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then \ <math|\<forall\>L\<in\>L<around*|(|X,Y|)>> we
    have <math|\<forall\>x\<in\>X> that <math|L> is differentiable at
    <math|x> with differential <math|D L<around*|(|x|)>=L>
  </example>

  <\proof>
    If <math|\<varepsilon\>\<gtr\>0> and <math|h\<in\>X<rsub|x>=X> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1> then
    <math|<around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
    proving that <math|L> is differentiable at every <math|x\<in\>U> with
    <math|D L<around*|(|x|)>=L>.
  </proof>

  <subsection|Derivative of a function>

  <\definition>
    <label|derivative><index|derivative><index|<math|f<rprime|'>>>Given
    <math|<around*|\<langle\>|\<bbb-K\>, <around*|\|||\|>|\<rangle\>>> (where
    <math|\<bbb-K\>=\<bbb-R\>> or <math|\<bbb-C\>>),
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\>> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U><math|> and a function
    <math|f:U\<rightarrow\>V> then <math|f> has a
    <with|font-series|bold|derivate> at <math|x> noted by
    <math|f<rprime|'><around*|(|x|)>> if and only if
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>> with
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
    <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>>
  </definition>

  The above notation suggests that the derivate of a function, if it exists,
  is unique. The following theorem shows that this is indeed so and also the
  relation with the differential of a function.

  <\theorem>
    <label|differentias and derivates>Given
    <math|<around*|\<langle\>|\<bbb-K\>, <around*|\|||\|>|\<rangle\>>> (where
    <math|\<bbb-K\>=\<bbb-R\>> or <math|\<bbb-C\>>),
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\>> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U> and a function
    <math|f:U\<rightarrow\>V> then <math|f> is differentiable at <math|x>
    with differential <math|D f<around*|(|x|)>> if and only if <math|f> has a
    derivate <math|f<rprime|'><around*|(|x|)>> at <math|x>.\ 

    Furthermore if <math|f> is differentiable [or equivalent has a derivate]
    then <math|D f<around*|(|x|)>:\<bbb-K\>\<rightarrow\>Y> is defined by
    <math|h\<rightarrow\>D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>
    which means that <math|f<rprime|'><around*|(|x|)>=D
    f<around*|(|x|)><around*|(|1|)>>.\ 

    Note that as the differential is unique this theorem also proves that the
    derivate must be unique.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is differentiable with
      differential <math|D f<around*|(|x|)>>, take then
      <math|f<rprime|'><around*|(|x|)>=D f<around*|(|x|)><around*|(|1|)>>
      then as <math|D f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,Y|)>> we
      have <math|\<forall\>h\<in\>\<bbb-K\>> that <math|D
      f<around*|(|x|)><around*|(|h|)>=D f<around*|(|x|)><around*|(|h\<cdot\>1|)>=h\<cdot\>D
      f<around*|(|x|)><around*|(|1|)>=h\<cdot\>f<rprime|'><around*|(|x|)>>.
      Using <reference|alternative definitions of differentiability> (3) we
      have that given a <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
      <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>|<around*|\||h|\|>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|h>|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|f<rprime|'><around*|(|x|)>=D
      f<around*|(|x|)><around*|(|1|)>> is indeed a derivate of <math|f> at
      <math|x> and that <math|D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>

      <item*|<math|\<Leftarrow\>>>Define <math|D
      f<around*|(|x|)>:\<bbb-K\>\<rightarrow\>Y> by
      <math|h\<rightarrow\>f<rprime|'><around*|(|x|)>\<cdot\>h> where
      <math|f<rprime|'><around*|(|x|)>> is a derivate of <math|f>, which is
      trivially linear and is also continuous [as <math|<around*|\<\|\|\>|D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>\<cdot\>h|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\||h|\|>>].\ 

      Further given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<Rightarrow\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>|<around*|\||h|\|>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|h>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>>
      which proves by <reference|alternative definitions of
      differentiability> (3) that <math|f> is differentiable at <math|x> with
      <math|D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>.
    </description>
  </proof>

  As the differentiability of a function is a local property the above
  theorem shows that this is also true for the existence of the derivate of a
  function.

  <\corollary>
    <label|derivative is local>Given <math|<around*|\<langle\>|\<bbb-K\>,
    <around*|\|||\|>|\<rangle\>>> (where <math|\<bbb-K\>=\<bbb-R\>> or
    <math|\<bbb-C\>>), <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>>, <math|V\<subseteq\>Y>,
    <math|x\<in\>U> a open set, a function <math|f:U\<rightarrow\>V> and
    <math|W\<subseteq\>U> a open set with <math|x\<in\>W> then <math|f> has a
    derivate at <math|x> if and only of <math|f<rsub|\|W>> has a derivate at
    <math|x> and <math|<around*|(|f<rsub|\|W>|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>>
  </corollary>

  <\proof>
    \ This follows from <reference|differentiability and restricted mapping>
    and the above theorem.
  </proof>

  <subsection|Properties of the differential>

  <\theorem>
    <label|sum of differentiable functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>>, <math|U\<subseteq\>X> a open set,
    <math|V<rsub|f>,V<rsub|g>\<subseteq\>Y> and
    <math|f:U\<rightarrow\>V<rsub|f>>, <math|g:U\<rightarrow\>V<rsub|g>> be
    functions differentiable at <math|x\<in\>U> then\ 

    <\enumerate>
      <item><math|f+g:U\<rightarrow\>V<rsub|f>+V<rsub|g>> is differentiable
      at <math|x> with <math|D<around*|(|f+g|)><around*|(|x|)>=D
      f<around*|(|x|)>+D g<around*|(|x|)>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> then
      <math|\<alpha\>\<cdot\>f:U\<rightarrow\>\<alpha\>\<cdot\>V<rsub|f>> is
      differentiable at <math|x> with <math|D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D
      f<around*|(|x|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ \ 

    <\enumerate>
      <item>Let <math|\<varepsilon\>\<gtr\>0> then as <math|f,g> are
      differentiable at <math|x> there exists
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<gtr\>0> such that if
      <math|h\<in\>U<rsub|x>> we have if <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
      then <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      and if <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      then <math|<around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-D
      g<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      So if <math|h\<in\>U<rsub|x> and <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      we have that \ <math|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x+h|)>-<around*|(|f+g|)><around*|(|h|)>-<around*|(|D
      f<around*|(|x|)>+D g<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>+g<around*|(|x+h|)>-g<around*|(|x|)>-D
      g<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|x+h|)>-g<around*|(|x|)>-D
      g<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<frac|\<varepsilon\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving that <math|f+g> s differentiable with differential <math|D
      f<around*|(|x|)>+D g<around*|(|x|)>>.

      <item>Let <math|\<varepsilon\>\<gtr\>0> then by the differentiability
      of <math|f> at <math|x> there exists a <math|\<delta\>\<gtr\>0> such
      that if <math|h\<in\>U<rsub|x>> and
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>=D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      So <math|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x+h|)>-<around*|(|\<alpha\>\<cdot\>f|)><around*|(|h|)>-\<alpha\>\<cdot\>D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>+1>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Proving that <math|\<alpha\>\<cdot\>f> is indeed differentiable at
      <math|x\<in\>U> with differential <math|\<alpha\>\<cdot\>D
      f<around*|(|x|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|chain rule><index|chain rule><dueto|The chain rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,<math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>

    , <math|V\<subseteq\>Y> be open sets, <math|R\<subseteq\>Y>,
    <math|S\<subseteq\>Z>, <math|f:U\<rightarrow\>R>,
    <math|g:V\<rightarrow\>S> functions, <math|x\<in\>U<big|cap>f<rsup|-1><around*|(|V|)>>
    such that <math|f> is differentiable at <math|x> and <math|g> is
    differentiable at <math|f<around*|(|x|)>> then
    <math|g\<circ\>f:U<big|cap>f<rsup|-1>*<around*|(|V|)>\<rightarrow\>S> is
    differentiable at <math|x> with <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>
  </theorem>

  <\proof>
    First as <math|f:U\<rightarrow\>Y> is differentiable at <math|x> we have
    by <reference|differentiability at x implies continuity at x> that
    <math|f> is continuous at <math|x> so that
    <math|f<rsup|-1><around*|(|V|)>> is open proving that
    <math|U<big|cap>f<rsup|-1><around*|(|V|)>> is open [needed for
    differentiability to make sense]. Using the alternative definition for
    differentiability (see <reference|alternative definition of
    differentiability (2)>) there exists <math|\<varepsilon\>>-mapping
    <math|\<varepsilon\><rsub|f>:U<rsub|x>\<rightarrow\>Y> and
    <math|\<varepsilon\><rsub|g>:V<rsub|f<around*|(|x|)>>\<rightarrow\>Y>
    such that\ 

    <\equation>
      <label|eq 14.12.100>\<forall\>h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>
      we have f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    and

    <\equation>
      <label|eq 14.13.100>\<forall\>k\<in\>V<rsub|f<around*|(|x|)>> we have
      g<around*|(|f<around*|(|x|)>+k|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|k|)>=\<varepsilon\><rsub|g><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>
    </equation>

    If <math|h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>
    >then <math|x+h\<in\>U<big|cap>f<rsup|-1><around*|(|V|)>> so that
    <math|<around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>+f<around*|(|x|)>=f<around*|(|x+h|)>\<in\>V>
    proving that

    <\equation>
      <label|eq 14.14.100>\<forall\>h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>
      we have that f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>V<rsub|f<around*|(|x|)>>
    </equation>

    Combining the above with <reference|eq 14.13.100> gives then that for
    <math|h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|g<around*|(|f<around*|(|x|)>+f<around*|(|x+h|)>-f<around*|(|x|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.12.100>>>>|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+D
      f<around*|(|x|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|f<around*|(|x+h|)>|)>-g<around*|(|f<around*|(|x|)>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|)>-D
      g<around*|(|f<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>>>>
    </eqnarray*>

    so that <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
    g<around*|(|f<around*|(|x|)>|)><around*|(|D
    f<around*|(|x|)><around*|(|h|)>|)>=\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>+D
    g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|)>>
    hence\ 

    <\equation>
      <label|eq 14.15.100><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)><around*|(|h|)>|)>=\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>+D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|)>
    </equation>

    Define now <math|\<zeta\>:<around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>\<rightarrow\>Z>
    by\ 

    <\equation*>
      \<zeta\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>
      if h\<neq\>0>>|<row|<cell|0 if h=0>>>>>
    </equation*>

    then as for <math|h=0> we have that <math|<around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D
    f<around*|(|x|)>|)><around*|(|h|)>=<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D
    f<around*|(|x|)>|)><around*|(|0|)>=0> we have by <reference|eq 14.15.100>
    that\ 

    <\equation>
      <label|eq 14.16.100><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>=\<zeta\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
    </equation>

    If we prove that <math|\<zeta\>> is continuous at <math|0> and thus a
    <math|\<varepsilon\>>-mapping we have by \ <reference|alternative
    definition of differentiability (2)> and the fact that<space|1em><math|D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D
    f<around*|(|x|)>\<in\>L<around*|(|X,Z|)>> (see <reference|composition of
    a continuous linear mapping and a continuous multilinear mapping is a
    continuous linear mapping>) that <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>Z>
    is differentiable at <math|x> with differential <math|D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>.\ 

    To prove continuity of <math|\<zeta\>> take
    <math|\<varepsilon\>\<gtr\>0>. By the continuity of
    <math|\<varepsilon\><rsub|f>> at <math|0> there exists a
    <math|\<delta\><rsub|1>\<gtr\>0> such that if
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    then <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>>\<less\>1>
    and using <reference|eq 14.12.100> we have if <math|h> is also a element
    of <math|<around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>> that
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+D
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
    so that\ 

    <\equation>
      <label|eq 14.17.100>\<forall\>h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>
      with 0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>
      we have <frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>>|)>
    </equation>

    By continuity of <math|\<varepsilon\><rsub|g>> at <math|0> there exists a
    <math|\<delta\><rsub|2>\<gtr\>0>

    <\equation>
      <label|eq 14.18.100>\<forall\>k\<in\>V<rsub|f<around*|(|x|)>> with
      <around*|\<\|\|\>|k|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|2> we have
      <around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|k|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
      f<around*|(|x|)>|\<\|\|\>>|)>>
    </equation>

    As <math|f> is differentiable at <math|x> and thus by
    <reference|differentiability at x implies continuity at x> continuous at
    <math|x> there exists a <math|\<delta\><rsub|3>\<gtr\>0> such that if
    <math|h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>\<Rightarrowlim\><rsub|<text|<reference|eq
    14.14.100>>>f<around*|(|x+h|)>-f<around*|(|x|)>\<in\>V<rsub|f<around*|(|x|)>>>
    and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|3>>
    then <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rsub|2>\<Rightarrowlim\><rsub|<text|<reference|eq
    14.18.100>>><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>>|)>>>. Using this with <reference|eq 14.17.100>
    gives\ 

    <\equation>
      <label|eq 14.19.100>If h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>
      with 0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|3>|)>
      we have <around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|X>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><frac|\<varepsilon\>|2>
    </equation>

    As <math|D g<around*|(|f<around*|(|x|)>|)>\<in\>L<around*|(|Y,Z|)>> we
    have that <math|<around*|\<\|\|\>|D g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<leqslant\><around*|\<\|\|\>|D
    g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>>
    and as <math|\<varepsilon\><rsub|f>> is continuous at <math|0> there
    exists a <math|\<delta\><rsub|4>> such that if
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|4>>
    then <math|<around*|\<\|\|\>|\<varepsilon\><rsub|f><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
    g<around*|(|f<around*|(|x|)>|)>|\<\|\|\>>|)>>> and thus\ 

    <\equation>
      <label|eq 14.20.100>If <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|4>
      then <around*|\<\|\|\>|D g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2>
    </equation>

    Finally if we take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|3>,\<delta\><rsub|4>|)>>
    we have for <math|h\<in\><around*|(|U<big|cap>f<rsup|-1><around*|(|V|)>|)><rsub|x>>
    with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> that
    either\ 

    <\description>
      <item*|<math|h=0>>then <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|0-0|\<\|\|\>><rsub|X>=0\<less\>\<varepsilon\>>

      <item*|<math|h\<neq\>0>>then <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      and thus\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>>|<cell|=>|<cell|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<equallim\><rsub|def
        of \<zeta\>>>|<cell|<around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        14.19.100>>>>|<cell|<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|D
        g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        14.20.100>>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      \ <math|==\<leqslant\>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
      by <reference|eq 14.19.100> and <reference|eq 14.20.100>.\ 
    </description>

    So in all cases we have that <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>\<less\>\<varepsilon\>>
    proving continuity of <math|\<zeta\>> at <math|0> and thus that
    <math|\<zeta\>> is a <math|\<varepsilon\>>-mapping.
  </proof>

  The above theorem is a generic form of the Chain Rule more know in the form
  below.

  <\corollary>
    <label|chain rule (1)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>|<rsub|Z>|\<\|\|\>>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>>, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y> a open set, <math|R\<subseteq\>Y>,
    <math|S\<subseteq\>Z> \ <math|f:U\<rightarrow\>R>,
    <math|g:V\<rightarrow\>S> functions with
    <math|f<around*|(|U|)>\<subseteq\>V>, such that <math|f> is
    differentiable at <math|x\<in\>U> and <math|g> is differentiable at
    <math|f<around*|(|x|)>\<in\>V> then <math|g\<circ\>f:U\<rightarrow\>S> is
    differentiable at <math|x> with <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>
  </corollary>

  <\proof>
    As <math|f<around*|(|U|)>\<subseteq\>V> we have that
    <math|U\<subseteq\>f<rsup|-1><around*|(|V|)>> proving that
    <math|U=U<big|cap>f<rsup|-1><around*|(|V|)>>, using then the previous
    theorem we have that <math|g\<circ\>f:U\<rightarrow\>S> is differentiable
    at <math|x\<in\>U> with <math|D <around*|(|g\<circ\>f|)><around*|(|x|)>=D
    f<around*|(|g<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>
  </proof>

  The chain rule can be translated to the concept of derivates

  <\corollary>
    <label|derivative and composition>Let <math|\<bbb-K\>> be the field
    <math|\<bbb-R\>> or <math|\<bbb-C\>>, U,V open sets in <math|\<bbb-K\>>,
    <math|f:U\<rightarrow\>\<bbb-K\>>, <math|g:V\<rightarrow\>\<bbb-R\>>
    functions such that for <math|x\<in\>U<big|cap>f<rsup|-1><around*|(|V|)>>
    <math|f> has a derivate on <math|x> and <math|g> has a derivate on
    <math|f<around*|(|x|)>> then <math|g\<circ\>f> has a derivate on <math|x>
    and <math|<around*|(|g\<circ\>f|)><rprime|'><around*|(|x|)>=g<rprime|'><around*|(|f<around*|(|x|)>|)>\<cdot\>f<rprime|'><around*|(|x|)>>
  </corollary>

  <\proof>
    Using <reference|differentias and derivates> we have that <math|f> is
    differentiable at <math|x> with <math|f<rprime|'><around*|(|x|)>=D
    f<around*|(|x|)><around*|(|1|)>> and <math|g> is differentiable at
    <math|f<around*|(|x|)>> with <math|D g<around*|(|x|)><around*|(|1|)>>. By
    the chain rule (see <reference|chain rule>) we have that
    <math|g\<circ\>f> is differentiable at <math|x> with
    <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>. Using then
    <reference|differentias and derivates> again we have that
    <math|g\<circ\>f> has a derivate <math|<around*|(|g\<circ\>f|)><rprime|'><around*|(|x|)>>
    at <math|x> with

    <\eqnarray*>
      <tformat|<table|<row|<cell|<with|font-series|bold|><around*|(|g\<circ\>f|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      g<around*|(|f<around*|(|x|)>|)>|)><around*|(|f<rprime|'><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differentias
      and derivates>>>>|<cell|g<rprime|'><around*|(|f<around*|(|x|)>|)>\<cdot\>f<rprime|'><around*|(|x|)>>>>>
    </eqnarray*>
  </proof>

  <subsection|Partial differentiation>

  <\definition>
    <label|(x1,..,xi-1,*,xi+1,..,xn)><index|<math|<around*|(|i\<rightarrow\>x|)>>>Given
    a finite family <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of sets then given a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|j>>
    we define <math|<around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    by \ <math|t\<rightarrow\><around*|(|i\<rightarrow\>x|)><around*|(|t|)>>
    where <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|x<rsub|j>
    if j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t if
    j=i>>>>>>.\ 
  </definition>

  <\remark>
    Essentially <math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>>
    substitute the <math|i>-the element of <math|x> by <math|t>, so we have
    that <math|<around*|(|i\<rightarrow\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i1>,x<rsub|i>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,t,x<rsub|i>,\<ldots\>,x<rsub|n>|)>>
  </remark>

  We have the following extension of the Kronecker Delta function;

  <\definition>
    Let <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of vector spaces then given <math|i,j> and
    <math|x\<in\>X<rsub|i>> then <math|\<delta\><rsub|i,j>:X<rsub|i>\<rightarrow\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    is defined by <math|\<delta\><rsub|i,j><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|x
    if i=j>>|<row|<cell|0<rsub|j> if i\<neq\>j>>>>>> where <math|0<rsub|j> it
    the neutral element in X<rsub|j>>
  </definition>

  <\proposition>
    <label|(i-\<gtr\>x)-1(A)>Given a finite family
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of sets, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    and <math|x\<in\>U> then <math|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>>
  </proposition>

  <\proof>
    If <math|y\<in\><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>
    then \ <math|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>\<in\>U> so
    that <math|y=<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)><rsub|i>=\<pi\><rsub|i><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)>\<in\>\<pi\><rsub|i><around*|(|U|)>>
    proving that

    <\equation>
      <label|eq 14.12.102><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
    </equation>
  </proof>

  <\proposition>
    <label|i the substitution>Let <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of vector spaces over the field <math|\<bbb-K\>>,
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

    <\enumerate>
      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t|)>+<around*|(|i\<rightarrow\>x|)><around*|(|0|)>>

      <item>If <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then <math|y+<around*|(|i\<rightarrow\>0|)><around*|(|t|)>=<around*|(|i\<rightarrow\>y|)><around*|(|t+y<rsub|i>|)>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item><math|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)><rsub|i>\<equallim\><rsub|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)><rsub|l>=<choice|<tformat|<table|<row|<cell|x<rsub|i>
      if l=i>>|<row|<cell|x<rsub|l> if l\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>x<rsub|i>>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|k>-<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t
        if k=i>>>>>-<choice|<tformat|<table|<row|<cell|x<rsub|k> if
        k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|s if
        k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<rsub|i>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t-s
        if k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|i\<rightarrow\>0|)><around*|(|s-t|)>>>>>
      </eqnarray*>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|0|)>\<equallim\><rsub|<around*|(|2|)>><around*|(|i\<rightarrow\>0|)><around*|(|t-0|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t|)>>
      giving <math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t|)>+<around*|(|i\<rightarrow\>x|)><around*|(|0|)>>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|y+<around*|(|i\<rightarrow\>0|)><around*|(|t|)>|)><rsub|k>>|<cell|=>|y<rsub|k>+<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|t|)>|)><rsub|k>>|<row|<cell|>|<cell|=>|<cell|y<rsub|k>+<choice|<tformat|<table|<row|<cell|0
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|1|}>>>|<row|<cell|t
        if k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|y<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|1|}>>>|<row|<cell|y<rsub|k>+t
        if k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|i\<rightarrow\>y|)><around*|(|y<rsub|k>+t|)>>>>>
      </eqnarray*>

      \ <math|>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|linearity of (01,...*,...0n)>Given a finite family
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>> then given a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|0\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|j>>,
    where <math|0<rsub|j>\<in\>X<rsub|j>> is the neutral element of
    <math|X<rsub|j>> then\ 

    <\enumerate>
      <item><math|\<forall\>i,k\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|x\<in\>X<rsub|i> then> <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|k>=\<delta\><rsub|i,k><around*|(|x|)>>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|x\<in\>X<rsub|i>> then <math|<around*|\<\|\|\>|\<delta\><rsub|i,j><around*|(|x|)>|\<\|\|\>><rsub|j>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>
      <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>

      <item><math|*\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|<around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>,
      further <math|\<forall\>x\<in\>X<rsub|i>> we have
      <math|<around*|\<\|\|\>|<around*|(|0\<rightarrow\>i|)><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>
      [using the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> on
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>]

      <item><math|\<forall\>x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
      and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|<around*|(|i\<rightarrow\>x|)>> is continuous
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then for
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have either\ 

      <\description>
        <item*|<math|k\<neq\>i>>then <math|*<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)>=<choice|<tformat|<table|<row|<cell|0<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x
        if k=i>>>>>=0<rsub|k>=\<delta\><rsub|i,k><around*|(|x|)>>

        <item*|<math|k=i>>then <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)>=<choice|<tformat|<table|<row|<cell|0<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x
        if k=i>>>>>=x<rsub|>=\<delta\><rsub|i,k><around*|(|x|)>>
      </description>

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|x\<in\>X<rsub|i>> then for <math|j\<in\><around*|{|1,\<ldots\>,n|}>>
      we have either:

      <\description>
        <item*|<math|j=i>>then <math|<around*|\<\|\|\>|\<delta\><rsub|i,j><around*|(|x|)>|\<\|\|\>><rsub|j>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>

        <item*|<math|j\<neq\>i>>then <math|<around*|\<\|\|\>|\<delta\><rsub|i,j><around*|(|x|)>|\<\|\|\>><rsub|j>=<around*|\<\|\|\>|0<rsub|j>|\<\|\|\>><rsub|j>=0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>
      </description>

      so in all cases we have <math|<around*|\<\|\|\>|\<delta\><rsub|i,j><around*|(|x|)>|\<\|\|\>><rsub|j>=<choice|<tformat|<table|<row|<cell|0
      if j\<neq\>i>>|<row|<cell|<around*|\<\|\|\>|x<rsub|j>|\<\|\|\>> if
      j=i>>>>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>

      <item>We must prove that <math|<around*|(|i\<rightarrow\>0|)>> is
      linear and continuous. Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then

      <\enumerate>
        <item>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
        <math|x,y\<in\>X<rsub|i>> then given
        <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>|)><rsub|k>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0
          if k\<neq\>i>>|<row|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y if
          k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>0+\<beta\>\<cdot\>0
          \ if k\<neq\>i>>|<row|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y if
          k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><choice|<tformat|<table|<row|<cell|0
          \ if k\<neq\>i>>|<row|<cell|x if
          k=i>>>>>+\<beta\>\<cdot\><choice|<tformat|<table|<row|<cell|0 \ if
          k\<neq\>i>>|<row|<cell|y if k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|k>+<around*|(|\<beta\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|y|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|y|)>|)><rsub|k>>>>>
        </eqnarray*>

        proving that <math|<around*|(|i\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=\<alpha\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|y|)>>.
        So <math|<around*|(|i\<rightarrow\>0|)>> is linear.

        <item>Let <math|x\<in\>X<rsub|i>> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|j>|\<\|\|\>><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<delta\><rsub|i,j><around*|(|x|)>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|max<around*|(|<around*|{|<choice|<tformat|<table|<row|<cell|0
          if i\<neq\>j>>|<row|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|i> if
          i=j>>>>>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>>>>
        </eqnarray*>

        which by <reference|continuous linear maps in a normed space> proves
        that <math|<around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>>
        and <math|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|i>>
      </enumerate>

      <item>Let <math|\<varepsilon\>\<gtr\>0>,
      <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>,
      <math|s\<in\>X<rsub|i>> take then <math|t\<in\>X<rsub|i>> such that
      <math|<around*|\<\|\|\>|s-t|\<\|\|\>><rsub|i>\<less\>\<varepsilon\>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>x|)><around*|(|s|)>-<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|\<\|\|\>>>|<cell|\<equallim\><rsub|<text|<reference|i
        the substitution> (2)>>>|<cell|<around*|\<\|\|\>|<around*|(|0\<rightarrow\>x|)><around*|(|s-t|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|<around*|\<\|\|\>|s-t|\<\|\|\>><rsub|i>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving continuity.
    </enumerate>
  </proof>

  <\theorem>
    <label|sum of (01,...,*,...0n)>Given a finite family
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>> then for every
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have <math|x=<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|x<rsub|i>|)>>
  </theorem>

  <\proof>
    \ Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|x<rsub|i>|)>|)><rsub|k>>|<cell|\<equallim\><rsub|<text|<reference|projection
      of sum>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x<rsub|i>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<delta\><rsub|i,k><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    proving that <math|<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|x<rsub|i>|)>=x>.
  </proof>

  <\theorem>
    <label|(x1,...,*,...) is differentiable>Given a finite family
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>>,
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>> the
    product space together with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> [see <reference|norm of finite
    product of normed spaces>] [so that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    forms a normed vector space over <math|\<bbb-K\>>] then given
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, <math|t\<in\>X<rsub|i>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|j>>
    we have that <math|*<around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    is differentiable at <math|t> with <math|D<around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)>>.
  </theorem>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then using
    <reference|linearity of (01,...*,...0n)> we have that

    <\equation*>
      <around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>|)>
    </equation*>

    Take now <math|\<varepsilon\>\<gtr\>0>, <math|t\<in\>X<rsub|i>> then if
    <math|h\<in\><around*|(|X<rsub|i>|)><rsub|t>=X<rsub|i>> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|i>\<less\>1> we have using
    <reference|i the substitution> that <math|<around*|(|i\<rightarrow\>x|)><around*|(|t+h|)>-<around*|(|i\<rightarrow\>x|)><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)><around*|(|h|)>>.
    Hence <math|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>x|)><around*|(|t+h|)>-<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>0|)><around*|(|h|)>|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<leqslant\>\<varepsilon\>>
    proving as <math|<around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
    [see <smart-ref|linearity of (01,...*,...0n)>] that
    <math|<around*|(|i\<rightarrow\>x|)>> is differentiable at <math|t> with
    differential <math|<around*|(|i\<rightarrow\>0|)>>.
  </proof>

  <\corollary>
    <label|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed vector space over the field
    <math|\<bbb-K\>>, <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
    <math|x\<in\>U> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

    <\enumerate>
      <item><math|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>> is
      a open set in <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>

      <item><math|\<pi\><rsub|i><around*|(|U|)>> is a open set in
      <math|X<rsub|i>>

      <item><math|<around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>:<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      is differentiable at <math|t\<in\>U> with
      <math|D<around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|t|)>=<around*|(|i\<rightarrow\>0|)>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from <reference|linearity of (01,...*,...0n)> (4)

      <item>This follows from the fact that <math|\<pi\><rsub|i>> is open
      [see <reference|projection map is open and open>]

      <item>This follows from \ <reference|(x1,...,*,...) is differentiable>,
      (2) and <smart-ref|differentiability and restricted mapping>
    </enumerate>
  </proof>

  <\definition>
    <label|partial differential definition>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed sp<em|>aces,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|X=<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space equipped with the maximum norm [see <reference|norm of
    finite product of normed spaces>], <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set, <math|V\<subseteq\>Y>, <math|x\<in\>U>,
    <math|f:U\<rightarrow\>V> a function and
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then <math|f:U\<rightarrow\>Y>
    is <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential <math|D<rsub|i>f<around*|(|x|)>\<in\>L<around*|(|X<rsub|i>,Y|)>>
    if <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><rsub|>:<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<rightarrow\>V>
    is differentiable at <math|x<rsub|i>> with
    <math|D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
    [This make sense as by <reference|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)>
    <math|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>> is open in
    <math|X<rsub|i>> and <math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|<reference|i
    the substitution>>>x\<in\>U> so that <math|x<rsub|i>\<in\><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>].
  </definition>

  The next theorem shows that the partial differentials exists if a function
  is differentiable. Note that the opposite is not always true.

  <\theorem>
    <label|differentiability on products of metric spaces>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space equipped with the maximum norm [see <reference|norm of
    finite product of normed spaces>], <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set, <math|V\<subseteq\>Y>, <math|x\<in\>U><math|> and
    <math|f:U\<rightarrow\>V> differentiable at <math|x\<in\>U> \ then

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
      <math|i>-partial differentiable at <math|x> with
      <math|D<rsub|i>f<around*|(|x|)>=D f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>

      <item><math|D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
      [or <math|\<forall\>h\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|D f*<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using <reference|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)> we have that
      <math|<around*|(|i\<rightarrow\>x|)><rsub|\|\<pi\><rsub|i><around*|(|U|)>>:\<pi\><rsub|i><around*|(|U|)>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      is differentiable at <math|x<rsub|i>> with
      <math|D<around*|(|i\<rightarrow\>x|)><rsub|\|\<pi\><rsub|i><around*|(|U|)>><around*|(|x<rsub|i>|)>=<around*|(|i\<rightarrow\>0|)>>.
      Using the chain rule <reference|chain rule> we have that
      <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>:<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y>
      is differentiable at <math|x<rsub|i>> with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsub|i>f<around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|D
        <around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|<around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>|)>\<circ\>D<around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|i
        the substitution>>>>|<cell|D f<around*|(|x|)>\<circ\>D<around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>>>>
      </eqnarray*>

      <item>Let <math|h\<in\>X> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D
        f<around*|(|x|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|D
        f<around*|(|x|)> is linear>>|<cell|D
        f<around*|(|x|)><around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of (01,...,*,...0n)>>>>|<cell|D f<around*|(|x|)><around*|(|h|)>>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  The following shows a extension of the chain rule to partial differentials

  <\theorem>
    <label|chain rules of partial differentiable functions>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> [see <reference|norm of finite
    product of normed spaces>)], <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    open, <math|R\<subseteq\>Y>, <math|S\<subseteq\>Z>
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|f:U\<rightarrow\>R> a
    function with a <math|i>-partial differential on <math|U>,
    <math|f<around*|(|U|)>\<subseteq\>V> a open set in <math|Y>,
    <math|g:V\<rightarrow\>S> a differentiable function on <math|V> then
    <math|g\<circ\>f> has a <math|i>-partial differential with
    <math|D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsub|i>f<around*|(|x|)>>
  </theorem>

  <\proof>
    As <math|<around*|(|g\<circ\>f|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>=g\<circ\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>>
    and <math|g> and <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>>
    are differentiable it follows from the chain rule <reference|generalized
    chain rule> that <math|<around*|(|g\<circ\>f|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>>
    is differentiable and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsub|i><around*|(|g\<circ\>f|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|<around*|(|g\<circ\>f|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
      rule>>>>|<cell|D<around*|(|g\<circ\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      g<around*|(|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>|)>\<circ\>D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      g<around*|(|f<around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>|)>\<circ\>D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|i
      the substitution>>>>|<cell|D g<around*|(|f<around*|(|x|)>|)>\<circ\>D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsub|i>f<around*|(|x|)>>>>>
    </eqnarray*>
  </proof>

  The partial differential has many of the same properties as a differential
  as is expressed in the following theorem.

  <\theorem>
    <label|partial differential of sum and scalar product>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, then we have for <math|i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|U\<subseteq\><big|prod><rsub|i>X<rsub|i>> and
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X> that\ 

    <\enumerate>
      <item>If <math|V<rsub|f>,V<rsub|g>\<subseteq\>Y> and
      <math|f:U\<rightarrow\>V<rsub|f>>, <math|g:U\<rightarrow\>V<rsub|g>> is
      such that <math|D<rsub|i>f<around*|(|x|)>>,
      <math|D<rsub|i>g<around*|(|x|)>> exists then for
      <math|f+g:U\<rightarrow\>V<rsub|f>+V<rsub|g>>
      <math|D<rsub|i><around*|(|f+g|)><around*|(|x|)>> exists and
      <math|D<rsub|i><around*|(|f+g|)><around*|(|x|)>=D<rsub|i>f<around*|(|x|)>+D<rsub|i>g<around*|(|x|)>>

      <item>If <math|V\<subseteq\>Y> and <math|f:U\<rightarrow\>V> is such
      that <math|D<rsub|i>f<around*|(|x|)>> exists and
      <math|\<alpha\>\<in\>\<bbb-K\>> then for
      <math|\<alpha\>\<cdot\>f:U\<rightarrow\>\<alpha\>\<cdot\>V>
      <math|D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)>> exists and
      <math|D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>>

      <item>If <math|V\<subseteq\>Y> and <math|f:U\<rightarrow\>Y> is such
      that <math|f<rsub|i>\<circ\><around*|(|i\<rightarrow\>x|)>> is a
      constant function then <math|D<rsub|i>f<around*|(|x|)>> exists and
      <math|D<rsub|i>f<around*|(|x|)>=C<rsub|X<rsub|i>,Y,0>>

      <item>If <math|f:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
      is such that <math|f<rsub|i>\<circ\><around*|(|i\<rightarrow\>x|)>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      then <math|D<rsub|i>f<around*|(|x|)>> exists and
      <math|D<rsub|i>f<around*|(|x|)>=f<rsub|i>\<circ\><around*|(|i\<rightarrow\>x|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ The proof makes use of the fact that <math|D
    f<rsub|i><around*|(|x|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>>
    and the properties of the differential.

    <\enumerate>
      <item>By definition we have that <math|D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      and <math|D<rsub|i>g<around*|(|x|)>=D<around*|(|g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exist. Using <reference|sum of differentiable functions> we have then
      that <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>+g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exist and <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>+g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>+D<around*|(|g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>=D<rsub|i>f<around*|(|x|)>+D<rsub|i><around*|(|g|)><around*|(|x|)>>.
      As <math|\<forall\>y\<in\>U>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>+g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|y|)>>|<cell|=>|<cell|f<around*|(|<around*|(|i\<rightarrow\>x|)>*<around*|(|y|)>|)>+g<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f+g|)><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|f+g|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|y|)>>>>>
      </eqnarray*>

      It follows that <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>+g\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>=<around*|(|f+g|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>>
      proving that <math|D<rsub|i><around*|(|f+g|)><around*|(|x|)>> exist and
      that <math|D<rsub|i><around*|(|f+g|)><around*|(|x|)>=D<rsub|i>f<around*|(|x|)>+D<rsub|i>g<around*|(|x|)>>.

      <item>By definition we have that <math|D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exist. Using <reference|sum of differentiable functions> we have then
      that <math|D<around*|(|\<alpha\>\<cdot\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>|)><around*|(|x<rsub|i>|)>>
      exist and <math|D<around*|(|\<alpha\>\<cdot\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>|)><around*|(|x<rsub|i>|)>=\<alpha\>\<cdot\>D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>=\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>>.
      As <math|\<forall\>y\<in\>U>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<alpha\>\<cdot\>f|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|y|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|y|)>>>>>
      </eqnarray*>

      It follows that <math|<around*|(|\<alpha\>\<cdot\>f|)>\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>=\<alpha\>\<cdot\><around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)>>
      proving that <math|D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>
      exists and <math|D<rsub|i><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)>>.

      <item>As <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>>
      is constant on <math|U> we have by <reference|differential of the
      constant function> that <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exist and <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>=C<rsub|X<rsub|i>,Y,0>>
      proving that <math|D<rsub|i>f<around*|(|x|)>=C<rsub|X<rsub|i>,Y,0>>.

      <item>As <math|f\<circ\><around*|(|i\<rightarrow\>x|)>\<in\>L<around*|(|X<rsub|i>,Y|)>>
      we have by <reference|differential of a linear function>t hat
      <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>=f\<circ\><around*|(|i\<rightarrow\>x|)>>
      proving that <math|D<rsub|i>f*<around*|(|x|)>> exists and
      <math|D<rsub|i>f<around*|(|x|)>=f\<circ\><around*|(|i\<rightarrow\>x|)>>
    </enumerate>
  </proof>

  Just like we have defined the derivate of a function, we define now the
  partial derivate of a function.

  <\definition>
    <label|partial derivative definition><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set,
    <math|V\<subseteq\>Y>, <math|x\<in\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|f:\<bbb-K\><rsup|n>\<rightarrow\>V> then <math|f> has a
    <with|font-series|bold|<math|i>-partial derivate>
    <with|font-series|bold|at> <math|x> noted by
    <math|\<partial\><rsub|i>f<around*|(|x|)>\<in\>Y> if and only if
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
    <math|h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
    then <math|<around*|\<\|\|\>|<frac|f<around*|(|*<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
  </definition>

  The above definition suggest that the partial derivate is unique which is
  indeed true as is expressed in the following theorem which also show the
  relation with the partial differential.\ 

  <\theorem>
    <label|partial derivative and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open
    set,<math|V\<subseteq\>Y>, <math|x\<in\>U>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|f:\<bbb-K\><rsup|n>\<rightarrow\>V> then <math|f> has a
    <math|i>-partial derivate at <math|x> if and only if <math|f> has a
    <math|i>-partial differential. Further if the <math|i>-partial derivate
    exists [or the <math|i>-partial differential exists] at <math|x> then
    <math|\<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>>
    so that <math|D<rsub|i>f<around*|(|x|)><around*|(|h|)>=D<rsub|i>f<around*|(|x|)><around*|(|h\<cdot\>1|)>=h\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|1|)>>
    Note as the <math|i>-partial differential is unique this proves also that
    the <math|i>-partial derivate is unique.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|\<partial\><rsub|i>f<around*|(|x|)>> exist. Then given
      <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
      such that \ \ <math|\<forall\>h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|\<nobracket\>>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
      </equation*>

      As <math|<around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|<around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|i
      the substitution>>><around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      proving that the derivate of <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>>
      at <math|x<rsub|i>> exists and <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><rprime|'><around*|(|x<rsub|i>|)>=\<partial\><rsub|i>f<around*|(|x|)>>.
      Using <reference|differentias and derivates> we have that
      <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exists and <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)><around*|(|1|)>=<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>=\<partial\><rsub|i>f<around*|(|x|)>>.
      Using the definition of the partial differential (see
      <reference|partial differential definition>) it follows that\ 

      <\equation*>
        D<rsub|i>f<around*|(|x|)> exists<infix-and>D<rsub|i>f<around*|(|x|)><around*|(|1|)>=\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|D<rsub|i>f<around*|(|x|)>> exists at <math|x> then by definition
      <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><around*|(|x<rsub|i>|)>>
      exists. Using <reference|differentias and derivates> we have that
      <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>|)><rprime|'><around*|(|x<rsub|i>|)>>
      exists so that given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>+h|)>|)>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>|)>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1>U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      which as <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|\|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>+h|)>|)>=f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x+h|)>|)>>,
      <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>><around*|(|x<rsub|i>|)>=f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)>>
      <math|> proves that <math|\<partial\><rsub|i>f<around*|(|x|)>> exists.
    </description>
  </proof>

  We have then the equivalence of theorem <reference|differentiability on
  products of metric spaces>\ 

  <\theorem>
    <label|differentiability of K^n>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm based on the absolute value norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>,
    \ <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>V> a function that is differentiable at <math|x>
    then

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has
      a partial derivate <math|\<partial\><rsub|i>f<around*|(|x|)>> and the
      partial differential <math|D<rsub|i>f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,Y|)>>
      is defined by <math|k\<rightarrow\>k\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>
      [so <math|D<rsub|i>f<around*|(|x|)><around*|(|1|)>=\<partial\><rsub|i>f<around*|(|x|)>>]

      <item>If <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is the canonical base on <math|\<bbb-K\><rsup|n>> (defined by
      <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>) then
      <math|\<partial\><rsub|i>f<around*|(|x|)>=D
      f<around*|(|x|)><around*|(|e<rsub|i>|)>> and <math|D
      f<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|i>\<cdot\>D
      f<around*|(|x|)><around*|(|e<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>.
      So if we use matrix notation and define
      <math|h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|h<rsub|n>>>>>>>
      and <math|\<partial\>f<around*|(|x|)>=<around*|(|\<partial\><rsub|1>f<around*|(|x|)>,\<ldots\>,\<partial\><rsub|n>f<around*|(|x|)>|)>>
      then we have <math|D f<around*|(|x|)><around*|(|h|)>=\<partial\>f<around*|(|x|)>\<cdot\>h>
      (using the matrix product).
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by
      <reference|differentiability on products of metric spaces>
      \ <math|D<rsub|i>f<around*|(|x|)>> exists so using <reference|partial
      derivative and partial differential> we have that
      <math|\<partial\><rsub|i>f<around*|(|x|)>> exists and
      <math|\<forall\>h\<in\>\<bbb-K\>> <math|D<rsub|i>f<around*|(|x|)><around*|(|h|)>=h\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>
      or <math|\<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>>

      <item>Using <reference|differentiability on products of metric spaces>
      we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|D<rsub|i>f<around*|(|x|)>=D f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>.
      As <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|1|)>|)><rsub|k>\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>\<delta\><rsub|i,k><around*|(|1|)>=<choice|<tformat|<table|<row|<cell|1
      if i=k>>|<row|<cell|0<rsub|i> if i\<neq\>k>>>>>=\<delta\><rsub|i,k>>
      proving that <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|1|)>|)>=e<rsub|i>>.
      Hence it follows that <math|\<partial\><rsub|i>f<around*|(|x|)>\<equallim\><rsub|<around*|(|1|)>>D<rsub|i>f<around*|(|x|)><around*|(|1|)>=D
      f<around*|(|x|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|1|)>|)>=D
      f<around*|(|x|)><around*|(|e<rsub|i>|)>>. So

      <\equation>
        <label|eq 14.21.100>\<partial\><rsub|i>f<around*|(|x|)>=D
        f<around*|(|x|)><around*|(|e<rsub|i>|)>
      </equation>

      Finally as <math|h=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>e<rsub|i>>
      we have by the linearity of <math|D f<around*|(|x|)>> that <math|D
      f<around*|(|x|)><around*|(|h|)>=D f<around*|(|x|)><around*|(|<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>e<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>D
      f<around*|(|x|)><around*|(|e<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
      14.21.100>>><big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>
      proving that\ 

      <\equation*>
        D f<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>
      </equation*>

      <\equation*>
        \;
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|X,<around*|{|Y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be sets and <math|<around*|{|f<rsub|i>:X\<rightarrow\>Y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of functions, <math|V\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)>:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    is defined by <math|<around*|(|f<rsub|1>,\<ldots\>,f<rsub|n>|)><around*|(|x|)>=<around*|(|f<rsub|1><around*|(|x|)>,\<ldots\>,f<rsub|n><around*|(|x|)>|)>>
  </definition>

  <\theorem>
    <label|(f1,..fn)>Let <math|X,<around*|{|Y<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be sets and <math|f:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then <math|f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)>>
  </theorem>

  <\proof>
    Let <math|x\<in\>X> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|(|f<around*|(|x|)>|)><rsub|i>=\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>=<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>>
    so that <math|f<around*|(|x|)>=<around*|(|<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>\<equallim\><rsub|def><around*|(|<around*|(|\<pi\><rsub|1>\<circ\>f|)>,\<ldots\>,<around*|(|\<pi\><rsub|n>\<circ\>f|)>|)><around*|(|x|)>>
    proving that <math|f=<around*|(|\<pi\><rsub|1>\<circ\>f,\<ldots\>,\<pi\><rsub|n>\<circ\>f|)>>.
  </proof>

  <\theorem>
    <label|differentiability of map to product of spaces>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed spaces equiped with the maximum norm [see <reference|norm of
    finite product of normed spaces>], <math|V\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>,
    <math|U\<subseteq\>X> open, <math|x\<in\>U> and <math|f:U\<rightarrow\>V>
    a function. Then we have that <math|f> is differentiable at <math|x> if
    and only if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x>. Further if
    <math|f> is differentiable at <math|x> [or equivalently
    <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x>] then
    <math|\<pi\><rsub|i>\<circ\>D f<around*|(|x|)>=D
    <around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>>
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> or equivalently
    <math|D f<around*|(|x|)>=<around*|(|D
    <around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D
    <around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>>.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is differentiable at <math|x>
      there exists given <math|\<varepsilon\>\<gtr\>0> a
      <math|\<delta\>\<gtr\>0> sych that <math|\<forall\>h\<in\>U<rsub|x>> we
      have that <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Using the definition of the maximum norm [see <reference|norm of finite
      product of normed spaces>] we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)><rsub|>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D
        f<around*|(|x|)><around*|(|h|)>|)><rsub|>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D
        f<around*|(|x|)>|)><around*|(|h|)><rsub|>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)><rsub|>|\<\|\|\>><rsub|i>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Hence\ 

      <\equation*>
        \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> \<pi\><rsub|i>\<circ\>f
        is differentiable at x with D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>=\<pi\><rsub|i>\<circ\>D
        f<around*|(|x|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x\<in\>U>
      there exists given <math|\<varepsilon\>\<gtr\>0> ther exists a
      <math|\<delta\><rsub|i>\<gtr\>0> such that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|i>>
      we have <math|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Define <math|D f<around*|(|x|)>:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
      by <math|D f<around*|(|x|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)>|)>>
      then we have <math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
      <math|h<rsub|1>,h<rsub|2>\<in\>X> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D f<around*|(|x|)><around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>h<rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>h<rsub|2>|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>h<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\>\<cdot\>D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|1>|)>+\<beta\>\<cdot\>D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|2>|)>,\<ldots\>,\<alpha\>\<cdot\>D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|1>|)>+\<beta\>\<cdot\>D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|2>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\><around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|1>|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|1>|)>|)>+\<beta\>\<cdot\><around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|2>|)>,\<ldots\>,D<around*|(|\<pi\><rsub|n>\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|2>|)>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|D f<around*|(|x|)>> is linear. Further if
      <math|h\<in\>X> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|D
        f<around*|(|x|)><around*|(|h|)>|)><rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max*<around*|(|<around*|{|<around*|\<\|\|\>|D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|max*<around*|(|<around*|{|<around*|\<\|\|\>|D<around*|(|\<pi\><rsub|i>\<circ\>f|)>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|D<around*|(|\<pi\><rsub|i>\<circ\>f|)>|\<\|\|\>><rsub|L<around*|(|X,Y<rsub|i>|)>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>

      which prove by <reference|continuous linear maps in a normed space>
      that\ 

      <\equation>
        <label|eq 14.23.110>D f<around*|(|x|)>\<in\>L<around*|(|X,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>|)>
      </equation>

      Take <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|f<around*|(|x+h|)>|)>-\<pi\><rsub|i><around*|(|f<around*|(|x|)>|)>-\<pi\><rsub|i><around*|(|D
        f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x+h|)>-<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D
        f<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        f is differentiable at x
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|Jacobian Matrix><index|Jacobian><dueto|Jacobian matrix>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>,>
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    be two normed spaces based on <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>
    [with the<space|1em>maximum norm see <reference|norm of finite product of
    normed spaces>], a open set <math|U\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|V\<subseteq\>\<bbb-K\><rsup|m>>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>V> a differentiable function then
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have

    <\equation*>
      \<pi\><rsub|j><around*|(|D f<around*|(|x|)><around*|(|h|)>|)>=<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|j>=D
      f<rsub|j><around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>
    </equation*>

    If we define the matrix <math|<around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>|<cell|\<cdots\>>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|\<partial\><rsub|1><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>|<cell|>|<cell|\<partial\><rsub|n><around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>>>>>>>
    and <math|h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|h<rsub|n>>>>>>>
    then we can write using matrix multiplication <math|D
    f<around*|(|x|)><around*|(|h|)>=<around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>\<cdot\>h>.
    The matrix <math|<around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>>
    is called the Jacobian matrix of <math|f> at <math|x>.
  </theorem>

  <\proof>
    Using <reference|differentiability of map to product of spaces> we have

    <\equation>
      <label|eq 14.24.110>D f<around*|(|x|)><around*|(|h|)>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>f|)><around*|(|x|)><around*|(|h|)>,\<ldots\>,D<around*|(|\<pi\><rsub|m>\<circ\>f|)><around*|(|x|)>|)>
    </equation>

    Let <math|j\<in\><around*|{|1,\<ldots\>,m|}>> then as
    <math|\<pi\><rsub|j>\<circ\>f:U\<rightarrow\>Y> is differentiable we have
    by <reference|differentiability of K^n> that

    <\equation>
      <label|eq 14.25.110>D<around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>h<rsub|i>\<cdot\>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)><rsub|>
    </equation>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>\<cdot\><bmatrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|h<rsub|n>>>>>>|)><rsub|j>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]><rsub|j,i>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.25.110>>>>|<cell|D<around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.25.110>>>>|<cell|\<pi\><rsub|j><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <around*|[|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>\<cdot\><bmatrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|h<rsub|n>>>>>>=D
      f<around*|(|x|)><around*|(|h|)>
    </equation*>
  </proof>

  <\example>
    <label|Jacobian of linear map>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    be two vector spaces based on <math|<around*|\<langle\>|\<bbb-K\>,<around*|\<\|\|\>||\<nobracket\>>|\<rangle\>>>
    (with the maximum norm), <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    the canonical bases [see <reference|canonical basis>] and
    <math|L:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><rsup|m>> a linear
    mapping with matrix [see <reference|matrix of a linear mapping>]
    <math|\<cal-M\><around*|(|L,<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>|)>=<around*|{|L<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|1\<ldots\>.m|}>\<times\><around*|{|1,\<ldots\>,n|}>>>
    in the canonical basis . Then <math|\<forall\>x\<in\>\<bbb-K\><rsup|n>>
    <math|L> is differentiable at <math|x> with Jacobian
    <math|<around*|[|<frac|\<partial\>f<rsub|><around*|(|1,\<ldots\>,m|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]>=L>
  </example>

  <\proof>
    As <math|L> is linear it is differentiable at <math|x> [see
    <reference|differential of a linear function>] and
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> <math|\<pi\><rsub|j>>
    is linear we have that <math|\<pi\><rsub|j>\<circ\>L> is linear. Hence
    given <math|i\<in\><around*|{|1,\<ldots\>,n|}>,j\<in\><around*|{|1,\<ldots\>,m|}>>
    we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|<frac|\<partial\>f<around*|(|1,\<ldots\>,m|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>|]><rsub|j,i>>|<cell|=>|<cell|\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differentiability
      of K^n>>>>|<cell|<around*|(|D<around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|x|)>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differential
      of a linear function>>>>|<cell|<around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|e<rsub|i>|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|matrix
      of a linear mapping>>>>|<cell|L<rsub|j,i>>>>>
    </eqnarray*>

    proving that <math|<frac|\<partial\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>=L>
  </proof>

  <\theorem>
    <label|differential of a billinear mapping>Let
    <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, and <math|<around*|\<langle\>|X<rsub|1>\<times\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    equipped with the maximum norm, <math|x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
    and <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> [a bi-linear
    continuous mapping] then <math|L:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>Y>
    is differentiable at <math|x> and <math|D
    L<around*|(|x<rsub|1>,x<rsub|2>|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    where <math|L<around*|(|x<rsub|1>,\<ast\>|)><around*|(|h<rsub|1>,h<rsub|2>|)>=L<around*|(|x<rsub|1>,h<rsub|2>|)>>
    and <math|L<around*|(|\<ast\>,x<rsub|2>|)><around*|(|h<rsub|1>,h<rsub|2>|)>=L<around*|(|h<rsub|1>,x<rsub|2>|)>>
  </theorem>

  <\proof>
    First we prove that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is linear.\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|\<alpha\>\<cdot\><around*|(|h<rsub|1>,h<rsub|2>|)>+\<beta\>\<cdot\><around*|(|g<rsub|1>,g<rsub|2>|)>|)>>|<cell|=>|<cell|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>g<rsub|1>,\<alpha\>\<cdot\>h<rsub|2>+\<beta\>\<cdot\>g<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|x<rsub|1>,\<alpha\>\<cdot\>h<rsub|2>+\<beta\>\<cdot\>g<rsub|2>|)>+L<around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>g<rsub|1>,x<rsub|2>|]>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,h<rsub|2>|)>+\<alpha\>\<cdot\>L<around*|(|h<rsub|1>,x<rsub|2>|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|1>,g<rsub|2>|)>+\<beta\>\<cdot\>L<around*|(|g<rsub|1>,x<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>+\<beta\>\<cdot\><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|g<rsub|1>,g<rsub|2>|)>>>>>
    </eqnarray*>

    \ 

    Second we prove that <math|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
    is continuous let <math|<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>>=1>
    then (see definition of maximum norm) we have
    <math|<around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<leqslant\>1> and
    <math|<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>\<leqslant\>1>, so

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
      of a multilinear mapping>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>+<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|2>|)>>>>>
    </eqnarray*>

    \ which by <reference|continuity and multilinearity> means that
    <math|L<around*|(|x<rsub|1>,\<ast\>|)><around*|(|h<rsub|1>,h<rsub|2>|)>=L<around*|(|x<rsub|1>,h<rsub|2>|)>>
    is continuous.

    Finally let <math|\<varepsilon\>\<gtr\>0> and take
    <math|0\<less\>\<delta\>\<less\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>>+1>>
    then if <math|h=<around*|(|h<rsub|1>,h<rsub|2>|)>\<in\><around*|(|X<rsub|1>\<times\>X<rsub|2>|)><rsub|x>=X<rsub|1>\<times\>X<rsub|2>>
    with <math|<around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>,<around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>>+1>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>|)>-<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|*\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>+h<rsub|1>,x<rsub|2>+h|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>+h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>|)>+L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+L<around*|(|h<rsub|1>,h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>>+1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>|<cell|\<less\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>>>>>>
    </eqnarray*>

    \ proving that <math|D L<around*|(|x,y|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
  </proof>

  We can use the above theorem to find the differential of a product of
  differentiable functions.\ 

  <\corollary>
    <label|differentiability of product of functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>,
    <math|U\<subseteq\>\<bbb-K\>> open with <math|x\<in\>U> and
    <math|f,g:U\<rightarrow\>\<bbb-K\>> two maps differentiable at <math|x>
    then <math|f\<cdot\>g:U\<rightarrow\>\<bbb-K\>> is differentiable at
    <math|x> with <math|D<around*|(|f\<cdot\>g|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>D
    f<around*|(|x|)>+f<around*|(|x|)>\<cdot\>D g<around*|(|x|)>>.
  </corollary>

  <\proof>
    Define <math|h:X\<rightarrow\><around*|(|\<bbb-K\>,\<bbb-K\>|)>> by
    <math|x\<rightarrow\><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
    which is differentiable at <math|x\<in\>U> as
    <math|h<rsub|1>=\<pi\><rsub|1>\<circ\>h=f> and
    <math|h<rsub|2>=\<pi\><rsub|2>\<circ\>h=g> are differentiable (see
    <reference|differentiability of map to product of spaces>). Also
    <math|p:\<bbb-K\>\<times\>\<bbb-K\>\<rightarrow\>\<bbb-K\>> defined by
    <math|p<around*|(|x,y|)>=x\<cdot\>y> is clearly bi-linear and continuous
    [because <math|<around*|\||p<around*|(|x,y|)>|\|>=<around*|\||x|\|>\<cdot\><around*|\|||\<nobracket\>>>
    and <reference|continuity and multilinearity>]. Using the previous
    theorem <math|p> is differentiable at <math|<around*|(|x,y|)>> with
    <math|D p<around*|(|x,y|)>=p<around*|(|x,\<ast\>|)>+p<around*|(|\<ast\>,y|)>=x\<cdot\>\<ast\>+\<ast\>\<cdot\>y>.
    Now as <math|f\<cdot\>g=p\<circ\>h> we have by the chain rule (see
    <reference|chain rule>) that <math|f\<cdot\>g> is differentiable and

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<around*|(|f\<cdot\>g|)><around*|(|x|)>>|<cell|=>|<cell|D
      p<around*|(|h<around*|(|x|)>|)>\<circ\>D
      h<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      p<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>\<circ\>D
      h<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differential
      of a billinear mapping>><infix-and><text|<reference|differentiability
      of map to product of spaces>>>>|<cell|<around*|(|f<around*|(|x|)>\<cdot\>\<ast\>+\<ast\>\<cdot\>g<around*|(|x|)>|)>\<circ\><around*|(|D
      f<around*|(|x|)>,D g<around*|(|x|)>|)>>>>>
    </eqnarray*>

    \ so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<around*|(|f\<cdot\>g|)><around*|(|x|)><around*|(|h|)>=<around*|(|f<around*|(|x|)>\<cdot\>\<ast\>+\<ast\>\<cdot\>g<around*|(|x|)>|)><around*|(|D
      f<around*|(|x|)><around*|(|h|)>,D g<around*|(|x|)><around*|(|h|)>|)>>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)><around*|(|h|)>+g<around*|(|x|)>\<cdot\>D
      f<around*|(|x|)><around*|(|h|)>>>>>
    </eqnarray*>

    proving that

    <\equation*>
      D<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>D
      g<around*|(|x|)>+g<around*|(|x|)>\<cdot\>D f<around*|(|x|)>
    </equation*>
  </proof>

  If we take in the above theorem <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>
  and <reference|differentias and derivates> the above corollary gives

  <\corollary>
    <label|derivative of product>Take the normed space
    <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>\<nocomma\>>,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U> and
    <math|f,g:U\<rightarrow\>\<bbb-K\>> functions that have a derivate at
    <math|x> then <math|f\<cdot\>g> has a derivate at <math|x> and
    <math|<around*|(|f\<cdot\>g|)><rprime|'><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<rprime|'><around*|(|x|)>+g<around*|(|x|)>\<cdot\>f<rprime|'><around*|(|x|)>>
  </corollary>

  <\proof>
    Using <reference|differentias and derivates> we have that <math|f,g> are
    differentiable and thus by the above theorem we have that
    <math|f\<cdot\>g> is differentiable and thus by <reference|differentias
    and derivates> has a derivate. Also using <reference|differentias and
    derivates> we have <math|<around*|(|f\<cdot\>g|)><rprime|'><around*|(|x|)>=D<around*|(|f\<cdot\>g|)><around*|(|x|)><around*|(|1|)>=g<around*|(|x|)>\<cdot\>D
    f<around*|(|x|)><around*|(|1|)>+f<around*|(|x|)>\<cdot\>D
    g<around*|(|x|)><around*|(|1|)>=g<around*|(|x|)>\<cdot\>f<rprime|'><around*|(|x|)>+f<around*|(|x|)>\<cdot\>g<rprime|'><around*|(|x|)>>
  </proof>

  We can now calculate the differential of a power

  <\corollary>
    Take the normed space <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>\<nocomma\>>,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U>,
    <math|z\<in\>\<bbb-N\>> define then <math|\<ast\><rsup|z>:\<bbb-K\>\<rightarrow\>\<bbb-K\>>
    by <math|x\<rightarrow\>x<rsup|z>> then <math|\<ast\><rsup|z>> has a
    derivate at <math|x\<in\>\<bbb-K\>> given by
    <math|<around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>=z\<cdot\>\<ast\><rsup|z-1><around*|(|x|)><rsup|>>.
    If <math|z\<in\><around*|{|-z\|z\<in\>\<bbb-N\>|}>> then
    <math|\<ast\><rsup|z>:\<bbb-K\>\\<around*|{|0|}>\<rightarrow\>\<bbb-K\>>
    defined by <math|x\<rightarrow\>x<rsup|z>=<frac|1|x<rsup|-z>>> has a
    derivate at <math|x\<in\>\<bbb-K\>\\<around*|{|0|}>> [a open set] given
    by <math|<around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>=z\<cdot\>\<ast\><rsup|z-1><around*|(|x|)>>
  </corollary>

  <\proof>
    We have the following cases to consider for <math|z>

    <\description>
      <item*|<math|z\<in\>\<bbb-N\>>>We proceed here by induction so let
      <math|S=<around*|{|z\<in\>\<bbb-N\>\|\<ast\><rsup|z> has a derivate
      z\<cdot\>\<ast\><rsup|z-1>|}>> then we have\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|z=1> then
        <math|\<ast\><rsup|1>:\<bbb-K\>\<rightarrow\>\<bbb-K\>> is linear and
        continuous so that <math|<around*|(|\<ast\><rsup|1>|)><rprime|'><around*|(|x|)>=D<around*|(|\<ast\><rsup|1>|)><around*|(|x|)><around*|(|1|)>=\<ast\><rsup|1><around*|(|1|)>=1<rsup|1>=1=1\<cdot\>x<rsup|0>=1\<cdot\>x<rsup|z-1>*>
        so that <math|1\<in\>S>

        <item*|<math|z\<in\>S\<Rightarrow\>z+1\<in\>S>>Assume now that
        <math|z\<in\>S> then we have that
        <math|*\<ast\><rsup|<around*|(|z+1|)>><around*|(|x|)>=x<rsup|z+1>=x\<cdot\>x<rsup|z>>
        so that <math|\<ast\><rsup|z+1>=\<ast\><rsup|1>\<cdot\>\<ast\><rsup|z>>
        and then using the previous corollary [see <reference|derivative of
        product>] we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|\<ast\><rsup|z+1>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<ast\><rsup|1>\<cdot\>\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<ast\><rsup|1><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>+<around*|(|\<ast\><rsup|z>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|1>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1\<in\>\<cal-S\>>>|<cell|x\<cdot\><around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>+x<rsup|z>\<cdot\>1>>|<row|<cell|>|<cell|\<equallim\><rsub|z\<in\>\<cal-S\>>>|<cell|x\<cdot\>z\<cdot\><around*|(|\<ast\><rsup|z-1>|)><around*|(|x|)>+x<rsup|z>>>|<row|<cell|>|<cell|=>|<cell|x\<cdot\>z\<cdot\>x<rsup|z-1>+x<rsup|z>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|z+1|)>\<cdot\>x<rsup|z>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|z+1|)>\<cdot\><around*|(|\<ast\>|)><rsup|<around*|(|z+1|)>-1><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|z+1\<in\>S>
      </description>

      <item*|<math|z\<in\><around*|{|-z\|z\<in\>\<bbb-N\>|}>>>again we prove
      this by induction so let <math|S=<around*|{|z\<in\>\<bbb-N\>\|\<ast\><rsup|-z>
      has a derivate <around*|(|-z|)>\<cdot\>\<ast\><rsup|<around*|(|-z-1|)>>|}>>
      then we have

      <\description>
        <item*|<math|1\<in\>S>>If <math|z=1> then
        <math|\<ast\><rsup|-1>:\<bbb-K\>\\<around*|{|0|}>\<rightarrow\>\<bbb-K\>>
        is defined by <math|x\<rightarrow\><frac|1|x>>. If
        <math|x\<in\>\<bbb-K\>\\<around*|{|0|}> and 0\<less\>h \ so that
        x+h\<in\>\<bbb-K\>\\<around*|{|0|}>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<frac|<frac|1|x+h>-<frac|1|x>|h>+<frac|1|x<rsup|2>>>|<cell|=>|<cell|<frac|<frac|x|x\<cdot\><around*|(|x+h|)>>-<frac|x+h|x\<cdot\><around*|(|x+h|)>>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<frac|-h|x\<cdot\><around*|(|x+h|)>>|h>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|-1|x\<cdot\><around*|(|x+h|)>>+<frac|1|x<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|x>\<cdot\><around*|(|<frac|-1|x+h>+<frac|1|x>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|x>\<cdot\><frac|-x+x+h|x\<cdot\><around*|(|x+h|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>><eq-number><label|eq
          12.12>>>>>
        </eqnarray*>

        Given <math|\<varepsilon\>\<gtr\>0> take then
        <math|0\<less\>\<delta\>=min<around*|(|<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2>,<frac|<around*|\||x|\|>|2>|)>>
        with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|x+h\<in\>\<bbb-K\>\\<around*|{|0|}>> [meaning
        <math|h\<in\><around*|(|\<bbb-K\>\\<around*|{|0|}>|)><rsub|x>>]. Then
        we have <math|<around*|\||h|\|>\<less\><frac|<around*|\||x|\|>|2>>
        giving <math|-<frac|<around*|\||x|\|>|2>\<less\>-<around*|\||h|\|>\<Rightarrow\><frac|<around*|\||x|\|>|2>=<around*|\||x|\|>-<frac|<around*|\||x|\|>|2>\<less\><around*|\||x|\|>-<around*|\||h|\|>\<leqslant\><around*|\||x+h|\|>>
        [because <math|<around*|\||x|\|>=<around*|\||x+h-h|\|>\<leqslant\><around*|\||x+h|\|>+<around*|\||h|\|>\<Rightarrow\><around*|\||x|\|>-<around*|\||h|\|>\<leqslant\><around*|\||x+h|\|>>]
        and thus <math|<frac|<around*|\||x|\|>|2>\<less\><around*|\||x+h|\|>>
        or <math|<frac|1|<around*|\||x+h|\|>>\<less\><frac|2|<around*|\||x|\|>>>.
        So <math|<around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>=<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x+h|\|>>\<less\><frac|2\<cdot\><around*|\||h|\|>|<around*|\||x|\|>\<cdot\><around*|\||x|\|><rsup|2>>=2\<cdot\><frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|3>>\<less\>2\<cdot\><frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|<around*|\||x<rsup|3>|\|>\<cdot\>2>=\<varepsilon\>>
        [as <math|<around*|\||h|\|>\<less\>\<delta\>=<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2>>
        ]. So if <math|0\<less\>\<delta\>=min<around*|(|<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2>,<frac|<around*|\||x|\|>|2>|)>>
        we have <math|<around*|\||<frac|\<ast\><rsup|-1><around*|(|x+h|)>-\<ast\><rsup|-1><around*|(|x|)>|h>-<around*|(|-1\<cdot\>\<ast\><rsup|<around*|(|-2|)>><around*|(|x|)>|)>|\|>=<around*|\||<frac|<frac|1|x+h>-<frac|1|x>|h>+<frac|1|x<rsup|2>>|\|>\<equallim\><rsub|<text|<reference|eq
        12.12>>><around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>\<less\>\<varepsilon\>>
        proving that <math|<around*|(|\<ast\><rsup|-1>|)><rprime|'><around*|(|x|)>=-1\<cdot\><around*|(|\<ast\><rsup|-1-1>|)><around*|(|x|)>>
        or <math|1\<in\>S>.\ 

        <item*|<math|z\<in\>S\<Rightarrow\>z+1\<in\>S>>If <math|z\<in\>S>
        then <math|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>><around*|(|x|)>=<frac|1|\<ast\><rsup|z+1><around*|(|x|)>>=<frac|1|x<rsup|z+1>>=<frac|1|x\<cdot\>x<rsup|z>>><math|=<around*|(|\<ast\><rsup|-1>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-z>|)><around*|(|x|)>>
        so that <math|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>>=<around*|(|\<ast\>|)><rsup|-1>\<cdot\><around*|(|\<ast\><rsup|-z>|)>>.
        Using the previous corollary [see <reference|derivative of product>]
        we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<ast\><rsup|-1>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-z>|)><rprime|'><around*|(|x|)>+<around*|(|\<ast\><rsup|-z>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-1>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1\<in\>\<cal-S\>
          and z\<in\>S>>|<cell|x<rsup|-1>\<cdot\><around*|(|-z|)>\<cdot\><around*|(|\<ast\><rsup|-z-1>|)><around*|(|x|)>+x<rsup|-z>\<cdot\><around*|(|-1|)>\<cdot\><around*|(|\<ast\><rsup|-2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|-1>\<cdot\><around*|(|-z|)>\<cdot\>x<rsup|-z-1>-x<rsup|-z>\<cdot\>x<rsup|-2>>>|<row|<cell|>|<cell|=>|<cell|-z\<cdot\>x<rsup|-z-2>-x<rsup|-z-2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-z-1|)>\<cdot\>x<rsup|-z-2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|z+1|)>|)>\<ast\>x<rsup|-<around*|(|z+1|)>-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|z+1|)>|)>\<cdot\><around*|(|\<ast\><rsup|-<around*|(|z+1|)>-1>|)><around*|(|x|)>>>>>
        </eqnarray*>

        \ proving that \ <math|z+1\<in\>S>
      </description>
    </description>

    \;
  </proof>

  <section|Higher order differentiability>

  We define higher order differentiability using recursion as follows\ 

  <\definition>
    <index|<math|D<rsup|n>f>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is <math|n>-times
    differentiable on <math|U> with <math|n>-the differential
    <math|D<rsup|n>f:U\<rightarrow\>L<rsup|n><around*|(|X;Y|)>> [see
    <reference|L^n(X;Y)>] if one of the following is correct:

    <\enumerate>
      <item>If <math|n=1> then <math|f:U\<rightarrow\>V> must be
      differentiable <math|\<forall\>x\<in\>U> and
      <math|D<rsup|1>f:U\<rightarrow\>L<around*|(|X,Y|)>> is defined by
      <math|x\<rightarrow\>D<rsup|1>f<around*|(|x|)>=D f<around*|(|x|)>>

      <item>If <math|1\<less\>n> then <math|f> must be
      <math|<around*|(|n-1|)>>-times differentiable on <math|U> and
      <math|D<rsup|n-1>f:U\<rightarrow\>L<rsup|n-1><around*|(|X;Y|)>> must be
      differentiable at every <math|x\<in\>U>.
      <math|D<rsup|n>f:U\<rightarrow\>L<rsup|n><around*|(|X;Y|)>> is defined
      by <math|x\<rightarrow\>D<rsup|n>f<around*|(|x|)>=D<around*|(|D<rsup|n-1>f|)><around*|(|x|)>\<in\>L<around*|(|X,L<around*|(|X<rsup|n-1>;Y|)>|)>=L<rsup|n><around*|(|X;Y|)>>
      (see <reference|L^n(X;Y)>)
    </enumerate>
  </definition>

  <\remark>
    We have seen by <reference|L^(X;Y) is equivalent with L(X^n;Y)> that
    there exists a a norm preserving isomorphism
    <math|\<cal-P\><rsub|n>:L<rsup|n><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X<rsup|n>;Y|)>>
    allowing us to consider <math|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(|x|)>|)>\<in\>L<around*|(|X<rsup|n>;Y|)>>
    as a multi-linear mapping where <math|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(|x|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=D<rsup|n>f<around*|(|x|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>.
    To simplify notation when we write <math|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>>
    we actually means <math|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(|x|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    where

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(|x|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>|<cell|=>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|<choice|<tformat|<table|<row|<cell|<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>|)>|)><around*|(|h<rsub|2>,\<ldots\>,h<rsub|n>|)>
      if n\<gtr\>1>>|<row|<cell|D<rsup|1>f<around*|(|x|)><around*|(|h<rsub|1>|)>=D
      f<around*|(|x|)><around*|(|h<rsub|1>|)> if n=1>>>>>>>>>
    </eqnarray*>

    or using a shorter notation

    \ <math|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(||)>|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>=<around*|(|\<ldots\><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>|)>|)><around*|(|h<rsub|2>|)>\<ldots\>|)><around*|(|h<rsub|n>|)>>
  </remark>

  <\definition>
    <index|<math|\<infty\>>-differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is
    <math|\<infty\>>-differentiable if <math|\<forall\>n\<in\>\<bbb-N\>> we
    have that <math|f> is <math|n>-differentiable.
  </definition>

  We next define the concept of differentiable classes

  <\definition>
    <index|<math|C<rsup|n>>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|n>> if one of the following is satisfied

    <\enumerate>
      <item>If <math|n=0> then <math|f> must be continuous on <math|U>

      <item>If <math|1\<less\>n> then <math|f> must be \ <math|n>-times
      differentiable on <math|U> and <math|D<rsup|n>f:U\<rightarrow\>L<rsup|n><around*|(|X;Y|)>>
      must be continuous on <math|U>
    </enumerate>
  </definition>

  <\definition>
    <index|<math|C<rsup|\<infty\>>>><index|smooth functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    and <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|\<infty\>>> if <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we
    have that <math|f> is of class <math|C<rsup|n>>. Functions of class
    <math|C<rsup|\<infty\>>> are also called <with|font-series|bold|smooth>
    functions.
  </definition>

  As for derivates we use the following definition\ 

  <\definition>
    <label|nth derivate><index|<math|f<rsup|<around*|(|n|)>>>>Let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    be a normed space and <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space <math|\<bbb-K\>> equipped with the canonical norm,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|V\<subseteq\>Y>,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>V> a function then
    <math|f> has a <math|n>-the derivate <math|f<rsup|<around*|(|n|)>>> on
    <math|U> if one of the following is satisfied.

    <\enumerate>
      <item>If <math|n=1> we must have <math|\<forall\>x\<in\>U> that
      \ <math|f> has a derivate at <math|x> and we define
      <math|f<rsup|<around*|(|1|)>>:U\<rightarrow\>Y> by
      <math|x\<rightarrow\>f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>>

      <item>If <math|n\<gtr\>1> we must have that <math|f> has a
      <math|<around*|(|n-1|)>>-the derivate on <math|U> and
      <math|\<forall\>x\<in\>U> we have that
      <math|f<rsup|<around*|(|n-1|)>>:U\<rightarrow\>Y> has a derivate at
      <math|x> and we define <math|f<rsup|<around*|(|n|)>>:U\<rightarrow\>Y>
      by <math|x\<rightarrow\>f<rsup|n><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n-1|)>><around*|(|x|)>|)><rprime|'>>
    </enumerate>
  </definition>

  <\lemma>
    Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the
    vector space <math|\<bbb-K\>> using the canonical norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>> a open set and
    <math|f:U\<subseteq\>\<bbb-K\>\<rightarrow\>L<around*|(|\<bbb-K\>,Y|)>>
    then if we define <math|f<around*|(|\<ast\>|)><around*|(|1|)>:U\<rightarrow\>Y>
    by <math|t\<rightarrow\><around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|t|)>=f<around*|(|t|)><around*|(|1|)>>
    we have that <math|f> is continuous at <math|x\<in\>U> if and only if
    <math|f<around*|(|\<star\>|)><around*|(|1|)>> is continuous at
    <math|x\<in\>U>
  </lemma>

  <\proof>
    \;

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|x\<in\>U> then as <math|f> is
      continuous on <math|U>, <math|f> is continuous at <math|x>, so
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||x-y|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\<less\>\<varepsilon\>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|\<star\>|)><around*|(|1|)>|)><around*|(|x|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)><around*|(|1|)>-f<around*|(|y|)><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>\<cdot\><around*|\||1|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|\<bbb-K\>,Y|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      proving continuity of <math|f*<around*|(|\<ast\>|)><around*|(|1|)>> at
      <math|x>. As <math|x> was chosen arbitrary we have that
      <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous on <math|U>.

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\>U> then as
      <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous on <math|U>
      we have that <math|f<around*|(|\<ast\>|)><around*|(|1|)>> is continuous
      at <math|x>, so given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||x-y|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
      Then as\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|r|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|r\<cdot\>1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|r\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|>\<cdot\><around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|><around*|\<\|\|\>|f<around*|(|x|)><around*|(|1|)>-f<around*|(|y|)><around*|(|1|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||r|\|><around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>-<around*|(|f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|y|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>\<cdot\><around*|\||r|\|>>>>>
      </eqnarray*>

      \ proving, as <math|f<around*|(|x|)>-f<around*|(|y|)>\<in\>L<around*|[|\<bbb-K\>,Y|]>>
      by definition of the operator norm [see <reference|the norm of a
      continuous linear mapping>] that<math|>
      <math|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|r|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
      So <math|f> is continuous at <math|x>.
    </description>
  </proof>

  <\theorem>
    <label|C1 of real or complex function>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the vector
    space <math|\<bbb-K\>> using the canonical norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>> a open set,
    <math|V\<subseteq\>Y> and <math|f:U\<subseteq\>\<bbb-K\>\<rightarrow\>V>
    \ a function then the following are equivalent:

    <\enumerate>
      <item><math|f> is <math|C<rsup|1>>

      <item><math|\<forall\>t\<in\>U> we have that
      <math|f<rprime|'><around*|(|t|)>> exists and
      <math|f<rprime|'>:U\<rightarrow\>V> defined by
      <math|t\<rightarrow\>f<rprime|'><around*|(|t|)>> is continuous on
      <math|U> [or <math|f> has a 1-derivate that is continuous).
    </enumerate>

    further we have in case of (1) or equivalently (2) that
    <math|f<rprime|'>=D f<around*|(|\<ast\>|)><around*|(|1|)>>
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|f> is <math|C<rsup|1>> we have
      that <math|f> is differentiable on <math|U> and <math|D
      f:x\<rightarrow\>D f<around|(|x|)>\<in\>L<around|(|\<bbb-K\>,Y|)>> is
      continuous. Then using <reference|differentias and derivates> we have
      that <math|\<forall\>x\<in\>U> <math|f<rprime|'><around|(|x|)>> exists
      and <math|f<rprime|'><around|(|x|)>=D
      f<around|(|x|)><around|(|1|)>=<around*|(|D
      f<around*|(|\<ast\>|)><around*|(|1|)>|)><around*|(|x|)>> proving that
      <math|f<rprime|'>=D f<around*|(|\<ast\>|)><around*|(|1|)>>. We can use
      now the previous lemma to find that <math|f<rprime|'>> is continuous on
      <math|U> because continuity of <math|D f>.

      <item*|<math|2\<Rightarrow\>1>>As <math|\<forall\>x\<in\>U>
      <math|f<rprime|'><around|(|x|)>> exists we use <reference|differentias
      and derivates> again to find the existence of <math|D f<around|(|x|)>>
      where <math|f<rprime|'><around|(|x|)>=D f<around|(|x|)><around|(|1|)>>
      and using the previous lemma and the continuity of <math|f<rprime|'>=D
      f<around*|(|\<ast\>|)><around*|(|1|)> >we find that <math|D
      f:x\<rightarrow\>D f<around|(|x|)>> is continuous.
    </description>
  </proof>

  We extend now the above case to the more general case of
  <math|n\<in\>\<bbb-N\>>.

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the real
    (complex space) equipped with the canonical norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U\<subseteq\>\<bbb-K\>> open,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is <math|C<rsup|n>> if
    and only if the <math|n>-the derivate <math|f<rsup|<around*|(|n|)>>>
    exists and is continuous. Furthermore if <math|x\<in\>U> then
    <math|D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n|)>><around*|(|x|)>>,
    hence using <reference|L(v1:..vn)=L(1::1)*v1..vn>
    <math|D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=f<rsup|n><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>v<rsub|i>>
    where <math|<around*|{|v<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-K\>>.
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|n\<in\>\<bbb-N\>\|f
    is C<rsup|n> at x\<in\>U \ if<infix-and>only f<rsup|n> exists and is
    continuous. Further D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>=f<rsup|<around*|(|n|)>>|}>>
    then we have:

    <\description>
      <item*|<math|n\<in\>\<cal-S\>>>If <math|n=1> then by <reference|C1 of
      real or complex function> we have that <math|f> is <math|C<rsup|1>> if
      and only if <math|f<rsup|<around*|(|1|)>>=f<rprime|'>> exists on
      <math|U> and is continuous. Further
      <math|f<rsup|<around*|(|1|)>><around*|(|x|)>=f<rprime|'><around*|(|x|)>=D
      f<around*|(|x|)><around*|(|1|)>=D<rsup|1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)><rsup|>>
      proving that <math|1\<in\>S>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
      <math|n\<in\>S> take then <math|n+1> then we have to prove the
      following statements.

      <\description>
        <item*|<math|f is C<rsup|n+1>\<Rightarrow\>f<rsup|<around*|(|n+1|)>>
        exists<infix-and>is continuous>>Then given <math|x\<in\>U> we have by
        definition that <math|D<rsup|n+1>f<around*|(|x|)>=D<around*|(|D<rsup|n>f|)><around*|(|x|)>>
        exists, so given <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        \ <math|h\<in\>U<rsub|x>\<Rightarrow\>x+h\<in\>U> then

        <\equation>
          <label|eq 14.115.105><around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Further we have <math|D<rsup|n>f<around*|(|x+h|)>,D<rsup|n>f<around*|(|x|)>,D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>\<in\>L<rsup|n><around*|(|X;Y|)>>
        hence as <math|L<rsup|n><around*|(|X;Y|)>> is a vector space it
        follows that <math|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)>\<in\>L<rsup|n><around*|(|X;Y|)>>.
        Hence

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><wide*|<around*|(|1:\<ldots\>:1|)>|\<wide-underbrace\>><rsub|n>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of L(x1:..:xn}>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|\||1|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>>|<cell|\<less\><rsub|<text|<reference|eq
          14.115.105>>>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|><eq-number><label|eq
          14.116.105>>>>>
        </eqnarray*>

        Next\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>|<cell|\<equallim\><rsub|<text|<reference|sum,product
          on (x1:..:xn)>>>>|<cell|>>|<row|<cell|D<rsup|n>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|>>|<row|<cell|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>|<cell|\<equallim\>>|<cell|>>|<row|<cell|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<around*|(|x|)><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|>>|<row|<cell|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>>|<cell|>|<cell|<eq-number><label|eq
          14.117.105>>>>>
        </eqnarray*>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-D<rsup|n+1>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f*<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|h>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<reference|eq
          14.117.105>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|h>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\||h|\|>>>|<cell|\<less\><rsub|<text|<reference|eq
          14.116.105>>>>|<cell|<frac|\<varepsilon\>\<cdot\><around*|\||h|\|>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        which proves that

        <\equation>
          <label|eq 14.118.105>f<rsup|<around*|(|n+1|)>><around*|(|x|)>
          exists<infix-and>f<rsup|<around*|(|n+1|)>><around*|(|x|)>=<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>|)><rprime|'><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>
        </equation>

        To prove continuity note that <math|D<rsup|n+1>f> is continuous on
        <math|U>, so if <math|x\<in\>U> and <math|\<varepsilon\>\<gtr\>0>
        there exists a <math|\<delta\>\<gtr\>0> such that if
        <math|<around*|\||x-y|\|>\<less\>\<delta\>> and <math|y\<in\>U> then
        <math|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<less\>\<varepsilon\>>.
        Hence

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n+1|)>><around*|(|x|)>-f<rsup|<around*|(|n+1|)>><around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.118.105>>>>|<cell|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>-D<rsup|n+1>f<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of L(x1:..:xn}>>>>|<cell|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\||1|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        proving that <math|f<rsup|<around*|(|n+1|)>>> is continuous at
        <math|x\<in\>U>. Hence we have that

        <\equation>
          <label|eq 14.119.105>f<rsup|<around*|(|n+1|)>> exists<infix-and>is
          continuous with f<rsup|<around*|(|n+1|)>><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>
        </equation>

        \;

        <item*|<math|f<rsup|<around*|(|n+1|)>> exists<infix-and>is
        continuous\<Rightarrow\>f is C<rsup|n+1>>>Then
        <math|\<forall\>x\<in\>U> <math|f<rsup|<around*|(|n|)>><around*|(|x|)>>
        exists and has a derivate <math|<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>|)><rprime|'>=f<rsup|<around*|(|n+1|)>><around*|(|x|)>>.
        So given <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|x>> then <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>|h>-f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>,
        giving after multiplying both sides by <math|h>

        <\equation>
          <label|eq 14.120.105><around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-D<rsup|n>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n|)>><around*|(|x+h|)>-f<rsup|<around*|(|n|)>><around*|(|x|)>-h\<cdot\>f<rsup|<around*|(|n+1|)>><around*|(|x|)><rsup|>|\<\|\|\>><rsub|Y>>|<cell|\<less\><rsub|<text|<reference|eq
          14.120.105>>>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|><eq-number><label|eq
          14.121.105>>>>>
        </eqnarray*>

        Define now <math|k<rsub|x>:\<bbb-K\><rsup|n+1>\<rightarrow\>Y> by
        <math|k<rsub|x><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>=f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i>>
        then by <reference|product is continuous and multilinear> we have
        that <math|k<rsub|x>> is multi-linear and continuous so that
        <math|k<rsub|x>\<in\>L<around*|(|\<bbb-K\><rsup|n+1>,Y|)>>. Define
        then <math|g<rsub|x>\<in\>L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>> by
        <math|g<rsub|x>=<around*|(|\<cal-P\><rsub|n+1>|)><rsup|-1><around*|(|k<rsub|x>|)>>
        so that

        <\eqnarray*>
          <tformat|<table|<row|<cell|g<rsub|x><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n+1>|)>>|<cell|=>|<cell|k<rsub|x><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i><eq-number><label|eq
          14.122.105>>>>>
        </eqnarray*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|g<rsub|x><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|g<rsub|x><around*|(|h:<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.122.105>>>>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>h<rsub|i>
          where h<rsub|i>=<choice|<tformat|<table|<row|<cell|h if
          i=1>>|<row|<cell|1 if i\<in\><around*|{|2,\<ldots\>,n+1|}>>>>>>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><around*|(|<around*|(|<big|prod><rsub|i\<in\><around*|{|1|}>>h<rsub|i><rsub|>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|2,\<ldots\>,n|}>>h<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><around*|(|h\<cdot\>1|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\>h<eq-number><label|eq
          14.123.105>>>>>
        </eqnarray*>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-g<rsub|x><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>,Y|)>>>|<cell|\<leqslant\><rsub|<text|<reference|upper
          limit of L in L^n(K;Y)>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-g<rsub|x><around*|(|h|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-g<rsub|x><around*|(|h|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.123.105>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\>h|\<\|\|\>><rsub|Y>>|<cell|\<less\><rsub|<text|<reference|eq
          14.121.105>>>>|<cell|\<varepsilon\>\<cdot\><around*|\||h|\|>>>>>
        </eqnarray*>

        proving as <math|g<rsub|x>\<in\>L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>=L<around*|(|L<rsup|n><around*|(|\<bbb-K\>;Y|)>,Y|)>>
        that <math|D<around*|(|D<rsup|n>f|)><around*|(|x|)>> exists and
        <math|D<around*|(|D<rsup|n>f|)><around*|(|x|)>=g<rsub|<rsub|<rsub|x>>><around*|(|h|)>>.
        So\ 

        <\equation>
          <label|eq 14.124.105>\<forall\>x\<in\>U we have
          \ D<rsup|n+1>f<around*|(|x|)> exists<infix-and>D<rsup|n+1>f<around*|(|x|)>=g<rsub|x>
        </equation>

        Let <math|x\<in\>U> then as <math|f<rsup|<around*|(|n+1|)>>> is
        continuous at <math|x> we have that given
        <math|\<varepsilon\>\<gtr\>0> there exist a <math|\<delta\>\<gtr\>0>
        so that if <math|<around*|\||x-y|\|>\<less\>\<delta\>> and
        <math|y\<in\>U> then <math|<around*|\<\|\|\>|f<rsup|<around*|(|n+1|)>><around*|(|x|)>-f<rsup|<around*|(|n+1|)>><around*|(|y|)><rsup|>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Define now <math|g:U\<rightarrow\>L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>>
        by <math|g<around*|(|x|)>=g<rsub|x>> then
        <math|D<rsup|<around*|(|n+1|)>>f=g> and

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>>>|<cell|\<leqslant\><rsub|<text|<reference|upper
          limit of L in L^n(K;Y)>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|g<around*|(|x|)>-g<around*|(|y|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>-g<around*|(|y|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|x><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>-g<rsub|y><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n+1>|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.122.105>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n+1|)>><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>1-f<rsup|<around*|(|n+1|)>><around*|(|y|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>1|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<rsup|<around*|(|n+1|)>><around*|(|x|)>-f<rsup|<around*|(|n+1|)>><around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        Proving that \ <math|D<rsup|n+1>f> is continuous and thus that

        <\equation>
          \ f is of class C<rsup|n+1>
        </equation>

        hence\ 

        <\equation*>
          n+1\<in\>\<cal-S\>
        </equation*>
      </description>
    </description>

    By mathematical induction we have then <math|S=\<bbb-N\>> proving our
    theorem.
  </proof>

  <\example>
    <label|x+t.y is C1 (1)>Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space then <math|\<sigma\>:\<bbb-K\>\<rightarrow\>Y> defined by
    <math|\<sigma\><around*|(|t|)>=x+t\<cdot\>y> is <math|C<rsup|1>> [and is
    thus continuous] with <math|\<forall\>t\<in\>\<bbb-K\>>
    <math|\<sigma\><rprime|'><around*|(|t|)>=y> so that
    <math|\<sigma\><rprime|'>=C<rsub|\<bbb-K\>,Y,y>>
  </example>

  <\proof>
    Take <math|t\<in\>\<bbb-K\>>. Let <math|\<varepsilon\>\<gtr\>0> take
    <math|\<delta\>=1> then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|\<sigma\><around*|(|t+h|)>-\<sigma\><around*|(|t|)>|h>-y|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|x+<around*|(|t+h|)>\<cdot\>y-<around*|(|x+t\<cdot\>y|)>|h>-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|h\<cdot\>y|h>-y|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    Which proves that <math|\<sigma\><rprime|'><around*|(|t|)>=y> so that
    <math|\<sigma\><rprime|'>=C<rsub|\<bbb-K\>,Y,y>> which is continuous as a
    constant function. The example is then proved by the previous theorem
    [see <reference|C1 of real or complex function>]
  </proof>

  <\theorem>
    <label|C^@@=@@-times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    and <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|\<infty\>>> iff <math|f> is <math|\<infty\>>-times
    differentiable.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      we have that <math|f> is of class <math|C<rsup|n>> then by definition
      we have that <math|f> is <math|n>-times differentiable proving that
      <math|f> is <math|\<infty\>>-times differentiable.

      <item*|<math|\<Leftarrow\>>>If <math|n=0> then as <math|f> is
      differentiable at every <math|x\<in\>U> we have by
      <reference|differentiability at x implies continuity at x> that
      <math|f> is continuous at <math|x> and thus that <math|f> is continuous
      on <math|U> proving that <math|f> is of class <math|C<rsup|0>>. If
      <math|n\<in\>\<bbb-N\>> we have that <math|f> is <math|n>-times
      differentiable and <math|f> is <math|<around*|(|n+1|)>>-times
      differentiable which as <math|\<forall\>x\<in\>U> we have
      <math|D<rsup|n+1>f<around*|(|x|)>=D<around*|(|D<rsup|n>f|)><around*|(|x|)>>
      proves by <reference|differentiability at x implies continuity at x>
      that <math|D<rsup|n>f> is continuous at <math|x> and thus that
      <math|D<rsup|n>f> is continuous on <math|U> proving that <math|f> is of
      class <math|C<rsup|n>>. So we have that <math|f> is of class
      <math|C<rsup|\<infty\>>>.
    </description>
  </proof>

  <\theorem>
    <label|n-times differentiability implies m-times differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|f:U\<rightarrow\>V> a function that is <math|>n-times
    differentiable then we have that <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|f> is m-times differentiable
  </theorem>

  <\proof>
    We proceed by induction so let <math|S<rsub|n>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|if
    0\<leqslant\>i\<less\>n then f is <around*|(|n-i|)><text|-times
    differentiable>|}>> we have then\ 

    <\description>
      <item*|<math|0\<in\>S<rsub|n>>>If <math|i=0\<Rightarrow\>n-i=n> and as
      by the hypothesis <math|f> is n-times differentiable we have
      <math|0\<in\>S<rsub|n>>

      <item*|<math|i\<in\>S\<Rightarrow\>i+1\<in\>S>>If
      <math|i\<in\>S<rsub|n>> and <math|0\<leqslant\>i+1\<less\>n> [so that
      <math|1\<less\><around*|(|n-i|)>>] then as
      <math|0\<leqslant\>i\<less\>n> and <math|i\<in\>S> we have that
      <math|f> is <math|<around*|(|n-i|)>>-times differentiable on <math|U>,
      so by definition [as <math|1\<less\><around*|(|n-1|)>>] we have that
      <math|f> is <math|<around*|(|<around*|(|n-i|)>-1|)>>-times
      differentiable and as <math|<around*|(|<around*|(|n-i|)>-1|)>=<around*|(|n-<around*|(|i+1|)>|)>>
      we have that <math|i+1\<in\>S<rsub|n>>
    </description>

    By mathematical induction we have then that
    <math|S<rsub|n>=\<bbb-N\><rsub|0>>. So if
    <math|m\<in\><around*|{|1,\<ldots\>,n|}>> take
    <math|i=n-m\<in\><around*|{|0,\<ldots\>,n-1|}>> then as
    <math|i\<in\>\<bbb-N\><rsub|0>=S<rsub|n>> and
    <math|0\<leqslant\>i\<less\>n> that <math|f> is
    <math|<around*|(|n-i|)>>-times differentiable which proves our theorem as
    <math|m=n-i>.
  </proof>

  <\theorem>
    <label|C^n implies C^m>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|f:U\<rightarrow\>V> a function of class <math|C<rsup|n>> then
    <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have that <math|f>
    is of class <math|C<rsup|i>>
  </theorem>

  <\proof>
    We have to consider the following cases for <math|n>:

    <\description>
      <item*|<math|n=0>>Then <math|<around*|{|0,\<ldots\>,n|}>=<around*|{|0|}>>
      which makes the theorem trivial

      <item*|<math|n=1>>Then <math|f> is of class <math|C<rsup|1>> and thus
      <math|f> is differentiable everywhere on <math|U> so that by
      <reference|differentiability at x implies continuity at x> <math|f> is
      continuous on <math|U> and thus <math|C<rsup|0>>.

      <item*|<math|1\<less\>n>>Two cases must be considered:

      <\description>
        <item*|<math|m=n>>then by the hypothesis we have that <math|f> is of
        class <math|C<rsup|m>>

        <item*|<math|m\<less\>n>>Then by the previous theorem <math|f> is
        <math|m>-times and <math|<around*|(|m+1|)>>-times differentiable on
        <math|U>, so that <math|D<rsup|m>f:U\<rightarrow\>L<rsup|m><around*|(|X;Y|)>>
        is differentiable at every <math|x\<in\>U>, the
        <math|<around*|(|m+1|)>>-times differentiability together with
        <reference|differentiability at x implies continuity at x> means that
        <math|D<rsup|m>f> is continuous on <math|U> and thus that <math|f> is
        <math|C<rsup|m>>
      </description>
    </description>
  </proof>

  <\proposition>
    <label|C^n+m=\<gtr\>c^n is C^m>Let <math|n,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    and <math|f:U\<rightarrow\>V> be of class <math|C<rsup|n+m>> then
    <math|D<rsup|n>f> is of class <math|C<rsup|m>> and
    <math|D<rsup|m><around*|(|D<rsup|n>f|)>=D<rsup|n+m>f> [notice that by
    <reference|C^n implies C^m> <math|f> is of class <math|C<rsup|m>> so that
    <math|D<rsup|n>f> is defined]
  </proposition>

  <\proof>
    We prove this by induction so let <math|\<cal-S\><rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|if
    f:U\<rightarrow\>Y is of class C<rsup|n+m> then D<rsup|n>f is of class
    C<rsup|m><infix-and>D<rsup|n+m>f=D<rsup|m><around*|(|D<rsup|n>f|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\><rsub|n>>>If <math|f> is of class
      <math|C<rsup|n+1>> then <math|D<rsup|n+1>f> exists on <math|U> and is
      continuous, so that by definition <math|D<rsup|n+1>f=D<around*|(|D<rsup|n>f|)>>,
      hence <math|D<rsup|n>f> is differentiable with
      <math|D<rsup|1><around*|(|D<rsup|n>f|)>=D<around*|(|D<rsup|n>f|)>> a
      continuous function proving that <math|1\<in\>\<cal-S\><rsub|n>>.

      <item*|<math|m\<in\>\<cal-S\><rsub|n>\<Rightarrow\>m+1\<in\>\<cal-S\><rsub|n>>>If
      <math|f> is of class <math|C<rsup|n+<around*|(|m+1|)>>> then by
      definition <math|D<rsup|n+<around*|(|m+1|)>>f> exists on <math|U> and
      is continuous hence

      <\equation>
        <label|eq 14.24.104>D<around*|(|D<rsup|n+m>f|)> exists<infix-and>is
        continuous with D<rsup|n+<around*|(|m+1|)>>f=D<around*|(|D<rsup|n+m>f|)>
      </equation>

      \ Using <reference|C^n implies C^m> <math|f> is of class
      <math|C<rsup|n+m>> hence as <math|m\<in\>\<cal-S\><rsub|n>> we have
      that <math|D<rsup|n>f> is of class <math|C<rsup|m>> and
      <math|D<rsup|n+m>f=D<rsup|m><around*|(|D<rsup|n>f|)>>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|n+<around*|(|m+1|)>>f>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.24.104>>>>|<cell|D<around*|(|D<rsup|n+m>f|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|D<rsup|m><around*|(|D<rsup|n>f|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|m+1><around*|(|D<rsup|n>f|)>>>>>
      </eqnarray*>

      proving using <reference|eq 14.24.104> that
      <math|D<rsup|m+1><around*|(|D<rsup|n>f|)>> is continuous and thus that
      <math|m+1\<in\>\<cal-S\><rsub|n>>
    </description>
  </proof>

  <\corollary>
    <label|C^n=\<gtr\>C^n is C^1>Let <math|n\<in\>\<bbb-N\>> with
    <math|n\<geqslant\>2>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and
    <math|f:U\<rightarrow\>Y> be of class <math|C<rsup|n>> then
    <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n-1|}>> we have that
    <math|D<rsup|n-k>f> is of class <math|C<rsup|k>> with
    <math|D<rsup|k><around*|(|D<rsup|n-k>f|)>=D<rsup|n>f>
  </corollary>

  <\proof>
    Take <math|m=n-k> then <math|m\<in\>\<bbb-N\>> so that <math|n=m+k> hence
    by <reference|C^n+m=\<gtr\>c^n is C^m> we have that
    <math|D<rsup|m>f=D<rsup|n-k>f> is of class <math|C<rsup|k>> and
    <math|D<rsup|k><around*|(|D<rsup|m>f|)>=D<rsup|m+k>f=D<rsup|n>f>.
  </proof>

  The next theorem is very usable in induction proofs.

  <\theorem>
    <label|n-times differentiability is same as n-1 times differentiability
    of DF>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is <math|n>-times
    differentiable if and only if <math|D<rsup|1>f> exists and is
    <math|<around*|(|n-1|)>>-times differentiable. Also if <math|f> is
    <math|n>-times differentiable [or equivalent <math|D<rsup|1>f> exists and
    is <math|<around*|(|n-1|)>>-times differentiable] then
    <math|D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n>f>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>First as
      <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> we have that
      <math|1\<in\><around*|{|1,\<ldots\>,n|}>> so using <reference|n-times
      differentiability implies m-times differentiability> we have that
      <math|f> is <math|1>-times differentiable, hence <math|D f=D<rsup|1>f>
      exists on <math|U>.\ 

      For the rest we use induction, so let
      <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|if
      f is n<text|-times differentiable >then D<rsup|1>f is
      <around*|(|n-1|)><text|-times differentiable and
      >D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>|}>> then we have\ 

      <\description>
        <item*|<math|2\<in\>\<cal-S\>>>If <math|n=2> then as <math|f> is
        <math|2>-times differentiable we have by definition that <math|f> is
        <math|1>-times differentiable and
        <math|D<rsup|2>f=D<around*|(|D<rsup|1>f|)>=D<rsup|1><around*|(|D
        <rsup|1>f|)>=D<rsup|2-1><around*|(|D<rsup|1>f|)>> proving that
        <math|2\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|n\<in\>\<cal-S\>> then if <math|f> is <math|n+1> differentiable
        we have by definition that <math|f> is <math|n>-times differentiable
        and <math|D<rsup|<around*|(|n+1|)>-1> f=D<rsup|n>f> is differentiable
        on <math|U>. Further as <math|n\<in\>\<cal-S\>> we have that
        <math|D<rsup|1>f> is <math|<around*|(|n-1|)>>-times differentiable
        and <math|D<rsup|<around*|(|n-1|)>><around*|(|D<rsup|1>f|)>=D<rsup|n>f>
        so as <math|D<rsup|n>f> is differentiable we have that
        <math|D<rsup|1>f> is <math|n>-times differentiable and <math|D
        <around*|(|D<rsup|n>f|)>=D<around*|(|D<rsup|<around*|(|n-1|)>><around*|(|D<rsup|1>f|)>|)>=D<rsup|n><around*|(|D<rsup|1>f|)>=D<rsup|<around*|(|n+1|)>-1><around*|(|D<rsup|1>f|)>>.
        Hence <math|n+1\<in\>\<cal-S\>>
      </description>

      Using mathematical induction we have then\ 

      <\equation>
        <label|eq 14.23.014>if f is n<text|-times differentiable with
        >n\<in\>\<bbb-N\>\\<around*|{|1|}> then D<rsup|1>f is
        <around*|(|n-1|)><text|-times differentiable and>
        D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>
      </equation>

      <item*|<math|\<Leftarrow\>>>This is proved by induction so take
      <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|if
      D<rsup|1>f exists<infix-and>is <around*|(|n-1|)><text|-times
      differentiable then <math|f> is <math|n>-times differentiable>|}>> then
      we have\ 

      <\description>
        <item*|<math|2\<in\>\<cal-S\>>>As <math|D<rsup|1>f> exists and is
        <math|<around*|(|2-1|)>>-times differentiable, it follows that
        <math|D<rsup|1>f> is differentiable and thus by definition, <math|f>
        is <math|2>-times differentiable. <math|>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Assume
        that <math|D<rsup|1>f> is <math|<around*|(|<around*|(|n+1|)>-1|)>>-times
        differentiable then <math|D<rsup|1>f> is <math|n>-times
        differentiable. By definition <math|D<rsup|1>f> is then
        <math|<around*|(|n-1|)>>-times differentiable. \ From
        <math|n\<in\>\<cal-S\>> it follows then that <math|f> is
        <math|n>-times differentiable and using <reference|eq 14.23.014> we
        have that <math|D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>>. As
        <math|D<rsup|1>f> is <math|n>-times differentiable we have by
        definition that the differential of
        <math|D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n>f> exists. So
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable proving
        that <math|n+1\<in\>\<cal-S\>>.
      </description>
    </description>
  </proof>

  Next we extend the above to show that it also works for differentiable
  classes

  <\theorem>
    <label|if f is C^n then D^1f is C^n-1>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|n>> if and only if <math|D<rsup|1>f> exists and is of class
    <math|C<rsup|n-1>>
  </theorem>

  <\proof>
    The following cases must be considered

    <\description>
      <item*|<math|n=1>>If <math|f> is of class <math|C<rsup|1>> then by
      definition <math|D<rsup|1>f=D f> is continuous and thus of class
      <math|C<rsup|0>>. If <math|D<rsup|1>f> exists and is of class
      <math|C<rsup|0>> then <math|f> is 1-times differentiable with
      <math|D<rsup|1>f> continuous and thus of class <math|C<rsup|1>>.

      <item*|<math|n\<gtr\>1>>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|f> is of class <math|C<rsup|n>>
        then <math|f> is <math|n>-times differentiable and <math|D<rsup|n>f>
        is continuous, using the previous theorem we have then that
        <math|D<rsup|1>f> is <math|<around*|(|n-1|)>> times differentiable
        and <math|D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n>f> which is
        continuous so that <math|D<rsup|1>f> is of class <math|C<rsup|n-1>>

        <item*|<math|\<Leftarrow\>>>If <math|D<rsup|1>f> is of class
        <math|C<rsup|n-1>> then it is <math|n-1> times differentiable and
        continuous so again by the previous theorem we have then that
        <math|f> is n-times differentiable and as
        <math|D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>> which is
        continuous we have that <math|f> is of class <math|C<rsup|n>>.
      </description>
    </description>
  </proof>

  <\corollary>
    <label|f is C infinite if D1f is c infinite>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|\<infty\>>> if and only if <math|D<rsup|1>f> exists and is
    of class <math|C<rsup|\<infty\>>>
  </corollary>

  <\proof>
    Assume that <math|D<rsup|1>f> exists and is of class
    <math|C<rsup|\<infty\>>> then for <math|n\<in\>\<bbb-N\>> we have either

    <\description>
      <item*|<math|n=0>>then as <math|D<rsup|1>f> exists we have by
      <reference|differentiability at x implies continuity at x> that
      <math|f> is continuous on <math|U> hence <math|f> is of class
      <math|C<rsup|n>>

      <item*|<math|1\<leqslant\>n>>then as <math|D<rsup|1>f> is
      <math|C<rsup|\<infty\>>> we have by definition that <math|D<rsup|1>f>
      is of class <math|C<rsup|n-1>> so using <reference|if f is C^n then
      D^1f is C^n-1> we have that <math|f> is of class <math|C<rsup|n>> \ 
    </description>

    So <math|\<forall\>n\<in\>\<bbb-N\>> we have that <math|f> is of class
    <math|C<rsup|n>> proving that <math|f> is of class
    <math|C<rsup|\<infty\>>>. On the other side if <math|f> is of class
    <math|C<rsup|\<infty\>>> then given <math|n\<in\>\<bbb-N\><rsub|0>> we
    have that <math|f> is of class <math|C<rsup|n+1>> and using <reference|if
    f is C^n then D^1f is C^n-1> we have that <math|D<rsup|1>f> exists and
    <math|D<rsup|1>f> is of class <math|C<rsup|<around*|(|n+1|)>-1>=C<rsup|n>>
    proving that <math|D<rsup|1>f> is of class <math|C<rsup|\<infty\>>>.
  </proof>

  <\theorem>
    <label|n-times differentiability is local>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>V> a function such that <math|f> is n-times
    differentiable on <math|U> then <math|\<forall\>W\<subseteq\>U> ,
    <math|W> open we have <math|f<rsub|\|W>> is n-times differentiable on
    <math|W> and <math|<around*|(|D<rsup|n>f|)><rsub|\|W>=D<rsup|n><around*|(|f<rsub|\|W>|)>>

    \;
  </theorem>

  <\proof>
    We prove this by induction. So let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if
    f is n-times differentiable on U then <prefix-for-all>open W\<subseteq\>U
    we have that f<rsub|\|W> is n<text|-times> differentiable with
    <around*|(|D<rsup|n> f|)><rsub|\|W>=D<rsup|n><around*|(|f<rsub|\|W>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|f> is <math|1>-times
      differentiable on <math|U> then for a open <math|W\<subseteq\>U> we
      have that <math|\<forall\>x\<in\>W> <math|D<rsup|1>f<around*|(|x|)>=D
      f<around*|(|x|)>> exists. Using <reference|differentiability and
      restricted mapping> we have that <math|\<forall\>x\<in\>W>
      <math|f<rsub|\|W>> is differentiable at <math|x> with
      <math|D<around*|(|f<rsub|\|W>|)><around*|(|x|)>=D
      f<around*|(|x|)>\<equallim\><rsub|x\<in\>W><around*|(|D
      f|)><rsub|\|W><around*|(|x|)>>, proving that <math|f<rsub|\|W>> is
      <math|1>-times differentiable on <math|W> and
      <math|D<rsup|1><around*|(|f<rsub|\|W>|)>=<around*|(|D<rsup|1>f|)><rsub|\|W>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<b-S\>>>Assume
      that <math|f> is <around*|(|<math|n+1>|)>-times differentiable on
      <math|U> then by definition <math|f> is <math|n>-times differentiable
      and <math|\<forall\>x\<in\>U> we have that <math|D<rsup|n>f> is
      differentiability at <math|x> with <math|D<around*|(|D<rsup|n>f|)><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)>>.
      Let <math|x\<in\>W\<subseteq\>U> then by <reference|differentiability
      and restricted mapping> <math|<around*|(|D<rsup|n>f|)><rsub|\|W><around*|(|x|)>>
      is differentiable at <math|x> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|D<rsup|n+1>f|)><rsub|\|W><around*|(|x|)>>|<cell|\<equallim\><rsub|x\<in\>W>>|<cell|<around*|(|D<around*|(|D<rsup|n>f|)>|)><rsub|\|W><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differentiability
        and restricted mapping>>>>|<cell|<around*|(|D<around*|(|D<rsup|n>f|)><rsub|\|W>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|D<around*|(|D<rsup|n>f<rsub|\|W>|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|D<rsup|n+1><around*|(|f<rsub|\|W>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|><math|<around*|(|D<rsup|n+1>f|)><rsub|\|W>=D<rsup|n+1><around*|(|f<rsub|\|W>|)>>
      and thus\ 

      <\equation*>
        n+1\<in\>\<cal-S\>
      </equation*>
    </description>

    Induction proves then the theorem.

    <\enumerate>
      .
    </enumerate>
  </proof>

  Next we prove that the above theorem is also true for classes

  <\theorem>
    <label|C^n is a local property>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|V\<subseteq\>Y>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|f:U\<rightarrow\>V> a function such that <math|f> is of class
    <math|C<rsup|n>> then if <math|V\<subseteq\>U> is open we have that
    <math|f<rsub|\|W>> is of class <math|C<rsup|n>>. Further if
    <math|n\<gtr\>0> then <math|D<rsup|n><around*|(|f<rsub|\|W>|)>=<around*|(|D<rsup|n>f|)><rsub|\|W>>
  </theorem>

  <\proof>
    \ We have to consider the following cases for
    <math|n\<in\>\<bbb-N\><rsub|0>>

    <\description>
      <item*|<math|n=0>> This follows from <reference|continuity of
      restricted maps>.

      <item*|<math|n\<gtr\>0>> Using the previous theorem we have that if
      <math|V> is open and <math|V\<subseteq\>U> then <math|f<rsub|\|V>> is
      n-times differentiable with <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>
      which is continuous on <math|V> by <reference|continuity of restricted
      maps>.
    </description>
  </proof>

  <\theorem>
    <label|sum of n-times differentiable functions is n-times
    differentiable>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>,<math|V<rsub|f>,V<rsub|g>\<subseteq\>Y>,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>V<rsub|f>>,
    <math|g:U\<rightarrow\>V<rsub|g>> functions then\ 

    <\enumerate>
      <item>If <math|f,g> are n-times differentiable functions then
      <math|f+g:U\<rightarrow\>V<rsub|f>+V<rsub|g>> is n-times differentiable
      and <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>

      <item>If <math|f> is <math|n>-times differentiable then
      <math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> we have that
      <math|\<alpha\>\<cdot\>f:U\<rightarrow\>\<alpha\>\<cdot\>V<rsub|f>> is
      <math|n>-times differentiable with <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if f,g are n<text|-times
      differentiable then >f+g is n<text|->times differentiable with
      D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g|}>> then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>Then as <math|f,g> are <math|1>-times
        differentiable on <math|U>we have <math|\<forall\>x\<in\>U> that
        <math|D f<around*|(|x|)>> and <math|D g<around*|(|x|)>> exists, using
        <reference|sum of differentiable functions> it follows that
        <math|D<around*|(|f+g|)><around*|(|x|)>> exists and
        <math|D<around*|(|f+g|)><around*|(|x|)>=D f<around*|(|x|)>+D
        g<around*|(|x|)>>. Hence <math|f+g> is <math|1>-times differentiable
        with <math|D<rsup|1><around*|(|f+g|)>=D<rsup|1><around*|(|f|)>+D<rsup|1><around*|(|g|)>>
        proving that <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|f,g> are <math|<around*|(|n+1|)>>-times differentiable then
        <math|f,g> are <math|n>-times differentiable and
        <math|D<rsup|n>f,D<rsup|n>g> are differentiable at <math|x>
        <math|\<forall\>x\<in\>U>. Then for <math|x\<in\>U>

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|n+1><around*|(|f+g|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|D<rsup|n><around*|(|f+g|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|D<around*|(|D<rsup|n>f+D<rsup|n>g|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
          of differentiable functions>>>>|<cell|D<around*|(|D<rsup|n>f|)><around*|(|x|)>+D<around*|(|D<rsup|n>g|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|D<rsup|n+1>f<around*|(|x|)>+D<rsup|n+1>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|n+1>f+D<rsup|n+1>g|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|D<rsup|n+1><around*|(|f+g|)>=D<rsup|n+1>f+D<rsup|n+1>g>.
        So we have\ 

        <\equation*>
          n+1\<in\>\<cal-S\>
        </equation*>
      </description>

      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if f is n<text|-times
      differentiable then >\<alpha\>\<cdot\>f \ is n<text|->times
      differentiable with D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>then as <math|f> <math|1>-times
        differentiable on <math|U>we have <math|\<forall\>x\<in\>U> that
        <math|D f<around*|(|x|)>> exists, using <reference|sum of
        differentiable functions> we have that
        <math|D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>> exists and
        <math|D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D
        f<around*|(|x|)>>. Hence <math|\<alpha\>\<cdot\>f> is <math|1>-times
        differentiable with <math|D<rsup|1><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|1><around*|(|f|)>>
        proving that <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>if
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable then
        <math|f> is <math|n>-times differentiable and <math|D<rsup|n>f> are
        differentiable <math|\<forall\>x\<in\>U>. Then for <math|x\<in\>U>

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|n+1><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|D<around*|(|\<alpha\>\<cdot\>D<rsup|n>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
          of differentiable functions>>>>|<cell|\<alpha\>\<cdot\>D<around*|(|D<rsup|n>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>D<rsup|n+1>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>D<rsup|n+1>f|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|D<rsup|n+1><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n+>f>,
        giving\ 

        <\equation*>
          n+1\<in\>\<cal-S\>
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|sum of C^n functions is C^n>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>,<math|V<rsub|f>,V<rsub|g>\<subseteq\>Y>,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>V<rsub|f>>,
    <math|g:U\<rightarrow\>V<rsub|g>> functions then

    <\enumerate>
      <item>If <math|f,g> are of class <math|C<rsup|n>> then
      <math|f+g:U\<rightarrow\>V<rsub|f>+V<rsub|g>> and <math|a\<cdot\>f> are
      <math|C<rsup|n>>

      <item>If <math|f,g> are of class <math|C<rsup|\<infty\>>> then
      <math|\<alpha\>\<cdot\>f> and <math|f+g> are of class
      <math|C<rsup|\<infty\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>The following cases must be considered for
      <math|n\<in\>\<bbb-N\>>\ 

      <\description>
        <item*|<math|n=0>>As <math|f,g> are <math|C<rsup|0>> we have that
        <math|f,g> are continuous on <math|U> hence by <reference|in a normed
        space the sum,product with scalar is ontinuous> we have that
        <math|f+g> and <math|\<alpha\>\<cdot\>f> are continuous. So by
        definition <math|f+g> and <math|\<alpha\>\<cdot\>f> are of class
        <math|C<rsup|0>>.

        <item*|<math|n\<gtr\>0>>Using the previous theorem we have already
        that <math|f+g> and <math|\<alpha\>\<cdot\>f> are n-times
        differentiable with <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>
        and <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>.
        As <math|D<rsup|n>f>, <math|D<rsup|n>g> are also continuous we have
        by <reference|in a normed space the sum,product with scalar is
        ontinuous> that <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>
        and <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>
        are continuous proving that <math|f+g,\<alpha\>\<cdot\>f> are of
        class <math|C<rsup|n>>
      </description>

      <item>If <math|f,g> are of class <math|C<rsup|\<infty\>>> then
      <math|\<forall\>n\<in\>\<bbb-N\>> <math|f,g> are of class
      <math|C<rsup|n>>, hence by (1) it follows that
      <math|\<alpha\>\<cdot\>f> and <math|f+g> are of class <math|C<rsup|n>>
      proving that <math|\<alpha\>\<cdot\>f> and <math|f+g> are of class
      <math|C<rsup|\<infty\>>>.
    </enumerate>
  </proof>

  Using mathematical induction it is easy to extend the above theorems to a
  finite sum.

  <\theorem>
    <label|differentiability of finite sum>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>\<nocomma\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set,
    <math|k\<in\>\<bbb-N\>>, <math|n\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite set of functions from which are <math|n>-times differentiable
    (in which case <math|n\<gtr\>0>) [or <math|C<rsup|n>>] then
    <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>f<rsub|i>:U\<rightarrow\>Y>
    is n-times differentiable [or <math|C<rsup|n>>].
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|k\<in\>\<bbb-N\>\|if
    <around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>
    is a finite set of functions from U to Y which are n<text|->times
    \ differentiable <around*|(|n\<gtr\>0|)> \ <around*|[|or C<rsup|n>|]>
    then <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>f<rsub|i>:U\<rightarrow\>Y
    is n<text|->times differentiable <around*|[|or C<rsup|n>|]>|}>> then we
    have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Then
      <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>f<rsub|i>=f<rsub|1>:U\<rightarrow\>Y>
      which is 1-times differentiable [or <math|C<rsup|1>>] so that
      <math|1\<in\>S>

      <item*|<math|k\<in\>\<cal-S\>\<Rightarrow\>k+1\<in\>\<cal-S\>>>If
      <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
      are n-times differentiable functions [or <math|C<rsup|n>> functions]
      then we have, as <math|k\<in\>\<cal-S\>>, that
      <math|<big|sum><rsub|i=1><rsup|k>f<rsub|i>>is <math|n>-times
      differentiable [or <math|C<rsup|n>>]. As
      <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>+f<rsub|+1>>
      is the sum of n-times differentiable [or <math|C<rsup|n>>] function we
      have by <reference|sum of n-times differentiable functions is n-times
      differentiable> [or <reference|sum of C^n functions is C^n>] that
      <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>> is <math|n>-times
      differentiable [or <math|C<rsup|n>>]. Hence <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\theorem>
    <label|constant functions are C^infinite>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> open, <math|y\<in\>Y>,
    <math|y\<in\>V\<subseteq\>Y> and <math|C<rsub|U,V,y>:U\<rightarrow\>V> a
    constant function then <math|C<rsub|U,V,y>> is <math|C<rsup|\<infty\>>>
    and we have <math|\<forall\>n\<in\>\<bbb-N\>> that
    <math|D<rsup|n>C<rsub|U,V,y>=C<rsub|U,L<rsup|n><around*|(|X,Y|)>,0>>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then we have either

    <\description>
      <item*|<math|n=0>>Then as <math|C<rsub|U,Y,y>> is continuous (see
      <reference|constant functions are continuous>) we have by definition
      that <math|C<rsub|U,Y,y>> is of class <math|C<rsup|0>>

      <item*|<math|n\<in\>\<bbb-N\>>>We proceed then by induction, let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|then
      D<rsup|n>C<rsub|U,Y,y> exists<infix-and>D<rsup|n>C<rsub|U,Y,y>=C<rsub|U,L<rsup|n><around*|(|X,Y|)>,0>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>> <math|\<forall\>x\<in\>U> we have by
        <reference|differential of the constant function> that
        <math|D<rsup|1>C<rsub|U,Y,y><around*|(|x|)>=D
        C<rsub|U,Y,y><around*|(|x|)>=C<rsub|X,Y,0>> [0 the neutral element in
        <math|Y>], as <math|C<rsub|X,Y,0>> is the neutral element [see
        <reference|vector space of functions to a vector space>] in
        <math|L<around*|(|X,Y|)>=L<rsup|1><around*|(|X;Y|)>> we have that
        <math|D<rsup|1>C<rsub|U,Y,y>> exists and is equal to
        <math|C<rsub|U,L<rsup|1><around*|(|X;Y|)>,0>> proving that
        <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>> As
        <math|n\<in\>\<cal-S\>> we have <math|D<rsup|n>C<rsub|U,Y,y>=C<rsub|U,L<rsup|n><around*|(|X;Y|)>,0>>
        so that <math|D<rsup|n+1><around*|(|C<rsub|U,Y,y>|)><around*|(|x|)>=D<around*|(|D<rsup|n>C<rsub|U,Y,y>|)><around*|(|x|)>=D<around*|(|C<rsub|U,L<rsup|n><around*|(|X;Y|)>,0>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|differential
        of the constant function>>>C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>.
        As <math|><math|C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>> is the
        neutral element in <math|L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>\<equallim\><rsub|<text|<reference|L^n(X1,...,Xn;Y)>>>L<rsup|n+1><around*|(|X;Y|)>>
        [see <reference|vector space of functions to a vector space>] we have
        that <math|D<rsup|n+1><around*|(|C<rsub|U,Y,y>|)>> exists and is
        equal to <math|C<rsub|U,L<rsup|n+1><around*|(|X;Y|)>,0>>. Which
        proves that <math|n+1\<in\>\<cal-S\>>
      </description>

      So <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|C<rsub|U,Y,y>> is of class <math|C<rsup|n>> proving that
      <math|C<rsub|U,Y,y>> is of class <math|C<rsup|\<infty\>>> and
      <math|\<forall\>n\<in\>\<bbb-N\>> <math|><math|D<rsup|n>C<rsub|U,Y,y>=C<rsub|U,L<rsup|n><around*|(|X,Y|)>,0>>.
    </description>
  </proof>

  <\theorem>
    <label|linear continuous mappings are C^infinity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> and
    <math|L\<in\>L<around*|(|X,Y|)>> a linear continuous map then we have

    <\enumerate>
      <item><math|L> is of class <math|C<rsup|\<infty\>>>

      <item><math|\<forall\>x\<in\>X> <math|D<rsup|1>L<around*|(|x|)>=L> [so
      <math|D<rsup|1>L=C<rsub|X,L<around*|(|X,Y|)>,L>>]

      <item><math|\<forall\>n\<in\>\<bbb-N\>\\<around*|{|1|}>> then
      <math|D<rsup|n>L=C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>\ 
    </enumerate>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> then we have the following possible cases to
    consider

    <\description>
      <item*|<math|n=0>>As <math|L> is continuous <math|L> is of class
      <math|C<rsup|0>>

      <item*|<math|n=1>>Using <reference|differential of a linear function>
      we have <math|\<forall\>x\<in\>X> that <math|D L<around*|(|x|)>=L>
      exists, proving <math|<around*|(|2|)>> and that <math|L> is of class
      <math|C<rsup|1>>

      <item*|<math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>>Using (1) it follows
      that <math|D<rsup|1>L=C<rsub|X,L<around*|(|X,Y|)>,L>>. Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|n>L>|<cell|\<equallim\><rsub|<text|<reference|n-times
        differentiability is same as n-1 times differentiability of
        DF>>>>|<cell|D<rsup|n-1><around*|(|D<rsup|1>L|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|D<rsup|n-1><around*|(|C<rsub|X,L<around*|(|X,L|)>,L>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|constant
        functions are C^infinite>>>>|<cell|C<rsub|X,L<rsup|n-1><around*|(|X,L<around*|(|X,Y|)>|)>,0>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L^n(X;L(X,Y))=L^n(X;Y)>>>>|<cell|C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>>>>
      </eqnarray*>

      which proves (3).
    </description>

    As <math|\<forall\>n\<in\>\<bbb-N\>> <math|D<rsup|n>L> exists we have
    using <reference|C^@@=@@-times differentiable> that <math|L> is of class
    <math|C<rsup|\<infty\>>>.
  </proof>

  <\corollary>
    <label|(01,..,*,..,On) is C@@>Given a finite family
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> of normed vector spaces then
    given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>=X>
    then <math|<around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    [see <reference|(x1,..,xi-1,*,xi+1,..,xn)>] is <math|C<rsup|\<infty\>>>.
    Further <math|D<around*|(|i\<rightarrow\>x|)>=<around*|(|i\<rightarrow\>0|)>>.
  </corollary>

  <\proof>
    As <math|<around*|(|x\<rightarrow\>i|)><around*|(|t|)>\<equallim\><rsub|<text|<reference|i
    the substitution>>><around*|(|i\<rightarrow\>x|)><around*|(|0|)>+<around*|(|i\<rightarrow\>0|)><around*|(|t|)>>
    a sum of a constant function [which is of class <math|C<rsup|\<infty\>>
    >by <reference|constant functions are C^infinite>] and a linear function
    [see <reference|linearity of (01,...*,...0n)>] [which is of class
    <math|C<rsup|\<infty\>>> by <reference|linear continuous mappings are
    C^infinity>] and is thus <math|C<rsup|\<infty\>>> [see <reference|sum of
    C^n functions is C^n>]. Further <math|D<around*|(|x\<rightarrow\>i|)><around*|(|t|)>=D<around*|(|<around*|(|i\<rightarrow\>x|)>+<around*|(|i\<rightarrow\>0|)><around*|(|t|)>|)>=C<rsub|X<rsub|i>,X,0>+<around*|(|i\<rightarrow\>0|)>=<around*|(|i\<rightarrow\>0|)>>.
  </proof>

  <\proposition>
    <label|translations are C-infinity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space and \ <math|\<tau\><rsub|x<rsub|0>>:X\<rightarrow\>X>
    defined by <math|x\<rightarrow\>\<tau\><rsub|x<rsub|0>><around*|(|x|)>=x+x<rsub|0>>
    (translation function) then we have\ 

    <\enumerate>
      <item><math|\<tau\><rsub|x<rsub|0>>> is <math|C<rsup|\<infty\>>>

      <item><math|D<rsup|1>\<tau\><rsub|x<rsub|0>>=C<rsub|X,L<around*|(|X;Y|)>,\<bbb-1\><rsub|X>>>

      <item><math|\<forall\>n\<in\>\<bbb-N\>\\<around*|{|1|}>> we have
      <math|D<rsup|n>\<tau\><rsub|x<rsub|0>>=C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then <math|<around*|(|\<bbb-1\><rsub|X>+C<rsub|X,X,x<rsub|0>>|)><around*|(|x|)>=\<bbb-1\><rsub|X><around*|(|x|)>+C<rsub|X,X,x<rsub|0>><around*|(|x|)>=x+x<rsub|0>=\<tau\><rsub|x<rsub|0>><around*|(|x|)>>
      proving that

      <\equation>
        <label|eq 14.24.101>\<tau\><rsub|x<rsub|0>>=\<bbb-1\><rsub|X>+C<rsub|X,X,x<rsub|0>>
      </equation>

      As <math|\<bbb-1\><rsub|X>\<in\>L<around*|(|X,X|)>> [see
      <reference|identity function is linear and continuous>] we have by
      <reference|linear continuous mappings are C^infinity>,
      <reference|constant functions are C^infinite> and <reference|sum of C^n
      functions is C^n> that <math|\<tau\><rsub|x<rsub|0>>> is of class
      <math|C<rsup|\<infty\>>>.

      <item>Let <math|x\<in\>X> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|1><around*|(|\<tau\><rsub|x<rsub|o>>|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|\<bbb-1\><rsub|X>+C<rsub|X,X,x<rsub|0>>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of n-times differentiable functions is n-times
        differentiable>>>>|<cell|D<rsup|1><around*|(|\<bbb-1\><rsub|X>|)>**<around*|(|x|)>+D<rsup|1><around*|(|C<rsub|X,X,x<rsub|0>><rsub|>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linear
        continuous mappings are C^infinity> and <reference|constant functions
        are C^infinite>>>>|<cell|\<bbb-1\><rsub|X><around*|(|x|)>+C<rsub|X,L<around*|(|X;Y|)>,0><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x+0>>|<row|<cell|>|<cell|=>|<cell|\<bbb-1\><rsub|X><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|D<rsup|1><around*|(|\<tau\><rsub|x<rsub|0>>|)>=C<rsub|X,L<around*|(|X;X|)>,\<bbb-1\><rsub|X>>>.

      <item>Let <math|x\<in\>\<bbb-N\>\\<around*|{|1|}>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|n><around*|(|\<tau\><rsub|x<rsub|o>>|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|n><around*|(|\<bbb-1\><rsub|X>+C<rsub|X,X,x<rsub|0>>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of n-times differentiable functions is n-times
        differentiable>>>>|<cell|D<rsup|n><around*|(|\<bbb-1\><rsub|X>|)>**<around*|(|x|)>+D<rsup|n><around*|(|C<rsub|X,X,x<rsub|0>><rsub|>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linear
        continuous mappings are C^infinity> and <reference|constant functions
        are C^infinite>>>>|<cell|C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0><around*|(|x|)>+C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|0+0>>|<row|<cell|>|<cell|=>|<cell|C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|D<rsup|n><around*|(|\<tau\><rsub|x<rsub|o>>|)>=C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|continuous billinear functions are C^infinity>Let
    <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>,<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces. <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> a
    continuous bi-linear mapping from <math|X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>Y>
    then <math|L> is <math|C<rsup|\<infty\>>>. Further we have\ 

    <\enumerate>
      <item><math|><math|D<rsup|1>L:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>>
      is defined by <math|D<rsup|1>L<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>
      where <math|L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>\<in\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>>
      is defined by <math|<around*|(|r,s|)>\<rightarrow\><around*|(|L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>|)><around*|(|r,s|)>=L<around*|(|x,s|)>+L<around*|(|r,y|)>>

      <item><math|D<rsup|2>L=C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<rsup|2><around*|(|X<rsub|1>\<times\>X<rsub|2>;Y|)>,D<rsup|1>L>>

      <item>If <math|n\<gtr\>2> then <math|D<rsup|n>L=C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<rsup|n><around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>,0>>
    </enumerate>
  </theorem>

  <\proof>
    We have to consider the following cases for <math|n\<in\>\<bbb-N\>>\ 

    <\description>
      <item*|<math|n=0>>As <math|L> is continuous we have that <math|L> is of
      class <math|C<rsup|0>>

      <item*|<math|n=1>>Using the differential of a bi-linear mapping [see
      <reference|differential of a billinear mapping>] we have that <math|L>
      is differentiable at every <math|<around*|(|x,y|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
      with <math|D<rsup|1>L<around*|(|x,y|)>=D
      L<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>
      so that <math|D<rsup|1>L> is defined by
      <math|D<rsup|1>L<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>

      <item*|<math|n=2>>We prove now that
      <math|D<rsup|1>L:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>>
      is linear and continuous. If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>
      and <math|<around*|(|r,s|)>,<around*|(|x<rsub|1>,y<rsub|1>|)>,<around*|(|x<rsub|2>,y<rsub|2>|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|1>L<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>|)><around*|(|r,s|)>>|<cell|=>|<cell|D<rsup|1>L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<around*|(|L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,\<ast\>|)>+L<around*|(|\<ast\>,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,s|)>+L<around*|(|r,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,s|)>+\<alpha\>\<cdot\>L<around*|(|r,y<rsub|1>|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|2>,s|)>+\<beta\>\<cdot\>L<around*|(|r,y<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|1>|)>|)><around*|(|r,s|)>+\<beta\>\<cdot\><around*|(|L<around*|(|x<rsub|2>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|2>|)>|)><around*|(|r,s|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|1>,y<rsub|1>|)><around*|(|r,s|)>+\<beta\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|2>,y<rsub|2>|)><around*|(|r,s|)>>>>>
      </eqnarray*>

      proving that <math|D<rsup|1>L<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>|)>=\<alpha\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|2>,y<rsub|2>|)>>,
      hence\ 

      <\equation>
        <label|eq 14.25.101>D<rsup|1>L is linear
      </equation>

      Further we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsub|1>L<around*|(|x,y|)><around*|(|r,s|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x,s|)>+L<around*|(|r,y|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L<around*|(|x,s|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|r,y|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
        of a multilinear mapping>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|X<rsub|2>>|)>+<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|1>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|2>>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|)>\<cdot\>max<around*|{|<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|1>>|)>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|Y<rsub|2>>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>|)>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|X<rsub|1>\<times\>X<rsub|2>>>>>>
      </eqnarray*>

      Using <reference|norm of a multilinear mapping> we have then that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsub|1>L<around*|(|x,y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>><rsub|>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\>2\<cdot\>max<around*|(|<around*|{|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|X<rsub|1>\<times\>X<rsub|2>>>>>>
      </eqnarray*>

      which proves that

      <\equation>
        <label|eq 14.26.101>D<rsup|1>L is continuous
      </equation>

      Using <reference|eq 14.25.101> and <reference|eq 14.26.101> i follows
      then that\ 

      <\equation*>
        D<rsup|1>L\<in\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>|)>
      </equation*>

      Using then <reference|linear continuous mappings are C^infinity> we
      have that <math|D<rsup|1>L> is differentiable and
      <math|D<rsup|2>L=D<rsup|1><around*|(|D<rsup|1>L|)>=C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<around*|(|X<rsub|1>\<times\>X<rsub|2>,L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>|)>,D<rsup|1>L>=C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<rsup|2><around*|(|X<rsub|1>\<times\>X<rsub|2>;Y|)>,D<rsup|1>L>>
      proving (2).

      <item*|<math|n\<gtr\>2>>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|n>L>|<cell|\<equallim\><rsub|<text|<reference|n-times
        differentiability is same as n-1 times differentiability of
        DF>>>>|<cell|D<rsup|n-1><around*|(|D<rsup|1>L|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|linear
        continuous mappings are C^infinity>>>|<cell|C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<rsup|n-1><around*|(|X<rsub|1>\<times\>X<rsub|2>,L<around*|(|X<rsub|1>\<times\>X<rsub|2>,L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>|)>|)>,0>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L^n(X;L(X,Y))=L^n(X;Y)>>>>|<cell|C<rsub|X<rsub|1>\<times\>X<rsub|2>,L<rsup|n><around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>,0>>>>>
      </eqnarray*>

      proving (3)
    </description>
  </proof>

  <\theorem>
    <label|projection map is infinite times dimensions>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normal spaces and
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then the projection map
    <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>\<rightarrow\>X<rsub|i>>
    is <math|C<rsup|\<infty\>>>
  </theorem>

  <\proof>
    This is trivial as the projection maps are linear and continuous (see
    <reference|projection map is open and open>) so that we can use
    <reference|linear continuous mappings are C^infinity>.
  </proof>

  <\theorem>
    <label|n-times differentiability of multi valued function>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    maximum norm defined on <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then given <math|U\<subseteq\>X>, <math|V\<subseteq\>Y=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    open sets and <math|r\<in\>\<bbb-N\>> we have that
    <math|f:U\<rightarrow\>V> is <math|r>-times differentiable if and only if
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<pi\><rsub|i>\<circ\>f:U\<rightarrow\>\<pi\><rsub|i><around*|(|V|)>>
    is r-times differentiable and then <math|\<pi\><rsub|i>\<circ\>D<rsup|n>f=D<rsup|n><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|r\<in\>\<bbb-N\>\|
    Let f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>
    then f is r-times differentiable if<infix-and>only if
    \ \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> \<pi\><rsub|i>\<circ\>f is
    r-<text|times> differentiable and then
    \<pi\><rsub|i>\<circ\>D<rsup|n>f=D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>|}>>
    then:\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|r=1> then using
      <reference|differentiability of map to product of spaces> we find that
      <math|\<forall\>x\<in\>U> that <math|f> is differentiable at
      <math|x\<in\>U> iff <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x> and that
      <math|\<pi\><rsub|i>\<circ\>D f<around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>>
      so that <math|1\<in\>S>

      <item*|<math|r\<in\>\<cal-S\>\<Rightarrow\>r+1\<in\>\<cal-S\>>>Let
      <math|r\<in\>\<cal-S\>> then we have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Take
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and assume that <math|f> is
        <math|r+1> times differentiable. By definition <math|f> is then
        <math|r>-times differentiable, as <math|r\<in\>\<cal-S\>> we have
        that <math|\<pi\><rsub|i>\<circ\>D<rsup|1>f> is <math|r>-times
        differentiable and <math|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>=\<pi\><rsub|i>\<circ\>D<rsup|r>f>.
        Further as <math|f> is <math|r+1> times differentiable
        <math|D<rsup|r>f> is 1-times differentiable, so using the fact that
        <math|1\<in\>\<cal-S\>> we have that
        <math|\<pi\><rsub|i>\<circ\>D<rsup|r>f<rsup|>> is differentiable with
        <math|D<rsup|1><around*|(|\<pi\><rsub|i>\<circ\>D<rsup|r>f|)>=\<pi\><rsub|1>\<circ\>D<rsup|1><around*|(|D<rsup|r>f|)>=\<pi\><rsub|i>\<circ\>D<rsup|r+1>f>.
        Hence <math|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>> is
        differentiable (proving that <math|\<pi\><rsub|i>\<circ\>f> is
        <math|<around*|(|r+1|)>>-times differentiable) with
        <math|D<rsup|r+1><around*|(|\<pi\><rsub|i>\<circ\>f|)>=D<rsup|1><around*|(|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>=\<pi\><rsub|i>\<circ\>D<rsup|r+1>f>.
        So we have that <math|r+1\<in\>\<cal-S\>>.

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|<around*|(|r+1|)>>-times
        differentiable and <math|\<pi\><rsub|i>\<circ\>D<rsup|r+1>f=D<rsup|r+1><around*|(|\<pi\><rsub|i>\<circ\>f|)>>,
        then <math|D<rsup|1><around*|(|\<pi\><rsub|i>\<circ\>f|)>> is r-times
        differentiable by <reference|n-times differentiability is same as n-1
        times differentiability of DF> and thus as <math|r\<in\>S> we have
        that <math|D<rsup|1>f> is <math|r>-times differentiable, using again
        <reference|n-times differentiability is same as n-1 times
        differentiability of DF> we have then that <math|f> is
        <math|<around*|(|r+1|)>>-times differentiable.\ 
      </description>
    </description>
  </proof>

  <\theorem>
    <label|C^n of multivalued functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    maximum norm defined on <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then given <math|U\<subseteq\>X>, <math|V\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    open sets and <math|r\<in\>\<bbb-N\><rsub|0>> we have that
    <math|f:U\<rightarrow\>V> is <math|C<rsup|r>> iff
    <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|r>>
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
  </theorem>

  <\proof>
    We have the following cases to consider for <math|r\<in\>\<bbb-N\>>

    <\enumerate>
      <item><dueto|<math|r=0>>This follows from <reference|continuous
      functions to a product space>.

      <item><dueto|<math|r\<gtr\>0>>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|f> is <math|C<rsup|r>> then
        <math|f> is r-times differentiable, using the previous theorem we
        have then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
        <math|\<pi\><rsub|i>\<circ\>f> is r-times differentiable with
        <math|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>=\<pi\><rsub|i>\<circ\>D<rsup|r>f>,
        as <math|\<pi\><rsub|i>> and <math|D<rsup|r>f> is continuous we have
        that <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|r>>

        <item*|<math|\<Lleftarrow\>>>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        we have <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|r>> then
        <math|\<pi\><rsub|i>\<circ\>f> is r-times differentiable, so by the
        previous theorem we have that <math|f> is r-times differentiable and
        also by the previous theorem we must then have that
        <math|\<pi\><rsub|i>\<circ\>D<rsup|r>f=D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        proving that <math|\<pi\><rsub|i>\<circ\>D<rsup|r>f> is continuous
        and by <reference|continuous functions to a product space> that
        <math|D<rsup|r>f> is continuous. So we have that <math|f> is
        <math|C<rsup|r>>.
      </description>
    </enumerate>
  </proof>

  <\lemma>
    <label|D1 and composition>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|R\<subseteq\>Y>, <math|S\<subseteq\>Z>, open set
    <math|U\<subseteq\>X, open set V\<subseteq\>Y> and
    <math|f:U\<rightarrow\>R,g:V\<rightarrow\>S> functions then we have\ 

    <\enumerate>
      <item>If <math|f> and <math|g> are <math|1>-times differentiable then

      <\enumerate>
        <item><math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>S>
        is <math|1>-times differentiable

        <item><math|<around*|(|\<circ\>|)>:L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)>>
        defined by <math|<around*|(|\<circ\>|)><around*|(|L,K|)>=L\<circ\>K>
        is of class <math|C<rsup|\<infty\>>>

        <item><math|h:U\<rightarrow\>L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>>
        defined by <math|h<around*|(|x|)>=<around*|(|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>,D<rsup|1>f<around*|(|x|)>|)>>
        is continuous if <math|f,g> are of class <math|C<rsup|1>>

        <item><math|D<rsup|1><around*|(|g\<circ\>f|)>=D<around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>,
        <math|\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|1>g|)>\<circ\>f> and
        <math|\<pi\><rsub|2>\<circ\>h=D<rsup|1>f>
      </enumerate>

      <item>If <math|f> and <math|g> are of class <math|C<rsup|1>> then
      <math|g\<circ\>f> is of class <math|C<rsup|1>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> and <math|g> are <math|1>-times differentiable we
      have <math|\<forall\>x\<in\>U> that <math|D f<around*|(|x|)>> and
      <math|D g<around*|(|f<around*|(|x|)>|)>>, applying then the chain rule
      [see <reference|chain rule>] gives

      <\equation>
        <label|eq 14.27.101>g\<circ\>f is 1<text|-times>
        differentiable<infix-and>\<forall\>x\<in\>U we have
        D<rsup|1><around*|(|g\<circ\>f|)><around*|(|x|)>=D<rsup|1>g<around*|(|f<around*|(|x|)>|)>\<circ\>D
        f<around*|(|x|)>
      </equation>

      Using <reference|composition of continuous linear mapping is continuous
      and multilinear> we have that <math|<around*|(|\<circ\>|)>> is
      continuous and bi-linear so by <reference|continuous billinear
      functions are C^infinity> we have that\ 

      <\equation>
        <label|eq 14.28.101><around*|(|\<circ\>|)> is of class
        C<rsup|\<infty\>>
      </equation>

      If <math|x\<in\>U> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>,D<rsup|1>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|1>g|)>\<circ\>f|)><around*|(|x|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>,D<rsup|1>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)>>>>>
      </eqnarray*>

      \ proving that

      <\equation>
        <label|eq 14.29.101>\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|1>g|)>\<circ\>f<infix-and>\<pi\><rsub|2>\<circ\>h=D<rsup|1>f
      </equation>

      If now <math|f,g> are of class <math|C<rsup|1>> then <math|D<rsup|1>g>,
      <math|D<rsup|1>f> and <math|f> are continuous so that
      <math|\<pi\><rsub|1>\<circ\>h> and <math|\<pi\><rsub|2>\<circ\>h> will
      be continuous. Using then <reference|continuous functions to a product
      space> gives\ 

      <\equation>
        <label|eq 14.30.101>If f,g are over class C<rsup|1> then h is
        continuous
      </equation>

      Let <math|x\<in\>U> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<circ\>|)><around*|(|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>,D<rsup|1>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|1>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.27.101>>>>|<cell|D<rsup|1><around*|(|g\<circ\>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      giving\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|>|<cell|D<rsup|1><around*|(|g\<circ\>f|)>=D<around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>>>>
      </eqnarray*>

      <item>If <math|f,g> are of class <math|C<rsup|1>> then <math|f,g> are
      <math|1>-times differentiable so that by (1) <math|g\<circ\>f> is
      <math|1>-times differentiable. Further using <reference|eq 14.28.101>
      and <reference|eq 14.29.101> we have that
      <math|D<around*|(|g\<circ\>f|)>> is continuous so that\ 

      <\equation*>
        g\<circ\>f is of class C<rsup|1>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|generalized chain rule><dueto|General Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|R\<subseteq\>Y>, <math|S\<subseteq\>Z>, open set
    <math|U\<subseteq\>X, open set V\<subseteq\>Y> and
    <math|f:U\<rightarrow\>R>, <math|g:V\<rightarrow\>S> functions then we
    have\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\>> if <math|f,g> are
      <math|n>-times differentiable then <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>Z>
      is <math|n>-times differentiable

      <item><math|\<forall\>n,m\<in\>\<bbb-N\>> if <math|f> is <math|n>-times
      differentiable and <math|g> is <math|m>-times differentiable then
      <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>Z> is
      <math|min<around*|(|n,m|)>>-times differentiable.

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> if <math|f,g> are of
      class <math|C<rsup|n>> then <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>Z>
      is of class <math|C<rsup|n>>.

      <item><math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>> if <math|f> is of
      class <math|C<rsup|n>> and <math|g> is of class <math|C<rsup|m>> then
      <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<Rightarrow\>Z> is
      of class <math|C<rsup|min<around*|(|n,m|)>>>

      <item>If <math|f,g> are of class <math|C<rsup|\<infty\>>> then
      <math|g\<circ\>f> is of class <math|C<rsup|\<infty\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if
      <around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>
      are normed spaces,R\<subseteq\>Y,S\<subseteq\>Y,open
      U\<subseteq\>X,open V\<subseteq\>Y and f:U\<rightarrow\>R,
      g:V\<rightarrow\>S \ are n<text|-times> differentiable then
      g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|V|)>\<rightarrow\>S is
      n<text|-times> differentiable|}>> then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>This follows from the previous lemma
        [see <reference|D1 and composition>] now <math|>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Assume
        that <math|f,g> are <math|<around*|(|n+1|)>>-times differentiable.
        Then using <reference|n-times differentiability is same as n-1 times
        differentiability of DF> it follows that <math|D<rsup|1>g,D<rsup|1>f>
        are <math|n>-times differentiable and by <reference|n-times
        differentiability implies m-times differentiability> <math|f> is
        <math|n>-times differentiable. Take now <math|h as in <reference|D1
        and composition>> then <math|\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|1>g|)>\<circ\>f>
        is <math|n>-times differentiable [as <math|n\<in\>\<cal-S\>>] and
        <math|\<pi\><rsub|2>\<circ\>h=D<rsup|1>f> is <math|n>-times
        differentiable. Using <reference|n-times differentiability of multi
        valued function> it follows that <math|h> is <math|n>-times
        differentiable. As <math|<around*|(|\<circ\>|)>> is of class
        <math|C<rsup|\<infty\>>> hence <math|<around*|(|\<circ\>|)>>
        <math|n>-times differentiable we have as <math|n\<in\>\<cal-S\>> that
        <math|<around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times
        differentiable. So that <math|D<rsup|1><around*|(|g\<circ\>f|)>\<equallim\><rsub|<text|<reference|D1
        and composition>>><around*|(|\<circ\>|)>\<circ\>h> is <math|n>-times
        differentiable. Applying then <reference|n-times differentiability is
        same as n-1 times differentiability of DF> proves that
        <math|g\<circ\>f> is <math|n>-times differentiable proving that
        <math|n+1\<in\>\<cal-S\>>. <math|>
      </description>

      <item>Using <reference|n-times differentiability implies m-times
      differentiability> we have that <math|f,g> are
      <math|min<around*|(|n,m|)>>-times differentiable. So using (1) it
      follows that <math|g\<circ\>f> is <math|min<around*|(|n,m|)>>-times
      differentiable.

      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
      <around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>
      are normed spaces,R\<subseteq\>Y,S\<subseteq\>Y,open
      U\<subseteq\>X,open V\<subseteq\>Y<infix-and>f:U\<rightarrow\>R,g:V\<rightarrow\>S
      are of class C<rsup|n> then g\<circ\>f is of class C<rsup|n>|}> >then
      we have\ 

      <\description>
        <item*|<math|0\<in\>\<cal-S\>>>If <math|f,g> are of class
        <math|C<rsup|0>> then <math|f,g> are continuous so that
        <math|g\<circ\>f> is continuous [see <reference|composition of
        continuous functions is continuous>]

        <item*|<math|1\<in\>\<cal-S\>>>This follows from the previous lemma
        [see <reference|D1 and composition>]

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Assume
        that <math|f>and <math|g> are of class <math|C<rsup|n+1>>. Then using
        <reference|if f is C^n then D^1f is C^n-1> we have that
        <math|D<rsup|1>f,D<rsup|1>g> are of class <math|C<rsup|n>> and by
        <reference|C^n implies C^m><space|1em>that <math|f> is of class
        <math|C<rsup|n>>. Take now <math|h as in <reference|D1 and
        composition>> then <math|\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|1>g|)>\<circ\>f>
        is of class <math|C<rsup|n>> [as <math|n\<in\>\<cal-S\>>] and
        <math|\<pi\><rsub|2>\<circ\>h=D<rsup|1>f> is of class
        <math|C<rsup|n>>. Using <reference|C^n of multivalued functions> it
        follows that <math|h> is of class <math|C<rsup|n>>. As
        <math|<around*|(|\<circ\>|)>> is of class <math|C<rsup|\<infty\>>> it
        follows that <math|<around*|(|\<circ\>|)>> is of class
        <math|C<rsup|n>>. As <math|n\<in\>\<cal-S\>> we have that
        <math|<around*|(|\<circ\>|)>\<circ\>h> is of class <math|C<rsup|n>>,
        hence <math|D<rsup|1><around*|(|g\<circ\>f|)>\<equallim\><rsub|<text|<reference|D1
        and composition>>><around*|(|\<circ\>|)>\<circ\>h> is of class
        <math|C<rsup|n>>. Applying then <reference|if f is C^n then D^1f is
        C^n-1> proves that <math|g\<circ\>f> is of class <math|C<rsup|n+1>>
        proving that <math|n+1\<in\>\<cal-S\>>. <math|>
      </description>

      <item>Using <reference|C^n implies C^m> we have that <math|f,g> are of
      class <math|C<rsup|min<around*|(|n,m|)>>> hence using (3) we have that
      <math|g\<circ\>f> is of class <math|C<rsup|min<around*|(|n,m|)>>>.

      <item>If <math|f,g> are of class <math|C<rsup|\<infty\>>> then
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f,g> are of class
      <math|C<rsup|n>> hence by (3) <math|g\<circ\>f> is of class
      <math|C<rsup|n> which proves that g\<circ\>f> is of class
      <math|C<rsup|n>>.
    </enumerate>
  </proof>

  <\lemma>
    <label|f_v is differentiable>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>be
    normed spaces then the evaluation function
    <math|ev:L<around*|(|X,Y|)>\<times\>X\<rightarrow\>Y> defined by
    <math|<around*|(|L,v|)>\<rightarrow\>ev<around*|(|L,v|)>=L<around*|(|v|)>>
    is bi-linear and continuous hence of class <math|C<rsup|\<infty\>>>[see
    <reference|continuous billinear functions are C^infinity>] and
    <math|D<rsup|1>ev<around*|(|L,v|)>=ev<around*|(|L,\<ast\>|)>+ev<around*|(|\<ast\>,v|)>>
    (by <reference|continuous billinear functions are C^infinity>).
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|bi-linearity>

      <\enumerate>
        <item>If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>, <math|v\<in\>X>
        and <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> then
        <math|ev<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,v|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|v|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|v|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|v|)>=\<alpha\>\<cdot\>ev<around*|(|L<rsub|1>,v|)>+\<beta\>\<cdot\>ev<around*|(|L<rsub|2>|)>>

        <item>If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>,v<rsub|1>v<rsub|2>\<in\>X>
        and <math|L\<in\>L<around*|(|X,Y|)>> then
        <math|ev<around*|(|L,\<alpha\>\<cdot\>v<rsub|1>+\<beta\>\<cdot\>v<rsub|2>|)>=L<around*|(|\<alpha\>\<cdot\>v<rsub|1>+\<beta\>\<cdot\>v<rsub|2>|)>=\<alpha\>\<cdot\>L<around*|(|v<rsub|1>|)>+\<beta\>\<cdot\>L<around*|(|v<rsub|2>|)>=\<alpha\>\<cdot\>ev<around*|(|L,v<rsub|1>|)>+\<beta\>\<cdot\>ev<around*|(|L,v<rsub|2>|)>>
      </enumerate>

      <item><dueto|continuity><math|<around*|\<\|\|\>|ev<around*|(|L,v|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\>1\<cdot\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>>
      proving that <math|ev> is multi linear with
      <math|<around*|\<\|\|\>|ev|\<\|\|\>>\<leqslant\>1> [see
      <reference|continuity and multilinearity>]
    </enumerate>
  </proof>

  <\lemma>
    <label|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open, <math|V\<subseteq\>Y>,
    <math|n\<in\>\<bbb-N\>,n\<gtr\>1> \ and <math|f:U\<rightarrow\>V> a
    n-times differentiable function [or <math|f> is of class
    <math|C<rsup|n>>] then given <math|h\<in\>X> we have that

    <\equation*>
      D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y defined
      by <around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>=D<rsup|1>f<around*|(|x|)><around*|(|h|)>
    </equation*>

    is <math|<around*|(|n-1|)>>-times differentiable [or is of class
    <math|C<rsup|n-1>>]. Further <math|\<forall\>k,h,x\<in\>X> we have

    <\equation*>
      \ D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)><around*|(|k|)>=D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>.
    </equation*>
  </lemma>

  <\proof>
    Given <math|v\<in\>X> define <math|\<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<times\>X>
    by <math|\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|1>f<around*|(|x|)>,v|)>>.
    Then we have that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|1>f>
    which is <math|<around*|(|n-1|)>>-times differentiable [see
    <reference|n-times differentiability is same as n-1 times
    differentiability of DF>] [or <math|C<rsup|n-1>> by <reference|if f is
    C^n then D^1f is C^n-1>] and <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|U,X,v>>
    which is <math|C<rsup|\<infty\>>> [see \ <reference|constant functions
    are C^infinite>] so that <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>>
    is <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>]
    Applying <reference|n-times differentiability of multi valued function>
    [or <reference|C^n of multivalued functions>] proves that\ 

    <\equation>
      <label|eq 14.31.101>\<varphi\><rsub|v> is <around*|(|n-1|)><text|-times
      >differentiable <around*|[|or \<varphi\><rsub|v> is C<rsup|n-1>|]>
    </equation>

    As <math|n\<gtr\>1> we have that <math|n-1\<geqslant\>1> so that by
    <reference|n-times differentiability implies m-times differentiability>
    <math|\<varphi\><rsub|v>> is <math|1>-times differentiable hence using
    <reference|n-times differentiability of multi valued function> we have
    that <math|\<pi\><rsub|1>\<circ\>D \<varphi\><rsub|v>=D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)>=D<around*|(|D<rsup|1>f|)>=D<rsup|2>f>
    and <math|\<pi\><rsub|2>\<circ\>D \<varphi\><rsub|v>=D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)>=D<around*|(|C<rsub|U,X,v>|)>\<equallim\><rsub|<text|<reference|constant
    functions are C^infinite>>>C<rsub|U,L<around*|(|X,X|)>,0>> which proves
    that

    <\equation>
      <label|eq 14.32.101>D<rsup|1>\<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,L<around*|(|X,Y|)>\<times\>X|)>
      is defined by D<rsup|1>\<varphi\><rsub|v><around*|(|x|)>=<around*|(|D<rsup|2>f<around*|(|x|)>,C<rsub|X,X,0>|)>
    </equation>

    Take now <math|h,x\<in\>X> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)><around*|(|x|)>>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|1>f<around*|(|x|)>,h|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.33.101>D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>
    </equation>

    As <math|ev> is of class <math|C<rsup|\<infty\>>> [see <reference|f_v is
    differentiable>] and <math|\<varphi\><rsub|v>> is
    <math|<around*|(|n-1|)>>-times differentiable [see <reference|eq
    14.31.101>] we can use the above together with the chain rule [see
    <reference|generalized chain rule>] to prove that

    <\equation>
      <label|eq 14.34.101>D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)> is
      <around*|(|n-1|)><text|-times >differentiable <around*|[|or
      C<rsup|n-1>|]>
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>|<cell|=>|<cell|D<around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.33.101>>>>|<cell|D<around*|(|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
      rule>>>>|<cell|D ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      ev<around*|(|<around*|(|D<rsup|1>f<around*|(|x|)>,h|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|f_v
      is differentiable>>>>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.32.101>>>>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\><around*|(|D<rsup|2>f<around*|(|x|)>,C<rsub|X,X,0>|)><eq-number><label|eq
      14.35.101>>>>>
    </eqnarray*>

    Let <math|k\<in\>X> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)>\<circ\><around*|(|D<rsup|2>f<around*|(|x|)>,C<rsub|X,X,0>|)>|)><around*|(|k|)>>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|2>f*<around*|(|x|)>,C<rsub|X,X,0>|)><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|2>f<around*|(|x|)><around*|(|k|)>,C<rsub|X,X,0><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,\<ast\>|)>+ev<around*|(|\<ast\>,h|)>|)><around*|(|D<rsup|2>f<around*|(|x|)><around*|(|k|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|ev<around*|(|D<rsup|1>f<around*|(|x|)>,0|)>+ev<around*|(|D<rsup|2>f<around*|(|x|)><around*|(|k|)>,h|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)><around*|(|0|)>+D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|0+D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>>>>>
    </eqnarray*>

    which using <reference|eq 14.35.101> proves that\ 

    <\equation>
      <label|eq 14.36.101>D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)><around*|(|k|)>=D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>
    </equation>

    The lemma is then proved by <reference|eq 14.34.101> and <reference|eq
    14.36.101>
  </proof>

  <\lemma>
    <label|(x,h)-\<gtr\>Df(x)(h) differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>be
    normed space, <math|n\<in\>\<bbb-N\>>, <math|f:U\<rightarrow\>Y> a
    n-times differentiable function [or <math|C<rsup|n>> function] then
    <math|\<Delta\>f:X\<times\>X\<rightarrow\>Y> defined by
    <math|\<Delta\>f<around*|(|x,h|)>=D<rsup|1>f<around*|(|x|)><around*|(|h|)>>
    is <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>]
  </lemma>

  <\proof>
    \ Define <math|\<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<times\>X>
    by <math|\<varphi\><around*|(|x,v|)>=<around*|(|D<rsup|1>f<around*|(|x|)>,v|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\>|)><around*|(|x,v|)>>|<cell|=>|<cell|\<pi\><rsub|1><around*|(|\<varphi\><around*|(|x,v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|\<pi\><rsub|1><around*|(|x,v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|D<rsup|1>f|)>\<circ\>\<pi\><rsub|1>|)><around*|(|x,v|)>>>|<row|<cell|<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\>|)><around*|(|x,v|)>>|<cell|=>|<cell|v>>|<row|<cell|>|<cell|=>|<cell|\<pi\><rsub|2><around*|(|x,v|)>>>>>
    </eqnarray*>

    proving that

    <\equation*>
      \<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|1>f\<circ\>\<pi\><rsub|1><infix-and>\<pi\><rsub|2>\<circ\>\<varphi\>=\<pi\><rsub|2>
    </equation*>

    As <math|D<rsup|1>f> is <math|<around*|(|n-1|)>>-times differential by
    <reference|n-times differentiability is same as n-1 times
    differentiability of DF> [or <math|C<rsup|n-1>> by <reference|if f is C^n
    then D^1f is C^n-1>] and <math|\<pi\><rsub|1>> is
    <math|C<rsup|\<infty\>>> [see <smart-ref|projection map is infinite times
    dimensions>] we have by the chain rule [see <smart-ref|generalized chain
    rule>] that <math|\<pi\><rsub|1>\<circ\>\<varphi\> is
    <around*|(|n-1|)><text|-times >differentiable <around*|[|or
    C<rsup|n-1>|]>>. This together with the fact that <math|\<pi\><rsub|2>>
    is <math|C<rsup|\<infty\>>> [see <smart-ref|projection map is infinite
    times dimensions> proves that\ 

    <\equation>
      <label|eq 14.37.101>\<varphi\> is <around*|(|n-1|)><text|-times
      differentiable ><around*|[|or C<rsup|n-1>|]>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,v|)>>|<cell|=>|<cell|ev<around*|(|\<varphi\><around*|(|x,v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|ev<around*|(|D<rsup|1>f<around*|(|x|)>,v|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|\<Delta\>f<around*|(|x,v|)>>>>>
    </eqnarray*>

    \ Proving that <math|ev\<circ\>\<varphi\>=\<Delta\>f>. As
    <math|\<varphi\>> is <math|<around*|(|n-1|)>>-times differentiable [or
    <math|C<rsup|n-1>>] and <math|ev> is <math|C<rsup|\<infty\>>> [see
    <smart-ref|f_v is differentiable>]] we have by the generalized chain rule
    [see <smart-ref|generalized chain rule>] that <math|\<Delta\>f>is
    <math|<around*|(|n-1|)>>-times differentiable [or of class
    <math|C<rsup|n-1>>].
  </proof>

  <\theorem>
    <label|product of n-times differentiable functions is n-times
    differentiable>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be <math|\<bbb-K\>> equipped with the canonical norm,
    <math|U\<subseteq\>X> and <math|n\<in\>\<bbb-N\>> [or
    <math|n\<in\>\<bbb-N\><rsub|0>>] and <math|f,g:U\<rightarrow\>\<bbb-K\>>
    are functions <math|n>-times differentiable [or of class
    <math|C<rsup|n>>] then <math|f\<cdot\>g:U\<rightarrow\>\<bbb-K\>> is
    n-times differentiable [or of class <math|C<rsup|r>>]
  </theorem>

  <\proof>
    First if <math|n=0> then as <math|f,g> are <math|C<rsup|0>> and thus
    continuous we have by <reference|product of continuous functions is
    continue> that <math|f\<cdot\>g> is continuous and thus <math|C<rsup|0>>.\ 

    Second given <math|n\<gtr\>0> define <math|\<varphi\>:U\<rightarrow\>\<bbb-K\>\<times\>\<bbb-K\>>
    by <math|\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
    then as <math|\<pi\><rsub|1>\<circ\>\<varphi\>=f> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\>=g> we have that <math|\<varphi\>>
    is n-times differentiable [or <math|C<rsup|n>>] (see <reference|n-times
    differentiability of multi valued function> [or <reference|C^n of
    multivalued functions>]). As <math|<around*|(|\<cdot\>|)>:\<bbb-K\>\<times\>\<bbb-K\>\<rightarrow\>\<bbb-K\>>
    defined by <math|<around*|(|x,y|)>\<rightarrow\>x\<cdot\>y> is trivially
    bi-linear and continuous [see <smart-ref|product is continuous and
    multilinear>] we have by <reference|continuous billinear functions are
    C^infinity> that <math|<around*|(|\<cdot\>|)>> is
    <math|C<rsup|\<infty\>>>. Now as <math|<around*|(|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>|)><around*|(|x|)>=<around*|(|\<cdot\>|)><around*|(|\<varphi\><around*|(|x|)>|)>=<around*|(|\<cdot\>|)><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
    proving that <math|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>=f\<cdot\>g>.
    By the generalized chain rule it follows that <math|f\<cdot\>g> is
    n-times differentiable [or <math|C<rsup|n>>].
  </proof>

  <section|Differentiability on general sets>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|S\<subseteq\>X>, <math|V\<subseteq\>Y> and
    <math|f:S\<rightarrow\>V> a function then <math|f> differentiable on
    <math|S> if there exists a <math|U> open such that
    <math|S\<subseteq\>U\<subseteq\>X> and a
    <math|f<rsup|U>:U\<rightarrow\>Y> with
    <math|<around*|(|f<rsup|U>|)><rsub|\|S>=f> that is differentiable on
    <math|U>.\ 

    Also <math|f> is <math|C<rsup|r>> if there exists a <math|U> open such
    that <math|S\<subseteq\>U\<subseteq\>X> and a
    <math|f<rsup|U>:U\<rightarrow\>Y> with
    <math|<around*|(|f<rsup|U>|)><rsub|\|S>=f> such that <math|f<rsup|U>> is
    <math|C<rsup|r>>.\ 

    In other words <math|f> is differentiable <around*|[|or
    <math|C<rsup|r>>|]> if it can be extended to a differentiable [or
    <math|C<rsup|r>>] function on a open set containing <math|S>.
  </definition>

  <\theorem>
    <label|composition of differentials on arbitrary sets>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces <math|S\<subseteq\>X>, <math|T\<subseteq\>Y>,
    <math|r\<in\>\<bbb-N\><rsub|0>>, <math|A\<subseteq\>Y>,
    <math|B\<subseteq\>Z> and <math|f:S\<rightarrow\>A>,
    <math|g:T\<rightarrow\>B> functions of class <math|C<rsup|r>> then
    <math|g\<circ\>f:S<big|cap>f<rsup|-1><around*|(|T|)>> is <math|C<rsup|r>>
    on <math|S>.
  </theorem>

  <\proof>
    By definition there exists a <math|U> open in <math|X> and a <math|V>
    open in <math|Y> such that <math|S\<subseteq\>U>, <math|T\<subseteq\>U>
    and <math|C<rsup|r>> functions <math|f<rsup|U>:U\<rightarrow\>X>,
    <math|g<rsup|V>:V\<rightarrow\>Z> such that
    <math|<around*|(|f<rsup|U>|)><rsub|\|S>=f> and
    <math|<around*|(|g<rsup|V>|)><rsub|\|T>=g>. Take then
    <math|W=U<big|cap><around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>> which
    is open because <math|f<rsup|U>> is continuous [being of class
    <math|C<rsup|r>>]. As <math|f<rsup|U><around*|(|S<big|cap>f<rsup|-1><around*|(|T|)>|)>\<subseteq\>f<rsup|U><around*|(|f<rsup|-1><around*|(|T|)>|)>\<equallim\><rsub|f<rsup|-1><around*|(|T|)>\<subseteq\>S>f<around*|(|f<rsup|-1><around*|(|T|)>|)>\<subseteq\>S\<subseteq\>V\<Rightarrow\>S\<subseteq\><around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>\<Rightarrowlim\><rsub|S\<subseteq\>U>S\<subseteq\>U<big|cap><around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>=W>.
    Define now <math|f<rsup|W>=<around*|(|f<rsup|U>|)><rsub|\|W>:W\<rightarrow\>Y>
    then <math|f<rsup|W>> is <math|C<rsup|r>> [see <reference|C^n is a local
    property>] and as <math|S\<subseteq\>W\<subseteq\>U> <math|f<rsup|W>> is
    still a extension of <math|f>. Now <math|f<rsup|W><around*|(|W|)>\<equallim\><rsub|W\<subseteq\>U>f<rsup|U><around*|(|W|)>\<subseteq\>f<rsup|U><around*|(|<around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>|)>\<subseteq\>V>
    so that by using the chain rule (<reference|generalized chain rule>) we
    have that <math|f<rsup|W>\<circ\>g<rsup|V>> is <math|C<rsup|r>> and as
    <math|<around*|(|g<rsup|V>\<circ\>f<rsup|U>|)><rsub|\|S>=g\<circ\>f> and
    <math|S\<subseteq\>W> we have that <math|g\<circ\>f> is <math|C<rsup|r>>.
  </proof>

  <\definition>
    <index|<math|f<rprime|'><rsub|+><around*|(|x|)>>><index|<math|f<rprime|'><rsub|-><around*|(|x|)>>><label|differentiability
    on [a,b]><index|<math|f<rprime|'><rsub|+>>><index|<math|f<rprime|'><rsub|->>>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    and <math|f:<around*|[|a,b|]>\<rightarrow\>Y> then we define the right or
    left derivate by\ 

    <\enumerate>
      <item>If <math|x\<in\><around*|[|a,b|[> then
      f<rprime|'><rsub|+><around*|(|x|)>> is the right derivate of <math|f>
      at <math|x> if and only if <math|\<forall\>\<varepsilon\>\<gtr\>0>
      there exists a <math|\<delta\>\<gtr\>0> such that for all <math|h> with
      <math|0\<less\>h\<less\>\<delta\>> and <math|x+h\<in\><around|[|a,b|]>>
      we have <math|<around*|\<\|\|\>|<frac|f<around|(|x+h|)>-f<around|(|x|)>|h>-f<rprime|'><rsub|+><around|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>

      <item>If <math|x\<in\><around*|]|a,b|]>> then
      <math|f<rprime|'><rsub|-><around|(|x|)>> is the left derivate of
      <math|f> at <math|x> if and only if
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that for all <math|h> with
      <math|0\<less\>h\<less\>\<delta\>> and <math|x-h\<in\><around|[|a,b|]>>
      we have <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><rsub|-><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around|(|x|)>-f<around|(|x-h|)>|h>-f<rprime|'><rsub|-><around|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>
  </definition>

  <\lemma>
    <label|left,right derivatives>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the real space with the canonical norm,
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>Y> then\ 

    <\enumerate>
      <item>If <math|x\<in\><around*|[|a,b|[> then
      f<rprime|'><rsub|+><around*|(|x|)>> if it exists is unique

      <item>If <math|x\<in\><around*|]|a,b|]> then
      f<rprime|'><rsub|-><around*|(|x|)>> if it exists is unique

      <item>If <math|x\<in\><around*|]|a,b|[>> and
      <math|f<rprime|'><rsub|-><around*|(|x|)>,f<rprime|'><rsub|+><around*|(|x|)>>
      both exists and <math|f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>
      then <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
      exists and <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>.
      Also if <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
      exists then <math|f<rprime|'><rsub|-><around*|(|x|)>,f<rprime|'><rsub|+><around*|(|x|)>>
      exists and <math|f<rsub|+><around*|(|x|)>=f<rsub|-><around*|(|x|)>>.

      <item>If <math|<around*|[|a,b|]>\<subseteq\>U> open and
      <math|f<rsup|U>:U\<rightarrow\>Y> is a function with
      <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> for which
      <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>> exists
      <math|\<forall\>x\<in\>U> then <math|f<rprime|'><around*|(|x|)>> exists
      on <math|<around*|]|a,b|[>> with <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>>,
      <math|f<rprime|'><rsub|+><around*|(|a|)>,f<rprime|'><rsub|-><around*|(|b|)>>
      exists with <math|f<rprime|'><rsub|+><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>>
      and <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>=f<rprime|'><rsub|-><around*|(|b|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that there exists two different right derivates
      <math|d,d<rprime|'>> at <math|x\<in\><around*|[|a,b|[>> define then
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<gtr\>0>,
      then there exists <math|\<delta\>,\<delta\><rprime|'>\<gtr\>0> such
      that if <math|0\<less\>h\<less\>\<delta\>> and
      <math|x+h\<in\><around*|[|a,b|]>> that
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and if <math|0\<less\>h\<less\>\<delta\><rprime|'>> and
      <math|x+h\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      . As <math|x\<in\><around*|[|a,b|[>> we have
      <math|a\<leqslant\>x\<less\>b> so there exists a
      <math|\<delta\><rprime|''>\<gtr\>0> such that
      <math|a\<less\>x+\<delta\><rprime|''>\<less\>b>, take
      <math|k=min<around*|(|\<delta\><rprime|''>,\<delta\><rprime|'>,\<delta\>|)>>
      then <math|0\<less\>k\<less\>\<delta\>,\<delta\><rprime|'>> and
      <math|a\<less\>x+k\<leqslant\>x+\<delta\><rprime|''>\<less\>b\<Rightarrow\>x+k\<in\><around*|[|a,b|]>>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-d+d<rprime|'>-<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-d|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<frac|f<around*|(|x+k|)>-f<around*|(|x|)>|k>-d<rprime|'>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>>>>>
      </eqnarray*>

      a contradiction. So we must have that <math|d=d<rprime|'>> an the right
      derivate is unique.

      <item>Assume that there exists two different left derivates
      <math|d,d<rprime|'>> at <math|x\<in\><around*|]|a,b|]>> define then
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<gtr\>0>,
      then there exists <math|\<delta\>,\<delta\><rprime|'>\<gtr\>0> such
      that if <math|0\<less\>h\<less\>\<delta\>> and
      <math|x-h\<in\><around*|[|a,b|]>> that
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and if <math|0\<less\>h\<less\>\<delta\><rprime|'>> and
      <math|x-h\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      . As <math|x\<in\><around*|]|a,b|]>> we have
      <math|a\<less\>x\<leqslant\>b> so there exists a
      <math|\<delta\><rprime|''>\<gtr\>0> such that
      <math|a\<less\>x-\<delta\><rprime|''>\<less\>x\<leqslant\>b>, take
      <math|k=min<around*|(|\<delta\><rprime|''>,\<delta\><rprime|'>,\<delta\>|)>>
      then <math|0\<less\>k\<less\>\<delta\>,\<delta\><rprime|'>> and
      <math|a\<less\>x-\<delta\><rprime|''>\<leqslant\>x-k\<leqslant\>b\<Rightarrow\>x-k\<in\><around*|[|a,b|]>>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d+d<rprime|'>-<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d<rprime|'>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|d-d<rprime|'>|\<\|\|\>><rsub|Y>>>>>
      </eqnarray*>

      a contradiction. So we must have that <math|d=d<rprime|'>> an the right
      derivate is unique.

      <item>Let <math|d=f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>
      and let <math|\<varepsilon\>\<gtr\>0> then there exists
      <math|\<delta\><rprime|'>,\<delta\><rprime|''>\<gtr\>0> such that if
      <math|0\<less\>h\<less\>\<delta\><rprime|'> and
      x+h\<in\><around*|[|a,b|]>> then <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      and if <math|0\<less\>h\<less\>\<delta\><rprime|''>> and
      <math|x-h\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
      Take then <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>>
      such that <math|x+h\<in\><around*|]|a,b|[>> then two cases exists:

      <\description>
        <item*|<math|h\<gtr\>0>>then as <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>\<Rightarrow\>0\<less\>h\<less\>\<delta\><rprime|'>,x+h\<in\><around*|]|a,b|[>>
        and thus <math|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|]>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>

        <item*|<math|h\<less\>0>>then <math|h=-<around*|\||h|\|>> hence
        <math|x-<around*|\||h|\|>\<in\><around*|]|a,b|[>> and
        <math|h=-<around*|\||h|\|>> thus <math|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|]>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<equallim\><rsub|h=-<around*|\||h|\|>><around*|\<\|\|\>|<frac|f<around*|(|x-<around*|\||h|\|>|)>-f<around*|(|x|)>|-<around*|\||h|\|>>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      </description>

      So we have in all cases that <math|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      proving that <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=d=f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>.\ 

      On the other hand if <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
      exists then given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\><rprime|'>\<gtr\>0> such that if
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>> and
      <math|x+h\<in\><around*|]|a,b|[>> then we have
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|]>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
      Also as <math|x\<in\><around*|]|a,b|[>> we have <math|0\<less\>x-a,b-x>
      and there exists a <math|\<delta\><rprime|''>> such that
      <math|0\<less\>\<delta\><rprime|''>\<less\>min<around*|(|x-a,b-x|)>> so
      if <math|0\<less\>h\<less\>\<delta\><rprime|''>> then
      <math|x-h\<gtr\>x-\<delta\><rprime|''>\<gtr\>x-<around*|(|x-a|)>=a> and
      <math|x+h\<less\>x+\<delta\><rprime|''>\<less\>x+b-x=b> giving
      <math|x-h,x+h\<in\><around*|]|a,b|[>> so if
      <math|0\<less\>h\<less\>\<delta\>=min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>>
      then we have\ 

      <\enumerate>
        <item><math|x+h\<in\><around*|[|a,b|]>> and
        <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|+><around*|(|x|)>> exists and is
        equal to <math|f<rprime|'><around*|(|x|)>>.

        <item><math|x-h\<in\><around*|[|a,b|]> and as
        0\<less\><around*|\||-h|\|>=<around*|\||h|\|>\<less\>\<delta\>> we
        have <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|-><around*|(|x|)>> exists and is
        equal to <math|f<rprime|'><around*|(|x|)>>.
      </enumerate>

      <item>We must consider the following cases:\ 

      <\description>
        <item*|<math|x\<in\><around*|]|a,b|[>>>Let
        <math|\<varepsilon\>\<gtr\>0> then as
        <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>> exists there
        exists a <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> with
        <math|h\<in\>U<rsub|x>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<rsup|U><around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> with
        <math|x\<in\><around*|(|<around*|]|a,b|[>|)><rsub|x>\<Rightarrow\>x+h\<in\><around*|]|a,b|[>\<subseteq\>U\<Rightarrow\>h\<in\>U<rsub|x>>
        then <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|*x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<rsup|U><around*|(|*x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><around*|(|x|)>> exists and is equal to
        <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>

        <item*|<math|x=a>>Then as <math|<around*|(|f<rsup|U>|)><rprime|'>>
        exists on <math|U> and <math|<around*|[|a,b|]>\<subseteq\>U> given
        <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
        such that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|a>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So if <math|0\<less\>h\<less\>\<delta\>> and
        <math|a+h\<in\><around*|[|a,b|]>\<subseteq\>U\<Rightarrow\>h\<in\>U<rsub|a>>
        then we have <math|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<rsup|><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|+><around*|(|a|)>> exists and
        <math|f<rprime|'><rsub|+><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>>.

        <item*|<math|x=b>>Then as <math|<around*|(|f<rsup|U>|)><rprime|'>>
        exists on <math|U> and <math|<around*|[|a,b|]>\<subseteq\>U> given
        <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
        such that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|a>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So if <math|0\<less\>-h\<less\>\<delta\>\<Rightarrow\>0\<less\><around*|\||-h|\|>\<less\>\<delta\>>
        with <math|b+<around*|(|-h|)>\<in\><around*|[|a,b|]>\<subseteq\>U\<Rightarrow\>-h\<in\>U<rsub|b>>
        then we have <math|<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+<around*|(|-h|)>|)>-f<rsup|U><around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|-><around*|(|b|)>> exists and
        <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>=f<rprime|'><rsub|-><around*|(|b|)>>.
      </description>
    </enumerate>
  </proof>

  The above theorem leads to the following definition

  <\definition>
    <label|derivative on a closed interval>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>,
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>,<math|f:<around*|[|a,b|]>\<rightarrow\>V>
    and <math|x\<in\><around*|[|a,b|]>> then <math|f> has a derivate
    <math|f<rprime|'>> at <math|x> on <math|<around*|[|a,b|]>> if and only if
    either <math|x=a> and <math|f<rprime|'><rsub|+><around*|(|a|)>> exists,
    <math|x=b> and <math|f<rprime|'><rsub|-><around*|(|b|)>> exists or
    <math|x\<in\><around*|]|a,b|[>> and \ <math|f<rprime|'><rsub|+><around*|(|x|)>>,
    <math|f<rprime|'><rsub|-><around*|(|x|)>> exists with
    <math|f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>).
    Further if <math|f<rprime|'>> exists at <math|x> then
    <math|f<rprime|'><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>
    if x=a>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)> if
    x=b>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'> if
    x\<neq\>a,b>>>>>>
  </definition>

  <\theorem>
    <label|differentiability on [a,b] equivalences>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>,
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b> then the
    following are equivalent for <math|f:<around*|[|a,b|]>\<rightarrow\>V>

    <\enumerate>
      <item><math|f> is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>

      <item>We have the following

      <\enumerate>
        <item><math|\<forall\>t\<in\><around*|]|a,b|[>> we have the existence
        of the derivate <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|t|)>>

        <item>There exists a right,left derivate
        <math|f<rprime|'><rsub|+><around*|(|a|)>,f<rprime|'><rsub|-><around*|(|b|)>>
        at <math|a,b>

        <item>Let <math|f<rprime|'>:<around*|[|a,b|]>\<rightarrow\>Y> defined
        by <math|x\<rightarrow\>f<rprime|'><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>
        if x=a>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>
        if x\<neq\>a,b>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)> if
        x=b>>>>>>then <math|f<rprime|'>> is continuous on
        <math|<around*|[|a,b|]>>
      </enumerate>
    </enumerate>

    Further if <math|f> is <math|C<rsup|1>> then <math|\<forall\>U> open,
    <math|f<rsup|U>:U\<rightarrow\>Y> with
    <math|<around*|[|a,b|]>\<subseteq\>U> and
    <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> we have that
    <math|<around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><rsub|\|<around*|[|a,b|]>>=f<rprime|'>>
  </theorem>

  <\proof>
    The proof is simple but elaborated.

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Assume that <math|f> is <math|C<rsup|1>>
      then there exists a <math|U\<subseteq\>\<bbb-R\>> be a open set with
      <math|<around*|[|a,b|]>\<subseteq\>U>, a function
      <math|f<rsup|U>:U\<rightarrow\>\<bbb-R\>> with
      <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> such that
      <math|f<rsup|U>> is <math|C<rsup|1>>. Then using <reference|C1 of real
      or complex function> we have that

      <\equation>
        <label|eq 14.39.102.3>\<forall\>t\<in\>U
        <around*|(|f<rsup|U>|)><rsup|<rprime|'>><around*|(|t|)>
        exists<infix-and><around*|(|f<rsup|U>|)><rprime|'>:U\<rightarrow\>\<bbb-R\>
        is continuous
      </equation>

      We proceed now to prove <math|2.a,2.b> and <math|2.c>:

      <\enumerate-alpha>
        <item>As <math|<around*|]|a,b|[>> is a open set,
        <math|<around*|]|a,b|[>\<subseteq\>U> and
        <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|]|a,b|[>>=f<rsub|\|<around*|]|a,b|[>>>
        we have by <reference|eq 14.39.102.3> and <reference|left,right
        derivatives> (4) that

        <\equation>
          <label|eq 14.40.102.1>\<forall\>x\<in\><around*|]|a,b|[>
          <around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)><infix-and><around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>.
        </equation>

        <item>As <math|<around*|[|a,b|]>\<subseteq\>U> and
        <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> we have by
        <reference|eq 14.39.102.3> and <reference|left,right derivatives> (4)
        that\ 

        <\equation>
          <label|eq 14.40.102>f<rprime|'><rsub|+><around*|(|a|)> exists and
          that f<rprime|'><rsub|+><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>
        </equation>

        and

        <\equation>
          <label|eq 14.41.102>f<rprime|'><rsub|-><around*|(|b|)>
          exists<infix-and>that f<rprime|'><rsub|+><around*|(|b|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>
        </equation>

        <item>Let <math|x\<in\><around*|[|a,b|]>> then we have either

        <\description>
          <item*|<math|x=a>>then <math|f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|a><around*|(|a|)>\<equallim\><rsub|<text|<smart-ref|eq
          14.40.102>>><around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>

          <item*|<math|x=b>>then <math|f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|a><around*|(|a|)>\<equallim\><rsub|<text|<smart-ref|eq
          14.41.102>>><around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>

          <item*|<math|x\<in\><around*|]|a,b|[>>>then
          <math|f<rprime|'><around*|(|x|)>=<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>\<equallim\><rsub|<text|<smart-ref|eq
          14.40.102.1>>>*<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>
        </description>

        which proves that\ 

        <\equation>
          <label|eq 14.43.102>f<rprime|'>=<around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><rsub|\|<around*|[|a,b|]>>
        </equation>

        Using <reference|continuity of restricted maps> and the continuity of
        <math|<around*|(|f<rsup|U>|)><rprime|'>> [see <smart-ref|eq
        14.39.102.3>] it follow that\ 

        <\equation>
          <label|eq 14.44.102.1>f<rprime|'> is continuous in the subspace
          topology on <around*|[|a,b|]>
        </equation>
      </enumerate-alpha>

      <item*|<math|2\<Rightarrow\>1>>Let <math|f:<around*|[|a,b|]>\<rightarrow\>Y>
      be a function satisfying 2.a,2.b and 2.c then
      <math|<around*|[|a,b|]>\<subseteq\><around*|]|a-1,b+1|[>> a open set.
      Define then <math|f<rsup|<around*|]|a-1,b+1|[>>:<around*|]|a-1,b+1|[>\<rightarrow\>Y>
      by

      <\equation*>
        f<rsup|<around*|]|a-1,b+1|[>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)>
        if x\<in\><around*|[|a,b|]>>>|<row|<cell|f*<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|x-a|)>
        if x\<in\><around*|]|a-1,a|[>>>|<row|<cell|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x-b|)>
        if x\<in\><around*|]|b,b+1|[>>>>>>
      </equation*>

      then we have trivial\ 

      <\equation>
        <label|eq 14.45.102><around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rsub|\|<around*|[|a,b|]>>=f
      </equation>

      Next we prove that <math|f<rsup|<around*|]|a-1,b+1|[>>> has a
      derivative for every element in <math|<around*|]|a-1,b+1|[>>. Let
      <math|x\<in\><around*|]|a-1,b+1|[>> then we must consider the following
      case:\ 

      <\description>
        <item*|<math|x=a>>Let <math|\<varepsilon\>\<gtr\>0> then by the
        definition of <math|f<rprime|'><rsub|+><around*|(|a|)>> there exists
        a <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\>h\<less\>\<delta\><rprime|'>> with
        <math|x+h\<in\><around*|[|a,b|]>> we have
        <math|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,b-a|)>\<gtr\>0>.
        If <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> with
        <math|h\<in\><around*|]|a-1,b+1|[><rsub|a>\<Rightarrow\>a+h\<in\><around*|]|a-1,b+1|[>>
        we have either

        <\description>
          <item*|<math|h\<less\>0>>then <math|a+h\<in\><around*|]|a-1,a|[>>
          so that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|a+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|a+h-a|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
          </eqnarray*>

          <item*|<math|0\<less\>h>>then <math|0\<less\>h\<less\>\<delta\>\<leqslant\>b-a\<Rightarrow\>a\<less\>a+h\<less\><around*|(|b-a|)>+a>
          proving that <math|a+h\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>>
          so that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|a+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|\<varepsilon\>
            <around*|[|as h\<less\>\<delta\><rprime|'>|]>>>>>
          </eqnarray*>
        </description>

        so in all cases we have that <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|a+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        which proves that <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|+><around*|(|a|)>>.\ 

        <item*|<math|x=b>>Let <math|\<varepsilon\>\<gtr\>0> then by the
        definition of <math|f<rprime|'><rsub|-><around*|(|b|)>> there exists
        a <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\>h\<less\>\<delta\><rprime|'>> with
        <math|b-h\<in\><around*|[|a,b|]>> we have
        <math|<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take then <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,b-a|)>>.
        If <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> with
        <math|h\<in\><around*|]|a-1,b+1|[><rsub|b>\<Rightarrow\>b+h\<in\><around*|]|a-1,b+1|[>>
        we have either\ 

        <\description>
          <item*|<math|h\<less\>0>>then <math|-h=<around*|\||h|\|>\<less\>\<delta\>\<leqslant\>b-a\<Rightarrow\>a-b\<less\>h\<Rightarrow\>a\<less\>b+h\<Rightarrowlim\><rsub|b+h\<less\>b>b+h\<in\><around*|[|a,b|]>>
          hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|b+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b+h|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b-<around*|\||h|\|>|)>-f<around*|(|b|)>|-<around*|\||h|\|>>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>\<varepsilon\>>|<cell|<around*|[|as
            <around*|\||h|\|>\<less\>\<delta\><rprime|'>|]>>>>>
          </eqnarray*>

          <item*|<math|0\<less\>h>>then <math|>as
          <math|b+h\<in\><around*|]|b,b+1|[>> we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|b+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|b+h-b|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
          </eqnarray*>
        </description>

        so in all cases we have that <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|b+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        which proves that <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|-><around*|(|b|)>>.

        <item*|<math|x\<in\><around*|]|a,b|[>>>By 2.a.
        <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
        exists so given <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>> and
        <math|h\<in\><around*|(|<around*|]|a,b|[>|)><rsub|x>\<Rightarrow\>x+h\<in\><around*|]|a,b|[>>
        we have <math|<around*|\<\|\|\>|<frac|f<rsub|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take now <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,x-a,b-x|)>\<gtr\>0>
        then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
        <math|h\<less\>b-x\<Rightarrow\>x+h\<less\>b> and
        <math|-h\<less\>x-a\<Rightarrow\>a\<less\>x+h> prioving that
        <math|x+h\<in\><around*|]|a,b|[>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|x+h,x\<in\><around*|]|a,b|[>\<subseteq\><around*|[|a,b|]>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|]>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|x\<in\><around*|]|a,b|[>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        which proves that <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>

        <item*|<math|x\<in\><around*|]|a-1,a|[>>>Let
        <math|\<varepsilon\>\<gtr\>0> take <math|\<delta\>=a-x\<gtr\>0> then
        if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\><around*|]|a-1,b+1|[><rsub|x>> then
        <math|x+h\<leqslant\>x+<around*|\||h|\|>\<less\>x+\<delta\>=a> and
        <math|x+h\<in\><around*|]|a-1,b+1|[>>so that
        <math|x+h\<in\><around*|]|a-1,a|[>> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|x|)>|h>-f<rsub|+><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rsub|+><rprime|'><around*|(|a|)>\<cdot\><around*|(|x+h-a|)>-<around*|[|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|x-a|)>|]>|>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
        </eqnarray*>

        which proves that <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|+><around*|(|a|)>>.

        <\equation*>
          \;
        </equation*>

        <item*|<math|x\<in\><around*|]|b,b+1|[>>>Let
        <math|\<varepsilon\>\<gtr\>0> take <math|\<delta\>=x-b\<gtr\>0> then
        if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\><around*|]|a-1,b+1|[><rsub|x>> then
        <math|-h\<leqslant\><around*|\||h|\|>\<less\>\<delta\>=x-b\<Rightarrow\>b\<less\>x+h>
        and <math|x+h\<in\><around*|]|a-1,b+1|[>> so that
        <math|x+h\<in\><around*|]|b,b+1|[>>. So that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|x|)>|h>-f<rsub|-><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rsub|-><rprime|'><around*|(|b|)>\<cdot\><around*|(|x+h-b|)>-<around*|[|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x-b|)>|]>|>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
        </eqnarray*>

        which proves that <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|-><around*|(|b|)>>
      </description>

      \ Summarizing we have that <math|\<forall\>x\<in\><around*|]|a-1,b+1|[>>

      <\equation>
        \ <label|eq 14.46.102><around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'>*<around*|(|x|)>
        exists<infix-and> <around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>
        if x\<in\><around*|]|a-1,a|]>>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)>
        if x\<in\><around*|[|b,b+1|[>>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>
        if x\<in\><around*|]|a,b|[>>>>>>
      </equation>

      Now to prove continuity of <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'>>
      on <math|<around*|]|a-1,b+1|[>>. Let
      <math|x\<in\><around*|]|a-1,b+1|[>> then we have to consider the
      following cases:\ 

      <\description>
        <item*|<math|x=a>>As <math|f<rprime|'>> is continuous on
        <math|<around*|[|a,b|]>> we have <math|\<forall\>\<varepsilon\>\<gtr\>0>
        that there exists a <math|\<delta\><rprime|'>\<gtr\>0> such that
        <math|\<forall\>y\<in\><around*|[|a,b|]><big|cap><around*|]|a-\<delta\><rprime|'>,a+\<delta\><rprime|'>|[>>
        we have <math|<around*|\<\|\|\>|f<rprime|'><around*|(|y|)>-f<rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\>,b-a|)>\<gtr\>0> then if
        <math|y\<in\><around*|]|a-\<delta\>,a+\<delta\>|[><big|cap><around*|]|a-1,b+1|[>>
        we have the following cases to consider

        <\description>
          <item*|<math|y\<leqslant\>a>>then
          <math|y\<in\><around*|]|a-\<delta\>,a|]><big|cap><around*|]|a-1,b+1|[>>

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
            14.46.102>>>>|<cell|<around*|\<\|\|\>|f<rprime|'><rsub|+><around*|(|a|)>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
          </eqnarray*>

          <item*|<math|a\<less\>y>>then as
          <math|y\<in\><around*|]|a-\<delta\>,a+\<delta\>|[><below|\<Rightarrow\>a\<less\>y\<less\>a+\<delta\>\<leqslant\>a+b-a=b|>>
          so that <math|y\<in\><around*|]|a,b|[>> \ and
          <math|y\<in\><around*|]|a-\<delta\><rprime|'>,a+\<delta\><rprime|'>|[>>
          hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
            14.46.102>>>>|<around*|\<\|\|\>|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|y|)>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|\<\|\|\>|f<rprime|'><around*|(|y|)>-f<rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>\<varepsilon\>>|<cell|>>>>
          </eqnarray*>
        </description>

        Hence <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'>> is
        continuous at <math|a>

        <item*|<math|x=b>>As <math|f<rprime|'>> is continuous on
        <math|<around*|[|a,b|]>> we have <math|\<forall\>\<varepsilon\>\<gtr\>0>
        that there exists a <math|\<delta\><rprime|'>\<gtr\>0> such that
        <math|\<forall\>y\<in\><around*|[|a,b|]><big|cap><around*|]|b-\<delta\><rprime|'>,b+\<delta\><rprime|'>|[>>
        we have <math|<around*|\<\|\|\>|f<rprime|'><around*|(|y|)>-f<rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take <math|\<delta\>=min<around*|(|\<delta\><rprime|'>,b-a|)>\<gtr\>0>
        then if <math|y\<in\><around*|]|b-\<delta\>,b+\<delta\>|[><big|cap><around*|]|a-1,b+1|[>>
        we have the following cases to consider

        <\description>
          <item*|<math|b\<leqslant\>y>>then
          <math|y\<in\><around*|[|b,b+1|[><big|cap><around*|]|a-1,b+1|[>>

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
            14.46.102>>>>|<cell|<around*|\<\|\|\>|f<rprime|'><rsub|-><around*|(|b|)>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
          </eqnarray*>

          <item*|<math|y\<less\>b>>then as
          <math|y\<in\><around*|]|b-\<delta\>,b+\<delta\>|[><below|\<Rightarrow\>y\<gtr\>b-\<delta\>\<geqslant\>b-<around*|(|b-a|)>=a|>>
          so that <math|y\<in\><around*|]|a,b|[>> \ and
          <math|y\<in\><around*|]|a-\<delta\><rprime|'>,a+\<delta\><rprime|'>|[>>
          hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
            14.46.102>>>>|<around*|\<\|\|\>|<around*|(|f<rsub|<around*|]|a,b|[>>|)><rprime|'><around*|(|y|)>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|\<\|\|\>|f<rprime|'><around*|(|y|)>-f<rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>\<varepsilon\>>|<cell|>>>>
          </eqnarray*>
        </description>

        Hence <math|f<rprime|'>> is continuous at <math|b>

        <item*|<math|x\<in\><around*|]|a-1,a|[>>>Take
        <math|\<delta\>=min<around*|(|a-x,x-<around*|(|a-1|)>|)>\<gtr\>0>
        then for <math|y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[><big|cap><around*|]|a-1,b+1|[>>
        we have <math|y\<in\><around*|]|x-<around*|(|x-<around*|(|a-1|)>|)>,x+<around*|(|a-x|)>|[>=<around*|]|a-1,a|[>>.
        So\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          14.46.102>>>>|<cell|<around*|\<\|\|\>|f<rprime|'><rsub|+><around*|(|a|)>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
        </eqnarray*>

        Hence <around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'> is
        continuous at <math|x>.

        <item*|<math|x\<in\><around*|]|b,b+1|[>>>Take
        <math|\<delta\>=min<around*|(|b+1-x,x-b|)>\<gtr\>0> then for
        <math|y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[><big|cap><around*|]|a-1,b+1|[>>
        we have <math|y\<in\><around*|]|x-<around*|(|x-b|)>,x+<around*|(|b+1-x|)>|[>=<around*|]|b,b+1|[>>.
        So\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          14.46.102>>>>|<cell|<around*|\<\|\|\>|f<rprime|'><rsub|-><around*|(|b|)>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|0\<less\>\<varepsilon\>>>>>
        </eqnarray*>

        Hence <around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'> is
        continuous at <math|x>.

        <item*|<math|x\<in\><around*|]|a,b|[>>>Let
        <math|\<varepsilon\>\<gtr\>0> As <math|f<rprime|'>> is continuous at
        <math|x> there exists a <math|\<delta\><rprime|'>\<gtr\>0> such that
        for <math|y\<in\><around*|]|x-\<delta\><rprime|'>,x+\<delta\><rprime|'>|[><big|cap><around*|[|a,b|]>>
        we have <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>-f<rprime|'><around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take then <math|\<delta\>=min<around*|(|x-a,b-x,\<delta\><rprime|'>|)>\<gtr\>0>
        then if <math|y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\><around*|]|x-<around*|(|x-a|)>,x+<around*|(|b-x|)>|[>=<around*|]|a,b|[>>
        we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          14.46.102>>>>|<cell|<around*|\<\|\|\>|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|y|)>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|\<\|\|\>|f<rprime|'><around*|(|y|)>-f<rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        Hence <around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'> is
        continuous at <math|x>.
      </description>

      The above proves that <math|\<forall\>x\<in\><around*|]|a-1,b+1|[>><space|1em><math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rprime|'>>
      is continuous at <math|x>. So by definition
      <math|f<rsup|<around*|]|a-1,b+1|[>>> is <math|C<rsup|1>>. As further
      <math|<around*|[|a,b|]>\<subseteq\><around*|]|a-1,b+1|[>> a open set,
      <math|<around*|(|f<rsup|<around*|]|a-1,b+1|[>>|)><rsub|\|<around*|[|a,b|]>>=f>
      it follow by definition that \ 

      <\equation*>
        f is of class C<rsup|1>
      </equation*>

      proving (1).
    </description>

    The final part of the theorem is <smart-ref|eq 14.43.102>.
  </proof>

  <\example>
    <label|x+t.y is C infinite>Let <math|<around*|\<langle\>|\<bbb-R\>\<nocomma\>,\<\|\|\>|\<rangle\>>>
    be the real normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space over <math|\<bbb-R\>>, <math|x,y\<in\>Y> then
    <math|\<sigma\>:<around*|[|a,b|]>\<rightarrow\>Y> defined by
    <math|\<sigma\><around*|(|t|)>=x+t\<cdot\>y> is <math|C<rsup|1>> and
    <math|\<sigma\><rprime|'><around*|(|t|)>=y> if
    <math|t\<in\><around*|]|a,b|[>> together with
    <math|\<sigma\><rprime|'><rsub|+><around*|(|a|)>=y>,
    <math|\<sigma\><rprime|'><rsub|-><around*|(|b|)>=y>
  </example>

  <\proof>
    Define <math|\<sigma\><rsup|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>Y> by
    <math|\<sigma\><rsup|\<bbb-R\>><around*|(|t|)>=x+t\<cdot\>y>, using
    <reference|x+t.y is C1 (1)> we have then that
    <math|\<sigma\><rsup|\<bbb-R\>>> is <math|C<rsup|1>> with
    <math|<around*|(|\<sigma\><rsup|\<bbb-R\>>|)><rprime|'>=C<rsub|\<bbb-R\>,Y,y>>.
    As <math|\<bbb-R\>> is open, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>
    and <math|<around*|(|\<sigma\><rsup|\<bbb-R\>>|)><rsub|\|<around*|[|a,b|]>>=\<sigma\>>
    we have by definition that\ 

    <\equation*>
      \<sigma\> is C<rsup|1>
    </equation*>

    Using the previous theorem [see \ <reference|differentiability on [a,b]
    equivalences>] we have then that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><rprime|'><rsub|+><around*|(|a|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<sigma\><rsup|\<bbb-R\>>|)><rsup|<rprime|'>>|)><rsub|\|<around*|[|a,b|]>><around*|(|a|)>=y>>|<row|<cell|\<sigma\><rprime|'><rsub|-><around*|(|b|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<sigma\><rsup|\<bbb-R\>>|)><rsup|<rprime|'>>|)><rsub|\|<around*|[|a,b|]>><around*|(|b|)>=y>>|<row|<cell|\<forall\>t\<in\><around*|]|a,b|[>
      \<sigma\><rprime|'><around*|(|t|)>>|<cell|=>|<cell|<around*|(|<around*|(|\<sigma\><rsup|\<bbb-R\>>|)><rsup|<rprime|'>>|)><rsub|\|<around*|[|a,b|]>><around*|(|t|)>=y>>>>
    </eqnarray*>
  </proof>

  <section|Intermediate value and mean value theorems>

  <\definition>
    <index|local weak minimum><index|local weak maximum><index|extremum>Let
    <math|X> be a topological space, <math|U\<subseteq\>X> open
    <math|f:U\<rightarrow\>\<bbb-R\>> then <math|x\<in\>U> is a
    <with|font-series|bold|local weak minimum (maximum) of f> if there exists
    a <math|\<delta\>\<gtr\>0> such that <math|B<rsub|\<delta\>><around*|(|x|)>\<subseteq\>U>
    and <math|\<forall\>y\<in\>B<rsub|\<delta\>><around*|(|x|)>> we have
    <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>> [or
    <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>]. A local minimum or
    maximum is also called a <with|font-series|bold|local extremum>.
  </definition>

  <\theorem>
    <label|extremum and derivate>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the real normed space, <math|U\<subseteq\>\<bbb-R\>> and
    <math|f:U\<rightarrow\>\<bbb-R\>> be a function and <math|x\<in\>U> a
    local extremum then if <math|f<rprime|'><around*|(|x|)>> exists we have
    <math|f<rprime|'><around*|(|x|)>=0>.
  </theorem>

  <\proof>
    We have two cases to consider

    <\description>
      <item*|local weak maximum>Then there exists a <math|\<delta\>\<gtr\>0>
      such that <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>Take
        <math|\<varepsilon\>=f<rprime|'><around*|(|x|)>\<gtr\>0> then by
        definition there exists a <math|\<delta\><rprime|'>\<gtr\>0> such
        that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\>U<rsub|x>> then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=f<rprime|'><around*|(|x|)>>.
        Let <math|h=<frac|min<around*|(|\<delta\>,\<delta\><rprime|'>|)>|2>>
        then <math|0\<less\>h\<less\>\<delta\>,\<delta\><rprime|'>> and
        <math|x\<less\>x+h\<less\>x+\<delta\>\<Rightarrow\>x+h\<in\>U\<Rightarrow\>h\<in\>U<rsub|x>>
        so that <math|f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<leqslant\><around*|\||f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>|\|>\<less\>\<varepsilon\>=f<rprime|'><around*|(|x|)>>
        a contradiction.

        <item*|<math|f<around*|(|x|)>\<less\>0>>Take
        <math|\<varepsilon\>=-f<rprime|'><around*|(|x|)>\<gtr\>0> then by
        definition there exists a <math|\<delta\><rprime|'>\<gtr\>0> such
        that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\>U<rsub|x>> then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=-f<rprime|'><around*|(|x|)>>.
        Let <math|h=<frac|min<around*|(|\<delta\>,\<delta\><rprime|'>|)>|2>>
        then <math|0\<less\>h\<less\>\<delta\><rprime|'>,\<delta\>> and
        <math|x-\<delta\>\<less\>x-h\<less\>x\<Rightarrow\>x-h\<in\>U\<Rightarrow\>-h\<in\>U<rsub|x>>
        so that <math|-f<rprime|'><around*|(|x|)>\<leqslant\><frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>\<leqslant\><around*|\||<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=-f<rprime|'><around*|(|x|)>>
        a contradiction.
      </description>

      So as in all cases we have a contraction.

      <item*|local weak minimum>Then there exists a <math|\<delta\>\<gtr\>0>
      such that <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U> and
      <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we have
      <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Assume that
      <math|f<rprime|'><around*|(|x|)>\<neq\>0> then we have either

      <\description>
        <item*|<math|0\<less\>f<rprime|'><around*|(|x|)>>>Take
        <math|\<varepsilon\>=f<rprime|'><around*|(|x|)>\<gtr\>0> then by
        definition there exists a <math|\<delta\><rprime|'>\<gtr\>0> such
        that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\>U<rsub|x>> then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=f<rprime|'><around*|(|x|)>>.
        Let <math|h=<frac|min<around*|(|\<delta\>,\<delta\><rprime|'>|)>|2>>
        then <math|0\<less\>h\<less\>\<delta\>,\<delta\><rprime|'>> and
        <math|x-\<delta\>\<less\>x-h\<less\>x\<Rightarrow\>x-h\<in\>U\<Rightarrow\>-h\<in\>U<rsub|x>>
        so that <math|f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>\<leqslant\><around*|\||f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>|\|>\<less\>\<varepsilon\>=f<rprime|'><around*|(|x|)>>
        a contradiction.

        <item*|<math|f<rprime|'><around*|(|x|)>\<less\>0>>Take
        <math|\<varepsilon\>=-f<rprime|'><around*|(|x|)>\<gtr\>0> then by
        definition there exists a <math|\<delta\><rprime|'>>\<gtr\>0 such
        that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\>U<rsub|x>> then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=f<rprime|'><around*|(|x|)>>.
        Let <math|h=<frac|min<around*|(|\<delta\>,\<delta\><rprime|'>|)>|2>>
        then <math|0\<less\>h\<less\>\<delta\>,\<delta\><rprime|'>> and
        <math|x\<less\>x+h\<Rightarrow\>x+h\<in\>U\<Rightarrow\>h\<in\>U<rsub|x>>
        so that <math|-f<rprime|'><around*|(|x|)>\<leqslant\>-f<rprime|'><around*|(|x|)>+<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<leqslant\><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>=-f<around*|(|x|)><rprime|'>>
        a contradiction.\ 
      </description>

      So in all cases we have a contradition.
    </description>

    As in all cases we reach a contradiction il follows that the hypothese
    <math|f<rprime|'><around*|(|x|)>\<neq\>0> is false hence\ 

    <\equation*>
      f<rprime|'><around*|(|x|)>=0
    </equation*>
  </proof>

  <\theorem>
    <label|rolles theorem><index|Rolle's theorem><dueto|Rolle's theorem>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>, the normed
    space <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> [which is
    a Banach space by <reference|real space is complete>] and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> such
    that <math|f<around*|(|a|)>=f<around*|(|b|)>=0> and <math|f> is
    differentiable on <math|<around*|]|a,b|[>> then there exists a
    <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|0=f<rprime|'><around*|(|\<zeta\>|)>>.
  </theorem>

  <\proof>
    Using <reference|continuous mapping in [a,b]> there exists a
    <math|c,d\<in\>\<bbb-R\>> such that <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
    then as <math|c\<leqslant\>f<around*|(|a|)>=f<around*|(|b|)>=0\<leqslant\>d\<Rightarrow\>c\<leqslant\>0\<leqslant\>d>
    we have the following cases to consider:

    <\description>
      <item*|<math|c=d=0>>Then <math|f> is constant and
      <math|\<forall\>\<zeta\>\<in\><around*|]|a,b|[>> we have
      <math|f<rprime|'><around*|(|\<zeta\>|)>=D
      f<around*|(|\<zeta\>|)><around*|(|1|)>=0> [see <reference|differential
      of the constant function>]

      <item*|<math|c\<less\>0>>As <math|f<around*|(|a|)>=f<around*|(|b|)>=0>
      and <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>> there
      exists a <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|\<zeta\>|)>=c\<gtr\>0=f<around*|(|a|)>=f<around*|(|b|)>
      hence \<zeta\>\<in\><around*|]|a,b|[>>. Further
      <math|\<forall\>x\<in\><around*|]|a,b|[>> we have
      <math|f<around*|(|x|)>\<in\><around*|[|c,d|]>\<Rightarrow\>f<around*|(|\<zeta\>|)>=c\<leqslant\>f<around*|(|x|)>>
      proving that <math|\<zeta\>> is a local mimimum. Using the previous
      theorem (<reference|extremum and derivate>) it follows that
      <math|f<rprime|'><around*|(|\<zeta\>|)>=0>.

      <item*|<math|0\<less\>d>>As <math|f<around*|(|a|)>=f<around*|(|b|)>=0>
      and <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>> there
      exists a <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|\<zeta\>|)>=d\<gtr\>0=f<around*|(|a|)>=f<around*|(|b|)>
      hence \<zeta\>\<in\><around*|]|a,b|[>>. Further
      <math|\<forall\>x\<in\><around*|]|a,b|[>> we have
      <math|f<around*|(|x|)>\<in\><around*|[|c,d|]>\<Rightarrow\>f<around*|(|x|)>\<leqslant\>d=f<around*|(|\<zeta\>|)>>
      proving that <math|\<zeta\>> is a local maximum. Using the previous
      theorem (<reference|extremum and derivate>) it follows that
      <math|f<rprime|'><around*|(|\<zeta\>|)>=0>.
    </description>
  </proof>

  <\theorem>
    <label|lagranges theorem><index|Lagrange's theorem><dueto|Lagrange's
    theorem>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> which
    have a derivative everywhere in <math|<around*|]|a,b|[>> then there
    exists a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|b-a|)>>
  </theorem>

  <\proof>
    Define the function <math|g:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> by
    <math|g<around*|(|x|)>=f<around*|(|x|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>|)>>
    which is differentiable in <math|<around*|]|a,b|[>> and continuous on
    <math|<around*|[|a,b|]>> [because constant functions are
    <math|C<rsup|\<infty\>>>, linear functions in a finite dimensional spaces
    are continuous [see <reference|linear mappins between products of the
    real spaces are continuous>] and thus <math|C<rsup|\<infty\>>> [see
    <reference|linear continuous mappings are C^infinity>] and the sum of
    <math|C<rsup|\<infty\>>> functions is <math|C<rsup|\<infty\>>>]. Now
    <math|g<around*|(|a|)>=f<around*|(|a|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|a-a|)>|)>=f<around*|(|a|)>-f<around*|(|a|)>=0>
    and also <math|g<around*|(|b|)>=f<around*|(|b|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|b-a|)>|)>=f<around*|(|b|)>-f<around*|(|a|)>-f<around*|(|b|)>+f<around*|(|a|)>=0>.
    Applying Rolle's theorem we have the existence of a
    <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
    <math|0=g<rprime|'><around*|(|\<zeta\>|)>=0\<Rightarrow\>0=g<rprime|'><around*|(|\<zeta\>|)>=f<rprime|'><around*|(|\<zeta\>|)>-<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<Rightarrow\>f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|b-a|)>>.
  </proof>

  <\corollary>
    <label|strictly increasing function and derivative>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> such that <math|f> has a derivative
    <math|\<forall\>x\<in\>U>, <math|\<emptyset\>\<neq\>A\<subseteq\>U> such
    that <math|\<forall\>x\<in\>A> we have
    <math|0\<less\>f<rprime|'><around*|(|x|)>> [or
    <math|0\<leqslant\>f<rprime|'><around*|(|x|)>>] then <math|f> is strictly
    increasing [or increasing] on <math|A> and if <math|\<forall\>x\<in\>A>
    we have that <math|f<rprime|'><around*|(|x|)>\<less\>0> [or
    <math|f<rprime|'><around*|(|x|)>\<leqslant\>0>] then <math|f> is strictly
    decreasing [or decreasing] on <math|A>
  </corollary>

  <\proof>
    First as <math|\<forall\>x\<in\>U> <math|f<rprime|'><around*|(|x|)>>
    exists we have by <reference|differentias and derivates> that <math|f> is
    differentiable at <math|x> and thus continuous at <math|x> [see
    <reference|differentiability at x implies continuity at x>]. So if
    <math|x,y\<in\>A> with <math|x\<less\>y> we can apply Lagrange's theorem
    [see <reference|lagranges theorem>] so that
    <math|f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><around*|(|\<varepsilon\>|)>\<cdot\><around*|(|y-x|)>>
    where <math|\<varepsilon\>\<in\><around*|]|x,y|[>>.\ 

    Assume that <math|\<forall\>z\<in\>A>
    <math|0\<less\>f<rprime|'><around*|(|z|)>> then
    <math|f<rprime|'><around*|(|\<varepsilon\>|)>\<gtr\>0>,
    <math|y-x\<gtr\>0> so that <math|f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><around*|(|\<varepsilon\>|)>\<cdot\><around*|(|y-x|)>\<gtr\>0\<Rightarrow\>f<around*|(|y|)>\<gtr\>f<around*|(|x|)>>
    proving that <math|f> is strictly increasing on <math|A>.\ 

    Assume \ <math|\<forall\>z\<in\>A> <math|0\<leqslant\>f<rprime|'><around*|(|z|)>>
    then <math|f<rprime|'><around*|(|\<varepsilon\>|)>\<geqslant\>0>,
    <math|y-x\<gtr\>0> so that <math|f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><around*|(|\<varepsilon\>|)>\<cdot\><around*|(|y-x|)>\<geqslant\>0\<Rightarrow\>f<around*|(|y|)>\<geqslant\>f<around*|(|x|)>>
    proving that <math|f> is increasing on <math|A>.\ 

    Assume <math|\<forall\>z\<in\>A> we have
    <math|f<rprime|'><around*|(|z|)>\<less\>0> [or
    <math|f<rprime|'><around*|(|z|)>\<leqslant\>0>] then we have that
    <math|<around*|(|-f|)><rprime|'><around*|(|z|)>=-f<rprime|'><around*|(|z|)>\<gtr\>0>
    [or <math|<around*|(|-f|)><rprime|'><around*|(|z|)>=-f<rprime|'><around*|(|z|)>\<geqslant\>0>]
    so that we have that <math|-f> is strictly increasing (or increasing)
    proving that <math|f> is strictly decreasing (decreasing). <math|>
  </proof>

  <\definition>
    <index|concave function><index|convex function>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function<space|1em><math|a,b\<in\>U>
    with <math|a\<less\>b> and <math|<around*|[|a,b|]>\<subseteq\>U> then
    <math|f> is convex [or concave] on <math|<around*|[|a,b|]>> if
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
    <math|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>\<geqslant\>f<around*|(|x|)>>
    (or <math|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>\<leqslant\>f<around*|(|x|)>>).
    Essentially <math|f> is convex (concave) if a straight line between
    <math|f<around*|(|a|)>> and <math|f<around*|(|b|)>> lies above [below]
    the curve <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>.
  </definition>

  We can easily rewrite the this definition as follows

  <\lemma>
    <label|convex, concave functions>Let <math|U\<subseteq\>\<bbb-R\>> be a
    open set, <math|f:U\<rightarrow\>\<bbb-R\>> a
    function<space|1em><math|a,b\<in\>U> with <math|a\<less\>b> then <math|f>
    is convex [or concave] on <math|<around*|[|a,b|]>> if
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
    <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)>>
    [or <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)>>]
  </lemma>

  <\proof>
    this follows from the following\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-a|)>+<around*|(|f<around*|(|b|)>-f<around*|(|a|)>|)>\<cdot\><around*|(|x-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\>b-f<around*|(|a|)>\<cdot\>a+f<around*|(|b|)>\<cdot\>x-f<around*|(|b|)>\<cdot\>a-f<around*|(|a|)>\<cdot\>x+f<around*|(|a|)>\<cdot\>a|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|equivalences of convexitivity (concavity)>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function, <math|a,b\<in\>U> with
    <math|a\<less\>b and <around*|[|a,b|]>\<subseteq\>U> then <math|f> is
    convex [or concave] on <math|<around*|[|a,b|]>> if
    <math|\<forall\>\<alpha\>,\<beta\>> with
    <math|0\<leqslant\>\<alpha\>,\<beta\>> and <math|\<alpha\>+\<beta\>=1> we
    have that <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
    [or <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>]
  </lemma>

  <\proof>
    If <math|x\<in\><around*|[|a,b|]>> then
    <math|0\<leqslant\><frac|x-a|b-a>=\<beta\>,<frac|b-x|b-a>=\<alpha\>> and
    <math|\<alpha\>+\<beta\>=\<beta\>+\<alpha\>=<frac|x-a+b-x|b-a>=1> and

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|=>|<cell|<frac|<around*|(|b-x|)>\<cdot\>a+<around*|(|x-a|)>\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|b\<cdot\>a-x\<cdot\>a+x\<cdot\>b-a\<cdot\>b|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|x\<cdot\><around*|(|b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|x>>>>
    </eqnarray*>

    Further if \ <math|\<exists\>\<alpha\>,\<beta\>\<vdash\>0\<leqslant\>\<alpha\>,\<beta\>\<wedge\>\<alpha\>+\<beta\>=1>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|\<geqslant\><rsub|0\<leqslant\>\<beta\>\<wedge\>a\<less\>b>>|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>a>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>a>>|<row|<cell|>|<cell|=>|<cell|a>>|<row|<cell|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b>|<cell|\<leqslant\><rsub|0\<leqslant\>\<alpha\>\<wedge\>a\<less\>b>>|<cell|\<alpha\>\<cdot\>b+\<beta\>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>b+<around*|(|1-\<alpha\>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|b>>>>
    </eqnarray*>

    Hence we have\ 

    <\equation>
      <label|eq 14.46.1.004>x\<in\><around*|[|a,b|]>\<Leftrightarrow\>\<exists\>\<alpha\>,\<beta\>\<vdash\>0\<leqslant\>\<alpha\>,\<beta\>\<wedge\>\<alpha\>+\<beta\>=1<text|
      such that >x=\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b
    </equation>

    <\equation*>
      \;
    </equation*>

    So if <math|x\<in\><around*|[|a,b|]>> there exists a
    <math|\<alpha\>,\<beta\>> such that <math|0\<leqslant\>\<alpha\>,\<beta\>>
    and <math|\<alpha\>+\<beta\>=1>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      14.46.1.004>>>>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-\<alpha\>\<cdot\>a-\<beta\>\<cdot\>b|)>+f<around*|(|b|)>\<cdot\><around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\><around*|(|1-\<beta\>|)>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|\<beta\>\<cdot\>b-a\<cdot\><around*|(|1-\<alpha\>|)>|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\>\<alpha\>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)>\<cdot\><around*|(|\<beta\>\<cdot\>b-a\<cdot\>\<beta\>|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-a|)>\<cdot\>\<alpha\>+f<around*|(|b|)>\<cdot\><around*|(|b-a|)>\<cdot\>\<beta\>|b-a>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>>>>
    </eqnarray*>

    Hence as <math|f<around*|(|x|)>=f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>
    we have that <math|f> is convex [concave] if
    <math|><math|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<geqslant\>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>
    (or <math|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<leqslant\>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>).
  </proof>

  The next theorem shows the relation between the second derivate and convex
  and concave functions.

  <\theorem>
    <label|condition for concavity (convexitivity)>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function <math|a,b\<in\>U> with
    <math|a\<less\>b> and <math|<around*|[|a,b|]>\<subseteq\>U> such that
    <math|\<forall\>x\<in\>U> we have that <math|f<rprime|''><around*|(|x|)>>
    exists and <math|\<forall\>x\<in\><around*|]|a,b|[>> we have
    <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> [or
    <math|f<rprime|''><around*|(|x|)>\<leqslant\>0>] then <math|f> is convex
    (or concave) on <math|<around*|[|a,b|]>>.
  </theorem>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|]>> then we have either\ 

    <\description>
      <item*|<math|x=a>>then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>=f<around*|(|x|)>>\ 

      <item*|<math|x=b>>then <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|b|)>=f<around*|(|x|)>>

      <item*|<math|x\<in\><around*|]|a,b|[>>>Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|<around*|(|x-a|)>|<around*|(|b-a|)>>+<frac|<around*|(|b-x|)>|<around*|(|b-a|)>>>|<cell|=>|<cell|<frac|x-a+b-x|b-a>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
      </eqnarray*>

      so by multiplying both sides by <math|f<around*|(|x|)>> we have
      <math|f<around*|(|x|)>=<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>+<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|<frac|b-x|b-a>\<cdot\>f<around*|(|a|)>+<frac|x-a|b-a>\<cdot\>f<around*|(|b|)>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>|b-a>\<cdot\><around*|(|f<around*|(|b|)>-f<around*|(|x|)>|)>-<frac|b-x|b-a>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|<around*|(|b-x|)>\<cdot\><around*|(|x-a|)>|b-a>\<cdot\><frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a><around*|[|<frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>|]><eq-number><label|eq
        14.48.103>>>>>
      </eqnarray*>

      Now as <math|\<forall\>x\<in\>U> <math|f<rprime|''><around*|(|x|)>>
      exist we have that <math|f<rprime|'><around*|(|x|)>> exists and that
      <math|f> is continuous at <math|x> so using Lagrange's theorem (see
      <reference|lagranges theorem>) there exists a
      <math|y<rsub|1>\<in\><around*|]|x,b|[>> and
      <math|y<rsub|2>\<in\><around*|]|a,x|[>> such that
      <math|<frac|f<around*|(|b|)>-f<around*|(|x|)>|<around*|(|b-x|)>>=f<rprime|'><around*|(|y<rsub|1>|)>>
      and <math|<frac|f<around*|(|x|)>-f<around*|(|a|)>|<around*|(|x-a|)>>=f<rprime|'><around*|(|y<rsub|2>|)>>
      which using the above give

      <\equation>
        <label|eq 14.46.004><frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><around*|(|f<rprime|'><around*|(|y<rsub|1>|)>-f<rprime|'><around*|(|y<rsub|2>|)>|)>
      </equation>

      As <math|\<forall\>x\<in\>U> <math|f<rprime|''><around*|(|x|)>> exists
      we have that <math|f<rprime|'><around*|(|x|)>> exists is continuous ,
      further from <math|y<rsub|1>\<in\><around*|]|x,b|[>> and
      <math|y<rsub|2>\<in\><around*|]|a,x|[>> we have that
      <math|y<rsub|2>\<less\>y<rsub|1>>. Using <reference|lagranges theorem>
      there exists a <math|z\<in\><around*|]|y<rsub|2>,y<rsub|1>|[>> such
      that <math|<frac|f<rprime|'><around*|(|y<rsub|1>|)>-f<rprime|'><around*|(|y<rsub|2>|)>|<around*|(|y<rsub|1>-y<rsub|2>|)>>=<around*|(|f<rprime|'>|)><rprime|'><around*|(|z|)>=f<rprime|''><around*|(|x|)>>
      which by substituting in <reference|eq 14.46.004> gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>\<cdot\><around*|(|y<rsub|1>-y<rsub|2>|)>|b-a>\<cdot\>f<rprime|''><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rprime|''><around*|(|x|)>>>>>
      </eqnarray*>

      where <math|\<alpha\>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>\<cdot\><around*|(|y<rsub|1>-y<rsub|2>|)>|b-a>\<gtr\>0>.
      Hence if <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> [or
      <math|f<rprime|''><around*|(|x|)>\<leqslant\>0>] then we have
      <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>\<geqslant\>0>
      [or <math|\<leqslant\>0>], proving that\ 

      <\equation*>
        <frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)>
        <around*|[|or\<leqslant\>f<around*|(|x|)>|]>
      </equation*>
    </description>

    So in all cases we have <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)>>
    if <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> or
    <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)>>
    if <math|f<rprime|''><around*|(|x|)>\<leqslant\>0> proving that <math|f>
    is convex [or concave].
  </proof>

  We can use convexity or concavity as a condition to see if a extremum is a
  local minimum or a local maximum on a interval.

  <\proposition>
    <label|derivative and local minimum (maximum)>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> such that <math|\<forall\>x\<in\>U>
    <math|f<rprime|''><around*|(|x|)>> exists and
    <math|\<exists\>x<rsub|0>\<in\>U> such that
    <math|f<rprime|'><around*|(|x<rsub|0>|)>=0> then we have\ 

    <\enumerate>
      <item>If there exists a open <math|V> such that
      <math|x<rsub|0>\<in\>V\<subseteq\>U> and <math|\<forall\>x\<in\>V>
      <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> then <math|x<rsub|0>>
      is a local weak minimum of f

      <item>If there exists a open <math|V> such that
      <math|x<rsub|0>\<in\>V\<subseteq\>U> and <math|\<forall\>x\<in\>V>
      <math|f<rprime|''><around*|(|x|)>\<leqslant\>0> then <math|x<rsub|0>>
      is a local weak maximum of f
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<rprime|''><around*|(|x|)>\<geqslant\>0
      </equation*>

      Using the fact that <math|f<rprime|''><around*|(|x|)>=<around*|(|f<rprime|'>|)><rprime|'><around*|(|x|)>>
      we have by the above and <smart-ref|strictly increasing function and
      derivative> that <math|f<rprime|'>> is increasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>> hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0><rsub|>|]>
        f<rprime|'><around*|(|x|)>\<leqslant\>f<rprime|'><around*|(|x<rsub|0>|)>=0<infix-and>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>
        \ 0=f<rprime|'><around*|(|x<rsub|0>|)>\<leqslant\>f<rprime|'><around*|(|x|)>
      </equation*>

      So using <smart-ref|strictly increasing function and derivative> we
      have that <math|f> is decreasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|f<around*|(|x|)>\<geqslant\>f<around*|(|x<rsub|0>|)>> and
      <math|f> is increasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)><infix-or>x<rsub|0>
        is a local weak minimum
      </equation*>

      <item>As <math|V> is open there exists a <math|\<delta\>\<gtr\>0> such
      that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V>
      hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<rprime|''><around*|(|x|)>\<leqslant\>0
      </equation*>

      Using the fact that <math|f<rprime|''><around*|(|x|)>=<around*|(|f<rprime|'>|)><rprime|'><around*|(|x|)>>
      we have by the above and <smart-ref|strictly increasing function and
      derivative> that <math|f<rprime|'>> is decreasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>> hence we
      have\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0><rsub|>|]>
        f<rprime|'><around*|(|x|)>\<geqslant\>f<rprime|'><around*|(|x<rsub|0>|)>=0<infix-and>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>
        \ 0=f<rprime|'><around*|(|x<rsub|0>|)>\<geqslant\>f<rprime|'><around*|(|x|)>
      </equation*>

      So using <smart-ref|strictly increasing function and derivative> we
      have that <math|f> is increasing on
      <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>\<Rightarrow\>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>|]>>
      we have <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>> and
      <math|f> is decreasing on <math|<around*|[|x<rsub|0>,x<rsub|0>+\<delta\>|[>\<Rightarrow\>\<forall\>x\<in\><around*|[|x<rsub|0>,x<rsub|o>+\<delta\>|[>>
      we have <math|f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|x|)>>.
      Hence\ 

      <\equation*>
        \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>
        we have f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)><infix-or>x<rsub|0>
        is a local weak maximum
      </equation*>
    </enumerate>
  </proof>

  Actually we can extend the above to maximum and minimums on a interval as
  follows

  <\corollary>
    <label|conditions for minimum,maximum of a function>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function such that
    <math|\<forall\>x\<in\>U> <math|f<rprime|''><around*|(|x|)>> exists and
    <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> [or
    <math|f<rprime|''><around*|(|x|)>\<leqslant\>0>] then if
    <math|a,b\<in\>U> with <math|a\<leqslant\>b,<around*|[|a,b|]>\<subseteq\>U>
    such that <math|\<exists\>x<rsub|0>\<in\><around*|[|a,b|]>> with
    <math|f<rprime|'><around*|(|x<rsub|0>|)>=0> we have that
    <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|f<around*|(|x|)>\<geqslant\>f<around*|(|x<rsub|0>|)>>
    (<math|x<rsub|0>> is a minimum of <math|f> on <math|<around*|[|a,b|]>>)
    [or <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>>
    (<math|x<rsub|0>> is a maximum of <math|f> on <math|<around*|[|a,b|]>>)]
  </corollary>

  <\proof>
    If <math|a=b\<Rightarrow\><around*|[|a,b|]>=<around*|{|x<rsub|0>|}>> so
    that the theorem is trivial, so we may assume that <math|a\<less\>b> in
    the proof. We have then to consider the following cases:

    <\description>
      <item*|<math|0\<leqslant\>f<rprime|''><around*|(|x|)>>>From the
      previous corollary [see <reference|derivative and local minimum
      (maximum)>] we conclude that <math|x<rsub|0>> is a local weak minimum
      of <math|f> hence there exists a <math|\<delta\>\<gtr\>0> such that\ 

      <\equation>
        <label|eq 14.50.103>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>U
        we have f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
      </equation>

      Assume that there exists a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> then we can not
      have <math|y=x<rsub|0>> so we must have either:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> and
        there exists a <math|z> such that
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>> [see
        <reference|consequence of the archimedean property for the reals>].
        Applying <reference|eq 14.50.103> we have that\ 

        <\equation>
          <label|eq 14.51.103>f<around*|(|z|)>\<geqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Using <reference|condition for concavity (convexitivity)> we have
        that <math|f> is convex on <math|<around*|[|y,x<rsub|0>|]>>. So we
        have by <reference|convex, concave functions> that\ 

        <\equation>
          <label|eq 14.52.103><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<geqslant\>f<around*|(|z|)>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [by
        assumption] it follows that

        <\equation>
          <label|eq 14.53.103>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|<smart-ref|eq
          14.53.103>>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<smart-ref|eq
          14.52.103>>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<smart-ref|eq
          14.51.103>>><text|>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        a contradiction.\ 

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> and
        there exists a <math|z> such that
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>> [see
        <reference|consequence of the archimedean property for the reals>].
        Applying <smart-ref|eq 14.50.103> we have that\ 

        <\equation>
          <label|eq 14.54.103.2>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|z|)>
        </equation>

        Using <reference|condition for concavity (convexitivity)> we have
        that <math|f> is convex on <math|<around*|[|x<rsub|0>,y|]>>. So we
        have by <reference|convex, concave functions> that

        <\equation>
          <label|eq 14.55.103><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<geqslant\>f<around*|(|z|)>
        </equation>

        As <math|z-x<rsub|0>\<gtr\>0> and
        <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [by
        assumption] we have

        <\equation>
          <label|eq 14.56.103.1>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>>>|<row|<cell|>|<cell|\<gtr\><rsub|<text|<smart-ref|eq
          14.56.103.1>>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<smart-ref|eq
          14.55.103>>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<reference|eq
          14.54.103.2>>><rsub|<text|>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        a contradiction.
      </description>

      As we reach in all cases a contradiction we must have that
      <math|\<forall\>x\<in\><around*|[|a,b|]>>
      <math|f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>> proving
      that <math|x<rsub|0>> is a minimum of <math|f> on
      <math|<around*|[|a,b|]>>.

      <item*|<math|f<rprime|''><around*|(|x|)>\<leqslant\>0>>From the
      previous corollary [see <reference|derivative and local minimum
      (maximum)>] we conclude that <math|x<rsub|0>> is a local weak maximum
      of <math|f> hence there exists a <math|\<delta\>\<gtr\>0> such that\ 

      <\equation>
        <label|eq 14.57.103>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>U
        we have f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|x|)>
      </equation>

      Assume that there exists a <math|y\<in\><around*|[|a,b|]>> such that
      <math|f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>> then we can not
      have <math|y=x<rsub|0>> so we must have either:

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>Then
        <math|max<around*|(|x<rsub|0>-\<delta\>,y|)>\<less\>x<rsub|0>> and
        there exists a <math|z> such that
        <math|x<rsub|0>-\<delta\>,y\<less\>z\<less\>x<rsub|0>> [see
        <reference|consequence of the archimedean property for the reals>].
        Applying <reference|eq 14.57.103> we have that\ 

        <\equation>
          <label|eq 14.58.103>f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>
        </equation>

        Using <reference|condition for concavity (convexitivity)> we have
        that <math|f> is concave on <math|<around*|[|y,x<rsub|0>|]>>. So we
        have by <reference|convex, concave functions> that

        <\equation>
          <label|eq 14.59.103><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<leqslant\>f<around*|(|z|)><text|>
        </equation>

        As <math|0\<less\>x<rsub|0>-z> and
        <math|f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>> [by
        assumption] it follows that\ 

        <\equation>
          <label|eq 14.60.103>f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>\<gtr\>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
          14.60.103>>><rsub|<text|>>>|<cell|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.59.103>>>>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.58.103>>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        a contradiction.

        <item*|<math|x<rsub|0>\<less\>y>>Then
        <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\>|)>> and
        there exists a <math|z> such that
        <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\>> [see
        <reference|consequence of the archimedean property for the reals>].
        Applying <smart-ref|eq 14.57.103> we have that

        <\equation>
          <label|eq 14.61.103>f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|z|)>
        </equation>

        Using <reference|condition for concavity (convexitivity)> we have
        that <math|f> is concave on <math|<around*|[|x<rsub|0>,y|]>>. So we
        have that\ 

        <\equation>
          <label|eq 14.62.103><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<leqslant\>f<around*|(|z|)><text|>
        </equation>

        As <math|0\<less\>z-x<rsub|0>> and
        <math|f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>> [by
        assumption] we have\ 

        <\equation>
          <label|eq 14.63.103>f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>\<less\>f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>
        </equation>

        Hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|f<around*|(|x<rsub|0>|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
          14.63.103>>>>|<cell|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.62.103>>>>|<cell|f<around*|(|z|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.61.103>>>>|<cell|f<around*|(|x<rsub|0>|)>>>>>
        </eqnarray*>

        A contradiction.
      </description>

      As we reach in all cases a contradiction we must have that
      <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
      <math|f<around*|(|x<rsub|0>|)>\<geqslant\>f<around*|(|x|)>> proving
      that <math|x<rsub|0>> is a maximum of <math|f> on
      <math|<around*|[|a,b|]>>.
    </description>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the real normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a continuous function and
    <math|F:<around*|[|a,b|]>\<rightarrow\>X> defined by
    <math|F<around*|(|x|)>=<big|int><rsub|a><rsup|x>f> [see <reference|Rieman
    Integral> for the definition of the Rieman Integral and
    <reference|existance of Riemann integral for continuous function> for the
    existance of the Rieman Integral]. Then <math|F> is <math|C<rsup|1>> on
    <math|<around*|[|a,b|]>> and <math|F<rprime|'>=f> [see
    <reference|differentiability on [a,b] equivalences> for a definition of
    <math|<rprime|'>> on <math|<around*|[|a,b|]>>]
  </lemma>

  <\proof>
    We have the following cases to consider for
    <math|x\<in\><around*|[|a,b|]>>

    <\description>
      <item*|<math|x=a>>Let <math|\<varepsilon\>\<gtr\>0> then as <math|f> is
      continuous at <math|a> there exists a <math|\<delta\>\<gtr\>0> such
      that if <math|<around*|\||y-a|\|>\<less\>\<delta\>> and
      <math|y\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|a|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
      So if <math|0\<less\>h\<less\>\<delta\>> and
      <math|a+h\<in\><around*|[|a,b|]>> we have
      <math|\<forall\>y\<in\><around*|[|a,a+h|]>\<Rightarrow\>a\<leqslant\>y\<leqslant\>a+h>
      \ that <math|<around*|\||y-a|\|>=y-a\<less\>a+h-a=h\<less\>\<delta\>>
      so that\ 

      <\equation>
        <label|eq 14.64.103>\<forall\>y\<in\><around*|[|a,a+h|]> we have
        <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|a|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|a+h|)>-F<around*|(|a|)>|h>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f-<big|int><rsub|a><rsup|a>f|h>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|Riemann
        Integral (general)>>>>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f|h>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|a><rsup|a+h>f|)>-h\<cdot\>f<around*|(|a|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|property
        of integral>>>>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f-<big|int><rsub|a><rsup|a+h>f<around*|(|a|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h><around*|(|f-f<around*|(|a|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        14.64.103> and <reference|property of
        integral>>>>|<cell|<frac|\<varepsilon\>\<cdot\>h|2\<cdot\>h>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      So we have that <math|F<rprime|'><rsub|+><around*|(|a|)>=f<around*|(|a|)>>

      <item*|<math|x=b>>Let <math|\<varepsilon\>\<gtr\>0> then as <math|f> is
      continuous at <math|a> there exists a <math|\<delta\>\<gtr\>0> such
      that if <math|<around*|\||y-b|\|>\<less\>\<delta\>> and
      <math|y\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|b|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
      So if <math|0\<less\>h\<less\>\<delta\>> and
      <math|b-h\<in\><around*|[|a,b|]>> we have
      <math|\<forall\>y\<in\><around*|[|b-h,b|]>\<Rightarrow\>b-h\<leqslant\>y\<leqslant\>b>
      that <math|<around*|\||b-y|\|>=b-y\<leqslant\>b-<around*|(|b-h|)>=h\<less\>\<delta\>>
      so that\ 

      <\equation>
        <label|eq 14.65.103>\<forall\>y\<in\><around*|[|b-h,b|]> we have
        <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|b|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|b-h|)>-F<around*|(|b|)>|-h>-f<around*|(|b|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|b-h>f-<big|int><rsub|a><rsup|b>f<rsub|>|-h>-f<around*|(|b|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|splitting
        of a integral>>>>|<cell|<around*|\<\|\|\>|<frac|-<big|int><rsub|b-h><rsup|b>f|-h>-f<around*|(|b|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|b-h><rsup|b>f|h>-f<around*|(|b|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsup|b><rsub|b-h>f|)>-h\<cdot\>f<around*|(|b|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|property
        of integral>>>>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|b-h><rsup|b><around*|(|f-f<around*|(|b|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        14.65.103> and <reference|property of
        integral>>>>|<cell|<frac|\<varepsilon\>\<cdot\>h|2\<cdot\>h>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      Hence we have that <math|F<rprime|'><rsub|-><around*|(|b|)>=f<around*|(|b|)>>

      <item*|<math|x\<in\><around*|]|a,b|[>>>Let
      <math|\<varepsilon\>\<gtr\>0> then as <math|f> is continuous at
      <math|x> there exists a <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||y-x|\|>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
      Now if <math|h> is such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
      and <math|x+h\<in\><around*|[|a,b|]>> then we have the following cases
      to consider

      <\description>
        <item*|<math|0\<less\>h>>If <math|y\<in\><around*|[|x,x+h|]>\<Rightarrow\>x\<leqslant\>y\<leqslant\>x+h>
        we have that <math|<around*|\||y-x|\|>=y-x\<leqslant\>x+h-x=h\<less\>\<delta\>>
        so that\ 

        <\equation>
          <label|eq 14.66.103>\<forall\>y\<in\><around*|[|x,x+h|]> we have
          <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
        </equation>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|x+h>f-<big|int><rsub|a><rsup|x>f|h>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|splitting
          of a integral>>>>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h>f|h>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x><rsup|x+h>f|)>-h\<cdot\>f<around*|(|x|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|property
          of integral>>>>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h><around*|(|f-f<around*|(|x|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.66.103> and <reference|property of
          integral>>>>|<cell|<frac|\<varepsilon\>\<cdot\>h|2\<cdot\>h>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        <item*|<math|h\<less\>0>>In this case <math|h=-<around*|\||h|\|>>. If
        <math|y\<in\><around*|[|x+h,x|]>=<around*|[|x-<around*|\||h|\|>,x|]>\<Rightarrow\>x-<around*|\||h|\|>\<leqslant\>y\<leqslant\>x>
        so that <math|<around*|\||y-x|\|>=x-y=x\<longminus\><around*|(|x-<around*|\||h|\|>|)>=<around*|\||h|\|>\<less\>\<delta\>>
        so that\ 

        <\equation>
          <label|eq 14.67.103>\<forall\>y\<in\><around*|[|x+h,x|]> we have
          <around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>
        </equation>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|F<around*|(|x-<around*|\||h|\|>|)>-F<around*|(|x|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|x-<around*|\||h|\|>>f-<big|int><rsub|a><rsup|x>f|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|splitting
          of a integral>>>>|<cell|<around*|\<\|\|\>|<frac|-<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f|<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|<big|int><rsub|x-<around*|\||h|\|>><rsup|x>f|)>-h\<cdot\>f<around*|(|x|)>|<around*|\||h|\|>>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|f-f<around*|(|x|)>|)>|<around*|\||h|\|>>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          14.67.103> and <reference|property of
          integral>>>>|<cell|<frac|\<varepsilon\>\<cdot\>h|2\<cdot\>h>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
        </eqnarray*>
      </description>

      As in all cases we have <math|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      it follows that <math|F<rprime|'><around*|(|x|)>=f<around*|(|x|)>>.
    </description>

    Considering all the cases <math|x=a,x=b> and
    <math|x\<in\><around*|]|a,b|[>> proves that <math|F<rprime|'>=f>. As also
    <math|f> is continuous on <math|<around*|[|a,b|]>> we have by
    <reference|differentiability on [a,b] equivalences> that <math|F> is
    <math|C<rsup|1>>.
  </proof>

  We prove now the classical fundamental theorem of Calculus.

  <\theorem>
    <label|fundamental theorem of calculus><index|Fundamental Theorem of
    Calculus (Classical version)><dueto|Fundamental Theorem of Calculus
    (Classical)>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the real normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a <math|C<rsup|1>> function on
    <math|<around*|[|a,b|]>> then we have that
    <math|f<around*|(|b|)>-f<around*|(|a|)>=<big|int><rsub|a><rsup|b>f<rprime|'>>
  </theorem>

  <\proof>
    First note that as <math|f<rprime|'>> is defined and continuous on
    <math|<around*|[|a,b|]>> [see <reference|differentiability on [a,b]
    equivalences>] and that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>
    > is a Banach space we have that <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<big|int><rsub|a><rsup|x>f<rprime|'>> is well defined [see
    <reference|splitting of a integral>]. So the function
    <math|g:<around*|[|a,b|]>\<rightarrow\>X> defined by
    <math|g<around*|(|x|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|x>f<rprime|'>>
    is well defined. Using the previous lemma we have then that <math|g> is
    <math|C<rsup|1>> and <math|g<rprime|'><around*|(|x|)>=<around*|(|f<around*|(|a|)>+<big|int><rsub|a><rsup|x>f<rprime|'>|)><rprime|'>=0+f<rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>\<Rightarrow\>g<rprime|'>=f<rprime|'>>
    proving that

    <\equation>
      <label|eq 12.37>g<rprime|'>=f<rprime|'>
    </equation>

    Note also that <math|g<around*|(|a|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|a>f<rprime|'>=f<around*|(|a|)>+0=f<around*|(|a|)>>
    or

    <\equation>
      <label|eq 12.38>f<around*|(|a|)>=g<around*|(|a|)>
    </equation>

    Consider now <math|\<varphi\>:<around*|]|a,b|[>\<rightarrow\>\<bbb-R\>>
    defined by <math|\<varphi\><around*|(|x|)>=<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>>.
    Given <math|x\<in\><around*|]|a,b|[>> choose a <math|0\<less\>\<delta\>>
    such that <math|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\><around*|]|a,b|[>>
    then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have that
    <math|<around*|\||x+h-x|\|>=<around*|\||h|\|>\<less\>\<delta\>\<Rightarrow\>x+h\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<Rightarrow\>x+h\<in\><around*|]|a,b|[>>
    or

    <\equation>
      <label|eq 12.39>If 0\<less\><around*|\||h|\|>\<less\>\<delta\>\<Rightarrow\>x+h\<in\><around*|]|a,b|[>
    </equation>

    So we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>|\|>>|<cell|=>|<cell|<around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>|\<\|\|\>>-<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>|h>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>|\<\|\|\>>-<around*|\<\|\|\>|g<around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>|h>|\|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|norm
      of a finite sum>>>>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>+<around*|(|g<around*|(|x|)>-f<around*|(|x|)>|)>|\<\|\|\>>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|f<around*|(|x+h|)>|)>-f<around*|(|x|)>-<around*|(|g<around*|(|x+h|)>-g<around*|(|x|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<rprime|'>=g<rprime|'>
      <around*|(|see <with|mode|text|<reference|eq
      12.37>>|)>>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>-<around*|(|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>>>>>
    </eqnarray*>

    Now take <math|\<varepsilon\>\<gtr\>0> then there exists a
    <math|\<delta\><rprime|'>,\<delta\><rprime|''>> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,\<delta\><rprime|''>>
    then <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    and <math|<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    so if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'''>=min<around*|(|\<delta\>,\<delta\><rprime|'>,\<delta\><rprime|''>|)>\<gtr\>0>
    we have <math|<around*|\<\|\|\>|<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>-0|\<\|\|\>>\<less\>\<varepsilon\>>
    proving that\ 

    <\equation>
      <label|eq 12.40>\<forall\>x\<in\><around*|]|a,b|[>\<vDash\>\<varphi\><rprime|'><around*|(|x|)>=0
    </equation>

    Given <math|x,y\<in\><around*|[|a,b|]>> with <math|x\<less\>y> we have by
    Lagrange's Theorem (see <reference|lagranges theorem>) that there exists
    a <math|t\<in\><around*|]|x,y|[>> such that
    <math|\<varphi\><around*|(|x|)>-\<varphi\><around*|(|y|)>=\<varphi\><rprime|'><around*|(|t|)>\<cdot\><around*|(|x-y|)>=0\<cdot\><around*|(|x-y|)>=0>
    proving that <math|\<varphi\>> is constant on <math|<around*|[|a,b|]>>.
    As <math|\<varphi\><around*|(|a|)>=<around*|\<\|\|\>|f<around*|(|a|)>-g<around*|(|a|)>|\<\|\|\>>\<equallim\><rsub|<reference|eq
    12.38>>0> we have that <math|\<forall\>x\<in\><around*|[|a,b|]>\<vDash\>\<varphi\><around*|(|x|)>=0\<Rightarrow\>f<around*|(|x|)>=g<around*|(|x|)>>
    so that <math|f<around*|(|b|)>=g<around*|(|b|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|b>f<rprime|'>\<Rightarrow\>f<around*|(|b|)>-f<around*|(|a|)>=<big|int><rsub|a><rsup|b>f<rprime|'>>
    proving the theorem.
  </proof>

  <\theorem>
    <label|Mean value theorem 1><index|Fundamental Theorem of
    Calculus><dueto|Mean Value Theorem (first version)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed vector space, a open set <math|U\<subseteq\>X>,
    <math|><math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the real
    normed space and <math|f:U\<rightarrow\>\<bbb-R\>> a function that is
    <math|C<rsup|1>> on <math|U>. If <math|x,y\<in\>U> such that
    <math|\<forall\>t\<in\><around*|[|0,1|]>> we have
    <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y=x+t\<cdot\><around*|(|y-x|)>\<in\>U>
    then there exists a <math|\<xi\>\<in\><around*|[|0,1|]>> such that
    <math|f<around*|(|y|)>-f<around*|(|x|)>=D
    f<around*|(|z|)><around*|(|y-x|)>> where
    <math|z=x+\<xi\>\<cdot\><around*|(|x-y|)>>
  </theorem>

  <\proof>
    Define <math|\<sigma\>:<around*|[|0,1|]>\<rightarrow\>U> by
    <math|\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>> then
    <math|\<sigma\><around*|(|0|)>=x>, <math|\<sigma\><around*|(|1|)>=y>.
    Define then <math|g=f\<circ\>\<sigma\>:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\>>.
    This function is continuous and differentiable on
    <math|<around*|[|0,1|]>> [and thus also on <math|<around*|]|0,1|[>>] [as
    <math|\<sigma\>> is \ <math|C<rsup|1>> on <math|<around*|[|0,1|]>> by
    <smart-ref|x+t.y is C infinite>, <math|f> is <math|C<rsup|1>> on
    <math|U>, <math|\<sigma\><around*|[|0,1|]>\<subseteq\>U> and
    <smart-ref|composition of differentials on arbitrary sets>]. By the
    Lagrange theorem [see <reference|lagranges theorem>] there exists a
    <math|\<xi\>\<in\><around*|]|0,1|[>> such that

    <\equation>
      <label|eq 14.72.103>g<around*|(|1|)>-g<around*|(|0|)>=g<rprime|'><around*|(|\<xi\>|)>\<cdot\><around*|(|1-0|)>=g<rprime|'><around*|(|\<xi\>|)>
    </equation>

    Using the chain rule we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rprime|'><around*|(|\<xi\>|)>>|<cell|=>|<cell|
      D g<around*|(|\<xi\>|)><around*|(|1|)>
      >>|<row|<cell|>|<cell|=>|<cell|D<around*|(|f\<circ\>\<sigma\>|)><around*|(|\<xi\>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      f<around*|(|\<sigma\><around*|(|\<xi\>|)>|)>\<circ\><around*|(|D\<sigma\><around*|(|\<xi\>|)>|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|D\<sigma\><around*|(|\<xi\>|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f <around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|\<sigma\><rprime|'><around*|(|\<xi\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|x+t.y
      is C infinite>>>>|<cell|D f <around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|y-x|)><eq-number><label|eq
      14.73.103>>>>>
    </eqnarray*>

    Take <math|z=x\<upl\>\<xi\>\<cdot\><around*|(|y-x|)>=\<sigma\><around*|(|\<xi\>|)>>
    then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|y|)>-f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|\<sigma\><around*|(|1|)>|)>=f<around*|(|\<sigma\><around*|(|0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|1|)>-g<around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      14.72.103>>>>|<cell|g<rprime|'><around*|(|\<xi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      14.73.103>>>>|<cell|D f <around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|y-x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|z|)>\<cdot\><around*|(|y-x|)>>>>>
    </eqnarray*>

    proving the theorem.\ 
  </proof>

  <\definition>
    <index|convex sets>A subset <math|C> of a vector space <math|X> over
    <math|\<bbb-R\>> is convex if for every <math|t\<in\><around*|[|0,1|]>>
    we have <math|\<forall\>x,y\<in\>C> that
    <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y=x+t\<cdot\><around*|(|y-x|)>\<in\>C>
  </definition>

  <\theorem>
    <label|balls are convex>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|x\<in\>X> and <math|\<delta\>\<gtr\>0> then
    \ <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    and <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    are convex.\ 
  </theorem>

  <\proof>
    Let <math|t\<in\><around*|[|0,1|]>> then for <math|x,y,z\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x+t\<cdot\>x-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\>1+t\<cdot\>z-t\<cdot\>y-x\<cdot\>1+t\<cdot\>x-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\><around*|(|1-t|)>-x\<cdot\><around*|(|1-t|)>+t\<cdot\>z-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|y-x|)>\<cdot\><around*|(|1-t|)>+t\<cdot\><around*|(|z-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>><eq-number><label|eq
      14.89.111>>>>>
    </eqnarray*>

    So if <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.89.111>>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>>>>>
    </eqnarray*>

    proving that <math|y+t\<cdot\><around*|(|z-y|)>\<in\>\<cal-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>.
    If <math|y,z\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.89.111>>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>>>|<row|<cell|>|<cell|=>|<cell|\<delta\>>>>>
    </eqnarray*>

    proving that <math|y+t\<cdot\><around*|(|z-y|)>\<in\><wide|\<cal-B\>|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>.
  </proof>

  <\theorem>
    <label|Mean value theorem 2><dueto|Mean Value Theorem (generalized)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>> and let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space over <math|\<bbb-R\>>, <math|V\<subseteq\>Y>,
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>V> a
    <math|C<rsup|1>> function. Assume that there is a convex subset
    <math|C\<subseteq\>U> and a constant <math|k\<in\>\<bbb-R\>> such that
    <math|\<forall\>x\<in\>C> we have <math|<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\>k> then
    <math|\<forall\>x,y\<in\>C> we have <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>.
  </theorem>

  <\proof>
    Let <math|x,y\<in\>C>. Define <math|\<sigma\>:\<bbb-R\>\<rightarrow\>X>
    by <math|\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>> then by
    definition of a convex set we have <math|\<sigma\><around*|(|<around*|[|0,1|]>|)>\<subseteq\>C\<subseteq\>U\<Rightarrow\><around*|[|0,1|]>\<subseteq\>\<sigma\><rsup|-1><around*|(|U|)>>
    [open because <math|\<sigma\>> is continuous]. Define then
    <math|g=f\<circ\>\<sigma\>:\<sigma\><rsup|-1><around*|(|U|)>=\<sigma\><rsup|-1><around*|(|U|)><big|cap>\<bbb-R\>=\<sigma\><rsup|-1><around*|(|U|)>\<rightarrow\>Y>
    which is of class <math|C<rsup|1>> [as <math|\<sigma\>> is of class
    <math|C<rsup|1>> by <smart-ref|x+t.y is C1 (1)>, <math|f> is of class
    <math|C<rsup|1>> together with <smart-ref|generalized chain rule>]. Using
    the chain rule [see <smart-ref|chain rule>] we have
    <math|\<forall\>t\<in\>f<rsup|-1><around*|(|V|)>> that <math|D
    g<around*|(|t|)>=D f<around*|(|\<sigma\><around*|(|t|)>|)>\<circ\>D
    \<sigma\><around*|(|t|)>> so that

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rprime|'><around*|(|t|)>>|<cell|=>|<cell|<around*|(|D
      g<around*|(|t|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D
      f<around*|(|\<sigma\><around*|(|t|)>|)>\<circ\>D\<sigma\><around*|(|t|)>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|D
      \<sigma\><around*|(|t|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|\<sigma\><rprime|'><around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|x+t.y
      is C infinite>>>>|<cell|D f<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|y-x|)><eq-number><label|eq
      14.74.103>>>>>
    </eqnarray*>

    Next if we take <math|h=g<rsub|\|<around*|[|0,1|]>>:<around*|[|0,1|]>\<rightarrow\>Y>
    then using <smart-ref|differentiability on [a,b] equivalences> we have
    that <math|h> is <math|C<rsup|1>> and
    <math|h<rprime|'>=<around*|(|<around*|(|g|)><rprime|'>|)><rsub|\|<around*|[|0,1|]>>>.
    So if <math|t\<in\><around*|[|0,1|]> then>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rprime|'><around*|(|t|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|g|)><rprime|'>|)><rsub|\|<around*|[|0,1|]>><around*|(|t|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|g<rprime|'><around*|(|t|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.74.103>>>>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|y-x|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D
      f<around*|(|\<sigma\><around*|(|t|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|Y><eq-number><label|eq
      14.75.103>>>>>
    </eqnarray*>

    \ \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>+f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h<around*|(|1|)>-h<around*|(|0|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<with|mode|text|<reference|fundamental
      theorem of calculus>>>>|<cell|<around*|\<\|\|\>|<big|int><rsub|0><rsup|1>h<rprime|'>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|property
      of integral>><infix-and><text|<smart-ref|eq
      14.75.103>>>>|<cell|<around*|(|1-0|)>\<cdot\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|Y>>>>>
    </eqnarray*>

    which proves the theorem.
  </proof>

  <\definition>
    <index|line segment><index|<math|L<rsub|a,b>>>Let <math|X> be a vector
    space, <math|a,b\<in\>X> then the line segment connecting <math|a> to b
    is the set <math|L<rsub|a,b>=<around*|{|t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b\|t\<in\><around*|[|0,1|]>|}>=<around*|{|b+t\<cdot\><around*|(|a-b|)>|}>\<subseteq\>X>.
    Note that <math|a,b\<in\>L<rsub|a,b>> [take <math|t=0,1>]
  </definition>

  <\example>
    <label|L0,1=[0,1]><math|<around*|[|0,1|]>=L<rsub|0,1>> in
    <math|\<bbb-R\>>
  </example>

  <\proof>
    If <math|x\<in\>L<rsub|0,1>> then there exists a
    <math|t\<in\><around*|[|0,1|]>> such that
    <math|x=t\<cdot\>0+<around*|(|1-t|)>\<cdot\>1=<around*|(|1-t|)>\<Rightarrow\>0\<leqslant\>1-t\<leqslant\>1\<Rightarrow\>L<rsub|0,1>\<subseteq\><around*|[|0,1|]>>.
    If <math|x\<in\><around*|[|0,1|]>> then
    <math|0\<leqslant\>x\<leqslant\>1\<Rightarrow\>0\<leqslant\>1-x\<leqslant\>1\<Rightarrow\>x=<around*|(|1-x|)>\<cdot\>0+<around*|(|1-<around*|(|1-x|)>|)>\<cdot\>1\<in\>L<rsub|0,1>\<Rightarrow\>x\<in\>L<rsub|0,1>\<Rightarrow\><around*|[|0,1|]>\<subseteq\>L<rsub|0,1>>.
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space then <math|a,b\<in\>X> then <math|L<rsub|a,b>> is
    convex, compact and bounded.
  </lemma>

  <\proof>
    If <math|x,y\<in\>L<rsub|a,b>> then there exists
    <math|t<rsub|x>,t<rsub|y>\<in\><around*|[|0,1|]>> such that
    <math|x=t<rsub|x>\<cdot\>a+<around*|(|1-t<rsub|x>|)>\<cdot\>b>,
    <math|y=t<rsub|y>\<cdot\>a+<around*|(|1-t<rsub|y>|)>\<cdot\>b>. Then we
    have for <math|t\<in\><around*|[|0,1|]>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|x+t\<cdot\><around*|(|y-x|)>>|<cell|=>|<cell|t<rsub|x>\<cdot\>a+<around*|(|1-t<rsub|x>|)>\<cdot\>b+t\<cdot\><around*|(|t<rsub|y>\<cdot\>a+<around*|(|1-t<rsub|y>|)>\<cdot\>b-t<rsub|x>\<cdot\>a-<around*|(|1-t<rsub|x>|)>\<cdot\>b|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsub|x>\<cdot\>a+b-t<rsub|x>\<cdot\>b+t\<cdot\>t<rsub|y>\<cdot\>a+t\<cdot\>b-t\<cdot\>t<rsub|y>\<cdot\>b-t\<cdot\>t<rsub|x>\<cdot\>a-t\<cdot\>b+t\<cdot\>t<rsub|x>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|t<rsub|x>+t\<cdot\>t<rsub|y>-t\<cdot\>t<rsub|x>|)>\<cdot\>a+<around*|(|1-t<rsub|x>+t-t\<cdot\>t<rsub|y>-t+t\<cdot\>t<rsub|x>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|t<rsub|x>+t\<cdot\>t<rsub|y>-t\<cdot\>t<rsub|x>|)>\<cdot\>a+<around*|(|1-t<rsub|x>-t\<cdot\>t<rsub|y>+t\<cdot\>t<rsub|x>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|<around*|(|t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>|)>\<cdot\>a+<around*|(|1-<around*|(|t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>|)>|)>\<cdot\>b>>|<row|<cell|>|<cell|=>|<cell|s\<cdot\>a+<around*|(|1-s|)>\<cdot\>b<space|1em><around*|[|where
      s=t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>=t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>|]>>>>>
    </eqnarray*>

    \ Now as <math|0\<leqslant\>t,t<rsub|x>,t<rsub|y>\<leqslant\>1> we have
    that <math|t<rsub|x>\<cdot\>t\<leqslant\>t<rsub|x>\<Rightarrow\>0\<leqslant\>t<rsub|x>-t<rsub|x>\<cdot\>t\<Rightarrow\>0\<leqslant\>t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>=t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>\<leqslant\>t<rsub|x>+<around*|(|t<rsub|y>-t<rsub|x>|)>=t<rsub|y>\<leqslant\>1>
    proving that <math|s\<in\><around*|[|0,1|]>> and thus that
    <math|x+t\<cdot\><around*|(|y-x|)>\<in\>L<rsub|a,b>>. So\ 

    <\equation*>
      L<rsub|a,b> is convex
    </equation*>

    Define <math|\<sigma\>:<around*|[|0,1|]>\<rightarrow\>X> by
    <math|\<sigma\><around*|(|t|)>=t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b>.
    Given <math|\<varepsilon\>\<gtr\>0>, <math|s\<in\><around*|[|0,1|]>> take
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>+1>\<gtr\>0>
    then if <math|<around*|\||s-t|\|>\<less\>\<delta\>> and
    <math|t\<in\><around*|[|0,1|]>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<sigma\><around*|(|t|)>-\<sigma\><around*|(|s|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b-s\<cdot\>a-<around*|(|1-s|)>\<cdot\>b|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|t-s|)>\<cdot\>a+<around*|(|s-t|)>\<cdot\>b|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||t-s|\|>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>\<less\>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|\|Y>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      \<sigma\> is continuous
    </equation*>

    As clearly <math|L<rsub|a,b>=\<sigma\><around*|(|<around*|[|0,1|]>|)>> we
    have using <reference|continuous image of compact set> and
    <reference|[a,b] is compact> that <math|L<rsub|a,b>=\<sigma\><around*|(|<around*|[|0,1|]>|)>>
    is compact, and by <reference|compact space in a metric space is bounded>
    that <math|L<rsub|a,b>> is bounded.
  </proof>

  <\corollary>
    <label|Mean Value Theorem 3>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>> and let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space over <math|\<bbb-R\>>, <math|V\<subseteq\>Y>,
    <math|U\<subseteq\>X> a open set, <math|x,y\<in\>X> such that
    <math|L<rsub|x,y>\<subseteq\>U> and <math|f:U\<rightarrow\>V> a
    <math|C<rsup|1>> function then <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>>
    exists and <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
  </corollary>

  <\proof>
    As <math|L<rsub|x,y>> is compact by the previous lemma and <math|D f> is
    continuous [as <math|f> is <math|C<rsup|1>>] we have that <math|D
    f<around*|(|L<rsub|x,y>|)>> is compact [see <reference|continuous image
    of compact set>] and thus by <reference|compact space in a metric space
    is bounded> bounded. So there exists a <math|M\<geqslant\>0> such that
    <math|\<forall\>L<rsub|1>,L<rsub|2>\<in\>D f<around*|(|L<rsub|x,y>|)>> we
    have <math|<around*|\<\|\|\>|L<rsub|1>-L<rsub|2>|\<\|\|\>>\<leqslant\>M>.
    So if <math|\<xi\>\<in\>L<rsub|x,y>> we have <math|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>+D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L*X,Y>\<leqslant\>M+<around*|\<\|\|\>|D
    f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>> proving that
    <math|<around*|{|<around*|\<\|\|\>|D f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|x,y>|}>>
    is bounded above and thus by <reference|the reals are conditional
    complete> that <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>>
    exists and is finite. Finally as <math|L<rsub|x,y>> is convex,
    <math|x,y\<in\>L<rsub|x,y>> and <math|L<rsub|x,y>\<subseteq\>U> we have
    by the Mean Value Theorem (<reference|Mean value theorem 2>) that
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|:<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>.>
  </proof>

  <\corollary>
    <label|Mean value theorem for balls>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space, a open set <math|U\<subseteq\>X>, a open ball
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
    and a function <math|f:U\<rightarrow\>Y> a function such that
    <math|\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    we have that <math|f> is differentiable at <math|y> then
    <math|\<forall\>y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    we have that <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>
    exists and

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|\<\|\|\>>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation*>
  </corollary>

  <\proof>
    Let <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>>
    then by <reference|balls are convex> we have that
    <math|L<rsub|z,y>=<around*|{|y+t\<cdot\><around*|(|z-y|)>\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
    so that using <reference|Mean Value Theorem 3>
    <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|z,y>|}>|)>>
    exists and <math|<around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|z,y>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|X>>.
    As\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|r\<in\><around*|{|<around*|\<\|\|\>|D
      f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|y,z>|}>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>\<xi\>\<in\>L<rsub|y,z>
      with r=<around*|\<\|\|\>|D f<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>t\<in\><around*|[|0,1|]>
      with r=<around*|\<\|\|\>|D f<around*|(|y+t\<cdot\><around*|(|z-y|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|y+t<around*|\<nobracket\>|\<cdot\>|(>z-y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>>>>>
    </eqnarray*>

    it follows that <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|y+t<around*|\<nobracket\>|\<cdot\>|(>z-y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>
    exists and <math|<around*|\<\|\|\>|f<around*|(|z|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|y+t<around*|\<nobracket\>|\<cdot\>|(>z-y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|z-y|\<\|\|\>><rsub|X>>.
  </proof>

  \;

  <\theorem>
    <label|second mean value theorem><dueto|Second Mean Value Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space over <math|\<bbb-R\>>, <math|V\<subseteq\>Y>,
    <math|a,b\<in\>X>, \ <math|U\<subseteq\>X> a open set such that
    <math|L<rsub|a,b>\<subseteq\>U> and <math|f:U\<rightarrow\>V> a
    <math|C<rsup|1>> function then <math|\<forall\>x\<in\>U> we have
    <math|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|b|)>-D
    f<around*|(|x|)><around*|(|a-b|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>>.
  </theorem>

  <\proof>
    Define <math|g:U\<rightarrow\>Y> by <math|g<around*|(|\<xi\>|)>=f<around*|(|\<xi\>|)>-D
    f<around*|(|x|)><around*|(|\<xi\>|)>> which is <math|C<rsup|1>> as
    <math|g> is <math|C<rsup|1>> and <math|D f<around*|(|x|)>> is
    <math|C<rsup|\<infty\>>> [as it is a continuous linear function]. Further
    if <math|\<xi\>\<in\>U> then <math|D g<around*|(|\<xi\>|)>=D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>> [as <math|D f<around*|(|x|)>>
    is linear and continuous)] Now using the Mean Value Theorem (see
    <reference|Mean Value Theorem 3>) we have
    <math|<around*|\<\|\|\>|g<around*|(|b|)>-g<around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    g<around*|(|\<xi\>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|b|)>-D
    f<around*|(|x|)><around*|(|b|)>-f<around*|(|a|)>+D
    f<around*|(|x|)><around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>-D
    f<around*|(|x|)><around*|(|b-a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|\<xi\>|)>-D f<around*|(|x|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>>.
  </proof>

  There is another example of a theorem named Mean value theorem (see
  Dieudonne), first we need a lemma.

  <\lemma>
    <label|lemma for diedonne main value>Let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|V\<subseteq\>Y>,
    <math|I=<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> a non empty interval and
    <math|f:I\<rightarrow\>V>, <math|x\<in\><around*|[|a,b|[>> such that
    <math|f<rprime|'><around*|(|x|)>> exists [see <reference|derivative on a
    closed interval>] then given <math|\<varepsilon\>\<gtr\>0> there exists a
    <math|\<lambda\>\<gtr\>0> such that if
    <math|x\<leqslant\>\<xi\>\<less\>\<lambda\>> then
    <math|<around*|\<\|\|\>|f<around*|(|\<varepsilon\>|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\><around*|(|\<xi\>-x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|(|\<xi\>-x|)>>
  </lemma>

  <\proof>
    Let <math|\<varepsilon\>\<gtr\>0>. Then by definition [see
    <reference|derivative on a closed interval>] we have that
    <math|f<rprime|'><rsub|+><around*|(|x|)>> exists so there exists a
    <math|\<delta\>\<gtr\>0> such that if <math|0\<less\>h\<less\>\<delta\>>
    and <math|x+h\<in\><around*|[|a,b|]>> we have
    <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    Take then <math|\<lambda\>=x+\<delta\>> and let
    <math|x\<leqslant\>\<xi\>\<less\>\<lambda\>> then <math|>we have either:\ 

    <\description>
      <item*|<math|\<xi\>=x>>then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<varepsilon\>|)>-f<around*|(|x|)>-f<rsub|+><rprime|'><around*|(|x|)>\<cdot\><around*|(|\<xi\>-x|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>-f<rsub|+><rprime|'><around*|(|x|)>\<cdot\><around*|(|x-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>\<cdot\><around*|(|\<xi\>-x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<less\>\<xi\>>>then <math|0\<less\>\<xi\>-x\<less\>\<lambda\>-x=\<delta\>>
      so that <math|>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+<around*|(|\<xi\>-x|)>|)>-f<around*|(|x|)>|<around*|(|\<xi\>-x|)>>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<frac|f<around*|(|\<xi\>|)>-f<around*|(|x|)>|\<xi\>-x>-f<rprime|'><rsub|+><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>>|<cell|\<Rightarrowlim\><rsub|0\<less\>\<xi\>-x>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|\<xi\>-x|)>\<cdot\><around*|(|<frac|f<around*|(|\<xi\>|)>-f<around*|(|x|)>|\<xi\>-x>-f<rprime|'><rsub|+><around*|(|x|)>|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|(|\<xi\>-x|)>>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|x|)>-f<rprime|'><rsub|+><around*|(|x|)>\<cdot\><around*|(|\<xi\>-x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|(|\<xi\>-x|)>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </description>

    Hence \ we have in both cases that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|\<varepsilon\>|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\><around*|(|\<xi\>-x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>
    </equation*>
  </proof>

  <\theorem>
    <label|mean value theorem (3)>Let <math|I=<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>
    be a non empty interval, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>, <math|f:I\<rightarrow\>V>,
    <math|\<varphi\>:I\<rightarrow\>\<bbb-R\>> continuous functions such that
    there exists a denumerable <math|E\<subseteq\><around*|[|a,b|]>> such
    that <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> <math|f> and
    <math|\<varphi\>> have derivates <math|f<rprime|'><around*|(|x|)>> and
    <math|\<varphi\><rprime|'><around*|(|x|)>> [see <reference|derivative on
    a closed interval>] with <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><around*|(|x|)>>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>>
  </theorem>

  <\proof>
    As <math|E> is denumerable there exists a bijection
    <math|\<rho\>:\<bbb-N\><rsub|0>\<rightarrow\>E> \ Take now
    <math|\<varepsilon\>\<gtr\>0> and define
    <math|\<xi\><around*|(|\<beta\>|)>> and <math|A> as follows:

    <\equation>
      \<forall\>\<beta\>\<in\><around*|[|a,b|]>
      \ \<cal-E\><around*|(|\<beta\>|)>=<choice|<tformat|<table|<row|<cell|0
      if <around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>=\<emptyset\>>>|<row|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>
      if \ <around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\<neq\>\<emptyset\>>>>>>
    </equation>

    [note that by <smart-ref|consequence of the archimedean property for the
    reals> <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<sigma\><around*|(|i|)>\<less\>\<beta\>|}>>
    is finite as there exists a <math|n\<in\>\<bbb-N\>> such that
    <math|\<beta\>\<leqslant\>n> hence <math|<around*|{|i\<in\>\<bbb-N\><rsub|i>\|\<sigma\><around*|(|i|)>\<less\>\<beta\>|}>\<subseteq\><around*|{|1,\<ldots\>,n|}>>]
    \ and

    <\equation>
      <label|eq 13.50.317>A<rsub|\<varepsilon\>>=<around*|{|\<beta\>\<in\><around*|[|a,b|]>\|\<forall\>\<gamma\>\<in\><around*|[|a,\<beta\>|[>\<vDash\><around*|\<\|\|\>|f<around*|(|\<gamma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<gamma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<gamma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<gamma\>|)>|}>\<subseteq\><around*|[|a,b|]>
    </equation>

    Then \ as <math|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|a|)>|\<\|\|\>>=0=\<varphi\><around*|(|a|)>-\<varphi\><around*|(|a|)>>,
    <math|\<varepsilon\>\<cdot\><around*|(|a-a|)>=0> and
    <math|\<cal-E\><around*|(|a|)>=0> [as
    <math|\<rho\><around*|(|\<bbb-N\><rsub|0>|)>=E\<subseteq\><around*|[|a,b|]>\<Rightarrow\>\<forall\>i\<in\>\<bbb-N\><rsub|0>
    a\<leqslant\>\<rho\><around*|(|i|)>> so that
    <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>a|}>=\<emptyset\>>]
    it follows that\ 

    <\equation>
      <label|eq 13.51.317>a\<in\>A<rsub|\<varepsilon\>>\<Rightarrow\>A<rsub|\<varepsilon\>>\<neq\>\<emptyset\>
    </equation>

    Also if <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> then if
    <math|\<xi\>\<in\><around*|[|a,\<beta\>|[>> we have by the definition of
    <math|A<rsub|\<varepsilon\>>> that also
    <math|\<xi\>\<in\>A<rsub|\<varepsilon\>>> proving together with
    <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> that\ 

    <\equation>
      <label|eq 13.52.317>\<forall\>\<beta\>\<in\>A<rsub|\<varepsilon\>> we
      have <around*|[|a,\<beta\>|]>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation>

    Take now

    <\equation*>
      \<sigma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>
    </equation*>

    [which exists because from <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>>
    it follows that <math|A<rsub|\<varepsilon\>>> is bounded above by
    <math|b>, <math|A<rsub|\<varepsilon\>>\<neq\>\<emptyset\>> and the fact
    that <math|\<bbb-R\>> is conditionial complete [see <smart-ref|the reals
    are conditional complete>]] then if <math|\<xi\>\<in\><around*|[|a,\<sigma\>|[>>
    there exists a <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> such that
    <math|a\<leqslant\>\<xi\>\<less\>\<beta\>\<leqslant\>\<sigma\>\<Rightarrowlim\><rsub|<text|<reference|eq
    13.52.317>>><around*|[|a,\<xi\>|]>\<subseteq\>A<rsub|\<varepsilon\>>\<Rightarrow\>\<xi\>\<in\>A<rsub|\<varepsilon\>>>
    proving that

    <\equation>
      <label|eq 14.80.103><around*|[|a,\<sigma\>|[>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation>

    Further for the <math|\<beta\>> and <math|\<xi\>> we have from
    <math|\<beta\>\<in\>A<rsub|\<varepsilon\>>> and
    <math|\<xi\>\<in\><around*|[|a,\<beta\>|[>> that
    <math|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>
    proving as we have chosen <math|\<xi\>\<in\><around*|[|a,\<sigma\>|[>>
    that also <math|\<sigma\>\<in\>A<rsub|\<varepsilon\>>>. So we have that\ 

    <\equation>
      <label|eq 13.53.317><around*|[|a,\<sigma\>|]>\<subseteq\>A<rsub|\<varepsilon\>>
    </equation>

    If now <math|x\<in\>A<rsub|\<varepsilon\>>\\<around*|[|a,\<sigma\>|]>>
    then as <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,b|]>> we
    have <math|a\<leqslant\>x> and thus must have <math|\<sigma\>\<less\>x>
    contradicting the fact that <math|\<sigma\>> as a supremum is a upper
    bound of <math|A<rsub|\<varepsilon\>>> so that
    <math|A<rsub|\<varepsilon\>>\\<around*|[|a,\<sigma\>|]>=\<emptyset\>>.
    Hence if <math|x\<in\>A<rsub|\<varepsilon\>>> then we must have that
    <math|x\<in\><around*|[|a,\<sigma\>|]>> proving that
    <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a,\<sigma\>|]>> which
    together with <reference|eq 13.53.317> gives\ 

    <\equation>
      <label|eq 13.54.317><around*|[|a,\<sigma\>|]>=A<rsub|\<varepsilon\>>
      where \<sigma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>
    </equation>

    Now if <math|\<alpha\>,\<beta\>\<in\><around*|[|a,b|]>> with
    <math|\<alpha\>\<less\>\<beta\>> then if
    \ <math|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>>
    we have that <math|\<rho\><around*|(|n|)>\<less\>\<alpha\>\<less\>\<beta\>\<Rightarrow\>n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>
    proving that <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<subseteq\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>.
    We must now consider two cases\ 

    <\description>
      <item*|<math|><math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>=\<emptyset\>>>then
      <math|\<xi\><around*|(|\<alpha\>|)>=0\<leqslant\>\<xi\><around*|(|\<beta\>|)>>

      <item*|<math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<neq\>\<emptyset\>>>then
      <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>\<neq\>\<emptyset\>>
      and <math|\<xi\><around*|(|\<alpha\>|)>=<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>><frac|1|2<rsup|n>>\<leqslant\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>=\<xi\><around*|(|\<beta\>|)>>
    </description>

    \ so that <math|\<cal-E\><around*|(|\<alpha\>|)>\<leqslant\>\<cal-E\><around*|(|\<beta\>|)>>
    proving\ 

    <\equation>
      <label|eq 13.55.317>\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|a,b|]>
      with \<alpha\>\<leqslant\>\<beta\> we have
      \<cal-E\><around*|(|\<alpha\>|)>\<leqslant\>\<cal-E\><around*|(|\<beta\>|)>
    </equation>

    Now let <math|\<xi\>\<gtr\>0>, chosen arbitrary, then by the continuity
    of <math|\<varphi\>> there exists a <math|\<delta\><rsub|\<varphi\>>\<gtr\>0>
    such that if <math|\<beta\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<sigma\>+\<delta\><rsub|\<varphi\>>|[><big|cap><around*|[|a,b|]>>
    then <math|<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<xi\>|2>>.
    So if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<sigma\>|[>\<subseteq\><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<sigma\>+\<delta\><rsub|\<varphi\>>|[><big|cap><around*|[|a,b|]>>
    then <math|<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<xi\>|2>\<Rightarrow\>\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>=\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<xi\>|2>>.
    Hence\ 

    <\equation>
      <label|eq 14.84.103>\<forall\>\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<sigma\>|[>
      we have \<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>\<less\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<xi\>|2>
    </equation>

    As <math|f> is continuous there exists a <math|\<delta\><rsub|f>\<gtr\>0>
    such that if <math|\<beta\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>+\<delta\><rsub|f>|[><big|cap><around*|[|a,b|]>>
    then <math|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|\<beta\>|)>|\<\|\|\>>\<less\><frac|\<xi\>|2>>.
    So if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>|[>>
    then <math|\<beta\>\<in\><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>+\<delta\><rsub|f>|[><big|cap><around*|[|a,b|]>>
    so that <math|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>\<less\><frac|\<xi\>|2>>
    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>+f<around*|(|\<sigma\>|)>-f<around*|(|\<beta\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|\<beta\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<frac|\<xi\>|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|def.
      of A<rsub|\<varepsilon\>>,\<sigma\>\<in\>A<rsub|\<varepsilon\>>,a\<leqslant\>\<beta\>\<less\>\<sigma\>>>|<cell|\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<beta\>|)>+<frac|\<xi\>|2><eq-number><label|eq
      14.85.103>>>>>
    </eqnarray*>

    So if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|[|\<sigma\>-min<around*|(|\<delta\><rsub|\<varphi\>>,\<delta\><rsub|f>|)>,\<sigma\>|[>>
    then \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|\<less\><rsub|<text|<smart-ref|eq
      14.85.103>>>>|<cell|\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<beta\>|)>+<frac|\<xi\>|2>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
      14.84.103>>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<xi\>|2>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<beta\>|)>+<frac|\<xi\>|2>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
      13.55.317>>\<wedge\>\<beta\>\<less\>\<sigma\>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>+\<xi\>>>|<row|<cell|>|<cell|\<less\><rsub|\<beta\>\<less\>\<sigma\>>>|<cell|\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>+\<xi\>>>>>
    </eqnarray*>

    As <math|\<xi\>> was chosen arbitrary we have using
    <reference|consequence of the Archimedean property (2)> that\ 

    <\equation>
      <label|eq 13.56.317><around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>
    </equation>

    Suppose now that <math|\<sigma\>\<less\>b> then we have for
    <math|\<sigma\>> to possibilities in relation to <math|E>

    <\description>
      <item*|<math|\<sigma\>\<nin\>E>>Then as <math|\<varphi\>,f> have a
      derivate at <math|\<sigma\>> and <math|\<sigma\>\<less\>b> we have by
      <reference|lemma for diedonne main value> that there exists
      <math|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>\<gtr\>0> such that
      for <math|\<sigma\>\<leqslant\>\<xi\>\<less\>\<lambda\><rsub|\<varphi\>>\<less\>b>
      we have <math|<around*|\||\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>
      and for <math|\<sigma\>\<leqslant\>\<xi\>\<less\>\<lambda\><rsub|f>\<less\>b>
      we have <math|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>
      so that if <math|\<sigma\>\<leqslant\>\<xi\>\<less\>min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>\<less\>b>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>|<cell|=>|<cell|<around*|(|\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>-<around*|(|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>|)>|\<nobracket\>>+<around*|(|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>-<around*|(|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>|)>|\|>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>|\|>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>>>>
      </eqnarray*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+f<rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>-f<rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<cal-E\>-\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+<around*|\<\|\|\>|f<rprime|'><around*|(|\<sigma\>|)>|\<\|\|\>>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+\<varphi\><rprime|'><around*|(|\<sigma\>|)>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>
        <around*|(|by the hypothese of the
        theorem|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+<frac|\<varepsilon\>|2>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>>>>>
      </eqnarray*>

      proving\ 

      <\equation>
        \ <label|eq 13.57.317><around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>
      </equation>

      Next <math|>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.57.317>>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>
        >>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.56.317>>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.55.317>> and \<sigma\>\<leqslant\>\<xi\>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>>>>
      </eqnarray*>

      But this proves that <math|min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>\<in\>A<rsub|\<varepsilon\>>>
      which is a contradiction as <math|sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<sigma\>\<less\>min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>>.
      So this case leads to a contradiction.

      <item*|<math|\<sigma\>\<in\>E>>then there exists a
      <math|m\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<sigma\>=\<rho\><around*|(|m|)>>. By the continuity of
      <math|f,\<varphi\>> at <math|\<sigma\>> together with
      <math|\<sigma\>\<less\>b> there exists
      <math|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>> such that if
      <math|\<sigma\>\<less\>\<xi\>\<less\>\<mu\><rsub|\<varphi\>>\<less\>b>
      then <math|<around*|\||\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>>
      and if <math|\<sigma\>\<less\>\<xi\>\<less\>\<mu\><rsub|f>\<less\>b>
      then <math|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>>.
      So if <math|\<sigma\>\<less\>\<xi\>\<less\>min<around*|(|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>|)>\<less\>b>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.56.317>>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<xi\>|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+<around*|\||\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<xi\>|)>|\|>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<sigma\>|}>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<sigma\>=\<rho\><around*|(|m|)>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<leqslant\>\<sigma\>|}>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|\<sigma\>\<less\>\<xi\>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<xi\>|}>><frac|1|2<rsup|n>>
        >>|<row|<cell|>|<cell|\<leqslant\><rsub|\<rho\><around*|(|m|)>=\<sigma\>\<less\>\<xi\>\<Rightarrow\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<xi\>|}>\<neq\>\<emptyset\>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>>>>
      </eqnarray*>

      proving again that <math|min<around*|(|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>|)>\<in\>A<rsub|\<varepsilon\>>>
      which is a contradiction as <math|sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<sigma\>\<less\>min<around*|(|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>|)>>
    </description>

    As in all cases we have a contradiction we must have that
    <math|\<sigma\>=b> so by <smart-ref|eq 13.51.317>
    <math|b\<in\>A<rsub|\<varepsilon\>>>. Hence by the definition of <math|A>
    we have <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|b|)>>.
    As <math|\<varepsilon\>\<gtr\>0> is arbitrary chosen we have by
    <reference|consequence of the Archimedean property (2)> that

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>
    </equation*>
  </proof>

  <\corollary>
    Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> be a non empty
    interval, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a continuous
    function such that there exists a denumerable set
    <math|E\<subseteq\><around*|[|a,b|]>> so that
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E>
    <math|f<rprime|'><around*|(|x|)>> exists [see <reference|derivative on a
    closed interval>] and <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </corollary>

  <\proof>
    Define <math|\<varphi\>:\<bbb-R\>\<rightarrow\>\<bbb-R\>> by
    <math|\<varphi\><around*|(|x|)>=M\<cdot\><around*|(|x-a|)>> then
    <math|\<varphi\><rprime|'><around*|(|x|)>=M> so that by
    <reference|left,right derivatives>,<reference|derivative on a closed
    interval> \ <math|\<varphi\><rsub|\|<around*|[|a,b|]>>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>
    \ has <math|\<forall\>x\<in\><around*|[|a,b|]>> the derivate
    <math|\<varphi\><rprime|'><around*|(|x|)>=M>. So
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> we have that
    <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><around*|(|x|)>>
    and thus by the previous theorem [see <reference|mean value theorem (3)>]
    we have <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>=M\<cdot\><around*|(|b-a|)>-M\<cdot\><around*|(|b-b|)>=M\<cdot\><around*|(|b-a|)>>
  </proof>

  <\corollary>
    <label|consequence of mean value theorem (2)>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> be a non empty interval,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|V\<subseteq\>Y> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>V> a continuous function so that
    <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|f<rprime|'><around*|(|x|)>> exists [see <reference|derivative on a
    closed interval>] and <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </corollary>

  <\proof>
    As <math|\<forall\>n\<in\>\<bbb-N\><rsub|0><rsub|>> we have that
    <math|0\<less\><frac|1|n+1>\<less\>1\<Rightarrowlim\><rsub|0\<less\>b-a>0\<less\><around*|(|b-a|)>\<cdot\><frac|1|n+1>\<less\><around*|(|b-a|)>\<Rightarrow\>a\<less\>a+<around*|(|b-a|)>\<cdot\><frac|1|n+1>\<less\>b>
    we have that <math|E=<around*|{|a+<around*|(|b-a|)>\<cdot\><frac|1|n+1>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\><around*|[|a,b|]>>
    is a denumerable set and for <math|\<forall\>x\<in\><around*|[|a,b|]>\\E>
    we have that <math|f<rprime|'><around*|(|x|)>> exists [as it exists on
    <math|<around*|[|a,b|]>>] and <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    so that by the previous corollary we have that
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </proof>

  <section|Symmetry of Higher Order Differentials>

  <\lemma>
    <label|C^2 differential is symmetric>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space, <math|V\<subseteq\>Y>, <math|U\<subseteq\>X> open and
    <math|f:U\<rightarrow\>V> of class <math|C<rsup|2>> then
    <math|\<forall\>x\<in\>U> and <math|v,w\<in\>X> we have that
    <math|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>=D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>>
  </lemma>

  <\proof>
    Take <math|x\<in\>U> then as <math|U> is open there exists a
    <math|r\<gtr\>0> such that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,r|)>\<subseteq\>U>.
    Take <math|v,w\<in\>X> such that <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\><frac|r|4>>,
    <math|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\><frac|r|4>> and define
    <math|\<varphi\>,\<psi\>:\<bbb-R\>\<rightarrow\>X> by
    <math|\<varphi\><around*|(|t|)>=x+t\<cdot\>v >,
    <math|\<psi\><around*|(|t|)>=x+w+t\<cdot\>v>. If
    <math|t\<in\><around*|]|-2,2|[>><space|1em>then we have
    <math|<around*|\<\|\|\>|\<varphi\><around*|(|t|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x+t\<cdot\>v-x|\<\|\|\>><rsub|X>=<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><frac|r|4>\<less\>r>
    and <math|<around*|\<\|\|\>|\<psi\><around*|(|t|)>-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x+w+t\<cdot\>v-x|\<\|\|\>><rsub|X>\<leqslant\><around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\>2\<cdot\><frac|r|4>+<frac|r|4>\<less\>r>
    proving that\ 

    <\equation>
      <label|eq 14.91.103>\<varphi\><around*|(|<around*|]|-2,2|[>|)>\<subseteq\>U\<wedge\>\<psi\><around*|(|<around*|]|-2,2|[>|)>\<subseteq\>U
    </equation>

    Define <math|g<rsub|v,w>:<around*|]|-2,2|[>\<rightarrow\>Y> by
    <math|g<rsub|v,w>=f\<circ\>\<psi\><rsub|\|<around*|]|-2,2|[>>-f\<circ\>\<varphi\><rsub|\|<around*|]|-2,2|[>>>
    [which is well defined because of <reference|eq 14.91.103>]. As
    <math|\<varphi\>,\<psi\>> are <math|C<rsup|1>> [see <reference|x+t.y is
    C1 (1)> and <reference|differentiability and restricted mapping>] with

    <\equation>
      <label|eq 14.105.111><around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>>|)><rprime|'>=\<varphi\><rprime|'>=C<rsub|\<bbb-R\>,X,v>=\<psi\><rprime|'>=<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>>|)><rprime|'>
    </equation>

    we have \ by <reference|generalized chain rule> that
    <math|<rsub|>g<rsub|v,w>> is of class <math|C<rsup|1>>. As
    <math|L<rsub|0,1>\<equallim\><rsub|<text|<reference|L0,1=[0,1]>>><around*|[|0,1|]>\<subseteq\><around*|]|-2,2|[>>
    we can use the second mean value theorem [see <reference|second mean
    value theorem>] giving <math|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D
    g<rsub|v,w><around*|(|0|)><around*|(|1-0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    g<rsub|v,w><around*|(|\<xi\>|)>-D g<rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>>.
    As <math|g<rsub|v,w><rprime|'><around*|(|0|)>=D
    g<rsub|v,w><around*|(|0|)><around*|(|1|)>> we have\ 

    <\equation>
      <label|eq 14.92.103><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      g<rsub|v,w><around*|(|\<xi\>|)>-D g<rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Now <math|\<forall\>h\<in\>\<bbb-R\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D
      g<rsub|v,w><around*|(|\<xi\>|)>-D g<rsub|v,w><around*|(|0|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|D
      g<rsub|v,w><around*|(|\<xi\>|)><around*|(|h|)>-D
      g<rsub|v,w><around*|(|0|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differentias
      and derivates>>>>|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>\<cdot\>h-g<rsub|v,w><rprime|'><around*|(|0|)>\<cdot\>h|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|g<rsub|v,w><rprime|'><around*|(|\<varepsilon\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|)>\<cdot\>h|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<cdot\><around*|\||h|\|>>>>>
    </eqnarray*>

    proving by the definition of the norm of a linear continuous function
    [see <reference|the norm of a continuous linear mapping>] that
    <math|<around*|\<\|\|\>|D g<rsub|v,w><around*|(|\<xi\>|)>-D
    g<rsub|v,w><around*|(|0|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>>.
    Using <reference|eq 14.92.103> it follows then that\ 

    <\equation>
      <label|eq 14.93.103><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|\|Y>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Using the Chain rule we have that for
    <math|\<xi\>\<in\><around*|[|0,1|]>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>>|<cell|=>|<cell|D
      g<rsub|v,w><around*|(|\<xi\>|)><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|D<around*|(|f\<circ\>\<psi\><rsub|\|<around*|]|-2,2|[>>|)><around*|(|\<xi\>|)>-D<around*|(|f\<circ\>\<varphi\><rsub|\|<around*|]|-2,2|[>>|)>|]><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|D
      f<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>|)>\<circ\>D
      \<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>-D
      f<around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|)>\<circ\>D
      \<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|]><around*|(|1|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>|)><around*|(|D
      \<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)><around*|(|1|)>|)>-D
      f<around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|)><around*|(|D
      \<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>|)><around*|(|D
      \<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)><around*|(|1|)>|)>-D
      f<around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|)><around*|(|D
      \<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>|)><around*|(|<around*|(|\<psi\><rsub|\|<around*|[|-2,2|]>>|)><rprime|'><around*|(|\<xi\>|)>|)>-D
      f<around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|)><around*|(|<around*|(|\<varphi\><rsub|\|<around*|[|-2,2|]>>|)><rprime|'><around*|(|\<xi\>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.105.111>>>>|<cell|D f<around*|(|\<psi\><rsub|\|<around*|]|-2,2|[>><around*|(|\<xi\>|)>|)><around*|(|v|)>-D
      f<around*|(|\<varphi\><rsub|\|<around*|]|-2,2|[>><around*|(|0|)>|)><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)><eq-number><label|eq
      14.94.103>>>>>
    </eqnarray*>

    \ As <math|f> is <math|C<rsup|2>> we have that <math|D f> is
    <math|C<rsup|1>> hence given a <math|\<varepsilon\>\<gtr\>0> there exists
    a <math|\<delta\>\<gtr\>0> such that if
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> and
    <math|h\<in\>U<rsub|x>> then <math|<around*|\<\|\|\>|D
    f<around*|(|x+h|)>-D f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
    Take now <math|v,w\<in\>X> such that <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>
    then <math|\<forall\>\<xi\>\<in\><around*|[|0,1|]>> we have that
    \ <math|<around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>\<leqslant\><around*|\||\<xi\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>1\<cdot\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
    and <math|x+\<xi\>\<cdot\>v+w\<in\>U\<Rightarrow\>\<xi\>\<cdot\>v+w\<in\>U<rsub|x>>,
    also <math|<around*|\<\|\|\>|\<xi\>\<cdot\>v|\<\|\|\>><rsub|X>\<leqslant\><frac|\<delta\>|2>\<less\>\<delta\>>
    and <math|x+*\<xi\>\<cdot\>v\<in\>U\<Rightarrow\>\<xi\>\<cdot\>v\<in\>U<rsub|x>>.
    So that for \ <math|\<xi\>\<in\><around*|[|0,1|]>> we have

    <\equation>
      <label|eq 14.95.103><around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)>-D
      f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)>\<cdot\><around*|(|\<xi\>\<cdot\>v+w|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>
    </equation>

    <\equation>
      <label|eq 14.96.103><around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v|)>-D f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)>\<cdot\><around*|(|\<xi\>\<cdot\>v|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v|\<\|\|\>><rsub|X>
    </equation>

    Also

    <\equation>
      <label|eq 14.97.103>D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)><around*|(|v|)>\<equallim\><rsub|D<rsup|2>f<around*|(|x|)>
      is linear>D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.94.103>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.97.103>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)><around*|(|v|)>+D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)><around*|(|v|)>-D
      f<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)><around*|(|v|)>-<around*|[|D
      f<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)><around*|(|v|)>|]>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)>-D
      f<around*|(|x|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|<around*|(|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)>-D
      f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|D
      f<around*|(|x+\<xi\>\<cdot\>v|)>-D f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v+w|)>-D
      f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|D
      f<around*|(|x+\<xi\>\<cdot\>v|)>-D f<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|\<less\><rsub|<text|<reference|eq
      14.95.103> and <reference|eq 14.96.103>>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\||\<xi\>|\|><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+\<varepsilon\>\<cdot\><around*|\||\<xi\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|\<leqslant\><rsub|\<xi\>\<in\><around*|[|0,1|]>>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>>|<cell|=>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|2\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.98.103>\<forall\>\<xi\>\<in\><around*|[|0,1|]> we have
      <around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Further for <math|t\<in\><around*|[|0,1|]>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|t|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|t|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>-<around*|(|g<rsub|v,w><rprime|'><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|t|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|t,0\<in\><around*|[|0,1|]>\<wedge\><text|<smart-ref|eq
      14.98.103>>>>|<cell|2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|4\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><eq-number><label|eq
      14.99.103.1>>>>>
    </eqnarray*>

    Define the function <math|h:<around*|]|-2,2|[>\<rightarrow\>\<bbb-R\>> by
    <math|h<around*|(|\<xi\>|)>=<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>>.
    As <math|g<rsub|v,w><rprime|'>> is continuous [<math|g<rsub|v,w>> is
    <math|C<rsup|1>> and <reference|C1 of real or complex function>] and
    <math|<around*|\<\|\|\>||\<\|\|\>>:Y\<rightarrow\>\<bbb-R\>> defined by
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>><rsub|Y>>
    is continuous [see <reference|norm mappings are continuous in the produc
    tof reals>] it follows that <math|h> is continuous. Using
    \ <reference|existance of maximum and minimum in the image of a
    continuous function of a compact set> there exists a
    <math|\<xi\><rsub|0>\<in\><around*|[|0,1|]>> so that
    <math|\<forall\>t\<in\><around*|[|0,1|]>> we have
    <math|h<around*|(|t|)>\<leqslant\>h<around*|(|\<xi\><rsub|0>|)>> so that
    <math|h<around*|(|\<xi\><rsub|0>|)>\<leqslant\>sup<around*|(|h<around*|(|<around*|[|0,1|]>|)>|)>\<leqslant\>h<around*|(|\<xi\><rsub|0>|)>>
    giving\ 

    <\equation>
      <label|eq 14.100.103>h<around*|(|\<xi\><rsub|0>|)>=sup<around*|(|h<around*|[|0,1|]>|)><infix-or><around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>=sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|t|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\|t\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|0|)>+g<rsub|v,w><rprime|'><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>+g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
      14.93.103>>>>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|\|Y>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=<rsub|<text|<reference|eq
      14.100.103>>>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|0|)>-g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|2\<cdot\><around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.98.103>>>>|<cell|>>|<row|<cell|2\<cdot\><around*|\<\|\|\>|g<rsub|v,w><rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rsub|v,w><rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.99.103.1>>>>|<cell|>>|<row|<cell|8\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|=>|<cell|>>|<row|<cell|10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.101.103><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    If we define now <math|v<rprime|'>=w> and <math|w<rprime|'>=v> then we
    still have <math|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|w<rprime|'><rsub|X>|\<\|\|\>>\<less\>min<around*|(|<frac|r|4>,<frac|\<rho\>|2>|)>>
    so that by <reference|eq 14.101.103> <math|<around*|\<\|\|\>|g<rsub|v<rprime|'>,w<rprime|'>><around*|(|1|)>-g<rsub|v<rprime|'>,w<rprime|'>><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w<rprime|'>|)><around*|(|v<rprime|'>|)>|\<\|\|\>><rsub|Y>\<leqslant\>0\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w<rprime|'>|\<\|\|\>><rsub|X>|)>>
    giving by using the definition of <math|v<rprime|'>,w<rprime|'>> that\ 

    <\equation>
      <label|eq 14.102.103><around*|\<\|\|\>|g<rsub|w,v><around*|(|1|)>-g<rsub|w,v><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>
    </equation>

    As\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>>|<cell|=>|<cell|f<around*|(|x+v\<cdot\>1+w|)>-f<around*|(|x+v*\<cdot\>1|)>-f<around*|(|x+v\<cdot\>0+w|)>+f<around*|(|x+v\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+v+w|)>-f<around*|(|x+v|)>-f<around*|(|x+w|)>+f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+w\<cdot\>1+v|)>-f<around*|(|x+w\<cdot\>1|)>-f<around*|(|x+w\<cdot\>0+v|)>+f<around*|(|x+w\<cdot\>0|)>>>|<row|<cell|>|<cell|=>|<cell|g<rsub|w,v><around*|(|1|)>-g<rsub|w,v><around*|(|0|)>>>>>
    </eqnarray*>

    so applying then <smart-ref|eq 14.102.103> we have\ 

    <\equation>
      <label|eq 14.103.103><around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Next we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v,w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w,v|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w,v|)>-<around*|(|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w,v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|g<rsub|v,w><around*|(|1|)>-g<rsub|v,w><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.101.103> and <reference|eq 14.103.103>>>>|<cell|>>|<row|<cell|10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+10\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|\<varepsilon\>\<cdot\><around*|(|10\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>|)>|)>>|<cell|>|<cell|>>>>
    </eqnarray*>

    As <math|\<varepsilon\>> was choosen arbitrary we have by
    <reference|consequence of the Archimedean property (2)> that
    <math|<around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v,w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w,v|)>|\<\|\|\>><rsub|Y>=0>
    proving finally that\ 

    <\equation*>
      D<rsup|2>f<around*|(|x|)><around*|(|v,w|)>=D<rsup|2>f<around*|(|w,v|)>
    </equation*>
  </proof>

  To extend the above to \ <math|n>-the differentials we have to state and
  prove different lemmas. The first lemma shows that we only have to prove
  that a differential, as a member of <math|L<rsup|n><around*|(|X;Y|)>>, is
  invariant under specific transposition, to prove that it is invariant under
  general permutations.

  <\lemma>
    <label|symmetry of L^n+t(X;Y) based on permutations and transposition>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed sets and <math|L\<in\>L<rsup|n><around*|(|X;Y|)>> is such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> and
    <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X>
    \ <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)>>
    then we have that <math|\<forall\>\<sigma\>\<in\>P<rsub|n>> [see
    <reference|Pn>] and <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X>
    that <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n|)>>|)>>
  </lemma>

  <\proof>
    Using <reference|L^(X;Y) is equivalent with L(X^n;Y)> we have that
    <math|\<cal-P\><rsub|n>:L<rsup|n><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X<rsup|n>;Y|)>>
    defined by <math|\<cal-P\><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>;\<ldots\>;x<rsub|n>|)>>
    is a norm preserving isomorphism. Then as
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|><math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)>>
    it follows that <math|\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)>=\<cal-P\><rsub|n><around*|(|L|)><rsub|><around*|(|x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>,\<ldots\>,x<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)>>.
    Let <math|\<sigma\>\<in\>P<rsub|n>> then using <reference|transpositions
    and symmetry (3)> <math|we have that \<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<cal-P\><rsub|n+1><around*|(|x<rsub|\<sigma\><around*|(|1|)>>,.\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>>.
    Hence <math|L<around*|(|x<rsub|1>;\<ldots\>;x<rsub|n>|)>=\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=\<cal-P\><rsub|n><around*|(|x<rsub|\<sigma\><around*|(|1|)>>,.\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>=L<around*|(|x<rsub|\<sigma\><around*|(|1|)>>;,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>|)>>.
  </proof>

  Next we prove that the evaluation operator is linear and continuous hence
  of class <math|C<rsup|\<infty\>>>\ 

  <\lemma>
    <label|evaluation operator (1)>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces and define given <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\>X<rsup|n>>
    \ <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>:L<rsup|n><around*|(|X;Y|)>\<rightarrow\>Y>
    by <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L|)>=L<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>>.
    Then we have that <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>> is linear
    and continuous. So by <reference|linear continuous mappings are
    C^infinity> <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>> is
    <math|C<rsup|\<infty\>>> and <math|D e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>>
    and if <math|k\<geqslant\>2 > then <math|D<rsup|k>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L|)>=C<rsub|X,L<rsup|n><around*|(|X;Y|)>,0>>
    [the constant mapping to 0]
  </lemma>

  <\proof>
    \ First let <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|n><around*|(|X;Y|)>>
    and <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> then we have that
    <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>\<equallim\><rsub|<text|<reference|sum,product
    on (x1:..:xn)>>>\<alpha\>\<cdot\>L<rsub|1><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=\<alpha\>\<cdot\>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L<rsub|2>|)>>
    proving that\ 

    <\equation*>
      e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>> is linear
    </equation*>

    Second we have fro <math|L\<in\>L<rsup|n><around*|(|X;Y|)>>
    \ <math|<around*|\<\|\|\>|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|L|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<text|<reference|norm
    of L(x1:..:xn}>>><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|v<rsub|i>|\<\|\|\>><rsub|X>>
    proving that <math|<around*|\<\|\|\>|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>|\<\|\|\>><rsub|>\<leqslant\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|v<rsub|i>|\<\|\|\>><rsub|X>>
    and thus that\ 

    <\equation*>
      e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n> > is continuous
    </equation*>

    The rest of the theorem follows from <reference|linear continuous
    mappings are C^infinity>
  </proof>

  The next lemma shows how we can relate <math|D<rsup|n>f*<around*|(|x|)>> to
  <math|D<rsup|n-1>f<around*|(|x|)>> which will be needed for our proof by
  mathematical induction.

  <\lemma>
    <label|lemma 14.119>Let <math|n\<in\>\<bbb-N\>> with
    <math|n\<geqslant\>2>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|V\<subseteq\>Y>, <math|U\<subseteq\>X> open,
    <math|v<rsub|1>,\<ldots\>,v<rsub|n-1>\<in\>X<rsup|n-1>> and
    <math|f:U\<rightarrow\>V> a function of class <math|C<rsup|n>> then if
    <math|g:U\<rightarrow\>Y> is defined by
    <math|g<around*|(|x|)>=D<rsup|n-1>f<around*|(|x|)><around*|(|v<rsub|1>:,\<ldots\>,:v<rsub|n-1>|)>>
    then <math|g> is <math|C<rsup|1>> and <math|D
    g<around*|(|x|)><around*|(|v|)>=D<rsup|n>f<around*|(|x|)><around*|(|v:v<rsub|1>:\<ldots\>:v<rsub|n-1>|)>>
  </lemma>

  <\proof>
    Note that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|D<rsup|n-1>f<around*|(|x|)><around*|(|v<rsub|1>:,\<ldots\>,:v<rsub|n-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|evaluation
      operator (1)>>><rsub|>>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n-1>f|)>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.105.105>g=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n-1>f
    </equation>

    Using then the chain rule [see <reference|generalized chain rule>], the
    fact that <math|D<rsup|n-1>f> is of class <math|C<rsup|1>> [see
    <reference|C^n=\<gtr\>C^n is C^1>] with <reference|evaluation operator
    (1)> we have that

    <\equation>
      <label|eq 14.104.104>g is of class C<rsup|1>
    </equation>

    further for <math|x\<in\>U> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.105.105>>>>|<cell|D<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n-1>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
      rule>>>>|<cell|D e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|n-1>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<rsup|n>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|evaluation
      operator (1)>>>>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n>f<around*|(|x|)>>>>>
    </eqnarray*>

    hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|x|)><around*|(|v|)>>|<cell|=>|<cell|<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n>f<around*|(|x|)>|)><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)><around*|(|v<rsub|1>:,\<ldots\>,v<rsub|n-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|v:v<rsub|1>:,\<ldots\>,v<rsub|n-1>|)><eq-number><label|eq
      14.105.104>>>>>
    </eqnarray*>

    The lemma is then proved by <reference|eq 14.104.104> and <reference|eq
    14.105.104>.
  </proof>

  <\lemma>
    <label|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)>Let
    <math|n\<in\>\<bbb-N\>\<vdash\>n\<gtr\>2>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|V\<subseteq\>Y>, <math|U\<subseteq\>X> open,
    <math|v<rsub|1>,\<ldots\>,v<rsub|n-2>\<in\>X<rsup|n-2>> and
    <math|f:U\<rightarrow\>V> a function of class <math|C<rsup|n>>. Let
    <math|g:U\<rightarrow\>Y> defined by <math|x\<rightarrow\>g<around*|(|x|)>=D<rsup|n-2>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>>
    then <math|g> is <math|C<rsup|2>> and
    <math|D<rsup|2>g<around*|(|x|)><around*|(|v|)><around*|(|u|)>=D<rsup|n>f<around*|(|x|)><around*|(|v:u:v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>>
  </lemma>

  <\proof>
    Note that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|D<rsup|n-2>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-2>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|e<rsub|v<rsub|1>,\<ldots\>v<rsub|n-2>>\<circ\>D<rsup|n-2>f|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 12.53>g=<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-2>f|)>
    </equation>

    Using then the Chain rule [see <reference|generalized chain rule>], the
    fact that <math|D<rsup|n-2>f> is of class <math|C<rsup|2>> [by
    <reference|C^n=\<gtr\>C^n is C^1>] we have that\ 

    <\equation>
      <label|eq 14.108.104>g is of class C<rsup|2>
    </equation>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|x|)>>|<cell|=>|<cell|D<around*|(|<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-2>f|)>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-2>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|n-2>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|evaluation
      operator (1)>>>>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<around*|(|D<rsup|n-2>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f<around*|(|x|)>>>>>
    </eqnarray*>

    so that if <math|u\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D g<around*|(|x|)><around*|(|u|)>>|<cell|=>|<cell|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)><around*|(|u|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|n-1>f<around*|(|x|)><around*|(|u|)>|)><around*|(|v<rsub|1>,\<ldots\>,v<rsub|n-2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|D<rsup|n-1>f<around*|(|x|)><around*|(|u:v<rsub|1>:,\<ldots\>,v<rsub|n-2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|evaluation
      operator (1)>>><rsub|>>|<cell|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|>|<cell|<around*|(|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f|)><around*|(|x|)><eq-number><label|eq
      14.109.104>>>>>
    </eqnarray*>

    Define now <math|D g<around*|(|\<ast\>|)><around*|(|u|)>:U\<rightarrow\>Y>
    by <math|<around*|(|D g<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>=D
    g<around*|(|x|)><around*|(|u|)>> then using <reference|eq 14.109.104> we
    have that <math|<around*|(|D g<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>=<around*|(|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f|)><around*|(|x|)>>
    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<label|eq 14.110.104>D
      g<around*|(|\<ast\>|)><around*|(|u|)>>|<cell|=>|<cell|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f<eq-number>>>>>
    </eqnarray*>

    Using the chain rule [see <reference|generalized chain rule>] and the
    fact that <math|D<rsup|n-1>f> is <math|C<rsup|1>> [see
    <reference|C^n=\<gtr\>C^n is C^1>] we have that <math|D
    g<around*|(|\<ast\>|)><around*|(|u|)>> is <math|C<rsup|1>> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<around*|(|D
      g<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.110.104>>>>|<cell|D<around*|(|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|n-1>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
      e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<rsup|n>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|evaluation
      operator (1)>>><rsub|>>|<cell|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2><rsub|>>\<circ\>D<rsup|n>f<around*|(|x|)><eq-number><label|eq
      14.111.104>>>>>
    </eqnarray*>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|D<rsup|2>g<around*|(|x|)><around*|(|v|)><around*|(|u|)>>|<cell|\<equallim\><rsub|<text|<reference|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)>>>>|<cell|D<around*|(|D
      g<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)><around*|(|v|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.111.104>>>>|<cell|<around*|(|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2><rsub|>>\<circ\>D<rsup|n>f<around*|(|x|)>|)><around*|(|v|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)><around*|(|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|v:u:v<rsub|1>,\<ldots\>,v<rsub|n-2>|)>>>>>
    </eqnarray*>

    proving the last part of the lemma.
  </proof>

  <\lemma>
    <label|lemma 14.121>Let <math|n\<in\>\<bbb-N\>> with <math|1\<less\>n>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a normed space. <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|V\<subseteq\>Y>, <math|U\<subseteq\>X> and
    <math|f:U\<rightarrow\>V> a function of class <math|C<rsup|n>> then
    <math|\<forall\>x\<in\>U> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    we have <math|>that <math|D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|1>:\<ldots\>:u<rsub|n>|)>=D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)><rsup|>>
    where <math|<around*|(|u<rsub|1>,\<ldots\>,u<rsub|n>|)>\<in\>X<rsup|n>>
  </lemma>

  <\proof>
    We prove this by induction on <math|n> so let
    <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|if
    f:U\<rightarrow\>V is of class C<rsup|n> then \<forall\>x\<in\>U\<wedge\>
    \<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}> we have
    D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|1>:\<ldots\>:u<rsub|n>|)>=D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|1|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n|)>>|)>
    where <around*|(|u<rsub|1>,\<ldots\>,u<rsub|n>\<in\>X<rsup|n>|)>|}>> then
    we have\ 

    <\description>
      <item*|<math|2\<in\>\<cal-S\>>>If <math|n=2> and
      <math|f:U\<rightarrow\>Y> is of class <math|C<rsup|2>> then if
      <math|i\<in\><around*|{|1,\<ldots\>,2-1|}>=<around*|{|1|}>> we have
      that <math|i=1> and \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|2>f<around*|(|x|)><around*|(|u<rsub|1>:u<rsub|2>|)>>|<cell|=>|<cell|D<rsup|2>f<around*|(|x|)><around*|(|u<rsub|1>|)><around*|(|u<rsub|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|C^2
        differential is symmetric>>>>|<cell|D<rsup|2>f<around*|(|x|)><around*|(|u<rsub|2>|)><around*|(|u<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|2>f<around*|(|x|)><around*|(|u<rsub|2>:\<ldots\>:u<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|2>f<around*|(|x|)><around*|(|u<rsub|<around*|(|1\<leftrightarrow\><rsub|2>2|)><around*|(|1|)>>:\<ldots\>:u<rsub|<around*|(|1\<leftrightarrow\><rsub|2>2|)><around*|(|2|)>>|)>>>>>
      </eqnarray*>

      proving that <math|2\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|i\<in\><around*|{|1,\<ldots\>,<around*|(|n+1|)>-1|}>=<around*|{|1,\<ldots\>,n|}>>
      and let <math|f:U\<rightarrow\>V> be of class <math|C<rsup|n+1>> then
      by <reference|C^n=\<gtr\>C^n is C^1> \ Take <math|x\<in\>U> and
      <math|<around*|(|u<rsub|1>,\<ldots\>,u<rsub|n+1>|)>\<in\>X<rsup|n+1>>.
      For <math|i> we have the following cases to consider

      <\description>
        <item*|<math|i=1>>Then <math|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>=2\<wedge\><around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|2|)>=1>
        and <math|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|k|)>=k>
        if <math|k\<in\><around*|{|3,\<ldots\>,n+1|}>>. Define then
        <math|g:U\<rightarrow\>Y> by <math|g<around*|(|x|)>=D<rsup|<around*|(|n+1|)>-2>f<around*|(|x|)><around*|(|u<rsub|3>:\<ldots\>:u<rsub|n+1>|)>=D<rsup|n-1>f<around*|(|x|)><around*|(|u<rsub|3>:\<ldots\>:u<rsub|n+1>|)>>
        then we have that <math|g> is <math|C<rsup|2>> [see
        <reference|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)>]

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|1>:u<rsub|2>:\<ldots\>:u<rsub|n+1>|)>>|<cell|\<equallim\><rsub|<text|<reference|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)>>>>|<cell|D<rsup|2>g<around*|(|x|)><around*|(|u<rsub|1>|)><around*|(|u<rsub|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|C^2
          differential is symmetric>>>>|<cell|D<rsup|2>g<around*|(|x|)><around*|(|u<rsub|2>|)><around*|(|u<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)>>>>|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|2>:u<rsub|1>:\<ldots\>:u<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n>i+1|)><around*|(|n+1|)>>|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>\<cal-S\>> in this case.

        <item*|<math|1\<less\>i>>Then <math|i\<in\><around*|{|2,\<ldots\>,n|}>>
        so <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n-1|}>>
        \ <math|<around*|(|i-1\<leftrightarrow\><rsub|n>i|)><around*|(|k|)>+1=1+<choice|<tformat|<table|<row|<cell|i-1
        if k=i>>|<row|<cell|i if k=i-1>>|<row|<cell|k if
        k\<neq\>i-1,i>>>>>=<choice|<tformat|<table|<row|<cell|i if
        k=i>>|<row|<cell|i+1 if k=i-1>>|<row|<cell|k+1 if k\<neq\>i,i-1>>>>>>
        and <math|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|k+1|)>=<choice|<tformat|<table|<row|<cell|i
        if k+1=i+1>>|<row|<cell|i+1 if k+1=i>>|<row|<cell|k+1 if
        k+1\<neq\>i,i+1>>>>>=<choice|<tformat|<table|<row|<cell|i if
        k=i>>|<row|<cell|i+1 if k=i-1>>|<row|<cell|k+1 if k\<neq\>i-1,i>>>>>>
        proving that

        <\equation>
          <label|eq 14.112.104>\<forall\>k\<in\><around*|{|1,\<ldots\>,n-1|}>
          we have <around*|(|i\<leftrightarrow\><rsub|n>i-1|)><around*|(|k|)>+1=<around*|(|i\<leftrightarrow\>i+1|)><around*|(|k+1|)>
        </equation>

        Using <reference|C^n implies C^m> it follows that <math|f> is of
        class <math|C<rsup|n>>, further if we define
        <math|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>> by
        <math|y<rsub|i>=u<rsub|i+1>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|2>:\<ldots\>,u<rsub|n+1>|)>>|<cell|=>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|y<rsub|1>:\<ldots\>:y<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|y<rsub|<around*|(|i-1\<leftrightarrow\><rsub|n>i|)><around*|(|1|)>>:\<ldots\>:y<rsub|<around*|(|i-1\<leftrightarrow\><rsub|n>i|)><around*|(|n|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i-1\<leftrightarrow\><rsub|n>i|)><around*|(|1|)>+1>,\<ldots\>,u<rsub|<around*|(|i-1\<leftrightarrow\><rsub|n>i|)><around*|(|1|)>+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.112.104>>>>|<cell|D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|2|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|n+1|)>>|)><eq-number><label|eq
          14.113.104>>>>>
        </eqnarray*>

        Define now <math|g:U\<rightarrow\>Y> by
        <math|g<around*|(|x|)>=D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|2>:\<ldots\>:u<rsub|n+1>|)>>
        and <math|h:U\<rightarrow\>Y> by <math|h<around*|(|x|)>=D<rsup|n>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|2|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|n+1|)>>|)>>
        then by <reference|eq 14.113.104> we have that <math|g=h>. Finally\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|1>:\<ldots\>:u<rsub|n+1>|)>>|<cell|\<equallim\><rsub|1\<less\>i\<less\>i+1>>|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>>:u<rsub|2>\<ldots\>:u<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|lemma
          14.119>>>>|<cell|D g<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|D
          h<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|lemma
          14.119>>>>|<cell|D<rsup|n+1>f<around*|(|x|)><around*|(|u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|1|)>>:\<ldots\>:u<rsub|<around*|(|i\<leftrightarrow\><rsub|n+1>i+1|)><around*|(|n+1|)>>|)>>>>>
        </eqnarray*>

        proving in this case that <math|n+1\<in\>\<cal-S\>>.
      </description>

      So in all cases we have <math|n+1\<in\>\<cal-S\>>.
    </description>

    Mathematical induction proves then the theorem.
  </proof>

  Now we are finally ready to prove the symmetric nature of the differential

  <\theorem>
    <label|the n-th differential is symmetric>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|V\<subseteq\>Y>, <math|U\<subseteq\>X> open and
    <math|f:U\<rightarrow\>Y> is <math|C<rsup|n>> then
    <math|\<forall\>x\<in\>U>, <math|\<sigma\>\<in\>P<rsub|n>> and
    <math|v=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\>X> we have
    <math|D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|n|)>>|)>=D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>>
  </theorem>

  <\proof>
    This follows from <reference|lemma 14.121> and <reference|symmetry of
    L^n+t(X;Y) based on permutations and transposition>.
  </proof>

  <section|Higher Order Partial Differentiation>

  <\definition>
    <label|partial differential on U>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|m\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>,
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces>],
    <math|U\<subseteq\>X> a open set, <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:U\<rightarrow\>V> a function then we say that <math|f> has a
    higher order partial differential <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f>
    of order <math|m> on <math|U> recursively as follows

    <\enumerate>
      <item>If <math|m=1> then <math|\<forall\>x\<in\>U> the partial
      differential <math|D<rsub|i<rsub|1>>f<around*|(|x|)>> must exists and
      <math|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f:U\<rightarrow\>L<rsup|1><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|1>>;Y|)>=L<around*|(|X<rsub|i<rsub|1>>;Y|)>>
      is defined by <math|> <math|<around*|(|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>=D<rsub|i<rsub|1>>f<around*|(|x|)>>

      <item>If <math|m\<gtr\>1> then the partial differential
      <math|D<rsup|m-1><rsub|i<rsub|m-1>,\<ldots\>,i<rsub|1>>f\<in\>L<rsup|m-1><around*|(|X<rsub|i<rsub|m-1>>,\<ldots\>,X<rsub|i<rsub|1>>;Y|)>>
      must exists on <math|U> and <math|\<forall\>x\<in\>U>
      <math|D<rsub|i<rsub|m>><around*|(|D<rsup|m-1><rsub|i<rsub|m-1>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>
      exists and <math|D<rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>L<around*|(|X<rsub|i<rsub|m>>,L<rsup|m-1><around*|(|X<rsub|i<rsub|m-1>>,\<ldots\>,X<rsub|i<rsub|1>>;Y|)>|)>=L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|i<rsub|1>>;Y|)>>
      is defined by <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=D<rsub|i<rsub|m>><around*|(|D<rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f|)><around*|(|x|)>>
    </enumerate>
  </definition>

  It will turn out that if a function is <math|m>-times differentiable then
  all the higher order partial differentials of order <math|m> exist. Also if
  a function is of class <math|C<rsup|m>> then all the higher order partial
  differentials of order <math|m> will be continous. Note that the existance
  of partial differentials of order <math|m> does not automatical implies
  that a function is <math|m>-times differentiable. First we need the
  following lemma to prove the continuity of the partial differentials.

  <\lemma>
    <label|continuity of partial derivates>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|Xi,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space , <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces>],
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>L<around*|(|X,Y|)>>
    a continuous function then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)>>
    defined by <math|<around*|(|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|x|)>=f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>
    is continuous.\ 
  </lemma>

  <\proof>
    Let <math|x\<in\>U>. First not that as
    <math|f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> and
    <math|<around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,X|)>>
    [see <reference|linearity of (01,...*,...0n)>] we have by <reference|norm
    of composition of linear mapping> that
    <math|<around*|(|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|x|)>=f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X|)>>.\ 

    Take <math|\<varepsilon\>\<gtr\>0> then as <math|f> is continuous there
    exists a <math|\<delta\>\<gtr\>0> such that <math|\<forall\>y\<in\>X>
    with <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>> we have that
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>>.
    Next if <math|h\<in\>X<rsub|i>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|<around*|(|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|x|)>-<around*|(|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|y|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>-f<around*|(|y|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|x|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|h|)>|)>-f<around*|(|y|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|h|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|<around*|(|i\<rightarrow\>0|)><around*|(|h|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>>|<cell|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|i>>>>>
    </eqnarray*>

    proving by <reference|the norm of a continuous linear mapping> that
    <math|<around*|\<\|\|\>|<around*|(|f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|x|)>-<around*|(|f<around*|(|\<star\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>>
    which proves continuity.
  </proof>

  Next we prove that <math|1>-times differentiability implies the existance
  of partial differentials of order <math|1>.

  <\lemma>
    <label|differentiability implies partial differentiability>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> [see <reference|norm of finite
    product of normed spaces>], <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set and <math|f:U\<rightarrow\>Y> a 1 times differentiable
    function then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    that <math|D<rsup|1><rsub|i>f:U\<rightarrow\>L<rsup|1><around*|(|X<rsub|i>,\<ldots\>,X<rsub|i>;Y|)>=L<around*|(|X<rsub|i>,Y|)>>
    exists [and is continuous if <math|f> is also \ <math|C<rsup|1>>],
    further <math|\<forall\>x\<in\>U> we have
    <math|D<rsup|1><rsub|i,\<ldots\>,i>f<around*|(|x|)>=D<rsup|1>f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>
    and <math|D f<around*|(|x|)>\<equallim\><rsub|def>D<rsup|1>f<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i,\<ldots\>,i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>.
  </lemma>

  <\proof>
    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then as
    <math|\<forall\>x\<in\>U> <math|D f<around*|(|x|)>> exists we have by
    <reference|differentiability on products of metric spaces> that
    <math|\<forall\>x\<in\>U> <math|D<rsub|i>f<around*|(|x|)>> exists,
    <math|D<rsub|i>f<around*|(|x|)>=D f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>
    and <math|D f<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)>>.
    Hence by definition we have that <math|D<rsup|1><rsub|i,\<ldots\>,i>f:U\<rightarrow\>L<rsup|1><around*|(|X<rsub|i>;Y|)>>
    exists with <math|D<rsup|1><rsub|i,\<ldots\>,i>f<around*|(|x|)>=D
    f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>=<around*|(|D
    f<around*|(|\<ast\>|)>\<circ\><around*|(|i<rsub|1>\<rightarrow\>0|)>|)><around*|(|x|)><rsup|>>
    and <math|><math|D<rsup|1>f<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i,\<ldots\>,i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>.\ 

    Further as <math|f> is <math|C<rsup|1>> we have that <math|D f> is
    continuous so using <reference|continuity of partial derivates> we have
    that <math|D<rsup|1><rsub|i,\<ldots\>,i>f=D
    f<around*|(|\<ast\>|)>\<circ\><around*|(|i\<rightarrow\>0|)>> is
    continuous.
  </proof>

  Finally we use induction to prove that <math|m>-times differentiability
  implies the existance of partial differentials of order <math|m>.

  <\theorem>
    <label|differential and partial differentials>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> the
    normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces>], a open set
    <math|U\<subseteq\>X> and <math|f:U\<rightarrow\>V> a <math|m>-times
    differentiable function then <math|\<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    we have that the higher order partial differential
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> exists and
    <math|\<forall\>x\<in\>U> we have <math|\<forall\>h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>
    that <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>=D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>.
    Further if <math|f> is of class <math|C<rsup|m>> then
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> is continuous.
  </theorem>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|m\<in\>\<bbb-N\>\|if
    f:X\<rightarrow\>V is m<text|-time >differentiable then
    \<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>
    D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f
    exists<infix-and>\<forall\>x\<in\>U we have
    \<forall\>h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>
    that D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>=D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>.
    Further if f is of class C<rsup|m> then
    D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f is continuous|}>> then we
    have:\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Using <reference|differentiability
      implies partial differentiability> we have that
      <math|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f> exists and is
      continuous if <math|f> is <math|C<rsup|1>>. Further
      <math|\<forall\>x\<in\>U> and <math|h=<around*|(|h<rsub|1>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,1|}>>X<rsub|i<rsub|j>>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|1>|)>>|<cell|\<equallim\><rsub|<text|<reference|differentiability
        implies partial differentiability>>>>|<cell|<around*|(|D<rsup|1>f<around*|(|x|)>\<circ\><around*|(|i<rsub|1>\<rightarrow\>0|)>|)><around*|(|h<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|def>>>|<cell|D<rsup|1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|1>-0|)><around*|(|h<rsub|1>|)>:\<ldots\>:<around*|(|i<rsub|1>-0|)><around*|(|h<rsub|1>|)>|)>>>>>
      </eqnarray*>

      proving that <math|1\<in\>\<cal-S\>>.

      <item*|<math|m\<in\>\<cal-S\>\<Rightarrow\>m+1\<in\>\<cal-S\>>>Assume
      that <math|f> is <math|<around*|(|m+1|)>>-times differentiable and take
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>.
      Define for <math|L\<in\>L<rsup|m><around*|(|X;Y|)>> and
      <math|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|m>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>

      <\equation*>
        \<Psi\><around*|(|L|)><around*|(|h<rsub|m>,\<ldots\>,h<rsub|1>|)>=L<around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>
      </equation*>

      If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>,
      <math|j\<in\><around*|{|1,\<ldots\>,m|}>> and <math|k,l\<in\>X<rsub|j>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Psi\><around*|(|L|)><around*|(|h<rsub|m>,\<ldots\>,<wide*|\<alpha\>\<cdot\>k+\<beta\>\<cdot\>l|\<wide-underbrace\>><rsub|j
        >,\<ldots\>,h<rsub|1>|)>>|<cell|=>|<cell|>>|<row|<cell|L<around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>k+\<beta\>\<cdot\>l|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|Pn(L)
        definition>>>>|<cell|>>|<row|<cell|\<cal-P\><rsub|n><around*|(|L|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>,\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>k+\<beta\>\<cdot\>l|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>,<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|linearity
        of (01,...*,...0n)>>>>|<cell|>>|<row|<cell|\<cal-P\><rsub|n><around*|(|L|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>,\<ldots\>,<wide*|\<alpha\>\<cdot\><around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|k|)>+\<beta\>\<cdot\><around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|l|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>,<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|Pn(L)
        is multi linear>>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>\<cal-P\><rsub|n><around*|(|L|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>,\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|k|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>,<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|n><around*|(|L|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>,\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|l|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>,<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>L<around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|k|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>+\<beta\>\<cdot\>L<around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>,<wide*|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|l|)>|\<wide-underbrace\>><rsub|j
        >,\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>1|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|Pn(L)
        definition>>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>\<Psi\><around*|(|L|)><around*|(|h<rsub|m>,\<ldots\>,<wide*|k|\<wide-underbrace\>><rsub|j>,\<ldots\>,h<rsub|1>|)>+\<beta\>\<cdot\>\<Psi\><around*|(|L|)><around*|(|h<rsub|m>,\<ldots\>,<wide*|l|\<wide-underbrace\>><rsub|j>,\<ldots\>,h<rsub|1>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 14.126.106>\<Psi\><around*|(|L|)> is multilinear
      </equation>

      Further we have for <math|<around*|(|h<rsub|1>,\<ldots\>,m|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>
      that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<Psi\><around*|(|L|)><around*|(|h<rsub|m>,\<ldots\>,h<rsub|1>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
        of L(x1:..:xn}>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|m><around*|(|X;Y|)>>\<cdot\><big|prod><rsub|j\<in\><around*|{|m,\<ldots\>,1|}>><around*|\<\|\|\>|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
        of (01,...*,...0n)>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|m>;Y|)>>\<cdot\><big|prod><rsub|j\<in\><around*|{|m,\<ldots\>,1|}>><around*|\<\|\|\>|h<rsub|j>|\<\|\|\>><rsub|j>>>>>
      </eqnarray*>

      proving by <reference|continuity and multilinearity> and
      <reference|norm of a multilinear mapping> that\ 

      <\equation>
        <label|eq 14.127.106>\<Psi\><around*|(|L|)>\<in\>L<around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>
        with <around*|\<\|\|\>|\<Psi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|m>;Y|)>>
      </equation>

      We can now use the above and <math|\<cal-P\><rsub|n><rsup|-1>:L<around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>\<rightarrow\>L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>>
      to define

      <\equation>
        <label|eq 14.128.106>\<Phi\>:L<rsup|m><around*|(|X;Y|)>\<rightarrow\>L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>
        by \<Phi\>=\<cal-P\><rsub|n><rsup|-1>\<circ\>\<Psi\>
      </equation>

      Then we have if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>,
      <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|m><around*|(|X;Y|)>> that
      <math|\<forall\>h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Psi\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|h<rsub|m>,\<ldots\>,h<rsub|1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|sum,product
        on (x1:..:xn)>>>>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>L<rsub|1><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<alpha\>\<cdot\>\<Psi\><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<Psi\><around*|(|L<rsub|2>|)>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that <math|\<Psi\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<Psi\><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<Psi\><around*|(|L<rsub|2>|)>>
      and thus as <math|\<cal-P\><rsub|n><rsup|-1>> is linear that
      <math|\<Phi\>> is linear.\ 

      Further if <math|L\<in\>L<rsup|m><around*|(|X;Y|)>> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<Phi\><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<cal-P\><rsub|n><rsup|-1><around*|(|\<Psi\><around*|(|L|)>|)>|\<\|\|\>><rsub|L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|L^(X;Y)
        is equivalent with L(X^n;Y)>>>>|<cell|<around*|\<\|\|\>|\<Psi\><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        14.127.106>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsup|m>;Y|)>>>>>>
      </eqnarray*>

      proving by <reference|continuous linear maps in a normed space> that
      <math|\<Phi\>> is continuous. So we have that\ 

      <\equation>
        <label|eq 14.129.106>\<Phi\>\<in\>L<around*|(|L<rsup|m><around*|(|X;Y|)>,L<rsup|m><around*|(|X<rsub|m>,\<ldots\>,X<rsub|1>;Y|)>|)>
      </equation>

      Let <math|x\<in\>U> we have as <math|D<rsup|m>f<around*|(|x|)>\<in\>L<rsup|m><around*|(|X;Y|)>>
      that for <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Phi\><around*|(|D<rsup|m>f<around*|(|x|)>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>|<cell|=>|<cell|\<cal-P\><rsup|-1><around*|(|\<Psi\><around*|(|D<rsup|m>f<around*|(|x|)>|)>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<Psi\><around*|(|D<rsup|m>f<around*|(|x|)>|)><around*|(|h<rsub|m>,\<ldots\>,h<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|D<rsup|m><around*|(|f<around*|(|x|)>|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|m\<in\>\<cal-S\>>>|<cell|<around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>>>>
      </eqnarray*>

      proving by <reference|equiality in L^n(X;Y)> that
      <math|\<Phi\><around*|(|D<rsup|m>f<around*|(|x|)>|)>=><math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>
      or that\ 

      <\equation>
        <label|eq 14.130.106>D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f=\<Phi\>\<circ\>D<rsup|m>f
      </equation>

      Take <math|x\<in\>U> then, as <math|<around*|(|i<rsub|m+1>\<rightarrow\>x|)>>
      is <math|C<rsup|\<infty\>>> [see <reference|(01,..,*,..,On) is C@@>],
      <math|\<Phi\>> is <math|C<rsup|\<infty\>>> [see <reference|eq
      14.129.106> and <reference|linear continuous mappings are C^infinity>],
      <math|f> is <math|<around*|(|m+1|)>>-times differentiable so that
      <math|D<rsup|m>f> is <math|1>-times differentiable, we have by the
      chain rule [see <reference|generalized chain rule>] that
      <math|\<Phi\>\<circ\>D<rsup|m>f\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>x|)>>
      is differentiable at <math|x<rsub|m+1>>. So by <reference|eq
      14.130.106> <math|D<around*|(|<around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>x|)>|)><around*|(|x<rsub|i<rsub|m+1>>|)>>
      exists which proves that <math|D<rsub|i<rsub|m>+1><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>
      exists. Hence

      <\equation>
        <label|eq 14.131.106>\<forall\>x\<in\>U we have that
        D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>
        exists\ 
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>|<cell|=>|<cell|D<around*|(|<around*|(|\<Phi\>\<circ\>D<rsup|m>f|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>x|)>|)><around*|(|x<rsub|i<rsub|m+1>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
        rule>>>>|<cell|D<around*|(|\<Phi\>\<circ\>D<rsup|m>f|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>x|)><around*|(|x<rsub|i<rsub|m+1>>|)>|)>\<circ\>D<around*|(|i<rsub|m+1>\<rightarrow\>x|)><around*|(|x<rsub|i<rsub|m+1>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|(01,..,*,..,On)
        is C@@>>>>|<cell|D<around*|(|\<Phi\>\<circ\>D<rsup|m>f|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>x|)><around*|(|x<rsub|i<rsub|m+1>>|)>|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|i
        the substitution>>>>|<cell|D<around*|(|\<Phi\>\<circ\>D<rsup|m>f|)><around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
        rule>>>>|<cell|D\<Phi\><around*|(|<around*|(|D<rsup|m>f<around*|(|x|)>|)>|)>\<circ\>D<rsup|><around*|(|D<rsup|m>f|)><around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.129.106> and <reference|linear continuous mappings are
        C^infinity>>>>|<cell|\<Phi\>\<circ\>D<rsup|m+1>f<around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 14.133.106>D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=\<Phi\>\<circ\>D<rsup|m+1>f<around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>
      </equation>

      Take <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m+1|}>>X<rsub|i<rsub|j>>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m+1>:\<ldots\>:h<rsub|1>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.133.106>>>>|<cell|>>|<row|<cell|<around*|(|\<Phi\>\<circ\>D<rsup|m+1>f<around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>|)><around*|(|h<rsub|m+1>:\<ldots\>:h<rsub|1>|)>>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|>>|<row|<cell|<around*|(|\<Phi\>\<circ\>D<rsup|m+1>f<around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>|)><around*|(|h<rsub|m+1>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<Phi\><around*|(|D<rsup|m+1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>0|)><around*|(|h<rsub|m+1>|)>|)>|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|>>|<row|<cell|<around*|(|D<rsup|m+1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>0|)><around*|(|h<rsub|m+1>|)>|)>|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>>|<cell|>>|<row|<cell|D<rsup|m+1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>0|)><around*|(|h<rsub|m+1>|)>,\<ldots\>,<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      where (1) is because of <math|D<rsup|m+1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>0|)><around*|(|h<rsub|m+1>|)>|)>\<in\>L<rsup|m><around*|(|X;Y|)>>.
      Proving that\ 

      <\equation>
        <label|eq 14.134.106>D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m+1>:\<ldots\>:h<rsub|1>|)>=D<rsup|m+1>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m+1>\<rightarrow\>0|)><around*|(|h<rsub|m+1>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>
      </equation>

      If <math|f> is of class <math|C<rsup|m+1>> then
      <math|D<rsup|m+1>f:U\<rightarrow\>L<rsup|m+1><around*|(|X;Y|)>=L<around*|(|X,L<rsup|m><around*|(|X,Y|)>|)>>
      is continous hence using <reference|continuity of partial derivates> we
      have that <math|D<rsup|<around*|(|m+1|)>>f<around*|(|\<ast\>|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>>
      is continuous. As <math|\<Phi\>> is continuous it follows that
      <math|\<Phi\>\<circ\><around*|(|D<rsup|<around*|(|m+1|)>>f<around*|(|\<ast\>|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>|)>>
      is continuous. As <math|<around*|(|\<Phi\>\<circ\>D<rsup|<around*|(|m+1|)>>f<around*|(|\<ast\>|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>|)><around*|(|x|)>=\<Phi\>\<circ\>D<rsup|<around*|(|m+1|)>>f<around*|(|x|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>\<equallim\><rsub|<reference|eq
      14.133.106>>D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>
      it follows that <math|><math|\<Phi\>\<circ\>D<rsup|<around*|(|m+1|)>>f<around*|(|\<ast\>|)>\<circ\><around*|(|i<rsub|m+1>\<rightarrow\>0|)>=D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f>.
      So\ 

      <\equation>
        <label|eq 14.135.106.1>if f is C<rsup|m+1> then
        D<rsup|m+1><rsub|i<rsub|m+1>...i<rsub|1>>f is continuous
      </equation>

      Finaly <reference|eq 14.131.106>,<reference|eq 14.134.106> and
      <reference|eq 14.135.106.1> proves that <math|n+1\<in\>\<cal-S\>>.
    </description>

    Mathematical induction completes then the proof.
  </proof>

  Next we show that the order of partial differentiation does not matter.

  <\corollary>
    <label|symmetry of partial differentials>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed spaces, <math|V\<subseteq\>Y>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> the
    normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces>], a open set
    <math|U\<subseteq\>X> and <math|f:U\<rightarrow\>V> a <math|m>-times
    differentiable function and <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    then <math|\<forall\>\<sigma\>\<in\>P<rsub|n>> [see
    <reference|permutation group>] we have that
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>=D<rsup|m><rsub|i<rsub|\<sigma\><around*|(|m|)>>,\<ldots\>,i<rsub|\<sigma\><around*|(|1|)>>>f<around*|(|x|)><around*|(|h<rsub|\<sigma\><around*|(|m|)>>:\<ldots\>:h<rsub|\<sigma\><around*|(|1|)>>|)>>
    for <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>>>.
  </corollary>

  <\proof>
    Let <math|x\<in\>U> and <math|h\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i<rsub|j>><rsub|>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|D<rsup|m><rsub|i<rsub|\<sigma\><around*|(|m|)>>,\<ldots\>,i<rsub|\<sigma\><around*|(|1|)>>>f<around*|(|x|)>|)><around*|(|h<rsub|\<sigma\><around*|(|m|)>>:\<ldots\>:h<rsub|\<sigma\><around*|(|1|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|differential
      and partial differentials>>>>|<cell|>>|<row|<cell|D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|\<sigma\><around*|(|m|)>>\<rightarrow\>0|)><around*|(|h<rsub|\<sigma\><around*|(|m|)>>|)>:\<ldots\>:<around*|(|i<rsub|\<sigma\><around*|(|1|)>>\<rightarrow\>0|)><around*|(|h<rsub|\<sigma\><around*|(|1|)>>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|the
      n-th differential is symmetric>>>>|<cell|>>|<row|<cell|D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>>|<cell|=>|<cell|>>>>
    </eqnarray*>
  </proof>

  We prove now that if the partial diferentials of a function exists and are
  continuous then the function is differentiable.\ 

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces> and
    <reference|product of Banach spaces is Banach>], a open set
    <math|U\<subseteq\>X>, <math|V\<subseteq\>Y> and
    <math|f:U\<rightarrow\>V> such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|D<rsub|i>f> exists on <math|U> and is continuous then <math|f> is
    of class <math|C<rsup|1>> with <math|D
    f<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>
    where <math|h\<in\>X> or <math|D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<gtr\>0>. Given <math|h\<in\>X> and
    <math|i\<in\><around*|{|0,\<ldots\>,n|}>> define
    <math|h<rsup|i>=<choice|<tformat|<table|<row|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>
    if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|0 if i=0>>>>>>. Using
    <reference|sum of (01,...,*,...0n)> we have then that\ 

    <\equation>
      <label|eq 14.135.106>h=h<rsup|n>
    </equation>

    Given \ <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we calculate the value of
    <math|<around*|(|h<rsup|i>|)><rsub|k>>. We have for <math|k> the
    following cases :\ 

    <\description>
      <item*|<math|k\<in\><around*|{|1,\<ldots\>,i|}>>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|h<rsup|i>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i><around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|<around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
        of (01,...*,...0n)>>>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k><around*|(|h<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|h<rsub|k>>>>>
      </eqnarray*>

      <item*|<math|k\<in\><around*|{|i+1,\<ldots\>,n|}>>>then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|h<rsup|i>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j=1><rsup|i><around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|i><around*|(|<around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|)><rsub|k>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
        of (01,...*,...0n)>>>>|<cell|<big|sum><rsub|j=1><rsup|i>\<delta\><rsub|j,k><around*|(|h<rsub|j>|)>>>|<row|<cell|>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        k\<neq\>j >|<cell|<big|sum><rsub|j=1><rsup|i>0<rsub|k>
        <around*|[|neutral element of X<rsub|k>|]>>>|<row|<cell|>|<cell|=>|<cell|0<rsub|k>>>>>
      </eqnarray*>
    </description>

    proving that <math|<around*|(|h<rsup|i>|)><rsub|k>=<choice|<tformat|<table|<row|<cell|h<rsub|k>
    if k\<in\><around*|{|1,\<ldots\>,i|}>>>|<row|<cell|0<rsub|k> if
    k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>>. So
    <math|<around*|\<\|\|\>|<around*|(|h<rsup|i>|)><rsub|k>|\<\|\|\>><rsub|k>=<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>
    if k\<in\><around*|{|1,\<ldots\>,i|}>>>|<row|<cell|<around*|\<\|\|\>|0<rsub|k>|\<\|\|\>><rsub|k>=0
    if k\<in\><around*|{|i+1,\<ldots\>,n|}>>>>>>\<leqslant\><around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>>
    hence <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rsup|i>|\<\|\|\>>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|h<rsup|i>|)><rsub|k>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|k>|\<\|\|\>><rsub|k>\|k\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>><eq-number><label|eq
      14.136.106>>>>>
    </eqnarray*>

    Let <math|x\<in\>U> then as <math|U> is open there exists a
    <math|\<delta\><rsub|1>\<gtr\>0> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)>\<subseteq\>U>.
    Define now

    <\equation>
      <label|eq 14.137.106>g:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)>\<rightarrow\>Y
      by g<around*|(|y|)>=f<around*|(|y|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>-x<rsub|i>|)>
    </equation>

    Then <math|g<around*|(|x|)>=f<around*|(|x|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|x<rsub|i>-x<rsub|i>|)>=0+<big|sum><rsub|i=1><rsup|n>0=0>
    proving\ 

    <\equation>
      <label|eq 14.138.106>g<around*|(|x|)>=0
    </equation>

    Now define <math|L:X\<rightarrow\>Y> by
    <math|L<around*|(|y|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>>
    so that using <reference|eq 14.137.106>\ 

    <\equation>
      <label|eq 14.139.106>g=f-C<rsub|X,Y,f<around*|(|x|)>>-L-C<rsub|X,Y,<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|x<rsub|i>|)>>
    </equation>

    \ Then if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and <math|y,z\<in\>X>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|(|\<alpha\>\<cdot\>y+\<beta\>\<cdot\>z|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|\<alpha\>\<cdot\>y<rsub|i>+\<beta\>\<cdot\>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<beta\>\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>+\<beta\>\<cdot\><big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|y|)>+\<beta\>\<cdot\>L<around*|(|z|)>>>>>
    </eqnarray*>

    proving that <math|L> is linear. Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)><around*|(|y<rsub|i>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>|)>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>>>>
    </eqnarray*>

    So using <reference|continuous linear maps in a normed space> we have
    that

    <\equation>
      <label|eq 14.140.2>L\<in\>L<around*|(|X,Y|)>\ 
    </equation>

    hence <math|L> is <math|C<rsup|\<infty\>>> [see <reference|linear
    continuous mappings are C^infinity>] with <math|D L<around*|(|y|)>=L>
    [see <reference|differential of a linear function>] and thus by
    <reference|differentiability on products of metric spaces> that\ 

    <\equation>
      <label|eq 14.140.106>D<rsub|i>L<around*|(|y|)> exists with D<rsub|i>
      L<around*|(|y|)>=L\<circ\><around*|(|i\<rightarrow\>0|)>
    </equation>

    Further if <math|k\<in\>X<rsub|i>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L\<circ\><around*|(|i\<rightarrow\>0|)>|)><around*|(|k|)>>|<cell|=>|<cell|L<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|k|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|k|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>>|<cell|<big|sum><rsub|j=1><rsup|n>D<rsub|j>f<around*|(|x|)>\<cdot\>\<delta\><rsub|i,j><around*|(|k|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsub|i>f<around*|(|x|)><around*|(|k|)>>>>>
    </eqnarray*>

    proving that <math|L\<circ\><around*|(|i\<rightarrow\>0|)>=D<rsub|i>f<around*|(|x|)>>
    which if we substitute this in <reference|eq 14.140.106> proves that\ 

    <\equation*>
      D<rsub|i>L<around*|(|y|)>=D<rsub|i>f<around*|(|x|)>
    </equation*>

    \ The above together with <reference|eq 14.139.106> and
    <reference|partial differential of sum and scalar product> \ proves that\ 

    <\equation>
      <label|eq 14.141.106>\<forall\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)><infix-and>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      D<rsub|i>g<around*|(|y|)> exists<infix-and>D<rsub|i>g<around*|(|y|)>=D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>
    </equation>

    Also as for <math|i\<in\><around*|{|1,\<ldots\>,n|}>> <math|D<rsub|i>f>
    is continuous there exists a <math|\<delta\><rsub|2,i>\<gtr\>0> such that
    if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|2,i>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|1>|)>>
    then <math|<around*|\<\|\|\>|D<rsub|i>g<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<equallim\><rsub|<reference|eq
    14.141.106>><around*|\<\|\|\>|D<rsub|i>f<around*|(|y|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\><frac|\<varepsilon\>|n>>
    hence if we take <math|\<delta\><rsub|2>=min<around*|(|<around*|{|\<delta\><rsub|2,i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    we have

    <\equation>
      <label|eq 14.142.106>\<forall\>h\<in\>X with
      <around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|2> \ we have
      <around*|\<\|\|\>|D<rsub|i>g<around*|(|x+h|)>|\<\|\|\>>=<around*|\<\|\|\>|D<rsub|i>f<around*|(|x+h|)>-D<rsub|i>f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|n>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<around*|(|x+h|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.135.106>>>>|<cell|g<around*|(|x+h<rsup|n>|)>-g<around*|(|x+h<rsup|0>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      of differences>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|g<around*|(|x+h<rsup|i>|)>-g<around*|(|x+h<rsup|i-1>|)>|)>>>>>
    </eqnarray*>

    so that

    <\equation>
      <label|eq 14.143.106><around*|\<\|\|\>|g<around*|(|x+h|)>|\<\|\|\>><rsub|Y>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|g<around*|(|x+h<rsup|i>|)>-g<around*|(|x+h<rsup|i-1>|)>|\<\|\|\>><rsub|Y>
    </equation>

    Now if <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|2>> then
    <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have by
    <reference|eq 14.136.106> that <math|<around*|\<\|\|\>|h<rsup|i>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|2>>
    so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x+h<rsup|i>,x+h<rsup|i-1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|2>|)>>
    hence we have using a consequence of the main value theorem [see
    <reference|Mean value theorem for balls>]

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<around*|(|x+h<rsup|i>|)>-g<around*|(|x+h<rsup|i-1>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\><rsub|>>|<cell|>>|<row|<cell|<around*|\<\|\|\>|x+h<rsup|i>-x-h<rsup|i-1>|\<\|\|\>>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      g<around*|(|<around*|(|x+h<rsup|i>|)>+t\<cdot\><around*|(|<around*|(|x+h<rsup|i-1>|)>-<around*|(|x+h<rsup|i>|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h<rsup|i>-h<rsup|i-1>|\<\|\|\>>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      g<around*|(|<around*|(|x+h<rsup|i-1>|)>+t\<cdot\><around*|(|<around*|(|x+h<rsup|i>|)>-<around*|(|x+h<rsup|i-1>|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|\<\|\|\>|h<rsup|i>-h<rsup|i-1>|\<\|\|\>>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      g<around*|(|x+<around*|(|h<rsup|i-1>+t\<cdot\><around*|(|h<rsup|i>-h<rsup|i-1>|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\|t\<in\><around*|[|0,1|]>|}>|)>>|<cell|=>|<cell|<eq-number><label|eq
      14.144.106>>>>>
    </eqnarray*>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|h<rsup|i-1>+t\<cdot\><around*|(|h<rsup|i>-h<rsup|i-1>|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|1-t|)>\<cdot\>h<rsup|i-1>+t\<cdot\>h<rsup|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|t\<in\><around*|[|0,1|]>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h<rsup|i-1>|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|h<rsup|i>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      14.136.106>>>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\><rsub|2>>>>>
    </eqnarray*>

    hence using<reference|eq 14.142.106> we have that
    <math|<around*|\<\|\|\>|D g<around*|(|a+<around*|(|h<rsup|i-1>+t\<cdot\><around*|(|h<rsup|i>-h<rsup|i-1>|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\><frac|\<varepsilon\>|n>>
    so that by <reference|eq 14.144.106>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<around*|(|x+h<rsup|i>|)>-g<around*|(|x+h<rsup|i-1>|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|<around*|\<\|\|\>|h<rsup|i>-h<rsup|i-1>|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|j=1><rsup|i><around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>-<big|sum><rsub|j=1><rsup|i-1><around*|(|j\<rightarrow\>0|)><around*|(|h<rsub|j>|)>|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|n>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>0|)><around*|(|h<rsub|i>|)>|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|n>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>>|<cell|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|i>\<cdot\><frac|\<varepsilon\>|n>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|n>>>>>
    </eqnarray*>

    Substituting the above in <reference|eq 14.143.106> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|g<around*|(|x+h|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|n>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>>>
    </eqnarray*>

    giving using the definition of <math|g> that\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
      if <around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|2>
    </equation*>

    Which proves as <math|L\<in\>L<around*|(|X,Y|)>> [see <reference|eq
    14.140.2>] with <math|L<around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>|)><around*|(|h|)>>
    that\ 

    <\equation>
      <label|eq 14.146.106>D f<around*|(|x|)> exists<infix-and>D
      f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>
    </equation>

    Let <math|x\<in\>U> then if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|2>|)>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|D
      f<around*|(|x|)>-D f<around*|(|y|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|y|)>|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n><around*|(|D<rsub|i>f<around*|(|x|)>-D<rsub|i>f<around*|(|y|)>|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>-D<rsub|i>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      14.142.106>>>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>>>>
    </eqnarray*>

    which proves by <reference|the norm of a continuous linear mapping> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|D f<around*|(|x|)>-D
      f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|D<rsub|i>f<around*|(|x|)>-D<rsub|i>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      14.142.106>>>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    So <math|D f> is continuous on <math|U> and thus\ 

    <\equation*>
      f is of class C<rsup|1>
    </equation*>
  </proof>

  Combining <reference|differentiability implies partial differentiability>
  with the above theorem gives the following result

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|V\<subseteq\>Y>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> the
    normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> [see
    <reference|norm of finite product of normed spaces> and
    <reference|product of Banach spaces is Banach>], a open set
    <math|U\<subseteq\>X> and <math|f:U\<rightarrow\>V> a function then the
    following are equivalent

    <\enumerate>
      <item><math|f> is of class <math|C<rsup|1>>\ 

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|D<rsub|i><rsup|1>f=D<rsub|i>f> exists on <math|U> and is
      continuous
    </enumerate>

    Further if either (1) or (2) is true then <math|\<forall\>x\<in\>U>
    <math|D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
  </theorem>

  Let's now define partial derivative of higher order.

  <\definition>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>,m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> with the maximum norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>, <math|U\<subseteq\>K<rsup|n>> a
    open set, <math|f:U\<rightarrow\>Y> then given
    <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    we say that <math|f> has a <with|font-series|bold|partial derivative>
    <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> on
    <math|U> iff\ 

    <\enumerate>
      <item>If <math|m=1> then <math|\<partial\><rsup|1><rsub|i<rsub|1,\<ldots\>,i<rsub|1>>>f>
      exist on <math|U> if <math|\<forall\>x\<in\>U> <math|f> has a
      <math|i<rsub|1>>-partial derivate at <math|x> [see <reference|partial
      derivative definition>] and <math|\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f:U\<rightarrow\>Y>
      is defined by <math|\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=\<partial\><rsub|i>f<around*|(|x|)>>.

      <item>If <math|m\<gtr\>1> then <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f>
      exists on <math|U> if <math|\<partial\><rsup|m-1><rsub|i<rsub|m-1>,\<ldots\>,i<rsub|1>>f>
      exists on <math|U> and <math|\<forall\>x\<in\>U> the
      <math|i<rsub|m>>-partial derivate \ <math|\<partial\><rsub|i<rsub|m>><around*|(|\<partial\><rsub|i<rsub|m-1>,\<ldots\>,i<rsub|1>><rsup|m-1>f|)><around*|(|x|)>>
      exists. We define then <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f:U\<rightarrow\>Y>
      by <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=\<partial\><rsub|i<rsub|1m>><around*|(|\<partial\><rsub|i<rsub|m-1>,\<ldots\>,i<rsub|1>><rsup|m-1>f|)><around*|(|x|)>>
    </enumerate>
  </definition>

  Just as there is a relation between the differential of a function on
  <math|\<bbb-K\>> and its derivative we have also a relation between the
  partial differentials of a higher order on a function on
  <math|\<bbb-K\><rsup|n>> and its partial derivatives.\ 

  <\theorem>
    <label|partial derivate of higher order and partial differential>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> with the maximum norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>, a open set
    <math|U\<subseteq\>\<bbb-K\><rsup|n>>,
    <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    and <math|f:U\<rightarrow\>V> a function such that
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> exists on <math|U>
    then <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f>
    exists on <math|U> [and is continuous if
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> is continuous] with
    <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=<around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|m\<in\>\<bbb-N\>\|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>,f:U\<rightarrow\>V
    <text|such that> D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|n>>f
    <text|exist on > U then \<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f
    <text|exists on> U <around*|[|<text|and is continuous if>
    D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f <text|is continuous>|]>
    with \<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=<around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|r>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Take
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}><rsub|>>
      let <math|f:U\<rightarrow\>V> be such that
      <math|D<rsup|1><rsub|i<rsub|1>>f=D<rsub|i<rsub|1>>f> exists on
      <math|U>. Using <reference|partial derivative and partial differential>
      we have that <math|\<forall\>x\<in\>U>
      \ <math|\<partial\><rsub|i<rsub|1>>f<around*|(|x|)>> exists and
      <math|\<partial\><rsub|i<rsub|1>>f<around*|(|x|)>=D
      <rsub|i<rsub|1>>f<around*|(|x|)><around*|(|1|)>>, \ proving that
      <math|\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>
      exists and

      <\equation>
        <label|eq 14.149.111>\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>
      </equation>

      Also we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|e<rsub|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|1>>\<circ\>D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|evaluation
        operator (1)>>>>|<cell|e<rsub|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|1>><around*|(|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.149.111>>>>|<cell|\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|e<rsub|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|1>>\<circ\>D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f=\<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f>,
      so as <math|e<rsub|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|1>>>
      is continuous by <reference|evaluation operator (1)> we have\ 

      <\equation>
        <label|eq 14.150.111>If D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f
        is continuous then \<partial\><rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f
        is continuous
      </equation>

      Finally <reference|eq 14.149.111> and <reference|eq 14.150.111> proves
      that <math|1\<in\>\<cal-S\>>

      <item*|<math|m\<in\>\<cal-S\>\<Rightarrow\>m+1\<in\>\<cal-S\>>>Take
      <math|<around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m+1|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
      and <math|f:U\<rightarrow\>V> such that
      <math|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f> exists on
      <math|U>. By definition we have then that
      <math|D<rsup|m><rsub|i<rsub|m,\<ldots\>,i<rsub|1>>>f> exists on
      <math|U> and has a <math|i<rsub|m>>-partial differential with
      <math|D<rsub|i<rsub|m+1>><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)>=D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>.
      As <math|m\<in\>\<cal-S\>> we have that\ 

      <\equation>
        <label|eq 14.147.107>\<partial\><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f
        exist<infix-and> \<forall\>x\<in\>U<space|1em>\<partial\><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=D<rsup|1><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)>
      </equation>

      From <math|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)>=D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)>\<equallim\><rsub|<text|<reference|eq
      14.147.107>>>\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>
      it follows that <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f=e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>\<circ\>D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f>.
      As <math|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>> is
      <math|C<rsup|\<infty\>>> [see <reference|evaluation operator (1)>] we
      have using the chain rule for partial differentials [see
      <reference|chain rules of partial differentiable functions>] that
      <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> has a
      <math|i<rsub|m+1>>-partial differential with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D<rsub|i<rsub|m+1>><around*|(|\<partial\><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>|<cell|=>|<cell|D<rsub|i<rsub|m+1>><around*|(|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>\<circ\>D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|chain
        rules of partial differentiable functions>>>>|<cell|D<around*|(|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>|)>|)>\<circ\>D<rsub|i<rsub|m+1>><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|<math|\<equallim\><rsub|<text|<reference|evaluation
        operator (1)>>>>>|<cell|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>\<circ\>D<rsub|i<rsub|m+1>><around*|(|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>\<circ\>D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)><eq-number><label|eq
        14.148.107>>>>>
      </eqnarray*>

      Applying <reference|partial derivative and partial differential> proves
      then that <math|\<partial\><rsub|i<rsub|m+1>><around*|(|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)>>
      exists on <math|U> with\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<partial\><rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|\<partial\><rsub|m+1><around*|(|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|partial
        derivative and partial differential>>>>|<cell|D<rsub|i<rsub|m+1>><around*|(|\<partial\><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.148.107>>>>|<cell|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)><around*|(|1|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|def>>>|<cell|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|m+1>|)><eq-number><label|eq
        14.149.107>>>>>
      </eqnarray*>

      Further as <math|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>><around*|(|D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f|)><around*|(|x|)>=D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>1|\<wide-underbrace\>><rsub|m+1>|)>\<equallim\><rsub|<text|<reference|eq
      14.149.020>>>\<partial\><rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>
      it follows that <math|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>\<circ\>D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f=\<partial\><rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f>.
      Hence as <math|e<rsub|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>>>
      is continuous by <reference|evaluation operator (1)> we have\ 

      <\equation>
        <label|eq 14.150.107>\<partial\><rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f
        is continuous if D<rsup|m+1><rsub|i<rsub|m+1>,\<ldots\>,i<rsub|1>>f
        is continuous
      </equation>

      Finally using <reference|eq 14.149.107> and <reference|eq 14.150.107>
      it follows that <math|m+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\corollary>
    <label|higher order differential and partial derivates>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>, <math|m\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> with the maximum norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|V\<subseteq\>Y>, a open set
    <math|U\<subseteq\>\<bbb-K\><rsup|n>>, <math|f:U\<rightarrow\>V> a
    function that is <math|m>-differentiable then
    <math|\<forall\><around*|{|i<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\><around*|{|1,\<ldots\>,n|}>>
    <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> exists on
    <math|U> and is continuous if <math|f> is of class <math|C<rsup|m>>.
    Further <math|\<forall\>x\<in\>U> we have
    <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>=D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|m>|)>=D<rsup|m>f<around*|(|x|)><around*|(|e<rsub|i<rsub|m>>:\<ldots\>:e<rsub|i<rsub|1>>|)>>
    where <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is the canonical base on <math|\<bbb-K\><rsup|n>> [defined by
    <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>]
  </corollary>

  <\proof>
    Using <reference|differential and partial differentials> we have that
    <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> exists on <math|U>
    with <math|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|m>:\<ldots\>:h<rsub|1>|)>=D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|h<rsub|m>|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|h<rsub|1>|)>|)>>
    [and is continuous if <math|f> is of class <math|C<rsup|m>>]. Using the
    previous theorem [see <reference|partial derivate of higher order and
    partial differential>] we have then that
    <math|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f> exists on
    <math|U> [and is continuous if <math|f> is of class <math|C<rsup|m>>]
    with\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<partial\><rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|partial
      derivate of higher order and partial
      differential>>>>|<cell|D<rsup|m><rsub|i<rsub|m>,\<ldots\>,i<rsub|1>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differential
      and partial differentials>>>>|<cell|D<rsup|m>f<around*|(|x|)><around*|(|<around*|(|i<rsub|m>\<rightarrow\>0|)><around*|(|1|)>:\<ldots\>:<around*|(|i<rsub|1>\<rightarrow\>0|)><around*|(|1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D<rsup|m>f<around*|(|x|)><around*|(|e<rsub|i<rsub|m>:\<ldots\>:e<rsub|i<rsub|1>>>|)>
      <around*|[|as <around*|(|<around*|(|i<rsub|j>\<rightarrow\>0|)><around*|(|1|)>|)><rsub|k>\<equallim\><rsub|<text|<reference|linearity
      of (01,...*,...0n)>>>\<delta\><rsub|j,k><around*|(|1|)>=\<delta\><rsub|j,k>|]>>>>>
    </eqnarray*>
  </proof>

  <section|Inverse function theorem>

  Remember the concept of a toplinear isomorphism [see <reference|toplinear
  isomorphism>] a open, continuous linear isomorphisme. Using this definition
  it is trivial to prove the next proposition.

  <\proposition>
    <label|toplinear in normed space><index|toplinear isomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then <math|L\<in\>L<around*|(|X,Y|)>> is a toplinear
    isomorphism [see <reference|toplinear isomorphism>] if also
    <math|L<rsup|-1>> is continuous.
  </proposition>

  <\proof>
    This is trivial using the definition [see <reference|toplinear
    isomorphism>].
  </proof>

  In Banach spaces every linear continuous isomorphism turns out to be a
  toplinear isomorphism.

  <\corollary>
    <label|in Banach spaces linear continuous mappings are toplinear>If
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are Banach spaces then if <math|L:X\<rightarrow\>Y> is a linear
    continuous isomorphism [or <math|L\<in\>L<around*|(|X,Y|)>> and is a
    isomorphism] then <math|L> is a toplinear isomorphism.
  </corollary>

  <\proof>
    This is a consequence of <reference|inverse of continuous linear mappings
    between Banach space is continuous>.
  </proof>

  <\definition>
    <index|<math|\<cal-G\>L<around*|(|X|)>>>If
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    a normed space then <math|\<cal-G\>L<around*|(|X|)>=<around*|{|L\<in\>L<around*|(|X,X|)>\|L
    is toplinear|}>\<subseteq\>L<around*|(|X,X|)>>\ 
  </definition>

  <\theorem>
    <label|GL(X) is a group>If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space then <math|\<cal-G\>L<around*|(|X|)>> is a group with
    the composition operator as the group operator. The identity operator
    <math|\<bbb-1\><rsub|X>> is the neutral element and the inverse of
    <math|L\<in\>\<cal-G\>L<around*|(|X|)>> is <math|L<rsup|-1>>,
  </theorem>

  <\proof>
    If <math|L<rsub|1>,L<rsub|2>\<in\>\<cal-G\>L<around*|(|X|)>> then
    <math|L<rsub|1>\<circ\>L<rsub|2>> is also a isomorphism that is linear
    and continuous. As <math|X> is a Banach space we have using
    <reference|inverse of continuous linear mappings between Banach space is
    continuous> that <math|<around*|(|L<rsub|1>\<circ\>L<rsub|2>|)><rsup|-1>
    >is continuous. So <math|L<rsub|1>\<circ\>L<rsub|2>\<in\>\<cal-G\>L<around*|(|X|)>>
    proving that <math|\<circ\>:X\<times\>X\<rightarrow\>X> defined by
    <math|<around*|(|L<rsub|1>,L<rsub|2>|)>\<rightarrow\>L<rsub|1>\<circ\>L<rsub|2>>
    is well defined.

    <\enumerate>
      <item><dueto|identity>Consider <math|\<bbb-1\><rsub|X>:X\<rightarrow\>X>
      which is evidently linear, continuous and a isomorphism with a
      continuous inverse. If <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then
      <math|L\<circ\>\<bbb-1\><rsub|X>=L=\<bbb-1\><rsub|X>\<circ\>L>

      <item><dueto|inverse element>If <math|L\<in\>\<cal-G\>L<around*|(|X|)>>
      then by definition <math|L<rsup|-1>\<in\>\<cal-G\>L<around*|(|X|)>> and
      <math|L\<circ\>L<rsup|-1>=\<bbb-1\><rsub|X>=L<rsup|-1>\<circ\>L>

      <item><dueto|associativity>This is trivial as composition of functions
      is associative.
    </enumerate>
  </proof>

  <\definition>
    <index|<math|H<rsup|n>>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|H:X\<rightarrow\>X> a continuous linear function
    and <math|n\<in\>\<bbb-N\>> then we define
    <math|H<rsup|n>:X\<rightarrow\>X> recursively as follows

    <\eqnarray*>
      <tformat|<table|<row|<cell|H<rsup|1>>|<cell|=>|<cell|H>>|<row|<cell|H<rsup|n+1>>|<cell|=>|<cell|H\<circ\>H<rsup|n>>>>>
    </eqnarray*>
  </definition>

  <\note>
    <label|(-H)^n>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|H\<in\>L<around*|(|X,X|)>> then
    <math|-H\<in\>L<around*|(|X,X|)>> and <math|\<forall\>n\<in\>\<bbb-N\>>
    we have <math|<around*|(|-H|)><rsup|n>=<around*|(|-1|)><rsup|n>\<cdot\>H<rsup|n>>
  </note>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|if H\<in\>L<around*|(|X,X|)>
    then <around*|(|-H|)><rsup|n>=<around*|(|-1|)><rsup|n>\<cdot\>H|}>> then:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Let <math|x\<in\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|-H|)><rsup|1><around*|(|x|)>>|<cell|=>|<cell|<around*|(|-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|1>\<cdot\>H<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-1|)><rsup|1>\<cdot\>H|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|-H|)><rsup|1>=<around*|(|-1|)><rsup|1>\<cdot\>H>
      so that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|-H|)><rsup|n+1><around*|(|x|)>>|<cell|=>|<cell|<around*|(|<around*|(|-H|)>\<circ\><around*|(|-H|)><rsup|n>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-H<around*|(|<around*|(|-H|)><rsup|n><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|H<around*|(|<around*|(|-H|)><rsup|n><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|-1\<cdot\><around*|(|H<around*|(|<around*|(|-1|)><rsup|n>\<cdot\>H<rsup|n><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n><around*|(|H<around*|(|H<rsup|n><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-1|)><rsup|n+1>\<cdot\>H<rsup|n+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-1|)><rsup|n+1>\<cdot\>H<rsup|n+1>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>.
    </description>
  </proof>

  <\lemma>
    <label|power of a continuous linear mapping is linear and continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed vector space and <math|H\<in\>L<around*|(|X,X|)>>,
    <math|n\<in\>\<bbb-N\>> then if <math|<around*|\<\|\|\>||\<\|\|\>>> is
    the norm on <math|L<around*|(|X,X|)>> we have

    <\enumerate>
      <item><math|H<rsup|n>:X\<rightarrow\>X> is linear and continuous with
      <math|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsub|><rsup|n><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      [or using <reference|norm of continuous linear mapping (inf)>
      <math|<around*|\<\|\|\>|H<rsup|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>>]

      <item><math|<big|sum><rsub|i=1><rsup|n>H<rsup|i>> is linear and
      continuous with <math|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|<around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      [or using <reference|norm of continuous linear mapping (inf)>
      <math|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>]
    </enumerate>
  </lemma>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>We use induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|H<rsup|n><text|
      is linear and continuous with >\<forall\>x\<in\>X
      <around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>First
        <math|H<rsup|1><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=H<around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>\<equallim\><rsub|H
        is linear>\<alpha\>\<cdot\>H<around*|(|x|)>+\<beta\>\<cdot\>H<around*|(|y|)>=\<alpha\>\<cdot\>H<rsup|1><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|1><around*|(|y|)>>
        proving linearity of <math|H<rsup|1>>. Secondly
        <math|<around*|\<\|\|\>|H<rsup|1><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|H\<in\>L<around*|(|X,X|)>><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        proving continuity. Hence <math|1\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|H<rsup|n+1><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|=>|<cell|<around*|(|H\<circ\>H<rsup|n>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|H<around*|(|H<rsup|n><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|H<around*|(|\<alpha\>\<cdot\>H<rsup|n><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|n><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>H<around*|(|H<rsup|n><around*|(|x|)>|)>+\<beta\>\<cdot\>H<around*|(|H<rsup|n><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>H<rsup|n+1><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|n+1><around*|(|y|)>>>>>
        </eqnarray*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|H<around*|(|H<rsup|n><around*|(|x|)>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|H|\<\|\|\>><rsup|n+1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>First note that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|\<equallim\><rsub|def>>|<cell|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|i><around*|(|y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\><big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|y|)>>>>>
      </eqnarray*>

      and secondary\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H<rsup|i><around*|(|x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|1|)>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<around*|\<\|\|\>|H<rsup|i>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H<rsup|i>|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space and <math|H\<in\>L*<around*|(|X,X|)>>. Then
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>> converges in
    <math|L<around*|(|X,Y|)>> if <math|\<forall\>x\<in\>X> we have that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>>
    converges in <math|X>. Further if <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>><space|1em>converges
    then <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>:X\<rightarrow\>Y>
    is defined by <math|<around*|(|<big|sum><rsub|i=1>H<rsup|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>>.
  </definition>

  <\lemma>
    <label|sum of linear function and infinite sum>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space <math|L,H\<in\>L<around*|(|X,Y|)>> and
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>> converges then
    <math|\<forall\>x\<in\>X> we have <math|lim<rsub|i\<rightarrow\>\<infty\>><around*|(|L<around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>=<around*|(|L+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>>
  </lemma>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|L+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>>|<cell|=>|<cell|L<around*|(|x|)>+<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|definition>>|<cell|L<around*|(|x|)>+lim<rsub|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
      of a sum>>>>|<cell|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|L<around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|i-H has inverse if norm of H is lower then 1>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a Banach space and <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>=<around*|{|H\<in\>L<around*|(|X,X|)>\|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1|}>>
    then <math|\<bbb-1\><rsub|X>-H\<in\>\<cal-G\>L<around*|(|X|)>>. Further
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>> converges in
    <math|L<around*|(|X,X|)>> and <math|<around*|(|\<bbb-1\><rsub|X>-H|)><rsup|-1>=\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>>
  </theorem>

  <\proof>
    Using the previous lemma (see <reference|power of a continuous linear
    mapping is linear and continuous>) gives

    <\equation>
      <label|eq 12.64>\<forall\>x\<in\>X,n\<in\>\<bbb-N\> we have
      \ <around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation>

    Using the fact that <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> and
    \ <reference|exaple of a convergent serie> it follows that
    <math|<big|sum><rsub|i=1<rsup|>><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>
    is convergent and <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>=<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>.
    Further using <reference|linear combination of convergent series> we have
    that <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<around*|\<\|\|\>|H|\<\|\|\>><rsup|i>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>>
    is convergent to <math|<frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>.
    Next using the fact that <math|X> is a Banach space, <reference|eq 12.64>
    and dominant convergence [see <reference|convergent criteria of a serie
    in a Banach space>] we have <math|\<forall\>x\<in\>X> that

    <\equation>
      <label|eq 12.65><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>
      is convergent<infix-and><around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|1-<around*|\<\|\|\>|H|\<\|\|\>>>
    </equation>

    Further by <reference|terms of a convergent series goes to 0> we have
    further

    <\equation>
      <label|eq 12.66>lim<rsub|n\<rightarrow\>\<infty\>>H<rsup|n><around*|(|x|)>=0
    </equation>

    So we can define the function <math|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>:X\<rightarrow\>X>
    by

    <\equation>
      <label|eq 12.67>\<forall\>x\<in\>X\<vDash\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>=x+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|n><around*|(|x|)>
    </equation>

    We show now that <math|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>>
    is linear\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|power
      of a continuous linear mapping is linear and
      continuous>>>>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|i><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linear
      combination of convergent series>>>>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|y|)>>>>>
    </eqnarray*>

    Next we prove continuity of <math|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|\<bbb-1\><rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      12.65>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>>>
    </eqnarray*>

    proving by <reference|continuous linear maps in a normed space> and
    <reference|norm of continuous linear mapping (inf)> that

    \;

    <\equation>
      <label|eq 12.68><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>\<in\>L<around*|(|X,X|)>\<wedge\><around*|\<\|\|\>|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>|\<\|\|\>>\<leqslant\><frac|1|1-<around*|\<\|\|\>|H|\<\|\|\>>>
    </equation>

    As <math|\<bbb-1\><rsub|X>\<in\>L<around*|(|X,X|)>> we have that\ 

    <\equation>
      <label|eq 14.156.110.1><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>=<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>-\<bbb-1\><rsub|X>\<in\>L<around*|(|X,X|)>
    </equation>

    Next we prove by induction on <math|n> that

    <\equation>
      <label|eq 12.69><around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>=<around*|(|\<bbb-1\><rsub|X>-H<rsup|n+1>|)>
    </equation>

    <\proof>
      Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>=<around*|(|\<bbb-1\><rsub|X>-H<rsup|n+1>|)>|}>>
      then we have:

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>><math|\<forall\>x\<in\>X> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|\<bbb-1\><rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|1>H<rsup|i><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x+H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x+H<around*|(|x|)>-H<around*|(|x|)>-H<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|2>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Then
        <math|\<forall\>x\<in\>X> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)><around*|(|x|)>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>|)>>|<cell|\<equallim\><rsub|linearity
          of \<bbb-1\><rsub|X>-H>>|<cell|>>|<row|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>+<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|H<rsup|n+1><around*|(|x|)>|)>>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|>>|<row|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|n+1>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|<around*|(|n+1|)>+1>|)><around*|(|x|)>>|<cell|=>|<cell|>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.\ 
      </description>

      Using induction we have that <math|S=\<bbb-N\>> so that <reference|eq
      12.69> is valid.
    </proof>

    Next by induction again we prove that\ 

    <\equation>
      <label|eq 12.70><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>=\<bbb-1\><rsub|X>-H<rsup|n+1>
    </equation>

    <\proof>
      Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>=\<bbb-1\><rsub|X>-H<rsup|n+1>|}>>
      then we have :

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>><math|\<forall\>x\<in\>X>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|x-H<around*|(|x|)>+H<around*|(|x-H<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<around*|(|x|)>+H<around*|(|x|)>-H<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|2>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Then
        we have <math|\<forall\>x\<in\>X> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>|)><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>+H<rsup|n+1>|)><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x-H<around*|(|x|)>|)>+H<rsup|n+1><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|n+1>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<rsup|n+1><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H<rsup|<around*|(|n+1|)>+1>|)><around*|(|x|)>>>>>
        </eqnarray*>
      </description>

      <\enumerate>
        proving that <math|n+1\<in\>S>.
      </enumerate>

      Using induction we have that <math|S=\<bbb-N\>> so that <reference|eq
      12.70> is indeed valid.
    </proof>

    Now if <math|\<varepsilon\>\<gtr\>0> , <math|x\<in\>X> then by
    <reference|eq 12.66> there exists a <math|N\<in\>\<bbb-N\>> such that if
    <math|n\<geqslant\>N> then <math|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>,
    so using <reference|eq 12.69> and <reference|eq 12.70> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>-\<bbb-1\><rsub|X><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|\<equallim\><rsub|<text|<reference|eq
      12.69>>>>|<cell|<around*|\<\|\|\>|\<bbb-1\><rsub|X><around*|(|x|)>-H<rsup|n+1><around*|(|x|)>-\<bbb-1\><rsub|X><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|-H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>-\<bbb-1\><rsub|X><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|\<equallim\><rsub|<text|<reference|eq
      12.70>>>>|<cell|<around*|\<\|\|\>|\<bbb-1\><rsub|X><around*|(|x|)>-H<rsup|n+1><around*|(|x|)>-\<bbb-1\><rsub|X><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|-H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 12.73>\<forall\>x\<in\>X\<vDash\>lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>|]>=\<bbb-1\><rsub|X><around*|(|x|)>
    </equation>

    \ and

    \;

    <\equation>
      <label|eq 12.71>\<forall\>x\<in\>X\<vDash\>lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|]>=\<bbb-1\><rsub|X><around*|(|x|)>
    </equation>

    Now as <math|<around*|(|\<bbb-1\><rsub|X>-H|)>> is continuous we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<bbb-1\><rsub|X><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      12.73>>>>|<cell|lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
      and continuity>>>>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|<math|>\<equallim\><rsub|<text|<reference|limit
      of a sum>>>>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|\<bbb-1\><rsub|X><around*|(|x|)>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|\<bbb-1\><rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|\<bbb-1\><rsub|X><around*|(|x|)>+<around*|(|<big|sum><rsup|\<infty\>><rsub|i=1>H<rsup|i>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 14.160.107>\<bbb-1\><rsub|X>=<around*|(|\<bbb-1\><rsub|X>-H|)>\<circ\><around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>
    </equation>

    Also

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<bbb-1\><rsub|X><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      12.71>>>>|<cell|lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|)>+<around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|[|<around*|(|\<bbb-1\><rsub|X><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      of linear function and infinite sum>>>>|<cell|<around*|(|\<bbb-1\><rsub|X><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|\<bbb-1\><rsub|X><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>+<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|<around*|(|\<bbb-1\><rsub|X>-H|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>|]><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 12.74>\<bbb-1\><rsub|X>=<around*|(|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>\<circ\><around*|(|\<bbb-1\><rsub|X>-H|)>
    </equation>

    Using <reference|eq 14.160.107> and <reference|eq 12.74> we have that
    <math|\<bbb-1\><rsub|X>-H> is a bijection with
    <math|<around*|(|\<bbb-1\><rsub|X>-H|)><rsup|-1>=\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>>.
    Further as <math|\<bbb-1\><rsub|X>,H\<in\>L<around*|(|X,X|)>> we have
    that <math|\<bbb-1\><rsub|X>-H> is linear [hence a isomorphism] and
    continuous. Using <reference|in Banach spaces linear continuous mappings
    are toplinear> it follows that <math|<around*|(|\<bbb-1\><rsub|X>-H|)>>
    is toplinear. This together with <reference|eq 14.156.110.1> proves that

    <\equation*>
      <big|sum><rsub|i=1><rsup|\<infty\>>H<rsub|i>\<in\>L<around*|(|X,X|)>\<wedge\>\<bbb-1\><rsub|X>-H\<in\>GL<around*|(|X|)>\<wedge\><around*|(|\<bbb-1\><rsub|X>-H|)><rsup|-1>=\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>
    </equation*>
  </proof>

  <\corollary>
    <label|I+H has inverse if norm of H is less then 1>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a Banach space, <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>
    then <math|\<bbb-1\><rsub|X>+H\<in\>\<cal-G\>L<around*|(|X|)>>,
    <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>
    converges in <math|L<around*|(|X,X|)>> with
    <math|<around*|(|\<bbb-1\><rsub|X>+H|)><rsup|-1>=\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>
  </corollary>

  <\proof>
    This follows from the previous theorem [see <reference|I+H has inverse if
    norm of H is less then 1>] and <reference|(-H)^n> \ by using <math|-H>
    and the fact that <math|<around*|\<\|\|\>|-H|\<\|\|\>>=<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1>.
  </proof>

  <\theorem>
    <label|inverse mapping is c-infinite>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space then we have

    <\enumerate>
      <item><math|\<cal-G\>L<around*|(|X|)>> is a open set in
      <math|L<around*|(|X,X|)>>

      <item>The function <math|\<tau\>:\<cal-G\>L<around*|(|X|)>\<rightarrow\>L<around*|(|X,X|)>>
      defined by <math|\<tau\><around*|(|L|)>=L<rsup|-1>> is differentiable
      of class <math|C<rsup|\<infty\>>> and
      <math|D\<tau\><around*|(|L|)>\<in\>L<around*|(|L<around*|(|X,X|)>,L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>|)>>
      is defined by <math|D\<tau\><around*|(|L|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then for any
      <math|H\<in\>L<around*|(|X,X|)>> we can write\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|H>|<cell|=>|<cell|L+<around*|(|H-L|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>\<bbb-1\><rsub|X>+<around*|(|L\<circ\>L<rsup|-1>|)>\<circ\><around*|(|H-L|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|L\<circ\><around*|(|\<bbb-1\><rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)><eq-number><label|eq
        12.75>>>>>
      </eqnarray*>

      Now according to <reference|norm of composition of linear mapping> we
      have <math|<around*|\<\|\|\>|L<rsup|-1>\<circ\><around*|(|H-L|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H-L|\<\|\|\>>>.
      Take <math|\<delta\>=max<around*|(|1,<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>|)>\<gtr\>0>
      then if <math|<around*|\<\|\|\>|H-L|\<\|\|\>>\<less\><frac|1|\<delta\>>>
      we have <math|<around*|\<\|\|\>|L<rsup|-1>\<circ\><around*|(|H-L|)>|\<\|\|\>>\<less\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><frac|1|\<delta\>>\<leqslant\>1>
      and using the previous corollary [see <reference|I+H has inverse if
      norm of H is less then 1>] we have then that
      <math|<around*|(|\<bbb-1\><rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>\<in\>\<cal-G\>L<around*|(|X|)>>
      and as <math|L\<in\>\<cal-G\>L<around*|(|X|)>> we have by
      <reference|GL(X) is a group> that <math|H=L\<circ\><around*|(|\<bbb-1\><rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>\<in\>\<cal-G\>L<around*|(|X|)>>.
      So if <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,<frac|1|\<delta\>>|)>>
      then <math|<around*|\<\|\|\>|H-L|\<\|\|\>>\<less\><frac|1|\<delta\>>>
      giving <math|H\<in\>\<cal-G\>L<around*|(|X|)><text| meaning that
      >B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,<frac|1|\<delta\>>|)>\<subseteq\>GL<around*|(|X|)>>
      proving that

      <\equation*>
        \<cal-G\>L<around*|(|X|)> is a open set in L<around*|(|X,X|)>
      </equation*>

      <item>If <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)>>
      then <math|<around*|\<\|\|\>|H-\<bbb-1\><rsub|X>|\<\|\|\>>\<less\>1> so
      that by <reference|I+H has inverse if norm of H is less then 1>
      <math|H=<around*|(|H-\<bbb-1\><rsub|X>|)>+\<bbb-1\><rsub|X>\<in\>\<cal-G\>L<around*|(|X|)>>
      proving that\ 

      <\equation>
        <label|eq 14.163.110.1>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)>\<subseteq\>\<cal-G\>L<around*|(|X|)>
      </equation>

      Let <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>
      then using <reference|I+H has inverse if norm of H is less then 1> we
      have that <math|<big|sum><rsup|\<infty\>><rsub|i=1><around*|(|-1|)><rsup|i>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>
      exists and using <reference|subserie property> we have\ 

      <\equation>
        <label|eq 14.163.109><big|sum><rsub|i=2><rsup|n><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
        converges in L<around*|(|X,X|)> so
        <big|sum><rsub|i=2><rsup|n><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>\<in\>L<around*|(|X,X|)>
      </equation>

      Define now

      <\equation*>
        \<varepsilon\><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0>
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
        if H\<neq\>0>>>>>
      </equation*>

      Given <math|x,y\<in\>X> and <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> we
      have

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varepsilon\><around*|(|H|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|=>|<cell|>>|<row|<cell|<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>
        if H\<neq\>0>>>>>>|<cell|\<equallim\><rsub|C<rsub|X,0>\<in\>L<around*|(|X,X|)>>>|<cell|>>|<row|<cell|<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>C<rsub|X,X,0><around*|(|x|)>+\<beta\>\<cdot\>C<rsub|X,X,0><around*|(|y|)>
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>
        if H\<neq\>0>>>>>>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.163.109>>>>|<cell|>>|<row|<cell|<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>C<rsub|X,X,0><around*|(|x|)>+\<beta\>\<cdot\>C<rsub|X,X,0><around*|(|y|)>
        if H=0>>|<row|<cell|<frac|\<alpha\>|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|x|)>+<frac|\<beta\>|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|y|)>
        if H\<neq\>0>>>>>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>\<varepsilon\><around*|(|H|)><around*|(|x|)>+\<beta\>\<cdot\>\<varepsilon\><around*|(|H|)><around*|(|y|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      and for <math|x\<in\>X>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|C<rsub|X,X,0><around*|(|x|)>|\<\|\|\>><rsub|X>
        if H=0>>|<row|<cell|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>
        if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0
        \ if H=0>>|<row|<cell|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>
        if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\>0
        \ if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
        if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        14.163.109>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><choice|<tformat|<table|<row|<cell|0
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|<big|sum><rsup|\<infty\>><rsub|i=2><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|\<\|\|\>>
        if H\<neq\>0>>>>>>>>>
      </eqnarray*>

      proving by <reference|continuous linear maps in a normed space> and
      <reference|norm of continuous linear mapping (inf)> that\ 

      <\equation>
        <label|eq 14.164.109>\<forall\>H\<in\>\<bbb-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>\<vDash\>
        \ \<varepsilon\><around*|(|H|)>\<in\>L<around*|(|X,X|)>\<wedge\><around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>\<leqslant\><choice|<tformat|<table|<row|<cell|0
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|<big|sum><rsup|\<infty\>><rsub|i=2><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|\<\|\|\>>
        if H\<neq\>0>>>>>
      </equation>

      hence as <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>\<equallim\><rsub|<text|<reference|B(0,d)=B(x,d)_x>>>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)><rsub|\<bbb-1\><rsub|X>>>we
      can define the function <math|\<varepsilon\>> \ 

      <\equation>
        <label|eq 14.165.109>\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)><rsub|\<bbb-1\><rsub|X>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>\<rightarrow\>L<around*|(|X,X|)>
        \ by \<varepsilon\><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0>
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
        \ if H\<neq\>0>>>>>
      </equation>

      Next for <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)><rsub|\<bbb-1\><rsub|X>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=2><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>|<cell|\<equallim\><rsub|<text|<reference|subserie
        property>>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>-<around*|\<\|\|\>|H|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie> and <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1>>>>|<cell|<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>-<around*|\<\|\|\>|H|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|H|\<\|\|\>>-<around*|(|1-<around*|\<\|\|\>|H|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|H|\<\|\|\>><rsup|2>|1-<around*|\<\|\|\>|H|\<\|\|\>>><eq-number><label|eq
        14.166.109>>>>>
      </eqnarray*>

      Further, as using theorem <reference|power of a continuous linear
      mapping is linear and continuous> we have
      <math|<around*|\<\|\|\>|<around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|\<\|\|\>>=<around*|\<\|\|\>|H<rsup|i>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>,
      we can apply dominent convergence [see <reference|convergent criteria
      of a serie in a Banach space>] on <reference|eq 14.166.109> giving
      <math|<around*|\<\|\|\>|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>><rsup|2>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>.
      So using <reference|eq 14.164.109>\ 

      <\equation>
        <label|eq 14.170.108>\<forall\>H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)><rsub|\<bbb-1\><rsub|X>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>
        we have <around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>
      </equation>

      Consider <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then we have the
      following cases to consider

      <\description>
        <item*|<math|L=\<bbb-1\><rsub|X>>>If
        <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|\<bbb-1\><rsub|X>,1|)><rsub|\<bbb-1\><rsub|X>>\<equallim\><rsub|<text|<reference|B(0,d)=B(x,d)_x>>>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<tau\><around*|(|\<bbb-1\><rsub|X>+H|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+H|)><rsup|-1>+\<bbb-1\><rsub|X><rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<bbb-1\><rsub|X>+H|)><rsup|-1>+\<bbb-1\><rsub|X>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|I+H
          has inverse if norm of H is less then
          1>>>>|<cell|\<bbb-1\><rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>-\<bbb-1\><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|subserie
          property>>>>|<cell|-<around*|(|-1|)><rsup|1>\<cdot\>H<rsup|1>+<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>>|<row|<cell|>|<cell|=>|<cell|-H+<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i><eq-number><label|eq
          14.164.107>>>>>
        </eqnarray*>

        So as <math|\<tau\><around*|(|\<bbb-1\><rsub|X>+0|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>=0>
        we have using the above

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<tau\><around*|(|\<bbb-1\><rsub|X>+H|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>-<around*|(|-H|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.164.107>>>>|<cell|<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0>
          if H=0>>|<row|<cell|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
          if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\>C<rsub|X,X,0>>>|<row|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
          >>>>>>>>>
        </eqnarray*>

        which as trivially <math|-H=-\<bbb-1\><rsub|X>\<circ\>H\<circ\>\<bbb-1\><rsub|X>>
        we have<space|1em>gives

        <\equation>
          <label|eq 14.167.107>\<tau\><around*|(|\<bbb-1\><rsub|X>+H|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>-<around*|(|-\<bbb-1\><rsub|X>\<circ\>H\<circ\>\<bbb-1\><rsub|X>|)>=\<varepsilon\><around*|(|H|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>
        </equation>

        \;

        Given <math|\<xi\>\<gtr\>0> choose
        <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>min<around*|(|<frac|\<xi\>|2>,<frac|1|2>|)>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          14.170.108>>>>|<cell|<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|2\<cdot\><frac|\<xi\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<xi\>>>>>
        </eqnarray*>

        which proves that

        <\equation>
          <label|eq 14.171.110.2>\<varepsilon\> is continuous at 0
        </equation>

        and thus that <math|\<varepsilon\>> is a
        <math|\<varepsilon\>>-mapping [see <reference|e-mappings>]. Define
        <math|\<Psi\>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>> by
        <math|\<Psi\><around*|(|H|)>=-H=\<bbb-1\><rsub|X>\<circ\>H\<circ\>\<bbb-1\><rsub|X>>
        so that trivially <math|\<Psi\>\<in\>L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>>.
        As by <reference|eq 14.167.107><math|>
        <math|\<tau\><around*|(|\<bbb-1\><rsub|H>+H|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>-<around*|(|-\<bbb-1\><rsub|X>\<circ\>H\<circ\>\<bbb-1\><rsub|X>|)>=\<varepsilon\><around*|(|H|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>
        we have by <reference|alternative definition of differentiability
        (2)> that\ 

        <\equation>
          <label|eq 14.171.108>D \<tau\><around*|(|\<bbb-1\><rsub|X>|)>
          exist<infix-and>D\<tau\><around*|(|\<bbb-1\><rsub|X>|)>=\<Psi\><infix-or>D\<tau\><around*|(|\<bbb-1\><rsub|X>|)><around*|(|H|)>=-\<bbb-1\><rsub|X>\<circ\>H\<circ\>\<bbb-1\><rsub|X>
        </equation>

        \ 

        <item*|<math|L\<neq\>\<bbb-1\><rsub|X>>>Take
        <math|\<delta\>=min<around*|(|<frac|1|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>,1|)>>
        [well defined as <math|L\<in\>\<cal-G\>L<around*|(|X|)>>] then if
        <math|H\<in\>L<around*|(|X,X|)><text| with
        ><around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\>> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|1>>>>
        </eqnarray*>

        hence using the previous corollary [see \ <reference|I+H has inverse
        if norm of H is less then 1>] we get

        <\equation>
          <label|eq 14.172.108>\<forall\>H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>
          we have that \<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>\<in\>\<cal-G\>L<around*|(|X|)>
        </equation>

        As <math|L\<in\>\<cal-G\>L<around*|(|X|)>> we have by
        <reference|GL(X) is a group> <math|>that
        <math|<around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L\<in\>\<cal-G\>L<around*|(|X|)>>
        and as <math|<around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>\<bbb-1\><rsub|X>\<circ\>L+H\<circ\><around*|(|L<rsup|-1>\<circ\>L|)>=L+H>
        it follows that\ 

        <\equation>
          <label|eq 14.173.108>\<forall\>H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>
          we have L+H=<around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L\<in\>\<cal-G\>L<around*|(|X|)>
        </equation>

        If now <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>>
        then <math|<around*|\<\|\|\>|L-H|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\>L-H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>>
        giving <math|<around*|(|L-H|)>+H\<in\>\<cal-G\>L<around*|(|X|)>>
        hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<label|eq
          14.174.108>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>\<subseteq\>\<cal-G\>L<around*|(|X|)>>|<cell|>|<cell|<eq-number>>>>>
        </eqnarray*>

        If <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)><rsub|L>\<equallim\><rsub|<text|<reference|B(0,d)=B(x,d)_x>>>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<delta\>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|1<eq-number><label|eq
          14.174.109>>>>>
        </eqnarray*>

        proving as <math|dom<around*|(|\<varepsilon\>|)>\<equallim\><rsub|<text|<reference|eq
        14.165.109>>>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>

        <\equation>
          <label|eq 14.175.109>\<forall\>H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)><rsub|L>
          we have that \<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)> is
          defined
        </equation>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<tau\><around*|(|L+H|)>-\<tau\><around*|(|H|)>>|<cell|=>|<cell|<around*|(|L+H|)><rsup|-1>-L<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.173.108>>>>|<cell|<around*|(|<around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L|)><rsup|-1>-L<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
          of composition of functions>>>>|<cell|L<rsup|-1>\<circ\><around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)><rsup|-1>-L<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)><rsup|-1>-L<rsup|-1>\<circ\>\<bbb-1\><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|<around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)><rsup|-1>-\<bbb-1\><rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|\<tau\><around*|(|\<bbb-1\><rsub|X>+H\<circ\>L<rsup|-1>|)>-\<tau\><around*|(|\<bbb-1\><rsub|X>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          14.174.109>,<reference|eq 14.167.107>>>>|<cell|L<rsup|-1>\<circ\><around*|(|-\<bbb-1\><rsub|X>\<circ\><around*|(|H\<circ\>L<rsup|-1>|)>\<circ\>\<bbb-1\><rsub|X>+\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|-H\<circ\>L<rsup|-1>+\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
          of continuous linear mapping is continuous and
          multilinear>>>>|<cell|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>+L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>>>>>
        </eqnarray*>

        giving\ 

        <\equation>
          <label|eq 14.176.109>\<tau\><around*|(|L+H|)>-\<tau\><around*|(|H|)>-<around*|(|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>|)>=L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>
        </equation>

        Define now given <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)><rsub|L>>

        <\equation*>
          \<varepsilon\><rprime|'><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0
          > if H=0>>|<row|<cell|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
          if H\<neq\>0>>>>>
        </equation*>

        Given <math|x,y\<in\>X>, <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> we
        have as <math|><math|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>\<in\>L<around*|(|X,X|)>>
        that

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varepsilon\><rprime|'><around*|(|H|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|=>|<cell|>>|<row|<cell|<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0
          ><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)> if
          H=0>>|<row|<cell|<around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>
          if H\<neq\>0>>>>>>|<cell|=>|<cell|>>|<row|<cell|<choice|<tformat|<table|<row|<cell|\<alpha\>\<cdot\>C<rsub|X,X,0
          ><around*|(|x|)>+\<beta\>\<cdot\>C<rsub|X,X,0><around*|(|y|)> if
          H=0>>|<row|<cell|\<alpha\>\<cdot\><around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|y|)>
          if H\<neq\>0>>>>>>|<cell|=>|<cell|>>|<row|<cell|\<alpha\>\<cdot\>\<varepsilon\><around*|(|H|)><around*|(|x|)>+\<beta\>\<cdot\>\<varepsilon\><around*|(|H|)><around*|(|y|)>>|<cell|>|<cell|>>>>
        </eqnarray*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0><around*|(|x|)>
          if H=0>>|<row|<cell|<around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|x|)>
          if H\<neq\>0>>>>>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<choice|<tformat|<table|<row|<cell|0
          if H=0>>|<row|<cell|<around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|x|)>
          if H\<neq\>0>>>>>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|0|\<\|\|\>><rsub|X>
          if H=0>>|<row|<cell|<around*|\<\|\|\>|<around*|(|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|)><around*|(|x|)>|\<\|\|\>><rsub|X>
          if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><choice|<tformat|<table|<row|<cell|0
          if H=0>>|<row|<cell|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
          if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><choice|<tformat|<table|<row|<cell|0
          if H=0>>|<row|<cell|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<cdot\><frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
          if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><choice|<tformat|<table|<row|<cell|0
          if H=0>>|<row|<cell|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>
          if H\<neq\>0>>>>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>>>>>
        </eqnarray*>

        proving by <reference|continuous linear maps in a normed space> and
        <reference|norm of continuous linear mapping (inf)> that

        <\equation>
          <label|eq 14.177.109>\<varepsilon\><rprime|'><around*|(|H|)>\<in\>L<around*|(|X,X|)><infix-and><around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>
        </equation>

        This allows us to define\ 

        <\equation>
          <label|eq 14.178.109>\<varepsilon\><rprime|'>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)><rsub|L>\<rightarrow\>L<around*|(|X,X|)>
          by \<varepsilon\><rprime|'><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,X,0>
          if H=0>>|<row|<cell|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
          if H\<neq\>0>>>>>
        </equation>

        and

        <\equation>
          <label|eq 14.179.109>\<forall\>B\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)><space|1em>
          <around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>
        </equation>

        Let <math|\<xi\>\<gtr\>0> then as <math|\<varepsilon\>> is continuous
        at <math|0> [see <reference|eq 14.171.110.2>] there exists a
        <math|\<delta\><rsub|1>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\><rsub|1>> then
        <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>-0|\<\|\|\>>\<less\><frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>>.
        Take <math|\<delta\><rsub|2>=<frac|\<delta\><rsub|1>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>+1>>
        then if <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\><rsub|2>>
        we have <math|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|norm
        of composition of linear mapping>>><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<less\><frac|\<delta\><rsub|1>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>+1>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<less\>\<delta\><rsub|1>>
        hence <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<less\><frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>>.
        So if <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>min<around*|(|\<delta\>,\<delta\><rsub|2>|)>>
        we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|H\<neq\>0,<text|<reference|eq
          14.177.109>>>>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<xi\>>>>>
        </eqnarray*>

        which proves that <math|\<varepsilon\><rprime|'>> is continuous at
        <math|0> and as as <math|\<varepsilon\><rprime|'><around*|(|0|)>=0>
        that\ 

        <\equation>
          <label|eq 14.180.109>\<xi\><rprime|'> is a
          \<varepsilon\><text|-mapping [see <reference|e-mappings>]>
        </equation>

        Define now <math|\<Phi\>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
        by <math|\<Phi\><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L>. Then
        we have for <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
        <math|H<rsub|1>,H<rsub|2>\<in\>L<around*|(|X,X|)>> that

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<Phi\><around*|(|\<alpha\>\<cdot\>H<rsub|1>+\<beta\>\<cdot\>H<rsub|2>|)>>|<cell|=>|<cell|-L<rsup|-1><rsup|>\<circ\><around*|(|\<alpha\>\<cdot\>H<rsub|1>+\<beta\>\<cdot\>H<rsub|2>|)>\<circ\>L<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
          of continuous linear mapping is continuous and
          multilinear>>>>|<cell|-L<rsup|-1>\<circ\><around*|(|\<alpha\>\<cdot\>H<rsub|1>\<circ\>L<rsup|-1>+\<beta\>\<cdot\>H<rsub|2>\<circ\>L<rsup|-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
          of continuous linear mapping is continuous and
          multilinear>>>>|<cell|\<alpha\>\<cdot\><around*|(|-L<rsup|-1>\<circ\>H<rsub|1>\<circ\>L<rsup|-1>|)>+\<beta\>\<cdot\><around*|(|-L<rsup|-1>\<circ\>H<rsub|2>\<circ\>L<rsup|-1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<Phi\><around*|(|H<rsub|1>|)>+\<beta\>\<cdot\>\<Phi\><around*|(|H<rsub|2>|)>>>>>
        </eqnarray*>

        and for <math|H\<in\>L<around*|(|X,X|)>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<Phi\><around*|(|H|)>|\<\|\|\>>>|<cell|\<leqslant\><rsub|<text|<reference|norm
          of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>>>>
        </eqnarray*>

        proving by <reference|continuous linear maps in a normed space> that\ 

        <\equation>
          <label|eq 14.181.109>\<Phi\>\<in\>L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>
        </equation>

        Combining the above with <reference|eq 14.176.109>,<reference|eq
        14.178.109> gives\ 

        <\equation*>
          \<tau\><around*|(|L+H|)>-\<tau\><around*|(|L|)>-\<Phi\><around*|(|H|)>=\<varepsilon\><rprime|'><around*|(|H|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>
        </equation*>

        which using <reference|eq 14.180.109>,<reference|eq 14.181.109> on
        <reference|alternative definition of differentiability (2)> proves
        that\ 

        <\equation>
          <label|eq 14.182.109>D \<tau\><around*|(|L|)>
          exists<infix-and>D\<tau\><around*|(|L|)>=\<Phi\><infix-or>D\<tau\><around*|(|L|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>
        </equation>
      </description>

      Combining <reference|eq 14.171.108> and <reference|eq 14.182.109>
      proves finally that\ 

      <\equation>
        <label|eq 14.183.109.1>\<forall\>L\<in\>\<cal-G\>L<around*|(|X|)>
        D\<tau\><around*|(|L|)> exists<infix-and>D\<tau\><around*|(|L|)><around*|(|H|)>\<equallim\>-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>
      </equation>

      To prove that <math|\<tau\>> is <math|C<rsup|\<infty\>>> we write
      <math|D \<tau\>> as a composition of <math|C<rsup|\<infty\>>> mappings
      and <math|\<tau\>>. Define <math|\<chi\>:\<cal-G\>L<around*|(|X|)>\<rightarrow\>\<cal-G\>L<around*|(|X|)>\<times\>\<cal-G\>L<around*|(|X|)>>
      by <math|\<cal-X\><around*|(|L|)>=<around*|(|L,L|)>> then we have that
      <math|\<pi\><rsub|1>\<circ\>\<cal-X\>=\<bbb-1\><rsub|\<cal-G\>L<around*|(|X|)>>>
      and <math|\<pi\><rsub|2>\<circ\>\<cal-X\>=\<bbb-1\><rsub|\<cal-G\>L<around*|(|X|)>>>
      are <math|C<rsup|\<infty\>>>. Hence using <reference|C^n of multivalued
      functions> we have that\ 

      <\equation*>
        \<cal-X\> is of class C<rsup|\<infty\>>
      </equation*>

      Let <math|L,L<rprime|'>\<in\>\<cal-G\>L<around*|(|X|)>> define
      <math|\<Phi\><rsub|L,L>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
      by <math|\<Phi\><rsub|L,L<rprime|'>><around*|(|H|)>=-L\<circ\>H\<circ\>L<rprime|'>>
      [which is well defined as <math|\<cal-G\>L<around*|(|X|)>\<in\>L<around*|(|X,X|)>>
      so that <math|><math|-L\<circ\>H\<circ\>L<rprime|'><rsup|>\<in\>L<around*|(|X,X|)>>].
      Now if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
      <math|H<rsub|1>,H<rsub|2>\<in\>L<around*|(|X,Y|)>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<Phi\><rsub|L,L<rprime|'>><around*|(|\<alpha\>\<cdot\>H<rsub|1>+\<beta\>\<cdot\>H<rsub|2>|)>>|<cell|=>|<cell|-L\<circ\><around*|(|\<alpha\>\<cdot\>H<rsub|1>+\<beta\>\<cdot\>H<rsub|2>|)>\<circ\>L<rprime|'>>>|<row|<cell|>|<cell|=>|<cell|-L\<circ\><around*|(|<around*|(|\<alpha\>\<cdot\>H<rsub|1>+\<beta\>\<cdot\>H<rsub|2>|)>\<circ\>L<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|<around*|(|-L|)>\<circ\><around*|(|\<alpha\>\<cdot\><around*|(|H<rsub|1>\<circ\>L<rprime|'>|)>+\<beta\>\<cdot\><around*|(|H<rsub|2>\<circ\>L<rprime|'>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|-L|)>\<circ\>H<rsub|1>\<circ\>L<rprime|'>|)>+\<beta\>\<cdot\><around*|(|<around*|(|-L|)>\<circ\>H<rsub|2>\<circ\>L<rprime|'>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<Phi\><rsub|L,L<rprime|'>><around*|(|H<rsub|1>|)>+\<beta\>\<cdot\>\<Phi\><rsub|L,L<rprime|'>><around*|(|H<rsub|2>|)>>>>>
      </eqnarray*>

      and if <math|H\<in\>L<around*|(|X,X|)>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<Phi\><rsub|L,L<rprime|'>><around*|(|H|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|-L\<circ\>H\<circ\>L<rprime|'>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|norm
        of composition of linear mapping>>>>|<cell|<around*|\<\|\|\>|-L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rprime|'>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rprime|'>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>>>>
      </eqnarray*>

      proving by <reference|continuous linear maps in a normed space> and
      <reference|norm of continuous linear mapping (inf)> that

      <\equation>
        <label|eq 14.183.109>\<Phi\><rsub|L,L<rprime|'>>\<in\>L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>
        with <around*|\<\|\|\>|\<Phi\><rsub|L,L<rprime|'>>|\<\|\|\>><rsub|L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rprime|'>|\<\|\|\>>
      </equation>

      Define then <math|\<rho\>:\<cal-G\>L<around*|(|X|)>\<times\>\<cal-G\>L<around*|(|X|)>\<rightarrow\>L<around*|(|L<around*|(|X,X|)>\<times\>L<around*|(|X,X|)>|)>>
      by <math|\<rho\><around*|(|L,L<rprime|'>|)>=\<Phi\><rsub|L,L<rprime|'>>>.
      Then we have for <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>,<math|L,L<rsub|1>,L<rsub|2>\<in\>\<cal-G\>L<around*|(|X|)>>
      that <math|\<forall\>H\<in\>L<around*|(|X,X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<rho\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L|)><around*|(|H|)>>|<cell|=>|<cell|\<Phi\><rsub|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>\<circ\>H\<circ\>L>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|-\<alpha\>|)>\<cdot\>L<rsub|1>+<around*|(|-\<beta\>|)>\<cdot\>L<rsub|2>|)>\<circ\>H\<circ\>L>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|<around*|(|-\<alpha\>\<cdot\><around*|(|L<rsub|1>\<circ\>H\<circ\>L|)>+<around*|(|-\<beta\>|)>\<cdot\><around*|(|L<rsub|2>\<circ\>H\<circ\>L|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|\<alpha\>\<cdot\><around*|(|-L<rsub|1>\<circ\>H\<circ\>L|)>+\<beta\>\<cdot\><around*|(|-L<rsub|2>\<circ\>H\<circ\>L|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<Phi\><rsub|L<rsub|1>,L><around*|(|H|)>+\<beta\>\<cdot\>\<Phi\><rsub|L<rsub|2>,L><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<rho\><around*|(|L<rsub|1>,L|)><around*|(|H|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>,L|)><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<rho\><around*|(|L<rsub|1>,L|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>,L|)>|)><around*|(|H|)>>>>>
      </eqnarray*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<rho\><around*|(|L,\<alpha\>*\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|H|)>>|<cell|=>|<cell|\<Phi\><rsub|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-L\<circ\>H|)>\<circ\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|<around*|(|-L\<circ\>H|)>\<circ\><around*|(|\<alpha\>\<cdot\>L<rsub|1>|)>+<around*|(|-L\<circ\>H|)>\<circ\><around*|(|\<beta\>\<cdot\>L<rsub|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|composition
        of continuous linear mapping is continuous and
        multilinear>>>>|<cell|\<alpha\>\<cdot\><around*|(|-L\<circ\>H\<circ\>L<rsub|1>|)>+\<beta\>\<cdot\><around*|(|-L\<circ\>H\<circ\>L<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<Phi\><rsub|L,L<rsub|1>><around*|(|H|)>+\<beta\>\<cdot\>\<Phi\><rsub|L,L<rsub|2>><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)><around*|(|H|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)>|)><around*|(|H|)>>>>>
      </eqnarray*>

      which proves that <math|\<rho\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L|)>=\<alpha\>\<cdot\>\<rho\><around*|(|L<rsub|1>,L|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>,L|)>>
      and <math|\<rho\><around*|(|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)>>.
      So we have that\ 

      <\equation>
        <label|eq 14.184.109>\<rho\> is multilinear <around*|[|and thus
        bilinear|]>
      </equation>

      Further if <math|<around*|(|L<rsub|1,>L<rsub|2>|)>\<in\>\<cal-G\>L<around*|(|X|)>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<rho\><around*|(|L<rsub|1>,L<rsub|2>|)>|\<\|\|\>><rsub|L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|\<Phi\><rsub|L<rsub|1>,L<rsub|2>>|\<\|\|\>><rsub|L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        14.183.109>>>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rprime|'>|\<\|\|\>>>>>>
      </eqnarray*>

      which by <reference|continuity and multilinearity> proves that

      <\equation>
        <label|eq 14.185.109>\<rho\> is continuous
      </equation>

      As continuous bilinear mappings are <math|C<rsup|\<infty\>>> [see
      <reference|continuous billinear functions are C^infinity>] we have
      using <reference|eq 14.184.109> and <reference|eq 14.185.109> that

      <\equation>
        <label|eq 14.186.109>\<rho\> is of class C<rsup|\<infty\>>
      </equation>

      Take now <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then
      <math|\<forall\>H\<in\>L<around*|(|X,X|)>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|\<rho\>\<circ\>\<cal-X\>\<circ\>\<tau\>|)><around*|(|L|)>|)><around*|(|H|)>>|<cell|=>|<cell|<around*|(|\<rho\><around*|(|\<cal-X\><around*|(|\<tau\><around*|(|L|)>|)>|)>|)><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<rho\><around*|(|\<cal-X\><around*|(|L<rsup|-1>|)>|)>|)><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<rho\><around*|(|L<rsup|-1>,L<rsup|-1>|)>|)><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|\<Phi\><rsub|L<rsup|-1>,L<rsup|-1>><around*|(|H|)>>>|<row|<cell|>|<cell|=>|<cell|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        14.183.109.1>>>>|<cell|D\<tau\><around*|(|L|)><around*|(|H|)>>>>>
      </eqnarray*>

      which proves that <math|<around*|(|\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>|)><around*|(|L|)>=D
      \<tau\><around*|(|L|)>> so that

      <\equation>
        <label|eq 14.188.109>\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>=D\<tau\>
      </equation>

      We use now induction to prove that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|\<tau\>> is of class <math|C<rsup|n>> and thus by definition
      <math|C<rsup|\<infty\>>>. So let <math|\<b-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<tau\>
      is C<rsup|n>|}>> then we have\ 

      <\description>
        <item*|<math|0\<in\>\<cal-S\>>>As by <reference|eq 14.183.109.1>
        <math|D\<tau\><around*|(|L|)>> exists for every <math|L\<in\>U> we
        have by <reference|differentiability at x implies continuity at x>
        that <math|\<tau\>> is continuous on <math|U> hence <math|\<tau\>> is
        of class <math|C<rsup|0>> proving that <math|0\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>As
        <math|n\<in\>\<b-S\>> we have that <math|\<tau\>> is of class
        <math|C<rsup|n>> and as <math|\<rho\>,\<cal-X\>> are of class
        <math|C<rsup|\<infty\>>> we have by the chain rule [see
        <reference|generalized chain rule>] that
        <math|\<rho\>\<circ\>\<cal-X\>\<circ\>\<tau\>> is of class
        <math|C<rsup|n>>. Using <reference|eq 14.188.109> we have then that
        <math|D\<tau\>> is of class <math|C<rsup|n>>. Hence using
        <reference|if f is C^n then D^1f is C^n-1> it follows that
        <math|\<tau\>> is of class <math|C<rsup|n+1>> proving that
        <math|n+1\<in\>\<cal-S\>>.
      </description>

      Mathematical induction proves then that
      <math|\<cal-S\>=\<bbb-N\><rsub|0>> and thus that\ 

      <\equation*>
        \<tau\> is of class C<rsup|\<infty\>>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set in <math|X>,
    <math|V\<subseteq\>Y> a open set and <math|f:U\<rightarrow\>V> a
    function. Then we say that\ 

    <\enumerate>
      <item><math|f> is a diffeomorphisme iff

      <\enumerate>
        <item><math|f:U\<rightarrow\>V> is a bijection

        <item><math|f:U\<rightarrow\>Y> is differentiable on <math|U>

        <item><math|f<rsup|-1>:V\<rightarrow\>X> is differentiable on
        <math|V>
      </enumerate>

      <item><math|f> is a diffeomorphism of class <math|C<rsup|n>>
      [<math|n\<in\>\<bbb-N\><rsub|0>>] iff

      <\enumerate>
        <item><math|f:U\<rightarrow\>V> is a bijection

        <item><math|f:U\<rightarrow\>Y> is of class <math|C<rsup|n>>

        <item><math|f<rsup|-1>:V\<rightarrow\>X> is of class <math|C<rsup|n>>
      </enumerate>
    </enumerate>
  </definition>

  <\example>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then a homeomorphism <math|f:X\<rightarrow\>Y> is a
    diffeomorphism of class <math|C<rsup|0>>
  </example>

  <\example>
    <label|linear isomrophisms between b=Banach spaces are C^oo>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces and <math|L:X\<rightarrow\>Y> a linear continuous
    isomorphism [or equivalence <math|L\<in\>L<around*|(|X,Y|)>> and <math|L>
    is a bijection] then <math|L> is diffeormorphim of class
    <math|C<rsup|\<infty\>>>
  </example>

  <\proof>
    First by assumption we have that <math|L> is a bijection. Using
    <reference|in Banach spaces linear continuous mappings are toplinear> we
    have that <math|L> is toplinear hence <math|L> amd <math|L<rsup|-1>> are
    continuous. Further as by <reference|inverse of linear isomorphism is a
    isomorphism> <math|L<rsup|-1>> is also linear we have by
    <reference|linear continuous mappings are C^infinity> that <math|L> and
    <math|L<rsup|-1>> are <math|C<rsup|\<infty\>>> hence <math|L> is a
    diffeomorphism of class <math|C<rsup|\<infty\>>>.\ 
  </proof>

  <\proposition>
    <label|diffeomorphism is a local property>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|r\<in\>\<bbb-N\><rsub|0>>,
    <math|U,W\<subseteq\>X,V\<subseteq\>Y> open sets with
    <math|W\<subseteq\>U> and <math|f:U\<rightarrow\>V> a diffeomorphism of
    class <math|C<rsup|r>> then <math|f<rsub|\|W>:W\<rightarrow\>f<around*|(|W|)>>
    is a diffeomorphism of class <math|C<rsup|r>>.
  </proposition>

  <\proof>
    As <math|f> is of class <math|C<rsup|r>> we have by <reference|C^n is a
    local property> that <math|f<rsub|\|W>> is of class <math|C<rsup|r>>.
    Also as <math|f> is open [as <math|f<rsup|-1>> is continuous] we have
    that <math|f<around*|(|W|)>> is open in <math|Y>. Further as
    <math|<around*|(|f<rsup|-1>|)><rsub|\|f<around*|(|W|)>>=<around*|(|f<rsub|\|W>|)><rsup|-1>>
    and <math|f<rsup|-1>> is <math|C<rsup|r>> we have using <reference|C^n is
    a local property> that <math|<around*|(|f<rsub|\|W>|)><rsup|-1>> is
    <math|C<rsup|r>>.
  </proof>

  <\note>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open set and a function <math|f:U\<rightarrow\>V> then using
    \ \ <reference|characterization of a bijective mapping> we have that
    <math|f> is a diffeomorphism [of class <math|C<rsup|r>>] if and only if
    <math|f> is differentiable [of class <math|C<rsup|r>>] and there exists a
    function <math|g:V\<rightarrow\>U> such that <math|g> is differentiable
    [of class <math|C<rsup|r>>] and <math|f\<circ\>g=\<bbb-1\><rsub|V>> and
    <math|g\<circ\>f=\<bbb-1\><rsub|U>>.\ 
  </note>

  <\theorem>
    <label|diffeomorphism are toplinear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open set and <math|f:U\<rightarrow\>V> a diffeomorphism and
    <math|g=f<rsup|-1>:V\<rightarrow\>U> then if we take <math|x\<in\>U> with
    <math|y=f<around*|(|x|)>> we have <math|D g<around*|(|y|)>\<circ\>D
    f<around*|(|x|)>=\<bbb-1\><rsub|X>> and <math|D f<around*|(|x|)>\<circ\>D
    g<around*|(|y|)>=\<bbb-1\><rsub|Y>> proving that <math|D
    f<around*|(|x|)>> and <math|D g<around*|(|y|)>> are toplinear
    isomorphisms.
  </theorem>

  <\proof>
    Let <math|y=f<around*|(|x|)>\<Rightarrow\>g<around*|(|y|)>=x> then we
    have

    <\enumerate>
      <item>From <math|f\<circ\>g=\<bbb-1\><rsub|V>> and
      <math|\<bbb-1\><rsub|Y>=D\<bbb-1\><rsub|V><around*|(|x|)>=D<around*|(|f\<circ\>g|)><around*|(|y|)>=D
      f<around*|(|g<around*|(|y|)>|)>\<circ\>D g<around*|(|y|)>=D
      f<around*|(|x|)>\<circ\>D g<around*|(|y|)>>

      <item>From <math|g\<circ\>f=\<bbb-1\><rsub|U>> and
      <math|\<bbb-1\><rsub|X>=D\<bbb-1\><rsub|U><around*|(|x|)>=D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>=D
      g<around*|(|y|)>\<circ\>D f<around*|(|x|)>>
    </enumerate>

    from which it follows that <math|D f<around*|(|x|)>> and <math|D
    f<around*|(|x|)>> are bijections with <math|<around*|(|D
    f<around*|(|x|)>|)><rsup|-1>=D g<around*|(|y|)>=D<around*|(|f<rsup|-1>|)><around*|(|y|)>>
    and <math|><math|<around*|(|D g<around*|(|y|)>|)><rsup|-1>=D
    f<around*|(|x|)>>. As <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>>
    and <math|D g<around*|(|y|)>\<in\>L<around*|(|Y,X|)>> we have by
    <reference|toplinear in normed space> that <math|D f<around*|(|x|)>> and
    <math|D g<around*|(|y|)>> are toplinear isomorphisms.
  </proof>

  <\theorem>
    <label|composition of diffeomorphism is a diffeomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open set, <math|W\<subseteq\>Z> a open set and
    <math|f:U\<rightarrow\>V> a diffeomorphism [of class <math|C<rsup|r>>],
    <math|g:V\<rightarrow\>W> a diffeomorphism [of class <math|C<rsup|r>>]
    then <math|f\<circ\>g:U\<rightarrow\>W> \ is a diffeomorphism [of class
    <math|C<rsup|r>>]
  </theorem>

  <\proof>
    Using <reference|properties of composition of functions> it follows that
    <math|f\<circ\>g> is a bijection with
    <math|<around*|(|f\<circ\>g|)><rsup|-1>=g<rsup|-1>\<circ\>f<rsup|-1>>.
    Further as <math|f,g> are diffeomorphisms [oc flass <math|C<rsup|r>>]. We
    have by the Chain Rule (see <reference|generalized chain rule>) that
    <math|f\<circ\>g> is differentiable on <math|U> [or <math|C<rsup|r>>] and
    <math|<around*|(|f\<circ\>g|)><rsup|-1>> is differentiable on <math|W>.
    Hence we have that <math|f\<circ\>g> is a diffeomorphism.
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X>, <math|V\<subseteq\>Y> then a
    function <math|f:U\<rightarrow\>V> is a local diffeomorphism [of class
    <math|C<rsup|r>>] at <math|x\<in\>U> if there exists a open set
    <math|U<rsub|x>\<subseteq\>U,V<rsub|f<around*|(|x|)>>\<subseteq\>Y> with
    <math|x\<in\>U<rsub|x>\<subseteq\>U>,
    <math|f<around*|(|x|)>\<subseteq\>V<rsub|f<around*|(|x|)>>> and
    <math|f<rsub|\|U<rsub|x>>:U<rsub|x>\<rightarrow\>V<rsub|f<around*|(|x|)>>>
    is a diffeomorphism [of class <math|C<rsup|r>>]
  </definition>

  We state now the Inverse function theorem

  <\theorem>
    <label|inverse function theorem><index|inverse function
    theorem><dueto|The Inverse Function Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|Y>|\<\|\|\>>|\<rangle\>>>
    be Banach spaces over <math|\<bbb-R\>>, <math|U\<subseteq\>X> an open
    set, <math|V\<subseteq\>Y> <math|f:U\<rightarrow\>V> a differentiable
    function of class <math|C<rsup|r>>, <math|r\<in\>\<bbb-N\>>. Assume that
    for a <math|x<rsub|0>\<in\>U> we have that <math|D
    f<around*|(|x<rsub|0>|)>:X\<rightarrow\>Y> is a isomorphism then <math|f>
    is a local diffeomorphism of class <math|C<rsup|r>> at <math|x<rsub|0>>.
    In other words there exists open sets
    <math|U<rsub|x<rsub|0>>\<subseteq\>U\<subseteq\>X>,
    <math|V<rsub|f<around*|(|x<rsub|0>|)>>\<subseteq\>V> with
    <math|x<rsub|0>\<in\>U<rsub|x<rsub|0>>>,
    <math|f<around*|(|x<rsub|0>|)>\<subseteq\>V<rsub|f<around*|(|x<rsub|0>|)>>>
    such that <math|f<rsub|\|U<rsub|x<rsub|0>>>:U<rsub|x<rsub|0>>\<rightarrow\>V<rsub|f<around*|(|x<rsub|0>|)>>>
    is a diffeomorphism.
  </theorem>

  <\proof>
    The proof is quite long and is done by proving several propositions.
    First note that by the definition of the differential (see
    <reference|differential of a function>) we have that <math|D
    f<around*|(|x<rsub|0>|)>> \ is a linear continuous isomorphism so by
    <reference|in Banach spaces linear continuous mappings are toplinear> and
    the fact that <math|X,Y> are Banach spaces we have that

    <\equation>
      <label|eq 12.87>D f<around*|(|x<rsub|0>|)> is a toplinear isomorphism
    </equation>

    First we prove a more specific version of the the Inverse Function
    Theorem.

    <\proposition>
      <label|inverse theorem for Df(0)=1X>Let
      <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      be a Banach space over <math|\<bbb-R\>>, <math|0\<in\>U\<subseteq\>X>
      an open set and <math|f:U\<rightarrow\>X> a differentiable function of
      class <math|C<rsup|r>,r\<in\>\<bbb-N\>> such that <math|D
      f<around*|(|0|)>=\<bbb-1\><rsub|X>> and <math|f<around*|(|0|)>=0> then
      <math|f> is a is a local diffeomorphism at <math|0>.
    </proposition>

    <\proof>
      Define <math|T:U\<rightarrow\>X> by
      <math|x\<rightarrow\>T<around*|(|x|)>=\<bbb-1\><rsub|X><around*|(|x|)>-f<around*|(|x|)>>
      then <math|T<around*|(|0|)>=0> and <math|T> is of class
      <math|C<rsup|r>> [as it is the sum of a <math|C<rsup|\<infty\>>> and a
      <math|C<rsup|r>> function [see <reference|sum of C^n functions is
      C^n>]] so

      <\equation>
        <label|eq 12.88>D<rsup|1>T is continuous on U <around*|[|as
        1\<leqslant\>r\<Rightarrow\>T is of class C<rsup|1>|]>
      </equation>

      Next <math|D<rsup|1>T<around*|(|0|)>\<equallim\><rsub|<text|<reference|sum
      of C^n functions is C^n>>>D<rsup|1>\<bbb-1\><rsub|X><around*|(|0|)>-D<rsup|1>f<around*|(|0|)>=\<bbb-1\><rsub|X>-\<bbb-1\><rsub|X>=0>
      [<math|0\<in\>L<around*|(|X,X|)>> \ the neutral element in
      <math|L<around*|(|X,Y|)>>] giving\ 

      <\equation>
        <label|eq 12.89>D<rsup|1>T<around*|(|0|)>=0
      </equation>

      As <math|D<rsup|1>T> is continuous at <math|0> there exists a
      <math|\<rho\><rprime|'>> with <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\><rprime|'>|)>\<subseteq\>U>
      such that <math|\<forall\>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\><rprime|'>|)>>
      we have that <math|D<rsup|1>T<around*|(|x|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,<frac|1|2>|)>\<Rightarrow\><around*|\<\|\|\>|D<rsup|1>T<around*|(|x|)>|\<\|\|\>>\<less\><frac|1|2>>.
      Take then <math|\<rho\>=<frac|\<rho\><rprime|'>|2>> then

      <\equation>
        <label|eq 14.199.111><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>*<around*|(|0,\<rho\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\><rprime|'>|)>\<subseteq\>U
      </equation>

      so that we have\ 

      <\equation>
        <label|eq 12.90>if <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>\<rho\>
        \ <around*|[|or x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|]>
        then <around*|\<\|\|\>|D<rsup|1>T<around*|(|x|)>|\<\|\|\>>\<less\><frac|1|2>\<less\>1
      </equation>

      Now as <math|D<rsup|1>T<around*|(|x|)>=\<bbb-1\><rsub|X>-D<rsup|1>f<around*|(|x|)>\<Rightarrow\>D<rsup|1>f<around*|(|x|)>=\<bbb-1\><rsub|X>-D<rsup|1>T<around*|(|x|)>>
      we can apply <reference|i-H has inverse if norm of H is lower then 1>
      to get\ 

      <\equation>
        <label|eq 12.9>If <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>\<rho\>
        <around*|[|or x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|]>
        then D f<around*|(|x|)>\<in\>\<cal-G\>L<around*|(|X|)><infix-or>D
        f<around*|(|x|)> is a toplinear isomorphism
      </equation>

      Now using the fact that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
      is convex [see <reference|balls are convex>] and the Mean Value theorem
      [see <reference|Mean value theorem 2>] together with <reference|eq
      12.90> we find that <math|>if <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      then <math|<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|0|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x-0|\<\|\|\>><rsub|X>=<frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      giving

      <\equation>
        <label|eq 12.92>If x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>
        then <around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation>

      Next we prove the following conjectures to finish the proposition.

      <\conjecture>
        <label|proposition 12.116>Let <math|0\<less\>\<sigma\>\<leqslant\>\<rho\>>
        then <math|\<forall\>y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,<frac|\<sigma\>|2>|)>>
        there exists a unique determined <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        such that <math|f<around*|(|x|)>=y>
      </conjecture>

      <\proof>
        First note that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>,<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<sigma\>|2>|)>>
        are closed [see <reference|closed balls are closed>] and thus by
        <reference|closed subset of a complete space is complete> and the
        completeness of <math|X> is complete. Given
        <math|y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<sigma\>|2>|)>>
        and <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        define <math|T<rsub|y><around*|(|x|)>=y+T<around*|(|x|)>> then we
        have <math|<around*|\<\|\|\>|T<rsub|y><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|y+T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<sigma\>|2>|)>><frac|\<sigma\>|2>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|<text|<reference|eq
        12.92>>><frac|\<sigma\>|2>+<frac|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|2>\<leqslant\><frac|\<sigma\>|2>+<frac|\<sigma\>|2>=\<sigma\>>
        so that we can define the following function\ 

        <\equation>
          <label|eq 12.93>T<rsub|y>=C<rsub|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>,X,y>+T:<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<rightarrow\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>
          by x\<rightarrow\>T<rsub|y><around*|(|x|)>
        </equation>

        Note that <math|T<rsub|y>> is <math|C<rsup|r>> as it is the sum of
        the <math|C<rsup|\<infty\>>> function
        <math|C<rsub|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>,X,y>>
        and the <math|C<rsup|r> >function <math|T> with
        <math|D<rsup|1>T<rsub|y>=0+D<rsup|1>T=D<rsup|1>T> hence
        \ <math|\<forall\>x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        we have by <reference|eq 12.90> that
        <math|D<rsup|1>T<rsub|y><around*|(|x|)>\<less\><frac|1|2>>. Using the
        Mean Value Theorem <reference|Mean value theorem 2> we have\ 

        <\equation>
          <label|eq 12.94>\<forall\>x<rsub|1>,x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>
          we have <around*|\<\|\|\>|T<rsub|y><around*|(|x<rsub|1>|)>-T<rsub|y><around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>
        </equation>

        proving that <math|T<rsub|y>> is a contraction [see
        <reference|contraction>]. Using the fact that
        <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        is a Banach space [using <reference|closed subset of a complete space
        is complete> and the fact that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        is closed] and the Banach Fixed Point theorem [see <reference|the
        Banach Fixed Point Theorem>] \ there exists a unique
        <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        such that <math|T<rsub|y><around*|(|x|)>=x\<Leftrightarrow\>x=y+x-f<around*|(|x|)>\<Leftrightarrow\>y=f<around*|(|x|)>>
        proving the conjecture.
      </proof>

      <\conjecture>
        <label|eq 12.95>There exists a <math|\<chi\>> with
        <math|0\<less\>\<chi\>\<less\>\<rho\>> such that
        <math|f<rsub|\|U<rsub|\<chi\>>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        is a bijective function where <math|U<rsub|\<chi\>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)><big|cap>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>>
        a open set [as <math|f> is continuous].
      </conjecture>

      <\proof>
        Take <math|\<chi\>=<frac|\<rho\>|2>> then
        <math|0\<less\>\<chi\>\<less\>\<rho\>> and we have\ 

        <\description>
          <item*|surjectivity>Using the previous conjecture [see
          <reference|proposition 12.116>] we have if
          <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
          that there exists a unique <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          such that <math|f<around*|(|x|)>=y>. We prove now by contradiction
          that

          <\equation*>
            <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>\<chi\>
          </equation*>

          <\proof>
            So assume that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<cal-X\>>
            take then <math|\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>\<gtr\>0>
            then by the continuity of <math|f> [as <math|f> is
            <math|C<rsup|r>>] there exists a <math|\<tau\><rprime|'>\<gtr\>0>
            such that if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<tau\><rprime|'>>
            then <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>.
            Take now <math|\<tau\>=min<around*|(|\<tau\><rprime|'>,<frac|\<rho\>|4>|)>>
            and <math|x<rsub|1>=x\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>>
            then we have <math|<around*|\<\|\|\>|x<rsub|1>-x|\<\|\|\>><rsub|X>=<frac|\<tau\>|\<chi\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<chi\>>\<tau\>\<leqslant\>\<tau\><rprime|'>>.
            So that <math|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>><rsub|X>\<less\><frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>=<frac|\<chi\>|2>\<Rightarrow\>f<around*|(|x<rsub|1>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
            which as <math|0\<less\>\<chi\>\<less\>\<rho\>> means that by the
            previous conjecture [see <reference|proposition 12.116>] there
            exists a <math|x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
            such that <math|f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>>.
            As <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>=\<chi\>+\<tau\>\<less\><frac|\<rho\>|2>+<frac|\<rho\>|4>=<frac|3|4>\<cdot\>\<rho\>\<less\>\<rho\>>
            giving

            <\equation>
              <label|eq 12.96>x<rsub|1>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>
            </equation>

            As <math|x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>=<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
            giving\ 

            <\equation>
              <label|eq 12.97>x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>\<wedge\>x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>
            </equation>

            Also <math|f<around*|(|x<rsub|2>|)>=f<around*|(|x<rsub|1>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>=<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|4>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>>
            proving\ 

            <\equation>
              <label|eq 12.98>f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>
            </equation>

            Using the fact that <math|0\<less\>\<rho\>\<leqslant\>\<rho\>>,
            <reference|eq 12.96>,<reference|eq 12.97>, <reference|eq 12.98>
            the previous conjecture \ [see <reference|proposition 12.116>]
            [especially the uniqueness] we reach the conclusion
            <math|x<rsub|1>=x<rsub|2>> but then
            <math|<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\><rsub|>\<chi\>\<less\>\<chi\>\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>\<equallim\><rsub|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<chi\>><around*|\<\|\|\>|x\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>>
            contradicting <math|x<rsub|1>=x<rsub|2>>. Hence we reach the
            conclusion that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>\<chi\>>
          </proof>

          So as <math|<around*|\<\|\|\>|x<rsub|>|\<\|\|\>><rsub|X>\<neq\>\<chi\>>
          and <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          we must have that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<Rightarrowlim\><rsub|f<around*|(|x|)>=y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>x\<in\>U\<chi\>>
          proving surjectivity.

          <item*|injectivity>Assume that there exists a
          <math|x<rsub|1>,x<rsub|2>\<in\>U<rsub|\<chi\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          such that <math|f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>>.
          As <math|f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>\<in\>f<around*|(|U<rsub|\<chi\>>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>,
          Then as <math|0\<less\>\<chi\>\<less\>\<rho\>> we can use the
          uniqueness in the previous conjecture \ [see <reference|proposition
          12.116>] to conclude that <math|x<rsub|1>=x<rsub|2>>.
        </description>
      </proof>

      Now by the above conjecture we have a <math|\<chi\>> with
      <math|0\<less\>\<chi\>\<less\>\<rho\>> such that
      <math|f<rsub|\|U<rsub|X>>:U<rsub|X>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      is a bijection. By the bijectivity the function

      <\equation>
        <label|eq 14.207.111>g=<around*|(|f<rsub|\|U<rsub|\<chi\>>>|)><rsup|-1>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>\<rightarrow\>U<rsub|\<chi\>>
      </equation>

      will then exists.

      <\conjecture>
        <label|proposition 12.118><math|g> is continuous on
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      </conjecture>

      <\proof>
        If <math|x\<in\>U<rsub|\<chi\>>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        a convex set then <math|x=x-f<around*|(|x|)>+f<around*|(|x|)>=T<around*|(|x|)>+f<around*|(|x|)>>
        so if <math|x<rsub|1>,x<rsub|2>\<in\>U<rsub|\<chi\>>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|T<around*|(|x<rsub|1>|)>+f<around*|(|x<rsub|1>|)>-T<around*|(|x<rsub|2>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|T<around*|(|x<rsub|1>|)>-T<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>>>>
        </eqnarray*>

        so that by using <reference|eq 12.90>, the convexity of
        <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        [see <reference|balls are convex>] and the Mean Value Theorem (see
        <reference|Mean value theorem 2>) we have
        <math|<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>
        so that we have\ 

        <\equation>
          <label|eq 12.99>\<forall\>x<rsub|1>,x<rsub|2>\<in\>U<rsub|\<chi\>>
          we have <around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>
        </equation>

        If now <math|y<rsub|1>,y<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        then <math|g<around*|(|y<rsub|1>|)>,g<around*|(|y<rsub|2>|)>\<in\>U<rsub|\<chi\>>>
        [see <reference|eq 14.207.111>], so using <reference|eq 12.99> we
        have <math|<around*|\<\|\|\>|g<around*|(|y<rsub|1>|)>-g<around*|(|y<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|f<around*|(|g<around*|(|y<rsub|1>|)>|)>-f<around*|(|g<around*|(|y<rsub|2>|)>|)>|\<\|\|\>><rsub|X>=2\<cdot\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|X>>
        giving\ 

        <\equation>
          <label|eq 12.100><around*|\<\|\|\>|g<around*|(|y<rsub|1>|)>-g<around*|(|y<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|X>
        </equation>

        So if <math|\<varepsilon\>\<gtr\>0> and
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        then for all <math|y<rprime|'>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        with <math|<around*|\<\|\|\>|y-y<rprime|'>|\<\|\|\>><rsub|X>\<less\><frac|\<varepsilon\>|2>>
        we have <math|<around*|\<\|\|\>|g<around*|(|y|)>-g<around*|(|y<rprime|'>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><frac|\<varepsilon\>|2>=\<varepsilon\>>
        proving that <math|g> is continuous on
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>.
      </proof>

      Next we prove that <math|g> is differentiable.

      <\conjecture>
        <label|g is differentiable><math|g> is differentiable on
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        and <math|D g<around*|(|y|)>=<around*|(|D
        f<around*|(|g<around*|(|y|)>|)>|)><rsup|-1>>
      </conjecture>

      <\proof>
        Now if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        we have that <math|g<around*|(|y|)>\<in\>U<rsub|\<chi\>>\<Rightarrowlim\><rsub|<text|<reference|eq
        12.95>>>g<around*|(|y|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>\<subseteq\><rsub|<text|<reference|eq
        14.199.111>>>U> we have by <reference|eq 12.9> that <math|D
        f<around*|(|g<around*|(|y|)>|)>> is a toplinear isomorphism so that
        <math|D f<around*|(|g<around*|(|y|)>|)><rsup|-1>> is continuous and
        linear. Take now <math|h\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)><rsub|y>\<Rightarrow\>y+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        then for <math|k> defined by

        <\equation>
          <label|eq 12.101>k=g<around*|(|y+h|)>-g<around*|(|y|)>
        </equation>

        we have <math|k+g<around*|(|y|)>=g<around*|(|y+h|)>\<in\>g<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>\<equallim\><rsub|<text|<reference|eq
        14.207.111>>>U<rsub|\<chi\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\<chi\>>><around*|(|0,\<rho\>|)>\<subseteq\><rsub|<text|<reference|eq
        14.199.111>>>U\<Rightarrow\>k\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|)><rsub|g<around*|(|y|)>>\<subseteq\>U<rsub|g<around*|(|y|)>>>.
        As <math|f> is differentiable at <math|g<around*|(|y|)>> [for
        <math|g<around*|(|y|)>\<in\>U>] there exists a
        <math|\<varepsilon\>>-mapping <math|\<zeta\>:U<rsub|g<around*|(|y|)>>\<rightarrow\>X>
        such that\ 

        <\equation>
          <label|eq 12.102>f<around*|(|g<around*|(|y|)>+k|)>-f<around*|(|g<around*|(|y|)>|)>-D
          f<around*|(|g<around*|(|y|)>|)><rsup|><around*|(|k|)>=\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>
        </equation>

        So using <math|f<around*|(|g<around*|(|y|)>+k|)>\<equallim\>f<around*|(|g<around*|(|y+h|)>|)>=y+h>
        and <math|f<around*|(|g<around*|(|y|)>|)>=y> it follows that
        <math|f<around*|(|g<around*|(|y|)>+k|)>-f<around*|(|g<around*|(|y|)>|)>=h>,
        hence using <reference|eq 12.102> we have

        <\equation>
          <label|eq 12.103>h=D f<around*|(|g<around*|(|y|)>|)><around*|(|k|)>+\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>
        </equation>

        Applying <math|D f<around*|(|g<around*|(|y|)>|)><rsup|-1>> to both
        sides of <reference|eq 12.103> and using linearity we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|D f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>>|<cell|=>|<cell|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|D
          f<around*|(|g<around*|(|y|)>|)><around*|(|k|)>+\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|D
          f<around*|(|g<around*|(|y|)>|)><around*|(|k|)>|)>+D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|k+D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|y+h|)>-g<around*|(|y|)>+D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|y+h|)>-g<around*|(|y|)>+D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>\<cdot\><around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X><eq-number><label|eq
          12.104>>>>>
        </eqnarray*>

        Giving\ 

        <\equation>
          <label|eq 12.105>g<around*|(|y+h|)>-g<around*|(|y|)>-D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=-D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>\<cdot\><around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>
        </equation>

        Define\ 

        <\equation*>
          \<varepsilon\>:<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)><rsub|y>\<rightarrow\>X
          by \<varepsilon\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|0
          if h=0>>|<row|<cell|-D f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>\<cdot\><frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
          if h\<neq\>0>>>>>
        </equation*>

        We have then, using the fact that
        <math|g<around*|(|y+0|)>-g<around*|(|y|)>-D
        f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|0|)>=0>, it
        follows that

        <\equation>
          <label|eq 12.106>g<around*|(|y+h|)>-g<around*|(|y|)>-D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
        </equation>

        Note that in the proof of the previous conjecture [see <reference|eq
        12.100>] we have as <math|y+h,y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        that \ <math|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|y+h-y|\<\|\|\>><rsub|X>=2*\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
        hence if <math|h\<neq\>0> then

        <\equation>
          <label|eq 12.107><frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<leqslant\>2
        </equation>

        So let <math|\<gamma\>\<less\>0> then by continuity of
        <math|\<zeta\>> at <math|0> there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\<\|\|\>|\<zeta\><around*|(|z|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>>.
        By continuity of <math|g> at <math|y> there exists a
        <math|\<delta\><rsub|\<gamma\>>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|\<gamma\>>>
        then <math|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>
        so that <math|<around*|\<\|\|\>|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>>.
        In other words we have

        <\equation>
          <label|eq 12.108>\<forall\>\<gamma\>\<gtr\>0 there exists a
          \<delta\><rsub|\<gamma\>>\<gtr\>0 such that if
          <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<gamma\> then
          <around*|\<\|\|\>|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>
        </equation>

        Take now <math|\<mu\>\<gtr\>0> and take
        <math|\<gamma\>=<frac|\<mu\>|2\<cdot\><around*|(|<around*|\<\|\|\>|D
        f<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>+1|)>>\<gtr\>0>
        then there exists by the above a <math|\<delta\><rsub|\<gamma\>>\<gtr\>0>
        such that if <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|\<gamma\>>>
        then

        <\equation>
          <label|eq 14.219.111.1><around*|\<\|\|\>|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|\<\|\|\>><rsub|X>\<less\><frac|\<mu\>|2\<cdot\><around*|(|<around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>+1|)>>
        </equation>

        Using the definition of <math|\<varepsilon\>> we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          12.107>>>>|<cell|2\<cdot\><around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1>>>|<cell|2\<cdot\><around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
          14.219.111.1>>>>|<cell|2\<cdot\><around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>\<cdot\><frac|\<mu\>|2\<cdot\><around*|(|<around*|\<\|\|\>|D
          f<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>+1|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<mu\>>>>>
        </eqnarray*>

        Proving as <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|0|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|X>=0\<less\>\<mu\>><space|1em>that
        <math|\<varepsilon\>> is continuous at <math|0> and thus a
        <math|\<varepsilon\>>-mapping. This together with the linearity
        ,continuity of <math|D f<around*|(|g<around*|(|y|)>|)><rsup|-1>> and
        <reference|eq 12.106> proves that <math|g> is differentiable at
        <math|y> with differential <math|D g<around*|(|y|)>=D
        f<around*|(|g<around*|(|y|)>|)><rsup|-1>>. This concludes the proof
        of the conjecture <reference|g is differentiable>.
      </proof>

      Next w have to extend this to the case of <math|C<rsup|r>> functions to
      prove the proposition <reference|inverse theorem for Df(0)=1X>. To do
      this take <math|\<tau\>:\<cal-G\>L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
      defined by <math|L\<rightarrow\>\<tau\><around*|(|L|)>=L<rsup|-1>> [see
      <reference|inverse mapping is c-infinite>] then we have if
      <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      that <math|<around*|(|\<tau\>\<circ\>D
      f\<circ\>g|)><around*|(|y|)>=\<tau\><around*|(|D
      f<around*|(|g<around*|(|y|)>|)>|)>=D
      f<around*|(|g<around*|(|y|)>|)><rsup|-1>\<equallim\><rsub|<text|<reference|g
      is differentiable>>>D g<around*|(|y|)>> proving that\ 

      <\equation>
        <label|eq 12.109>\<tau\>\<circ\>D f\<circ\>g=D g
      </equation>

      Next we use induction to prove that <math|g> is <math|C<rsup|r>>, so
      let <math|S=<around*|{|n\<in\>\<bbb-N\>\|if n\<leqslant\>r then g is
      C<rsup|n>|}>> then we have

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>Then \ using <reference|inverse
        mapping is c-infinite> we have that <math|\<tau\>> is
        <math|C<rsup|\<infty\>>> and thus <math|\<tau\>> is continuous, by
        assumption <math|D f> is continuous and we have proved that <math|g>
        is continuous [see <reference|proposition 12.118>] so we must have
        that <math|D g> is continuous, proving that <math|g> is
        <math|C<rsup|1>> and thus that <math|1\<in\>S>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Then
        if <math|n+1\<leqslant\>r> we have that <math|g> is <math|C<rsup|n>,>
        <math|\<tau\>> is <math|C<rsup|\<infty\>>> and <math|f> is
        <math|C<rsup|r>> so that <math|D g=\<tau\>\<circ\>D f\<circ\>g> is
        <math|C<rsup|n>> hence <math|g> is <math|C<rsup|n+1>> proving that
        <math|n+1\<in\>S>
      </description>

      Using induction we have then that <math|S=\<bbb-N\>> so as
      <math|r\<in\>\<bbb-N\>=S> and <math|r\<leqslant\>r> we have <math|g> is
      <math|C<rsup|r>>. This proves that\ 

      <\equation*>
        f<rsub|\|U<rsub|\<chi\>>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>
        is a diffeomorphism of class C<rsup|r>
      </equation*>

      Further as <math|f<around*|(|0|)>=0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      we have <math|0\<in\>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>>
      and as <math|U<rsub|\<chi\>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)><big|cap>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>>
      we have that <math|0\<in\>U<rsub|\<chi\>>>. To summarize

      <\equation*>
        f<around*|(|0|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)><infix-and>0\<in\>U<rsub|\<chi\>>
      </equation*>

      This proves that <math|f> is a local <math|C<rsup|r>> diffeomorphism at
      <math|0> and thus proves this proposition [see <reference|inverse
      theorem for Df(0)=1X>].

      \;
    </proof>

    Next we must extend proposition <reference|inverse theorem for Df(0)=1X>
    to the more general case.

    <\proposition>
      <label|proposition 12.120>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|Y>|\<\|\|\>>|\<rangle\>>>
      be Banach spaces over <math|\<bbb-R\>>, <math|U\<subseteq\>X> an open
      set, <math|f:U\<rightarrow\>Y> a differentiable function of class
      <math|C<rsup|r>>, <math|r\<in\>\<bbb-N\>>. Assume that for a
      <math|0\<in\>U> we have that <math|f<around*|(|0|)>=0> and that <math|D
      f<around*|(|0|)>:X\<rightarrow\>Y> is a isomorphism then <math|f> is a
      local diffeomorphism of class <math|C<rsup|r>> at <math|0>.
    </proposition>

    <\proof>
      As \ <math|D f<around*|(|0|)>> is continuous, linear and a isomorphism
      we have by <reference|in Banach spaces linear continuous mappings are
      toplinear> that <math|D f<around*|(|0|)>> is toplinear so that <math|D
      f<around*|(|0|)><rsup|-1>:Y\<rightarrow\>X> is defined, linear and
      continuous and thus by <reference|linear continuous mappings are
      C^infinity> is <math|C<rsup|\<infty\>>>. Define\ 

      <\equation*>
        h=D f<around*|(|0|)><rsup|-1>\<circ\>f:U\<rightarrow\>X
      </equation*>

      which by the above and the chain rule [see <reference|generalized chain
      rule>] \ is differentiable on <math|U> of class <math|C<rsup|r>>.
      \ Then

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|0|)>>|<cell|=>|<cell|<around*|(|D
        f<around*|(|0|)><rsup|-1>\<circ\>f|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|0|)><rsup|-1><around*|(|f<around*|(|0|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<around*|(|0|)>=0>>|<cell|D
        f<around*|(|0|)><rsup|-1><around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|linearity>>|<cell|0<eq-number><label|eq
        14.221.111>>>>>
      </eqnarray*>

      Also\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D h<around*|(|0|)>>|<cell|=>|<cell|D<around*|(|D
        f<around*|(|0|)><rsup|-1>|)><around*|(|f<around*|(|0|)>|)>\<circ\>D
        f<around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\>>|D
        f<around*|(|0|)><rsup|-1>\<circ\>D
        f<around*|(|0|)>>|<row|<cell|>|<cell|=>|<cell|\<bbb-1\><rsub|X><eq-number><label|eq
        14.222.111>>>>>
      </eqnarray*>

      So by <reference|inverse theorem for Df(0)=1X>\ 

      <\equation>
        <label|eq 14.223.111>\<exists\>U<rsub|0>,V<rprime|'><rsub|0> open in
        X with 0\<in\>U<rsub|0>,0\<in\>V<rsub|0><rprime|'> and
        h<rsub|\|U<rsub|0>>:U<rsub|0>\<rightarrow\>V<rprime|'><rsub|0> \ a
        diffeomorphism of class C<rsup|r>
      </equation>

      As <math|D f<around*|(|0|)>> is continuous, linear and a isomorphism we
      have by <reference|in Banach spaces linear continuous mappings are
      toplinear> that <math|D f<around*|(|0|)>> is toplinear and thus open.
      Hence\ 

      <\equation*>
        V<rsub|0>=D f<around*|(|0|)><around*|(|V<rprime|'><rsub|0>|)> is open
        in X
      </equation*>

      Further as <math|D f<around*|(|0|)><rsub|>> is linear, continuous and a
      isomorphisme we have by <reference|linear isomrophisms between b=Banach
      spaces are C^oo> that <math|D f<around*|(|0|)>> is a diffeomorphism of
      class <math|C<rsup|\<infty\>>>. Applying then <reference|diffeomorphism
      is a local property> gives\ 

      <\equation>
        <label|eq 14.224.111>D f<around*|(|0|)><rsub|\|V<rprime|'><rsub|0>>:V<rprime|'><rsub|0>\<rightarrow\>D
        f<around*|(|0|)><around*|(|V<rprime|'><rsub|0>|)>\<equallim\><rsub|def>V<rsub|0>
        is a diffeomorphism of class C<rsup|\<infty\>>
      </equation>

      Next as <math|0\<in\>V<rprime|'><rsub|0>> and <math|D
      f*<around*|(|0|)><rsub|\|V<rprime|'>0><around*|(|0|)>=D
      f<around*|(|0|)>=0> it follows that\ 

      <\equation*>
        0\<in\>V<rsub|0>
      </equation*>

      Take now

      <\equation*>
        g=D f<around*|(|0|)><rsub|\|V<rprime|'><rsub|0>>\<circ\>h<rsub|\|U<rsub|0>>:U<rsub|0>\<rightarrow\>V<rsub|0>
      </equation*>

      then as <math|g> is a composition of a diffeomorphism of class
      <math|C<rsup|r>> [see <reference|eq 14.223.111>] and a
      <math|C<rsup|\<infty\>> > diffeomorphism [by <reference|eq 14.224.111>]
      we have using <reference|composition of diffeomorphism is a
      diffeomorphism> that <math|g> is a diffeomorphism of class
      <math|C<rsup|r>.> If now <math|x\<in\>U<rsub|0>> then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|<around*|(|D
        f<around*|(|0|)><rsub|\|V<rprime|'><rsub|0>>\<circ\>h<rsub|\|U<rsub|0>>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|0|)><rsub|\|V<rprime|'><rsub|0>><around*|(|h<rsub|<around*|\||U<rsub|0>|\<nobracket\>>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|0|)><around*|(|<around*|(|D
        f<around*|(|0|)><rsup|-1>\<circ\>f|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|0|)><around*|(|D f<around*|(|0|)><rsup|-1><around*|(|f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        f<rsub|\|U<rsub|0>>=g
      </equation*>

      and as <math|g> s a diffeomorphism of class <math|C<rsup|r>> it follows
      that <math|f<rsub|\|U<rsub|0>>> is a diffeomorphism of class
      <math|C<rsup|r>>.
    </proof>

    Finally we extend the above proposition to the general case, so lets
    repeat the Inverse Function Theorem

    <\proposition>
      Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|Y>|\<\|\|\>>|\<rangle\>>>
      be Banach spaces over <math|\<bbb-R\>>, <math|V\<subseteq\>Y>,
      <math|U\<subseteq\>X> a open set, <math|f:U\<rightarrow\>V> a
      differentiable function of class <math|C<rsup|r>>,
      <math|r\<in\>\<bbb-N\>>. Assume that for a <math|x<rsub|0>\<in\>U> we
      have that <math|D f<around*|(|x<rsub|0>|)>:X\<rightarrow\>Y> is a
      isomorphism then <math|f> is a local diffeomorphism of class
      <math|C<rsup|r>> at <math|x<rsub|0>>.
    </proposition>

    <\proof>
      First define

      <\equation>
        <label|eq 14.225.111>Given y\<in\>Y define
        t<rsup|Y><rsub|y>:Y\<rightarrow\>Y by
        t<rsup|Y><rsub|y><around*|(|x|)>=x+y
      </equation>

      and\ 

      <\equation>
        <label|eq 14.226.111>Given y\<in\>X define
        t<rsup|X><rsub|y><around*|(|x|)>=x+y
      </equation>

      Then as <math|<around*|(|t<rsup|Y><rsub|y>|)><rsup|-1>=t<rsup|Y><rsub|-y>>
      and <math|<around*|(|t<rsup|X><rsub|y>|)><rsup|-1>=t<rsup|X><rsub|-y>>
      we have using <reference|translations are C-infinity> that\ 

      <\equation>
        <label|eq 14.227.111>\<forall\>y\<in\>Y \ t<rsup|Y><rsub|y> is a
        diffeomorphism of class C<rsup|\<infty\>><infix-and>D
        t<rsup|Y><rsub|y>=C<rsub|Y,L<around*|(|Y,Y|)>,\<bbb-1\><rsub|Y>>
      </equation>

      and\ 

      <\equation>
        <label|eq 14.228.111>\<forall\>y\<in\>X \ t<rsup|X><rsub|y> is a
        diffeomorphism of class C<rsup|\<infty\>><infix-and>D
        t<rsup|X><rsub|y>=C<rsub|X,L<around*|(|X,X|)>,\<bbb-1\><rsub|X>>
      </equation>

      Consider then\ 

      <\equation>
        <label|eq 14.229.111>h=t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>t<rsup|X><rsub|x<rsub|0>>:t<rsup|X><rsub|-x<rsub|0>><around*|(|U|)>\<rightarrow\>Y
      </equation>

      then using the Chain Rule [see <reference|chain rule>] we have that
      <math|h> is of class <math|C<rsup|r>> and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|D h<around*|(|0|)>>|<cell|=>|<cell|D<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>t<rsup|X><rsub|x<rsub|0>>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f|)><around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>|)>\<circ\>D
        t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f|)><around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>|)>\<circ\>\<bbb-1\><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f|)><around*|(|x<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|D<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>|)><around*|(|f<around*|(|x<rsub|0>|)>|)>\<circ\>D
        f<around*|(|x<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-1\><rsub|Y>\<circ\>D
        f<around*|(|x<rsub|0>|)>>>|<row|<cell|>|<cell|=>|<cell|D
        f<around*|(|x<rsub|0>|)>>>>>
      </eqnarray*>

      Summarizing we have\ 

      <\equation>
        <label|eq 14.230.111>h is of class C<rsup|r><infix-and>D
        h<around*|(|0|)>=D f<around*|(|x<rsub|0>|)> a isomorphisme
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|h<around*|(|0|)>>|<cell|=>|<cell|<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>t<rsup|X><rsub|x<rsub|0>>|)><around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      So all the conditions for proposition \ <reference|proposition 12.120>
      are met for <math|h> hence there exists open sets
      <math|U<rprime|'><rsub|0>\<subseteq\>X> and
      <math|V<rprime|'><rsub|0>\<subseteq\>Y> such that
      <math|0\<in\>U<rprime|'><rsub|0>> and <math|0\<in\>V<rprime|'><rsub|0>>

      <\equation>
        <label|eq 14.231.111>h<rsub|\|U<rprime|'><rsub|0>>:U<rprime|'><rsub|0>\<rightarrow\>V<rprime|'><rsub|0>
        is a diffeomorphisme of class C<rsup|r>
      </equation>

      Define now <math|U<rsub|x<rsub|0>>=t<rsup|X><rsub|x<rsub|0>><around*|(|U<rprime|'><rsub|0>|)>>
      and <math|V<rsub|f<around*|(|x<rsub|0>|)>>=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|V<rprime|'><rsub|0>|)>>
      [which are open sets because <math|t<rsup|X><rsub|x<rsub|0>>> and
      <math|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>> are continuous and\ 

      <\equation*>
        g=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>\<circ\>h<rsub|\|U<rprime|'><rsub|0>>\<circ\>t<rsup|Y><rsub|-x<rsub|0>>:U<rsub|x<rsub|0>>\<rightarrow\>V<rsub|f<around*|(|x<rsub|0>|)>>
      </equation*>

      Then as <math|><math|t<rsup|X><rsub|-x<rsub|0>>>,
      <math|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>> are
      <math|C<rsup|\<infty\>>> diffeomorphisms [see <reference|eq 14.227.111>
      and <reference|eq 14.228.111>] and <math|h<rsub|\|U<rprime|'><rsub|0>>>
      is a diffeomorphism of class <math|C<rsup|r>> we have by
      <reference|composition of diffeomorphism is a diffeomorphism> that\ 

      <\equation>
        <label|eq 14.232.111>g is a diffeomorphism of class C<rsup|r>
      </equation>

      Further if <math|x\<in\>U<rsub|x<rsub|0>>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|<around*|(|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>\<circ\>h<rsub|\|U<rprime|'><rsub|0>>\<circ\>t<rsup|X><rsub|-x<rsub|0>>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|h<rsub|\|U<rprime|'><rsub|0>><around*|(|t<rsup|X><rsub|-x<rsub|0>><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|h<rsub|\|U<rprime|'><rsub|0>><around*|(|x-x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|h<around*|(|x-x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|<around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>t<rsup|X><rsub|x<rsub|0>>|)><around*|(|x-x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|x-x<rsub|0>|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 14.233.111>g=f<rsub|\|U<rsub|x<rsub|0>>> a diffeomorphism
        of class C<rsup|r>
      </equation>

      Further from <math|0\<in\>U<rprime|'><rsub|0>> we have that
      <math|x<rsub|0>=t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>\<in\>t<rsup|X><rsub|x<rsub|0>><around*|(|U<rprime|'><rsub|0>|)>=U<rsub|x<rsub|0>>>
      and from <math|0\<in\>V<rprime|'><rsub|0>> we have
      <math|f<around*|(|x<rsub|0>|)>=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|0|)>\<in\>t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>*<around*|(|V<rprime|'><rsub|0>|)>=V<rsub|f<around*|(|x<rsub|0>|)>>>
      giving\ 

      <\equation>
        <label|eq 14.234.111>x<rsub|0>\<in\>U<rsub|x<rsub|0>><infix-and>f<around*|(|x<rsub|0>|)>\<in\>V<rsub|f<around*|(|x<rsub|0>|)>>
      </equation>

      Finally from <reference|eq 14.233.111> and <reference|eq 14.234.111>
      proves that\ 

      <\equation*>
        g \ is a local diffeomorphism of class C<rsup|r> at x<rsub|0>
      </equation*>

      \;
    </proof>

    The above proposition proves finally the Inverse Function Theorem
  </proof>

  TODO

  <\corollary>
    <label|inverse of derivative>Given <math|<around*|\<langle\>|\<bbb-K\>,
    <around*|\|||\|>|\<rangle\>>> (where <math|\<bbb-K\>=\<bbb-R\>> or
    <math|\<bbb-C\>>), a normed space, <math|U\<subseteq\>\<bbb-K\>> a open
    set, <math|x\<in\>U> a open set, <math|V\<subseteq\>\<bbb-K\>> and a
    function <math|f:U\<rightarrow\>V> such that <math|\<forall\>x\<in\>U> we
    have that <math|f<rprime|'><around*|(|x|)>> exists and is continuous and
    for <math|x<rsub|0>\<in\>U> we have that
    <math|f<rprime|'><around*|(|x<rsub|0>|)>\<neq\>0> then there exists open
    sets <math|U<rprime|'>,V<rprime|'>> with
    <math|x<rsub|0>\<in\>U<rprime|'>\<subseteq\>U> and
    <math|f<around*|(|x<rsub|0>|)>\<in\>V<rprime|'>\<subseteq\>V> such that
    <math|f<rsub|\|U<rprime|'>>:U<rprime|'>\<rightarrow\>V<rprime|'>> is a
    bijection and <math|<around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)>:V<rprime|'>\<rightarrow\>U<rprime|'>>
    has a derivate\\ref <math|<around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><rsub|><around*|(|x|)>>
    at every <math|x\<in\>V<rprime|'>> such that
    <math|<around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><rsub|><around*|(|x|)>\<cdot\>f<rprime|'><around*|(|f<rsup|-1><around*|(|x|)>|)>=1>.
    \ 
  </corollary>

  <\proof>
    As the existence of a derivate at a point implies differentiability at
    this point (see <reference|differentias and derivates>). Further we have
    that <math|D f:U\<rightarrow\>L<around*|(|\<bbb-K\>;\<bbb-K\>|)>> is
    defined by <math|x\<rightarrow\>D f<around*|(|x|)>> where <math|D
    f<around*|(|x|)><around*|(|t|)>=t\<cdot\>f<rprime|'><around*|(|x|)>>.
    From the continuity of <math|f<rprime|'>> it follows that given a
    <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
    such that <math|\<forall\>y\<in\>U> with
    <math|<around*|\||y-x|\|>\<less\>\<varepsilon\>> we have that
    <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>-f<rprime|'><around*|(|y|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    Further <math|\<forall\>t\<in\>\<bbb-K\>> we have
    <math|<around*|\<\|\|\>|<around*|(|D f<around*|(|x|)>-D
    f<around*|(|y|)>|)><around*|(|t|)>|\<\|\|\>>=<around*|\<\|\|\>|D
    f<around*|(|x|)><around*|(|t|)>=D f<around*|(|y|)><around*|(|t|)>|\<\|\|\>>=<around*|\<\|\|\>|t\<cdot\>f<rprime|'><around*|(|x|)>-t\<cdot\>f<rprime|'><around*|(|y|)>|\<\|\|\>>=<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|f<rprime|'><around*|(|x|)>-f<rprime|'><around*|(|y|)>|\<\|\|\>>\<less\>t\<cdot\>\<varepsilon\>>
    which proves that <math|D f> is continuous on <math|U>. So\ 

    <\equation>
      <label|eq 14.149.020>f is C<rsup|1>
    </equation>

    Further at <math|x<rsub|0>> we have that <math|D
    f<around*|(|x<rsub|0>|)>:\<bbb-K\>\<rightarrow\>\<bbb-K\>> is defined by
    <math|t\<rightarrow\>f<rprime|'><around*|(|x<rsub|0>|)>\<cdot\>t> if we
    define <math|g:\<bbb-K\>\<rightarrow\>\<bbb-K\>> by
    <math|t\<rightarrow\><frac|t|f<rprime|'><around*|(|x<rsub|0>|)>>> then we
    have that <math|<around*|(|D f<around*|(|x<rsub|0>|)>\<circ\>g|)><around*|(|t|)>=<around*|(|<frac|t|f<rprime|'><around*|(|x<rsub|0>|)>>|)>\<cdot\>f<rprime|'><around*|(|x<rsub|0>|)>=t=1<rsub|\<bbb-K\>><around*|(|t|)>>
    and <math|<around*|(|g\<circ\>D f<around*|(|x<rsub|0>|)>|)><around*|(|t|)>=<around*|(|f<rprime|'><around*|(|x<rsub|0>|)>\<cdot\>t|)>\<cdot\><frac|1|f<rprime|'><around*|(|x<rsub|0>|)>>=t=1<rsub|\<bbb-K\>><around*|(|t|)>>
    proving that\ 

    <\equation>
      <label|eq 14.150.020>D f<around*|(|x<rsub|0>|)> is a bijection and
      <around*|(|D f<around*|(|x<rsub|0>|)>|)><rsup|-1>
    </equation>

    Using <reference|eq 14.149.020> and <reference|eq 14.150.020> we can
    apply the Inverse Function Theorem (see <reference|inverse function
    theorem>) then <math|f> is a local diffeomorphism of class
    <math|C<rsup|>>\<gtr\> Hence there exists a
    <math|U<rprime|'>,V<rprime|'>> open with
    <math|x<rsub|0>\<in\>U<rprime|'>\<subseteq\>U> and
    <math|f<around*|(|x<rsub|0>|)>\<in\>V<rprime|'>\<subseteq\>V> such that
    <math|f<rsub|\|U<rprime|'>>:U<rprime|'>\<rightarrow\>V<rprime|'>> is a
    diffeomorphism. Hence <math|<around*|(|f<rsup|-1>|)><rsub|\|V<rprime|'>>=<around*|(|f<rsub|\|U<rprime|'>>|)><rsup|-1>:V<rprime|'>\<rightarrow\>U<rprime|'>>
    is differentiable on <math|V<rprime|'>> and thus by
    <reference|differentias and derivates>
    <math|<around*|(|f<rsup|-1>|)><rsub|\|V<rprime|'>>> has a derivate at
    every point on <math|V<rprime|'>>. As
    <math|f<rsub|\|U<rprime|'>>\<circ\>f<rsub|\|U<rprime|'>><rsup|-1>=1<rsub|U<rprime|'>>>
    we have that <math|\<forall\>x\<in\>V<rprime|'>> that
    <math|1=<around*|(|1<rsub|\|U<rprime|'>>|)><rprime|'><around*|(|x|)>\<equallim\><rsub|<text|<reference|derivative
    and composition>>><around*|(|f<rsub|\|U<rprime|'>>|)><rprime|'><around*|(|f<rsub|\|U<rprime|'>><rsup|-1><around*|(|x|)>|)>\<cdot\><around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><around*|(|x|)>\<equallim\><rsub|<text|<reference|derivative
    is local>>>f<rprime|'><around*|(|f<rprime|'><rsub|\|U<rprime|'>><rsup|-1><around*|(|x|)>|)>\<cdot\><around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|f<rsup|-1><around*|(|x|)>|)>\<cdot\><around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><around*|(|x|)>>
    proving that\ 

    <\equation*>
      f<rprime|'><around*|(|f<rsup|-1><around*|(|x|)>|)>\<cdot\><around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><around*|(|x|)>=1
    </equation*>
  </proof>

  \;

  A import conclusion of the Inverse Function Theorem is the below Implicit
  Function Theorem.

  <\lemma>
    Let <math|X,Y,Z> be vector spaces over the field <math|\<bbb-K\>> and
    <math|L\<in\>Hom<around*|(|X,Z|)>> and <math|H\<in\>Hom<around*|(|Y,Z|)>>
    such that <math|H<rsup|-1>\<in\>Hom<around*|(|Z,Y|)>> exists then
    <math|T:X\<times\>Y\<rightarrow\>X*\<times\>Z> defined by
    <math|<around*|(|x,y|)>\<rightarrow\><around*|(|x,L<around*|(|x|)>+H<around*|(|y|)>|)>>
    has a inverse <math|S:X\<times\>Z\<rightarrow\>X\<times\>Y> defined by
    <math|<around*|(|x,z|)>\<rightarrow\><around*|(|x,-H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|z|)>|)>>
    so that <math|T> is a<space|1em>we have bijection and thus a isomorphism.
  </lemma>

  <\proof>
    <math|If > <math|<around*|(|x,z|)>\<in\>X\<times\>Z> then
    <math|T<around*|(|S<around*|(|x,z|)>|)>=T<around*|(|x,-H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|z|)>|)>=<around*|(|x,L<around*|(|x|)>+H<around*|(|-H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|z|)>|)>|)>\<equallim\><rsub|<text|H>
    is linear><around*|(|x,L<around*|(|x|)>-H<around*|(|H<rsup|-1><around*|(|L<around*|(|x|)>|)>|)>+H<around*|(|H<rsup|-1><around*|(|z|)>|)>|)>=*<around*|(|x,L<around*|(|x|)>-L<around*|(|x|)>+z|)>=<around*|(|x,z|)>>.
    Also if <math|<around*|(|x,y|)>\<in\>X\<times\>Y> then
    <math|S<around*|(|T<around*|(|x,y|)>|)>=S<around*|(|x,L<around*|(|x|)>+H<around*|(|y|)>|)>=<around*|(|x,-H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|L<around*|(|x|)>+H<around*|(|y|)>|)>|)>\<equallim\><rsub|H<rsup|-1>
    is also linear><around*|(|x,-H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|L<around*|(|x|)>|)>+H<rsup|-1><around*|(|H<around*|(|y|)>|)>|)>=<around*|(|x,y|)>>
  </proof>

  <\theorem>
    <label|implicit function theorem><dueto|Implicit Function Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be Banach spaces, <math|U\<subseteq\>X>, <math|V\<subseteq\>Y> be open
    sets and let <math|f:U\<times\>V\<rightarrow\>Z> be a differentiable
    function of class <math|C<rsup|r>,r\<in\>\<bbb-N\>>. Assume that
    <math|\<exists\>x<rsub|0>\<in\>U>, <math|\<exists\>y<rsub|0>\<in\>V> such
    that <math|D<rsub|2>f<around*|(|x<rsub|0>,y<rsub|0>|)>:Y\<rightarrow\>Z>
    is a isomorphism then there exists a open set
    <math|W<rsub|0>\<subseteq\>U\<times\>Z> and a open set
    <math|V<rsub|0>\<subseteq\>V> with <around*|\<nobracket\>|
    <math|<around*|(|x<rsub|0,>f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>\<in\>W<rsub|0>>|)>
    such that there exists a unique <math|C<rsup|r>> map
    <math|g:W<rsub|0><rsub|>\<rightarrow\>V<rsub|0>> such that
    <math|g<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=y<rsub|0>>
    and \ <math|\<forall\>x,z\<in\>W<rsub|0>> we have
    <math|f<around*|(|x,g<around*|(|x,z|)>|)>=z>, furthermore we have that\ 

    <\itemize-dot>
      <item><math|D<rsub|1>g<around*|(|x,z|)>=-<around*|[|D<rsub|2>f<around*|(|x,g<around*|(|x,z|)>|)>|]><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<around*|(|x,z|)>|)>>

      <item><math|D<rsub|2>g<around*|(|x,z|)>=<around*|[|D<rsub|2>f<around*|(|x,g<around*|(|x,z|)>|)>|]><rsup|-1>>
    </itemize-dot>

    <\proof>
      Define <math|\<varphi\>:U\<times\>V\<rightarrow\>X\<times\>Z> by
      <math|<around*|(|x,y|)>\<rightarrow\>\<varphi\><around*|(|x,y|)>=<around*|(|x,f<around*|(|x,y|)>|)>>
      then as <math|\<pi\><rsup|X\<times\>Z><rsub|1>\<circ\>\<varphi\>=<around*|(|\<pi\><rsub|1><rsup|X\<times\>Y>|)><rsub|\|U\<times\>V>>
      a restriction of a continuous linear function which is
      <math|C<rsup|\<infty\>>> with differential
      <math|D<rsup|1><around*|(|\<pi\><rsub|1><rsup|X\<times\>Z>\<varphi\>|)><around*|(|x,y|)>=\<pi\><rsub|1><rsup|X\<times\>Y>>
      and <math|\<pi\><rsub|2><rsup|X\<times\>Z>\<circ\>\<varphi\>=f> we have
      that <math|\<pi\><rsub|2><rsup|X\<times\>Z>\<circ\>\<varphi\>> is
      <math|C<rsup|r>> and by <reference|differentiability implies partial
      differentiability> we have that <math|D<rsup|1><around*|(|\<pi\><rsub|2><rsup|X\<times\>Z>\<circ\>\<varphi\>|)><around*|(|x,y|)>=D<rsup|1><rsub|1>f<around*|(|x|)>\<circ\>\<pi\><rsub|1><rsup|X\<times\>Y>+D<rsup|1><rsub|2>f<around*|(|x|)>\<circ\>\<pi\><rsub|2><rsup|X\<times\>Y>>.
      Using <reference|C^n of multivalued functions> and<reference|n-times
      differentiability of multi valued function> we have that
      <math|\<varphi\>> is <math|C<rsup|r>> with
      <math|\<pi\><rsub|1>\<circ\>D<rsup|1>\<varphi\><around*|(|x,y|)>=\<pi\><rsub|1><rsup|X\<times\>Y>>
      and <math|\<pi\><rsub|2>\<circ\>D<rsup|1>\<varphi\><around*|(|x,y|)>=D<rsup|1><rsub|1>f<around*|(|x|)>\<circ\>\<pi\><rsub|1><rsup|X\<times\>Y>+D<rsup|1><rsub|2>f<around*|(|x|)>\<circ\>\<pi\><rsub|2>>.
      So at <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>U\<times\>V> we have
      that <math|D<rsup|1>f<around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x,y|)>=<around*|(|x,D<rsup|1><rsub|1>f<around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|x|)>+D<rsup|1><rsub|2>f<around*|(|x<rsub|0>,y<rsub|0>|)><around*|(|y|)>|)>>
      Using the above lemma and the fact that
      <math|D<rsub|2>f<around*|(|x<rsub|0>,y<rsub|0>|)>> is a isomorphism we
      have that <math|D<rsup|1>\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>
      is a isomorphism. Using the Inverse Function Theorem (see
      <reference|inverse function theorem>), so there exists open sets
      <math|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>\<subseteq\>U\<times\>V,V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>\<subseteq\>X\<times\>Z>
      with <math|<around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>U<rsub|x<rsub|0>>>
      and <math|<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>\<in\>V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>>
      such that

      <\equation>
        <label|eq 12.128>\<varphi\><rsub|\|U<around*|(|x<rsub|0>,y<rsub|0>|)>>:U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>\<rightarrow\>V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>
        is a local diffeomorphisme of class C<rsup|r>
      </equation>

      where

      <\equation>
        <label|eq 12.129>W<rsub|0>\<equallim\><rsub|def>V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|>|)>>=\<varphi\><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>\<subseteq\>U\<times\>Z
        and \<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>><around*|(|x<rsub|0>,y<rsub|0>|)>=<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>
      </equation>

      So <math|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1>:V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>\<rightarrow\>U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>
      exists and is <math|C<rsup|r>>. So if
      <math|<around*|(|x,z|)>\<in\>V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>>
      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,z|)>>|<cell|=>|<cell|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<pi\><rsup|X\<times\>Y><rsub|1><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>,\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<pi\><rsup|X\<times\>Y><rsub|1><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>,f<around*|(|\<pi\><rsup|X\<times\>Y><rsub|1><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>,\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>|)>|)>>>>>
      </eqnarray*>

      so that <math|x=\<pi\><rsup|X\<times\>Y><rsub|1><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>>
      and thus we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|x,z|)>>|<cell|=>|<cell|<around*|(|x,f<around*|(|x,\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|>>|<row|<cell|z>|<cell|=>|<cell|f<around*|(|x,\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>|)>>>>>
      </eqnarray*>

      so if we take

      <\equation>
        <label|eq 12.130>g:<rsub|>W<rsub|0>\<rightarrow\>V by
        <around*|(|x,z|)>\<rightarrow\>g<around*|(|z|)>=\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x,z|)>|)>\<in\>\<pi\><rsup|X\<times\>Y><rsub|2><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>=V<rsub|0>\<subseteq\>V
      </equation>

      where\ 

      <\equation*>
        V<rsub|0>=\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>
        is open because of <text|<reference|projection map is open and open>>
      </equation*>

      we have\ 

      <\equation>
        \<forall\><around*|(|x,z|)>\<in\>W<rsub|0>=V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>
        we have f<around*|(|x,g<around*|(|x,z|)>|)>=z
      </equation>

      As from <reference|eq 12.129> we have
      <math|\<varphi\><rsub|\|u<rsub|<around*|(|X<rsub|0>,Y<rsub|0>|)>>><around*|(|x<rsub|0>,y<rsub|0>|)>=<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>>
      it follows that <math|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=<around*|(|x<rsub|0>,y<rsub|0>|)>\<Rightarrow\>y<rsub|0>=\<pi\><rsub|2><around*|(|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1><around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)>=g<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>>
      proving that

      <\equation>
        g<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=y<rsub|0>
      </equation>

      Next as <math|\<pi\><rsub|2><rsup|X\<times\>Y>> is
      <math|C<rsup|\<infty\>>> (being continuous and linear) and
      <math|><math|<around*|(|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>|)><rsup|-1>><space|1em>is
      <math|C<rsup|r>> we have that\ 

      <\equation>
        g is C<rsup|r>
      </equation>

      and we have proved the first assertion of the theorem.\ 

      To prove uniqueness assume, that there is a
      <math|h:W<rsub|0>\<rightarrow\>V<rsub|0>=\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>>
      \ with <math|\<forall\><around*|(|x,z|)>\<in\>W<rsub|0>>
      <math|f<around*|(|x,h<around*|(|x,z|)>|)>=z> so that
      <math|\<exists\><around*|(|x<rsub|1>,z<rsub|1>|)>> with
      <math|g<around*|(|x<rsub|1>,z<rsub|1>|)>\<neq\>h<around*|(|x<rsub|1>,z<rsub|1>|)>>
      and derivate a contradiction. As <math|<around*|(|x<rsub|1>,z<rsub|1>|)>\<in\>W<rsub|0>=V<rsub|\<varphi\><around*|(|x<rsub|0>,y<rsub|0>|)>>\<equallim\><rsub|<text|<reference|eq
      12.128>>>\<varphi\><rsub|\|U<around*|(|x<rsub|0>,y<rsub|0>|)>><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>>
      there exists a <math|<around*|(|x<rsub|2>,y<rsub|2>|)>\<in\>U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>
      such that <math|<around*|(|x<rsub|1>,z<rsub|1>|)>=\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>><around*|(|x<rsub|2>,y<rsub|2>|)>=\<varphi\><around*|(|x<rsub|2>,y<rsub|2>|)>=<around*|(|x<rsub|2>,f<around*|(|x<rsub|2>,y<rsub|2>|)>|)>\<Rightarrow\>x<rsub|1>=x<rsub|2>\<in\>\<pi\><rsub|1><rsup|X\<times\>Y><around*|(|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>|)>>
      and as <math|h<around*|(|x<rsub|1>,z<rsub|1>|)>,g<around*|(|x<rsub|1>,z<rsub|1>|)>\<in\>V<rsub|0>=\<pi\><rsub|2><rsup|X\<times\>Y><around*|(|U<rsub|<around*|(|x<rsub|,y<rsub|0>>|)>>|)>>
      proving that <math|<around*|(|x<rsub|1>,g<around*|(|x<rsub|1>,z<rsub|1>|)>|)>,<around*|(|x<rsub|2>,h<around*|(|x<rsub|2>,z<rsub|2>|)>|)>\<in\>U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>
      so that <math|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>><around*|(|x<rsub|1>,g<around*|(|x<rsub|1>,z<rsub|1>|)>|)>=\<varphi\><around*|(|x<rsub|1>,g<around*|(|x<rsub|1>,z<rsub|1>|)>|)>=<around*|(|x<rsub|1>,f<around*|(|x<rsub|1>,g<around*|(|x<rsub|1>,z<rsub|1>|)>|)>|)>=<around*|(|x<rsub|1>,z<rsub|1>|)>=<around*|(|x<rsub|1>,f<around*|(|x<rsub|1>,h<around*|(|x<rsub|1>,z<rsub|1>|)>|)>|)>=\<varphi\><around*|(|x<rsub|1>,h<around*|(|x<rsub|1>,z<rsub|1>|)>|)>=\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>><around*|(|x<rsub|1>,h<around*|(|x<rsub|1>,z<rsub|1>|)>|)>\<Rightarrowlim\><rsub|\<varphi\><rsub|\|U<rsub|<around*|(|x<rsub|0>,y<rsub|0>|)>>>
      is injective><around*|(|x<rsub|1>,g<around*|(|x<rsub|1>,z<rsub|1>|)>|)>=<around*|(|x<rsub|1>,h<around*|(|x<rsub|1>,z<rsub|1>|)>|)>\<Rightarrow\>g<around*|(|x<rsub|1>,z<rsub|1>|)>=h<around*|(|x<rsub|1>,z<rsub|1>|)>>
      contradicting <math|g<around*|(|x<rsub|1>,z<rsub|1>|)>\<neq\>h<around*|(|x<rsub|1>,z<rsub|1>|)>>.

      Now to prove the differentials of <math|g> note that if
      <math|z\<in\>W<rsub|0>> is fixed then we can define

      <\equation>
        <label|eq 12.131>\<psi\>:W<rsub|0>\<rightarrow\>U\<times\>V by
        <around*|(|x,z|)>\<rightarrow\>\<psi\><around*|(|x,z|)>=<around*|(|x,g<around*|(|x,z|)>|)>
        <around*|(|see <text|<reference|eq 12.129> and <reference|eq
        12.130>>|)>
      </equation>

      if we define then also

      <\equation>
        <label|eq 12.132>f\<circ\>\<psi\>:W<rsub|0>\<rightarrow\>Z
        \ <around*|(|x,z|)>=\<omega\><around*|(|x,z|)>=f<around*|(|x,g<around*|(|x,z|)>|)>=z=\<pi\><rsub|2><around*|(|x,z|)>\<Rightarrow\>f\<circ\>\<psi\>=\<pi\><rsub|2>
      </equation>

      As <math|z=\<pi\><rsub|2><around*|(|x,z|)>=\<pi\><rsub|2><around*|(|<around*|(|\<ast\>,z|)><around*|(|x|)>|)>=<around*|(|\<pi\><rsub|2>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>=C<rsub|W<rsub|0>,z><around*|(|x|)>>
      we have that <math|D<rsub|1><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D<around*|(|<around*|(|f\<circ\>\<psi\>|)>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>=D<around*|(|\<pi\><rsub|2>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>=D<around*|(|C<rsub|W<rsub|0>,z>|)><around*|(|x|)>=C<rsub|X,0>>
      so that\ 

      <\equation>
        <label|eq 12.133>D<rsub|1><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=C<rsub|X,0>
      </equation>

      Note that <math|<around*|(|\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|h|)>=\<psi\><around*|(|h,z|)>=<around*|(|h,g<around*|(|h,z|)>|)>=<around*|(|\<pi\><rsub|1><around*|(|h,z|)>,g<around*|(|h,z|)>|)>=<around*|(|\<pi\><rsub|1><around*|(|\<star\>,z|)><around*|(|h|)>,g<around*|(|<around*|(|\<ast\>,z|)><around*|(|h|)>|)>|)>=<around*|(|<around*|(|\<pi\><rsub|1>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|h|)>,<around*|(|g\<circ\><around*|(|\<star\>,z|)>|)><around*|(|h|)>|)>=<around*|(|\<pi\><rsub|1>\<circ\><around*|(|\<ast\>,z|)>,g\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|h|)>\<Rightarrow\>\<psi\>\<circ\><around*|(|\<ast\>,z|)>=<around*|(|\<pi\><rsub|1>\<circ\><around*|(|\<ast\>,z|)>,g\<circ\><around*|(|\<ast\>,z|)>|)>>
      proving that\ 

      <\equation>
        <label|eq 12.134>\<pi\><rsub|1>\<circ\><around*|(|\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)>=\<pi\><rsub|1>\<circ\><around*|(|\<ast\>,z|)>=1<rsub|W<rsub|0>>
        and \<pi\><rsub|2>\<circ\><around*|(|\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)>=g\<circ\><around*|(|\<ast\>,z|)>
      </equation>

      Using <reference|chain rules of partial differentiable functions> we
      have that <math|D<rsub|1><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D
      f<around*|(|\<psi\><around*|(|x.z|)>|)>\<circ\>D<rsub|1>\<psi\><around*|(|x,z|)>=D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<around*|(|\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|n-times
      differentiability of multi valued function>>>D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>,D<around*|(|\<pi\><rsub|2>\<circ\>\<psi\>\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|eq
      12.134>>>D f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|D<around*|(|1<rsub|W<rsub|0>>|)><around*|(|x|)>,D<around*|(|g\<circ\><around*|(|\<ast\>,z|)>|)><around*|(|x|)>|)>=Df<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|1<rsub|X>,D<rsub|1>g<around*|(|x,z|)>|)>\<equallim\><rsub|<text|<reference|differentiability
      implies partial differentiability>>>D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>\<pi\><rsub|1>\<circ\><around*|(|1<rsub|X>,D<rsub|1>g<around*|(|x,z|)>|)>+D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>\<pi\><rsub|2>\<circ\><around*|(|1<rsub|X>,D<rsub|1>g<around*|(|x,z|)>|)>=D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>+D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|1>g<around*|(|x,z|)>>
      proving that\ 

      <\equation>
        <label|eq 12.135>D<rsub|1><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>+D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|1>g<around*|(|x,z|)>
      </equation>

      Using <reference|eq 12.133> and <reference|eq 12.135> we have that
      <math|D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|1>g<around*|(|x,z|)>=-D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<Rightarrow\>D<rsub|1>g<around*|(|x,z|)>=-D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)><rsup|-1>\<circ\>D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>>
      giving after applying <math|\<psi\><around*|(|x,z|)>=<around*|(|x,g<around*|(|x,z|)>|)>>

      <\equation>
        <label|eq 12.136>D<rsub|1>g<around*|(|x,z|)>=-D<rsub|2>f<around*|(|x,g<around*|(|x,z|)>|)><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<around*|(|x,z|)>|)>
      </equation>

      Now <math|z=\<pi\><rsub|2><around*|(|x,z|)>=\<pi\><rsub|2><around*|(|<around*|(|x,\<ast\>|)><around*|(|z|)>|)>=<around*|(|\<pi\><rsub|2>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>=1<rsub|\<pi\><rsub|1><around*|(|W<rsub|0>|)>><around*|(|z|)>>
      so that\ 

      <\equation>
        <label|eq 12.137>\<pi\><rsub|2>\<circ\><around*|(|x,\<ast\>|)>=1<rsub|\<pi\><rsub|1><around*|(|W<rsub|0>|)>>
      </equation>

      So we have that <math|D<rsub|2><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D<rsub|2><around*|(|\<pi\><rsub|2>|)><around*|(|x,z|)>\<equallim\><rsub|<text|<reference|partial
      differential definition>>>D<around*|(|\<pi\><rsub|2>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>=D<around*|(|1<rsub|\<pi\><rsub|1><around*|(|w<rsub|0>|)>>|)>=1<rsub|X>>
      proving that\ 

      <\equation>
        <label|eq 12.138>D<rsub|2><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=1<rsub|X>
      </equation>

      Note that <math|<around*|(|\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|h|)>=\<psi\><around*|(|x,h|)>=<around*|(|x,g<around*|(|x,h|)>|)>=<around*|(|C<rsub|W<rsub|0>,x><around*|(|h|)>,g<around*|(|<around*|(|x,\<ast\>|)><around*|(|h|)>|)>|)>=<around*|(|C<rsub|W<rsub|0>,x><around*|(|h|)>,<around*|(|g\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|h|)>|)>=<around*|(|C<rsub|W<rsub|0>,x>,g\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|h|)>>
      proving that\ 

      <\equation>
        <label|eq 12.139>\<pi\><rsub|1>\<circ\><around*|(|\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)>=C<rsub|W<rsub|0>,x>
        and \<pi\><rsub|2>\<circ\><around*|(|\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)>=g\<circ\><around*|(|x,\<ast\>|)>
      </equation>

      \ 

      Using <reference|chain rules of partial differentiable functions> we
      have that <math|D<rsub|2><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|2>\<psi\><around*|(|x,z|)>=D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<around*|(|\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>\<equallim\><rsub|<text|<reference|n-times
      differentiability of multi valued function>>>D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>,D<around*|(|\<pi\><rsub|2>\<circ\>\<psi\>\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>|)>\<equallim\><rsub|<text|<reference|eq
      12.139>>>D f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|D<around*|(|C<rsub|W<rsub|0>,x>|)><around*|(|z|)>,D<around*|(|g\<circ\><around*|(|x,\<ast\>|)>|)><around*|(|z|)>|)>=D
      f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\><around*|(|C<rsub|X,0>,D<rsub|2>g<around*|(|x,z|)>|)>=D<rsub|1>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>\<pi\><rsub|1>\<circ\><around*|(|C<rsub|X,0>,D<rsub|2>g<around*|(|x,z|)>|)>+D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>\<pi\><rsub|2>\<circ\><around*|(|C<rsub|X,0>,D<rsub|2>g<around*|(|x,z|)>|)>=D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|2>g<around*|(|x,z|)>>
      proving that

      <\equation>
        <label|eq 12.140>D<rsub|2><around*|(|f\<circ\>\<psi\>|)><around*|(|x,z|)>=D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|2>g<around*|(|x,z|)>
      </equation>

      Using <reference|eq 12.138> and <reference|eq 12.140> we have then that
      <math|1<rsub|X>=D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>\<circ\>D<rsub|2>g<around*|(|x,z|)>\<Rightarrow\>D<rsub|2>g<around*|(|x,z|)>=<around*|(|D<rsub|2>f<around*|(|\<psi\><around*|(|x,z|)>|)>|)><rsup|-1>=<around*|(|D<rsub|2>f<around*|(|x,g<around*|(|x,z|)>|)>|)><rsup|-1>>
      proving

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|>|<cell|<label|eq
        12.141>D<rsub|2>g<around*|(|x,z|)>=<around*|(|D<rsub|2>f<around*|(|x,g<around*|(|x,z|)>|)>|)><rsup|-1><eq-number>>>>>
      </eqnarray*>

      Finally <reference|eq 12.136> and <reference|eq 12.141> proves the
      final part of the theorem.
    </proof>

    A trivial consequence of the implicit theorem is\ 

    <\theorem>
      Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
      and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
      be Banach spaces, <math|U\<subseteq\>X>, <math|V\<subseteq\>Y> be open
      sets and let <math|f:U\<times\>V\<rightarrow\>Z> be a differentiable
      function of class <math|C<rsup|r>,r\<in\>\<bbb-N\>>. Assume that
      <math|\<exists\>x<rsub|0>\<in\>U>, <math|\<exists\>y<rsub|0>\<in\>V>
      such that <math|D<rsub|2>f<around*|(|x<rsub|0>,y<rsub|0>|)>:Y\<rightarrow\>Z>
      is a isomorphism. Then there exists a open set <math|W> with
      <math|x<rsub|0>\<in\>W\<subseteq\>U> and a function
      <math|g:W\<rightarrow\>V> such that
      <math|g<around*|(|x<rsub|0>|)>=y<rsub|0>> and <math|\<forall\>x\<in\>W>
      we have <math|f<around*|(|x,g<around*|(|x|)>|)>=f<around*|(|x<rsub|0>,z<rsub|0>|)>>.
      Further <math|D g<around*|(|x|)>=-<around*|(|D<rsub|2>f<around*|(|x,g<around*|(|x|)>|)>|)><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<around*|(|x|)>|)>>
    </theorem>

    <\proof>
      Using the Implicit Function Theorem there exists a open set
      <math|W<rsub|0>\<subseteq\>U\<times\>Z> with
      <math|<around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>\<in\>W<rsub|0>>
      and a <math|C<rsup|r>> function <math|g<rprime|'>:W<rsub|0>\<rightarrow\>V>
      such that <math|\<forall\><around*|(|x,z|)>\<in\>W<rsub|0>> we have
      <math|f<around*|(|x,g<rprime|'><around*|(|x,z|)>|)>=z> and
      <math|g<rprime|'><around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=y<rsub|0>>.
      Define now <math|g:\<pi\><rsub|1><around*|(|W<rsub|0>|)>=W\<rightarrow\>V>
      defined by <math|x\<rightarrow\>g<around*|(|x|)>=g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>>
      then we have that\ 

      <\equation*>
        g<around*|(|x<rsub|0>|)>=g<rprime|'><around*|(|x<rsub|0>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=y<rsub|0>
      </equation*>

      <math|>and

      <\equation*>
        f<around*|(|x,g<around*|(|x|)>|)>=f<around*|(|x,g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)>=f<around*|(|x<rsub|0>,y<rsub|0>|)>
      </equation*>

      as <math|\<pi\><rsub|1><around*|(|W<rsub|0>|)>=W> is open (see
      <reference|projection map is open and open>) we have that
      <math|g:W\<rightarrow\>V> is the function we search for. Finally if
      <math|x\<in\>W> then <math|<around*|(|g<rprime|'>\<circ\><around*|(|\<ast\>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)><around*|(|x|)>=g<rprime|'><around*|(|<around*|(|\<ast\>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)><around*|(|x|)>|)>=g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=g<around*|(|x|)>>
      proving that <math|g<rprime|'>\<circ\><around*|(|\<ast\>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=g>
      so that <math|-<around*|[|D<rsub|2>f<around*|(|x,g<around*|(|x|)>|)>|]><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<around*|(|x|)>|)>=-<around*|[|D<rsub|2>f<around*|(|x,g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)>|]><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)>\<equallim\><rsub|Implicit
      Function Theorem>D<rsub|1>g<rprime|'><around*|(|x,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>=D<around*|(|g<rprime|'>\<circ\><around*|(|\<ast\>,f<around*|(|x<rsub|0>,y<rsub|0>|)>|)>|)><around*|(|x|)>=D
      g<around*|(|x|)>> proving that

      <\equation*>
        D g<around*|(|x|)>=-<around*|[|D<rsub|2>f<around*|(|x,g<around*|(|x|)>|)>|]><rsup|-1>\<circ\>D<rsub|1>f<around*|(|x,g<around*|(|x|)>|)>
      </equation*>
    </proof>
  </theorem>

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|12>
    <associate|info-flag|minimal>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-first|553>
    <associate|page-height|auto>
    <associate|page-medium|papyrus>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
    <associate|page-type|a4>
    <associate|page-width|auto>
    <associate|preamble|false>
    <associate|section-nr|2>
    <associate|src-special|normal>
    <associate|subsection-nr|2>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|(-H)^n|<tuple|14.143|?>>
    <associate|(01,..,*,..,On) is C@@|<tuple|14.75|452>>
    <associate|(f1,..fn)|<tuple|14.42|?>>
    <associate|(i-\<gtr\>x)-1(A)|<tuple|14.28|?>>
    <associate|(x,h)-\<gtr\>Df(x)(h) differentiability|<tuple|14.85|432>>
    <associate|(x1,..,xi-1,*,xi+1,..,xn)|<tuple|14.25|417>>
    <associate|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)|<tuple|14.33|?>>
    <associate|(x1,...,*,...) is differentiable|<tuple|14.32|417>>
    <associate|B(0,d)=B(x,d)_x|<tuple|14.3|?>>
    <associate|C1 of real or complex function|<tuple|14.57|423>>
    <associate|C^2 differential is symmetric|<tuple|14.121|447>>
    <associate|C^@@=@@-times differentiable|<tuple|14.60|424>>
    <associate|C^n implies C^m|<tuple|14.62|424>>
    <associate|C^n is a local property|<tuple|14.69|427>>
    <associate|C^n of multivalued functions|<tuple|14.80|430>>
    <associate|C^n+m=\<gtr\>c^n is C^m|<tuple|14.63|?>>
    <associate|C^n=\<gtr\>C^n is C^1|<tuple|14.64|?>>
    <associate|D1 and composition|<tuple|14.81|?>>
    <associate|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)|<tuple|14.125|450>>
    <associate|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)|<tuple|14.84|431>>
    <associate|GL(X) is a group|<tuple|14.141|458>>
    <associate|I+H has inverse if norm of H is less then
    1|<tuple|14.148|461>>
    <associate|Jacobian Matrix|<tuple|14.44|421>>
    <associate|Jacobian of linear map|<tuple|14.45|?>>
    <associate|L0,1=[0,1]|<tuple|14.112|?>>
    <associate|Mean Value Theorem 3|<tuple|14.114|447>>
    <associate|Mean value theorem 1|<tuple|14.107|445>>
    <associate|Mean value theorem 2|<tuple|14.110|446>>
    <associate|Mean value theorem for balls|<tuple|14.115|?>>
    <associate|Ux definition|<tuple|14.2|?>>
    <associate|Ux is open|<tuple|14.5|413>>
    <associate|alternative definition of Ux|<tuple|14.4|413>>
    <associate|alternative definition of differentiability
    (2)|<tuple|14.14|416>>
    <associate|alternative definitions of
    differentiability|<tuple|14.12|414>>
    <associate|auto-1|<tuple|14|7>>
    <associate|auto-10|<tuple|derivative|12>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|f<rprime|'>>|12>>
    <associate|auto-12|<tuple|14.1.3|12>>
    <associate|auto-13|<tuple|chain rule|12>>
    <associate|auto-14|<tuple|14.1.4|12>>
    <associate|auto-15|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>|13>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>|13>>
    <associate|auto-17|<tuple|Jacobian|13>>
    <associate|auto-18|<tuple|14.2|14>>
    <associate|auto-19|<tuple|<with|mode|<quote|math>|D<rsup|n>f>|18>>
    <associate|auto-2|<tuple|14.1|11>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|\<infty\>>-differentiability|18>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|C<rsup|n>>|19>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>|21>>
    <associate|auto-23|<tuple|smooth functions|21>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|f<rsup|<around*|(|n|)>>>|21>>
    <associate|auto-25|<tuple|14.3|23>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|+><around*|(|x|)>>|23>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|-><around*|(|x|)>>|23>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|+>>|26>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|->>|28>>
    <associate|auto-3|<tuple|14.1.1|11>>
    <associate|auto-30|<tuple|14.4|28>>
    <associate|auto-31|<tuple|local weak minimum|28>>
    <associate|auto-32|<tuple|local weak maximum|29>>
    <associate|auto-33|<tuple|extremum|29>>
    <associate|auto-34|<tuple|Rolle's theorem|29>>
    <associate|auto-35|<tuple|Lagrange's theorem|29>>
    <associate|auto-36|<tuple|concave function|29>>
    <associate|auto-37|<tuple|convex function|29>>
    <associate|auto-38|<tuple|Fundamental Theorem of Calculus (Classical
    version)|31>>
    <associate|auto-39|<tuple|Fundamental Theorem of Calculus|31>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|U<rsub|x>>|11>>
    <associate|auto-40|<tuple|convex sets|31>>
    <associate|auto-41|<tuple|line segment|31>>
    <associate|auto-42|<tuple|<with|mode|<quote|math>|L<rsub|a,b>>|31>>
    <associate|auto-43|<tuple|14.5|?>>
    <associate|auto-44|<tuple|14.6|?>>
    <associate|auto-45|<tuple|14.7|?>>
    <associate|auto-46|<tuple|toplinear isomorphism|?>>
    <associate|auto-47|<tuple|<with|mode|<quote|math>|\<cal-G\>L<around*|(|X|)>>|?>>
    <associate|auto-48|<tuple|<with|mode|<quote|math>|H<rsup|n>>|?>>
    <associate|auto-49|<tuple|inverse function theorem|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|Df<around*|(|x|)>>|11>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping|11>>
    <associate|auto-7|<tuple|differential of a constant function|11>>
    <associate|auto-8|<tuple|differential of a linear \ function|11>>
    <associate|auto-9|<tuple|14.1.2|11>>
    <associate|balls are convex|<tuple|14.109|445>>
    <associate|chain rule|<tuple|14.22|418>>
    <associate|chain rule (1)|<tuple|14.23|?>>
    <associate|chain rules of partial differentiable
    functions|<tuple|14.36|453>>
    <associate|composition of diffeomorphism is a
    diffeomorphism|<tuple|14.156|465>>
    <associate|composition of differentials on arbitrary
    sets|<tuple|14.88|438>>
    <associate|condition for concavity (convexitivity)|<tuple|14.102|?>>
    <associate|conditions for minimum,maximum of a function|<tuple|14.104|?>>
    <associate|consequence of mean value theorem (2)|<tuple|14.120|?>>
    <associate|constant functions are C^infinite|<tuple|14.73|428>>
    <associate|continuity of partial derivates|<tuple|14.129|?>>
    <associate|continuous billinear functions are
    C^infinity|<tuple|14.77|429>>
    <associate|convex, concave functions|<tuple|14.100|?>>
    <associate|derivative|<tuple|14.18|416>>
    <associate|derivative and composition|<tuple|14.24|?>>
    <associate|derivative and local minimum (maximum)|<tuple|14.103|?>>
    <associate|derivative is local|<tuple|14.20|?>>
    <associate|derivative of product|<tuple|14.48|?>>
    <associate|derivative on a closed interval|<tuple|14.91|?>>
    <associate|diffeomorphism are toplinear|<tuple|14.155|?>>
    <associate|diffeomorphism is a local property|<tuple|14.153|?>>
    <associate|differentiability and restricted mapping|<tuple|14.10|415>>
    <associate|differentiability at x implies continuity at
    x|<tuple|14.15|415>>
    <associate|differentiability at x is independent of
    norms|<tuple|14.9|415>>
    <associate|differentiability definition one|<tuple|14.6|413>>
    <associate|differentiability implies partial
    differentiability|<tuple|14.130|453>>
    <associate|differentiability of K^n|<tuple|14.40|420>>
    <associate|differentiability of finite sum|<tuple|14.72|428>>
    <associate|differentiability of map to product of
    spaces|<tuple|14.43|420>>
    <associate|differentiability of product of functions|<tuple|14.47|421>>
    <associate|differentiability on [a,b]|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|-><around*|(|x|)>>|438>>
    <associate|differentiability on [a,b] equivalences|<tuple|14.92|439>>
    <associate|differentiability on products of metric
    spaces|<tuple|14.35|419>>
    <associate|differential and partial differentials|<tuple|14.131|?>>
    <associate|differential of a billinear mapping|<tuple|14.46|421>>
    <associate|differential of a function|<tuple|14.8|414>>
    <associate|differential of a linear function|<tuple|14.17|416>>
    <associate|differential of the constant function|<tuple|14.16|416>>
    <associate|differentias and derivates|<tuple|14.19|416>>
    <associate|e-mappings|<tuple|14.11|414>>
    <associate|eq 12.1|<tuple|14.4|416>>
    <associate|eq 12.100|<tuple|14.210|467>>
    <associate|eq 12.101|<tuple|14.211|468>>
    <associate|eq 12.102|<tuple|14.212|468>>
    <associate|eq 12.103|<tuple|14.213|468>>
    <associate|eq 12.104|<tuple|14.214|468>>
    <associate|eq 12.105|<tuple|14.215|468>>
    <associate|eq 12.106|<tuple|14.216|468>>
    <associate|eq 12.107|<tuple|14.217|468>>
    <associate|eq 12.108|<tuple|14.218|468>>
    <associate|eq 12.109|<tuple|14.220|468>>
    <associate|eq 12.12|<tuple|14.26|422>>
    <associate|eq 12.128|<tuple|14.237|470>>
    <associate|eq 12.129|<tuple|14.238|?>>
    <associate|eq 12.130|<tuple|14.239|470>>
    <associate|eq 12.131|<tuple|14.243|471>>
    <associate|eq 12.132|<tuple|14.244|471>>
    <associate|eq 12.133|<tuple|14.245|471>>
    <associate|eq 12.134|<tuple|14.246|471>>
    <associate|eq 12.135|<tuple|14.247|471>>
    <associate|eq 12.136|<tuple|14.248|471>>
    <associate|eq 12.137|<tuple|14.249|471>>
    <associate|eq 12.138|<tuple|14.250|471>>
    <associate|eq 12.139|<tuple|14.251|471>>
    <associate|eq 12.140|<tuple|14.252|471>>
    <associate|eq 12.141|<tuple|14.252|471>>
    <associate|eq 12.2|<tuple|14.5|416>>
    <associate|eq 12.37|<tuple|14.83|444>>
    <associate|eq 12.38|<tuple|14.84|444>>
    <associate|eq 12.39|<tuple|14.85|445>>
    <associate|eq 12.40|<tuple|14.86|445>>
    <associate|eq 12.53|<tuple|14.121|450>>
    <associate|eq 12.64|<tuple|14.155|459>>
    <associate|eq 12.65|<tuple|14.156|459>>
    <associate|eq 12.66|<tuple|14.157|459>>
    <associate|eq 12.67|<tuple|14.158|459>>
    <associate|eq 12.68|<tuple|14.159|460>>
    <associate|eq 12.69|<tuple|14.161|460>>
    <associate|eq 12.70|<tuple|14.162|460>>
    <associate|eq 12.71|<tuple|14.164|461>>
    <associate|eq 12.73|<tuple|14.163|461>>
    <associate|eq 12.74|<tuple|14.166|461>>
    <associate|eq 12.75|<tuple|14.167|462>>
    <associate|eq 12.87|<tuple|14.196|465>>
    <associate|eq 12.88|<tuple|14.197|466>>
    <associate|eq 12.89|<tuple|14.198|466>>
    <associate|eq 12.9|<tuple|14.201|466>>
    <associate|eq 12.90|<tuple|14.200|466>>
    <associate|eq 12.92|<tuple|14.202|466>>
    <associate|eq 12.93|<tuple|14.203|466>>
    <associate|eq 12.94|<tuple|14.204|466>>
    <associate|eq 12.95|<tuple|14.161|466>>
    <associate|eq 12.96|<tuple|14.205|467>>
    <associate|eq 12.97|<tuple|14.206|467>>
    <associate|eq 12.98|<tuple|14.207|467>>
    <associate|eq 12.99|<tuple|14.209|467>>
    <associate|eq 13.50.317|<tuple|14.93|?>>
    <associate|eq 13.51.317|<tuple|14.94|?>>
    <associate|eq 13.52.317|<tuple|14.95|?>>
    <associate|eq 13.53.317|<tuple|14.97|?>>
    <associate|eq 13.54.317|<tuple|14.98|?>>
    <associate|eq 13.55.317|<tuple|14.99|?>>
    <associate|eq 13.56.317|<tuple|14.102|?>>
    <associate|eq 13.57.317|<tuple|14.103|?>>
    <associate|eq 14.1.100|<tuple|14.1|?>>
    <associate|eq 14.100.103|<tuple|14.114|?>>
    <associate|eq 14.101.103|<tuple|14.115|?>>
    <associate|eq 14.102.103|<tuple|14.116|?>>
    <associate|eq 14.103.103|<tuple|14.117|?>>
    <associate|eq 14.104.104|<tuple|14.119|?>>
    <associate|eq 14.105.104|<tuple|14.120|?>>
    <associate|eq 14.105.105|<tuple|14.118|?>>
    <associate|eq 14.105.111|<tuple|14.105|?>>
    <associate|eq 14.108.104|<tuple|14.122|?>>
    <associate|eq 14.109.104|<tuple|14.123|?>>
    <associate|eq 14.110.104|<tuple|14.123|?>>
    <associate|eq 14.111.104|<tuple|14.125|?>>
    <associate|eq 14.112.104|<tuple|14.126|?>>
    <associate|eq 14.113.104|<tuple|14.127|?>>
    <associate|eq 14.115.105|<tuple|14.27|?>>
    <associate|eq 14.116.105|<tuple|14.28|?>>
    <associate|eq 14.117.105|<tuple|14.29|?>>
    <associate|eq 14.118.105|<tuple|14.30|?>>
    <associate|eq 14.119.105|<tuple|14.31|?>>
    <associate|eq 14.12.100|<tuple|14.12|?>>
    <associate|eq 14.12.102|<tuple|14.21|?>>
    <associate|eq 14.120.105|<tuple|14.32|?>>
    <associate|eq 14.121.105|<tuple|14.33|?>>
    <associate|eq 14.122.105|<tuple|14.34|?>>
    <associate|eq 14.123.105|<tuple|14.35|?>>
    <associate|eq 14.124.105|<tuple|14.36|?>>
    <associate|eq 14.126.106|<tuple|14.128|?>>
    <associate|eq 14.127.106|<tuple|14.129|?>>
    <associate|eq 14.128.106|<tuple|14.130|?>>
    <associate|eq 14.129.106|<tuple|14.131|?>>
    <associate|eq 14.13.100|<tuple|14.13|?>>
    <associate|eq 14.130.106|<tuple|14.132|?>>
    <associate|eq 14.131.106|<tuple|14.133|?>>
    <associate|eq 14.133.106|<tuple|14.134|?>>
    <associate|eq 14.134.106|<tuple|14.135|?>>
    <associate|eq 14.135.106|<tuple|14.137|?>>
    <associate|eq 14.135.106.1|<tuple|14.136|?>>
    <associate|eq 14.136.106|<tuple|14.138|?>>
    <associate|eq 14.137.106|<tuple|14.139|?>>
    <associate|eq 14.138.106|<tuple|14.140|?>>
    <associate|eq 14.139.106|<tuple|14.141|?>>
    <associate|eq 14.14.100|<tuple|14.14|?>>
    <associate|eq 14.140.106|<tuple|14.143|?>>
    <associate|eq 14.140.2|<tuple|14.142|?>>
    <associate|eq 14.141.106|<tuple|14.144|?>>
    <associate|eq 14.142.106|<tuple|14.145|?>>
    <associate|eq 14.143.106|<tuple|14.146|?>>
    <associate|eq 14.144.106|<tuple|14.147|?>>
    <associate|eq 14.146.106|<tuple|14.148|?>>
    <associate|eq 14.147.107|<tuple|14.151|?>>
    <associate|eq 14.148.107|<tuple|14.152|?>>
    <associate|eq 14.149.020|<tuple|14.235|?>>
    <associate|eq 14.149.107|<tuple|14.153|?>>
    <associate|eq 14.149.111|<tuple|14.149|?>>
    <associate|eq 14.15.100|<tuple|14.15|?>>
    <associate|eq 14.150.020|<tuple|14.236|?>>
    <associate|eq 14.150.107|<tuple|14.154|?>>
    <associate|eq 14.150.111|<tuple|14.150|?>>
    <associate|eq 14.156.110.1|<tuple|14.160|?>>
    <associate|eq 14.16.100|<tuple|14.16|?>>
    <associate|eq 14.160.107|<tuple|14.165|?>>
    <associate|eq 14.163.109|<tuple|14.169|?>>
    <associate|eq 14.163.110.1|<tuple|14.168|?>>
    <associate|eq 14.164.107|<tuple|14.174|?>>
    <associate|eq 14.164.109|<tuple|14.170|?>>
    <associate|eq 14.165.109|<tuple|14.171|?>>
    <associate|eq 14.166.109|<tuple|14.172|?>>
    <associate|eq 14.167.107|<tuple|14.175|?>>
    <associate|eq 14.17.100|<tuple|14.17|?>>
    <associate|eq 14.170.108|<tuple|14.173|?>>
    <associate|eq 14.171.108|<tuple|14.177|?>>
    <associate|eq 14.171.110.2|<tuple|14.176|?>>
    <associate|eq 14.172.108|<tuple|14.178|?>>
    <associate|eq 14.173.108|<tuple|14.179|?>>
    <associate|eq 14.174.108|<tuple|14.179|?>>
    <associate|eq 14.174.109|<tuple|14.181|?>>
    <associate|eq 14.175.109|<tuple|14.182|?>>
    <associate|eq 14.176.109|<tuple|14.183|?>>
    <associate|eq 14.177.109|<tuple|14.184|?>>
    <associate|eq 14.178.109|<tuple|14.185|?>>
    <associate|eq 14.179.109|<tuple|14.186|?>>
    <associate|eq 14.18.100|<tuple|14.18|?>>
    <associate|eq 14.180.109|<tuple|14.187|?>>
    <associate|eq 14.181.109|<tuple|14.188|?>>
    <associate|eq 14.182.109|<tuple|14.189|?>>
    <associate|eq 14.183.109|<tuple|14.191|?>>
    <associate|eq 14.183.109.1|<tuple|14.190|?>>
    <associate|eq 14.184.109|<tuple|14.192|?>>
    <associate|eq 14.185.109|<tuple|14.193|?>>
    <associate|eq 14.186.109|<tuple|14.194|?>>
    <associate|eq 14.188.109|<tuple|14.195|?>>
    <associate|eq 14.19.100|<tuple|14.19|?>>
    <associate|eq 14.199.111|<tuple|14.199|?>>
    <associate|eq 14.2.100|<tuple|14.6|?>>
    <associate|eq 14.20.100|<tuple|14.20|?>>
    <associate|eq 14.207.111|<tuple|14.208|?>>
    <associate|eq 14.21.100|<tuple|14.22|?>>
    <associate|eq 14.219.111.1|<tuple|14.219|?>>
    <associate|eq 14.221.111|<tuple|14.221|?>>
    <associate|eq 14.222.111|<tuple|14.222|?>>
    <associate|eq 14.223.111|<tuple|14.223|?>>
    <associate|eq 14.224.111|<tuple|14.224|?>>
    <associate|eq 14.225.111|<tuple|14.225|?>>
    <associate|eq 14.226.111|<tuple|14.226|?>>
    <associate|eq 14.227.111|<tuple|14.227|?>>
    <associate|eq 14.228.111|<tuple|14.228|?>>
    <associate|eq 14.229.111|<tuple|14.229|?>>
    <associate|eq 14.23.014|<tuple|14.39|?>>
    <associate|eq 14.23.110|<tuple|14.23|?>>
    <associate|eq 14.230.111|<tuple|14.230|?>>
    <associate|eq 14.231.111|<tuple|14.231|?>>
    <associate|eq 14.232.111|<tuple|14.232|?>>
    <associate|eq 14.233.111|<tuple|14.233|?>>
    <associate|eq 14.234.111|<tuple|14.234|?>>
    <associate|eq 14.24.101|<tuple|14.40|?>>
    <associate|eq 14.24.104|<tuple|14.38|?>>
    <associate|eq 14.24.110|<tuple|14.24|?>>
    <associate|eq 14.25.101|<tuple|14.41|?>>
    <associate|eq 14.25.110|<tuple|14.25|?>>
    <associate|eq 14.26.101|<tuple|14.42|?>>
    <associate|eq 14.27.101|<tuple|14.43|?>>
    <associate|eq 14.28.101|<tuple|14.44|?>>
    <associate|eq 14.29.101|<tuple|14.45|?>>
    <associate|eq 14.3.100|<tuple|14.7|?>>
    <associate|eq 14.30.101|<tuple|14.46|?>>
    <associate|eq 14.31.101|<tuple|14.47|?>>
    <associate|eq 14.32.101|<tuple|14.48|?>>
    <associate|eq 14.33.101|<tuple|14.49|?>>
    <associate|eq 14.34.101|<tuple|14.50|?>>
    <associate|eq 14.35.101|<tuple|14.51|?>>
    <associate|eq 14.36.101|<tuple|14.52|?>>
    <associate|eq 14.37.101|<tuple|14.53|?>>
    <associate|eq 14.39.102.3|<tuple|14.54|?>>
    <associate|eq 14.4.100|<tuple|14.8|?>>
    <associate|eq 14.40.102|<tuple|14.56|?>>
    <associate|eq 14.40.102.1|<tuple|14.55|?>>
    <associate|eq 14.41.102|<tuple|14.57|?>>
    <associate|eq 14.43.102|<tuple|14.58|?>>
    <associate|eq 14.44.102.1|<tuple|14.59|?>>
    <associate|eq 14.45.102|<tuple|14.60|?>>
    <associate|eq 14.46.004|<tuple|14.64|?>>
    <associate|eq 14.46.1.004|<tuple|14.62|?>>
    <associate|eq 14.46.102|<tuple|14.61|?>>
    <associate|eq 14.48.103|<tuple|14.63|?>>
    <associate|eq 14.5.100|<tuple|14.9|?>>
    <associate|eq 14.50.103|<tuple|14.65|?>>
    <associate|eq 14.51.103|<tuple|14.66|?>>
    <associate|eq 14.52.103|<tuple|14.67|?>>
    <associate|eq 14.53.103|<tuple|14.68|?>>
    <associate|eq 14.54.103.2|<tuple|14.69|?>>
    <associate|eq 14.55.103|<tuple|14.70|?>>
    <associate|eq 14.56.103.1|<tuple|14.71|?>>
    <associate|eq 14.57.103|<tuple|14.72|?>>
    <associate|eq 14.58.103|<tuple|14.73|?>>
    <associate|eq 14.59.103|<tuple|14.74|?>>
    <associate|eq 14.6.100|<tuple|14.10|?>>
    <associate|eq 14.60.103|<tuple|14.75|?>>
    <associate|eq 14.61.103|<tuple|14.76|?>>
    <associate|eq 14.62.103|<tuple|14.77|?>>
    <associate|eq 14.63.103|<tuple|14.78|?>>
    <associate|eq 14.64.103|<tuple|14.79|?>>
    <associate|eq 14.65.103|<tuple|14.80|?>>
    <associate|eq 14.66.103|<tuple|14.81|?>>
    <associate|eq 14.67.103|<tuple|14.82|?>>
    <associate|eq 14.7.100|<tuple|14.11|?>>
    <associate|eq 14.72.103|<tuple|14.87|?>>
    <associate|eq 14.73.103|<tuple|14.88|?>>
    <associate|eq 14.74.103|<tuple|14.90|?>>
    <associate|eq 14.75.103|<tuple|14.91|?>>
    <associate|eq 14.8.100|<tuple|14.2|?>>
    <associate|eq 14.80.103|<tuple|14.96|?>>
    <associate|eq 14.84.103|<tuple|14.100|?>>
    <associate|eq 14.85.103|<tuple|14.101|?>>
    <associate|eq 14.89.111|<tuple|14.89|?>>
    <associate|eq 14.9.100|<tuple|14.3|?>>
    <associate|eq 14.91.103|<tuple|14.104|?>>
    <associate|eq 14.92.103|<tuple|14.106|?>>
    <associate|eq 14.93.103|<tuple|14.107|?>>
    <associate|eq 14.94.103|<tuple|14.108|?>>
    <associate|eq 14.95.103|<tuple|14.109|?>>
    <associate|eq 14.96.103|<tuple|14.110|?>>
    <associate|eq 14.97.103|<tuple|14.111|?>>
    <associate|eq 14.98.103|<tuple|14.112|?>>
    <associate|eq 14.99.103.1|<tuple|14.113|?>>
    <associate|equivalences of convexitivity (concavity)|<tuple|14.101|?>>
    <associate|evaluation operator (1)|<tuple|14.123|?>>
    <associate|extremum and derivate|<tuple|14.95|442>>
    <associate|f is C infinite if D1f is c infinite|<tuple|14.67|?>>
    <associate|f_v is differentiable|<tuple|14.83|431>>
    <associate|fundamental theorem of calculus|<tuple|14.106|444>>
    <associate|g is differentiable|<tuple|14.163|?>>
    <associate|generalized chain rule|<tuple|14.82|430>>
    <associate|higher order differential and partial
    derivates|<tuple|14.137|?>>
    <associate|i the substitution|<tuple|14.29|?>>
    <associate|i-H has inverse if norm of H is lower then
    1|<tuple|14.147|459>>
    <associate|if f is C^n then D^1f is C^n-1|<tuple|14.66|426>>
    <associate|implicit function theorem|<tuple|14.168|470>>
    <associate|in Banach spaces linear continuous mappings are
    toplinear|<tuple|14.139|458>>
    <associate|inverse function theorem|<tuple|14.158|465>>
    <associate|inverse mapping is c-infinite|<tuple|14.149|461>>
    <associate|inverse of derivative|<tuple|14.166|?>>
    <associate|inverse theorem for Df(0)=1X|<tuple|14.159|465>>
    <associate|lagranges theorem|<tuple|14.97|443>>
    <associate|left,right derivatives|<tuple|14.90|?>>
    <associate|lemma 14.119|<tuple|14.124|?>>
    <associate|lemma 14.121|<tuple|14.126|?>>
    <associate|lemma for diedonne main value|<tuple|14.117|?>>
    <associate|linear continuous mappings are C^infinity|<tuple|14.74|428>>
    <associate|linear isomrophisms between b=Banach spaces are
    C^oo|<tuple|14.152|?>>
    <associate|linearity of (01,...*,...0n)|<tuple|14.30|417>>
    <associate|mean value theorem (3)|<tuple|14.118|?>>
    <associate|n-times differentiability implies m-times
    differentiability|<tuple|14.61|424>>
    <associate|n-times differentiability is local|<tuple|14.68|426>>
    <associate|n-times differentiability is same as n-1 times
    differentiability of DF|<tuple|14.65|425>>
    <associate|n-times differentiability of multi valued
    function|<tuple|14.79|429>>
    <associate|nth derivate|<tuple|14.55|?>>
    <associate|partial derivate of higher order and partial
    differential|<tuple|14.136|?>>
    <associate|partial derivative and partial differential|<tuple|14.39|?>>
    <associate|partial derivative definition|<tuple|14.38|420>>
    <associate|partial differential definition|<tuple|14.34|419>>
    <associate|partial differential of sum and scalar
    product|<tuple|14.37|?>>
    <associate|partial differential on U|<tuple|14.128|453>>
    <associate|power of a continuous linear mapping is linear and
    continuous|<tuple|14.144|458>>
    <associate|product of n-times differentiable functions is n-times
    differentiable|<tuple|14.86|432>>
    <associate|projection map is infinite times dimensions|<tuple|14.78|429>>
    <associate|proposition 12.116|<tuple|14.160|466>>
    <associate|proposition 12.118|<tuple|14.162|467>>
    <associate|proposition 12.120|<tuple|14.164|469>>
    <associate|rolles theorem|<tuple|14.96|443>>
    <associate|second mean value theorem|<tuple|14.116|447>>
    <associate|strictly increasing function and derivative|<tuple|14.98|?>>
    <associate|sum of (01,...,*,...0n)|<tuple|14.31|417>>
    <associate|sum of C^n functions is C^n|<tuple|14.71|427>>
    <associate|sum of differentiable functions|<tuple|14.21|417>>
    <associate|sum of linear function and infinite sum|<tuple|14.146|459>>
    <associate|sum of n-times differentiable functions is n-times
    differentiable|<tuple|14.70|427>>
    <associate|symmetry of L^n+t(X;Y) based on permutations and
    transposition|<tuple|14.122|449>>
    <associate|symmetry of partial differentials|<tuple|14.132|?>>
    <associate|the n-th differential is symmetric|<tuple|14.127|450>>
    <associate|toplinear in normed space|<tuple|14.138|457>>
    <associate|translations are C-infinity|<tuple|14.76|428>>
    <associate|uniqueness of differential|<tuple|14.7|413>>
    <associate|x+t.y is C infinite|<tuple|14.93|?>>
    <associate|x+t.y is C1 (1)|<tuple|14.59|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|U<rsub|x>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|Df<around*|(|x|)>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varepsilon\>>-mapping>|<pageref|auto-6>>

      <tuple|<tuple|differential of a constant function>|<pageref|auto-7>>

      <tuple|<tuple|differential of a linear \ function>|<pageref|auto-8>>

      <tuple|<tuple|derivative>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'>>>|<pageref|auto-11>>

      <tuple|<tuple|chain rule>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|\<partial\><rsub|i>f<around*|(|x|)>>>|<pageref|auto-16>>

      <tuple|<tuple|Jacobian>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|D<rsup|n>f>>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|\<infty\>>-differentiability>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|n>>>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsup|\<infty\>>>>|<pageref|auto-22>>

      <tuple|<tuple|smooth functions>|<pageref|auto-23>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rsup|<around*|(|n|)>>>>|<pageref|auto-24>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|+><around*|(|x|)>>>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|-><around*|(|x|)>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|+>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|->>>|<pageref|auto-29>>

      <tuple|<tuple|local weak minimum>|<pageref|auto-31>>

      <tuple|<tuple|local weak maximum>|<pageref|auto-32>>

      <tuple|<tuple|extremum>|<pageref|auto-33>>

      <tuple|<tuple|Rolle's theorem>|<pageref|auto-34>>

      <tuple|<tuple|Lagrange's theorem>|<pageref|auto-35>>

      <tuple|<tuple|concave function>|<pageref|auto-36>>

      <tuple|<tuple|convex function>|<pageref|auto-37>>

      <tuple|<tuple|Fundamental Theorem of Calculus (Classical
      version)>|<pageref|auto-38>>

      <tuple|<tuple|Fundamental Theorem of Calculus>|<pageref|auto-39>>

      <tuple|<tuple|convex sets>|<pageref|auto-40>>

      <tuple|<tuple|line segment>|<pageref|auto-41>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsub|a,b>>>|<pageref|auto-42>>

      <tuple|<tuple|toplinear isomorphism>|<pageref|auto-46>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-G\>L<around*|(|X|)>>>|<pageref|auto-47>>

      <tuple|<tuple|<with|mode|<quote|math>|H<rsup|n>>>|<pageref|auto-48>>

      <tuple|<tuple|inverse function theorem>|<pageref|auto-49>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|14<space|2spc>Differentiability
      in normed vector spaces> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      14.1<space|2spc>Differentiability <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|14.1.1<space|2spc>Differential
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|14.1.2<space|2spc>Derivative of a function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|14.1.3<space|2spc>Properties of the
      differential <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-12>>

      <with|par-left|<quote|1tab>|14.1.4<space|2spc>Partial differentiation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      14.2<space|2spc>Higher order differentiability
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      14.3<space|2spc>Differentiability on general sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-25>

      14.4<space|2spc>Intermediate value and mean value theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>

      14.5<space|2spc>Symmetry of Higher Order Differentials
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>

      14.6<space|2spc>Higher Order Partial Differentiation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      14.7<space|2spc>Inverse function theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>
    </associate>
  </collection>
</auxiliary>