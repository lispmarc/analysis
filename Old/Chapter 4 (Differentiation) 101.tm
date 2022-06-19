<TeXmacs|1.99.19>

<project|Book.tm>

<style|<tuple|book|old-spacing|old-dots|old-lengths|preview-ref>>

<\body>
  <assign|chapter-nr|13><chapter|Differentiability in normed vector spaces>

  We assume in this chapter that, unless stated otherwise, all the normed and
  Banach spaces are using the same field <math|\<bbb-K\>> where
  <math|\<bbb-K\>> is either <math|\<bbb-C\>> or <math|\<bbb-R\>>.

  <section|Differentiability>

  <subsection|Differential>

  \;

  A function is differentiable at a point if we can approximate the function
  with a continuous linear function in a small enough neighborhood around the
  point. To ensure that we don't evaluate the function outside its domain we
  define given a set <math|U> the set <math|U<rsub|x>>.

  <\definition>
    <index|<math|U<rsub|x>>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed vector space and let <math|U\<subseteq\>X,x\<in\>U> then
    <math|U<rsub|x>=<around*|{|h\<in\>X\|x+h\<in\>U|}>>
  </definition>

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
    be real normed spaces, <math|U\<subseteq\>X> a open set then a function
    <math|f:U\<rightarrow\>Y> is differentiable at <math|x\<in\>U> if and
    only if there exists a continuous linear function
    <math|L:X\<rightarrow\>Y> (or <math|L\<in\>L<around*|(|X,Y|)>>) such that
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
    be real normed space, <math|U\<subseteq\>X> a open set, <math|x\<in\>U>
    and <math|f:U\<rightarrow\>Y> differentiable at <math|x> then the
    <math|L> used in the above definition is unique
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
    be real normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U>
    and <math|f:U\<rightarrow\>Y> differentiable at <math|x> then the unique
    (by the previous theorem) <math|L\<in\>L<around*|(|X,Y|)>> such that
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> so that if <math|h\<in\>U<rsub|x>> and
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
    is called the <with|font-series|bold|differential of f at x> and is noted
    as <math|D f<around*|(|x|)>>. In other words <math|f> is differentiable
    at <math|x> with differential <math|D f<around*|(|x|)>> if and only there
    exists a <math|D f<around*|(|x|)>\<in\>L<around*|(|X,Y|)>> (which is
    unique) such that \ <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists
    a <math|\<delta\>\<gtr\>0> such that if <math|h\<in\>U<rsub|x>> and
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
  </definition>

  Let's now look at some alternative definitions for differentiability at a
  point.\ 

  <\definition>
    <label|e-mappings><index|<math|\<varepsilon\>>-mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and <math|x\<in\>U>
    then a <math|\<varepsilon\>>-mapping at <math|x> is a function
    <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> which is continuous at
    <math|0\<in\>U<rsub|x>> (using the subspace topology on <math|U<rsub|x>>)
    and for which <math|\<varepsilon\><around*|(|0|)>=0>\ 
  </definition>

  We prove now the following equivalent alternative definitions of
  differentiability

  <\theorem>
    <label|alternative definitions of differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then the following are equivalent

    <\enumerate>
      <item><math|f> is differentiable at <math|x> with differential <math|D
      f<around*|(|x|)>>

      <item>There exists a linear function <math|D
      f<around*|(|x|)>:X\<rightarrow\>Y> and a <math|\<varepsilon\>>-mapping
      <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y> such that
      <math|\<forall\>h\<in\>U<rsub|x>> we have
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

      <item>There exists a linear function <math|D
      f<around*|(|x|)>:X\<rightarrow\>Y> such that
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<varepsilon\>>
      \ we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>

      <item>There exists a linear function <math|D
      f<around*|(|x|)>:X\<rightarrow\>Y> such that
      <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> with
      <math|<below|lim|h\<rightarrow\>0>h<rsub|i>=0> and
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
      f<around*|(|x|)><around*|(|h|)> if h\<neq\>0>>>>>=f<around*|(|x+h|)>-f<around*|(|x|)>=D
      f<around*|(|x|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|x>>. Further
      take <math|\<zeta\>\<gtr\>0> then by definition there exists a
      <math|\<delta\>\<gtr\>0> such that for <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>> we have that
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<zeta\>|2>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<zeta\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>><space|1em>so
      that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>
        if h\<less\>\<zeta\>>>|<row|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<zeta\>>>>>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<zeta\>>>>>
      </eqnarray*>

      which using <reference|subspace topology of a normed space> and
      <reference|continuity of function in a normed space> proves that
      <math|\<varepsilon\>> is continuous at <math|0> in the subspace
      topology on <math|U<rsub|x>>.

      <item*|<math|2\<Rightarrow\>3>>Let <math|\<varepsilon\>:U<rsub|x>\<rightarrow\>Y>
      be the <math|\<varepsilon\>>-mapping such that
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|x|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      <math|\<forall\>h\<in\>U<rsub|x>>. Then as <math|\<varepsilon\>> is
      continuous at <math|0> and <math|\<varepsilon\><around*|(|0|)>=0> there
      exists given a <math|\<zeta\>\<gtr\>0> a <math|\<delta\>\<gtr\>0> such
      that if <math|h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|Y>\<less\>\<zeta\>>
      so that if additional <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<frac|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|X>\<less\>\<zeta\>>

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
        f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>-D
        f<around*|(|x|)><around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0-0|\<\|\|\>><rsub|Y>=0\<leqslant\>0=\<varepsilon\>\<cdot\>0=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

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
      property (see <reference|consequence of the archimedean property for
      the reals>) a <math|N<rsub|\<delta\>>\<in\>\<bbb-N\>> such that
      <math|<frac|1|N<rsub|\<delta\>>>\<less\>\<delta\>> so if
      <math|n\<geqslant\>N<rsub|\<delta\>>> we have
      <math|<around*|\<\|\|\>|h<rsub|n>-0|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<less\><frac|1|n>\<leqslant\><frac|1|N<rsub|\<delta\>>>\<less\>\<delta\>>
      proving that <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0>.Now
      by the hypothesis (4) we must have that
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|n>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|n>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0>
      and thus there exists a <math|N\<in\>\<bbb-N\>> such that
      <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|N>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|N>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|N>|\<\|\|\>>>\<less\>\<varepsilon\><rsub|0>>
      contradicting <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|N>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|N>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|N>|\<\|\|\>>>\<gtr\>\<varepsilon\><rsub|0>>.
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

  The following theorem is a consequence of the fact that the differential is
  a continuous map.

  <\theorem>
    <label|differentiability at x implies continuity at x>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U>and
    <math|f:U\<rightarrow\>Y> a function that is differentiable at <math|x>
    then <math|f> is continuous at <math|x>.
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
    f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>>. As
    <math|\<varepsilon\>> is continuous at <math|0> and
    <math|\<varepsilon\><around*|(|0|)>=0> we have\ 

    <\equation>
      <label|eq 14.3.100>\<exists\>\<delta\><rsub|2>\<gtr\>0 such that if
      h\<in\>U<rsub|x><infix-and><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>
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

  The next theorem shows that differentiation is independent of the chosen
  norm (as long as the norms are equivalent).

  <\theorem>
    <label|differentiability at x is independent of norms>Let <math|X,Y> be
    vector spaces over <math|\<bbb-K\>> with equivalent norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    on <math|X>, equivalent norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>
    on <math|Y>, <math|U\<subseteq\>X> a open set (as norms are equivalent
    the topology on <math|X,Y> is the same for the two norms),
    <math|f:U\<rightarrow\>Y> a function then if <math|f> is differentiable
    at <math|x\<in\>U> with differential <math|D f<around*|(|x|)>> (using
    norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>)
    we have that <math|f> is differentiable at <math|x\<in\>U> with
    differential <math|D f<around*|(|x|)>> (using norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>)
  </theorem>

  <\proof>
    From the equivalence of the norms we have by <reference|equivalence of
    norms> that there exists <math|\<alpha\><rsub|X>,\<beta\><rsub|X>,\<alpha\><rsub|Y>,\<beta\><rsub|Y>\<gtr\>0>
    such that <math|\<forall\>x\<in\>X> and <math|\<forall\>y\<in\>Y> we have\ 

    <\equation>
      <label|eq 14.8.100>\<alpha\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>><infix-and>\<forall\>y\<in\>Y\<vDash\>\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>
    </equation>

    Assume that <math|f:U\<rightarrow\>Y> is differentiable at <math|x> with
    differential <math|D f<around*|(|x|)>> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>,<math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>
    then for <math|\<varepsilon\>\<gtr\>0> there exists a
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
    f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<varepsilon\>|\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|1>>>
    or using <reference|eq 14.8.100> we have\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X<rsub|2>>
    </equation*>

    which together with the fact that <math|D f<around*|(|x|)>> is also a
    continuous function between <math|X> an <math|Y> (as the topologies are
    the same) proves that <math|f> has also a differential <math|D
    f<around*|(|x|)>> at <math|x> using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>.
  </proof>

  We now prove that differentiability of <math|f:U\<rightarrow\>Y> at
  <math|x> is essential a local property and is not dependent on <math|U> but
  just on the value of <math|f> near <math|x>.

  <\theorem>
    <label|differentiability and restricted mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, \ <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> then\ 

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y> is differentiable at <math|x> then
      <math|\<forall\>W> open with <math|x\<in\>W\<subseteq\>U> we have that
      <math|f<rsub|\|W>:W\<rightarrow\>Y> is differentiable at <math|x>.

      <item>If there exists a <math|W\<subseteq\>X> open with
      <math|x\<in\>W\<subseteq\>U> such that
      <math|f<rsub|\|W>:W\<rightarrow\>Y> is differentiable at <math|x> then
      <math|f:U\<rightarrow\>Y> is differentiable at <math|x>.
    </enumerate>

    Also <math|D f<around*|(|x|)>=D<around*|(|f<rsub|\|V>|)><around*|(|x|)>>
    in (1) and (2).
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is differentiable we have given
      <math|\<varepsilon\>\<gtr\>0> a <math|\<delta\>\<gtr\>0> so that
      <math|\<forall\>h\<in\>U<rsub|x>> with
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
      Now if <math|h\<in\>W<rsub|x>\<Rightarrow\>x+h\<in\>W\<subseteq\>U\<Rightarrow\>h\<in\>U<rsub|x>\<Rightarrow\>W<rsub|x>\<subseteq\>U<rsub|x>>.
      So if <math|h\<in\>W<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>>
      we have <math|<around*|\<\|\|\>|f<rsub|\|W><around*|(|x+h|)>-f<rsub|\|W><around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|x+h,x\<in\>W><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving that <math|f<rsub|\|W>:W\<rightarrow\>Z> is differentiable with
      differential <math|D f<around*|(|x|)>> and thus
      <math|D<around*|(|f<rsub|\|W>|)><around*|(|x|)>=D f<around*|(|x|)>>.

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
    </enumerate>
  </proof>

  Using the alternative definitions of differentiability (see
  <reference|alternative definitions of differentiability>) and the above
  theorem we have then the following criteria for differentiability.

  <\corollary>
    <label|alternative definition of differentiability (2)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>Y> a function then the following are equivalent

    <\enumerate>
      <item><math|f> is differentiable at <math|x> with differential <math|D
      f<around*|(|x|)>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W>, a
      linear function <math|D f<around*|(|x|)>:X\<rightarrow\>Y> and a
      <math|\<varepsilon\>>-mapping <math|\<varepsilon\>:W<rsub|x>\<rightarrow\>Y>
      such that <math|\<forall\>h\<in\>W<rsub|x>> we have
      <math|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W,> a
      linear function <math|D f<around*|(|x|)>:X\<rightarrow\>Y> such that
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>W<rsub|x>>
      with <math|0\<less\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<varepsilon\>>
      \ we have <math|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\>\<varepsilon\>>

      <item>There exists a open set <math|W\<subseteq\>U>, <math|x\<in\>W>, a
      linear function <math|D f<around*|(|x|)>:X\<rightarrow\>Y> such that
      <math|\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> with
      <math|<below|lim|h\<rightarrow\>0>h<rsub|i>=0> and
      <math|\<forall\>i\<in\>\<bbb-N\>> <math|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>>\<gtr\>0>
      and <math|h<rsub|i>\<in\>W<rsub|x>> we have that
      <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\<\|\|\>|f<around*|(|x+h<rsub|i>|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h<rsub|i>|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|X>>=0>
    </enumerate>
  </corollary>

  Let's study now some trivial examples of functions differentiable at a
  point.

  <\example>
    <label|differential of the constant function><index|differential of a
    constant function><dueto|Differential of a constant function>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|y\<in\>Y>, <math|U\<subseteq\>X> open and
    <math|C<rsub|U,y>:U\<rightarrow\>y> defined by
    <math|C<rsub|U,y><around*|(|x|)>=y> then
    <math|C<rsub|U,y>:U\<rightarrow\>V> is differentiable at every
    <math|x\<in\>U> and <math|D C<rsub|U,y><around*|(|x|)>=C<rsub|X,0>> where
    <math|C<rsub|X,0>:X\<rightarrow\>Y> is defined by
    <math|C<rsub|X,0><around*|(|x|)>=0>
  </example>

  <\proof>
    Let <math|x\<in\>U> and take <math|\<varepsilon\>\<gtr\>0> then for
    <math|h\<in\>U<rsub|x>> with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1>
    we have <math|<around*|\<\|\|\>|C<rsub|U,y><around*|(|x+h|)>-C<rsub|U,y><around*|(|x|)>-C<rsub|X,0><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-y-0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
    Also as <math|\<forall\>x\<in\>X> <math|>we have
    <math|<around*|\<\|\|\>|C<rsub|X,0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>0\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    it follows that <math|C<rsub|X,0>\<in\>L<around*|(|X,Y|)>>.
  </proof>

  <\example>
    <label|differential of a linear function><index|differential of a linear
    \ function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then \ <math|\<forall\>U> open in <math|X> we have that
    if <math|L\<in\>L<around*|(|X,Y|)>> then <math|L:X\<rightarrow\>Y> is
    differentiable at every <math|x\<in\>U> with differential <math|D
    L<around*|(|x|)>=L>
  </example>

  <\proof>
    If <math|\<varepsilon\>\<gtr\>0> and <math|h\<in\>X<rsub|x>=X> with
    <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1> then
    <math|<around*|\<\|\|\>|L<around*|(|x+h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>+L<around*|(|h|)>-L<around*|(|x|)>-L<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
    proving that <math|L> is differentiable at every <math|x\<in\>U> with
    <math|D L<around*|(|x|)>=L> (where we have used the fact that <math|L> is
    continuous as <math|L\<in\>L<around*|(|X,Y|)>>).
  </proof>

  <subsection|Derivative of a function>

  <\definition>
    <label|derivative><index|derivative><index|<math|f<rprime|'>>>Given
    <math|<around*|\<langle\>|\<bbb-K\>, <around*|\|||\|>|\<rangle\>>> (where
    <math|\<bbb-K\>=\<bbb-R\>> or <math|\<bbb-C\>>),
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed space, <math|U\<subseteq\>\<bbb-K\>> a open set,
    <math|x\<in\>U><math|> and a function <math|f:U\<rightarrow\>V> then
    <math|f> has a <with|font-series|bold|derivate> at <math|x> noted by
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
    normed space, <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U> a
    open set and a function <math|f:U\<rightarrow\>V> then <math|f> is
    differentiable at <math|x> with differential <math|D f<around*|(|x|)>> if
    and only if <math|f> has a derivate <math|f<rprime|'><around*|(|x|)>> at
    <math|x>. Furthermore if <math|f> is differentiable (or equivalent has a
    derivate) then <math|D f<around*|(|x|)>:\<bbb-K\>\<rightarrow\>Y> is
    defined by <math|h\<rightarrow\>D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>
    which means that <math|f<rprime|'><around*|(|x|)>=D
    f<around*|(|x|)><around*|(|1|)>>. Note that as the differential is unique
    this theorem also proves that the derivate must be unique.
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
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>|<around*|\||h|\|>>\<leqslant\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|h>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>>
      proving that <math|f<rprime|'><around*|(|x|)>=D
      f<around*|(|x|)><around*|(|1|)>> is indeed a derivate of <math|f> at
      <math|x> and that <math|D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>

      <item*|<math|\<Leftarrow\>>>Define <math|D
      f<around*|(|x|)>:\<bbb-K\>\<rightarrow\>Y> by
      <math|h\<rightarrow\>f<rprime|'><around*|(|x|)>\<cdot\>h> where
      <math|f<rprime|'><around*|(|x|)>> is a derivate of <math|f>, which is
      trivially linear and is also continuous (as <math|<around*|\<\|\|\>|D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>\<cdot\>h|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\||h|\|>>).
      Given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<Rightarrow\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>|<around*|\||h|\|>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>-f<rprime|'><around*|(|x|)>\<cdot\>h|h>|\<\|\|\>>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>>
      which proves by <reference|alternative definitions of
      differentiability> (3) that <math|f> is differentiable at <math|x> with
      <math|D f<around*|(|x|)><around*|(|h|)>=f<rprime|'><around*|(|x|)>\<cdot\>h>.
      As the differential is unique and <math|D
      f<around*|(|x|)><around*|(|1|)>=f<rprime|'><around*|(|x|)>> the
      derivate must be unique.
    </description>
  </proof>

  As the differentiability of a function is a local property the above
  theorem shows that this is also true for the existence of the derivate of a
  function.

  <\corollary>
    <label|derivative is local>Given <math|<around*|\<langle\>|\<bbb-K\>,
    <around*|\|||\|>|\<rangle\>>> (where <math|\<bbb-K\>=\<bbb-R\>> or
    <math|\<bbb-C\>>), <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>>, <math|x\<in\>U> a open
    set, a function <math|f:U\<rightarrow\>V> and <math|W\<subseteq\>U> a
    open set with <math|x\<in\>W> then <math|f> has a derivate at <math|x> if
    and only of <math|f<rsub|\|W>> has a derivate at <math|x> and
    <math|<around*|(|f<rsub|\|W>|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>>
  </corollary>

  <\proof>
    \ This follows from <reference|differentiability and restricted mapping>
    and the above theorem.
  </proof>

  <subsection|Properties of the differential>

  <\definition>
    <label|(x1,..,xi-1,*,xi+1,..,xn)><index|<math|<around*|(|i\<rightarrow\>x|)>>>Given
    a finite family <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>> then given a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|j>>
    we define <math|<around*|(|x\|i|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
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

  <\proposition>
    <label|i the substitution>Let <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of vector spaces over the field <math|\<bbb-K\>>,
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

    <\enumerate>
      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x>

      <item><math|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>=<around*|(|i\<rightarrow\>0|)><around*|(|t-s|)>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)><rsub|k>=<choice|<tformat|<table|<row|<cell|x<rsub|k>
      if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x<rsub|i>
      if k=i>>>>>=x<rsub|k>> so that <math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=x>

      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>-<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)><rsub|k>>|<cell|=>|<cell|<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>|)><rsub|k>-<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|s|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|x<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t
        if k=i>>>>>-<choice|<tformat|<table|<row|<cell|x<rsub|k> if
        k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|s if
        k=1>>>>>>>|<row|<cell|>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<rsub|i>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|t-s
        if k=i>>>>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|i\<rightarrow\>0|)><around*|(|s-t|)>>>>>
      </eqnarray*>
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
      <math|x\<in\>X<rsub|i> then> <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|k>=\<delta\><rsub|i,k>\<cdot\>x>

      <item><math|*\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|<around*|(|i\<rightarrow\>0|)>\<in\>L<around*|(|X<rsub|i>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>>
      [using the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> on
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>]
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
        if k=i>>>>>=0<rsub|k>=\<delta\><rsub|i,k>\<cdot\>x>

        <item*|<math|k=i>>then <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)>=<choice|<tformat|<table|<row|<cell|0<rsub|k>
        if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<row|<cell|x
        if k=i>>>>>=x<rsub|>=\<delta\><rsub|i,k>\<cdot\>x>
      </description>

      <item>We must prove that <math|<around*|(|i\<rightarrow\>0|)>> is
      linear and continuous. Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      then

      <\enumerate>
        <item>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
        <math|x,y\<in\>X<rsub|i>> then given
        <math|k\<in\><around*|{|1,\<ldots\>,n|}>> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>|)><rsub|k>>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|\<delta\><rsub|i,k>\<cdot\><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>\<delta\><rsub|i,k>\<cdot\>x+\<beta\>\<cdot\>\<delta\><rsub|i,k>\<cdot\>y>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|k>+\<beta\>\<cdot\><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|y|)>|)><rsub|k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|y|)>|)><rsub|k>>>>>
        </eqnarray*>

        proving that <math|<around*|(|i\<rightarrow\>0|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=\<alpha\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|i\<rightarrow\>0|)><around*|(|y|)>>.
        So <math|<around*|(|i\<rightarrow\>0|)>> is linear.

        <item>Let <math|x\<in\>X<rsub|i>> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|\<\|\|\>>>|<cell|=>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|x|)>|)><rsub|j>|\<\|\|\>><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|max<around*|(|<around*|{|<around*|\<\|\|\>|\<delta\><rsub|i,j>\<cdot\>x|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|j>>>>>
        </eqnarray*>

        which by <reference|continuous linear maps in a normed space> proves
        that <math|<around*|(|i\<rightarrow\>0|)>> is continuous.
      </enumerate>
    </enumerate>

    \;
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
      of (01,...*,...0n)>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<delta\><rsub|i,k>\<cdot\>x<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|k>>>>>
    </eqnarray*>

    proving that <math|<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|x<rsub|i>|)>=x>.
  </proof>

  <\theorem>
    <label|(x1,...,*,...) is differentiable>Given a finite family
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>>,
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>> the
    product space together with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> (see <reference|norm of finite
    product of normed spaces>) (so that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    forms a normed vector space over <math|\<bbb-K\>>) then given
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, <math|t\<in\>X<rsub|i>> and
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|j>>
    we have that <math|*<around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>>
    is differentiable at <math|t> with <math|D<around*|(|<around*|(|i\<rightarrow\>x|)>|)>=<around*|(|i\<rightarrow\>0|)>>.
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
    proving that <math|<around*|(|i\<rightarrow\>x|)>> is differentiable at
    <math|t> with differential <math|<around*|(|i\<rightarrow\>0|)>>.
  </proof>

  <\note>
    <label|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)>Given a finite family
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of vector spaces over the field <math|\<bbb-K\>>,
    <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>> the
    product space together with the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> (see <reference|norm of finite
    product of normed spaces>), then <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have by the above and <reference|differentiability at x implies
    continuity at x> (functions that are differentiable at a point are
    continuous at that point) that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|(|i\<rightarrow\>x|)>> is continuous at <math|X<rsub|i>>.
    So given a open set <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have that <math|<around*|{|t\<in\>X<rsub|i>\|<around*|(|i\<rightarrow\>x|)><around*|(|t|)>\<in\>U|}>=<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>
    is a open set in <math|X<rsup|i>>.
  </note>

  <\theorem>
    <label|sum of differentiable functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>>, <math|U\<subseteq\>X> a open set
    and <math|f:U\<rightarrow\>Y>, <math|g:U\<rightarrow\>Y> be functions
    differentiable at <math|x\<in\>U> then\ 

    <\enumerate>
      <item><math|f+g:U\<rightarrow\>Y> is differentiable at <math|x> with
      <math|D<around*|(|f+g|)><around*|(|x|)>=D f<around*|(|x|)>+D
      g<around*|(|x|)>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> then
      <math|\<alpha\>\<cdot\>f:U\<rightarrow\>Y> is differentiable at
      <math|x> with <math|D<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D
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

    , <math|V\<subseteq\>Y> be open sets, <math|f:U\<rightarrow\>X>,
    <math|g:V\<rightarrow\>Y> functions, <math|x\<in\>U<big|cap>f<rsup|-1><around*|(|V|)>>
    such that <math|f> is differentiable at <math|x> and <math|g> is
    differentiable at <math|f<around*|(|x|)>> then
    <math|g\<circ\>f:U<big|cap>f<rsup|-1>*<around*|(|V|)>\<rightarrow\>Z> is
    differentiable at <math|x> with <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>
  </theorem>

  <\proof>
    First as <math|f:U\<rightarrow\>Y> is differentiable at <math|x> we have
    by <reference|differentiability at x implies continuity at x> that
    <math|f> is continuous at <math|x> so that
    <math|f<rsup|-1><around*|(|V|)>> is open proving that
    <math|U<big|cap>f<rsup|-1><around*|(|V|)>> is open (needed for
    differentiability to make sense) Using the alternative definition for
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
      <label|eq 14.15.100><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)><around*|(|h|)>=\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>+D
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
      <label|eq 14.16.100><around*|(|g\<circ\>f|)><around*|(|x+h|)>-<around*|(|g\<circ\>f|)><around*|(|x|)>-D
      g<around*|(|f<around*|(|x|)>|)>\<circ\>D
      f<around*|(|x|)><around*|(|h|)>=\<zeta\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
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
    14.17.100>>><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\<\|\|\>|D
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
      and thus <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>-0|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>+D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<leqslant\><around*|\<\|\|\>|\<varepsilon\><rsub|g><around*|(|f<around*|(|x+h|)>-f<around*|(|x|)>|)>\<cdot\><frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>|\<\|\|\>><rsub|Z>+<around*|\<\|\|\>|D
      g<around*|(|f<around*|(|x|)>|)><around*|(|\<varepsilon\><rsub|f><around*|(|h|)>|)>|\<\|\|\>><rsub|Z>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
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
    <math|V\<subseteq\>Y> a open set, \ <math|f:U\<rightarrow\>Y>,
    <math|g:V\<rightarrow\>Z> functions with
    <math|f<around*|(|U|)>\<subseteq\>V>, such that <math|f> is
    differentiable at <math|x\<in\>U> and <math|g> is differentiable at
    <math|f<around*|(|x|)>\<in\>W> then <math|g\<circ\>f:U\<rightarrow\>W> is
    differentiable at <math|x> with <math|D<around*|(|g\<circ\>f|)><around*|(|x|)>=D
    g<around*|(|f<around*|(|x|)>|)>\<circ\>D f<around*|(|x|)>>
  </corollary>

  <\proof>
    As <math|f<around*|(|U|)>\<subseteq\>V> we have that
    <math|U\<subseteq\>f<rsup|-1><around*|(|V|)>> proving that
    <math|U=U<big|cap>f<rsup|-1><around*|(|V|)>>, using then the previous
    theorem we have that <math|g\<circ\>f:U\<rightarrow\>Z> is differentiable
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
    <label|partial differential definition>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|X=<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space equipped with the maximum norm (see <reference|norm of
    finite product of normed spaces>), <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set, <math|x\<in\>U> and <math|f:U\<rightarrow\>Y> a function,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>, then <math|f:U\<rightarrow\>Y>
    is <math|i>-partial differentiable at <math|x> with <math|i>-partial
    differential <math|D<rsub|i>f<around*|(|x|)>\<in\>L<around*|(|X<rsub|i>,Y|)>>
    if <math|f\<circ\><around*|(|i\<rightarrow\>x|)><rsub|>:<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<rightarrow\>V>
    is differentiable at <math|x<rsub|i>> with
    <math|D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>>
    [This make sense as by <reference|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)>
    <math|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>> is open in
    <math|X<rsub|i>> and we have trivially
    <math|x<rsub|i>\<in\><around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>>
    as <math|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|<text|<reference|i
    the substitution>>>x\<in\>U>].
  </definition>

  The next theorem shows that the partial differentials exists if a function
  is differentiable.

  <\theorem>
    <label|differentiability on products of metric spaces>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space equipped with the maximum norm (see <reference|norm of
    finite product of normed spaces>), <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    a open set, <math|x\<in\>U><math|> and <math|f:U\<rightarrow\>Y>
    differentiable at <math|x\<in\>U> \ then

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is
      <math|i>-partial differentiable at <math|x<rsub|i>\<in\>X<rsub|i>> with
      <math|D<rsub|i>f<around*|(|x|)>=D f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>
      [or using a less formal notation <math|<around*|(|D<rsub|i>
      f<around*|(|x|)>|)><around*|(|t|)>=D
      f<around*|(|x|)><around*|(|0,\<ldots\>,t,\<ldots\>,0|)>>]

      <item><math|D f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
      [or <math|\<forall\>n\<in\>\<bbb-N\>> we have <math|D
      f*<around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Using <reference|(x1,...,*,...) is differentiable> and
      <reference|differentiability and restricted mapping> we have that
      <math|<around*|(|i\<rightarrow\>x|)>:X<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      is differentiable at <math|x<rsub|i>> with
      <math|D<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>=<around*|(|i\<rightarrow\>0|)>>.
      Using the chain rule <reference|chain rule> we have that
      <math|f\<circ\><around*|(|i\<rightarrow\>x|)>:<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>\<rightarrow\>Y>
      is differentiable at <math|x<rsub|i>> with <math|D
      <around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)>=D
      f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)>\<circ\><around*|(|i\<rightarrow\>0|)>\<equallim\><rsub|<text|<reference|i
      the substitution>>>D f<around*|(|x|)>\<circ\><around*|(|i\<rightarrow\>0|)>>

      <item>Let <math|h\<in\>X> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>D<rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>D
        f<around*|(|x|)><around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|D
        f<around*|(|x|)> is linear>>|<cell|D
        f<around*|(|x|)><around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|i\<rightarrow\>0|)><around*|(|h<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of (01,...,*,...0n)>>>>|<cell|D f<around*|(|x|)><around*|(|h|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  Just like we have defined the derivate of a function, we define now the
  partial derivate of a function.

  <\definition>
    <label|partial derivative definition><index|<math|\<partial\><rsub|i>f<around*|(|x|)>>>Let
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set,
    <math|x\<in\>U>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then <math|f>
    has a <with|font-series|bold|<math|i>-partial derivate>
    <with|font-series|bold|at> <math|x> noted by
    <math|\<partial\><rsub|i>f<around*|(|x|)>\<in\>Y> if and only if
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
    <math|h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
    then <math|<around*|\<\|\|\>|<frac|f<around*|(|*<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
    [or a less formal notation <math|<around*|\<\|\|\>|<frac|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i>+h,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>-f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|h>|\<\|\|\>>\<less\>\<varepsilon\>>]
  </definition>

  The above definition suggest that the partial derivate is unique which is
  indeed true as is expressed in the following theorem which also show the
  relation with the partial differential.\ 

  <\theorem>
    <label|partial derivative and partial differential>Let
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set,
    <math|x\<in\>U>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then <math|f>
    has a <math|i>-partial derivate at <math|x> if and only if <math|f> has a
    <math|i>-partial differential. Further if the <math|i>-partial derivate
    exists (or the <math|i>-partial differential exists) at <math|x> then
    <math|\<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>>
    so that <math|D<rsub|i>f<around*|(|x|)><around*|(|h|)>=D<rsub|i>f<around*|(|x|)><around*|(|h\<cdot\>1|)>=h\<cdot\>D<rsub|i>f<around*|(|x|)><around*|(|1|)>>
    Note as the <math|i>-partial differential is unique this proves also that
    the <math|i>-partial derivate is unique.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Assume that
      <math|\<partial\><rsub|i>f<around*|(|x|)>> exist.Then given
      <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
      such that \ <math|h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
      and <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then we have
      that\ 

      <\equation*>
        <around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|\<nobracket\>>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
      </equation*>

      As <math|<around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>|)>|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|i
      the substitution>>><around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|x|)>|h>-\<partial\><rsub|i>f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      proving that the derivate of <math|f\<circ\><around*|(|i\<rightarrow\>x|)>>
      at <math|x<rsub|i>> exists and <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>=\<partial\><rsub|i>f<around*|(|x|)>>.
      Using <reference|differentias and derivates> we have that
      <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>>
      exists and <math|D<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)><around*|(|1|)>=<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>=\<partial\><rsub|i>f<around*|(|x|)>>.
      Using the definition of the partial differential (see
      <reference|partial differential definition>) it follows that\ 

      <\equation*>
        D<rsub|i>f<around*|(|x|)> exists<infix-and>D<rsub|i>f<around*|(|x|)><around*|(|1|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|D<rsub|i>f<around*|(|x|)>> exists at <math|x> then by definition
      <math|D<around*|(|f\<circ\><around*|(|i-x|)>|)><around*|(|x<rsub|i>|)>>
      exists. Using <reference|differentias and derivates> we have that
      <math|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>>
      exists so that given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that <math|\<forall\>h\<in\><around*|(|<around*|(|i\<rightarrow\>x|)><rsup|-1><around*|(|U|)>|)><rsub|x>>
      with <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> we have

      <\equation*>
        <around*|\<\|\|\>|<frac|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>+h|)>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>|h>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>
      </equation*>

      which as <math|<around*|\<\|\|\>|<frac|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>+h|)>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>|)>|h>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x<rsub|i>+h|)>|)>-f<around*|(|<around*|(|i\<rightarrow\>x|)><around*|(|x|)>|)>|h>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|i
      the substitution>>><around*|\<\|\|\>|<frac|<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><around*|(|x<rsub|i>+h|)>-f<around*|(|x|)>|h>-<around*|(|f\<circ\><around*|(|i\<rightarrow\>x|)>|)><rprime|'><around*|(|x<rsub|i>|)>|\<\|\|\>><rsub|Y>>
      proves that <math|\<partial\><rsub|i>f<around*|(|x|)>> exists.
    </description>
  </proof>

  We have then the equivalence of theorem <reference|differentiability on
  products of metric spaces>\ 

  <\theorem>
    <label|differentiability of K^n>Let <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> equipped with the maximum
    norm based on the absolute value norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, \ <math|U\<subseteq\>\<bbb-K\><rsup|n>> a open set,
    <math|x\<in\>U> and <math|f:U\<rightarrow\>Y> a function that is
    differentiable at <math|x> then

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> has
      a partial derivate <math|\<partial\><rsub|i>f<around*|(|x|)>> and the
      partial differential <math|D<rsub|i>f<around*|(|x|)>\<in\>L<around*|(|\<bbb-K\>,Y|)>>
      is defined by <math|k\<rightarrow\>k\<cdot\>\<partial\><rsub|i>f<around*|(|x|)>>
      (so <math|D<rsub|i>f<around*|(|x|)><around*|(|1|)>=\<partial\><rsub|i>f<around*|(|x|)>>)

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
      of (01,...*,...0n)>>>\<delta\><rsub|i,k>> proving that
      <math|<around*|(|<around*|(|i\<rightarrow\>0|)><around*|(|1|)>|)>=e<rsub|i>>
      it follows that <math|\<partial\><rsub|i>f<around*|(|x|)>\<equallim\><rsub|<around*|(|1|)>>D<rsub|i>f<around*|(|x|)><around*|(|1|)>=D
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

  <\theorem>
    <label|differentiability of map to product of spaces>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces and <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    the normed space equipped with the maximum norm, <math|U\<subseteq\>X>
    open, <math|x\<in\>U> and <math|f:U\<rightarrow\>Y> a function
    <math|x\<rightarrow\>f<around*|(|x|)>=<around*|(|f<rsub|1><around*|(|x|)>,\<ldots\>,f<rsub|n><around*|(|x|)>|)>>
    where <math|f<rsub|i>=\<pi\><rsub|i>\<circ\>f:U\<rightarrow\>Y<rsub|i>>.
    Then <math|f> is differentiable at <math|x> if and only if
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> <math|f<rsub|i>> is
    differentiable at <math|x>. If <math|D f<around*|(|x|)>> exists then
    <math|D f<around*|(|x|)><around*|(|h|)>=<around*|(|D
    f<rsub|1><around*|(|x|)><around*|(|h|)>,\<ldots\>,D
    f<rsub|n><around*|(|x|)><around*|(|h|)>|)>> or equivalently
    <math|\<pi\><rsub|i>\<circ\>D f<around*|(|x|)>=D
    f<rsub|i><around*|(|x|)>>.
  </theorem>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|\<Rightarrow\>>>As <math|f> is differentiable, given
      <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
      such that if <math|h\<in\>U<rsub|x>> and
      <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
      \ <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h<rsub|>|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\><rsub|>>,
      by the definition of the maximum norm we have then
      <math|max<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|i><around*|(|x+h|)>-f<rsub|i><around*|(|x|)>-\<pi\><rsub|i><around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)>|\<\|\|\>><rsub|i>|}>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|<around*|\<\|\|\>|f<rsub|i><around*|(|x+h|)>-f<rsub|i><around*|(|x|)>-<around*|(|\<pi\><rsub|i>\<circ\>D
      f<around*|(|x|)>|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving as <math|\<pi\><rsub|i>,D f<around*|(|x|)>> is linear and
      continuous that <math|f<rsub|i>:X\<rightarrow\>Y<rsub|i>> is
      differentiable at <math|x> with differential <math|D
      f<rsub|i><around*|(|x|)>=\<pi\><rsub|i>\<circ\>D f<around*|(|x|)>>.

      <item*|<math|\<Leftarrow\>>>Suppose that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|f<rsub|i>:X\<rightarrow\>Y<rsub|i>> is differentiable at <math|x>
      then given <math|\<varepsilon\>\<gtr\>0> there exists
      <math|\<delta\><rsub|i>> such that <math|\<forall\>h\<in\>U<rsub|x>>
      with <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|i>>
      \ <math|<around*|\<\|\|\>|f<rsub|i><around*|(|x+h|)>-f<rsub|i><around*|(|x|)>-D
      f<rsub|i><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      so if we define <math|D f<around*|(|x|)>:X\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
      by <math|h\<rightarrow\>D f<around*|(|x|)>=<around*|(|D
      f<rsub|1><around*|(|x|)><around*|(|h|)>,\<ldots\>,D
      f<rsub|n><around*|(|x|)><around*|(|h|)>|)>> which is obviously linear
      as <math|D f<rsub|i><around*|(|x|)>> \ is linear. As
      <math|<around*|\<\|\|\>|D f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<rsub|i><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>|}>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<rsub|i><around*|(|x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>|}>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>\<leqslant\>max<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<rsub|i><around*|(|x|)>|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      \ <math|D f<around*|(|x|)>> is also continuous. Take now
      <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have if
      <math|h\<in\>U<rsub|x>> and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<leqslant\>\<delta\>\<Rightarrow\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      \ <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<leqslant\>\<delta\><rsub|i>\<Rightarrow\><around*|\<\|\|\>|f<rsub|i><around*|(|x+h|)>-f<rsub|i><around*|(|x|)>-D
      f<rsub|i><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-D
      f<around*|(|x|)><around*|(|h|)>|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|i><around*|(|x+h|)>-f<rsub|i><around*|(|x|)>-D
      f<rsub|i><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
      proving that <math|f> is differentiable at <math|x> with differential
      <math|D f<around*|(|x|)>=<around*|(|D
      f<rsub|1><around*|(|x|)>,\<ldots\>,D f<rsub|n><around*|(|x|)>|)>>.
    </description>
  </proof>

  <\theorem>
    <label|Jacobian Matrix><index|Jacobian><dueto|Jacobian matrix>Let
    <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    be two normed spaces based on <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>
    (with the<space|1em>maximum norm), a open set
    <math|U\<subseteq\>\<bbb-K\><rsup|n>>, <math|x\<in\>U> and
    <math|f:U\<rightarrow\>V> a differentiable function then
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have

    <\equation*>
      \<pi\><rsub|j><around*|(|D f<around*|(|x|)><around*|(|h|)>|)>=<around*|(|D
      f<around*|(|x|)><around*|(|h|)>|)><rsub|j>=D
      f<rsub|j><around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>f|)><around*|(|x|)>\<cdot\>h<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<partial\><rsub|i>f<rsub|j><around*|(|x|)>\<cdot\>h<rsub|i>.
    </equation*>

    If we define the matrix <math|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>=<matrix|<tformat|<table|<row|<cell|\<partial\><rsub|1>f<rsub|1><around*|(|x|)>>|<cell|\<cdots\>>|<cell|\<partial\><rsub|n>f<rsub|1><around*|(|x|)>>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|.>|<cell|>|<cell|.>>|<row|<cell|\<partial\><rsub|1>f<rsub|m><around*|(|x|)>>|<cell|>|<cell|\<partial\><rsub|n>f<rsub|m><around*|(|x|)>>>>>>>
    and <math|h=<matrix|<tformat|<table|<row|<cell|h<rsub|1>>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|.>>|<row|<cell|h<rsub|n>>>>>>>
    then we can write using matrix multiplication <math|D
    f<around*|(|x|)><around*|(|h|)>=\<partial\><rsub|<around*|{|1,\<ldots\>,n|}>><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>\<cdot\>h>.
    The matrix <math|<frac|\<partial\><around*|(|f<rsub|1>,\<ldots\>,f<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>>
    is called the Jacobian matrix of <math|f> at <math|x>.
  </theorem>

  <\proof>
    Using <reference|differentiability of map to product of spaces> we have
    <math|<around*|(|D f<around*|(|x|)><around*|(|h|)>|)><rsub|j>=<around*|(|\<pi\><rsub|j>\<circ\>D
    f<around*|(|x|)>|)><around*|(|h|)>=D f<rsub|j><around*|(|x|)><around*|(|h|)><rsub|>>.
    As <math|f<rsub|j>:U\<subseteq\>\<bbb-K\><rsup|n>\<rightarrow\>Y<rsub|j>>
    we have by <reference|differentiability of K^n> that <math|D
    f<rsub|j><around*|(|x|)><around*|(|h|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|i>\<cdot\>\<partial\><rsub|i>f<rsub|j><around*|(|x|)>>
  </proof>

  <\example>
    <label|Jacobian of linear map>Let <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-K\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    be two vector spaces based on <math|<around*|\<langle\>|\<bbb-K\>,<around*|\<\|\|\>||\<nobracket\>>|\<rangle\>>>
    (with the maximum norm), <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    the canonical bases (see <reference|canonical basis>), , and
    <math|L:\<bbb-K\><rsup|n>\<rightarrow\>\<bbb-K\><rsup|m>> a linear
    mapping with matrix (see <reference|matrix of a linear mapping>)
    <math|\<cal-M\><around*|(|L,<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>|)>=<around*|{|L<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|1\<ldots\>.m|}>\<times\><around*|{|1,\<ldots\>,n|}>>>
    in the canonical basis . Then <math|\<forall\>x\<in\>\<bbb-K\><rsup|n>>
    <math|L> is differentiable at <math|x> with Jacobian
    <math|<frac|\<partial\><rsub|><around*|(|L<rsub|1>,\<ldots\>,L<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>=<around*|{|L<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|1\<ldots\>.m|}>\<times\><around*|{|1,\<ldots\>,n|}>>>
  </example>

  <\proof>
    As <math|L> is linear it is differentiable at <math|x> (see
    <reference|differential of a linear function>) and
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> <math|\<pi\><rsub|j>>
    is linear we have that <math|\<pi\><rsub|j>\<circ\>L> is linear. Hence
    given <math|i\<in\><around*|{|1,\<ldots\>,n|}>,j\<in\><around*|{|1,\<ldots\>,m|}>>
    we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<partial\><rsub|i>L<rsub|j><around*|(|x|)>>|<cell|=>|<cell|\<partial\><rsub|i><around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differentiability
      of K^n>>>>|<cell|<around*|(|D<around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|x|)>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|differential
      of a linear function>>>>|<cell|<around*|(|\<pi\><rsub|j>\<circ\>L|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|L<around*|(|e<rsub|i>|)>|)><rsub|j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|matrix
      of a linear mapping>>>>|<cell|L<rsub|j,i>>>>>
    </eqnarray*>

    proving that <math|<frac|\<partial\><around*|(|L<rsub|1>,\<ldots\>,L<rsub|m>|)><around*|(|x|)>|\<partial\><around*|(|1,\<ldots\>,n|)>>=<around*|{|L<rsub|j,i>|}><rsub|<around*|(|j,i|)>\<in\><around*|{|1\<ldots\>.m|}>\<times\><around*|{|1,\<ldots\>,n|}>>>.
  </proof>

  <\theorem>
    <label|differential of a billinear mapping>Let
    <math|<around*|\<langle\>|X<rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, and <math|<around*|\<langle\>|X<rsub|1>\<times\>X<rsub|2>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    equipped with the maximum norm, <math|x=<around*|(|x<rsub|1>,x<rsub|2>|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
    and <math|L\<in\>L<around*|(|X<rsub|1>,X<rsub|2>;Y|)>> (a bi-linear
    continuous mapping) then <math|L:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>Y>
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
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>+<around*|(|h<rsub|1>,h<rsub|2>|)>|)>-L<around*|(|<around*|(|x<rsub|1>,x<rsub|2>|)>|)>-<around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|*\<ast\>,x<rsub|2>|)>|)><around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>+h<rsub|1>,x<rsub|2>+h|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>+h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>+h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,x<rsub|2>|)>+L<around*|(|x<rsub|1>,h<rsub|2>|)>+L<around*|(|h<rsub|1>,x<rsub|2>|)>+L<around*|(|h<rsub|1>,h<rsub|2>|)>-L<around*|(|x<rsub|1>,x<rsub|2>|)>-L<around*|(|x<rsub|1>,h<rsub|2>|)>-L<around*|(|h<rsub|1>,x<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|<around*|\<\|\|\>|L|\<\|\|\>>+1>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|2>|\<\|\|\>><rsub|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varepsilon\>\<cdot\><around*|\<\|\|\>|<around*|(|h<rsub|1>,h<rsub|2>|)>|\<\|\|\>>>>>>
    </eqnarray*>

    \ proving that <math|D L<around*|(|x,y|)>=L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,x<rsub|2>|)>>
  </proof>

  We can use the above theorem to find the differential of a product of
  differentiable functions.

  <\corollary>
    <label|differentiability of product of functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>
    (<math|\<bbb-K\>=\<bbb-R\>> or <math|\<bbb-C\>>), <math|U\<subseteq\>K>
    open with <math|x\<in\>U> and <math|f,g:U\<rightarrow\>\<bbb-K\>> two
    maps differentiable at <math|x> then <math|f\<cdot\>g:U\<rightarrow\>\<bbb-K\>>
    is differentiable at <math|x> with <math|D<around*|(|f\<cdot\>g|)><around*|(|x|)>=g<around*|(|x|)>\<cdot\>D
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
    [if <math|<around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>>\<leqslant\>1\<Rightarrow\><around*|\||x|\|>,<around*|\||y|\|>\<leqslant\>1>
    proving <math|<around*|\||x\<cdot\>y|\|>\<leqslant\><around*|\||x|\|>\<cdot\><around*|\||y|\|>\<leqslant\>1>
    so that <math|p> is continuous]. Using the previous theorem <math|p> is
    differentiable at <math|<around*|(|x,y|)>> with <math|D
    p<around*|(|x,y|)>=p<around*|(|x,\<ast\>|)>+p<around*|(|\<ast\>,y|)>=x\<cdot\>\<ast\>+\<ast\>\<cdot\>y>.
    Now as <math|f\<cdot\>g=p\<circ\>h> we have by the chain rule (see
    <reference|chain rule>) that <math|f\<cdot\>g> is differentiable and
    <math|D<around*|(|f\<cdot\>g|)><around*|(|x|)>=D
    p<around*|(|h<around*|(|x|)>|)>\<circ\>D h<around*|(|x|)>=D
    p<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>\<circ\>D
    h<around*|(|x|)>=<around*|(|f<around*|(|x|)>\<cdot\>\<ast\>+\<ast\>\<cdot\>g<around*|(|x|)>|)>\<circ\><around*|(|D
    f<around*|(|x|)>,D g<around*|(|x|)>|)>> so that
    <math|D<around*|(|f\<cdot\>g|)><around*|(|x|)><around*|(|h|)>=<around*|(|f<around*|(|x|)>\<cdot\>\<ast\>+\<ast\>\<cdot\>g<around*|(|x|)>|)><around*|(|D
    f<around*|(|x|)><around*|(|h|)>,D g<around*|(|x|)><around*|(|h|)>|)>=f<around*|(|x|)>\<cdot\>D
    g<around*|(|x|)><around*|(|h|)>+g<around*|(|x|)>\<cdot\>D
    f<around*|(|x|)><around*|(|h|)>\<Rightarrow\>D<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>D
    g<around*|(|x|)>+g<around*|(|x|)>\<cdot\>D f<around*|(|x|)>>
  </proof>

  If we take in the above theorem <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>=<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>>
  and <reference|differentias and derivates> the above corollary gives

  <\corollary>
    Take the normed space <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>\<nocomma\>>,
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

  Calculate now the derivate of a power

  <\corollary>
    Take the normed space <math|<around*|\<langle\>|\<bbb-K\>,<around*|\|||\|>|\<rangle\>>\<nocomma\>>,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|x\<in\>U>,
    <math|z\<in\>\<bbb-N\>> define then <math|\<ast\><rsup|z>:\<bbb-K\>\<rightarrow\>\<bbb-K\>>
    by <math|x\<rightarrow\>x<rsup|z>> then <math|\<ast\><rsup|z>> has a
    derivate at <math|x\<in\>\<bbb-K\>> given by
    <math|<around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>=z\<cdot\>\<ast\><rsup|z-1><around*|(|x|)><rsup|>>,
    if <math|z\<in\><around*|{|-z\|z\<in\>\<bbb-N\>|}>> then
    <math|\<ast\><rsup|z>:\<bbb-K\>\\<around*|{|0|}>\<rightarrow\>\<bbb-K\>>
    defined by <math|x\<rightarrow\>x<rsup|z>=<frac|1|x<rsup|-z>>> has a
    derivate at <math|x\<in\>\<bbb-K\>\\<around*|{|0|}>> (a open set) given
    by <math|<around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>=z\<cdot\>\<ast\><rsup|z-1><around*|(|x|)>>
  </corollary>

  <\proof>
    We have the following cases to consider:

    <\enumerate>
      <item><dueto|<math|z\<in\>\<bbb-N\>>>We proceed here by induction so
      let <math|S=<around*|{|z\<in\>\<bbb-N\>\|\<ast\><rsup|z> has a derivate
      z\<cdot\>\<ast\><rsup|z-1>|}>> then we have\ 

      <\description>
        <item*|<math|1\<in\>S>>If <math|z=1> then
        <math|\<ast\><rsup|1>:\<bbb-K\>\<rightarrow\>\<bbb-K\>> is linear so
        that <math|<around*|(|\<ast\><rsup|1>|)><rprime|'><around*|(|x|)>=D<around*|(|\<ast\><rsup|1>|)><around*|(|x|)><around*|(|1|)>=\<ast\><rsup|1><around*|(|1|)>=1<rsup|1>=1=1\<cdot\>x<rsup|0>=1\<cdot\>x<rsup|z-1>*>
        so that <math|1\<in\>S>

        <item*|<math|z\<in\>S\<Rightarrow\>z+1\<in\>S>>Assume now that
        <math|z\<in\>S> then we have that
        <math|*\<ast\><rsup|<around*|(|z+1|)>><around*|(|x|)>=x<rsup|z+1>=x\<cdot\>x<rsup|z>>
        so that <math|\<ast\><rsup|z+1>=\<ast\><rsup|1>\<cdot\>\<ast\><rsup|z>>
        and then using the previous corollary we have
        <math|<around*|(|\<ast\><rsup|z+1>|)><rprime|'><around*|(|x|)>=<around*|(|\<ast\><rsup|1>\<cdot\>\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>=x<rsup|1>\<cdot\><around*|(|\<ast\><rsup|z>|)><rprime|'><around*|(|x|)>+<around*|(|\<ast\><rsup|z>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|1>|)><rprime|'><around*|(|x|)>\<equallim\><rsub|<around*|(|a|)>
        and z\<in\>S>x\<cdot\>z\<cdot\><around*|(|\<ast\><rsup|z-1>|)><around*|(|x|)>+x<rsup|z>=x\<cdot\>z\<cdot\>x<rsup|z-1>+x<rsup|z>=z\<cdot\>x<rsup|z>+x<rsup|z>=<around*|(|z+1|)>\<cdot\>x<rsup|z>=<around*|(|z+1|)>\<cdot\><around*|(|\<ast\>|)><rsup|<around*|(|z+1|)>-1><around*|(|x|)>>
        proving that <math|z+1\<in\>S>
      </description>

      using mathematical induction we have then <math|S=\<bbb-N\>>\ 

      <item><dueto|<math|z\<in\><around*|{|-z\|z\<in\>\<bbb-N\>|}>>>again we
      prove this by induction so let <math|S=<around*|{|z\<in\>\<bbb-N\>\|\<ast\><rsup|-z>
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
        So \ <math|<around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>=<frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|2>\<cdot\><around*|\||x+h|\|>>\<less\><frac|2\<cdot\><around*|\||h|\|>|<around*|\||x|\|>\<cdot\><around*|\||x|\|><rsup|2>>=2\<cdot\><frac|<around*|\||h|\|>|<around*|\||x|\|><rsup|3>>\<less\>2\<cdot\><frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|<around*|\||x<rsup|3>|\|>\<cdot\>2>=\<varepsilon\>>
        [as <math|<around*|\||h|\|>\<less\>\<delta\>=<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2>>
        ]. So if <math|0\<less\>\<delta\>=min<around*|(|<frac|\<varepsilon\>\<cdot\><around*|\||x|\|><rsup|3>|2>,<frac|<around*|\||x|\|>|2>|)>>
        then <math|<around*|\||<frac|\<ast\><rsup|-1><around*|(|x+h|)>-\<ast\><rsup|-1><around*|(|x|)>|h>-<around*|(|-1\<cdot\>\<ast\><rsup|<around*|(|-2|)>><around*|(|x|)>|)>|\|>=<around*|\||<frac|<frac|1|x+h>-<frac|1|x>|h>-<frac|1|x<rsup|2>>|\|>\<equallim\><rsub|<text|<reference|eq
        12.12>>><around*|\||<frac|h|x<rsup|2>\<cdot\><around*|(|x+h|)>>|\|>\<less\>\<varepsilon\>>
        proving that <math|<around*|(|\<ast\><rsup|-1>|)><rprime|'><around*|(|x|)>=-1\<cdot\><around*|(|\<ast\><rsup|-1-1>|)><around*|(|x|)>>
        or <math|1\<in\>S>.

        <item*|<math|z\<in\>S\<Rightarrow\>z+1\<in\>S>>If <math|z\<in\>S>
        then <math|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>><around*|(|x|)>=<frac|1|\<ast\><rsup|z+1><around*|(|x|)>>=<frac|1|x<rsup|z+1>>=<frac|1|x\<cdot\>x<rsup|z>>><math|=<around*|(|\<ast\><rsup|-1>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-z>|)><around*|(|x|)>>
        so that <math|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>>=<around*|(|\<ast\>|)><rsup|-1>\<cdot\><around*|(|\<ast\><rsup|-z>|)>>.
        Using the previous corollary we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<around*|(|\<ast\>|)><rsup|-<around*|(|z+1|)>>|)><rprime|'><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<ast\><rsup|-1>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-z>|)><rprime|'><around*|(|x|)>+<around*|(|\<ast\><rsup|-z>|)><around*|(|x|)>\<cdot\><around*|(|\<ast\><rsup|-1>|)><rprime|'><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1\<in\>\<cal-S\>
          and z\<in\>S>>|<cell|x<rsup|-1>\<cdot\><around*|(|-z|)>\<cdot\><around*|(|\<ast\><rsup|-z-1>|)><around*|(|x|)>+x<rsup|-z>\<cdot\><around*|(|-1|)>\<cdot\><around*|(|\<ast\><rsup|-2>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsup|-1>\<cdot\><around*|(|-z|)>\<cdot\>x<rsup|-z-1>-x<rsup|-z>\<cdot\>x<rsup|-2>>>|<row|<cell|>|<cell|=>|<cell|-z\<cdot\>x<rsup|-z-2>-x<rsup|-z-2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-z-1|)>\<cdot\>x<rsup|-z-2>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|z+1|)>|)>\<ast\>x<rsup|-<around*|(|z+1|)>-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-<around*|(|z+1|)>|)>\<cdot\><around*|(|\<ast\><rsup|-<around*|(|z+1|)>-1>|)><around*|(|x|)>>>>>
        </eqnarray*>

        \ proving that \ <math|z+1\<in\>S>
      </description>

      Using mathematical induction we have then <math|S=\<bbb-N\>>
    </enumerate>
  </proof>

  <section|Higher order differentiability>

  We define higher order differentiability using recursion as follows

  <\definition>
    <index|<math|D<rsup|n>f>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>Y> a function then
    <math|f> is <math|n>-times differentiable on <math|U> with <math|n>-the
    differential <math|D<rsup|n>f:U\<rightarrow\>L<rsup|n><around*|(|X;Y|)>>
    (see <reference|L^n(X;Y)>) if one of the following is correct:

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
    we actually means <math|\<cal-P\><rsub|n><around*|(|D<rsup|n>f<around*|(||)>|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>=D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>=<around*|(|\<ldots\><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|x<rsub|1>|)>|)><around*|(|h<rsub|2>|)>\<ldots\>|)><around*|(|h<rsub|n>|)>>
  </remark>

  <\definition>
    <index|<math|\<infty\>>-differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>Y> a function then
    <math|f> is <math|\<infty\>>-differentiable if
    <math|\<forall\>n\<in\>\<bbb-N\>> we have that <math|f> is
    <math|n>-differentiable.
  </definition>

  We next define the concept of differentiable classes

  <\definition>
    <index|<math|C<rsup|n>>>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|f:U\<rightarrow\>Y> a function
    then <math|f> is of class <math|C<rsup|n>> if one of the following is
    satisfied

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
    be normed spaces, <math|U\<subseteq\>X> a open set and
    <math|f:U\<rightarrow\>V> a function then <math|f> is of class
    <math|C<rsup|\<infty\>>> if <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we
    have that <math|f> is of class <math|C<rsup|n>>. Functions of class
    <math|C<rsup|\<infty\>>> are also called <with|font-series|bold|smooth>
    functions.
  </definition>

  As for derivates we use the following definition\ 

  <\definition>
    <index|<math|f<rsup|<around*|(|n|)>>>><label|n-th derivative>Let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    be a normed space and <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>
    be the normed space <math|\<bbb-K\>> equipped with the canonical norm,
    <math|U\<subseteq\>\<bbb-K\>> a open set, <math|n\<in\>\<bbb-N\>> and
    <math|f:U\<rightarrow\>Y> a function then <math|f> has a <math|n>-the
    derivate <math|f<rsup|<around*|(|n|)>>> on <math|U> if one of the
    following is satisfied.

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
    then we have that <math|f> is continuous at <math|x\<in\>U> iff
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

    \;
  </proof>

  <\theorem>
    <label|C1 of real or complex function>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the vector
    space <math|\<bbb-K\>> using the canonical norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>\<bbb-K\>> a open set and
    <math|f:U\<subseteq\>\<bbb-K\>\<rightarrow\>Y> \ a function then the
    following are equivalent:

    <\enumerate>
      <item><math|f> is <math|C<rsup|1>>

      <item><math|\<forall\>t\<in\>U> we have that
      <math|f<rprime|'><around*|(|t|)>=D<rsup|1>f<around*|(|x|)><around*|(|1|)>>
      exists and <math|f<rprime|'>:U\<rightarrow\>Y> defined by
      <math|t\<rightarrow\>f<rprime|'><around*|(|t|)>> is continuous on
      <math|U> [or <math|f> has a 1-derivate that is continuous).
    </enumerate>
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

  <\theorem>
    <label|C^@@=@@-times differentiable>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and
    <math|f:U\<rightarrow\>Y> a function then <math|f> is of class
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
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|f:U\<rightarrow\>Y> a function
    that is <math|>n-times differentiable then we have that
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> <math|f> is m-times
    differentiable
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
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|f:U\<rightarrow\>Y> a function
    of class <math|C<rsup|n>> then <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    we have that <math|f> is of class <math|C<rsup|i>>
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

  The next theorem is very usable in induction proofs.

  <\theorem>
    <label|n-times differentiability is same as n-1 times differentiability
    of DF>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and <math|f:U\<rightarrow\>Y> a
    function then <math|f> is <math|n>-times differentiable if and only if
    <math|D<rsup|1>f> exists and is <math|<around*|(|n-1|)>>-times
    differentiable, also if <math|f> is <math|n>-times differentiable or
    equivalent <math|D<rsup|1>f> exists and is <math|<around*|(|n-1|)>>-times
    differentiable then <math|D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n>f>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>First as
      <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> we have that
      <math|1\<in\><around*|{|1,\<ldots\>,n|}>> so using <reference|n-times
      differentiability implies m-times differentiability> we have that
      <math|f> is <math|1>-times differentiable, hence <math|D f=D<rsup|1>f>
      exists on <math|U>. For the rest we use induction, sol let
      <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|if
      f is n<text|-times differentiable >then D<rsup|1>f is
      <around*|(|n-1|)><text|-times differentiable and
      >D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>|}>> then we have\ 

      <\description>
        <item*|<math|2\<in\>\<cal-S\>>>If <math|n=2> then as <math|f> is
        <math|2>-times differentiable we have by definiton that <math|f> is
        <math|1>-times differentiable and
        <math|D<rsup|2>f=D<around*|(|D<rsup|1>f|)>=D<rsup|1><around*|(|D
        f|)>> proving that <math|2\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|n\<in\>\<cal-S\>> then if <math|f> is <math|n+1> differentiable
        we have by definition that <math|f> is <math|n>-times differentiable
        and <math|D<rsup|<around*|(|n+1|)>-1> f=D<rsup|n>f> is differentiable
        on <math|U>. Further as <math|n\<in\>\<cal-S\>> we have that
        <math|D<rsup|1>f> is <math|<around*|(|n-1|)>>-times differentiable
        and <math|D<rsup|<around*|(|n-1|)>><around*|(|D<rsup|1>f|)>=D<rsup|n>f>
        so that <math|D <around*|(|D<rsup|n>f|)>=D<around*|(|D<rsup|<around*|(|n-1|)>><around*|(|D<rsup|1>f|)>|)>=D<rsup|n><around*|(|D<rsup|1>f|)>>.
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
      D<rsup|1>f is <around*|(|n-1|)><text|-times differentiable then
      <math|f> is <math|n>-times differentiable>|}>> then we have\ 

      <\description>
        <item*|<math|2\<in\>\<cal-S\>>>If for <math|f:U\<rightarrow\>Y> we
        have that <math|D<rsup|1>f> and is <math|<around*|(|2-1|)>>-times
        differentiable hence is differentiable. So that by definition
        <math|f> is <math|2>-times differentiable. <math|>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Assume
        that <math|D<rsup|1>h> is <math|<around*|(|<around*|(|n+1|)>-1|)>>-times
        differentiable so that <math|D<rsup|1>f> is <math|n>-times
        differentiable. By definition <math|D<rsup|1>f> is then
        <math|<around*|(|n-1|)>>-times differentiable. \ From
        <math|n\<in\>\<cal-S\>> it follows that <math|f> is <math|n>-times
        differentiable and using <reference|eq 14.23.014> we have that
        <math|D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>>. As
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
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>Y> a function then
    <math|f> is of class <math|C<rsup|n>> if and only if <math|D<rsup|1>f>
    exists and is of class <math|C<rsup|n-1>>
  </theorem>

  <\proof>
    The following cases must be considered

    <\description>
      <item*|<math|n=1>>If <math|f> is of class <math|C<rsup|1>> then by
      definition <math|D f> is continuous and thus of class <math|C<rsup|0>>.
      If <math|D<rsup|1>f> exists and is of class <math|C<rsup|0>> then
      <math|f> is 1-times differentiable with <math|D<rsup|1>f> continuous
      and thus of class <math|C<rsup|1>>.

      <item*|<math|n\<gtr\>1>>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|f> is of class <math|C<rsup|n>>
        then <math|f> is <math|n>-times differentiable and <math|D<rsup|n>f>
        is continuous, using the previous theorem we have then that
        <math|D<rsup|1>f> is <math|<around*|(|n-1|)>> times differentiable
        and <math|D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n>f> which is
        continuous so that <math|D<rsup|1>> is of class <math|C<rsup|n-1>>

        <item*|<math|\<Leftarrow\>>>If <math|D<rsup|1>f> is of class
        <math|C<rsup|n-1>> then it is <math|n-1> times differentiable and
        continuous so again by the previous theorem we have then that
        <math|f> is n-times differentiable and as
        <math|D<rsup|n>f=D<rsup|n-1><around*|(|D<rsup|1>f|)>> which is
        continuous we have that <math|f> is of class <math|C<rsup|n>>.
      </description>
    </description>
  </proof>

  In the next theorem we prove that <math|n>-times differentiability is a
  local property.

  <\theorem>
    <label|n-times differentiability is local>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>Y> a function then\ 

    <\enumerate>
      <item>If <math|f> is n-times differentiable on <math|U> then
      <math|\<forall\>V\<subseteq\>U> , <math|V> open we have
      <math|f<rsub|\|V>> is n-times differentiable on <math|V> and
      <math|<around*|(|D<rsup|n>f|)><rsub|\|V>=D<rsup|n><around*|(|f<rsub|\|V>|)>>

      <item>If <math|\<forall\>x\<in\>U> there exists a open <math|V> with
      <math|x\<in\>V\<subseteq\>U> for which
      <math|f<rsub|\|V>:V\<rightarrow\>Y> is n-times differentiable on
      <math|V> then <math|f> is n-times differentiable on <math|U> and
      <math|<around*|(|D<rsup|n>f|)><rsub|\|V>=D<rsup|n><around*|(|f<rsub|\|V>|)>>
    </enumerate>
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>We proceeed by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if f is n<text|-times
      differentiable on <math|U> then >f<rsub|\|V> is n<text|-times
      differentiable on >V with D<rsup|n><around*|(|f|)><rsub|\|V>=<around*|(|D<rsup|n>f|)><rsub|\|V>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If <math|f> is <math|1>-times
        differentiable on <math|U> then a <math|V\<subseteq\>U> we have that
        <math|\<forall\>x\<in\>V> that <math|D<rsup|1> f<around*|(|x|)>=D
        f<around*|(|x|)>> exists. Using <reference|differentiability and
        restricted mapping> we have that <math|\<forall\>x\<in\>V>
        <math|f<rsub|\|V>> is differentiable at <math|x> with
        <math|D<around*|(|f<rsub|\|V>|)><around*|(|x|)>=D f<around*|(|x|)>>,
        proving that <math|f<rsub|\|V>> is <math|1>-times differentiable on
        <math|V> and <math|D<rsup|1><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|1>f|)><rsub|\|V>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|f> is <math|<around*|(|n+1|)>>-times differentiable we have by
        definition that <math|f> is <math|n>-times differentiable on <math|U>
        and <math|\<forall\>x\<in\>U> we have that <math|D<rsup|n>f> is
        differentiable at <math|x> and <math|D<rsup|n+1>f<around*|(|x|)>=D<around*|(|D<rsup|n>f|)><around*|(|x|)>>
        so that <math|D<rsup|n+1>f=D<around*|(|D<rsup|n>f|)>>. Using
        <reference|differentiability and restricted mapping> we have then
        that <math|<around*|(|D<rsup|n>f|)><rsub|\|V>> is differentiable
        <math|\<forall\>x\<in\>V> with <math|D<around*|(|<around*|(|D<rsup|n>f|)><rsub|\|V>|)><around*|(|x|)>=D<around*|(|D<rsup|n>f|)><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)>>
        proving that <math|D<around*|(|<around*|(|D<rsup|n>f|)><rsub|\|V>|)>=<around*|(|D<around*|(|D<rsup|n>f|)>|)><rsub|\|V>=<around*|(|D<rsup|n+1>f|)><rsub|\|V>>.
        As <math|n\<in\>\<cal-S\>> we have that <math|f<rsub|\|V>> is
        <math|n>-times differentiable with
        <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>.
        It follows that <math|\<forall\>x\<in\>V>
        <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>
        is differentiable at <math|x>, with
        <math|D<around*|(|<around*|(|D|)>|)>> proving that <math|f<rsub|\|V>>
        is <math|<around*|(|n+1|)>>-times differentiable with
        <math|<around*|(|D<rsup|n+1>f|)><rsub|\|V>=D<around*|(|<around*|(|D<rsup|n>f|)><rsub|\|V>|)>=D<around*|(|D<rsup|n><around*|(|f<rsub|\|V>|)>|)>=D<rsup|n+1><around*|(|f<rsub|\|V>|)>>
        proving that <math|f<rsub|\|V>> is <math|<around*|(|n+1|)>>-times
        differentiable with <math|<around*|(|D<rsup|n+1>f|)><rsub|\|V>=D<rsup|n+1><around*|(|f<rsub|\|V>|)>>.
        So <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>We proceed by induction let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if
      \<forall\>x\<in\>U there exists a open V with x\<in\>V\<subseteq\>U
      such that f<rsub|\|V> is n<text|-times differentiable then <math|f> is
      n-times differentiable> with <around*|(|D<rsup|n>f|)><rsub|\|V>=D<rsup|n><around*|(|f<rsub|\|V>|)>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>Suppose that <math|\<forall\>x\<in\>U>
        there exists a <math|V> open with <math|x\<in\>V\<subseteq\>U> such
        that <math|f<rsub|\|V>> is <math|1>-times differentiable on <math|x>.
        Using <reference|differentiability and restricted mapping> it follows
        that <math|f> is differentiable at <math|x> with <math|D
        f<rsub|\|V><around*|(|x|)>=D f<around*|(|x|)>> proving that <math|f>
        is <math|1>-times differentiable on <math|U> with
        <math|<around*|(|D<rsup|1>f|)><rsub|\|V>=D<rsup|1><around*|(|f<rsub|\|V>|)>>.
        Hence <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Suppose
        that given <math|x\<in\>U> there exists a <math|V> open with
        <math|x\<in\>V\<subseteq\>U> such that <math|f<rsub|\|V>> is
        <math|<around*|(|n+1|)>>-times differentiable. Then by definition we
        have that <math|f<rsub|\|V>> is <math|n>-times differentiable on
        <math|V> and <math|D<around*|(|D<rsup|n><around*|(|f<rsub|\|V>|)>|)><around*|(|x|)>=D<rsup|n+1><around*|(|f<rsub|\|V>|)><around*|(|x|)>>
        exists. As <math|n\<in\>\<cal-S\>> we have that <math|f> is
        <math|n>-times differentiable with
        <math|<around*|(|D<rsup|n>f|)><rsub|\|V>=D<rsup|n><around*|(|f<rsub|\|V>|)><rsub|>>
        then <math|D<rsup|n+1><around*|(|f<rsub|\|V>|)><around*|(|x|)>=D<around*|(|<around*|(|D<rsup|n>f|)><rsub|\|V>|)><around*|(|x|)>>
        exists. Using <reference|differentiability and restricted mapping> we
        have that <math|D<rsup|n>f> is differentiable at <math|x> with
        <math|D<rsup|n+1><around*|(|f<rsub|\|V>|)><around*|(|x|)>=D<around*|(|D<rsup|n>f|)><around*|(|x|)>>
        proving as <math|x\<in\>U> was choosen arbitrary that <math|f> is
        <math|<around*|(|n+1|)>>-differentiable and
        <math|D<rsup|n+1><around*|(|f<rsub|\|V>|)>=D<rsup|n+1>f>. So
        <math|n+1\<in\>\<cal-S\>>.
      </description>
    </enumerate>
  </proof>

  Next we prove that the above theorem is also true for classes

  <\theorem>
    <label|C^n is a local property>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|f:U\<rightarrow\>Y> a function
    then:

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y> is of class <math|C<rsup|n>> then if
      <math|V> is open with <math|V\<subseteq\>U> then <math|f<rsub|\|V>> is
      of class <math|C<rsup|n>>.

      <item>If <math|\<forall\>x\<in\>U> there exists a <math|V> open with
      <math|x\<in\>V\<subseteq\>U> for which
      <math|f<rsub|\|V>:V\<rightarrow\>Y> is of class <math|C<rsup|n>> then
      <math|f> is of class <math|C<rsup|n>>.
    </enumerate>

    Further if <math|n\<gtr\>0> then <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>
  </theorem>

  <\proof>
    \ We have to consider the following cases for
    <math|n\<in\>\<bbb-N\><rsub|0>>

    <\description>
      <item*|<math|n=0>>\ 

      <\enumerate>
        <item>This follows from <reference|continuity of restricted maps>.

        <item>This follows from <reference|continuity is local>.
      </enumerate>

      <item*|<math|n\<gtr\>0>>\ 

      <\enumerate>
        <item>Using the previous theorem we have that if <math|V> is open and
        <math|V\<subseteq\>U> then <math|f<rsub|\|V>> is n-times
        differentiable with <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>
        which is continuous on <math|V> by <reference|continuity of
        restricted maps>.

        <item>By the hypothesis we have that <math|\<forall\>x\<in\>U> there
        exists a <math|V> open with <math|x\<in\>V\<subseteq\>U> for which
        <math|f<rsub|\|V>:V\<rightarrow\>Y> is of class <math|C<rsup|n>>, as
        <math|f<rsub|\|V>> is then by definition <math|n>-times
        differentiable we have by the previous theorem that <math|f> is
        <math|n>-times differentiable on <math|U> with
        <math|<around*|(|D<rsup|n>f|)><rsub|\|V>=D<rsup|n><around*|(|f<rsub|\|V>|)>>.
        As by definition of <math|C<rsup|n>>
        <math|D<rsup|n><around*|(|f<rsub|\|V>|)>=<around*|(|D<rsup|n>f|)><rsub|\|V>>
        is continuous we have by <reference|continuity is local> that
        <math|D<rsup|n>f> is continuous which at last proves that <math|f> is
        of class <math|C<rsup|n>>.
      </enumerate>
    </description>
  </proof>

  <\theorem>
    <label|sum of n-times differentiable functions is n-times
    differentiable>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set and
    <math|n\<in\>\<bbb-N\>> then\ 

    <\enumerate>
      <item>If <math|f:U\<rightarrow\>Y> and <math|g:U\<rightarrow\>Y> are
      n-times differentiable functions then <math|f+g:U\<rightarrow\>Y> is
      n-times differentiable and <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>

      <item>If <math|f:U\<rightarrow\>Y> is <math|n>-times differentiable
      then <math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> we have that
      <math|\<alpha\>\<cdot\>f> is <math|n>-times differentiable with
      <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if f,g:U\<rightarrow\>Y
      are n<text|-times differentiable then >f+g is n<text|->times
      differentiable with D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>then as <math|f,g> are <math|1>-times
        differentiable on <math|U>we have <math|\<forall\>x\<in\>U> that
        <math|D f<around*|(|x|)>> and <math|D g<around*|(|x|)>> exists, using
        <reference|sum of differentiable functions> we have that
        <math|D<around*|(|f+g|)><around*|(|x|)>> exists and
        <math|D<around*|(|f+g|)><around*|(|x|)>=D f<around*|(|x|)>+D
        g<around*|(|x|)>>. Hence <math|f+g> is <math|1>-times differentiable
        with <math|D<rsup|1><around*|(|f+g|)>=D<rsup|1><around*|(|f|)>+D<rsup|1><around*|(|g|)>>
        proving that <math|1\<in\>\<cal-S\>>.

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>if
        <math|f,g> are <math|<around*|(|n+1|)>>-times differentiable then
        <math|f,g> are <math|n>-times differentiable and
        <math|D<rsup|n>f,D<rsup|n>g> are differentiable
        <math|\<forall\>x\<in\>U>. Using <reference|sum of differentiable
        functions> we have \ <math|\<forall\>x\<in\>U> that
        <math|D<rsup|n>f+D<rsup|n>g> is differentiable at <math|x> with
        <math|D<around*|(|D<rsup|n>f+D<rsup|n>g|)><around*|(|x|)>=D<rsup|><around*|(|D<rsup|n>f|)><around*|(|x|)>+D<around*|(|D<rsup|n>g|)><around*|(|x|)>\<equallim\>D<rsup|n+1>f<around*|(|x|)>+D<rsup|n+1>g<around*|(|x|)>>.
        As <math|n\<in\>\<cal-S\>> we have that <math|f+g> is <math|n>-times
        differentiable with <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>
        so that <math|D<rsup|n+1><around*|(|f+g|)><around*|(|x|)>=D<around*|(|D<rsup|n><around*|(|f+g|)>|)><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)>+D<rsup|n+1>g<around*|(|x|)>>.
        Hence we have that <math|f+g> is <math|<around*|(|n+1|)>>-differentiable
        with <math|D<rsup|<around*|(|n+1|)>><around*|(|f+g|)>=D<rsup|<around*|(|n+1|)>>f+D<rsup|<around*|(|n+1|)>>g>
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if f:U\<rightarrow\>Y is
      n<text|-times differentiable then >\<alpha\>\<cdot\>f \ is
      n<text|->times differentiable with D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f|}>>
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
        differentiable <math|\<forall\>x\<in\>U>. Using <reference|sum of
        differentiable functions> we have \ <math|\<forall\>x\<in\>U> that
        <math|\<alpha\>\<cdot\>D<rsup|n>f> is differentiable at <math|x> with
        <math|D<around*|(|\<alpha\>\<cdot\>D<rsup|n>f|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|><around*|(|D<rsup|n>f|)><around*|(|x|)>\<equallim\>\<alpha\>\<cdot\>D<rsup|n+1>f<around*|(|x|)>>.
        As <math|n\<in\>\<cal-S\>> we have that <math|\<alpha\>\<cdot\>f> is
        <math|n>-times differentiable with
        <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>
        so that <math|D<rsup|n+1><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=D<around*|(|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>|)><around*|(|x|)>=\<alpha\>\<cdot\>D<rsup|n+1>f<around*|(|x|)>>.
        Hence we have that <math|\<alpha\>\<cdot\>f> is
        <math|<around*|(|n+1|)>>-differentiable with
        <math|D<rsup|<around*|(|n+1|)>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|<around*|(|n+1|)>>f>
        proving that <math|n+1\<in\>\<cal-S\>>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|sum of C^n functions is C^n>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|f:U\<rightarrow\>Y,g:U\<rightarrow\>Y>
    are of class <math|C<rsup|n>> then <math|f+g> and <math|a\<cdot\>f> are
    <math|C<rsup|n>>.
  </theorem>

  <\proof>
    The following cases must be considered

    <\enumerate>
      <item><dueto|<math|n=0>>As <math|f,g> are <math|C<rsup|0>> we have that
      <math|f,g> are continuous on <math|U> hence by <reference|in a normed
      space the sum,product with scalar is ontinuous> we have that <math|f+g>
      and <math|\<alpha\>\<cdot\>f> are continuous. So by definition
      <math|f+g> and <math|\<alpha\>\<cdot\>f> are of class <math|C<rsup|0>>.

      <item><dueto|<math|n\<gtr\>0>>Using the previous theorem we have
      already that <math|f+g> and <math|\<alpha\>\<cdot\>f> are n-times
      differentiable with <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g>
      and <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>.
      As <math|D<rsup|n>f>, <math|D<rsup|n>g> are also continuous we have by
      <reference|in a normed space the sum,product with scalar is ontinuous>
      that <math|D<rsup|n><around*|(|f+g|)>=D<rsup|n>f+D<rsup|n>g> and
      <math|D<rsup|n><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>D<rsup|n>f>
      are continuous proving that <math|f+g,\<alpha\>\<cdot\>f> are of class
      <math|C<rsup|n>>.
    </enumerate>
  </proof>

  Using mathematical induction it is easy to extend the above theorems to a
  finite sum

  <\theorem>
    <label|differentiability of finite sum>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>\<nocomma\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set,
    <math|k\<in\>\<bbb-N\>>, <math|n\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
    a finite set of functions from which are <math|n>-times differentiable
    (<math|n\<gtr\>0>) [or <math|C<rsup|n>>] then
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

    <\enumerate>
      <item>If <math|k=1> then <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>f<rsub|i>=f<rsub|1>:U\<rightarrow\>Y>
      which is 1-times differentiable [or <math|C<rsup|1>>] so that
      <math|1\<in\>S>

      <item>If <math|k\<in\>S> then if <math|<around*|{|f<rsub|i>:U\<rightarrow\>Y|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
      are n-times differentiable functions [or <math|C<rsup|n>>] then we have
      <math|<big|sum><rsub|i=1><rsup|k+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|k>f<rsub|i>|)>+f<rsub|n>:U\<rightarrow\>Y>
      which is n-times differentiable (by <reference|sum of n-times
      differentiable functions is n-times differentiable>) [or
      <math|C<rsup|n>> by <reference|sum of C^n functions is C^n>] proving
      that <math|k+1\<in\>S>
    </enumerate>
  </proof>

  TODO

  <\theorem>
    <label|constant functions are C^infinite>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> open, <math|y\<in\>Y> and
    <math|C<rsub|U,y>:U\<rightarrow\>Y> a constant function then
    <math|C<rsub|U,y>> is <math|C<rsup|\<infty\>>> and
    <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|D<rsup|n>C<rsub|U,y>=C<rsub|U,0<rsub|n-1>> where <around*|[|
    0<rsub|n>=<choice|<tformat|<table|<row|<cell|neutral element in Y if
    n=0>>|<row|<cell|neutral element in L<rsup|n><around*|(|X;Y|)> if
    n\<gtr\>0>>>>>|]>>.
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then we have for
    <math|n\<in\>\<bbb-N\><rsub|0>> either\ 

    <\description>
      <item*|<math|n=0>>then as <math|C<rsub|U,y>> is continuous (see
      <reference|constant functions are continuous>) we have by definition
      that <math|C<rsub|U,y>> is of class <math|C<rsup|0>>

      <item*|<math|n\<in\>\<bbb-N\>>>Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|D<rsup|n>C<rsub|U,y>
      exists and D<rsup|n>C<rsub|U,y>=C<rsub|X,0<rsub|n-1>>|}>> then we have

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If <math|n=1> then
        <math|\<forall\>x\<in\>U> we have
        <math|D<rsup|1>C<rsub|U,y><around*|(|x|)>=D<around*|(|C<rsub|U,y>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|differential
        of the constant function>>>C<rsub|X,0><around*|(|x|)>=0> proving that
        <math|D<rsup|1>C<rsub|U,y>=C<rsub|U,0<rsub|0>,>> so that
        <math|1\<in\>S>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|n\<in\>S> then <math|\<forall\>x\<in\>U> we have
        <math|D<rsup|n>C<rsub|U,y>=C<rsub|X,0<rsub|n-1>>> so by
        <reference|differential of the constant function> we have that
        <math|D<rsup|n>C<rsub|U,y>> is differentiable at every
        <math|x\<in\>U> with <math|D<rsup|n+1>C<rsub|U,y><around*|(|x|)>=D<around*|(|D<rsup|n>C<rsub|U,y>|)><around*|(|x|)>=D<around*|(|C<rsub|X,0<rsub|n-1>>|)><around*|(|x|)>=0<rsub|<around*|(|n+1|)>-1>\<nocomma\>>
        so that <math|D<rsup|n+1>C<rsub|U,y>=C<rsub|U,0<rsub|<around*|(|n+1|)>-1>>>
        proving that <math|n+1\<in\>S>.
      </description>

      By induction we have <math|S=\<bbb-N\>> so that
      <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|D<rsup|n>C<rsub|U,y>=C<rsub|U,0<rsub|n-1>>> which is continuous
      by <reference|constant functions are continuous> so that
      <math|C<rsub|U,y>> is of class <math|C<rsup|n>>.
    </description>
  </proof>

  TODO Correct the next

  <\theorem>
    <label|linear continuous mappings are C^infinity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-K\>> then every \ linear continuous map
    <math|L\<in\>L<around*|(|X,Y|)>> is <math|C<rsup|\<infty\>>> where
    <math|\<forall\>x\<in\>D<rsup|1>L<around*|(|x|)>=L> and if
    <math|n\<in\>\<bbb-N\>,n\<gtr\>1> then
    <math|D<rsup|n>L=C<rsub|X,0<rsub|n-1>>\<in\>L<rsup|n><around*|(|X;Y|)>>
  </theorem>

  <\proof>
    Using <reference|C^@@=@@-times differentiable> we only have to prove
    <math|\<infty\>>-times differentiability so let <math|n\<in\>\<bbb-N\>>
    then we have the following cases to consider:

    <\enumerate>
      <item><dueto|<math|n=1>>Then <math|\<forall\>x\<in\>X> we have by
      <reference|differential of a linear function> that <math|D
      L<around*|(|x|)>=L> exists so that <math|D<rsup|1>L=C<rsub|X,L>>

      <item><dueto|<math|n\<gtr\>1>>Using the above theorem and (1) we have
      that <math|D<rsup|1>L> is <math|\<infty\>>-times differentiable, so if
      <math|n\<gtr\>1> then <math|n-1\<gtr\>0> and
      <math|D<rsup|n-1><around*|(|D<rsup|1>L|)>=C<rsub|X,0<rsub|L<rsup|<around*|(|n-1|)>-1><around*|(|X;L<around*|(|X,Y|)>|)>>>\<equallim\><rsub|<text|<reference|L^n(X;L(X,Y))=L^n(X;Y)>>\<Rightarrow\>L<rsup|n-2><around*|(|X;L<around*|(|X,Y|)>|)>=L<rsup|n-1><around*|(|X;Y|)>>C<rsub|X,0<rsub|L<rsup|n-1><around*|(|X;Y|)>>>>.
      As by <reference|n-times differentiability is same as n-1 times
      differentiability of DF> we have <math|D<rsup|n>L=D<rsup|n-1><around*|(|D<rsup|1>L<rsup|>|)>=C<rsub|X,0<rsub|L<rsup|n-1><around*|(|X;Y|)>>>>
    </enumerate>
  </proof>

  <\theorem>
    <label|translations are C-infinity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space and <math|\<tau\><rsub|x<rsub|0>>:X\<rightarrow\>X>
    defined by <math|x\<rightarrow\>\<tau\><rsub|x<rsub|0>><around*|(|x|)>=x+x<rsub|0>>
    then <math|\<tau\><rsub|x<rsub|0>>> is <math|C<rsup|\<infty\>>> with
    <math|D<rsup|1>\<tau\><rsub|x<rsub|0>>=C<rsub|X,1<rsub|X>>> and if
    <math|n\<gtr\>1> then <math|D<rsup|n>\<tau\><rsub|x<rsub|0>>=C<rsub|X,0<rsub|L<rsup|n-1><around*|(|X;Y|)>>>>
  </theorem>

  <\proof>
    We must look at the following cases\ 

    <\enumerate>
      <item><dueto|<math|n=1>>then if <math|x\<in\>X> we have that
      <math|\<forall\>\<varepsilon\>\<gtr\>0> we have if <math|\<delta\>=1>
      and <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>1> with
      <math|h\<in\>X<rsub|x>=X> that <math|<around*|\<\|\|\>|\<tau\><rsub|x<rsub|0>><around*|(|x+h|)>-\<tau\><rsub|x<rsub|0>><around*|(|x|)>-1<rsub|X><around*|(|h|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x<rsub|0>+x+h-x<rsub|0>-x-h|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|X>=0>
      proving that <math|D\<tau\><rsub|x<rsub|0>><around*|(|x|)>=1<rsub|X>>
      so that <math|D<rsup|1>\<tau\><rsub|x<rsub|0>>=C<rsub|X,1<rsub|X>>>

      <item><dueto|<math|n\<gtr\>1>>Using the theorem about constant
      functions (see <reference|constant functions are C^infinite>) we have
      that <math|D<rsup|1>\<tau\><rsub|x<rsub|0>>> is <math|\<infty\>>-times
      differentiable, so if <math|n\<gtr\>1> then <math|n-1\<gtr\>0> and
      <math|D<rsup|n-1><around*|(|D<rsup|1>\<tau\><rsub|x<rsub|0>>|)>=C<rsub|X,0<rsub|L<rsup|<around*|(|n-1|)>-1><around*|(|X;L<around*|(|X,Y|)>|)>>>\<equallim\><rsub|<text|<reference|L^n(X;L(X,Y))=L^n(X;Y)>>\<Rightarrow\>L<rsup|n-2><around*|(|X;L<around*|(|X,Y|)>|)>=L<rsup|n-1><around*|(|X;Y|)>>C<rsub|X,0<rsub|L<rsup|n-1><around*|(|X;Y|)>>>>.
      As by <reference|n-times differentiability is same as n-1 times
      differentiability of DF> we have <math|D<rsup|n>\<tau\><rsub|x<rsub|0>>=D<rsup|n-1><around*|(|D<rsup|1>\<tau\><rsub|x<rsub|0>><rsup|>|)>=C<rsub|X,0<rsub|L<rsup|n-1><around*|(|X;Y|)>>>>
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
      <item><math|D<rsup|1>L> is defined by
      <math|<around*|(|x,y|)>\<rightarrow\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>>
      by <math|D<rsup|1>L<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>
      where <math|<around*|(|L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>|)>\<in\>L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>>
      is defined by <math|<around*|(|r,s|)>\<rightarrow\><around*|(|L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>|)><around*|(|r,s|)>=L<around*|(|x,s|)>+L<around*|(|r,y|)>>

      <item><math|D<rsup|2>L=C<rsub|X<rsub|1>\<times\>X<rsub|2>,D<rsup|1>L>>

      <item>If <math|n\<gtr\>2> then <math|D<rsup|n>L=C<rsub|X<rsub|1>,X<rsub|2>,0<rsub|L<rsup|n-1><around*|(|X<rsub|1>\<times\>X<rsub|2>;Y|)>>>>
    </enumerate>
  </theorem>

  <\proof>
    We have to consider the following cases:

    <\enumerate>
      <item><dueto|<math|n=1>>Using the differential of a bi linear mapping
      (see <reference|differential of a billinear mapping>) we have that
      <math|L> is differentiable at every
      <math|<around*|(|x,y|)>\<in\>X<rsub|1>\<times\>X<rsub|2>> with
      <math|D<rsup|1>L<around*|(|x,y|)>=DL<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>
      so that <math|D<rsup|1>L> is defined by
      <math|<around*|(|x,y|)>-D<rsup|1>L<around*|(|x,y|)>=L<around*|(|x,\<ast\>|)>+L<around*|(|\<ast\>,y|)>>

      <item><dueto|<math|n=2>>We prove now that
      <math|D<rsup|1>L:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>Y> is linear
      and continuous.

      <\enumerate>
        <item><dueto|linearity>If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>
        and <math|<around*|(|r,s|)>,<around*|(|x<rsub|1>,y<rsub|1>|)>,<around*|(|x<rsub|2>,y<rsub|2>|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
        then <math|D<rsup|1>L<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>|)><around*|(|r,s|)>=D<rsup|1>L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)><around*|(|r,s|)>=<around*|(|L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,\<ast\>|)>+L<around*|(|\<ast\>,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)>|)><around*|(|r,s|)>=L<around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>,s|)>+L<around*|(|r,\<alpha\>\<cdot\>y<rsub|1>+\<beta\>\<cdot\>y<rsub|2>|)>\<equallim\><rsub|L
        is multilinear>\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,s|)>+\<alpha\>\<cdot\>L<around*|(|r,y<rsub|1>|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|2>,s|)>+\<beta\>\<cdot\>L<around*|(|r,y<rsub|2>|)>=\<alpha\>\<cdot\><around*|(|L<around*|(|x<rsub|1>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|1>|)>|)><around*|(|r,s|)>+\<beta\>\<cdot\><around*|(|L<around*|(|x<rsub|2>,\<ast\>|)>+L<around*|(|\<ast\>,y<rsub|2>|)>|)><around*|(|r,s|)>=\<alpha\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|1>,y<rsub|1>|)><around*|(|r,s|)>+\<beta\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|2>,y<rsub|2>|)><around*|(|r,s|)>>
        proving that <math|D<rsup|1>L<around*|(|<around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\><around*|(|x<rsub|2>,y<rsub|2>|)>|)>|)>=\<alpha\>\<cdot\>D<rsup|1>L<around*|(|x<rsub|1>,y<rsub|1>|)>+\<beta\>\<cdot\>D<rsup|1>L<around*|(|x<rsup|2>,y<rsub|2>|)>>
        proving linearity.

        <item><dueto|continuity>If <math|<around*|(|x,y|)><around*|(|r,s|)>\<in\>X<rsub|1>\<times\>X<rsub|2>>
        then we have <math|<around*|\<\|\|\>|D<rsub|1>L<around*|(|x,y|)><around*|(|r,s|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x,s|)>+L<around*|(|r,y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<around*|(|x,s|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|r,y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|X<rsub|2>>|)>+<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|1>>|)>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<cdot\><around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>\<cdot\><around*|\<\|\|\>|s|\<\|\|\>><rsub|X<rsub|2>>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|)>\<cdot\>max<around*|{|<around*|(|<around*|\<\|\|\>|r|\<\|\|\>><rsub|X<rsub|1>>|)>,<around*|\<\|\|\>|s|\<\|\|\>><rsub|Y<rsub|2>>|}>|)>=<around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>|)>|)>\<cdot\><around*|\<\|\|\>|<around*|(|r,s|)>|\<\|\|\>><rsub|X<rsub|1>\<times\>X<rsub|2>>>
        proving that <math|<around*|\<\|\|\>|D<rsub|1>L<around*|(|x,y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>\<times\>X<rsub|2>,Y|)>><rsub|>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\>max<around*|(|<around*|{|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|y|\<\|\|\>><rsub|X<rsub|2>>|}>|)>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<around*|(|x,y|)>|\<\|\|\>><rsub|X<rsub|1>\<times\>X<rsub|2>>>
        proving that <math|D<rsub|1>L> is continuous.
      </enumerate>

      Using then <reference|linear continuous mappings are C^infinity> we
      have that <math|D<rsup|1>L> is differentiable and
      <math|D<rsup|2>L=D<rsup|1><around*|(|D<rsup|1>L|)>=C<rsub|X<rsub|1>\<times\>X<rsub|2>,D<rsub|1>L>>

      <item><dueto|<math|n\<gtr\>2>>As we have just proved that
      <math|D<rsup|1>L> is a continuous linear function and thus
      <math|\<infty\>>-times differentiable (see <reference|linear continuous
      mappings are C^infinity>) we have that
      <math|D<rsup|n>L\<equallim\><rsub|n-1\<gtr\>1 and
      <text|<reference|n-times differentiability is same as n-1 times
      differentiability of DF>>>D<rsup|n-1><around*|(|D<rsup|1>f|)>=D<rsup|n-1><around*|(|C<rsub|X<rsub|1>\<times\>X<rsub|2>,D<rsub|1>L>|)>\<equallim\><rsub|<text|<reference|linear
      continuous mappings are C^infinity>>,n-1\<gtr\>1>C<rsub|X<rsub|1>\<times\>X<rsub|2>,0<rsub|L<rsup|n-2><around*|(|X<rsub|1>\<times\>X<rsub|2>;L<around*|(|X<rsub|1>\<times\>X<rsub|2>;Y|)>|)>>=C<rsub|X<rsub|1>\<times\>X<rsub|2>>,0<rsub|L<rsup|n-1><around*|(|X<rsub|1>\<times\>X<rsub|2>;Y|)>>>>
    </enumerate>
  </proof>

  <\theorem>
    <label|projection map is infinite times dimensions>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a finite family of normal spaces then the projection maps
    <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>\<rightarrow\>X<rsub|i>>
    are <math|C<rsup|\<infty\>>>
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
    if f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>
    then f is r-times diffrentiable iff \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    \<pi\><rsub|i>\<circ\>f is r-times differentiable and then
    \<pi\><rsub|i>\<circ\>D<rsup|n>f=D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>|}>>
    then:

    <\enumerate>
      <item>If <math|r=1> then using <reference|differentiability of map to
      product of spaces> we find that <math|\<forall\>x\<in\>U> that <math|f>
      is differentiable at <math|x\<in\>U> iff
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<pi\><rsub|i>\<circ\>f> is differentiable at <math|x> and that
      <math|\<pi\><rsub|i>\<circ\>Df<around*|(|x|)>=D<around*|(|\<pi\><rsub|i>\<circ\>f|)><around*|(|x|)>>
      so that <math|1\<in\>S>

      <item>If <math|r\<in\>S> consider then <math|r+1\<gtr\>1> then

      <\enumerate>
        <item><dueto|<math|\<Rightarrow\>>>If <math|f> is <math|r+1> times
        differentiable then <math|D<rsup|1>f> is <math|n>-times
        differentiable so that as <math|n\<in\>S> we have that
        <math|\<pi\><rsub|i>\<circ\>D<rsup|1>f> is r-times differentiable
        with <math|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>D<rsup|1>f|)>=\<pi\><rsub|i>\<circ\>D<rsup|r><around*|(|D<rsup|1>f|)>>.
        Using (1) we have then that <math|D<rsup|1><around*|(|\<pi\><rsub|i>\<circ\>f|)>\<equallim\><rsub|<around*|(|1|)>>\<pi\><rsub|i>\<circ\>D<rsup|1>f>
        is r-times differentiable or using <reference|n-times
        differentiability is same as n-1 times differentiability of DF> we
        have that <math|\<pi\><rsub|i>\<circ\>f> is
        <math|<around*|(|r+1|)>>-times differentiable with
        <math|\<pi\><rsub|i>\<circ\>D<rsup|r+1>f=\<pi\><rsub|i>\<circ\>D<rsup|r><around*|(|D<rsup|1>f|)>\<equallim\><rsub|r\<in\>S>D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>D<rsup|1>f|)>\<equallim\><rsub|<around*|(|1|)>>D<rsup|r><around*|(|D<rsup|1><around*|(|\<pi\><rsub|i>\<circ\>f|)>|)>=D<rsup|r+1><around*|(|\<pi\><rsub|i>\<circ\>f|)>>.

        <item><dueto|<math|\<Leftarrow\>>>Assume that
        <math|\<pi\><rsub|i>\<circ\>f> is <math|<around*|(|r+1|)>>-times
        differentiable and <math|\<pi\><rsub|i>\<circ\>D<rsup|r+1>f=D<rsup|r+1><around*|(|\<pi\><rsub|i>\<circ\>f|)>>,
        then <math|D<rsup|1><around*|(|\<pi\><rsub|i>\<circ\>f|)>> is r-times
        differentiable by <reference|n-times differentiability is same as n-1
        times differentiability of DF> and thus as <math|r\<in\>S> we have
        that <math|D<rsup|1>f> is r-times differentiable, using
        <reference|n-times differentiability is same as n-1 times
        differentiability of DF> we have then that <math|f> is
        <math|<around*|(|r+1|)>>-times differentiable. \ \ 
      </enumerate>

      Using mathematical induction we have that <math|S=\<bbb-N\>> proving
      the theorem.
    </enumerate>
  </proof>

  <\theorem>
    <label|C^n of multivalued functions>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|{|<around*|\<langle\>|Y<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of normed spaces and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    maximum norm defined on <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    then given <math|U\<subseteq\>X>, <math|V\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    open sets and <math|r\<in\>\<bbb-N\><rsub|0>> we have that
    <math|f:U\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Y<rsub|i>>
    is <math|C<rsup|r>> iff <math|\<pi\><rsub|i>\<circ\>f> is
    <math|C<rsup|r>>
  </theorem>

  <\proof>
    We have the following cases to consider:

    <\enumerate>
      <item><dueto|<math|r=0>>This follows from <reference|continuous
      functions to a product space>.

      <item><dueto|<math|r\<gtr\>0>>

      <\enumerate>
        <item><dueto|<math|\<Rightarrow\>>>If <math|f> is <math|C<rsup|r>>
        then <math|f> is r-times differentiable, using the previous theorem
        we have then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
        <math|\<pi\>\<circ\>f> is r-times differentiable with
        <math|D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>=\<pi\><rsub|i>\<circ\>D<rsup|r>f>,
        as <math|\<pi\><rsub|i>> and <math|D<rsup|r>f> is continuous we have
        that <math|\<pi\><rsub|i>\<circ\>f> is <math|C<rsup|r>>

        <item><dueto|<math|\<Leftarrow\>>>If
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> we have
        \<pi\><rsub|i>\<circ\>f> is <math|C<rsup|r>> then
        <math|\<pi\><rsub|i>\<circ\>f> is r-times differentiable so by the
        previous theorem we have that <math|f> is r-times differentiable and
        also by the previous theorem we must then have that
        <math|\<pi\><rsub|i>\<circ\>D<rsup|r>f=D<rsup|r><around*|(|\<pi\><rsub|i>\<circ\>f|)>>
        proving that <math|\<pi\><rsub|i>\<circ\>D<rsup|r>f> is continuous
        and by <reference|continuous functions to a product space> that
        <math|D<rsup|r>f> is continuous. So we have that <math|f> is
        <math|C<rsup|r>> \ 
      </enumerate>
    </enumerate>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open, <math|V,W\<subseteq\>Y>
    open, <math|S\<subseteq\>Z> a open set, <math|f:U\<rightarrow\>V> a
    1-times differentiable function [or <math|C<rsup|1>>] and
    \ <math|g:W\<rightarrow\>S> a 1-times differentiable function [or
    <math|C<rsup|1>>] [so using <reference|composition of functions (3)>
    <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|W|)>\<rightarrow\>S> is a
    function] then <math|g\<circ\>f:U<big|cap>f<rsup|-1><around*|(|W|)>\<rightarrow\>S>
    is 1-times differentiable on <math|U> [or <math|C<rsup|1>>] and
    <math|D<rsup|1><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>
    where <math|<around*|(|\<circ\>|)>:L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)>>
    is defined by <math|<around*|(|g,f|)>\<rightarrow\><around*|(|\<circ\>|)><around*|(|g,f|)>=g\<circ\>f>
    (see <reference|composition of continuous linear mapping is continuous
    and multilinear>) is <math|C<rsup|\<infty\>>> and
    <math|h:U\<rightarrow\>L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>> is
    defined by <math|x\<rightarrow\>h<around*|(|x|)>=<around*|(|D<rsup|1>g<around*|(|f<around*|(|x|)>|)>,D<rsup|1>f<around*|(|x|)>|)>>
    [is continuous if <math|f,g> is <math|C<rsup|1>>]
  </lemma>

  <\proof>
    \ As <math|f> is 1-times differentiable on <math|U> and <math|g> is
    1-times differentiable on <math|V> we have <math|\<forall\>x\<in\>U> we
    that <math|Df<around*|(|x|)>> exists and
    <math|Dg<around*|(|f<around*|(|x|)>|)>> exists, using the chain rule (see
    <reference|chain rule>) we have that <math|g\<circ\>f> is differentiable
    at <math|x> with <math|D<rsup|1><around*|(|g\<circ\>f|)><around*|(|x|)>=D<around*|(|g\<circ\>f|)><around*|(|x|)>=Dg<around*|(|f<around*|(|x|)>|)>\<circ\>Df<around*|(|x|)>=D<rsup|1>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|1>f<around*|(|x|)>>.
    Using <reference|composition of continuous linear mapping is continuous
    and multilinear> we have that <math|<around*|(|\<circ\>|)>> is continuous
    and bi-linear so it is by <reference|continuous billinear functions are
    C^infinity> <math|C<rsup|\<infty\>>>. As
    <math|\<pi\><rsub|1>\<circ\>h=<around*|(|D<rsup|1>g|)>\<circ\>f> and and
    <math|\<pi\><rsub|2>\<circ\>h=D<rsup|1>f> we have by
    <reference|continuous functions to a product space> that <math|h> is
    continuous, if <math|g> is <math|C<rsup|1>> (so that <math|D<rsup|1>g> is
    continuous) and <math|f> is <math|C<rsup|1>> (so that <math|D<rsup|1>f>
    is continuous). Finally <math|\<forall\>x\<in\>U> we have
    <math|<around*|(|<around*|(|\<circ\>|)>\<circ\>h|)><around*|(|x|)>=<around*|(|\<circ\>|)><around*|(|h<around*|(|x|)>|)>=<around*|(|\<circ\>|)><around*|(|D<rsup|1>g<around*|(|x|)>,D<rsup|1>f<around*|(|x|)>|)>=D<rsup|1>g<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|1>f<around*|(|x|)>\<Rightarrow\>D<rsup|1><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h>
    which is continuous if <math|f,g> is <math|C<rsup|1>> [so that <math|h>
    is continuous].
  </proof>

  <\theorem>
    <label|generalized chain rule><dueto|General Chain Rule>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open, <math|V\<subseteq\>Y> open,
    <math|n\<in\>\<bbb-N\>>, <math|f:U\<rightarrow\>Y> a n-times
    differentiable function [or <math|C<rsup|n>>] with
    <math|f<around*|(|U|)>\<subseteq\>V> and <math|g:V\<rightarrow\>Z> a
    n-times differentiable function [or <math|C<rsup|n>>] then
    <math|g\<circ\>f:U\<rightarrow\>Z> is n-times differentiable [or
    <math|C<rsup|n>>].
  </theorem>

  <\remark>
    If <math|n=0> then from the fact that <math|f,g> is <math|C<rsup|0>> we
    have that <math|f,g> are continuous and thus that <math|g\<circ\>f> is
    continuous and thus <math|g\<circ\>f> is <math|C<rsup|0>>.
  </remark>

  <\proof>
    We prove this by induction on <math|n> so let
    <math|S=<around*|{|n\<in\>\<bbb-N\>\| if f:U\<rightarrow\>Y is n-times
    differentiable <around*|[|or C<rsup|n>|]>\<nocomma\>\<nocomma\>,
    f<around*|(|U|)>\<subseteq\>V\<nocomma\>, g:V\<rightarrow\>Z is n-times
    differentiable<around*|[|or C<rsup|n>|]> then g\<circ\>f is times
    differentiable <around*|[|or C<rsup|n>|]>|}>> then:

    <\enumerate>
      <item>If <math|n=1> then by the previous lemma we have <math|1\<in\>S>.

      <item>If <math|n\<in\>S> assume then that <math|f> is
      <math|<around*|(|n+1|)>>-times differentiable on <math|U> and <math|g>
      is <math|<around*|(|n+1|)>>-times differentiable on <math|V>. Now
      <math|\<pi\><rsub|1>\<circ\>h=D<rsup|1>g\<circ\>f> is the composition
      of two n-times differentiable functions [or <math|C<rsup|n>>] so that
      by the fact that <math|n\<in\>S> we have that
      <math|\<pi\><rsub|1>\<circ\>h> is n-times differentiable [or
      <math|C<rsup|n>>], likewise we have that
      <math|\<pi\><rsub|2>\<circ\>h=D<rsup|1>f> is n-times differentiable [or
      <math|C<rsup|n>>] so that by <reference|n-times differentiability of
      multi valued function> [or <reference|C^n of multivalued functions>] we
      have that <math|h> is n-times differentiable [or <math|C<rsup|n>>]. We
      have then by the previous theorem that
      <math|D<rsup|1><around*|(|g\<circ\>f|)>=<around*|(|\<circ\>|)>\<circ\>h\<Rightarrowlim\><rsub|n\<in\>S>D<rsup|1><around*|(|g\<circ\>f|)>>
      is n-times differentiable [or <math|C<rsup|n>>] so that by
      <reference|n-times differentiability is same as n-1 times
      differentiability of DF> [or <reference|if f is C^n then D^1f is
      C^n-1>] we have that <math|g\<circ\>f> is
      <math|<around*|(|n+1|)>>-times differentiable [or <math|C<rsup|n+1>>]
      proving that <math|n+1\<in\>S>
    </enumerate>

    Mathematical induction proves the theorem.
  </proof>

  <\definition>
    Let <math|n\<in\>\<bbb-N\>> <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be a finite family of sets and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    functions from <math|X<rsub|i>\<rightarrow\>X<rsub|i+1>> then we define
    <math|f<rsub|n>\<circ\>\<ldots\>\<circ\>f<rsub|1>:X<rsub|1>\<rightarrow\>X<rsub|n+1>>
    recursively by\ 

    <\enumerate>
      <item>If <math|n=1> then <math|f<rsub|1>\<circ\>\<ldots\>\<circ\>f<rsub|1>=f<rsub|1>>

      <item>If <math|n\<gtr\>1> then <math|f<rsub|n>\<circ\>\<ldots\>\<circ\>f<rsub|1>=f<rsub|n>\<circ\><around*|(|f<rsub|n-1>\<circ\>\<ldots\>\<circ\>f|)>>
    </enumerate>
  </definition>

  By mathematical induction we can then generalize the above theorem

  <\theorem>
    Let <math|n,k\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    be normed spaces, <math|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    sets with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|U<rsub|i>\<subseteq\>X<rsub|i>\<wedge\>U<rsub|i>> open,
    <math|<around*|{|f<rsub|i>:U<rsub|i>\<rightarrow\>X<rsub|i+1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a family of functions with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>
    that f<rsub|i><around*|(|U<rsub|i>|)>\<subseteq\>U<rsub|i+1>> and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that <math|f<rsub|i>>
    is r-times differentiable [or <math|C<rsup|r>>] then
    <math|f<rsub|k>\<circ\>\<ldots\>\<circ\>f<rsub|1>> is n-times
    differentiable [or <math|C<rsup|n>>]
  </theorem>

  <\proof>
    Let <math|S=<around*|{|k\<in\>\<bbb-N\>\|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>
    normed spaces\<nocomma\><around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>
    sets with \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    U<rsub|i>\<subseteq\>X<rsub|i> open,\<nocomma\><around*|{|f<rsub|i>:U<rsub|i>\<rightarrow\>X<rsub|i+1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>
    a family of functions with \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    f<rsub|i><around*|(|U<rsub|i>|)>\<subseteq\>U<rsub|i+1> then
    f<rsub|k>\<circ\>\<ldots\>\<circ\>f<rsub|1> is n-times differentiable
    <around*|[|or C<rsup|n>|]>|}>> then we have\ 

    <\enumerate>
      <item>If <math|k=1> then <math|f<rsub|1>\<circ\>\<ldots\>\<circ\>f<rsub|1>=f<rsub|1>>
      so that <math|1\<in\>S>

      <item>If <math|k\<in\>S> then <math|f<rsub|k+1>\<circ\>\<ldots\>\<circ\>f<rsub|1>=f<rsub|k+1>\<circ\><around*|(|f<rsub|k>\<circ\>\<ldots\>\<circ\>f<rsub|1>|)>>
      which is n-times differentiable [or <math|C<rsup|n>>] as
      <math|f<rsub|k>> is n-times differentiable [or <math|C<rsup|k>>] and
      <math|<around*|(|f<rsub|k>\<circ\>\<ldots\>\<circ\>f<rsub|1>|)>> is
      n-times differentiable [or <math|C<rsup|n>>] [as <math|k\<in\>S>]. So
      we have <math|k+1\<in\>S>
    </enumerate>
  </proof>

  <\lemma>
    <label|f_v is differentiable>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>be
    normed spaces then the evaluation function
    <math|ev:L<around*|(|X,Y|)>\<times\>X\<rightarrow\>Y> defined by
    <math|<around*|(|L,v|)>\<rightarrow\>ev<around*|(|L,v|)>=L<around*|(|v|)>>
    is bi-linear and continuous hence of class <math|C<rsup|\<infty\>>>(see
    <reference|continuous billinear functions are C^infinity>) and also by
    <reference|continuous billinear functions are C^infinity>
    <math|D<rsup|1>ev<around*|(|L,v|)>=ev<around*|(|L,\<ast\>|)>+ev<around*|(|\<ast\>,v|)>>
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

      <item><dueto|continuity><math|<around*|\<\|\|\>|ev<around*|(|L,v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\>1\<cdot\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>>|)>>
      proving that <math|ev> is multi linear with
      <math|<around*|\<\|\|\>|ev|\<\|\|\>>\<leqslant\>1>
    </enumerate>
  </proof>

  <\lemma>
    <label|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open,
    <math|n\<in\>\<bbb-N\>,n\<gtr\>1> \ and <math|f:U\<rightarrow\>Y> a
    n-times differentiable function [or <math|f> is <math|C<rsup|n>>] then
    given <math|h\<in\>X> we have that <math|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>:U\<rightarrow\>Y>
    defined by <math|x\<rightarrow\>D<rsup|1>f<around*|(|x|)><around*|(|h|)>>
    is <math|<around*|(|n-1|)>>-times differentiable (or is
    <math|C<rsup|n-1>>], further <math|\<forall\>k\<in\>X> we have<math|
    D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)><around*|(|k|)>=D<rsup|2>f<around*|(|x|)><around*|(|h|)><around*|(|k|)>>.
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|v\<in\>X> define <math|\<varphi\><rsub|v>:U\<rightarrow\>L<around*|(|X,Y|)>\<times\>X>
      by <math|x\<rightarrow\><around*|(|D<rsup|1>f<around*|(|x|)>,v|)>> then
      we have that <math|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>=D<rsup|1>f>
      which is <math|<around*|(|n-1|)>>-times differentiable,
      <math|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>=C<rsub|U,v>> which is
      <math|C<rsup|\<infty\>>> (see <reference|constant functions are
      C^infinite>) so that by <reference|n-times differentiability of multi
      valued function> <math|\<varphi\><rsub|v>> is
      <math|<around*|(|n-1|)>>-times differentiable [or by <reference|C^n of
      multivalued functions> <math|\<varphi\><rsub|v>> is
      <math|C<rsup|n-1>>]. Further by <reference|n-times differentiability of
      multi valued function> we have that
      <math|\<forall\>x\<in\>U\<vDash\>D<rsup|1>\<varphi\>=<around*|(|D<around*|(|\<pi\><rsub|1>\<circ\>\<varphi\><rsub|v>|)>,D<around*|(|\<pi\><rsub|2>\<circ\>\<varphi\><rsub|v>|)>|)>=<around*|(|D<rsup|2>f,C<rsub|U,0>|)>>

      <item><math|\<forall\>h\<in\>X,\<forall\>x\<in\>U> we have
      <math|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)><around*|(|x|)>=D<rsup|1>f<around*|(|x|)><around*|(|h|)>=ev<around*|(|D<rsup|1>f<around*|(|x|)>,h|)>=ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>=<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>\<Rightarrow\>D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>=ev\<circ\>\<varphi\><rsub|h>>
      so that by the chain rule (see <reference|generalized chain rule>) we
      have that <math|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>> is
      <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>].
      Further <math|D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>=D<around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)>=D<around*|(|<around*|(|ev\<circ\>\<varphi\><rsub|h>|)><around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|chain
      rule>>>D ev<around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>\<circ\>D\<varphi\><rsub|h><around*|(|x|)>=<around*|(|ev<around*|(|\<pi\><rsub|1><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>,\<ast\>|)>+ev<around*|(|\<ast\>,\<pi\><rsub|2><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>|)>|)>\<circ\><around*|(|D<rsup|2>f<around*|(|x|)>,C<rsub|U,0>|)>\<Rightarrow\>D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)><around*|(|k|)>=<around*|(|ev<around*|(|\<pi\><rsub|1><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>,\<ast\>|)>+ev<around*|(|\<ast\>,\<pi\><rsub|2><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>|)>|)><around*|(|D<rsup|2>f<around*|(|x|)>,C<rsub|U,0>|)><around*|(|k|)>=<around*|(|ev<around*|(|\<pi\><rsub|1><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>,\<ast\>|)>+ev<around*|(|\<ast\>,\<pi\><rsub|2><around*|(|\<varphi\><rsub|h><around*|(|x|)>|)>|)>|)><around*|(|D<rsup|2>f<around*|(|x|)><around*|(|k|)>,0|)>=ev<around*|(|D<rsup|1>f<around*|(|x|)>,0|)>+ev<around*|(|D<rsup|2>f<around*|(|x|)><around*|(|k|)>,h|)>=D<rsup|1>f<around*|(|x|)><around*|(|0|)>+D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>=D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>>
      proving that <math|><math|D<rsup|1><around*|(|D<rsup|1>f<around*|(|\<ast\>|)><around*|(|h|)>|)><around*|(|x|)><around*|(|k|)>=D<rsup|2>f<around*|(|x|)><around*|(|k|)><around*|(|h|)>>
    </enumerate>
  </proof>

  <\lemma>
    <label|(x,h)-\<gtr\>Df(x)(h) differentiability>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>be
    normed space, <math|n\<in\>\<bbb-N\>>, <math|f:U\<rightarrow\>Y> a
    n-times differentiable function [or <math|C<rsup|n>> function] then
    <math|\<Delta\>f:X\<times\>X\<rightarrow\>Y> defined by
    <math|<around*|(|x,h|)>\<rightarrow\>\<Delta\>f<around*|(|x,h|)>=D<rsup|1>f<around*|(|x|)><around*|(|h|)>>
    is <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>]
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|\<varphi\>:U\<times\>X\<rightarrow\>L<around*|(|X,Y|)>\<times\>X>
      by <math|<around*|(|x,v|)>\<rightarrow\><around*|(|D<rsup|1>f<around*|(|x|)>,v|)>>
      then as <math|\<pi\><rsub|1>\<circ\>\<varphi\>=D<rsup|1>f> is by
      <reference|n-times differentiability is same as n-1 times
      differentiability of DF> [or <reference|if f is C^n then D^1f is
      C^n-1>] we have that <math|\<pi\><rsub|1>\<circ\>\<varphi\>> is
      <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>]
      and <math|\<pi\><rsub|2>\<circ\>\<varphi\>=1<rsub|X>> which is of class
      <math|C<rsup|\<infty\>>> we have that <math|\<varphi\>> is
      <math|<around*|(|n-1|)>>-times differentiable [or <math|C<rsup|n-1>>]

      <item><math|<around*|(|ev\<circ\>\<varphi\>|)><around*|(|x,h|)>=ev<around*|(|\<varphi\><around*|(|x,h|)>|)>=ev<around*|(|D<rsup|1>f<around*|(|x|)>,v|)>=D<rsup|1>f<around*|(|x|)><around*|(|v|)>=\<Delta\>f<around*|(|x,v|)>\<Rightarrow\>ev\<circ\>\<varphi\>=\<Delta\>f>
      proving as <math|\<varphi\>> is <math|<around*|(|n-1|)>>-times
      differentiable [or <math|C<rsup|n-1>>] and <math|ev> is
      <math|C<rsup|\<infty\>>> we have by the generalized chain rule that
      <math|\<Delta\>f>is <math|<around*|(|c-1|)>> differentiable [or of
      class <math|C<rsup|n>>]
    </enumerate>
  </proof>

  <\theorem>
    <label|n-times differentiability and partial derivatives>Let
    <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>be
    normed spaces, <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    be a the product space, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space with maximum norm (see <reference|norm of finite product
    of normed spaces>) on <math|X>, <math|U\<subseteq\>X> open,
    <math|n\<in\>\<bbb-N\>> [or <math|n\<in\>\<bbb-N\><rsub|0>>] and
    <math|f:U\<rightarrow\>Y> is n-times differentiable [or <math|C<rsup|n>>]
    then <math|f<rsup|<around*|(|i|)>>:\<pi\><rsub|i><around*|(|U|)>\<rightarrow\>Y>
    defined by <math|f\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><rsub|\|\<pi\><rsub|i><around*|(|U|)>>>
    is n-times differentiable [<math|>or <math|C<rsup|n>>] with
    <math|D<rsub|i>f=D<rsup|1>f<rsup|<around*|(|i|)>>\<circ\>\<pi\><rsub|i>>
    and further <math|D<rsub|i>f> is <math|<around*|(|n-1|)>>-times
    differentiable.\ 
  </theorem>

  <\proof>
    First if <math|n=0> then as <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
    is continuous and <math|f> is <math|C<rsup|0>> thus continuous we have
    that <math|f<rsup|<around*|(|i|)>>> is <math|C<rsup|0>>.

    Second if <math|n\<gtr\>0> then using <reference|(x1,...,*,...) is
    differentiable> we have that <math|D<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|t|)>=<around*|(|0<rsub|i>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
    is a linear continuous function, so <math|C<rsup|\<infty\>>> and thus by
    <reference|n-times differentiability is same as n-1 times
    differentiability of DF> we have that
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
    is of class <math|C<rsup|\<infty\>>>. Using the generalized chain rule
    (see <reference|generalized chain rule>) we have then that
    <math|f<rsup|<around*|(|i|)>>> is n-times differentiable [or
    <math|C<rsup|n>>]. Also using <reference|partial differential definition>
    we have by definition that <math|D<rsup|><rsub|i>f<around*|(|x<rsub|>|)>=D
    f<rsup|<around*|(|i|)>><around*|(|\<pi\><rsub|i><around*|(|x|)>|)>=D<rsup|1>f<rsup|<around*|(|i|)>><around*|(|\<pi\><rsub|i><around*|(|x|)>|)>\<Rightarrow\>D<rsub|i>f=D<rsup|1>f<rsup|<around*|(|i|)>>\<circ\>\<pi\><rsub|i>>.
    Which as <math|\<pi\><rsub|i>> (being linear and continuous) is
    <math|C<rsup|\<infty\>>> means by <reference|n-times differentiability is
    same as n-1 times differentiability of DF> that <math|D<rsub|i>f> is
    <math|<around*|(|n-1|)>>-times differentiable [or by <reference|if f is
    C^n then D^1f is C^n-1> <math|D<rsub|i>f> is <math|C<rsup|n-1>>].\ 
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
    continue> that <math|f\<cdot\>g> is continuous and thus <math|C<rsup|0>>.
    Second if <math|n\<gtr\>0> defined then
    <math|\<varphi\>:U\<rightarrow\>\<bbb-K\>\<times\>\<bbb-K\>> by
    <math|x\<rightarrow\>\<varphi\><around*|(|x|)>=<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
    then as <math|\<pi\><rsub|1>\<circ\>\<varphi\>=f> and
    <math|\<pi\><rsub|2>\<circ\>\<varphi\>=g> we have that <math|\<varphi\>>
    is n-times differentiable [or <math|C<rsup|n>>] (see <reference|n-times
    differentiability of multi valued function> [or <reference|C^n of
    multivalued functions>]). As <math|<around*|(|\<cdot\>|)>:\<bbb-K\>\<times\>\<bbb-K\>\<rightarrow\>\<bbb-K\>>
    defined by <math|<around*|(|x,y|)>\<rightarrow\>x\<cdot\>y> is trivially
    bi-linear and continuous we have by <reference|continuous billinear
    functions are C^infinity> that <math|<around*|(|\<cdot\>|)>> is
    <math|C<rsup|\<infty\>>>. Now as <math|<around*|(|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>|)><around*|(|x|)>=<around*|(|\<cdot\>|)><around*|(|\<varphi\><around*|(|x|)>|)>=<around*|(|\<cdot\>|)><around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
    we have <math|<around*|(|\<cdot\>|)>\<circ\>\<varphi\>=f\<cdot\>g> we
    have by the generalized chain rule that <math|f\<cdot\>g> is n-times
    differentiable [or <math|C<rsup|n>>].
  </proof>

  <\theorem>
    <label|differentiation under the integral sign>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the set of real tuple's together with the maximum norm defined on
    <math|<around*|\|||\|>>, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space, <math|U\<subseteq\>\<bbb-R\><rsup|n>> open and
    <math|U\<subseteq\>\<bbb-R\><rsup|n>> open and
    <math|f:U\<times\><around*|[|a,b|]>\<rightarrow\>Y> (where
    <math|a\<less\>b>) and <math|f> a function satisfying the following
    conditions

    <\enumerate>
      <item><math|f> is a continuous function

      <item><math|\<forall\>t\<in\><around*|[|a,b|]>> the function
      <math|f<around*|(|\<ast\>,t|)>:U\<rightarrow\>Y> defined by
      <math|x\<rightarrow\>f<around*|(|\<ast\>,t|)><around*|(|x|)>=f<around*|(|x,t|)>>
      is differentiable of class <math|C<rsup|r>,r\<geqslant\>1>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,r|}>> the function
      <math|D<rsup|i>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>:U\<times\><around*|[|a,b|]>\<rightarrow\>L<rsup|i><around*|(|\<bbb-R\><rsup|n>;Y|)>>
      defined by <math|<around*|(|x,t|)>\<rightarrow\><around*|(|D<rsup|i>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>=D<rsup|i>f<around*|(|\<ast\>,t|)><around*|(|x|)>>
      is continuous.
    </enumerate>

    then if we define <math|\<forall\>x\<in\>U>
    <math|f<around*|(|x,\<ast\>|)>:<around*|[|a,b|]>\<rightarrow\>Y> by
    <math|t\<rightarrow\>f<around*|(|x,\<ast\>|)><around*|(|t|)>=f<around*|(|x,t|)>>
    we have that the function <math|F<around*|(|x|)>:U\<rightarrow\>Y>
    defined by <math|x\<rightarrow\>F<around*|(|x|)>=<big|int><rsub|a><rsup|b>f<around*|(|x,\<ast\>|)>>
    is defined and of class <math|C<rsup|r>>. Further
    <math|D<rsup|r>F<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>
    [where <math|D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>:<around*|[|a,b|]>\<rightarrow\>L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>>
    with <math|t\<rightarrow\><around*|(|D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)>=D<rsup|r>f<around*|(|\<ast\>,t|)><around*|(|x|)>>].
    A easier way to note this is by the classic notation of the Newton
    integral as <math|D<rsup|r>F<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|r>f<around*|(|\<ast\>,t|)><around*|(|x|)>\<cdot\>dt>.
  </theorem>

  <\proof>
    The proof is done in different stages

    <\enumerate>
      <item>First we prove that <math|\<forall\>x\<in\>U>
      <math|F<around*|(|x|)>=<big|int><rsub|a><rsup|b>f<around*|(|x,\<ast\>|)>>
      is well defined. From the continuity of <math|f> and
      <reference|Continuity of function on a topological product> we have
      that <math|\<forall\>x\<in\>U> that <math|f<around*|(|x,\<ast\>|)>> is
      continuous, So the integral <math|<big|int><rsub|a><rsup|b>f<around*|(|x,\<ast\>|)>>
      is well defined.

      <item>The rest of the proof is done by induction so let
      <math|S=<around*|{|r\<in\>\<bbb-N\>\|if f is function satisfying
      <around*|(|1|)>,<around*|(|2|)>,<around*|(|3|)> of the theorem
      then\<forall\>x\<in\>U F<around*|(|x|)> is defined\<nocomma\>, of class
      C<rsup|r> and D<rsup|r>F<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|}>>
      then we have to prove:

      <\enumerate>
        <item><dueto|Base case <math|r=1>>First using <reference|space of
        linear continuous maps to a Banach space is Banach> we have that
        <math|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>=L<around*|(|\<bbb-R\><rsup|n>;Y|)>>
        is a Banach space. Further <math|\<forall\>x\<in\>U> we have that
        <math|f<rsub|1><rsup|<around*|(|1|)>>:<around*|[|a,b|]>\<rightarrow\>L<rsup|1><around*|(|\<bbb-R\>;Y|)>>
        defined by <math|t\<rightarrow\>f<rsub|1><rsup|<around*|(|1|)>><around*|(|t|)>=D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>>
        is continuous by (3) and<reference|Continuity of function on a
        topological product>. So the integral
        <math|<big|int><rsub|a><rsup|b>f<rsub|1><rsup|<around*|(|1|)>>=<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>\<in\>L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>
        exists and is well defined. Now given <math|h\<in\>U<rsub|x>> we have
        if we define\ 

        <\equation>
          <label|eq 12.15>\<Delta\><around*|(|x,h|)>=F<around*|(|x+h|)>-F<around*|(|x|)>-<around*|(|<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|h|)>
        </equation>

        that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<Delta\><around*|(|x,h|)>>|<cell|\<equallim\><rsub|<text|<reference|integral
          of function to linear operators>>>>|<cell|F<around*|(|x+h|)>-F<around*|(|x|)>-<big|int><rsub|a><rsup|b><around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|a><rsup|b>f<around*|(|x+h,\<ast\>|)>-<big|int><rsub|a><rsup|b>f<around*|(|x,\<ast\>|)>-<big|int><rsub|a><rsup|b><around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|a><rsup|b><around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>|]>>>>>
        </eqnarray*>

        giving\ 

        <\equation>
          <label|eq 12.16>\<Delta\><around*|(|x,h|)>=<big|int><rsub|a><rsup|b><around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>|]>
        </equation>

        As given <math|t\<in\><around*|[|a,b|]>> we have by (2) that
        <math|f<around*|(|\<ast\>,t|)>> is <math|C<rsup|1>> thus
        differentiable at every <math|x\<in\>U> there exists by
        <reference|alternative definitions of differentiability> a
        <math|\<varepsilon\>>-function <math|\<varepsilon\><rsub|x,t>:U<rsub|x>\<rightarrow\>Y>
        such that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varepsilon\><rsub|x,t><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>|<cell|=>|<cell|f<around*|(|\<ast\>,t|)><around*|(|x+h|)>-f<around*|(|\<ast\>,t|)><around*|(|x|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+h,t|)>-f<around*|(|x,t|)>-D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+h,t|)>-f<around*|(|x,t|)>-<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)><around*|(|h|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x+h,\<ast\>|)><around*|(|t|)>-f<around*|(|x,\<ast\>|)><around*|(|t|)>-<around*|[|<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|\<cdot\>|)><around*|(|h|)>|]><around*|(|t|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|\<cdot\>|)><around*|(|h|)>|]><around*|(|t|)>>>>>
        </eqnarray*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varepsilon\><rsub|x,t><around*|(|0|)>>|<cell|=>|<cell|0>>>>
        </eqnarray*>

        This defines using the Axiom of Choice a function
        <math|\<varepsilon\><rsub|x>:<around*|[|a,b|]>\<rightarrow\>\<cal-C\><around*|(|U<rsub|x>,Y|)>>
        such that <math|\<forall\>t\<in\><around*|[|a,b|]>> we have
        <math|\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>=<around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>|]><around*|(|t|)>>
        or <math|<around*|(|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>|)><around*|(|t|)>=\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>=<around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>|]><around*|(|t|)>>
        giving

        <\equation>
          <label|eq 12.17><around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>=f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>
          , \<varepsilon\><rsub|x><around*|(|.|)><around*|(|0|)>=0
        </equation>

        so that using <reference|eq 12.16> we have\ 

        <\equation>
          <label|eq 12.18>\<Delta\><around*|(|x,h|)>=<big|int><rsub|a><rsup|b><around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>
        </equation>

        Next define <math|\<varphi\><rsub|x>:U<rsub|x>\<times\><around*|[|a,b|]>\<rightarrow\>Y>
        defined by <math|<around*|(|h,t|)>\<rightarrow\>\<varphi\><rsub|x><around*|(|h,t|)>=D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>=Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>>
        and prove that <math|\<varphi\><rsub|x>> is continuous. So if
        <math|<around*|(|h<rprime|'>,t<rprime|'>|)>,<around*|(|h,t|)>\<in\>U<rsub|x>\<times\><around*|[|a,b|]>>
        then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varphi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>-\<varphi\><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>|)>+Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>
          >>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h<rprime|'>-h|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>>>>>
        </eqnarray*>

        so we have\ 

        <\equation>
          <label|eq 12.19><around*|\<\|\|\>|\<varphi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>-\<varphi\><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>-Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>
        </equation>

        Now given <math|<around*|(|h,t|)>\<in\>U<rsub|x>\<times\><around*|[|a,b|]>>
        and <math|\<varepsilon\>\<gtr\>0>. \ Then from the continuity of
        <math|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>>
        we have by <reference|Continuity of function on a topological
        product> that <math|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>:<around*|[|a,b|]>\<rightarrow\><around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)>=<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>=D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>>
        is continuous. So that there exists a <math|\<delta\><rsub|1>> such
        that if <math|<around*|\||t-t<rprime|'>|\|>\<less\>\<delta\><rsub|1>>
        then <math|<around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>=<around*|\<\|\|\>|<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)>-<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)><around*|(|t<rprime|'>|)>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>+1|)>>>
        so that\ 

        <\equation>
          <label|eq 12.20><around*|\||t-t<rprime|'>|\|>\<less\>\<delta\><rsub|1>\<Rightarrow\><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>+1|)>>
        </equation>

        Take now <math|\<delta\>=min<around*|(|1,<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>+1|)>>,\<delta\><rsub|1>|)>>
        then if we have <math|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|Rr<rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|Df<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>+1|)>>\<less\><frac|\<varepsilon\>|2>>
        so that\ 

        <\equation>
          <label|eq 12.21><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|Rr<rsup|n>;Y|)>>\<cdot\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>
        </equation>

        As <math|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h<rprime|'>-h+h|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>>+<around*|\<\|\|\>|h<rprime|'>-h|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>>+1>
        we have\ 

        <\equation>
          <label|eq 12.22><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>>+1
        </equation>

        So if <math|max<around*|(|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>,<around*|\||t-t<rprime|'>|\|>|)>=<around*|\<\|\|\>|<around*|(|h-h<rprime|'>,t-t<rprime|'>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\>>
        then using <reference|eq 12.19>,<reference|eq 12.20> we have that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<varphi\><rsub|x><around*|(|h,t|)>-\<varphi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>+1|)>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>+1|)>>\<cdot\><around*|(|<around*|\<\|\|\>|h|\<\|\|\>>+1|)>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>>>>
        </eqnarray*>

        proving that <math|\<varphi\><rsub|x>> is indeed continuous. Define
        now <math|\<varepsilon\><rprime|'><rsub|x>:U<rsub|x>\<times\><around*|[|a,b|]>\<rightarrow\>Y>
        where <math|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>=<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>=<around*|(|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>|)><around*|(|t|)>\<equallim\><rsub|<text|<reference|eq
        12.17>>><around*|[|f<around*|(|x+h,\<ast\>|)>-f<around*|(|x,\<ast\>|)>-<around*|[|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|]><around*|(|\<cdot\>|)><around*|(|h|)>|]><around*|(|t|)>=f<around*|(|x+h,t|)>+f<around*|(|x,t|)>+D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)><around*|(|h|)>=f<around*|(|x+h,t|)>+f<around*|(|x,t|)>+\<varphi\><around*|(|x,t|)>>.
        As <math|\<varphi\>> is continuous, <math|f> is continuous and
        <math|<around*|(|h,t|)>\<rightarrow\><around*|(|x+h,t|)>> is
        continuous we have that <math|\<varepsilon\><rprime|'><rsub|x>> is a
        continuous function. So we have proved that

        <\equation>
          <label|eq 12.23>\<varepsilon\><rprime|'><rsub|x>:U<rsub|x>\<times\><around*|[|a,b|]>\<rightarrow\>Y
          defined by \<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>=<around*|(|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)><around*|(|t|)>|)>
          is continuous
        </equation>

        Define now <math|\<xi\><rsub|x>:U<rsub|x>\<times\><around*|[|a,b|]>\<rightarrow\>Y>
        defined by <math|<around*|(|h,t|)>\<rightarrow\>\<xi\><rsub|x><around*|(|t|)><around*|(|h|)>=<around*|(|\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>|)><around*|(|t|)>=\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>>
        then we prove that <math|\<xi\><rsub|x>> is continuous at
        <math|U<rsub|x>\<times\><around*|[|a,b|]>>. So let
        <math|<around*|(|h,t|)>\<in\>U<rsub|x>\<times\><around*|[|a,b|]>> and
        <math|\<varepsilon\>\<gtr\>0> then we have two cases to consider:

        <\enumerate>
          <item><dueto|<math|<around*|(|h,t|)>\<in\><around*|(|U<rsub|x>\\<around*|{|0|}>|)>\<times\><around*|[|a,b|]>>>.
          As <math|h\<neq\>0> we have <math|<around*|\<\|\|\>|h|\<\|\|\>>\<gtr\>0>
          so that there exists a <math|\<lambda\>\<gtr\>0> such that
          <math|<around*|\<\|\|\>|h|\<\|\|\>>\<gtr\>\<lambda\>\<gtr\>0>. Take
          <math|\<delta\><rsub|1>=<frac|<around*|\<\|\|\>|h|\<\|\|\>>-\<lambda\>|2>>
          then if <math|h<rprime|'>\<in\>U<rprime|'><rsub|x>> with
          <math|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|1>>
          then <math|0\<less\>\<lambda\>\<less\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>
          \ [for if <math|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<leqslant\>\<lambda\>>
          then \ <math|<around*|\<\|\|\>|h|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<less\><frac|<around*|\<\|\|\>|h|\<\|\|\>>-\<lambda\>|2>+<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|h|\<\|\|\>>-\<lambda\>|2>+\<lambda\>=<frac|<around*|\<\|\|\>|h|\<\|\|\>>-\<lambda\>+2\<ast\>\<lambda\>|2>=<frac|<around*|\<\|\|\>|h|\<\|\|\>>|2>+<frac|\<lambda\>|2>\<Rightarrow\><around*|\<\|\|\>|h|\<\|\|\>>-<frac|<around*|\<\|\|\>|h|\<\|\|\>>|2>\<less\><frac|\<lambda\>|2>\<Rightarrow\><frac|<around*|\<\|\|\>|h|\<\|\|\>>|2>\<less\><frac|\<lambda\>|2>\<Rightarrow\><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<lambda\>\<less\>\|<around*|\||h|\|>\<Rightarrow\><around*|\<\|\|\>|h|\<\|\|\>>\<less\><around*|\<\|\|\>|h|\<\|\|\>>>
          a contradiction]. So given <math|<around*|(|h<rprime|'>,t<rprime|'>|)>>
          with <math|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|1>>
          and thus <math|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<gtr\>0>
          then we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>-\<varepsilon\><rsub|x><around*|(|t<rprime|'>|)><around*|(|h<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|\<\|\|\>|h|\<\|\|\>>,<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<geqslant\>0>>|<cell|<around*|\<\|\|\>|<frac|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>|<around*|\<\|\|\>|h|\<\|\|\>>>-<frac|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<cdot\>\<varepsilon\><rsub|x><around*|(|t<rprime|'>|)><around*|(|h<rprime|'>|)>|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|<around*|\<\|\|\>|h|\<\|\|\>>>-<frac|\<varepsilon\><rprime|'><around*|(|h<rprime|'>,t<rprime|'>|)>|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>-<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>><around*|\<\|\|\>|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>-<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>-<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\>\<varepsilon\><rprime|'><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|[|<around*|\||<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>-<around*|\<\|\|\>|h|\<\|\|\>>|\|>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>-\<varepsilon\><rprime|'><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>|]>>>>>
          </eqnarray*>

          proving that\ 

          <\equation>
            <label|eq 12.24><around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|1|<around*|\<\|\|\>|h|\<\|\|\>>h<rprime|'>>\<cdot\><around*|[|<around*|(|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>-<around*|\<\|\|\>|h|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>-\<varepsilon\><rprime|'><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>|]>
          </equation>

          Now by continuity of <math|\<varepsilon\><rprime|'><rsub|x>> we can
          choose a <math|\<delta\><rsub|2>\<gtr\>0> such that if
          <math|<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\><rsub|2>>
          then <math|<around*|\<\|\|\>|\<varepsilon\><rsub|x><rprime|'><around*|(|h,t|)>-\<varepsilon\><rprime|'><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>\<cdot\>\<lambda\>|2>\<Rightarrow\><frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rsub|x><rprime|'><around*|(|h,t|)>-\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|\<varepsilon\>\<cdot\>\<lambda\>|2\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<less\><frac|\<varepsilon\>|2>>
          [as <math|\<lambda\>\<less\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>]
          so that by <reference|eq 12.24> we have if
          <math|max<around*|(|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>,<around*|\||t-t<rprime|'>|\|>|)>=<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
          \ then\ 

          <\equation>
            <label|eq 12.25><around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|\||<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>-<around*|\<\|\|\>|h|\<\|\|\>>|\|>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<frac|\<varepsilon\>|2>
          </equation>

          Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,<frac|\<varepsilon\>\<cdot\>\<lambda\><rsup|2>|2\<cdot\><around*|(|<around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+1|)>>|)>>
          then if <math|max<around*|(|<around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>,<around*|\||t-t<rprime|'>|\|>|)>=<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\>>
          we have by <reference|eq 12.25> that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>>|<cell|\<less\>>|<cell|<frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|\||<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>-<around*|\<\|\|\>|h|\<\|\|\>>|\|>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|1|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|h-h<rprime|'>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>\<cdot\>\<lambda\><rsup|2>\<cdot\><around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<cdot\>2\<cdot\><around*|(|<around*|\<\|\|\>|\<varepsilon\><rprime|'><rsub|x><around*|(|h,t|)>|\<\|\|\>><rsub|Y>+1|)>>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>\<cdot\>\<lambda\><rsup|2>|2\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>>>>
          </eqnarray*>

          proving finally that <math|\<xi\><rsub|x>> is continue at
          <math|<around*|(|h,t|)>>.

          <item><dueto|<math|<around*|(|h,t|)>=<around*|(|0,t|)>\<in\><around*|{|0|}>\<times\><around*|[|a,b|]>>>then
          by <reference|eq 12.17> we have
          <math|\<forall\>t\<in\><around*|[|a,b|]>\<vDash\>\<xi\><rsub|x><around*|(|0,t|)>=\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>=0>,
          also if <math|t\<in\><around*|[|a,b|]>> we have by continuity of
          <math|\<varepsilon\><rsub|x><around*|(|t|)>> at <math|0> that
          <math|\<exists\>\<delta\><rsub|t>\<gtr\>0> such that if
          <math|<around*|\<\|\|\>|h<rprime|'>-0|\<\|\|\>>=<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|t>>
          then <math|<around*|\<\|\|\>|\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><rsub|x><around*|(|t|)><around*|(|0|)>-\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
          so that if <math|<around*|(|h<rprime|'>,t<rprime|'>|)>\<in\>U<rsub|x>\<times\><around*|[|a,b|]>>
          with <math|max<around*|(|<around*|\<\|\|\>|h<rprime|'>|\<\|\|\>>,<around*|\||t-t<rprime|'>|\|>|)>=<around*|\<\|\|\>|<around*|(|0-h,t-t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\>>
          then <math|<around*|\<\|\|\>|\<xi\><rsub|x><around*|(|0,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varepsilon\><rsub|x><around*|(|t|)><around*|(|0|)>-\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
          proving continuity at <math|<around*|(|0,t|)>>.\ 
        </enumerate>

        Given now a <math|x\<in\>U> then as <reference|Ux is open> \ we can
        find a <math|\<delta\>\<gtr\>0> such that
        <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,2\<cdot\>\<delta\>|)>\<subseteq\>U<rsub|x>>
        so that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|0,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,2\<cdot\>\<delta\>|)>\<subseteq\>U<rsub|x>>.
        The set <math|K=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|x,\<delta\>|)>\<times\><around*|[|a,b|]>>
        is compact because of <reference|product of compact subspaces>
        (corollary of Tychonoff's), <reference|[a,b] is compact>,
        <reference|compact subsets of the reals> (Heine Borel) and
        <reference|closed balls are closed>
        (<math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|0,\<delta\>|)>>
        is closed). So by <reference|continuous functions on a compact set
        are uniform continue> we have that <math|\<xi\><rsub|x>> is uniform
        continuous on <math|K>. So given a <math|\<varepsilon\>\<gtr\>0>
        there exists a <math|\<delta\><rprime|'>\<gtr\>0> such that
        <math|\<forall\><around*|(|h,t|)>\<in\>K> we have if
        <math|<around*|(|h<rprime|'>,t<rprime|'>|)>\<in\>K> is such that
        <math|<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|b-a>>.
        More specifically <math|\<forall\>t\<in\><around*|[|a,b|]>> we have
        if <math|<around*|\<\|\|\>|h-0|\<\|\|\>>=<around*|\<\|\|\>|h|\<\|\|\>>\<less\>min<around*|(|\<delta\>.\<delta\><rprime|'>|)>>
        then <math|<around*|\<\|\|\>|<around*|(|h,t|)>-<around*|(|0,t|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|h,0|)>|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,t|)>-\<xi\><rsub|x><around*|(|0,t|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|b-a>>
        from which it follows that [if <math|\<xi\><rsub|x><around*|(|h,\<ast\>|)>:<around*|[|a,b|]>\<rightarrow\>Y>
        is defined by <math|\<xi\><rsub|x><around*|(|h,\<ast\>|)><around*|(|t|)>=\<xi\><rsub|x><around*|(|h,t|)>>]

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>\<xi\><rsub|x><around*|(|h,\<ast\>|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|<big|int><rsub|a><rsup|b><around*|\<\|\|\>|\<xi\><rsub|x><around*|(|h,\<ast\>|)>|\<\|\|\>><rsub|Y>
          <around*|(|see <reference|property of
          integral>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|b-a|)>\<cdot\><frac|\<varepsilon\>|b-a>
          <around*|(|see <reference|property of integral>
          again|)>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        this together with

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><rsub|a><rsup|b>\<xi\><rsub|x><around*|(|0,t|)>>|<cell|=>|<cell|<big|int><rsub|a><rsup|b>C<rsub|0>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|property
          of integral>>>>|<cell|<around*|(|b-a|)>\<cdot\>0=0>>>>
        </eqnarray*>

        proves that <math|\<zeta\>:U<rsub|x>\<rightarrow\>Y> defined by
        <math|h\<rightarrow\>\<zeta\><around*|(|h|)>=<big|int><rsub|a><rsup|b>\<xi\><rsub|x><around*|(|h,\<ast\>|)>>
        is a <math|\<varepsilon\>>-function. As
        <math|\<xi\><around*|(|h,\<ast\>|)><around*|(|t|)>=\<varepsilon\><rsub|x><around*|(|t|)><around*|(|h|)>=\<varepsilon\><rsub|x><around*|(|\<cdot\>|)><around*|(|h|)>>
        we have by <reference|eq 12.15>, <reference|eq 12.18> and
        <reference|linearity of integral> that
        <math|F<around*|(|x+h|)>-F<around*|(|x|)>-<around*|(|<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|h|)>=<around*|\<\|\|\>|h|\<\|\|\>>\<cdot\><big|int><rsub|a><rsup|b>\<xi\><rsub|x><around*|(|h,\<cdot\>|)>>
        a <math|\<varepsilon\>>-function, proving that <math|F> is
        differentiable for every <math|x\<in\>U> with
        <math|DF<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>
        so that <math|F> is differentiable on <math|U> with
        <math|D<rsup|1>F<around*|(|x|)>=<big|int><rsup|b><rsub|a>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>.
        Now to prove that <math|F> is <math|C<rsup|1>> we must prove that
        <math|D<rsup|1>F:U\<rightarrow\>L<around*|(|\<bbb-R\>,Y|)> is
        continuous\<nosymbol\>>. Let <math|x\<in\>U> then we can find a
        <math|\<delta\>\<gtr\>0> such that
        <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\><wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,2\<delta\>|)>\<subseteq\>U>
        then the set <math|K=<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|x,\<delta\>|)>\<times\><around*|[|a,b|]>>
        is compact because of \ <reference|product of compact subspaces>
        (corollary of Tychonoff's), <reference|[a,b] is compact>,
        <reference|compact subsets of the reals> (Heine Borel) and
        <reference|closed balls are closed>
        (<math|<wide|B<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<bar\>><around*|(|0,\<delta\>|)>>
        is closed). From the continuity of
        <math|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>>
        we have then that <math|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>>
        is uniform continuous on <math|K>. So
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|<around*|(|x,t|)>,<around*|(|x<rprime|'>,t<rprime|'>|)>\<in\>K\<times\><around*|[|a,b|]>>
        with <math|<around*|\<\|\|\>|<around*|(|x,t|)>-<around*|(|x<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>=<around*|\<\|\|\>|<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|h,t|)>-<around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|h<rprime|'>,t<rprime|'>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<less\><frac|\<varepsilon\>|b-a>>
        or

        <\equation>
          <label|eq 12.26>If <around*|\<\|\|\>|<around*|(|x,t|)>-<around*|(|x<rprime|'>,t<rprime|'>|)>|\<\|\|\>>\<less\>\<delta\><rprime|'>\<wedge\><around*|(|x,t|)>,<around*|(|x<rprime|'>,t<rprime|'>|)>\<in\>K\<times\><around*|[|a,b|]>\<Rightarrow\><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,t|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,t<rprime|'>|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>\<less\>
          <frac|\<varepsilon\>|b-a>
        </equation>

        So if we take <math|x<rprime|'>\<in\>U> such that
        <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<leqslant\>\<delta\>>
        then <math|x,x<rprime|'>\<in\>K,t\<in\><around*|[|a,b|]>> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|D<rsup|1>F<around*|(|x|)>-D<rsup|1>F<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|\<bbb-R\><rsup|n>;Y|)>>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>-<big|int><rsub|a><rsup|b>D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|L<rsup|1><around*|(|R<rsup|n>;Y|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linearity
          of integral>>>>|<cell|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b><around*|(|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x<rprime|'>|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|int><rsub|a><rsup|b><around*|\<\|\|\>|D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>-D<rsup|1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x<rprime|'>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|(|b-a|)>\<cdot\><frac|\<varepsilon\>|b-a>
          <around*|(|see <reference|eq 12.26> and <reference|property of
          integral>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
        </eqnarray*>

        proving that <math|D<rprime|'>F> is continuous and thus finally that
        <math|1\<in\>S>, which is the end of the first induction step.

        <item><dueto|Induction step, let <math|r\<in\>S>>and assume that
        <math|\<forall\>t\<in\><around*|[|a,b|]>\<vDash\>f<around*|(|\<ast\>,t|)>>
        is <math|C<rsup|r+1>> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,r+1|}>>
        we have that <math|D<rsup|i>f<around*|(|*\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>>
        is continuous. Define then <math|g:U\<times\><around*|[|a,b|]>\<rightarrow\>L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>>
        by <math|<around*|(|x,t|)>\<rightarrow\>g<around*|(|x,t|)>=D<rsup|r>f<around*|(|\<ast\>,t|)><around*|(|x|)>>
        so that <math|g=D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>>
        which by assumption is continuous. Then we have for <math|g> that
        <math|\<forall\>t\<in\><around*|[|a,b|]>> that
        <math|g<around*|(|\<ast\>,t|)>:U\<rightarrow\>L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>>
        is defined by <math|x\<rightarrow\>g<around*|(|\<ast\>,t|)><around*|(|x|)>=g<around*|(|x,t|)>=D<rsup|r>f<around*|(|\<ast\>,t|)><around*|(|x|)>>
        which as <math|f<around*|(|\<ast\>,t|)>> is <math|C<rsup|r+1>> means
        that\ 

        <\equation>
          <label|eq 12.27>\<forall\>t\<in\><around*|[|a,b|]> we have that
          g<around*|(|\<ast\>,t|)> is C<rsup|1> on U and
          D<rsup|1>g<around*|(|\<ast\>,t|)><around*|(|x|)> exists
          \<forall\>x\<in\>U
        </equation>

        where

        <\equation>
          <label|eq 12.28>g<around*|(|\<ast\>,t|)>=D<rsup|r>f<around*|(|\<ast\>,t|)>
        </equation>

        Also <math|D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>:U\<times\><around*|[|a,b|]>\<rightarrow\>L<around*|(|\<bbb-R\><rsup|n>,L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>|)>=L<rsup|r+1><around*|(|\<bbb-R\><rsup|n>;Y|)>>
        defined by <math|<around*|(|x,t|)>\<rightarrow\><around*|(|D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>=D<rsup|1>g<around*|(|\<ast\>,t|)><around*|(|x|)>=D<rsup|1><around*|(|D<rsup|r>f<around*|(|\<ast\>,t|)>|)><around*|(|x|)>=D<rsup|r+1>f<around*|(|\<ast\>,t|)><around*|(|x|)>=<around*|(|D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>>
        proving that

        <\equation>
          <label|eq 12.29>D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>=D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>
          which is continuus by the hypothese
        </equation>

        So <math|g> satisfies (1), (2) and (3) of the theorem for the case
        <math|r=1> and we can use then <math|1\<in\>S> to have that

        <\equation>
          <label|eq 12.30>G:U\<rightarrow\>L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>
          defined by x\<rightarrow\>G<around*|(|x|)>=<big|int><rsub|a><rsup|b>g<around*|(|x,\<ast\>|)>
          is of C<rsup|1>
        </equation>

        and that

        <\equation>
          <label|eq 12.31>D<rsup|1>G<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>.
        </equation>

        Now <math|g<around*|(|x,\<ast\>|)>:<around*|[|a,b|]>\<rightarrow\>L<rsup|r><around*|(|\<bbb-R\><rsup|n>;Y|)>>
        is defined by <math|g<around*|(|x,\<ast\>|)><around*|(|t|)>=g<around*|(|x,t|)>=D<rsup|r>f<around*|(|\<ast\>,t|)><around*|(|x|)>=D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)><around*|(|t|)>>
        so that <math|g<around*|(|x,\<ast\>|)>=D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>
        so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|G<around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
          12.30>>>>|<cell|<big|int><rsub|a><rsup|b>D<rsup|r>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|r\<in\>S>>|<cell|D<rsup|r>F<around*|(|x|)>>>>>
        </eqnarray*>

        or\ 

        <\equation>
          <label|eq 12.32>G<around*|(|x|)>=D<rsup|r>F<around*|(|x|)>
        </equation>

        which as <math|G> is <math|C<rsup|1>> means that

        <\equation>
          <label|eq 12.33>F is C<rsup|n+1>
        </equation>

        Now <math|<around*|(|D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)>=D<rsup|1>g<around*|(|\<ast\>,t|)><around*|(|x|)>=<around*|(|D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>\<equallim\><rsub|<text|<reference|eq
        12.29>>><around*|(|D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|\<ast\>|)>|)><around*|(|x,t|)>=D<rsup|r+1>f<around*|(|\<ast\>,t|)><around*|(|x|)>=<around*|(|D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>|)><around*|(|t|)>>
        proving that\ 

        <\equation>
          <label|eq 12.34>D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>=D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>
        </equation>

        <\eqnarray*>
          <tformat|<table|<row|<cell|D<rsup|r+1>F<around*|(|x|)>>|<cell|=>|<cell|D<rsup|1><around*|(|D<rsup|r>F|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          12.32>>>>|<cell|D<rsup|1>G<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          12.31>>>>|<cell|<big|int><rsub|a><rsup|b>D<rsup|1>g<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          12.34>>>>|<cell|<big|int><rsub|a><rsup|b>D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving\ 

        <\equation>
          <label|eq 12.35>D<rsup|r+1>F<around*|(|x|)>=<big|int><rsub|a><rsup|b>D<rsup|r+1>f<around*|(|\<ast\>,\<ast\>|)><around*|(|x|)>
        </equation>

        Using <reference|eq 12.33>and <reference|eq 12.35> we have then that
        <math|r+1\<in\>S>.\ 
      </enumerate>

      by induction we have then that <math|S=\<bbb-N\>> which proves our
      little theorem.
    </enumerate>
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set
    <math|f:X\<rightarrow\>Y> a function that is <math|C<rsup|n>> and
    <math|L:Y\<rightarrow\>Z> a linear continuous function then
    <math|L\<circ\>f> is <math|C<rsup|n>> and <math|\<forall\>x\<in\>U> we
    have <math|D<rsup|n><around*|(|L\<circ\>f|)><around*|(|x|)>=L\<bullet\><rsub|n>D<rsup|n>f<around*|(|x|)>>
    (see <reference|@ product> for a definition of <math|\<bullet\><rsub|n>>)
    (so we have <math|D<rsup|n><around*|(|L\<circ\>f|)><around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>=L<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|n>|)>|)>>
  </theorem>

  <\proof>
    First as <math|L > is <math|C<rsup|\<infty\>>> and <math|f> is
    <math|C<rsup|n>> on <math|U> we have by the Chain Rule (see
    <reference|generalized chain rule>) that <math|L\<circ\>f> is
    <math|C<rsup|n>>. So the only thing left to prove is that
    <math|D<rsup|n><around*|(|L\<circ\>f|)><around*|(|x|)>=L\<bullet\><rsub|n>D<rsup|n>f<around*|(|x|)>>
    so take <math|S=<around*|{|r\<in\>\<bbb-N\>\|if r\<leqslant\>n and
    x\<in\>U then D<rsup|r><around*|(|L\<circ\>f|)><around*|(|x|)>=L\<bullet\><rsub|r>D<rsup|n>f<around*|(|x|)>|}>>
    then we have:

    <\enumerate>
      <item>If <math|r=1> then as <math|D<rsup|1><around*|(|L\<circ\>f|)><around*|(|x|)>=D<rsup|1>L<around*|(|f<around*|(|x|)>|)>\<circ\>D<rsup|1>f<around*|(|x|)>=L\<circ\>D<rsup|1>f<around*|(|x|)>\<equallim\><rsub|<text|<reference|@
      product>>>L\<bullet\><rsub|1>D<rsup|1>f<around*|(|x|)>> proving that
      <math|r\<in\>S>

      <item>Assume that <math|r\<in\>S> and that <math|r+1\<leqslant\>n> then
      <math|D<rsup|r><around*|(|L\<circ\>f|)>> is differentiable and
      <math|D<rsup|r><around*|(|L\<circ\>f|)><around*|(|x|)>=L\<bullet\><rsub|r>D<rsup|r>f<around*|(|x|)>\<equallim\><rsub|<text|<reference|ev_L
      is linear and continuous>>>ev<rsub|L><around*|(|D<rsup|r>f<around*|(|x|)>|)>=<around*|(|ev<rsub|L>\<circ\>D<rsup|r>f|)><around*|(|x|)>>
      so that <math|D<rsup|r+1><around*|(|L\<circ\>f|)><around*|(|x|)>=D<around*|(|D<rsup|r><around*|(|L\<circ\>f|)>|)><around*|(|x|)>=D<around*|(|ev<rsub|L>\<circ\>D<rsup|r>f|)><around*|(|x|)>=Dev<rsub|L><around*|(|D<rsup|r>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|r>f|)><around*|(|x|)>\<equallim\><rsub|by
      <text|<reference|ev_L is linear and continuous>> ev<rsub|L> is linear
      and continuous>ev<rsub|L>\<circ\>D<rsup|r+1>f<around*|(|x|)>\<equallim\><rsub|<text|<reference|ev_l
      + @>>>L\<bullet\><rsub|r+1>D<rsup|r+1>f<around*|(|x|)>> proving that
      <math|r+1\<in\>S>.\ 
    </enumerate>
  </proof>

  <section|Differentiability on general sets>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|S\<subseteq\>X> and <math|f:S\<rightarrow\>Y> a
    function then <math|f> differentiable on <math|S> if there exists a
    <math|U> open such that <math|S\<subseteq\>U\<subseteq\>X> and a
    <math|f<rsup|U>:U\<rightarrow\>Y> that is differentiable on <math|U>.
    Also <math|f> is <math|C<rsup|r>> if there exists a <math|U> open such
    that <math|S\<subseteq\>U\<subseteq\>X> and a
    <math|f<rsup|U>:U\<rightarrow\>Y> with
    <math|<around*|(|f<rsup|U>|)><rsub|\|S>=f> such that <math|f<rsup|U>> is
    <math|C<rsup|r>>. In other words <math|f> is <math|C<rsup|r>> if it can
    be extended to a <math|C<rsup|r>>function on a open set containing
    <math|S>.
  </definition>

  <\theorem>
    <label|composition of differentials on arbitrary sets>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces <math|S\<subseteq\>X>, <math|T\<subseteq\>Y>,
    <math|r\<in\>\<bbb-N\><rsub|0>> and <math|f:S\<rightarrow\>Y>,
    <math|g:T\<rightarrow\>Z> functions with
    <math|f<around*|(|S|)>\<subseteq\>T> then <math|g\<circ\>f> is
    <math|C<rsup|r>> on <math|S>.
  </theorem>

  <\proof>
    By definition there exists a <math|U> open in <math|X> and a <math|V>
    open in <math|Y> such that <math|S\<subseteq\>U>, <math|T\<subseteq\>U>
    and <math|C<rsup|r>> functions <math|f<rsup|U>:U\<rightarrow\>X>,
    <math|g<rsup|V>:V\<rightarrow\>Z> such that
    <math|<around*|(|f<rsup|U>|)><rsub|\|S>=f> and
    <math|<around*|(|g<rsup|V>|)><rsub|\|T>=g>. Take then
    <math|W=U<big|cap><around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>> which
    is open because <math|f<rsup|U>> is continuous on <math|V> (being of
    class <math|C<rsup|r>>). As <math|f<rsup|U><around*|(|S|)>=f<around*|(|S|)>\<subseteq\>T\<subseteq\>V\<Rightarrow\>S\<subseteq\><around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>\<subseteq\>W\<Rightarrow\>S\<subseteq\>W>.
    Define now <math|f<rsup|W>=<around*|(|f<rsup|U>|)><rsub|\|W>:W\<rightarrow\>Y>
    then <math|f<rsup|W>> is <math|C<rsup|r>> (see <reference|C^n is a local
    property>) and as <math|S\<subseteq\>W> <math|f<rsup|W>> is still a
    extension of <math|f>. Now <math|f<rsup|W><around*|(|W|)>=f<rsup|U><around*|(|W|)>\<subseteq\>f<rsup|U><around*|(|<around*|(|f<rsup|U>|)><rsup|-1><around*|(|V|)>|)>\<subseteq\>V>
    so that by using the chain rule (<reference|generalized chain rule>) we
    have that <math|f<rsup|W>\<circ\>g<rsup|V>> is <math|C<rsup|r>> and as
    <math|<around*|(|f<rsup|W>\<circ\>g<rsup|V>|)><rsub|\|S>=g\<circ\>f> we
    have that <math|g\<circ\>f> is <math|C<rsup|r>>.
  </proof>

  <\definition>
    <index|<math|f<rprime|'><rsub|+><around*|(|x|)>>><index|<math|f<rprime|'><rsub|-><around*|(|x|)>>><label|differentiability
    on [a,b]><index|<math|f<rprime|'><rsub|+>>><index|<math|f<rprime|'><rsub|->>>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    and <math|f:<around*|[|a,b|]>\<rightarrow\>Y> then we define the
    right,left derivate by\ 

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
      we have <math|<around*|\<\|\|\>|<frac|f<around|(|x|)>-f<around|(|x-h|)>|-h>-f<rprime|'><rsub|-><around|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>
  </definition>

  <\lemma>
    <label|left,right derivatives>Let <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    be the real space with the canonical norm,
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>Y> then\ 

    <\enumerate>
      <item>If <math|x\<in\><around*|[|a,b|[> and
      f<rprime|'><rsub|+><around*|(|x|)>> if it exists is unique

      <item>If <math|x\<in\><around*|]|a,b|]> and
      f<rprime|'><rsub|-><around*|(|x|)>> if it exists is unique

      <item>If <math|x\<in\><around*|]|a,b|[>> and
      <math|f<rprime|'><rsub|-><around*|(|x|)>,f<rprime|'><rsub|+><around*|(|x|)>>
      both exists and <math|f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>
      then <math|f<rprime|'><around*|(|x|)>> exists and
      <math|f<rprime|'><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>.
      Also if <math|f<rprime|'><around*|(|x|)>> exists then
      <math|f<rprime|'><rsub|-><around*|(|x|)>,f<rprime|'><rsub|+><around*|(|x|)>>
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
      <math|d,d<rprime|'>> at <math|x> define then
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<gtr\>0>,
      then there exists <math|\<delta\>,\<delta\><rprime|'>\<gtr\>0> such
      that if <math|0\<less\>h\<less\>\<delta\>> and
      <math|x+h\<in\><around*|[|a,b|]>> that
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|f>-d|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and if <math|0\<less\>h\<less\>\<delta\><rprime|'>> and
      <math|x-h\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      . As <math|x\<in\><around*|[|a,b|[>> we have
      <math|a\<leqslant\>x\<less\>b> there exists a
      <math|\<delta\><rprime|''>\<gtr\>0> such that
      <math|a\<leqslant\>x+\<delta\><rprime|''>\<less\>b> take then
      <math|h=min<around*|(|\<delta\><rprime|''>,\<delta\><rprime|'>,\<delta\>|)>>
      then if <math|0\<less\>h\<less\>\<delta\>,\<delta\><rprime|'>> \ then
      <math|x+h\<in\><around*|[|a,b|]>> and
      <math|<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d+d<rprime|'>-<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><tfrac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<Rightarrow\><around*|\<\|\|\>|d-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|d-d<rprime|'>|\<\|\|\>><rsub|Y>>
      a contradiction so we must have <math|d<rprime|'>=d>.

      <item>Assume that there exists two different left derivates
      <math|d,d<rprime|'>> at <math|x> define then
      <math|\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<gtr\>0>,
      then there exists <math|\<delta\>,\<delta\><rprime|'>\<gtr\>0> such
      that if <math|0\<less\>h\<less\>\<delta\>> and
      <math|x-h\<in\><around*|[|a,b|]>> that
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|f>-d|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and if <math|0\<less\>h\<less\>\<delta\><rprime|'>> and
      <math|x-h\<in\><around*|[|a,b|]>> then
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      . As <math|x\<in\><around*|]|a,b|]>> we have
      <math|a\<less\>x\<leqslant\>b> there exists a
      <math|\<delta\><rprime|''>\<gtr\>0> such that
      <math|a\<less\>x-\<delta\><rprime|''>\<leqslant\>b> take then
      <math|h=min<around*|(|\<delta\><rprime|''>,\<delta\><rprime|'>,\<delta\>|)>>
      then if <math|0\<less\>h\<less\>\<delta\>,\<delta\><rprime|'>> \ then
      <math|x-h\<in\><around*|[|a,b|]>> and
      <math|<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>-d+d<rprime|'>-<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|h>-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><tfrac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>=<around*|\<\|\|\>|d<rprime|'>-d|\<\|\|\>><rsub|Y>\<Rightarrow\><around*|\<\|\|\>|d-d<rprime|'>|\<\|\|\>><rsub|Y>\<less\><around*|\<\|\|\>|d-d<rprime|'>|\<\|\|\>><rsub|Y>>
      a contradiction so we must have <math|d<rprime|'>=d>.

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

      <\enumerate>
        <item><dueto|<math|h\<gtr\>0>>then as
        <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>\<Rightarrow\>0\<less\>h\<less\>\<delta\><rprime|'>>
        and thus <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>

        <item><dueto|<math|h\<less\>0>>then as
        <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>\<Rightarrow\>0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|''>>
        and thus <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<equallim\><rsub|h=-<around*|\||h|\|>><around*|\<\|\|\>|<frac|f<around*|(|x-<around*|\||h|\|>|)>-f<around*|(|x|)>|-<around*|\||h|\|>>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      </enumerate>

      So we have in all cases that <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-d|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
      proving that <math|f<rprime|'><around*|(|x|)>=d=f<rprime|'><rsub|-><around*|(|x|)>=f<rprime|'><rsub|+><around*|(|x|)>>.
      On the other hand if <math|f<rprime|'><around*|(|x|)>> exists then
      given <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\><rprime|'>\<gtr\>0> such that if
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
      <math|x+h\<in\><around*|]|a,b|[>> then we have
      <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
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
        <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|+><around*|(|x|)>> exists and is
        equal to <math|f<rprime|'><around*|(|x|)>>.

        <item><math|x-h\<in\><around*|[|a,b|]> and as
        0\<less\><around*|\||-h|\|>\<less\>\<delta\>> we have
        <math|<around*|\<\|\|\>|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|-><around*|(|x|)>> exists and is
        equal to <math|f<rprime|'><around*|(|x|)>>
      </enumerate>

      <item>We must consider the following cases

      <\enumerate>
        <item><dueto|<math|x\<in\><around*|]|a,b|[>>>then
        <math|\<exists\>\<delta\><rprime|'>\<gtr\>0> such that if
        <math|<around*|\||h|\|>\<less\>\<delta\><rprime|'>> then
        <math|x+h\<in\><around*|]|a,b|[>>, also as
        <math|<around*|(|f<rsup|U>|)><rprime|'>> exists on <math|U> and
        <math|<around*|[|a,b|]>\<subseteq\>U> given
        <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\><rprime|''>\<gtr\>0> so that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|x>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<rsup|U><around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>=min<around*|(|\<delta\><rprime|'>,\<delta\><rprime|''>|)>>
        then <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<rsup|U><around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><around*|(|x|)>> exists and
        <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>=f<rprime|'><around*|(|x|)>>
        <math|>

        <item><dueto|<math|x=a>>then as <math|<around*|(|f<rsup|U>|)><rprime|'>>
        exists on <math|U> and <math|<around*|[|a,b|]>\<subseteq\>U> given
        <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
        such that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|a>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|U>\<less\>\<varepsilon\>>.
        So if <math|0\<less\>h\<less\>\<delta\>> and
        <math|a+h\<in\><around*|[|a,b|]>\<Rightarrow\>h\<in\>U<rsub|a>> then
        we have <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|+><around*|(|a|)>> exists and
        <math|f<rprime|'><rsub|+><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>>.

        <item><dueto|<math|x=b>>then as <math|<around*|(|f<rsup|U>|)><rprime|'>>
        exists on <math|U> and <math|<around*|[|a,b|]>\<subseteq\>U> given
        <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
        such that if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|a>> then <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|U>\<less\>\<varepsilon\>>.
        So if <math|0\<less\>h\<less\>\<delta\>\<Rightarrow\>0\<less\><around*|\||-h|\|>\<less\>\<delta\>>
        then if <math|b+<around*|(|-h|)>\<in\><around*|[|a,b|]>\<Rightarrow\>-h\<in\>U<rsub|b>>
        then we have <math|<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+<around*|(|-h|)>|)>-f<rsup|U><around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|f<rprime|'><rsub|-><around*|(|b|)>> exists and
        <math|<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>=f<rprime|'><rsub|-><around*|(|b|)>>.
      </enumerate>
    </enumerate>
  </proof>

  The above theorem leads to the following definition

  <\definition>
    <label|derivative on a closed interval>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    and <math|f:<around*|[|a,b|]>\<rightarrow\>Y> and
    <math|x\<in\><around*|[|a,b|]>> then <math|f> has a derivate
    <math|f<rprime|'><around*|(|x|)>> at <math|x> on <math|<around*|[|a,b|]>>
    if and only if either <math|x=a> and <math|f<rprime|'><rsub|+><around*|(|a|)>>
    exists, <math|x=b> and <math|f<rprime|'><rsub|-><around*|(|b|)>> exists
    or <math|x\<in\><around*|]|a,b|[>> and
    \ <math|f<rprime|'><rsub|+><around*|(|x|)>>,
    <math|f<rprime|'><rsub|-><around*|(|x|)>> exists with
    <math|f<rprime|'><rsub|+><around*|(|x|)>=f<rprime|'><rsub|-><around*|(|x|)>>).
  </definition>

  <\theorem>
    <label|differentiability on [a,b] equivalences>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> be the real
    space with the canonical norm, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    then the following are equivalent for
    <math|f:<around*|[|a,b|]>\<rightarrow\>Y>

    <\enumerate>
      <item><math|f> is <math|C<rsup|1>> on <math|<around*|[|a,b|]>>

      <item>We have the following

      <\enumerate>
        <item><math|\<forall\>t\<in\><around*|]|a,b|[>> we have the existence
        of the derivate <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|t|)>>

        <item>There exists a right,left derivate
        <math|f<rprime|'><rsub|+><around*|(|a|)>,f<rprime|'><rsub|-><around*|(|b|)>>
        at <math|a,b>

        <item><math|f<rprime|'>:<around*|[|a,b|]>\<rightarrow\>Y> defined by
        <math|x\<rightarrow\>f<rprime|'><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<rprime|'><rsub|+><around*|(|a|)>
        if x=a>>|<row|<cell|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>
        if x\<neq\>a,b>>|<row|<cell|f<rprime|'><rsub|-><around*|(|b|)> if
        x=b>>>>>>is continuous on <math|<around*|[|a,b|]>>
      </enumerate>
    </enumerate>

    Further if <math|f> is <math|C<rsup|1>> then <math|\<forall\>U> open,
    <math|f<rsup|U>:U\<rightarrow\>Y> with
    <math|<around*|[|a,b|]>\<subseteq\>U> and
    <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> we have that
    <math|<around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><rsub|\|<around*|[|a,b|]>>=f<rprime|'>>
  </theorem>

  <\proof>
    The proof is simple but elaborated

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>By definition we have a open set
      <math|U\<subseteq\>\<bbb-R\>> with <math|<around*|[|a,b|]>\<subseteq\>U>
      such that <math|f<rsup|U>:U\<rightarrow\>Y> is <math|C<rsup|1>> and
      <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f>. Then using
      <reference|C1 of real or complex function> we have that the derivate
      <math|<around*|(|f<rsup|U>|)><rprime|'>> is defined on every
      <math|x\<in\>U>, is continuous at every <math|x\<in\>U> and
      <math|D<rsup|1><around*|(|f<rsup|U>|)><around*|(|x|)><around*|(|1|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>.
      We proceed now to prove (a),(b) and (c):

      <\enumerate>
        <item>If <math|x\<in\><around*|]|a,b|[>\<subseteq\>U> then given
        <math|\<varepsilon\>\<gtr\>0> there exists a <math|\<delta\>\<gtr\>0>
        such that <math|\<forall\>h\<in\>U<rsub|x>\<vdash\>0\<less\><around*|\||h|\|>\<less\>\<delta\>>
        we have <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>,
        but then for <math|h\<in\><around*|(|<around*|]|a,b|[>|)><rsub|x>\<subseteq\>U<rsub|x>>
        we have <math|<around*|\<\|\|\>|<frac|f<rsub|\|<around*|]|a,b|[>><around*|(|x+h|)>-f<rsub|\|<around*|]|a,b|[>><around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|<around*|(|U|)>><around*|(|x+h|)>-f<rsup|U><around*|(|x|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        proving that <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
        exists and <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|x|)>>\ 

        <item>Let <math|\<varepsilon\>\<gtr\>0> then

        <\enumerate>
          <item>As <math|a\<in\>U> there exists a <math|\<delta\>> such that
          <math|\<forall\>h\<in\>U<rsub|x>\<vdash\>0\<less\><around*|\||h|\|>\<less\>\<delta\>>
          we have <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<Rightarrow\>>
          if <math|0\<less\>h\<less\>\<delta\> and
          a+h\<in\><around*|[|a,b|]>\<Rightarrow\>h\<in\><around*|[|a,b|]><rsub|a>\<subseteq\>U<rsub|a>\<Rightarrow\>0\<less\><around*|\||h|\|>\<less\>\<delta\>>
          and <math|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|a+h|)>-f<rsup|U><around*|(|a|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>
          proving that <math|f<rprime|'><rsub|+><around*|(|a|)>> exists and
          <math|f<rprime|'><rsub|+><around*|(|a|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|a|)>>
          (as uniqueness is guaranteed by the previous lemma)

          <item>As <math|b\<in\>U> there exists a <math|\<delta\>> such that
          <math|\<forall\>h\<in\>U<rsub|x>\<vdash\>0\<less\><around*|\||h|\|>\<less\>\<delta\>>
          we have <math|<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b+h|)>-f<around*|(|b|)>|h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<Rightarrow\>>
          if <math|0\<less\>h\<less\>\<delta\> and
          b-h\<in\><around*|[|a,b|]>\<Rightarrow\>h\<in\><around*|[|a,b|]><rsub|-h>\<subseteq\>U<rsub|-h>\<Rightarrow\>0\<less\><around*|\||-h|\|>\<less\>\<delta\>>
          and <math|-h\<in\>U<rsub|b>> and
          <math|<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|U><around*|(|b-h|)>-f<rsup|U><around*|(|b|)>|-h>-<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>
          proving that <math|f<rprime|'><rsub|-><around*|(|b|)>> exists and
          <math|f<rprime|'><rsub|-><around*|(|b|)>=<around*|(|f<rsup|U>|)><rprime|'><around*|(|b|)>>
          (as uniqueness is guaranteed by the previous lemma)
        </enumerate>

        <item>So we have proved (a),(b) but also that
        <math|f<rprime|'>=<around*|(|<around*|(|f<rsup|U>|)><rprime|'>|)><rsub|\|<around*|[|a,b|]>>>
        which is continuous by <reference|continuity of restricted maps>.
      </enumerate>

      <item><math|<dueto|2\<Rightarrow\>1>>Given
      <math|f:<around*|[|a,b|]>\<rightarrow\>Y> satisfying (a) and (b) then
      given <math|\<xi\>\<gtr\>0> we have
      \ <math|<around*|[|a,b|]>\<subseteq\><around*|]|a-\<xi\>,b+\<xi\>|[>> a
      open set, define then <math|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>:<around*|]|a-\<xi\>,b+\<xi\>|[>\<rightarrow\>Y>
      defined by <math|x\<rightarrow\>f<rsup|<around*|]|a-1,b+1|[>><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)>
      if x\<in\><around*|[|a,b|]>>>|<row|<cell|f<around*|(|a|)>+f<rprime|'><rsub|\<upl\>><around*|(|a|)><around*|(|x-a|)>if
      x\<in\><around*|]|a-\<xi\>,a|[>>>|<row|<cell|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)><around*|(|x-b|)>
      if x\<in\><around*|]|b,b+\<xi\>|[>>>>>>> then clearly we have that

      <\equation>
        <label|eq 12.36><around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rsub|\|<around*|[|a,b|]>>=f
      </equation>

      Next we prove that <math|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>> has a
      derivate at every <math|x\<in\><around*|]|a-\<xi\>,b+\<xi\>|[>>. The
      following cases occurs:

      <\enumerate>
        <item><dueto|<math|x=a>>Given <math|\<varepsilon\>\<gtr\>0> there
        exists a <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\>h\<less\>\<delta\>> and
        <math|a+h\<in\><around*|[|a,b|]>> then
        <math|<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take then <math|\<delta\><rprime|'>=min<around*|(|\<delta\>,b-a|)>\<gtr\>0>
        [as <math|a\<less\>b>]. Then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[><rsub|a>> we have two
        sub cases to consider

        <\enumerate>
          <item><dueto|<math|h\<less\>0>> then
          <math|a+h\<in\><around*|]|a-\<xi\>,a|[>> so that
          <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|a+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rprime|'><rsub|+><around*|(|a|)>\<cdot\><around*|(|<around*|(|a+h|)>-a|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>

          <item><dueto|<math|0\<less\>h>>then
          <math|0\<less\>h\<less\>\<delta\><rprime|'>\<leqslant\>b-a\<Rightarrow\>a\<less\>a+h\<leqslant\>b\<Rightarrow\>a+h\<in\><around*|[|a,b|]>\<Rightarrowlim\><rsub|0\<less\>h\<less\>\<delta\>><around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|a+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|a+h|)>-f<around*|(|a|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        </enumerate>

        So we have proved that <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|a|)>>
        exists and <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|a|)>=f<rsub|+><rprime|'><around*|(|a|)>>

        <item><dueto|<math|x=b>>Given <math|\<varepsilon\>\<gtr\>0> there
        exists a <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\>h\<less\>\<delta\>> and
        <math|b-h\<in\><around*|[|a,b|]>> then
        <math|<around*|\<\|\|\>|<frac|f<around*|(|b-h|)>-f<around*|(|b|)>|-h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take then <math|\<delta\><rprime|'>=min<around*|(|\<delta\>,b-a|)>>
        then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>>
        and <math|h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[><rsub|b>> we have two
        sub cases to consider

        <\enumerate>
          <item><dueto|<math|h\<less\>0>>then
          <math|0\<less\>-h=<around*|\||h|\|>\<less\>\<delta\><rprime|'>,b-a,\<delta\>\<Rightarrow\>a-h\<leqslant\>b\<Rightarrow\>a\<leqslant\>b+h=b-<around*|\||h|\|>\<less\>b\<Rightarrow\>b+h=b-<around*|\||h|\|>\<in\><around*|[|a,b|]>>
          so that <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|b+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|b+h|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|b-<around*|\||h|\|>|)>-f<around*|(|b|)>|-<around*|\||h|\|>>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>

          <item><dueto|<math|0\<less\>h>>then
          <math|b+h\<in\><around*|]|b,b+\<xi\>|[>> and
          <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-1,b+1|[>><around*|(|b+h|)>-f<rsup|<around*|]|a-1,b+1|[>><around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|<around*|(|b+h|)>-b|)>-f<around*|(|b|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
        </enumerate>

        So we have proved that <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|b|)>>
        exists and <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|b|)>=f<rprime|'><rsub|-><around*|(|b|)>>

        <item><dueto|<math|x\<in\><around*|]|a-\<xi\>,a|[>>>Given
        <math|\<varepsilon\>\<gtr\>0> take then <math|\<delta\>=a-x\<gtr\>0>
        then for a <math|h> such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
        and <math|x\<in\><around*|]|a-\<xi\>,b+\<xi\>|[><rsub|x>> we have
        <math|x+h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[>> and
        <math|x+h\<leqslant\>x+<around*|\||h|\|>\<less\>x+\<delta\>=x+<around*|(|a-x|)>=a\<Rightarrow\>x+h\<in\><around*|]|a-1,a|[>>,
        so <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x|)>|h>-f<rprime|'><rsub|a><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|a|)>+f<rsub|+><rprime|'><around*|(|a|)>\<cdot\><around*|(|x+h-a|)>-<around*|(|f<around*|(|a|)>-f<rprime|'><rsub|+><around*|(|x|)>\<cdot\><around*|(|x-a|)>|)>|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rprime|'><rsub|+><around*|(|a|)>\<cdot\>h|h>-f<rprime|'><rsub|+><around*|(|a|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>.
        So we have proved that <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|+><around*|(|a|)>>

        <item><dueto|<math|x\<in\><around*|]|b,b+\<xi\>|[>>>Given
        <math|\<varepsilon\>\<gtr\>0> take then <math|\<delta\>=x-b\<gtr\>0>
        then if <math|h> is such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
        and <math|h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[><rsub|x>> then
        <math|x+h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[>> and
        <math|h\<leqslant\><around*|\||h|\|>\<less\>x-b\<Rightarrow\>b\<less\>x+h\<Rightarrow\>x+h\<in\><around*|]|b,b+\<xi\>|[>>
        and <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|<around*|(|x+h|)>-b|)>-<around*|(|f<around*|(|b|)>+f<rprime|'><rsub|-><around*|(|b|)>\<cdot\><around*|(|x-b|)>|)>|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rprime|'><rsub|-><around*|(|b|)>\<cdot\>h|h>-f<rprime|'><rsub|-><around*|(|b|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>.
        So we have proved that <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|f<rprime|'><rsub|-><around*|(|b|)>>.

        <item><dueto|<math|x\<in\><around*|]|a,b|[>>>Given
        <math|\<varepsilon\>\<gtr\>0> then by the hypothesis there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>> and
        <math|h\<in\><around*|]|a,b|[><rsub|x>> then
        <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        \ Take <math|\<delta\>=min<around*|(|x-a,b-x,\<delta\><rprime|'>|)>>
        then if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\><around*|]|a-\<xi\>,b+\<xi\>|[><rsub|x>> we have
        \ <math|h\<less\><around*|\||h|\|>\<less\>x-a\<Rightarrow\>a\<less\>x+h>
        and <math|x+h\<less\>x+<around*|\||h|\|>\<leqslant\>x+b-x=b\<Rightarrow\>x+h\<less\>b>
        proves that <math|x+h\<in\><around*|]|a,b|[>> so that
        <math|<around*|\<\|\|\>|<frac|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x+h|)>-f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>><around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So we have proved that <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|x|)>>
        exists and is equal to <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>
      </enumerate>

      From (a),(b),(c),(d),(e) we have then that
      <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'><around*|(|x|)>>
      exists <math|\<forall\>x\<in\><around*|]|a-\<xi\>,b+\<xi\>|[>> and is
      equal to <math|f<rprime|'><rsub|+><around*|(|a|)>> on
      <math|<around*|]|a-\<xi\>,a|]>>, <math|f<rprime|'><rsub|-><around*|(|b|)>>
      on <math|<around*|[|b,b+\<xi\>|[>> and to
      <math|<around*|(|f<rsub|\|<around*|]|a,b|[>>|)><rprime|'><around*|(|x|)>>.
      Now we must prove that it is continuous at every
      <math|x\<in\><around*|]|a-\<xi\>,b+\<xi\>|[>\<nosymbol\>>. The
      following cases must be considered

      <\enumerate>
        <item><math|<dueto|x=a>>As <math|f<rprime|'>> is continuous on
        <math|<around|[|a,b|]>> we have <math|\<forall\>\<varepsilon\>\<gtr\>0>
        the existence of a <math|\<delta\>\<gtr\>0> such that if
        <math|y\<in\><around|[|a,b|]>> and
        <math|<around|\||y-a|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<rprime|'><around|(|y|)>-f<rprime|'><around|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        So lets take <math|\<delta\><rprime|'>=min<around|(|\<delta\>,<frac|b-a|2>|)>>
        and take <math|y> such that <math|<around|\||a-y|\|>\<less\>\<delta\><rprime|'>>
        then we have the following cases

        <\enumerate>
          <item><math|<dueto|y\<leqslant\>a>> Then
          <math|<around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|+><around|(|a|)>-f<rprime|'><rsub|+><around|(|a|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>

          <item><math|<dueto|a\<less\>y>> Then as
          <math|<around|\||a-y|\|>\<less\>\<delta\><rprime|'>\<leqslant\><frac|b-a|2>\<Rightarrow\>y-a\<less\><frac|b-a|2>\<Rightarrow\>y\<less\><frac|b+a|2>\<less\>b>
          and then <math|<around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|a|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|<around|\|||]>a-b[><around|(|y|)>-f<rprime|'><rsub|+><around|(|a|)>\<shortparallel\>=\<shortparallel\>f<rprime|'><around|(|y|)>-f<rprime|'><around|(|a|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        </enumerate>

        This proves continuity at <math|x=a>

        <item><dueto|<math|x=b>>As <math|f<rprime|'>> is continuous on
        <around*|[|a,b|]> we have <math|\<forall\>\<varepsilon\>\<gtr\>0> the
        existence of a <math|\<delta\>\<gtr\>0> such that if
        <math|y\<in\><around|[|a,b|]>> and
        <math|<around|\||y-b|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<rprime|'><around|(|y|)>-f<rprime|'><around|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Take now <math|\<delta\><rprime|'>=min<around|(|\<delta\>,<frac|b-a|2>|)>>
        and lets take <math|y> such that <math|<around|\||b-y|\|>\<less\>\<delta\><rprime|'>>
        then we have the following cases

        <\enumerate>
          <item><math|<dueto|y\<less\>b>> Then as
          <math|<around|\||b-y|\|>\<less\>\<delta\><rprime|'>=<frac|b-a|2>\<Rightarrow\>b-y\<less\><frac|b-a|2>\<Rightarrow\>b+<frac|a-b|2>-y\<less\>0\<Rightarrow\><frac|a+b|2>\<less\>y\<Rightarrow\>a\<less\>y>
          so we have <math|<around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|<around|\|||]>a,b[><around|(|y|)>-f<rprime|'><rsub|-><around|(|b|)>\<shortparallel\>=\<shortparallel\>f<rprime|'><around|(|y|)>-f<rprime|'><around|(|b|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>

          <item><dueto|<math|b\<leqslant\>y>> Then
          <math|<around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><around|(|b|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|-><around|(|b|)>-f<rprime|'><rsub|-><around|(|b|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
        </enumerate>

        proving continuity at <math|x=b>.

        <item><dueto|<math|x\<in\><around*|]|a-1,a|[>>>Take then
        <math|\<delta\>=min<around|(|a-x,x-<around|(|a-1|)>|)>\<gtr\>0> so
        that if <math|<around|\||y-x|\|>\<less\>\<delta\>> we have
        <math|-\<delta\>\<less\>y-x\<less\>\<delta\>\<Rightarrow\>x-\<delta\>\<less\>y\<less\>\<delta\>+x\<Rightarrow\>x-<around|(|x-<around|(|a-1|)>|)>\<less\>y\<less\>a\<Rightarrow\>a-1\<less\>y\<less\>a\<Rightarrow\><around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|+><around|(|a|)>-f<rprime|'><rsub|+><around|(|a|)>|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
        proving continuity at x.

        <item><dueto|<math|x\<in\><around*|]|b,b+1|[>>>Take then
        <math|\<delta\>=min<around|(|x-b,b+1-x|)>\<gtr\>0> so that if
        <math|<around|\||y-x|\|>\<less\>\<delta\>> we have
        <math|-\<delta\>\<less\>y-x\<less\>\<delta\>\<Rightarrow\>-\<delta\>+x\<less\>y\<less\>x+\<delta\>\<Rightarrow\>-<around|(|x-b|)>+x\<less\>y\<less\>x+b+1-x\<Rightarrow\>b\<less\>y\<less\>b+1\<Rightarrow\><around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|-><around|(|b|)>-f<rprime|'><rsub|-><around|(|b|)>|\<\|\|\>><rsub|Y>=0><math|\<less\>\<varepsilon\>>
        proving continuity at x

        <item><dueto|<math|x\<in\><around*|]|a,b|[>>>Because of continuity of
        <math|f<rprime|'><rsub|<around|\|||]>a,b[>> on
        <math|<around*|[|a,b|]>> we have the existence of a
        <math|\<delta\>\<gtr\>0> such that if <math|y\<in\><around|]|a,b|[>>
        and <math|<around|\||x-y|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<rprime|'><rsub|<around|\|||]>a,b[><around|(|x|)>-f<rsub|<around|\|||]>a,b[><rprime|'><around|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
        Then if we take <math|\<delta\><rprime|'>=min<around|(|\<delta\>,x-a,b-x|)>>
        and let <math|y> such that <math|<around|\||x-y|\|>\<less\>\<delta\><rprime|'>>
        then on one hand <math|<around|\||y-x|\|>\<less\>\<delta\>> and on
        the other hand we have <math|-\<delta\><rprime|'>\<less\>y-x\<less\>\<delta\><rprime|'>\<Rightarrow\>-\<delta\><rprime|'>+x\<less\>y\<less\>\<delta\><rprime|'>+x\<Rightarrow\>-<around|(|x-a|)>+x\<less\>y\<less\>b-x+x\<Rightarrow\>a\<less\>y\<less\>b>
        so that <math|<around*|\<\|\|\>|f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|x|)>-f<rsup|<around|]|a-\<xi\>,b+\<xi\>|[>><rprime|'><around|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<rprime|'><rsub|<around|\|||]>a,b[><around|(|x|)>-f<rsub|\|<around*|]|a,b|[>><rprime|'><around|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>,
        proving continuity at x.
      </enumerate>

      From (a),(b),(c),(d) and (e) we have then that
      <math|<around*|(|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>|)><rprime|'>>
      is continuous on <math|<around*|]|a-\<xi\>,b+\<xi\>|[>> proving that
      <math|f<rsup|<around*|]|a-\<xi\>,b+\<xi\>|[>>> is <math|C<rsup|1>>.\ 
    </enumerate>

    Further if <math|f> is <math|C<rsup|1>> then there exists a <math|U> open
    with <math|<around*|[|a,b|]>\<subseteq\>U>,
    <math|f<rsup|U>:U\<rightarrow\>Y> such that
    <math|<around*|(|f<rsup|U>|)><rsub|\|<around*|[|a,b|]>>=f> and
    <math|f<rsup|U>> is <math|C<rsup|1>>. Using then the previous lemma and
    (b) we have proved finally the theorem.
  </proof>

  <\example>
    Let <math|<around*|\<langle\>|\<bbb-R\>\<nocomma\>,\<\|\|\>|\<rangle\>>>
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
    Consider the following cases

    <\enumerate>
      <item><dueto|<math|t=a>>Given <math|\<varepsilon\>\<gtr\>0> take
      <math|\<delta\>=1> then if <math|0\<less\>h\<less\>\<delta\>> such that
      <math|a+h\<in\><around*|[|a,b|]>> we have
      <math|<around*|\<\|\|\>|<frac|\<sigma\><around*|(|a+h|)>-\<sigma\><around*|(|a|)>|h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|x+a\<cdot\>y+h\<cdot\>y-<around*|(|x+a\<cdot\>y|)>|h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|h\<cdot\>y|h>-y|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
      proving that <math|\<sigma\><rprime|'><rsub|+><around*|(|a|)>=y>

      <item><dueto|<math|t=b>>Given <math|\<varepsilon\>\<gtr\>0> take
      <math|\<delta\>=1> then if <math|0\<less\>h\<less\>\<delta\>> such that
      <math|b-h\<in\><around*|[|a,b|]>> we have
      <math|<around*|\<\|\|\>|<frac|\<sigma\><around*|(|b-h|)>-\<sigma\><around*|(|b|)>|-h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|x+b\<cdot\>y-h\<cdot\>y-<around*|(|x+b\<cdot\>y|)>|-h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|-h\<cdot\>y|-h>-y|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
      proving that <math|\<sigma\><rprime|'><rsub|-><around*|(|b|)>=y>

      <item><dueto|<math|t\<in\><around*|]|a,b|[>>>Given
      <math|\<varepsilon\>\<gtr\>0> take <math|\<delta\>=1> then if
      <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> such that
      <math|h\<in\><around*|]|a,b|[><rsub|t>\<Rightarrow\>t+h\<in\><around*|]|a,b|[>>
      we have <math|<around*|\<\|\|\>|<frac|\<sigma\><around*|(|b+h|)>-\<sigma\><around*|(|b|)>|h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|x+b\<cdot\>y+h\<cdot\>y-<around*|(|x+b\<cdot\>y|)>|h>-y|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|h\<cdot\>y|h>-y|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
      proving that <math|\<sigma\><rprime|'><rsub|-><around*|(|b|)>=y>
      proving that <math|f<rprime|'><around*|(|t|)>=y>
    </enumerate>
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
    <math|f:U\<rightarrow\>\<bbb-R\>> be a function <math|x\<in\>U> a local
    extremum then if <math|f<rprime|'><around*|(|x|)>> exists we have
    <math|f<rprime|'><around*|(|x|)>=0>.
  </theorem>

  <\proof>
    We have two cases to consider

    <\enumerate>
      <item><dueto|local weak maximum>So there exists a
      <math|\<delta\>\<gtr\>0> such that <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
      and <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we
      have that <math|f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>>. Assume
      now that <math|f<rprime|'><around*|(|x|)>=0> then two cases must be
      checked:

      <\enumerate>
        <item><dueto|<math|f<rprime|'><around*|(|x|)>\<gtr\>0>>take then
        <math|\<varepsilon\>=f<rprime|'><around*|(|x|)>> then
        <math|\<exists\>\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,h\<in\>U<rsub|x>>
        then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>>,
        so take <math|h> such that <math|0\<less\>h\<less\>min<around*|(|\<delta\>,\<delta\><rprime|'>|)>,h\<in\>U<rsub|x>>
        then <math|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<leqslant\>0\<less\>f<rprime|'><around*|(|x|)>\<Rightarrow\>\<varepsilon\>\<gtr\><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>=f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<geqslant\>f<rprime|'><around*|(|x|)>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<gtr\>\<varepsilon\>>
        a contradiction.\ 

        <item><dueto|<math|f<rprime|'><around*|(|x|)>\<less\>0>>take then
        <math|\<varepsilon\>=-f<rprime|'><around*|(|x|)>> then
        <math|\<exists\>\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,h\<in\>U<rsub|x>>
        then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>>,
        so take <math|h> such that <math|0\<less\>h\<less\>min<around*|(|\<delta\><rprime|'>\<delta\><rprime|'>|)>,h\<in\>U<rsub|x>>
        then <math|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>\<geqslant\>0\<gtr\>f<rprime|'><around*|(|x|)>\<Rightarrow\>\<varepsilon\>\<gtr\><around*|\||<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\|>=<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>\<geqslant\>-f<rprime|'><around*|(|x|)>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<gtr\>\<varepsilon\>>
        a contradiction
      </enumerate>

      as (a) and (b) yields a contradiction we must have
      <math|f<rprime|'><around*|(|x|)>=0>.

      <item><dueto|<math|local weak minimum>>So there exists a
      <math|\<delta\>\<gtr\>0> such that <math|<around*|]|x-\<delta\>,x+\<delta\>|[>\<subseteq\>U>
      and <math|\<forall\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>> we
      have that <math|f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>>. Assume
      now that <math|f<rprime|'><around*|(|x|)>=0> then two cases must be
      checked:

      <\enumerate>
        <item><dueto|<math|f<rprime|'><around*|(|x|)>\<gtr\>0>>take then
        <math|\<varepsilon\>=f<rprime|'><around*|(|x|)>\<gtr\>0> then
        <math|\<exists\>\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,h\<in\>U<rsub|x>>
        then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>>,
        so take <math|h> such that <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\>,\<delta\><rprime|'>|)>,h\<in\>U<rsub|x>>
        then <math|<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>\<leqslant\>0\<less\>f<rprime|'><around*|(|x|)>\<Rightarrow\>\<varepsilon\>\<gtr\><around*|\||<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>-f<rprime|'><around*|(|x|)>|\|>=f<rprime|'><around*|(|x|)>-<frac|f<around*|(|x-h|)>-f<around*|(|x|)>|-h>\<geqslant\>f<rprime|'><around*|(|x|)>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<gtr\>\<varepsilon\>>
        a contradiction.\ 

        <item><dueto|<math|f<rprime|'><around*|(|x|)>\<less\>0>>take then
        <math|\<varepsilon\>=-f<rprime|'><around*|(|x|)>\<gtr\>0> then
        <math|\<exists\>\<delta\><rprime|'>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,h\<in\>U<rsub|x>>
        then <math|<around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>\<less\>\<varepsilon\>>,
        so take <math|h> such that <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<delta\>,\<delta\><rprime|'>|)>,h\<in\>U<rsub|x>>
        then <math|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>\<geqslant\>0\<gtr\>f<rprime|'><around*|(|x|)>\<Rightarrow\>\<varepsilon\>\<gtr\><around*|\||<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\|>=<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>\<gtr\>-f<rprime|'><around*|(|x|)>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<gtr\>\<varepsilon\>>
        a contradiction.
      </enumerate>

      as (a) and (b) yields a contradiction we must have
      <math|f<rprime|'><around*|(|x|)>=0>
    </enumerate>
  </proof>

  <\theorem>
    <label|rolles theorem><index|Rolle's theorem><dueto|Rolle's theorem>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> (which is a
    Banach space by <reference|real space is complete>) and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> such
    that <math|f<around*|(|a|)>=f<around*|(|b|)>=0>, differentiable on
    <math|<around*|]|a,b|[>> then there exists a
    <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|0=f<rprime|'><around*|(|\<zeta\>|)>>
  </theorem>

  <\proof>
    Using <reference|continuous mapping in [a,b]> there exists a
    <math|c,d\<in\>\<bbb-R\>> such that <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>
    then as <math|c\<leqslant\>f<around*|(|a|)>=f<around*|(|b|)>=0\<leqslant\>d=c\<leqslant\>0\<leqslant\>d>
    we have the following cases to consider:

    <\enumerate>
      <item><dueto|<math|c=d=0>>then <math|f> is constant and
      <math|\<forall\>\<zeta\>\<in\><around*|]|a,b|[>> we have
      <math|f<rprime|'><around*|(|\<zeta\>|)>=Df<around*|(|\<zeta\>|)><around*|(|1|)>=0>

      <item><dueto|<math|c\<less\>0>>As <math|f<around*|(|a|)>=f<around*|(|b|)>=0>
      and <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>> there
      exists a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
      <math|f<around*|(|\<zeta\>|)>=c> and as <math|\<zeta\>> is trivially a
      local minimum we have using the previous theorem (<reference|extremum
      and derivate>) that <math|f<rprime|'><around*|(|\<zeta\>|)>=0>.

      <item><dueto|<math|0\<less\>d>>As <math|f<around*|(|a|)>=f<around*|(|b|)>=0>
      and <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>> there
      exists a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
      <math|f<around*|(|\<zeta\>|)>=d> and as <math|\<zeta\>> is trivially a
      a local maximum we have using the previous theorem (<reference|extremum
      and derivate>) that <math|f<rprime|'><around*|(|\<zeta\>|)>=0>.
    </enumerate>
  </proof>

  <\theorem>
    <label|lagranges theorem><index|Lagrange's theorem><dueto|Lagrange's
    theorem>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,\<bbb-R\>|)>> which
    have a derivate everywhere in <math|<around*|]|a,b|[>> then there exists
    a <math|\<zeta\>\<in\><around*|]|a,b|[>> such that
    <math|f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><around*|(|\<zeta\>|)>\<cdot\><around*|(|b-a|)>>
  </theorem>

  <\proof>
    Define the function <math|g:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> by
    <math|g<around*|(|x|)>=f<around*|(|x|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>|)>>
    which is differentiable in <math|<around*|]|a,b|[>> and continuous on
    <math|<around*|[|a,b|]>> [because constant functions are
    <math|C<rsup|\<infty\>>>, linear functions in a finite dimensional spaces
    are continuous (see <reference|linear mappins between products of the
    real spaces are continuous>) and thus <math|C<rsup|\<infty\>>> (see
    <reference|linear continuous mappings are C^infinity>) and the sum of
    <math|C<rsup|\<infty\>>> functions is <math|C<rsup|\<infty\>>>, the same
    reasoning can be used for continuous functions]. Now
    <math|g<around*|(|a|)>=f<around*|(|a|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|a-a|)>|)>=f<around*|(|a|)>-f<around*|(|a|)>=0>
    and also <math|g<around*|(|b|)>=f<around*|(|b|)>-<around*|(|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|b-a|)>|)>=f<around*|(|b|)>-f<around*|(|a|)>-f<around*|(|b|)>+f<around*|(|a|)>=0>,
    applying Rolle's theorem we have then the existence of a
    <math|\<zeta\>\<in\><around*|[|a,b|]>> such that
    <math|0=g<rprime|'><around*|(|\<zeta\>|)>=0\<Rightarrow\>0=g<rprime|'><around*|(|\<zeta\>|)>=f<rprime|'><around*|(|\<zeta\>|)>-<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<Rightarrow\>f<around*|(|b|)>-f<around*|(|a|)>=f<rprime|'><around*|(|\<zeta\>|)>>
  </proof>

  <\corollary>
    <label|strictly increasing function and derivative>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set <math|f:U\<rightarrow\>U>
    such that <math|f> has a derivate <math|\<forall\>x\<in\>U>,
    <math|\<emptyset\>\<neq\>A\<subseteq\>U> such that
    <math|\<forall\>x\<in\>A> we have <math|0\<less\>f<rprime|'><around*|(|x|)>>
    (or <math|0\<leqslant\>f<rprime|'><around*|(|x|)>>) then <math|f> is
    strictly increasing (or increasing) on <math|A> and if
    <math|\<forall\>x\<in\>A> we have that
    <math|f<rprime|'><around*|(|x|)>\<less\>0> (or
    <math|f<rprime|'><around*|(|x|)>\<leqslant\>0>) then <math|f> is strictly
    decreasing (or decreasing) on <math|A>
  </corollary>

  <\proof>
    First as <math|\<forall\>x\<in\>U> <math|f<rprime|'><around*|(|x|)>>
    exists we have by <reference|differentias and derivates> that <math|f> is
    differentiable at <math|x> (see <reference|differentias and derivates>)
    and thus continuous at <math|x> (see <reference|differentiability at x
    implies continuity at x>). So if <math|x,y\<in\>A> with <math|x\<less\>y>
    we can apply Lagrange's theorem (see <reference|lagranges theorem>) so
    that <math|f<around*|(|y|)>-f<around*|(|x|)>=f<rprime|'><around*|(|\<varepsilon\>|)>\<cdot\><around*|(|y-x|)>>
    where <math|\<varepsilon\>\<in\><around*|]|x,y|[>>. If now
    <math|\<forall\>x\<in\>A> <math|0\<less\>f<rprime|'><around*|(|x|)>> then
    <math|f<rprime|'><around*|(|\<varepsilon\>|)>\<gtr\>0>,
    <math|y-x\<gtr\>0> so that <math|f<around*|(|y|)>-f<around*|(|x|)>\<gtr\>0\<Rightarrow\>f<around*|(|y|)>\<gtr\>f<around*|(|x|)>>
    proving that <math|f> is strictly increasing on <math|A>. If
    \ <math|\<forall\>x\<in\>A> <math|0\<leqslant\>f<rprime|'><around*|(|x|)>>
    then <math|f<rprime|'><around*|(|\<varepsilon\>|)>\<geqslant\>0>,
    <math|y-x\<gtr\>0> so that <math|f<around*|(|y|)>-f<around*|(|x|)>\<geqslant\>0\<Rightarrow\>f<around*|(|y|)>\<gtr\>f<around*|(|x|)>>
    proving that <math|f> is increasing on <math|A>.\ 

    If now <math|\<forall\>x\<in\>A> we have
    <math|f<rprime|'><around*|(|x|)>\<less\>0> [or
    <math|f<rprime|'><around*|(|x|)>\<leqslant\>0>] then we have that
    <math|<around*|(|-f|)><rprime|'><around*|(|x|)>=-f<rprime|'><around*|(|x|)>\<gtr\>0>
    [or <math|<around*|(|-f|)><rprime|'><around*|(|x|)>=-f<rprime|'><around*|(|x|)>\<geqslant\>0>]
    so that we have that <math|-f> is strictly increasing (or increasing)
    proving that <math|f> is strictly decreasing (decreasing). <math|>
  </proof>

  <\definition>
    <index|concave function><index|convex function>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function<space|1em><math|a,b\<in\>U>
    with <math|a\<leqslant\>b> and <math|<around*|[|a,b|]>\<subseteq\>U> then
    <math|f> is convex (or concave) on <math|<around*|[|a,b|]>> if
    <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
    <math|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>\<geqslant\>f<around*|(|x|)>>
    (or <math|f<around*|(|a|)>+<frac|f<around*|(|b|)>-f<around*|(|a|)>|b-a>\<cdot\><around*|(|x-a|)>\<leqslant\>f<around*|(|x|)>>).
    Essentially <math|f> is convex (concave) if a straight line between
    <math|f<around*|(|a|)>> and <math|f<around*|(|b|)>> lies above (below)
    the curve <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>.
  </definition>

  We can easily rewrite the this definition as follows\ 

  <\lemma>
    Let <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function<space|1em><math|a,b\<in\>U>
    with <math|a\<leqslant\>b> then <math|f> is convex (or concave) on
    <math|<around*|[|a,b|]>> if <math|\<forall\>x\<in\><around*|[|a,b|]>> we
    have <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<geqslant\>f<around*|(|x|)>>
    (or <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>\<leqslant\>f<around*|(|x|)>>)
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
    <math|f:U\<rightarrow\>\<bbb-R\>> a function<space|1em><math|a,b\<in\>U>
    with <math|a\<leqslant\>b and <around*|[|a,b|]>\<subseteq\>U> then
    <math|f> is convex (or concave) on <math|<around*|[|a,b|]>> if
    <math|\<forall\>\<alpha\>,\<beta\>> with
    <math|0\<leqslant\>\<alpha\>,\<beta\>> and <math|\<alpha\>+\<beta\>=1> we
    have that <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<geqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>
    (or <math|f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>\<leqslant\>\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>)
  </lemma>

  <\proof>
    To prove this we show first the following equivalences\ 

    <\equation>
      <label|eq 14.46.1.004>x\<in\><around*|[|a,b|]>\<Leftrightarrow\>\<exists\>\<alpha\>,\<beta\>\<vdash\>0\<leqslant\>\<alpha\>,\<beta\>\<wedge\>\<alpha\>+\<beta\>=1<text|
      such that >x=\<alpha\>\<cdot\>a+\<beta\>\<cdot\>
    </equation>

    \;

    If <math|x\<in\><around*|[|a,b|]>> then
    <math|0\<leqslant\><frac|x-a|b-a>=\<beta\>,<frac|b-x|b-a>=\<alpha\>> and
    <math|\<alpha\>+\<beta\>=\<beta\>+\<alpha\>=<frac|x-a+b-x|b-a>=1> and
    <math|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b=<frac|<around*|(|b-x|)>\<cdot\>a+<around*|(|x-a|)>\<cdot\>b|b-a>=<frac|b\<cdot\>a-x\<cdot\>a+x\<cdot\>b-a\<cdot\>b|b-a>=<frac|x\<cdot\><around*|(|b-a|)>|b-a>=x>.
    Further if \ <math|\<exists\>\<alpha\>,\<beta\>\<vdash\>0\<leqslant\>\<alpha\>,\<beta\>\<wedge\>\<alpha\>+\<beta\>=1>
    then <math|0\<leqslant\>\<alpha\>,\<beta\>\<leqslant\>1> so that
    <math|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b=\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>b\<geqslant\><rsub|a\<less\>b\<wedge\>0\<leqslant\><around*|(|1-\<alpha\>|)>>\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>a>
    and <math|><math|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b=\<alpha\>\<cdot\>a+<around*|(|1-\<alpha\>|)>\<cdot\>b\<leqslant\><rsub|a\<less\>b\<wedge\>0\<leqslant\>\<alpha\>>\<alpha\>\<cdot\>b+<around*|(|1-\<alpha\>|)>\<cdot\>b=b>
    proving that <math|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b\<in\><around*|[|a,b|]>>

    From <reference|eq 14.46.004> it follows that we can always rewrite
    \ <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>
    (where <math|x\<in\><around*|[|a,b|]>>) as follows (where
    <math|0\<leqslant\>\<alpha\>,\<beta\>\<wedge\>\<alpha\>+\<beta\>=1>)

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-\<alpha\>\<cdot\>a-\<beta\>\<cdot\>b|)>+f<around*|(|b|)>\<cdot\><around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b-a|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\><around*|(|1-\<beta\>|)>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)><around*|(|\<beta\>\<cdot\>b-a\<cdot\><around*|(|1-\<alpha\>|)>|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b\<cdot\>\<alpha\>-\<alpha\>\<cdot\>a|)>+f<around*|(|b|)><around*|(|\<beta\>\<cdot\>b-a\<cdot\>\<beta\>|)>|b-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-a|)>\<cdot\>\<alpha\>+f<around*|(|b|)><around*|(|b-a|)>\<cdot\>\<beta\>|b-a>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>>>>>
    </eqnarray*>

    Hence as <math|f<around*|(|x|)>=f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>
    we have that <math|f> is convex (concave) if
    <math|><math|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<geqslant\>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>
    (or <math|\<alpha\>\<cdot\>f<around*|(|a|)>+\<beta\>\<cdot\>f<around*|(|b|)>\<leqslant\>f<around*|(|\<alpha\>\<cdot\>a+\<beta\>\<cdot\>b|)>>).
  </proof>

  The next theorem shows the relation between second derivate and convex and
  concave functions.

  <\theorem>
    <label|condition for concavity (convexitivity)>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> a function <math|a,b\<in\>U> with
    <math|a\<leqslant\>b> and <math|<around*|[|a,b|]>\<subseteq\>U> such that
    <math|\<forall\>x\<in\>U> we have that <math|f<rprime|''><around*|(|x|)>>
    exists and <math|\<forall\>x\<in\><around*|]|a,b|[>> we have
    <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> (or
    <math|f<rprime|''><around*|(|x|)>\<leqslant\>0>) then <math|f> is convex
    (or concave) on <math|<around*|[|a,b|]>>\ 
  </theorem>

  <\proof>
    First if <math|x=a> (or <math|x=b>) then
    <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>=f<around*|(|a|)>>
    (or <math|f<around*|(|b|)>>) which is equal to <math|f<around*|(|a|)>>
    (or <math|f<around*|(|b|)>>) so we must prove the theorem only for
    <math|x\<in\><around*|]|a,b|[>>). Let <math|x\<in\><around*|]|a,b|[>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|(|x-a|)>|<around*|(|b-a|)>>+<frac|<around*|(|b-x|)>|<around*|(|b-a|)>>>|<cell|=>|<cell|<frac|x-a+b-x|b-a>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
    </eqnarray*>

    so by multiplying both sides by <math|f<around*|(|x|)>> we have
    <math|f<around*|(|x|)>=<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>+<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>>|<cell|=>|<cell|<frac|b-x|b-a>\<cdot\>f<around*|(|a|)>+<frac|x-a|b-a>\<cdot\>f<around*|(|b|)>-<frac|x-a|b-a>\<cdot\>f<around*|(|x|)>-<frac|b-x|b-a>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>|b-a>\<cdot\><around*|(|f<around*|(|b|)>-f<around*|(|x|)>|)>-<frac|b-x|b-a>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a>\<cdot\><frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|<around*|(|b-x|)>\<cdot\><around*|(|x-a|)>|b-a>\<cdot\><frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>|b-a><around*|[|<frac|f<around*|(|b|)>-f<around*|(|x|)>|b-x>-<frac|f<around*|(|x|)>-f<around*|(|a|)>|x-a>|]>>>>>
    </eqnarray*>

    Now as <math|\<forall\>x\<in\>U> <math|f<rprime|''><around*|(|x|)>>
    exists we have that <math|f<rprime|'><around*|(|x|)>> exists and that
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

    As <math|\<forall\>x\<in\>U> <math|f<rprime|''><around*|(|x|)>> exists we
    have that <math|f<rprime|'><around*|(|x|)>> exists and that
    <math|f<rprime|'>> is continuous , further from
    <math|y<rsub|1>\<in\><around*|]|x,b|[>> and
    <math|y<rsub|2>\<in\><around*|]|a,x|[>> we have that
    <math|y<rsub|2>\<less\>y<rsub|1>>. Using <reference|lagranges theorem>
    there exists a <math|z\<in\><around*|]|y<rsub|2>,y<rsub|1>|[>> such that
    <math|<frac|f<rprime|'><around*|(|y<rsub|1>|)>-f<rprime|'><around*|(|y<rsub|2>|)>|<around*|(|y<rsub|1>-y<rsub|2>|)>>=<around*|(|f<rprime|'>|)><rprime|'><around*|(|z|)>=f<rprime|''><around*|(|x|)>>
    which by substituting in <reference|eq 14.46.004> gives
    <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>=<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>\<cdot\><around*|(|y<rsub|1>-y<rsub|2>|)>|b-a>\<cdot\>f<rprime|''><around*|(|x|)>=a\<cdot\>f<rprime|''><around*|(|x|)>>
    where <math|<frac|<around*|(|x-a|)>\<cdot\><around*|(|b-x|)>\<cdot\><around*|(|y<rsub|1>-y<rsub|2>|)>|b-a>\<gtr\>0>.
    Hence if <math|f<rprime|''><around*|(|x|)>\<geqslant\>0> (or
    <math|f<rprime|''><around*|(|x|)>\<leqslant\>0>) we have that
    <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>\<geqslant\>0>
    (or <math|<frac|f<around*|(|a|)>\<cdot\><around*|(|b-x|)>+f<around*|(|b|)>\<cdot\><around*|(|x-a|)>|b-a>-f<around*|(|x|)>\<leqslant\>0>)
    proving our theorem.
  </proof>

  We can use convexity or concavity as a condition to see if a extremum is a
  local minimum or a local maximum on a interval.

  <\corollary>
    <label|derivative and local minimum (maximum)>Let
    <math|U\<subseteq\>\<bbb-R\>> be a open set,
    <math|f:U\<rightarrow\>\<bbb-R\>> such that <math|\<forall\>x\<in\>U>
    <math|f<rprime|''><around*|(|x|)>> exists and
    <math|\<exists\>x<rsub|0>\<in\>U> such that
    <math|f<rprime|'><around*|(|x|)>=0> then we have\ 

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
  </corollary>

  <\proof>
    \ First from <math|f<rprime|'><around*|(|x<rsub|0>|)>=0> we have using
    <reference|extremum and derivate> that there exists a
    <math|\<delta\><rsub|1>\<gtr\>0> such that
    <math|<around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>\<subseteq\>U>
    and we have either

    <\equation>
      <label|eq 14.48.020><around*|(|a|)>
      \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[><text|
      \ >f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)><text| or (b)
      <math|\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>>>f<around*|(|x<rsub|0>|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    Consider now the different cases of the corollary

    <\enumerate>
      <item>As <math|V> is open there exists a
      <math|\<delta\><rsub|2>\<gtr\>0> such that
      <math|<around*|]|x<rsub|0>-\<delta\><rsub|2>,x<rsub|0>+\<delta\><rsub|2>|[>\<subseteq\>V>.
      If we now take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have using <reference|condition for concavity (convexitivity)>
      that

      <\equation>
        <label|eq 14.49.020><around*|]|x<rsub|0>-\<delta\>,x+\<delta\>|[>\<subseteq\>V,<around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>
        and \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x+\<delta\>|[><text|
        we have > f<rprime|''><around*|(|x|)>\<geqslant\>0
      </equation>

      Assume now that <math|\<exists\>y\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
      such that <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> then
      we can not have <math|y=x<rsub|0>> so we must consider two cases\ 

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>then as
        <math|<around*|]|y,x<rsub|0>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
        we have by <reference|condition for concavity (convexitivity)> that
        <math|f> is convex on <math|<around*|[|y,x<rsub|0>|]>>. As
        <math|y\<less\>x<rsub|0>> there exists a <math|x> such that
        <math|y\<less\>x\<less\>x<rsub|0>\<Rightarrow\>x\<in\><around*|]|y,x<rsub|0>|[>>
        so that by convexity we have\ 

        <\equation>
          <label|eq 14.50.020><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>\<geqslant\>f<around*|(|x|)>
        </equation>

        As <math|0\<less\>x<rsub|0>-x,f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>\<Rightarrow\><around*|(|x<rsub|0>-x|)>\<cdot\>f<around*|(|y|)>\<less\><around*|(|x<rsub|0>-x|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
        so that <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>\<gtr\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>
        which as <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\>x<rsub|0>-f<around*|(|x<rsub|0>|)>\<cdot\>x+f<around*|(|x<rsub|0>|)>\<cdot\>x-f<around*|(|x<rsub|0>|)>\<cdot\>y|x<rsub|0>-y>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>=f<around*|(|x<rsub|0>|)>>
        gives <math|f<around*|(|x<rsub|0>|)>\<gtr\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>.
        Using <reference|eq 14.50.020> we have then
        <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x|)>> and as
        <math|x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>>
        we must choose in <reference|eq 14.48.020> the case (a) so that
        <math|x<rsub|0>> is a local weak minimum of <math|f>.

        <item*|<math|x<rsub|0>\<less\>y>>then as
        <math|<around*|]|x<rsub|0>,y|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
        we have by <reference|condition for concavity (convexitivity)> that
        <math|f> is convex on <math|<around*|[|x<rsub|0>,y|]>>. As
        <math|x<rsub|0>\<less\>y> there exists a <math|x> such that
        <math|x<rsub|0>\<less\>x\<less\>y\<Rightarrow\>x\<in\><around*|]|x<rsub|0>,y|[>>
        so that by convexity we have\ 

        <\equation>
          <label|eq 14.51.020><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|y|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>\<geqslant\>f<around*|(|x|)>
        </equation>

        As <math|0\<less\>x-x<rsub|0>,f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>\<Rightarrow\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<less\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
        so that <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>\<gtr\><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|y|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>>
        which as <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\>y-f<around*|(|x<rsub|0>|)>\<cdot\>x+f<around*|(|x<rsub|0>|)>\<cdot\>x-f<around*|(|x<rsub|0>|)>\<cdot\>x<rsub|0>|y-x<rsub|0>>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|y-x<rsub|0>>=f<around*|(|x<rsub|0>|)>>
        gives <math|f<around*|(|x<rsub|0>|)>\<gtr\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>.
        Using <reference|eq 14.51.020> we have then
        <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x|)>> and as
        <math|x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>>
        we must choose in <reference|eq 14.48.020> the case (a) so that
        <math|x<rsub|0>> is a local weak minimum of <math|f>.
      </description>

      <item>As <math|V> is open there exists a
      <math|\<delta\><rsub|2>\<gtr\>0> such that
      <math|<around*|]|x<rsub|0>-\<delta\><rsub|2>,x<rsub|0>+\<delta\><rsub|2>|[>\<subseteq\>V>.
      If we now take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then we have using <reference|condition for concavity (convexitivity)>
      that

      <\equation>
        <label|eq 14.52.020><around*|]|x<rsub|0>-\<delta\>,x+\<delta\>|[>\<subseteq\>V,<around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>
        and \<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\>,x+\<delta\>|[><text|
        we have > f<rprime|''><around*|(|x|)>\<geqslant\>0
      </equation>

      Assume now that <math|\<exists\>y\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
      such that <math|f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>> then
      we can not have <math|y=x<rsub|0>> so we must consider two cases\ 

      <\description>
        <item*|<math|y\<less\>x<rsub|0>>>then as
        <math|<around*|]|y,x<rsub|0>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
        we have by <reference|condition for concavity (convexitivity)> that
        <math|f> is concave on <math|<around*|[|y,x<rsub|0>|]>>. As
        <math|y\<less\>x<rsub|0>> there exists a <math|x> such that
        <math|y\<less\>x\<less\>x<rsub|0>\<Rightarrow\>x\<in\><around*|]|y,x<rsub|0>|[>>
        so that by concavity we have\ 

        <\equation>
          <label|eq 14.53.020><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>\<leqslant\>f<around*|(|x|)>
        </equation>

        As <math|0\<less\>x<rsub|0>-x,f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>\<Rightarrow\><around*|(|x<rsub|0>-x|)>\<cdot\>f<around*|(|y|)>\<gtr\><around*|(|x<rsub|0>-x|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
        so that <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>\<less\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>
        which as <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\>x<rsub|0>-f<around*|(|x<rsub|0>|)>\<cdot\>x+f<around*|(|x<rsub|0>|)>\<cdot\>x-f<around*|(|x<rsub|0>|)>\<cdot\>y|x<rsub|0>-y>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-y|)>|x<rsub|0>-y>=f<around*|(|x<rsub|0>|)>>
        gives <math|f<around*|(|x<rsub|0>|)>\<less\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>.
        Using <reference|eq 14.53.020> we have then
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x|)>> and as
        <math|x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>>
        we must choose in <reference|eq 14.48.020> the case (b) so that
        <math|x<rsub|0>> is a local weak maximum of <math|f>.

        <item*|<math|x<rsub|0>\<less\>y>>then as
        <math|<around*|]|x<rsub|0>,y|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
        we have by <reference|condition for concavity (convexitivity)> that
        <math|f> is concave on <math|<around*|[|x<rsub|0>,y|]>>. As
        <math|x<rsub|0>\<less\>y> there exists a <math|x> such that
        <math|x<rsub|0>\<less\>x\<less\>y\<Rightarrow\>x\<in\><around*|]|x<rsub|0>,y|[>>
        so that by convexity we have\ 

        <\equation>
          <label|eq 14.54.020><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|y|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>\<leqslant\>f<around*|(|x|)>
        </equation>

        As <math|0\<less\>x-x<rsub|0>,f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>\<Rightarrow\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<gtr\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
        so that <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>\<less\><frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|y|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>>
        which as <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-x<rsub|0>|)>|y-x<rsub|0>>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\>y-f<around*|(|x<rsub|0>|)>\<cdot\>x+f<around*|(|x<rsub|0>|)>\<cdot\>x-f<around*|(|x<rsub|0>|)>\<cdot\>x<rsub|0>|y-x<rsub|0>>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-x<rsub|0>|)>|y-x<rsub|0>>=f<around*|(|x<rsub|0>|)>>
        gives <math|f<around*|(|x<rsub|0>|)>\<less\><frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-x|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x-y|)>|x<rsub|0>-y>>.
        Using <reference|eq 14.54.020> we have then
        <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x|)>> and as
        <math|x\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>>
        we must choose in <reference|eq 14.48.020> the case (b) so that
        <math|x<rsub|0>> is a local weak maximum of <math|f>.
      </description>
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
    If <math|a=b\<Rightarrow\>x<around*|[|a,b|]>=<around*|{|x<rsub|0>|}>> so
    that the theorem is trivial, so we may assume that <math|a\<less\>b>.
    From the previous corollary (see <reference|derivative and local minimum
    (maximum)>) we conclude that <math|x<rsub|0>> is a local weak minimum
    (local weak maximum) of <math|f> hence there exists a
    <math|\<delta\><rsub|1>\<gtr\>0> such that\ 

    <\equation>
      <label|eq 14.55.020>\<forall\>x\<in\><around*|]|x<rsub|0>-\<delta\><rsub|1>,x<rsub|0>+\<delta\><rsub|1>|[>\<subseteq\>U<text|
      we have >f<around*|(|x|)>\<geqslant\>f<around*|(|x<rsub|0>|)>
      <around*|[|or f<around*|(|x|)>\<leqslant\>f<around*|(|x<rsub|0>|)>|]>
    </equation>

    Let now be <math|y\<in\><around*|[|a,b|]>> such that
    <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [or
    <math|f<around*|(|y|)>\<gtr\>f<around*|(|x<rsub|0>|)>>] then we can not
    have <math|y=x<rsub|0>> so we must have either\ 

    <\description>
      <item*|<math|y\<less\>x<rsub|0>>>Then
      <math|max<around*|(|x<rsub|0>-\<delta\><rsub|1>,y|)>\<less\>x<rsub|0>>
      and there exists a <math|x> such that
      <math|x<rsub|0>-\<delta\><rsub|1>,y\<less\>z\<less\>x<rsub|0>>.
      Applying <reference|eq 14.55.020> we have that\ 

      <\equation>
        <label|eq 14.56.020>f<around*|(|z|)>\<geqslant\>f<around*|(|x<rsub|0>|)>
        <around*|[|or f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>|]>
      </equation>

      \ Using <reference|condition for concavity (convexitivity)> and the
      hypothesis we have that <math|f> is convex [or concave] on
      <math|<around*|[|y,x<rsub|0>|]>>. So we have that
      <math|><math|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<geqslant\>f<around*|(|z|)>>
      [or <math|<frac|f<around*|(|y|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<leqslant\>f<around*|(|z|)>>].
      Further from <math|0\<less\>x<rsub|0>-z> and
      <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>>] so that
      <math|<around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<less\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
      [or <math|<around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<gtr\><around*|(|x-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>]
      we have that <math|f<around*|(|x<rsub|0>|)>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<gtr\>f<around*|(|z|)>>
      [<math|f<around*|(|x<rsub|0>|)>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|x<rsub|0>-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-y|)>|x<rsub|0>-y>\<less\>f<around*|(|z|)>>]
      and thus <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|z|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|z|)>>]. Applying then
      <reference|eq 14.56.020> we reach the contradiction
      <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>>]. So we
      must conclude that\ 

      <\equation*>
        \<forall\>y\<in\><around*|[|a,b|]> we have
        f<around*|(|y|)>\<geqslant\>f<around*|(|x<rsub|0>|)> <around*|[|or
        f<around*|(|y|)>\<leqslant\>f<around*|(|x<rsub|0>|)>|]>
      </equation*>

      <item*|<math|x<rsub|0>\<less\>y>>Then
      <math|x<rsub|0>\<less\>min<around*|(|y,x<rsub|0>+\<delta\><rsub|1>|)>>
      and there exists a <math|x> such that
      <math|x<rsub|0>\<less\>z\<less\>y,x<rsub|0>+\<delta\><rsub|1>>.
      Applying <reference|eq 14.55.020> we have that\ 

      <\equation>
        <label|eq 14.57.020>f<around*|(|z|)>\<geqslant\>f<around*|(|x<rsub|0>|)>
        <around*|[|or f<around*|(|z|)>\<leqslant\>f<around*|(|x<rsub|0>|)>|]>
      </equation>

      \ Using <reference|condition for concavity (convexitivity)> and the
      hypothesis we have that <math|f> is convex [or concave] on
      <math|<around*|[|x<rsub|0>,y|]>>. So we have that
      <math|><math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<geqslant\>f<around*|(|z|)>>
      [or <math|<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|y|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<leqslant\>f<around*|(|z|)>>].
      Further from <math|0\<less\>z-x<rsub|0>> and
      <math|f<around*|(|y|)>\<less\>f<around*|(|x<rsub|0>|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|y|)>>] so that
      <math|<around*|(|z-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<less\><around*|(|z-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>
      [or <math|<around*|(|z-x<rsub|0>|)>\<cdot\>f<around*|(|y|)>\<gtr\><around*|(|z-x<rsub|0>|)>\<cdot\>f<around*|(|x<rsub|0>|)>>]
      we have that <math|f<around*|(|x<rsub|0>|)>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<gtr\>f<around*|(|z|)>>
      [<math|f<around*|(|x<rsub|0>|)>=<frac|f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|y-z|)>+f<around*|(|x<rsub|0>|)>\<cdot\><around*|(|z-x<rsub|0>|)>|y-x<rsub|0>>\<less\>f<around*|(|z|)>>]
      and thus <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|z|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|z|)>>]. Applying then
      <reference|eq 14.57.020> we reach the contradiction
      <math|f<around*|(|x<rsub|0>|)>\<gtr\>f<around*|(|x<rsub|0>|)>> [or
      <math|f<around*|(|x<rsub|0>|)>\<less\>f<around*|(|x<rsub|0>|)>>]. So we
      must conclude that\ 

      <\equation*>
        \<forall\>y\<in\><around*|[|a,b|]> we have
        f<around*|(|y|)>\<geqslant\>f<around*|(|x<rsub|0>|)> <around*|[|or
        f<around*|(|y|)>\<leqslant\>f<around*|(|x<rsub|0>|)>|]>
      </equation*>
    </description>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the real normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a continuous function then
    <math|F:<around*|[|a,b|]>\<rightarrow\>X> where
    <math|F<around*|(|x|)>=<big|int><rsub|a><rsup|x>f> is <math|C<rsup|1>> on
    <math|<around*|[|a,b|]>> and <math|F<rprime|'>=f> (see
    <reference|differentiability on [a,b] equivalences> for a definition of
    <math|<rprime|'>> on <math|<around*|[|a,b|]>>)
  </lemma>

  <\proof>
    We have to take the following cases:

    <\enumerate>
      <item><dueto|<math|x=a>>Given <math|\<varepsilon\>\<gtr\>0> then as
      <math|f> is continuous at <math|a> there exists a
      <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||y-a|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      or if <math|h> is such that <math|0\<less\>h\<less\>\<delta\>> and
      <math|a+h\<in\><around*|[|a,b|]>> then if
      <math|y\<in\><around*|[|a,a+h|]>> we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|a|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
      Also <math|<around*|\<\|\|\>|<frac|F<around*|(|a+h|)>-F<around*|(|a|)>|h>-f<around*|(|a|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f-<big|int><rsub|a><rsup|a>|h>-f<around*|(|a|)>|\<\|\|\>>\<equallim\><rsub|<text|>><around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f|h>-f<around*|(|a|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsup|a+h><rsub|a>f-h\<cdot\>f<around*|(|a|)>|h>|\<\|\|\>>\<equallim\><rsub|<text|<reference|property
      of integral>>><around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h>f-<big|int><rsub|a><rsup|a+1>f<around*|(|a|)>|h>|\<\|\|\>>\<equallim\><rsub|<text|<reference|linearity
      of integral>>><around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|a+h><around*|(|f-f<around*|(|a|)>|)>|h>|\<\|\|\>>=<frac|<around*|\<\|\|\>|<big|int><rsub|a><rsup|a+h><around*|(|f-f<around*|(|a|)>|)>|\<\|\|\>>|<around*|\||h|\|>>\<leqslant\><rsub|<text|<reference|property
      of integral>>><frac|<big|int><rsub|a><rsup|h><around*|\<\|\|\>|f-f<around*|(|a|)>|\<\|\|\>>|h>\<less\><rsub|<text|<reference|property
      of integral>>><frac|\<varepsilon\>\<cdot\>h|h>=\<varepsilon\>> proving
      that <math|F<rprime|'><rsub|+><around*|(|a|)>=f<around*|(|a|)>>

      <item><dueto|<math|x=b>>Given <math|\<varepsilon\>\<gtr\>0> then as
      <math|f> is continuous at <math|a> there exists a
      <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||y-b|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      or if <math|h> is such that <math|0\<less\>h\<less\>\<delta\>> and
      <math|b-h\<in\><around*|[|a,b|]>> then if
      <math|y\<in\><around*|[|b-h,b|]>> we have
      <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
      Also <math|<around*|\<\|\|\>|<frac|F<around*|(|b-h|)>-F<around*|(|b|)>|-h>-f<around*|(|b|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsup|b-h><rsub|a>f-<big|int><rsup|b><rsub|a>|-h>-f<around*|(|b|)>|\<\|\|\>>\<equallim\><rsub|<text|<reference|splitting
      of a integral>>><around*|\<\|\|\>|<frac|-<big|int><rsub|b-h><rsup|b>f|-h>-f<around*|(|b|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsub|b-h><rsup|b>f-h\<cdot\>f<around*|(|b|)>|h>|\<\|\|\>>=<frac|<around*|\<\|\|\>|<big|int><rsub|b-h><rsup|b><around*|(|f-f<around*|(|b|)>|)>|\<\|\|\>>|h>\<leqslant\><frac|<big|int><rsub|b-h><rsup|b><around*|\<\|\|\>|f-f<around*|(|b|)>|\<\|\|\>>|h>\<less\><frac|\<varepsilon\>\<cdot\>h|h>=\<varepsilon\>>
      proving that <math|F<rprime|'><rsub|-><around*|(|b|)>=f<around*|(|b|)>>

      <item><dueto|<math|x\<in\><around*|]|a,b|[>>>Given
      <math|\<varepsilon\>\<gtr\>0> then as <math|f> is continuous at
      <math|a> there exists a <math|\<delta\>\<gtr\>0> such that if
      <math|<around*|\||y-b|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|b|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
      Now if <math|h> is such that <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>>
      and <math|x+h\<in\><around*|]|a,b|[>> then we have the following two
      cases to consider:

      <\enumerate>
        <item><dueto|<math|h\<gtr\>0>>If <math|y\<in\><around*|[|x,x+h|]>> we
        have <math|<around*|\||y-x|\|>\<less\>h\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Also <math|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsub|a><rsup|x+h>f-<big|int><rsub|a><rsup|x>f|h>-f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsup|x+h><rsub|x<rsup|>>f|h>-f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|<big|int><rsub|x><rsup|x+h>f-h\<cdot\>f<around*|(|x|)>|h>|\<\|\|\>>=<frac|<around*|\<\|\|\>|<big|int><rsub|x><rsup|x+h><around*|(|f-f<around*|(|x|)>|)>|\<\|\|\>>|h>\<leqslant\><frac|<big|int><rsub|x><rsup|x+h><around*|\<\|\|\>|f-f<around*|(|x|)>|\<\|\|\>>|h>\<less\><frac|\<varepsilon\>\<cdot\>h|h>=\<varepsilon\>>

        <item><dueto|<math|h\<less\>0>>in this case
        <math|<around*|\||h|\|>=-h> and if
        <math|y\<in\><around*|[|x-<around*|\||h|\|>,x|]>> we have
        <math|<around*|\||y-x|\|>\<less\><around*|\||h|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
        Also <math|<around*|\<\|\|\>|<frac|F<around*|(|x+h|)>-F<around*|(|x|)>|h>-f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|F<around*|(|x-<around*|\||h|\|>|)>-F<around*|(|x|)>|-<around*|\||h|\|>>-f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<frac|F<around*|(|x-<around*|\||h|\|>|)>-F<around*|(|x|)>+<around*|\||h|\|>f<around*|(|x|)>|-<around*|\||h|\|>>|\<\|\|\>>=<frac|<around*|\<\|\|\>|F<around*|(|x-<around*|\||h|\|>|)>-F<around*|(|x|)>+<around*|\||h|\|>f<around*|(|x|)>|\<\|\|\>>|<around*|\||h|\|>>=<frac|<around*|\<\|\|\>|<big|int><rsup|x-<around*|\||h|\|>><rsub|a>f-<big|int><rsub|a><rsup|x>f+<around*|\||h|\|>f<around*|(|x|)>|\<\|\|\>>|h>=<frac|<around*|\<\|\|\>|-<big|int><rsup|x><rsub|x-<around*|\||h|\|>>f+<around*|\||h|\|>\<cdot\>f<around*|(|x|)>|\<\|\|\>>|h>=<frac|<around*|\<\|\|\>|<big|int><rsub|x-<around*|\||h|\|>><rsup|x><around*|(|f-f<around*|(|x|)>|)>|\<\|\|\>>|h>\<leqslant\><frac|<big|int><rsup|x><rsub|x-<around*|\||h|\|>><around*|\<\|\|\>|f-f<around*|(|x|)>|\<\|\|\>>|h>\<less\><frac|h\<cdot\>\<varepsilon\>|h>=\<varepsilon\>>
      </enumerate>

      (a) and (b) proves then <math|F<rprime|'><around*|(|x|)>=f<around*|(|x|)>>
    </enumerate>

    Using \ <reference|differentiability on [a,b] equivalences> we have then
    that <math|F<rprime|'>> exists on <math|<around*|[|a,b|]>> and that
    <math|F> is <math|C<rsup|1>>.
  </proof>

  We prove now the classical fundamental theorem of Calculus.

  <\theorem>
    <label|fundamental theorem of calculus><index|Fundamental Theorem of
    Calculus (Classical version)><dueto|Fundamental Theorem of Calculus
    (Classical)>Let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space, <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    the real normed space, <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<less\>b>
    <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a <math|C<rsup|1>> function on
    <math|<around*|[|a,b|]>> then we have that
    <math|f<around*|(|b|)>-f<around*|(|a|)>=<big|int><rsub|a><rsup|b>f<rprime|'>>
  </theorem>

  <\proof>
    First note that as <math|f<rprime|'>> is defined and continuous on
    <math|<around*|[|a,b|]>> (see <reference|differentiability on [a,b]
    equivalences>) and that <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>
    > is a Banach space we have that <math|\<forall\>x\<in\><around*|[|a,b|]>>
    <math|<big|int><rsub|a><rsup|x>f<rprime|'>> is well defined (see
    <reference|splitting of a integral>). So the function
    <math|g:<around*|[|a,b|]>\<rightarrow\>Y> defined by
    <math|x\<rightarrow\>g<around*|(|x|)>=f<around*|(|a|)>+<big|int><rsub|a><rsup|x>f<rprime|'>>
    is well defined. Using the previous lemma we have then that <math|g> is
    <math|C<rsup|1>> and <math|g<rprime|'><around*|(|x|)>=<around*|(|f<around*|(|a|)>+<big|int><rsub|a><rsup|x>f<rprime|'>|)><rprime|'>=0+f<around*|(|x|)>=f<rprime|'><around*|(|x|)>\<Rightarrow\>g<rprime|'>=f<rprime|'>>
    proving that

    <\equation>
      <label|eq 12.37>g<rprime|'>=f<rprime|'>
    </equation>

    Note also that <math|f<around*|(|a|)>=g<around*|(|a|)>+<big|int><rsub|a><rsup|a>f<rprime|'>=g<around*|(|a|)>+0=g<around*|(|a|)>>
    or

    <\equation>
      <label|eq 12.38>f<around*|(|a|)>=g<around*|(|a|)>
    </equation>

    Consider now <math|\<varphi\>:<around*|]|a,b|[>\<rightarrow\>\<bbb-R\>>
    defined by <math|x\<rightarrow\>\<varphi\><around*|(|x|)>=<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>>.
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
      <tformat|<table|<row|<cell|<around*|\||<frac|\<varphi\><around*|(|x+h|)>-\<varphi\><around*|(|x|)>|h>|\|>>|<cell|=>|<cell|<around*|\||<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>|\<\|\|\>>-<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>|h>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|<around*|\<\|\|\>|f<around*|(|x+h|)>-g<around*|(|x+h|)>-f<around*|(|x|)>+g<around*|(|x|)>|\<\|\|\>>|<around*|\||h|\|>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<frac|<around*|(|f<around*|(|x+h|)>|)>-f<around*|(|x|)>-<around*|(|g<around*|(|x+h|)>-g<around*|(|x|)>|)>|h>|\<\|\|\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|f<rprime|'>=g<rprime|'>
      <around*|(|see <with|mode|text|<reference|eq
      12.37>>|)>>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>-<around*|(|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>>>>>
    </eqnarray*>

    Now take <math|\<varepsilon\>\<gtr\>0> then there exists a
    <math|\<delta\><rprime|'>,\<delta\><rprime|''>> such that if
    <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'>,\<delta\><rprime|''>>
    then <math|<around*|\<\|\|\>|<frac|f<around*|(|x+h|)>-f<around*|(|x|)>|h>-f<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    and <math|<around*|\<\|\|\>|<frac|g<around*|(|x+h|)>-g<around*|(|x|)>|h>-g<rprime|'><around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    so if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\><rprime|'''>=min<around*|(|\<delta\>,\<delta\><rprime|'>,\<delta\><rprime|''>|)>>
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
    be a normed vector space, <math|U\<subseteq\>X>, <math|> a open set,
    <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> and
    <math|f:U\<rightarrow\>\<bbb-R\>> a function that is <math|C<rsup|1>> on
    <math|U>. If <math|x,y\<in\>U> such that
    <math|\<forall\>t\<in\><around*|[|0,1|]>> we have
    <math|<around*|(|1-t|)>\<cdot\>x+t\<cdot\>y=t\<cdot\>y+<around*|(|1-t|)>\<cdot\>x=x+t\<cdot\><around*|(|y-x|)>\<in\>U>
    then there exists a <math|t<rsub|0>\<in\><around*|[|0,1|]>> such that if
    <math|z=x+t<rsub|0>\<cdot\><around*|(|x-y|)>> we have
    <math|f<around*|(|y|)>-f<around*|(|x|)>=Df<around*|(|z|)><around*|(|y-z|)>>
  </theorem>

  <\proof>
    Define <math|\<sigma\>:<around*|[|0,1|]>\<rightarrow\>U> by
    <math|t\<rightarrow\>\<sigma\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>>
    then <math|\<sigma\><around*|(|0|)>=x>,
    <math|\<sigma\><around*|(|1|)>=y>. Define then
    <math|g=f\<circ\>\<sigma\>:<around*|[|0,1|]>\<rightarrow\>\<bbb-R\>>,
    this function is continuous on <math|<around*|[|0,1|]>> and
    differentiable on <math|<around*|]|0,1|]>> (and thus on
    <math|<around*|]|0,1|[>>) [as <math|\<sigma\>> is trivially
    <math|C<rsup|\<infty\>>> [sum of constant and linear function [that is
    continuous because of <reference|linear maps between finite dimesnional
    spaces are continuous>]]] and <math|f> is <math|C<rsup|1>> on <math|U>
    and <math|\<sigma\><around*|[|0,1|]>\<subseteq\>U>]. By the Lagrange
    theorem (see <reference|lagranges theorem>) there exists a
    <math|\<xi\>\<in\><around*|]|0,1|[>> such that
    <math|g<around*|(|1|)>-g<around*|(|0|)>=g<rprime|'><around*|(|\<xi\>|)>\<cdot\><around*|(|1-0|)>=g<rprime|'><around*|(|\<xi\>|)>>.
    Using the chain rule we have that <math|g<rprime|'><around*|(|\<xi\>|)>=<around*|(|D<around*|(|g\<circ\>f|)><around*|(|\<xi\>|)>|)><around*|(|1|)>=<around*|(|Df<around*|(|\<sigma\><around*|(|\<xi\>|)>|)>\<circ\>D\<sigma\><around*|(|\<xi\>|)>|)><around*|(|1|)>=Df<around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|D\<sigma\><around*|(|\<xi\>|)><around*|(|1|)>|)>=Df<around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|\<sigma\><rprime|'><around*|(|\<xi\>|)>|)>=Df<around*|(|\<sigma\><around*|(|\<xi\>|)>|)><around*|(|y-x|)>>
    . Now <math|z=\<sigma\><around*|(|\<xi\>|)>=x\<upl\>\<xi\>\<cdot\><around*|(|y-x|)>>
    so that we have <math|f<around*|(|y|)>-f<around*|(|x|)>=f<around*|(|\<sigma\><around*|(|1|)>|)>-f<around*|(|\<sigma\><around*|(|0|)>|)>=g<rprime|'><around*|(|1|)>-g<rprime|'><around*|(|0|)>=Df<around*|(|z|)>\<cdot\><around*|(|y-x|)>>
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
    \ <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>> is
    convex and <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    is convex.\ 
  </theorem>

  <\proof>
    Let <math|t\<in\><around*|[|0,1|]>> then for <math|x,y,z\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x+t\<cdot\>x-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\>1+t\<cdot\>z-t\<cdot\>y-x\<cdot\>1+t\<cdot\>x-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|y\<cdot\><around*|(|1-t|)>-x\<cdot\><around*|(|1-t|)>+t\<cdot\>z-t\<cdot\>x|\<\|\|\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|<around*|(|y-x|)>\<cdot\><around*|(|1-t|)>+t\<cdot\><around*|(|z-x|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>>>>>
    </eqnarray*>

    So if <math|y,z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    then <math|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>\<leqslant\><around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>\<less\><around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>=\<delta\>\<Rightarrow\>y+t\<cdot\><around*|(|z-y|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<nocomma\>>
    also if <math|y,z\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
    then <math|<around*|\<\|\|\>|y+t\<cdot\><around*|(|z-y|)>-x|\<\|\|\>>\<leqslant\><around*|(|1-t|)>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>+t\<cdot\><around*|\<\|\|\>|z-x|\<\|\|\>>\<leqslant\><around*|(|1-t|)>\<cdot\>\<delta\>+t\<cdot\>\<delta\>=\<delta\>\<Rightarrow\>y+t\<cdot\><around*|(|z-y|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<nocomma\>>
  </proof>

  <\theorem>
    <label|Mean value theorem 2><dueto|Mean Value Theorem (generalized)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>> and let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space over <math|\<bbb-R\>>, <math|U\<subseteq\>X> a open set
    and <math|f:U\<rightarrow\>Y> a <math|C<rsup|1>> function. Assume that
    there is a convex subset <math|C\<subseteq\>U> and a constant
    <math|k\<in\>\<bbb-R\>> such that <math|\<forall\>x\<in\>C> we have
    <math|<around*|\<\|\|\>|Df<around*|(|x|)>|\<\|\|\>>\<leqslant\>k> then
    <math|\<forall\>x,y\<in\>C> we have <math|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>.
  </theorem>

  <\proof>
    Let <math|x,y\<in\>C> and define <math|\<alpha\>:\<bbb-R\>\<rightarrow\>X>
    by <math|t\<rightarrow\>\<alpha\><around*|(|t|)>=x+t\<cdot\><around*|(|y-x|)>>
    then by the fact that <math|C> is convex we have that
    <math|\<alpha\><around*|(|<around*|[|0,1|]>|)>\<subseteq\>C\<subseteq\>U>.
    Then as <math|\<alpha\>> is continuous [sum of constant function and a
    linear function that is continuous because of <reference|linear maps
    between finite dimesnional spaces are continuous>] we have that
    <math|V=\<alpha\><rsup|-1><around*|(|U|)>> is open. Define now
    <math|\<sigma\>=\<alpha\><rsub|\|V>:V\<rightarrow\>X>, then
    <math|\<sigma\><around*|(|V|)>=\<alpha\><around*|(|V|)>\<subseteq\>U> and
    because <math|\<alpha\><around*|(|<around*|[|0,1|]>|)>\<subseteq\>U> we
    have that <math|<around*|[|0,1|]>\<subseteq\>V>. Define now
    <math|g<rsup|V>=f\<circ\>\<sigma\>:V\<rightarrow\>Y> then
    <math|g<rsup|V>> is of class <math|C<rsup|1>> because of the Chain Rule
    and <math|Dg<rsup|V><around*|(|t|)>=Df<around*|(|\<sigma\><around*|(|t|)>|)>\<circ\>D\<sigma\><around*|(|t|)>>
    and <math|<around*|(|g<rsup|V>|)><rprime|'><around*|(|t|)>=Dg<rsup|V><around*|(|t|)><around*|(|1|)>=Df<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|D\<sigma\><around*|(|t|)><around*|(|1|)>|)>=Df<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|y-x|)>>.
    Define now <math|h:<around*|[|0,1|]>\<rightarrow\>X> by
    <math|h=<around*|(|g<rsup|V>|)><rsub|\|<around*|[|0,1|]>>> then using
    <reference|differentiability on [a,b] equivalences> we have that
    <math|h<rprime|'>> is defined on <math|<around*|[|0,1|]>> and
    <math|h<rprime|'>=<around*|(|<around*|(|g<rsup|V>|)><rprime|'>|)><rsub|\|<around*|[|0,1|]>>=<around*|(|<around*|(|g<rsup|V>|)><rprime|'>|)><rsub|\|<around*|[|0,1|]>>>.
    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|y|)>-f<around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x+1\<cdot\><around*|(|y-x|)>|)>-f<around*|(|x+0\<cdot\><around*|(|y-x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f\<circ\>\<sigma\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<sigma\>|)><around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|1,0\<in\><around*|[|0,1|]>>>|<cell|h<around*|(|1|)>-h<around*|(|0|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<with|mode|text|<reference|fundamental
      theorem of calculus>>>>|<cell|<big|int><rsub|0><rsup|1>h<rprime|'>>>>>
    </eqnarray*>

    so using <reference|property of integral> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|=>|<cell|<around*|\<\|\|\>|<big|int><rsub|0><rsup|1>h<rprime|'>|\<\|\|\>><rsub|Y>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|int><rsub|0><rsup|1><around*|\<\|\|\>|h<rprime|'>|\<\|\|\>><rsub|Y>>>>>
    </eqnarray*>

    Finally if <math|t\<in\><around*|[|0,1|]>> we have
    <math|h<rprime|'><around*|(|t|)>=Df<around*|(|\<sigma\><around*|(|t|)>|)><around*|(|y-x|)>\<Rightarrow\><around*|\<\|\|\>|h<rprime|'><around*|(|t|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|Df<around*|(|\<sigma\><around*|(|t|)>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>\<leqslant\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>
    and thus

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|y|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>>|<cell|\<leqslant\>>|<cell|<big|int><rsub|0><rsup|1>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|1-0|)>\<cdot\>k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|k\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>>>>>
    </eqnarray*>

    proving the theorem.
  </proof>

  <\definition>
    <index|line segment><index|<math|L<rsub|a,b>>>Let <math|X> be a vector
    space, <math|a,b\<in\>X> then the line segment connecting <math|a> to b
    is the set <math|L<rsub|a,b>=<around*|{|t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>X>.
    Note that <math|a,b\<in\>L<rsub|a,b>> [take <math|t=0,1>]
  </definition>

  <\example>
    <math|<around*|[|0,1|]>=L<rsub|0,1>> in <math|\<bbb-R\>>
  </example>

  <\proof>
    If <math|x\<in\>L<rsub|0,1>> then there exists a
    <math|t\<in\><around*|[|0,1|]>> such that
    <math|x=t\<cdot\>0+<around*|(|1-t|)>\<cdot\>1=<around*|(|1-t|)>\<Rightarrow\>0\<leqslant\>1-t\<leqslant\>1\<Rightarrow\>L<rsub|0,1>\<subseteq\><around*|[|0,1|]>>.
    If <math|x\<in\><around*|[|0,1|]>> then
    <math|0\<leqslant\>x\<leqslant\>1\<Rightarrow\>0\<leqslant\>1-x\<leqslant\>1\<Rightarrow\><around*|(|1-x|)>\<cdot\>0+<around*|(|1-<around*|(|1-x|)>|)>\<cdot\>1\<in\>L<rsub|0,1>\<Rightarrow\>x\<in\>L<rsub|0,1>\<Rightarrow\><around*|[|0,1|]>\<subseteq\>L<rsub|0,1>>.
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space then <math|a,b\<in\>X> then <math|L<rsub|a,b>> is
    convex, compact and thus bounded.\ 
  </lemma>

  <\proof>
    If <math|x,y\<in\>L<rsub|a,b>> then there exists
    <math|t<rsub|x>,t<rsub|y>\<in\><around*|[|0,1|]>> such that
    <math|x=t<rsub|x>\<cdot\>a+<around*|(|1-t<rsub|x>|)>\<cdot\>b>,
    <math|y=t<rsub|y>\<cdot\>a+<around*|(|1-t<rsub|y>|)>\<cdot\>b>. Take then
    <math|x+t\<cdot\><around*|(|y-x|)>=t<rsub|x>\<cdot\>a+<around*|(|1-t<rsub|x>|)>\<cdot\>b+t\<cdot\><around*|(|t<rsub|y>\<cdot\>a+<around*|(|1-t<rsub|y>|)>\<cdot\>b-t<rsub|x>\<cdot\>a-<around*|(|1-t<rsub|x>|)>\<cdot\>b|)>=t<rsub|x>\<cdot\>a+b-t<rsub|x>\<cdot\>b+t\<cdot\>t<rsub|y>\<cdot\>a+t\<cdot\>b-t\<cdot\>t<rsub|y>\<cdot\>b-t\<cdot\>t<rsub|x>\<cdot\>a-t\<cdot\>b+t\<cdot\>t<rsub|x>\<cdot\>b=t<rsub|x>\<cdot\>a+t\<cdot\>t<rsub|y>\<cdot\>a-t\<cdot\>t<rsub|x>\<cdot\>a+b-t<rsub|x>\<cdot\>b+t\<cdot\>b-t\<cdot\>t<rsub|y>\<cdot\>b-t\<cdot\>b+t\<cdot\>t<rsub|x>\<cdot\>b=<around*|(|t<rsub|x>+t\<cdot\>t<rsub|y>-t\<cdot\>t<rsub|x>|)>\<cdot\>a+<around*|(|1-t<rsub|x>+t-t\<cdot\>t<rsub|y>-t+t\<cdot\>t<rsub|x>|)>\<cdot\>b=<around*|(|t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>|)>\<cdot\>a+<around*|(|1-<around*|(|t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>|)>|)>\<cdot\>b=s\<cdot\>a+<around*|(|1-s|)>\<cdot\>b>
    where <math|s=t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>=t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>>.
    Now as <math|0\<leqslant\>t,t<rsub|x>,t<rsub|y>\<leqslant\>1> we have
    that <math|t<rsub|x>\<cdot\>t\<leqslant\>t<rsub|x>\<leqslant\>1\<Rightarrow\>0\<leqslant\>t<rsub|x>-t<rsub|x>\<cdot\>t\<Rightarrow\>0\<leqslant\>t<rsub|x>-t\<cdot\>t<rsub|x>+t\<cdot\>t<rsub|y>=t<rsub|x>+t\<cdot\><around*|(|t<rsub|y>-t<rsub|x>|)>\<leqslant\>t<rsub|x>+<around*|(|t<rsub|y>-t<rsub|x>|)>=t<rsub|y>\<leqslant\>1>
    proving that <math|s\<in\><around*|[|0,1|]>> and thus that
    <math|x+t\<cdot\><around*|(|y-x|)>\<in\>L<rsub|a,b>>.

    Define <math|\<sigma\>:<around*|[|0,1|]>\<rightarrow\>X> by
    <math|t\<rightarrow\>t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b> then
    <math|\<sigma\>> is continuous for if <math|t\<in\><around*|[|0,1|]>>,
    <math|\<varepsilon\>\<gtr\>0> then take
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>+1>>
    and <math|s> such that <math|<around*|\||s-t|\|>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|\<sigma\><around*|(|t|)>-\<sigma\><around*|(|s|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|t\<cdot\>a+<around*|(|1-t|)>\<cdot\>b-s\<cdot\>a-<around*|(|1-s|)>\<cdot\>b|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|t-s|)>\<cdot\>a+<around*|(|s-t|)>\<cdot\>b|\<\|\|\>><rsub|Y>=<around*|\||t-s|\|>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>\<less\>\<delta\>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>>=<frac|e|<around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>+1>\<cdot\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>.
    Using <reference|continuous image of compact set> we have then that
    <math|L<rsub|a,b>=\<sigma\><around*|(|<around*|[|0,1|]>|)>> is compact,
    and by <reference|compact space in a metric space is bounded> <math|> we
    have then that <math|L<rsub|a,b>> is bounded.
  </proof>

  <\corollary>
    <label|Mean Value Theorem 3>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>> and let
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach space over <math|\<bbb-R\>>, <math|U\<subseteq\>X> a open
    set, <math|x,y\<in\>U> such that <math|L<rsub|x,y>\<subseteq\>U> and
    <math|f:U\<rightarrow\>Y> a <math|C<rsup|1>> function then
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
    [here <math|<around*|\<\|\|\>||\<\|\|\>>> is the operator norm in
    <math|L<around*|(|X,Y|)>>]
  </corollary>

  <\proof>
    As <math|L<rsub|x,y>> is compact by the previous lemma and <math|D f> is
    continuous [as <math|f> is <math|C<rsup|1>>] we have that
    <math|Df<around*|(|L<rsub|x,y>|)>> is compact (see <reference|continuous
    image of compact set>) and thus by <reference|compact space in a metric
    space is bounded> bounded. So there exists a <math|M\<geqslant\>0> such
    that <math|\<forall\>L<rsub|1>,L<rsub|2>\<in\>Df<around*|(|L<rsub|x,y>|)>>
    we have <math|<around*|\<\|\|\>|L<rsub|1>-L<rsub|2>|\<\|\|\>>\<leqslant\>M>
    so if <math|\<xi\>\<in\>L<rsub|x,y>> we have
    <math|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>|\<\|\|\>>=<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>+Df<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|Df<around*|(|x|)>|\<\|\|\>>\<leqslant\>M+<around*|\<\|\|\>|Df<around*|(|x|)>|\<\|\|\>>>
    proving that <math|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|x,y>|}>>
    is bounded above and thus by <reference|the reals are conditional
    complete> that <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>>
    exists and is finite. Finally as <math|L<rsub|x,y>> is convex and
    <math|L<rsub|x,y>\<subseteq\>U> we have by the Mean Value Theorem
    (<reference|Mean value theorem 2>) that
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|x,y>|}>|)>\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>.>
  </proof>

  <\theorem>
    <label|second mean value theorem><dueto|Second Mean Value Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space over <math|\<bbb-R\>>. <math|a,b\<in\>X>,
    \ <math|U\<subseteq\>X> a open set such that
    <math|L<rsub|a,b>\<subseteq\>U> and <math|f:U\<rightarrow\>Y> a
    <math|C<rsup|1>> function then <math|\<forall\>x\<in\>U> we have
    <math|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|b|)>-Df<around*|(|x|)><around*|(|a-b|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|a-b|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>>
    (here <math|<around*|\<\|\|\>||\<\|\|\>>> is the operator norm in
    <math|L<around*|(|X,Y|)>>)
  </theorem>

  <\proof>
    Define <math|g:U\<rightarrow\>Y> by <math|\<xi\>\<rightarrow\>g<around*|(|\<xi\>|)>=f<around*|(|\<xi\>|)>-Df<around*|(|x|)><around*|(|\<xi\>|)>>
    which is <math|C<rsup|1>> as <math|g> is <math|C<rsup|1>> and
    <math|Df<around*|(|x|)>> is <math|C<rsup|\<infty\>>> [as it is a
    continuous linear function]. Further if <math|\<xi\>\<in\>U> then
    <math|Dg<around*|(|\<xi\>|)>=Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>>
    (as <math|Df<around*|(|x|)>> is linear and continuous). Now using the
    Mean Value Theorem (see <reference|Mean Value Theorem 3>) we have
    <math|<around*|\<\|\|\>|g<around*|(|b|)>-g<around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Dg<around*|(|\<xi\>|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|b|)>-Df<around*|(|x|)><around*|(|b|)>-f<around*|(|a|)>+Df<around*|(|x|)><around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>|\<\|\|\>>\|\<xi\>\<in\>L|}>|)>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>-Df<around*|(|x|)><around*|(|b-a|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Df<around*|(|\<xi\>|)>-Df<around*|(|x|)>|\<\|\|\>>\|\<xi\>\<in\>L<rsub|a,b>|}>|)>>.
  </proof>

  Another example of a theorem named Mean value theorem (see Dieudonne)

  <\theorem>
    <label|mean value theorem (3)>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>
    be a non empty interval, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space, <math|f:I\<rightarrow\>Y>,
    <math|\<varphi\>:I\<rightarrow\>\<bbb-R\>> continuous functions such that
    there exists a denumerable <math|E\<subseteq\><around*|[|a,b|]>> such
    that <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> <math|f> and
    <math|\<varphi\>> have derivates <math|f<rprime|'><around*|(|x|)>> and
    <math|\<varphi\><rprime|'><around*|(|x|)>> (see <reference|derivative on
    a closed interval>) with <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><around*|(|x|)>>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>>
  </theorem>

  <\proof>
    As <math|E> is denumerable there exists a bijection
    <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\>E> \ Take now
    <math|\<varepsilon\>\<gtr\>0> and define\ 

    <\equation>
      \<forall\>\<beta\>\<in\><around*|[|a,b|]> we define
      \<cal-E\><around*|(|\<beta\>|)>=<choice|<tformat|<table|<row|<cell|0 if
      <around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>=\<emptyset\>>>|<row|<cell|<big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>><frac|1|2<rsup|n>>>>>>>
    </equation>

    and

    <\equation>
      <label|eq 13.50.317>A=<around*|{|\<beta\>\<in\><around*|[|a,b|]>\|\<forall\>\<gamma\>\<in\><around*|[|a,\<beta\>|[>\<vDash\><around*|\<\|\|\>|f<around*|(|\<gamma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<gamma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<gamma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<gamma\>|)>|}>\<subseteq\><around*|[|a,b|]>
    </equation>

    Then as <math|<around*|\<\|\|\>|f<around*|(|a|)>-f<around*|(|a|)>|\<\|\|\>>=0=\<varphi\><around*|(|a|)>-\<varphi\><around*|(|a|)>>,
    <math|\<varepsilon\>\<cdot\><around*|(|a-a|)>=0> and
    <math|\<cal-E\><around*|(|a|)>=0> that\ 

    <\equation>
      <label|eq 13.51.317>a\<in\>A\<Rightarrow\>A\<neq\>\<emptyset\>
    </equation>

    Also if <math|\<beta\>\<in\>A> then if
    <math|\<xi\>\<in\><around*|[|a,\<beta\>|[>> we have by the definition of
    <math|A> that also <math|\<xi\>\<in\>A> proving together with
    <math|\<beta\>\<in\>A> that\ 

    <\equation>
      <label|eq 13.52.317>\<forall\>\<beta\>\<in\>A we have
      <around*|[|a,\<beta\>|]>\<subseteq\>A
    </equation>

    Take now <math|\<sigma\>=sup<around*|(|A|)>> then if
    <math|\<xi\>\<in\><around*|[|a,\<sigma\>|[>> there exists a
    <math|\<beta\>\<in\>A> such that <math|a\<leqslant\>\<xi\>\<less\>\<beta\>\<leqslant\>\<sigma\>\<Rightarrowlim\><rsub|<text|<reference|eq
    13.52.317>>><around*|[|a,\<xi\>|]>\<subseteq\>A\<Rightarrow\>\<xi\>\<in\>A>
    proving that <math|<around*|[|a,\<sigma\>|[>\<subseteq\>A>. As
    <math|\<beta\>\<in\>A> and <math|\<xi\>\<in\><around*|[|a,\<beta\>|[>> we
    have that <math|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>
    proving as we have chosen <math|\<xi\>\<in\><around*|[|a,\<sigma\>|[>>
    that also <math|\<sigma\>\<in\>A>. So we have that\ 

    <\equation>
      <label|eq 13.53.317><around*|[|a,\<sigma\>|]>\<subseteq\>A
    </equation>

    If now <math|x\<in\>A\\<around*|[|a,\<sigma\>|]>> then as
    <math|A\<subseteq\><around*|[|a,b|]>> we have <math|a\<leqslant\>x> and
    thus must have <math|\<sigma\>\<less\>x> contradicting the fact that
    <math|\<sigma\>> as a supremum is a upper bound of <math|A> so that
    <math|A\\<around*|[|a,\<sigma\>|]>=\<emptyset\>> proving finally that

    <\equation>
      <label|eq 13.54.317><around*|[|a,\<sigma\>|]>=A where
      \<sigma\>=sup<around*|(|A|)>
    </equation>

    Now if <math|\<alpha\>,\<beta\>\<in\><around*|[|a,b|]>> with
    <math|\<alpha\>\<less\>\<beta\>> then if
    \ <math|n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>>
    we have that <math|\<rho\><around*|(|n|)>\<less\>\<alpha\>\<less\>\<beta\>\<Rightarrow\>n\<in\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>
    proving that <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<alpha\>|}>\<subseteq\><around*|{|i\<in\>\<bbb-N\><rsub|0>\|\<rho\><around*|(|i|)>\<less\>\<beta\>|}>>
    so that <math|\<cal-E\><around*|(|\<alpha\>|)>\<leqslant\>\<cal-E\><around*|(|\<beta\>|)>>
    proving\ 

    <\equation>
      <label|eq 13.55.317>\<forall\>\<alpha\>,\<beta\>\<in\><around*|[|a,b|]>
      with \<alpha\>\<leqslant\>\<beta\> we have
      \<cal-E\><around*|(|\<alpha\>|)>\<leqslant\>\<cal-E\><around*|(|\<beta\>|)>
    </equation>

    Now given <math|\<xi\>\<gtr\>0>, chosen arbitrary, then by the continuity
    of <math|\<varphi\>> there exists a <math|\<delta\><rsub|\<varphi\>>\<gtr\>0>
    such that if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|\<varphi\>>,\<delta\>|[>>
    then <math|<around*|\||\<sigma\>-\<beta\>|\|>\<less\>\<delta\><rsub|\<varphi\>>>
    and <math|<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\><frac|\<xi\>|2>\<Rightarrow\>\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>=\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<around*|\||\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<less\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<xi\>|2>>.
    By continuity of <math|f> there exists a <math|\<delta\><rsub|f>\<gtr\>0>
    so that if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[><big|cap><around*|]|\<sigma\>-\<delta\><rsub|f>,\<sigma\>|[>>
    then <math|<around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<xi\>|2>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|b|)>|\<\|\|\>>\<less\><around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<frac|\<xi\>|2>>.
    So if <math|\<beta\>\<in\><around*|[|a,\<sigma\>|[>\<cap\><around*|[|\<sigma\>-min<around*|(|\<delta\><rsub|\<varphi\>>,\<delta\><rsub|f>|)>,\<sigma\>|[>>
    then <math|<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|\<beta\>|)>-f<around*|(|a|)>|\<\|\|\>>+<frac|\<xi\>|2>\<leqslant\><rsub|defnitionof
    A,\<sigma\>\<in\>A>\<varphi\><around*|(|\<beta\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<alpha\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<beta\>|)>+<frac|\<xi\>|2>\<less\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+<frac|\<xi\>|2>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<beta\>|)>+<frac|\<xi\>|2>\<leqslant\><rsub|see
    <text|<reference|eq 13.55.317>>>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<beta\>-\<sigma\>|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>+\<xi\>\<leqslant\><rsub|\<beta\>\<less\>\<sigma\>>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>.
    As <math|\<xi\>\<gtr\>0> was chosen arbitrary we have using
    <reference|consequence of the Archimedean property (2)> that\ 

    <\equation>
      <label|eq 13.56.317><around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>
    </equation>

    Suppose now that <math|\<sigma\>\<less\>b> then we have for
    <math|\<sigma\>> to possibilities in relation to <math|E>

    <\description>
      <item*|<math|\<sigma\>\<nin\>E>>then <math|\<varphi\>,f> are
      differentiable at <math|\<sigma\>> and as <math|\<sigma\>\<less\>b> we
      have by <reference|derivative on a closed interval> that there exists
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
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>
        <around*|(|see <text|<reference|eq
        13.57.317>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.56.317>>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-\<sigma\>|)>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.55.317>> and \<sigma\>\<less\>\<xi\>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>>>>
      </eqnarray*>

      But this proves that <math|min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>\<in\>A>
      which is a contradiction as <math|sup<around*|(|A|)>=\<sigma\>\<less\>min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>>.
      So this case leads to a contradiction.

      <item*|<math|\<sigma\>\<in\>E>>then there exists a
      <math|m\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<sigma\>=\<rho\><around*|(|m|)>> then by the continuity of
      <math|f,\<varphi\>> at <math|\<sigma\>> together with
      <math|\<sigma\>\<less\>b> means that there exists
      <math|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>> such that if
      <math|\<sigma\>\<less\>\<xi\>\<less\>\<mu\><rsub|\<varphi\>>\<less\>b>
      then <math|<around*|\||\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|\<sigma\>|)>|\|>\<leqslant\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>>
      and if <math|\<sigma\>\<less\>\<xi\>\<less\>\<mu\><rsub|f>\<less\>b>
      then <math|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>>.
      So if <math|\<sigma\>\<less\>\<xi\>\<less\>min<around*|(|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>|)>\<less\>b>
      then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|a|)>|\<\|\|\>>>|<cell|=>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>+f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|f<around*|(|\<xi\>|)>-f<around*|(|\<sigma\>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+<around*|\<\|\|\>|f<around*|(|\<sigma\>|)>-f<around*|(|a|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        13.56.317>>>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<xi\>|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+<around*|\||\<varphi\><around*|(|\<sigma\>|)>-\<varphi\><around*|(|\<xi\>|)>|\|>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+<frac|\<varepsilon\>|2>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<sigma\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><frac|1|2<rsup|m>>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<sigma\>|}>><frac|1|2<rsup|m>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\><big|sum><rsub|n\<in\><around*|{|i\<in\>\<bbb-N\>\|\<rho\><around*|(|i|)>\<less\>\<xi\>|}>><frac|1|2<rsup|m>>
        <around*|(|as \<rho\><around*|(|m|)>=\<sigma\>\<less\>\<xi\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|\<sigma\>\<less\>\<xi\>>>|<cell|\<varphi\><around*|(|\<xi\>|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<xi\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|\<xi\>|)>>>>>
      </eqnarray*>

      proving again that <math|min<around*|(|\<mu\><rsub|\<varphi\>>,\<mu\><rsub|f>|)>\<in\>A>
      which is a contradiction as <math|sup<around*|(|A|)>=\<sigma\>\<less\>min<around*|(|\<lambda\><rsub|\<varphi\>>,\<lambda\><rsub|f>|)>>
    </description>

    As in all cases we have a contradiction we must have that
    <math|\<sigma\>=b> we have given <math|\<varepsilon\>\<gtr\>0> arbitrary
    chosen that by <reference|eq 13.56.317>
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>+\<varepsilon\>\<cdot\><around*|(|\<sigma\>-a|)>+\<varepsilon\>\<cdot\>\<cal-E\><around*|(|b|)>>
    and thus by <reference|consequence of the Archimedean property (2)> that
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>>
  </proof>

  <\corollary>
    Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> be a non empty
    interval, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space, <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a continuous
    function such that there exists a denumerable set
    <math|E\<subseteq\><around*|[|a,b|]>> so that
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E>
    <math|f<rprime|'><around*|(|x|)>> exists (see <reference|derivative on a
    closed interval>) and <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </corollary>

  <\proof>
    Define <math|\<varphi\><rsup|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\>>
    by <math|\<varphi\><rsup|\<bbb-R\>><around*|(|x|)>=M\<cdot\><around*|(|x-a|)>>
    then <math|\<varphi\><rprime|'><around*|(|x|)>=M> so that by
    <reference|left,right derivatives> \ <math|\<varphi\>:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>>
    defined by <math|\<varphi\><around*|(|x|)>=M\<cdot\><around*|(|x-a|)>>
    has <math|\<forall\>x\<in\><around*|[|a,b|]>> the derivate
    <math|\<varphi\><rprime|'><around*|(|x|)>=M>. So
    <math|\<forall\>x\<in\><around*|[|a,b|]>\\E> we have that
    <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>\<varphi\><rprime|'><around*|(|x|)>>
    and thus by the previous theorem we have
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>\<varphi\><around*|(|b|)>-\<varphi\><around*|(|a|)>=M\<cdot\><around*|(|b-a|)>-M\<cdot\><around*|(|b-b|)>=M\<cdot\><around*|(|b-a|)>>
  </proof>

  <\corollary>
    Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> be a non empty
    interval, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a Banach space, <math|f:<around*|[|a,b|]>\<rightarrow\>Y> a continuous
    function so that <math|\<forall\>x\<in\><around*|[|a,b|]>\\E>
    <math|f<rprime|'><around*|(|x|)>> exists (see <reference|derivative on a
    closed interval>) and <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    then <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </corollary>

  <\proof>
    As <math|\<forall\>n\<in\>\<bbb-N\><rsub|0><rsub|>> we have that
    <math|0\<less\><frac|1|n+1>\<less\>1\<Rightarrowlim\><rsub|0\<less\>b-a>0\<less\><around*|(|b-a|)>\<cdot\><frac|1|n+1>\<less\><around*|(|b-a|)>\<Rightarrow\>a\<less\>a+<around*|(|b-a|)>\<cdot\><frac|1|n+1>\<less\>b>
    we have that <math|E=<around*|{|a+<around*|(|b-a|)>\<cdot\><frac|1|n+1>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\><around*|[|a,b|]>>
    is a denumerable set and for <math|\<forall\>x\<in\><around*|[|a,b|]>\\E>
    we have that <math|f<rprime|'><around*|(|x|)>> exists (see
    <reference|derivative on a closed interval>) and
    <math|<around*|\<\|\|\>|f<rprime|'><around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
    so that by the previous corollary we have that
    <math|<around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>>\<leqslant\>M\<cdot\><around*|(|b-a|)>>
  </proof>

  <\theorem>
    <label|consequence of Mean value theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces, let <math|U\<subseteq\>X> a open set, <math|a,b\<in\>U>
    such that <math|L=<around*|{|a+<around*|(|b-a|)>\<cdot\>t\|t\<in\><around*|[|0,1|]>|}>\<subseteq\>U>,
    <math|f:U\<rightarrow\>Y> a function such that <math|\<forall\>x\<in\>L>
    we have that <math|f> is differentiable at <math|x> then\ 

    <\equation*>
      <around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|a+\<lambda\>\<cdot\><around*|(|b-a|)>|)>|\<\|\|\>>\|\<lambda\>\<in\><around*|[|0,1|]>|}>|)>
    </equation*>
  </theorem>

  <\proof>
    Define the mapping <math|\<varphi\><rsup|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>Y>
    by <math|\<varphi\><rsup|\<bbb-R\>><around*|(|x|)>=a+<around*|(|b-a|)>\<cdot\>x>
    which is <math|C<rsup|\<infty\>>> (being a linear function+a constant
    function) take then the open set <math|V=\<varphi\><rsup|\<bbb-R\>-1><around*|(|U|)>>,
    if we then define <math|\<varphi\><rsup|V>:V\<rightarrow\>Y> by
    <math|\<varphi\><rsup|V><around*|(|x|)>=\<varphi\><rsup|\<bbb-R\>><around*|(|x|)>>
    so that <math|\<varphi\><rsup|V><around*|(|<around*|[|0,1|]>|)>=L<rsub|a,b>>
    so as <math|f> is differentiable on <math|U> and thus continuous we have
    that <math|f\<circ\>\<varphi\><rsup|V>:V\<rightarrow\>Y> is continuous
    and differentiable on every <math|x\<in\><around*|[|0,1|]>>. Given
    <math|x\<in\><around*|[|0,1|]>> we have that
    \ <math|<around*|(|f\<circ\>\<varphi\><rsup|V>|)><rprime|'><around*|(|x|)>=D
    <around*|(|f\<circ\>\<varphi\><rsup|V>|)><around*|(|x|)><around*|(|1|)>=<around*|(|D
    f<around*|(|\<varphi\><rsup|V><around*|(|x|)>|)>\<circ\>D
    \<varphi\><rsup|V><around*|(|x|)>|)><around*|(|1|)>=D
    f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)><around*|(|D\<varphi\><rsup|V><around*|(|x|)><around*|(|1|)>|)>=D
    f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)><around*|(|<around*|(|b-a|)>\<cdot\>1|)>=D
    f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)><around*|(|b-a|)>> proving
    that if <math|f\<circ\>\<varphi\>:<around*|[|0,1|]>\<rightarrow\>Y>
    defined by <math|<around*|(|f\<circ\>\<varphi\>|)><around*|(|x|)>=<around*|(|f\<circ\>\<varphi\><rsup|V>|)><around*|(|x|)>>
    that

    <\equation>
      <label|eq 13.58.317>\<forall\>x\<in\><around*|[|0,1|]><text| we have
      ><around*|(|f\<circ\>\<varphi\>|)><rprime|'><around*|(|x|)>=<around*|(|f\<circ\>\<varphi\><rsup|V>|)><rprime|'><around*|(|x|)>=D
      f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)>\<cdot\><around*|(|b-a|)>
    </equation>

    And thus <math|\<forall\>x\<in\><around*|[|0,1|]>> we have
    <math|<around*|\<\|\|\>|<around*|(|f\<circ\>\<varphi\>|)><rprime|'><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|D
    f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)><around*|(|b-e|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|D
    f<around*|(|a+<around*|(|b-a|)>\<cdot\>x|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|a+\<lambda\>\<cdot\><around*|(|b-a|)>|)>|\<\|\|\>>\|\<lambda\>\<in\><around*|[|0,1|]>|}>|)>\<cdot\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>>,
    so by the previous corollary we have then that
    <math|<around*|\<\|\|\>|<around*|(|f\<circ\>\<varphi\>|)><around*|(|1|)>-<around*|(|f\<circ\>\<varphi\>|)><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|a+\<lambda\>\<cdot\><around*|(|b-a|)>|)>|\<\|\|\>>\|\<lambda\>\<in\><around*|[|0,1|]>|}>|)>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|\<varphi\><around*|(|1|)>-f<around*|(|\<varphi\><around*|(|0|)>|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|a+\<lambda\>\<cdot\><around*|(|b-a|)>|)>|\<\|\|\>>\|\<lambda\>\<in\><around*|[|0,1|]>|}>|)>\<Rightarrow\><around*|\<\|\|\>|f<around*|(|b|)>-f<around*|(|a|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|b-a|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
    f<around*|(|a+\<lambda\>\<cdot\><around*|(|b-a|)>|)>|\<\|\|\>>\|\<lambda\>\<in\><around*|[|0,1|]>|}>|)>>
  </proof>

  \;

  \;

  <section|Symmetry of Higher Order Differentials>

  <\lemma>
    <label|C^2 differential is symmetric>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be a Banach spaces, <math|U\<subseteq\>X> open and
    <math|f:U\<rightarrow\>Y> is <math|C<rsup|2>> then
    <math|\<forall\>x\<in\>U> and <math|v,w\<in\>X> we have that
    <math|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>=D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>>
  </lemma>

  <\proof>
    Let <math|x\<in\>U> then as <math|U> is open there exists a
    <math|r\<gtr\>0> so that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,r|)>\<subseteq\>U>,
    take then <math|v<rsub|1>,v<rsub|2>\<in\>X> such that
    <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\><frac|r|4>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\><frac|r|4>>
    then <math|\<forall\>t\<in\><around*|]|-2,2|[>\<Rightarrow\><around*|\||t|\|>\<less\>2>
    we have that <math|<around*|\<\|\|\>|x+t\<cdot\>v+w-x|\<\|\|\>><rsub|X>=<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<less\>2\<cdot\><frac|r|4>+<frac|r|4>\<less\><frac|r|2>+<frac|r|2>=r\<Rightarrow\>x+t\<cdot\>v+w\<in\>U>,
    <math|<around*|\<\|\|\>|x+t\<cdot\>v-x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|t\<cdot\>v|\<\|\|\>><rsub|X>=<around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>2\<cdot\><frac|r|4>\<less\>r\<Rightarrow\>x+t\<cdot\>v\<in\>U>\<gtr\>
    So we can define the function <math|g:<around*|]|-2,2|[>\<rightarrow\>Y>
    by <math|t\<rightarrow\>g<around*|(|t|)>=f<around*|(|x+t\<cdot\>v+w|)>-f<around*|(|x+t\<cdot\>v|)>>,
    as <math|t\<rightarrow\>x+t\<cdot\>v+w> and
    <math|t\<rightarrow\>x+t\<cdot\>v> are trivially <math|C<rsup|\<infty\>>>
    [being the sum of a constant and continuous linear function] we have that
    <math|g> is <math|C<rsup|2>\<Rightarrow\>g> is <math|C<rsup|1>>. As
    <math|<around*|[|0,1|]>=L<rsub|0,1>\<subseteq\><around*|]|-2,2|[>> we can
    use the Second Mean Value Theorem (see <reference|second mean value
    theorem>) to get <math|<around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-Dg<around*|(|0|)><around*|(|1-0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Dg<around*|(|\<xi\>|)>-Dg<around*|(|0|)>|\<\|\|\>>|}>\|\<xi\>\<in\><around*|[|0,1|]>|)>>,
    now as <math|Dg<around*|(|0|)><around*|(|1|)>=g<rprime|'><around*|(|0|)>>
    we have

    <\equation>
      <label|eq 12.41><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|Dg<around*|(|\<xi\>|)>-Dg<around*|(|0|)>|\<\|\|\>>|}>\|\<xi\>\<in\><around*|[|0,1|]>|)>
    </equation>

    Now <math|<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|Dg<around*|(|\<xi\>|)><around*|(|1|)>-Dg<around*|(|0|)><around*|(|1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|Dg<around*|(|\<xi\>|)>-Dg<around*|(|0|)>|)><around*|(|1|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|Dg<around*|(|\<xi\>|)>-Dg<around*|(|0|)>|\<\|\|\>>\<cdot\><around*|\||1|\|>=<around*|\<\|\|\>|Dg<around*|(|\<xi\>|)>-Dg<around*|(|0|)>|\<\|\|\>>>
    so that we have by <reference|eq 12.41> that\ 

    <\equation>
      <label|eq 12.42><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Using the Chain Rule and the differentiability of linear mappings we have
    that <math|g<rprime|'><around*|(|\<xi\>|)>=Dg<around*|(|\<xi\>|)><around*|(|1|)>=Df<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v\<cdot\>1|)>-Df<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v\<cdot\>1|)>=Df<around*|(|x+\<xi\>\<cdot\>v+w|)><around*|(|v|)>-Df<around*|(|x+\<xi\>\<cdot\>v|)><around*|(|v|)>>
    giving\ 

    <\equation>
      <label|eq 12.43>g<rprime|'><around*|(|\<xi\>|)>=<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-Df<around*|(|x|)>|)><around*|(|v|)>-<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>|)><around*|(|v|)>
    </equation>

    Since <math|f> is <math|C<rsup|2>> we have that <math|Df> is
    <math|C<rsup|1>> we can given a <math|\<varepsilon\>\<gtr\>0> find a
    <math|\<delta\>\<gtr\>0> such if <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>>
    and <math|h\<in\>U<rsub|x>> then <math|<around*|\<\|\|\>|Df<around*|(|x+h|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>.
    Take now <math|u,v> such that <math|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>
    then <math|\<forall\>t\<in\><around*|[|0,1|]>> we have
    <math|<around*|\<\|\|\>|t\<cdot\>v+w|\<\|\|\>><rsub|X>\<leqslant\><around*|\||t|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<leqslant\>1\<cdot\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
    and <math|x+t\<cdot\>v+w\<in\>U\<Rightarrow\>t\<cdot\>v+w\<in\>U<rsub|x>>,
    also <math|<around*|\<\|\|\>|t\<cdot\>v|\<\|\|\>><rsub|X>\<leqslant\><frac|\<delta\>|2>\<less\>\<delta\>>
    and <math|x+*t\<cdot\>v\<in\>U\<Rightarrow\>t\<cdot\>v\<in\>U<rsub|x>> so
    we have\ 

    <\equation>
      <label|eq 12.44>\<xi\>\<in\><around*|[|0,1|]> then
      <around*|\<\|\|\>|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>
    </equation>

    <\equation>
      <label|eq 12.45>\<xi\>\<in\><around*|[|0,1|]> then
      <around*|\<\|\|\>|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v|\<\|\|\>><rsub|X>
    </equation>

    Also

    <\equation>
      <label|eq 12.46>D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v+w|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)><around*|(|v|)>\<equallim\><rsub|D<rsup|2>f<around*|(|x|)>
      is linear>D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>
    </equation>

    Now <math|<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|eq
    12.43>>><around*|\<\|\|\>|<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-Df<around*|(|x|)>|)><around*|(|v|)>-<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>|)><around*|(|v|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|eq
    12.16>>><around*|\<\|\|\>|<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-
    Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<varepsilon\>\<cdot\>v+w|)>|)><around*|(|v|)>-<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-
    Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<varepsilon\>\<cdot\>v+w|)>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|<around*|(|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|Df<around*|(|x+\<xi\>\<cdot\>v+w|)>-
    Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<varepsilon\>\<cdot\>v+w|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|Df<around*|(|x+\<xi\>\<cdot\>v|)>-Df<around*|(|x|)>-D<rsup|2>f<around*|(|x|)><around*|(|\<xi\>\<cdot\>v|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>>+\<varepsilon\>\<cdot\><around*|\<\|\|\>|\<xi\>\<cdot\>v|\<\|\|\>><rsub|X>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|\<xi\>\<cdot\>v+w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\||\<xi\>|\|>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>=2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>
    giving\ 

    <\equation>
      <label|eq 12.47>if \<xi\>\<in\><around*|[|0,1|]> then
      <around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    So if <math|t\<in\><around*|[|0,1|]>> we have as also
    <math|0\<in\><around*|[|0,1|]>> that <math|<around*|\<\|\|\>|g<rprime|'><around*|(|t|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|g<rprime|'><around*|(|t|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>-<around*|(|g<rprime|'><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|g<rprime|'><around*|(|t|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rprime|'><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<text|<reference|eq
    12.47>>>4\<cdot\>\<varepsilon\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>
    giving\ 

    <\equation>
      <label|eq 12.48><around*|\<\|\|\>|g<rprime|'><around*|(|t|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>4\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Now the function <math|h:<around*|[|-2,2|]>\<rightarrow\>\<bbb-R\>>
    defined by <math|t\<rightarrow\>h<around*|(|t|)>=<around*|\<\|\|\>|g<rprime|'><around*|(|t|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>>
    is continuous as <math|g<rprime|'>> is continuous [<math|g> is
    <math|C<rsup|1>> and <reference|C1 of real or complex function>]] and
    <math|<around*|\<\|\|\>||\<\|\|\>>> is continuous (see <reference|norm
    mappings are continuous in the produc tof reals>). Using
    <reference|existance of maximum and minimum in the image of a continuous
    function of a compact set> there exists a
    <math|\<xi\><rsub|0>\<in\><around*|[|0,1|]>> so that

    <\equation>
      <label|eq 12.49>h<around*|(|\<xi\><rsub|0>|)>=sup<around*|(|h<around*|[|<around*|[|0,1|]>|]>|)>\<Rightarrow\><around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>=sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>\|\<varepsilon\>\<in\><around*|[|0,1|]>|}>|)>
    </equation>

    Then <math|<around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-g<rprime|'><around*|(|0|)>+g<rprime|'><around*|(|0|)>-g<rprime|'><around*|(|\<xi\><rsub|0>|)>+g<rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rprime|'><around*|(|0|)>-g<rprime|'><around*|(|\<xi\><rsub|0>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<text|<reference|eq
    12.42>>>sup<around*|(|<around*|{|<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>>\|\<xi\>\<in\><around*|[|0,1|]>|}>|)>+<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|eq
    12.49>>>2\<cdot\><around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-g<rprime|'><around*|(|0|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<rprime|'><around*|(|\<xi\><rsub|0>|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<text|<reference|eq
    12.48>,<reference|eq 12.47>>>4\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+2\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>=6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>>
    proving that\ 

    <\equation>
      <label|eq 12.50><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>
    </equation>

    Now <math|g<around*|(|1|)>-g<around*|(|0|)>=f<around*|(|x+v\<cdot\>1+w|)>-f<around*|(|x+v\<cdot\>1|)>-<around*|(|f<around*|(|x+v\<cdot\>0+w|)>-f<around*|(|x+v\<cdot\>0|)>|)>=f<around*|(|x+v+w|)>-f<around*|(|x+v|)>-f<around*|(|x+w|)>+f<around*|(|x|)>>
    is symmetric in <math|v,w> so if we take <math|v<rprime|'>=w> and
    <math|w<rprime|'>=v> with <math|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|w<rprime|'><rsub|Y>|\<\|\|\>>\<leqslant\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>
    and <math|g<rprime|'>:<around*|[|-2,2|]>\<rightarrow\>Y> by
    <math|g<rprime|'><around*|(|t|)>=f<around*|(|x+t\<cdot\>v<rprime|'>+w<rprime|'>|)>-f<around*|(|x+t\<cdot\>v<rprime|'>|)>>
    then we have <math|<around*|\<\|\|\>|g<rprime|'><around*|(|1|)>-g<rprime|'><around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w<rprime|'>|)><around*|(|v<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\>6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|v<rsub|><rprime|'>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w<rprime|'>|\<\|\|\>><rsub|X>|)>>
    and as <math|g<rprime|'><around*|(|t|)>-g<rprime|'><around*|(|0|)>=g<around*|(|t|)>-g<around*|(|0|)>>
    and <math|v<rprime|'>=w,w<rprime|'>=v> we have\ 

    <\equation>
      <label|eq 12.51><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>
    </equation>

    So <math|<around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>-<around*|(|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|1|)>-g<around*|(|0|)>-D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>|\<\|\|\>><rsub|Y>\<leqslant\>6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|v|\<\|\|\>><rsub|x>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)>+6\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|w|\<\|\|\>><rsub|X>\<cdot\><around*|(|<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|)>=6\<cdot\>\<varepsilon\>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><rsup|2>>
    \ proving that\ 

    <\equation*>
      <around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<leqslant\>6\<cdot\>\<varepsilon\>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><rsup|2>
    </equation*>

    Assume now that <math|\<varepsilon\><rprime|'>=<around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<gtr\>0>
    then we can as <math|\<varepsilon\>> in <reference|eq 12.51> was chosen
    arbitrary take <math|0\<less\>\<varepsilon\>\<less\><frac|\<varepsilon\><rprime|'>|6\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><rsup|2>+1>>
    then <math|\<varepsilon\><rprime|'>=<around*|\<\|\|\>|D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>-D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>|\<\|\|\>><rsub|Y>\<less\>6\<cdot\><frac|\<varepsilon\><rprime|'>|6\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><rsup|2>+1>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|w|\<\|\|\>><rsub|X>|)><rsup|2>\<less\>\<varepsilon\><rprime|'>\<Rightarrow\>\<varepsilon\><rprime|'>\<less\>\<varepsilon\><rprime|'>>
    a contradiction so we conclude that <math|\<forall\>u,v\<in\>X> with
    <math|<around*|\<\|\|\>|u|\<\|\|\>><rsub|X>,<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>\<less\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>
    we have <math|D<rsup|2>f<around*|(|x|)><around*|(|u|)><around*|(|v|)>=D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>>.
    Take now <math|u,v\<in\>X> and define
    <math|u<rprime|'>=<frac|u\<cdot\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>|<around*|(|<around*|\<\|\|\>|u|\<\|\|\>><rsub|X>+1|)>>,v<rprime|'>=<frac|v\<cdot\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>|<around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1|)>>>
    then <math|<around*|\<\|\|\>|u<rprime|'>|\<\|\|\>><rsub|X>=<frac|<around*|\<\|\|\>|u|\<\|\|\>><rsub|X>|<around*|(|<around*|\<\|\|\>|u|\<\|\|\>><rsub|x>+1|)>>\<cdot\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>\<less\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>,
    <math|<around*|\<\|\|\>|v<rprime|'>|\<\|\|\>><rsub|X>=<frac|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>|<around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|x>+1|)>>\<cdot\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>\<less\>min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)>>
    so that <math|D<rsup|2>f<around*|(|x|)><around*|(|v<rprime|'>|)><around*|(|w<rprime|'>|)>=D<rsup|2>f<around*|(|x|)><around*|(|w<rprime|'>|)><around*|(|v<rprime|'>|)>\<Rightarrowlim\><rsub|D<rsup|2>f<around*|(|x|)>\<in\>L<around*|(|X,L<around*|(|X,Y|)>|)>><frac|min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)><rsup|2>|<around*|(|<around*|\<\|\|\>|u|\<\|\|\>><rsub|X>+1|)>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1|)>>\<cdot\>D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>=<frac|min<around*|(|<frac|r|4>,<frac|\<delta\>|2>|)><rsup|2>|<around*|(|<around*|\<\|\|\>|u|\<\|\|\>><rsub|X>+1|)>\<cdot\><around*|(|<around*|\<\|\|\>|v|\<\|\|\>><rsub|X>+1|)>>\<cdot\>D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>\<Rightarrow\>D<rsup|2>f<around*|(|x|)><around*|(|v|)><around*|(|w|)>=D<rsup|2>f<around*|(|x|)><around*|(|w|)><around*|(|v|)>>
    proving at last our theorem.
  </proof>

  To prove that the <math|n>-the differential is symmetric we must first
  prove the following lemma and corollary.

  <\lemma>
    Let <math|n\<in\>\<bbb-N\>>, <math|X> a set, <math|Y> a set and
    <math|f:X<rsup|n+1>\<rightarrow\>Y> a function so that
    <math|\<forall\>\<sigma\>\<in\>P<rsub|n>> and
    <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>X<rsup|n>>
    and <math|x\<in\>X> we have <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>=f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>,x|)>>
    and <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>X<rsup|n+1>>
    we have <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x<rsub|n+1>|)>=f<around*|(|x<rsub|1,\<ldots\>,>x<rsub|n-1>,x<rsub|n+1>,x<rsub|n>|)>>
    then if <math|\<tau\>\<in\>P<rsub|n+1>> we have that
    <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=f<around*|(|x<rsub|\<tau\><around*|(|1|)>>,\<ldots\>,x<rsub|\<tau\><around*|(|n+1|)>>|)>>
  </lemma>

  <\proof>
    The following cases exists

    <\enumerate>
      <item><dueto|<math|n=1>>Then if <math|\<sigma\>\<in\>P<rsub|n+1>> we
      have either <math|\<sigma\>=1<rsub|<around*|[|0,1|]>>> and then
      <math|f<around*|(|x<rsub|1>,x<rsub|2>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,x<rsub|\<sigma\><around*|(|2|)>>|)>>
      or <math|\<sigma\>=<around*|(|1<long-arrow|\<rubber-leftrightarrow\>|><rsub|2>2|)>>
      and then <math|f<around*|(|x<rsub|1>,x<rsub|2>|)>=f<around*|(|x<rsub|2>,x<rsub|1>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,x<rsub|\<sigma\><around*|(|2|)>>|)>>
      proving the theorem for the case <math|n=1>.

      <item><dueto|<math|n\<gtr\>1>>Let <math|\<sigma\>\<in\>P<rsub|n+1>>
      then we have the following cases to consider

      <\enumerate>
        <item><dueto|<math|\<sigma\><around*|(|n+1|)>=n+1>>then
        <math|\<tau\>=\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>> is a
        bijection so that <math|\<tau\>\<in\>P<rsub|n>> and thus
        <math|f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x<rsub|n+1>|)>=f<around*|(|x<rsub|\<tau\><around*|(|1|)>>,\<ldots\>,x<rsub|\<tau\><around*|(|n|)>>,x<rsub|n+1>|)>=f<around*|(|x<rsub|\<tau\><around*|(|1|)>>,\<ldots\>,x<rsub|\<tau\><around*|(|n|)>>,x<rsub|\<sigma\><around*|(|n+1|)>>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n+1|)>>|)>>

        <item><dueto|<math|\<sigma\><around*|(|n+1|)>\<neq\>n+1>>then
        <math|\<sigma\><around*|(|n+1|)>=k\<in\><around*|{|1,\<ldots\>,n|}>>,
        take then <math|i=\<sigma\><rsup|-1><around*|(|n+1|)>> so that
        <math|\<sigma\><around*|(|i|)>=n+1>, as
        <math|\<sigma\><around*|(|n+1|)>\<neq\>n+1> we have
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>>. Then if
        <math|\<tau\>=<around*|(|i\<leftrightarrow\><rsub|n>n|)>> we have
        <math|f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>,x<rsub|\<sigma\><around*|(|n+1|)>>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|\<tau\><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|\<tau\><around*|(|n|)>|)>>,x<rsub|k>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|\<tau\><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|\<tau\><around*|(|n-1|)>|)>>,x<rsub|\<sigma\><around*|(|i|)>>,x<rsub|k>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|\<tau\><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|\<tau\><around*|(|n-1|)>|)>>,x<rsub|n+1>,x<rsub|k>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|\<tau\><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|\<tau\><around*|(|n-1|)>|)>>,x<rsub|k>,x<rsub|n+1>|)>>
        so that

        <\equation>
          <label|eq 12.52>f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>,x<rsub|\<sigma\><around*|(|n+1|)>>|)>=f<around*|(|x<rsub|\<sigma\><around*|(|\<tau\><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|\<tau\><around*|(|n-1|)>|)>>,x<rsub|k>,x<rsub|n+1>|)>
        </equation>

        Now if <math|j\<in\><around*|{|1,\<ldots\>,n-1|}>> then if
        <math|\<sigma\><around*|(|\<tau\><around*|(|j|)>|)>=n+1> we have
        <math|\<tau\><around*|(|j|)>=\<sigma\><rsup|-1><around*|(|n+1|)>=i\<Rightarrow\><around*|(|i\<leftrightarrow\><rsub|n>n|)><around*|(|j|)>=i\<Rightarrow\>j=n\<nin\><around*|{|1,\<ldots\>,n-1|}>>
        a contradiction. So if we can define
        <math|\<rho\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
        defined by <math|j\<rightarrow\>\<rho\><around*|(|j|)>=<choice|<tformat|<table|<row|<cell|\<sigma\><around*|(|\<tau\><around*|(|j|)>|)>
        if j\<in\><around*|{|1,\<ldots\>,n-1|}>>>|<row|<cell|k if j=n>>>>>>.
        We prove next that <math|\<rho\>> is a bijection and thus
        <math|\<rho\>\<in\>P<rsub|n>>:

        <\enumerate>
          <item><dueto|injectivity>First if
          <math|k=\<sigma\><around*|(|\<tau\><around*|(|j|)>|)>\<Rightarrow\>\<sigma\><around*|(|n+1|)>=\<sigma\><around*|(|\<tau\><around*|(|j|)>|)>\<Rightarrow\>n+1=\<tau\><around*|(|j|)>>
          a contradiction (as <math|\<tau\>\<in\>P<rsub|n>>) so
          <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
          <math|\<rho\><around*|(|j|)>\<neq\>\<rho\><around*|(|n|)>>. Assume
          now that <math|\<exists\>j,l\<in\><around*|{|1,\<ldots\>n-1|}>>
          such that <math|\<rho\><around*|(|j|)>=\<rho\><around*|(|l|)>\<Rightarrow\>\<sigma\><around*|(|\<tau\><around*|(|j|)>|)>=\<sigma\><around*|(|\<tau\><around*|(|l|)>|)>\<Rightarrowlim\><rsub|\<sigma\>
          is a bijection>\<tau\><around*|(|j|)>=\<tau\><around*|(|l|)>\<Rightarrowlim\><rsub|\<tau\>
          is a bijection>j=l>. So <math|\<forall\>j,l\<in\><around*|{|1,\<ldots\>,|}>>
          we have <math|\<rho\><around*|(|j|)>=\<rho\><around*|(|l|)>\<Rightarrow\>j=l>.

          <item><dueto|surjectivity>If <math|j\<in\><around*|{|1,\<ldots\>,n|}>>
          then we have either

          <\enumerate>
            <item><dueto|<math|j=k>>then <math|j=k=\<rho\><around*|(|n|)>>

            <item><dueto|<math|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>>we
            have as <math|\<sigma\>> is a bijection
            <math|r=\<sigma\><rsup|-1><around*|(|j|)>\<in\><around*|{|1,\<ldots\>,n+1|}>>
            and as <math|\<sigma\><around*|(|n+1|)>=k> we must have that
            <math|r\<in\><around*|{|1,\<ldots\>,n|}>> and thus there exists a
            <math|s=\<tau\><rsup|-1><around*|(|r|)>>. So that
            <math|\<rho\><around*|(|s|)>=\<sigma\><around*|(|\<tau\><around*|(|s|)>|)>=\<sigma\><around*|(|r|)>=j>
          </enumerate>
        </enumerate>

        So using <reference|eq 12.52> we have then
        <math|f<around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n+1|)>>|)>=f<around*|(|x<rsub|\<rho\><around*|(|1|)>>,\<ldots\>,x<rsub|\<rho\><around*|(|n|)>>,x<rsub|n+1>|)>=f<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x<rsub|n+1>|)>>.
      </enumerate>
    </enumerate>
  </proof>

  <\corollary>
    <label|symmetry of L^n+t(X;Y) based on permutations and transposition>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed sets and <math|L\<in\>L<rsup|n+1><around*|(|X;Y|)>> is such that
    <math|\<forall\>\<sigma\>\<in\>P<rsub|n>> and
    <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n>,x\<in\>X> that
    <math|L<around*|(|x:x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x:x<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n|)>>|)>>
    and <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n-1>,x,y\<in\>X> that
    <math|L<around*|(|x:y:x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>=L<around*|(|y:x:x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>>
    then we have that <math|\<forall\>\<tau\>\<in\>P<rsub|n+1>> and
    <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n+1>\<in\>X> that
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=L<around*|(|x<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n+1|)>>|)>>
  </corollary>

  <\proof>
    Define <math|S:L<around*|(|X<rsup|n+1>,Y|)>\<rightarrow\>L<around*|(|X<rsup|n+1>,Y|)>>
    by <math|L\<rightarrow\>S<around*|(|L|)>> where
    <math|S<around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=L<around*|(|x<rsub|n+1>,\<ldots\>,x<rsub|1>|)>>
    then define then <math|H:L<rsup|n+1><around*|(|X;Y|)>\<rightarrow\>L<around*|(|X<rsup|n+1>,Y|)>>
    by <math|H=S\<circ\>\<cal-P\><rsub|n+1>> then we have

    <\enumerate>
      <item><math|\<forall\>\<sigma\>\<in\>P<rsub|n>> ,
      <math|\<forall\>x,x<rsub|1>,\<ldots\>,x<rsub|n+1>> that
      <math|H<around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>=<around*|(|S<around*|(|\<cal-P\><rsub|n+1><around*|(|L|)>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>=\<cal-P\><rsub|n+1><around*|(|L|)><around*|(|x,x<rsub|n>,\<ldots\>,x<rsub|1>|)>=L<around*|(|x:x<rsub|n>:\<ldots\>:x<rsub|1>|)>\<equallim\><rsub|<text|<reference|in
      permutation> >>L<around*|(|x:x<rsub|\<iota\><rsub|n><around*|(|1|)>>:\<ldots\>:x<rsub|\<iota\><rsub|n><around*|(|n|)>>|)>=L<around*|(|x:x<rsub|\<sigma\><around*|(|\<iota\><rsub|n><around*|(|1|)>|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|\<iota\><rsub|n><around*|(|n|)>|)>>|)>=L<around*|(|x:x<rsub|\<sigma\><around*|(|n|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|1|)>>|)>=\<cal-P\><rsub|n+1><around*|(|x,x<rsub|\<sigma\><around*|(|n|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|1|)>>|)>=<around*|(|S<around*|(|\<cal-P\><rsub|n+1><around*|(|L|)>|)>|)><around*|(|x<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,x<rsub|\<sigma\><around*|(|n|)>>,x|)>=H<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>>

      <item>If <math|x<rsub|1>,\<ldots\>,x<rsub|n+1>\<in\>X> then
      <math|H<around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x<rsub|n+1>|)>=L<around*|(|x<rsub|n+1>:x<rsub|n>:x<rsub|n-1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|n>:x<rsub|n+1>:\<ldots\>:x<rsub|1>|)>=H<around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>,x<rsub|n>|)>>
    </enumerate>

    So we can use the previous lemma on <math|H<around*|(|L|)>> to find that
    given <math|\<tau\>\<in\>P<rsub|n+1>> then
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=H<around*|(|L|)><around*|(|x<rsub|n+1>,\<ldots\>,x<rsub|1>|)>\<equallim\><rsub|<text|<reference|in
    permutation>>>H<around*|(|L|)><around*|(|x<rsub|\<iota\><rsub|n+1><around*|(|1|)>>,\<ldots\>,x<rsub|\<iota\><rsub|n+1><around*|(|n+1|)>><rsub|>|)>\<equallim\><rsub|previous
    lemma>H<around*|(|L|)><around*|(|x<rsub|\<tau\><around*|(|\<iota\><rsub|n+1><around*|(|1|)>|)>>,\<ldots\>,x<rsub|\<tau\><around*|(|\<iota\><rsub|n+1><around*|(|n+1|)>|)>>|)>=H<around*|(|L|)><around*|(|x<rsub|\<tau\><around*|(|n+1|)>>,\<ldots\>,x<rsub|\<tau\><around*|(|1|)>>|)>=L<around*|(|x<rsub|\<tau\><around*|(|1|)>>:\<ldots\>:x<rsub|\<tau\><around*|(|n+1|)>>|)>>
  </proof>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    normed spaces and <math|m\<in\><around*|{|1,\<ldots\>,n|}>> then if
    <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|m>|)>\<in\>X<rsup|m>> we
    define <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>>:L<rsup|m><around*|(|X;Y|)>\<rightarrow\>Y>
    by <math|L\<rightarrow\>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>><around*|(|L|)>=L<around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>>
    then <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>>> is linear and
    continuous. So <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>>> is
    <math|C<rsup|\<infty\>>> and <math|De<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>><around*|(|L|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>>>
    and if <math|n\<geqslant\>2 > then <math|D<rsup|n>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>><around*|(|L|)>=0>
    (the constant mapping to 0)
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|Linearity>Then <math|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|m>><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>\<equallim\><rsub|<text|<reference|sum,product
      on (x1:..:xn)>>>\<alpha\>\<cdot\>L<rsub|1><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>=\<alpha\>\<cdot\>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|L<rsub|2>|)>>

      <item><dueto|Continuity>Then <math|<around*|\<\|\|\>|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|L|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|<text|<reference|norm
      of L(x1:..:xn}>>><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-2|}>><around*|\<\|\|\>|v<rsub|i>|\<\|\|\>><rsub|X>>
      proving that <math|<around*|\<\|\|\>|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>>|\<\|\|\>><rsub|>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>
      and thus continuity.\ 
    </enumerate>

    The rest of the theorem follows from <reference|linear continuous
    mappings are C^infinity>
  </proof>

  Before we can prove the symmetry of the \ <math|n>-the differential we must
  first prove the following lemma's

  <\lemma>
    <label|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)>Let
    <math|n\<in\>\<bbb-N\>\<vdash\>n\<gtr\>2>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open,
    <math|v<rsub|1>,\<ldots\>,v<rsub|n-2>\<in\>X<rsup|n-2>>, a
    <math|f:U\<rightarrow\>Y> that is <math|C<rsup|n>> and
    <math|g:U\<rightarrow\>Y> defined by <math|x\<rightarrow\>g<around*|(|x|)>=D<rsup|n-2>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>v<rsub|n-2>|)>>
    then <math|g> is <math|C<rsup|2>> and
    <math|D<rsup|2>g<around*|(|x|)><around*|(|u|)><around*|(|v|)>=D<rsup|n>f<around*|(|x|)><around*|(|v:u:v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>>
  </lemma>

  <\proof>
    As <math|g<around*|(|x|)>=D<rsup|n-2>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-2>f<around*|(|x|)>|)>=<around*|(|e<rsub|v<rsub|1>,\<ldots\>v<rsub|n-2>>\<circ\>D<rsup|n-2>f|)><around*|(|x|)>>
    proving that

    <\equation>
      <label|eq 12.53>g=<around*|(|e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-2>f|)>
    </equation>

    so that by the previous lemma and the Chain Rule we have that <math|g> is
    <math|C<rsup|2>> and <math|Dg<around*|(|x|)>=De<rsub|v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|D<rsup|n-2>f<around*|(|x|)>|)>\<circ\>D<around*|(|<around*|(|D<rsup|n-2>|)>f|)><around*|(|x|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n-1>f<around*|(|x|)>>
    so that if <math|u\<in\>X> we have <math|Dg<around*|(|x|)><around*|(|u|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)><around*|(|u|)>|)>=<around*|(|D<rsup|n-1>f<around*|(|x|)><around*|(|u|)>|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>D<rsup|n-1>f<around*|(|x|)><around*|(|u:v<rsub|1>:\<ldots\>:v<rsub|n-2>|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>>
    giving\ 

    <\equation>
      <label|eq 12.54>if u\<in\>X then Dg<around*|(|x|)><around*|(|u|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>
    </equation>

    Define now <math|Dg<around*|(|\<ast\>|)><around*|(|u|)>:U\<rightarrow\>Y>
    by <math|x\<rightarrow\><around*|(|Dg<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>=Dg<around*|(|x|)><around*|(|u|)>>
    then we have by <reference|eq 12.54> that
    <math|Dg<around*|(|\<ast\>|)><around*|(|u|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n>>\<circ\>D<rsup|n-1>f>
    so that by the chain rule we have <math|D<around*|(|Dg<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>=De<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|n-1>f|)><around*|(|x|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n>>\<circ\>D<rsup|n>f<around*|(|x|)>>
    giving\ 

    <\equation>
      <label|eq 12.55>D<around*|(|Dg<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>>\<circ\>D<rsup|n>f<around*|(|x|)>
    </equation>

    Using <reference|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)> we have
    given <math|v\<in\>X> that <math|D<around*|(|Dg<around*|(|\<ast\>|)><around*|(|u|)>|)><around*|(|x|)><around*|(|v|)>=D<rsup|2>g<around*|(|x|)><around*|(|u|)><around*|(|v|)>>
    so that using <reference|eq 12.55> we have
    <math|D<rsup|2>g<around*|(|x|)><around*|(|u|)><around*|(|v|)>=e<rsub|u,v<rsub|1>,\<ldots\>,v<rsub|n>><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)>=<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|v|)>|)><around*|(|u,v<rsub|1>,\<ldots\>,v<rsub|n-2>|)>\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>D<rsup|n>f<around*|(|x|)><around*|(|v:u:v<rsub|1>,\<ldots\>,v<rsub|n-2>|)>>
  </proof>

  <\lemma>
    <label|Dh(x)(u)=D^nf(x)(u:v1:..:vn-1)>Let
    <math|n\<in\>\<bbb-N\>\<vdash\>n\<gtr\>1>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> open,
    <math|v<rsub|1>,\<ldots\>,v<rsub|n-1>\<in\>X<rsup|n-1>>, a
    <math|f:U\<rightarrow\>Y> that is <math|C<rsup|n>> and
    <math|h:U\<rightarrow\>Y> defined by <math|x\<rightarrow\>h<around*|(|x|)>=D<rsup|n-1>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>v<rsub|n-1><rsub|>|)>>
    then <math|h> is <math|C<rsup|1>> and
    <math|Dh<around*|(|x|)><around*|(|u|)>=D<rsup|n>f<around*|(|x|)><around*|(|u:v<rsub|1>:\<ldots\>:v<rsub|n-1>|)>>
  </lemma>

  <\proof>
    As <math|h<around*|(|x|)>=D<rsup|n-1>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-1>|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>>
    we have that <math|h=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n-1>f>
    so using the Chain Rule we have that <math|h> is <math|C<rsup|1>> and
    <math|Dh<around*|(|x|)>=De<rsub|v<rsub|1>,\<ldots\>v<rsub|n-1>><around*|(|D<rsup|n-1>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|n-1>f<around*|(|x|)>|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>>\<circ\>D<rsup|n>f<around*|(|x|)>>
    giving that <math|Dh<around*|(|x|)><around*|(|u|)>=e<rsub|v<rsub|1>,\<ldots\>,v<rsub|n-1>><around*|(|D<rsup|n>f<around*|(|x|)><around*|(|u|)>|)>=<around*|(|D<rsup|n>f<around*|(|x|)><around*|(|u|)>|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n-1>|)>\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>D<rsup|n>f<around*|(|x|)><around*|(|u:v<rsub|1>:\<ldots\>:v<rsub|n-1>|)>>.
  </proof>

  Now we are finally ready to prove the symmetric nature of the differential

  <\theorem>
    <label|the n-th differential is symmetric>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U\<subseteq\>X> open and <math|f:U\<rightarrow\>Y>
    is <math|C<rsup|n>> then <math|\<forall\>x\<in\>U>,
    <math|\<sigma\>\<in\>P<rsub|n>> and <math|v=<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n>|)>\<in\>X>
    we have <math|D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|n|)>>|)>=D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>>
  </theorem>

  <\proof>
    We have to consider the following cases for <math|n\<in\>\<bbb-N\>>

    <\enumerate>
      <item><dueto|<math|n=1>>As <math|P<rsub|1>=<around*|{|1<rsub|<around*|{|1|}>>|}>>
      the proof is trivial.

      <item><dueto|<math|n=2>>Then the theorem follows from <reference|C^2
      differential is symmetric>.

      <item><dueto|<math|n\<gtr\>2>>We use induction to prove the theorem so
      let <math|S=<around*|{|m\<in\><around*|{|2,\<ldots\>,|}>\|if
      m\<leqslant\>n then \<forall\>\<sigma\>\<in\>P<rsub|m> \<nocomma\> and
      \<forall\><around*|(|v<rsub|1>,\<ldots\>,v<rsub|m>|)>\<in\>X<rsup|m> we
      have D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|m|)>>|)>=D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>|}>>
      then we have:

      <\enumerate>
        <item>If <math|m=2> then using (<reference|C^2 differential is
        symmetric>) we have that <math|D<rsup|2>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|2|)>>|)>=D<rsup|2>f<around*|(|x|)><around*|(|v<rsub|1>,v<rsub|2>|)>>
        proving that <math|2\<in\>S>.

        <item>If <math|m\<in\>S> then if <math|m+1\<leqslant\>n> we have that
        <math|f> is <math|C<rsup|m+1>>, given
        <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|m>|)>\<in\>X<rsup|m>,u,v\<in\>X>
        define <math|g<rsub|v<rsub|1>,\<ldots\>,v<around*|(|m+1|)><rsub|-2>>:U\<rightarrow\>Y>
        by <math|x\<rightarrow\>D<rsup|<around*|(|m+1|)>-2><around*|(|x|)><around*|(|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>|)>>
        we have by <reference|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)> that
        <math|g<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>>> is
        <math|C<rsup|2>> and <math|D<rsup|m+1>f<around*|(|x|)><around*|(|v:u:v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>|)>=Dg<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>><around*|(|x|)><around*|(|u|)><around*|(|v|)>\<equallim\><rsub|<text|<reference|C^2
        differential is symmetric>>>Dg<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>><around*|(|x|)><around*|(|v|)><around*|(|u|)>=D<rsup|m+1>f<around*|(|x|)><around*|(|u:v:v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-2>|)>>
        giving

        <\equation>
          <label|eq 12.56>D<rsup|<around*|(|m+1|)>>f<around*|(|x|)><around*|(|v:u:v<rsub|1>:\<ldots\>:v<rsub|<around*|(|m+1|)>-2>|)>=D<rsup|<around*|(|m+1|)>>f<around*|(|x|)><around*|(|u:v:v<rsub|1>:\<ldots\>:v<rsub|<around*|(|m+1|)>-2>|)>
        </equation>

        \ Define now <math|h<rsub|v<rsub|1>,\<ldots\>v<rsub|<around*|(|m+1|)>-1>>:U\<rightarrow\>Y>
        defined by <math|x\<rightarrow\>h<rsub|v<rsub|<rsub|1>>,\<ldots\>,v<rsub|<around*|(|m+1|)>-1>><around*|(|x|)>=D<rsup|<around*|(|m+1|)>-1>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|<around*|(|m+1|)>-1>|)>=D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>v<rsub|m>|)>>
        and given <math|\<sigma\>\<in\>P<rsub|<around*|(|m+1|)>-1>=P<rsub|m>>
        define <math|h<rsub|v<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>>:U\<rightarrow\>Y>
        defined by <math|x\<rightarrow\>h<rsub|v<rsub|<rsub|\<sigma\><around*|(|1|)>>>,\<ldots\>,v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>><around*|(|x|)>=D<rsup|<around*|(|m+1|)>-1>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>|)>=D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>>
        then as <math|m\<in\>S> we have <math|\<forall\>x\<in\>U> that
        <math|h<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-1>><around*|(|x|)>=D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|m>|)>=D<rsup|m>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|m|)>>|)>=h<rsub|v<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>><around*|(|x|)>>
        proving that <math|h<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-1>>=h<rsub|v<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>>>
        then differentiating and using <reference|Dh(x)(u)=D^nf(x)(u:v1:..:vn-1)>
        we have <math|D<rsup|m+1>f<around*|(|x|)><around*|(|u:v<rsub|1>,\<ldots\>,v<rsub|m>|)>=Dh<rsub|v<rsub|1>,\<ldots\>,v<rsub|<around*|(|m+1|)>-1>><around*|(|x|)><around*|(|u|)>=Dh<rsub|v<rsub|\<sigma\><around*|(|1|)>>,\<ldots\>,v<rsub|\<sigma\><around*|(|<around*|(|m+1|)>-1|)>>><around*|(|x|)>=D<rsup|m+1>f<around*|(|x|)><around*|(|u:v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|m|)>>|)>>
        giving\ 

        <\equation>
          <label|eq 12.57>\<forall\>\<sigma\>\<in\>P<rsub|m> we have
          D<rsup|m+1>f<around*|(|x|)><around*|(|u:v<rsub|1>:\<ldots\>:v<rsub|m>|)>=D<rsup|m+1>f<around*|(|x|)><around*|(|u:v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:v<rsub|\<sigma\><around*|(|m|)>>|)>
        </equation>

        Using then <reference|symmetry of L^n+t(X;Y) based on permutations
        and transposition>, <reference|eq 12.56> and <reference|eq 12.57> we
        have then <math|\<forall\>\<sigma\>\<in\>P<rsub|n+1>>,
        <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n+1>\<in\>X> we have
        <math|D<rsup|<around*|(|m+1|)>>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n+1>|)>=D<rsup|<around*|(|m+1|)>>f<around*|(|x|)><around*|(|v<rsub|\<sigma\><around*|(|1|)>>:\<ldots\>:x<rsub|\<sigma\><around*|(|n+1|)>>|)>>
        proving that <math|m+1\<in\>S>
      </enumerate>

      Using induction we have then that <math|S=<around*|{|2,\<ldots\>|}>>
      proving the theorem in the case <math|n\<gtr\>2>
    </enumerate>
  </proof>

  As a application of the above theorem let's prove the following theorem

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> be the real
    (complex space) equipped with the canonical norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|U\<subseteq\>\<bbb-K\>> open,
    <math|n\<in\>\<bbb-N\>> and <math|f:U\<rightarrow\>Y> a function then
    <math|f> is <math|C<rsup|n>> if and only if the <math|n>-the derivate
    <math|f<rsup|n>> (see <reference|n-th derivative>) exists and is
    continuous. Furthermore if <math|x\<in\>U,v<rsub|1>,\<ldots\>,v<rsub|n>\<in\>\<bbb-K\>>
    then <math|D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>=f<rsup|n><around*|(|x|)>>
    and <math|D<rsup|n>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=f<rsup|n><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>v<rsub|i>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|n\<in\>\<bbb-N\>\|f
    is C<rsup|n> at x\<in\>U \<Leftrightarrow\>f<rsup|n> exists and is
    continuous further D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>=f<rsup|<around*|(|n|)>>
    and Df<rsup|n><around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=f<rsup|n><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>v<rsub|i>|}>>
    then we have\ 

    <\enumerate>
      <item>If <math|n=1> then by <reference|C1 of real or complex function>
      we have that <math|f> is <math|C<rsup|1>> if and only if
      <math|f<rsup|1>=f<rprime|'>> exists on <math|U> and is continuous.
      Further <math|f<rprime|'><around*|(|x|)>=Df<around*|(|x|)><around*|(|1|)>=D<rsup|1>f<around*|(|x|)><around*|(|1|)><rsup|>>
      from which it follows that <math|D<rsup|1>f<around*|(|x|)><around*|(|v<rsub|1>|)>=v<rsub|1>\<cdot\>D<rsup|1>f<around*|(|x|)><around*|(|1|)>=f<rsup|<rprime|'>><around*|(|x|)>\<cdot\>v<rsub|1>=f<rsup|1><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>v<rsub|i>>
      proving that <math|1\<in\>S>

      <item>If <math|n\<in\>S> take then <math|n+1> then we have\ 

      <\enumerate>
        <item><dueto|<math|f is C<rsup|n+1>>>then given <math|x\<in\>U> we
        have <math|D<rsup|n+1>f<around*|(|x|)>=D<around*|(|D<rsup|n>f<around*|(|x|)>|)>>
        so given <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|<around*|\||h|\|>\<less\>\<delta\>> and <math|h\<in\>U<rsub|x>>
        then <math|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)>\<cdot\><around*|(|h|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>>
        so that by <reference|norm of L(x1:..:xn}>
        <math|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)>\<cdot\><around*|(|h|)>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>><around*|\||1|\|>=<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)>\<cdot\><around*|(|h|)>|\<\|\|\>>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>>
        giving\ 

        <\equation>
          <label|eq 12.58><around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        \ As <math|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>\<equallim\><rsub|<text|<reference|sum,product
        on (x1:..:xn)>>>D<rsup|n>f<around*|(|x+h|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)><around*|(|1:\<ldots\>:1|)>\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>D<rsup|n>f<around*|(|x+h|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h:1:\<ldots\>:1|)>\<equallim\><rsub|n\<in\>S>f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h:1:\<ldots\>:1|)>\<equallim\><rsub|<text|<reference|the
        n-th differential is symmetric>>>f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1:h|)>=f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)><around*|(|h|)>\<equallim\><rsub|linearity
        of differential>=f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)><around*|(|1|)>=f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<rsup|><around*|(|x|)><around*|(|1:\<ldots\>:1|)>>
        giving\ 

        <\equation>
          <label|eq 12.59>f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>=<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>
        </equation>

        So if <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> then
        \ <math|<around*|\<\|\|\>|<frac|f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>|h>-D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-h\<cdot\>D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>|<around*|\||h|\|>>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<text|<reference|eq
        12.59>>> <text| ><frac|<around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|x|)><around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>|<around*|\||h|\|>>\<leqslant\><rsub|<text|<reference|eq
        12.58>>><frac|\<varepsilon\>\<cdot\><around*|\||h|\|>|<around*|\||h|\|>>=\<varepsilon\>>
        proving that <math|f<rsup|n+1><around*|(|x|)>=f<rprime|'><around*|(|f<rsup|n>|)><around*|(|x|)>>
        exists and is equal to <math|D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>>
        or\ 

        <\equation>
          <label|eq 12.60>f<rsup|n+1><around*|(|x|)>=D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>
        </equation>

        \ To prove continuity note that <math|D<rsup|n+1>f> is continuous so
        if <math|\<varepsilon\>\<gtr\>0> then there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|<around*|\||x-y|\|>\<less\>\<delta\>> and <math|y\<in\>U> then
        <math|<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<less\>\<varepsilon\>>,
        as <math|<around*|\<\|\|\>|f<rsup|n+1><around*|(|x|)>-f<rsup|n+1><around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n+1>f<around*|(|y|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|D<rsup|n+1>f<around*|(|x|)>-D<rsup|n+1>f<around*|(|y|)>|\<\|\|\>><rsub|L<rsup|n+1><around*|(|X;Y|)>>\<less\>\<varepsilon\>>
        proving continuity.\ 

        <item><dueto|<math|f<rsup|n+1> exists and is continuous>>Then
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|0\<less\><around*|\||h|\|>\<less\>\<delta\>> and
        <math|h\<in\>U<rsub|x>> we have that
        <math|<around*|\<\|\|\>|<frac|f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>|h>-f<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
        giving after multiplying both sides by <math|h>\ 

        <\equation>
          <label|eq 12.61><around*|\<\|\|\>|f<rsup|n><around*|(|x+h|)>-f<rsup|n><around*|(|x|)>-h\<cdot\>f<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        \ Now as <math|n\<in\>S> we have that
        <math|f<rsup|n><around*|(|x+h|)>=D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>>
        and <math|f<rsup|n><around*|(|x|)>=D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>>
        we have

        <\equation>
          <label|eq 12.62><around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)><around*|(|1:\<ldots\>:1|)>-D<rsup|n>f<around*|(|x|)><around*|(|1:\<ldots\>:1|)>-h\<cdot\>f<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Define now the multi linear function
        <math|k:L<around*|(|\<bbb-K\><rsup|n+1>,Y|)>\<rightarrow\>Y> defined
        by <math|<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>\<rightarrow\>k<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>=f<rsup|n+1><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><rsup|><around*|\||v<rsub|i>|\|>>
        and take then <math|g=\<cal-P\><rsub|n+1><rsup|-1><around*|(|k|)>\<in\>L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>>
        so that <math|g<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n+1>|)>=k<around*|(|v<rsub|1>,\<ldots\>,v<rsub|n+1>|)>=f<rsup|n+1><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i>>.
        This gives that <math|g<around*|(|h|)><around*|(|1:\<ldots\>:1|)>\<equallim\><rsub|<text|<reference|L(x1)(x2:..:xn)>>>g<around*|(|h\<cdot\>1:\<ldots\>:1|)>=f<rsup|n+1><around*|(|x|)>\<cdot\>h>
        which together with <reference|eq 12.62> gives then\ 

        <\equation>
          <label|eq 12.63><around*|\<\|\|\>|<around*|(|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-g<around*|(|h|)>|)><around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>\<cdot\><around*|\||h|\|>
        </equation>

        Using <reference|upper limit of L in L^n(K;Y)> and <reference|eq
        12.63> we have then that <math|<around*|\<\|\|\>|D<rsup|n>f<around*|(|x+h|)>-D<rsup|n>f<around*|(|x|)>-g<around*|(|h|)>|\<\|\|\>>\<less\>\<varepsilon\><rsub|>>
        proving that <math|D<rsup|n>f> is differentiable at <math|x> with
        <math|D<rsup|><around*|(|D<rsup|n>f|)><around*|(|x|)>=g\<Rightarrow\>D<rsup|n+1>f<around*|(|x|)>=g>
        where <math|D<rsup|n+1>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n+1>|)>=g<around*|(|v<rsub|1>:\<ldots\>:v<rsub|n+1>|)>=f<rsup|n+1><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i>>
        proving that <math|f> is <math|c<rsup|n+1>> and
        <math|D<rsup|n+1>f<around*|(|x|)><around*|(|v<rsub|1>:\<ldots\>:v<rsub|n>|)>=f<rsup|n+1><around*|(|x|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>v<rsub|i>>.
      </enumerate>

      So by (a) and (b) we have <math|n+1\<in\>S>.
    </enumerate>

    By mathematical induction we have then <math|S=\<bbb-N\>> proving our
    theorem.
  </proof>

  <section|Partial Differentiation>

  First we must extend the concept of <math|L<rsup|n><around*|(|X;Y|)>> as
  follows\ 

  \;

  <\theorem>
    <label|(01,..,*,..,On) is C@@>Given a finite family
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|n\<in\>\<bbb-N\>> of normed vector spaces then given
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>X<rsub|i>=X>
    then <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|j>\<rightarrow\>X<rsub|i>>
    (see <reference|(x1,..,xi-1,*,xi+1,..,xn)>) is <math|C<rsup|\<infty\>>>.\ 
  </theorem>

  <\proof>
    As <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,*\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)><around*|(|t|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,t,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|t|)>>
    so that <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,*\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=C<rsub|X,<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,0,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>><rsub|>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
    a sum of a constant function (<math|C<rsup|\<infty\>>>) and a linear
    function (see <reference|linearity of (01,...*,...0n)>)
    (<math|C<rsup|\<infty\>>>) and is thus <math|C<rsup|\<infty\>>>.
  </proof>

  We define then partial derivates as follows\ 

  <\definition>
    <label|partial differential on U>Let <math|n\<in\>\<bbb-N\>>,
    <math|m\<in\>\<bbb-N\>> <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> (see
    <reference|norm of finite product of normed spaces>),
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>Y> ,
    <math|<around*|(|i<rsub|1>,\<ldots\>,i<rsub|m>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|m>>
    then we say that <math|f> has a partial differential
    \ <math|D<rsup|m><rsub|i<rsub|!>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>L<rsup|m><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|m>>;Y|)>>
    on <math|U> iff

    <\enumerate>
      <item>If <math|m=1> then <math|D<rsup|1><rsub|i<rsub|1>\<ldots\>,i<rsub|i>>f>
      is a partial differential of <math|f> if
      <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U>
      there exists a <math|i>-partial differential differential
      <math|D<rsub|i<rsub|1>>f<around*|(|x|)>\<in\>L<around*|(|X<rsub|i>,Y|)>=L<rsup|1><around*|(|X<rsub|i>;Y|)>>
      (see <reference|partial differential definition>). We define then
      <math|D<rsup|1><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>f:U\<rightarrow\>L<rsup|1><around*|(|X<rsub|i>;Y|)>>
      by <math|x\<rightarrow\>D<rsub|i<rsub|1>,\<ldots\>,i<rsub|1>><rsup|1>f<around*|(|x|)>=D<rsub|i<rsub|1>>f<around*|(|x|)>>

      <item>If <math|m\<gtr\>1> then <math|f> a has a partial differential
      <math|D<rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>L<rsup|m><rsup|><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|m>>;Y|)>>
      iff\ 

      <\enumerate>
        <item><math|f> has a partial differential
        <math|D<rsup|m-1><rsub|i<rsub|2>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>L<rsup|m-1><around*|(|X<rsub|i<rsub|2>>,\<ldots\>,X<rsub|i<rsub|m>>;Y|)>>
        on <math|U>

        <item><math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U>
        <math|D<rsup|m-1><rsub|i<rsub|2>,\<ldots\>,i<rsub|m>>f> has a
        i-partial differential <math|D<rsub|i<rsub|1>><around*|(|D<rsup|m-1><rsub|i<rsub|2>,\<ldots\>,i<rsub|m>>f|)><around*|(|x|)>>.
        We define then <math|D<rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>L<rsup|m><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|m>>;Y|)>=L<around*|(|X<rsub|i<rsub|1>,>L<around*|(|X<rsub|i<rsub|2>>,\<ldots\>,X<rsub|i<rsub|m>>;Y|)>|)>>
        by <math|x\<rightarrow\>D<rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f<around*|(|x|)>=D<rsup|1><rsub|i<rsub|1>><around*|(|D<rsup|m-1><rsub|i<rsub|2>,\<ldots\>,i<rsub|m>>f|)><around*|(|x|)>>
      </enumerate>
    </enumerate>
  </definition>

  <\notation>
    If <math|m=1> then we write <math|D<rsup|1><rsub|i,\<ldots\>,i>f> as
    <math|D<rsup|1><rsub|i>f>
  </notation>

  The next theorem shows that the partial differential on <math|U> exists if
  <math|f> is differentiable on <math|U>

  <\theorem>
    <label|differentiability implies partial differentiability>Let
    <math|n\<in\>\<bbb-N\>>, <math|m\<in\>\<bbb-N\>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> (see
    <reference|norm of finite product of normed spaces>),
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>Y> a 1 times
    differentiable function then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|D<rsup|1><rsub|i>f:U\<rightarrow\>L<rsup|1><around*|(|X<rsub|i>;Y|)>=L<around*|(|X<rsub|i>,Y|)>>
    exists [and is continuous if <math|f> is <math|C<rsup|1>>], further
    <math|\<forall\>x\<in\>U> we have <math|D<rsup|1><rsub|i>f<around*|(|x|)>=D<rsup|1>f<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
    and <math|D<rsup|1>f<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
  </theorem>

  <\proof>
    As <math|f> is 1-times differentiable on <math|U> (or <math|C<rsup|1>>]
    we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>,x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U>
    by the Chain Rule (see <reference|generalized chain rule>) and
    <reference|(01,..,*,..,On) is C@@> that
    <math|f\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>>
    is <math|1>-times differentiable (or <math|C<rsup|1>>) on <math|U>. By
    <reference|differentiability on products of metric spaces> we have then
    that <math|D<rsub|i>f<around*|(|x|)>=D<around*|(|f\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|x<rsub|i>|)>=Df<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
    exists so that <math|D<rsup|1><rsub|i>f:U\<rightarrow\>L<around*|(|X<rsub|i>,Y|)>>
    is defined (and exists) by <math|x\<rightarrow\>D<rsup|1><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)>=Df<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>=D<rsup|1>f<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)>>
    and also that <math|D<rsup|1><rsub|i>f> is continuous if <math|f> is
    <math|C<rsup|1>> [as <math|D<rsup|1><rsub|i>f=D<around*|(|f\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>*,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>>].
    Also by <reference|differentiability on products of metric spaces> we
    have that <math|D<rsup|1>f<around*|(|x|)>=Df<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>f<around*|(|x<rsub|i>|)>\<circ\>\<pi\><rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>
  </proof>

  The next theorem represents a variation on the chain rule

  <\theorem>
    <label|chain rules of partial differentiable functions>Let
    <math|n\<in\>\<bbb-N\>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> (see
    <reference|norm of finite product of normed spaces>)<math|>,
    <math|U\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    open and <math|g:U\<rightarrow\>Y> a differentiable function on <math|U>,
    <math|g<around*|(|U|)>\<subseteq\>V> a open set in <math|Y>,
    <math|f:U\<rightarrow\>Z> a differentiable function on <math|V> (so that
    <math|f\<circ\>g> is differentiable and has partial differentials) then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> and
    <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U> we
    have that <math|D<rsub|i><around*|(|f\<circ\>g|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=Df<around*|(|g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>\<circ\>D<rsub|i>g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
  </theorem>

  <\proof>
    Using the definition of a partial differential we have
    <math|D<rsub|i><around*|(|f\<circ\>g|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=D<around*|(|<around*|(|f\<circ\>g|)>\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|x<rsub|i>|)>=D<around*|(|f\<circ\><around*|(|g\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>|)><around*|(|x<rsub|i>|)>\<equallim\><rsub|Chain
    rule>D f<around*|(|<around*|(|g\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|x<rsub|i>|)>|)>\<circ\>D<around*|(|g\<circ\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<ast\>,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|x<rsub|i>|)>=D
    f<around*|(|g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>\<circ\>D<rsub|i>g<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
  </proof>

  The next theorem shows that we can have the reverse of the above theorem if
  the partial differentials are continuous.

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>>, <math|m\<in\>\<bbb-N\>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space over <math|\<bbb-R\>>,
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> (see
    <reference|norm of finite product of normed spaces>),
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>Y> a function
    so that <math|\<forall\>i\<in\>D<rsup|1><rsub|i>f> exists on <math|U> and
    is continuous then <math|f> is <math|C<rsup|1>>.
  </theorem>

  <\proof>
    Take <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>U> then as
    <math|D<rsup|1>f<rsub|i>> is continuous on <math|U> we have\ 

    <\equation>
      <label|eq 12.64-0>\<forall\>\<varepsilon\>\<gtr\>0\<vDash\>\<exists\>\<delta\><rsub|\<varepsilon\>,i>
      with if y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>,i>|)>\<subseteq\>U
      then <around*|\<\|\|\>|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsub|i><rsup|1>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<less\>\<varepsilon\>
    </equation>

    by taking in the above <math|\<delta\><rsub|\<varepsilon\>>=min<around*|(|\<delta\><rsub|\<varepsilon\>,1>,\<ldots\>,\<delta\><rsub|\<varepsilon\>,i>|)>>
    we have\ 

    <\equation>
      <label|eq 12.65-0>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> and
      \<forall\>\<varepsilon\>\<gtr\>0\<vDash\>\<exists\>\<delta\><rsub|\<varepsilon\>>
      with if y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>>|)>\<subseteq\>U
      then <around*|\<\|\|\>|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsub|i><rsup|1>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<less\>\<varepsilon\>
    </equation>

    Take now <math|h=<around*|(|h<rsub|1>,\<ldots\>,h<rsub|n>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\><rsub|\<varepsilon\>>|)>>
    then we have

    <\equation>
      <label|eq 12.66-0><around*|\<\|\|\>|h|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>
    </equation>

    Using <reference|sum of (01,...,*,...0n)> we have that

    <\equation>
      <label|eq 12.67-0>x+h=x+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|i>|)>
    </equation>

    If we define now <math|z<rsub|0>=x,z<rsub|j>=x+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,j|}>><around*|(|0<rsub|i>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|i>|)>
    if j\<gtr\>0> then we have that <math|<around*|\<\|\|\>|z<rsub|j>-x|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,j|}>><around*|(|0<rsub|i>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><rsub|>\<cdot\><around*|(|h<rsub|i>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|j-1>,h<rsub|j>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|h|\<\|\|\>>>
    (see <reference|eq 12.66-0>) so that\ 

    <\equation>
      <label|eq 12.68-0>z<rsub|j>=<choice|<tformat|<table|<row|<cell|x if
      j=0>>|<row|<cell|x+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,j|}>><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|i>|)>
      if j\<neq\>0>>>>>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>>|)>\<subseteq\>U
      if <around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|\<varepsilon\>>
    </equation>

    Next we have that <math|f<around*|(|x+h|)>-f<around*|(|x|)>\<equallim\><rsub|<text|<reference|eq
    12.67-0>>>f<around*|(|z<rsub|n>|)>-f<around*|(|z<rsub|0>|)>\<equallim\><rsub|<text|<reference|sum
    of differences>>><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j>|)>-f<around*|(|z<rsub|j-1>|)>|)>>

    <\equation>
      <label|eq 12.69-0>f<around*|(|x+h|)>-f<around*|(|x|)>\<equallim\><rsub|<text|<reference|sum
      of differences>>><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j>|)>-f<around*|(|z<rsub|j-1>|)>|)>
    </equation>

    where each of the terms are well defined by <reference|eq 12.68-0> on
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>>|)>>.
    If we define now\ 

    <\equation*>
      R<around*|(|h|)>=f<around*|(|x+h|)>-f<around*|(|x|)>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i><around*|(|h|)>
    </equation*>

    then we have by <reference|eq 12.69-0> that
    <math|R<around*|(|h|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j>|)>-f<around*|(|z<rsub|j-1>|)>|)>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)><around*|(|h<rsub|i>|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)>\<cdot\>h<rsub|j>|)>>
    giving\ 

    <\equation>
      <label|eq 12.70-0>R<around*|(|h|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)>\<cdot\>h<rsub|j>|)>
    </equation>

    Now as <math|z<rsub|1>=x+<around*|(|\<ast\>,0<rsub|2>,\<ldots\>,0<rsub|n>|)>>
    and if <math|j\<neq\>0> we have that <math|z<rsub|j>=x+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,,j-1|}>><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|i>|)>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|j>|)>=z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|j>|)>>
    giving together with <reference|eq 12.70-0> that\ 

    <\equation>
      <label|eq 12.71-0>R<around*|(|h|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|j>|)>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)><around*|(|h|)>|)>
    </equation>

    Define now <math|\<varphi\><rsub|j>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|j>><around*|(|0,\<delta\><rsub|\<varepsilon\>>|)>\<rightarrow\>Y>
    by <math|k\<rightarrow\>\<varphi\><rsub|j><around*|(|k|)>=f<around*|(|z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|k|)>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)><around*|(|k|)>>
    [which is well defined as <math|z<rsub|j-1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>>|)>>
    by <reference|eq 12.68-0>, and <math|<around*|\<\|\|\>|z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|k|)>-x|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,j-1|}>><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i-1>,\<ast\>,0<rsub|i+1>,\<ldots\>,0<rsub|n>|)><around*|(|h<rsub|i>|)>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|k|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|j-1>,k,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|j-1>,k,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)>|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<delta\><rsub|\<varepsilon\>>>
    so that <math|z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|k|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|\<varepsilon\>>|)>>].
    Note also that <math|\<varphi\><rsub|j><around*|(|0|)>=f<around*|(|z<rsub|j-1>+<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j-1>,\<ast\>,0<rsub|j+1>,\<ldots\>,0<rsub|n>|)><around*|(|0|)>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)><around*|(|0|)>=0>.
    We have then that\ 

    <\equation>
      <label|eq 12.72-0>R<around*|(|h|)>=<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<varphi\><rsub|j><around*|(|h<rsub|j>|)>
      ,\<varphi\><rsub|j><around*|(|0|)>=0
    </equation>

    Further <math|\<varphi\><rsub|j><around*|(|k|)>=f<around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,k,<around*|(|z<rsub|j-1>|)><rsub|j+1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|n>|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x<rsub|>|)><around*|(|k|)>=<around*|(|f\<circ\><around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,\<ast\>,<around*|(|z<rsub|j-1>|)><rsub|j+1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|n>|)>|)><around*|(|k|)>-f<around*|(|z<rsub|j-1>|)>-D<rsup|1><rsub|j>f<around*|(|x|)><around*|(|k|)>>
    which is differentiable as <math|<around*|(|f\<circ\><around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,\<ast\>,<around*|(|z<rsub|j-1>|)><rsub|j+1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|n>|)>|)>>
    is <math|C<rsup|1>> (see <reference|partial differential definition> and
    the fact that by the assumption we have that there is a <math|j>-partial
    differential on <math|U> exists and is continuous on <math|U>), that a
    constant is <math|C<rsup|\<infty\>>>, that the continuous linear function
    <math|D<rsup|1><rsub|j>f<around*|(|x|)>> is <math|C<rsup|\<infty\>>> and
    that the sum of <math|C<rsup|1>> functions is <math|C<rsup|1>>. Further
    <math|D\<varphi\><rsub|j><around*|(|k|)>=D<around*|(|f\<circ\><around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,\<ast\>,<around*|(|z<rsub|j-1>|)><rsub|j+1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|n>|)>|)><around*|(|k|)>-D<rsup|1><rsub|j>f<around*|(|x|)>\<equallim\><rsub|<text|<reference|partial
    differential definition>>>D<rsub|j>f<around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,k,<around*|(|z<rsub|j-1>|)><rsub|j-1>,\<ldots\>,<around*|(|x<rsub|j-1>|)><rsub|n>|)>-D<rsub|j>f<around*|(|x|)>>.
    Using <reference|eq 12.65-0> we have then that
    <math|<around*|\<\|\|\>|D\<varphi\><rsub|j><around*|(|k|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|j>,Y|)>>=<around*|\<\|\|\>|D<rsub|j>f<around*|(|<around*|(|z<rsub|j-1>|)><rsub|1>,\<ldots\>,<around*|(|z<rsub|j-1>|)><rsub|j-1>,k,<around*|(|z<rsub|j-1>|)><rsub|j-1>,\<ldots\>,<around*|(|x<rsub|j-1>|)><rsub|n>|)>-D<rsub|j>f<around*|(|x|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|j>,Y|)>>\<less\>\<varepsilon\>>
    proving thus\ 

    <\equation*>
      \<forall\>=j\<in\><around*|{|1,\<ldots\>,n|}> we have
      \<varphi\><rsub|j> is C<rsup|1> and
      \<forall\>k\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|j>><around*|(|0,\<delta\><rsub|\<varepsilon\>>|)>
      we have <around*|\<\|\|\>|D\<varphi\><rsub|j><around*|(|k|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|j>,Y|)>>\<less\>\<varepsilon\>
    </equation*>

    Using then the Mean Value Theorem (see <reference|Mean value theorem 2>)
    we have as <math|h<rsub|j>,0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|j>><around*|(|0,\<delta\><rsub|\<varepsilon\>>|)>>
    a convex set that <math|<around*|\<\|\|\>|\<varphi\><rsub|j><around*|(|h<rsub|j>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<varphi\><rsub|j><around*|(|h<rsub|j>|)>-\<varphi\><rsub|j><around*|(|0|)>|\<\|\|\>><rsub|Y>\<leqslant\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|j>-0|\<\|\|\>><rsub|j>=\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|j>|\<\|\|\>><rsub|j>>,
    so we have that <math|<around*|\<\|\|\>|R<around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<varphi\><rsub|j><around*|(|h<rsub|j>|)>|\<\|\|\>><rsub|Y>\<leqslant\><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|\<varphi\><rsub|j><around*|(|h<rsub|j>|)>|\<\|\|\>>\<less\><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h<rsub|j>|\<\|\|\>><rsub|j>=\<varepsilon\>\<cdot\><big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|h|\<\|\|\>><rsub|j>\<leqslant\>n\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>
    proving that\ 

    <\equation*>
      if h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\><rsub|\<varepsilon\>>|)>
      then <around*|\<\|\|\>|R<around*|(|h|)>|\<\|\|\>><rsub|Y>\<less\>n\<cdot\>\<varepsilon\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>
    </equation*>

    Take now <math|\<xi\>\<gtr\>0> then if we have that
    <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><rsub|<frac|\<xi\>|n>>>
    then <math|<around*|\<\|\|\>|f<around*|(|x+h|)>-f<around*|(|x|)>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i><around*|(|h|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|R<around*|(|h|)>|\<\|\|\>><rsub|Y>\<leqslant\>n\<cdot\><frac|\<xi\>|n>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>=\<xi\>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>>>
    proving that <math|f> is differentiable on <math|x\<in\>U> with
    differential <math|Df<around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>>.
    Now if <math|\<xi\>\<gtr\>0> then if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|<frac|\<xi\>|N>>|)>>
    <math|<around*|\<\|\|\>|Df<around*|(|x|)>-Df<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsup|1><rsub|i>f<around*|(|x|)>\<circ\>\<pi\><rsub|i>-<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i><rsup|1>f<around*|(|y|)>\<circ\>\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsup|1><rsub|i>f<around*|(|y|)>|)>\<circ\>\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|<around*|(|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsup|1><rsub|i>f<around*|(|y|)>|)>\<circ\>\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|X,Y|)>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|<around*|(|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsup|1><rsub|i>f<around*|(|y|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<cdot\><around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>><rsub|L<around*|(|X,X<rsub|i>|)>>\<leqslant\><rsub|<text|<reference|projection
    map is continuous and linear>>><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|D<rsup|1><rsub|i>f<around*|(|x|)>-D<rsup|1><rsub|i>f<around*|(|y|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|i>,Y|)>>\<leqslant\><rsub|<text|<reference|eq
    12.65-0>>>n\<cdot\><frac|\<xi\>|n>=\<xi\>> \ proving continuity of
    <math|Df<around*|(|x|)>> which means that <math|f> is <math|C<rsup|1>>
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>> <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space <math|X=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> (see
    <reference|norm of finite product of normed spaces>),
    <math|U\<subseteq\>X> a open set and <math|f:U\<rightarrow\>Y> a r-times
    differentiable function [<math|C<rsup|r>> function] then
    <math|\<forall\>i=<around*|(|i<rsub|1>,\<ldots\>,i<rsub|r>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|r>>
    we have that <math|D<rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f:U\<rightarrow\>L<rsup|r><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|r>>;Y|)>>
    exists on <math|U> [and is continuous function if <math|f> is
    <math|C<rsup|r>>], further <math|\<forall\>x\<in\>U> and
    <math|<around*|{|h<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,r|}>>>
    with <math|h<rsub|j>\<in\>X<rsub|i<rsub|j>><rsub|>> we have
    <math|D<rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|r>|)>=D<rsup|r>f<around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1<rsub|r>>-1>,h<rsub|1>,0<rsub|i<rsub|r>+1>,\<ldots\>,0<rsub|n>|)>|)>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|s\<in\>\<bbb-N\>\|if
    s\<leqslant\>r then \<forall\><around*|(|i<rsub|1>,\<ldots\>,i<rsub|s>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|s>
    we have that D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f exists on U
    <around*|[|and is continuous if f is C<rsup|s>|]> further
    \<forall\>x\<in\>U and <around*|{|h<rsub|j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,s|}>>
    with h<rsub|j>\<in\>X<rsub|i<rsub|j>> we have
    D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|s>|)>=D<rsup|s>f<around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>
    |}>> then we have:

    <\enumerate>
      <item>If <math|s=1> use then <reference|differentiability implies
      partial differentiability> to prove that
      <math|\<forall\><around*|(|i<rsub|1>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|1>\<Rightarrow\>i<rsub|1>\<in\><around*|{|1,\<ldots\>,n|}>>
      we have that <math|D<rsup|1><rsub|i<rsub|1>>f> exists on <math|U> ,
      <math|\<forall\>x\<in\>U> we have <math|D<rsup|1><rsub|i<rsub|1>>f<around*|(|x|)>=D<rsup|1>f<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,\<ast\>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>\<Rightarrow\>\<forall\><around*|{|h<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
      with <math|h<rsub|1>\<in\>X<rsub|i<rsub|1>>> we have
      <math|D<rsup|1><rsub|i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>h<rsub|1>|)>=D<rsup|1><rsub|i<rsub|1>>f<around*|(|x|)><around*|(|h<rsub|1>|)>=D<rsup|1>f<around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>>
      proving that <math|1\<in\>S>.

      <item>If <math|s\<in\>S> take then <math|s+1> and assume that
      <math|s+1\<leqslant\>r> then if <math|<around*|(|i<rsub|1>,\<ldots\>,i<rsub|s>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|s>>
      we define <math|\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>:<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,s|}>>X<rsub|i<rsub|j>>\<rightarrow\>X<rsup|s>>
      by <math|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>\<rightarrow\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>=<around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>,\<ldots\>,<around*|(|0<rsub|!>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>>.
      Then if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
      <math|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>,<around*|(|g<rsub|1>,\<ldots\>,g<rsub|s>|)>>
      we have that <math|\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|\<alpha\>\<cdot\><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>+\<beta\>\<cdot\><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>|)>=\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>g<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>h<rsub|s>+\<beta\>\<cdot\>g<rsub|s>|)>=<around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>g<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>\<ldots\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,\<alpha\>\<cdot\>h<rsub|s>+\<beta\>\<cdot\>g<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>=<around*|(|<around*|(|\<alpha\>\<cdot\>0<rsub|1>+\<beta\>\<cdot\>0<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>0<rsub|i<rsub|1>-1>+\<beta\>\<cdot\>0<rsub|i<rsub|1>+1>,\<alpha\>\<cdot\>h<rsub|1>+\<beta\>\<cdot\>g<rsub|1>,\<alpha\>\<cdot\>0<rsub|i<rsub|1>+1>+\<beta\>\<cdot\>0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>\<ldots\><around*|(|\<alpha\>\<cdot\>0<rsub|1>+\<beta\>\<cdot\>0<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>0<rsub|i<rsub|s>-1>+\<beta\>\<cdot\>0<rsub|i<rsub|s>-1>,\<alpha\>\<cdot\>h<rsub|s>+\<beta\>\<cdot\>g<rsub|s>,\<alpha\>\<cdot\>0<rsub|i<rsub|s>+1>+\<beta\>\<cdot\>0<rsub|i<rsub|s>+1>,\<ldots\>,\<alpha\>\<cdot\>0<rsub|n>+\<beta\>\<cdot\>0<rsub|n>|)>|)>=<around*|(|\<alpha\>\<cdot\>*<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>+\<beta\>\<cdot\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,g<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n><rsub|>|)>,\<ldots\>,\<alpha\>\<cdot\><around*|(|0<rsub|1>\<ldots\>.,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>+\<beta\>\<cdot\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,g<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>=\<alpha\>\<cdot\><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|i>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>,\<ldots\>,<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>+\<beta\>\<cdot\><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,g<rsub|i>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>,\<ldots\>,<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,g<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>=\<alpha\>\<cdot\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>+\<beta\>\<cdot\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>>
      proving that:

      <\equation>
        <label|eq 12.72-1>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>> is
        linear
      </equation>

      Also we have that <math|<around*|\<\|\|\>|\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>|\<\|\|\>><rsub|X<rsup|s>>=<around*|\<\|\|\>|<around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>,\<ldots\>,<around*|(|0<rsub|!>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>|\<\|\|\>><rsub|X<rsup|s>>=max<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|j>-1>,h<rsub|j>,0<rsub|i<rsub|j>+1>,\<ldots\>,0<rsub|n>|)>|\<\|\|\>><rsub|X>\|j\<in\><around*|{|1,\<ldots\>,s|}>|}>|)>\<equallim\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>
      is maximum norm>max<around*|(|<around*|{|<around*|\<\|\|\>|h<rsub|j>|\<\|\|\>><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,s|}>|}>|)>=<around*|\<\|\|\>|<around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>|\<\|\|\>><rsub|X<rsup|s>>>
      proving that:

      <\equation>
        <label|eq 12.74-1>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>> is
        continuous and <around*|\<\|\|\>|\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>|\<\|\|\>><rsub|L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,s|}>>,X<rsup|s>|)>>\<leqslant\>1
      </equation>

      Define now <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>:L<rsup|s><around*|(|X;Y|)>\<rightarrow\>L<rsup|s><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|s>>;Y|)>>
      by <math|L\<rightarrow\>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L|)>=\<cal-P\><rsub|s><around*|(|L|)>\<circ\>\<psi\><rsub|i<rsub|!>,\<ldots\>,i<rsub|s>>>
      then we have that <math|\<forall\><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>\<in\>L<rsup|s><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|s>>;Y|)>>
      we have that <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>=\<cal-P\><rsub|s><around*|(|L|)><around*|(|\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>|)>=\<cal-P\><rsub|s><around*|(|L|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>,\<ldots\>,<around*|(|0<rsub|!>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>=L<around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|!>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>>
      proving that\ 

      <\equation>
        \<forall\><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>\<in\>L<rsup|s><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|s>>;Y|)>\<vDash\>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L|)><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s>|)>=L<around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|!>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)><label|eq
        12.75-1>
      </equation>

      Now if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
      <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|s><around*|(|X;Y|)>> then we have
      that <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<cal-P\><rsub|s><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>\<circ\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|i<rsub|s>>>\<equallim\><rsub|<text|<reference|L^(X;Y)
      is equivalent with L(X^n;Y)>>><around*|(|\<alpha\>\<cdot\>\<cal-P\><rsub|s><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|s><around*|(|L<rsub|2>|)>|)>\<circ\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>=\<alpha\>\<cdot\>\<cal-P\><rsub|s><around*|(|L<rsub|1>|)>\<circ\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>+\<beta\>\<cdot\>\<cal-P\><rsub|s><around*|(|L<rsub|2>|)>\<circ\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>=\<alpha\>\<cdot\>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L<rsub|2>|)>>
      proving that:

      <\equation>
        <label|eq 12.76-1>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>> is
        linear
      </equation>

      Next we have that <math|<around*|\<\|\|\>|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|L|)>|\<\|\|\>><rsub|L<rsup|s><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|s>>;Y|)>>=<around*|\<\|\|\>|\<cal-P\><rsub|S><around*|(|L|)>\<circ\>\<psi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>|\<\|\|\>><rsub|L<rsup|s><around*|(|X<rsub|i<rsub|1>>,\<ldots\>,X<rsub|i<rsub|s>>;Y|)>>\<leqslant\><rsub|<text|<reference|norm
      of composition of linear mapping>>><around*|\<\|\|\>|\<cal-P\><rsub|S><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsup|s>;Y|)>>\<cdot\><around*|\<\|\|\>|\<psi\><rsub|i<rsub|1>,\<ldots\>i<rsub|s>>|\<\|\|\>><rsub|L<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,s|}>>,X<rsup|s>|)>>\<leqslant\><rsub|<text|<reference|eq
      12.74-1>>><around*|\<\|\|\>|\<cal-P\><rsub|S><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsup|s>;Y|)>><rsub|>\<leqslant\><rsub|<text|<reference|L^(X;Y)
      is equivalent with L(X^n;Y)>>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|s><around*|(|X;Y|)>>>proving
      that

      <\equation>
        <label|eq 12.77-1>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>> is
        continuous
      </equation>

      Now we have <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s>f<around*|(|x|)>|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|s>|)>\<equallim\><rsub|<text|<reference|eq
      12.75-1>>>D<rsup|s>f<around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>\<equallim\><rsub|s\<in\>S>D<rsup|s><rsub|i<rsub|!>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|s>|)>>
      so that by <reference|equiality in L^n(X;Y)> we have
      <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s>f<around*|(|x|)>|)>=D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>>
      or:

      <\equation>
        <label|eq 12.78-1>\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>\<circ\>D<rsup|s>f=D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f
      </equation>

      Now as <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|1>>> is linear
      and continuous (see <reference|eq 12.76-1> and <reference|eq 12.77-1>)
      and thus <math|C<rsup|\<infty\>>> and as <math|s+1\<leqslant\>r> we
      have that <math|D<rsup|s>f> is differentiable [and continuous if
      <math|f> is <math|C<rsup|r>>] we have that
      <math|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f> is differentiable
      [or <math|C<rsup|1>> if <math|f> is <math|C<rsup|r>>] and if
      <math|x\<in\>U> then <math|D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>=D\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>><around*|(|D<rsup|s>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|s>f|)><around*|(|x|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>\<circ\>D<rsup|s+1>f<around*|(|x|)>>
      so if <math|i<rsub|0>\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|D<rsub|i<rsub|0>><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|S>>f|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|differentiability
      on products of metric spaces>>>D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s+1>-1>,\<ast\>,0<rsub|i<rsub|s+1>+1>,\<ldots\>,0<rsub|n>|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>\<circ\>D<rsup|s+1>f<around*|(|x|)>\<circ\><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,\<ast\>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)>>
      so if <math|<around*|(|h<rsub|0>,\<ldots\>,h<rsub|s>|)>\<in\><big|prod><rsub|j\<in\><around*|{|0,\<ldots\>,s|}>>X<rsub|i<rsub|j>>>
      we have that <math|D<rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>=<around*|(|D<rsub|i<rsub|0>><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)><around*|(|h<rsub|0>|)>|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|s>|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s+1>f<around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,h<rsub|0>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)>|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|1>|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s+1>f<around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,h<rsub|0>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)>|)><around*|(|h<rsub|1>:\<ldots\>:h<rsub|1>|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,h<rsub|0>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|1>-1>,h<rsub|1>,0<rsub|i<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,h<rsub|0>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|s>-1>,h<rsub|s>,0<rsub|i<rsub|s>+1>,\<ldots\>,0<rsub|n>|)>|)>>
      or if we use <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>> that
      <math|j<rsub|i>=i<rsub|i-1>> we have that\ 

      <\equation>
        <label|eq 12.79-1>\<forall\><around*|(|h<rsub|1>,\<ldots\>,h<rsub|s+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,s+1|}>>X<rsub|<rsub|j<rsub|i>>>
        we have D<rsup|s+1><rsub|j<rsub|1>,\<ldots\>,j<rsub|s+1>>f<around*|(|x|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j<rsub|1>-1>,h<rsub|1>,0<rsub|j<rsub|1>+1>,\<ldots\>,0<rsub|n>|)>:\<ldots\>:<around*|(|0<rsub|1>,\<ldots\>,0<rsub|j<rsub|s+1>-1>,h<rsub|s>,0<rsub|j<rsub|s+1>+1>,\<ldots\>,0<rsub|n>|)>|)>
      </equation>

      The above proves that <math|s+1\<in\>S>
    </enumerate>

    Mathematical induction proves then that <math|S=\<bbb-N\>> and our
    theorem
  </proof>

  Let's now define partial derivates of higher order.

  <\definition>
    Let <math|n,m\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> with any norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>K<rsup|n>> a open set,
    <math|f:U\<rightarrow\>Y> then given <math|<around*|(|i<rsub|1>,\<ldots\>,i<rsub|m>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|m>>
    we say that <math|f> has a <with|font-series|bold|partial derivate>
    <math|\<partial\><rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f> on
    <math|U> if \ 

    <\enumerate>
      <item>If <math|m=1> then if <math|<around*|(|i|)>\<in\><around*|{|1,\<ldots\>,m|}><rsup|1>>
      we have <math|\<partial\><rsub|i><rsup|1>f> exists on <math|U> if
      <math|\<forall\>x\<in\>U> we have that <math|f> has a partial derivate
      at x (see <reference|partial derivative definition>). We define then
      <math|\<partial\><rsup|1><rsub|i>f:U\<rightarrow\>Y> by
      <math|x\<rightarrow\>\<partial\><rsup|1><rsub|i>f<around*|(|x|)><rsup|>>.

      <item>If <math|m\<gtr\>1> then if <math|<around*|(|i<rsub|1>,\<ldots\>,i<rsub|m>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|m>>
      we say that <math|f> has a partial derivate
      <math|\<partial\><rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f> on
      <math|U> if <math|\<partial\><rsup|m-1><rsub|i<rsub|2>,\<ldots\>,i<rsub|m>>f>
      exists on <math|U> and that <math|\<forall\>x\<in\>U> the partial
      derivate \ <math|\<partial\><rsub|i<rsub|1>><around*|(|\<partial\><rsub|i<rsub|2>,\<ldots\>,i<rsub|n>><rsup|m-1>f|)><around*|(|x|)>>
      exists. We define then <math|\<partial\><rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f:U\<rightarrow\>Y>
      by <math|x\<rightarrow\>\<partial\><rsup|m><rsub|i<rsub|1>,\<ldots\>,i<rsub|m>>f<around*|(|x|)>=\<partial\><rsub|i<rsub|1>><around*|(|\<partial\><rsub|i<rsub|2>,\<ldots\>,i<rsub|n>><rsup|m-1>f|)><around*|(|x|)>>
    </enumerate>
  </definition>

  <\theorem>
    Let <math|n,m\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|\<bbb-K\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the vector space <math|\<bbb-K\><rsup|n>> with any norm,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space, <math|U\<subseteq\>K<rsup|n>> a open set,
    <math|f:U\<rightarrow\>Y> so that given <math|f> is <math|r>-times
    differentiable [or <math|C<rsup|m>>] then
    \ <math|\<forall\><around*|(|i<rsub|1>,\<ldots\>,i<rsub|r>|)>\<in\><around*|{|1,\<ldots\>,n|}><rsup|r>>
    we have that <math|\<partial\><rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f>
    exists on <math|U> [and is continuous on <math|U> if <math|f> is
    <math|C<rsup|r>>]. Furthermore <math|\<forall\>x\<in\>U> we have
    <math|\<partial\><rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)>=<around*|(|D<rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|r>|)>>
    or <math|\<partial\><rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)>=D<rsup|r>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|r>>|)>>
    where <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is the canonical base on <math|\<bbb-K\><rsup|n>> (defined by
    <math|<around*|(|e<rsub|i>|)><rsub|j>=\<delta\><rsub|i,j>>)
  </theorem>

  <\proof>
    We proof this by induction so let <math|S=<around*|{|s\<in\>\<bbb-N\>\|if
    s\<leqslant\>r then \<forall\><around*|(|i<rsub|1>,\<ldots\>,i<rsub|s>|)>
    \<partial\><rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f exists on U
    <around*|(|is continuous if f is C<rsup|r>|)>,
    \<partial\><rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)>=<around*|(|D<rsup|r><rsub|i<rsub|1>,\<ldots\>,i<rsub|r>>f<around*|(|x|)>|)><around*|(|1:\<ldots\>:1|)>=D<rsup|r>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|r>>|)>|}>
    > then we have:

    <\enumerate>
      <item>If <math|s=1> then by <reference|differentiability of K^n> we
      have that <math|\<forall\>x\<in\>U> the partial derivate exists proving
      that <math|\<partial\><rsub|i>f> exists on <math|U> and
      <math|\<forall\>x\<in\>U> we have <math|\<partial\><rsub|i>f<around*|(|x|)>=D<rsub|i>f<around*|(|x|)><around*|(|1|)>=Df<around*|(|x|)><around*|(|e<rsub|i>|)>>.
      Using <reference|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)> we have
      also that <math|Df<around*|(|\<ast\>|)><around*|(|e<rsub|i>|)>=\<partial\><rsub|i>f>
      is continuous. So we have <math|1\<in\>S>

      <item>If <math|s\<in\>S> then if <math|s+1\<leqslant\>r> we have
      <math|s\<leqslant\>r> \ and thus <math|\<forall\><around*|(|i<rsub|1>,\<ldots\>,i<rsub|s>|)>\<in\><around*|(|1,\<ldots\>,n|)><rsup|s>>
      we have that <math|\<forall\>x\<in\>U>
      <math|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>>f<around*|(|x|)>>
      exists and <math|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>>f<around*|(|x|)>=D<rsup|s>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|s>>|)>>.
      Define now <math|\<varphi\><rsub|i<rsub|!>,\<ldots\>,i<rsub|s>>:L<rsup|s><around*|(|\<bbb-K\><rsup|n>;Y|)>\<rightarrow\>Y>
      by <math|L\<rightarrow\>\<varphi\><around*|(|L|)>=L<around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|s>>|)>>
      then we have by <reference|sum,product on (x1:..:xn)> that
      <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>> is linear. As
      also by <reference|norm of L(x1:..:xn}> we have that
      <math|<around*|\<\|\|\>|\<varphi\><rsub|i<rsub|1>,\<ldots\>,.i<rsub|s>><around*|(|L|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|s>>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|e<rsub|i<rsub|1>>|\<\|\|\>><rsub|\<bbb-K\><rsup|n>>=<around*|\<\|\|\>|L|\<\|\|\>>>
      we have that <math|\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>> is
      continuous and thus <math|C<rsup|\<infty\>>>. So we have that
      <math|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>>f<around*|(|x|)>=D<rsup|s>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|s>>|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s>f<around*|(|x|)>|)>\<Rightarrow\>\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>\<circ\>D<rsup|s>f<around*|(|x|)>>
      which is differentiable (as <math|s+1\<leqslant\>r>) and
      <math|C<rsup|1>> if <math|f> is <math|C<rsup|r>> so that the
      differential is continuous if <math|f> is <math|C<rsup|r>>] and we have
      that <math|\<forall\>x\<in\>U> that
      <math|D<around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>=D\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|s>f|)><around*|(|x|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>\<circ\>D<rsup|s+1>f<around*|(|x|)>>.
      Take now <math|i<rsub|0>\<in\><around*|{|1,\<ldots\>,n|}>> then by
      <reference|differentiability of K^n>
      <math|\<partial\><rsub|i<rsub|0>><around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>>
      exists and <math|><math|\<partial\><rsub|i<rsub|0>><around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|differentiability
      of K^n>>>D<around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|S>>f|)><around*|(|e<rsub|i<rsub|0>>|)>=\<varphi\><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>><around*|(|D<rsup|s+1>f<around*|(|x|)><around*|(|e<rsub|i<rsub|0>>|)>|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|e<rsub|i<rsub|0>>|)><around*|(|e<rsub|i<rsub|!>>:\<ldots\>:e<rsub|i<rsub|1>>|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|1>>|)>>
      proving that

      <\equation>
        <label|eq 12.80-1>\<forall\>x\<in\>U we have
        \<partial\><rsup|s+1><rsub|i<rsub|0>,\<ldots\>i<rsub|s>>f<around*|(|x|)>=D<rsup|s+1>f<around*|(|x|)><around*|(|e<rsub|i<rsub|1>>:\<ldots\>:e<rsub|i<rsub|1>>|)>
      </equation>

      Define now <math|\<psi\>:L<rsup|s><around*|(|<wide*|\<bbb-K\>,\<ldots\>,\<bbb-K\>|\<wide-underbrace\>><rsub|s>;Y|)>\<rightarrow\>Y>
      by <math|L\<rightarrow\>\<psi\><around*|(|L|)>=L<around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|s>|)>>
      then we have by <reference|sum,product on (x1:..:xn)> and
      <reference|norm of L(x1:..:xn}> again that <math|\<psi\>> is linear and
      continuous. As <math|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>\<equallim\><rsub|s\<in\>S><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|r>|)>=\<psi\><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>|)>=<around*|(|\<psi\>\<circ\>D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>\<Rightarrow\>\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f=\<psi\>\<circ\>D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f>
      so that <math|D<around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>=D\<psi\><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>|)>\<circ\>D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>=\<psi\>\<circ\>D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>>.
      Now <math|\<partial\><rsub|i<rsub|0>><around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>\<equallim\>D<rsub|i<rsub|0>><around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)><around*|(|1|)>\<equallim\><rsub|<text|<reference|differentiability
      on products of metric spaces>>>D<around*|(|\<partial\><rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,1,0<rsub|i<rsub|0>+1>,\<ldots\>0<rsub|n>|)>=<around*|(|\<psi\>\<circ\>D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)>|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,1,0<rsub|i<rsub|0>+1>,\<ldots\>0<rsub|n>|)>=\<psi\><around*|(|D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)><around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,1,0<rsub|i<rsub|0>+1>,\<ldots\>0<rsub|n>|)>|)>=\<psi\><around*|(|D<around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|s>>f|)><around*|(|x|)><around*|(|<around*|(|0<rsub|1>,\<ldots\>,0<rsub|i<rsub|0>-1>,\<ast\>,0<rsub|i<rsub|0>+1>,\<ldots\>,0<rsub|n>|)><around*|(|1|)>|)>|)>=\<psi\><around*|(|D<rsub|i<rsub|0>><around*|(|D<rsup|s><rsub|i<rsub|1>,\<ldots\>,i<rsub|n>>f|)><around*|(|x|)><around*|(|1|)>|)>=\<psi\><around*|(|D<rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|1|)>|)>=D<rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|1|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|s>|)>=D<rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|s+1>|)>>
      proving\ 

      <\equation>
        <label|eq 12.81-1>\<partial\><rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)>=D<rsup|s+1><rsub|i<rsub|0>,\<ldots\>,i<rsub|s>>f<around*|(|x|)><around*|(|<wide*|1:\<ldots\>:1|\<wide-underbrace\>><rsub|s+1>|)>
      </equation>

      Substituting <math|j<rsub|1>,\<ldots\>,j<rsub|s+1>> for
      <math|i<rsub|0>,\<ldots\>,i<rsub|s>> in <reference|eq
      12.80-1>,<reference|eq 12.81-1> gives then finally that
      <math|s+1\<in\>S>.
    </enumerate>

    Mathematical induction proves then our theorem.
  </proof>

  <section|Inverse function theory>

  <\theorem>
    <label|toplinear in normed space><index|toplinear isomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then a linear continuous isomorphism
    <math|L:X\<rightarrow\>Y> is a top-linear isomorphism (see
    <reference|toplinear isomorphism>) if also <math|L<rsup|-1>> is
    continuous.
  </theorem>

  <\proof>
    This is trivial using the definition (see <reference|toplinear
    isomorphism>).
  </proof>

  <\theorem>
    <label|in Banach spaces linear continuous mappings are toplinear>If
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    are Banach spaces then if <math|L:X\<rightarrow\>Y> is a linear
    continuous isomorphism (or <math|L\<in\>L<around*|(|X,Y|)>> and is a
    isomorphism) then <math|L> is a top-linear isomorphism.
  </theorem>

  <\proof>
    This is a consequence of <reference|inverse of continuous linear mappings
    between Banach space is continuous>.
  </proof>

  <\definition>
    <index|<math|\<cal-G\>L<around*|(|X|)>>>If
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    a normed space then <math|\<cal-G\>L<around*|(|X|)>=<around*|{|L\<in\>L<around*|(|X,Y|)>\|L
    is toplinear|}>\<subseteq\>L<around*|(|X,Y|)>>\ 
  </definition>

  <\theorem>
    <label|GL(X) is a group>If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space then <math|\<cal-G\>L<around*|(|X|)>> is a group with
    the composition operator as the group operator.
  </theorem>

  <\proof>
    If <math|L<rsub|1>,L<rsub|2>\<in\>\<cal-G\>L<around*|(|X|)>> then
    <math|L<rsub|1>\<circ\>L<rsub|2>> is also a isomorphism that is linear
    and continuous and by <reference|inverse of continuous linear mappings
    between Banach space is continuous> is continuous as <math|X> is a Banach
    space so <math|L<rsub|1>\<circ\>L<rsub|2>\<in\>\<cal-G\>L<around*|(|X|)>>
    proving that <math|\<circ\>:X\<times\>X\<rightarrow\>X> defined by
    <math|<around*|(|L<rsub|1>,L<rsub|2>|)>\<rightarrow\>L<rsub|1>\<circ\>L<rsub|2>>
    is well defined.

    <\enumerate>
      <item><dueto|identity>Consider <math|1<rsub|X>:X\<rightarrow\>X> which
      is evidently linear, continuous and a isomorphism with a continuous
      inverse. If <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then
      <math|L\<circ\>1<rsub|X>=L=1<rsub|X>\<circ\>L>

      <item><dueto|inverse element>If <math|L\<in\>\<cal-G\>L<around*|(|X|)>>
      then by definition <math|L<rsup|-1>\<in\>\<cal-G\>L<around*|(|X|)>> and
      <math|L\<circ\>L<rsup|-1>=1<rsub|X>=L<rsup|-1>\<circ\>L>

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
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space, <math|H\<in\>L<around*|(|X,X|)>> then
    <math|-H\<in\>L<around*|(|X,X|)>> obviously and
    <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|<around*|(|-H|)><rsup|n>=<around*|(|-1|)><rsup|n>\<cdot\>H<rsup|n>>
  </note>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|if H\<in\>L<around*|(|X,X|)>
    then <around*|(|-H|)><rsup|n>=<around*|(|-1|)><rsup|n>\<cdot\>H|}>> then:

    <\enumerate>
      <item>If <math|n=1> then <math|<around*|(|-H|)><rsup|1>=-H=<around*|(|-1|)><rsup|1>\<cdot\>H>

      <item>If <math|n\<in\>S> then <math|<around*|(|-H|)><rsup|n+1>=<around*|(|-H|)>\<circ\><around*|(|-H|)><rsup|n>\<equallim\><rsub|n\<in\>S><around*|(|-H|)>\<circ\><around*|(|-1|)><rsup|n>\<cdot\>H<rsup|n>=<around*|(|-1|)>\<cdot\><around*|(|-1|)><rsup|n>\<cdot\>H\<circ\>H<rsup|n>=<around*|(|-1|)><rsup|n+1>\<cdot\>H<rsup|n+1>>
      proving that <math|n+1\<in\>S>
    </enumerate>
  </proof>

  <\lemma>
    <label|power of a continuous linear mapping is linear and continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed vector space and <math|H\<in\>L<around*|(|X,X|)>>,
    <math|n\<in\>\<bbb-N\>> then <math|H<rsup|n>:X\<rightarrow\>X> is linear
    and continuous with <math|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    (or <math|<around*|\<\|\|\>|H<rsup|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>>).
    In addition we have that <math|<big|sum><rsub|i=1><rsup|n>H<rsup|i>> is
    continuous with <math|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    (or <math|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>)
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|linearity>We use induction so let
      <math|S=<around*|{|n\<in\>\<bbb-N\>\|H<rsup|n> is linear|}>> then we
      have

      <\enumerate>
        <item>If <math|n=1> then <math|H<rsup|1><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=H<around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>\<equallim\><rsub|H
        is linear>\<alpha\>\<cdot\>H<around*|(|x|)>+\<beta\>\<cdot\>H<around*|(|y|)>=\<alpha\>\<cdot\>H<rsup|1><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|1><around*|(|y|)>\<Rightarrow\>1\<in\>S>

        <item>If <math|n\<in\>S> then <math|H<rsup|n+1><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=H<around*|(|H<rsup|n><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>|)>\<equallim\><rsub|n\<in\>S>H<around*|(|\<alpha\>\<cdot\>H<rsup|n><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|n><around*|(|y|)>|)>\<equallim\><rsub|H
        is linear>\<alpha\>\<cdot\>H<around*|(|H<rsup|n><around*|(|x|)>|)>+\<beta\>\<cdot\>H<around*|(|H<rsup|n><around*|(|y|)>|)>=\<alpha\>\<cdot\>H<rsup|n+1><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|n+1><around*|(|y|)>>
        proving that <math|n+1\<in\>S>
      </enumerate>

      <item><dueto|continuity of <math|H<rsup|n>>>Again we use induction so
      let <math|S=<around*|{|n\<in\>\<bbb-N\>\|H<rsup|n> is continuous and
      \<forall\>x\<in\>X we have <around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|X|\<\|\|\>><rsub|X>|}>>
      then

      <\enumerate>
        <item>If <math|n=1> then as <math|H=H<rsup|1>> we have that
        <math|H<rsup|1>> is continuous and if <math|x\<in\>X> we have
        <math|<around*|\<\|\|\>|H<rsup|1><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H|\<\|\|\>><rsup|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        proving that <math|1\<in\>S>

        <item>If <math|n\<in\>S> then if <math|x\<in\>X> we have
        <math|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<around*|(|H<rsup|n><around*|(|x|)>|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|n\<in\>S><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|(|<around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>=<around*|\<\|\|\>|H|\<\|\|\>><rsup|n+1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
        proving that <math|n+1\<in\>S>
      </enumerate>

      <item><dueto|continuity of <math|<big|sum><rsub|i=1><rsup|n>H<rsup|i>>>We
      use induction again so let <math|S=<around*|{|n\<in\>\<bbb-N\>\|<big|sum><rsub|i=1><rsup|n>H<rsup|i>
      is continuous with \<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>|}>>
      then we have:

      <\enumerate>
        <item>If <math|n=1> then <math|\<forall\>x\<in\>X> we have
        <math|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|1>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<rsup|1><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|H<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|(|<big|sum><rsub|i=1><rsup|1><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        so that <math|1\<in\>S>.

        <item>If <math|n\<in\>S> then <math|<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n+1>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|n\<in\>S><around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>+<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><rsub|<around*|(|2<rsub|>|)>><around*|\<\|\|\>|H|\<\|\|\>><rsup|n+1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|(|<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|(|<around*|\<\|\|\>|H|\<\|\|\>><rsup|n+1>+<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|(|<big|sum><rsub|i=1><rsup|n+1><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        proving that <math|n+1\<in\>S>.
      </enumerate>
    </enumerate>
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, if <math|H\<in\>L<around*|(|X,Y|)>> is such that
    <math|\<forall\>x\<in\>X> we have that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>>
    converges then we say that <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>>
    converges and define <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>>
    or <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>=lim<rsub|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>>
  </definition>

  <\lemma>
    <label|sum of linear function and infinite sum>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space <math|L,H\<in\>L<around*|(|X,Y|)>> and
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>> converges then
    <math|\<forall\>x\<in\>X> we have <math|lim<rsub|i\<rightarrow\>\<infty\>><around*|(|L<around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>=<around*|(|L+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>>
  </lemma>

  <\proof>
    <math|<around*|(|L+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>=L<around*|(|x|)>+<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>\<equallim\><rsub|definition>L<around*|(|x|)>+lim<rsub|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>=lim<rsub|n\<rightarrow\>\<infty\>><around*|(|L<around*|(|x|)>|)>+lim<rsub|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|limit
    of a sum>>>lim<rsub|n\<rightarrow\>\<infty\>><around*|(|L<around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>>
  </proof>

  <\theorem>
    <label|i-H has inverse if norm of H is lower then 1>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a Banach space and <math|H\<in\>L<around*|(|X,X|)>> with
    <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> then
    <math|1<rsub|X>-H\<in\>\<cal-G\>L<around*|(|X|)>>. Further
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>> converges and
    <math|<around*|(|1<rsub|X>-H|)><rsup|-1>=1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>>
  </theorem>

  <\proof>
    Using the previous lemma (see <reference|power of a continuous linear
    mapping is linear and continuous>) we have that\ 

    <\equation>
      <label|eq 12.64>\<forall\>x\<in\>X,n\<in\>\<bbb-N\> we have
      <around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
    </equation>

    Using the fact that <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> and
    \ <reference|exaple of a convergent serie> we have that
    <math|<big|sum><rsub|i=1<rsup|>><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>>
    is convergent and <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>=<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>,
    further using <reference|linear combination of convergent series> we have
    that <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<around*|\<\|\|\>|H|\<\|\|\>><rsup|i>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>>
    is convergent to <math|<frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>.
    Using the fact that <math|X> is a Banach space, <reference|eq 12.64> and
    <reference|convergent criteria of a serie in a Banach space> we have that
    <math|\<forall\>x\<in\>X> that <math|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>>
    is convergent and\ 

    <\equation>
      <label|eq 12.65><around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>
    </equation>

    Also by <reference|terms of a convergent series goes to 0> we have that
    <math|lim<rsub|n\<rightarrow\>\<infty\>>H<around*|(|x|)><rsup|n>>=0 so
    that\ 

    <\equation>
      <label|eq 12.66>lim<rsub|n\<rightarrow\>\<infty\>>H<around*|(|x|)><rsup|n>=0
    </equation>

    So we can define the function <math|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>:X\<rightarrow\>X>
    by

    <\equation>
      <label|eq 12.67>\<forall\>x\<in\>X\<vDash\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>=1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|n><around*|(|x|)>
    </equation>

    We show now that <math|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>>
    is linear\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|power
      of a continuous linear mapping is linear and
      continuous>>>>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\>H<rsup|i><around*|(|y|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|linear
      combination of convergent series>>>>|<cell|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y+\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>+\<beta\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>+\<beta\>\<cdot\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|y|)>>>>>
    </eqnarray*>

    Next we prove continuity of <math|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|<around*|(|1<rsub|x>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>|\<\|\|\>><rsub|X>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|1<rsub|x><around*|(|x|)>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      12.65>>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>>>>
    </eqnarray*>

    proving continuity of <math|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>>
    and that\ 

    <\equation>
      <label|eq 12.68><around*|\<\|\|\>|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>|\<\|\|\>>\<leqslant\><frac|1|1-<around*|\<\|\|\>|H|\<\|\|\>>>
    </equation>

    Next we prove by induction on <math|n> that

    <\equation>
      <label|eq 12.69><around*|(|1<rsub|X>-H|)>\<circ\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>=<around*|(|1<rsub|X>-H<rsup|n+1>|)>
    </equation>

    <\proof>
      So let <math|S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|1<rsub|X>-H|)>\<circ\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>=<around*|(|1<rsub|X>-H<rsup|n+1>|)>|}>>
      then we have:

      <\enumerate>
        <item>If <math|n=1> then <math|\<forall\>x\<in\>X> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)><around*|(|x|)>|)>>|<cell|=>|<cell|<around*|(|1<rsub|X>-H|)><around*|(|1<rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|1>H<rsup|i><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H|)><around*|(|x+H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x+H<around*|(|x|)>-H<around*|(|x|)>-H<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H<rsup|2>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item>If <math|n\<in\>S> then <math|\<forall\>x\<in\>X> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)><around*|(|x|)>|)>>|<cell|=>|<cell|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>+<around*|(|1<rsub|X>-H|)><around*|(|H<rsup|n+1><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|1<rsub|X>-H<rsup|n+1>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H<rsup|<around*|(|n+1|)>+1>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.\ 
      </enumerate>

      Using induction we have that <math|S=\<bbb-N\>> so that <reference|eq
      12.68> is valid.
    </proof>

    Next by induction again we prove that\ 

    <\equation>
      <label|eq 12.70><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|1<rsub|X>-H|)>=1<rsub|X>-H<rsup|n+1>
    </equation>

    <\proof>
      So let <math|S=<around*|{|n\<in\>\<bbb-N\>\|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)>\<circ\><around*|(|1<rsub|X>-H|)>=1<rsub|X>-H<rsup|n+1>|}>>
      then we have :

      <\enumerate>
        <item>If <math|n=1> then <math|\<forall\>x\<in\>X>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|1>H<rsup|i>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>>|<cell|=>|<cell|<around*|(|x-H<around*|(|x|)>+H<around*|(|x-H<around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H<rsup|2>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|1\<in\>S>.

        <item>If <math|n\<in\>S> then we have <math|\<forall\>x\<in\>X> we
        have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n+1>H<rsup|i>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>>|<cell|=>|<cell|1<rsub|X><around*|(|x-H<around*|(|x|)>|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x-H<around*|(|x|)>|)>+H<rsup|n+1><around*|(|x-H<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>S>>|<cell|<around*|(|1<rsub|X>-H<rsup|n+1>|)><around*|(|x|)>+H<rsup|n+1><around*|(|x|)>-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|x-H<rsup|<around*|(|n+1|)>+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1<rsub|X>-H<rsup|<around*|(|n+1|)>+1>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>S>.
      </enumerate>

      Using induction we have that <math|S=\<bbb-N\>> so that <reference|eq
      12.70> is indeed valid.
    </proof>

    Now if <math|\<varepsilon\>\<gtr\>0> , <math|x\<in\>X> then by
    <reference|eq 12.66> there exists a <math|N\<in\>\<bbb-N\>> such that if
    <math|n\<geqslant\>N> then <math|<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>
    so that using <reference|eq 12.69> and <reference|eq 12.70> we have
    <math|<around*|\<\|\|\>|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>-<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>-1<rsub|X><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|-H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>
    and <math|<around*|\<\|\|\>|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>-1<rsub|X>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|-H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|H<rsup|n+1><around*|(|x|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>
    proving that\ 

    <\equation>
      <label|eq 12.71>\<forall\>x\<in\>X\<vDash\>lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>|]>=1<rsub|X><around*|(|x|)>
    </equation>

    Using the above and <reference|sum of linear function and infinite sum>
    we have that <math|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|<around*|(|1<rsub|X>-H|)><around*|(|x|)>|)>=1<rsub|X><around*|(|x|)>>
    so that

    <\equation>
      <label|eq 12.72><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>\<circ\><around*|(|1<rsub|X>-H|)>=1<rsub|X>
    </equation>

    \;

    <\equation>
      <label|eq 12.73>\<forall\>x\<in\>X\<vDash\>lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>|]>=1<rsub|X><around*|(|x|)>
    </equation>

    As <math|<around*|(|1<rsub|X>-H|)>> is continuous we have by
    <reference|limit and continuity> and the above that
    <math|1<rsub|X><around*|(|x|)>=lim<rsub|n\<rightarrow\>\<infty\>><around*|[|<around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>|]>=<around*|(|1<rsub|X>-H|)><around*|(|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|n>H<rsup|i>|)><around*|(|x|)>|)>=<around*|(|1<rsub|X>-H|)><around*|(|lim<rsub|n\<rightarrow\>\<infty\>><around*|(|1<rsub|X><around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>H<rsup|i><around*|(|x|)>|)>|)>\<equallim\><rsub|<text|<reference|sum
    of linear function and infinite sum>>><around*|(|1<rsub|X>-H|)><around*|(|<around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)><around*|(|x|)>|)>>
    proving that\ 

    <\equation>
      <label|eq 12.74>1<rsub|X>=<around*|(|1<rsub|X>-H|)>\<circ\><around*|(|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>|)>
    </equation>

    Finally using <reference|eq 12.72> and <reference|eq 12.74> we have that
    <math|<around*|(|1<rsub|X>-H|)><rsup|-1>=1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>>H<rsup|i>>.
    Proving that <math|1<rsub|X>-H> is a bijection and as
    <math|1<rsub|X>,H\<in\>L<around*|(|X,X|)>> we have also that
    <math|1<rsub|X>-H> is linear and continuous thus a isomorphism and by
    <reference|in Banach spaces linear continuous mappings are toplinear> it
    is top-linear.
  </proof>

  <\corollary>
    <label|I+H has inverse if norm of H is less then 1>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a Banach space, <math|H\<in\>L<around*|(|X,X|)>> with
    <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> then
    <math|1<rsub|X>+H\<in\>\<cal-G\>L<around*|(|X|)>> with
    <math|<around*|(|1<rsub|X>+H|)><rsup|-1>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>
  </corollary>

  <\proof>
    This follows from the previous theorem by using <math|-H> as
    <math|<around*|\<\|\|\>|-H|\<\|\|\>>=<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1>
  </proof>

  <\theorem>
    <label|inverse mapping is c-infinite>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space then we have

    <\enumerate>
      <item><math|\<cal-G\>L<around*|(|X|)>> is a open set in
      <math|L<around*|(|X,X|)>>

      <item>The function <math|\<tau\>:\<cal-G\>L<around*|(|X|)>\<rightarrow\>\<cal-G\>L<around*|(|X|)>>
      defined by <math|L\<rightarrow\>\<tau\><around*|(|L|)>=L<rsup|-1>> is
      differentiable of class <math|C<rsup|\<infty\>>> and
      <math|D\<tau\><around*|(|L|)>\<in\>L<around*|(|\<cal-G\>L<around*|(|X|)>,L<around*|(|\<cal-G\>L<around*|(|X|)>,\<cal-G\>L<around*|(|X|)>|)>|)>>
      is defined by <math|D\<tau\><around*|(|L|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then for any
      <math|H\<in\>L<around*|(|X,X|)>> we can write\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|H>|<cell|=>|<cell|L+<around*|(|H-L|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>1<rsub|X>+<around*|(|L\<circ\>L<rsup|-1>|)>\<circ\><around*|(|H-L|)>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\><around*|(|1<rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>>>>>
      </eqnarray*>

      giving\ 

      <\equation>
        <label|eq 12.75>H=L\<circ\><around*|(|1<rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>
      </equation>

      Now according to <reference|norm of composition of linear mapping> we
      have <math|<around*|\<\|\|\>|L<rsup|-1>\<circ\><around*|(|H-L|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|H-L|\<\|\|\>>>,
      take then <math|\<delta\>=max<around*|(|1,<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>|)>\<gtr\>0>
      then if <math|<around*|\<\|\|\>|H-L|\<\|\|\>>\<less\><frac|1|\<delta\>>>
      we have <math|<around*|\<\|\|\>|L<rsup|-1>\<circ\><around*|(|H-L|)>|\<\|\|\>>\<less\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><frac|1|\<delta\>>\<leqslant\>1>
      and using the previous corollary we have then that
      <math|<around*|(|1<rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>\<in\>\<cal-G\>L<around*|(|X|)>>
      and as <math|L\<in\>\<cal-G\>L<around*|(|X|)>> we have by
      <reference|GL(X) is a group> that <math|H=L\<circ\><around*|(|1<rsub|X>+L<rsup|-1>\<circ\><around*|(|H-L|)>|)>\<in\>\<cal-G\>L<around*|(|X|)>>.
      So if <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,<frac|1|\<delta\>>|)>>
      then <math|<around*|\<\|\|\>|H-L|\<\|\|\>>\<less\><frac|1|\<delta\>>>
      and thus <math|H\<in\>\<cal-G\>L<around*|(|X|)>\<Rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,<frac|1|\<delta\>>|)>>
      proving that <math|\<cal-G\>L<around*|(|X|)>> is open.

      <item>Next we prove that <math|\<tau\>> is differentiable at every
      <math|L\<in\>\<cal-G\>L<around*|(|X|)>>

      <\enumerate>
        <item>First we prove that <math|\<tau\>> is differentiable at
        <math|1<rsub|X>\<in\>\<cal-G\>L<around*|(|X|)>> with
        <math|\<forall\>H\<in\>L<around*|(|X,X|)>> that
        <math|D\<tau\><around*|(|1<rsub|X>|)><around*|(|H|)>=-1<rsub|X><rsup|-1>\<circ\>H\<circ\>1<rsub|X><rsup|-1>>.
        Note that if <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> then using
        the previous corollary we have <math|1<rsub|X>+H\<in\>\<cal-G\>L<around*|(|X|)>\<Rightarrow\>1<rsub|X>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|1<rsub|X>,1|)>\<subseteq\>\<cal-G\>L<around*|(|X|)>>
        and <math|<around*|(|1<rsub|X>+H|)>=1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>.
        So we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<tau\><around*|(|1<rsub|X>+H|)>-\<tau\><around*|(|1<rsub|X>|)>>|<cell|=>|<cell|<around*|(|1<rsub|X>+H|)><rsup|-1>-1<rsub|X>>>|<row|<cell|>|<cell|=>|<cell|1<rsub|X>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>-1<rsub|X>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|subserie
          property>>>>|<cell|-H+<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>>>>>
        </eqnarray*>

        giving\ 

        <\equation>
          <label|eq 12.76>\<tau\><around*|(|1<rsub|X>+H|)>-\<tau\><around*|(|1<rsub|X>|)>=-H+<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>
        </equation>

        As <math|1<rsub|X>+H\<in\>\<cal-G\>L<around*|(|X|)>> we have
        <math|1<rsub|X>+<big|sum><rsup|\<infty\>><rsub|i=1><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>\<in\>\<cal-G\>L<around*|(|X|)>\<subseteq\>L<around*|(|X,X|)>\<Rightarrowlim\><rsub|1<rsub|X>\<in\>L<around*|(|X,X|)>><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>\<in\>L<around*|(|X,X|)>\<Rightarrowlim\><rsub|H\<in\>L<around*|(|X,X|)>><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>=H+<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>\<in\>L<around*|(|X,X|)>>
        proving that\ 

        <\equation>
          <label|eq 12.77><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i>\<in\>L<around*|(|X,X|)>
        </equation>

        Then as <math|C<rsub|X,0>\<in\>L<around*|(|X,X|)>> we have using
        <reference|eq 12.77> that <math|\<varepsilon\><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,0>
        if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|n>\<cdot\>H<rsup|i>,H\<neq\>0>>>>>\<in\>L<around*|(|X,X|)>>.
        This defines then a function <math|\<varepsilon\>>

        <\equation>
          <label|eq 12.78>\<varepsilon\>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>=<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|1<rsub|X>,1|)>|)><rsub|1<rsub|X>>\<rightarrow\>L<around*|(|X,X|)>,
          \ H\<rightarrow\>\<varepsilon\><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|C<rsub|X,0>
          if H=0>>|<row|<cell|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|n>\<cdot\>H<rsup|i>,H\<neq\>0>>>>>
        </equation>

        So using <reference|eq 12.76> we have

        <\equation>
          <label|eq 12.79>\<tau\><around*|(|1<rsub|X>+H|)>-\<tau\><around*|(|1<rsub|X>|)>+<around*|(|-H|)>=\<varepsilon\><around*|(|H|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>
        </equation>

        As <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>1> we can use
        <reference|exaple of a convergent serie> and <reference|subserie
        property> we have that <math|<around*|\<\|\|\>|H|\<\|\|\>>+<big|sum><rsub|i=2><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>=<frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<Rightarrow\><big|sum><rsub|i=2><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>=<frac|<around*|\<\|\|\>|H|\<\|\|\>>-<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|(|1-<around*|\<\|\|\>|H|\<\|\|\>>|)>|1-<around*|\<\|\|\>|H|\<\|\|\>>>=<frac|<around*|\<\|\|\>|H|\<\|\|\>><rsup|2>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<Rightarrowlim\><rsub|<text|<reference|linear
        combination of convergent series>>><big|sum><rsub|i=2><rsup|\<infty\>><around*|\<\|\|\>|H|\<\|\|\>><rsup|i>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<frac|<around*|\<\|\|\>|H|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|1-<around*|\<\|\|\>|H|\<\|\|\>>>>.
        Now if <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>1,x\<in\>X>
        then as <math|\<forall\>i\<in\>\<bbb-N\>> we have that
        <math|<around*|\<\|\|\>|<around*|(|-1|)><rsup|n>\<cdot\>H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H<rsup|n><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>><rsup|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
        we can use <reference|convergent criteria of a serie in a Banach
        space> to prove that <math|<around*|\<\|\|\>|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>><rsup|2>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        so that <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|-1|)><rsup|i>\<cdot\>H<rsup|i><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
        giving that\ 

        <\equation>
          <label|eq 12.80><around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>|1-<around*|\<\|\|\>|H|\<\|\|\>>>
        </equation>

        Now given <math|\<xi\>\<gtr\>0> choose
        <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>min<around*|(|<frac|\<xi\>|2>,<frac|1|2>|)>>
        then <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>-0|\<\|\|\>>=<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>\<less\><frac|<frac|\<xi\>|2>|1-<frac|1|2>>=\<xi\>>
        proving that <math|\<varepsilon\>> is continuous at
        <math|0\<in\>L<around*|(|X,X|)>> and thus a
        <math|\<varepsilon\>>-mapping. Proving by <reference|alternative
        definition of differentiability (2)>, <reference|eq 12.79> that if
        <math|*-\<ast\>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
        is defined by <math|-\<ast\><around*|(|H|)>=-H> (which is trivially
        linear and continuous) we have that <math|\<tau\>> is differentiable
        at <math|1<rsub|X>> with <math|D\<tau\><rsub|><around*|(|1<rsub|X>|)>=-\<ast\>>
        so that <math|D\<tau\><around*|(|1<rsub|X>|)><around*|(|H|)>=-H=-<around*|(|1<rsub|X><rsup|-1>\<circ\>H\<circ\>1<rsub|X><rsup|-1>|)>>.

        <item>Next we prove that <math|\<tau\>> is differentiable at a
        arbitrary <math|L\<in\>\<cal-G\>L<around*|(|X|)>> with
        <math|D\<tau\><around*|(|L|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>.
        So take <math|\<delta\>=min<around*|(|<frac|1|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>,1|)>>
        then if <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\>> we have
        <math|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<less\>\<delta\>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>=<frac|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>\<leqslant\>1>
        proving by the previous corollary that

        <\equation>
          <label|eq 12.81>if H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>\<Rightarrow\>1<rsub|X>+H\<circ\>L<rsup|-1>\<in\>\<cal-G\>L<around*|(|X|)>.
        </equation>

        As <math|L\<in\>\<cal-G\>L<around*|(|X|)>> we have by <reference|eq
        12.81> that\ 

        <\equation>
          <label|eq 12.82>L+H=<around*|(|1<rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L\<in\>\<cal-G\>L<around*|(|X|)>
        </equation>

        or\ 

        <\equation>
          <label|eq 12.83>L\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>\<subseteq\>\<cal-G\>L<around*|(|X|)>
        </equation>

        So as also <math|\<delta\>\<less\>1> we have if
        <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>=<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>|)><rsub|L>\<Rightarrow\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<less\><frac|1|1+<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<leqslant\>1\<Rightarrow\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>>
        is defined, then

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<tau\><around*|(|L+H|)>-\<tau\><around*|(|H|)>>|<cell|=>|<cell|<around*|(|L+H|)><rsup|-1>-L<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|1<rsub|X>+H\<circ\>L<rsup|-1>|)>\<circ\>L|)>-L<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|1<rsub|X>+H\<circ\>L<rsup|-1>|)>-L<rsup|-1>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|<around*|(|1<rsub|X>+H\<circ\>L<rsup|-1>|)><rsup|-1>-1<rsub|X>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|\<tau\><around*|(|1<rsub|X>+H\<circ\>L<rsup|-1>|)>-\<tau\><around*|(|1<rsub|X>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|D\<tau\><around*|(|1<rsub|X>|)><around*|(|H\<circ\>L<rsup|-1>|)>+\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|)>>>|<row|<cell|>|<cell|=>|<cell|L<rsup|-1>\<circ\><around*|(|-<around*|(|H\<circ\>L<rsup|-1>|)>+\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|)>>>|<row|<cell|>|<cell|=>|<cell|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>+L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>>>>>
        </eqnarray*>

        giving\ 

        <\equation>
          <label|eq 12.84>\<tau\><around*|(|L+H|)>-\<tau\><around*|(|H|)>-<around*|(|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>|)>=L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>
        </equation>

        Given <math|H\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>=<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>|)><rsub|L>>
        define then <math|\<varepsilon\><rprime|'><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|0
        if H=0>>|<row|<cell|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
        if H\<neq\>0>>>>>>, note that as <math|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<in\>L<around*|(|X,X|)>>
        and <math|L<rsup|-1>\<in\>L<around*|(|X,X|)>> we can define a
        function <math|\<varepsilon\><rprime|'>> as follows

        <\equation>
          <label|eq 12.85>\<varepsilon\><rprime|'>:B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<delta\>|)>=<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|L,\<delta\>|)>|)><rsub|L>\<rightarrow\>L<around*|(|X,X|)>
          by \<varepsilon\><rprime|'><around*|(|H|)>=<choice|<tformat|<table|<row|<cell|0
          if H=0>>|<row|<cell|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>
          if H\<neq\>0>>>>>
        </equation>

        Define now <math|<around*|(|-L<rsup|-1>\<circ\>*\<ast\>\<circ\>L<rsup|-1>|)>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
        by <math|H\<rightarrow\><around*|(|-L<rsup|-1>\<circ\>*\<ast\>\<circ\>L<rsup|-1>|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>.
        So using the above and <reference|eq 12.84> we have that

        <\equation>
          <label|eq 12.86>\<tau\><around*|(|L+H|)>-\<tau\><around*|(|H|)>-<around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L|)><around*|(|H|)>=\<varepsilon\><rprime|'><around*|(|H|)>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>
        </equation>

        Next we prove that <math|<around*|(|-L<rsup|-1>\<circ\>*\<ast\>\<circ\>L<rsup|-1>|)>>
        is linear and continuous.

        <\proof>
          \ 

          <\enumerate>
            <item><dueto|linearity><math|<around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)><around*|(|\<alpha\>\<cdot\>H+\<beta\>\<cdot\>H<rprime|'>|)>=-L<rsup|-1>\<circ\><around*|(|\<alpha\>\<cdot\>H+\<beta\>\<cdot\>H<rprime|'>|)>\<circ\>L<rsup|-1>=\<alpha\>\<cdot\><around*|[|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>|]>+\<beta\>\<cdot\><around*|[|-L<rsup|-1>\<circ\>H<rprime|'>\<circ\>L<rsup|-1>|]>=\<alpha\>\<cdot\><around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)><around*|(|H|)>+\<beta\>\<cdot\><around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)><around*|(|H<rprime|'>|)>>

            <item><dueto|continuity>For <math|H\<in\>L<around*|(|X,X|)>> we
            have <math|<around*|\<\|\|\>|<around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)><around*|(|H|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|H|\<\|\|\>>>
            proving continuity
          </enumerate>

          \;
        </proof>

        Next we prove that <math|\<varepsilon\><rprime|'>> is continue at
        <math|0> and thus a <math|\<varepsilon\>>-mapping.\ 

        <\proof>
          If <math|\<xi\>\<gtr\>0> then as <math|\<varepsilon\>> is continue
          at <math|0> there exists a <math|\<delta\><rsub|1>\<gtr\>0> such
          that if <math|<around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\><rsub|1>>
          we have <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|H|)>|\<\|\|\>>\<less\><frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>>.
          So if <math|\<delta\><rsub|2>=<frac|\<delta\><rsub|1>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>+1>>
          then if <math|0\<less\><around*|\<\|\|\>|H|\<\|\|\>>\<less\>\<delta\><rsub|2>\<Rightarrow\><around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<less\>\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<leqslant\>\<delta\><rsub|1>\<Rightarrow\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<less\><frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>>
          so that <math|<around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>-\<varepsilon\><rprime|'><around*|(|0|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>-0|\<\|\|\>>=<around*|\<\|\|\>|\<varepsilon\><rprime|'><around*|(|H|)>|\<\|\|\>>=<around*|\<\|\|\>|L<rsup|-1>\<circ\>\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>\<cdot\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|H\<circ\>L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|H|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>|<around*|\<\|\|\>|H|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>=<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|\<varepsilon\><around*|(|H\<circ\>L<rsup|-1>|)>|\<\|\|\>>\<less\><around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>\<cdot\><frac|\<xi\>|<around*|\<\|\|\>|L<rsup|-1>|\<\|\|\>><rsup|2>+1>\<less\>\<xi\>>.
        </proof>

        The above together with <reference|eq 12.86> proves that
        <math|\<tau\>> is differentiable at <math|L> with
        <math|D\<tau\><around*|(|L|)>=<around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)>>
        so that <math|D\<tau\><around*|(|L|)><around*|(|H|)>=-L<rsup|-1>\<circ\>H\<circ\>L<rsup|-1>>.
      </enumerate>

      <item>Next to prove that <math|\<tau\>> is <math|C<rsup|\<infty\>>>
      define first the following functions:

      <\enumerate>
        <item>Define <math|\<chi\>:\<cal-G\>L<around*|(|X|)>\<rightarrow\>\<cal-G\>L<around*|(|X|)>\<times\>\<cal-G\>L<around*|(|X|)>>
        defined by <math|L\<rightarrow\>\<chi\><around*|(|L|)>=<around*|(|L,L|)>>
        then we have that \ <math|\<pi\><rsub|1>\<circ\>\<chi\>=1<rsub|\<cal-G\>L<around*|(|X|)>>>
        is <math|C<rsup|\<infty\>>> and <math|\<pi\><rsub|2>\<circ\>\<chi\>=1<rsub|\<cal-G\>L<around*|(|X|)>>>
        is <math|C<rsup|\<infty\>>> so that by <reference|C^n of multivalued
        functions> <math|\<chi\>> is <math|C<rsup|\<infty\>>>.

        <item>Define <math|\<rho\>:\<cal-G\>L<around*|(|X|)>\<times\>\<cal-G\>L<around*|(|X|)>\<rightarrow\>L<around*|(|L<around*|(|X,X|)>,L<around*|(|X,X|)>|)>>
        by <math|<around*|(|L,L<rprime|'>|)>\<rightarrow\><around*|(|-L\<circ\>\<ast\>\<circ\>L<rprime|'>|)>>
        where <math|<around*|(|-L\<circ\>*\<ast\>\<circ\>L<rprime|'>|)><around*|(|H|)>=-L\<circ\>H\<circ\>L<rprime|'>>
        then we have:

        <\enumerate>
          <item><dueto|bi linearity><math|\<forall\>H\<in\>L<around*|(|X,X|)>>
          we have <math|\<rho\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L|)><around*|(|H|)>=-<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>\<circ\>H\<circ\>L=\<alpha\>\<cdot\><around*|(|-L<rsub|1>\<circ\>H\<circ\>L|)>+\<beta\>\<cdot\><around*|(|-L<rsub|2>\<circ\>H\<circ\>L|)>=\<alpha\>\<cdot\>\<rho\>*<around*|(|L<rsub|1>,L|)><around*|(|H|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>,L|)><around*|(|H|)>=<around*|(|\<alpha\>\<cdot\>\<rho\>*<around*|(|L<rsub|1>,L|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>,L|)>|)><around*|(|H|)>>
          proving that <math|\<rho\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L|)>=\<alpha\>\<cdot\>\<rho\><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<rho\><around*|(|L<rsub|2>|)>>.
          <math|\<forall\>H\<in\>L<around*|(|X,X|)>> we have
          <math|\<rho\><around*|(|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|H|)>=-L\<circ\>H\<circ\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>\<equallim\><rsub|L,H
          is linear\<Rightarrow\>L\<circ\>H is
          linear>\<alpha\>\<cdot\><around*|(|-L\<circ\>H\<circ\>L<rsub|1>|)>+\<beta\>\<cdot\><around*|(|-L\<circ\>H\<circ\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)><around*|(|H|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)><around*|(|H|)>=<around*|(|\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)>|)><around*|(|H|)>>
          \ proving that <math|\<rho\><around*|(|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<rho\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<rho\><around*|(|L,L<rsub|2>|)>>.

          <item><dueto|continuity>If <math|<around*|(|L<rsub|1>,L<rsub|2>|)>\<in\>\<cal-G\>L<around*|(|X|)>\<times\>\<cal-G\>L<around*|(|X,X|)>>
          and <math|H\<in\>L<around*|(|X,X|)>> then we have
          <math|<around*|\<\|\|\>|\<rho\><around*|(|L<rsub|1>,L<rsub|2>|)><around*|(|H|)>|\<\|\|\>>=<around*|\<\|\|\>|-L<rsub|1>\<circ\>H\<circ\>L<rsub|2>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>
          proving that <math|<around*|\<\|\|\>|\<rho\><around*|(|L<rsub|1>,L<rsub|2>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>=1\<cdot\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>
          proving togheter with bi linearity <around*|(|thus
          multilinearity|)> that \<rho\>> is continuous \ with
          <math|<around*|\<\|\|\>|\<rho\>|\<\|\|\>>\<leqslant\>1>.
        </enumerate>

        Using <reference|continuous billinear functions are C^infinity> we
        have then that <math|\<rho\>> is <math|C<rsup|\<infty\>>>

        <item>Take now <math|\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>> and
        <math|L\<in\>\<cal-G\>L<around*|(|X|)>> then
        <math|<around*|(|\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>|)><around*|(|L|)>=\<rho\><around*|(|\<chi\><around*|(|\<tau\><around*|(|L|)>|)>|)>=\<rho\><around*|(|\<chi\><around*|(|L<rsup|-1>|)>|)>=\<rho\><around*|(|L<rsup|-1>,L<rsup|-1>|)>=<around*|(|-L<rsup|-1>\<circ\>\<ast\>\<circ\>L<rsup|-1>|)>=D\<tau\><around*|(|L|)>>
        thus <math|\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>=D\<tau\>>. We
        proceed now by induction so let <math|S=<around*|{|n\<in\>\<bbb-N\>\|\<tau\>
        is C<rsup|n>|}>> then we have:

        <\enumerate>
          <item>If <math|n=1>, as <math|\<tau\>> is differentiable at every
          <math|L\<in\>\<cal-G\>L<around*|(|X|)>> we have that <math|\<tau\>>
          is continuous at every <math|L\<in\>\<cal-G\>L<around*|(|X|)>> and
          thus as <math|\<chi\>,\<rho\>> are <math|C<rsup|\<infty\>>> and
          thus continuous we have that <math|D\<tau\>=\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>>
          is continuous, proving that <math|\<tau\>=C<rsup|1>> so that
          <math|1\<in\>S>.

          <item>Assume now that <math|n\<in\>S> then <math|\<tau\>> is
          <math|C<rsup|n>> so that by the Chain Rule and the fact that
          <math|\<chi\>,\<rho\>-C<rsup|\<infty\>>> so that
          <math|D\<tau\>=\<rho\>\<circ\>\<chi\>\<circ\>\<tau\>> is
          <math|C<rsup|n>> proving by <reference|if f is C^n then D^1f is
          C^n-1> that <math|\<tau\>> is <math|C<rsup|n+1>>.
        </enumerate>

        By mathematical induction we have that <math|S=\<bbb-N\>> and thus
        <math|\<tau\>=C<rsup|\<infty\>>>
      </enumerate>
    </enumerate>
  </proof>

  \;

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open set then a bijective function <math|f:U\<rightarrow\>V> \ is a
    diffeomorphism (of class <math|C<rsup|r>>,
    <math|r\<in\>\<bbb-N\><rsub|0>>) if and only if
    <math|f:U\<rightarrow\>V,f<rsup|-1>:V\<rightarrow\>U> are differentiable
    on <math|U,V> [of class <math|C<rsup|r>\<nocomma\>\<nocomma\>>,
    <math|r\<in\>\<bbb-N\><rsub|0>>]
  </definition>

  <\example>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then a homeomorphism <math|f:X\<rightarrow\>Y> is a
    diffeomorphism of class <math|C<rsup|0>>.
  </example>

  <\note>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open and a function <math|f:U\<rightarrow\>V> then using
    \ \ <reference|characterization of a bijective mapping> we have that
    <math|f> is a diffeomorphism [of class <math|C<rsup|r>>] if and only if
    <math|f> is differentiable [of class <math|C<rsup|r>>] and there exists a
    function <math|g:V\<rightarrow\>U> such that <math|g> is differentiable
    [of class <math|C<rsup|r>>] and <math|f\<circ\>g=1<rsub|V>> and
    <math|g\<circ\>f=1<rsub|U>>.\ 
  </note>

  <\theorem>
    <label|diffeomorphism are toplinear>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> a open set, <math|V\<subseteq\>Y>
    a open set and <math|f:U\<rightarrow\>V> a diffeomorphism and
    <math|g=f<rsup|-1>:V\<rightarrow\>U> then if we take <math|x\<in\>U> with
    <math|y=f<around*|(|x|)>> we have <math|Dg<around*|(|y|)>\<circ\>Df<around*|(|x|)>=1<rsub|X>>
    and <math|Df<around*|(|x|)>\<circ\>Dg<around*|(|y|)>=1<rsub|Y>> proving
    that <math|Df<around*|(|x|)>> and <math|Dg<around*|(|y|)>> are top-linear
    isomorphisms.
  </theorem>

  <\proof>
    Let <math|y=f<around*|(|x|)>\<Rightarrow\>g<around*|(|y|)>=x> then we
    have

    <\enumerate>
      <item>From <math|f\<circ\>g=1<rsub|V>> and
      <math|1<rsub|Y>=D1<rsub|V><around*|(|x|)>=D<around*|(|f\<circ\>g|)><around*|(|y|)>=Df<around*|(|g<around*|(|y|)>|)>\<circ\>Dg<around*|(|y|)>=Df<around*|(|x|)>\<circ\>Dg<around*|(|y|)>>

      <item>From <math|g\<circ\>f=1<rsub|U>> and
      <math|1<rsub|X>=D1<rsub|U><around*|(|x|)>=D<around*|(|g\<circ\>f|)><around*|(|x|)>=Dg<around*|(|f<around*|(|x|)>|)>\<circ\>Df<around*|(|x|)>=Dg<around*|(|y|)>\<circ\>Df<around*|(|x|)>>
    </enumerate>
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
    As <math|f\<circ\>g> is a bijection with
    <math|<around*|(|f\<circ\>g|)><rsup|-1>=g<rsup|-1>\<circ\>f<rsup|-1>>
    (see <reference|properties of composition of functions>) we have by the
    Chain Rule (see <reference|generalized chain rule>).
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces, <math|U\<subseteq\>X> then a function
    <math|f:U\<rightarrow\>Y> is a local diffeomorphism [of class
    <math|C<rsup|r>>] at <math|x\<in\>U> if there exists a open set
    <math|U<around*|(|x|)>\<subseteq\>U,V<around*|(|f<around*|(|x|)>|)>\<subseteq\>Y>
    with <math|x\<in\>U<around*|(|x|)>\<subseteq\>U>,
    <math|f<around*|(|x|)>\<subseteq\>V<around*|(|f<around*|(|x|)>|)>> and
    <math|f<rsub|\|U<around*|(|x|)>>:U<around*|(|x|)>\<rightarrow\>V<around*|(|f<around*|(|x|)>|)>>
    is a diffeomorphism [of class <math|C<rsup|r>>]
  </definition>

  We state now the Inverse function theorem

  <\theorem>
    <label|inverse function theorem><index|inverse function
    theorem><dueto|The Inverse Function Theorem>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|Y>|\<\|\|\>>|\<rangle\>>>
    be Banach spaces over <math|\<bbb-R\>>, <math|U\<subseteq\>X> an open
    set, <math|f:U\<rightarrow\>Y> a differentiable function of class
    <math|C<rsup|r>>, <math|r\<in\>\<bbb-N\>>. Assume that for a
    <math|x<rsub|0>\<in\>U> we have that <math|Df<around*|(|x<rsub|0>|)>:X\<rightarrow\>Y>
    is a isomorphism then <math|f> is a local diffeomorphism of class
    <math|C<rsup|r>> at <math|x<rsub|0>>. In other words there exists open
    sets <math|U<around*|(|x<rsub|0>|)>\<subseteq\>U\<subseteq\>X>,
    <math|V<around*|(|f<around*|(|x<rsub|0>|)>|)>\<subseteq\>Y> with
    <math|x<rsub|0>\<in\>U<around*|(|x<rsub|0>|)>>,
    <math|f<around*|(|x<rsub|0>|)>\<subseteq\>V<around*|(|f<around*|(|x<rsub|0>|)>|)>>
    such that <math|f<rsub|\|U<around*|(|x<rsub|0>|)>>:U<around*|(|x<rsub|0>|)>\<rightarrow\>V<around*|(|f<around*|(|x<rsub|0>|)>|)>>
    is a diffeomorphism.
  </theorem>

  <\proof>
    The proof is quite long and is done by proving several propositions.
    First note that by the definition of the differential (see
    <reference|differential of a function>) we have that
    <math|Df<around*|(|x<rsub|0>|)>> \ is a linear continuous isomorphism so
    by <reference|in Banach spaces linear continuous mappings are toplinear>
    and the fact that <math|X,Y> are Banach spaces we have that

    <\equation>
      <label|eq 12.87>Df<around*|(|x<rsub|0>|)> is a toplinear isomorphism
    </equation>

    First we prove a more specific version of the the Inverse Function
    Theorem.

    <\proposition>
      <label|inverse theorem for Df(0)=1X>Let
      <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      be a Banach space over <math|\<bbb-R\>>, <math|0\<in\>U\<subseteq\>X>
      an open set <math|f:U\<rightarrow\>X> a differentiable function of
      class <math|C<rsup|r>,r\<in\>\<bbb-N\>> such that
      <math|Df<around*|(|0|)>=1<rsub|X>> and <math|f<around*|(|0|)>=0> then
      <math|f> is a is a local diffeomorphism at <math|0>.
    </proposition>

    <\proof>
      Define <math|T:U\<rightarrow\>X> by
      <math|x\<rightarrow\>T<around*|(|x|)>=1<rsub|X><around*|(|x|)>-f<around*|(|x|)>>
      then <math|T<around*|(|0|)>=0> and <math|T> is of class
      <math|C<rsup|r>> (as it is the sum of a <math|C<rsup|\<infty\>>> and a
      <math|C<rsup|r>> function (see <reference|sum of C^n functions is
      C^n>)) so

      <\equation>
        <label|eq 12.88>D<rsup|1>T is continuous on U
      </equation>

      Next <math|D<rsup|1>T<around*|(|0|)>\<equallim\><rsub|<text|<reference|sum
      of C^n functions is C^n>>>D<rsup|1>1<rsub|X><around*|(|0|)>-D<rsup|1>f<around*|(|0|)>=1<rsub|X>-1<rsub|X>=0>
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
      <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>*<around*|(|0,\<rho\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,\<rho\><rprime|'>|)>\<subseteq\>U>
      so that we have\ 

      <\equation>
        <label|eq 12.90>if <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>\<rho\>
        \ <around*|(|or x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|)>
        then <around*|\<\|\|\>|D<rsup|1>T<around*|(|x|)>|\<\|\|\>>\<less\><frac|1|2>\<less\>1
      </equation>

      Now as <math|D<rsup|1>T<around*|(|x|)>=1<rsub|X>-D<rsup|1>f<around*|(|x|)>\<Rightarrow\>D<rsup|1>f<around*|(|x|)>=1<rsub|X>-D<rsup|1>T<around*|(|x|)>>
      we can apply <reference|i-H has inverse if norm of H is lower then 1>
      to get\ 

      <\equation>
        <label|eq 12.9>If <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>\<rho\>
        <around*|(|or x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|)>
        then D f<around*|(|x|)> is a toplinear isomorphism
      </equation>

      Now using the fact that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
      is convex (see <reference|balls are convex>) and the fundamental
      theorem of calculus (see <reference|Mean value theorem 2>) together
      with <reference|eq 12.90> we find that <math|>if
      <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      then <math|<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|T<around*|(|x|)>-T<around*|(|0|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x-0|\<\|\|\>><rsub|X>=<frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      giving

      <\equation>
        <label|eq 12.92>If x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>
        then <around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>
      </equation>

      Next we prove the following proposition.

      <\proposition>
        <label|proposition 12.116>Let <math|0\<less\>\<sigma\>\<leqslant\>\<rho\>>
        then <math|\<forall\>y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,<frac|\<sigma\>|2>|)>>
        there exists a unique determined <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        such that <math|f<around*|(|x|)>=y>
      </proposition>

      <\proof>
        First note that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>,<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<sigma\>|2>|)>>
        are closed (see <reference|closed balls are closed>) and thus by
        <reference|closed subset of a complete space is complete> and the
        completeness of <math|X> is complete. Define now
        <math|T<rsub|y>=C<rsub|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>,y>+T:<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<rightarrow\>X>
        by <math|x\<rightarrow\>T<rsub|y><around*|(|x|)>=y+T<around*|(|x|)>=y+1<rsub|X><around*|(|x|)>-f<around*|(|x|)>=y+x-f<around*|(|x|)>>.
        If <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        so that <math|<around*|\<\|\|\>|T<rsub|y><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y+T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<sigma\>|2>|)>><frac|\<sigma\>|2>+<around*|\<\|\|\>|T<around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\><rsub|<text|<reference|eq
        12.92>>><frac|\<sigma\>|2>+<frac|x|2>\<leqslant\><frac|\<sigma\>|2>+<frac|\<sigma\>|2>=\<sigma\><rsub|>>
        giving\ 

        <\equation>
          <label|eq 12.93>x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<Rightarrow\><around*|\<\|\|\>|T<rsub|y><around*|(|x|)>|\<\|\|\>><rsub|X>\<leqslant\>\<sigma\>
        </equation>

        Note that <math|T<rsub|y>> is <math|C<rsup|r>> as it is the sum of
        the <math|C<rsup|\<infty\>>> function
        <math|C<rsub|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>>
        and the <math|C<rsup|r> >function <math|T> with
        <math|D<rsup|1>T<rsub|y>=0+D<rsup|1>T=D<rsup|1>T> so that by
        <reference|eq 12.90> we have <math|\<forall\>x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        that <math|D<rsup|1>T<rsub|y><around*|(|x|)>\<less\><frac|1|2>> so
        that using <reference|Mean value theorem 2> we have\ 

        <\equation>
          <label|eq 12.94>\<forall\>x<rsub|1>,x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>
          we have <around*|\<\|\|\>|T<rsub|y><around*|(|x<rsub|1>|)>-T<rsub|y><around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>
        </equation>

        proving that <math|T<rsub|y>> is a contraction (see
        <reference|contraction>). Using the Banach Fixed Point theorem (see
        <reference|the Banach Fixed Point Theorem>) and the fact that
        <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        is complete there exists a unique
        <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\>|)>>
        such that <math|T<rsub|y><around*|(|x|)>=x\<Leftrightarrow\>x=y+x-f<around*|(|x|)>\<Leftrightarrow\>y=f<around*|(|x|)>>
        proving the proposition.
      </proof>

      Define now\ 

      <\equation>
        <label|eq 12.95>Given \<chi\>\<gtr\>0 define
        0\<in\>U<rsub|\<chi\>>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)><big|cap>f<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>
        a open set <around*|(|as f is cont.|)>
      </equation>

      \ We can then prove the following proposition

      <\proposition>
        There exists a <math|\<chi\>> with
        <math|0\<less\>\<chi\>\<less\>\<rho\>> such that
        <math|f<rsub|\|U<rsub|\<chi\>>>:U<rsub|\<chi\>>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        is a bijective function.
      </proposition>

      <\proof>
        Take <math|\<chi\>=<frac|\<rho\>|2>> then
        <math|0\<less\>\<chi\>\<less\>\<rho\>> and we have\ 

        <\enumerate>
          <item><dueto|Surjectivity>Using the previous proposition
          (<reference|proposition 12.116>) we have if
          <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
          that there exists a unique <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          such that <math|f<around*|(|x|)>=y>. We prove now by contradiction
          that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>\<chi\>>.
          [So assume that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<cal-X\>>
          take then <math|\<varepsilon\>=<frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>\<gtr\>0>
          then by the continuity of <math|f> (as <math|f> is
          <math|C<rsup|r>>) there exists a <math|\<tau\><rprime|'>\<gtr\>0>
          such that if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<tau\><rprime|'>>
          then <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>.
          Take now <math|\<tau\>=min<around*|(|\<tau\><rprime|'>,<frac|\<rho\>|4>|)>>
          and <math|x<rsub|1>=x\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>>
          then we have <math|<around*|\<\|\|\>|x<rsub|1>-x|\<\|\|\>><rsub|X>=<frac|\<tau\>|\<chi\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<tau\>\<less\>\<tau\><rprime|'>>
          so that <math|<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>><rsub|X>\<less\><frac|\<chi\>|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|y|\<\|\|\>><rsub|X>=<frac|\<chi\>|2>\<Rightarrow\>f<around*|(|x<rsub|1>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
          which as <math|0\<less\>\<chi\>\<less\>\<rho\>> means that by the
          previous proposition there exists a
          <math|x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          such that <math|f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>>.
          As <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>=\<chi\>+\<tau\>\<less\><frac|\<rho\>|2>+<frac|\<rho\>|4>=<frac|3|4>\<cdot\>\<rho\>\<less\>\<rho\>>
          giving

          <\equation>
            <label|eq 12.96>x<rsub|1>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>
          </equation>

          As <math|x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>=<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
          giving\ 

          <\equation>
            <label|eq 12.97>x<rsub|2>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>
          </equation>

          Also <math|f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>=<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>>
          proving\ 

          <\equation>
            <label|eq 12.98>f<around*|(|x<rsub|1>|)>=f<around*|(|x<rsub|2>|)>\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<rho\>|2>|)>
          </equation>

          Using the fact that <math|0\<less\>\<rho\>\<leqslant\>\<rho\>>,
          <reference|eq 12.97>, <reference|eq 12.98> the previous proposition
          (especially the uniqueness) we reach the conclusion
          <math|x<rsub|1>=x<rsub|2>> but then
          <math|<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\>\<chi\>\<less\>\<chi\>\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>=<around*|\<\|\|\>|x\<cdot\><around*|(|1+<frac|\<tau\>|\<chi\>>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>>
          contradicting <math|x<rsub|1>=x<rsub|2>>.]. So as
          <math|<around*|\<\|\|\>|x<rsub|>|\<\|\|\>><rsub|X>\<neq\>\<chi\>>
          and <math|x\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          we must have that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<Rightarrowlim\><rsub|f<around*|(|x|)>=y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>x\<in\>U\<chi\>>
          proving surjectivity.\ 

          <item><dueto|Injectivity>Assume that there exists a
          <math|x<rsub|1>,x<rsub|2>\<in\>U<rsub|\<chi\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>>
          which as <math|f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>\<in\>f<around*|(|U<rsub|\<chi\>>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
          which by the previous proposition we have
          <math|x<rsub|1>=x<rsub|2>>.
        </enumerate>
      </proof>

      Now by the above proposition we have a <math|\<chi\>> with
      <math|0\<less\>\<chi\>\<less\>\<rho\>> such that
      <math|f<rsub|\|U<rsub|X>>:U<rsub|X>\<rightarrow\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      is a bijection. By the bijectivity the function
      <math|g=<around*|(|f<rsub|\|U<rsub|\<chi\>>>|)><rsup|-1>:B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>\<rightarrow\>U<rsub|\<chi\>>>
      will then exists.

      <\proposition>
        <label|proposition 12.118><math|g> is continuous on
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      </proposition>

      <\proof>
        If <math|x\<in\>U<rsub|\<chi\>>\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        a convex set then <math|x=x-f<around*|(|x|)>+f<around*|(|x|)>=T<around*|(|x|)>+f<around*|(|x|)>>
        so if <math|x<rsub|1>,x<rsub|2>\<in\>U<rsub|\<chi\>>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>>|<cell|=>|<cell|<around*|\<\|\|\>|T<around*|(|x<rsub|1>|)>+f<around*|(|x<rsub|1>|)>-T<around*|(|x<rsub|2>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|T<around*|(|x<rsub|1>|)>-T<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>>>>
        </eqnarray*>

        so that by using <reference|eq 12.90>, the convexity of
        <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>>
        and the mean value theorem (see <reference|Mean value theorem 2>) we
        have <math|<around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\><frac|1|2>\<cdot\><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>>
        so that we have\ 

        <\equation>
          <label|eq 12.99><around*|\<\|\|\>|x<rsub|1>-x<rsub|2>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\<\|\|\>><rsub|X>
        </equation>

        If now <math|y<rsub|1>,y<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        then <math|g<around*|(|y<rsub|1>|)>,g<around*|(|y<rsub|2>|)>\<in\>U<rsub|\<chi\>>>
        and we have using <reference|eq 12.99> that
        <math|<around*|\<\|\|\>|g<around*|(|y<rsub|1>|)>-g<around*|(|y<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|f<around*|(|g<around*|(|y<rsub|1>|)>|)>-f<around*|(|g<around*|(|y<rsub|2>|)>|)>|\<\|\|\>><rsub|X>=2\<cdot\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>><rsub|X>>
        giving\ 

        <\equation>
          <label|eq 12.100><around*|\<\|\|\>|g<around*|(|y<rsub|1>|)>-g<around*|(|y<rsub|2>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|y<rsub|1>-y<rsub|2>|\<\|\|\>>
        </equation>

        So if <math|\<varepsilon\>\<gtr\>0> and
        <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        then for all <math|y<rprime|'>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        with <math|<around*|\<\|\|\>|y-y<rprime|'>|\<\|\|\>><rsub|X>\<less\><frac|\<varepsilon\>|2>>
        we have <math|<around*|\<\|\|\>|g<around*|(|y|)>-g<around*|(|y<rprime|'>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><frac|\<varepsilon\>|2>=\<varepsilon\>>
        proving that <math|g> is continuous on
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>.
      </proof>

      Next we prove that <math|g> is differentiable.\ 

      <\proposition>
        <math|g> is differentiable on <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        and <math|Dg<around*|(|y|)>=<around*|(|Df<around*|(|g<around*|(|y|)>|)>|)><rsup|-1>>
      </proposition>

      <\proof>
        Now if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        we have that <math|g<around*|(|y|)>\<in\>U<rsub|\<chi\>>\<Rightarrowlim\><rsub|<text|<reference|eq
        12.95>>>g<around*|(|y|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<chi\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>\<subseteq\>U>
        we have by <reference|eq 12.9> that
        <math|Df<around*|(|g<around*|(|y|)>|)>> is a top-linear isomorphism
        so that <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>> is
        continuous and linear. Take now <math|h\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)><rsub|y>\<Rightarrow\>y+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
        let\ 

        <\equation>
          <label|eq 12.101>k=g<around*|(|y+h|)>-g<around*|(|y|)>
        </equation>

        then <math|k+g<around*|(|y|)>=g<around*|(|y+h|)>\<in\>g<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)>=U<rsub|\<chi\>>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|\<chi\>>><around*|(|0,\<rho\>|)>\<subseteq\>U\<Rightarrow\>k\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<rho\>|)>|)><rsub|g<around*|(|y|)>>\<subseteq\>U<rsub|g<around*|(|y|)>>>
        and as <math|f> is differentiable at <math|g<around*|(|y|)>> there
        exists a <math|\<varepsilon\>>-mapping
        <math|\<zeta\>:U<rsub|g<around*|(|y|)>>\<rightarrow\>X> such that\ 

        <\equation>
          <label|eq 12.102>f<around*|(|g<around*|(|y|)>+k|)>-f<around*|(|g<around*|(|y|)>|)>-Df<around*|(|g<around*|(|y|)>|)><rsup|><around*|(|k|)>=\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>
        </equation>

        So using <math|f<around*|(|g<around*|(|y|)>+k|)>=f<around*|(|g<around*|(|y+h|)>|)>=y+h>
        and <math|f<around*|(|g<around*|(|y|)>|)>=y> and thus
        <math|f<around*|(|g<around*|(|y|)>+k|)>-f<around*|(|g<around*|(|y|)>|)>=h>
        we find that

        <\equation>
          <label|eq 12.103>h=Df<around*|(|g<around*|(|y|)>|)><around*|(|k|)>+\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>
        </equation>

        Applying <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>> to both
        sides of <reference|eq 12.103> and using linearity we have
        <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|Df<around*|(|g<around*|(|y|)>|)><around*|(|k|)>+\<zeta\><around*|(|k|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>|)>=Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|Df<around*|(|g<around*|(|y|)>|)><around*|(|k|)>|)>+Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>>
        giving <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=k+Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>=g<around*|(|y+h|)>-g<around*|(|y|)>+Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>>.
        So we have\ 

        <\equation>
          <label|eq 12.104>Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=g<around*|(|y+h|)>-g<around*|(|y|)>+Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|k|)>|)>\<cdot\><around*|\<\|\|\>|k|\<\|\|\>><rsub|X>
        </equation>

        giving\ 

        <\equation>
          <label|eq 12.105>g<around*|(|y+h|)>-g<around*|(|y|)>-Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=-Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>\<cdot\><around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>
        </equation>

        Define now given <math|\<varepsilon\>:<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>|)><rsub|y>\<rightarrow\>X>
        where <math|h\<rightarrow\>\<varepsilon\><around*|(|h|)>=<choice|<tformat|<table|<row|<cell|0
        if h=0>>|<row|<cell|-Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>\<cdot\><frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>
        if h\<neq\>0>>>>>>then we have that\ 

        <\equation>
          <label|eq 12.106>g<around*|(|y+h|)>-g<around*|(|y|)>-Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|h|)>=\<varepsilon\><around*|(|h|)>\<cdot\><around*|\<\|\|\>|h|\<\|\|\>><rsub|X>
        </equation>

        Note that in the proof of the previous proposition (see <reference|eq
        12.100>) we have <math|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|y+h-y|\<\|\|\>><rsub|X>=2*\|<around*|\||h|\|>>
        hence if <math|h\<neq\>0> then\ 

        <\equation>
          <label|eq 12.107><frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<leqslant\>2
        </equation>

        So let <math|\<gamma\>\<less\>0> then by continuity of
        <math|\<zeta\>> at <math|0> there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\<\|\|\>|\<zeta\><around*|(|z|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>>.
        By continuity of <math|g> at <math|y> there exists a
        <math|\<delta\><rprime|''>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|''>>
        then <math|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|'>>
        and thus we have\ 

        <\equation>
          <label|eq 12.108>Given\<gamma\>\<gtr\>0 there exists a
          \<delta\><rprime|''>\<gtr\>0 such that
          <around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|''>
          then <around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>
        </equation>

        If now <math|\<gamma\>\<gtr\>0> find then by <reference|eq 12.108> a
        <math|\<delta\><rprime|''>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>\<less\>\<delta\><rprime|''>>
        then \ <math|<around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|X>\<less\><frac|\<gamma\>|2\<cdot\><around*|(|<around*|\<\|\|\>|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>+1|)>>>
        so that <math|<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>-\<varepsilon\><around*|(|0|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varepsilon\><around*|(|h|)>|\<\|\|\>><rsub|X>=<frac|<around*|\<\|\|\>|g<around*|(|y+h|)>-g<around*|(|y|)>|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|-Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|Df<around*|(|g<around*|(|y|)>|)><rsup|-1><around*|(|\<zeta\><around*|(|g<around*|(|y+h|)>-g<around*|(|y|)>|)>|)>|\<\|\|\>><rsub|X>\<leqslant\>2\<cdot\><around*|\<\|\|\>|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|\<zeta\><around*|(|h|)>|\<\|\|\>><rsub|X>\<less\>\<gamma\>>
        proving that <math|\<varepsilon\>> is continuous at <math|0> and thus
        a <math|\<varepsilon\>>-mapping. This together with the linearity
        ,continuity of <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>> and
        <reference|eq 12.106> we have that <math|g> is differentiable at
        <math|y> with differential <math|Df<around*|(|g<around*|(|y|)>|)><rsup|-1>=Dg<around*|(|y|)>>.
      </proof>

      If we take then <math|\<tau\>:L<around*|(|X,X|)>\<rightarrow\>L<around*|(|X,X|)>>
      defined by <math|L\<rightarrow\>\<tau\><around*|(|L|)>=L<rsup|-1>> (see
      <reference|inverse mapping is c-infinite>) then we have if
      <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<chi\>|2>|)>>
      that <math|<around*|(|\<tau\>\<circ\>Df\<circ\>g|)><around*|(|y|)>=\<tau\><around*|(|Df<around*|(|g<around*|(|y|)>|)>|)>=Df<around*|(|g<around*|(|y|)>|)><rsup|-1>=Dg<around*|(|y|)>>
      proving that\ 

      <\equation>
        <label|eq 12.109>\<tau\>\<circ\>Df\<circ\>g=Dg
      </equation>

      Let's use induction to prove that <math|g> is <math|C<rsup|r>>, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\>\|if n\<leqslant\>r then g is
      C<rsup|n>|}>> then we have\ 

      <\enumerate>
        <item>If <math|n=1> then \ using <reference|inverse mapping is
        c-infinite> we have that <math|\<tau\>> is <math|C<rsup|\<infty\>>>
        and thus <math|\<tau\>> is continuous, by assumption <math|Df> is
        continuous and we have proved that <math|g> is continuous (see
        <reference|proposition 12.118>) so we must have that <math|Dg> is
        continuous, proving that <math|g> is <math|C<rsup|1>> and thus that
        <math|1\<in\>S>.

        <item>If <math|n\<in\>S> then if <math|n+1\<leqslant\>r> we have that
        <math|g> is <math|C<rsup|n>,> <math|\<tau\>> is
        <math|C<rsup|\<infty\>>> and <math|f> is <math|C<rsup|r>> so that
        <math|Dg=\<tau\>\<circ\>Df\<circ\>g> is <math|C<rsup|n>> so that
        <math|g> is <math|C<rsup|n+1>> proving that <math|n+1\<in\>S>
      </enumerate>

      Using induction we have then that <math|S=\<bbb-N\>> so as
      <math|r\<in\>\<bbb-N\>=S> and <math|r\<leqslant\>r> we have <math|g> is
      <math|C<rsup|r>>. This proves that <math|f> is a local <math|C<rsup|r>>
      diffeomorphism at <math|0> and thus proves this proposition (see
      <reference|inverse theorem for Df(0)=1X>).

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
      local diffeomorphism of class <math|C<rsup|r>> at <math|x<rsub|0>>.
    </proposition>

    <\proof>
      As \ <math|Df<around*|(|0|)>> is continuous and linear and a
      isomorphism we have by <reference|in Banach spaces linear continuous
      mappings are toplinear> that <math|Df<around*|(|0|)>> is top-linear so
      that <math|Df<around*|(|0|)><rsup|-1>:Y\<rightarrow\>X> is defined,
      linear and continuous and thus by <reference|linear continuous mappings
      are C^infinity> is <math|C<rsup|\<infty\>>>. Define then
      <math|h=Df<around*|(|0|)><rsup|-1>\<circ\>f:U\<rightarrow\>X> which is
      is differentiable on <math|U> of class <math|C<rsup|r>>. Then
      <math|h<around*|(|0|)>=Df<around*|(|0|)><rsup|-1><around*|(|f<around*|(|0|)>|)>=Df<around*|(|0|)><rsup|-1><around*|(|0|)>\<equallim\><rsub|linearity>0>,
      also <math|Dh<around*|(|0|)>=D<around*|(|Df<around*|(|0|)><rsup|-1>|)><around*|(|f<around*|(|0|)>|)>\<circ\>Df<around*|(|0|)>=Df<around*|(|0|)><rsup|-1>\<circ\>Df<around*|(|0|)>=1<rsub|X>>.
      So by <reference|inverse theorem for Df(0)=1X> there exists
      <math|U<around*|(|0|)>,V<rprime|'><around*|(|0|)>> open in <math|X>
      with <math|0\<in\>U<around*|(|0|)>,0\<in\>V<rprime|'><around*|(|0|)>>
      such that <math|h<rsub|\|U<around*|(|0|)>>:U<around*|(|0|)>\<rightarrow\>V<rprime|'><around*|(|0|)>>
      is a diffeomorphism of class <math|C<rsup|r>>. As
      <math|Df<around*|(|0|)>> is continuous and linear it is
      <math|C<rsup|\<infty\>>> so also <math|Df<around*|(|0|)><rsub|\|V<rprime|'><around*|(|0|)>>:V<rprime|'><around*|(|0|)>\<rightarrow\>Df<around*|(|0|)><around*|(|V<rprime|'><around*|(|0|)>|)>=V<around*|(|0|)>>
      is <math|C<rsup|\<infty\>>> and is isomorphic thus top-linear. as
      <math|0\<in\>V<rprime|'><around*|(|0|)>> and
      <math|Df<around*|(|0|)><rsub|\|V<rprime|'><around*|(|0|)>><around*|(|0|)>=Df<around*|(|0|)><around*|(|0|)>\<equallim\><rsub|linearity>0\<Rightarrow\>0\<in\>V<around*|(|0|)>>,
      as <math|Df<around*|(|0|)><rsub|\|V<rprime|'><around*|(|0|)>>> is
      top-linear (and thus open) we have that <math|0\<in\>V<around*|(|0|)>>
      is open. Take now <math|g=Df<around*|(|0|)><rsub|\|V<rprime|'><around*|(|0|)>>\<circ\>h<rsub|\|U<around*|(|0|)>>:U<around*|(|0|)>\<rightarrow\>V<around*|(|0|)>>
      then as it is a composition of diffeomorphism of class <math|C<rsup|r>>
      it is a diffeomorphism of class <math|C<rsup|r>> (see
      <reference|composition of diffeomorphism is a diffeomorphism>). If now
      <math|x\<in\>U<around*|(|0|)>> then we have
      <math|g<around*|(|x|)>=Df<around*|(|0|)><rsub|\|V<rprime|'><around*|(|0|)>><around*|(|h<rsub|<around*|\||U<around*|(|0|)>|\|>><around*|(|0|)>|)>=Df<around*|(|0|)><around*|(|Df<around*|(|0|)><rsup|-1><around*|(|f<around*|(|x|)>|)>|)>=f<around*|(|x|)>>
      so that <math|f<rsub|\|U<around*|(|0|)>>=g> and thus
      <math|f<rsub|\|U<around*|(|0|)>>:U<around*|(|0|)>\<rightarrow\>V<around*|(|0|)>>
      is a diffeomorphism of class <math|C<rsup|r>>
    </proof>

    Finally we extend the above proposition to the general case where
    <math|f<around*|(|0|)>\<neq\>0> so lets repeat the Inverse Function
    Theorem

    <\proposition>
      Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
      <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|<rsub|Y>|\<\|\|\>>|\<rangle\>>>
      be Banach spaces over <math|\<bbb-R\>>, <math|U\<subseteq\>X> an open
      set, <math|f:U\<rightarrow\>Y> a differentiable function of class
      <math|C<rsup|r>>, <math|r\<in\>\<bbb-N\>>. Assume that for a
      <math|x<rsub|0>\<in\>U> we have that <math|D
      f<around*|(|x<rsub|0>|)>:X\<rightarrow\>Y> is a isomorphism then
      <math|f> is a local diffeomorphism of class <math|C<rsup|r>> at
      <math|x<rsub|0>>.
    </proposition>

    <\proof>
      First given <math|y\<in\>Y> \ define
      <math|t<rsup|Y><rsub|y>:Y\<rightarrow\>Y> defined by
      <math|x\<rightarrow\>x+y> which is trivially a <math|C<rsup|\<infty\>>>
      diffeomorphism with <math|Dt<rsup|Y><rsub|y>=1<rsub|Y>> and
      <math|<around*|(|t<rsup|<rsub|>Y><rsub|y>|)><rsup|-1>=t<rsup|Y><rsub|-y>>,
      also <math|t<rsup|X><rsub|y>:X\<rightarrow\>X> defined by
      <math|x\<rightarrow\>x+y> is a <math|C<rsup|\<infty\>>> diffeomorphism
      with <math|Dt<rsup|X><rsub|y>=1<rsub|X>> and
      <math|<around*|(|t<rsup|X><rsub|y>|)><rsup|-1>=t<rsup|X><rsub|-y>>.
      Consider then <math|h=t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>>\<circ\>f\<circ\>t<rsup|X><rsub|x<rsub|0>>:t<rsup|X><rsub|x<rsub|0>><around*|(|U|)>\<rightarrow\>Y>
      then <math|h:t<rsup|X><rsub|x<rsub|0>><around*|(|U|)>\<rightarrow\>Y>
      is a <math|C<rsup|r>> differentiable function of class <math|C<rsup|r>>
      with <math|h<around*|(|0|)>=t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>|)>|)>=t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x<rsub|0>+0|)>|)>=t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|x<rsub|0>|)>|)>=f<around*|(|x<rsub|0>|)>-f<around*|(|x<rsub|0>|)>=0>.
      So we can use the previous proposition (see <reference|proposition
      12.120>) to find open sets <math|U<rprime|'><around*|(|0|)>\<subseteq\>X,V<rprime|'><around*|(|0|)>\<subseteq\>Y>
      with <math|0\<in\>U<rprime|'><around*|(|0|)>,0\<in\>V<rprime|'><around*|(|0|)>>
      such that <math|h<rsub|\|U<around*|(|0|)>>:U<rprime|'><around*|(|0|)>\<rightarrow\>V<rprime|'><around*|(|0|)>>
      is a diffeomorphism of class <math|C<rsup|r>>. Take then
      <math|g=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>>\<circ\>h<rsub|\|U<rprime|'><around*|(|0|)>>\<circ\>t<rsup|X><rsub|-x<rsub|0>>:t<rsup|X><rsub|-x<rsub|0>><around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|U<rprime|'><around*|(|0|)>|)>|)>=U<around*|(|0|)>\<rightarrow\>t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|V<rprime|'><around*|(|0|)>|)>=V<around*|(|0|)>>
      which is a diffeomorphism of class <math|C<rsup|r>>. If
      <math|x\<in\>U<around*|(|0|)>> then
      <math|g<around*|(|x|)>=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|h<rsub|\|U<rprime|'><around*|(|0|)>><around*|(|t<rsup|X><rsub|-x<rsub|0>><around*|(|x|)>|)>|)>=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|h<around*|(|x-x<rsub|0>|)>|)>=t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|t<rsup|Y><rsub|-f<around*|(|x<rsub|0>|)>><around*|(|f<around*|(|t<rsup|X><rsub|x<rsub|0>><around*|(|x-x<rsub|0>|)>|)>|)>|)>=f<around*|(|x|)>>
      proving that <math|g<rsub|\|U<around*|(|0|)>>=f<rsub|\|U<around*|(|0|)>>>
      so that <math|f<rsub|\|U<around*|(|0|)>>:U<around*|(|0|)>\<rightarrow\>V<around*|(|0|)>>
      is a diffeomorphism of class <math|C<rsup|r>> as also
      <math|0\<in\>U<rprime|'><around*|(|0|)>\<Rightarrow\>x<rsub|0>=t<rsup|X><rsub|x<rsub|0>><around*|(|0|)>\<in\>t<rsub|x<rsub|0>><rsup|X><around*|(|U<rprime|'><around*|(|0|)>|)>=U<around*|(|0|)>>
      and <math|0\<in\>V<rprime|'><around*|(|0|)>\<Rightarrow\>f<around*|(|x<rsub|0>|)>=t<rsub|f<around*|(|x<rsub|0>|)>><rsup|Y><around*|(|0|)>\<in\>t<rsup|Y><rsub|f<around*|(|x<rsub|0>|)>><around*|(|V<rprime|'><around*|(|0|)>|)>=V<around*|(|0|)>>
      \ proving that <math|f> is a local diffeomorphism of class
      <math|C<rsup|r>>.
    </proof>

    The above proposition proves finally the Inverse Function Theorem
  </proof>

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
    has a derivate <math|<around*|(|f<rsub|\|U<rprime|'>><rsup|-1>|)><rprime|'><rsub|><around*|(|x|)>>
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

      and we have proved the first assertment of the theorem.\ 

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

    A trivial correlation of the implicit theorem is\ 

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
    <associate|chapter-nr|13>
    <associate|info-flag|minimal>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-first|545>
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
    <associate|(01,..,*,..,On) is C@@|<tuple|14.120|452>>
    <associate|(x,h)-\<gtr\>Df(x)(h) differentiability|<tuple|14.74|432>>
    <associate|(x1,..,xi-1,*,xi+1,..,xn)|<tuple|14.19|417>>
    <associate|(x1,..,xi-1,*,xi+1,..,xn)^-1(U)|<tuple|14.25|?>>
    <associate|(x1,...,*,...) is differentiable|<tuple|14.24|417>>
    <associate|C1 of real or complex function|<tuple|14.49|423>>
    <associate|C^2 differential is symmetric|<tuple|14.112|447>>
    <associate|C^@@=@@-times differentiable|<tuple|14.50|424>>
    <associate|C^n implies C^m|<tuple|14.52|424>>
    <associate|C^n is a local property|<tuple|14.56|427>>
    <associate|C^n of multivalued functions|<tuple|14.66|430>>
    <associate|D^2g(x)(u)(v)=D^nf(x)(v:u:v1..vn-2)|<tuple|14.116|450>>
    <associate|D^nf(x)(h1:..hn)=D^(n-1)f(x)(h1:..hn-1)(hn)|<tuple|14.73|431>>
    <associate|Dh(x)(u)=D^nf(x)(u:v1:..:vn-1)|<tuple|14.117|450>>
    <associate|GL(X) is a group|<tuple|14.132|458>>
    <associate|I+H has inverse if norm of H is less then
    1|<tuple|14.139|461>>
    <associate|Jacobian Matrix|<tuple|14.36|421>>
    <associate|Jacobian of linear map|<tuple|14.37|?>>
    <associate|Mean Value Theorem 3|<tuple|14.106|447>>
    <associate|Mean value theorem 1|<tuple|14.99|445>>
    <associate|Mean value theorem 2|<tuple|14.102|446>>
    <associate|Ux is open|<tuple|14.3|413>>
    <associate|alternative definition of Ux|<tuple|14.2|413>>
    <associate|alternative definition of differentiability
    (2)|<tuple|14.13|416>>
    <associate|alternative definitions of differentiability|<tuple|14.8|414>>
    <associate|auto-1|<tuple|14|7>>
    <associate|auto-10|<tuple|derivative|12>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|f<rprime|'>>|12>>
    <associate|auto-12|<tuple|14.1.3|12>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>|12>>
    <associate|auto-14|<tuple|chain rule|12>>
    <associate|auto-15|<tuple|14.1.4|13>>
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
    <associate|balls are convex|<tuple|14.101|445>>
    <associate|chain rule|<tuple|14.27|418>>
    <associate|chain rule (1)|<tuple|14.28|?>>
    <associate|chain rules of partial differentiable
    functions|<tuple|14.124|453>>
    <associate|composition of diffeomorphism is a
    diffeomorphism|<tuple|14.145|465>>
    <associate|composition of differentials on arbitrary
    sets|<tuple|14.80|438>>
    <associate|condition for concavity (convexitivity)|<tuple|14.94|?>>
    <associate|conditions for minimum,maximum of a function|<tuple|14.96|?>>
    <associate|consequence of Mean value theorem|<tuple|14.111|?>>
    <associate|constant functions are C^infinite|<tuple|14.60|428>>
    <associate|continuous billinear functions are
    C^infinity|<tuple|14.63|429>>
    <associate|derivative|<tuple|14.16|416>>
    <associate|derivative and composition|<tuple|14.29|?>>
    <associate|derivative and local minimum (maximum)|<tuple|14.95|?>>
    <associate|derivative is local|<tuple|14.18|?>>
    <associate|derivative on a closed interval|<tuple|14.83|?>>
    <associate|diffeomorphism are toplinear|<tuple|14.144|?>>
    <associate|differentiability and restricted mapping|<tuple|14.12|415>>
    <associate|differentiability at x implies continuity at
    x|<tuple|14.10|415>>
    <associate|differentiability at x is independent of
    norms|<tuple|14.11|415>>
    <associate|differentiability definition one|<tuple|14.4|413>>
    <associate|differentiability implies partial
    differentiability|<tuple|14.123|453>>
    <associate|differentiability of K^n|<tuple|14.34|420>>
    <associate|differentiability of finite sum|<tuple|14.59|428>>
    <associate|differentiability of map to product of
    spaces|<tuple|14.35|420>>
    <associate|differentiability of product of functions|<tuple|14.39|421>>
    <associate|differentiability on [a,b]|<tuple|<with|mode|<quote|math>|f<rprime|'><rsub|-><around*|(|x|)>>|438>>
    <associate|differentiability on [a,b] equivalences|<tuple|14.84|439>>
    <associate|differentiability on products of metric
    spaces|<tuple|14.31|419>>
    <associate|differential of a billinear mapping|<tuple|14.38|421>>
    <associate|differential of a function|<tuple|14.6|414>>
    <associate|differential of a linear function|<tuple|14.15|416>>
    <associate|differential of the constant function|<tuple|14.14|416>>
    <associate|differentias and derivates|<tuple|14.17|416>>
    <associate|differentiation under the integral sign|<tuple|14.77|432>>
    <associate|e-mappings|<tuple|14.7|414>>
    <associate|eq 12.1|<tuple|14.10|416>>
    <associate|eq 12.100|<tuple|14.149|467>>
    <associate|eq 12.101|<tuple|14.150|468>>
    <associate|eq 12.102|<tuple|14.151|468>>
    <associate|eq 12.103|<tuple|14.152|468>>
    <associate|eq 12.104|<tuple|14.153|468>>
    <associate|eq 12.105|<tuple|14.154|468>>
    <associate|eq 12.106|<tuple|14.155|468>>
    <associate|eq 12.107|<tuple|14.156|468>>
    <associate|eq 12.108|<tuple|14.157|468>>
    <associate|eq 12.109|<tuple|14.158|468>>
    <associate|eq 12.12|<tuple|14.22|422>>
    <associate|eq 12.128|<tuple|14.161|470>>
    <associate|eq 12.129|<tuple|14.162|?>>
    <associate|eq 12.130|<tuple|14.163|470>>
    <associate|eq 12.131|<tuple|14.167|471>>
    <associate|eq 12.132|<tuple|14.168|471>>
    <associate|eq 12.133|<tuple|14.169|471>>
    <associate|eq 12.134|<tuple|14.170|471>>
    <associate|eq 12.135|<tuple|14.171|471>>
    <associate|eq 12.136|<tuple|14.172|471>>
    <associate|eq 12.137|<tuple|14.173|471>>
    <associate|eq 12.138|<tuple|14.174|471>>
    <associate|eq 12.139|<tuple|14.175|471>>
    <associate|eq 12.140|<tuple|14.176|471>>
    <associate|eq 12.141|<tuple|14.176|471>>
    <associate|eq 12.15|<tuple|14.24|433>>
    <associate|eq 12.16|<tuple|14.25|433>>
    <associate|eq 12.17|<tuple|14.26|433>>
    <associate|eq 12.18|<tuple|14.27|434>>
    <associate|eq 12.19|<tuple|14.28|434>>
    <associate|eq 12.2|<tuple|14.11|416>>
    <associate|eq 12.20|<tuple|14.29|434>>
    <associate|eq 12.21|<tuple|14.30|434>>
    <associate|eq 12.22|<tuple|14.31|434>>
    <associate|eq 12.23|<tuple|14.32|434>>
    <associate|eq 12.24|<tuple|14.33|435>>
    <associate|eq 12.25|<tuple|14.34|435>>
    <associate|eq 12.26|<tuple|14.35|436>>
    <associate|eq 12.27|<tuple|14.36|437>>
    <associate|eq 12.28|<tuple|14.37|437>>
    <associate|eq 12.29|<tuple|14.38|437>>
    <associate|eq 12.30|<tuple|14.39|437>>
    <associate|eq 12.31|<tuple|14.40|437>>
    <associate|eq 12.32|<tuple|14.41|437>>
    <associate|eq 12.33|<tuple|14.42|437>>
    <associate|eq 12.34|<tuple|14.43|437>>
    <associate|eq 12.35|<tuple|14.44|437>>
    <associate|eq 12.36|<tuple|14.45|440>>
    <associate|eq 12.37|<tuple|14.58|444>>
    <associate|eq 12.38|<tuple|14.59|444>>
    <associate|eq 12.39|<tuple|14.60|445>>
    <associate|eq 12.40|<tuple|14.61|445>>
    <associate|eq 12.41|<tuple|14.72|447>>
    <associate|eq 12.42|<tuple|14.73|447>>
    <associate|eq 12.43|<tuple|14.74|447>>
    <associate|eq 12.44|<tuple|14.75|447>>
    <associate|eq 12.45|<tuple|14.76|447>>
    <associate|eq 12.46|<tuple|14.77|448>>
    <associate|eq 12.47|<tuple|14.78|448>>
    <associate|eq 12.48|<tuple|14.79|448>>
    <associate|eq 12.49|<tuple|14.80|448>>
    <associate|eq 12.50|<tuple|14.81|448>>
    <associate|eq 12.51|<tuple|14.82|448>>
    <associate|eq 12.52|<tuple|14.83|449>>
    <associate|eq 12.53|<tuple|14.84|450>>
    <associate|eq 12.54|<tuple|14.85|450>>
    <associate|eq 12.55|<tuple|14.86|450>>
    <associate|eq 12.56|<tuple|14.87|451>>
    <associate|eq 12.57|<tuple|14.88|451>>
    <associate|eq 12.58|<tuple|14.89|451>>
    <associate|eq 12.59|<tuple|14.90|452>>
    <associate|eq 12.60|<tuple|14.91|452>>
    <associate|eq 12.61|<tuple|14.92|452>>
    <associate|eq 12.62|<tuple|14.93|452>>
    <associate|eq 12.63|<tuple|14.94|452>>
    <associate|eq 12.64|<tuple|14.113|459>>
    <associate|eq 12.64-0|<tuple|14.95|454>>
    <associate|eq 12.65|<tuple|14.114|459>>
    <associate|eq 12.65-0|<tuple|14.96|454>>
    <associate|eq 12.66|<tuple|14.115|459>>
    <associate|eq 12.66-0|<tuple|14.97|454>>
    <associate|eq 12.67|<tuple|14.116|459>>
    <associate|eq 12.67-0|<tuple|14.98|454>>
    <associate|eq 12.68|<tuple|14.117|460>>
    <associate|eq 12.68-0|<tuple|14.99|454>>
    <associate|eq 12.69|<tuple|14.118|460>>
    <associate|eq 12.69-0|<tuple|14.100|454>>
    <associate|eq 12.70|<tuple|14.119|460>>
    <associate|eq 12.70-0|<tuple|14.101|454>>
    <associate|eq 12.71|<tuple|14.120|461>>
    <associate|eq 12.71-0|<tuple|14.102|454>>
    <associate|eq 12.72|<tuple|14.121|461>>
    <associate|eq 12.72-0|<tuple|14.103|454>>
    <associate|eq 12.72-1|<tuple|14.104|455>>
    <associate|eq 12.73|<tuple|14.122|461>>
    <associate|eq 12.74|<tuple|14.123|461>>
    <associate|eq 12.74-1|<tuple|14.105|456>>
    <associate|eq 12.75|<tuple|14.124|462>>
    <associate|eq 12.75-1|<tuple|14.106|456>>
    <associate|eq 12.76|<tuple|14.125|462>>
    <associate|eq 12.76-1|<tuple|14.107|456>>
    <associate|eq 12.77|<tuple|14.126|462>>
    <associate|eq 12.77-1|<tuple|14.108|456>>
    <associate|eq 12.78|<tuple|14.127|462>>
    <associate|eq 12.78-1|<tuple|14.109|456>>
    <associate|eq 12.79|<tuple|14.128|462>>
    <associate|eq 12.79-1|<tuple|14.110|456>>
    <associate|eq 12.80|<tuple|14.129|463>>
    <associate|eq 12.80-1|<tuple|14.111|457>>
    <associate|eq 12.81|<tuple|14.130|463>>
    <associate|eq 12.81-1|<tuple|14.112|457>>
    <associate|eq 12.82|<tuple|14.131|463>>
    <associate|eq 12.83|<tuple|14.132|463>>
    <associate|eq 12.84|<tuple|14.133|463>>
    <associate|eq 12.85|<tuple|14.134|463>>
    <associate|eq 12.86|<tuple|14.135|464>>
    <associate|eq 12.87|<tuple|14.136|465>>
    <associate|eq 12.88|<tuple|14.137|466>>
    <associate|eq 12.89|<tuple|14.138|466>>
    <associate|eq 12.9|<tuple|14.140|466>>
    <associate|eq 12.90|<tuple|14.139|466>>
    <associate|eq 12.92|<tuple|14.141|466>>
    <associate|eq 12.93|<tuple|14.142|466>>
    <associate|eq 12.94|<tuple|14.143|466>>
    <associate|eq 12.95|<tuple|14.144|466>>
    <associate|eq 12.96|<tuple|14.145|467>>
    <associate|eq 12.97|<tuple|14.146|467>>
    <associate|eq 12.98|<tuple|14.147|467>>
    <associate|eq 12.99|<tuple|14.148|467>>
    <associate|eq 13.50.317|<tuple|14.63|?>>
    <associate|eq 13.51.317|<tuple|14.64|?>>
    <associate|eq 13.52.317|<tuple|14.65|?>>
    <associate|eq 13.53.317|<tuple|14.66|?>>
    <associate|eq 13.54.317|<tuple|14.67|?>>
    <associate|eq 13.55.317|<tuple|14.68|?>>
    <associate|eq 13.56.317|<tuple|14.69|?>>
    <associate|eq 13.57.317|<tuple|14.70|?>>
    <associate|eq 13.58.317|<tuple|14.71|?>>
    <associate|eq 14.1.100|<tuple|14.1|?>>
    <associate|eq 14.12.100|<tuple|14.12|?>>
    <associate|eq 14.13.100|<tuple|14.13|?>>
    <associate|eq 14.14.100|<tuple|14.14|?>>
    <associate|eq 14.149.020|<tuple|14.159|?>>
    <associate|eq 14.15.100|<tuple|14.15|?>>
    <associate|eq 14.150.020|<tuple|14.160|?>>
    <associate|eq 14.16.100|<tuple|14.16|?>>
    <associate|eq 14.17.100|<tuple|14.17|?>>
    <associate|eq 14.18.100|<tuple|14.18|?>>
    <associate|eq 14.19.100|<tuple|14.19|?>>
    <associate|eq 14.2.100|<tuple|14.2|?>>
    <associate|eq 14.20.100|<tuple|14.20|?>>
    <associate|eq 14.21.100|<tuple|14.21|?>>
    <associate|eq 14.23.014|<tuple|14.23|?>>
    <associate|eq 14.3.100|<tuple|14.3|?>>
    <associate|eq 14.4.100|<tuple|14.4|?>>
    <associate|eq 14.46.004|<tuple|14.47|?>>
    <associate|eq 14.46.1.004|<tuple|14.46|?>>
    <associate|eq 14.48.020|<tuple|14.48|?>>
    <associate|eq 14.49.020|<tuple|14.49|?>>
    <associate|eq 14.5.100|<tuple|14.5|?>>
    <associate|eq 14.50.020|<tuple|14.50|?>>
    <associate|eq 14.51.020|<tuple|14.51|?>>
    <associate|eq 14.52.020|<tuple|14.52|?>>
    <associate|eq 14.53.020|<tuple|14.53|?>>
    <associate|eq 14.54.020|<tuple|14.54|?>>
    <associate|eq 14.55.020|<tuple|14.55|?>>
    <associate|eq 14.56.020|<tuple|14.56|?>>
    <associate|eq 14.57.020|<tuple|14.57|?>>
    <associate|eq 14.6.100|<tuple|14.6|?>>
    <associate|eq 14.7.100|<tuple|14.7|?>>
    <associate|eq 14.8.100|<tuple|14.8|?>>
    <associate|eq 14.9.100|<tuple|14.9|?>>
    <associate|equivalences of convexitivity (concavity)|<tuple|14.93|?>>
    <associate|extremum and derivate|<tuple|14.87|442>>
    <associate|f_v is differentiable|<tuple|14.72|431>>
    <associate|fundamental theorem of calculus|<tuple|14.98|444>>
    <associate|generalized chain rule|<tuple|14.68|430>>
    <associate|i the substitution|<tuple|14.21|?>>
    <associate|i-H has inverse if norm of H is lower then
    1|<tuple|14.138|459>>
    <associate|if f is C^n then D^1f is C^n-1|<tuple|14.54|426>>
    <associate|implicit function theorem|<tuple|14.157|470>>
    <associate|in Banach spaces linear continuous mappings are
    toplinear|<tuple|14.130|458>>
    <associate|inverse function theorem|<tuple|14.147|465>>
    <associate|inverse mapping is c-infinite|<tuple|14.140|461>>
    <associate|inverse of derivative|<tuple|14.155|?>>
    <associate|inverse theorem for Df(0)=1X|<tuple|14.148|465>>
    <associate|lagranges theorem|<tuple|14.89|443>>
    <associate|left,right derivatives|<tuple|14.82|?>>
    <associate|linear continuous mappings are C^infinity|<tuple|14.61|428>>
    <associate|linearity of (01,...*,...0n)|<tuple|14.22|417>>
    <associate|mean value theorem (3)|<tuple|14.108|?>>
    <associate|n-th derivative|<tuple|<with|mode|<quote|math>|f<rsup|<around*|(|n|)>>>|423>>
    <associate|n-times differentiability and partial
    derivatives|<tuple|14.75|432>>
    <associate|n-times differentiability implies m-times
    differentiability|<tuple|14.51|424>>
    <associate|n-times differentiability is local|<tuple|14.55|426>>
    <associate|n-times differentiability is same as n-1 times
    differentiability of DF|<tuple|14.53|425>>
    <associate|n-times differentiability of multi valued
    function|<tuple|14.65|429>>
    <associate|partial derivative and partial differential|<tuple|14.33|?>>
    <associate|partial derivative definition|<tuple|14.32|420>>
    <associate|partial differential definition|<tuple|14.30|419>>
    <associate|partial differential on U|<tuple|14.121|453>>
    <associate|power of a continuous linear mapping is linear and
    continuous|<tuple|14.135|458>>
    <associate|product of n-times differentiable functions is n-times
    differentiable|<tuple|14.76|432>>
    <associate|projection map is infinite times dimensions|<tuple|14.64|429>>
    <associate|proposition 12.116|<tuple|14.149|466>>
    <associate|proposition 12.118|<tuple|14.151|467>>
    <associate|proposition 12.120|<tuple|14.153|469>>
    <associate|rolles theorem|<tuple|14.88|443>>
    <associate|second mean value theorem|<tuple|14.107|447>>
    <associate|strictly increasing function and derivative|<tuple|14.90|?>>
    <associate|sum of (01,...,*,...0n)|<tuple|14.23|417>>
    <associate|sum of C^n functions is C^n|<tuple|14.58|427>>
    <associate|sum of differentiable functions|<tuple|14.26|417>>
    <associate|sum of linear function and infinite sum|<tuple|14.137|459>>
    <associate|sum of n-times differentiable functions is n-times
    differentiable|<tuple|14.57|427>>
    <associate|symmetry of L^n+t(X;Y) based on permutations and
    transposition|<tuple|14.114|449>>
    <associate|the n-th differential is symmetric|<tuple|14.118|450>>
    <associate|toplinear in normed space|<tuple|14.129|457>>
    <associate|translations are C-infinity|<tuple|14.62|428>>
    <associate|uniqueness of differential|<tuple|14.5|413>>
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

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|i\<rightarrow\>x|)>>>|<pageref|auto-13>>

      <tuple|<tuple|chain rule>|<pageref|auto-14>>

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
      <no-break><pageref|auto-15>>

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

      14.6<space|2spc>Partial Differentiation
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-44>

      14.7<space|2spc>Inverse function theory
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>
    </associate>
  </collection>
</auxiliary>