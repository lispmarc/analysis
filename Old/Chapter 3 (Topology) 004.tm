<TeXmacs|1.99.4>

<project|/home/marc/Documents/Measures/book.tm>

<style|book>

<\body>
  <assign|chapter-nr|11><chapter|Topology>

  <section|Topological spaces>

  <\definition>
    <index|topological space><index|topology><index|open set>A topological
    space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a set
    <math|X> together with <math|\<cal-T\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    (a set of subsets of <math|X>) such that:

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-T\>>

      <item><math|X\<in\>\<cal-T\>>

      <item><math|\<forall\>U,B\<in\>\<cal-T\>> we have
      <math|U<big|cap>V\<in\>\<cal-T\>>

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a family of
      sets in <math|\<cal-T\>> then <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>>
    </enumerate>

    We call <math|\<cal-T\>> the topology of <math|X> and elements of
    <math|\<cal-T\>> open sets.\ 
  </definition>

  <\example>
    <math|<around*|\<langle\>|\<emptyset\>,<around*|{|\<emptyset\>|}>|\<rangle\>>>
    is a trivially a topological space
  </example>

  <\example>
    <math|<around*|\<langle\>|X,\<cal-P\><around*|(|X|)>|\<rangle\>>> is a
    trivially a topological space.
  </example>

  <\theorem>
    <label|intersection of finite open sets is open>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> be a finite family
    of open sets then <math|<big|cap><rsub|i\<in\>I>U<rsub|i>> is open.
  </theorem>

  <\proof>
    As <math|I> is finite we have the following possibilities

    <\enumerate>
      <item><dueto|<math|I=\<emptyset\>>>then if <math|x\<in\>X> we have
      <math|\<forall\>i\<in\>I\|x\<in\>U<rsub|i>> is full filled vacuously so
      <math|<big|cap><rsub|i\<in\>I>U<rsub|i>=X\<in\>\<cal-T\>>

      <item><dueto|<math|I\<neq\>\<emptyset\>>>then there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|i:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> so that
      <math|<big|cap><rsub|k\<in\>I>U<rsub|k>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i<around*|(|j|)>>>.
      We prove the rest by induction so let
      <math|X=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
      <around*|{|U<rsub|i<around*|(|j|)>>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>
      is open then <big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i<around*|(|j|)>>
      is open|}>> then:

      <\enumerate>
        <item>If <math|n=1> then <math|<big|cap><rsub|j\<in\><around*|{|1|}>>U<rsub|i<around*|(|j|)>>=U<rsub|i<around*|(|1|)>>\<in\>\<cal-T\>>

        <item>If <math|n\<in\>X> then <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>>U<rsub|i<around*|(|j|)>>\<equallim\><rsub|<with|mode|text|<reference|generalized
        distributive laws>>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|i<around*|(|j|)>>|)><big|cup>U<rsub|i<around*|(|j+1|)>>>
        which is open because of <math|n\<in\>X> and <math|<around*|(|3|)>>
        of the definition of a topology.
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|local property of open sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then we have <math|U\<in\>\<cal-T\>> iff <math|\<forall\>x\<in\>U> we
    have <math|\<exists\>V<rsub|x>\<in\>\<cal-T\>> such that
    <math|x\<in\>V<rsub|x>\<subseteq\>U>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If <math|U\<in\>\<cal-T\>> the we
      have either

      <\enumerate>
        <item><dueto|<math|U=\<emptyset\>>>then
        <math|\<forall\>x\<in\>\<emptyset\>\<vDash\>\<exists\>V<rsub|x>\<in\>\<cal-T\>\<vdash\>x\<in\>V<rsub|x>\<subseteq\>\<emptyset\>>
        is satisfied vacuously

        <item><dueto|<math|U\<neq\>\<emptyset\>>>then
        <math|\<forall\>x\<in\>U> we have <math|x\<in\>U\<subseteq\>U>
      </enumerate>

      <item><dueto|<math|\<Leftarrow\>>>By the hypothesis we have that
      <math|\<forall\>x\<in\>U> the set <math|\<cal-A\><rsub|x>=<around*|{|V\<in\>\<cal-T\>\|x\<in\>V\<subseteq\>U|}>>
      is not empty, so by the axiom of choice (see <reference|equivalences of
      axiom of choice>) that there exists a function
      <math|j:U\<rightarrow\><big|cup><rsub|x\<in\>U>\<cal-A\><rsub|x>> and
      this defines then a family <math|<around*|{|j<around*|(|x|)>|}><rsub|x\<in\>U>>
      of open sets such that <math|x\<in\>j<around*|(|x|)>\<subseteq\>U> so
      that <math|U=<big|cup><rsub|x\<in\>U>j<around*|(|x|)>> is open by the
      definition of a topology.
    </enumerate>
  </proof>

  We define now the subspace topology

  <\theorem>
    <label|subspace topology><index|subspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|Y\<subseteq\>X> then if we define
    <math|\<cal-T\><rsub|Y>=<around*|{|U<big|cap>Y\|U\<in\>\<cal-T\>|}>> we
    have that <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>>
    forms a topological space. <math|\<cal-T\><rsub|Y>> is called the
    subspace topology induced by <math|\<cal-T\>> on <math|Y>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<emptyset\>=\<emptyset\><big|cap>Y\<in\>\<cal-T\><rsub|Y>>

      <item><math|Y=X<big|cap>Y\<in\>\<cal-T\><rsub|Y>>

      <item>If <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><rsub|Y>> then there
      exists <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\>> such that
      <math|U<rsub|1>=V<rsub|1><big|cap>Y>,
      <math|U<rsub|2>=V<rsub|2><big|cap>Y> then
      <math|U<rsub|1><big|cap>U<rsub|2>=<around*|(|V<rsub|1><big|cap>Y|)><big|cap><around*|(|V<rsub|2><big|cap>Y|)>=<around*|(|V<rsub|1><big|cap>V<rsub|2>|)><big|cap><around*|(|Y<big|cap>Y|)>=<around*|(|V<rsub|1><big|cap>V<rsub|2>|)><big|cap>Y\<in\>\<cal-T\><rsub|Y>>
      as <math|V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\>>

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a family of
      open sets in <math|\<cal-T\>> then <math|\<forall\>i\<in\>I> there
      exists a <math|V<rsub|i>> such that
      <math|U<rsub|i>=V<rsub|i><big|cap>Y>, this defines a family
      <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> then
      <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=<big|cup><rsub|i\<in\>I><around*|(|V<rsub|i><big|cap>Y|)>\<equallim\><rsub|<with|mode|text|<reference|generalized
      distributive laws>>><around*|(|<big|cup><rsub|i\<in\>I>V<rsub|i>|)><big|cap>Y\<in\>\<cal-T\><rsub|Y>>
      as <math|<big|cup><rsub|i\<in\>I>V<rsub|i>\<in\>\<cal-T\>>
    </enumerate>
  </proof>

  <\remark>
    If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological
    space and <math|U\<in\>\<cal-T\>> then if <math|V\<in\>\<cal-T\><rsub|U>>
    then <math|\<exists\>V<rprime|'>\<in\>\<cal-T\>> such that
    <math|V=V<rprime|'><big|cap>U\<in\>\<cal-T\>>. So in the case of
    <math|U\<in\>\<cal-T\>> (or <math|U> is open) we have
    <math|\<cal-T\><rsub|U>\<subseteq\>\<cal-T\>> (all open sets in the
    subspace topology induced on a open set are open in the inducing
    topology).
  </remark>

  The following theorem proves essentially that the subspace topology of a
  subspace topology is a subspace topology.

  <\theorem>
    <label|subspace topology of subspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|Z\<subseteq\>Y\<subseteq\>X> then
    <math|<around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>=\<cal-T\><rsub|Z>>
  </theorem>

  <\proof>
    First we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>V\<in\>\<cal-T\><rsub|Y><rsub|>
      such that U=V<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that V=W<big|cap>Y>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U=<around*|(|W<big|cap>Z|)><big|cap>Y=W<big|cap><around*|(|Z<big|cap>Y|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|U\<in\>\<cal-T\><rsub|Z>>>>>
    </eqnarray*>

    Also we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|U\<in\>\<cal-T\><rsub|Z>>|<cell|\<Rightarrow\>>|<cell|\<exists\>W\<in\>\<cal-T\>
      such that U=W<big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|Z\<subseteq\>Y>>|<cell|U=W<big|cap><around*|(|Y<big|cap>Z|)>=<around*|(|W<big|cap>Y|)><big|cap>Z>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|W<big|cap>Y\<in\>\<cal-T\><rsub|Y>>>|<cell|U\<in\><around*|(|\<cal-T\><rsub|Y>|)><rsub|Z>>>>>
    </eqnarray*>
  </proof>

  <\definition>
    <label|inner set><index|inner set><index|<math|A<rsup|\<circ\>>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<in\>X> then <math|A<rsup|\<circ\>>=<big|cup><rsub|U\<in\><around*|{|V\<in\>\<cal-T\>\|U\<subseteq\>A|}>>U>
    is called the inner set of <math|A> (note that
    <math|\<emptyset\>\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>>).
    Note that <math|A<rsup|\<circ\>>> is open (see (4) in the definition of a
    topology) and that <math|A<rsup|\<circ\>>\<subseteq\>A>.
  </definition>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space and <math|A\<in\>X> then if <math|U> is a open set such that
    <math|U\<subseteq\>A> then <math|U\<subseteq\>A<rsup|\<circ\>>>. So
    <math|A<rsup|\<circ\>>> is the biggest open set contained in <math|A>.
  </theorem>

  <\proof>
    If <math|U> is open and <math|U\<subseteq\>A> then
    <math|U\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>> so that
    <math|U\<subseteq\><big|cup><rsub|V\<in\><around*|{|V\<in\>\<cal-T\>\|V\<subseteq\>A|}>>V=A<rsup|\<circ\>>>
  </proof>

  <subsection|Closed sets>

  <\definition>
    <label|closed sets><index|closed sets><index|<math|\<cal-C\>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> the set of
    closed sets is defined by <math|\<cal-C\>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|X\\\\A\<in\>\<cal-T\>|}>>
  </definition>

  <\note>
    If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological
    space and <math|A> is a closed set then <math|X\\\\A> is open\ 
  </note>

  <\proof>
    If <math|A> is open then <math|\<exists\>U> open such that
    <math|A=X\\\\U=X<big|cap>U<rsup|c>> and then
    <math|X\\\\A=X<big|cap>A<rsup|c>=X<big|cap><around*|(|X<big|cap>U<rsup|c>|)><rsup|c>=X<big|cap><around*|(|X<rsup|c><big|cup>U|)>=X<big|cap>U=U>
    open
  </proof>

  The next theorem proves that we can also define a topology using closed
  sets

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space then the set of closed sets <math|\<cal-C\>> satisfies the
    following:

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-C\>>

      <item><math|X\<in\>\<cal-C\>>

      <item>If <math|A,B\<in\>\<cal-C\>> then
      <math|A<big|cup>B\<in\>\<cal-C\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-C\>> (a family of closed sets) then
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-C\>>
    </enumerate>
  </theorem>

  Furthermore when <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
  set of subsets of <math|X> satisfying 1,2,3 and 4 of the above then
  <math|\<cal-T\>=<around*|{|X\\\\A\|A\<in\>\<cal-C\>|}>> then
  <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topology with the
  set of closed sets <math|\<cal-C\>>.

  <\proof>
    \ 

    <\enumerate>
      <item><math|X\\\\\<emptyset\>=X\<in\>\<cal-T\>\<Rightarrow\>\<emptyset\>\<in\>\<cal-C\>>

      <item><math|X\\\\X=\<emptyset\>\<in\>\<cal-T\>\<Rightarrow\>X\<in\>\<cal-C\>>

      <item>If <math|A,B\<in\>\<cal-C\>> then
      <math|X\\\\<around*|(|A<big|cup>B|)>\<equallim\><rsub|<with|mode|text|<reference|distributivity
      of union or intersection>>><around*|(|X\\\\A|)><big|cap><around*|(|X\\\\B|)>\<in\>\<cal-T\>>
      (as <math|X\\\\A,X\\\\B\<in\>\<cal-T\>> and the definition of a
      topology).

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-C\>> then <math|X\\\\<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<equallim\><rsub|<with|mode|text|<reference|generalized
      difference>>><big|cup><rsub|i\<in\>I><around*|(|A\\\\A<rsub|i>|)>\<in\>\<cal-T\>>
      (as <math|\<forall\>i\<in\>I> we have
      <math|X\\\\A<rsub|i>\<in\>\<cal-T\>>)
    </enumerate>

    Assume now that <math|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    fulfills 1,2,3 and 4 and define <math|\<cal-T\>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|X\\\\U\<in\>\<cal-C\>|}>>
    then\ 

    <\enumerate>
      <item><math|\<emptyset\>=X\\\\X\<Rightarrow\>\<emptyset\>\<in\>\<cal-T\>>

      <item><math|X=X\\\\\<emptyset\>\<Rightarrow\>X\<in\>\<cal-T\>>

      <item>If <math|U,V\<in\>\<cal-T\>> then
      <math|\<exists\>A,B\<in\>\<cal-C\>> such that <math|U=X\\\\A>,
      <math|V=X\\\\B> and <math|U<big|cap>V=<around*|(|X\\\\A|)><big|cap><around*|(|X\\\\B|)>=X\\\\<around*|(|A<big|cup>B|)>\<in\>\<cal-T\>>
      (as <math|A<big|cup>B\<in\>\<cal-C\>>)

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-T\>> then <math|\<forall\>i\<in\>I> there exists
      <math|A<rsub|i>\<in\>\<cal-C\>> such that
      <math|U<rsub|i>=X\\\\A<rsub|i>> and thus
      <math|<big|cup><rsub|i\<in\>I>U<rsub|i>=<big|cup><rsub|i\<in\>I><around*|(|X\\\\A<rsub|i>|)>\<equallim\><rsub|<with|mode|text|<reference|generalized
      difference>>>X\\\\<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>>
    </enumerate>

    Now if <math|A> is closed in <math|\<cal-T\>> then
    <math|X\\\\A\<in\>\<cal-T\>> so there exists a <math|C\<in\>\<cal-C\>>
    such that <math|X\\\\A=X\\\\C> we have then
    <math|A\<equallim\><rsub|A\<subseteq\>X\<wedge\><with|mode|text|<reference|distributivity
    of union or intersection>>>X\\\\<around*|(|X\\\\A|)>\<equallim\><rsub|X\\\\A=X\\\\C>X\\\\<around*|(|X\\\\C|)>\<equallim\><rsub|C\<subseteq\>X\<wedge\><with|mode|text|<reference|distributivity
    of union or intersection>>>C> and thus the set of closed sets of
    <math|\<cal-T\>> is a subset of <math|\<cal-C\>>. If
    <math|A\<in\>\<cal-C\>> then by definition <math|X\\\\A\<in\>\<cal-T\>>
    so <math|A> is closed in <math|\<b-cal-T\>> and thus <math|\<cal-C\>> is
    a subset of the set of closed sets in <math|\<cal-T\>>. These two last
    remarks proves that <math|\<cal-C\>> is indeed the set set of closed sets
    of <math|\<cal-T\>>.
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space and <math|A\<subseteq\>X> then the set of closed sets of
    <math|<around*|\<langle\>|A,\<cal-T\><rsub|A>|\<rangle\>>> is
    <math|<around*|{|C<big|cap>A\|C is closed in
    <around*|\<langle\>|X,\<cal-T\>|\<rangle\>>|}>>
  </theorem>

  <\proof>
    If <math|B> is closed in <math|<around*|\<langle\>|A,\<cal-T\><rsub|A>|\<rangle\>>>
    then <math|A\\\\B\<in\>\<cal-T\><rsub|A>\<Rightarrow\>\<exists\>U\<in\>\<cal-T\>>
    such that <math|<around*|(|A\\\\B|)>=U<big|cap>A> then
    <math|B\<equallim\><rsub|B\<subseteq\>A\<wedge\><with|mode|text|<reference|distributivity
    of union or intersection>>>B=A\\\\<around*|(|A\\\\B|)>=A\\\\<around*|(|U<big|cap>A|)>=<around*|(|A\\\\U|)><big|cup><around*|(|A\\\\A|)>=<around*|(|A\\\\U|)><big|cup>\<emptyset\>=A\\\\U=A<big|cap>U<rsup|c>\<equallim\><rsub|A\<subseteq\>X><around*|(|A<big|cap>X|)><big|cap>U<rsup|c>=A<big|cap><around*|(|X<big|cap>U<rsup|c>|)>=A<big|cap><around*|(|X\\\\U|)>=<around*|(|X\\\\U|)><big|cap>A\<in\><around*|{|C<big|cap>A\|C
    is closed in \<cal-T\>|}>>. If <math|B\<in\><around*|{|C<big|cap>A\|C is
    closed in <around*|\<langle\>|X,\<cal-T\>|\<rangle\>>|}>> then there
    exists a <math|C\<subseteq\>X> such that <math|X\\\\C\<in\>\<cal-T\>> and
    <math|B=C<big|cap>A>. Now <math|A\\\\B=A\\\\<around*|(|C<big|cap>A|)>=<around*|(|A\\\\C|)><big|cup><around*|(|A\\\\A|)>=A\\\\C\<equallim\><rsub|A\<in\>X><around*|(|A<big|cap>X|)>\\\\C=<around*|(|A<big|cap>X|)><big|cap>C<rsup|c>=A<big|cap><around*|(|X<big|cap>C<rsup|c>|)>=A<big|cap><around*|(|X\\\\C|)>\<in\>\<cal-T\><rsub|A>>
    as <math|X\\\\C\<in\>\<cal-T\>> so we have that <math|B> is closed in
    <math|<around*|\<langle\>|A,\<cal-T\><rsub|A>|\<rangle\>>>
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space and <math|A\<subseteq\>X> then <math|<wide|A|\<bar\>>=<big|cap><rsub|C\<in\><around*|{|C\|C
    is closed and A\<subseteq\>C|}>>C> is closed (as a intersection of a
    family of closed sets), contains <math|A> and is called the closure of
    <math|A> (note that <math|X\<in\><around*|{|C\|C is closed and
    A\<subseteq\>C|}>\<Rightarrow\><around*|{|C\|C is closed and
    A\<subseteq\>C|}>\<neq\>\<emptyset\>>)
  </definition>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space and <math|A\<subseteq\>X> then <math|<wide|A|\<bar\>>> is the
    smallest closed set containing <math|A>
  </theorem>

  <\proof>
    If <math|C> is a closed set such that <math|A\<subseteq\>C> then
    <math|C\<in\><around*|{|C\|C is closed and A\<subseteq\>C|}>> and thus
    <math|<big|cap><rsub|B\<in\><around*|{|C\|C is closed and
    A\<subseteq\>C|}>>B\<subseteq\>C>
  </proof>

  <\theorem>
    <label|a closed set is equal to its closurer>If
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological space
    then <math|A\<subseteq\>X> is closed if and only of
    <math|A=<wide|A|\<bar\>>>
  </theorem>

  <\proof>
    \ 

    <dueto|<math|\<Rightarrow\>>>If <math|A> is closed then as
    <math|A\<subseteq\>A> we have that <math|A\<subseteq\><wide|A|\<bar\>>\<subseteq\>A\<Rightarrow\>A=<wide|A|\<bar\>>>

    <dueto|<math|\<Leftarrow\>>>If <math|A=<wide|A|\<bar\>>> then as
    <math|<wide|A|\<bar\>>> is closed we have that <math|A> is closed
  </proof>

  <\definition>
    <label|limit point><index|limit point><index|accumulation
    point><index|derived set>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space and <math|A\<subseteq\>X> then <math|x\<in\>X> is
    a limit point or accumulation point of <math|A> iff
    <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
    <math|\<emptyset\>\<neq\><around|(|A<mid|\\\\><around|{|x|}>|)><big|cap>U>.
    The set of all limit points of <math|A> is called the derived set of
    <math|A> and is denoted by <math|A<rprime|'>>.\ 
  </definition>

  <\theorem>
    <label|characterization of closure>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological space
    and <math|A\<subseteq\>X> then <math|<wide|A|\<bar\>>=A<big|cup>A<rprime|'>>
  </theorem>

  <\proof>
    If <math|x\<in\><wide|A|\<bar\>>> then we have two cases

    <\enumerate>
      <item><dueto|<math|x\<in\>A>>then trivially
      <math|x\<in\>A<big|cup>A<rprime|'>>

      <item><dueto|<math|x\<nin\>A>>then if <math|x\<nin\>A<rprime|'>> then
      there exists a <math|U\<in\>\<cal-T\>> with <math|x\<in\>U> such that
      <math|\<emptyset\>=<around*|(|A\\\\<around*|{|x|}>|)><big|cap>U\<equallim\><rsub|x\<in\>A\<Rightarrow\>A=A\\\\<around*|{|x|}>>A<big|cap>U\<Rightarrow\>\<forall\>a\<in\>A\<subseteq\>X>
      we have <math|a\<nin\>U\<wedge\>a\<in\>X\<Rightarrow\>A\<subseteq\>X\\\\U>
      which means as <math|X\\\\U> is closed that
      <math|<wide|A|\<bar\>>\<subseteq\>X\\\\U\<Rightarrow\>x\<nin\>U>
      contradicting <math|x\<in\>U>. So we must have
      <math|x\<in\>A<rprime|'>\<Rightarrow\>x\<in\>A<big|cup>A<rprime|'>>
    </enumerate>

    So we have proved that <math|<wide|A|\<bar\>>\<subseteq\>A<big|cup>A<rprime|'>>.

    If now <math|x\<in\>A<big|cup>A<rprime|'>> then we have either

    <\enumerate>
      <item><dueto|<math|x\<in\>A>>then as
      <math|A\<subseteq\><wide|A|\<bar\>>> we have
      <math|x\<in\><wide|A|\<bar\>>>

      <item><dueto|<math|x\<nin\>A>>then we must have
      <math|x\<in\>A<rprime|'>>. If <math|x\<nin\><wide|A|\<bar\>>> then
      <math|x\<in\>X\\\\<wide|A|\<bar\>>> which is open and thus we have
      <math|\<emptyset\>\<neq\><around*|(|A\\\\<around*|{|x|}>|)><big|cap><around*|(|X\\\\<wide|A|\<bar\>>|)>\<equallim\><rsub|x\<nin\>A\<Rightarrow\>A\\\\<around*|{|x|}>=A>A<big|cap><around*|(|X\\\\<wide|A|\<bar\>>|)>>
      but then there exists a <math|y\<in\>A\<wedge\>y\<nin\><wide|A|\<bar\>>\<Rightarrowlim\><rsub|y\<in\>A\<subseteq\><wide|A|\<bar\>>>y\<in\><wide|A|\<bar\>>\<wedge\>y\<in\><wide|A|\<bar\>>>
      a contradiction. So we must have <math|x\<in\><wide|A|\<bar\>>>\ 
    </enumerate>

    This proves then <math|A<big|cup>A<rprime|'>\<subseteq\><wide|A|\<bar\>>>
    and thus finally <math|<wide|A|\<bar\>>=A<big|cup>A<rprime|'>>
  </proof>

  <\corollary>
    <label|characterization of closure of a set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then <math|x\<in\><wide|A|\<bar\>>> if only if
    <math|\<forall\>U\<in\>\<cal-T\> with x\<in\>U> we have
    <math|U<big|cap>A\<neq\>\<emptyset\>>. Or in other words
    <math|<wide|A|\<bar\>>=<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\>\<vdash\>x\<in\>U
    we have A<big|cap>U\<neq\>\<emptyset\>|}>>
  </corollary>

  <\proof>
    If <math|x\<in\><wide|A|\<bar\>>=A<big|cup>A<rprime|'>> then either

    <\enumerate>
      <item><dueto|<math|x\<in\>A>>then trivially
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
      <math|x\<in\>U<big|cap>A\<Rightarrow\>U<big|cap>A\<neq\>\<emptyset\>>

      <item><dueto|<math|x\<in\>A<rprime|'>>>then
      <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have
      <math|\<emptyset\>\<neq\><around*|(|A\\\\<around*|{|x|}>|)><big|cap>U\<Rightarrow\>U<big|cap>A\<neq\>\<emptyset\>>
    </enumerate>

    so in all cases we have <math|\<forall\>U\<in\>\<cal-T\>> with
    <math|x\<in\>U> we have <math|U<big|cap>A\<neq\>\<emptyset\>>.

    On the other hand if <math|x\<in\>X> is such that
    <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> we have that
    <math|U<big|cap>A\<neq\>\<emptyset\>>. If now
    <math|x\<nin\><wide|A|\<bar\>>> then <math|x\<in\>X\\\\<wide|A|\<bar\>>>
    a open set so that we have <math|\<emptyset\>\<neq\><around*|(|X\\\\<wide|A|\<bar\>>|)><big|cap>A=<around*|(|X<big|cap><wide|A|\<bar\>><rsup|c>|)><big|cap>A=X<big|cap><around*|(|<wide|A|\<bar\>><rsup|c><big|cap>A|)>\<equallim\><rsub|A\<subseteq\><wide|A|\<bar\>>>X<big|cap>\<emptyset\>=\<emptyset\>\<Rightarrow\>\<emptyset\>\<neq\>\<emptyset\>>
    a contradiction. So we must have that <math|x\<in\><wide|A|\<bar\>>>
  </proof>

  As <math|A> is closed if and only if <math|A=<wide|A|\<bar\>>> (see
  <reference|a closed set is equal to its closurer>) we have the following

  <\corollary>
    <label|alternate definition of closed set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then <math|A> is closed if and only if
    <math|A=<around*|{|x\<in\>X\|\<forall\>U\<in\>\<cal-T\>\<vdash\>x\<in\>U
    we have A<big|cap>U\<neq\>\<emptyset\>|}>>
  </corollary>

  <\definition>
    Let <math|X> be a set and <math|\<cal-T\><rsub|1>>,
    <math|\<cal-T\><rsub|2>> two topologies for <math|X> then
    <math|\<cal-T\><rsub|2>> is finer then <math|\<cal-T\><rsub|1>> iff
    <math|\<cal-T\><rsub|1>\<subseteq\>\<cal-T\><rsub|2>>. So if
    <math|\<cal-T\><rsub|1>> is finer then <math|\<cal-T\><rsub|2>> and
    <math|\<cal-T\><rsub|1>> is finer then <math|\<cal-T\><rsub|2>> then
    <math|\<cal-T\><rsub|1>=\<cal-T\><rsub|2>>.
  </definition>

  <subsection|Basis of a topological space>

  <\definition>
    <label|basis of a topology><index|basis of a
    topology><index|<math|\<cal-B\>>>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space then <math|\<cal-B\>\<subseteq\>\<cal-T\>> is a
    basis for the topology <math|\<cal-T\>> if every open set is the union of
    a family in <math|\<cal-B\>>. In other words <math|\<cal-B\>> is a basis
    for <math|\<cal-T\>> iff <math|\<cal-T\>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<exists\><around*|{|B<rsub|i>|}><rsub|i\<in\>I>
    in \<cal-B\> such that U=<big|cup><rsub|i\<in\>I>U<rsub|i>|}>>
  </definition>

  <\example>
    If <math|U=\<emptyset\>> then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<emptyset\>>>
    (a empty family) is such that <math|U=<big|cup><rsub|i\<in\>\<emptyset\>>B<rsub|i>>
    [if <math|x\<in\><big|cup><rsub|i\<in\>\<emptyset\>>B<rsub|i>> then
    <math|\<exists\>i\<in\>\<emptyset\>> such that <math|x\<in\>B<rsub|i>>
    which is impossible for the empty set, so
    <math|\<emptyset\>=<big|cup><rsub|i\<in\>\<emptyset\>>B<rsub|i>>].
  </example>

  <\theorem>
    <label|basis of the subspace topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    with a basis <math|\<cal-B\>> then if <math|A\<subseteq\>X> we have that
    <math|\<cal-B\><rsub|A>=<around*|{|B<big|cap>A\|B\<in\>\<cal-B\>|}>> is a
    basis for the subspace topology <math|\<cal-T\><rsub|A>> of <math|A>
  </theorem>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|A>> then there exists a
    <math|V\<in\>\<cal-T\>> such that <math|U=V<big|cap>A>. By definition of
    a basis there exists a family <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>>
    in <math|\<cal-B\>> (meaning <math|\<forall\>i\<in\>I> we have
    <math|B<rsub|i>\<in\>\<cal-B\>>) such that
    <math|V=<big|cup><rsub|i\<in\>I>B<rsub|i>> and thus
    <math|U=V<big|cap>A=<around*|(|<big|cup><rsub|i\<in\>I>B<rsub|i>|)><big|cap>A=<big|cup><rsub|i\<in\>I><around*|(|B<rsub|i><big|cap>A|)>>
    so <math|V=<big|cup><rsub|i\<in\>I><around*|(|B<rsub|i><big|cap>A|)>>
    where <math|<around*|{|B<rsub|i><big|cap>A|}><rsub|i\<in\>I>> is a family
    in <math|\<cal-B\><rsub|A>>. Finally as
    <math|\<cal-B\>\<subseteq\>\<cal-T\>> we have
    <math|\<forall\>B\<in\>\<cal-B\>> that
    <math|B<big|cap>A\<in\>\<cal-T\><rsub|A>> and thus that
    <math|\<cal-B\><rsub|A>\<subseteq\>\<cal-T\><rsub|A>>.
  </proof>

  <\theorem>
    <label|characterization of a basis in a topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|\<cal-B\>\<subseteq\>\<cal-T\>> then <math|\<cal-B\>> is a
    basis for <math|\<cal-T\>> if and only if
    <math|\<forall\>U\<in\>\<cal-T\>> and <math|\<forall\>x\<in\>U> we have
    that <math|\<exists\>B\<in\>\<cal-B\>> such that
    <math|x\<in\>B\<subseteq\>U>
  </theorem>

  <\proof>
    \ 

    <dueto|<math|\<Rightarrow\>>>If <math|U\<in\>\<cal-T\>> then there exists
    a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>> in <math|\<cal-B\>> such
    that <math|U=<big|cup><rsub|i\<in\>I>B<rsub|i>> \ so that if
    <math|x\<in\>U> then there exists a <math|i\<in\>I> with
    <math|x\<in\>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>B<rsub|i>\<subseteq\>U>
    where of course <math|B<rsub|i>\<in\>\<cal-B\>>

    <dueto|<math|\<Leftarrow\>>>If <math|U\<in\>\<cal-T\>> then
    <math|\<forall\>x\<in\>U> there exists a <math|B<rsub|x>\<in\>\<cal-B\>>
    such that <math|x\<in\>B<rsub|x>\<subseteq\>U> this forms a family
    <math|<around*|{|B<rsub|x>|}><rsub|x\<in\>U>> in <math|\<cal-B\>> such
    that <math|<big|cup><rsub|x\<in\>U>B<rsub|x>=U> proving that
    <math|\<cal-B\>> is a basis for <math|\<cal-T\>>
  </proof>

  <\theorem>
    <label|conditions to make a basis>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|\<cal-B\>> be a basis for <math|\<cal-T\>> then\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|\<exists\>B\<in\>\<cal-B\>> with <math|x\<in\>B>

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> then if
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then
      <math|\<exists\>B<rsub|3>\<in\>\<cal-B\>> such that
      <math|x\<in\>B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X\<in\>\<cal-T\>> there exists a
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>> in <math|\<cal-B\>> such
      that <math|X=<big|cup><rsub|i\<in\>I>B<rsub|i>> and thus if
      <math|x\<in\>X> there exists a <math|i\<in\>I> such that
      <math|x\<in\>B<rsub|i>\<in\>\<cal-B\>>

      <item>If <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then as
      <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>\<subseteq\>\<cal-T\>\<Rightarrow\>B<rsub|1><big|cap>B<rsub|2>>
      there exists a <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>I>> in
      <math|\<cal-B\>> such that <math|B<rsub|1><big|cap>B<rsub|2>=<big|cup><rsub|i\<in\>I>C<rsub|i>>
      so if <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then there exists a
      <math|i\<in\>I> such that <math|x\<in\>C<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>C<rsub|i>=B<rsub|1><big|cap>B<rsub|2>>
      and thus <math|x\<in\>C<rsub|i>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>.
    </enumerate>
  </proof>

  The above show the necessary condition that a basis must full fill, the
  following shows that any set of subset full filling the above conditions
  can be the basis of a topology.

  <\theorem>
    <label|generating basis of a topology><index|generating basis of a
    topology>Let <math|X> be \ as set and let
    <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> be a set of subsets
    of <math|X> full filling\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exists a <math|B\<in\>\<cal-B\>>
      such that <math|x\<in\>B>

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> then if
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> there exists a
      <math|B<rsub|3>\<in\>\<cal-B\>> such that
      <math|x\<in\>B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>

    then

    <\equation*>
      \<cal-T\>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>x\<in\>U
      we have \<exists\>B\<in\>\<cal-B\> such that x\<in\>B\<subseteq\>U|}>
    </equation*>

    is a topology for <math|X> that has <math|\<cal-B\>> as its basis.
    <math|\<cal-B\>> is called the generating basis for <math|\<cal-T\>> and
    <math|\<cal-T\>> is called the topology generated by <math|\<cal-B\>>
  </theorem>

  <\proof>
    First we prove that <math|\<cal-T\>> is a topology for <math|X>

    <\enumerate-alpha>
      <item><math|\<emptyset\>\<in\>\<cal-T\>> (because every element in the
      empty set full fills vacuously every condition.

      <item><math|X\<in\>\<cal-T\>> for if <math|x\<in\>X> then by (1) there
      exists a <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>X>

      <item>If <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a family in
      <math|\<cal-T\>> then if <math|x\<in\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      there exists a <math|i\<in\>I> such that
      <math|x\<in\>U<rsub|i>\<in\>\<cal-T\>> so there exists a
      <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>U<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      and thus <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>>

      <item>If <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> then if
      <math|x\<in\>U<rsub|1><big|cap>U<rsub|2>\<Rightarrow\>x\<in\>U<rsub|1>\<wedge\>x\<in\>U<rsub|2>>
      so there exists <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> such that
      <math|x\<in\>B<rsub|1>\<subseteq\>U<rsub|1>\<wedge\>x\<in\>B<rsub|2>\<subseteq\>U<rsub|2>\<Rightarrow\>x\<in\>B<rsub|1><big|cap>B<rsub|2>\<subseteq\>U<rsub|1><big|cap>U<rsub|2>>
      and by (2) there exists a <math|B<rsub|3>> such that
      <math|x\<in\>B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>\<subseteq\>U<rsub|1><big|cap>U<rsub|2>>
      proving that <math|U<rsub|1><big|cap>U<rsub|2>\<in\>\<cal-T\>>
    </enumerate-alpha>

    So <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological
    space.\ 

    Also if <math|B\<in\>\<cal-B\>> then if <math|\<forall\>x\<in\>B> there
    exists a <math|B\<in\>\<cal-B\>> such that <math|x\<in\>B\<subseteq\>B>
    and thus <math|B\<in\>\<cal-T\>> giving
    <math|\<cal-B\>\<subseteq\>\<cal-T\>>.

    Next if <math|U\<in\>\<cal-T\>> and if <math|x\<in\>U> then by definition
    there exists a <math|B\<in\>\<cal-B\>> such that
    <math|x\<in\>B\<subseteq\>U> which by <reference|characterization of a
    basis in a topology> means that <math|\<cal-B\>> is a basis for
    <math|\<cal-T\>>.
  </proof>

  The following theorem shows how to create a topology out of a set of
  topologies

  <\theorem>
    <label|stitching topologies><index|stitching topologies>Let <math|X> be a
    set and <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    a family of topological spaces such that <math|\<forall\>i\<in\>I> we
    have <math|X<rsub|i>\<subseteq\>X>, <math|X=<big|cup><rsub|i\<in\>I>X<rsub|i>>
    and <math|\<forall\>i,j\<in\>I>, <math|U\<in\>\<cal-T\><rsub|i>>,
    <math|V\<in\>\<cal-T\><rsub|j>> if <math|x\<in\>U<big|cap>V> then
    <math|\<exists\>W\<in\>\<cal-T\><rsub|i><big|cap>\<cal-T\><rsub|j>> such
    that <math|x\<in\>W\<subseteq\>U<big|cap>V>. Then
    <math|\<cal-B\>=<big|cup><rsub|i\<in\>I>\<cal-T\><rsub|i>> full fills the
    requirement for a generating basis (see <reference|generating basis of a
    topology>) so that <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    with <math|\<cal-T\>=<around*|{|U\<subseteq\>X\|\<forall\>x\<in\>U we
    have \<exists\>B\<in\>\<cal-B\> such that x\<in\>B\<subseteq\>U|}>> the
    generated topology. Also <math|\<forall\>i\<in\>I> we have that
    <math|\<cal-T\><rsub|i>=\<cal-T\><rsub|X<rsub|i>>> (the subspace topology
    for <math|X<rsub|i>>). We call this procedure to create a topology from
    subspace topologies <strong|stitching topologies>.
  </theorem>

  <\proof>
    First we prove that the requirements of <reference|generating basis of a
    topology> are satisfied:

    <\enumerate>
      <item>If <math|x\<in\>X=<big|cup><rsub|i\<in\>I>X<rsub|i>\<Rightarrow\>\<exists\>i\<in\>I\<vdash\>x\<in\>X<rsub|i>\<Rightarrowlim\><rsub|\<cal-T\><rsub|i>
      is a topology\<Rightarrow\>X<rsub|i>\<in\>\<cal-T\><rsub|i>>\<exists\>U\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-B\>>
      such that <math|x\<in\>U>.

      <item>If <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> and
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> then
      <math|\<exists\>i,j\<in\>I> with <math|B<rsub|1>\<in\>\<cal-T\><rsub|i>>,
      <math|B<rsub|2>\<in\>\<cal-T\><rsub|j>> then
      <math|\<exists\>W\<in\>\<cal-T\><rsub|i><big|cap>\<cal-T\><rsub|j>\<subseteq\>\<cal-B\>>
      such that <math|x\<in\>W\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>

    By <reference|generating basis of a topology> we have then that
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a topological
    vector space.

    Now if <math|i\<in\>I> and <math|U\<in\>\<cal-T\><rsub|X<rsub|i>>> then
    there exists a <math|V\<in\>\<cal-T\>> such that
    <math|U=V<big|cap>X<rsub|i>>. Then <math|\<forall\>x\<in\>U> we have
    <math|x\<in\>V> and thus <math|\<exists\>B<rsub|x>\<in\>\<cal-B\>> such
    that <math|x\<in\>B<rsub|x>\<subseteq\>V>, but then there exists a
    <math|i<rsub|x>\<in\>I> such that <math|B<rsub|x>\<in\>\<cal-T\><rsub|i<rsub|x>>>.
    We have then that <math|V=<big|cup><rsub|x\<in\>V>B<rsub|x>> where
    <math|B<rsub|x>\<in\>\<cal-T\><rsub|i<rsub|x>>> and thus
    <math|U=<around*|(|<big|cup><rsub|x\<in\>V>B<rsub|x>|)><big|cap>X<rsub|i>=<big|cup><rsub|x\<in\>V><around*|(|B<rsub|x><big|cap>X<rsub|i>|)>>.
    If now <math|y\<in\>B<rsub|x><big|cap>X<rsub|i>> where
    <math|B<rsub|x>\<in\>\<cal-T\><rsub|i<rsub|x>>> and
    <math|X<rsub|i>\<in\>\<cal-T\><rsub|i>> then by the hypothesis there
    exists a <math|W<rsub|y>\<in\>\<cal-T\><rsub|i<rsub|x>><big|cap>\<cal-T\><rsub|i>\<subseteq\>\<cal-T\><rsub|i>>
    such that <math|y\<in\>W<rsub|y>\<subseteq\>B<rsub|x><big|cap>X<rsub|i>>
    so that <math|B<rsub|x><big|cap>X<rsub|i>=<big|cup><rsub|y\<in\>B<rsub|x><big|cap>X<rsub|i>>W<rsub|y>\<in\>\<cal-T\><rsub|i>>
    [as <math|\<cal-T\><rsub|i>> is a topology and
    <math|W<rsub|y>\<in\>\<cal-T\><rsub|i>>]. So as
    <math|B<rsub|x><big|cap>X<rsub|i>\<in\>\<cal-T\><rsub|i>> we have that
    <math|U=V<big|cap>X<rsub|i>=<big|cup><rsub|x\<in\>V><around*|(|B<rsub|x><big|cap>X<rsub|i>|)>\<in\>\<cal-T\><rsub|i>\<Rightarrow\>U\<in\>\<cal-T\><rsub|i>>
    giving

    <\equation>
      <label|eq 11.1>\<cal-T\><rsub|X<rsub|i>>\<subseteq\>\<cal-T\><rsub|i>
    </equation>

    If now <math|U\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-T\>>
    then as <math|U\<subseteq\>X<rsub|i>> we have
    <math|U=U<big|cap>X<rsub|i>\<in\>\<cal-T\><rsub|X<rsub|i>>> so that we
    have

    <\equation>
      <label|eq 11.2>\<cal-T\><rsub|i>\<subseteq\>\<cal-T\><rsub|X<rsub|i>>
    </equation>

    Using <reference|eq 11.1> and <reference|eq 11.2> we have finally
    <math|\<cal-T\><rsub|i>=\<cal-T\><rsub|X<rsub|i>>>
  </proof>

  <\theorem>
    <label|characterization of closure (another)>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then\ 

    <\enumerate>
      <item><math|x\<in\><wide|A|\<bar\>>\<Leftrightarrow\>\<forall\>U\<in\>\<cal-T\>\<vdash\>x\<in\>U>
      we have <math|U<big|cap>A\<neq\>\<emptyset\>>

      <item>If <math|\<cal-B\>> is a basis of the topology <math|\<cal-T\>>
      then <math|x\<in\><wide|A|\<bar\>>\<Leftrightarrow\>\<forall\>U\<in\>\<cal-B\>>
      with <math|x\<in\>U> we have <math|U<big|cap>A\<neq\>\<emptyset\>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>This is already proved in <reference|characterization of
        closure of a set>

        <item>If <math|x\<in\><wide|A|\<bar\>>> then if
        <math|U\<in\>\<cal-B\>\<subseteq\>\<cal-T\>> is such that
        <math|x\<in\>U> we have by (1) that
        <math|U<big|cap>A\<neq\>\<emptyset\>>. If <math|x\<in\>X> is such
        that <math|\<forall\>B\<in\>\<cal-B\>\<vdash\>x\<in\>B> we have
        <math|B<big|cap>A\<neq\>\<emptyset\>> then if <math|U\<in\>\<cal-T\>>
        is such that <math|x\<in\>U> there exists a <math|B\<in\>\<cal-B\>>
        such that <math|x\<in\>B\<subseteq\>U> and then
        <math|\<emptyset\>\<neq\>B<big|cap>A\<subseteq\>U<big|cap>A\<Rightarrow\>U<big|cap>A\<neq\>\<emptyset\>>
        so that by (1) we have <math|x\<in\><wide|A|\<bar\>>>.
      </enumerate>
    </proof>
  </theorem>

  <\theorem>
    <label|characterization of closure of a set 2>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then if <math|A\<subseteq\>X> is closed we have\ 

    <\enumerate>
      <item><math|x\<in\>A\<Leftrightarrow\>\<forall\>U\<in\>\<cal-T\>\<vdash\>x\<in\>U>
      we have <math|U<big|cap>A\<neq\>\<emptyset\>>

      <item>If <math|\<cal-B\>> is a basis of the topology <math|\<cal-T\>>
      then <math|x\<in\>A\<Leftrightarrow\>\<forall\>U\<in\>\<cal-B\>> with
      <math|x\<in\>U> we have <math|U<big|cap>A\<neq\>\<emptyset\>>
    </enumerate>
  </theorem>

  <\proof>
    This is trivial using <reference|a closed set is equal to its closurer>
    and the previous theorem <reference|characterization of closure>.
  </proof>

  <\theorem>
    <label|finer basis>Let <math|X> be a set and <math|\<cal-T\><rsub|1>>,
    <math|\<cal-T\><rsub|2>> two topologies on <math|X> with basis
    <math|\<cal-B\><rsub|1>>, <math|\<cal-B\><rsub|2>> then the following is
    equivalent

    <\enumerate>
      <item><math|\<cal-T\><rsub|2>> is finer then <math|\<cal-T\><rsub|1>>

      <item><math|\<forall\>x\<in\>X>, <math|\<forall\>B\<in\>\<cal-B\><rsub|1>\<vdash\>x\<in\>B>
      there <math|\<exists\>B<rprime|'>\<in\>\<cal-B\><rsub|2>> such that
      <math|x\<in\>B<rprime|'>\<subseteq\>B>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>then if <math|x\<in\>X> and
      <math|B\<in\>\<cal-B\><rsub|1>\<subseteq\>\<cal-T\><rsub|1>\<subseteq\>\<cal-T\><rsub|2>>
      such that <math|x\<in\>B> then there exists a
      <math|B<rprime|'>\<in\>\<cal-B\><rsub|2>> such that
      <math|x\<in\>B<rprime|'>\<subseteq\>B>.

      <item><dueto|<math|2\<Rightarrow\>1>>Let
      <math|U\<in\>\<cal-T\><rsub|1>> then <math|\<forall\>x\<in\>U> there
      exists a <math|B<rsub|x>\<in\>\<cal-B\><rsub|1>> such that
      <math|x\<in\>B<rsub|x>\<subseteq\>U> and thus by (2)
      <math|\<exists\>B<rprime|'><rsub|x>\<in\>\<cal-B\><rsub|2>> such that
      <math|x\<in\>B<rprime|'><rsub|x>\<subseteq\>B<rsub|x>\<subseteq\>U> and
      thus <math|U=<big|cup><rsub|x\<in\>U>B<rprime|'><rsub|x>\<in\>\<cal-T\><rsub|2>>
      proving that <math|\<cal-T\><rsub|1>\<subseteq\>\<cal-T\><rsub|2>>
    </enumerate>
  </proof>

  <\theorem>
    <label|sub basis topology>Let <math|X> be a set and
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> then the set
    <math|\<cal-B\>=<around*|{|B\<in\>\<cal-P\><around*|(|S|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>I>
    a finite non empty family in \<cal-S\> such that
    B=<big|cap><rsub|i\<in\>I>S<rsub|i>|}><big|cup><around*|{|X|}>> satisfies
    the conditions to become a basis (see <reference|generating basis of a
    topology>) and generates thus a topology
    <math|\<cal-T\>=<around*|{|U\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>x\<in\>U
    there \<exists\>B\<in\>\<cal-B\> such that x\<in\>B\<subseteq\>U|}>>.
    This topology is called the topology generated by the sub-base
    <math|\<cal-S\>>. <math|\<cal-B\>> is called the basis generated by the
    sub basis.
  </theorem>

  <\proof>
    We have to show that <math|\<cal-B\>> satisfies the conditions from
    <reference|generating basis of a topology>\ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then <math|x\<in\>X\<in\>\<cal-B\>>

      <item>Let <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> where
      <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> then there exists finite
      families <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>I<rsub|1>>> and
      <math|<around*|{|T<rsub|i>|}><rsub|i\<in\>I<rsub|2>>> such that
      <math|B<rsub|1>=<big|cap><rsub|i\<in\>I<rsub|1>>S<rsub|i>> and
      <math|B<rsub|2>=<big|cap><rsub|i\<in\>I<rsub|2>>T<rsub|i>>. Form then
      the family <math|<around*|{|R<rsub|i>|}><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>>
      by <math|R<rsub|<around*|(|i,0|)>>=S<rsub|i>> and
      <math|R<rsub|<around*|(|i,1|)>>=T<rsub|i>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>R<rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\><around*|(|i,j|)>\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\><around*|(|i,j|)>\<in\>I<rsub|1>\<times\><around*|{|0|}>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>|]>\<wedge\><around*|[|\<forall\><around*|(|i,j|)>\<in\>I<rsub|2>\<times\><around*|{|1|}>
        we have x\<in\>R<rsub|<around*|(|i,j|)>>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\>i\<in\>I<rsub|1>
        we have x\<in\>R<rsub|<around*|(|i,0|)>>|]>\<wedge\><around*|[|\<forall\>i\<in\>I<rsub|2>
        we have x\<in\>R<rsub|<around*|(|i,1|)>>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|[|\<forall\>i\<in\>I<rsub|1>
        we have x\<in\>S<rsub|i>|]>\<wedge\><around*|[|\<forall\>i\<in\>I<rsub|2>
        we have x\<in\>T<rsub|i>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>I<rsub|1>>S<rsub|i>\<wedge\>x\<in\><big|cap><rsub|i\<in\>I<rsub|2>>T<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>B<rsub|1><big|cap>B<rsub|2>>>>>
      </eqnarray*>

      This proves that <math|B<rsub|1><big|cap>B<rsub|2>=<big|cap><rsub|i\<in\><around*|(|I<rsub|1>\<times\><around*|{|0|}>|)><big|cup><around*|(|I<rsub|2>\<times\><around*|{|1|}>|)>>R<rsub|i>\<in\>\<cal-B\>>
      and thus we have found a <math|B=B<rsub|1><big|cap>B<rsub|2>\<in\>\<cal-B\>>
      such that <math|x\<in\>B\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>. \ 
    </enumerate>
  </proof>

  <\definition>
    <label|box topology><index|<math|\<cal-T\><rsub|box>>>Let <math|I> be a
    non empty set, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then the box topology
    <math|\<cal-T\><rsub|box>> on <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>
    is the topology generated by the basis
    <math|\<cal-B\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|\<forall\>i\<in\>I
    we have U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>>.\ 
  </definition>

  <\proof>
    We have of course prove that <reference|generating basis of a topology>
    is satisfied.

    <\enumerate>
      <item>If <math|x\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> then as
      <math|\<forall\>i\<in\>I> we have <math|X<rsub|i>\<in\>\<cal-T\><rsub|i>\<Rightarrow\><big|prod><rsub|i\<in\>I>X<rsub|i>\<in\>\<cal-B\>>

      <item>Let <math|U<rsub|1>=<big|prod><rsub|i\<in\>I>V<rsub|i>\<in\>\<cal-B\>>,
      <math|U<rsub|2>=<big|prod><rsub|i\<in\>>W<rsub|i>\<in\>\<cal-B\>> then
      <math|\<forall\>i\<in\>I> we have <math|V<rsub|i>,W<rsub|i>\<in\>\<cal-T\><rsub|i>\<Rightarrow\>V<rsub|i><big|cap>W<rsub|i>\<in\>\<cal-T\><rsub|i>>
      we have then <math|U<rsub|1><big|cap>U<rsub|2>\<equallim\><rsub|<with|mode|text|<reference|intersection
      of general product of sets>>><big|prod><rsub|i\<in\>I><around*|(|V<rsub|i><big|cap>W<rsub|i>|)>\<in\>\<cal-B\>>
      [as <math|V<rsub|i><big|cap>W<rsub|i>\<in\>\<cal-T\><rsub|i>>]
    </enumerate>
  </proof>

  <\theorem>
    <label|box topology and base>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces so that <math|\<forall\>i\<in\>I> we
    have that <math|\<cal-B\><rsub|i>> is a basis of
    <math|\<cal-T\><rsub|i>>. Then <math|\<cal-B\>=<around*|{|<big|prod><rsub|i\<in\>I>B<rsub|i>\|\<forall\>i\<in\>I\<vDash\>B<rsub|i>\<in\>\<cal-B\><rsub|i>|}>>
    is a basis for the box topology on <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>.
  </theorem>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|box>> and <math|x\<in\>U> then as
    <math|<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|\<forall\>i\<in\>I\<vDash\>U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>>
    we have by <reference|characterization of a basis in a topology> that
    there exists a <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> where
    <math|\<forall\>i\<in\>I\<vDash\>U<rsub|i>\<in\>\<cal-T\><rsub|i>> such
    that <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\>U>. Now
    <math|\<forall\>i\<in\>I> we have <math|x<rsub|i>\<in\>U<rsub|i>> and
    thus as <math|\<cal-B\><rsub|i>> is a basis for <math|\<cal-T\><rsub|i>>
    there exists a <math|B\<in\>\<cal-B\><rsub|i>> such that
    <math|x<rsub|i>\<in\>B\<subseteq\>U<rsub|i>>. So if we define
    <math|\<forall\>i\<in\>I> <math|\<cal-A\><rsub|i>=<around*|{|B\<in\>\<cal-B\><rsub|i>\|x<rsub|i>\<in\>B\<subseteq\>U<rsub|i>|}>>
    then <math|\<cal-A\><rsub|i>\<neq\>\<emptyset\>> and thus by the axiom of
    choice (see <reference|equivalences of axiom of choice>) there exists a
    choice function <math|B:I\<rightarrow\><big|cup><rsub|i\<in\>I>\<cal-A\><rsub|i>>
    such that <math|\<forall\>i\<in\>I> we have
    <math|B<rsub|i>\<in\>\<cal-A\><rsub|i>> and thus
    <math|x<rsub|i>\<in\>B<rsub|i>\<subseteq\>U<rsub|i>> and
    <math|B<rsub|i>\<in\>\<cal-B\><rsub|i>>. This defines a family
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>I>> such that
    <math|\<forall\>i\<in\>I> we have <math|B<rsub|i>\<in\>\<cal-B\><rsub|i>>
    and <math|x<rsub|i>\<in\>B<rsub|i>\<subseteq\>U<rsub|i>> and thus by
    <reference|condition to belong to a product of sets> and
    <reference|general product of sets and subsets> we have
    <math|x\<in\><big|prod><rsub|i\<in\>I>B<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>U<rsub|i>\<subseteq\>U>
    where <math|<big|prod><rsub|i\<in\>I>B<rsub|i>\<in\>\<cal-B\>>, using
    <reference|characterization of a basis in a topology> again we have then
    proved that <math|\<cal-B\>> is a basis for the box topology.
  </proof>

  <\definition>
    <label|product topology>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then the product topology
    <math|\<cal-T\><rsub|product>> on <math|<big|prod><rsub|i\<in\>I>X<rsub|i>>
    is defined by the topology generated by the sub base
    <math|\<cal-S\>=<around*|{|\<pi\><rsub|i><rsup|-1><around*|(|V|)>\|i\<in\>I\<wedge\>V\<in\>\<cal-T\><rsub|i>|}>>
  </definition>

  <\theorem>
    <label|basis for the product topology>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then the product topology
    <math|\<cal-T\><rsub|product>> on <math|X=<big|prod><rsub|i\<in\>I>X<rsub|i>>
    has as its basis <math|\<cal-B\>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|where
    <around*|{|U<rsub|i>|}><rsub|i\<in\>I> is a family such that \<exists\>A
    finite \<subseteq\>I such that \<forall\>i\<in\>I\\\\A we have
    U<rsub|i>=X<rsub|i> and \<forall\>i\<in\>A we have
    U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>>
  </theorem>

  <\proof>
    First \ <math|\<cal-S\>=<around|{|\<pi\><rsub|i><rsup|-1><around|(|V|)>\|i\<in\>I,V\<in\>\<cal-T\><rsub|i>|}>>
    is the generating sub basis of <math|\<cal-T\><rsub|product>> and the
    basis <math|\<cal-B\><rprime|'>> for <math|\<cal-T\><rsub|product>> is
    given by <math|\<cal-B\><rprime|'>=<around*|{|B\<in\>\<cal-P\><around*|(|S|)>\|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J>
    a finite non empty family in \<cal-S\> such that
    B=<big|cap><rsub|i\<in\>J>S<rsub|i>|}><big|cup><around*|{|X|}>>. We have
    then:

    <\enumerate>
      <item><dueto|<math|B\<in\>\<cal-B\><rprime|'>>>then we have either\ 

      <\enumerate>
        <item><dueto|<math|B=X>>then <math|B=<big|prod><rsub|i\<in\>I>X<rsub|i>>
        and if we take <math|A=\<emptyset\>> (which is finite) then
        <math|\<forall\>i\<in\>A> we have
        <math|X<rsub|i>\<in\>\<cal-T\><rsub|i>> vacuously and
        <math|\<forall\>i\<in\>I=I\\\\A> we have
        <math|X<rsub|i>\<in\>\<cal-T\><rsub|i>> and thus
        <math|B\<in\>\<cal-B\><rprime|'>>

        <item><dueto|<math|\<exists\><around*|{|S<rsub|i>|}><rsub|i\<in\>J> a
        finite non empty family in \<cal-S\> such that
        B=<big|cap><rsub|i\<in\>J>S<rsub|i>>>as <math|\<forall\>i\<in\>J> we
        have <math|S<rsub|i>\<in\>\<cal-S\>> there exists a
        <math|k<rsub|i>\<in\>I> and <math|U<rsub|i>\<in\>\<cal-T\><rsub|k<rsub|i>>>
        such that <math|S<rsub|i>=\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|i>|)>>.
        Now if we take <math|<around*|{|B<rsub|k<rsub|i>,k>|}><rsub|k\<in\>I>>
        where <math|B<rsub|k<rsub|i>,k>=<choice|<tformat|<table|<row|<cell|U<rsub|i>
        if k=k<rsub|i>>>|<row|<cell|X<rsub|k> if
        k\<neq\>k<rsub|i>>>>>>\<Rightarrowlim\>B<rsub|k<rsub|i>,k>\<in\>\<cal-T\><rsub|k>>[if
        <math|k=k<rsub|i>> then <math|B<rsub|k<rsub|i>,k>=U<rsub|i>\<in\>\<cal-T\><rsub|k<rsub|i>>=\<cal-T\><rsub|k>>
        and if <math|k\<neq\>k<rsub|i>> then
        <math|B<rsub|k<rsub|i>,k>=X<rsub|k>\<in\>\<cal-T\><rsub|k>>]. Then we
        have <math|S<rsub|i>=\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|i>|)>=<big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>>
        [If <math|x\<in\>\<pi\><rsup|-1><rsub|k<rsub|i>><around*|(|U<rsub|i>|)>>
        then <math|\<pi\><rsub|k<rsub|i>><around*|(|x|)>\<in\>U<rsub|i>=B<rsub|k<rsub|i>,k<rsub|i>>>
        and <math|\<forall\>k\<in\>I\\\\<around*|{|k<rsub|i>|}>> we have
        <math|\<pi\><rsub|k><around*|(|x|)>\<in\>X<rsub|k>> so that
        <math|x\<in\><big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>>, if
        <math|x\<in\><big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>> then
        <math|\<pi\><rsub|k<rsub|i>><around*|(|x|)>\<in\>B<rsub|k<rsub|i>,k<rsub|i>>=U<rsub|i>\<Rightarrow\>x\<in\>\<pi\><rsub|k<rsub|i>><rsup|-1><around*|(|U<rsub|i>|)>>]
        So <math|B=<big|cap><rsub|i\<in\>J><around*|(|<big|prod><rsub|k\<in\>I>B<rsub|k<rsub|i>,k>|)>\<equallim\><rsub|<with|mode|text|<reference|intersection
        of a product>>><big|prod><rsub|k\<in\>I><around*|(|<big|cap><rsub|i\<in\>J>B<rsub|k<rsub|i>,k>|)>=<big|prod><rsub|k\<in\>I>C<rsub|k>>
        where <math|\<forall\>k\<in\>I> we have that
        <math|C<rsub|k>=<big|cap><rsub|i\<in\>J>B<rsub|k<rsub|i>,k>>. As
        <math|J> is finite and <math|B<rsub|k<rsub|i>,k>\<in\>\<cal-T\><rsub|k>>
        we have that <math|C<rsub|k>\<in\>\<cal-T\><rsub|k>>. Define now
        <math|A\<subseteq\>I> by <math|A=<around*|{|k<rsub|i>\|i\<in\>J|}>>
        which is finite as <math|J> is finite. If <math|k\<in\>A> we have
        <math|C<rsub|k>\<in\>\<cal-T\><rsub|k>> and if <math|k\<in\>I\\\\A>
        then <math|\<forall\>i\<in\>J> we have
        <math|k<rsub|i>\<neq\>k\<Rightarrow\>B<rsub|k<rsub|i>,k>=X<rsub|k>\<Rightarrow\>C<rsub|k>=X<rsub|k>>.
        This proves that <math|B\<in\>\<cal-B\>>.
      </enumerate>

      <item><dueto|<math|B\<in\>\<cal-B\>>>then there exists a family
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> and a finite
      <math|A\<subseteq\>I> such that <math|\<forall\>i\<in\>A> we have
      <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> and
      <math|\<forall\>i\<in\>I\\\\A> we have <math|U<rsub|i>=X<rsub|i>> with
      <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>>. Define now
      <math|<around*|{|U<rsub|i,j>|}><rsub|i\<in\>A\<times\>I>> by
      <math|A<rsub|i,j>=<choice|<tformat|<table|<row|<cell|U<rsub|i> if
      i=j>>|<row|<cell|X<rsub|j> if i\<neq\>j>>>>>> then
      <math|U<rsub|i>=<big|cap><rsub|j\<in\>A>A<rsub|j,i>> [if
      <math|x\<in\>U<rsub|i>\<subseteq\>X<rsub|i>> then
      <math|\<forall\>j\<in\>A> we have either
      <math|i=j\<Rightarrow\>x\<in\>U<rsub|i>=A<rsub|i,i>> or if
      <math|i\<neq\>j> then <math|x\<in\>X<rsub|i>=A<rsub|j,i>> so that
      <math|x\<in\><big|cap><rsub|j\<in\>A>A<rsub|j,i>>, if
      <math|x\<in\><big|cap><rsub|j\<in\>A>A<rsub|j,i>> then if
      <math|i\<in\>I\\\\A> we have <math|\<forall\>j\<in\>A> that
      <math|j\<neq\>i> so that <math|A<rsub|j,i>=X<rsub|i>=U<rsub|i>> and
      <math|x\<in\>U<rsub|i>> and if <math|i\<in\>A> we have
      <math|x\<in\>A<rsub|i,i>=U<rsub|i>>]. So
      <math|B=<big|prod><rsub|i\<in\>I><around*|(|<big|cap><rsub|j\<in\>A>A<rsub|j,i>|)>\<equallim\><rsub|<with|mode|text|<reference|intersection
      of a product>>><big|cap><rsub|j\<in\>A><around*|(|<big|prod><rsub|i\<in\>I>A<rsub|j,i>|)>>.
      Now <math|\<forall\>j\<in\>A> we have
      <math|<big|prod><rsub|i\<in\>I>A<rsub|j,i>=\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|i>|)>>
      [if <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|j,i>> then
      <math|\<pi\><rsub|j><around*|(|x|)>\<in\>A<rsub|j,j>=U<rsub|j>\<Rightarrow\>x\<in\>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)><rsub|>>,
      if <math|x\<in\>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>> then
      <math|x\<in\>X> such that <math|\<pi\><rsub|j><around*|(|x|)>\<in\>U<rsub|j>=A<rsub|j,j>>
      and if <math|i\<neq\>j> we have <math|\<pi\><rsub|i><around*|(|x|)>\<in\>X<rsub|i>=A<rsub|j,i>>
      so that <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsub|j,i>>] so that
      <math|B=<big|cap><rsub|j\<in\>A>\<pi\><rsub|j><rsup|-1><around*|(|U<rsub|j>|)>>
      proving that <math|B\<in\>\<cal-B\><rprime|'>>
    </enumerate>
  </proof>

  <\corollary>
    <label|basis of product topology>Let <math|I> be a non empty set,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then the product topology
    <math|\<cal-T\><rsub|product>> on <math|X=<big|prod><rsub|i\<in\>I>X<rsub|i>>
    has as its basis <math|\<cal-B\>=<around*|{|<big|cap><rsub|i\<in\>A>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\|\<cal-A\>\<subseteq\>I\<wedge\>\<cal-A\>
    is finite and \<forall\>i\<in\>\<cal-A\> we have that U<rsub|i> is open
    in X<rsub|i>|}>>
  </corollary>

  <\proof>
    Take <math|\<cal-B\>> the basis of <math|X> defined in the previous
    theorem (see <reference|basis for the product topology>) then
    <math|B\<in\>\<cal-B\>> if and only if
    <math|\<exists\>\<cal-A\>\<subseteq\>I>, <math|\<cal-A\>> finite and
    <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>> where
    <math|U<rsub|i>=X<rsub|i>> if <math|i\<in\>I\\\\\<cal-A\>> and
    <math|U<rsub|i>> is open in <math|X<rsub|i>> if <math|i\<in\>\<cal-A\>>.
    We prove now that <math|B=<big|cap><rsub|i\<in\>\<cal-A\>>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>>

    <\enumerate>
      <item>If <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>> then if
      <math|i\<in\>\<cal-A\>> we haven that
      <math|\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i>> or
      <math|x\<in\>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<Rightarrow\>x\<in\><big|cap><rsub|i\<in\>\<cal-A\>>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>>

      <item>If <math|x\<in\><big|cap><rsub|i\<in\>\<cal-A\>>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>>
      then <math|\<forall\>i\<in\>\<cal-A\>> we have
      <math|x\<in\>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<Rightarrow\>x<rsub|i>=\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i>>.
      If <math|i\<in\>I\\\\\<cal-A\>> then we have trivially that
      <math|\<pi\><rsub|i><around*|(|x|)>\<in\>X<rsub|i>=U<rsub|i>> so that
      <math|x\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>>
    </enumerate>
  </proof>

  Using the above theorem it is now easy to prove that in the finite case the
  box topology is equivalent with the product topology.\ 

  <\theorem>
    <label|finite product topology is box topology>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>><rsub|i\<in\>I>|}>>
    be a family of topological spaces then <math|\<cal-T\><rsub|box>> on
    <math|X=<big|prod><rsub|i\<in\>I>X<rsub|i>> is finer then
    <math|\<cal-T\><rsub|product>> on <math|X>. If <math|I> is finite then
    <math|\<cal-T\><rsub|box>=\<cal-T\><rsub|product>>\ 
  </theorem>

  <\proof>
    Let <math|\<cal-B\><rsub|product>\<equallim\><rsub|<with|mode|text|<reference|basis
    for the product topology>>><around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|where
    <around*|{|U<rsub|i>|}><rsub|i\<in\>I> is a family such that \<exists\>A
    finite \<subseteq\>I such that \<forall\>i\<in\>I\\\\A we have
    U<rsub|i>=X<rsub|i> and \<forall\>i\<in\>A we have
    U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>> be the basis for the product
    topology and let <math|\<cal-B\><rsub|box>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|\<forall\>i\<in\>I
    we have U<rsub|i>\<in\>\<cal-T\><rsub|i>|}>> be the basis of the box
    topology. Then if <math|B\<in\>\<cal-B\><rsub|product>> there exists a
    family <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> and a finite
    <math|A\<subseteq\>I> such that <math|\<forall\>i\<in\>A> we have
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>>, <math|\<forall\>i\<in\>I\\\\A>
    we have <math|U<rsub|i>=X<rsub|i>\<in\>\<cal-T\><rsub|i>> and
    <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>> so that
    <math|B\<in\>\<cal-B\><rsub|box>>, this proves that
    <math|\<cal-B\><rsub|product>\<subseteq\>\<cal-B\><rsub|box>> and thus by
    <reference|finer basis> we have that <math|\<cal-T\><rsub|box>> is finer
    then <math|\<cal-T\><rsub|product>> or
    <math|\<cal-T\><rsub|product>\<subseteq\>\<cal-T\><rsub|box>>. If
    <math|I> is finite then if <math|B\<in\>\<cal-B\><rsub|box>> then there
    exists a family <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> such that
    <math|\<forall\>i\<in\>I> finite we have
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>> and
    <math|\<forall\>i\<in\>I\\\\I=\<emptyset\>> we have
    <math|U<rsub|i>=X<rsub|i>> vacuously with <math|B=U<rsub|i>> proving that
    <math|B\<in\>\<cal-B\><rsub|product>>. This proves that
    <math|\<cal-B\><rsub|product>=\<cal-B\><rsub|box>> and thus that
    <math|\<cal-T\><rsub|product>=\<cal-T\><rsub|box>>.
  </proof>

  \;

  <\theorem>
    <label|product topological of subspace topologies>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces and let <math|\<forall\>i\<in\>I>
    <math|A<rsub|i>\<subseteq\>X<rsub|i>> be equipped with the subspace
    topology <math|\<cal-T\><rsub|A<rsub|i>>> then the subspace topology of
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|prod><rsub|i\<in\>I>X<rsub|i>>
    is the same as the product topology of
    <math|<around*|{|<around*|\<langle\>|A<rsub|i>,\<cal-T\><rsub|A<rsub|i>>|\<rangle\>>|}><rsub|i\<in\>I>>
  </theorem>

  <\proof>
    Let <math|\<cal-B\><rsub|1>> be the base of the product topology on
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>> then the subspace topology on
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>> is defined by
    <math|\<cal-B\><rsub|1>=<around|{|B<big|cap><around|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>\|B\<in\>\<cal-B\><rsub|1>|}>>
    and let <math|\<cal-B\><rsub|2>> be a basis for the product topology of
    <math|<big|prod><rsub|i\<in\>I>A<rsub|i>>.\ 

    <\enumerate>
      <item>If <math|U\<in\>\<cal-B\><rsub|1>\<Rightarrowlim\><rsub|<reference|basis
      of product topology>>U=<around|(|<big|prod><rsub|i\<in\>I>U<rsub|i>|)><big|cap><around|(|<big|prod><rsub|j\<in\>I>A<rsub|j>|)>>
      where <math|U<rsub|i>=X<rsub|i>> except for a finite subset of <math|I>
      where <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>\<Rightarrow\>U=<big|prod><rsub|i\<in\>I><around|(|U<rsub|i><big|cap>A<rsub|i>|)>>
      where <math|<around|(|U<rsub|i><big|cap>A<rsub|i>|)>=A<rsub|i>
      <around|(|if U<rsub|i>=X<rsub|i>|)>> except for a finite subset of
      <math|I> where <math|<around|(|U<rsub|i><big|cap>A<rsub|i>|)>\<in\>\<cal-T\><rsub|A<rsub|i>>>
      and thus <math|U\<in\>\<cal-B\><rsub|2>>

      <item>If <math|U\<in\>\<cal-B\><rsub|2> > then
      <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>> where
      <math|U<rsub|i>=A<rsub|i>=A<rsub|i><big|cap>A<rsub|i>> except for a
      finite subset of <math|I> where <math|U<rsub|i>=W<rsub|i><big|cap>A<rsub|i>>
      <math|<around|(|W<rsub|i>\<in\>\<cal-T\><rsub|i>|)>> and thus if
      <math|V<rsub|i>=X<rsub|i>> except for a finite subset where
      <math|V<rsub|i>=W<rsub|i>> then <math|B=<big|prod><rsub|i\<in\>I><around|(|V<rsub|i><big|cap>A<rsub|i>|)>=<around|(|<big|prod><rsub|i\<in\>I>V<rsub|i>|)><big|cap><around|(|<big|prod><rsub|i\<in\>I>A<rsub|i>|)>>
      where <math|V<rsub|i>=A<rsub|i>> except for a finite subset of <math|I>
      where <math|V<rsub|i>\<in\>\<cal-T\><rsub|i>\<Rightarrow\>B\<in\>\<cal-B\><rsub|1>>
    </enumerate>

    now as we just have proved that <math|\<cal-B\><rsub|1>=\<cal-B\><rsub|2>>
    we use <reference|finer basis> to prove that both topologies are the
    same.
  </proof>

  <subsection|Dense sets>

  <\definition>
    <label|dense subset><index|dense subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a toplogical space
    then <math|A\<subseteq\>X> is a dense subset if <math|<wide|A|\<bar\>>=X>
  </definition>

  <\definition>
    <label|Baire space><index|Baire space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a Baire space if
    for every family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    with <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <math|A<rsub|i>> is closed and <math|A<rsub|i><rsup|\<circ\>>=\<emptyset\>>,
    we have that <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>=\<emptyset\>>.
    In other words the union of any family of closed sets with empty interior
    has also empty interior.
  </definition>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|A\<subseteq\>X> then <math|A<rsup|\<circ\>>=\<emptyset\>> if
    and only if <math|X\\\\A> is dense in <math|A>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If
      <math|A<rsup|\<circ\>>=\<emptyset\>> then if <math|x\<in\>X> and
      <math|U> open with <math|x\<in\>U> we have <math|U\<nsubseteq\>A>
      (otherwise <math|x\<in\>A<rsup|\<circ\>>>)<math|\<Rightarrow\>U<big|cap><around*|(|X\\\\A|)>\<neq\>\<emptyset\>\<Rightarrow\><wide|X\\\\A|\<bar\>>=X>
      proving that <math|X\\\\A> is dense in <math|X>.

      <item><dueto|<math|\<Leftarrow\>>>Assume <math|X\\\\A> is dense in
      <math|A> and that <math|x\<in\>A<rsup|\<circ\>>> which as
      <math|A<rsup|\<circ\>>> is open means by the density of <math|X\\\\A>
      in <math|X> means that <math|A<rsup|\<circ\>><big|cap><around*|(|X\\\\A|)>\<neq\>\<emptyset\>>
      so there exists a <math|y\<nin\>A> and
      <math|y\<in\>A<rsup|\<circ\>>\<subseteq\>A> which is a contradiction.
      This means that <math|A<rsup|\<circ\>>=\<emptyset\>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|alternative definition of Baire sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a Baire space
    if and only if for every <math|<around|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    with <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <math|U<rsub|i>> is open and dense in <math|X> then
    <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>> is dense in
    <math|X>. In other words the intersection of every sequence of open dense
    sets in <math|X> is dense in <math|X>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Let
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
      family of open dense sets in <math|X> define then
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> where
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>=X\\\\U<rsub|i>> a closed set. As
      <math|U<rsub|i>=X\\\\<around*|(|X\\\\U<rsub|i>|)>=X\\\\A<rsub|i>> is by
      assumption dense in <math|X> we have by the previous theorem that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0> we have
      A<rsup|\<circ\>><rsub|i>=\<emptyset\>>. By definition of a Baire space
      w have then that <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>=\<emptyset\>>
      and thus by the previous theorem we have
      <math|X\\\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      is dense in <math|X>. Also <math|X\\\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=X<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|c>=X<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i><rsup|c>|)>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>X<big|cap>A<rsub|i><rsup|c>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\\\A<rsub|i>|)>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>>
      so that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>> is
      dense in <math|X>.

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> a family
      of closed sets with <math|A<rsup|\<circ\>><rsub|i>=\<emptyset\>> for
      all <math|i\<in\>\<bbb-N\><rsub|0>>, define then
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|U<rsub|i>=X\\\\A<rsub|i>>. As <math|A<rsub|i>> is closed we have
      that <math|U<rsub|i>> is open and by the previous theorem we have that
      <math|U<rsub|i>> is dense in <math|X>. By the assumption we have then
      that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>> is dense
      in <math|X>. Using the previous theorem we have then that
      <math|\<emptyset\>=<around*|(|X\\\\<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>|)><rsup|\<circ\>>=<around*|(|X<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>|)><rsup|c>|)><rsup|\<circ\>>=<around*|(|X<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i><rsup|c>|)>|)><rsup|\<circ\>>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X<big|cap>U<rsub|i><rsup|c>|)>|)><rsup|\<circ\>>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X<big|cap><around*|(|X<big|cap>A<rsub|i><rsup|c>|)><rsup|c>|)>|)><rsup|\<circ\>>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X<big|cap><around*|(|X<rsup|c><big|cup>A<rsub|i>|)>|)>|)><rsup|\<circ\>>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X<big|cap>A<rsub|i>|)>|)><rsup|\<circ\>>\<equallim\><rsub|A<rsub|i>\<subseteq\>X><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>>
      proving that <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
      Baire.
    </enumerate>
  </proof>

  <section|Metric Spaces>

  <\definition>
    <label|pseudo metric space><index|pseudo metric space>A pseudo metric
    space <math|<around*|\<langle\>|X,d|\<rangle\>>> is a non empty set
    together with a function <math|d:X\<times\>X\<rightarrow\>\<bbb-R\>>
    [<math|d> is called the pseudo metric] such that
    <math|\<forall\>x,y,z\<in\>X> we have\ 

    <\enumerate>
      <item><math|d<around*|(|x,x|)>=0>

      <item><math|d<around*|(|x,y|)>=d<around*|(|y,x|)>>

      <item><math|d<around*|(|x,z|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,z|)>>
    </enumerate>

    If also <math|d<around*|(|x,y|)>=0\<Rightarrow\>x=y> then we call
    <math|d> a metric and <math|<around*|\<langle\>|X,d|\<rangle\>>> a metric
    space
  </definition>

  <\theorem>
    If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo metric space
    then <math|\<forall\>x,y\<in\>X> we have
    <math|d<around*|(|x,y|)>\<geqslant\>0> (distance are positive).
  </theorem>

  <\proof>
    If <math|x,y\<in\>X> then <math|0=d<around*|(|x,x|)>\<leqslant\>d<around*|(|x,y|)>+d<around*|(|y,x|)>=d<around*|(|x,y|)>+d<around*|(|x,y|)>=2\<cdot\>d<around*|(|x,y|)>\<Rightarrow\>0\<leqslant\>d<around*|(|x,y|)>>
  </proof>

  <\definition>
    <label|limit of a partial function><index|limit of a partial function>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be pseudo metric
    spaces and <math|f:X\<rightarrow\>Y> a <strong|partial function> (should
    not be a function but can be a function if <math|dom<around*|(|f|)>=X>).
    Given a <math|x\<in\>X> and a <math|y\<in\>Y> we say that
    <math|lim<rsub|h\<rightarrow\>x>f<around*|(|h|)>=y> if and only if
    <math|\<forall\>\<varepsilon\>\<gtr\>0
    <around*|(|\<varepsilon\>\<in\>\<bbb-R\>|)>> there exists a
    <math|\<delta\>\<gtr\>0> (<math|\<delta\>\<in\>\<bbb-R\>>) such that
    <math|\<forall\>x<rprime|'>\<in\>dom<around*|(|f|)>> with
    <math|0\<less\>d<rsub|X><around*|(|x,x<rprime|'>|)>\<less\>\<varepsilon\>>
    we have that <math|d<rsub|Y><around*|(|y,f<around*|(|x<rprime|'>|)>|)>\<less\>\<varepsilon\>>
  </definition>

  <\note>
    Note that neither <math|x> should be in <math|dom<around*|(|f|)>> or
    <math|y> should be in <math|range<around*|(|f|)>>
  </note>

  <\definition>
    <label|open ball><index|open ball><index|<math|B<rsub|d><around*|(|x,\<varepsilon\>|)>>>Given
    a pseudo metric space <math|<around*|\<langle\>|X,d|\<rangle\>>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then
    <math|B<rsub|d><around*|(|x,\<varepsilon\>|)>=<around*|{|y\<in\>X\|d<around*|(|x,y|)>\<less\>\<varepsilon\>|}>>
    is called the open ball centered around <math|x> with radius
    <math|\<varepsilon\>>.
  </definition>

  <\definition>
    <label|closed ball><index|closed ball><index|<math|<wide|B|\<bar\>><rsub|d><around*|(|x,\<varepsilon\>|)>>>Given
    a pseudo metric space <math|<around*|\<langle\>|X,d|\<rangle\>>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then
    <math|<wide|B|\<bar\>><rsub|d><around*|(|x,\<varepsilon\>|)>=<around*|{|y\<in\>X\|d<around*|(|x,y|)>\<leqslant\>\<varepsilon\>|}>>
    is called the closed ball centered around <math|x> with radius
    <math|\<varepsilon\>>.
  </definition>

  \ 

  <\remark>
    Until further notice we adopt the usual convention that
    <math|\<varepsilon\>\<gtr\>0> means the same as
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
  </remark>

  <\theorem>
    <label|intersection of balls>Given a pseudo metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> then if
    <math|x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
    then <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
  </theorem>

  <\proof>
    Let <math|x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>\<Rightarrow\>d<around*|(|x<rsub|1>,x|)>\<less\>\<varepsilon\><rsub|1>\<wedge\>d<around*|(|x<rsub|2>,x|)>\<less\>\<varepsilon\>>,
    take then <math|\<varepsilon\>=min<around*|(|\<varepsilon\><rsub|1>-d<around*|(|x<rsub|1>,x|)>,\<varepsilon\><rsub|2>-d<around*|(|x<rsub|2>,x|)>|)>\<gtr\>0>
    then if <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> we have
    <math|d<around*|(|x,y|)>\<less\>\<varepsilon\>> so for <math|i=1,2> we
    have <math|d<around*|(|x<rsub|i>,y|)>\<leqslant\>d<around*|(|x<rsub|i>,x|)>+d<around*|(|x,y|)>\<less\>d<around*|(|x<rsub|i>,x|)>+\<varepsilon\>\<leqslant\>d<around*|(|x<rsub|i>,x|)>+<around*|(|\<varepsilon\><rsub|i>-d<around*|(|x<rsub|i>,x|)>|)>=\<varepsilon\><rsub|i>\<Rightarrow\>y\<in\>B<rsub|d><around*|(|x<rsub|i>,\<varepsilon\><rsub|i>|)>>
  </proof>

  As <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> means
  <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)><big|cap>B<rsub|d><around*|(|x,\<varepsilon\>|)>>
  we can use the previous theorem to prove the following corollary.

  <\corollary>
    <label|ball in balls>Given a pseudo metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> and
    <math|y\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> then
    <math|\<exists\>\<delta\>\<gtr\>0> such that
    <math|B<rsub|d><around*|(|y,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>
  </corollary>

  <\theorem>
    <label|metric topology><index|metric topology>Given a pseudo metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> we have that
    <math|\<cal-B\>=<around*|{|B<rsub|d><around*|(|x,\<varepsilon\>|)>\|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>\<wedge\>x\<in\>X|}>>
    satisfies the requirements for a generating basis (see
    <reference|generating basis of a topology>), the generated topology on
    <math|X> is called the topology generated by the pseudo metric. If not
    specified we will for the rest of this book assume that we use the
    generated topology for a pseudo metric space.
  </theorem>

  <\proof>
    To see if <math|\<cal-B\>> satisfies the requirements of
    <reference|generating basis of a topology> note that:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|x\<in\>B<rsub|d><around*|(|x,1|)>\<in\>\<cal-B\>>

      <item><math|\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-B\>> with
      <math|x\<in\>B<rsub|1><big|cap>B<rsub|2>> we have
      <math|B<rsub|1>=B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)>>,
      <math|B<rsub|2>=B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
      then as <math|x\<in\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
      we have by <reference|intersection of balls> the existence of a
      <math|\<delta\>> such that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|1>,\<varepsilon\><rsub|1>|)><big|cap>B<rsub|d><around*|(|x<rsub|2>,\<varepsilon\><rsub|2>|)>>
      so we found a <math|B<rsub|3>=B<rsub|d><around*|(|x,\<delta\>|)>\<in\>\<cal-B\>>
      such that <math|x\<in\>B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
    </enumerate>
  </proof>

  <\corollary>
    <label|open sets in metric topology>Given a pseudo metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> then <math|U> is a open set in
    the metric topology if and only if <math|\<forall\>x\<in\>U> there exists
    a <math|\<delta\>\<gtr\>0> such that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If <math|x\<in\>U> open in the
      metric topology then by the definition of a basis there exists a
      <math|y\<in\>X> and a <math|\<varepsilon\>\<gtr\>0> such that
      <math|x\<in\>B<rsub|d><around*|(|y,\<varepsilon\>|)>\<subseteq\>U>.
      Using <reference|ball in balls> there exists a <math|\<delta\>\<gtr\>0>
      such that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y,\<varepsilon\>|)>\<subseteq\>U>

      <item><dueto|<math|\<Leftarrow\>>>If for every <math|x\<in\>U> there
      exists a <math|\<delta\><rsub|x>\<gtr\>0> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>\<subseteq\>U\<Rightarrow\>U=<big|cup><rsub|x\<in\>U>B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>>
      which is open as <math|B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>> is
      open by the definition of a basis.
    </enumerate>

    <math|>
  </proof>

  <\theorem>
    <label|closed balls are closed>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a pseudo metric space then closed balls are indeed closed
  </theorem>

  <\proof>
    Let <math|<wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>> be a
    closed ball and let <math|y\<in\>X<mid|\\\\><wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>\<Rightarrow\>d<around|(|x,y|)>\<gtr\>\<varepsilon\>>
    take then <math|\<delta\>=d<around|(|x,y|)>-\<varepsilon\>\<gtr\>0>, now
    let <math|z\<in\>B<rsub|d><around|(|y,\<delta\>|)>> then assume that
    <math|d<around|(|z,x|)>\<leqslant\>\<varepsilon\>\<Rightarrow\>d<around|(|x,y|)>\<leqslant\>d<around|(|x,z|)>+d<around|(|z,y|)>\<leqslant\>\<varepsilon\>+d<around|(|z,y|)>\<less\>\<varepsilon\>+\<delta\>=\<varepsilon\>+d<around|(|x,y|)>-\<varepsilon\>=d<around|(|x,y|)>\<Rightarrow\>d<around|(|x,y|)>\<less\>d<around|(|x,y|)>>
    a contradiction, so <math|d<around|(|z,x|)>\<gtr\>\<varepsilon\>\<Rightarrow\>z\<in\>X<mid|\\\\><wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>\<Rightarrow\>B<rsub|d><around|(|y,\<delta\>|)>\<subseteq\>X<mid|\\\\><wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>\<Rightarrowlim\><rsub|<reference|open
    sets in metric topology>>X<mid|\\\\><wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>>
    is open in the metric topology and thus
    <math|<wide|B|\<bar\>><rsub|d><around|(|x,\<varepsilon\>|)>> is closed
  </proof>

  <\theorem>
    <label|subspace topology of a metric space>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a (pseudo) metric space and
    <math|A\<subseteq\>X> then the subspace topology on <math|A> is generated
    by the (pseudo) metric <math|d<rsub|\|A\<times\>A>:A\<times\>A\<rightarrow\>\<bbb-R\>>
    [<math|d<rsub|\|A\<times\>A>> is the restriction of <math|d> to
    <math|A\<times\>A>]
  </theorem>

  <\proof>
    \;

    First we prove that <math|d<rsub|\|A\<times\>A>> is a pseudo metric so
    let <math|x,y,z\<in\>A> then we have

    <\enumerate>
      <item><math|d<rsub|\|A\<times\>A><around*|(|x,x|)>=d<around*|(|x,x|)>=0>

      <item><math|d<rsub|\|A\<times\>A><around*|(|x,y|)>=d<around*|(|x,y|)>=d<around*|(|y,x|)>=d<rsub|\|A\<times\>A><around*|(|y,x|)>>

      <item><math|d<rsub|\|A><around*|(|x,y|)>=d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|y,z|)>=d<rsub|\|A\<times\>A><around*|(|x,z|)>+d<rsub|\|A\<times\>A><around*|(|z,y|)>>

      <item>If <math|d> is a metric then we have if
      <math|d<rsub|\|A\<times\>A><around*|(|x,y|)>=0\<Rightarrow\>d<around*|(|x,y|)>=0\<Rightarrowlim\><rsub|d
      is a metric>x=y>
    </enumerate>

    Second <math|B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<delta\>|)>=<around*|{|y\<in\>A\|d<rsub|\|A\<times\>A><around*|(|x,y|)>\<less\>\<delta\>|}>=<around*|{|y\<in\>A\|d<around*|(|x,y|)>\<less\>\<delta\>|}>=<around*|{|y\<in\>X\|d<around*|(|x,y|)>\<less\>\<delta\>|}><big|cap>A=B<rsub|d><around*|(|x,\<delta\>|)><big|cap>A>.
    Let now <math|\<cal-T\>> the topology generated by <math|d> and
    <math|\<cal-T\><rsub|A>> the subspace topology. Then if
    <math|V\<in\>\<cal-T\><rsub|A>> there exists a <math|U\<in\>\<cal-T\>>
    such that <math|V=U<big|cap>A>, if now <math|x\<in\>V> then
    <math|x\<in\>U> and by <reference|open sets in metric topology> there
    exists a <math|\<delta\><rsub|x>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>\<subseteq\>U> and
    thus <math|x\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<delta\><rsub|x>|)>=B<rsub|d><around*|(|x,\<delta\><rsub|x>|)><big|cap>A\<subseteq\>U<big|cap>A=V>
    so we have <math|x\<in\>B<rsub|d\|A\<times\>A><around*|(|x,\<delta\><rsub|x>|)>\<subseteq\>V>
    and thus by <reference|open sets in metric topology> we conclude that
    <math|V> is open in the topology generated by
    <math|d<rsub|\|A\<times\>A>>. Assume now that <math|V> is open in the
    topology generated by <math|d<rsub|\|A\<times\>A>> on <math|A> then
    <math|V\<subseteq\>A> and <math|\<forall\>x\<in\>V> there exists a
    <math|\<delta\><rsub|x>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x,\<delta\><rsub|x>|)>\<subseteq\>V>
    and thus <math|x\<in\>B<rsub|d<rsub|\|A\<times\>A>><around*|(|x\<comma\>\<delta\><rsub|x>|)>=B<rsub|d><around*|(|x,\<delta\><rsub|x>|)><big|cap>A\<subseteq\>V>
    so that <math|V=<big|cup><rsub|x\<in\>V>B<rsub|d<rsub|\|A*\<times\>A>><around*|(|x,\<delta\><rsub|x>|)>>
    Take now the open set <math|U=<big|cup><rsub|x\<in\>V>B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>>
    in <math|\<cal-T\>> then <math|U<big|cap>A=<around*|(|<big|cup><rsub|x\<in\>V>B<rsub|d><around*|(|x,\<delta\><rsub|x>|)>|)><big|cap>A=<big|cup><rsub|x\<in\>V><around*|(|B<rsub|d><around*|(|x,\<delta\><rsub|x>|)><big|cap>A|)>=V>
    proving that <math|V> is open in the subspace topology.
  </proof>

  <\definition>
    <label|equivalent metric><index|equivalent metrics>Two pseudo metrics
    <math|d<rsub|1>,d<rsub|2>> on a set <math|X> are equivalent iff they
    generate the same topology.
  </definition>

  <\theorem>
    <label|finer metric>Let <math|d<rsub|1>,d<rsub|2>> be two metrics on a
    set <math|X> and let <math|\<cal-T\><rsub|1>>, <math|\<cal-T\><rsub|2>>
    the generated metric topologies then <math|\<cal-T\><rsub|2>> is finer
    then <math|\<cal-T\><rsub|1>> if and only if
    <math|\<forall\>x\<in\>X,\<forall\>\<varepsilon\>\<gtr\>0> there
    <math|\<exists\>\<delta\>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d<rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If <math|x\<in\>X> and
      <math|\<varepsilon\>\<gtr\>0> then by <reference|finer basis> for
      <math|x\<in\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>> there
      exists a <math|y\<in\>X,\<delta\><rprime|'>\<gtr\>0> such that
      <math|x\<in\>B<rsub|d<rsub|2>><around*|(|y,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>,
      using <reference|ball in balls> there exists a <math|\<delta\>\<gtr\>0>
      such that <math|x\<in\>B<rsub|d<rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|2>><around*|(|x,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>

      <item><dueto|<math|\<Leftarrow\>>>If
      <math|y\<in\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>> then
      using <reference|ball in balls> there exists a
      <math|\<delta\><rprime|'>\<gtr\>0> such that
      <math|y\<in\>B<rsub|d<rsub|1>><around*|(|y,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>
      and by the hypothesis there exists a <math|\<delta\>\<gtr\>0> such that
      <math|y\<in\>B<rsub|d<rsub|2>><around*|(|y,\<delta\>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|y,\<delta\><rprime|'>|)>\<subseteq\>B<rsub|d<rsub|1>><around*|(|x,\<varepsilon\>|)>>
      proving by <reference|finer basis> that <math|\<cal-T\><rsub|2>> is
      finer then <math|\<cal-T\><rsub|1>>
    </enumerate>
  </proof>

  <\definition>
    <index|isometry>Let <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo
    metric spaces then a function <math|\<varphi\>:X\<rightarrow\>Y> is
    called a isometry iff\ 

    <\enumerate>
      <item><math|\<varphi\>> is a bijective map

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|d<rsub|X><around|(|x,y|)>=d<rsub|Y><around|(|\<varphi\><around|(|x|)>,\<varphi\><around|(|y|)>|)>>
    </enumerate>
  </definition>

  <\theorem>
    <label|inverse of isometry metric>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two pseudo metric
    spaces and <math|\<varphi\>:X\<rightarrow\>Y> a isometry then
    <math|\<varphi\><rsup|-1>> is a isometry.
  </theorem>

  <\proof>
    Because <reference|bijection and its inverse> we have that
    <math|\<varphi\><rsup|-1>> is a bijection and if <math|x,y\<in\>Y> then
    <math|d<rsub|Y><around*|(|x,y|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|x|)>|)>,\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|)>\<equallim\><rsub|d
    is isometry>d<rsub|X><around*|(|\<varphi\><rsup|-1><around*|(|x|)>,\<varphi\><rsup|-1><around*|(|y|)>|)>>
  </proof>

  <\theorem>
    <label|composition of isometries metric>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,d<rsub|Z>|\<rangle\>>> be metric spaces and
    let <math|\<varphi\>:X\<rightarrow\>Y> and
    <math|\<psi\>:Y\<rightarrow\>Z> be isometries then
    <math|\<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z> is a isometry\ 
  </theorem>

  <\proof>
    Using <reference|properties of composition of functions> we have that
    <math|\<psi\>\<circ\>\<varphi\><rprime|''>X\<rightarrow\>Z> is a
    bijection and <math|d<rsub|X><around*|(|x,y|)>=d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=d<rsub|Z><around*|(|\<psi\><around*|(|\<varphi\><around*|(|x|)>|)>,\<psi\><around*|(|\<varphi\><around*|(|y|)>|)>|)>=d<rsub|Z><around*|(|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|x|)>,<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|y|)>|)>>
  </proof>

  <\theorem>
    <label|isometry and balls>Let <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two metric spaces
    with a isometry <math|\<varphi\>\<of\>X\<rightarrow\>Y> between them then
    <math|\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>=B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>>
    and <math|\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>|)>=B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<delta\>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|y\<in\>\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<Rightarrow\>y=\<varphi\><around*|(|z|)>\<wedge\>z\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<Rightarrow\>y=\<varphi\><around*|(|z|)>\<wedge\>d<rsub|X><around*|(|x,z|)>\<less\>\<delta\>\<Rightarrow\>y=\<varphi\><around*|(|z|)>\<wedge\>d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|z|)>|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,y|)>\<less\>\<delta\>\<Rightarrow\>y\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>>.
      If <math|y\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>\<Rightarrow\>d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,y|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|X><around*|(|x,\<varphi\><rsup|-1><around*|(|y|)>|)>\<less\>\<delta\>\<Rightarrow\>\<varphi\><rsup|-1><around*|(|y|)>\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<Rightarrow\>y\<in\>\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x\<comma\>\<delta\>|)>|)>>.
      This proves that <math|\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>=B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>>.

      <item>Let <math|x\<in\>\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>|)>\<Rightarrow\>\<varphi\><around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>\<Rightarrow\>d<rsub|Y><around*|(|y,\<varphi\><around*|(|x|)>|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>,\<varphi\><around*|(|x|)>|)>\<Rightarrow\>d<rsub|X><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,x|)>\<less\>\<delta\>\<Rightarrow\>x\<in\>B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<delta\>|)>>.
      If <math|x\<in\>B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<delta\>|)>\<Rightarrow\>d<rsub|X><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,x|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>,\<varphi\><around*|(|x|)>|)>\<less\>\<delta\>\<Rightarrow\>\<varphi\><around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>\<Rightarrow\>x\<in\>\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>|)>>.
      This proves that <math|\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>|)>=B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|y|)>,\<delta\>|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|topologies and isometries>Let <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be two metric spaces
    with a isometry <math|\<varphi\>:X\<rightarrow\>Y> between then . If
    <math|\<cal-T\><rsub|X>>, <math|\<cal-T\><rsub|Y>> be the two metric
    topologies on <math|X,Y> then \ <math|\<cal-T\><rsub|X>=<around|{|\<varphi\><rsup|-1><around|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>=<around|{|U\<subseteq\>X\|\<varphi\><around|(|U|)>\<in\>\<cal-T\><rsub|Y>|}>>
    and <math|\<cal-T\><rsub|Y>=<around|{|\<varphi\><around|(|U|)>\|U\<in\>\<cal-T\><rsub|X>|}>=<around|{|V\<subseteq\>Y\|\<varphi\><rsup|-1><around|(|V|)>\<in\>\<cal-T\><rsub|X>|}>>.
  </theorem>

  <\proof>
    First we prove that

    <\equation>
      <label|eq 11.30><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>|}>,
    </equation>

    so if <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|)>>
    there exists a <math|V\<in\>\<cal-T\><rsub|Y>> such that
    <math|U=\<varphi\><rsup|-1><around*|(|V|)>\<subseteq\>X> and as
    <math|\<varphi\>> is a bijection we have
    <math|\<varphi\><around*|(|U|)>=V\<in\>\<cal-T\><rsub|Y>> or
    <math|U\<in\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|Y|)>\<in\>\<cal-T\><rsub|Y>|}>>
    also if <math|U\<in\><around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>|}>>
    then <math|U\<subseteq\>X\<wedge\>\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>>
    and as <math|\<varphi\>> is a bijection we have
    <math|U=\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|U|)>|)>> where
    <math|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>> so that
    <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>>.
    \ <math|>

    Second we prove that <math|\<cal-T\><rsub|X>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>>.
    So if <math|U\<in\>\<cal-T\><rsub|X>> take then
    <math|V=\<varphi\><around*|(|U|)>> and <math|y\<in\>V> so that
    <math|\<exists\>x\<in\>U> such that <math|y=\<varphi\><around*|(|x|)>>.
    Using <reference|open sets in metric topology> there exists a
    <math|\<delta\>\<gtr\>0> such that <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
    and thus <math|y=\<varphi\><around*|(|x|)>\<in\>\<varphi\><around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<subseteq\>\<varphi\><around*|(|U|)>=V\<Rightarrowlim\><rsub|<with|mode|text|<reference|isometry
    and balls>>>y\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>\<subseteq\>V\<Rightarrowlim\><rsub|y=\<varphi\><around*|(|x|)>>y\<in\>B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>\<subseteq\>V>
    which by <reference|open sets in metric topology> means that <math|V> is
    open in <math|\<cal-T\><rsub|Y>> and as <math|\<varphi\>> is bijective we
    have <math|U=\<varphi\><rsup|-1><around*|(|V|)>> where
    <math|V\<in\>\<cal-T\><rsub|Y>> such that
    <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>>
    or

    <\equation>
      <label|eq 11.3>\<cal-T\><rsub|X>\<subseteq\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>
    </equation>

    Next if <math|U\<in\><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>>
    then there exists a <math|V\<in\>\<cal-T\><rsub|Y>> such that
    <math|U=\<varphi\><rsup|-1><around*|(|V|)>> or as <math|\<varphi\>> is a
    bijection we have <math|\<varphi\><around*|(|U|)>=V>. If now
    <math|x\<in\>U> then <math|\<varphi\><around*|(|x|)>\<in\>\<varphi\><around*|(|U|)>=V\<in\>\<cal-T\><rsub|Y>>
    and using <reference|open sets in metric topology> there exists a
    <math|\<delta\>\<gtr\>0> such that <math|\<varphi\><around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>\<subseteq\>V=\<varphi\><around*|(|U|)>>
    so that <math|x\<in\>\<varphi\><rsup|-1><around*|(|B<rsub|d<rsub|Y>><around*|(|\<varphi\><around*|(|x|)>,\<delta\>|)>|)>\<subseteq\>\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|U|)>|)>\<equallim\><rsub|\<varphi\>
    is a bijection>U\<Rightarrowlim\><rsub|<with|mode|text|<reference|isometry
    and balls>>>x\<in\>B<rsub|d<rsub|X>><around*|(|\<varphi\><rsup|-1><around*|(|\<varphi\><around*|(|x|)>|)>,\<delta\>|)>\<subseteq\>U\<Rightarrow\>x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U>
    proving by <reference|open sets in metric topology> that
    <math|U\<in\>\<cal-T\><rsub|X>> so that we have

    <\equation>
      <label|eq 11.4><around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>\<subseteq\>\<cal-T\><rsub|X>
    </equation>

    Using <reference|eq 11.3> and <reference|eq 11.4> we have then

    <\equation>
      <label|eq 11.5>\<cal-T\><rsub|X>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>
    </equation>

    As for the rest note that <math|\<Phi\>=\<varphi\><rsup|-1>> is a
    isometry from <math|Y\<rightarrow\>X> (see <reference|inverse of isometry
    metric>) so by <reference|eq 11.5> and <reference|eq 11.30> we have that
    <math|\<cal-T\><rsub|Y>=<around*|{|\<Phi\><rsup|-1><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|X>|}>=<around*|{|V\<subseteq\>Y\|\<Phi\><around*|(|V|)>\<in\>\<cal-T\><rsub|X>|}>\<equallim\><rsub|\<Phi\>=\<varphi\><rsup|-1>\<Rightarrow\>\<Phi\><rsup|-1>=\<varphi\>><around*|{|\<varphi\><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|X>|}>=<around*|{|V\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>|}>>
  </proof>

  <\definition>
    <label|diameter><index|diameter of a set><index|<math|diam<around*|(|A|)>>><index|bounded
    set>Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a pseudo metric
    space and <math|A\<subseteq\>X> a subset, then <math|A> is called
    <strong|bounded> iff <math|\<exists\>M\<in\>\<bbb-R\>> such that
    <math|\<forall\>x,y\<in\>X> we have <math|d<around*|(|x,y|)>\<leq\>M>. If
    <math|A> is bounded then <math|sup<around*|(|<around*|{|d<around*|(|x,y|)>\|x,y\<in\>A|}>|)>>
    exists (<math|\<bbb-R\>,\<leqslant\>> is conditional complete (see
    <reference|the reals are conditional complete>)) and is called the
    diameter of <math|A> noted as <math|diam<around*|(|A|)>>.
  </definition>

  <\theorem>
    <label|product of metric spaces>Let <math|<around*|{|<around*|\<langle\>|X<rsub|i>,d<rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a finite family of (pseudo) metric spaces then
    <math|d:<around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<times\><around*|(|<big|prod><rsub|i\<in\>I>X<rsub|i>|)>\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|(|x,y|)>\<rightarrow\>d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>>
    (see <reference|finite ordered sets have a maximum>) is a (pseudo) metric
    space and the topology generated is the product topology
    <math|\<cal-T\><rsub|product>> and the box topology
    <math|\<cal-T\><rsub|box>>. The metric <math|d> is called the product
    metric.
  </theorem>

  <\proof>
    First we have to prove that <math|d> is indeed a (pseudo) metric

    <\enumerate>
      <item><math|d<around*|(|x,x|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|x|)>|)>\|i\<in\>I|}>|)>=0>
      as <math|\<forall\>i\<in\>I> we have
      <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|x|)>|)>=0>

      <item><math|d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)><around*|\||i\<in\>I|\|>|}>|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|y|)>,\<pi\><rsub|i><around*|(|x|)>|)><around*|\||i\<in\>I|\|>|}>|)>=d<around*|(|y,x|)>>

      <item><math|d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>\<leqslant\><rsub|<with|mode|text|<reference|maximum
      of class with bigger elements then another
      class>>>max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>+d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|z|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>\<leqslant\>max<around*|(|<around*|{|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)><around*|\||i\<in\>I|\|>|}>|)>+d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|z|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>\<leqslant\>max<around*|(|max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|z|)>,\<pi\><rsub|i><around*|(|y|)>|)><around*|\||i\<in\>I|\|>|}>|)>|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>|}>|)>+max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|z|)>,\<pi\><rsub|i><around*|(|y|)>|)><around*|\||i\<in\>I|\|>|}>|)>=d<around*|(|x,z|)>+d<around*|(|y,z|)>>

      <item>If <math|<around*|{|<around*|\<langle\>|X<rsub|i>d<rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
      are metric spaces then if <math|d<around*|(|x,y|)>=0> we have
      <math|\<forall\>i\<in\>I> that <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>=0\<Rightarrow\>\<forall\>i\<in\>I>
      we have <math|\<pi\><rsub|i><around*|(|x|)>=\<pi\><rsub|i><around*|(|y|)>\<Rightarrow\>x=y>
    </enumerate>

    Next as <math|I> is finite we have by <reference|finite product topology
    is box topology> that <math|\<cal-T\><rsub|product>=\<cal-T\><rsub|box>>.
    The generating basis for the box topology is
    <math|\<cal-B\><rsub|box>=<around*|{|<big|prod><rsub|i\<in\>I>U<rsub|i>\|U<rsub|i>
    open in the metric topology\<cal-T\><rsub|i> of
    <around*|\<langle\>|X<rsub|i>,d|\<rangle\>>|}>>, the generating basis for
    the metric topology is <math|\<cal-B\><rsub|d>=<around*|{|B<rsub|d><around*|(|x,\<delta\>|)>\|x\<in\>X<rsub|i>,\<delta\>\<gtr\>0|}>>.
    Let <math|x\<in\>X> and <math|B\<in\>\<cal-B\><rsub|box>> with
    <math|x\<in\>B> then <math|B=<big|prod><rsub|i\<in\>I>U<rsub|i>> where
    <math|U<rsub|i>\<in\>\<cal-T\><rsub|i>>. So if <math|x\<in\>B> then
    <math|\<forall\>i\<in\>I> we have <math|\<pi\><rsub|i><around*|(|x|)>\<in\>U<rsub|i>>
    so that <math|\<exists\>\<delta\><rsub|i>\<gtr\>0> such that
    <math|\<pi\><rsub|i><around*|(|x|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>\<comma\>\<delta\><rsub|i>|)>\<subseteq\>U<rsub|i>>,
    take now <math|\<delta\>=min<around*|(|<around*|{|\<delta\><rsub|i>\|i\<in\>I|}>|)>\<gtr\>0>
    then if <math|y\<in\>B<rsub|d><around*|(|x,\<delta\>|)>> we have
    <math|d<around*|(|x,y|)>\<less\>\<delta\>\<Rightarrow\>\<forall\>i\<in\>I>
    we have <math|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\<less\>\<delta\>\<leqslant\>\<delta\><rsub|i>\<Rightarrow\>\<forall\>i\<in\>I>
    we have <math|\<pi\><rsub|i><around*|(|y|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\><rsub|i>|)>\<subseteq\>U<rsub|i>\<Rightarrow\>y\<in\><big|prod><rsub|i\<in\>I>U<rsub|i>=B>
    so that we have proved that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B>
    or

    <\equation>
      <label|eq 11.7>\<forall\>x\<in\>X,\<forall\>B\<in\>\<cal-B\><rsub|box>
      there \<exists\>B<rprime|'>\<in\>\<cal-B\><rsub|d> such that
      x\<in\>B<rprime|'>\<subseteq\>B
    </equation>

    If now <math|x\<in\>X> and <math|B\<in\>\<cal-B\><rsub|d>> with
    <math|x\<in\>B> then <math|\<exists\>\<delta\><rprime|'>\<gtr\>0,y\<in\>X>
    such that <math|x\<in\>B<rsub|d><around*|(|y,\<delta\><rprime|'>|)>=B>
    which means that <math|\<exists\>\<delta\>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|d><around*|(|y|)>=B>.
    Take now <math|<big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<in\>\<cal-B\><rsub|box>>
    then if <math|z\<in\><big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>>
    then <math|\<forall\>i\<in\>I> we have
    <math|\<pi\><rsub|i><around*|(|z|)>\<in\>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<Rightarrow\>d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\<less\>\<delta\>\<Rightarrow\>d<around*|(|x,z|)>=max<around*|(|<around*|{|d<rsub|i><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|z|)>|)>\|i\<in\>I|}>|)>\<less\>\<delta\>\<Rightarrow\>z\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>B>.
    So we have proved that <math|x\<in\><big|prod><rsub|i\<in\>I>B<rsub|d<rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<delta\>|)>\<subseteq\>B>
    or

    <\equation>
      <label|eq 11.8>\<forall\>x\<in\>X,\<forall\>B\<in\>\<cal-B\><rsub|d>
      there \<exists\>B<rprime|'>\<in\>\<cal-B\><rsub|box> such that
      x\<in\>B<rprime|'>\<subseteq\>B
    </equation>

    Using then <reference|finer basis> we have then that the metric topology
    is equal to the box topology and thus also the product topology.
  </proof>

  <section|Normed spaces>

  <\definition>
    <label|normed space><index|psuedo normed space><index|normed
    space><index|<math|<around*|\<\|\|\>||\<\|\|\>>>>A pseudo normed space
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    a (real or complex) vector space <math|X> together with a function
    <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\>> such that\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|x|\<\|\|\>>\<geqslant\>0>

      <item><math|\<forall\>x\<in\>X,\<forall\>\<alpha\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>>
      we have <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>
    </enumerate>

    if also <math|<around*|\<\|\|\>|x|\<\|\|\>>=0\<Rightarrow\>x=0> then
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    called a normed space.
  </definition>

  <\note>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space then if <math|x=0> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=0>
  </note>

  <\proof>
    If <math|x=0> then <math|x=0\<cdot\>x\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|0\<cdot\>x|\<\|\|\>>=<around*|\||0|\|>\<cdot\>x=0>
  </proof>

  <\example>
    <label|topology of real complex numbers><math|<around*|\<langle\>|\<bbb-R\>,|\|>
    <around*|\|||\|>> and <math|<around*|\<langle\>|\<bbb-C\>,|\|>
    <around*|\|||\|>> where <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\||x|\|>>
    forms. In <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>> the
    basis of the normed topology is <math|\<cal-B\>=<around*|{|<around*|(|a,b|)>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>
  </example>

  <\proof>
    See <reference|absolute value is a norm> and <reference|complex norm is a
    norm>. For the case of <math|<around*|\<langle\>|\<bbb-R\>,\<\|\|\>|\<rangle\>>>
    its basis is <math|\<cal-B\><rsub|<around*|\|||\|>>=<around*|{|B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>|}>>
    then if <math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>> there exists a
    <math|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    such that <math|B=<around*|{|y\<in\>\<bbb-R\>\|<around*|\||x-y|\|>\<less\>\<varepsilon\>|}>=<around*|(|x-\<varepsilon\>,x+\<varepsilon\>|)>\<subseteq\>\<cal-B\>>.
    If <math|B\<in\>\<cal-B\>> then there exists a <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<less\>b> such that <math|B=<around*|(|a,b|)>> as
    <math|a\<less\>b> take <math|\<varepsilon\>=<frac|b-a|2>> and
    <math|x=a+\<varepsilon\>> then we have
    <math|y\<in\><around*|(|x-\<varepsilon\>,x+\<varepsilon\>|)>\<Leftrightarrow\>x-\<varepsilon\>\<less\>y\<less\>x+\<varepsilon\>\<Leftrightarrow\>a+\<varepsilon\>-\<varepsilon\>\<less\>y\<less\>a+\<varepsilon\>+\<varepsilon\>\<Leftrightarrow\>a\<less\>y\<less\>a+2\<varepsilon\>=a+b-a=b>
    proving that <math|B\<in\>\<cal-B\><rsub|<around*|\|||\|>>>. So we have
    that <math|\<cal-B\>=\<cal-B\><rsub|<around*|\|||\|>>>
  </proof>

  Every (pseudo) normed space defines a (pseudo) metric space

  <\theorem>
    <label|normed topology><index|normed topology><index|pseudo normed
    topology>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a (pseudo) normed space then <math|<around*|\<langle\>|X,d<rsub|<around*|\<\|\|\>||\<\|\|\>>>|\<rangle\>>>
    where <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>
    is a (pseudo) metric space. The generated topology is called the (pseudo)
    normed topology and its basis is <math|\<cal-B\>=<around*|{|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\>|)>\|x\<in\>X,\<delta\>\<gtr\>0|}>>
    where <math|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\>|)>=<around*|{|y\|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>|}>\<equallim\><rsub|defined>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>\<geqslant\>0>

      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|-1|)>\<cdot\><around*|(|y-x|)>|\<\|\|\>>=<around*|\||-1|\|>\<cdot\><around*|\<\|\|\>|y-x|\<\|\|\>>=<around*|\<\|\|\>|y-x|\<\|\|\>>=d<around*|(|y,x|)>>

      <item><math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,z|)>=<around*|\<\|\|\>|x-z|\<\|\|\>>=<around*|\<\|\|\>|x-y+y-z|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>+<around*|\<\|\|\>|y-z|\<\|\|\>>=d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>+d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y,z|)>>

      <item>If <math|<around*|\<\|\|\>||\<\|\|\>>> is normed then if
      <math|d<around*|(|x,y|)>=0\<Rightarrow\><around*|\<\|\|\>|x-y|\<\|\|\>>=0\<Rightarrow\>x-y=0\<Rightarrow\>x=y>
    </enumerate>
  </proof>

  <\theorem>
    <label|norm and absolute value>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a pseudo normed space then <math|\<forall\>x,y\<in\>X> we have
    <math|<around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-\|<around*|\||y|\|>
    |\|>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>>
  </theorem>

  <\proof>
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|x-y+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>>
    and <math|<around*|\<\|\|\>|y|\<\|\|\>>=<around*|\<\|\|\>|x+y-x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y-x|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|x-y|\<\|\|\>>\<Rightarrow\><around*|\<\|\|\>|y|\<\|\|\>>-<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>>
    so that we have <math|<around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>|\|>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>>
  </proof>

  <\theorem>
    <label|norm of a finite sum>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family then <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
  </theorem>

  <\proof>
    This is easily proved by induction, so let
    <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
    <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>> is a
    family in X then <around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>|}>>
    we have then\ 

    <\enumerate>
      <item>If <math|n=1> then <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<Rightarrow\>1\<in\>S>

      <item>If <math|n\<in\>S> then for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      we have <math|<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|)>+x<rsub|n+1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|n+1>|\<\|\|\>>\<leqslant\><rsub|n\<in\>S><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>|)>+<around*|\<\|\|\>|x<rsub|n+1>|\<\|\|\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
    </enumerate>
  </proof>

  \;

  <\example>
    If <math|<around*|\<langle\>|\<bbb-R\>, <mid|\|\|>|\<rangle\>>> is the
    vector spaces of real numbers then the normed topology is generated by
    <math|\<cal-B\>=<around*|{||]>a,b<around*|[|,a,b\<in\>\<bbb-R\>,a\<less\>b|]>>
    where <math|<around*|]|a,b|[>=<around*|{|x\|a\<less\>x\<wedge\>x\<less\>b|}>>
  </example>

  <\proof>
    The generating basis for the normed topology is
    <math|\<cal-B\>=<around*|{|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\|x\<in\>\<bbb-R\>,\<delta\>\<gtr\>0|}>>
    now <math|B\<in\>\<cal-B\>\<Rightarrow\>\<exists\>x\<in\>\<bbb-R\>> and
    <math|\<delta\>\<gtr\>0> such that <math|B=B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>>
    so if <math|y\<in\>B> we have <math|<around*|\||x-y|\|>\<less\>\<delta\>>
    then <math|x-y,y-x\<less\><around*|\||x-y|\|>\<less\>\<delta\>\<Rightarrow\>x-y\<less\>\<delta\>\<wedge\>y-x\<less\>\<delta\>\<Rightarrow\>x-\<delta\>\<less\>y\<wedge\>y\<less\>x+\<delta\>\<Rightarrow\>y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>>
    proving that <math|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>\<subseteq\><around*|]|x-\<delta\>,x+\<delta\>|[>>.
    If <math|y\<in\><around*|]|x-\<delta\>,x+\<delta\>|[>\<Rightarrow\>x-\<delta\>\<less\>y\<wedge\>y\<less\>x+\<delta\>\<Rightarrow\>x-y\<less\>\<delta\>\<wedge\>-<around*|(|x-y|)>\<less\>\<delta\>\<Rightarrow\><around*|\||x-y|\|>\<less\>\<delta\>>
    proving that <math|B<rsub|\<\|\|\>><around*|(|x,\<delta\>|)>=<around*|]|x-\<delta\>,x+\<delta\>|[>>.
    Finally if <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> then
    <math|0\<less\>\<delta\>=<frac|b-a|2>> we have then
    <math|<around*|]|<around*|(|a+\<delta\>|)>-\<delta\>,<around*|(|a+\<delta\>|)>+\<delta\>|[>=<around*|]|a,a+2\<cdot\>\<delta\>|[>=<around*|]|a,a+b-a|[>=<around*|]|a,b|[>>
  </proof>

  <\theorem>
    <label|normed space properties>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed vector space over <math|\<bbb-K\>=<around*|(|\<bbb-C\> or
    \<bbb-R\>|)>> then <math|\<forall\>\<alpha\>\<neq\>0,\<alpha\>\<in\>\<bbb-K\>>
    and <math|\<forall\>x\<in\>X> we have (see <reference|sum of sets,
    product of sets, difference of sets> for the definitions)

    <\enumerate>
      <item><math|\<forall\>M\<subseteq\>X> we have
      <math|<wide|\<alpha\>\<cdot\>M|\<bar\>>=\<alpha\>\<cdot\><wide|M|\<bar\>>>

      <item><math|\<forall\>M> open in <math|X> we have that
      \ <math|\<alpha\>\<cdot\>M> is open

      <item><math|\<forall\>M> open in <math|X >we have that \ <math|x+M> is
      open\ 

      <item><math|\<forall\>M> open ins <math|X> and <math|A\<subseteq\>X> we
      have that <math|A+M> is open

      <item><math|\<forall\>M\<subseteq\>X> we have
      <math|<wide|M|\<bar\>>-<wide|M|\<bar\>>\<subseteq\><wide|M-M|\<bar\>>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>If <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<bar\>>> \ then as
      <math|\<alpha\>\<neq\>0> we can define
      <math|z=<frac|1|\<alpha\>>\<cdot\>x> so that
      <math|x=\<alpha\>\<cdot\>z>. If now <math|z\<in\>U> open then there
      exists a <math|\<delta\>\<gtr\>0> such that
      <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\>U>.
      Now as <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>
      a open set and <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<bar\>>> there
      exists by <reference|characterization of closure of a set> a
      <math|m\<in\>M> such that <math|\<alpha\>\<cdot\>m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>
      or <math|<around*|\<\|\|\>|x-\<alpha\>\<cdot\>m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|\<alpha\>\<cdot\>z-\<alpha\>\<cdot\>m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>\<Rightarrow\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|z-m|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|z-m|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\>m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\>U>
      so we have <math|U<big|cap>M\<neq\>\<emptyset\>>. So using
      <reference|characterization of closure of a set> we have that
      <math|z\<in\><wide|M|\<bar\>>> or that
      <math|x\<in\>\<alpha\>\<cdot\><wide|M|\<bar\>>>, this proves that

      <\equation>
        <label|eq 11.9><wide|\<alpha\>\<cdot\>M|\<bar\>>\<subseteq\>\<alpha\>\<cdot\><wide|M|\<bar\>>
      </equation>

      If <math|x\<in\>\<alpha\>\<cdot\><wide|M|\<bar\>>> and <math|x\<in\>U>
      a open set, then there exists a <math|\<delta\>\<gtr\>0> such that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>,
      now as <math|x\<in\>\<alpha\>\<cdot\><wide|M|\<bar\>>> there exists a
      <math|z\<in\><wide|M|\<bar\>>> such that <math|x=\<alpha\>\<cdot\>z>
      and as <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,<frac|\<delta\>|<around*|\||\<alpha\>|\|>>|)>>
      a open set we have by <reference|characterization of closure of a set>
      that there exist a <math|m\<in\>M> such that
      <math|m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,<frac|\<delta\>|<around*|\||\<alpha\>|\|>>|)>>
      or <math|<around*|\<\|\|\>|z-m|\<\|\|\>>\<less\><frac|\<delta\>|<around*|\||\<alpha\>|\|>>\<Rightarrow\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|z-m|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|\<alpha\>\<cdot\>z-\<alpha\>\<cdot\>m|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|x-\<alpha\>\<cdot\>m|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\>\<alpha\>\<cdot\>m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<Rightarrowlim\><rsub|\<alpha\>\<cdot\>m\<in\>\<alpha\>\<cdot\>M>U<big|cap><around*|(|\<alpha\>\<cdot\>M|)>\<neq\>\<emptyset\>>
      proving by <reference|characterization of closure of a set> that
      <math|x\<in\><wide|\<alpha\>\<cdot\>M|\<bar\>>>, which proves that

      <\equation>
        <label|eq 11.10>\<alpha\>\<cdot\><wide|M|\<bar\>>\<subseteq\><wide|\<alpha\>\<cdot\>M|\<bar\>>
      </equation>

      Using <reference|eq 11.9> and <reference|eq 11.10> we have that

      <\equation*>
        \<alpha\>\<cdot\><wide|M|\<bar\>>=<wide|\<alpha\>\<cdot\>M|\<bar\>>
      </equation*>

      <item>If <math|x\<in\>\<alpha\>\<cdot\>M> then
      <math|x=\<alpha\>\<cdot\>m> where <math|m\<in\>M>. As <math|M> is open
      there exists a <math|\<delta\>\<gtr\>0> such that
      <math|m\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|m,\<delta\>|)>\<subseteq\>M>.
      So if <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>>
      then we have <math|<around*|\<\|\|\>|x-z|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\>\<delta\>\<Rightarrow\><frac|1|<around*|\||\<alpha\>|\|>>\<cdot\><around*|\<\|\|\>|x-z|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|<frac|1|\<alpha\>>\<cdot\>x-<frac|1|\<alpha\>>\<cdot\>z|\<\|\|\>>\<less\>m\<Rightarrow\><around*|\<\|\|\>|m-<frac|1|\<alpha\>>\<cdot\>z|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><frac|1|\<alpha\>>\<cdot\>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|m,\<delta\>|)>\<subseteq\>M\<Rightarrow\>z\<in\>\<alpha\>\<cdot\>M>
      so that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,<around*|\||\<alpha\>|\|>\<cdot\>\<delta\>|)>\<subseteq\>\<alpha\>\<cdot\>M>
      proving that <math|\<alpha\>\<cdot\>M> is open.

      <item>Let <math|z\<in\>x+M> then <math|z-x\<in\>M> which is open and
      there exists a <math|\<delta\>\<gtr\>0> such that
      <math|<around*|(|z-x|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z-x,\<delta\>|)>\<subseteq\>M>.
      If now <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>>
      then <math|<around*|\<\|\|\>|<around*|(|y-x|)>-<around*|(|z-x|)>|\<\|\|\>>=<around*|\<\|\|\>|z-y|\<\|\|\>>\<less\>\<delta\>>
      or <math|y-x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z-x,\<delta\>|)>\<subseteq\>M\<Rightarrow\>y\<in\>x+M>
      proving that <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|z,\<delta\>|)>\<subseteq\>x+M>
      and thus that <math|x+M> is open.\ 

      <item>This follows from (3) as <math|A+M=<big|cup><rsub|x\<in\>A><around*|(|x+M|)>>
      a union of open sets which is open by definition.

      <item>If <math|x\<in\><wide|M|\<bar\>>-<wide|M|\<bar\>>> then
      <math|x=y<rsub|1>-y<rsub|2>>, <math|y<rsub|1>,y<rsub|2>\<in\><wide|M|\<bar\>>>
      and suppose that <math|x\<in\>U> a open set. So there exists a
      <math|\<delta\>\<gtr\>0> such that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>.
      As <math|y<rsub|1>,y<rsub|2>\<in\><wide|M|\<bar\>>> we have by the
      openness of <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|1>,<frac|\<delta\>|2>|)>>,
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|2>,<frac|\<delta\>|2>|)>>
      and <reference|characterization of closure of a set> that there exists
      <math|z<rsub|1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|1>,<frac|\<delta\>|2>|)><big|cap>M>,
      <math|z<rsub|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|y<rsub|2>.<frac|\<delta\>|2>|)><big|cap>M>.
      Take then <math|z=z<rsub|1>-z<rsub|2>\<in\>M-M> then
      <math|<around*|\<\|\|\>|x-z|\<\|\|\>>=<around*|\<\|\|\>|y<rsub|1>-z<rsub|1>+y<rsub|2>-z<rsub|2>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y<rsub|1>-z<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|2>-z<rsub|2>|\<\|\|\>>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
      proving that <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)><big|cap><around*|(|M-M|)>\<subseteq\>U<big|cap><around*|(|M-M|)>>
      so by <reference|characterization of closure of a set> we have
      <math|x\<in\><wide|M-M|\<bar\>>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|finer norm>Let <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> be two norms on a set
    <math|X> and <math|\<cal-T\><rsub|1>>, <math|\<cal-T\><rsub|2>> the
    generated normed topologies. Then <math|\<cal-T\><rsub|2>> is finer then
    <math|\<cal-T\><rsub|1>> iff there exists a <math|M\<gtr\>0> such that
    <math|\<forall\>x\<in\>X> we have <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>
  </theorem>

  <\proof>
    \ We use <reference|finer metric> to prove this theorem

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>As
      <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|0,1|)>>
      there exists by <reference|finer metric> a <math|\<delta\>\<gtr\>0>
      such that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|0,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|0,1|)>>
      so if <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|2>\<less\>\<delta\>\<Rightarrow\>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|0,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|0,1|)>\<Rightarrow\><around*|\<\|\|\>|z|\<\|\|\>><rsub|1>\<less\>1>
      so if <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|2>\<less\>\<delta\>>
      then we have <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|1>\<less\>1>.
      Take now <math|M=<frac|2|\<delta\>>> then we we have two cases to
      consider for <math|x\<in\>X>

      <\enumerate>
        <item><dueto|<math|x=0>>then <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=0\<leqslant\>0=M\<cdot\>0=M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>

        <item><dueto|<math|x\<neq\>0>>for
        <math|z=<frac|1|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>x> we
        have <math|<around*|\<\|\|\>|z|\<\|\|\>><rsub|2>=<frac|1|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>=<frac|1|M>=<frac|\<delta\>|2>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|z|\<\|\|\>><rsub|1>\<less\>1\<Rightarrow\><frac|1|M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<less\>1\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<less\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>>
      </enumerate>

      <item><dueto|<math|\<Leftarrow\>>>If <math|x\<in\>X> and
      <math|\<varepsilon\>\<gtr\>0> so that
      <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\>|)>>
      taken then <math|\<delta\>=<frac|\<varepsilon\>|M>\<gtr\>0> (division
      is OK as <math|M\<gtr\>0> by the hypothesis). If
      <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|x,\<delta\>|)>>
      then <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|2>\<less\>\<delta\>>
      and we have <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|1>\<leqslant\>M\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|2>\<less\>M\<cdot\>\<delta\>=M\<cdot\><frac|\<varepsilon\>|M>=\<varepsilon\>\<Rightarrow\>y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\>|)>>
      or <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|2>><around*|(|x,\<delta\>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|1>><around*|(|x,\<varepsilon\>|)>>
      proving by <reference|finer metric> that <math|\<cal-T\><rsub|2>> is
      finer then <math|\<cal-T\><rsub|1>>
    </enumerate>
  </proof>

  \;

  <\lemma>
    <label|max(alfa.A)>Let <math|A\<subseteq\>\<bbb-R\>> then given
    <math|\<alpha\>\<in\>\<bbb-R\><rsub|>> with <math|\<alpha\>\<gtr\>0> then
    if <math|max<around*|(|A|)>> exists we have that
    <math|max<around*|(|\<alpha\>\<cdot\>A|)>> exists and
    <math|max<around*|(|\<alpha\>\<cdot\>A|)>=\<alpha\>\<cdot\>max<around*|(|A|)>>
    where <math|\<alpha\>\<cdot\>A=<around*|{|\<alpha\>\<cdot\>a\|a\<in\>A|}>>
  </lemma>

  <\proof>
    As <math|max<around*|(|A|)>> exists we have that
    <math|max<around*|(|A|)>\<in\>A> and <math|\<forall\>a\<in\>A> we have
    <math|a\<leqslant\>max<around*|(|A|)>>. If now
    <math|b\<in\>\<alpha\>\<cdot\>A> then there exists a <math|a\<in\>A> such
    that <math|b=\<alpha\>\<cdot\>A>, from
    <math|a\<leqslant\>max<around*|(|A|)>> and <math|\<alpha\>\<gtr\>0> we
    have that <math|b=\<alpha\>\<cdot\>a\<leqslant\>\<alpha\>\<cdot\>max<around*|(|A|)>>.
    This together with the fact that <math|max<around*|(|A|)>\<in\>A\<Rightarrow\>\<alpha\>\<cdot\>max<around*|(|A|)>\<in\>\<alpha\>\<cdot\>A>
    proves that <math|max<around*|(|\<alpha\>\<cdot\>A|)>> exists and is
    equal to <math|\<alpha\>\<cdot\>max<around*|(|A|)>>
  </proof>

  <\theorem>
    <label|norm of finite product of normed spaces>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>,I>
    finite be a finite family of normed spaces then
    <math|<around*|\<\|\|\>||\<\|\|\>>:<big|prod><rsub|i\<in\>I>X<rsub|i>\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>>
    is a norm and the generated topology on
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>> coincidences with the product
    topology <math|\<cal-T\><rsub|product>> (see <reference|basis for the
    product topology>) (using the norm topologies of <math|X<rsub|i>>). The
    norm <math|<around*|\<\|\|\>||\<\|\|\>>> is called the maximum norm.
  </theorem>

  <\proof>
    First we prove that <math|<around*|\<\|\|\>||\<\|\|\>>> is a norm (note
    that by <reference|finite ordered sets have a maximum> the maximum is
    always defined)

    <\enumerate>
      <item><math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<geqslant\>0>
      as <math|\<forall\>i\<in\>I> we have
      <math|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\<geqslant\>0>

      <item><math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<equallim\><rsub|\<pi\><rsub|i><around*|(|\<alpha\>\<cdot\>x|)>=<around*|(|\<alpha\>\<cdot\>x|)><around*|(|i|)>=\<alpha\>\<cdot\>x<around*|(|i|)>=\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>>max<around*|(|<around*|{|<around*|\<\|\|\>|\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=max<around*|(|<around*|{|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<equallim\><rsub|<with|mode|text|><with|mode|text|<reference|max(alfa.A)>>><around*|\||\<alpha\>|\|>\<cdot\>max<around*|(|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><math|<around*|\<\|\|\>|x+y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x+y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<equallim\><rsub|\<pi\><rsub|i><around*|(|x+y|)>=<around*|(|x+y|)><around*|(|i|)>=x<around*|(|i|)>+y<around*|(|i|)>=\<pi\><rsub|i><around*|(|x|)>+\<pi\><rsub|i><around*|(|y|)>>max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>+\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<leqslant\><rsub|<with|mode|text|<reference|maximum
      of class with bigger elements then another class>,<reference|finite
      ordered sets have a maximum>>>max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>+<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>\<leqslant\><rsub|<with|mode|text|<reference|maximum
      of class with bigger elements then another
      class>>>max<around*|(|<around*|{|max<around*|(|<around*|{|\<pi\><rsub|i><around*|(|x|)><rsub|i>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>|}>|)>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>+max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>

      <item>If <math|<around*|\<\|\|\>|x|\<\|\|\>>=0\<Rightarrow\>max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=0\<Rightarrow\>\<forall\>i\<in\>I>
      we have <math|<around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>><rsub|i>=0\<Rightarrow\>\<pi\><rsub|i><around*|(|x|)>=0\<Rightarrow\>\<forall\>i\<in\>I\<vDash\>x<around*|(|i|)>=0\<Rightarrow\>x=0>
    </enumerate>

    Next using <reference|product of metric spaces> we find that the product
    topology is generated by <math|d<around*|(|x,y|)>=max<around*|(|<around*|{|d<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|i>><around*|(|\<pi\><rsub|i><around*|(|x|)>,\<pi\><rsub|i><around*|(|y|)>|)>\|i\<in\>I|}>|)>=max<around*|(|<around*|{|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>-\<pi\><rsub|i><around*|(|y|)>|\<\|\|\>><rsub|i>\|i\<in\>I|}>|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>
    so <math|<around*|\<\|\|\>||\<\|\|\>>> defines indeed the metric that
    generates the product topology.
  </proof>

  <\example>
    The product topology of <math|\<bbb-R\><rsup|n>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<bbb-R\>>
    is generated by the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>>
    where <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
  </example>

  <\definition>
    <label|equivalent norms><index|equivalent norms>Two norms on a vector
    space are equivalent if they generate the same topology
  </definition>

  <\theorem>
    <label|equivalence of norms>Let <math|X> be a vector space and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> two norms on <math|X> then
    these norms are equivalent iff there exists
    <math|M<rsub|1>,M<rsub|2>\<in\>\<bbb-R\>> with
    <math|0\<less\>M<rsub|1>,M<rsub|2>> such that <math|\<forall\>x\<in\>X>
    we have <math|M<rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2>>
  </theorem>

  <\proof>
    \ Let <math|\<cal-T\><rsub|1>,\<cal-T\><rsub|2>> be the topologies
    generated by the norms <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are equivalent then
      <math|\<cal-T\><rsub|1>> is finer then <math|\<cal-T\><rsub|2>> and
      <math|\<cal-T\><rsub|2>> is finer then <math|\<cal-T\><rsub|1>> so by
      <reference|finer norm> there exists a
      <math|M<rsub|1><rprime|'>,M<rsub|2><rprime|'>\<gtr\>0> such that
      <math|\<forall\>x\<in\>X>we have <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<cdot\>M<rsub|1><rprime|'>>
      and <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2><rprime|'>\<Rightarrowlim\><rsub|M<rsub|1><rprime|'>\<gtr\>0><frac|1|M<rsub|1><rprime|'>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2><rprime|'>>
      which given <math|M<rsub|1>=<frac|1|M<rsub|1><rprime|'>>,M<rsub|2>=M<rprime|'><rsub|2>>
      proves that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2>>

      <item><dueto|<math|\<Leftarrow\>>>If <math|\<forall\>x\<in\>X>
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2>>
      then we have <math|\<forall\>x\<in\>X> that
      \ <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<cdot\><frac|1|M<rsub|1>>>
      and <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<cdot\>M<rsub|2>>
      which by <reference|finer norm> means that <math|\<cal-T\><rsub|1>> is
      finer then <math|\<cal-T\><rsub|2>> and <math|\<cal-T\><rsub|2>> is
      finer then <math|\<cal-T\><rsub|1>> so that
      <math|\<cal-T\><rsub|1>=\<cal-T\><rsub|2>>\ 
    </enumerate>
  </proof>

  <\definition>
    <label|isometry norm><index|isometry>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then a isometry is a bijective function
    <math|\<varphi\>:X\<rightarrow\>Y> such that <math|\<forall\>x\<in\>X> we
    have that <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>>
  </definition>

  <\theorem>
    <label|inverse of isometry norm>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|\<varphi\>:X-Y> a isometry then
    <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is also a isometry
  </theorem>

  <\proof>
    First because of <reference|bijection and its inverse> we have that
    <math|\<varphi\><rsup|-1>:Y\<rightarrow\>X> is also a bijection. Second
    if <math|y\<in\>Y> then <math|<around*|\<\|\|\>|\<varphi\><rsup|-1><around*|(|y|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y|\<\|\|\>><rsub|Y>>
  </proof>

  <\theorem>
    <label|composition of isometries norm>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|Y|\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be three \ normed spaces, <math|\<varphi\>:X\<rightarrow\>Y> and
    <math|\<psi\>:Y\<rightarrow\>Z> be isometries then
    <math|\<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z> is a isometry
  </theorem>

  <\proof>
    By <reference|properties of composition of functions>
    <math|\<psi\>\<circ\>\<varphi\>:X\<rightarrow\>Z> is a bijection. Further
    <math|\<forall\>x\<in\>X> we have <math|<around*|\<\|\|\>|<around*|(|\<psi\>\<circ\>\<varphi\>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|\<psi\><around*|(|\<varphi\><around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<equallim\><rsub|\<psi\>
    is isometry><around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|\<varphi\>
    is isometry><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
  </proof>

  <\theorem>
    <label|topology of spaces which are isometric in the norm>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>|Y|\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and <math|\<varphi\>:X\<rightarrow\>Y> a linear isometry
    then if <math|\<cal-T\><rsub|X>,\<cal-T\><rsub|Y>> are the topologies
    generated by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>> then
    <math|\<cal-T\><rsub|X>=<around*|{|\<varphi\><rsup|-1><around*|(|V|)>\|V\<in\>\<cal-T\><rsub|Y>|}>=<around*|{|U\<subseteq\>X\|\<varphi\><around*|(|U|)>\<in\>\<cal-T\><rsub|Y>|}>>
    and <math|\<cal-T\><rsub|Y>=<around*|{|V\<subseteq\>Y\|\<varphi\><rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>|}>=<around*|{|\<varphi\><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|X>|}>>.
    In other words the topologies are equivalent (see <reference|topologies
    and isometries>)
  </theorem>

  <\proof>
    The topologies <math|\<cal-T\><rsub|X>>, <math|\<cal-T\><rsub|Y>> are
    generated by definition by the metrics <math|d<rsub|X>>, <math|d<rsub|Y>>
    where <math|d<rsub|X><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
    and <math|d<rsub|Y><around*|(|x<rprime|'>,y<rprime|'>|)>=<around*|\<\|\|\>|x<rprime|'>-y<rprime|'>|\<\|\|\>><rsub|Y>>.
    If <math|x,y\<in\>X> then <math|d<rsub|Y><around*|(|\<varphi\><around*|(|x|)>,\<varphi\><around*|(|y|)>|)>=<around*|\<\|\|\>|\<varphi\><around*|(|x|)>-\<varphi\><around*|(|y|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|\<varphi\>
    is linear><around*|\<\|\|\>|\<varphi\><around*|(|x-y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>=d<rsub|X><around*|(|x,y|)>>
    proving that <math|\<varphi\>> is also a isometry in the metric sense.
    Using <reference|topologies and isometries> proves then the theorem.
  </proof>

  <section|Inner product spaces>

  <\definition>
    <label|real inner product spaces><index|real product spaces>A real inner
    product space is a vector space <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    over the field <math|\<bbb-R\>> together with a mapping
    <math|<around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-R\>>
    (the inner product) satisfying the following:

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|y,x|\<rangle\>>>

      <item><math|\<forall\>x,y,z\<in\>X> and
      <math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>> we have
      <math|<around*|\<langle\>|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,z|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <\note>
        Because of (1) we have also <math|<around*|\<langle\>|z,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|z,x|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|z,y|\<rangle\>>>,
        so that <math|<around*|\<langle\>||\<rangle\>>> is multi-linear.
      </note>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>\<geqslant\>0>

      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
    </enumerate>
  </definition>

  <\definition>
    <label|complex inner space><index|complex inner spaces>A complex inner
    product space is a vector space <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    over the field <math|\<bbb-C\>> together with a mapping
    <math|<around*|\<langle\>||\<rangle\>>:X\<times\>X\<rightarrow\>\<bbb-C\>>
    satisfying the following:

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>X> we have
      <math|<around*|\<langle\>|x,y|\<rangle\>>=<wide|<around*|\<langle\>|y,x|\<rangle\>>|\<bar\>>>

      <\note>
        Because of (1) we have <math|<around*|\<langle\>|x,x|\<rangle\>>=<wide|<around*|\<langle\>|x,x|\<rangle\>>|\<bar\>>>
        or <math|<around*|\<langle\>|x,x|\<rangle\>>> is real.
      </note>

      <item><math|\<forall\>x,y,z\<in\>X> and
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-C\>> we have
      <math|<around*|\<langle\>|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z|\<rangle\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,z|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <\note>
        Because of (1) we have <math|<around*|\<langle\>|z,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|\<rangle\>>=<wide|<around*|\<langle\>|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z|\<rangle\>>|\<bar\>>=<wide|\<alpha\>\<cdot\><around*|\<langle\>|x,z|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>|\<bar\>>=<wide|\<alpha\>|\<bar\>>\<cdot\><around*|\<langle\>|z,x|\<rangle\>>+<wide|\<beta\>|\<bar\>>\<cdot\><around*|\<langle\>|z,y|\<rangle\>>>

        <item><math|\<forall\>x\<in\>X> we have
        <math|<around*|\<langle\>|x,x|\<rangle\>>\<geqslant\>0> (make sense
        since <math|<around*|\<langle\>|x,x|\<rangle\>>> is real)

        <item><math|\<forall\>x\<in\>X> if
        <math|<around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
      </note>
    </enumerate>
  </definition>

  <\theorem>
    <label|inner product of neutral elements>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real (complex) inner product space then <math|\<forall\>x\<in\>X> we
    have <math|<around*|\<langle\>|x,0|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=0>
  </theorem>

  <\proof>
    <math|<around*|\<langle\>|0,x|\<rangle\>>=<around*|\<langle\>|0\<cdot\>x,x|\<rangle\>>=<around*|\||0|\|>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>=0.<around*|\<langle\>|x,x|\<rangle\>>=0>.
    For the real case we have then <math|<around*|\<langle\>|x,0|\<rangle\>>=<around*|\<langle\>|0,x|\<rangle\>>=0>
    and for the complex case we have <math|<around*|\<langle\>|x,0|\<rangle\>>=<wide|<around*|\<langle\>|0,x|\<rangle\>>|\<bar\>>=<wide|0|\<bar\>>=0>
  </proof>

  <\lemma>
    <label|sum of positive numbers is positive>If
    <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a family of elements <math|\<bbb-R\>>
    (<math|\<bbb-C\><rsub|\<bbb-R\>>>) such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>s<rsub|i>\<geqslant\>0>
    then <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>s<rsub|i>=0>
    implies that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|s<rsub|i>=0>\ 
  </lemma>

  <\proof>
    We prove this by induction on <math|n>. So let
    <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
    <around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,|}>> is such
    that s<rsub|i>\<geqslant\>0 then from
    <big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>s<rsub|i>=0 it follows
    that \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> we have
    s<rsub|i>=0|}>>, we have then\ 

    <\enumerate>
      <item>If <math|n=1> then we have <math|0=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>s<rsub|i>=s<rsub|1>\<Rightarrow\>\<forall\>i\<in\><around*|{|1,\<ldots\>,1|}>>
      we have <math|s<rsub|i>=0> so that <math|1\<in\>S>

      <item>Assume that <math|n\<in\>S> if now
      <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      is such that <math|s<rsub|i>\<geqslant\>0> then if
      <math|0=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>s<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>s<rsub|i>+s<rsub|n+1>\<Rightarrowlim\><rsub|<with|mode|text|<reference|zero
      sum in R>,<reference|zero sum in C>>>s<rsub|n+1>=0,<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>s<rsub|i>=0\<Rightarrowlim\><rsub|n\<in\>S>s<rsub|n+1>=0,\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|s<rsub|i>\<Rightarrow\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>\<vDash\>s<rsub|i>\<Rightarrow\>n+1\<in\>S>
    </enumerate>

    Using induction we have then proved the theorem.
  </proof>

  <\theorem>
    Let <math|X> be a finite dimensional real vector space, given a basis
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>>
    define <math|\<forall\>x,y\<in\>X> <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>y<rsub|i>>
    where <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
    and <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>>
    are the unique expansions of <math|x,y> in
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
    We have then that <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a real inner product space.\ 
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>X> then <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>y<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>x<rsub|i>=<around*|\<langle\>|y,x|\<rangle\>>>

      <item>If <math|x,y,z\<in\>X> and <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>>
      then <math|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y=\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\><rsub|i>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>>
      so that <math|<around*|\<langle\>|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<cdot\>z<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|i>\<cdot\>z<rsub|i>|)>+\<beta\>\<cdot\><around*|(|y<rsub|i>\<cdot\>z<rsub|i>|)>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>z<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>z<rsub|i>=\<alpha\>\<cdot\><around*|\<langle\>|x,z|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <item>If <math|x\<in\>X> then <math|<around*|\<langle\>|x,x|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>x<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i><rsup|2>\<geqslant\>0>
      (using <reference|properties of positive, negative real numbers> and
      <reference|generalized sum of reals and order to 0>).

      <item>If <math|x\<in\>X> let <math|0=<around*|\<langle\>|x,x|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i><rsup|2>>
      then if <math|x\<neq\>0> there exists a
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x<rsub|i>\<neq\>0> then we have <math|x<rsub|i><rsup|2>\<gtr\>0>
      (see <reference|properties of positive, negative real numbers>) and
      thus by <reference|generalized sum of reals and order to 0> we have
      <math|<around*|\<langle\>|x,x|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i><rsup|2>\<gtr\>0>
      contradicting <math|<around*|\<langle\>|x,x|\<rangle\>>=0> so we must
      conclude that <math|x=0>
    </enumerate>
  </proof>

  <\lemma>
    <label|conjugate of sum>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a family in <math|\<bbb-C\>> then <math|<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|x<rsub|i>|\<bar\>>>
  </lemma>

  <\proof>
    We prove this by induction, so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
    <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>> is a
    family in \<bbb-C\> then <wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|x<rsub|i>|\<bar\>>|}>>
    then we have

    <\enumerate>
      <item>If <math|n=0> then <math|<wide|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,0|}>>x<rsub|i>|\<bar\>>=<wide|x<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,0|}>><wide|x<rsub|i>|\<bar\>>\<Rightarrow\>0\<in\>S>

      <item>If <math|n\<in\>S> then <math|<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>x<rsub|i>|\<bar\>>=<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>+x<rsub|n+1>|\<bar\>>=<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<bar\>>+<wide|x<rsub|n+1>|\<bar\>>\<equallim\><rsub|n\<in\>S><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|x<rsub|i>|\<bar\>>+<wide|x<rsub|n+1>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><wide|x<rsub|i>|\<bar\>>>
      so that <math|n+1\<in\>S>.
    </enumerate>
  </proof>

  <\theorem>
    Let <math|X> be a complex finite dimensional real vector space, given a
    basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    define <math|\<forall\>x,y\<in\>X> <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<bar\>>>
    where <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
    and <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,0|}>>y<rsub|i>\<cdot\>e<rsub|i>>
    are the unique expansions of <math|x,y> in
    <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>.
    We have then that <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a complex inner product space
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x,y\<in\>X> then <math|<around*|\<langle\>|x,y|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><wide|y<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|<wide|x<rsub|i>\<cdot\><wide|y<rsub|i>|\<bar\>>|\<bar\>>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|<wide|x<rsub|i>|\<bar\>>\<cdot\><wide|<wide|y<rsub|i>|\<bar\>>|\<bar\>>|\<bar\>>=<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|x<rsub|i>|\<bar\>>\<cdot\>y<rsub|i>|\<bar\>>=<wide|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\><wide|x<rsub|i>|\<bar\>>|\<bar\>>=<wide|<around*|\<langle\>|y,x|\<rangle\>>|\<bar\>>>

      <item>If <math|x,y,z\<in\>X> and <math|\<alpha\>,\<beta\>\<in\>\<bbb-C\>>
      then <math|<around*|\<langle\>|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<cdot\><wide|z<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\><around*|(|x<rsub|i>\<cdot\><wide|z<rsub|i>|\<bar\>>|)>+\<beta\>\<cdot\><around*|(|y<rsub|i>\<cdot\><wide|z<rsub|i>|\<bar\>>|)>|)>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><wide|z<rsub|i>|\<bar\>><rsub|>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\><wide|z<rsub|i>|\<bar\>>=\<alpha\>\<cdot\><around*|\<langle\>|x,z|\<rangle\>>+\<beta\>\<cdot\><around*|\<langle\>|y,z|\<rangle\>>>

      <item>If <math|x\<in\>X> then <math|<around*|\<langle\>|x,x|\<rangle\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<bar\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|\||x<rsub|i>|\|><rsup|2>,0|)>\<geqslant\>0>
      (using <reference|properties of positive, negative embedded reals> and
      \ <reference|generalized sum of reals and order to 0>)

      <item>If <math|x=0> and <math|<around*|\<langle\>|x,x|\<rangle\>>=0>
      then <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|\||x<rsub|i>|\|><rsup|2>,0|)>=0>
      and using <reference|generalized sum of reals and order to 0> we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|<around*|(|<around*|\||x<rsub|i>|\|><rsup|2>,0|)>=0\<Rightarrow\><around*|\||x<rsub|i>|\|><rsup|2>=0\<Rightarrowlim\><rsub|<with|mode|text|<reference|properties
      of positive, negative embedded reals>>>x<rsub|i>=0> proving that
      <math|x=0>.
    </enumerate>
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real (complex) inner product space then the inner product norm is
    defined as <math|\<forall\>x\<in\>X> we define
    <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\>> by
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>>
    (if we have a real inner product space) and
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=Re<around*|(|<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>|)>>
  </definition>

  <\lemma>
    Let <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a real (complex) inner product space then
    <math|<around*|\<\|\|\>|0|\<\|\|\>>=0>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|real inner product space><math|<around*|\<\|\|\>|0|\<\|\|\>>=<sqrt|<around*|\<langle\>|0,0|\<rangle\>>>=<sqrt|0>=0>

      <item><dueto|complex inner product space><math|<around*|\<\|\|\>|0|\<\|\|\>>=real<around*|(|<sqrt|<around*|\<langle\>|0,0|\<rangle\>>>|)>=real<around*|(|<sqrt|<around*|(|0,0|)>>|)>=real<around*|(|0,0|)>=0>
    </enumerate>
  </proof>

  <\theorem>
    <label|schwartz inequality><dueto|Schwartz's inequality>If
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    is a real (complex) inner space and <math|<around*|\<\|\|\>||\<\|\|\>>>
    the inner product norm then <math|\<forall\>x,y\<in\>X> we have
    <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>.
    Equality holds if and only if <math|x> and <math|y> are linearly
    dependent.
  </theorem>

  <\proof>
    We have the following cases to consider

    <\enumerate>
      <item><dueto|<math|x=0>>then <math|x,y> are linear dependent,
      <math|<around*|\<langle\>|0,y|\<rangle\>>\<equallim\><rsub|<with|mode|text|<reference|inner
      product of neutral elements>>>0> and because of the previous lemma we
      have <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0>
      so that we have <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\||<around*|\<langle\>|0,y|\<rangle\>>|\|>=0=0\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>

      <item><dueto|<math|y=0>>then <math|x,y> are linear dependent,
      <math|<around*|\<langle\>|x,0|\<rangle\>>\<equallim\><rsub|<with|mode|text|<reference|inner
      product of neutral elements>>>0> and because of the previous lemma we
      have <math|<around*|\<\|\|\>|y|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0>
      so that we have <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\||<around*|\<langle\>|x,0|\<rangle\>>|\|>=0=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>0=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>

      <item><dueto|<math|x\<neq\>0\<wedge\>y\<neq\>0>>then
      <math|<around*|\<langle\>|y,y|\<rangle\>>\<neq\>0> so that we can
      define <math|\<alpha\>=<frac|-<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<langle\>|y,y|\<rangle\>>>=-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>>\ 

      <\enumerate>
        <item><dueto|real inner product><math|0\<leqslant\><around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>+2\<cdot\>\<alpha\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\><rsup|2>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>+<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>+<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<Rightarrowlim\><rsub|mulitply
        by <around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>-<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<Rightarrow\><around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>|)><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
        root is a strictly increasing function>>><around*|\<langle\>|x,y|\<rangle\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>.
        Now assume that <math|x,y> are linearly dependent then we have either

        <\enumerate>
          <item><dueto|<math|x=\<beta\>\<cdot\>y>>then
          <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>=\<beta\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
          root is a strictly increasing function>>><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>

          <item><dueto|<math|y=\<beta\>\<cdot\>x>>then
          <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>=\<beta\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
          root is a strictly increasing function>>><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        </enumerate>

        Assume now that <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        then we have that <math|<around*|\<langle\>|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y,<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|y,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>-2\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-\|<around*|\||y|\|><rsup|2>\<cdot\><around*|\<langle\>|x,y|\<rangle\>><rsup|2>=<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=0>
        proving that <math|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x=<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y\<Rightarrow\>x=<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<langle\>|y,y|\<rangle\>>>\<cdot\>y>
        and linear dependency\ 

        <item><dueto|complex inner product><math|0\<leqslant\><around*|\<langle\>|x+\<alpha\>\<cdot\>y,x+\<alpha\>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|x,y|\<rangle\>>+<wide|\<alpha\>|\<bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+\<alpha\>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+\<alpha\>\<cdot\><wide|\<alpha\>|\<bar\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<wide|<around*|\<langle\>|x,y|\<rangle\>>|\<bar\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<bar\>>+<around*|\||\<alpha\>|\|><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>+<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<frac|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>|<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>>\<Rightarrow\>0\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>-<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>\<Rightarrow\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
        root is a strictly increasing function>>><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>.
        Now assume that <math|x,y> are linearly dependent then we have either

        <\enumerate>
          <item><dueto|<math|x=\<beta\>\<cdot\>y>>then
          <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>=\<beta\>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
          root is a strictly increasing function>>><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>

          <item><dueto|<math|y=\<beta\>\<cdot\>x>>then
          <math|<around*|\<langle\>|x,y|\<rangle\>><rsup|2>=\<beta\>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
          root is a strictly increasing function>>><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        </enumerate>

        Assume now that <math|<around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>>
        then <math|<around*|\<langle\>|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y,<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y|\<rangle\>>=<around*|\<langle\>|y,y|\<rangle\>><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>-<around*|\<langle\>|y,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<bar\>>\<cdot\><around*|\<langle\>|x,y|\<rangle\>>-<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>\<cdot\><around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>\<cdot\><wide|<around*|\<langle\>|x,y|\<rangle\>>|\<bar\>>\<cdot\><around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>-<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|><rsup|2>=<around*|\<\|\|\>|y|\<\|\|\>><rsup|4>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>-2\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=0>
        meaning that <math|<around*|\<langle\>|y,y|\<rangle\>>\<cdot\>x=<around*|\<langle\>|x,y|\<rangle\>>\<cdot\>y\<Rightarrow\>x=<frac|<around*|\<langle\>|x,y|\<rangle\>>|<around*|\<langle\>|y,y|\<rangle\>>>\<cdot\>y>
        and linear dependency.\ 
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|triangle inequality of inner product norm>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a inner product space and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    inner product norm then <math|\<forall\>x,y\<in\>X> we have
    <math|<around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>
  </theorem>

  <\proof>
    We make a distinction between the real case and the complex case

    <\enumerate>
      <item><dueto|real inner product><math|<around*|\<\|\|\>|x+y|\<\|\|\>><rsup|2>=<around*|\<langle\>|x+y,x+y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>+2\<cdot\><around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|y,y|\<rangle\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>|)><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
      root is a strictly increasing function>>><around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>

      <item><dueto|complex inner product><math|<around*|\<\|\|\>|x+y|\<\|\|\>><rsup|2>=<around*|\<langle\>|x+y,x+y|\<rangle\>>=<around*|\<langle\>|x,x|\<rangle\>>+<around*|\<langle\>|x,y|\<rangle\>>+<around*|\<langle\>|y,x|\<rangle\>>+<around*|\<langle\>|y,y|\<rangle\>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+<around*|\<langle\>|x,y|\<rangle\>>+<wide|<around*|\<langle\>|x,y|\<rangle\>>|\<bar\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\>Re<around*|(|<around*|\<langle\>|x,y|\<rangle\>>|)>+<around*|\<\|\|\>|y<rsup|2>|\<\|\|\>>\<leqslant\><rsub|<with|mode|text|<reference|complex
      norm is a norm>>><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\||<around*|\<langle\>|x,y|\<rangle\>>|\|>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|2>+2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>><rsup|2>=<around*|(|<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>|)><rsup|2>\<Rightarrowlim\><rsub|<with|mode|text|<reference|square
      root is a strictly increasing function>>><around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>||\<\|\|\>>>
    </enumerate>
  </proof>

  <\theorem>
    <label|the inner product norm is a norm>Let
    <math|<around*|\<langle\>|X,<around*|\<langle\>||\<rangle\>>|\<rangle\>>>
    be a inner product space and <math|<around*|\<\|\|\>||\<\|\|\>>> the
    inner product norm then <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    forms a normed space
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|<around*|\<\|\|\>|x|\<\|\|\>>=<sqrt|<around*|(|x,x|)>>\<geqslant\>0>
      (or <math|Re<around*|(|<sqrt|<around*|(|x,x|)>>|)>\<gtr\>0> in the
      complex case)

      <item><math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x|\<\|\|\>>=<sqrt|<around*|(|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|)>>\<cdot\><sqrt|\<alpha\><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>=<around*|\||\<alpha\>|\|>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
      (or <math|Re<around*|(|<sqrt|<around*|\<langle\>|\<alpha\>\<cdot\>x,\<alpha\>\<cdot\>x|\<rangle\>>>|)>=Re<around*|(|<sqrt|\<alpha\><rsup|2>\<cdot\><around*|\<langle\>|x,x|\<rangle\>>>|)>=Re<around*|(|\<alpha\>\<cdot\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>|)>=\<alpha\>\<cdot\>Re<around*|(|<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>|)>=\<alpha\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
      in the complex case)

      <item>Using <reference|triangle inequality of inner product norm> we
      have <math|<around*|\<\|\|\>|x+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>>

      <item>If <math|<around*|\<\|\|\>|x|\<\|\|\>>=0\<Rightarrow\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=0\<Rightarrow\><around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
      (or <math|Re<around*|(|<sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=0|)>\<Rightarrow\><sqrt|<around*|\<langle\>|x,x|\<rangle\>>>=0\<Rightarrow\><around*|\<langle\>|x,x|\<rangle\>>=0\<Rightarrow\>x=0>
      in the complex case).
    </enumerate>
  </proof>

  Applying the above theorem and lemma on finite dimensional real (complex)
  vector spaces gives\ 

  <\example>
    <label|inner product norm of finite dimensional spaces>If <math|X> is a
    finite dimensional real (complex) space with the canonical inner product
    defined by the basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=<sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i><rsup|2>>=<sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|><rsup|2>>>
    (or <math|<around*|\<\|\|\>|x|\<\|\|\>>=Re<around*|(|<sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\><wide|x<rsub|i>|\<bar\>>>|)>\<equallim\><rsub|<with|mode|text|<reference|imaginair
    (real part of generic sum))>>><sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>Re<around*|(|x<rsub|i>\<cdot\><wide|x<rsub|i>|\<bar\>>|)>>=<sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|><rsup|2>>>
    in the complex case) as the inner product norm (here
    <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
    is the unique expansion of\ 
  </example>

  In fact finite dimensional real (complex) spaces of the same dimensionality
  are isometric using the inner product norm.

  <\theorem>
    Let <math|X,Y> be finite dimensional real vector spaces of the same
    dimensionality with basis <math|<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then both spaces are isomorphic and isometric, so that the topologies
    generated by there inner product norm are equivalent (see
    <reference|topology of spaces which are isometric in the norm>)<nbsp>
  </theorem>

  <\proof>
    Define <math|\<varphi\>:X\<rightarrow\>Y> by
    <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>\<rightarrow\>\<varphi\><around*|(|x|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>f<rsub|i>>
    then we have

    <\enumerate>
      <item><dueto|injectivity>If <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|y|)>>
      then <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>f<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>f<rsub|i>>
      then by uniqueness of the expansion in a basis we must have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|x<rsub|i>=y<rsub|i>\<Rightarrow\>x=y>

      <item><dueto|surjectivity>If <math|y\<in\>Y> then
      <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>f<rsub|i>>
      and <math|\<varphi\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>f<rsub|i>=y>
    </enumerate>

    Also <math|\<varphi\>> is multilinear for if
    <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>,
    <math|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>>
    then <math|\<varphi\><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=\<varphi\><around*|(|\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>|)>=\<varphi\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<cdot\>e<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<cdot\>f<rsub|i>=\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>f<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>f<rsub|i>=\<alpha\>\<cdot\>\<varphi\><around*|(|x|)>+\<beta\>*\<cdot\>\<varphi\><around*|(|y|)>>

    Finally we have if <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
    then <math|<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>=<sqrt|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||x<rsub|i>|\|><rsup|2>>=<around*|\<\|\|\>|x|\<\|\|\>><rsup|2>>
  </proof>

  \;

  <section|Continuity>

  <\definition>
    <label|continuous function><index|continuous function at a
    point><index|continuous mapping ay a point>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and let <math|f:X\<rightarrow\>Y> be a function between between
    <math|X> and <math|Y> then <math|f> is continuous at <math|x> iff
    <math|\<forall\>V\<in\>\<cal-T\><rsub|Y>\<vdash\>f<around*|(|x|)>\<in\>V>
    we have <math|\<exists\>U\<in\>\<cal-T\><rsub|X>\<vdash\>x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>V>
  </definition>

  <\theorem>
    <label|continuity at a point and topological basis>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces with topological basis <math|\<cal-B\><rsub|X>> and
    <math|\<cal-B\><rsub|Y>> then for a function <math|f:X\<rightarrow\>Y> we
    have the following equivalences:

    <\enumerate>
      <item><math|f> is continuous at <math|x>

      <item><math|\<forall\>V\<in\>\<cal-B\><rsub|Y>\<vdash\>f<around*|(|x|)>\<in\>V>
      we have <math|\<exists\>U\<in\>\<cal-T\><rsub|X>\<vdash\>x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>V>

      <item><math|\<forall\>V\<in\>\<cal-B\><rsub|Y>\<vdash\>f<around*|(|x|)>\<in\>V>
      we have <math|\<exists\>U\<in\>\<cal-B\><rsub|X>\<vdash\>x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>V>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>This is trivial as
      <math|\<cal-B\><rsub|Y>\<subseteq\>\<cal-T\><rsub|Y>>

      <item><dueto|<math|2\<Rightarrow\>3>>Let
      <math|V\<in\>\<cal-B\><rsub|Y>> then by (2) there exists a
      <math|U<rprime|'>\<in\>\<cal-T\><rsub|X>> with
      <math|x\<in\>U<rprime|'>\<wedge\>f<around*|(|U<rprime|'>|)>\<subseteq\>V>,
      by the definition of a basis <math|\<exists\>U\<in\>\<cal-B\><rsub|X>>
      with <math|x\<in\>U\<subseteq\>U<rprime|'>\<Rightarrow\>f<around*|(|U|)>\<subseteq\>f<around*|(|U<rprime|'>|)>\<subseteq\>V>

      <item><dueto|<math|3\<Rightarrow\>1>>Let
      <math|V\<in\>\<cal-T\><rsub|Y>> with <math|f<around*|(|x|)>\<in\>V>
      then by the definition of a basis there exists a
      <math|W\<in\>\<cal-B\><rsub|Y>> with
      <math|f<around*|(|x|)>\<in\>W\<subseteq\>V> and thus there
      <math|\<exists\>U\<in\>\<cal-B\><rsub|X>\<subseteq\>\<cal-T\><rsub|X>>
      such that <math|x\<in\>U\<wedge\>f<around*|(|U|)>\<subseteq\>W\<subseteq\>V>
      proving continuity
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity of restricted maps>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and let <math|f:X\<rightarrow\>Y> be a function between <math|X>
    and Y then if <math|x\<in\>A\<subseteq\>X> we have that
    <math|f<rsub|\|A>:A\<rightarrow\>Y> is continuous at <math|x> (using the
    subspace topology of <math|A>)
  </theorem>

  <\proof>
    If <math|V\<in\>\<cal-T\><rsub|Y>> with
    <math|f<rsub|A><around*|(|x|)>\<in\>V> then we have
    <math|f<around*|(|x|)>=f<rsub|\|A><around*|(|x|)>\<in\>V> and by
    continuity at <math|x> there exists a <math|W\<in\>\<cal-T\><rsub|X>>
    with <math|x\<in\>W\<wedge\>f<around*|(|W|)>\<subseteq\>V\<Rightarrowlim\><rsub|x\<in\>A>x\<in\>W<big|cap>A\<subseteq\>W\<Rightarrow\>f<around*|(|W<big|cap>A|)>\<subseteq\>f<around*|(|W|)>\<subseteq\>V>
  </proof>

  <\theorem>
    <label|continuity to a subspace>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be
    topological spaces, <math|f:X\<rightarrow\>Y>,
    <math|f<around*|(|X|)>\<subseteq\>A> then <math|f:X\<rightarrow\>Y> is
    continous on <math|U> iff <math|f:X\<rightarrow\>A> is continuous (using
    the subspace topology of <math|A>)
  </theorem>

  <\proof>
    If <math|f:X\<rightarrow\>Y> is continuous then if <math|x\<in\>U> and
    <math|V> open in <math|A> with <math|f<around*|(|x|)>\<in\>V> then there
    exists a <math|W\<in\>\<cal-T\><rsub|Y>> such that
    <math|V=A<big|cap>W\<Rightarrow\>f<around*|(|x|)>\<in\>W> so by
    continuity of <math|f:X\<rightarrow\>Y> there exists a
    <math|U\<in\>\<cal-T\><rsub|X>> with <math|x\<in\>U> and
    <math|f<around*|(|U|)>\<subseteq\>W\<Rightarrow\>f<around*|(|U|)>\<equallim\><rsub|f<around*|(|U|)>\<subseteq\>A>f<around*|(|U|)><big|cap>A\<subseteq\>W<big|cap>A=V>
    proving that <math|f:X\<rightarrow\>A> is continuous in the subspace
    topology at <math|x> and as <math|x> is choosen arbitrary
    <math|f:X\<rightarrow\>A> is continuous. If <math|f:X\<rightarrow\>A> is
    continous then if <math|x\<in\>X> and <math|V\<in\>\<cal-T\><rsub|Y>>
    such that <math|f<around*|(|x|)>\<in\>V> then as
    <math|f<around*|(|x|)>\<in\>A> we have
    <math|f<around*|(|x|)>\<in\>V<big|cap>A> so by continuity of
    <math|f:X\<rightarrow\>A> we have that
    <math|\<exists\>U\<in\>\<cal-T\><rsub|X>> with <math|x\<in\>U> and
    <math|f<around*|(|U|)>\<subseteq\>V<big|cap>A\<subseteq\>V> proving that
    <math|f:X\<rightarrow\>Y> is continuous at <math|x> and as <math|x> is
    choosen arbitrary <math|it is f:X\<rightarrow\>Y> is continuous.
  </proof>

  <\definition>
    <index|continuous functions><index|continuous
    mappings><index|<math|\<cal-C\><around*|(|X,Y|)>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and let <math|f:X\<rightarrow\>Y> then <math|f> is continuous if
    and only if <math|\<forall\>x\<in\>X\<vDash\>f> is continuous at
    <math|x>. The set of continuous functions between <math|X> and <math|Y>
    is noted as <math|\<cal-C\><around*|(|X,Y|)>>.
  </definition>

  <\example>
    <label|constant functions are continuous><index|<math|C<rsub|X,c>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> b topological
    functions, <math|c\<in\>Y> and <math|C<rsub|X,c>:X\<rightarrow\>Y>
    defined by <math|C<rsub|c><around*|(|x|)>=c> is continuous
  </example>

  <\proof>
    <math|\<forall\>x\<in\>X> we have that if
    <math|c=C<rsub|X,c><around*|(|x|)>\<in\>V\<in\>\<cal-T\><rsub|Y>> then if
    <math|y\<in\>X\<in\>\<cal-T\><rsub|X>> we have
    <math|C<rsub|X,c><around*|(|y|)>=c\<in\>V\<Rightarrow\>C<rsub|X,c><around*|(|X|)>\<subseteq\>V>
  </proof>

  <\example>
    <label|identity function is continuous>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|1<rsub|X>:X\<rightarrow\>X> defined by <math|x\<rightarrow\>x>
    is continuous
  </example>

  <\proof>
    <math|\<forall\>x\<in\>X> we have if <math|x=1<rsub|X><around*|(|x|)>\<in\>V\<in\>\<cal-T\>>
    then if <math|y\<in\>V> then <math|1<rsub|X><around*|(|y|)>=y\<in\>V\<Rightarrow\>1<rsub|X><around*|(|V|)>=V\<subseteq\>V>
  </proof>

  <\theorem>
    <label|continuity characterization>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and let <math|f:X\<rightarrow\>Y> be a function between <math|X>
    and <math|Y> then the following are equivalent

    <\enumerate>
      <item><math|f> is continuous

      <item><math|\<forall\>V\<in\>\<cal-T\><rsub|Y>> we have
      <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>>

      <item><math|\<forall\>A\<subseteq\>X> we have
      <math|f<around*|(|<wide|A|\<bar\>>|)>\<subseteq\><wide|f<around*|(|A|)>|\<bar\>>>

      <item><math|\<forall\>F\<subseteq\>Y\<vdash\>F> is closed we have that
      <math|f<rsup|-1><around*|(|F|)>> is closed
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>Let
      <math|V\<in\>\<cal-T\><rsub|Y>> then either
      <math|f<rsup|-1><around*|(|V|)>=\<emptyset\>\<in\>\<cal-T\><rsub|X>> or
      <math|\<forall\>x\<in\>f<rsup|-1><around*|(|V|)>> we have by continuity
      that <math|\<exists\>U<rsub|x>\<in\>\<cal-T\><rsub|X>\<vdash\>x\<in\>U<rsub|x>\<wedge\>f<around*|(|U<rsub|x>|)>\<subseteq\>V\<Rightarrowlim\><rsub|<with|mode|text|<reference|properties
      of image and preimage>>>U<rsub|x>\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrow\>f<rsup|-1><around*|(|V|)>=<big|cup><rsub|x\<in\>U>U<rsub|x>\<in\>\<cal-T\><rsub|X>>

      <item><dueto|<math|2\<Rightarrow\>1>>If <math|x\<in\>X> then if
      <math|f<around*|(|x|)>\<in\>V\<subseteq\>\<cal-T\><rsub|Y>> then
      <math|x\<in\>U=f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|X>> and
      <math|f<around*|(|U|)>\<subseteq\>V>

      <item><dueto|<math|1\<Rightarrow\>3>>Let
      <math|y\<in\>f<around*|(|<wide|A|\<bar\>>|)>> then
      <math|\<exists\>x\<in\><wide|A|\<bar\>>> such that
      <math|y=f<around*|(|x|)>>, if now <math|y\<in\>V\<in\>\<cal-T\><rsub|Y>>
      then by continuity <math|\<exists\>U\<in\>\<cal-T\><around*|(|x|)>>
      such that <math|x\<in\>U> and <math|f<around*|(|U|)>\<subseteq\>V>, as
      <math|x\<in\><wide|A|\<bar\>>> we have by <reference|characterization
      of closure> that <math|U<big|cap>A\<neq\>\<emptyset\>\<Rightarrow\>\<emptyset\>\<neq\>f<around*|(|U<big|cap>A|)>\<subseteq\><rsub|<with|mode|text|<reference|image
      (preimage) of union , intersections>>>f<around*|(|U|)><big|cap>f<around*|(|A|)>\<subseteq\>V<big|cap>f<around*|(|A|)>\<Rightarrow\>y\<in\><wide|f<around*|(|A|)>|\<bar\>>>

      <item><dueto|<math|3\<Rightarrow\>2 and thus \<Rightarrow\>1>>Let
      <math|A> be a set in <math|Y> then as
      <math|f<around*|(|<wide|A|\<bar\>>|)>\<subseteq\><wide|f<around*|(|A|)>|\<bar\>>>
      we have by <reference|properties of image and preimage> that
      <math|<wide|A|\<bar\>>\<subseteq\>f<rsup|-1><around*|(|<wide|f<around*|(|A|)>|\<bar\>>|)>>.
      So if <math|B\<subseteq\>Y> is closed we have <math|<wide|B|\<bar\>>>=B
      and if we take <math|A=f<rsup|-1><around*|(|B|)>> then
      <math|<wide|f<rsup|-1><around*|(|B|)>|\<bar\>>=<wide|A|\<bar\>>\<subseteq\>f<rsup|-1><around*|(|<wide|f<around*|(|A|)>|\<bar\>>|)>=f<rsup|-1><around*|(|<wide|f<around*|(|f<rsup|-1><around*|(|B|)>|)>|\<bar\>>|)>\<subseteq\>f<rsup|-1><around*|(|<wide|B|\<bar\>>|)>=f<rsup|-1><around*|(|B|)>>,
      as we have also trivially <math|f<rsup|-1><around*|(|B|)>\<subseteq\><wide|f<rsup|-1><around*|(|B|)>|\<bar\>>>
      it follows that <math|f<rsup|-1><around*|(|B|)>=<wide|f<rsup|-1><around*|(|B|)>|\<bar\>>>
      and thus <math|f<rsup|-1><around*|(|B|)>> is closed. Now if
      <math|V\<in\>\<cal-T\><rsub|Y>> then <math|Y\\\\V> is closed and as
      <math|X\\\\f<rsup|-1><around*|(|V|)>\<equallim\><rsub|<with|mode|text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|Y\\\\V|)>> is closed we
      have that <math|f<rsup|-1><around*|(|V|)>> is open.\ 

      <item><dueto|<math|2\<Rightarrow\>4>>If <math|F> is closed then we have
      that <math|Y\<backslash\>F> is open and by (2) we have that
      <math|f<rsup|-1><around*|(|Y\\\\U|)>> is open so that
      <math|X\\\\f<rsup|-1><around*|(|Y\\\\F|)>> is closed. Now
      <math|X\\\\f<rsup|-1><around*|(|Y\\\\F|)>\<equallim\><rsub|<with|mode|text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|Y\\\\<around*|(|Y\\\\F|)>|)>=f<rsup|-1><around*|(|F|)>>
      so that <math|f<rsup|-1><around*|(|F|)>> is closed.\ 

      <item><dueto|<math|4\<Rightarrow\>2>>If <math|U> is open in <math|Y>
      then <math|Y\\\\U> is closed and by (4) we have that
      <math|f<rsup|-1><around*|(|Y\\\\U|)>> is closed and thus
      <math|X\\\\f<rsup|-1><around*|(|Y\\\\U|)>> is open. Finally
      <math|X\\\\f<rsup|-1><around*|(|Y\\\\U|)>\<equallim\><rsub|<with|mode|text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|Y\\\\<around*|(|Y\\\\U|)>|)>=f<rsup|-1><around*|(|U|)>>
      proving that <math|f<rsup|-1><around*|(|U|)>> is open.
    </enumerate>
  </proof>

  We prove now that continuity is essential a local feature

  <\theorem>
    <label|continuity is local>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and <math|f:X\<rightarrow\>Y> a function between
    <math|X\<rightarrow\>Y> then <math|f> is continuous iff
    <math|\<forall\>x\<in\>X> there exists a <math|U\<in\>\<cal-T\><rsub|X>>
    with <math|x\<in\>U> such that <math|f<rsub|\|U>:U\<rightarrow\>Y> is
    continuous in the subspace topology of <math|U>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>This follows from
      <reference|continuity of restricted maps>.

      <item><dueto|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then there exists
      a <math|U\<in\>\<cal-T\><rsub|X>> with <math|x\<in\>U> such that
      <math|f<rsub|\|U><around*|\||U\<rightarrow\>Y|\<nobracket\>>> is
      continuous. So if <math|V> is open in <math|Y> containing
      <math|f<rsub|\|U><around*|(|x|)>=f<around*|(|x|)>> then there exists a
      <math|W<rprime|'>> open in <math|U> such that
      <math|f<around*|(|W<rprime|'>|)>=f<rsub|\|U><around*|(|W<rprime|'>|)>\<subseteq\>V>,
      as <math|W<rprime|'>\<equallim\><rsub|definition of subspace
      topology>W<big|cap>U> is open in <math|X> (as <math|W,U> are open) this
      means that <math|f> is continuous at <math|x> and as <math|x\<in\>X>
      was chosen arbitrary we have that <math|f> is continuous.\ 
    </enumerate>
  </proof>

  <\definition>
    <label|open functions><index|open functions>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then a function <math|f:X\<rightarrow\>Y> is open iff
    <math|\<forall\>U\<in\>\<cal-T\><rsub|X>> we have that
    <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|Y>> (every image of a open set
    is open)
  </definition>

  <\theorem>
    <label|inverse of open map is continuous>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then for a open injective function <math|f:X\<rightarrow\>Y> we
    have that <math|f<rsup|-1>\|f<around*|(|X|)>\<rightarrow\>X> is
    continuous (see <reference|condition for invertable function>)\ 
  </theorem>

  <\proof>
    Let <math|U> be open in <math|X> then as <math|f> is open we have that
    <math|f<around*|(|U|)>> is open and <math|<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>\<equallim\><rsub|<with|mode|text|<reference|properties
    of image and preimage>>>f<around*|(|U|)>> is open in <math|X> and as
    <math|f<around*|(|U|)>\<subseteq\>f<around*|(|X|)>> we have that
    <math|f<around*|(|U|)><big|cap>f<around*|(|X|)>=f<around*|(|U|)>> so that
    <math|f<around*|(|U|)>=<around*|(|f<rsup|-1>|)><rsup|-1><around*|(|U|)>>
    is open in <math|f<around*|(|X|)> >proving continuity of
    <math|f<rsup|-1>:f<around*|(|X|)>\<rightarrow\>X>
  </proof>

  <\theorem>
    <label|composition of open functions is open>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>>,<math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|\<rangle\>>>
    be topological spaces and <math|f:X\<rightarrow\>Y>,
    <math|g:Y\<rightarrow\>Z> be open functions then
    <math|g\<circ\>f:X\<rightarrow\>Z> is a open function.
  </theorem>

  <\proof>
    This is trivial for if <math|U\<in\>\<cal-T\><rsub|X>> then
    <math|f<around*|(|U|)>> is open and thus
    <math|g<around*|(|f<around*|(|U|)>|)>=<around*|(|g\<circ\>f|)><around*|(|U|)>>
    is open.
  </proof>

  <\theorem>
    <label|composition of continuous functions is continuous>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,<math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>>,<math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|\<rangle\>>>
    be topological spaces and <math|f:X\<rightarrow\>Y>,
    <math|g:Y\<rightarrow\>Z> be continuous functions then
    <math|g\<circ\>f:X\<rightarrow\>Z> is continuous
  </theorem>

  <\proof>
    And let <math|W> be open in <math|Z> then by continuity of <math|g> we
    have that <math|g<rsup|-1><around*|(|W|)>> is open and thus by continuity
    of <math|f> we have that <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|W|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|W|)>|)>>
    is open.\ 
  </proof>

  <\theorem>
    <label|projection map is open and open>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces and let
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,\<cal-T\>|\<rangle\>>>
    be the product of the family equipped with the product topology (see
    <reference|product topology>) then <math|\<forall\>i\<in\>I> we have that
    the projection map <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i>>
    defined by <math|\<pi\><rsub|i><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=x<rsub|i>>
    is open and continuous
  </theorem>

  <\proof>
    \ 

    <\enumerate-Roman>
      <item><dueto|continuity>If <math|U\<in\>\<cal-T\><rsub|i>> then by the
      definition of the product topology <math|\<pi\><rsub|i><rsup|-1><around*|(|U|)>>
      is a element of the generating sub-basis, thus a element of the basis
      and finally a element of the topology.

      <item><dueto|open>Let <math|U> be open in the product topology and let
      <math|t\<in\>\<pi\><rsub|i><around*|(|U|)>> then
      <math|\<exists\>x\<in\>U> such that
      <math|t=\<pi\><rsub|i><around*|(|x|)>=x<around*|(|i|)>=x<rsub|i>>, as
      <math|x\<in\>U> open we use <reference|basis for the product topology>
      to find a family <math|<around*|{|A<rsup|<around*|(|t|)>><rsub|i>|}><rsub|i\<in\>I>>
      and a finite <math|A\<subseteq\>I> such that <math|\<forall\>j\<in\>I>
      we have <math|A<rsup|<around*|(|t|)>><rsub|j>=<choice|<tformat|<table|<row|<cell|A<rsup|<around*|(|t|)>><rsub|j>
      is open if j\<in\>A>>|<row|<cell|A<rsup|<around*|(|t|)>><rsub|j>=X<rsub|j>
      if j\<in\>I\\\\A\<Rightarrow\>A<rsup|<around*|(|t|)>><rsub|j> is
      open>>>>>>so that <math|x\<in\><big|prod><rsub|i\<in\>I>A<rsup|<around*|(|t|)>><rsub|i>\<subseteq\>U>
      so that <math|t=\<pi\><rsub|i><around*|(|x|)>\<subseteq\>\<pi\><rsub|i><around*|(|<big|prod><rsub|i\<in\>I>A<rsup|<around*|(|t|)>><rsub|i>|)>\<subseteq\>A<rsup|<around*|(|t|)>><rsub|i><rsub|>\<subseteq\>\<pi\><rsub|i><around*|(|U|)>
      >where <math|A<rsub|i>> is open. Using <reference|local property of
      open sets> we have then that <math|\<pi\><rsub|i><around*|(|U|)>> is
      open.
    </enumerate-Roman>
  </proof>

  <\theorem>
    <label|continuous functions to a product space>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> be a
    topological space, <math|<around*|{|X<rsub|i>,\<cal-T\><rsub|i>|}><rsub|i\<in\>I>>
    be a family of topological spaces and
    <math|<around*|\<langle\>|<big|prod><rsub|i\<in\>I>X<rsub|i>,\<cal-T\>|\<rangle\>>>
    where <math|\<cal-T\>> is the product topology. A function
    <math|f:X\<rightarrow\><big|prod><rsub|i\<in\>I>X<rsub|i>> is continuous
    iff <math|\<forall\>i\<in\>I> we have that
    <math|f<rsub|i>=\<pi\><rsub|i>\<circ\>f> is continuous
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>As <math|f> is continuous and
      <math|\<forall\>i\<in\>I> we have <math|\<pi\><rsub|i>> is continuous
      (see <reference|projection map is open and open>) we have by
      <reference|composition of continuous functions is continuous> that
      <math|f<rsub|i>=\<pi\><rsub|i>\<circ\>f> is continuous.

      \ <item><dueto|<math|\<Leftarrow\>>>Let <math|x\<in\>X> and
      <math|f<around*|(|x|)>\<in\>V> which is open in the product topology
      (see <reference|product topology>), then by the definition of the
      product topology there exists a finite family
      <math|<around*|{|U<rsub|i><rsup|<around*|(|x|)>>|}><rsub|i\<in\>J>> of
      open sets such that <math|f<around*|(|x|)>\<in\><big|cap><rsub|i\<in\>J>\<pi\><rsub|i><rsup|-1><around*|(|U<rsup|<around*|(|x|)>><rsub|i>|)>\<subseteq\>V\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|<big|cap><rsub|i\<in\>J>\<pi\><rsub|i><rsup|-1><around*|(|U<rsup|<around*|(|x|)>><rsub|i>|)>|)>\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrowlim\><rsub|<with|mode|text|<reference|image
      (preimage) of union , intersections>>>x\<in\><big|cap><rsub|i\<in\>J>f<rsup|-1><around*|(|\<pi\><rsub|i><rsup|-1><around*|(|U<rsup|<around*|(|x|)>><rsub|i>|)>|)>=<big|cap><rsub|i\<in\>J><around*|(|\<pi\><rsub|i>\<circ\>f|)><rsup|-1><around*|(|U<rsup|<around*|(|x|)>><rsub|i>|)>\<subseteq\>f<rsup|-1><around*|(|V|)>>.
      Now as <math|\<pi\><rsub|i>\<circ\>f> is continuous we have that
      <math|W<rsub|x>=<big|cap><rsub|i\<in\>J><around*|(|\<pi\><rsub|i>\<circ\>f|)><rsup|-1><around*|(|U<rsub|i><rsup|<around*|(|x|)>>|)>>
      \ is open and <math|x\<in\>W<rsub|x>\<subseteq\>f<rsup|\<um\>1><around*|(|V|)>>.
      Using <reference|local property of open sets> we have then that
      <math|f<rsup|-1><around*|(|V|)>> is open.
    </enumerate>
  </proof>

  <\theorem>
    <label|Continuity of function on a topological product>Let
    <math|<around*|\<langle\>|X<rsub|1>,\<cal-T\><rsub|1>|\<rangle\>>>,
    <math|<around*|\<langle\>|X<rsub|2>,\<cal-T\><rsub|2>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|<around*|\<langle\>|X<rsub|1>\<times\>X<rsub|2>,\<cal-T\>|\<rangle\>>>
    where <math|\<cal-T\>> is the product topology (= the box topology by
    <reference|finite product topology is box topology>). If now
    <math|f:X<rsub|1>\<times\>X<rsub|2>\<rightarrow\>Y> is a continuous
    function then the following functions are also continuous:

    <\enumerate>
      <item><math|\<forall\>x\<in\>X<rsub|1>
      f<rsub|1><around*|(|x|)>:X<rsub|2>\<rightarrow\>Y> defined by
      <math|t\<rightarrow\>f<rsub|1><around*|(|x|)><around*|(|t|)>=f<around*|(|x,t|)>>

      <item><math|\<forall\>x\<in\>X<rsub|2>
      f<rsub|2><around*|(|x|)>:X<rsub|1>\<rightarrow\>Y> defined by
      <math|t\<rightarrow\>f<rsub|2><around*|(|x|)><around*|(|t|)>=f<around*|(|t,x|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|V\<subseteq\>Y> be a open set then by continuity of
      <math|f> we have that <math|f<rsup|-1><around*|(|V|)>> is open in
      <math|X<rsub|1>\<times\>X<rsub|2>>. Take now
      <math|y\<in\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>> then
      <math|f<around*|(|x,y|)>=f<rsub|1><around*|(|x|)><around*|(|y|)>\<in\>V\<Rightarrow\><around*|(|x,y|)>\<in\>f<rsup|-1><around*|(|V|)>\<Rightarrowlim\><rsub|f<rsup|-1><around*|(|V|)>
      is open\<nocomma\>product topology is box
      topology>\<exists\>U\<in\>\<cal-T\><rsub|1>\<wedge\>\<exists\>W\<in\>\<cal-T\><rsub|2>>
      such that <math|<around*|(|x,y|)>\<in\>U\<times\>W\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrow\>x\<in\>U\<wedge\>y\<in\>W>.
      Now if <math|t\<in\>W\<Rightarrow\><around*|(|x,t|)>\<in\>U\<times\>W\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrow\>f<rsub|1><around*|(|x|)><around*|(|t|)>=f<around*|(|x,t|)>\<in\>V\<Rightarrow\>t\<in\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>\<Rightarrow\>W\<subseteq\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>.
      So we have that <math|y\<in\>W\<subseteq\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>
      which by <reference|local property of open sets> proves that
      <math|f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>> is open.

      <item>Let <math|V\<subseteq\>Y> be a open set then by continuity of
      <math|f> we have that <math|f<rsup|-1><around*|(|V|)>> is open in
      <math|X<rsub|1>\<times\>X<rsub|2>>. Take now
      <math|y\<in\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>> then
      <math|f<around*|(|y,x|)>=f<rsub|2><around*|(|x|)><around*|(|y|)>\<in\>V\<Rightarrow\><around*|(|y,x|)>\<in\>f<rsup|-1><around*|(|V|)>\<Rightarrowlim\><rsub|f<rsup|-1><around*|(|V|)>
      is open\<nocomma\>product topology is box
      topology>\<exists\>U\<in\>\<cal-T\><rsub|1>\<wedge\>\<exists\>W\<in\>\<cal-T\><rsub|2>>
      such that <math|<around*|(|y,x|)>\<in\>U\<times\>W\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrow\>y\<in\>U\<wedge\>x\<in\>W>.
      Now if <math|t\<in\>U\<Rightarrow\><around*|(|t,x|)>\<in\>U\<times\>W\<subseteq\>f<rsup|-1><around*|(|V|)>\<Rightarrow\>f<rsub|2><around*|(|x|)><around*|(|t|)>=f<around*|(|t,x|)>\<in\>V\<Rightarrow\>t\<in\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>\<Rightarrow\>U\<subseteq\>f<rsub|1><around*|(|x|)><rsup|-1><around*|(|V|)>>.
      So we have that <math|y\<in\>U\<subseteq\>f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>>
      which by <reference|local property of open sets> proves that
      <math|f<rsub|2><around*|(|x|)><rsup|-1><around*|(|V|)>> is open.
    </enumerate>
  </proof>

  We now prove the condition to have a continuous function in metric spaces.
  From now on we assume that for the metric spaces we use the metric
  topology.

  <\theorem>
    <label|continuity in metric spaces>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be metric spaces and
    <math|f:X\<rightarrow\>Y> a function then <math|f> is continuous in the
    metric topology at <math|x\<in\>X> iff
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> we have that
    <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsub|+>> such that
    <math|\<forall\>y\<in\>X\<vdash\>d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>>
    we have <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If <math|f> is continuous at
      <math|x> then if <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> we have
      that <math|f<around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>
      which is open so there exists a <math|U> open in <math|X> such that
      <math|x\<in\>U> and <math|f<around*|(|U|)>\<subseteq\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>.
      As <math|U> is open in the metric topology there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that
      <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<subseteq\>U\<Rightarrow\>f<around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<subseteq\>f<around*|(|U|)>\<subseteq\>B<rsub|d<rsub|Y>><around*|(||)>>

      <item><dueto|<math|\<Leftarrow\>>>Let <math|x\<in\>X> then to prove
      continuity we can use <reference|continuity at a point and topological
      basis> so if <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> and
      <math|f<around*|(|x|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>>.
      Now by the hypothesis there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that if
      <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<varepsilon\>>
      or if <math|y\<in\>B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>\<Rightarrow\>d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>\<Rightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<Rightarrow\>f<around*|(|y|)>\<in\>B<rsub|d<rsub|Y>><around*|(|f<around*|(|x|)>,\<varepsilon\>|)>\<Rightarrow\>f<around*|(|B<rsub|d<rsub|X>><around*|(|x,\<delta\>|)>|)>\<subseteq\>B<rsub|d<rsub|Y>><around*|(|y,\<delta\>|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|open functions in metric spaces>Let <math|X,d<rsub|X>> and
    <math|Y,d<rsub|Y>> be metric spaces and <math|f:X\<rightarrow\>Y> a
    function then <math|f> is open if and only if
    <math|\<forall\>x\<in\>X,\<forall\>\<delta\>\<gtr\>0> we have that there
    exists a <math|\<delta\><rprime|'>\<gtr\>0> such that
    <math|f<around|(|x|)>\<in\>B<rsub|d<rsub|Y>><around|(|f<around|(|x|)>,\<delta\><rprime|'>|)>\<subseteq\>f<around|(|B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>|)>>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Because <math|f> is open we have
      that if <math|x\<in\>B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>> then
      <math|f<around|(|B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>|)>> is open
      and thus as <math|f<around|(|x|)>\<in\>f<around|(|B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>|)>>
      there exists a <math|\<delta\><rprime|'>> such that
      <math|f<around|(|x|)>\<in\>B<rsub|d<rsub|Y>><around|(|f<around|(|x|)>,\<delta\><rprime|'>|)>\<subseteq\>f<around|(|B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>|)>>

      <item><dueto|<math|\<Leftarrow\>>>Let <math|U\<subset\>X>, <math|U>
      open and let <math|y\<in\>f<around|(|U|)>> then there exists a
      <math|x\<in\>U> such that <math|f<around|(|x|)>=y> then by the
      hypothesis there exists a <math|\<delta\><rsub|y>> with
      <math|y=f<around|(|x|)>\<in\>B<rsub|d<rsub|Y>><around|(|f<around|(|x|)>,\<delta\><rsub|y>|)>=B<rsub|d<rsub|Y>><around|(|y,\<delta\><rsub|y>|)>\<subseteq\>f<around|(|B<rsub|d<rsub|X>><around|(|x,\<delta\>|)>|)>\<subseteq\>f<around|(|U|)>\<Rightarrow\>f<around|(|U|)>=<big|cup><rsub|y\<in\>f<around|(|U|)>>B<rsub|d<rsub|Y>>(y,\<delta\><rsub|y>0>
      and thus <math|f<around|(|U|)>> is open\ 
    </enumerate>
  </proof>

  \ 

  <\definition>
    <label|uniform continuous><index|uniform continuous>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be metric spaces then
    a function <math|f:X\<rightarrow\>Y> is <strong|uniform continuous> in
    <math|K\<subseteq\>X> iff <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    we have that <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsub|+>> such that
    <math|\<forall\>x,y\<in\>K> with <math|d<rsub|X><around*|(|x,y|)>\<less\>\<varepsilon\>>
    we have that <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<varepsilon\>>
  </definition>

  <\theorem>
    <label|continuity of function in a normed space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces then a function <math|f:X\<rightarrow\>Y> is continuous
    at <math|x> in the norm topologies iff
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
    <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that if
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    This follows from <reference|continuity in metric spaces> and the fact
    that <math|d<rsub|X><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>>
    and <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>>
  </proof>

  <\theorem>
    <label|continuity of vector space operations>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space then <math|+:X\<times\>X\<rightarrow\>X> defined by
    <math|<around*|(|x,y|)>\<rightarrow\>x+y>,
    <math|\<cdot\>:X\<times\>\<bbb-R\><around*|(|\<bbb-C\>|)>\<rightarrow\>X>
    defined by <math|<around*|(|x,\<alpha\>|)>\<rightarrow\>\<alpha\>\<cdot\>x>
    and <math|<around*|\<\|\|\>||\<\|\|\>>:X\<rightarrow\>\<bbb-R\>> are
    continuous in the norm topology and product topologies of
    <math|X\<times\>X> and <math|X\<times\>\<bbb-R\><around*|(|\<bbb-C\>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|+>>Let <math|x+y\<in\>U> (open in the norm topology)
      then <math|\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> such that
      <math|x+y\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x+y,\<varepsilon\>|)>\<subseteq\>U>.
      Take now <math|z<rprime|'>=<around*|(|x<rprime|'>,y<rprime|'>|)>\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,<frac|\<varepsilon\>|2>|)>\<times\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|y\<nocomma\>,<frac|\<varepsilon\>|2>|)>>
      (which is open in <math|X\<times\>X>) then
      <math|<around*|\<\|\|\>|x+y-<around*|(|x<rprime|'>+y<rprime|'>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|x-x<rprime|'>|)>+<around*|(|y-y<rprime|'>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>+<around*|\<\|\|\>|y-y<rprime|'>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>\<Rightarrow\>x<rprime|'>+y<rprime|'>\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x+y,\<varepsilon\>|)>\<subseteq\>U\<Rightarrow\>+<around*|(|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x\<nocomma\>
      ,<frac|\<varepsilon\>|2>|)>\<times\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|y,<frac|\<varepsilon\>|2>|)>|)>\<subseteq\>U>
      proving that <math|+> is continue at <math|<around*|(|x,y|)>>. As
      <math|<around*|(|x,y|)>\<in\>X\<times\>X> has been chosen arbitrary we
      have that <math|+> is continuous.\ 

      <item><dueto|<math|.>>Let <math|\<lambda\>\<cdot\>x\<in\>U> (open in
      <math|X>) then there exists a <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
      such that <math|\<lambda\>\<cdot\>x\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|\<lambda\>\<cdot\>x,\<varepsilon\>|)>\<subseteq\>U>.
      Let know <math|z<rprime|'>=<around*|(|x<rprime|'>,\<lambda\><rprime|'>|)>\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\><rsub|1>|)>\<times\>B<rsub|d<rsub|<around*|\|||\|>>><around*|(|\<lambda\>,\<delta\><rsub|2>|)>>
      which is open in <math|X\<times\>\<bbb-R\><around*|(|\<bbb-C\>|)>> then
      <math|<around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>=<around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x+\<lambda\><rprime|'>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x|\<\|\|\>>+<around*|\<\|\|\>|\<lambda\><rprime|'>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>=<around*|\||\<lambda\>-\<lambda\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<lambda\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\||\<lambda\><rprime|'>|\|>\<cdot\>\<delta\><rsub|1>=\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|\||\<lambda\><rprime|'>-\<lambda\>+\<lambda\>|\|>\<leqslant\>\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|(|<around*|\||\<lambda\><rprime|'>-\<lambda\>|\|>+<around*|\||\<lambda\>|\|>|)>\<less\>\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|(|\<delta\><rsub|2>+<around*|\||\<lambda\>|\|>|)>>
      giving

      <\equation>
        <label|eq 11.11><around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|(|\<delta\><rsub|2>+<around*|\||\<lambda\>|\|>|)>
      </equation>

      consider now the following cases

      <\enumerate>
        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>>=0>>take then
        <math|\<delta\><rsub|2>=1> and <math|\<delta\><rsub|1>=<frac|\<varepsilon\>|1+<around*|\||\<lambda\>|\|>>>
        then <math|\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|(|\<delta\><rsub|2>+<around*|\||\<lambda\>|\|>|)>=<frac|\<varepsilon\>|1+<around*|\||\<lambda\>|\|>>\<cdot\><around*|(|1+<around*|\||\<lambda\>|\|>|)>=\<varepsilon\>\<Rightarrowlim\><rsub|<with|mode|text|<reference|eq
        11.11>>><around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>>

        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>>\<neq\>0>>take then
        <math|\<delta\><rsub|1>=<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||\<lambda\>|\|>|)>>\<wedge\>\<delta\><rsub|2>=min<around*|(|1,<frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>|)>>
        then <math|\<delta\><rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+\<delta\><rsub|1>\<cdot\><around*|(|\<delta\><rsub|2>+<around*|\||\<lambda\>|\|>|)>\<leqslant\><frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>+<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||\<lambda\>|\|>|)>>\<cdot\><around*|(|1+<around*|\||\<lambda\>|\|>|)>=<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>\<Rightarrowlim\><rsub|<with|mode|text|<reference|eq
        11.11>>><around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>>
      </enumerate>

      So with the correct choice of <math|\<delta\><rsub|1>,\<delta\><rsub|2>>
      we have <math|<around*|\<\|\|\>|\<lambda\>\<cdot\>x-\<lambda\><rprime|'>\<cdot\>x<rprime|'>|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\>\<lambda\><rprime|'>\<cdot\>x<rprime|'>\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|\<lambda\>\<cdot\>x,\<varepsilon\>|)>\<subseteq\>U>
      if <math|<around*|(|x<rprime|'>,\<lambda\><rprime|'>|)>\<in\>B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\><rsub|1>|)>\<cdot\>B<rsub|d<rsub|<around*|\|||\|>>><around*|(|\<lambda\>,\<delta\><rsub|2>|)>>
      or <math|\<cdot\><around*|(|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>><around*|(|x,\<delta\><rsub|1>|)>\<cdot\>B<rsub|d<rsub|<around*|\|||\|>>><around*|(|\<lambda\>,\<delta\><rsub|2>|)>|)>\<subseteq\>U>
      proving that <math|\<cdot\>> is continuous at
      <math|<around*|(|x,\<lambda\>|)>>. As <math|<around*|(|x,\<lambda\>|)>>
      was chosen arbitrary we have that <math|\<cdot\>> is continuous.

      <item><dueto|<math|<around*|\<\|\|\>||\<\|\|\>>>>Let <math|x\<in\>X>
      and let <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then if
      <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>
      |\|>\<leqslant\><around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<varepsilon\>>
      proving by <reference|continuity of function in a normed space> that
      <math|<around*|\<\|\|\>||\<\|\|\>>> is continue at <math|x>. As
      <math|x> is chosen arbitrary we have that
      <math|<around*|\<\|\|\>||\<\|\|\>> is continuous.>
    </enumerate>
  </proof>

  <\theorem>
    <label|norm mappings are continuous in the produc tof reals>When
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is equipped with product topology generated by the maximum norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> (see <reference|norm of finite
    product of normed spaces>) and <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>>
    is another norm on <math|\<bbb-R\><rsup|n>> then the function
    <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
    defined by <math|x\<rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>>
    is continuous.
  </theorem>

  <\proof>
    Let <math|<around*|{|\<cal-E\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be the canonical basis on <math|\<bbb-R\><rsup|n>> (see
    <reference|canonical basis>) then <math|\<forall\>x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
    we have <math|x=<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<cal-E\><rsub|i>\<Rightarrowlim\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>=<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<cdot\>\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>\<leqslant\><rsub|<with|mode|text|<reference|norm
    of a finite sum>>><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|x<rsub|i>\<cdot\>\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>=<big|sum><rsub|i=1><rsup|n><around*|\||x<rsub|i>|\|>\<cdot\><around*|\<\|\|\>|\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>\<leqslant\>max<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<cdot\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>=<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>=A\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
    where <math|A=<big|sum><rsub|i=1><rsup|n><around*|\<\|\|\>|\<cal-E\><rsub|i>|\<\|\|\>><rsup|\<ast\>>\<geqslant\>0>.
    So we have

    <\equation>
      <label|eq 11.12><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<leqslant\>A\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>
      where A\<geqslant\>0
    </equation>

    If now <math|x\<in\>\<bbb-R\><rsup|n>> and
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> take then
    <math|\<delta\>=<frac|\<varepsilon\>|A+1>> then if
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|x-y|\<\|\|\>><rsup|\<ast\>>\<leqslant\>A\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>A\<cdot\>\<delta\>=A\<cdot\><frac|\<varepsilon\>|A+1>\<leqslant\>\<varepsilon\>>
    (as <math|0\<leqslant\>A>) proving that
    <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>> is continuous at
    <math|x>. As <math|x> was chosen arbitrary we have proved that
    <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>> is continuous.
  </proof>

  <\definition>
    <label|homeomorphism><index|homeomorphism>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then a function <math|f:X\<rightarrow\>Y> is a
    <strong|homeomorphism> iff <math|f> is a bijection and
    <math|f,f<rsup|-1>> are continuous. <math|><math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>
    and <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> are then
    said to be <strong|homeomorphic>. \ 
  </definition>

  <\note>
    <label|equivalent definition of homeomorphism>Using <reference|inverse of
    open map is continuous> it is easy to see that <math|f:X\<rightarrow\>Y>
    is a homeomorphism if it is a bijection and if it is open and continuous.
  </note>

  <\theorem>
    <label|homeomorphism on subset>Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces, <math|f:X\<rightarrow\>Y> a homeomorphism and
    <math|\<emptyset\>\<neq\>A\<subseteq\>X> \ then
    <math|f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)>> is a homeomorphism
    (using the subspace topologies of <math|\<cal-T\><rsub|X>> and
    <math|\<cal-T\><rsub|Y>> on <math|A> and <math|f<around*|(|A|)>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|bijectivity>First using <reference|f\|C is bijective if f
      is injective> and the fact that <math|f> is bijective and thus
      injective we have that <math|f<rsub|\|A>:A\<rightarrow\>f<around*|(|A|)>>
      is a bijection.

      <item><dueto|continuity>Let <math|x\<in\>A> then if <math|V> is a open
      set in <math|f<around*|(|A|)>> containing
      <math|f<rsub|\|A><around*|(|x|)>=f<around*|(|x|)>> there exists a
      <math|W\<in\>\<cal-T\><rsub|Y>> such that
      <math|V=f<around*|(|A|)><big|cap>W>. As <math|f> is continuous at
      <math|x> there exists a <math|U\<in\>\<cal-T\><rsub|X>> with
      <math|x\<in\>U> such that <math|f<around*|(|U|)>\<subseteq\>W.> So we
      have <math|x\<in\>A<big|cap>U> (which is open by definition in
      <math|A>) and <math|f<rsub|\|A><around*|(|A<big|cap>U|)>\<equallim\><rsub|A<big|cap>U\<subseteq\>A
      and <text|<reference|image of a restricted
      function>>>f<around*|(|A<big|cap>U|)>\<equallim\><rsub|f is injective
      and <text|<reference|image (preimage) of union ,
      intersections>>>f<around*|(|A|)><big|cap>f<around*|(|U|)>\<subseteq\>f<around*|(|A|)><big|cap>W=V>
      proving that <math|f<rsub|\|A>> is continous at <math|x>. As
      <math|x\<in\>A> was choosen arbitrary we conclude that
      <math|f<rsub|\|A>> is continuous.

      <item><dueto|<math|open>>Let <math|U> open in <math|A> then there
      exists a <math|W\<in\>\<cal-T\><rsub|X>> such that
      <math|U=A<big|cap>W>. We have then that
      <math|f<rsub|<mid|\|>A><around*|(|U|)>\<equallim\><rsub|U\<subseteq\>A>f<around*|(|U|)>=f<around*|(|A<big|cap>W|)>\<equallim\><rsub|f
      is injective and <text|<reference|image (preimage) of union ,
      intersections>>>f<around*|(|A|)><big|cap>f<around*|(|W|)>> as <math|f>
      is open we have that <math|f<around*|(|W|)>\<in\>\<cal-T\><rsub|Y>\<Rightarrow\>f<rsub|\|A><around*|(|U|)>=f<around*|(|A|)><big|cap>W>
      is open in the subspace topology of <math|f<around*|(|A|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|inverse of a homeomorphisme>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces then if <math|f:X\<rightarrow\>Y> is a homeomorphism we have that
    <math|f<rsup|-1>:Y\<rightarrow\>X> is a homeomorphism
  </theorem>

  <\proof>
    As <math|f> is a bijection we have by <reference|bijection and its
    inverse> that <math|f<rsup|-1>> is a bijection. By definition we have
    that <math|f<rsup|-1>> is continuous and by <reference|condition for
    beeing a inversible function> we have that
    <math|<around*|(|f<rsup|-1>|)><rsup|-1>=f> is continuous proving that
    <math|f<rsup|-1>> is a homeomorphism.
  </proof>

  <\theorem>
    <label|composition of homeomorphisms is a homeomorphism>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|\<rangle\>>> be topological
    spaces and <math|f:X-Y>, <math|g:Y\<rightarrow\>Z> be homeomorphism's's
    then <math|g\<circ\>f:X\<rightarrow\>Z> is a homeomorphism.
  </theorem>

  <\proof>
    Using <reference|properties of composition of functions> we have that
    <math|g\<circ\>f> is a bijection, also using <reference|equivalent
    definition of homeomorphism> we have that <math|g,f> are continuous and
    open. Using <reference|composition of continuous functions is
    continuous>,<reference|composition of open functions is open> we have
    then that <math|g\<circ\>f> is open and continuous, which by
    <reference|equivalent definition of homeomorphism> means that
    <math|g\<circ\>f> is a homeomorphism.
  </proof>

  <\theorem>
    <label|induced topology><index|induced topology>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|Y> a set and <math|f:X\<rightarrow\>Y> a bijection. Define
    then <math|\<cal-T\><rsub|f,\<cal-T\>>=<around*|{|f<around*|(|U|)>\|U\<in\>\<cal-T\>|}>>
    forms a topology on <math|Y> so that <math|f> is a homeomorphism. Further
    if <math|g:X\<rightarrow\>Y> is such that <math|f=g\<circ\>h> where
    <math|h:X\<rightarrow\>X> is a homeomorphism then <math|g> is a
    homeomorphism and <math|\<cal-T\><rsub|f,\<cal-T\>>=\<cal-T\><rsub|g,\<cal-T\>>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<cal-T\><rsub|f,\<cal-T\>>> is a topology>We have
      to full fill all the axioms of a topology

      <\enumerate>
        <item><math|\<emptyset\>=f<around*|(|\<emptyset\>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>>>

        <item><math|Y\<equallim\><rsub|f is bijection thus
        surjective>f<around*|(|X|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>>>

        <item>If <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> is a family of
        sets in <math|\<cal-T\><rsub|f,\<cal-T\>>> then
        <math|\<forall\>i\<in\>I> there exists a
        <math|U<rsub|i>\<in\>\<cal-T\>> such that
        <math|V<rsub|i>=f<around*|(|U<rsub|i>|)>> so that
        <math|<big|cup><rsub|i\<in\>I>V<rsub|i>=<big|cup><rsub|i\<in\>I>f<around*|(|U<rsub|i>|)>\<equallim\><rsub|<with|mode|text|<reference|image
        (preimage) of union , intersections>>>f<around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>>>

        <item>Let <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|f,\<cal-T\>>>
        then <math|\<exists\>U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> such that
        <math|V<rsub|1>=f<around*|(|U<rsub|1>|)>>,
        <math|V<rsub|2>=f<around*|(|U<rsub|2>|)>> then
        <math|V<rsub|1><big|cap>V<rsub|2>=f<around*|(|U<rsub|1>|)><big|cap>f<around*|(|U<rsub|2>|)>\<equallim\><rsub|<with|mode|text|<reference|image
        (preimage) of union , intersections>>>f<around*|(|U<rsub|1><rsup|><big|cap>U<rsub|2>|)>\<in\>\<cal-T\><rsub|f,X>>
      </enumerate>

      <item><dueto|<math|f> is a homeomorphism>If <math|U\<in\>\<cal-T\>>
      then <math|f<around*|(|U|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>>> so that
      <math|f> is open. If <math|V\<in\>\<cal-T\><rsub|f,\<cal-T\>>> then
      <math|\<exists\>U\<in\>\<cal-T\>> such that
      <math|V=f<around*|(|U|)>\<Rightarrow\>f<rsup|-1><around*|(|V|)>=f<rsup|-1><around*|(|f<around*|(|U|)>|)>\<equallim\><rsub|<with|mode|text|<reference|surjective
      function and image/preimage>>>U\<in\>\<cal-T\>> proving that <math|f>
      is continuous. As <math|f> is a bijection we have that <math|f> is a
      homeomorphism.

      <item><dueto|<math|\<cal-T\><rsub|f,X>=\<cal-T\><rsub|g,X>>>First as
      <math|h> is a homeomorphism and thus a bijection we have that
      <math|h<rsup|-1>:X\<rightarrow\>X> is a homeomorphism (see
      <reference|inverse of a homeomorphisme>) so that
      <math|f\<circ\>h<rsup|-1>=<around*|(|g\<circ\>h|)>\<circ\>h<rsup|-1>=g\<circ\><around*|(|h\<circ\>h<rsup|-1>|)>=g\<circ\>1<rsub|X>=g>
      so that <math|g> is a homeomorphism (see <reference|composition of
      homeomorphisms is a homeomorphism>) and
      <math|\<cal-T\><rsub|g,\<cal-T\>>> is defined. Next if
      <math|U\<in\>\<cal-T\><rsub|f,\<cal-T\>>> then
      <math|\<exists\>V\<in\>\<cal-T\>> such that
      <math|U=f<around*|(|V|)>=f<around*|(|h<rsup|-1><around*|(|h<around*|(|V|)>|)>|)>=<around*|(|f\<circ\>h<rsup|-1>|)><around*|(|h<around*|(|V|)>|)>=g<around*|(|h<around*|(|V|)>|)>\<in\>\<cal-T\><rsub|g,\<cal-T\>>>
      as <math|h> is a homeomorphism so that
      <math|g<around*|(|V|)>\<in\>\<cal-T\>>. Finally if
      <math|U\<in\>\<cal-T\><rsub|g,\<cal-T\>>> then
      <math|\<exists\>V\<in\>\<cal-T\>> such that
      <math|U=g<around*|(|V|)>=g<around*|(|h<around*|(|h<rsup|-1><around*|(|V|)>|)>|)>=<around*|(|g\<circ\>h|)><around*|(|h<rsup|-1><around*|(|V|)>|)>=f<around*|(|h<rsup|-1><around*|(|V|)>|)>\<in\>\<cal-T\><rsub|g,\<cal-T\>>>
      as <math|h<rsup|-1><around*|(|V|)>\<in\>\<cal-T\>> because <math|h> is
      a homeomorphism.
    </enumerate>
  </proof>

  <\theorem>
    <label|inverse induced topology><index|inverse induced topology>Let
    <math|X> be a set, <math|<around*|\<langle\>|Y,T|\<rangle\>>> a
    topological space and <math|f:X\<rightarrow\>Y> a function then
    <math|\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>=<around*|{|f<rsup|-1><around*|(|U|)>\|U\<in\>\<cal-T\>|}>>
    is a topology on <math|X> called the inverse induced topology.
    Furthermore <math|f> is a continuous function between <math|X> and
    <math|Y> if <math|X> is equipped with the inverse induced topology.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<emptyset\>=f<rsup|-1><around*|(|\<emptyset\>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>

      <item><math|X=f<rsup|-1><around*|(|Y|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>

      <item>Let <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> be a family of
      sets with <math|\<forall\>i\<in\>I> we have
      <math|V<rsub|i>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>> so that
      <math|\<exists\>U<rsub|i>\<in\>\<cal-T\>> with
      <math|V<rsub|i>=f<rsup|-1><around*|(|U<rsub|i>|)>> then
      <math|<big|cup><rsub|i\<in\>I>V<rsub|i>=<big|cup><rsub|i\<in\>I>f<rsup|-1><around*|(|U<rsub|i>|)>\<equallim\><rsub|<with|mode|text|<reference|image
      (preimage) of union , intersections>>>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>
      [as <math|<big|cup><rsub|i\<in\>I>U<rsub|i>\<in\>\<cal-T\>>].

      <item>If <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>
      then <math|\<exists\>U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> such that
      <math|f<rsup|-1><around*|(|U<rsub|1>|)>=V<rsub|1>>,
      <math|f<rsup|-1><around*|(|U<rsub|2>|)>=V<rsub|2>>. So
      <math|V<rsub|1><big|cap>V<rsub|2>=f<rsup|-1><around*|(|U<rsub|1>|)><big|cap>f<rsup|-1><around*|(|U<rsub|2>|)>\<equallim\><rsub|<with|mode|text|<reference|image
      (preimage) of union , intersections>>>f<rsup|-1><around*|(|U<rsub|1><big|cap>U<rsub|2>|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>
      [as <math|U<rsub|1><big|cap>U<rsub|2>\<in\>\<cal-T\>>]
    </enumerate>

    As by definition we have if <math|U\<in\>\<cal-T\>> that
    <math|f<rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|f,\<cal-T\>><rsup|-1>>
    so that <math|f> is continuous.
  </proof>

  <\theorem>
    <label|a isometry is a homeomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed vector spaces over <math|\<bbb-R\>>(<math|\<bbb-C\>>) and let
    <math|f:X\<rightarrow\>Y> be a linear isometry then <math|f> is a
    homeomorphism.
  </theorem>

  <\proof>
    As <math|f> is a isometry it is a bijection. To prove continuity take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> and <math|x\<in\>X> \ then
    if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<varepsilon\>>
    we have that <math|\<varepsilon\>\<gtr\><around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|f<around*|(|x-x<rprime|'>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>>
    so that by <reference|continuity of function in a normed space> <math|f>
    is continuous. As \ <math|f<rsup|-1>> is a isometry by <reference|inverse
    of isometry norm> and by <reference|inverse of linear isomorphism is a
    isomorphism> is also linear we can apply the above reasoning to prove
    that <math|f<rsup|-1>> is continuous.
  </proof>

  <\theorem>
    <label|existance of isometry,isomorphism,homeomorphism>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a finite n-dimensional normed space over
    <math|\<bbb-R\><around*|(|\<bbb-C\>|)>> then there exist a norm
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> on
    <math|\<bbb-R\><rsup|n><around*|(|\<bbb-C\><rsup|n>|)>> such that the
    function <math|\<varphi\>:X\<rightarrow\>\<bbb-R\><rsup|n><around*|(|\<bbb-C\><rsup|n>|)>>
    defined by <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>\<rightarrow\>\<varphi\><around*|(|x|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    (where <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I<around*|{|1,\<ldots\>,n|}>>>
    is a basis in <math|X>) is a isometry, isomorphism and by the previous
    theorem they also a homeomorphism.
  </theorem>

  <\proof>
    First we prove that <math|\<varphi\>> is a bijection

    <\enumerate>
      <item><dueto|injectivity>If <math|\<varphi\><around*|(|x|)>=\<varphi\><around*|(|x<rprime|'>|)>>
      where <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>,
      <math|x<rprime|'>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rprime|'><rsub|i>\<cdot\>e<rsub|i>>
      are the unique expansions in the basis
      <math|<around*|{|e<rsub|i>|}><rsub|i\<in\>I>> then
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|x<rprime|'><rsub|1>,\<ldots\>,x<rsub|n><rprime|'>|)>\<Rightarrow\>\<forall\>i\<in\>I\<vDash\>x<rsub|i>=x<rprime|'><rsub|i>>
      and thus <math|x=x<rprime|'>>.

      <item><dueto|surjectivity>If <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n><around*|(|\<bbb-C\><rsup|n>|)>>
      then <math|\<varphi\><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    </enumerate>

    Next to prove linearity if <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>,
    <math|y=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>>
    and <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>> then
    <math|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y=\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1\<ldots\>,n|}>>y<rsub|i>\<cdot\>e<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<Rightarrow\>\<varphi\><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=\<alpha\>\<cdot\>\<varphi\><around*|(|x|)>+\<beta\>\<cdot\>\<varphi\><around*|(|y|)>>.

    Define now the norm <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X>> on
    <math|\<bbb-R\><rsup|n><around*|(|\<bbb-C\><rsup|n>|)>> by
    <math|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>>>
    then <math|<around*|\<\|\|\>||\<\|\|\>>> is indeed a norm:

    <\enumerate>
      <item><math|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>>\<geqslant\>0>

      <item><math|<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\>x<rsub|1>,\<ldots\>,\<alpha\>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>\<cdot\>e<rsub|i>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|\<alpha\>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><math|<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<around*|(|x<rsub|1>+y<rsub|1>,\<ldots\>,x<rsub|n>+y<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|x<rsub|i>+y<rsub|i>|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>|\<\|\|\>>+<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>y<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>|\<\|\|\>><rsub|X>>
    </enumerate>

    \ If now <math|x=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>>
    then <math|<around*|\<\|\|\>|\<varphi\><around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>e<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>>
    proving that <math|\<varphi\>> is a isometry.
  </proof>

  <\theorem>
    <label|in a normed space the sum,product with scalar is ontinuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over <math|\<bbb-R\><around*|(|\<bbb-C\>|)>>,
    <math|U\<subseteq\>X> a open set, <math|V<rsub|f>,V<rsub|g>\<subseteq\>Y>
    open sets, <math|f:U\<rightarrow\>V<rsub|f>>,
    <math|g:U\<rightarrow\>V<rsub|g>> be continuous functions and
    <math|\<alpha\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>> then
    <math|f+g:U\<rightarrow\>V<rsub|f>+V<rsub|g>> and
    <math|\<alpha\>\<cdot\>f:U\<rightarrow\>V<rsub|f>> are continuous.\ 
  </theorem>

  <\proof>
    We use <reference|continuity of function in a normed space> to prove
    continuity at every point <math|x\<in\>U> and thus continuity. So take
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> and <math|x\<in\>X>

    <\enumerate>
      <item>By continuity of <math|f,g> there exists a
      <math|\<delta\><rsub|1>,\<delta\><rsub|2>\<in\>\<bbb-R\><rsub|+>> such
      that if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
      then <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>
      and if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|2>>
      then <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|2>>.
      Take now <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>>
      then if <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>,\<delta\><rsub|2>\<Rightarrow\><around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x|)>-<around*|(|f+g|)><around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>+g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>=<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>

      <item>Consider the following cases for
      <math|\<alpha\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>>

      <\enumerate>
        <item><dueto|<math|\<alpha\>=0>>then if
        <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>1> we
        have that <math|<around*|\<\|\|\>|0\<cdot\>f<around*|(|x|)>-0\<cdot\>f<around*|(|x<rprime|'>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0-0|\<\|\|\>><rsub|Y>=0\<less\>\<varepsilon\>>
        proving the continuity of <math|\<alpha\>\<cdot\>f>

        <item><dueto|<math|\<alpha\>\<neq\>0>>by continuity there exists a
        <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that if
        <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\>>
        then <math|<around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>>
        so that <math|<around*|\||\<alpha\>\<cdot\>f<around*|(|x|)>-\<alpha\>\<cdot\>f<around*|(|x<rprime|'>|)>|\|>=<around*|\||\<alpha\>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|)>|\|>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\><around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>=\<varepsilon\>>
      </enumerate>
    </enumerate>

    Proving that <math|f+g> and <math|\<alpha\>\<cdot\>f> are continuous.
  </proof>

  <\theorem>
    <label|product of continuous functions is continue>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed spaces over <math|\<bbb-R\><around*|(|\<bbb-C\>|)>> and
    <math|f:X\<rightarrow\>\<bbb-R\><around*|(|\<bbb-C\>|)>>,
    <math|g:X\<rightarrow\>\<bbb-R\><around*|(|\<bbb-C\>|)>> be continuous
    functions <math|f\<cdot\>g> is continuous.
  </theorem>

  <\proof>
    Let <math|x\<in\>X>and <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>. By
    continuity of <math|f,g> there exists a
    <math|\<delta\><rsub|1>\<in\>\<bbb-R\><rsub|+>> such that if
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|1>>
    then <math|<around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\>1\<Rightarrow\><around*|\||f<around*|(|x<rprime|'>|)>|\|>\<leqslant\><around*|\||f<around*|(|x<rprime|'>|)>-f<around*|(|x|)>+f<around*|(|x|)>|\|><rsub|Y>\<leqslant\><around*|\||f<around*|(|x<rprime|'>|)>-f<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>\<leqslant\>1+<around*|\||f<around*|(|x|)>|\|>>.
    Also choose a <math|\<delta\><rsub|2>> such that if
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>>\<less\>\<delta\><rsub|3>>
    then <math|<around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>\<less\><frac|\<varepsilon\>|2<around*|(|1+<around*|\||g<around*|(|x|)>|\|><rsub|>|)>>>.
    Now choose <math|\<delta\><rsub|3>\<in\>\<bbb-R\><rsub|+>> such that if
    <math|<around*|\<\|\|\>|x-x<rprime|'>|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|3>>
    then <math|<around*|\||g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\|>\<less\><frac|\<varepsilon\>|2<around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>>
    . Take then <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>,\<delta\><rsub|3>|)>>
    then if <math|<around*|\<\|\|\>|x<rprime|'>-x|\<\|\|\>><rsub|X>\<less\>\<delta\>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|>>|<cell|=>|<cell|<around*|\||f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>+f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\|><rsub|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||<around*|\<nobracket\>|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x|)>-f<around*|(|x<rprime|'>|)>\<cdot\>g<around*|(|x<rprime|'>|)>|\<nobracket\>>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||g<around*|(|x|)>|\|>\<cdot\><around*|\||f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\|>+<around*|\||f<around*|(|x<rprime|'>|)>|\|>\<cdot\><around*|\||g<around*|(|x|)>-g<around*|(|x<rprime|'>|)>|\|>>>|<row|<cell|>|<cell|\<less\>>|<cell|<around*|\||g<around*|(|x|)>|\|>\<cdot\><frac|\<varepsilon\>|2<around*|(|1+<around*|\||g<around*|(|x|)>|\|>|)>>+<around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>\<cdot\><frac|\<varepsilon\>|2<around*|(|1+<around*|\||f<around*|(|x|)>|\|>|)>>>>|<row|<cell|>|<cell|\<less\>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>>>>
    </eqnarray*>

    proving that <math|f\<cdot\>g> is continuous at <math|x>. As
    <math|x\<in\>X> was chosen arbitrary we have that <math|f\<cdot\>g> is
    continuous.
  </proof>

  We can use induction and the above theorem to prove the following

  <\theorem>
    <label|power function is continuous>The mapping
    <math|.<rsup|n>:\<bbb-R\>\<rightarrow\>\<bbb-R\>> defined by
    <math|x\<rightarrow\>x<rsup|n>> where <math|n\<in\>\<bbb-N\>> is
    continuous in the normed topology defined by <math|<around*|\|||\|>>
  </theorem>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\>\|x<rsup|n> is a continuous
    function|}>> then we have

    <\enumerate>
      <item>If <math|n=0> then <math|.<rsup|0><around*|(|x|)>=1> is
      continuous by <reference|constant functions are continuous> so that
      <math|0\<in\>S>

      <item>If <math|n\<in\>S> then <math|.<rsup|n+1>> is
      <math|.<rsup|n>\<cdot\>1<rsub|\<bbb-R\>>> as
      <math|<around*|(|.<rsup|n>\<cdot\>1<rsub|X>|)><around*|(|x|)>=.<rsup|n><around*|(|x|)>\<cdot\>1<rsub|X><around*|(|x|)>=x<rsup|n>\<cdot\>x=x<rsup|n+1>>,
      as <math|.<rsup|n>\<in\>S> we have that <math|.<rsup|n>> is continuous,
      from <reference|identity function is continuous> we have that
      <math|1<rsub|x>> is continuous so by <reference|product of continuous
      functions is continue> we have that <math|.<rsup|n+1>> is continuous
      and thus that <math|n+1\<in\>S>
    </enumerate>

    Using mathematical induction we have then that <math|S=\<bbb-N\>> proving
    the theorem.
  </proof>

  <section|Linear maps and continuity>

  In this chapter we assume that all the normed spaces are defined over the
  same field <math|\<bbb-K\>> (which is either <math|\<bbb-R\>> or
  <math|\<bbb-C\>>).

  <\theorem>
    <label|continuous linear maps in a normed space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>
    and <math|L:X\<rightarrow\>Y> a linear mapping
    (<math|L\<in\>Hom<around*|(|X,Y|)>> then the following are equivalent

    <\enumerate>
      <item><math|L> is continuous

      <item><math|L> is continuous at <math|0\<in\>X>

      <item><math|\<exists\>k\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\>X\<vdash\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k>

      <item><math|\<exists\>k\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\>X> we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>If <math|L> is continuous then by
      definition it is continuous at <math|0\<in\>X>

      <item><dueto|<math|2\<Rightarrow\>3>>Take
      <math|1\<in\>\<bbb-R\><rsub|+>> then using <reference|continuity of
      function in a normed space> there exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that if <math|x\<in\>X>
      and <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|0-x|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x-0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|0|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>1>.
      Now <math|\<forall\>x\<in\>X\<vdash\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      take then <math|0\<less\>\<delta\><rprime|'>\<less\>\<delta\>> (see
      <reference|density theorem for the reals>) then
      <math|<around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>x|\<\|\|\>><rsub|X>=<around*|\||\<delta\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=\<delta\><rprime|'>\<cdot\>1=\<delta\><rprime|'>\<less\>\<delta\>\<Rightarrow\>\<delta\><rprime|'>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<delta\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|\<delta\><rprime|'>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<less\>1\<Rightarrowlim\><rsub|\<delta\><rprime|'>\<gtr\>0><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\><frac|1|\<delta\><rprime|'>>>.
      So if we take <math|k=<frac|1|\<delta\><rprime|'>>> then
      <math|\<forall\>x\<in\>X> with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>k\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\>k>

      <item><dueto|<math|3\<Rightarrow\>4>>Let
      <math|k\<in\>\<bbb-R\><rsub|+>> be such that <math|\<forall\>x\<in\>X>
      with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k>.
      Take then <math|x\<in\>X> then we have the following possibilities

      <\enumerate>
        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>>then
        <math|x=0> so that <math|L<around*|(|x|)>=0\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0\<wedge\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0\<leqslant\>0=k\<cdot\>0=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|X>>

        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>0>>then
        we have that <math|<around*|\<\|\|\>|<tfrac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|\<\|\|\>><rsub|X>=<around*|\||<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
        so that <math|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|<rsub|1>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      </enumerate>

      <item><dueto|<math|4\<Rightarrow\>1>>Let
      <math|k\<in\>\<bbb-R\><rsub|+>> such that <math|\<forall\>x\<in\>X> we
      have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>.
      If now <math|x\<in\>X> and <math|\<varepsilon\>\<gtr\>0> take then
      <math|\<delta\>=<frac|\<varepsilon\>|k>> then if <math|y\<in\>X> with
      <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x-y|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x-y|\<\|\|\>><rsub|Y>\<less\>k\<cdot\><frac|\<varepsilon\>|k>=\<varepsilon\>>
      proving that <math|L> is continuous at <math|x>. As <math|x> is chosen
      arbitrary we have that <math|L> is continuous.
    </enumerate>
  </proof>

  <\corollary>
    <label|linear mappins between products of the real spaces are
    continuous>Let <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>><rsub|n>|\<rangle\>>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|m>,<around*|\<\|\|\>||\<\|\|\>><rsub|m>|\<rangle\>>>
    be equipped with the maximum norm then every linear function
    <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> is continuous
  </corollary>

  <\proof>
    Let <math|<around*|{|\<cal-E\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be the canonical basis of <math|\<bbb-R\><rsup|n>> (see
    <reference|canonical basis>) then <math|\<forall\>x\<in\>\<bbb-R\><rsup|n>>
    we have that <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<cdot\>\<cal-E\><rsub|i>>
    where <math|x<rsub|i>=\<pi\><rsub|i><around*|(|x|)>> so that
    <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|m>=<around*|\<\|\|\>|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<pi\><rsub|i><around*|(|x|)>\<cdot\>\<cal-E\><rsub|i>|\<\|\|\>><rsub|m>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>\<cdot\>\<cal-E\><rsub|i>|\<\|\|\>>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\<cdot\><around*|\<\|\|\>|\<cal-E\><rsub|i>|\<\|\|\>>\<leqslant\>k<rprime|'>\<cdot\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>>
    where <math|k=max<around*|(|<around*|{|<around*|\<\|\|\>|L<around*|(|\<cal-E\><rsub|i>|)>|\<\|\|\>><rsub|m>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
    As <math|max<around*|(|<around*|{|<around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=<around*|\<\|\|\>|x|\<\|\|\>><rsub|n>>
    we have then <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|m>=k<rprime|'>\<cdot\>n\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|n>>
    or if we take <math|k=k<rprime|'>\<cdot\>n\<in\>\<bbb-R\><rsub|+>> we
    have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|m>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|n>>
    proving continuity by the previous theorem.
  </proof>

  <\theorem>
    <label|norm of continuous linear mapping (inf)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and let <math|L:X\<rightarrow\>Y> be a continuous
    function then if we define <math|A<rsub|L,s>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>X\<vdash\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1
    we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k|}>>,
    <math|A<rsub|L,r>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|}>>
    we have that\ 

    <\enumerate>
      <item><math|A<rsub|L,s>=A<rsub|L,r>>

      <item><math|inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,r>|)>>
      exists (is finite) and \ <math|inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,r>|)>\<geqslant\>0>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|k\<in\>A<rsub|L,s>> then <math|\<forall\>x\<in\>X> we
      have the following cases to consider

      <\enumerate>
        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0>>then
        <math|x=0> and thus <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>k.0=k\<cdot\><around*|\<\|\|\>|0|\<\|\|\>><rsub|X>=k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>

        <item><dueto|<math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<neq\>0>>then
        <math|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|\<\|\|\>><rsub|X>=<around*|\||<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1>
        so that as <math|k\<in\>A<rsub|s>> we have that
        <math|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      </enumerate>

      So in all cases we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      proving that <math|x\<in\>A<rsub|L,r>>.

      <item>If <math|k\<in\>A<rsub|L,r>> then <math|\<forall\>x\<in\>X> with
      <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have that
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=k\<cdot\>1=k>
      so that <math|k\<in\>A<rsub|L,s>>
    </enumerate>

    Using (1) and (2) we have proved that <math|A<rsub|L,s>=A<rsub|L,r>>.

    As <math|L> is a continuous linear mapping we have by
    <reference|continuous linear maps in a normed space> the existence of a
    <math|k\<in\>A<rsub|L,r>> so that <math|\<emptyset\>\<neq\>A<rsub|L,r>=A<rsub|L,s>>.
    As <math|\<forall\>k\<in\>A<rsub|L,r>> we have that <math|0\<less\>k> we
    see that <math|A<rsub|L,r>,A<rsub|L,s>> is bounded below by <math|0>.
    Using then the fact that the reals are conditionally complete (see
    <reference|the reals are conditional complete>) and
    <reference|alternative definition for conditional completeness> we have
    that <math|inf<around*|(|A<rsub|L,r>|)>=inf<around*|(|A<rsub|L,s>|)>>
    exists and <math|inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,s>|)>\<geqslant\>0>
    (by the definition of a infinum).
  </proof>

  The above theorem means that the following definition makes sense

  <\definition>
    <label|the norm of a continuous linear mapping><index|norm of a
    continuous linear function><index|<math|<around*|\<\|\|\>|L|\<\|\|\>>>><dueto|norm
    of linear continuous function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces and let <math|L:X\<rightarrow\>Y> be a continuous
    function then <math|<around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,r>|)>>
    is called the operator norm.
  </definition>

  <\theorem>
    <label|linear continuous mappings and +,.>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over the real (complex) field <math|\<bbb-K\>> and let
    <math|L,L<rsub|1>,L<rsub|2>:X\<rightarrow\>Y> be linear continuous
    functions then we have\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|Y>>

      <item><math|L<rsub|1>+L<rsub|2>> is linear and continuous and
      <math|<around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>

      <item>If <math|L=C<rsub|0>> (<math|C<rsub|0>:X\<rightarrow\>Y where
      C<rsub|0><around*|(|x|)>=0>) then <math|<around*|\<\|\|\>|L|\<\|\|\>>=0>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> we have that
      <math|\<alpha\>\<cdot\>L> is continuous and
      <math|<around*|\<\|\|\>|\<alpha\>*\<cdot\>L|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>X> then we have to consider the following cases

      <\enumerate>
        <item><dueto|<math|x=0>>then <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|0|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\>0=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>

        <item><dueto|<math|x\<neq\>0>>we proceed now by contradiction, so
        assume that <math|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>\<less\><frac|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>
        then by <reference|property of inf and sup> there exists a
        <math|k\<in\>A<rsub|L,r>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|}>>
        such that <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\>k\<less\><frac|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<Rightarrow\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        contradicting <math|k\<in\>A<rsub|L,r>>. So we must have that
        <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      </enumerate>

      <item>Because the sum of continuous (linear) functions is continuous
      (linear) (see <reference|in a normed space the sum,product with scalar
      is ontinuous> and <reference|Hom(X,Y) is a vector space>) we have that
      <math|L<rsub|1>+L<rsub|2>> is linear and continuous. Using (1) we have
      then that <math|\<forall\>x\<in\>X> then
      <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      and <math|<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      so that <math|<around*|\<\|\|\>|<around*|(|L<rsub|1>+L<rsub|2>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>+L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=<around*|(|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      so that <math|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<in\>A<rsub|L<rsub|1>+L<rsub|2>,r>\<Rightarrow\><around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>>=inf<around*|(|A<rsub|L<rsub|1>+L<rsub|2>,r>|)>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>

      <item>If <math|L=C<rsub|0>> then <math|\<forall\>x\<in\>X> we have
      <math|L<around*|(|x|)>=0\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<leqslant\>0=0\<cdot\><rsub|<around*|\<\|\|\>|x|\<\|\|\>>>X>
      so that <math|0\<in\>A<rsub|C<rsub|0>,r>> and thus
      <math|0\<leqslant\><around*|\<\|\|\>|C<rsub|0>|\<\|\|\>>=inf<around*|(|A<rsub|C<rsub|0>,r>|)>\<leqslant\>0\<Rightarrow\><around*|\<\|\|\>|C<rsub|0>|\<\|\|\>>=0>

      <item>Using <reference|in a normed space the sum,product with scalar is
      ontinuous> and <reference|Hom(X,Y) is a vector space> we have that
      <math|\<alpha\>\<cdot\>L> is a continuous linear mapping. Because of
      (1) we have <math|\<forall\>x\<in\>X> that
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      so that <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|)>=<around*|(|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
      so that <math|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<in\>A<rsub|\<alpha\>\<cdot\>L,r>\<Rightarrow\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>.
      We consider now two cases for <math|\<alpha\>\<in\>\<bbb-K\>>

      <\enumerate>
        <item><dueto|<math|\<alpha\>=0>>then
        <math|\<alpha\>\<cdot\>L=0\<cdot\>L=C<rsub|0>> and thus
        <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=<around*|\<\|\|\>|C<rsub|0>|\<\|\|\>>=0=<around*|\||0|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
        so we have <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>

        <item><dueto|<math|\<alpha\>\<neq\>0>>then
        <math|<around*|\||\<alpha\>|\|>\<neq\>0> then
        <math|\<forall\>x\<in\>X> we have
        <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        so that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>=<frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>|<around*|\||\<alpha\>|\|>>\<leqslant\><frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|<around*|\||\<alpha\>|\|>>>
        so that <math|<frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>|<around*|\||\<alpha\>|\|>>\<in\>A<rsub|L,r>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><frac|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>|<around*|\||\<alpha\>|\|>>\<Rightarrow\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>>
        this together with <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|the alternative definition of the norm of a continuous linear
    function>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over the real (complex) field <math|\<bbb-K\>>, let
    <math|L:X\<rightarrow\>Y> be a continuous function and let <math|X> be
    non trivial (so there exists a <math|x\<in\>X> with <math|x\<neq\>0>)
    then we have if <math|A<rsub|L,t>=<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X
    with <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1|}>> and
    <math|A<rsub|L,u>=<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X
    with <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>1|}>> that
    <math|<around*|\<\|\|\>|L|\<\|\|\>>=sup<around*|(|A<rsub|L,t>|)>=sup<around*|(|A<rsub|L,u>|)>>
  </theorem>

  <\proof>
    If <math|k\<in\>A<rsub|L,t>> then <math|\<exists\>x\<in\>X> with
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1\<leqslant\>1> such that
    <math|k=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<Rightarrow\>k\<in\>A<rsub|L,u>>
    proving that\ 

    <\equation>
      <label|eq 11.13>A<rsub|L,t>\<subseteq\>A<rsub|L,u>
    </equation>

    As <math|\<exists\>x<rsub|0>\<in\>X> with
    <math|x<rsub|0>\<neq\>0\<Rightarrow\><around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x<rsub|>|\<\|\|\>><rsub|X>>\<cdot\>x<rsub|0>|\<\|\|\>><rsub|X>=1\<leqslant\>1>
    so that <math|<frac|1|<around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>>\<cdot\>x\<in\>A<rsub|L,t>,A<rsub|L,u>>
    and thus

    <\equation>
      <label|eq 11.14>\<emptyset\>\<neq\>A<rsub|L,t>\<wedge\>\<emptyset\>\<neq\>A<rsub|L,u>
    </equation>

    Now if <math|k\<in\>A<rsub|L,u>> then <math|\<forall\>x\<in\>X>with
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\>1> we have that
    <math|k=<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>> and as
    <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>
    we see that <math|<around*|\<\|\|\>|L|\<\|\|\>>> is a upper bound
    o<math|>f <math|A<rsub|L,u>> and by <reference|eq 11.13> also of
    <math|A<rsub|L,t>\<nosymbol\>>. Using <reference|the reals are
    conditional complete> we have that <math|sup<around*|(|A<rsub|L,u>|)>>
    and <math|sup<around*|(|A<rsub|L,t>|)>> exists and that

    <\equation>
      <label|eq 11.15>sup<around*|(|A<rsub|L,t>|)>\<leqslant\>sup<around*|(|A<rsub|L,u>|)>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>
    </equation>

    (using also <reference|eq 11.13> and <reference|inclusion and sup and
    inf>). Now <math|\<forall\>x\<in\>X> with
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1> we have
    \ <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<in\>A<rsub|L,t>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>sup<around*|(|A<rsub|L,t>|)>\<Rightarrow\>sup<around*|(|A<rsub|L,t>|)>\<in\>A<rsub|L,s>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|A<rsub|L,s>|)>\<leqslant\>sup<around*|(|A<rsub|L,t>|)>>
    which together with <reference|eq 11.15> \ gives that
    \ <math|<around*|\<\|\|\>|L|\<\|\|\>>=sup<around*|(|A<rsub|L,t>|)>=sup<around*|(|A<rsub|L,u>|)>>
  </proof>

  <\example>
    <label|projection map is continuous and linear>If
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,n\<in\>\<bbb-N\><rsub|0>>
    be a family of normed spaces, <math|<around*|\<langle\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is the product space with the maximum norm then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
    <math|\<pi\><rsub|i>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>X<rsub|i>>
    \ is a continuous linear mapping with
    <math|<around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>>\<less\>1>.
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|linearity>I <math|x,y\<in\><big|prod><rsub|i\<in\><around*|{|,\<ldots\>,n|}>>,\<alpha\>,\<beta\>\<in\>\<bbb-K\>>
      then <math|\<pi\><rsub|i><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=<around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)><rsub|i>=\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>=\<alpha\>\<cdot\>\<pi\><rsub|i><around*|(|x|)>+\<beta\>\<cdot\>\<pi\><rsub|i><around*|(|y|)>>
      proving that <math|\<pi\><rsub|i>> is linear.

      <item><dueto|continuity>If <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then <math|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<leqslant\><around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>1\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
      proving that <math|\<pi\><rsub|i>> is continuous with
      <math|<around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>>\<leqslant\>1> as
      <math|<around*|\<\|\|\>|\<pi\><rsub|i>|\<\|\|\>>=inf<around*|(|<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>X\<vDash\><around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|i>|}>|)>\<leqslant\>1>
    </enumerate>
  </proof>

  <\theorem>
    <label|norm of composition of linear mapping>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over the real (complex) field and
    <math|L<rsub|1>:X\<rightarrow\>Y>, <math|L<rsub|2>:Y\<rightarrow\>Z> be
    linear continuous functions then <math|L<rsub|2>\<circ\>L<rsub|1>> is
    linear and continuous and <math|<around*|\<\|\|\>|L<rsub|2>\<circ\>L<rsub|1>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>
  </theorem>

  <\proof>
    By <reference|composition of continuous functions is continuous> and
    <reference|composition of linear mappings> we have that
    <math|L<rsub|2>\<circ\>L<rsub|1>> is linear and continue. Now
    <math|\<forall\>x\<in\>X> we have that
    <math|<around*|\<\|\|\>|<around*|(|L<rsub|2>\<circ\>L<rsub|1>|)><around*|(|x|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<rsub|2><around*|(|L<rsub|1><around*|(|x|)>|)>|\<\|\|\>><rsub|Z>\<leqslant\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    meaning that <math|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<circ\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<in\>A<rsub|L<rsub|2>\<circ\>L<rsub|1>,,r>>
    and thus that <math|<around*|\<\|\|\>|L<rsub|2>\<circ\>L<rsub|1>|\<\|\|\>>=inf<around*|(|A<rsub|L<rsub|2>\<circ\>L<rsub|1>>|)>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>
  </proof>

  <\definition>
    <label|L(X,Y)><index|<math|L<around*|(|X,Y|)>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over the real (complex) field <math|\<bbb-K\>> then
    <math|L<around*|(|X,Y|)>=<around*|{|L\<in\>Hom<around*|(|X,Y|)>\|L is
    continuous|}>\<subseteq\>Hom<around*|(|X,Y|)>> is the set of all linear
    continuous functions between <math|X> and <math|Y>.
  </definition>

  <\theorem>
    <label|the set of linear continuous mappings is a vector space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces over the real (complex) field <math|\<bbb-K\>> then
    <math|<around*|\<langle\>|L<around*|(|X,Y|)>,+,\<cdot\>|\<rangle\>>>
    forms a subspace of <math|Hom<around*|(|X,Y|)>> (and is thus a vector
    space). Furthermore if we define <math|<around*|\<\|\|\>||\<\|\|\>>:L<around*|(|X,Y|)>\<rightarrow\>\<bbb-R\><rsub|+>>
    by <math|L\<rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>> then
    <math|<around*|\<langle\>|L<around*|(|X,Y|)>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    forms a normed vector space over <math|\<bbb-K\>>
  </theorem>

  <\proof>
    If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
    <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> then
    by<reference|linear continuous mappings and +,.> we have that
    <math|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>\<in\>L<around*|(|X,Y|)>>.
    Also using <reference|linear continuous mappings and +,.> we have that
    <math|<around*|\<\|\|\>||\<\|\|\>>> is a pseudo norm. To prove that it is
    a norm assume that <math|<around*|\<\|\|\>|L|\<\|\|\>>=0> then
    <math|\<forall\>x\<in\>X> we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=0\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<Rightarrow\>L<around*|(|x|)>=0>
    and thus <math|L=C<rsub|0>=0> (the zero function).
  </proof>

  As <math|<around*|\<\|\|\>|L|\<\|\|\>>=<around*|{|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\|x\<in\>X
  with <around*|\<\|\|\>|x|\<\|\|\>><rsub|X>=1|}>> we see that
  <math|<around*|\<\|\|\>||\<\|\|\>>> is dependent on the norm chosen for
  <math|Y> and <math|X>. We prove now that from the point of the generated
  topologies there is no difference.

  <\theorem>
    <label|\|\|L\|\| depends only on the topology>Let <math|X,Y> be vector
    spaces over the field <math|\<bbb-K\>> and let
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>
    be two equivalent norms on <math|X> and let
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> be two equivalent
    norms on <math|Y>. Then if <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> is
    a norm on <math|L<around*|(|X,Y|)>> based on
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>>
    and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> is a norm based on
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|2>>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>> then
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>
    are equivalent norms. So the topology of <math|L<around*|(|X,Y|)>> only
    depends on the topologies of <math|X,Y>
  </theorem>

  <\proof>
    First given <math|L\<in\>L<around*|(|X,Y|)>> then if
    <math|A<rsub|1,L>=<around*|{|k\|\<forall\>x\<in\>X we have
    <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>|}>>
    <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>=inf<around*|(|A<rsub|1,L>|)>>,
    if <math|A<rsub|2,L>=<around*|{|k\|\<forall\>x\<in\>X we have
    <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>|}>>
    then <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|2>=inf<around*|(|A<rsub|2,L>|)>>.
    As <math|<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|X<rsub|1>>>
    are equivalent and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|1>>,<around*|\<\|\|\>||\<\|\|\>><rsub|Y<rsub|2>>>
    are equivalent there exists (see <reference|equivalent norms>)
    <math|\<alpha\><rsub|X>\<gtr\>0,\<alpha\><rsub|Y>\<gtr\>0,\<beta\><rsub|X>\<gtr\>0,\<beta\><rsub|Y>\<gtr\>0>
    such that <math|\<forall\>x\<in\>X,y\<in\>Y> we have
    <math|\<alpha\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\>\<beta\><rsub|X>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>>
    and <math|\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>\<beta\><rsub|Y>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|Y<rsub|2>>>.
    Then we have :

    <\enumerate>
      <item>If <math|k\<in\>A<rsub|1,L>> then <math|\<forall\>x\<in\>X> we
      have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<Rightarrow\>\<alpha\><rsub|Y>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<leqslant\><around*|(|k\<cdot\>\<beta\><rsub|X>|)>*\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\><frac|k\<cdot\>\<beta\><rsub|X>|\<alpha\><rsub|Y>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<Rightarrow\><frac|k\<cdot\>\<beta\><rsub|X>|\<alpha\><rsub|Y>>\<in\>A<rsub|2,L>\<Rightarrow\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k\<cdot\><frac|\<beta\><rsub|X>|\<alpha\><rsub|Y>>\<Rightarrow\><frac|a<rsub|Y>|\<beta\><rsub|X>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k>.
      Assume now that <math|inf<around*|(|A<rsub|1,L>|)>\<less\><frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<Rightarrow\>\<exists\>k\<in\>A<rsub|1,L>>
      with <math|inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k\<less\><frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k>
      a contradiction so that <math|<frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|X<rsub|2>>=<frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>inf<around*|(|A<rsub|1,L>|)>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>>

      <item>If <math|k\<in\>A<rsub|2,L>> then <math|\<forall\>x\<in\>X> we
      have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<Rightarrow\><frac|1|\<beta\><rsub|Y>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>k\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|2>>\<leqslant\><around*|(|<frac|1|\<alpha\><rsub|X>>\<cdot\>k|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\><frac|\<beta\><rsub|Y>\<cdot\>k|\<alpha\><rsub|X>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X<rsub|1>>\<Rightarrow\><frac|k\<cdot\>\<beta\><rsub|Y>|\<alpha\><rsub|X>>\<in\>A<rsub|1,L>\<Rightarrow\>inf<around*|(|A<rsub|1>,L|)>\<leqslant\>k\<cdot\><frac|\<beta\><rsub|Y>|\<alpha\><rsub|X>>\<Rightarrow\><frac|\<alpha\><rsub|X>|\<beta\><rsub|Y>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k>.
      Assume now that <math|inf<around*|(|A<rsub|2,L>|)>\<less\><frac|\<alpha\><rsub|X>|\<beta\><rsub|Y>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<Rightarrow\>\<exists\>k\<in\>A<rsub|2,L>>
      such that <math|inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k\<less\><frac|\<alpha\><rsub|X>|\<beta\><rsub|Y>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k>
      a contradiction so that <math|<frac|\<alpha\><rsub|X>|\<beta\><rsub|Y>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>inf<around*|(|A<rsub|2,L>|)>\<Rightarrow\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\><frac|\<beta\><rsub|Y>|\<alpha\><rsub|X>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>><rsub|1>\<leqslant\><frac|\<beta\><rsub|Y>|\<alpha\><rsub|X>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>>
    </enumerate>

    Using (1) and (2) we have <math|<frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<leqslant\><frac|\<beta\><rsub|Y>|\<alpha\><rsub|X>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>>
    which as <math|0\<less\><frac|\<alpha\><rsub|Y>|\<beta\><rsub|X>>,<frac|\<beta\><rsub|Y>|\<alpha\><rsub|X>>>
    and <math|L> is chosen arbitrary proves that
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are equivalent.
  </proof>

  <\theorem>
    <label|linear open mappings>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed vector spaces on <math|\<bbb-K\>> then a linear function
    <math|L:X\<rightarrow\>Y> is open if and only if there exists
    <math|\<delta\>\<gtr\>0> such that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>This trivial using <reference|open
      functions in metric spaces>

      <item><dueto|<math|\<Leftarrow\>>>Using <reference|open functions in
      metric spaces> we only have to prove that <math|\<forall\>x\<in\>X> and
      <math|\<delta\>\<gtr\>0> there exists a
      <math|\<delta\><rprime|'>\<gtr\>0> such that
      <math|L<around*|(|x|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|L<around*|(|x|)>,\<delta\><rprime|'>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x,\<delta\>|)>|)>>.
      Now as we now by the hypothesis that there exists a
      <math|\<delta\><rprime|''>\<gtr\>0> such that
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\><rprime|''>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>
      we have:

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|L<around*|(|x|)>,<frac|\<delta\><rprime|''>|\<delta\>>|)>>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|y-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<delta\><rprime|''>|\<delta\>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|\<delta\>\<cdot\><around*|(|y-L<around*|(|x|)>|)>|\<\|\|\>><rsub|Y>\<less\>\<delta\><rprime|''>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<delta\>\<cdot\><around*|(|y-L<around*|(|x|)>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\><rprime|''>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<delta\>\<cdot\><around*|(|y-L<around*|(|x|)>|)>\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|\<exists\>x<rsub|0>\<in\>X
        with <around*|\<\|\|\>|x<rsub|0>|\<\|\|\>><rsub|X>\<less\>1 such that
        L<around*|(|x<rsub|0>|)>=\<delta\>\<cdot\><around*|(|y-L<around*|(|x|)>|)>>>|<row|<cell|
        >|<cell|\<Rightarrow\>>|<cell|y=<frac|L<around*|(|x<rsub|0>|)>|\<delta\>>+L<around*|(|x|)>\<nocomma\>
        take x<rsub|1>=<frac|x<rsub|0>|\<delta\>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>\<less\>\<delta\>\<wedge\>y=L<around*|(|x<rsub|1>|)>+L<around*|(|x|)>=L<around*|(|x<rsub|1>+x|)>
        take now x<rsub|2>=x<rsub|1>+x>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|\<\|\|\>|x<rsub|2>-x|\<\|\|\>>\<less\>\<delta\>
        and y=L<around*|(|x<rsub|2>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|x,\<delta\>|)>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <section|Multilinear \ mappings and continuity>

  In this chapter we assume that all the normed spaces are defined over the
  same field <math|\<bbb-K\>> (which is either <math|\<bbb-R\>> or
  <math|\<bbb-C\>>).

  <\theorem>
    <label|continuity and multilinearity>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over the field <math|\<bbb-K\>> and
    <math|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    a multi-linear function then we have the following equivalences (using
    the product topology on <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>)
    and the norm topology on <math|Y>.

    <\enumerate>
      <item><math|L> is continuous

      <item><math|L> is continuous at <math|0\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>

      <item><math|\<exists\>k\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1> then
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k>

      <item><math|\<exists\>k\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
    </enumerate>

    <math|>
  </theorem>

  <\proof>
    \ First note that by <reference|norm of finite product of normed spaces>
    then product topology is generated by the norm
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|\<\|\|\>|\<pi\><rsub|i><around*|(|x|)>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>=max<around*|(|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)><rsub|>>

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>this is trivial

      <item><dueto|<math|2\<Rightarrow\>3>>using <reference|continuity of
      function in a normed space> given <math|\<varepsilon\>=1> the exists a
      <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,nn|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|x-0|\<\|\|\>>\<less\>1>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|0|)>|\<\|\|\>><rsub|Y>>\<less\>1.
      As <math|0\<less\>\<delta\>> there exists a
      <math|0\<less\>\<delta\><rprime|'>\<less\>\<delta\>> take then
      <math|k=<frac|1|\<delta\><rprime|'>>>. Then
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>=1>
      then <math|<around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>x|\<\|\|\>>=<around*|\||\<delta\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=\<delta\><rprime|'>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\>\<delta\>\<cdot\>1=\<delta\>\<Rightarrow\>\<delta\><rprime|'>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<delta\><rprime|'>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<delta\><rprime|'>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|\<delta\><rprime|'>\<cdot\>x|)>|\<\|\|\>><rsub|Y>\<less\>1\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\><frac|1|\<delta\><rprime|'>>=k>.
      So <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x|\<\|\|\>>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k>

      <item><dueto|<math|3\<Rightarrow\>4>>Let
      <math|k\<in\>\<bbb-R\><rsub|+>> such that
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x|\<\|\|\>>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k>
      then <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|I>>
      we have to consider the following cases

      <\enumerate>
        <item><dueto|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\>x<rsub|i>=0>>then
        by <reference|condition for a multilinear mapping to be zero> we have
        <math|L<around*|(|x|)>=0\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>

        <item><dueto|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>x<rsub|i>\<neq\>1>>define
        then <math|y=<around*|(|y<rsub|1>,\<ldots\>,y<rsub|n>|)>> by
        <math|y<rsub|i>=<frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>
        then <math|<around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|i>=1> and thus
        <math|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<with|mode|text|<reference|properties
        of product in a ring>>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>|)>\<cdot\><around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|<frac|1|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>>\<cdot\>x<rsub|1>,\<ldots\>,<frac|1|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|n>>\<cdot\>x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      </enumerate>

      <item><dueto|<math|4\<Rightarrow\>1>>Let
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      and <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> take then
      <math|0\<less\>\<delta\>\<less\>min<around*|(|1,<frac|\<varepsilon\>|k>|)>>
      (<math|k> from the condition in (4)) then if
      <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>> then we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|<around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|<around*|(|x-y|)><rsub|i>|\<\|\|\>><rsub|i>\<less\>\<delta\>>
      so that <math|<around*|\<\|\|\>|L<around*|(|x|)>-L<around*|(|y|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x-y|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>><rsub|i>\<less\>k\<cdot\>\<delta\>\<leqslant\>\<varepsilon\>>
      [as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|<around*|\<\|\|\>|x<rsub|i>-y<rsub|i>|\<\|\|\>>\<less\>\<delta\>\<less\>1>
      and <reference|order and generalized product>] proving continuity.
    </enumerate>
  </proof>

  <\theorem>
    <label|introduction of the multilinear norm>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over the field <math|\<bbb-K\>> and
    <math|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    a multi-linear function then if we define

    <\equation*>
      M<rsub|L,s>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<vdash\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have <around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1 then we have
      <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k|}>
    </equation*>

    <\equation*>
      M<rsub|L,r>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
      we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|}>
    </equation*>

    then <math|M<rsub|L,s>=M<rsub|L,r>> and
    <math|inf<around*|(|M<rsub|L,s>|)>=inf<around*|(|M<rsub|L,r>|)>> exists
    and is finite (and obviously <math|\<geqslant\>0>)\ 
  </theorem>

  <\proof>
    First prove that <math|M<rsub|L,s>=M<rsub|L,r>>

    <\enumerate>
      <item>If <math|k\<in\>M<rsub|L,s>> and
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have two cases :

      <\enumerate>
        <item><dueto|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=0>>then
        <math|x<rsub|i>=0> and thus using \ <reference|condition for a
        multilinear mapping to be zero> we have that
        <math|L<around*|(|x|)>=0\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0=k\<cdot\>0\<equallim\><rsub|<with|mode|text|<reference|properties
        of product in a ring>>>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\>k\<in\>M<rsub|L,r>>

        <item><dueto|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<neq\>0>>then
        if we define <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        by <math|y<rsub|i>=<frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>
        then <math|<around*|\<\|\|\>|y<rsub|i>|\<\|\|\>><rsub|i>=1> and thus
        <math|<frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<equallim\><rsub|<with|mode|text|<reference|properties
        of product in a ring>>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>|)>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><frac|1|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>|)>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\>k\<in\>M<rsub|L,r>>
      </enumerate>

      <item>If <math|k\<in\>M<rsub|L,r>> and
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1
      \<forall\>i\<in\>I> then <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=k\<cdot\>1=k\<Rightarrow\>k\<in\>M<rsub|L,s>>
    </enumerate>

    Next by <reference|continuity and multilinearity> there exists a
    <math|k\<in\>\<bbb-R\><rsub|+>> such that
    <math|\<forall\>x\<in\>\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
    and thus <math|k\<in\>M<rsub|L,s>\<Rightarrow\>M<rsub|L,s>\<neq\>\<emptyset\>>.
    Using then the fact that the reals are conditionally complete (see
    <reference|the reals are conditional complete>) and
    <reference|alternative definition for conditional completeness> we have
    that <math|inf<around*|(|M<rsub|L,r>|)>=inf<around*|(|M<rsub|L,s>|)>>
    exists and <math|inf<around*|(|A<rsub|L,s>|)>=inf<around*|(|A<rsub|L,s>|)>\<geqslant\>0>
    (by the definition of a infinum).
  </proof>

  <\definition>
    <label|definition of the operator norm of a multilinear mapping>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over the field <math|\<bbb-K\>> and
    <math|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    a multi-linear function then we define
    <math|<around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|M<rsub|L,r>|)>=inf<around*|(|M<rsub|L,s>|)>>
    to be the operator norm.
  </definition>

  <\theorem>
    <label|norm of a multilinear mapping>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over the field <math|\<bbb-K\>> and
    <math|L,L<rsub|1>,L<rsub|2>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    a multi-linear function then we have

    <\enumerate>
      <item><math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>

      <item>If <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>A\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      then <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\>A>

      <item>If <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      with <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1> we have
      <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>A>
      then <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\>A>

      <item><math|L<rsub|1>+L<rsub|2>> is a continuous multilinear mapping
      and <math|<around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>

      <item>If <math|L=C<rsub|0>> (the constant <math|0> function) then
      <math|<around*|\<\|\|\>|L|\<\|\|\>>=0>

      <item>If <math|<around*|\<\|\|\>|L|\<\|\|\>>=0> then
      <math|L=C<rsub|0><rsub|>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-K\>> we have that
      <math|\<alpha\>\<cdot\>L> is a continuous multilinear mapping and
      <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have the following possibilities\ 

      <\enumerate>
        <item><dueto|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\>x<rsub|i>=0>>then
        by <reference|condition for a multilinear mapping to be zero> we have
        <math|L<around*|(|x|)>=0\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>

        <item><dueto|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>x<rsub|i>\<neq\>0>>then
        <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<gtr\>0>,
        assume now that <math|\<exists\>x> so that
        <math|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>\<less\><frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>>
        as <math|<around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|M<rsub|L,r>|)>>
        there exists a <math|k\<in\>M<rsub|L,r>> such that
        <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\>k\<less\><frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|1|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>\<cdot\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=k>
        giving the contradiction <math|k\<less\>k>. We conclude thus that
        <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>>
        with <math|x<rsub|i>\<neq\>0 \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      </enumerate>

      <item>This follows from the fact that
      <math|<around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|M<rsub|L,r>|)>=inf<around*|(|<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
      we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|}>|)>>

      <item>This followed from the fact <math|<around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|M<rsub|L,s>|)>=inf<around*|(|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<vdash\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have <around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1 then we have
      <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k|)>>

      <item>Using <reference|Hom(X1,..,Xn,Y) is a vector space> we have that
      <math|L<rsub|1>+L<rsub|2>> is multilinear and using <reference|in a
      normed space the sum,product with scalar is ontinuous> we have that
      <math|L<rsub|1>+L<rsub|2>> is continuous. If now
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x|)>+L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<rsub|2><around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=<around*|(|<around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>\<in\>M<rsub|L<rsub|1>+L<rsub|2>,r>\<Rightarrow\><around*|\<\|\|\>|L<rsub|1>+L<rsub|2>|\<\|\|\>>=inf<around*|(|M<rsub|L<rsub|1>+L<rsub|2>,r>|)>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|2>|\<\|\|\>>>

      <item>If <math|L=C<rsub|0>> then <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|C<rsub|0><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|0|\<\|\|\>><rsub|Y>=0\<leqslant\>0\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      proving that <math|0\<in\>M<rsub|L,r>\<Rightarrow\>0\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>=inf<around*|(|M<rsub|L,r>|)>\<leqslant\>0\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>=0>

      <item>If <math|<around*|\<\|\|\>|L|\<\|\|\>>=0> then if
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      we have <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=0\<Rightarrow\>L<around*|(|x|)>=0\<Rightarrow\>L=C<rsub|0>>

      <item>Using <reference|Hom(X1,..,Xn,Y) is a vector space> we have that
      <math|\<alpha\>\<cdot\>L> is multilinear and using <reference|in a
      normed space the sum,product with scalar is ontinuous> we have that
      <math|\<alpha\>\<cdot\>L> is continuous. If
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<in\>M<rsub|\<alpha\>\<cdot\>L,r>\<Rightarrow\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=inf<around*|(|M<rsub|\<alpha\>\<cdot\>L,r>|)>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
      so

      <\equation>
        <label|eq 11.16><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>
      </equation>

      Assume now that <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
      then consider the cases

      <\enumerate>
        <item><dueto|<math|\<alpha\>=0>>then
        <math|\<alpha\>\<cdot\>L=C<rsub|0>> and thus
        <math|0=0\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<gtr\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=<around*|\<\|\|\>|C<rsub|0>|\<\|\|\>>\<equallim\><rsub|<around*|(|3|)>>0\<Rightarrow\>0\<gtr\>0>
        a contradiction.

        <item><dueto|<math|\<alpha\>\<neq\>0>>then
        <math|<around*|\||\<alpha\>|\|>\<neq\>0> so that
        <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|><around*|\<\|\|\>|L|\<\|\|\>>>
        as <math|<around*|\<\|\|\>|\<alpha\>L|\<\|\|\>>=inf<around*|(|A<rsub|\<alpha\>\<cdot\>L,r>|)>>
        there exist a <math|k\<in\>A<rsub|\<alpha\>\<cdot\>L,r>> such that
        <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>\<leqslant\>k\<less\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
        so if <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        then <math|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<alpha\>\<cdot\>L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><frac|k|<around*|\||\<alpha\>|\|>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\><frac|k|<around*|\||\<alpha\>|\|>>\<in\>M<rsub|L,r>\<Rightarrow\><around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><frac|k|<around*|\||\<alpha\>|\|>>\<less\><frac|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>|<around*|\||\<alpha\>|\|>>=<around*|\<\|\|\>|L|\<\|\|\>>>
        giving the contradiction <math|<around*|\<\|\|\>|L|\<\|\|\>>\<less\><around*|\<\|\|\>|L|\<\|\|\>>>.
      </enumerate>

      as the assumption turns up a contradiction in all cases we must have
      <math|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>>
      which together with <reference|eq 11.16> means that
      <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>L|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>
    </enumerate>
  </proof>

  From the above theorem we have then trivially the following theorem

  <\theorem>
    <label|vector space of multilinear continuous
    mappings><index|<math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space over the real (complex) field <math|\<bbb-K\>> then
    if <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=<around*|{|L\<in\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\|L
    is continuous|}>\<subseteq\>Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    [The set of multilinear mappings between
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>> and
    <math|Y>] then <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> is a
    subspace of <math|Hom<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> and
    <math|<around*|\<langle\>|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    (<math|<around*|\<\|\|\>||\<\|\|\>>> the operator norm) forms a normed
    vector space.
  </theorem>

  <\theorem>
    <label|composition of a continuous linear mapping and a continuous
    multilinear mapping is a continuous linear mapping>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    normed vector spaces over the real (complex) field <math|\<bbb-K\>> then
    we have if <math|L\<in\>L<around*|(|Y,Z|)>> and
    <math|K\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> then
    <math|L\<circ\>K\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Z|)>>
    with <math|<around*|\<\|\|\>|L\<circ\>K|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
  </theorem>

  <\proof>
    First multilinearity follows from <reference|composition of linear and
    multilinear mapping over the same field>, continuity follows from the
    fact that the composition of continuous functions is continuous. Finally
    if <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    then <math|<around*|\<\|\|\>|<around*|(|L\<circ\>K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Z>=<around*|\<\|\|\>|L<around*|(|K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>|\<\|\|\>><rsub|Z>\<leqslant\><rsub|L
    is linear><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><around*|\<\|\|\>|K<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><rsub|K
    is multilinear><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrowlim\><rsub|<text|<reference|norm
    of a multilinear mapping>>><around*|\<\|\|\>|L\<circ\>K|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Z|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
  </proof>

  We prove now that the operator norm depends only on the topology of
  <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>>
  and <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
  in the following theorem.

  <\theorem>
    <label|equivalence of operator norm (multilinear)>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|1,i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|2,i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|1,Y>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|2,Y>|\<rangle\>>>
    be normed vector spaces over the real (complex) field <math|\<bbb-K\>>,
    <math|>with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1,i>> is equivalent with
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2,i>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1,Y>> are equivalent then if
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> is the operator norm based on
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|1,i>|\<rangle\>>|}>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|1>|\<rangle\>>>
    and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> is the operator norm
    based on <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>|<rsub|>|\<\|\|\>><rsub|2,i>|\<rangle\>>|}>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|2>|\<rangle\>>>
    then <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are equivalent.
  </theorem>

  <\proof>
    Given <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> let
    <math|A<rsub|1,L>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
    we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|1>>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|1,i>|}>>
    and <math|A<rsub|2,L>=<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>
    we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y<rsub|2>>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|2,i>|}>>
    then <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>=inf<around*|(|A<rsub|1>,L|)>>
    and <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|2>=inf<around*|(|A<rsub|2,L>|)>>.
    By the hypothesis and the definition of equivalence of norms (see
    <reference|equivalence of norms>) there exists
    <math|<around*|{|<around*|(|\<alpha\><rsub|i>,\<beta\><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    and <math|\<alpha\>,\<beta\>\<gtr\>0> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<alpha\><rsub|i>,\<beta\><rsub|i>\<gtr\>0> and
    <math|\<forall\>x\<in\>X<rsub|i>> that
    <math|\<alpha\><rsub|i>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2,i>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1,i>\<leqslant\>\<beta\><rsub|i>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1,i>>.
    Also <math|\<forall\>y\<in\>Y> we have
    <math|\<alpha\>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|2,Y>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>><rsub|1,Y>\<leqslant\>\<beta\>\<cdot\><around*|\<\|\|\>|y|\<\|\|\>><rsub|2,Y>>.
    Then we have

    <\enumerate>
      <item><math|\<forall\>k\<in\>A<rsub|1,L>> we have
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|1,Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|1,i>\<Rightarrowlim\><rsub|\<beta\><rsub|i>\<gtr\>0,<around*|\<\|\|\>||\<\|\|\>><rsub|1,i\<geqslant\>0>>\<alpha\>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|2,Y>\<leqslant\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|1>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|1,i>\<leqslant\><around*|(|k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x|\<\|\|\>><rsub|2,i>\<Rightarrowlim\><rsub|\<alpha\>\<gtr\>0><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|2,Y>\<leqslant\><around*|(|<frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>|\<alpha\>>\<cdot\>k|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|2,i>>
      proving that <math|<around*|(|<frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>|\<alpha\>>\<cdot\>k|)>\<in\>A<rsub|2,L>>
      so that <math|inf<around*|(|A<rsub|2,L>|)>\<leqslant\><around*|(|<frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>|\<alpha\>>\<cdot\>k|)>\<Rightarrow\><frac|\<alpha\>|\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k>.
      Assume that <math|inf<around*|(|A<rsub|1,L>|)>\<less\><frac|\<alpha\>|\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>>
      then <math|\<exists\>k\<in\>A<rsub|1,L>> such that
      <math|inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k\<less\><frac|\<alpha\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k>
      a contradictions so that <math|<frac|\<alpha\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>=<frac|\<alpha\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\>inf<around*|(|A<rsub|2,L>|)>\<leqslant\>inf<around*|(|A<rsub|1,L>|)>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>>

      <item><math|\<forall\>k\<in\>A<rsub|2,L>> we have
      <math|\<forall\>x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|2,Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|2,i>\<Rightarrow\><frac|1|\<beta\>>\<cdot\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|1,Y>\<leqslant\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|2,Y>\<leqslant\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|2,y>\<leqslant\><frac|k|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|1,i>\<Rightarrow\><around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|1,Y>\<leqslant\><around*|(|<frac|\<beta\>|\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>|)>\<cdot\>k\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|1,i>>
      proving that <math|k\<cdot\><frac|\<beta\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>\<in\>A<rsub|1,L>>
      so that <math|inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k\<cdot\><frac|\<beta\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>\<Rightarrow\><frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>|\<beta\>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k>.
      Assume that <math|inf<around*|(|A<rsub|2,L>|)>\<less\><frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>|\<beta\>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<Rightarrow\>\<exists\>k\<in\>A<rsub|2,L>>
      such that <math|inf<around*|(|A<rsub|2,L>|)>\<leqslant\>k\<less\><frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>|\<beta\>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>k>
      a contradiction so that <math|<frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>|\<beta\>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|1>=<frac|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>|\<beta\>>\<cdot\>inf<around*|(|A<rsub|1,L>|)>\<leqslant\>inf<around*|(|A<rsub|2,L>|)>=<around*|\<\|\|\>|L|\<\|\|\>><rsub|2>>
    </enumerate>

    From (1),(2) and the fact that <math|<frac|\<alpha\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<gtr\>0,><math|<frac|\<beta\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>\<gtr\>0>
    we have <math|<frac|\<alpha\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>><rsub|1>\<leqslant\><frac|\<beta\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>>\<cdot\><around*|\<\|\|\>|L|\<\|\|\>><rsub|2>>
    proving the equivalency of <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>
    and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>.
  </proof>

  <\notation>
    <label|L(X^n;Y)><index|<math|L<around*|(|X<rsup|n>;Y|)>>>If
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,n\<in\>\<bbb-N\><rsub|0>>
    be family of normed spaces, where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>=<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    then <math|<around*|\<langle\>|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is noted as <math|<around*|\<langle\>|L<around*|(|X<rsup|n>;Y|)>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    where <math|L\<in\>L<around*|(|X<rsup|n>;Y|)>\<Rightarrow\>L:X<rsup|n>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X\<rightarrow\>Y>
    is multilinear and continuous and has norm
    <math|<around*|\<\|\|\>|L|\<\|\|\>>>. Note that
    <math|L<around*|(|X<rsup|1>;Y|)>=L<around*|(|X,Y|)>> by definition.
  </notation>

  <\theorem>
    <label|composition of continuous linear mapping is continuous and
    multilinear>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    and <math|<around*|\<langle\>|Z,<around*|\<\|\|\>|Z|\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces over the real (complex) field <math|\<bbb-K\>> then the
    composition function <math|\<circ\>:L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>\<rightarrow\>L<around*|(|X,Z|)>>
    defined by <math|\<circ\><around*|(|L<rsub|2>,L<rsub|1>|)>=L<rsub|2>\<circ\>L<rsub|1>>
    is multilinear and continuous (using the canonical norms) with
    <math|<around*|\<\|\|\>|\<circ\>|\<\|\|\>>=1>. So
    <math|\<circ\>\<in\>L<around*|(|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>;L<around*|(|X,Z|)>|)>>
  </theorem>

  <\proof>
    First note that the composition of continuous linear mappings is again
    linear and continuous so that if <math|<around*|(|L<rsub|2>,L<rsub|1>|)>\<in\>L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>>
    then <math|\<circ\><around*|(|L<rsub|2>,L<rsub|1>|)>=L<rsub|2>\<circ\>L<rsub|1>\<in\>L<around*|(|X,Z|)>>
    proving that <math|\<circ\>> is indeed a mapping from
    <math|L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>> to
    <math|L<around*|(|X,Z|)>>.\ 

    To prove multilinearity note:

    <\enumerate>
      <item>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> ,
      <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|Y,Z|)>> and
      <math|L\<in\>L<around*|(|X,Y|)>> then <math|\<forall\>x\<in\>X> we have
      <math|\<circ\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>,L|)><around*|(|x|)>=<around*|(|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>\<circ\>L|)><around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|L<around*|(|x|)>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|L<around*|(|x|)>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|L<around*|(|x|)>|)>=\<alpha\>\<cdot\>\<circ\><around*|(|L<rsub|1>,L|)><around*|(|x|)>+\<beta\>\<cdot\>\<circ\><around*|(|L<rsub|2>,L|)><around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>\<circ\><around*|(|L<rsub|1>,L|)>+\<beta\>\<cdot\>\<circ\><around*|(|L<rsub|2>,L|)>|)><around*|(|x|)>>
      so that <math|\<circ\><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<circ\><around*|(|L<rsub|1>,L|)>+\<beta\>\<cdot\>\<circ\><around*|(|L<rsub|2>,L|)>>

      <item>Let <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>,L\<in\>L<around*|(|Y,Z|)>>
      and <math|L<rsub|1>,L<rsub|2>\<in\>L<around*|(|X,Y|)>> then
      <math|\<forall\>x\<in\>X> we have <math|\<circ\><around*|(|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>=L<around*|(|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x|)>|)>=L<around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x|)>|)>=\<alpha\>\<cdot\>L<around*|(|L<rsub|1><around*|(|x|)>|)>+\<beta\>\<cdot\>L<around*|(|L<rsub|2><around*|(|x|)>|)>=\<alpha\>\<cdot\>\<circ\><around*|(|L,L<rsub|1>|)><around*|(|x|)>+\<beta\>\<cdot\>\<circ\><around*|(|L,L<rsub|2>|)><around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>\<circ\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<circ\><around*|(|L,L<rsub|2>|)>|)><around*|(|x|)>>
      so that <math|\<circ\><around*|(|L,\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<circ\><around*|(|L,L<rsub|1>|)>+\<beta\>\<cdot\>\<circ\><around*|(|L,L<rsub|2>|)>>
    </enumerate>

    Finally to prove continuity note <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|3>>
    as the operator norm of <math|L<around*|(|Y,Z|)>,L<around*|(|X,Y|)>,L<around*|(|X,Z|)>>
    then <math|\<forall\><around*|(|L<rsub|1>,L<rsub|2>|)>\<in\>L<around*|(|Y,Z|)>\<times\>L<around*|(|X,Y|)>>
    then using <reference|norm of composition of linear mapping> we have that
    <math|<around*|\<\|\|\>|L<rsub|1>\<circ\>L<rsub|2>|\<\|\|\>><rsub|3>\<leqslant\><around*|\<\|\|\>|L<rsub|1>|\<\|\|\>><rsub|1>\<cdot\><around*|\<\|\|\>|L<rsub|2>|\<\|\|\>><rsub|2,>=1\<cdot\><big|prod><rsub|i\<in\><around*|{|1,..,2|}>><around*|\<\|\|\>|L<rsub|i>|\<\|\|\>><rsub|i>>
    proving that <math|\<circ\>> is continuous and that
    <math|<around*|\<\|\|\>|\<circ\>|\<\|\|\>>\<leqslant\>1>
  </proof>

  <\definition>
    <label|L^n(X1,...,Xn;Y)><index|<math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space then <math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    is defined by\ 

    <\enumerate>
      <item>If <math|n=1> then <math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>,Y|)>>

      <item>If <math|n\<gtr\>1> then <math|L*<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=L<around*|(|X<rsub|1>,L<rsup|n-1><around*|(|X<rsub|2>,\<ldots\>,X<rsub|n>;Y|)>|)>>
    </enumerate>
  </definition>

  <\example>
    \ 

    <\enumerate>
      <item><math|L<rsup|1><around*|(|X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>;Y|)>>

      <item><math|L<rsup|2><around*|(|X<rsub|1>,X<rsub|2>;Y|)>=L<around*|(|X<rsub|1>,L<around*|(|X<rsub|2>,Y|)>|)>>

      <item><math|L<rsup|3><around*|(|X<rsub|1>,\<ldots\>,X<rsub|3>|)>=L<around*|(|X<rsub|1>,L<rsup|2><around*|(|X<rsub|2>,X<rsub|3>;Y|)>|)>=L<around*|(|X<rsub|1>,L<around*|(|X<rsub|2>,L<rsup|1><around*|(|X<rsub|3>,\<ldots\>,X<rsub|3>;Y|)>|)>|)>=L<around*|(|X<rsub|1>,L<around*|(|X<rsub|2>,L<around*|(|X<rsub|3>,Y|)>|)>|)>>

      <item>...
    </enumerate>
  </example>

  <\definition>
    <label|L^n(X;Y)><index|<math|L<rsup|n><around*|(|X;Y|)>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>,
    be normed vector spaces, <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|L<rsup|n><around*|(|X;Y|)>> is defined as
    <math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>> where the
    family <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is defined by <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|X<rsub|i>=X>

    <\enumerate>
      <item><math|n=1\<Rightarrow\>L<rsup|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>

      <item><math|n\<gtr\>1\<Rightarrow\>L<rsup|n><around*|(|X;Y|)>=L<around*|(|X,L<rsup|n-1><around*|(|X;Y|)>|)>>
    </enumerate>
  </definition>

  <\example>
    \ 

    <\enumerate>
      <item><math|L<rsup|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>>

      <item><math|L<rsup|2><around*|(|X:Y|)>=L<around*|(|X,L<rsup|1><around*|(|X;Y|)>|)>=L<around*|(|X,L<around*|(|X,Y|)>|)>>

      <item><math|L<rsup|3><around*|(|X;Y|)>=L<around*|(|X,L<rsup|2><around*|(|X;Y|)>|)>=L<around*|(|X,L<around*|(|X,L<around*|(|X,Y|)>|)>|)>>

      <item>...
    </enumerate>
  </example>

  <\theorem>
    <label|L^n(X1,..,Xn;),L(Xn+1,Y))=L^n+1(X1,..,Xn+1;Y)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed space then <math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;L<around*|(|X<rsub|n+1>,Y|)>|)>=L<rsup|n+1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;Y|)>>
  </theorem>

  <\proof>
    We prove this by induction, so let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|for
    <around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>
    we have L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;L<around*|(|X<rsub|n+1><rsup|>,Y|)>|)>=L<rsup|n+1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;Y|)>|}>>
    then:

    <\enumerate>
      <item>If <math|n=1> then <math|L<rsup|1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|1>;L<around*|(|X<rsub|2>,Y|)>|)>=L<around*|(|X<rsub|1>,L<around*|(|X<rsub|2>,Y|)>|)>=L<rsup|2><around*|(|X<rsub|1>,\<ldots\>,X<rsub|2>;Y|)>>
      proving <math|1\<in\>S>

      <item>If <math|n\<in\>S> then <math|L<rsup|n+1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;L<around*|(|X<rsub|n+2>,Y|)>|)>=L<around*|(|X<rsub|1>,L<rsup|n><around*|(|X<rsub|2>,\<ldots\>,X<rsub|n+1>;L<around*|(|X<rsub|n+2>,Y|)>|)>|)>\<equallim\><rsub|n\<in\>S>L<around*|(|X<rsub|1>,L<rsup|n+1><around*|(|X<rsub|2>,\<ldots\>,X<rsub|n+2>;Y|)>|)>\<equallim\><rsub|def>L<rsup|<around*|(|n+1|)>+1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+2>;Y|)>\<Rightarrow\>n+1\<in\>S>
    </enumerate>

    using mathematical induction proves the theorem.
  </proof>

  A easy corrolary of the above theorem is then\ 

  <\corollary>
    <label|L^n(X;L(X,Y))=L^n(X;Y)>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a \ normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space and <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|L<rsup|n><around*|(|X;L<rsup|><around*|(|X,Y|)>|)>=L<rsup|n+1><around*|(|X;Y|)>>
  </corollary>

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space, <math|m\<in\>\<bbb-N\><rsub|0>> with
    <math|m\<leqslant\>n> then if <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    and <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i>>
    we define <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>> recursively
    by\ 

    <\enumerate>
      <item><math|m=1> then <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>>

      <item><math|m\<gtr\>1> then <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=<around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m-1>|)>|)><around*|(|x<rsub|m>|)>>
    </enumerate>
  </definition>

  To show that the above is well defined we have the following theorem

  <\theorem>
    <label|L(x1,..,xm) is in Ln-m(X;Y)>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space, <math|m\<in\>\<bbb-N\><rsub|0>> with
    <math|m\<leqslant\>n> then if <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    then if <math|m\<less\>n> we have that
    <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsup|n-m><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>>
    and if <math|m=n> then <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>Y>
  </theorem>

  <\proof>
    We have two cases to consider

    <\enumerate>
      <item><dueto|<math|m\<less\>n>>we proceed by induction so let
      <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|if m\<less\>n then
      L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsup|n-m><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>|}>>
      then we must consider the following cases

      <\enumerate>
        <item>if <math|m=1> then if <math|1\<less\>n> we have
        <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>>
        and as <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=L<around*|(|X<rsub|1>,L<rsup|n-1><around*|(|X<rsup|><rsub|2>,\<ldots\>,X<rsub|n>:Y|)>|)>>
        we have that <math|L<around*|(|x<rsub|1>|)>\<in\>L<rsup|n-1><around*|(|X<rsub|2>,\<ldots\>,X<rsub|n>;Y|)>>
        proving that <math|1\<in\>S<rsub|n>>

        <item>if <math|m\<in\>S<rsub|n>> \ and
        <math|m+1\<less\>n\<Rightarrow\>m\<less\>n> then
        <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsup|n-m><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>\<equallim\><rsub|m\<less\>n\<Rightarrow\>n-m\<gtr\>1>L<around*|(|X<rsub|m+1>,L<rsup|<around*|(|n-m|)>-1><around*|(|X<rsub|m+2>,\<ldots\>,X<rsub|n>;Y|)>|)>>
        so that if <math|m+1\<less\>n> then
        \ <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m+1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)><around*|(|x<rsub|m+1>|)>\<in\>L<rsup|<around*|(|n-m|)>-1><around*|(|X<rsub|m+2>,\<ldots\>,X<rsub|n>;Y|)>=L<rsup|n-<around*|(|m+1|)>><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>>
        proving that <math|m+1\<in\>S<rsub|n>>
      </enumerate>

      By mathematical induction we have then that
      <math|S<rsub|n>=\<bbb-N\><rsub|0>> so if
      <math|m\<less\>n\<Rightarrow\>m\<in\>S<rsub|n>\<wedge\>m\<less\>n> so
      that <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<in\>L<rsup|n-m><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>>

      <item><dueto|<math|m=n>>Two cases must be considered

      <\enumerate>
        <item><dueto|<math|n=1>>then <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=L<around*|(|x<rsub|1>|)>\<in\>Y>
        as <math|L\<in\>L<rsup|1><around*|(|X<rsub|1>\<ldots\>X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>,Y|)>>

        <item><dueto|<math|n\<gtr\>1>>then as <math|n-1\<less\>n> we have by
        (1) <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>\<in\>L<rsup|n-<around*|(|n-1|)>><around*|(|X<rsub|n>,\<ldots\>,X<rsub|n>;Y|)>=L<rsup|1><around*|(|X<rsub|n>,\<ldots\>,X<rsub|n>;Y|)>=L<around*|(|X<rsub|n>,Y|)>>
        so that <math|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-1>|)><around*|(|x<rsub|n>|)>\<in\>Y>
      </enumerate>
    </enumerate>
  </proof>

  The next theorem shows that <math|<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
  behaves the same as <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
  functions.

  <\lemma>
    <label|equiality in L^n(X;Y)>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space and <math|L,L<rprime|'>\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    then if <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
    then <math|L=L<rprime|'>>.
  </lemma>

  <\proof>
    We prove this by induction. So let <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|if
    m\<leqslant\>n and \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i>
    we have L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>
    then L=L<rprime|'>|}>> then we have

    <\enumerate>
      <item>if <math|m=1> and \ <math|\<forall\><around*|(|x<rsub|1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>X<rsub|i>>
      we have <math|L<around*|(|x<rsub|1>|)>=L<rprime|'><around*|(|x<rsub|1>|)>>
      we have <math|\<forall\>x\<in\>X<rsub|1>> that
      <math|<around*|(|x|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|i>>
      and thus <math|L<around*|(|x|)>=L<around*|(|x<rprime|'>|)>> so that
      <math|L=L<rprime|'>> and thus <math|1\<in\>S<rsub|n>>

      <item>if <math|m\<in\>S<rsub|n>> then if <math|m+1\<leqslant\>n> and we
      have <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|m+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>X<rsub|i>>
      we have <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m+1>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|m+1>|)>\<Rightarrow\>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)><around*|(|x<rsub|m+1>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)><around*|(|x<rsub|m+1>|)>\<Rightarrowlim\><rsub|x<rsub|m+1>
      is choosen arbitray>L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>\<equallim\><rsub|m\<in\>S<rsub|n>>L=L<rprime|'>>
      proving that <math|m+1\<in\>S<rsub|n>>
    </enumerate>
  </proof>

  Finally we show that <math|<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>.:x<rsub|n>|)>=<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>

  <\theorem>
    <label|L(x1)(x2:..:xn)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space and <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    then \ <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    we have <math|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
  </theorem>

  <\proof>
    We proof this by induction so let <math|S=<around*|{|m\<in\><around*|{|2,\<ldots\>|}>\|if
    m\<leqslant\>n then <around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>|}>>
    then we have\ 

    <\enumerate>
      <item>If <math|m=2> then if <math|m\<leqslant\>n> we have
      <math|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|2>|)>=<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|2>|)>>
      proving that <math|2\<in\>S>

      <item>If <math|m\<in\>S> then if <math|m+1\<leqslant\>n> we have
      <math|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m+1>|)>=<around*|(|<around*|(|L<around*|(|x<rsub|1>|)>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>|)><around*|(|x<rsub|m+1>|)>\<equallim\><rsub|m\<in\>S><around*|(|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>|)><around*|(|x<rsub|m+1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m+1>|)>>
      proving that <math|m+1\<in\>S>\ 
    </enumerate>

    So by induction we have that <math|S=<around*|{|2,\<ldots\>|}>> so if
    <math|m=n\<gtr\>1\<Rightarrow\>m\<in\><around*|{|2,\<ldots\>|}>=S\<Rightarrow\>L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>=L<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>.
  </proof>

  <\lemma>
    <label|sum,product on (x1:..:xn)>Let <math|n\<in\>\<bbb-N\><rsub|0>\\\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector space <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>,
    <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>,
    <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X> then
    <math|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
  </lemma>

  <\proof>
    We prove this by induction so let <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|if
    m\<less\>n then <around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|}>>
    then\ 

    <\enumerate>
      <item>if <math|m=1> <math|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>>
      so <math|1\<in\>S<rsub|n>>.

      <item>if <math|m\<in\>S> then <math|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>\<equallim\><rsub|m\<in\>S><around*|(|\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)><around*|(|x<rsub|n+1>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)><around*|(|x<rsub|n+1>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>>
    </enumerate>

    Using induction we have <math|S<rsub|n>=\<bbb-N\><rsub|0>> proving the
    theorem.
  </proof>

  <\lemma>
    <label|norm of L(x1:..:xn}>Let <math|n\<in\>\<bbb-N\><rsub|0>\\\\<around*|{|1|}>>,
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,|}>>X<rsub|i>>
    then <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
  </lemma>

  <\proof>
    We must consider the following cases for <math|n>

    <\enumerate>
      <item><dueto|<math|n=1>>Then as <math|L\<in\>L<rsup|1><around*|(|X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>,Y|)>>
      we have <math|\<forall\><around*|(|x<rsub|1>|)>\<in\><big|prod><rsub|i\<in\>1,\<ldots\>,1>X<rsub|i>>
      that <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i=1><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      proving the theorem in the case of <math|n=1>

      <item><dueto|<math|n\<gtr\>1>>then if we note the norms in
      <math|L<rsup|n-i><around*|(|X<rsub|i+1>,\<ldots\>,X<rsub|n>;Y|)>>,
      <math|i\<leqslant\>n> by <math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|(|i|)>>>
      and define <math|T<rsub|n>=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|if
      m\<leqslant\>n-1 then \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|m>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>X<rsub|m>
      we have <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>|\<\|\|\>><rsub|<around*|(|m|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|}>>
      then we have:

      <\enumerate>
        <item>If <math|m=1> then as <math|n\<geqslant\>2> we have
        <math|m\<less\>n-1> and <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|<around*|(|1|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|1>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<Rightarrow\>1\<in\>T<rsub|n>>

        <item>If <math|m\<in\>T<rsub|n>> then if <math|m+1\<leqslant\>n-1>
        and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|m+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>>X<rsub|i>>
        then <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m+1>|)>|\<\|\|\>><rsub|<around*|(|m+1|)>>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)><around*|(|x<rsub|m+1>|)>|\<\|\|\>><rsub|<around*|(|m+1|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|m>|)>|\<\|\|\>><rsub|<around*|(|m|)>>\<cdot\><around*|\<\|\|\>|x<rsub|m+1>|\<\|\|\>><rsub|m+1>\<leqslant\><rsub|m\<in\>T<rsub|n>><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|)>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m+1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
        proving that <math|m+1\<in\>T<rsub|n>>
      </enumerate>

      Using mathematical induction we have that
      <math|T<rsub|n>=\<bbb-N\><rsub|0>> so for
      <math|n-1\<in\>\<bbb-N\><rsub|0>=T<rsub|n>> we have as
      <math|n-1\<leqslant\>n-1> that <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>|\<\|\|\>><rsub|<around*|(|n-1|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      so that <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)><around*|(|x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-1>|)>|\<\|\|\>><rsub|<around*|(|n-1|)>>\<cdot\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|n>\<leqslant\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|)>\<cdot\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>><rsub|n>=<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      proving the theorem for <math|n\<gtr\>1>
    </enumerate>
  </proof>

  <\theorem>
    <label|upper limit of L in L^n(K;Y)>Let
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be normed spaces (where <math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>>
    with the absolute norm), <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|L\<in\>L<rsup|n><around*|(|\<bbb-K\>,Y|)>> then
    <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|L<rsup|n><around*|(|\<bbb-K\>;Y|)>>\<leqslant\><around*|\<\|\|\>|L<around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>>
  </theorem>

  <\proof>
    We prove this by induction on <math|n> , denote
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|i>=<around*|\<\|\|\>||\<\|\|\>><rsub|L<rsup|i><around*|(|\<bbb-K\>;Y|)>>>
    the operator norm in <math|L<rsup|i><around*|(|\<bbb-K\>;Y|)>> and \ let
    <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|L\<in\>L<rsup|n><around*|(|\<bbb-K\>,Y|)>
    then <around*|\<\|\|\>|L|\<\|\|\>><rsub|i>\<leqslant\><around*|\<\|\|\>|L<around*|(|1:\<ldots\>:1|)>|\<\|\|\>><rsub|Y>|}>>
    then we have:

    <\enumerate>
      <item>If <math|n=1> then <math|L\<in\>L<rsup|1><around*|(|\<bbb-K\>;Y|)>=L<around*|(|\<bbb-K\>,Y|)>>
      then if <math|<around*|\||x<rsub|1>|\|>=1> we have as
      <math|x<rsub|1>=x<rsub|1>\<cdot\>1> that
      <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x<rsub|1>\<cdot\>L<around*|(|1|)>|\<\|\|\>><rsub|Y>=<around*|\||x<rsub|1>|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>>
      and as <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>\<equallim\><rsub|<text|<reference|norm
      of continuous linear mapping (inf)>>>inf<around*|(|<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>\<bbb-K\>\<vdash\><around*|\||x|\|>=1
      we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k|}>|)>>
      that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>>
      proving that <math|1\<in\>S>

      <item>If <math|n\<in\>S> then as <math|L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>=L<around*|(|\<bbb-K\>,L<rsup|n><around*|(|\<bbb-K\>;Y|)>|)>>
      we have if <math|L\<in\>L<rsup|n+1><around*|(|\<bbb-K\>;Y|)>> that
      <math|L<around*|(|1|)>\<in\>L<rsup|n><around*|(|\<bbb-K\>;Y|)>> so that
      as <math|n\<in\>S> we have that

      <\equation>
        <label|eq 11.17 bis><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|n>\<leqslant\><around*|\<\|\|\>|L<around*|(|1|)><wide*|<around*|(|1:\<ldots\>:1|)>|\<wide-underbrace\>><rsub|n>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<wide*|<around*|(|1:\<ldots\>:1|)>|\<wide-underbrace\>><rsub|n+1>|\<\|\|\>><rsub|Y>
      </equation>

      now if <math|x\<in\>\<bbb-K\>> is such that <math|<around*|\||x|\|>=1>
      then <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x\<cdot\>1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|x\<cdot\>L<around*|(|1|)>|\<\|\|\>><rsub|Y>=<around*|\||x|\|>\<cdot\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>>
      which as <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|n+1>=inf<around*|(|<around*|{|k\<in\>\<bbb-R\><rsub|+>\|\<forall\>x\<in\>\<bbb-K\>\<vdash\><around*|\||x|\|>=1
      we have <around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\>k|}>|)>>
      we have that <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|n+1>\<leqslant\><around*|\<\|\|\>|L<around*|(|1|)>|\<\|\|\>><rsub|Y>>
      proving using <reference|eq 11.17> that
      <math|<around*|\<\|\|\>|L|\<\|\|\>><rsub|n+1>\<leqslant\><around*|\<\|\|\>|L<wide*|<around*|(|1:\<ldots\>:1|)>|\<wide-underbrace\>><rsub|n+1>|\<\|\|\>><rsub|Y>>and
      thus that <math|n+1\<in\>S>
    </enumerate>

    Mathematical induction then proves that <math|S=\<bbb-N\><rsub|0>>
    proving the theorem.
  </proof>

  <\definition>
    <label|Pn(L) definition><index|<math|\<cal-P\><rsub|n><around*|(|L|)>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector then given <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    we define <math|\<cal-P\><rsub|n><around*|(|L|)>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    by <math|\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>.
    Note that if <math|n=1> then <math|L<rsup|1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>,Y|)>=L<around*|(|X<rsub|1>\<ldots\>,X<rsub|!>;Y|)>>
    and then <math|\<cal-P\><rsub|n><around*|(|L|)>=1<rsub|L<around*|(|X<rsub|1>,Y|)>>>.
  </definition>

  <\theorem>
    <label|Pn(L)(x1,..,xn)=Pn-1(L)(x1,..,xn-1)(xn)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector then given <math|L\<in\>L<rsup|n+1><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;Y|)>\<equallim\><rsub|<text|<reference|L^n(X1,..,Xn;),L(Xn+1,Y))=L^n+1(X1,..,Xn+1;Y)>>>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;L<around*|(|X<rsub|n+1>,Y|)>|)>>
    and <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\>\<Pi\><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>X<rsub|i>>
    then <math|\<cal-P\><rsub|n+1><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x<rsub|n+1>|)>>
  </theorem>

  <\proof>
    <math|><math|\<cal-P\><rsub|n+1><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)><around*|(|x<rsub|n+1>|)>=\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|n+1>|)>>
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector and <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    then <math|\<cal-P\><rsub|n><around*|(|L|)>> is multilinear and
    continuous (so that <math|\<cal-P\><rsub|n><around*|(|L|)>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    where <math|<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|0>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>
    (where <math|<around*|\<\|\|\>||\<\|\|\>>> is the operator norm of
    <math|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>=<choice|<tformat|<table|<row|<cell|L<around*|(|X<rsub|1>,Y|)>
    if n=1>>|<row|<cell|L<around*|(|X<rsub|1>,L<rsup|n-1><around*|(|X<rsub|2>,\<ldots\>,X<rsub|n>;Y|)>|)>
    if n\<gtr\>1>>>>>>) and <math|<around*|\<\|\|\>||\<\|\|\>><rsub|0>> the
    operator norm on <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>.
  </theorem>

  <\proof>
    We divide the proof in different phases

    <\enumerate>
      <item><dueto|multilinearity>Let <math|S=<around*|{|m\<in\>\<bbb-N\><rsub|0>\|if
      m\<leqslant\>n then if i\<in\><around*|{|1,\<ldots\>,m|}> we have
      \<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-K\>,\<forall\>x,y\<in\>X<rsub|i>
      ,\<forall\>z\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\\\<around*|{|i|}>>X<rsub|j>
      that \<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|m><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)>|}>>
      then we have

      <\enumerate>
        <item>If <math|m=1> (so <math|m\<leqslant\>n>) then as
        <math|\<cal-P\><rsub|1><around*|(|L|)>=L> and as <math|L> is linear
        we have <math|1\<in\>S>

        <item>If <math|m\<in\>S> then if <math|m+1\<leqslant\>n> \ we have
        two cases to consider for <math|i\<in\><around*|{|1,\<ldots\>,m+1|}>>

        <\enumerate>
          <item><dueto|<math|i\<leqslant\>m>>then as <math|m\<leqslant\>n> we
          have <math|\<cal-P\><rsub|m+1><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|m+1>|)>\<equallim\><rsub|<text|<reference|Pn(L)(x1,..,xn)=Pn-1(L)(x1,..,xn-1)(xn)>>>\<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)><around*|(|z<rsub|m+1>|)>\<equallim\><rsub|m\<in\>S\<wedge\>m\<less\>n><around*|(|\<alpha\>\<cdot\>\<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|m><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)>|)><around*|(|z<rsub|m+1>|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)><around*|(|z<rsub|m+1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|m><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|m>|)><around*|(|z<rsub|m+1>|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|m+1><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|m+1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|m+1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|m+1>|)>>

          <item><dueto|<math|i=m+1>> then
          <math|\<cal-P\><rsub|m+1><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)>=\<cal-P\><rsub|m+1><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|m>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>\<equallim\><rsub|<text|<reference|Pn(L)(x1,..,xn)=Pn-1(L)(x1,..,xn-1)(xn)>>>\<cal-P\><rsub|m><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|m>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=L<around*|(|z<rsub|1>:\<ldots\>z<rsub|m>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>\<equallim\><rsub|L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|m>|)>\<in\>L<rsup|n-m><around*|(|X<rsub|m+1>,\<ldots\>,X<rsub|n>;Y|)>>\<alpha\>\<cdot\>L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|m>|)><around*|(|x|)>+\<beta\>\<cdot\>L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|m>|)><around*|(|y|)>=\<alpha\>\<cdot\>L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|m>:x|)>+\<beta\>\<cdot\>L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|m>:y|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|m+1><around*|(|L|)><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|m+1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|m+1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|m+1>|)>>
        </enumerate>

        (i) and (2) proves then that <math|m+1\<in\>S>
      </enumerate>

      By mathematical induction we have then that <math|S=\<bbb-N\><rsub|0>>
      so as <math|n\<in\>\<bbb-N\><rsub|0>=S> and <math|n\<leqslant\>n> we
      have proved multilinearity.

      <item><dueto|continuity>If <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      then we have by <reference|norm of L(x1:..:xn}> that
      <math|<around*|\<\|\|\>|\<cal-P\><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      proving that as <math|\<cal-P\><around*|(|L|)>> is multilinear that
      <math|\<cal-P\><around*|(|L|)>> is continuous and that
      <math|<around*|\<\|\|\>|\<cal-P\><around*|(|L|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>
      (see <reference|norm of a multilinear mapping>)
    </enumerate>
  </proof>

  <\theorem>
    <label|L^(X;Y) is equivalent with L(X^n;Y)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    a finite family of normed spaces, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a normed vector and <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    then <math|\<cal-P\><rsub|n>:L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<rightarrow\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    defined by <math|\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>>
    (see <reference|Pn(L) definition>) is a norm preserving isomorphism\ 

    <\proof>
      The proof is done in different steps

      <\enumerate>
        <item><dueto|injectivity>If <math|\<cal-P\><rsub|n><around*|(|L|)>=\<cal-P\><rsub|n><around*|(|L<rprime|'>|)>>
        then <math|\<forall\>x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X> we have
        <math|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<cal-P\><rsub|n><around*|(|L|)>=\<cal-P\><rsub|n><around*|(|L<rprime|'>|)>=L<rprime|'><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>\<Rightarrowlim\><rsub|<text|<reference|equiality
        in L^n(X;Y)>>>L=L<rprime|'>> proving injectivity.

        <item><dueto|surjectivity>Let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
        <around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>
        is a family of normed spaces\<nocomma\> and
        <around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>
        is a normed space then \<cal-P\><rsub|n>:L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>\<rightarrow\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>
        is a surjection|}>> then we have

        <\enumerate>
          <item>If <math|n=1> then <math|L<rsup|1><around*|(|X<rsub|1>;Y|)>=L<around*|(|X<rsub|1>,Y|)>=L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|1>;Y|)>>
          and <math|\<cal-P\><rsub|1>=1<rsub|L<around*|(|X<rsub|!>,\<ldots\>,X<rsub|1>;Y|)>>>
          which is clearly surjective so that <math|1\<in\>S>

          <item>If <math|n\<in\>S> then let
          <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n+1>;Y|)>> then
          <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
          define then <math|L<rsub|1>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>L<around*|(|X<rsub|n+1>,Y|)>>
          by <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<rightarrow\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
          where <math|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>>.
          Of course we must prove that <math|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>L<around*|(|X<rsub|n+1>,Y|)>>\ 

          <\enumerate>
            <item><dueto|linearity>If <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>
            and <math|x,y\<in\>X<rsub|n+1>> then
            <math|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>=L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y|)>\<equallim\><rsub|L
            is multilinear>\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,y|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>+\<beta\>\<cdot\>L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|y|)>>
            proving that <math|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
            is linear.

            <item><dueto|continuity>Let <math|x\<in\>X<rsub|n+1>> then
            <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
            proving continuity.
          </enumerate>

          Further the mapping <math|L<rsub|1>> itself is multilinear and
          continuous\ 

          <\enumerate>
            <item><dueto|multilinearity>If
            <math|i\<in\><around*|{|1,\<ldots\>,n|}>\<nocomma\>\<nocomma\>>,
            <math|x,y\<in\>X<rsub|i>>, <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>>,
            <math|<around*|(|z<rsub|1>,\<ldots\>,z<rsub|n>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>n|}>\\\\<around*|{|i|}>>X<rsub|j>>
            and <math|w\<in\>X<rsub|n+1>> then
            <math|L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)><around*|(|w|)>=L<around*|(|z<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|n>,w|)>\<equallim\><rsub|L
            is multilinear>\<alpha\>\<cdot\>L<around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|n>,w|)>+\<beta\>\<cdot\>L<around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|n>,w|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>.,z<rsub|n>|)><around*|(|w|)>+\<beta\>\<cdot\>L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)><around*|(|w|)>>
            proving as <math|w> is choosen arbitrary we have that
            <math|L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)>=\<alpha\>\<cdot\>L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,x,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|1><around*|(|z<rsub|1>,\<ldots\>,z<rsub|i-1>,y,z<rsub|i+1>,\<ldots\>,z<rsub|n>|)>>

            <item><dueto|continuity><math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
            <math|\<forall\>x\<in\>X<rsub|n+1>> we have that
            <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|(|<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|n+1>>
            so that <math|<around*|\<\|\|\>|L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|n+1>,Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
            and thus proving that <math|L<rsub|1>> is continuous.
          </enumerate>

          So we conclude that <math|L<rsub|1>\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;L<around*|(|X<rsub|n+1>,Y|)>|)>>
          then as <math|n\<in\>S> there exists a
          <math|L<rsub|2>\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;L<around*|(|X<rsub|n+1>,Y|)>|)>\<equallim\><rsub|<text|<reference|L^n(X1,..,Xn;),L(Xn+1,Y))=L^n+1(X1,..,Xn+1;Y)>>>>
          such that <math|\<cal-P\><rsub|n><around*|(|L<rsub|2>|)>=L<rsub|1>>.
          Then <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>X<rsub|i>>
          we have <math|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>=L<rsub|1><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><around*|(|x<rsub|n+1>|)>=<around*|(|\<cal-P\><rsub|n><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)><around*|(|x<rsub|n+1>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>;x<rsub|n>|)><around*|(|x<rsub|n+1>|)>=L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=\<cal-P\><rsub|n+1><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n+1>|)>>
          proving that <math|L=\<cal-P\><rsub|n+1><around*|(|L<rsub|2>|)>>
          and thus that <math|\<cal-P\><rsub|n+1>> is surjective.
        </enumerate>

        <item><dueto|<math|\<cal-P\><rsub|n>> is linear>So let
        <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
        <math|L<rsub|1>,L<rsub|2>\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
        then <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        we have <math|<around*|(|\<cal-P\><rsub|n><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2><rsub|>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>\<equallim\><rsub|<text|<reference|sum,product
        on (x1:..:xn)>>>\<alpha\>*L<rsub|1><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|2><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|1>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|2>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=<around*|(|\<alpha\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|2>|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
        proving that <math|\<cal-P\><rsub|n><around*|(|\<alpha\>\<cdot\>L<rsub|1>+\<beta\>\<cdot\>L<rsub|2>|)>=\<alpha\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|n><around*|(|L<rsub|2>|)>>

        <item><dueto|Norm preserving>By the previous theorem we have already
        that if <math|L\<in\>L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
        that <math|<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y<rsub|>|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>.
        We prove now by induction that <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>.
        Define given <math|i\<in\><around*|{|0,\<ldots\>,n|}>> that
        <math|<around*|\<\|\|\>||\<\|\|\>><rsub|<around*|(|i|)>>=<choice|<tformat|<table|<row|<cell|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>
        if i=0>>|<row|<cell|<around*|\<\|\|\>||\<\|\|\>><rsub|L<rsup|i><around*|(|X<rsub|n-<around*|(|i-1|)>>,\<ldots\>,X<rsub|n>;Y|)>>>>>>>>
        and take then <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|if
        m\<less\>n then \<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-m>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-m|}>>X<rsub|i>
        with \<forall\>i\<in\><around*|{|1,\<ldots\>,n-m|}>\<vdash\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1
        we have <around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-m>|)>|\<\|\|\>><rsub|<around*|(|m|)>>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>|}>>
        then we have :

        <\enumerate>
          <item>If <math|m=0> then <math|m\<less\>n> and <math|n-m=n> so if
          <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-0|}>>X<rsub|i>>
          with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
          <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1> we have
          <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|0>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
          proving that <math|0\<in\>S<rsub|n>>

          <item>If <math|m\<in\>S<rsub|n>> then if
          <math|m+1\<less\>n\<Rightarrow\>0\<less\>n-<around*|(|m+1|)>> we
          have <math|\<forall\><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-<around*|(|m+1|)>>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-<around*|(|m+1|)>|}>>X<rsub|i>>
          with <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=1> if
          <math|i\<in\><around*|{|1,\<ldots\>,n-<around*|(|m+1|)>|}>> \ we
          have using <reference|the alternative definition of the norm of a
          continuous linear function> that
          <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-<around*|(|m+1|)>>|)>|\<\|\|\>><rsub|<around*|(|m+1|)>>=sup<around*|(|<around*|{|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-<around*|(|m+1|)>>|)><around*|(|x|)>|\<\|\|\>><rsub|<around*|(|m|)>><rsub|>\|x\<in\>X<rsub|n-m>
          with <around*|\<\|\|\>|x|\<\|\|\>><rsub|n-m>=1|}>|)>=sup<around*|(|<around*|{|<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n-<around*|(|m+1|)>>:x|)>|\<\|\|\>><rsub|<around*|(|m|)>>\|x\<in\>X<rsub|n-m>
          with <around*|\<\|\|\>|x|\<\|\|\>><rsub|n-m>=1|}>|)>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>
          [as <math|m\<in\>S> we have that as
          <math|\<forall\>z=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-<around*|(|m+1|)>>,x|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-m|}>>X<rsub|i>>
          that <math|<around*|\<\|\|\>|z<rsub|i>|\<\|\|\>><rsub|i>=1> that
          <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n-<around*|(|m+1|)>>,x|)>|\<\|\|\>><rsub|<around*|(|m|)>>=<around*|\<\|\|\>|L<around*|(|z<rsub|1>:\<ldots\>:z<rsub|n-m>|)>|\<\|\|\>><rsub|<around*|(|m|)>>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>:Y|)>>>]
          so that <math|m+1\<in\>S<rsub|n>>.
        </enumerate>

        By induction we have then that <math|S<rsub|n>=\<bbb-N\>\<Rightarrow\>n-1\<in\>S>
        so as <math|n-1\<less\>n> we have that
        <math|\<forall\>x\<in\>X<rsub|1>\|\<vdash\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=1\<Rightarrow\>><math|\<forall\><around*|(|x|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n-<around*|(|n-1|)>|}>>X<rsub|i>>
        with <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=1> that
        <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>|)>|\<\|\|\>><rsub|<around*|(|n-1|)>>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>:\<ldots\>:x<rsub|1>|)>|\<\|\|\>><rsub|<around*|(|n-1|)>>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>>>.
        As <math|<around*|\<\|\|\>|L|\<\|\|\>>=sup<around*|(|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|<around*|(|n-1|)>>\|x\<in\>X<rsub|1>\<vdash\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>=1|)>>
        we have that <math|<around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>>>.
        This together with <math|<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>>
        proves that <math|<around*|\<\|\|\>|\<cal-P\><rsub|n><around*|(|L|)>|\<\|\|\>><rsub|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>=<around*|\<\|\|\>|L|\<\|\|\>>>.
      </enumerate>
    </proof>
  </theorem>

  The above theorem lets us to identify <math|L<rsup|n><around*|(|X;Y|)>>
  with <math|L<around*|(|X<rsup|n>;Y|)>> which will be used for higher order
  differentation.

  <\definition>
    <label|@ product><index|<math|\<bullet\><rsub|n>>>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|L\<in\>L<around*|(|Y,Z|)>> then given
    <math|K\<in\>L<rsup|n><around*|(|X;Y|)>> we have
    <math|\<cal-P\><rsub|n,Y><around*|(|K|)>\<in\>L<around*|(|X<rsup|n>;Y|)>\<Rightarrow\>L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>\<in\>L<around*|(|X<rsup|n>;Z|)>\<Rightarrow\>\<cal-P\><rsub|n,Z><rsup|-1><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)>\<in\>L<rsup|n><around*|(|X;Z|)>>
    we define then <math|L\<bullet\><rsub|n>K=\<cal-P\><rsup|-1><rsub|n,Z><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)>>.
    If <math|n=1> then <math|L\<bullet\><rsub|1>K=L\<circ\>K>
  </definition>

  <\theorem>
    <label|@ prouct property>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|Y,Z|)>> then given
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|K\<in\>L<rsup|n><around*|(|X;Y|)>>
    we have if <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X> that
    <math|<around*|(|L\<bullet\><rsub|n>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=L<around*|(|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)>>
  </theorem>

  <\proof>
    <math|<around*|(|L\<bullet\><rsub|n>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>=\<cal-P\><rsub|n,Z><rsup|-1><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>\<equallim\><rsub|definition
    of \<cal-P\><rsub|n,Z>><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=L<around*|(|\<cal-P\><rsub|n,Y><around*|(|K|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>=L<around*|(|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n>|)>|)>><verbatim|>
  </proof>

  <\theorem>
    <label|ev_L is linear and continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|Y,Z|)>> then given
    <math|ev<rsub|L,n>:L<rsup|n><around*|(|X;Y|)>\<rightarrow\>L<rsup|n><around*|(|X;Z|)>>
    defined by <math|K\<rightarrow\>L\<bullet\><rsub|n>K> is a linear
    continuous function.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|Linearity>Let <math|K<rsub|1>,K<rsub|2>\<in\>L<rsup|n><around*|(|X;Y|)>>
      and <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> then we have that
      <math|ev<rsub|L><around*|(|\<alpha\>\<cdot\>K<rsub|1>+\<beta\>\<cdot\>K<rsub|2>|)>=L\<bullet\><rsub|n><around*|(|\<alpha\>\<cdot\>K<rsub|1>+\<beta\>\<cdot\>K<rsub|2>|)>=\<cal-P\><rsub|n,Z><rsup|-1><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|\<alpha\>\<cdot\>K<rsub|1>+\<beta\>\<cdot\>K<rsub|2>|)>|)>\<equallim\><rsub|\<cal-P\><rsub|n>
      is linear <around*|(|see <text|<reference|L^(X;Y) is equivalent with
      L(X^n;Y)>>|)>>\<cal-P\><rsup|-1><rsub|n,Z><around*|(|L\<circ\><around*|(|\<alpha\>\<cdot\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|1>|)>+\<beta\>\<cdot\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|2>|)>|)>|)>\<equallim\><rsub|L
      is linear>\<cal-P\><rsub|n,Z><rsup|-1><around*|(|\<alpha\>\<cdot\><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|1>|)>|)>+\<beta\>\<cdot\><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|2>|)>|)>|)>\<equallim\><rsub|\<cal-P\><rsub|n,Z>
      is a linear isomorphism+<text|<reference|inverse of linear isomorphism
      is a isomorphism>>>\<alpha\>\<cdot\>\<cal-P\><rsub|n,Z><rsup|-1><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|1>|)>|)>+\<beta\>\<cdot\>\<cal-P\><rsup|-1><rsub|n,Z><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K<rsub|2>|)>|)>=\<alpha\>\<cdot\>ev<rsub|L><around*|(|K<rsub|1>|)>+\<beta\>\<cdot\>ev<rsub|L><around*|(|K<rsub|2>|)>>

      <item><dueto|continuity>Let <math|K\<in\>L<rsup|n><around*|(|X,Y|)>>
      then <math|<around*|\<\|\|\>|ev<rsub|L><around*|(|K|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>=<around*|\<\|\|\>|\<cal-P\><rsub|n,Z><rsup|-1><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)>|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>\<equallim\><rsub|\<cal-P\><rsub|n,Z
      is norm preserving>><around*|\<\|\|\>|\<cal-P\><rsub|n,Z><around*|(|\<cal-P\><rsup|-1><rsub|n,Z><around*|(|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|)>|)>|\<\|\|\>><rsub|L<around*|(|X<rsup|n>;Z|)>>=<around*|\<\|\|\>|L\<circ\>\<cal-P\><rsub|n,Y><around*|(|K|)>|\<\|\|\>><rsub|L<around*|(|X<rsup|n>;Z|)>>\<leqslant\><rsub|<text|<reference|composition
      of a continuous linear mapping and a continuous multilinear mapping is
      a continuous linear mapping>>><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|Y,Z|)>>\<cdot\><around*|\<\|\|\>|\<cal-P\><rsub|n,Y><around*|(|K|)>|\<\|\|\>>\<equallim\><rsub|\<cal-P\><rsub|n,Y>
      is norm preserving><around*|\<\|\|\>|L|\<\|\|\>><rsub|L<around*|(|X,Z|)>>\<cdot\><around*|\<\|\|\>|K|\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>>
      proving continuity.\ 
    </enumerate>
  </proof>

  The next theorem shows how <math|ev<rsub|L,n>> can be used to go one level
  higher

  <\theorem>
    <label|ev_l + @>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>,<around*|\<langle\>|Z,<around*|\<\|\|\>||\<\|\|\>><rsub|Z>|\<rangle\>>>
    be normed spaces and <math|L\<in\>L<around*|(|Y,Z|)>> then given
    <math|n\<in\>\<bbb-N\><rsub|0>> we have if
    <math|K\<in\>L<rsup|n+1><around*|(|X;Y|)>> that
    <math|ev<rsub|L,n>\<circ\>K=L\<bullet\><rsub|n+1>K>
  </theorem>

  <\proof>
    Let <math|x<rsub|1>,\<ldots\>,x<rsub|n+1>\<in\>X> then
    <math|K<around*|(|x<rsub|1>|)>\<in\>L<around*|(|X,L<rsup|n><around*|(|X;Y|)>|)>>
    so that <math|<around*|(|ev<rsub|L,n>\<circ\>K|)><around*|(|x<rsub|1>|)>=ev<rsub|L,n><around*|(|K<around*|(|x<rsub|1>|)>|)>\<equallim\><rsub|definition
    of ev<rsub|L,n>>L\<bullet\><rsub|n>K<around*|(|x<rsub|1>|)>> so that
    <math|<around*|(|ev<rsub|L,n>\<circ\>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|ev<rsub|L,n>\<circ\>K|)><around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n>|)>=<around*|(|L\<bullet\><rsub|n>K<around*|(|x<rsub|1>|)>|)>\<equallim\><rsub|<text|<reference|@
    prouct property>>>L<around*|(|K<around*|(|x<rsub|1>|)><around*|(|x<rsub|2>:\<ldots\>:x<rsub|n+1>|)>|)>=L<around*|(|K<around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>|)>\<equallim\><rsub|<text|<reference|@
    prouct property>>><around*|(|L\<bullet\><rsub|n+1>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>>
    so that <math|<around*|(|ev<rsub|L,n>\<circ\>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>=<around*|(|L\<bullet\><rsub|n+1>K|)><around*|(|x<rsub|1>:\<ldots\>:x<rsub|n+1>|)>>
    so as <math|x<rsub|1>,\<ldots\>,x<rsub|n>\<in\>X<rsup|>> is choosen
    arbitrary we have by <reference|equiality in L^n(X;Y)> that
    <math|ev<rsub|L,n>\<circ\>K=L\<bullet\><rsub|n+1>K>.\ 
  </proof>

  <section|Separation>

  <\definition>
    <label|Hausdorff spaces><index|Hausdorff space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is <strong|Hausdorff>
    if <math|\<forall\>x,y\<in\>X> with <math|x\<neq\>y> there exists a
    <math|U,V\<in\>\<cal-T\>> with <math|x\<in\>U\<wedge\>y\<in\>V\<wedge\>U<big|cap>V=\<emptyset\>>
  </definition>

  <\example>
    <label|metric spaces are Hausdorff>A metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is Hausdorff in the metric
    topology
  </example>

  <\proof>
    If <math|x,y\<in\>X> with <math|x\<neq\>y> then
    <math|\<varepsilon\>=d<around*|(|x,y|)>\<gtr\>0> define then
    <math|x\<in\>B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)>> and
    <math|y\<in\>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>>. If now
    <math|z\<in\>B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)><big|cap>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>\<Rightarrow\>\<varepsilon\>=d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|y,z|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
    a contradiction so that <math|B<rsub|d><around*|(|x,<frac|\<varepsilon\>|2>|)><big|cap>B<rsub|d><around*|(|y,<frac|\<varepsilon\>|2>|)>>
  </proof>

  <\theorem>
    <label|every finite subset of a Hausdorff is closed>Every finite subset
    of a Hausdorff space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is closed.
  </theorem>

  <\proof>
    First note that the finite set <math|\<emptyset\>> is closed as
    <math|X\\\\\<emptyset\>=X> is open. Second we prove that if
    <math|x\<in\>X> then <math|<around*|{|x|}>> is closed or equivalent that
    <math|X\\\\<around*|{|x|}>> is open, so let
    <math|y\<in\>X\\\\<around*|{|x|}>\<Rightarrow\>y\<neq\>x\<Rightarrow\>\<exists\>U,V>
    open with <math|x\<in\>U,y\<in\>V> and
    <math|U<big|cap>V=\<emptyset\>\<Rightarrow\>x\<nin\>V\<Rightarrow\>y\<in\>V\<subseteq\>X\\\\<around*|{|x|}>\<Rightarrow\>X\\\\<around*|{|x|}>>
    is open. If now <math|F> is a finite non empty set then there exists a
    bijection <math|b:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>F> so that
    <math|F=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|b<around*|(|i|)>|}>\<Rightarrow\>F>
    is closed as a finite set of closed sets is closed.
  </proof>

  <\definition>
    <label|regular space><index|regular space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is <strong|regular> if
    for every closed set <math|A> and <math|\<forall\>x\<in\>X> with
    <math|x\<nin\>A> there exists disjoint open sets
    <math|U,V\<in\>\<cal-T\>> with <math|x\<in\>U,A\<subseteq\>V> and
    <math|U<big|cap>V=\<emptyset\>>
  </definition>

  <\theorem>
    <label|metric spaces are regular>A metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is regular
  </theorem>

  <\proof>
    Let <math|A> be a closed set and <math|x\<nin\>A> then as
    <math|x\<in\>X\\\\A> (which is open) there exists a <math|U> open with
    <math|x\<in\>U\<subseteq\>X\\\\A> so that <math|x\<in\>U> and
    <math|U<big|cap>A=\<emptyset\>>. As <math|x\<in\>U> open there exist a
    <math|\<delta\>\<in\>\<bbb-R\><rsub|+>> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U\<Rightarrow\>B<rsub|d><around*|(|x,\<delta\>|)><big|cap>A=\<emptyset\>>.
    Given <math|a\<in\>A> assume that <math|z\<in\>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>\<Rightarrow\>d<around*|(|x,z|)>\<less\><frac|\<delta\>|2>\<wedge\>d<around*|(|z,a|)>\<less\><frac|\<delta\>|2>\<Rightarrow\>d<around*|(|x,a|)>\<leqslant\>d<around*|(|x,z|)>+d<around*|(|z,a|)>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>\<Rightarrow\>a\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<Rightarrow\>a\<in\>B<rsub|d><around*|(|x,\<delta\>|)><big|cap>A=\<emptyset\>>
    a contradiction so we must have that <math|B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>=\<emptyset\>>
    and thus as <math|A\<subseteq\><big|cup><rsub|a\<in\>A>B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)>=V>
    a open set with <math|V<big|cap>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>=<big|cup><rsub|a\<in\>A><around*|(|B<rsub|d><around*|(|a,<frac|\<delta\>|2>|)><big|cap>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>|)>=<big|cup><rsub|a\<in\>A>\<emptyset\>=\<emptyset\>>
    so <math|A\<subseteq\>V> a open set that does not intersect the open set
    <math|B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>> containing <math|x>.
  </proof>

  <\theorem>
    <label|regularity and non empty open sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a regular
    topological space and <math|U> a open set with <math|x\<in\>U> then there
    exists a open set <math|V> with <math|x\<in\>V\<wedge\><wide|V|\<bar\>>\<subseteq\>U>
  </theorem>

  <\proof>
    Take <math|x\<in\>U> then as <math|x\<nin\>X\\\\U> a closed set we have
    by regularity a <math|V,W> open with <math|x\<in\>V>,
    <math|X\\\\U\<subseteq\>W> and <math|V<big|cap>W=\<emptyset\>\<Rightarrow\>V\<subseteq\>X\\\\W\<Rightarrowlim\><rsub|X\\\\W
    is closed><wide|V|\<bar\>>\<subseteq\>X\\\\W\<Rightarrowlim\><rsub|X\\\\U\<subseteq\>W\<Rightarrow\>X\\\\W\<subseteq\>X\\\\<around*|(|X\\\\U|)>=U><wide|V|\<bar\>>\<subseteq\>U>
    and <math|x\<in\>V>.
  </proof>

  <\definition>
    <label|normal space><index|normal space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is normal if for every
    pair of disjoint closed sets <math|A,B> there exists a pair of disjoint
    open sets <math|U,V> with <math|A\<subseteq\>U\<wedge\>B\<subseteq\>V>
  </definition>

  <\theorem>
    A normal topological space where every singleton is closed is regular, a
    regular space where every singleton is closed is Hausdorff
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
      normal space so that <math|\<forall\>x\<in\>X> we have
      <math|<around*|{|x|}>> is closed. If <math|A> is a closed set and
      <math|x\<nin\>A> then as <math|<around*|{|x|}>> is closed there exists
      by normality open sets <math|U,V> with
      <math|A\<subseteq\>U,<around*|{|x|}>\<subseteq\>V\<Rightarrow\>x\<in\>V>
      such that <math|U<big|cap>V=\<emptyset\>> proving that
      <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is regular.

      <item>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
      regular space so that <math|\<forall\>x\<in\>X> we have
      <math|<around*|{|x|}>> is closed. If now <math|x,y\<in\>X> with
      <math|x\<neq\>y\<Rightarrow\>y\<nin\><around*|{|x|}>> a closed set so
      that by regularity there exists disjoint open sets <math|U,V> with
      <math|y\<in\>U> and <math|<around*|{|x|}>\<subseteq\>V\<Rightarrow\>x\<in\>V>
      proving Hausdorff.
    </enumerate>
  </proof>

  <\definition>
    <label|neighborhood><index|neighborhood><index|open neighborhood>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|x\<in\>X> then a set <math|A> is a neighborhood of <math|x> iff
    there exists a open set <math|U> such that <math|x\<in\>U\<subseteq\>A>.
    If <math|A> is also a open set then it is called a open neighborhood.
  </definition>

  <\definition>
    <label|fundamental system of neighborhoods><index|fundamental system of
    neighborhoods>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    topological space, <math|x\<in\>X> then a fundamental system of
    neighborhoods of <math|x> is a set <math|\<cal-N\>> of neighborhoods of
    <math|x> such that for every neighborhood <math|A> of <math|x> there
    exists a <math|N\<in\>\<cal-N\>> such that <math|x\<in\>N\<subseteq\>A>
  </definition>

  <\definition>
    <label|first countable topological space><index|first countable
    topological space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is first countable if
    every element of <math|X> has a countable fundamental system of
    neighborhoods.
  </definition>

  <\theorem>
    <label|metric spaces are first countable>A metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is first countable
  </theorem>

  <\proof>
    Given <math|x\<in\>X> define the countable set
    <math|\<cal-N\>x=<around*|{|B<rsub|d><around*|(|x,<frac|1|n>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>>
    then if A is a neighborhood of <math|x> there exists a open set <math|U>
    with <math|x\<in\>U\<subseteq\>A>. So there exists a
    <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>. Using
    <reference|consequence of the archimedean property for the reals> there
    exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|0\<less\><frac|1|n>\<less\>\<varepsilon\>> so that
    <math|x\<in\>B<rsub|d><around*|(|x,<frac|1|n>|)>\<subseteq\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U\<subseteq\>A>
    so that <math|\<cal-N\><rsub|x>> is a fundamental system of neighborhoods
    of <math|x>.
  </proof>

  <\definition>
    <label|second countable topological space><index|second countable
    topological space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is second countable if
    it has a countable basis
  </definition>

  <\theorem>
    <label|a second countable basis is first countable>A second countable
    topological space is first countable
  </theorem>

  <\proof>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a second
    countable topological space and let <math|\<cal-B\>\<subseteq\>\<cal-T\>>
    be the countable basis of <math|\<cal-T\>> then if <math|x\<in\>X> and
    <math|A> a neighborhood of <math|x> then there exists a
    <math|U\<in\>\<cal-T\>> \ such that <math|x\<in\>U\<subseteq\>A>. As
    <math|\<cal-B\>> is a basis there exists a <math|B\<in\>\<cal-B\>> such
    that <math|x\<in\>B\<subseteq\>U\<subseteq\>A>. So <math|\<cal-B\>> is a
    fundamentally system of neighborhoods of every element of <math|x>.
  </proof>

  <section|Toppological Vector Spaces>

  <\definition>
    <index|topological vector space>A topological vector space is a vector
    space <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> over
    <math|\<bbb-K\>> together with a topology <math|\<cal-T\>> \ on <math|X>
    such that\ 

    <\enumerate>
      <item><math|+:X\<times\>X\<rightarrow\>X> defined by
      <math|<around*|(|x,y|)>\<rightarrow\>+<around*|(|x,y|)>=x+y> is
      continuous

      <item><math|\<cdot\>:F\<times\>X\<rightarrow\>X> defined by
      <math|<around*|(|\<alpha\>,x|)>\<rightarrow\>\<cdot\><around*|(|\<alpha\>,x|)>=\<alpha\>\<cdot\>x>
      is continuous
    </enumerate>

    using the product topology of <math|X\<times\>X> and
    <math|\<bbb-K\>\<times\>X> (using the toplogy of
    <math|<around*|\<langle\>|\<bbb-K\>,\<\|\|\>|\<rangle\>>> and of
    <math|X>).
  </definition>

  <\example>
    Using <reference|continuity of vector space operations> we have that a
    normed vector space is a topological vector space.
  </example>

  <\definition>
    <label|toplinear isomorphism><index|toplinear isomorphism>Let <math|X,Y>
    be topological vector spaces then a function <math|L:X\<rightarrow\>Y> is
    a toplinear isomorphism iff

    <\enumerate>
      <item><math|L> is a linear isomorphism, meaning that

      <\enumerate>
        <item><math|L> is a bijection

        <item><math|L<around*|(|x+y|)>=L<around*|(|x|)>+L<around*|(|y|)>>

        <item><math|L<around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\>L<around*|(|x|)>>
      </enumerate>

      <item><math|L> and <math|L<rsup|-1>> are continuous (using the product
      topology on\ 
    </enumerate>
  </definition>

  <\theorem>
    <label|example of continuous mappings in a topological vector space>Let
    <math|<around*|\<langle\>|X,+,\<cdot\>|\<rangle\>>> be a topological
    vector space then the functions \ 

    <\enumerate>
      <item><math|+<rsub|x>:X\<rightarrow\>X> defined by
      <math|y\<rightarrow\>+<rsub|x><around*|(|y|)>=x+y>

      <item><math|\<cdot\><rsub|\<alpha\>>:X\<rightarrow\>X> defined by
      <math|y\<rightarrow\>\<cdot\><rsub|\<alpha\>><around*|(|y|)>=\<alpha\>\<cdot\>y>
    </enumerate>

    are continuous.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|U> be open and take
      <math|y\<in\><around*|(|+<rsub|x>|)><rsup|-1><around*|(|U|)><around*|{|y\<in\>X\|x+y\<in\>U|}>>
      then <math|<around*|(|x,y|)>\<in\>+<rsup|-1><around*|(|U|)>> and by
      continuity of <math|+> (and the definition of the product topology)
      there exists open <math|V<rsub|1>,V<rsub|2>> with
      <math|<around*|(|x,y|)>\<in\>V<rsub|1>\<times\>V<rsub|2>> such that
      <math|+<around*|(|V<rsub|1>\<times\>V<rsub|2>|)>\<subseteq\>U\<Rightarrow\>V<rsub|1>+V<rsub|2>\<subseteq\>U>
      and thus as <math|x\<in\>V<rsub|1>> we have
      <math|+<rsub|x><around*|(|V<rsub|2>|)>=<around*|{|x|}>+V<rsub|2>\<subseteq\>V<rsub|1>+V<rsub|2>\<subseteq\>U>
      proving continuity of <math|+<rsub|x>>.

      <item>Let <math|U> be open and take
      <math|x\<in\>\<cdot\><rsub|\<alpha\>><around*|(|U|)>=<around*|{|x\<in\>X\|\<alpha\>\<cdot\>x\<in\>U|}>>
      then <math|<around*|(|\<alpha\>,x|)>\<in\>\<cdot\><rsup|-1><around*|(|U|)>>
      and by continuity of <math|\<cdot\>> there exists open
      <math|V<rsub|1>,V<rsub|2>> with <math|<around*|(|\<alpha\>,x|)>\<in\>V<rsub|1>\<times\>V<rsub|2>>
      such that <math|\<cdot\><around*|(|V<rsub|1>\<times\>V<rsub|2>|)>=V<rsub|1>\<cdot\>V<rsub|2>\<subseteq\>U>
      and thus <math|\<cdot\><rsub|\<alpha\>><around*|(|V<rsub|2>|)>=<around*|{|\<alpha\>|}>\<cdot\>V<rsub|2>\<subseteq\>V<rsub|1>\<cdot\>V<rsub|2>\<subseteq\>U>
      proving continuity.
    </enumerate>
  </proof>

  <section|Compact Spaces>

  <\definition>
    <label|compact topological space><index|compact topological space>A
    topological space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    compact iff for every family of<math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>>
    of open sets such that <math|X=<big|cup><rsub|i\<in\>I>U<rsub|i>>
    [<math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> cover's <math|X>] there
    exists a finite <math|J\<subseteq\>I> such that
    <math|X=<big|cup><rsub|i\<in\>J>U<rsub|i>>
  </definition>

  <\definition>
    <label|compact subsets><index|compact subsets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then a subset <math|C\<subseteq\>X> is compact in <math|X> iff
    <math|<around*|\<langle\>|C,\<cal-T\><rsub|C>|\<rangle\>>> is a compact
    topological space (where <math|\<cal-T\><rsub|C>> is the subspace
    topology)
  </definition>

  <\theorem>
    <label|alternate definition of a compact subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then a subset <math|C\<subseteq\>X> is compact in <math|X> if and only if
    for every family <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> of open
    sets such that <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
    there exists a finite <math|J\<subseteq\>I> such that
    <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> is a collection of open
      sets such that <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      then <math|C=<big|cup><rsub|i\<in\>I><around*|(|C<big|cap>U<rsub|i>|)>>
      where <math|\<forall\>i\<in\>I> we have that
      <math|U<rsub|i><big|cap>C\<in\>\<cal-T\><rsub|C>> so that by the fact
      that <math|<around*|\<langle\>|C,\<cal-T\><rsub|C>|\<rangle\>>> is
      compact there exists a finite <math|J\<subseteq\>I> such that
      <math|C=<big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>C|)>\<Rightarrow\>C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>

      <item><dueto|<math|\<Leftarrow\>>>Assume that
      <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> is a collection of open
      sets in <math|\<cal-T\><rsub|C>> such that
      <math|C=<big|cup><rsub|i\<in\>I>V<rsub|i>> then by the definition of
      the subspace topology we have <math|\<forall\>i\<in\>I> there exists a
      <math|U<rsub|i>> such that <math|V<rsub|i>=U<rsub|i><big|cap>C> so that
      <math|C=<big|cup><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>C|)>\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>
      so by the hypothesis there exists a finite <math|J\<subseteq\>I> such
      that <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>\<Rightarrow\>C=<big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>C|)>=<big|cup><rsub|i\<in\>J>V<rsub|i>>
      proving that <math|<around*|\<langle\>|C,\<cal-T\><rsub|C>|\<rangle\>>>
      is a compact topological space.
    </enumerate>
  </proof>

  <\theorem>
    <label|compact subsets of subsets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|A\<subseteq\>X> then if <math|C\<subseteq\>A> is compact in
    <math|<around*|\<langle\>|A,T<rsub|A>|\<rangle\>>> it is compact in
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
  </theorem>

  <\proof>
    Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> be a set of open sets
    in <math|\<cal-T\>> with <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>\<Rightarrow\>C=C<big|cap>A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>I>U<rsub|i>|)><big|cap>A=<big|cup><rsub|i\<in\>I><around*|(|U<rsub|i><big|cap>A|)>\<Rightarrowlim\><rsub|C
    is compact in <around*|\<langle\>|A,\<cal-T\><rsub|A>|\<rangle\>>>\<exists\>J\<subseteq\>I>
    with <math|J> finite and <math|C\<subseteq\><big|cup><rsub|i\<in\>J><around*|(|U<rsub|i><big|cap>A|)>\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>>
    so that <math|C> is compact in <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
  </proof>

  <\theorem>
    <label|compact space in a metric space is bounded>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space and let
    <math|C\<subseteq\>X> be a compact set then <math|C> is bounded (see
    <reference|diameter>)
  </theorem>

  <\proof>
    Let <math|C> be a compact subset of <math|X> then
    <math|\<forall\>c\<in\>C> take <math|B<rsub|d><around*|(|c,1|)>\<ni\>c>
    which is open. So we have <math|C\<subseteq\><big|cup><rsub|c\<in\>C>B<rsub|d><around*|(|c,1|)>>
    and thus by compactness there exists a finite set
    <math|<around*|{|c<rsub|1>,\<ldots\>,c<rsub|n>|}>\<subseteq\>C> such that
    <math|C\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|d><around*|(|c<rsub|i>,1|)>>.
    Take then <math|M=2+max<around*|(|<around*|{|d<around*|(|c<rsub|i>,c<rsub|j>|)>\|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    (which exists because of <reference|finite ordered sets have a maximum>
    and <reference|product of finite sets is finite>). If now
    <math|x,y\<in\>C\<Rightarrow\>\<exists\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|x\<in\>B<rsub|d><around*|(|c<rsub|i>,1|)>> and
    <math|y\<in\>B<rsub|d><around*|(|c<rsub|j>,1|)>> and thus
    <math|d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,c<rsub|i>|)>+d<around*|(|c<rsub|i>,y|)>\<leqslant\>d<around*|(|x,c<rsub|i>|)>+d<around*|(|c<rsub|i>,c<rsub|j>|)>+d<around*|(|c<rsub|j>,y|)>\<less\>1+d<around*|(|c<rsub|i>,c<rsub|j>|)>+1=2+d<around*|(|c<rsub|i>,c<rsub|j>|)>\<leqslant\>M>
    proving that <math|C> is bounded.
  </proof>

  <\theorem>
    <label|continuous image of compact set>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and <math|f:X\<rightarrow\>Y> a continuous map then if
    <math|C\<subseteq\>X> is compact then <math|f<around*|(|C|)>> is compact.
  </theorem>

  <\proof>
    Let <math|<around*|{|V<rsub|i>|}><rsub|i\<in\>I>> be a family of open
    sets in <math|Y> so that <math|f<around*|(|C|)>\<subseteq\><big|cup><rsub|i\<in\>I>V<rsub|i>>
    then <math|\<forall\>x\<in\>C> we have
    <math|f<around*|(|x|)>\<in\>f<around*|(|C|)>> and thus
    <math|\<exists\>i\<in\>I> such that <math|f<around*|(|x|)>\<in\>V<rsub|i>>
    so that by continuity of <math|f> there exists a <math|U<rsub|i>> open in
    <math|X> with <math|x\<in\>U<rsub|i>> and
    <math|f<around*|(|x|)>\<in\>f<around*|(|U<rsub|i>|)>\<subseteq\>V<rsub|i>>
    so that <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>. By
    compactness of <math|C> there exist a finite <math|J\<subseteq\>I> so
    that <math|C\<subseteq\><big|cup><rsub|i\<in\>J>U<rsub|i>\<Rightarrowlim\><rsub|<with|mode|text|<reference|properties
    of image and preimage>>>f<around*|(|C|)>\<subseteq\>f<around*|(|<big|cup><rsub|i\<in\>J>U<rsub|i>|)>\<equallim\><rsub|<with|mode|text|<reference|image
    (preimage) of union , intersections>>><big|cup><rsub|i\<in\>J>f<around*|(|U<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>J>V<rsub|i>>
    \ proving that <math|f<around*|(|C|)>> is compact.
  </proof>

  <\theorem>
    <label|compact subspaces are closed>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then every compact subspace is closed
  </theorem>

  <\proof>
    Let <math|C> be a compact subset of <math|X> then if <math|y\<in\>X\\\\C>
    we have that <math|\<forall\>x\<in\>C> there exists open sets
    <math|U<rsub|x>,V<rsub|x>> such that <math|x\<in\>U<rsub|x>>,
    <math|y\<in\>V<rsub|x>> and <math|U<rsub|x><big|cap>V<rsub|x>\<neq\>\<emptyset\>>.
    So <math|C\<subseteq\><big|cup><rsub|x\<in\>X>U<rsub|x>> and by
    compactness there exists a finite set <math|F\<subseteq\>X> such that
    <math|C\<subseteq\><big|cup><rsub|x\<in\>F>U<rsub|x>>. Now
    <math|y\<in\><big|cap><rsub|z\<in\>F>V<rsub|z>> which is open (because
    <math|F> is finite) and <math|<around*|(|<big|cap><rsub|z\<in\>F>V<rsub|z>|)><big|cap>C\<subseteq\><around*|(|<big|cap><rsub|z\<in\>F>V<rsub|z>|)><big|cap><around*|(|<big|cup><rsub|x\<in\>F>U<rsub|x>|)>=<big|cup><rsub|x\<in\>F><around*|(|<around*|(|<big|cap><rsub|z\<in\>F>V<rsub|z>|)><big|cap>U<rsub|x>|)>\<subseteq\><big|cup><rsub|x\<in\>F><around*|(|V<rsub|x><rsup|><big|cap>U<rsub|x>|)>=<big|cup><rsub|x\<in\>F>\<emptyset\>=\<emptyset\>>
    so that <math|y\<in\><big|cap><rsub|z\<in\>F>V<rsub|x>\<subseteq\>X\\\\C>
    proving that <math|X\\\\C> is open and thus that <math|C> is closed.
  </proof>

  \;

  <\theorem>
    <label|compactness and closed sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then every closed subset of a compact subset of <math|X> is compact.
  </theorem>

  <\proof>
    Let <math|C\<subseteq\>X> be compact and let <math|A\<subseteq\>C> be a
    closed set and let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> be a
    family of open sets covering <math|A> (so
    <math|A\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>>) then as
    <math|C=A<big|cup><around*|(|C\\\\A|)>\<subseteq\>A<big|cup><around*|(|X\\\\A|)>>
    we have that if <math|\<cal-W\>=<around*|{|U<rsub|i\<in\>I>\|i\<in\>I|}><big|cup><around*|{|X\\\\A|}>>
    then <math|<around*|{|W|}><rsub|W\<in\>\<cal-W\>>> covers <math|C>. By
    compactness we have that a finite subset <math|\<cal-V\>> of
    <math|\<cal-W\>> covers <math|C> and thus <math|A so
    A\<subseteq\><big|cup><rsub|U\<in\>\<cal-V\>>U>. If now
    <math|A\<nsubseteq\><big|cup><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>U>
    then there exists a <math|a\<in\>A> with
    <math|a\<in\><big|cup><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>U>
    which as <math|A\<subseteq\><big|cup><rsub|U\<in\>\<cal-V\>>U> means that
    <math|a\<in\>X\\\\A> contradicting that <math|a\<in\>A> so we must have
    that <math|A\<subseteq\><big|cup><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>U>.
    If we define now <math|<around*|{|\<cal-I\><rsub|U>|}><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>>
    by <math|\<cal-I\><rsub|U>=<around*|{|i\<in\>I\|U<rsub|i>=U|}>> then as
    <math|\<cal-V\>\\\\<around*|{|X\\\\A|}>\<subseteq\>\<cal-W\>\\\\<around*|{|X\\\\A|}>=<around*|{|U<rsub|i>\|i\<in\>I|}>>
    we have that <math|\<cal-I\><rsub|U>\<neq\>\<emptyset\>>. Using the axiom
    of choice (see <reference|equivalences of axiom of choice>) we have then
    that there exist a function <math|c:\<cal-V\>\\\\<around*|{|X\\\\A|}>\<rightarrow\><big|cup><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>\<cal-I\><rsub|U>\<nosymbol\>\<subseteq\>I>
    with <math|c<around*|(|U|)>\<in\>\<cal-I\><rsub|U>.> So we have then the
    surjection <math|c:\<cal-V\>\\\\<around*|{|X\\\\A|}>\<rightarrow\>c<around*|(|\<cal-V\>\\\\<around*|{|X\\\\A|}>|)>\<subseteq\>I>
    which means that because <math|\<cal-V\>\\\\<around*|{|X\\\\A|}>> is
    finite that <math|c<around*|(|\<cal-V\>\\\\<around*|{|X\\\\A|}>|)>> is
    finite. Now if <math|a\<in\>A> then as
    <math|A\<subseteq\><big|cup><rsub|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>>U>
    there exist a <math|U\<in\>\<cal-V\>\\\\<around*|{|X\\\\A|}>> such that
    <math|a\<in\>U\<equallim\><rsub|c<around*|(|U|)>\<in\>\<cal-I\><rsub|U>>U<rsub|c<around*|(|U|)>>\<subseteq\><big|cup><rsub|i\<in\>c<around*|(|\<cal-V\>\\\\<around*|{|X\\\\A|}>|)>>U<rsub|i>>
    proving that <math|A\<subseteq\><big|cup><rsub|i\<in\>c<around*|(|\<cal-V\>\\\\<around*|{|X\\\\A|}>|)>>U<rsub|i>>
    and thus that <math|A> is compact.\ 
  </proof>

  <\theorem>
    <label|compact Hausdorf space is regular and normal>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorff compact
    topological space then it is regular and normal.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|regular>Let <math|A> be a closed set and <math|x\<in\>X>
      with <math|x\<nin\>A> then because of Hausdorff we have that
      <math|\<forall\>a\<in\>A> we have the existence of disjoint open sets
      <math|V<rsub|a>,U<rsub|a>> with <math|x\<in\>V<rsub|a>,a\<in\>U<rsub|a>>
      and <math|V<rsub|a><big|cap>U<rsub|a>=\<emptyset\>> then
      <math|A\<subseteq\><big|cup><rsub|a\<in\>A>U<rsub|a>> and because
      <math|A> is compact (closed sets in a compact space are compact) there
      exist a finite <math|B\<subseteq\>A> such that
      <math|A\<subseteq\><big|cup><rsub|a\<in\>B>U<rsub|a>>. We have then
      that <math|V=<big|cap><rsub|a\<in\>B>V<rsub|a>> is a open set (because
      <math|B> is finite), <math|a\<in\>V> and
      <math|V<big|cap>A=<around*|(|<big|cap><rsub|b\<in\>B>V<rsub|b>|)><big|cap>A\<subseteq\><around*|(|<big|cap><rsub|b\<in\>B>V<rsub|b>|)><big|cap><around*|(|<big|cup><rsub|a\<in\>B>U<rsub|a>|)>=<big|cup><rsub|a\<in\>B><around*|(|<around*|(|<big|cap><rsub|b\<in\>B>V<rsub|b>|)><big|cap>U<rsub|a>|)>\<subseteq\><big|cup><rsub|a\<in\>B><around*|(|V<rsub|a><big|cap>U<rsub|a>|)>=\<emptyset\>\<Rightarrow\>V<big|cap>A=\<emptyset\>>
      proving regularity.

      <item><dueto|normal>Let <math|A,B> be two disjoint closed sets then
      <math|\<forall\>a\<in\>A> we have using (1) the existence of disjoint
      open sets <math|V<rsub|a>,U<rsub|a>> so that
      <math|B\<subseteq\>V<rsub|a>> and <math|a\<in\>U<rsub|a>> so that
      <math|A\<subseteq\><big|cup><rsub|a\<in\>A>U<rsub|a>>. From the
      compactness of <math|A> (because closed sets in a compact space are
      compact) \ there exist a finite set <math|F\<subseteq\>A> so that
      <math|A\<subseteq\><big|cup><rsub|a\<in\>F>U<rsub|a>> then
      <math|B\<subseteq\><big|cap><rsub|a\<in\>F>V<rsub|a>> and if we take
      <math|U=<big|cup><rsub|a\<in\>F>U<rsub|a>> (which is open) and
      <math|V=<big|cap><rsub|a\<in\>F>V<rsub|a>> (which is open as <math|F>
      is finite) then <math|A\<subseteq\>U>, <math|B\<subseteq\>V> and
      <math|V<big|cap>U=<around*|(|<big|cap><rsub|b\<in\>B>V<rsub|b>|)><big|cap><around*|(|<big|cup><rsub|a\<in\>B>U<rsub|a>|)>=<big|cup><rsub|a\<in\>B><around*|(|<around*|(|<big|cap><rsub|b\<in\>B>V<rsub|b>|)><big|cap>U<rsub|a>|)>\<subseteq\><big|cup><rsub|a\<in\>B><around*|(|V<rsub|a><big|cap>U<rsub|a>|)>=\<emptyset\>\<Rightarrow\>U<big|cap>V=\<emptyset\>>
      proving normality.
    </enumerate>
  </proof>

  <\theorem>
    <label|compactness and base>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space with a basis <math|\<cal-B\>> then a subset
    <math|C\<subseteq\>X> is compact iff every cover of <math|C> by sets in
    the base contains a finite cover.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>This is trivial from
      <math|\<cal-B\>\<subseteq\>\<cal-T\>>

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> be a family of open sets
      such that <math|C\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>> then
      <math|\<forall\>x\<in\>C> there exists a <math|i<rsub|x>\<in\>I> such
      that <math|x\<in\>U<rsub|i<rsub|x>>> and thus there exist a
      <math|B<rsub|x>\<in\>\<cal-B\>> such that
      <math|x\<in\>B<rsub|x>\<subseteq\>U<rsub|x>>. So we have
      <math|C\<subseteq\><big|cup><rsub|x\<in\>C>B<rsub|x>> and by the
      hypothesis there exists a finite <math|<around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>\<subseteq\>C>
      such that <math|C\<subseteq\><big|cup><rsub|x\<in\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>B<rsub|x>\<Rightarrowlim\><rsub|B<rsub|x>\<subseteq\>U<rsub|i<rsub|x>>><big|cup><rsub|x\<in\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>U<rsub|i<rsub|x>>=<big|cup><rsub|i\<in\><around*|{|i<rsub|x<rsub|1>>,\<ldots\>,i<rsub|x<rsub|n>>|}>>U<rsub|i<rsub|x>><rsub|>>
      proving as <math|<around*|{|i<rsub|x<rsub|1>>,\<ldots\>,i<rsub|x<rsub|n>>|}>>
      is finite that <math|C> is compact.
    </enumerate>
  </proof>

  <\definition>
    <label|sequential compact space><index|sequential compact space>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then a subset <math|C> is called sequential compact if every infinite
    <math|B\<subseteq\>C> has a limit point (see <reference|limit point>)
    that is in <math|C>.
  </definition>

  <\theorem>
    <label|compact subspaces are sequential compact>A compact subspace of a
    topological space <math|<around*|\<langle\>|X,T|\<rangle\>>> is
    sequential compact
  </theorem>

  <\proof>
    We proceed by contradiction. Let <math|C> be a compact subset and let
    <math|B\<subseteq\>C> be a infinite subset that does not have a limit
    point in <math|C>. Then <math|\<forall\>x\<in\>C> there exists a open
    <math|U<rsub|x>> with <math|x\<in\>U<rsub|x>> and
    <math|U<rsub|x><big|cap><around*|(|B\\\\<around*|{|x|}>|)>=\<emptyset\>>.
    If <math|y\<in\>U<rsub|x><big|cap>B> then if
    <math|y\<neq\>x\<Rightarrow\>y\<nin\><around*|{|x|}>\<Rightarrow\>y\<in\><around*|(|U<rsub|x><big|cap>B|)>\\\\<around*|{|x|}>=U<rsub|x><big|cap><around*|(|B\\\\<around*|{|x|}>|)>>
    contradicting <math|U<rsub|x><big|cap><around*|(|B\\\\<around*|{|x|}>|)>=\<emptyset\>>
    so we must have <math|y=x> or <math|U<rsub|x><big|cap>B\<subseteq\><around*|{|x|}>>.
    Now <math|C\<subseteq\><big|cup><rsub|x\<in\>C>U<rsub|x>> and as <math|C>
    is compact there exists a <math|F\<subseteq\>C> such that
    <math|C\<subseteq\><big|cup><rsub|x\<in\>C>U<rsub|x>> and thus
    <math|B\<equallim\><rsub|B\<subseteq\>C>B<big|cap>C=B<big|cap><around*|(|<big|cup><rsub|x\<in\>F>U<rsub|x>|)>=<big|cup><rsub|x\<in\>F><around*|(|B<big|cap>U<rsub|x>|)>\<subseteq\><big|cup><rsub|x\<in\>F><around*|{|x|}>=F>
    which is finite contradicting that <math|B> is infinite.
  </proof>

  <\theorem>
    <label|ball cover of a metric space>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space equipped
    with the metric topology. Let <math|K\<subseteq\>X> be a sequential
    compact subset of <math|X> and <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>>
    be a open cover of <math|K> then <math|\<exists\>\<delta\>\<in\>\<bbb-R\><rsub|+>>
    such that <math|\<forall\>x\<in\>K> there
    <math|\<exists\>i<rsub|x>\<in\>I> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U<rsub|i<rsub|x>>>
  </theorem>

  <\proof>
    We prove this by contradiction. So assume that
    <math|\<forall\>\<delta\>\<in\>\<bbb-R\><rsub|+>> there
    <math|\<exists\>x\<in\>K> such that <math|\<forall\>i\<in\>I> we have
    <math|B<rsub|d><around*|(|x,\<delta\>|)>\<nsubseteq\>U<rsub|i>>. In
    particular this means that (using the isomorphism
    <math|i<rsub|\<bbb-Q\><rsub|\<bbb-N\>>>:\<bbb-N\>\<rightarrow\>\<bbb-N\><rsub|\<bbb-R\>>\<subseteq\>\<bbb-R\>>
    (see <reference|properties of natural numbers embedded in the reals>) and
    noting <math|i<rsub|Q<rsub|\<bbb-N\>>><around*|(|n|)>> by <math|n>) we
    have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> there exists a
    <math|x<rsub|n>\<in\>K> such that <math|\<forall\>i\<in\>I> we have
    <math|B<rsub|d><around*|(|x<rsub|n>,<frac|1|n>|)>\<nsubseteq\>U<rsub|i>>.
    This defines a sequence <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    of elements in <math|K> such that <math|B<rsub|d><around*|(|x<rsub|n>,<frac|1|n>|)>\<nsubseteq\>U<rsub|i>>
    <math|\<forall\>i\<in\>I,\<forall\>n\<in\>\<bbb-N\><rsub|0>>. Define now
    the set <math|O=<around*|{|x<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>\<subseteq\>K>.
    If this set was finite then using <reference|mapping of N into a finite
    set> there exists a <math|x<rsub|N>\<in\>O> such that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> there exists a
    <math|m\<in\>\<bbb-N\><rsub|0>> with <math|m\<geqslant\>n> and
    <math|x<rsub|m>=x<rsub|N>>. Now as <math|x<rsub|N>\<in\>O\<subseteq\>K\<Rightarrowlim\><rsub|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>
    is a open cover of K>\<exists\>i\<in\>I> with
    <math|x<rsub|N>\<in\>U<rsub|i>\<Rightarrowlim\><rsub|U<rsub|i> is
    open>\<exists\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> such that
    <math|x<rsub|N>\<subseteq\>B<rsub|d><around*|(|x<rsub|N>,\<varepsilon\>|)>\<subseteq\>U<rsub|i>>.
    Take then <math|M\<in\>\<bbb-N\><rsub|\<bbb-R\>>> such that
    <math|0\<less\><frac|1|M>\<less\>\<varepsilon\>> (see
    <reference|consequence of the archimedean property for the reals>) then
    by the above there exists a <math|m\<in\>\<bbb-N\><rsub|0>> with
    <math|m\<geqslant\>M> (and thus <math|<frac|1|M>\<geqslant\><frac|1|m>>)
    so that <math|x<rsub|N>=x<rsub|m>>, from this it follows that
    <math|x<rsub|m>\<in\>B<rsub|d><around*|(|x<rsub|m>,<frac|1|m>|)>=B<rsub|d><around*|(|x<rsub|N>,<frac|1|m>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|N>,<frac|1|M>|)>\<subseteq\>B<rsub|d><around*|(|x<rsub|n>,\<varepsilon\>|)>\<subseteq\>U<rsub|i>>
    contradicting the fact that <math|B<rsub|d><around*|(|x<rsub|m>,<frac|1|m>|)>\<nsubseteq\>U<rsub|i>>
    <math|\<forall\>i\<in\>I>. We must thus conclude that <math|O> is
    infinite. As <math|K> is sequential compact we have thus a limit point
    <math|k\<in\>K> for <math|O>. Given that
    <math|K\<subseteq\><big|cup><rsub|i\<in\>I>U<rsub|i>> there exists a
    <math|i<rsub|0>\<in\>I> such that <math|k\<in\>U<rsub|i<rsub|0>>\<Rightarrowlim\><rsub|U<rsub|i<rsub|0>>
    is open>\<exists\>\<varepsilon\><rsub|0>\<in\>\<bbb-R\><rsub|+>> such
    that <math|k\<in\>B<rsub|d><around*|(|k,\<varepsilon\><rsub|0>|)>\<subseteq\>U<rsub|i<rsub|0>>>.
    The set <math|P=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|x<rsub|n>\<in\>B<rsub|d><around*|(|k,<frac|\<varepsilon\><rsub|0>|2>|)>|}>>
    is a infinite set of natural numbers [if it was finite we could take
    <math|\<varepsilon\>=min<around*|(|<frac|\<varepsilon\><rsub|0>|2>,min<around*|(|<around*|{|d<around*|(|k,x<rsub|i>|)>\|i\<in\>P|}>|)>|)>>
    [<math|min<around*|(|<around*|{|d<around*|(|k,x<rsub|i>|)>\|i\<in\>P|}>|)>>
    exists if <math|P> is finite] then <math|k\<in\>B<rsub|d><around*|(|k,\<varepsilon\>|)>\<subseteq\>B<rsub|d><around*|(|k,<frac|\<varepsilon\><rsub|0>|2>|)>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have either
    <math|i\<nin\>P> so that then <math|x<rsub|i>\<nin\>B<rsub|d><around*|(|k,<frac|\<varepsilon\><rsub|0>|2>|)>\<supseteq\>B<rsub|d><around*|(|k,\<varepsilon\>|)>\<Rightarrow\>x<rsub|i>\<nin\>B<rsub|d><around*|(|k,\<varepsilon\>|)>>
    or <math|i\<in\>P> and then as <math|d<around*|(|k,x<rsub|i>|)>\<geqslant\>\<varepsilon\>>
    we have <math|x<rsub|i>\<nin\>B<rsub|d><around*|(|k,\<varepsilon\>|)>>.
    So <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|x<rsub|i>\<nin\>B<rsub|d><around*|(|k,\<varepsilon\>|)>\<Rightarrow\>O<big|cap>B<rsub|d><around*|(|k,\<varepsilon\>|)>=\<emptyset\>>
    contradicting the fact that <math|k> is the limit point of <math|O>. So
    we must have that <math|P> is infinite]. As
    <math|P\<subseteq\>\<bbb-N\><rsub|0>> is infinite there exists a
    <math|m\<in\>P> such that <math|<frac|1|m>\<less\><frac|\<varepsilon\><rsub|0>|2>>
    [using <reference|consequence of the archimedean property for the reals>
    there exist a <math|N\<in\>\<bbb-N\><rsub|0>> such that
    <math|<frac|1|N>\<less\><frac|\<varepsilon\><rsub|0>|2>> and as <math|P>
    is infinite we have that <math|P\<nsubseteq\>S<rsub|N>=<around*|{|1,\<ldots\>,N-1|}>>
    so that <math|\<exists\>m\<in\>P> with
    <math|m\<in\><around*|{|1,\<ldots\>,N-1|}>\<Rightarrow\>m\<gtr\>N-1\<Rightarrow\>m\<geqslant\>N\<Rightarrow\><frac|1|m>\<leqslant\><frac|1|N>\<less\><frac|\<varepsilon\><rsub|0>|2>>],
    as <math|m\<in\>P> we have that <math|x<rsub|m>\<in\>B<rsub|d><around*|(|k,<frac|\<varepsilon\><rsub|0>|2>|)>\<Rightarrow\>d<around*|(|k,x<rsub|m>|)>\<less\><frac|\<varepsilon\><rsub|0>|2>>.
    Now if <math|z\<in\>B<rsub|d><around*|(|x<rsub|m>,<frac|1|m>|)>\<Rightarrow\>d<around*|(|x<rsub|m>,z|)>\<less\><frac|1|m>\<Rightarrow\>d<around*|(|k,z|)>\<leqslant\>d<around*|(|k,x<rsub|m>|)>+d<around*|(|x<rsub|m>,z|)>\<less\><frac|\<varepsilon\><rsub|0>|2>+<frac|1|m>\<less\><frac|\<varepsilon\><rsub|0>|2>+<frac|\<varepsilon\><rsub|0>|2>=\<varepsilon\><rsub|0>\<Rightarrow\>z\<in\>B<rsub|d><around*|(|k,\<varepsilon\><rsub|0>|)>\<Rightarrow\>B<rsub|d><around*|(|x<rsub|m>,<frac|1|m>|)>\<subseteq\>B<rsub|d><around*|(|k,\<varepsilon\><rsub|0>|)>\<subseteq\>U<rsub|i<rsub|0>>>
    contradicting the fact that <math|\<forall\>i\<in\>I> we have
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
    <math|B<rsub|d><around*|(|x<rsub|n>,<frac|1|n>|)>\<nsubseteq\>U<rsub|i>>.
  </proof>

  <\theorem>
    <label|compactness and sequential compactness>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> be a metric space with the
    metric topology and <math|K\<subseteq\>X> then the following are
    equivalent

    <\enumerate>
      <item><math|K> is compact

      <item><math|K> is sequential compact
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>This is already proved in
      <reference|compact subspaces are sequential compact>

      <item><dueto|<math|\<Leftarrow\>>>Let <math|K> be sequential compact
      and <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>I>> a cover of <math|K>.
      If <math|K=\<emptyset\>> then it is trivially compact so lets assume
      that <math|K\<neq\>\<emptyset\>>. Using <reference|ball cover of a
      metric space> there exists a <math|\<delta\>\<in\>\<bbb-R\><rsub|+>>
      such that <math|\<forall\>x\<in\>K> there exists a <math|i\<in\>I> such
      that <math|x\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<subseteq\>U<rsub|i>>.
      If we prove now that

      <\equation>
        <label|eq 11.17>\<exists\>F <around*|(|finite|)>\<subseteq\>K\<nocomma\>
        such that K\<subseteq\><big|cup><rsub|x\<in\>F>B<rsub|d><around*|(|x,\<delta\>|)>
      </equation>

      then <math|\<forall\>f\<in\>F> there exists a <math|j<rsub|f>\<in\>I>
      such that <math|x<rsub|j<rsub|f>>\<in\>B<rsub|d><around*|(|x<rsub|j<rsub|f>>,\<delta\>|)>\<subseteq\>U<rsub|j<rsub|f>>>
      defining a function <math|\<sigma\>:F\<rightarrow\>I> given by
      <math|f\<rightarrow\>j<rsub|f>> (by the Axiom of Choice
      <reference|construction of a function using Axiom of choice>) so that
      <math|K\<subseteq\><big|cup><rsub|f\<in\>F>B<rsub|d><around*|(|x<rsub|\<sigma\><around*|(|f|)>>,\<delta\>|)>\<subseteq\><big|cup><rsub|f\<in\>F>U<rsub|\<sigma\><around*|(|f|)>>=<big|cup><rsub|j\<in\>P>U<rsub|j>>
      where <math|P=\<sigma\><around*|(|F|)>\<subseteq\>I> is finite, proving
      compactness. We prove <reference|eq 11.17> by contradiction. So assume
      that

      <\equation>
        <label|eq 11.18>\<forall\>F <around*|(|finite|)>\<subseteq\>K we have
        that K\<nsubseteq\><big|cup><rsub|x\<in\>F>B<rsub|d><around*|(|x,\<delta\>|)>
      </equation>

      Given a family <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
      we have that the set <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|0,\<ldots\>,n|}>|}>>
      is finite so that there exists a <math|\<rho\><around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>|)>\<in\>K\\\\<around*|(|<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>B<rsub|d><around*|(|x<rsub|i>,\<delta\>|)>|)>>,
      using the Axiom of Choice (see <reference|construction of a function
      using Axiom of choice>) this defines a function
      <math|\<rho\>:\<cal-M\>=<around*|{|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\>\<wedge\>\<forall\>i\<in\><around*|{|0,\<ldots\>n|}>
      we have x<rsub|i>\<in\>K|}>\<rightarrow\>K>. As
      <math|K\<neq\>\<emptyset\>> there exists a <math|x<rsub|0>\<in\>K> so
      that using recursion (see <reference|recursion sequence form>) there
      exists a sequence <math|f:\<bbb-N\>\<rightarrow\>K> such that\ 

      <\enumerate>
        <item><math|f<around*|(|0|)>=x<rsub|0>>

        <item><math|f<around*|(|n+1|)>=\<rho\><around*|(|<around*|{|f<around*|(|i|)><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>|)>\<in\>K\\\\<around*|(|<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>B<rsub|d><around*|(|f<around*|(|i|)>,\<delta\>|)>|)>>
      </enumerate>

      Or if <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|x<rsub|n>\<nin\>K\\\\<around*|(|<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,n-1|}>>B<rsub|d><around*|(|f<around*|(|i|)>,\<delta\>|)>|)>>.
      If now <math|i\<neq\>j> then we have <math|i\<less\>j> (for the other
      case just switch <math|i> and <math|j>) then
      <math|f<around*|(|i|)>\<nin\>B<rsub|d><around*|(|f<around*|(|j|)>,\<delta\>|)>\<Rightarrow\>d<around*|(|f<around*|(|i|)>,f<around*|(|j|)>|)>\<geqslant\>\<delta\>\<gtr\>0\<Rightarrow\>f<around*|(|i|)>\<neq\>f<around*|(|j|)>>
      proving that <math|f> is injective. Using <reference|injection from a
      infinite set> we have then that <math|O=f<around*|(|\<bbb-N\>|)>\<subseteq\>K>
      is finite so it has a accumulation point <math|x\<in\>K> (because of
      sequential compactness). Take then <math|B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>>
      then there exists a <math|i\<in\>\<bbb-N\>> such that
      <math|f<around*|(|i|)>\<neq\>x\<Rightarrow\>d<around*|(|x,f<around*|(|i|)>|)>\<gtr\>0>
      and <math|f<around*|(|i|)>\<in\>B<rsub|d><around*|(|x,<frac|\<delta\>|2>|)>>,
      if we take then <math|\<varepsilon\>=min<around*|(|<frac|\<delta\>|4>,<frac|d<around*|(|x,f<around*|(|i|)>|)>|2>|)>>
      then <math|d<around*|(|x,f<around*|(|i|)>|)>\<gtr\>\<varepsilon\>\<Rightarrow\>f<around*|(|i|)>\<nin\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>.
      If <math|m\<neq\>i> and <math|f<around*|(|m|)>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<equallim\><rsub|f<around*|(|i|)>\<nin\>B<rsub|d><around*|(|f<around*|(|m|)>,\<delta\>|)>
      or f<around*|(|m|)>\<nin\>B<rsub|d><around*|(|f<around*|(|i|)>,\<delta\>|)>>\<delta\>\<leqslant\>d<around*|(|f<around*|(|m|)>,f<around*|(|i|)>|)>\<leqslant\>d<around*|(|f<around*|(|m|)>,x|)>+d<around*|(|x,f<around*|(|i|)>|)>\<less\>\<varepsilon\>+<frac|\<delta\>|2>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>
      giving the contradiction <math|\<delta\>\<less\>\<delta\>> so we must
      have that <math|f<around*|(|m|)>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>
      this together with <math|f<around*|(|i|)>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>>
      proves that <math|O=f<around*|(|\<bbb-N\>|)><big|cap>B<rsub|d><around*|(|x,\<varepsilon\>|)>=\<emptyset\>>
      contradicting the fact that <math|x> is a accumulation point of
      <math|O>. So <reference|eq 11.18> is false proving <reference|eq 11.17>
      and thus the theorem.
    </enumerate>
  </proof>

  <\theorem>
    <label|principle of nested intervals>Let
    <math|<around*|[|a<rsub|i>,b<rsub|i>|]>>,
    <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>>,<math|i\<in\>\<bbb-N\>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>> be a decreasing sequence [so
    <math|<around*|[|a<rsub|i+1>,b<rsub|i+1>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>]
    of closed bounded intervals in <math|\<bbb-R\>> then\ 

    <\enumerate>
      <item><math|\<exists\>a,b\<in\>\<bbb-R\>,a\<leqslant\>b> such that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|[|a,b|]>>

      <item>If the sequence <math|<around*|{|b<rsub|i>-a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      has the limit <math|0> then there exists a number <math|a> such that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|{|a|}>>
    </enumerate>
  </theorem>

  <\proof>
    First we prove by induction that <math|\<forall\>i,j\<in\>\<bbb-N\>> with
    <math|i\<leqslant\>j> we have <math|a<rsub|i>\<leqslant\>a<rsub|j>\<leqslant\>b<rsub|j>\<leqslant\>b<rsub|i>>
    so let <math|S<rsub|i>=<around*|{|n\<in\>\<bbb-N\>\|a<rsub|i>\<leqslant\>a<rsub|i+n>\<leqslant\>b<rsub|i+n>\<leqslant\>b<rsub|i>|}>>
    then we have\ 

    <\enumerate>
      <item>if <math|n=0> then <math|a<rsub|i>\<leqslant\>a<rsub|i+0>\<leqslant\>b<rsub|i+0>\<leqslant\>b<rsub|i>>
      proving that <math|0\<in\>S>

      <item>If <math|n\<in\>\<bbb-N\>> then
      <math|<around*|[|a<rsub|i+<around*|(|n+1|)>>,b<rsub|i+<around*|(|n+1|)>>|]>\<subseteq\><around*|[|a<rsub|i+n>,b<rsub|i+1>|]>\<Rightarrowlim\><rsub|n\<in\>S>a<rsub|i>\<leqslant\>a<rsub|i+n>\<leqslant\>a<rsub|i+<around*|(|n+1|)>>\<leqslant\>b<rsub|i+<around*|(|n+1|)>>\<leqslant\>b<rsub|i+n>\<leqslant\>b<rsub|i>>
      proving that <math|n+1\<in\>S>
    </enumerate>

    Using induction we have then that <math|S=\<bbb-N\>> so if
    <math|i\<leqslant\>j> then <math|j-i\<in\>\<bbb-N\>=S\<Rightarrow\>a<rsub|i>\<leqslant\>a<rsub|i+<around*|(|j-i|)>>=a<rsub|j>\<leqslant\>b<rsub|j>=b<rsub|i+<around*|(|j-i|)>>\<leqslant\>b<rsub|i>>.
    Specially we have that <math|\<forall\>i\<in\>\<bbb-N\>> that
    <math|a<rsub|0>\<leqslant\>a<rsub|i>\<leqslant\>b<rsub|i>\<leqslant\>b<rsub|0>>.\ 

    <\enumerate>
      <item><math|A=<around*|{|a<rsub|i>\|i\<in\>\<bbb-N\>|}>> is then
      bounded above by <math|b<rsub|0>> and
      <math|B=<around*|{|b<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>> is bounded
      below by <math|a<rsub|0>> so using <reference|the reals are conditional
      complete> and <reference|alternative definition for conditional
      completeness> there exists a <math|a=sup<around*|(|A|)>> and
      <math|b=inf<around*|(|B|)>>. As <math|\<forall\>i,j\<in\>\<bbb-N\>> we
      have either <math|i\<leqslant\>j> so that
      <math|a<rsub|i>\<leqslant\>a<rsub|j>\<leqslant\>b<rsub|j>> or
      <math|j\<leqslant\>i> then <math|a<rsub|i>\<leqslant\>b<rsub|i>\<leqslant\>b<rsub|j>>
      so in all case we have <math|a<rsub|i>\<leqslant\>b<rsub|j>> and thus
      <math|a<rsub|i>\<leqslant\>inf<around*|(|B|)>> and
      <math|a=sup<around*|(|A|)>\<leqslant\>inf<around*|(|B|)>=b\<Rightarrow\>a\<leqslant\>b>.
      And <math|\<forall\>i\<in\>\<bbb-N\>> we have by the definition of
      <math|inf> and <math|sup> that <math|a<rsub|i>\<leqslant\>a\<leqslant\>b\<leqslant\>b<rsub|i>>
      so that <math|<around|[|a,b|]>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>>.
      Now assume that <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|a<rsub|i>\<leqslant\>x\<leqslant\>b<rsub|i>> so <math|x> is a
      upper bound for <math|A> and a lower bound for <math|B> so that
      <math|a\<leqslant\>x\<leqslant\>b\<Rightarrow\>x\<in\><around*|[|a,b|]>>
      proving that <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|[|a,b|]>>

      <item>By (1) we have that there exists a <math|a,b\<in\>\<bbb-R\>> with
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|[|a,b|]>>.
      Suppose now that <math|a\<less\>b> then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|a<rsub|i>\<leqslant\>a\<less\>b\<leqslant\>b<rsub|i>\<Rightarrow\>0\<less\>b-a\<leqslant\>b<rsub|i>-a\<leqslant\>b<rsub|i>-a<rsub|i>>.
      Now as by hypothesis we have that <math|<around*|{|b<rsub|i>-a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      has limit <math|0> then given <math|\<varepsilon\>=b-a\<gtr\>0> choose
      <math|N\<in\>\<bbb-N\>> such that <math|\<forall\>i\<geqslant\>\<bbb-N\>>
      we have <math|b<rsub|i>-a<rsub|i>=<around*|\||b<rsub|i>-a<rsub|i>|\|>\<less\>\<varepsilon\>\<Rightarrow\>\<varepsilon\>=b-a\<leqslant\>b<rsub|N>-a<rsub|N>\<less\>\<varepsilon\>>
      giving the contradiction <math|\<varepsilon\>\<less\>\<varepsilon\>> so
      we must have that <math|a=b> but then
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|[|a,a|]>=<around*|{|a|}>>
    </enumerate>
  </proof>

  <\theorem>
    <label|[a,b] is compact>Let <math|<around*|[|a,b|]>,a\<leqslant\>b,a,b\<in\>\<bbb-R\>>
    be a closed and bounded interval in <math|\<bbb-R\>> then
    <math|<around*|[|a,b|]>> is a compact subset in <math|\<bbb-R\>> (using
    the norm topology generated by <math|<around*|\|||\|>>)
  </theorem>

  <\proof>
    The proof is divided in two cases as <math|a\<leqslant\>b>

    <\enumerate>
      <item><dueto|<math|a=b>>then <math|<around*|[|a,b|]>=<around*|{|a|}>>
      and if <math|<big|cup><rsub|i\<in\>I>U*<rsub|i>> is a covering of
      <math|<around*|{|a|}>> then there exists a <math|i\<in\>I> such that
      <math|a\<in\>U<rsub|i>\<Rightarrow\><around*|[|a,b|]>=<around*|{|a|}>\<subseteq\><big|cup><rsub|j\<in\><around*|{|i|}>>U<rsub|j>>
      proving as <math|<around*|{|a|}>> is finite compactness

      <item><dueto|<math|a\<less\>b>>Here we proceed by contradiction and
      assume that <math|<around*|[|a,b|]>> is not compact. Then there exists
      by <reference|topology of real complex numbers> and
      <reference|compactness and base> a family
      <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>
      of open intervals such that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|a<rsub|i>,b<rsub|i>|)>>
      that does not contains a finite cover. If we define now
      <math|\<cal-A\>=<around*|{|<around*|[|x,y|]>\|x,y<rsub|>\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>x\<less\>y\<leqslant\>b
      and <around*|[|x,y|]> is not covered by a finite subcover of
      <around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>|}>> and
      <math|\<cal-M\>=<around*|{|<around*|{|<around*|[|x<rsub|i>,y<rsub|i>|]>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\>\<wedge\><around*|[|x<rsub|i>,y<rsub|i>|]>\<in\>\<cal-A\>|}>>.
      Then if <math|<around*|{|<around*|[|x<rsub|i>,y<rsub|i>|]>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<in\>\<cal-M\>>
      we have that <math|<around*|[|x<rsub|n>,y<rsub|n>|]>> is not covered by
      a finite subset of <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|]>|}><rsub|i\<in\>I>>
      and as <math|<around*|[|x<rsub|n>,y<rsub|n>|]>\<in\>\<cal-A\>> we have
      that <math|a\<leqslant\>x<rsub|n>\<less\>y<rsub|n>\<leqslant\>b>, take
      now <math|c=x<rsub|n>+<frac|y<rsub|n>-x<rsub|n>|2>>. Then if
      <math|<around*|[|x<rsub|i>,c|]>,<around*|[|c,y<rsub|i>|]>> are both
      covered by finite sub-cover of <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>
      there exists finite <math|A,B\<subseteq\>I> such that
      <math|<around*|[|x<rsub|n>,c|]>\<subseteq\><big|cup><rsub|i\<in\>A><around*|(|a<rsub|i>,b<rsub|i>|)>\<wedge\><around*|[|c,y<rsub|n>|]>\<subseteq\><big|cup><rsub|i\<in\>B><around*|(|a<rsub|i>,b<rsub|i>|)>\<Rightarrow\><around*|[|x<rsub|n>,y<rsub|n>|]>\<subseteq\><big|cup><rsub|i\<in\>A<big|cup>B><around*|(|a<rsub|i>,b<rsub|i>|)>>
      meaning that <math|<around*|[|x<rsub|i>,y<rsub|i>|]>> would be covered
      by a finite sub cover of <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>
      a contradiction. So either <math|<around*|[|x<rsub|n>,c<rsub|>|]> or
      <around*|[|c,y<rsub|n>|]>> is not covered by a finite sub cover of
      <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>.
      Consider then the two cases to construct a <math|<around*|[|x,y|]>>

      <\enumerate>
        <item><dueto|<math|<around*|[|x<rsub|n>,c|]> is not covered by a
        finite subcover of <around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>>take
        then <math|<around*|[|x,y|]>=<around*|[|x<rsub|n>,c|]>\<subseteq\><around*|[|x<rsub|n>,y<rsub|n>|]>>,
        <math|<around*|[|x,y|]>> is not covered by a finite sub cover of
        <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>
        and <math|y<rsub|>-x=x<rsub|n>+<frac|y<rsub|n>-x<rsub|n>|2>-x<rsub|n>=<frac|y<rsub|n>-x<rsub|n>|2>>
        and <math|a\<leqslant\>x<rsub|n>\<leqslant\>x\<less\>y\<leqslant\>y<rsub|n>\<leqslant\>b>

        <item><dueto|<math|<around*|[|x<rsub|n>,c|]> is covered by a finite
        subcover of <around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>>then
        <math|<around*|[|c,y<rsub|n>|]>><math| is not covered by a finite
        subcover of <around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>.
        Take then <math|<around*|[|x,y|]>=<around*|[|c,y<rsub|n>|]>\<subseteq\><around*|[|x<rsub|n>,y<rsub|n>|]>>
        and <math|y-x=y<rsub|n>-<around*|(|x<rsub|n>+<frac|y<rsub|n>-x<rsub|n>|2>|)>=<around*|(|y<rsub|n>-x<rsub|n>|)>-<frac|y<rsub|n>-x<rsub|n>|2>=<frac|y<rsub|n>-x<rsub|n>|2>>
        and <math|a\<leqslant\>x<rsub|n>\<leqslant\>x\<less\>y\<less\>y<rsub|n>\<leqslant\>b>
      </enumerate>

      this defines a function <math|\<delta\>:\<cal-M\>\<rightarrow\>\<cal-A\>>
      mapping <math|<around*|{|<around*|[|x<rsub|i>,y<rsub|i>|]>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<rightarrow\>\<delta\><around*|(|<around*|{|<around*|[|x<rsub|i>,y<rsub|i>|]><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>|}>|)>=<around*|[|x,y|]>>
      such that <math|<around*|[|x-y|]>\<in\>\<cal-A\>> and
      <math|<around*|[|x,y|]>\<subseteq\><around*|[|x<rsub|n>,y<rsub|n>|]>>.
      Using recursion and the fact that <math|<around*|[|a,b|]>\<in\>\<cal-A\>>
      (see <reference|recursion restricted sequence>) we have found a
      sequence <math|<around*|{|<around*|[|x<rsub|i>,y<rsub|i>|]>|}><rsub|i\<in\>\<bbb-N\>>>
      such that <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|<around*|[|x<rsub|i>,y<rsub|i>|]>> is not covered by a finite sub
      cover of <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>I>>,
      <math|a\<leqslant\>x<rsub|i>\<less\>y<rsub|i>\<leqslant\>b>,
      <math|<around*|[|x<rsub|0>,y<rsub|0>|]>=<around*|[|a,b|]>> and
      <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|<around*|[|x<rsub|i+1>,y<rsub|i+1>|]>\<subseteq\><around*|[|x<rsub|i>,y<rsub|i>|]>>
      and <math|y<rsub|i>-x<rsub|i>=<frac|b-a|2<rsup|i>>>. Using the previous
      theorem and the fact that <math|<around*|{|<frac|b-a|2<rsup|i>>|}><rsub|i\<in\>\<bbb-N\>>>
      converges to <math|0>, we have <math|\<exists\>c\<in\>\<bbb-R\>> a such
      that <math|<around*|{|c|}>=<big|cap><rsub|i\<in\>\<bbb-N\>><around*|[|x<rsub|i>,y<rsub|i>|]>\<subseteq\><around*|[|x<rsub|0>,y<rsub|0>|]>=<around*|[|a,b|]>>.
      As <math|c\<in\><around*|[|a,b|]>> there exists a <math|i\<in\>I> such
      that <math|c\<in\><around*|(|a<rsub|i>,b<rsub|i>|)>\<Rightarrow\>a<rsub|i>\<less\>c\<less\>b<rsub|i>>.
      Take now <math|\<varepsilon\>=<frac|1|2>\<cdot\>min<around*|(|c-a<rsub|i>,b<rsub|i>-c|)>\<gtr\>0>
      and choose a <math|j\<in\>\<bbb-N\>> such that
      <math|y<rsub|j>-x<rsub|j>=<around*|\||y<rsub|j>-x<rsub|j><rsub|>|\|>=<frac|b-a|2<rsup|j>>\<less\>\<varepsilon\>>
      [<math|<around*|{|<frac|b-a|2<rsup|i>>|}><rsub|i\<in\>\<bbb-N\>>>converges
      to <math|0> (see <reference|convergence of powersequence>)]. Then
      <math|c\<in\><around*|[|x<rsub|j>,y<rsub|j>|]>\<Rightarrow\>x<rsub|j>\<leqslant\>c\<leqslant\>y<rsub|j>\<Rightarrow\>0\<leqslant\>c-x<rsub|j>\<leqslant\>y<rsub|j>-x<rsub|j>\<less\>\<varepsilon\>\<leqslant\>c-a<rsub|i>\<Rightarrow\>-x<rsub|j>\<less\>-a<rsub|i>\<Rightarrow\>a<rsub|i>\<less\>x<rsub|j>>
      also <math|y<rsub|j>-c\<less\>y<rsub|j>-x<rsub|j>\<less\>\<varepsilon\>\<leqslant\>b<rsub|i>-c\<Rightarrow\>y<rsub|j>\<less\>b<rsub|i>>
      which proves that <math|a<rsub|i>\<less\>x<rsub|j>\<less\>y<rsub|j>\<less\>b<rsub|i>\<Rightarrow\><around*|[|x<rsub|j>,y<rsub|j>|]>\<subseteq\><around*|(|a<rsub|i>,b<rsub|i>|)>>
      proving that <math|<around*|[|x<rsub|j>,y<rsub|j>|]>> is covered by a
      finite sub cover of <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>>>
      which is a contradiction. So the assumption that
      <math|<around*|[|a,b|]>> is not compact leads to a contradiction and so
      <math|<around*|[|a,b|]>> is compact. \ \ 
    </enumerate>
  </proof>

  <\theorem>
    <label|continuous functions on a compact set are uniform continue>Let
    <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be metric spaces
    <math|K\<subseteq\>X> a compact subset and <math|f:X\<rightarrow\>Y> a
    continuous function then <math|f> is uniform continuous in <math|K> (see
    <reference|uniform continuous>)
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<gtr\>0> then by continuity of <math|f> at
    <math|x\<in\>K> (see <reference|continuity in metric spaces>) there
    exists a <math|\<delta\><rsub|x>\<in\>\<bbb-R\><rsub|+>> such that if
    <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\><rsub|x>> then
    <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\><frac|\<varepsilon\>|2>>.
    The family <math|<around*|{|B<rsub|d<rsub|X>><around*|(|x,\<delta\><around*|(|x|)>|)>|}><rsub|x\<in\>K>>
    covers <math|K> so by compactness there exist a finite set
    <math|<around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>> such that
    <math|K\<subseteq\><big|cup><rsub|x\<in\><around*|{|x<rsub|1>,\<ldots\>x<rsub|n>|}>>B<rsub|d<rsub|X>><around*|(|x,<frac|\<delta\><around*|(|x|)>|2>|)>>.
    Take now <math|\<delta\>=min<around*|(|<around*|{|<frac|\<delta\><around*|(|x|)>|2>\|x\<in\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>|}>|)>>.
    Then if <math|x,y\<in\>K> with <math|d<rsub|X><around*|(|x,y|)>\<less\>\<delta\>>
    then there exists a <math|x<rsub|i>\<in\><around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>
    such that <math|x\<in\>B<rsub|d<rsub|X>><around*|(|x<rsub|i>,\<delta\><around*|(|x<rsub|i>|)>|)>>
    so that <math|d<rsub|X><around*|(|x<rsub|i>,y|)>\<leqslant\>d<rsub|X><around*|(|x<rsub|i>,x|)>+d<rsub|X><around*|(|x,y|)>\<less\><frac|\<delta\><around*|(|x<rsub|i>|)>|2>+\<delta\>\<leqslant\><frac|\<delta\><around*|(|x<rsub|i>|)>|2>+<frac|\<delta\><around*|(|x<rsub|i>|)>|2>=\<delta\><around*|(|x<rsub|i>|)>>,
    so we have that <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>d<around*|(|f<around*|(|x|)>,f<around*|(|x<rsub|i>|)>|)>+d<around*|(|f<around*|(|x<rsub|i>|)>,f<around*|(|y|)>|)>\<leqslant\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
  </proof>

  <subsection|Filter bases in Topological spaces>

  To prove Tychonoff's theorem, that essentially says that any product of non
  empty compact topological spaces is compact in the product topology, we
  must develop a whole theoretical framework of filter bases.

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space. A filter base <math|\<frak-U\>> in <math|X> is a nonempty family
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    of subsets of <math|X> (<math|\<bbb-U\>\<neq\>\<emptyset\>>) such that

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have that
      <math|A<rsub|\<alpha\>>\<neq\>\<emptyset\>>

      <item><math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-U\>> we have
      <math|\<exists\>\<gamma\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>>
      (this of course implies then that the intersection is non empty)
    </enumerate>
  </definition>

  Using mathematical induction it is then easy to prove the following theorem

  <\theorem>
    <label|finite subset of filterbase>Let
    <math|<around*|\<langle\>|X,T|\<rangle\>>> be a topological space and
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    a filter base then for each finite <math|<around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>\<subseteq\>\<bbb-U\>>
    there exists a <math|\<gamma\>\<in\>\<bbb-U\>> such that
    <math|A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\><around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>>A<rsub|\<alpha\>>>
  </theorem>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
    <around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>\<subseteq\>\<bbb-U\>
    then \<exists\>\<gamma\>\<in\>\<bbb-U\> such that
    A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<alpha\>\<in\>\<bbb-U\>>A<rsub|\<alpha\>>|}>>
    then we have\ 

    <\enumerate>
      <item>if <math|n=1> then if <math|<around*|{|a<rsub|1>|}>\<in\>\<bbb-U\>>
      then <math|A<rsub|\<alpha\><rsub|1>>=<big|cup><rsub|\<alpha\>\<in\><around*|{|\<alpha\><rsub|1>|}>>A<rsub|\<alpha\>>>
      so that <math|1\<in\>S>

      <item>if <math|n\<in\>S> then if <math|<around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n+1>|}>\<subseteq\>\<bbb-U\>>
      then as <math|<around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>\<subseteq\>\<bbb-U\>>
      and <math|n\<in\>S> there exists a <math|\<gamma\><rsub|1>\<in\>\<bbb-U\>>
      such that <math|A<rsub|\<gamma\><rsub|1>>\<in\><big|cup><rsub|\<alpha\>\<in\><around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>>A<rsub|\<alpha\>>>,
      as <math|\<frak-U\>> is a filter base we can then find a
      <math|\<gamma\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<gamma\>>\<subset\>A<rsub|\<gamma\><rsub|1>><big|cap>A<rsub|n+1>\<subseteq\><around*|(|<big|cap><rsub|\<alpha\>\<in\><around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>>A<rsub|\<alpha\>>|)><big|cap>A<rsub|n+1>=<big|cap><rsub|\<alpha\>\<in\><around*|{|\<alpha\><rsub|1>,\<ldots\>,a<rsub|n+1>|}>>A<rsub|\<alpha\>>>
      and thus we have <math|n+1\<in\>S>
    </enumerate>

    Using mathematical induction we have then <math|S=\<bbb-N\><rsub|0>>
    proving \ the theorem.
  </proof>

  <\definition>
    <label|neighborhood filter base><index|<math|\<frak-U\><around*|(|x|)>>>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|x\<in\>X> then <math|\<frak-U\><around*|(|x|)>=<around*|{|U\|U\<in\>\<cal-T\>\<wedge\>x\<in\>U|}>>
    [the set of open sets containing <math|x>] is called the
    <with|font-series|bold|neighborhood filter base> of <math|x>
  </definition>

  <\theorem>
    <label|neighborhood filterbase is a filterbase>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|x\<in\>X> then <math|<around*|{|U|}><rsub|U\<in\>\<frak-U\><around*|(|x|)>>>
    (see <reference|selfindexed family>) is a filter-base, which is also
    noted as <math|\<frak-U\><around*|(|x|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|U\<in\>\<frak-U\><around*|(|x|)>> then
      <math|x\<in\>U\<Rightarrow\>U\<neq\>\<emptyset\>>

      <item>If <math|U,V\<in\>\<frak-U\><around*|(|x|)>\<Rightarrow\>x\<in\>U<big|cap>V>and
      as <math|U<big|cap>V> is open we have that
      <math|U<big|cap>V\<in\>\<frak-U\><around*|(|x|)>> so we found a
      <math|W=U<big|cap>V\<in\>\<frak-U\><around*|(|x|)>> such that
      <math|W=U<big|cap>V\<subseteq\>U<big|cap>V>
    </enumerate>
  </proof>

  <\example>
    <label|trivial filterbase>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    and <math|\<emptyset\>\<neq\>A\<subseteq\>X> then
    <math|<around*|{|A|}><rsub|A\<in\><around*|{|A|}>>> is trivially a filter
    base.
  </example>

  <\theorem>
    <label|construction of new filterbases>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    and <math|\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
    then

    <\enumerate>
      <item><math|\<frak-U\><big|cup>\<frak-W\>\<equallim\><rsub|defined><around*|{|A<rsub|\<alpha\>><big|cup>B<rsub|\<beta\>>|}><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>>
      is a filter base

      <item>If <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>,\<forall\>\<beta\>\<in\>\<bbb-W\>>
      we have that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<emptyset\>>
      then <math|\<frak-U\><big|cap>\<frak-W\>\<equallim\><rsub|defined><around*|{|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>|}><rsub|<around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
      is a filter base>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<frak-U\><big|cup>\<frak-W\> is a filter base>>

      <\enumerate>
        <item><math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
        we have <math|A<rsub|\<alpha\>>\<neq\>\<emptyset\>\<wedge\>B<rsub|\<beta\>>\<neq\>\<emptyset\>\<Rightarrow\>A<rsub|\<alpha\>><big|cup>B<rsub|\<beta\>>\<neq\>\<emptyset\>>

        <item><math|\<forall\><around*|(|\<alpha\><rsub|1>,\<beta\><rsub|1>|)>,<around*|(|\<alpha\><rsub|2>,\<beta\><rsub|2>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
        there exists a <math|\<gamma\><rsub|1>\<in\>\<bbb-U\>,\<gamma\><rsub|2>\<in\>\<bbb-W\>>
        such that <math|A<rsub|\<gamma\><rsub|<rsub|1>>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>\<wedge\>B<rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>>
        then <math|\<gamma\>=<around*|(|\<gamma\><rsub|1>,\<gamma\><rsub|2>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
        and <math|A<rsub|\<gamma\><rsub|1>><big|cup>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>|)><big|cup><around*|(|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>|)>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>><around*|(|A<rsub|\<alpha\><rsub|2>><big|cup>B<rsub|\<beta\><rsub|2>>|)>\<Rightarrow\>A<rsub|\<gamma\><rsub|1>><big|cup>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cup>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cap>B<rsub|\<beta\><rsub|2>><rsub|>|)>>
      </enumerate>

      <item><dueto|<math|\<frak-U\><big|cap>\<frak-W\> is a filter base
      <around*|(|if \<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>
      we have that A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<emptyset\>|)>>>\ 

      <\enumerate>
        <item><math|\<forall\><around*|(|\<alpha\>,\<beta\>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
        \ we have by the hypothesis that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<emptyset\>>

        <item><math|\<forall\><around*|(|\<alpha\><rsub|1>,\<beta\><rsub|1>|)>,<around*|(|\<alpha\><rsub|2>,\<beta\><rsub|2>|)>\<in\>\<bbb-U\>\<times\>\<bbb-W\>>
        there exists a <math|\<gamma\><rsub|1>\<in\>\<bbb-U\>,\<gamma\><rsub|2>\<in\>\<bbb-W\>>
        such that <math|A<rsub|\<gamma\><rsub|1>>\<subseteq\>A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>\<wedge\>B<rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>\<Rightarrow\>\<gamma\>=<around*|(|\<gamma\><rsub|1>*,\<gamma\><rsub|2>|)>\<subseteq\>\<bbb-U\>\<times\>\<bbb-W\>>
        and <math|A<rsub|\<gamma\><rsub|1>><big|cap>B<rsub|\<gamma\><rsub|2>>\<subseteq\><around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>A<rsub|\<alpha\><rsub|2>>|)><big|cap><around*|(|B<rsub|\<beta\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|2>>|)>=<around*|(|A<rsub|\<alpha\><rsub|1>><big|cap>B<rsub|\<beta\><rsub|1>>|)><big|cap><around*|(|A<rsub|\<alpha\><rsub|2>><big|cap>B<rsub|\<beta\><rsub|2>>|)>>
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|filter base has the finite intersection property>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    be a filter base then it has the <with|font-series|bold|finite
    intersection property> , that is <math|\<forall\>\<cal-B\>\<subseteq\>\<bbb-U\>,\<cal-B\>
    is finite> we have <math|<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>A<rsub|\<beta\>>\<neq\>\<emptyset\>>
  </theorem>

  <\proof>
    Using <reference|finite subset of filterbase> there exists a
    <math|\<gamma\>\<in\>\<cal-B\>> such that
    <math|\<emptyset\>\<neq\>A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|\<beta\>\<in\>\<cal-B\>>A<rsub|\<beta\>>>
  </proof>

  <\definition>
    <label|convergent filterbase><index|convergent
    filterbase><index|accumulation point of a filterbase>Let
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    be a filter base in a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> then we define

    <\enumerate>
      <item><math|\<frak-U\>> converges to <math|y\<in\>X> written as
      <math|\<frak-U\>\<rightarrow\>y> iff <math|\<forall\>U\<in\>\<cal-T\>>
      with <math|y\<in\>U> we have that <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>>
      with <math|A<rsub|\<alpha\>>\<subseteq\>U>

      <item><math|\<frak-U\>> accumulates at <math|y\<in\>X> (or <math|y> is
      a accumulation point of <math|\<frak-U\>>) written as
      <math|\<frak-U\>\<succ\>y> iff <math|\<forall\>U\<in\>\<cal-T\>> with
      <math|y\<in\>U> we have <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> that
      <math|U<big|cap>A<rsub|\<alpha\>>\<neq\>\<emptyset\>>\ 
    </enumerate>
  </definition>

  <\remark>
    <label|accumulation and closure>If <math|\<frak-U\>\<succ\>y> then
    <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have
    <math|<around*|[|\<forall\>U\<in\>\<cal-T\>\<vdash\>y\<in\>U we have
    U<big|cap>A<rsub|\<alpha\>>\<neq\>\<emptyset\>|]>\<Leftrightarrowlim\><rsub|<with|mode|text|<reference|characterization
    of closure>>> <around*|[|y\<in\><wide|A<rsub|a>|\<bar\>>|]>> so
    <math|\<frak-U\>\<succ\>y> is equivalent with
    <math|y\<in\><big|cap><rsub|\<alpha\>\<in\>\<bbb-U\>><wide|A<rsub|\<alpha\>>|\<bar\>>>
  </remark>

  <\example>
    <label|neighborhood filterbase converges>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|\<forall\>x\<in\>X> we have
    <math|\<frak-U\><around*|(|x|)>\<rightarrow\>x>
  </example>

  <\proof>
    If <math|U\<in\>\<cal-T\>> and <math|x\<in\>U> then by definition
    <math|U\<in\>\<frak-U\><around*|(|x|)>> so that we found a
    <math|U\<in\>\<frak-U\><around*|(|x|)>> with <math|U\<subseteq\>U>
  </proof>

  <\definition>
    Let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>,\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
    be two filter bases on a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> then <math|\<frak-W\>>
    is subordinate to <math|\<frak-U\>> noted by
    <math|\<frak-W\>\<gg\>\<frak-U\>> (or <math|\<frak-U\>\<ll\>\<frak-W\>>)
    iff <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have that
    <math|\<exists\>\<beta\>\<in\>\<bbb-W\>> such that
    <math|B<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>>>
  </definition>

  <\definition>
    Let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>,\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
    be two filter bases on a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> then
    <math|\<frak-U\>\<subseteq\>\<frak-W\>> iff
    <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> there exists a
    <math|\<beta\>\<in\>\<bbb-W\>> such that
    <math|A<rsub|\<alpha\>>=B<rsub|\<beta\>>>
  </definition>

  <\theorem>
    <label|properties of two filterbases>Let
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>,\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
    be two filter bases on a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> then the following
    hold:

    <\enumerate>
      <item>If <math|\<frak-U\>\<subseteq\>\<frak-W\>> then
      <math|\<frak-W\>\<gg\>\<frak-U\>>

      <item>If <math|\<frak-W\>\<gg\>\<frak-U\>> then
      <math|\<forall\>\<beta\>\<in\>\<bbb-W\>> we have that
      <math|\<forall\>\<alpha\>\<in\>\<frak-U\>> that
      <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<emptyset\>>

      <item><math|\<frak-U\>\<rightarrow\>x> if and only if
      <math|\<frak-U\>\<gg\>\<frak-U\><around*|(|x|)>>

      <item>If <math|\<frak-W\>=<around|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-W\>>,\<frak-W\><rprime|'>=<around|{|A<rprime|'><rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-W\><rprime|'>>,\<frak-W\><rprime|''>=<around|{|A<rprime|''><rsub|a>|}><rsub|a\<in\>\<bbb-W\><rprime|''>>>
      are filter bases such that <math|\<frak-W\>\<gg\>\<frak-W\><rprime|'>>
      and <math|\<frak-W\><rprime|'>\<gg\>\<frak-W\><rprime|''>> then
      <math|\<frak-W\>\<gg\>\<frak-W\><rprime|''>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|\<alpha\>\<in\>\<bbb-U\>> then as
      <math|\<frak-U\>\<subseteq\>\<frak-W\>> there exists a
      <math|b\<in\>\<bbb-W\>> such that <math|A<rsub|\<alpha\>>=B<rsub|\<beta\>>>
      so that <math|B<rsub|\<alpha\>>\<subseteq\>A<rsub|\<alpha\>>> so that
      by definition we have <math|\<frak-W\>\<gg\>\<frak-U\>>

      <item>This is proved by contradiction, so assume that
      <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> and
      <math|\<exists\>\<beta\>\<in\>\<bbb-W\>> such that
      <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>=\<emptyset\>> then
      since <math|\<frak-W\>\<gg\>\<frak-U\>>
      <math|\<exists\>\<gamma\>\<in\>\<bbb-W\>> such that
      <math|B<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>> and then there
      exists a <math|\<delta\>\<in\>\<bbb-W\>> such that
      <math|B<rsub|\<delta\>>\<subseteq\>B<rsub|\<gamma\>><big|cap>B<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>>
      which as <math|B<rsub|\<delta\>>\<neq\>\<emptyset\>> means that
      <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>\<neq\>\<emptyset\>> a
      contradiction.

      <item><math|\<frak-U\>\<rightarrow\>x\<Leftrightarrow\>\<forall\>U>
      open with <math|x\<in\>U> we have that
      <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U\<Leftrightarrow\>\<forall\>U\<in\>\<frak-U\><around*|(|x|)>>
      we have <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U\<Leftrightarrow\>\<frak-U\>\<gg\>\<frak-U\><around*|(|x|)>>

      <item>Let <math|\<alpha\><rprime|''>\<in\>\<bbb-W\><rprime|''>> then
      because <math|\<frak-W\><rprime|'>\<gg\>\<frak-W\><rprime|''>> there
      exists a <math|\<alpha\><rprime|'>\<in\>\<bbb-W\><rprime|'>> such that
      <math|A<rprime|'><rsub|\<alpha\><rprime|'>>\<subseteq\>A<rprime|''><rsub|\<alpha\><rprime|''>>>,
      because <math|\<frak-W\>\<gg\>\<frak-W\><rprime|'>> there exists a
      <math|\<alpha\>\<in\>\<bbb-W\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>A<rprime|'><rsub|\<alpha\><rprime|'>>\<subseteq\>A<rprime|''><rsub|\<alpha\><rprime|''>>>
      and thus <math|\<frak-W\>\<gg\>\<frak-W\><rprime|''>>
    </enumerate>
  </proof>

  <\theorem>
    <label|each filterbase converges to exactly one point>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|X> is Hausdorff <math|\<Leftrightarrow\>> each filter base
    converges to exactly one point.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Assume that <math|X> is Hausdorff,
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      so that <math|\<frak-U\>\<rightarrow\>x> and
      <math|\<frak-U\>\<rightarrow\>y> and <math|x\<neq\>y> then there exists
      <math|U,V> open with <math|x\<in\>U\<wedge\>y\<in\>V\<wedge\>U<big|cap>V=\<emptyset\>>.
      From <math|\<frak-U\>\<rightarrow\>x> and
      <math|\<frak-U\>\<rightarrow\>y> there exists
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U\<wedge\>A<rsub|\<beta\>>\<subseteq\>V\<Rightarrow\>\<emptyset\>\<neq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>U<big|cap>V=\<emptyset\>>
      \ a contradiction. So we must have that <math|x=y>

      <item><dueto|<math|\<Leftarrow\>>>Assume that <math|X> is not Hausdorff
      then <math|\<exists\>x,y\<in\>X\<nocomma\>x\<neq\>y> such that
      <math|\<forall\>U,V> open with <math|x\<in\>U\<wedge\>y\<in\>V> we have
      <math|U<big|cap>V\<neq\>\<emptyset\>> then by <reference|construction
      of new filterbases> we have that <math|\<frak-W\>=\<frak-U\><around*|(|x|)><big|cap>\<frak-U\><around*|(|y|)>>
      is a filter base. If <math|x\<in\>U>(<math|U>
      open)<math|\<Rightarrow\>U\<in\>\<frak-U\><around*|(|x|)>> and as
      <math|X\<in\>\<frak-U\><around*|(|y|)>> then
      <math|U=U<big|cap>X\<in\>\<frak-W\>> and thus
      <math|\<frak-W\>\<rightarrow\>x>, if <math|y\<in\>V<around*|(|V
      open|)>\<Rightarrow\>V\<in\>\<frak-U\><around*|(|y|)> and as
      X\<in\>\<frak-U\><around*|(|x|)>> we have that
      <math|V=X<big|cap>V\<in\>\<frak-W\>> proving that
      <math|\<frak-W\>\<rightarrow\>y>. By the hypothesis we have then that
      <math|x=y> contradicting <math|x\<neq\>y>. So <math|X> must be
      Hausdorff.
    </enumerate>
  </proof>

  <\theorem>
    <label|converging and accumulation>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>,
    <math|\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
    be filter bases then\ 

    <\enumerate>
      <item>If <math|\<frak-U\>\<rightarrow\>x> then
      <math|\<frak-U\>\<succ\>x> and if <math|X> is also <math|Hausdorff>
      then if <math|\<frak-U\>\<succ\>y\<Rightarrow\>x=y>

      <item>Let <math|\<frak-W\>\<gg\>\<frak-U\>> then\ 

      <\enumerate>
        <item><math|\<frak-U\>\<rightarrow\>x\<Rightarrow\>\<frak-W\>\<rightarrow\>x>

        <item><math|\<frak-W\>\<succ\>x\<Rightarrow\>\<frak-U\>\<succ\>x>
      </enumerate>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>Let <math|U> be open with <math|x\<in\>U> then
        <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
        <math|A<rsub|\<alpha\>>\<subseteq\>U>. Given
        <math|\<beta\>\<in\>\<bbb-U\>> then as (see <reference|filter base
        has the finite intersection property>)
        <math|\<emptyset\>\<neq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>U<big|cap>A<rsub|\<beta\>>\<Rightarrow\>\<frak-U\>\<succ\>x>.
        Now if <math|X> is Hausdorff and let <math|\<frak-U\>\<succ\>y> with
        <math|x\<neq\>y> then <math|\<exists\>U,V> open such that
        <math|x\<in\>U,y\<in\>V> and <math|U<big|cap>V=\<emptyset\>> then
        <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
        <math|A<rsub|\<alpha\>>\<subseteq\>U> (as
        <math|\<frak-U\>\<rightarrow\>x>) so that
        <math|A<rsub|\<alpha\>><big|cap>V\<subseteq\>U<big|cap>V=\<emptyset\>>
        contradicting <math|\<frak-U\>\<succ\>y> so we must have <math|x=y>.

        <item>Assume that <math|\<frak-W\>\<gg\>\<frak-U\>> then

        <\enumerate>
          <item>Assume that <math|\<frak-U\>\<rightarrow\>x> then if <math|U>
          is open with <math|x\<in\>U> then
          <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
          <math|A<rsub|\<alpha\>>\<subseteq\>U> and as
          <math|\<frak-W\>\<gg\>\<frak-U\>> then
          <math|\<exists\>\<beta\>\<in\>\<bbb-W\>> such that
          <math|A<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>>\<subseteq\>U>
          and thus <math|\<frak-W\>\<rightarrow\>x>

          <item>Assume that <math|\<frak-W\>\<succ\>x> then if <math|U> is
          open such that <math|x\<in\>U> then
          <math|\<forall\>\<beta\>\<in\>\<bbb-W\>> we have
          <math|U<big|cap>B<rsub|\<beta\>>=\<emptyset\>>, now if
          <math|\<alpha\>\<in\>\<bbb-U\>> then as
          <math|\<frak-W\>\<gg\>\<frak-U\>> there
          <math|\<exists\>\<gamma\>\<in\>\<bbb-W\>> such that
          <math|B<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>\<Rightarrow\>\<emptyset\>\<neq\>U<big|cap>B<rsub|\<gamma\>>\<subseteq\>U<big|cap>A<rsub|\<alpha\>>\<Rightarrow\>\<frak-U\>\<succ\>x>
        </enumerate>
      </enumerate>
    </proof>
  </theorem>

  <\theorem>
    Let <math|<around*|\<langle\>|X,T|\<rangle\>>> be a topological space and
    let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    be a filter-base then

    <\enumerate>
      <item><math|\<frak-U\>\<rightarrow\>x> if and only if
      <math|\<forall\>\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
      (a filter base) with <math|\<frak-W\>\<gg\>\<frak-U\>> we have that
      there exists a filter-base <math|\<frak-C\>=<around*|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>>
      with <math|\<frak-C\>\<gg\>\<frak-W\>> with
      <math|\<frak-C\>\<rightarrow\>x>

      <item><math|\<frak-U\>\<succ\>x> if and only if
      <math|\<exists\>\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-B\>>>
      (a filter base) with <math|\<frak-W\>\<gg\>\<frak-U\>> such that
      <math|\<frak-W\>\<rightarrow\>x>\ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item><dueto|<math|\<Rightarrow\>>>Assume
        <math|\<frak-U\>\<rightarrow\>x> then if
        <math|\<frak-W\>\<gg\>\<frak-U\>\<Rightarrowlim\><rsub|<with|mode|text|<reference|converging
        and accumulation>>>\<frak-W\>\<rightarrow\>x> and as trivially we
        have <math|\<frak-W\>\<gg\>\<frak-W\>> we can use
        <math|\<frak-C\>=\<frak-W\>>

        <item><dueto|<math|\<Leftarrow\>>>Assume that
        <math|\<frak-U\>\<nrightarrow\>x> (<math|\<frak-U\>> does not
        converge to <math|x>) then <math|\<exists\>U> open with
        <math|x\<in\>U> such that <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>>
        we have <math|A<rsub|\<alpha\>>\<nsubseteq\>U\<Rightarrow\>A<rsub|\<alpha\>><big|cap><around*|(|X\\\\U|)>\<neq\>\<emptyset\>>
        then <math|\<frak-W\>=<around*|{|A<rsub|\<alpha\>><big|cap><around*|(|X\\\\U|)>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
        forms a filter basis (see <reference|trivial filterbase> and
        <reference|construction of new filterbases>) and we have trivially
        <math|\<frak-W\>\<gg\>\<frak-U\>>. Then by the hypothesis
        <math|\<exists\>\<frak-C\>=<around*|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>>
        such that <math|\<frak-C\>\<gg\>\<frak-W\>> and
        <math|\<frak-C\>\<rightarrow\>x\<Rightarrowlim\><rsub|<with|mode|text|<reference|converging
        and accumulation>>>\<frak-W\>\<succ\>x> which means that
        <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have that
        <math|<around*|(|A<rsub|\<alpha\>><big|cap><around*|(|X\\\\U|)>|)><big|cap>U\<neq\>0>
        which is a contradiction because <math|<around*|(|A<rsub|\<alpha\>><big|cap><around*|(|X\\\\U|)>|)><big|cap>U\<subseteq\><around*|(|X\\\\U|)><big|cap>U=\<emptyset\>.>
        So we must have that <math|\<frak-U\>\<rightarrow\>x>
      </enumerate>

      <item>\ 

      <\enumerate>
        <item><dueto|<math|\<Rightarrow\>>>Assume that
        <math|\<frak-U\>\<succ\>x> then if <math|U> is open with
        <math|x\<in\>U> then <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we
        have that <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<emptyset\>>, so
        using <reference|neighborhood filter base> and
        <reference|construction of new filterbases> we have then that
        <math|\<frak-W\>=\<frak-U\><big|cap>\<frak-U\><around*|(|x|)>=<around*|{|A<rsub|\<alpha\>><big|cap>U|}><rsub|<around*|(|\<alpha\>,U|)>\<in\>\<bbb-U\>\<times\>\<frak-U\><around*|(|x|)>>>
        is a filter base. As <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we
        have that <math|A<rsub|\<alpha\>><big|cap>U\<subseteq\>A<rsub|a>> so
        that <math|\<frak-W\>\<gg\>\<frak-U\>>. As by the definition of a
        filter base <math|\<bbb-U\>\<neq\>\<emptyset\>> there exists a
        <math|\<alpha\>\<in\>\<bbb-U\>> and then we have that
        <math|A<rsub|\<alpha\>><big|cap>U\<subseteq\>U> proving that
        <math|\<frak-W\>\<rightarrow\>x>

        <item><dueto|<math|\<Leftarrow\>>>If there exists a
        <math|\<frak-W\>\<gg\>\<frak-U\>> with
        <math|\<frak-W\>\<rightarrow\>x> then using <reference|converging and
        accumulation> we have <math|\<frak-W\>\<succ\>x> and using
        <reference|converging and accumulation> again we have then
        <math|\<frak-U\>\<succ\>x>
      </enumerate>
    </enumerate>
  </proof>

  <\definition>
    <label|filterbase on a set><index|filterbase on a set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|A\<subseteq\>X> then a filter base
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is said to be <with|font-series|bold|on> <math|A> if and only if
    <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have
    <math|A<rsub|\<alpha\>>\<subseteq\>A>
  </definition>

  <\theorem>
    <label|filterbase and closure>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space and let <math|A\<subseteq\>X> then we have the
    following equivalence <math|y\<in\><wide|A|\<bar\>>\<Leftrightarrow\>\<exists\>\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    which is a filter base on <math|A> with <math|\<frak-U\>\<rightarrow\>x>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If <math|y\<in\><wide|A|\<bar\>>>
      then <math|\<forall\>U> open with <math|y\<in\>U> we have
      <math|A<big|cap>U\<neq\>\<emptyset\>>, using <reference|trivial
      filterbase>,<reference|neighborhood filter base> and
      <reference|construction of new filterbases> we have that
      <math|\<frak-W\>=<around*|{|A|}><big|cap>\<frak-U\><around*|(|x|)>=<around*|{|A<big|cap>U|}><rsub|U\<in\>\<frak-U\><around*|(|x|)>>>
      is a filter base, which is on <math|A> [as
      <math|A<big|cap>U\<subseteq\>A>]. If <math|U> is open with
      <math|x\<in\>U> then <math|U\<in\>\<frak-U\><around*|(|x|)>> and
      <math|A<big|cap>U\<subseteq\>U> proving that
      <math|\<frak-W\>\<rightarrow\>x>

      <item><dueto|<math|\<Leftarrow\>>>If
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      is a filter base on <math|A> with <math|\<frak-U\>\<rightarrow\>x> then
      if <math|U> is open and <math|x\<in\>U> open then there exists a
      <math|\<alpha\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U> and as
      <math|A<rsub|\<alpha\>>\<neq\>\<emptyset\>> and
      <math|A<rsub|\<alpha\>>\<subseteq\>A> we have that
      <math|\<emptyset\>\<neq\>A<rsub|\<alpha\>>=A<rsub|\<alpha\>><big|cap>A\<subseteq\>U<big|cap>A\<Rightarrow\>x\<in\><wide|A|\<bar\>>>
    </enumerate>
  </proof>

  <\theorem>
    <label|mapping of a filterbase>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<b-S\>|\<rangle\>>> be topological spaces
    and let <math|f:X\<rightarrow\>Y> be a function. If
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is a filter base in <math|X> then <math|f<around*|(|\<frak-U\>|)>\<equallim\><rsub|define><around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is a filter base in <math|Y>
  </theorem>

  <\proof>
    First as <math|\<bbb-U\>\<neq\>\<emptyset\>> and
    <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have
    <math|A<rsub|a>\<neq\>\<emptyset\>\<Rightarrow\>f<around*|(|A<rsub|\<alpha\>>|)>\<neq\>\<emptyset\>\<Rightarrow\><around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is a non empty family of non empty sets. Second if
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-U\>> then there exists a
    <math|\<gamma\>\<in\>\<bbb-U\>> such that
    <math|A<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<Rightarrow\>f<around*|(|A<rsub|\<gamma\>>|)>\<subseteq\>f<around*|(|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>|)>\<subseteq\>f<around*|(|A<rsub|\<alpha\>>|)><big|cap>f<around*|(|A<rsub|\<beta\>>|)>>
    so that <math|<around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    \ is a filter base.
  </proof>

  <\theorem>
    <label|filterbase and continuity 1>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<b-S\>|\<rangle\>>> be topological spaces
    and let <math|f:X\<rightarrow\>Y> be a function then <math|f> is continue
    at <math|x> if and only if <math|f<around*|(|\<frak-U\><around*|(|x|)>|)>\<rightarrow\>f<around*|(|x|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Assume that <math|f> is continuous
      at <math|x> and let <math|V> open with <math|f<around*|(|x|)>\<in\>V>
      then <math|\<exists\>U> open with <math|x\<in\>U> such that
      <math|f<around*|(|U|)>\<subseteq\>V\<Rightarrow\>f<around*|(|\<frak-U\><around*|(|x|)>|)>\<rightarrow\>f<around*|(|x|)>>

      <item><dueto|<math|\<Leftarrow\>>>Let <math|V> be open with
      <math|f<around*|(|x|)>\<in\>V> then as
      <math|f<around*|(|\<frak-U\><around*|(|x|)>|)>\<rightarrow\>f<around*|(|x|)>>
      and <math|\<frak-U\><around*|(|x|)>=<around*|{|U|}><rsub|U\<in\>\<frak-U\><around*|(|x|)>>>
      there exists a <math|U\<in\>\<frak-U\><around*|(|x|)>\<Rightarrow\>x\<in\>U,U>
      open such that <math|f<around*|(|U|)>\<subseteq\>V\<Rightarrow\>f> is
      continuous at <math|x>
    </enumerate>
  </proof>

  <\theorem>
    <label|filterbase and continuity 2>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<b-S\>|\<rangle\>>> be topological spaces
    and let <math|f:X\<rightarrow\>Y> be a function then <math|f> is continue
    on <math|X> if and only if <math|\<forall\>x\<in\>X> and for every filter
    base <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    in <math|X> with <math|\<frak-U\>\<rightarrow\>x> we have
    <math|f<around*|(|\<frak-U\>|)>\<rightarrow\>f<around*|(|x|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Assume that <math|f> is continuous
      and let <math|\<frak-U\>\<rightarrow\>x> then by <reference|properties
      of two filterbases> we have <math|\<frak-U\>\<gg\>\<frak-U\><around*|(|x|)>>
      so if <math|U> is open and <math|x\<in\>U> then
      <math|\<exists\>\<alpha\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>U\<Rightarrow\>f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>f<around*|(|U|)>>
      proving that <math|f<around*|(|\<frak-U\>|)>\<gg\>f<around*|(|\<frak-U\><around*|(|x|)>|)>>.
      As <math|f> is continuous we have by <reference|filterbase and
      continuity 1> that <math|f<around*|(|\<frak-U\><around*|(|x|)>|)>\<rightarrow\>f<around*|(|x|)>>
      so using <reference|converging and accumulation> and
      <math|f<around*|(|\<frak-U\>|)>\<gg\>f<around*|(|\<frak-U\><around*|(|x|)>|)>>
      we have <math|f<around*|(|\<frak-U\>|)>\<rightarrow\>f<around*|(|x|)>>

      <item><dueto|<math|\<Leftarrow\>>>Let <math|A\<subseteq\>X> and let
      <math|y\<in\>f<around*|(|<wide|A|\<bar\>>|)>> then
      <math|\<exists\>x\<in\><wide|A|\<bar\>>> such that
      <math|y=f<around*|(|x|)>> so that by <reference|filterbase and closure>
      there exists a filter base <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\><around*|\<langle\>|A|\<rangle\>>>>
      on <math|A> so that <math|\<frak-U\>\<rightarrow\>x>. As
      <math|\<frak-U\>> is a filter base on <math|A> we have
      <math|\<forall\>a\<in\>\<bbb-U\>> that
      <math|A<rsub|\<alpha\>>\<subseteq\>A> so that
      <math|f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>f<around*|(|A|)>> and
      thus <math|f<around*|(|\<frak-U\>|)>> is on <math|f<around*|(|A|)>>.
      This last together with <math|f<around*|(|\<frak-U\>|)>\<rightarrow\>f<around*|(|x|)>>
      gives by <reference|filterbase and closure> that
      <math|f<around*|(|x|)>\<in\><wide|f<around*|(|A|)>|\<bar\>>> or
      <math|f<around*|(|<wide|A|\<bar\>>|)>\<subseteq\><wide|f<around*|(|A|)>|\<bar\>>>
      and thus by <reference|continuity characterization> that <math|f> is
      continuous.
    </enumerate>
  </proof>

  <\theorem>
    <label|filterbases and products>Let <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of topological spaces then a filter-base
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    in <math|X=<big|prod><rsub|i\<in\>I>X<rsub|i>> converges to
    <math|y\<in\><big|prod><rsub|i\<in\>I>X<rsub|i>> (using the product
    topology) if and only if <math|\<forall\>i\<in\>I> we have that
    <math|\<pi\><rsub|i><around*|(|\<frak-U\>|)>\<rightarrow\>\<pi\><rsub|i><around*|(|y|)>=y<around*|(|i|)>=y<rsub|i>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Let <math|\<frak-U\>\<rightarrow\>y>
      then as <math|\<pi\><rsub|i>> is continuous (if we use the product
      topology) we have by <reference|filterbase and continuity 2> that
      <math|\<pi\><rsub|i><around*|(|\<frak-U\>|)>\<rightarrow\>\<pi\><rsub|i><around*|(|y|)>>

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|y\<in\>X=<big|prod><rsub|i\<in\>I>X<rsub|i>> \ and <math|U> open
      in <math|X> with <math|y\<in\>U> then there exists a <math|B> in the
      basis of the product topology such that <math|y\<in\>B\<subseteq\>U>.
      By the definition of the basis of a product topology there exists a
      finite set <math|\<cal-A\>\<subseteq\>I> such that
      <math|B=<big|cap><rsub|i\<in\>\<cal-A\>>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>>
      where <math|U<rsub|i>> is a open set in <math|X<rsub|i>> (see
      <reference|basis of product topology>). So
      <math|\<forall\>i\<in\>\<cal-A\>> we have that
      <math|\<pi\><rsub|i><around*|(|y|)>\<in\>U<rsub|i>>. As we have by the
      hypothesis that <math|\<forall\>i\<in\>I> we have that
      <math|\<pi\><rsub|i><around*|(|\<frak-U\>|)>\<rightarrow\>\<pi\><rsub|i><around*|(|y|)>>
      there exists <math|\<forall\>i\<in\>\<cal-A\>> a
      <math|\<alpha\><rsub|i>\<in\>\<bbb-U\>> such that
      <math|\<pi\><rsub|i><around*|(|A<rsub|\<alpha\><rsub|i>>|)>\<subseteq\>U<rsub|i>\<Rightarrow\>A<rsub|\<alpha\><rsub|i><rsub|>>\<subseteq\>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>\<Rightarrow\><big|cap><rsub|i\<in\>\<cal-A\>>A<rsub|\<alpha\><rsub|i>>\<subseteq\><big|cap><rsub|i\<in\>\<cal-A\>>\<pi\><rsub|i><rsup|-1><around*|(|U<rsub|i>|)>=B>.
      Using <reference|finite subset of filterbase> and the finiteness of
      <math|\<cal-A\>> there exists a <math|\<gamma\>\<in\>\<bbb-U\>> such
      that <math|A<rsub|\<gamma\>>\<subseteq\><big|cap><rsub|i\<in\>\<cal-A\>>A<rsub|\<alpha\><rsub|i>>\<subseteq\>B\<subseteq\>U\<Rightarrow\>\<frak-U\>\<rightarrow\>y>
    </enumerate>
  </proof>

  <\definition>
    <label|ultra filter><index|ultra filter>A filter base <math|\<frak-U\>>
    in a topological space <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is called <with|font-series|bold|maximal> or a
    <with|font-series|bold|ultra filter> if <math|\<forall\>\<frak-W\>>,
    <math|\<frak-W\>> a filter base in <math|X> with
    <math|\<frak-W\>\<gg\>\<frak-U\>> we have that
    <math|\<frak-U\>\<gg\>\<frak-W\>>.\ 
  </definition>

  <\theorem>
    <label|maximal filterbase characterization>A filter base
    <math|\<frak-U\>> in a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is maximal if and only
    if <math|\<forall\>A\<subseteq\>X> one and only one of the two sets
    <math|A> and <math|X\\\\A> contains a member of <math|\<frak-U\>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Assume that
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      is maximal and let <math|A\<subseteq\>X> then if there exists a
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>A> and
      <math|A<rsub|\<beta\>>\<subseteq\>X\\\\A> then as by definition of a
      filter base we have <math|A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<neq\>\<emptyset\>>
      we have that <math|\<emptyset\>\<neq\>A<rsub|\<alpha\>><big|cap>A<rsub|\<beta\>>\<subseteq\>A<rsub|\<alpha\>><big|cap>X\\\\A=\<emptyset\>>
      a contradiction, so we can not have a
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-U\>> such that
      <math|A<rsub|\<alpha\>>\<subseteq\>A\<wedge\>A<rsub|\<beta\>>\<subseteq\>X\\\\A>.
      Assume now that <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> we have that
      <math|A<rsub|\<alpha\>>\<subseteq\>A> then we have that
      <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> that
      <math|<around*|(|X\\\\A|)><big|cap>A<rsub|\<alpha\>>\<neq\>\<emptyset\>>
      so <math|\<frak-W\>=<around*|{|<around*|(|X\\\\A|)><big|cap>A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      forms a filter base (see <reference|trivial filterbase> and
      <reference|construction of new filterbases>) and we have
      <math|\<frak-W\>\<gg\>\<frak-U\>> [if <math|\<alpha\>\<in\>\<bbb-U\>>
      then <math|<around*|(|X\\\\A|)><big|cap>A<rsub|\<alpha\>>\<subseteq\>A<rsub|\<alpha\>>>]
      so that by maximality we must have that
      <math|\<frak-U\>\<gg\>\<frak-W\>>. So
      <math|\<forall\>\<alpha\>\<in\>\<bbb-U\>> there exists a
      <math|\<beta\>\<in\>\<bbb-U\>> so that
      <math|A<rsub|\<beta\>>\<subseteq\><around*|(|X\\\\A|)><big|cap>A<rsub|\<beta\>>\<Rightarrow\>A<rsub|\<beta\>>\<subseteq\>X\\\\A>

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      be a filter base such that <math|\<forall\>A\<subseteq\>X> one and only
      one of the two sets <math|A,X\\\\A> contains a member of
      <math|\<frak-U\>>. Let then <math|\<frak-W\>=<around*|{|B<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<bbb-W\>>>
      such that <math|\<frak-W\>\<gg\>\<frak-U\>>. If
      <math|\<beta\>\<in\>\<bbb-W\>> then [by taking
      <math|B<rsub|\<beta\>>=A> in the above) we have the existence of a
      <math|\<alpha\>\<in\>A> such that either
      <math|A<rsub|\<alpha\>>\<subseteq\>B<rsub|\<beta\>>> or
      <math|A<rsub|\<alpha\>>\<subseteq\>X\\\\B<rsub|\<beta\>>>. The last
      case would mean that <math|A<rsub|\<alpha\>><big|cap>B<rsub|\<beta\>>=\<emptyset\>>
      contradicting <reference|properties of two filterbases> so that we are
      left with <math|A<rsub|\<alpha\>>\<subseteq\>B<rsub|\<beta\>>> proving
      that <math|\<frak-U\>\<gg\>\<frak-W\>> and thus maximality.
    </enumerate>
  </proof>

  <\theorem>
    <label|existance of maximal filterbase>Let
    <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    be any filter base in a topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> then there exists a
    maximal filter base <math|\<frak-W\>> in <math|X> with
    <math|\<frak-W\>\<gg\>\<frak-U\>>
  </theorem>

  <\proof>
    Let <math|\<cal-A\>=<around*|{|\<frak-W\>\|\<frak-W\> is a filterbase
    such that \<frak-W\>\<gg\>\<frak-U\>|}>> then we have that
    <math|\<cal-A\>\<neq\>\<emptyset\>> because
    <math|\<frak-U\>\<gg\>\<frak-U\>> and thus
    <math|\<frak-U\>\<in\>\<cal-A\>>. We define now a pre-order (see
    <reference|pre-ordered class>) <math|\<leqslant\>> on <math|\<cal-A\>>
    defined by <math|\<frak-W\>\<leqslant\>\<frak-W\><rprime|'>\<Leftrightarrow\>\<frak-W\><rprime|'>\<gg\>\<frak-W\>>
    this is a pre-order because

    <\enumerate>
      <item><dueto|reflexivity><math|\<frak-W\>\<gg\>\<frak-W\>\<Rightarrow\>\<frak-W\>\<leqslant\>\<frak-W\>>

      <item><dueto|transitivity>Assume that
      <math|\<frak-W\>\<leqslant\>\<frak-W\><rprime|'>\<wedge\>\<frak-W\><rprime|'>\<leqslant\>\<frak-W\><rprime|''>\<Rightarrow\>\<frak-W\><rprime|'>\<gg\>\<frak-W\>\<wedge\>\<frak-W\><rprime|''>\<gg\>\<frak-W\><rprime|'>\<Rightarrowlim\><rsub|<text|<reference|properties
      of two filterbases>>>\<frak-W\><rprime|''>\<gg\>\<frak-W\>\<Rightarrow\>\<frak-W\>\<leqslant\>\<frak-W\><rprime|''>>
    </enumerate>

    Take now <math|\<cal-C\>\<subseteq\>\<cal-A\>> be any chain in the
    pre-ordered set <math|<around*|\<langle\>|\<cal-A\>,\<leqslant\>|\<rangle\>>>
    and prove that it has a upper bound in <math|\<cal-A\>>. We have two
    cases to consider:

    <\enumerate>
      <item><dueto|<math|\<cal-C\>=\<emptyset\>>>Then we have vacuous that
      <math|\<forall\>\<frak-C\>\<in\>\<cal-C\>> \ we have that
      <math|\<frak-C\>\<leqslant\>\<frak-U\>> so
      <math|\<frak-U\>\<in\>\<frak-A\>> is a upper bound of <math|\<cal-C\>>

      <item><dueto|<math|\<cal-C\>\<neq\>\<emptyset\>>>Define
      <math|\<frak-B\>=<around*|{|A\|\<exists\>\<frak-C\>=<around*|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>\<in\>\<cal-C\>\<vdash\>\<exists\>\<gamma\>\<in\>\<bbb-C\>
      with A=C<rsub|\<gamma\>>|}>> then <math|\<frak-B\>=<around*|{|B|}><rsub|B\<in\>\<frak-B\>>>
      is a filter base because

      <\enumerate>
        <item>If <math|B\<in\>\<frak-B\>> then
        <math|\<exists\>\<frak-C\>=<around|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>\<in\>\<cal-C\>>
        such that <math|\<exists\>\<gamma\>\<in\>\<bbb-C\>> with
        <math|B=C<rsub|\<gamma\>>\<neq\>\<emptyset\>>

        <item>If <math|B<rsub|1>,B<rsub|2>\<in\>\<frak-B\>> then there exists
        <math|\<frak-C\><rsub|1>=<around*|{|C<rsup|1><rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\><rsub|1>>,\<frak-C\><rsub|2>=<around*|{|C<rsup|2><rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\><rsub|2>>>,
        <math|\<frak-C\><rsub|1>,\<frak-C\><rsub|2>\<in\>\<cal-C\>> such that
        <math|\<exists\>\<gamma\><rsub|1>\<in\>\<bbb-C\><rsub|1>\<wedge\>\<exists\>\<gamma\><rsub|2>\<in\>\<bbb-C\><rsub|2>>
        such that <math|B<rsub|1>=C<rsub|\<gamma\><rsub|1>><rsup|1>\<wedge\>B<rsub|2>=C<rsup|2><rsub|\<gamma\><rsub|2>>>.
        Now as <math|\<cal-C\>> is a chain we have either:

        <\enumerate>
          <item><dueto|<math|\<frak-C\><rsub|1>\<leqslant\>\<frak-C\><rsub|2>>><math|\<Rightarrow\>
          \<frak-C\><rsub|2>\<gg\>\<frak-C\><rsub|1>\<Rightarrow\>\<exists\>\<gamma\>\<in\>\<bbb-C\><rsub|2>>
          such that <math|C<rsup|2><rsub|\<gamma\>>\<subseteq\>C<rsup|1><rsub|\<gamma\><rsub|1>>=B<rsub|1>>
          and because <math|\<frak-C\><rsub|2>> is a filter base there exists
          a <math|\<beta\>\<in\>\<bbb-C\><rsub|2>> such that
          <math|C<rsup|2><rsub|\<beta\>>\<subseteq\>C<rsup|2><rsub|\<gamma\>><big|cap>C<rsup|2><rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
          so that we have found a <math|B<rsub|3>=C<rsup|2><rsub|\<beta\>>\<in\>\<frak-B\>>
          such that <math|B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>

          <item><dueto|<math|\<frak-C\><rsub|2>\<leqslant\>\<frak-C\><rsub|1>>><math|\<Rightarrow\>
          \<frak-C\><rsub|1>\<gg\>\<frak-C\><rsub|2>\<Rightarrow\>\<exists\>\<gamma\>\<in\>\<bbb-C\><rsub|1>>
          such that <math|C<rsup|1><rsub|\<gamma\>>\<subseteq\>C<rsup|2><rsub|\<gamma\><rsub|2>>=B<rsub|2>>
          and because <math|\<frak-C\><rsub|1>> is a filter base there exists
          a <math|\<beta\>\<in\>\<bbb-C\><rsub|1>> such that
          <math|C<rsup|1><rsub|\<beta\>>\<subseteq\>C<rsup|1><rsub|\<gamma\>><big|cap>C<rsup|1><rsub|\<gamma\><rsub|2>>\<subseteq\>B<rsub|2><big|cap>B<rsub|1>=B<rsub|1><big|cap>B<rsub|2>>
          so that we have found a <math|B<rsub|3>=C<rsup|1><rsub|\<beta\>>\<in\>\<frak-B\>>
          such that <math|B<rsub|3>\<subseteq\>B<rsub|1><big|cap>B<rsub|2>>
        </enumerate>
      </enumerate>

      Using (a) and (b) we have proved that <math|\<frak-B\>> is a filter
      base. Now as <math|\<cal-C\>\<neq\>\<emptyset\>> there exists a
      <math|\<frak-C\>=<around*|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>\<in\>\<cal-C\>\<subseteq\>\<cal-A\>>
      so that <math|\<frak-C\>\<gg\>\<frak-U\>> and thus if
      <math|\<alpha\>\<in\>\<bbb-U\>> we have a
      <math|\<gamma\>\<in\>\<bbb-C\>> such that
      <math|C<rsub|\<gamma\>>\<subseteq\>A<rsub|\<alpha\>>> \ and as by
      definition we have that <math|C<rsub|\<gamma\>>\<in\>\<frak-B\>> it
      follows that <math|\<frak-B\>\<gg\>\<frak-U\>> so that
      <math|\<frak-B\>\<in\>\<cal-A\>>. Finally
      <math|\<forall\>\<frak-C\>=<around*|{|C<rsub|\<gamma\>>|}><rsub|\<gamma\>\<in\>\<bbb-C\>>\<in\>\<cal-C\>>
      we have that <math|\<forall\>\<gamma\>\<in\>\<bbb-C\>> that
      <math|C<rsub|\<gamma\>>\<subseteq\>C<rsub|\<gamma\>>> and because
      <math|C<rsub|\<gamma\>>\<in\>\<frak-B\>> (by definition of
      <math|\<frak-B\>>) we have that <math|\<frak-B\>\<gg\>\<frak-C\>> or
      <math|\<frak-C\>\<leqslant\>\<frak-B\>>. This completes the proof that
      <math|\<frak-B\>> is a upper bound in <math|\<cal-A\>> of
      <math|\<cal-C\>>. Using <reference|Zorn' lemma for pre-ordered sets>
      there exists a maximum element <math|\<frak-M\>> of <math|\<cal-A\>> in
      the pre-order on <math|\<cal-A\>>. This means (see <reference|maximal
      (minimal element in a pre-ordered class>) that for every
      \ <math|\<frak-A\>\<in\>\<cal-A\>> with
      <math|\<frak-A\>\<gg\>\<frak-M\>\<Rightarrow\>\<frak-M\>\<leqslant\>\<frak-A\>>
      we have <math|\<frak-A\>\<leqslant\>\<frak-M\>\<Rightarrow\>\<frak-M\>\<gg\>\<frak-A\>>.
      Also if <math|\<frak-Q\>> is a filter base in <math|X> with
      <math|\<frak-Q\>\<gg\>\<frak-M\>> then as
      <math|\<frak-M\>\<gg\>\<frak-U\>> we have that
      <math|\<frak-Q\>\<gg\>\<frak-U\>> so that
      <math|\<frak-Q\>\<in\>\<cal-A\>> and thus by the previous that
      <math|\<frak-M\>\<gg\>\<frak-Q\>> proving that <math|\<frak-M\>> is a
      maximal filter base (or ultra filter) with
      <math|\<frak-M\>\<gg\>\<frak-U\>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|maximum filterbase and convergence>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    a maximal filter base then <math|\<frak-U\>\<succ\>x\<Leftrightarrow\>\<frak-U\>\<rightarrow\>x>
    for every <math|x\<in\>X>
  </theorem>

  <\proof>
    Because of <reference|converging and accumulation> we must only prove
    that <math|\<frak-U\>\<succ\>x\<Rightarrow\>\<frak-U\>\<rightarrow\>x>
    for a maximal filter base. So let <math|x\<in\>U>, <math|U> open then by
    <reference|maximal filterbase characterization> there exists a
    <math|\<alpha\>\<in\>\<bbb-U\>> such that either
    <math|A<rsub|\<alpha\>>\<subseteq\>U> or
    <math|A<rsub|\<alpha\>>\<subseteq\>X\\\\U>. Now as
    <math|\<frak-U\>\<succ\>x> we must have that
    <math|A<rsub|\<alpha\>><big|cap>U\<neq\>\<emptyset\>> contradicting
    <math|A<rsub|\<alpha\>>\<subseteq\>X\\\\U> so we must have that
    <math|A<rsub|\<alpha\>>\<subseteq\>U> or <math|\<frak-U\>\<rightarrow\>x>
  </proof>

  <\theorem>
    <label|maximal filterbase and mapping>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be topological
    spaces and let <math|\<frak-U\>=<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is a maximal filter base in <math|X> then for any function
    <math|f<rprime|'>:X\<rightarrow\>Y> we have that
    <math|f<around*|(|\<frak-U\>|)>> is a maximal filter base in <math|Y>
  </theorem>

  <\proof>
    By <reference|mapping of a filterbase> we have that
    <math|f<around*|(|\<frak-U\>|)>=<around*|{|f<around*|(|A<rsub|\<alpha\>>|)>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
    is a filter base. To prove maximality we use <reference|maximal
    filterbase characterization>, so let <math|A\<subseteq\>Y> and take
    <math|f<rsup|-1><around*|(|A|)>> and <math|X\\\\f<rsup|-1><around*|(|A|)>>
    then by maximality of <math|\<frak-U\>> there exists a
    <math|\<alpha\>\<in\>\<bbb-U\>> such that
    <math|A<rsub|\<alpha\>>\<subseteq\>f<rsup|-1><around*|(|A|)>> or
    <math|A<rsub|\<alpha\>>\<subseteq\>X\\\\f<rsup|-1><around*|(|A|)>> so
    that we have either <math|f<around*|(|A<rsub|a>|)>\<subseteq\>f<around*|(|f<rsup|-1><around*|(|A|)>|)>=A>
    or <math|f<around*|(|A<rsub|\<alpha\>>|)>\<subseteq\>f<around*|(|X\\\\f<rsup|-1><around*|(|A|)>|)>\<subseteq\>Y\\\\A>
    proving that <math|f<around*|(|\<frak-U\>|)>> is maximal.
  </proof>

  All this hard work is to prove Tychonoffs theorem on the product of compact
  spaces. The following theorem creates the relation between compactness and
  filter bases.

  <\theorem>
    <label|filterbases and compactness>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then the following are equivalent

    <\enumerate>
      <item><math|X> is compact

      <item>For each family <math|<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<cal-A\>>>
      of closed sets in <math|X> with <math|<big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>A<rsub|\<alpha\>>=\<emptyset\>>
      we have the existence of a finite sub-family
      <math|<around*|{|A<rsub|\<beta\>>|}><rsub|\<beta\>\<in\>\<cal-B\>>>
      [where <math|\<cal-B\>=<around*|{|\<alpha\><rsub|1>,\<ldots\>,\<alpha\><rsub|n>|}>\<subseteq\>\<cal-A\>>]
      such that <math|<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>A<rsub|\<beta\>>=\<emptyset\>>
      (or in other words if <math|<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<cal-A\>>>
      is a family such that for every finite
      <math|\<cal-B\>\<subseteq\>\<cal-A\>> we have that
      <math|<big|cap><rsub|\<alpha\>\<in\>\<cal-B\>>A<rsub|\<alpha\>>\<neq\>\<emptyset\>>
      (the finite intersection property) then we must have
      <math|<big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>A<rsub|\<alpha\>>\<neq\>\<emptyset\>>)

      <item>Each filter base <math|<around*|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      in <math|X> has at least one accumulation point

      <item>Each maximal filter base in <math|X> converges
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>Let
      <math|<around|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<cal-A\>>> be
      a family of closed sets with <math|<big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>A<rsub|\<alpha\>>=\<emptyset\>>
      then <math|X=X<mid|\\\\>\<emptyset\>=X<mid|\\\\><around|(|<big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>A<rsub|\<alpha\>>|)>=<big|cup><rsub|\<alpha\>\<in\>\<cal-A\>><around|(|X<mid|\\\\>A<rsub|\<alpha\>>|)>>
      and because <math|X<mid|\\\\>A<rsub|\<alpha\>>> is open
      <math|\<forall\>\<alpha\>\<in\>\<cal-A\>> we have by compactness the
      existence of a finite <math|\<cal-B\>\<subseteq\>\<cal-A\>> such that
      <math|X=<big|cup><rsub|\<beta\>\<in\>\<cal-B\>><around|(|X<mid|\\\\>A<rsub|\<beta\>>|)>\<Rightarrow\>\<emptyset\>=X<mid|\\\\>X=X<mid|\\\\><around|(|<big|cup><rsub|\<beta\>\<in\>\<cal-B\>><around|(|X<mid|\\\\>A<rsub|\<beta\>>|)>|)>=<big|cap><rsub|\<beta\>\<in\>\<cal-B\>><around|(|X<mid|\\\\><around|(|X<mid|\\\\>A<rsub|\<beta\>>|)>|)>=<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>A<rsub|\<beta\>>>

      <item><dueto|<math|2\<Rightarrow\>1>>Let
      <math|<around|{|U<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<cal-A\>>> be
      a family of open sets such that <math|X=<big|cup><rsub|\<alpha\>\<in\>\<cal-A\>>U<rsub|\<alpha\>>\<Rightarrow\>\<emptyset\>=X<mid|\\\\>X=X<mid|\\\\><around|(|<big|cup><rsub|\<alpha\>\<in\>\<cal-A\>>U<rsub|\<alpha\>>|)>=<big|cap><rsub|\<alpha\>\<in\>A><around|(|X<mid|\\\\>U<rsub|\<alpha\>>|)>>
      and as we have that <math|\<forall\>\<alpha\>\<in\>\<cal-A\>> that
      <math|X<mid|\\\\>U<rsub|\<alpha\>>> is closed we have by the hypothesis
      that <math|\<exists\>\<cal-B\>\<subseteq\>\<cal-A\>>, <math|\<cal-B\>>
      finite such that <math|\<emptyset\>=<big|cap><rsub|\<beta\>><around|(|X
      <mid|\\\\>U<rsub|\<beta\>>|)>\<Rightarrow\>X
      \ <mid|\\\\>\<emptyset\>=X<mid|\\\\><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\>><around|(|X<mid|\\\\>U<rsub|\<beta\>>|)>|)>=<big|cup><rsub|\<beta\>\<in\>\<cal-B\>><around|(|X<mid|\\\\><around|(|X<mid|\\\\>U<rsub|\<beta\>>|)>|)>=<big|cup><rsub|\<beta\>\<in\>\<cal-B\>>U<rsub|\<beta\>>>
      proving compactness

      <item><dueto|<math|2\<Rightarrow\>3>>Let
      <math|\<frak-U\>=<around|{|A<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<bbb-U\>>>
      be a filter base, then <math|\<forall\>\<bbb-B\>\<subseteq\>\<bbb-U\>\<vdash\>\<bbb-B\>>
      is finite we have that <math|\<emptyset\>\<neq\><big|cap><rsub|\<beta\>\<in\>\<bbb-B\>>A<rsub|\<beta\>>>
      (see <reference|finite subset of filterbase>) then
      <math|\<emptyset\>\<neq\><big|cap><rsub|\<beta\>\<in\>\<bbb-B\>>A<rsub|\<beta\>>\<subseteq\><big|cap><rsub|\<beta\>\<in\>\<bbb-B\>><wide|A<rsub|\<beta\>>|\<bar\>>>
      and then by (2) we have <math|\<emptyset\>\<neq\><big|cap><rsub|\<alpha\>\<in\>\<bbb-A\>><wide|A<rsub|\<alpha\>>|\<bar\>>\<Rightarrow\>\<exists\>x\<in\><big|cap><rsub|\<alpha\>\<in\>\<bbb-A\>><wide|A<rsub|\<alpha\>>|\<bar\>>>
      and then by <reference|accumulation and closure> we have that <math|x>
      is a accumulation point of <math|\<frak-U\>>.

      <item><dueto|<math|3\<Rightarrow\>4>>Let <math|\<frak-U\>> be a maximal
      filter base then by (3) there exists a <math|x\<in\>X> such that
      <math|\<frak-U\>\<succ\>x>, and then using <reference|maximum
      filterbase and convergence> we have <math|\<frak-U\>\<rightarrow\>x>

      <item><dueto|<math|4\<Rightarrow\>3>>Let <math|\<frak-U\>> be a filter
      base then using <reference|existance of maximal filterbase> there exist
      a maximal filter base <math|\<frak-W\>\<gg\>\<frak-U\>> and then by (4)
      we have then <samp|<math|\<exists\>x\<in\>X such that
      \<frak-W\>\<rightarrow\>x\<Rightarrowlim\><rsub|<reference|maximum
      filterbase and convergence>>\<frak-W\>\<succ\>x>> and then using
      <reference|converging and accumulation> we have
      <math|\<frak-U\>\<succ\>x>

      <item><dueto|<math|3\<Rightarrow\>2>>Let
      <math|<around|{|F<rsub|\<alpha\>>|}><rsub|\<alpha\>\<in\>\<cal-A\>>> be
      a family of closed sets such that <math|\<forall\>\<cal-B\>\<subseteq\>\<cal-A\>,\<cal-B\>>
      finite we have <math|<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>F<rsub|\<beta\>>\<neq\>\<emptyset\>>
      then if <math|\<frak-U\>={<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>A<rsub|\<beta\>>\|\<cal-B\>\<subseteq\>\<cal-A\>,\<cal-B\>>
      is finite} we form the family <math|\<frak-U\>=<around|{|A|}><rsub|A\<in\>\<frak-U\>>>.
      We prove now that <math|\<frak-U\>> is a filter base, first of all we
      have by the hypothesis that <math|<big|cap><rsub|\<beta\>\<in\>\<cal-B\>>F<rsub|\<beta\>>\<neq\>\<emptyset\>>,
      also if <math|B<rsub|1>,B<rsub|2>\<in\>\<frak-U\>> then
      <math|\<exists\>\<cal-B\><rsub|1>,\<cal-B\><rsub|2>\<subseteq\>\<cal-A\>,\<cal-B\><rsub|1>,\<cal-B\><rsub|2>>
      finite and thus <math|\<cal-B\><rsub|1><big|cup>\<cal-B\><rsub|2>> is
      finite such that <math|B<rsub|1><big|cap>B<rsub|2>=<around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|1>>F<rsub|\<beta\>>|)><big|cap><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|2>>F<rsub|\<beta\>>|)>=<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|1><big|cup>\<cal-B\><rsub|2>>F<rsub|\<beta\>>\<in\>\<frak-U\>>
      [[if <math|x\<in\><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|1>>F<rsub|\<beta\>>|)><big|cap><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|2>>F<rsub|\<beta\>>|)>>
      then <math|\<forall\>\<beta\>\<in\>\<cal-B\><rsub|1>>,
      <math|\<forall\>\<alpha\>\<in\>\<cal-B\><rsub|1>> we have
      <math|x\<in\>F<rsub|\<beta\>>\<wedge\>x\<in\>F<rsub|\<alpha\>>\<Rightarrow\>if
      \<gamma\>\<in\>\<cal-B\><rsub|1><big|cup>\<cal-B\><rsub|2>> then
      <math|x\<in\>F<rsub|\<gamma\>>>, if
      <math|x\<in\><big|cap><rsub|\<gamma\>\<in\>\<cal-B\><rsub|1><big|cup>\<cal-B\><rsub|2>>F<rsub|\<gamma\>>>
      then if <math|\<gamma\>\<in\>\<cal-B\><rsub|1><big|cup>\<cal-B\><rsub|2>>
      we have <math|x\<in\>F<rsub|\<gamma\>>> so that if
      <math|\<alpha\>\<in\>\<cal-B\><rsub|1>> and
      <math|\<beta\>\<in\>\<cal-B\><rsub|1>> then
      <math|x\<in\><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|1>>F<rsub|\<beta\>>|)><big|cap><around|(|<big|cap><rsub|\<beta\>\<in\>\<cal-B\><rsub|2>>F<rsub|\<beta\>>|)>>]]
      \ so by (3) <math|\<exists\>x\<in\>X> such that
      <math|\<frak-U\>\<succ\>x> or using <reference|accumulation and
      closure> we have <math|x\<in\><big|cap><rsub|B\<in\>\<frak-U\>><wide|B|\<bar\>>>
      so <math|\<forall\>B\<in\>\<frak-U\>> we have
      <math|x\<in\><wide|B|\<bar\>>> now as
      <math|\<forall\>\<alpha\>\<in\>\<cal-A\>> we have
      <math|<around|{|\<alpha\>|}>> is finite and thus
      <math|F<rsub|\<alpha\>>=<big|cap><rsub|\<beta\>\<in\><around|{|\<alpha\>|}>>F<rsub|\<alpha\>>\<in\>\<frak-U\>\<Rightarrow\>x\<in\><wide|F<rsub|\<alpha\>>|\<bar\>>\<equallim\><rsub|A<rsub|\<alpha\>>
      is closed>F<rsub|\<alpha\>>\<Rightarrow\>x\<in\><big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>F<rsub|\<alpha\>>\<Rightarrow\><big|cap><rsub|\<alpha\>\<in\>\<cal-A\>>F<rsub|\<alpha\>>\<neq\>\<emptyset\>>
    </enumerate>
  </proof>

  <subsection|Product of compact spaces>

  Let's use now filter bases to prove Tychonoff's theorem\ 

  <\theorem>
    <label|Tychonoff><index|Tychonoff's theorem><dueto|Tychonoff's>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family non empty topological spaces then
    <math|<big|prod><rsub|i\<in\>I>X<rsub|i>> is compact in the product
    topology if and only if <math|\<forall\>i\<in\>I> we have that
    <math|X<rsub|i>> is compact
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>As the projection map
      <math|\<pi\><rsub|i>:<big|prod><rsub|j\<in\>I>X<rsub|j>\<rightarrow\>X<rsub|i>>
      is continuous (see <reference|projection map is open and open>) we have
      using <reference|continuous image of compact set> that
      <math|X<rsub|i>=\<pi\><rsub|i><around*|(|<big|prod><rsub|j\<in\>I>X<rsub|j>|)>>
      is compact.

      <item><dueto|<math|\<Leftarrow\>>>Assume that <math|\<forall\>i\<in\>I>
      we have that <math|X<rsub|i>> is compact. Let <math|\<frak-U\>> be a
      maximum filter base in <math|\<Pi\><rsub|i\<in\>I>X<rsub|i>> then using
      <reference|mapping of a filterbase> we have that
      <math|\<forall\>j\<in\>I> that <math|\<pi\><rsub|j><around*|(|\<frak-U\>|)>>
      is a maximum filter base. Using the compactness of <math|X<rsub|i>> we
      have using <reference|filterbases and compactness> that
      <math|\<exists\>x<rsub|i>\<in\>X<rsub|i>> such that
      <math|\<pi\><rsub|i><around*|(|\<frak-U\>|)>\<rightarrow\>x<rsub|i>>.
      Define then <math|x\<in\><big|prod><rsub|j\<in\>I>X<rsub|j>> by
      <math|x<around*|(|i|)>=x<rsub|i>> so that
      <math|\<pi\><rsub|i><around*|(|\<frak-U\>|)>\<rightarrow\>\<pi\><rsub|i><around*|(|x|)>\<nosymbol\>>.
      Using <reference|filterbases and products> we have then that
      <math|\<frak-U\>\<rightarrow\>x> which by <reference|filterbases and
      compactness> means that <math|<big|prod><rsub|i\<in\>I>X<rsub|i>> is
      convergent.
    </enumerate>
  </proof>

  <\corollary>
    <label|product of compact subspaces>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,\<cal-T\><rsub|i>|\<rangle\>>|}><rsub|i\<in\>I>>
    be a family of non-empty topological spaces then if
    <math|\<forall\>i\<in\>I> we have that
    <math|C<rsub|i>\<subseteq\>X<rsub|i>> then
    <math|<big|prod><rsub|i\<in\>I>C<rsub|i>> is compact if and only if
    <math|\<forall\>i\<in\>I> we have that <math|C<rsub|i>> is compact (using
    the subspace topology).
  </corollary>

  <\proof>
    First note that the subspace topology of
    <math|<big|prod><rsub|i\<in\>I>C<rsub|i>> is equal to the product
    topology of the subspace topologies (see <reference|product topological
    of subspace topologies>). As by definition a subset is compact is if it
    is compact in the subspace topology we can use the previous theorem to
    prove this theorem.
  </proof>

  <\theorem>
    <label|compact subsets of the reals><index|Heine-Borel
    theorem><dueto|Heine-Borel>Let <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\>|\<rangle\>>>
    be the set of real tupple's together with the product topology (based on
    the trivial normed topology on <math|<around*|\<langle\>|\<bbb-R\>,\|
    \||\<rangle\>>> then a subset of <math|C\<subseteq\>\<bbb-R\><rsup|n>> is
    compact if and only if <math|C> is bounded and closed.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Using <reference|compact space in a
      metric space is bounded> and <reference|product of metric spaces> we
      have that <math|C> is bounded. As by <reference|metric spaces are
      Hausdorff> and <reference|product of metric spaces> we have that
      <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\>|\<rangle\>>> is
      Hausdorff we have using <reference|compact subspaces are closed> that
      <math|C> is closed.

      <item><dueto|<math|\<Leftarrow\>>>Assume now that <math|C> is closed
      and bounded. If <math|C> is empty then it is trivially compact so for
      the rest of the proof we assume that <math|C> is not empty. Thus there
      exists a <math|c\<in\>C>. If we use the canonical norm
      <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|\||\<pi\><rsub|i><around*|(|x|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|)>>
      and the metric <math|d<around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||\<pi\><rsub|i><around*|(|x-y|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=max<around*|(|<around*|{|<around*|\||\<pi\><rsub|i><around*|(|x|)>-\<pi\><rsub|i><around*|(|y|)>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      then we have as <math|C> is bounded that there exists a
      <math|M\<gtr\>0> such that <math|\<forall\>y\<in\>C> we have that
      <math|d<around*|(|c,y|)>\<leqslant\>M> or
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|<around*|\||\<pi\><rsub|i><around*|(|c|)>-\<pi\><rsub|i><around*|(|y|)>|\|>\<leqslant\>M\<Rightarrow\>\<pi\><rsub|i><around*|(|y|)>\<in\><around*|[|\<pi\><rsub|i><around*|(|c|)>-M,\<pi\><rsub|i><around*|(|c|)>+M|]>>
      and thus <math|C\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<pi\><rsub|i><around*|(|c|)>-M,\<pi\><rsub|i><around*|(|c|)>+M|]>>
      which is compact by <reference|[a,b] is compact> and Tychonoff's
      theorem. As <math|C=C<big|cap><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<pi\><rsub|i><around*|(|c|)>-M,\<pi\><rsub|i><around*|(|c|)>+M|]>|)>>
      is closed in the subspace topology of the compact set
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<pi\><rsub|i><around*|(|c|)>-M,\<pi\><rsub|i><around*|(|c|)>+M|]>>
      (as <math|C> is closed) we can use <reference|compactness and closed
      sets> to prove that <math|C> is compact.
    </enumerate>
  </proof>

  <\theorem>
    <label|real continuous mappings on a compact subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|f:X\<rightarrow\>\<bbb-R\>> be a continuous real function
    (using the canonical topology on <math|\<bbb-R\>>). Then for every
    compact <math|C\<subseteq\>X> there exists a <math|M<rsub|C>\<gtr\>0>
    such that <math|\<forall\>x\<in\>C> we have
    <math|<around*|\||f<around*|(|x|)>|\|>\<leqslant\>M<rsub|C>>
  </theorem>

  <\proof>
    First if <math|C=\<emptyset\>> then the theorem is vacuously satisfied so
    assume that <math|C\<neq\>\<emptyset\>>. Using <reference|continuous
    image of compact set> it follows that <math|f<around*|(|C|)>> is compact
    so that by Heine-Borel (see <reference|compact subsets of the reals>) we
    find that <math|f<around*|(|C|)>> is bounded and closed. So
    <math|\<exists\>k\<gtr\>0> so that <math|\<forall\>y<rsub|1>,y<rsub|2>\<in\>f<around*|(|C|)>>
    we have that <math|<around*|\||y<rsub|1>-y<rsub|2>|\|>\<leqslant\>k> and
    thus if <math|x<rsub|1>,x<rsub|2>\<in\>C\<Rightarrow\>f<around*|(|x<rsub|1>|)>,f<around*|(|x<rsub|2>|)>\<in\>f<around*|(|C|)>\<Rightarrow\><around*|\||f<around*|(|x<rsub|1>|)>-f<around*|(|x<rsub|2>|)>|\|>\<leqslant\>k>.
    As <math|C\<neq\>\<emptyset\>> there exists a <math|c<rsub|0>\<in\>C>,
    take then <math|M<rsub|C>=k+<around*|\||f<around*|(|c<rsub|0>|)>|\|>>
    then <math|\<forall\>c\<in\>C> we have
    <math|<around*|\||f<around*|(|c|)>|\|>\<leqslant\><around*|\||f<around*|(|c|)>-f<around*|(|c<rsub|0>|)>|\|>+<around*|\||f<around*|(|c<rsub|0>|)>|\|>\<leqslant\>k+<around*|\||f<around*|(|c<rsub|>|)>|\|>=M<rsub|C>>.
  </proof>

  <\theorem>
    <label|existance of maximum and minimum in the image of a continuous
    function of a compact set>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space and <math|f:X\<rightarrow\>\<bbb-R\>> be a
    continuous function. Then for every non empty compact subset
    <math|C\<subseteq\>X> there exists a <math|x<rsub|1>,x<rsub|2>\<in\>C>
    such that <math|\<forall\>c\<in\>C> we have that
    <math|f<around*|(|x<rsub|1>|)>\<leqslant\>f<around*|(|c|)>\<leqslant\>f<around*|(|x<rsub|2>|)>>.
  </theorem>

  <\proof>
    By <reference|continuous image of compact set> we have that
    <math|f<around*|(|C|)>> is compact so that by <reference|compact subsets
    of the reals> <math|f<around*|(|C|)>> is bounded and closed. Using then
    <reference|real continuous mappings on a compact subset> there exists a
    <math|M<rsub|C>> such that <math|\<forall\>c\<in\>C> we have
    <math|<around*|\||f<around*|(|c|)>|\|>\<leqslant\>M<rsub|C>\<Rightarrow\>-M<rsub|C>\<leqslant\>f<around*|(|c|)>\<leqslant\>M<rsub|C>>.
    By the lower (upper) bound property of the real's (see <reference|the
    reals are conditional complete> and <reference|alternative definition for
    conditional completeness>) and the fact that
    <math|f<around*|(|C|)>\<neq\>\<emptyset\>> there exists a
    <math|M<rsub|1>=inf<around*|(|f<around*|(|C|)>|)>> and
    <math|M<rsub|2>=sup<around*|(|f<around*|(|C|)>|)>>. If now
    <math|U\<subseteq\>\<bbb-R\>> is a open set with <math|M<rsub|1>\<in\>U>
    (or <math|M<rsub|2>\<in\>U>) then there exists a open ball
    <math|<around*|]|a,b|[>> such that <math|M<rsub|1>\<in\><around*|]|a,b|[>\<subseteq\>U\<Rightarrow\>a\<less\>M<rsub|1>\<less\>b>
    (or <math|M<rsub|2>\<in\><around*|]|a,b|[>\<subseteq\>U\<Rightarrow\>a\<less\>M<rsub|2>\<less\>b>)
    and by the definition of <math|inf>(or <math|sup>) we have the existence
    of a <math|y\<in\>f<around*|(|C|)>> such that
    <math|a\<less\>M<rsub|1>\<leqslant\>y\<less\>b\<Rightarrow\>y\<in\>U> (or
    <math|a\<less\>y\<leqslant\>M<rsub|2>\<less\>b\<Rightarrow\>y\<in\>U>)
    proving that <math|y\<in\>f<around*|(|C|)><big|cap>U\<Rightarrow\>f<around*|(|C|)><big|cap>U\<neq\>\<emptyset\>>.
    Using <reference|characterization of closure of a set> we have then that
    <math|M<rsub|1>,M<rsub|2>\<in\><below|<wide|f<around*|(|C|)>|\<bar\>>\<equallim\><rsub|f<around*|(|C|)>
    is compact \<Rightarrow\>f<around*|(|C|)> is closed>|>f<around*|(|C|)>>
    so that there exists a <math|c<rsub|1>,c<rsub|2>\<in\>C> such that
    <math|M<rsub|1>=f<around*|(|c<rsub|1>|)>,M<rsub|2>=f<around*|(|c<rsub|2>|)>>
    and taking in account the definition of <math|inf> and <math|sup > we
    have then that <math|\<forall\>c\<in\>C> we have
    <math|f<around*|(|c<rsub|1>|)>=M<rsub|1>=inf<around*|(|f<around*|(|C|)>|)>\<leqslant\>f<around*|(|c|)>\<leqslant\>sup<around*|(|f<around*|(|C|)>|)>=M<rsub|2>=f<around*|(|c<rsub|2>|)>\<Rightarrow\>f<around*|(|c<rsub|1>|)>\<leqslant\>f<around*|(|c|)>\<leqslant\>f<around*|(|c<rsub|2>|)>>.
  </proof>

  <\theorem>
    <label|equivalence of norms on product of real numbers>All norms on
    <math|\<bbb-R\><rsup|n>> are equivalent (see <reference|equivalence of
    norms>)
  </theorem>

  <\proof>
    Assume that <math|<around*|\<\|\|\>||\<\|\|\>>> is the maximum norm in
    <math|\<bbb-R\><rsup|n>> and <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>>
    another norm in <math|\<bbb-R\><rsup|n>> then by <reference|norm mappings
    are continuous in the produc tof reals> we have that
    <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\>>
    is a continuous mapping (using the maximum norm topology on
    <math|\<bbb-R\><rsup|n>>). Define then
    <math|S<rsup|n-1>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|\<\|\|\>|x|\<\|\|\>>=1|}>>
    which is closed because <math|<around*|{|1|}>> is closed [as a metric
    space is Hausdorff (see <reference|metric spaces are Hausdorff>) and
    every finite set in a Hausdorff space is closed (see <reference|every
    finite subset of a Hausdorff is closed>)] and
    <math|S<rsup|n-1>=<around*|\<\|\|\>||\<\|\|\>><rsup|-1><around*|(|<around*|{|1|}>|)>>
    together with <reference|continuity characterization>. <math|S<rsup|n-1>>
    is also bound because if <math|x,y\<in\>S<rsup|n-1>> then
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\>1+1=2>.
    According to the Heine Borell theorem (see <reference|compact subsets of
    the reals>) and the fact that the product topology on
    <math|\<bbb-R\><rsup|n>> is the topology generated by the maximum norm
    (see <reference|norm of finite product of normed spaces>) we have then
    that <math|S<rsup|-1>> is compact in <math|\<bbb-R\><rsup|n>> using the
    maximum norm. Using the previous theorem (see <reference|existance of
    maximum and minimum in the image of a continuous function of a compact
    set>) there exists a <math|x<rsub|1>,x<rsub|2>\<in\>S<rsup|n-1>> such
    that <math|\<forall\>x\<in\>S<rsup|-1>> we have
    <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsup|\<ast\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<leqslant\><around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsup|\<ast\>>\<Rightarrow\>\<alpha\>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<leqslant\>\<beta\>>
    if we define <math|\<alpha\>=<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsup|\<ast\>>\<gtr\>0>
    (<math|x<rsub|1>\<neq\>0> as <math|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>=1>)
    and <math|\<beta\>=<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsup|\<ast\>>\<gtr\>0>
    (<math|x<rsub|2>\<neq\>0> as <math|<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>>=1>).
    If now <math|x\<in\>\<bbb-R\><rsup|n>> then we have either

    <\enumerate>
      <item><dueto|<math|x=0>><math|\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>>=0=<around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<Rightarrow\>\<alpha\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<leqslant\>\<beta\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>

      <item><dueto|<math|x\<neq\>0>>then <math|<around*|\<\|\|\>|x|\<\|\|\>>\<neq\>0>
      and <math|<around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>>>\<cdot\>x|\<\|\|\>>=<frac|<around*|\<\|\|\>|x|\<\|\|\>>|<around*|\<\|\|\>|x|\<\|\|\>>>=1\<Rightarrow\>\<alpha\>\<leqslant\><around*|\<\|\|\>|<frac|1|<around*|\<\|\|\>|x|\<\|\|\>>>\<cdot\>x|\<\|\|\>><rsup|\<ast\>>\<leqslant\>\<beta\>\<Rightarrow\>\<alpha\>\<leqslant\><frac|1|<around*|\<\|\|\>|x|\<\|\|\>>>\<cdot\>x\<leqslant\>\<beta\>\<Rightarrow\>\<alpha\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsup|\<ast\>>\<leqslant\>\<beta\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>>
    </enumerate>

    Using <reference|equivalence of norms> we find that
    <math|<around*|\<\|\|\>||\<\|\|\>>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsup|\<ast\>>> are equivalent, so
    every norm generates the same topology as
    <math|<around*|\<\|\|\>||\<\|\|\>>> and thus all the norms are
    equivalent.
  </proof>

  <\corollary>
    <label|linear maps between finite dimesnional spaces are continuous>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be finite dimensional spaces then every linear function
    <math|L:X\<rightarrow\>Y> is continuous.
  </corollary>

  <\proof>
    Using <reference|existance of isometry,isomorphism,homeomorphism> there
    exists <math|\<varphi\><rsub|1>:X\<rightarrow\>\<bbb-R\><rsup|n>>,
    <math|\<varphi\><rsub|2>:Y\<rightarrow\>\<bbb-R\><rsup|m>> and norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>
    on <math|\<bbb-R\><rsup|n>> and <math|\<bbb-R\><rsup|m>> where
    <math|\<varphi\><rsub|1>,\<varphi\><rsub|2>> are isometries,
    homeomorphism's and isomorphism's (using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>).
    So given a linear map <math|L:X\<rightarrow\>Y> we have that
    <math|L<rprime|'>=\<varphi\><rsub|2>\<circ\>L\<circ\>\<varphi\><rsub|1><rsup|-1>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>>
    is linear (as isomorphism's are linear). By <reference|linear mappins
    between products of the real spaces are continuous> the linear mapping
    <math|L<rprime|'>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|m>> is
    continuous if we use the maximum norms on
    <math|\<bbb-R\><rsup|n>,\<bbb-R\><rsup|m>>, by the equivalence of the
    norms of <math|\<bbb-R\><rsup|n>>, <math|\<bbb-R\><rsup|m>> (see
    <reference|equivalence of norms on product of real numbers>) we have also
    that <math|L<rprime|'>> is continuous if we use the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>.
    Then as <math|L=\<varphi\><rsup|-1><rsub|2>\<circ\>L<rprime|'>\<circ\>\<varphi\><rsub|1>>
    we have that <math|L> is continuous as
    <math|\<varphi\><rsub|2><rsup|-1>,L<rprime|'>> and
    <math|\<varphi\><rsub|1>> are continuous.
  </proof>

  <\corollary>
    Every finite n-dimensional normed space
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    is isomorphic and homeomorphic with every other n-dimensional normed
    space <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>.
  </corollary>

  <\proof>
    Using <reference|existance of isometry,isomorphism,homeomorphism> there
    exists <math|\<varphi\><rsub|1>:X\<rightarrow\>\<bbb-R\><rsup|n>>,
    <math|\<varphi\><rsub|2>:Y\<rightarrow\>\<bbb-R\><rsup|n>> and norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>
    on <math|\<bbb-R\><rsup|n>> and <math|\<bbb-R\><rsup|n>> where
    <math|\<varphi\><rsub|1>,\<varphi\><rsub|2>> are isometries,
    homeomorphism's and isomorphism's (using the norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>,<around*|\<\|\|\>||\<\|\|\>><rsub|2>>).
    Using <reference|equivalence of norms on product of real numbers> we have
    that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> must be equivalent so
    that<math|> <math|\<varphi\><rsub|1>,\<varphi\><rsub|2>> are also
    homeomorphism's using the topology generated by
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> so that
    <math|\<varphi\><rsup|-1><rsub|2>\<circ\>\<varphi\><rsub|1>:X\<rightarrow\>Y>
    \ is a homeomorphism as a composition of homeomorphism (see
    <reference|composition of homeomorphisms is a homeomorphism> and
    <reference|inverse of a homeomorphisme>) and also a isomorphism (by
    <reference|composition of linear mappings> and <reference|inverse of
    linear isomorphism is a isomorphism>).\ 
  </proof>

  <section|Complete spaces>

  <subsection|Convergence>

  <\notation>
    Given a <math|m\<in\>\<bbb-N\>> we note by
    <math|<around*|{|m,\<ldots\>,\<infty\>|}>> then set
    <math|<around*|{|n\<in\>\<bbb-N\>\|n\<geqslant\>m|}>>. For example
    <math|<around*|{|0,\<ldots\>,\<infty\>|}>=\<bbb-N\>> and
    <math|<around*|{|1,\<ldots\>,\<infty\>|}>=\<bbb-N\><rsub|0>>.
  </notation>

  <\definition>
    <label|convergency in a topological space><index|convergency in a
    topological space>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    is a topological space then a sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    in <math|X> is convergent to <math|x\<in\>X> if
    <math|\<forall\>U\<in\>\<cal-T\>> with <math|x\<in\>U> there exists a
    <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<in\>\<bbb-N\>> with <math|n\<geqslant\>N> \ we have
    <math|x<rsub|n>\<in\>U>. We call <math|x> a limit of the sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>.
  </definition>

  <\theorem>
    <label|limit in a Hausdorff space is unique>If
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a Hausdorff
    topological space then a convergent sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    in <math|X> has a unique limit. We note this limit as
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
  </theorem>

  <\proof>
    Suppose that <math|x,y> are two limits of
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,n|}>>>
    with <math|x\<neq\>y> then by the Hausdorff property there exists open
    sets <math|U,V> with <math|x\<in\>U\<wedge\>y\<in\>V\<wedge\>U<big|cap>V=\<emptyset\>>.
    By the definition of convergence there exists
    <math|N<rsub|x>,N<rsub|y>\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such
    that if <math|n\<geqslant\>N<rsub|x>> then <math|x<rsub|n>\<in\>U> and if
    <math|k\<geqslant\>N<rsub|y>> then <math|x<rsub|n>\<in\>V> so if
    <math|n\<geqslant\>max<around*|(|N<rsub|x>,N<rsub|y>|)>> then
    <math|x<rsub|n>\<in\>U\<wedge\>x<rsub|n>\<in\>V\<Rightarrow\>x<rsub|n>\<in\>U<big|cap>V=\<emptyset\>>
    a contradiction, \ so we must have that <math|x=y>.\ 
  </proof>

  For metric spaces we define a limit of a sequence as follows

  <\definition>
    <label|convergence in a metric space><index|convergence in a metric
    space>If <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo-metric
    space then a sequence <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    in <math|X> is convergent to <math|x\<in\>X> if
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
    <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that if
    <math|n\<geqslant\>N> then <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>.
    \ <math|x> is called a limit of <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>.
  </definition>

  The following theorem proves that both definitions are the same.

  <\theorem>
    <label|convergence in topological and metric space>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo-metric space and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is a sequence then this sequence is convergent to <math|x> in the
    topological space sense if and only if it is convergent in the
    pseudo-metric sense to <math|x>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Let <math|x> be the limit of
      <math|<around*|{|x<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      in the topological space sense then if
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> we have for the open set
      <math|B<rsub|d><around*|(|x,\<varepsilon\>|)>> that
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>> and there exists
      a <math|N\<in\><around*|{|m,\<ldots\>\<infty\>|}>> such that if
      <math|n\<geqslant\>N> we have <math|x<rsub|n>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<Rightarrow\>d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>
      proving that <math|x> is a limit of
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      in the pseudo-metric sense.

      <item><dueto|<math|\<Leftarrow\>>>Let <math|x> be the limit of
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      in the metric space then if <math|U> is a open set such that
      <math|x\<in\>U> then by the definition of the metric topology there
      exists a <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> such that
      <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
      Using the convergence in the pseudo-metric sense there exists a
      <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that if
      <math|n\<geqslant\>N> then we have <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>\<Rightarrow\>x<rsub|n>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U\<Rightarrow\>x<rsub|n>\<in\>U>.
      Proving that <math|x> is the limit of
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      in the topological sense.
    </enumerate>
  </proof>

  Note that the limits of a sequence do not have to be unique, however the
  following theorem proves that in the case of a metric space the limit is
  unique.

  <\theorem>
    <label|limit of a convergent sequence is unique in a metric space>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space then if the
    sequence <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is convergent it has a unique limit
  </theorem>

  <\proof>
    This is trivial as <math|<around*|\<langle\>|X,d|\<rangle\>>> is a
    Hausdorff (see <reference|metric spaces are Hausdorff>) and Hausdorff
    spaces has a unique limit (see <reference|limit in a Hausdorff space is
    unique>).
  </proof>

  <\definition>
    <label|limit of a sequence in a metric
    space><index|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a metric space and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is convergent then we note the unique limit as
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> .\ 
  </definition>

  <\definition>
    <label|Cauchy sequences in metric spaces><index|Cauchy sequence>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo-metric space then
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there exists a <math|N\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<forall\>n,k\<geqslant\>N> we have
    <math|d<around*|(|x<rsub|n>,x<rsub|k>|)>\<less\>\<varepsilon\>>
  </definition>

  <\theorem>
    <label|another characterization of Cauchy>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo-metric space then
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence iff <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there exists a <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such
    that <math|\<forall\>n\<in\>\<bbb-N\>> we have that
    <math|d<around*|(|x<rsub|N>,x<rsub|N+n>|)>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>If
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is Cauchy
      then given <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exist a
      <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that for
      <math|n,k\<geqslant\>N> we have <math|d<around*|(|x<rsub|n>,x<rsub|k>|)>\<less\>\<varepsilon\>>
      so if <math|n\<in\>\<bbb-N\>> then <math|N\<geqslant\>N> and
      <math|N+n\<geqslant\>N> and thus we have
      <math|d<around*|(|x<rsub|N>,x<rsub|N+n>|)>>

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> and find then a
      <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that if
      <math|n\<in\>\<bbb-N\>> then <math|d<around*|(|x<rsub|N>,x<rsub|N+n>|)>\<less\><frac|\<varepsilon\>|2>>.
      If now <math|n,k\<geqslant\>N> then <math|n-N,k-N\<in\>\<bbb-N\>> so
      that <math|d<around*|(|x<rsub|n>,x<rsub|k>|)>=d<around*|(|x<rsub|<around*|(|n-N|)>+N>,x<rsub|<around*|(|k-N|)>+N>|)>\<leqslant\>d<around*|(|x<rsub|<around*|(|n-N|)>+N>,x<rsub|N>|)>+d<around*|(|x<rsub|N>,x<rsub|<around*|(|k-N|)>+N>|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
    </enumerate>
  </proof>

  <\theorem>
    <label|convergent sequences are Cauchy>If
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is a pseudo-metric space and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>m,\<ldots\>,\<infty\>>> is
    convergent then it is Cauchy.
  </theorem>

  <\proof>
    If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is convergent to <math|x> then if <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there exists a <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such
    that if <math|n\<geqslant\>N> that <math|d<around*|(|x,x<rsub|n>|)>\<less\><frac|\<varepsilon\>|2>>.
    So if <math|n,m\<geqslant\>N> then <math|d<around*|(|x<rsub|n>,x<rsub|m>|)>\<leqslant\>d<around*|(|x<rsub|n>,x|)>+d<around*|(|x,x<rsub|m>|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
    proving that it is Cauchy.
  </proof>

  We have defined the convergence in a metric space, lets create equivalent
  definitions in a normed space.

  <\definition>
    <label|convergence in a normed space><label|convergence in normed
    space>If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo-normed space then a sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    of elements of <math|X> is convergent to <math|x\<in\>X> if
    <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> we have that
    <math|\<exists\>N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> so that
    <math|\<forall\>n> with <math|n\<geqslant\>N> we have
    <math|<around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>>\<less\>\<varepsilon\>>
  </definition>

  The next theorem proves that the definition of convergence in a normed
  space is equivalent to convergence in the associated metric space (and thus
  by <reference|convergence in topological and metric space> equivalent with
  convergence in a topological space).

  <\theorem>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo-normed space and <math|<around*|\<langle\>|X,d|\<rangle\>>>
    the associated metric space (where <math|d:X\<times\>X\<rightarrow\>\<bbb-R\>>
    is defined by <math|d<around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>
    (see <reference|normed topology>)) then
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is convergent to <math|x> in the normed sense iff it is convergent in the
    metric sense to <math|x>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Let
      <math|<around*|{|x<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      converges to <math|x> in the normed sense, then
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|<around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\>d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      converges to <math|x> in the metric sense.

      <item><dueto|<math|\<Leftarrow\>>>Let
      <math|<around*|{|x<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|m,\<ldots\>.,\<infty\>|}>>>
      converges to <math|x> in the metric sense, then
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>\<Rightarrow\><around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      converges to <math|x> in the normed sense.\ 
    </enumerate>
  </proof>

  <\theorem>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space then if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is convergent it has a unique limit. This unique limit is noted (like in
    the metric case) as <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
  </theorem>

  <\proof>
    This follows from the fact that a normed space is a metric space and in
    metric spaces limits are unique (see <reference|limit of a convergent
    sequence is unique in a metric space>)
  </proof>

  <\definition>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo-normed space then <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there exists a <math|N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> such
    that if <math|n,k\<geqslant\>N> then <math|<around*|\<\|\|\>|x<rsub|n>-x<rsub|k>|\<\|\|\>>\<less\>\<varepsilon\>>
  </definition>

  Again it is easy proved that the definition of Cauchy in a normed space is
  equivalent with the definition in the associated metric space

  <\theorem>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo-normed space and <math|<around*|\<langle\>|X,d|\<rangle\>>>
    the associated metric space (where <math|d:X\<times\>X\<rightarrow\>\<bbb-R\>>
    is defined by <math|d<around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>
    (see <reference|normed topology>)) then
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
    is Cauchy in the metric sense iff it is Cauchy in the metric sense
  </theorem>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>
      is Cauchy <around*|(|metric sense|)>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>\<vDash\>\<exists\>N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>\<vdash\>\<forall\>n,k\<geqslant\>N
      we have <around*|\<\|\|\>|x<rsub|n>-x<rsub|k>|\<\|\|\>>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|d<around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>>>|<cell|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>\<vDash\>\<exists\>N\<in\><around*|{|m,\<ldots\>,\<infty\>|}>\<vdash\>\<forall\>n,k\<geqslant\>N
      we have d<around*|(|x<rsub|n>,x<rsub|m>|)>\<less\>\<varepsilon\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>
      is Cauchy <around*|(|normed sense|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a pseudo-normed space then if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is convergent then it is Cauchy.
  </theorem>

  <\proof>
    This follows from the fact that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    forms a metric space and <reference|convergent sequences are Cauchy>.
  </proof>

  <\example>
    <label|convergence of powersequence>If
    <math|a\<in\>\<bbb-R\>,b\<in\>\<bbb-R\>> with
    <math|0\<leqslant\>b\<less\>1> then <math|<around*|{|a\<cdot\>b<rsup|n>|}><rsub|n\<in\>\<bbb-N\>>>
    converges to <math|0>.\ 
  </example>

  <\proof>
    Two cases must be considered:

    <\enumerate>
      <item><dueto|<math|b=0>>then <math|a\<cdot\>b<rsup|n>=0> so
      <math|<around*|{|a\<cdot\>b<rsup|n>|}><rsub|n\<in\>\<bbb-N\>>>
      converges to <math|0>

      <item><dueto|<math|0\<less\>b>>Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
      then by <reference|0\<less\>x^n\<less\>e> there exists an
      <math|N\<in\>\<bbb-N\>> such that if <math|n\<geqslant\>N> then we have
      that <math|0\<less\>b<rsup|n>\<less\><frac|\<varepsilon\>|a>\<Rightarrow\>0\<less\>a\<cdot\>b<rsup|n>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||a\<cdot\>b<rsup|n>-0|\|>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|a\<cdot\>b<rsup|n>|}><rsub|n\<in\>\<bbb-N\>>>
      converges to 0.
    </enumerate>

    Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then by
    <reference|0\<less\>x^n\<less\>e> there exists an <math|N\<in\>\<bbb-N\>>
    such that if <math|n\<geqslant\>N> then we have that <math|>\ 
  </proof>

  <\theorem>
    <label|limit and continuity>Let <math|<around*|\<langle\>|X,d<rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,d<rsub|Y>|\<rangle\>>> be metric spaces,
    <math|f:X\<rightarrow\>Y> a continuous function,
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
    a convergent sequence in <math|X> with
    <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> then
    <math|<around*|{|f<around*|(|x<rsub|n>|)>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><rsub|>>
    is convergent with <math|<below|lim|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)>=f<around*|(|x|)>>
    \ 
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<gtr\>0> then by continuity of <math|f> there
    exists a <math|\<delta\><around*|(|x|)>\<gtr\>0> such that if
    <math|d<rsub|X><around*|(|x,y|)>\<less\>\<lambda\><around*|(|x|)>> then
    <math|d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<varepsilon\>>.
    As <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there exists a
    <math|N\<in\><around*|{|k,\<ldots\>\<infty\>|}>> such that if
    <math|n\<geqslant\>N> then <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<delta\><around*|(|x|)>\<Rightarrow\>d<rsub|Y><around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<less\>\<varepsilon\>>
    proving that <math|<below|lim|n\<rightarrow\>\<infty\>>f<around*|(|x<rsub|n>|)>=f<around*|(|x|)>>
  </proof>

  <\definition>
    <label|Complete matric space><index|complete metric space><index|Banach
    space>A metric space <math|<around*|\<langle\>|X,d|\<rangle\>>> is
    complete if every Cauchy sequence is convergent. A normed space
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> is
    complete if every Cauchy sequence is convergent (this is the same as
    being Cauchy in the metric sense). A complete normed space is called a
    <with|font-series|bold|Banach> space.
  </definition>

  <\definition>
    <label|bounded function><index|bounded
    function><index|<math|\<cal-B\><around*|(|X,Y|)>>>Let <math|X> be a
    topological space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space then a function <math|f:X\<rightarrow\>Y> is
    <with|font-series|bold|bounded> iff <math|f<around*|(|X|)>> is bounded
    (see <reference|diameter>). In other words if
    <math|\<exists\>M\<in\>\<bbb-R\>> such that <math|\<forall\>x,y\<in\>X>
    we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\>M>.
    Let <math|\<cal-B\><around*|(|X,Y|)>\<subseteq\>Y<rsup|X>> be defined by
    <math|\<cal-B\><around*|(|X,Y|)>=<around*|{|f\<in\>Y<rsup|X>\|f is
    bounded|}>> the set of bounded functions from <math|X> to <math|Y>.
  </definition>

  <\theorem>
    <label|alternative definition of a bounded function>Let <math|X> be a non
    empty topological space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space then a function <math|f:X\<rightarrow\>Y> is
    <with|font-series|bold|bounded> iff <math|\<exists\>M\<in\>\<bbb-R\>>
    such that <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<leqslant\>M>
  </theorem>

  <\proof>
    \ 

    <dueto|<math|\<Rightarrow\>>>As <math|f> is bounded there exists a
    <math|M\<in\>\<bbb-R\>> such that <math|\<forall\>,x,y\<in\>X> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\>M>.
    As <math|X\<neq\>\<emptyset\>> there exists a <math|x<rsub|0>\<in\>X> let
    now <math|x\<in\>X> then <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>+f<around*|(|x<rsub|0>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|x<rsub|0>|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rsub|0>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|x<rsub|0>|)>|\<\|\|\>>+M>

    <dueto|<math|\<Leftarrow\>>>If <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<leqslant\>M> then if
    <math|x,y\<in\>X> we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>\<leqslant\>2M>
  </proof>

  <\theorem>
    Let <math|X> be a set, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space over a field <math|\<bbb-K\>> then
    <math|\<cal-B\><around*|(|X,Y|)>> is a vector space (using the canonical
    sum and scalar product of functions defined in <reference|vector space of
    functions to a vector space>)
  </theorem>

  <\proof>
    As <math|Y> is a vector space we have by <reference|vector space of
    functions to a vector space> that <math|Y<rsup|X>> forms a vector space.
    Now if <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
    <math|f,g\<in\>\<cal-B\><around*|(|X,Y|)>> then there exists
    <math|M<rsub|f>,M<rsub|g>\<in\>\<bbb-R\>> such that
    <math|\<forall\>x,y\<in\>X> we have <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\>M<rsub|f>>,
    <math|<around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|y|)>|\<\|\|\>>\<leqslant\>M<rsub|g>>.
    We have then that <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>f<around*|(|x|)>+\<beta\>\<cdot\>g<around*|(|x|)>-\<alpha\>\<cdot\>f<around*|(|y|)>-\<beta\>\<cdot\>g<around*|(|y|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|f<around*|(|x|)>-f<around*|(|y|)>|)>+\<beta\>\<cdot\><around*|(|g<around*|(|x|)>-g<around*|(|y|)>|)>|\<\|\|\>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>+<around*|\||\<beta\>|\|>\<cdot\><around*|\<\|\|\>|g<around*|(|x|)>-g<around*|(|y|)>|\<\|\|\>>\<leqslant\><around*|\||\<alpha\>|\|>\<cdot\>M<rsub|f>+<around*|\||\<beta\>|\|>\<cdot\>M<rsub|g>>
    proving that <math|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g\<in\>\<cal-B\><around*|(|X,Y|)>>.
    Using <reference|subspace of a vector space> we have then that
    <math|\<cal-B\><around*|(|X,Y|)>> forms a vector space.\ 
  </proof>

  <\definition>
    Let <math|X> be a non empty set, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space over a field <math|\<bbb-K\>>
    <math|f,g\<in\>\<cal-B\><around*|(|X,Y|)>> then
    <math|<around*|\<\|\|\>|f|\<\|\|\>><rsub|s>> is defined by
    <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>>
  </definition>

  <\theorem>
    <label|normed space of bounded functions>Let <math|X> be a non empty
    topological space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space over a field <math|\<bbb-K\>> then
    <math|\<cal-B\><around*|(|X,Y|)>> then
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|s>:\<cal-B\><around*|(|X,Y|)>\<rightarrow\>\<bbb-R\><rsub|+>>
    is well defined and forms a norm. So <math|<around*|\<langle\>|\<cal-B\><around*|(|X,Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|s>|\<rangle\>>>
    is a normed space.
  </theorem>

  <\proof>
    As <math|X\<neq\>\<emptyset\>> there exists a <math|x\<in\>X> then if
    <math|y\<in\>X> we have that <math|<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<leqslant\>M<rsub|f>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>
    proving that <math|\<forall\>t\<in\><around*|{|<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>\|y\<in\>X|}>>
    we have that <math|t\<leqslant\>M<rsub|f>+<around*|\<\|\|\>|f<around*|(|X|)>|\<\|\|\>>>
    so that <math|M<rsub|f>+<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>>
    forms a upper bound of <math|<around*|{|<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>\|y\<in\>X|}>>
    and thus by <reference|the reals are conditional complete> we have that
    <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>\|y\<in\>X|}>|)>>
    exists. Now to proof that <math|<around*|\<\|\|\>||\<\|\|\>><rsub|s>> is
    a norm

    <\enumerate>
      <item><math|\<forall\>f\<in\>\<cal-B\><around*|(|X,Y|)>\<vDash\><around*|\<\|\|\>|f|\<\|\|\>><rsub|s>\<geqslant\>0>
      is trivial by the definition.

      <item>If <math|f\<in\>\<cal-B\><around*|(|X,Y|)>> and
      <math|\<alpha\>\<in\>\<bbb-K\>> then
      <math|<around*|{|<around*|\<\|\|\>|\<alpha\>f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>=<around*|{|<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>=<around*|\||\<alpha\>|\|>\<cdot\><around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>\<Rightarrow\><around*|\<\|\|\>|f|\<\|\|\>><rsub|s>=sup<around*|(|<around*|\||\<alpha\>|\|>\<cdot\><around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>\<equallim\><rsub|<text|<reference|sup(a.S)>>><around*|\||\<alpha\>|\|>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|f|\<\|\|\>><rsub|s>>

      <item>If <math|f,g\<in\>\<cal-B\><around*|(|X,Y|)>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\<\|\|\>|f+g|\<\|\|\>><rsub|s>>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|<around*|(|f+g|)><around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>+g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>
        <around*|(|see <text|<reference|sup of set of bigger
        elements>>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>+<around*|{|<around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>
        <around*|(|see <text|<reference|inclusion and sup and
        inf>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup(S+T)>>>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>+sup<around*|(|<around*|{|<around*|\<\|\|\>|g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|f|\<\|\|\>><rsub|s>+<around*|\<\|\|\>|g|\<\|\|\>><rsub|s>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|B(X,Y) is a Banach space if Y is>Let <math|X> be a non empty set,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    Banach space over a field <math|\<bbb-K\>> then
    <math|<around*|\<langle\>|\<cal-B\><around*|(|X,Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|s>|\<rangle\>>>
    is a Banach space.
  </theorem>

  <\proof>
    Let <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a Cauchy sequence in <math|\<cal-B\><around*|(|X,Y|)>> then given
    <math|\<varepsilon\>\<gtr\>0> there exists a <math|N\<in\>\<bbb-N\>> such
    that <math|\<forall\>n,m> we have <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>=<around*|\<\|\|\>|f<rsub|n>-f<rsub|m>|\<\|\|\>><rsub|s>\<less\>\<varepsilon\>>
    so that <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>\<less\>\<varepsilon\>>
    or <math|\<forall\>x\<in\><around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence so as <math|Y> is a Banach space there exists a
    <math|f<around*|(|x|)>\<in\>Y> such that
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>.\ 

    So we can define a function <math|f:X\<rightarrow\>Y> defined by
    <math|x\<rightarrow\>f<around*|(|x|)>>. We prove now that <math|f> is
    bounded. So as <math|1\<gtr\>0> there exists a
    <math|N<around*|(|x|)>\<in\>\<bbb-N\>> such that if
    <math|n\<geqslant\>N<around*|(|x|)>> then
    <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>1\<Rightarrow\><around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<rsub|n><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><around*|\<\|\|\>|f<rsub|n><around*|(|x|)>|\<\|\|\>>+1>
    of <math|\<forall\>n\<geqslant\>N<around*|(|x|)>> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<less\>1+<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>|\<\|\|\>>>.
    Now as <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is Cauchy we have that <math|\<exists\>N\<in\>\<bbb-N\>> such that if
    <math|n,m\<geqslant\>\<bbb-N\>> then <math|<around*|\<\|\|\>|f<rsub|n>-f<rsub|m>|\<\|\|\>><rsub|s>\<less\>1>
    so if <math|m\<geqslant\>N> then <math|<around*|\<\|\|\>|f<rsub|m>-f<rsub|N>|\<\|\|\>><rsub|s>\<less\>1\<Rightarrow\><around*|\<\|\|\>|f<rsub|m>|\<\|\|\>><rsub|s>\<leqslant\><around*|\<\|\|\>|f<rsub|N>|\<\|\|\>><rsub|s>+<around*|\<\|\|\>|f<rsub|m>-f<rsub|N>|\<\|\|\>><rsub|s>\<less\><around*|\<\|\|\>|f<rsub|N>|\<\|\|\>><rsub|s>+1>
    or if <math|m\<geqslant\>N> and <math|x\<in\>X> then
    <math|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>|\<\|\|\>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>=<around*|\<\|\|\>|f<rsub|m>|\<\|\|\>><rsub|s>\<less\><around*|\<\|\|\>|f<rsub|N>|\<\|\|\>><rsub|s>+1>.
    Now given <math|x\<in\>X> if <math|l\<geqslant\>max<around*|(|N<around*|(|x|)>,N|)>>
    then <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<less\>1+<around*|\<\|\|\>|f<rsub|l><around*|(|x|)>|\<\|\|\>>\<less\>1+<around*|(|<around*|\<\|\|\>|f<rsub|N>|\<\|\|\>><rsub|s>+1|)>=2+<around*|\<\|\|\>|f<rsub|N>|\<\|\|\>><rsub|s>>
    proving by <reference|alternative definition of a bounded function> that
    <math|f> is a bounded function and thus that
    <math|f\<in\>\<cal-B\><around*|(|X,Y|)>>.\ 

    Next we prove that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>=f>,
    so let <math|\<varepsilon\>\<gtr\>0> then if <math|x\<in\>X> there exists
    a <math|N<around*|(|x|)>> such that if
    <math|n\<geqslant\>N<around*|(|x|)>> then
    <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    As <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    there exist a <math|N> such that <math|<around*|\<\|\|\>|f<rsub|n>-f<rsub|N>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    if <math|n\<geqslant\>N> so that <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<rsub|N><around*|(|x|)>|\<\|\|\>>\<leqslant\>sup<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<rsub|N><around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>=<around*|\<\|\|\>|f<rsub|n>-f<rsub|N>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    Take then <math|x\<in\>X> and \ <math|m\<geqslant\>N> and
    <math|n\<geqslant\>max<around*|(|N<around*|(|x|)>,N|)>> then we have that
    \ <math|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<rsub|n><around*|(|x|)>+f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<rsub|n><around*|(|x|)>|\<\|\|\>>+<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
    proving that <math|\<forall\>x\<in\>X> we have if <math|m\<geqslant\>N>
    that <math|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    proving that <math|\<varepsilon\>> is a upper bound of
    <math|<around*|{|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>>
    or <math|<around*|\<\|\|\>|f<rsub|m>-f|\<\|\|\>><rsub|s>=sup<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|m><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>\<less\>\<varepsilon\>>
    proving that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>=f> and
    thus that <math|\<cal-B\><around*|(|X,Y|)>> is Banach.
  </proof>

  <\definition>
    <label|uniform convergence><index|uniform convergence>Let <math|X> be a
    set, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a metric space be topological spaces and
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence of function from <math|X\<rightarrow\>Y> then
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    <with|font-series|bold|converges uniformely> to a function
    <math|f:X\<rightarrow\>Y> if <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\>\<vdash\>\<varepsilon\>\<gtr\>0>
    there exists a <math|N\<in\>\<bbb-N\>> such that
    <math|\<forall\>n\<geqslant\>N> and <math|\<forall\>x\<in\>X> we have
    <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
  </definition>

  As a example of uniform convergence we use the set of bounded functions

  <\theorem>
    <label|uniform convergence in bounded functions>Let <math|X> be a non
    empty set, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a normed space then if <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a sequence of bounded functions then convergence in
    <math|\<cal-B\><around*|(|X,Y|)>> is equivalent with uniform convergence.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
      there exists a <math|N\<in\>\<bbb-N\>> such that if
      <math|n\<geqslant\>N> then <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>=<around*|\<\|\|\>|f<rsub|n>-f|\<\|\|\>><rsub|s>\<less\>\<varepsilon\>\<Rightarrowlim\><rsub|sup
      is a upper bound>\<forall\>x\<in\>X> we have
      <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      proving uniform convergence.

      <item><dueto|<math|\<Leftarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
      there exists a <math|N\<in\>\<bbb-N\>> such that if
      <math|n\<geqslant\>N> we have <math|\<forall\>x\<in\>X> that
      <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|\<varepsilon\>> is a upperbound of
      <math|<around*|{|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>>
      so that <math|<around*|\<\|\|\>|f<rsub|n>-f|\<\|\|\>><rsub|s>=sup<around*|(|<around*|{|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>>\|x\<in\>X|}>|)>\<less\>\<varepsilon\>>
      proving that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>=f>.
    </enumerate>
  </proof>

  <\theorem>
    <label|uniform convergence preserves continuity>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    \ a normed space then if <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a sequence of continuous functions from <math|X> to <math|Y> uniformly
    converging to a function <math|f:X\<rightarrow\>Y> then <math|f> is
    continuous.
  </theorem>

  <\proof>
    Take <math|x\<in\>X> and <math|\<varepsilon\>\<gtr\>0>, from uniform
    convergence there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    such that <math|\<forall\>n\<geqslant\>N> we have
    <math|\<forall\>x\<in\>X> that <math|<around*|\<\|\|\>|f<rsub|n><around*|(|x|)>-f<around*|(|x|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|3>>.
    Now as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have that <math|f<rsub|N>> is continuous <math|\<delta\><rsub|N>\<gtr\>0>
    such that if <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|N>>
    then <math|<around*|\<\|\|\>|f<rsub|N><around*|(|x|)>-f<rsub|N><around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|3>>.
    Let <math|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|N>>
    then <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<rsub|N><around*|(|x|)>+f<rsub|N><around*|(|x|)>-f<rsub|N><around*|(|y|)>+f<rsub|N><around*|(|y|)>-f<around*|(|y|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<rsub|N><around*|(|x|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<rsub|N><around*|(|x|)>-f<rsub|N><around*|(|y|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|f<rsub|N><around*|(|y|)>-f<rsub|N><around*|(|y|)>|\<\|\|\>><rsub|Y>\<less\><frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>=\<varepsilon\>>
    proving that <math|f> is continuous.
  </proof>

  <\theorem>
    <label|closed subset of a complete space is complete>Let
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is complete and
    <math|A\<subseteq\>X> is closed then <math|<around*|\<langle\>|A,d<rsub|A>|\<rangle\>>>
    is complete.
  </theorem>

  <\proof>
    Let <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
    be a Cauchy sequence in <math|A> then trivially
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence in <math|X> so there exists a <math|x\<in\>X> such
    that <math|lim<rsub|n\<rightarrow\>\<infty\>>x<rsub|n>=x>. So if <math|U>
    is a open set with <math|x\<in\>U> then there exists a
    <math|\<varepsilon\>\<gtr\>0> such that
    <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U> and as
    <math|lim<rsub|n\<rightarrow\>\<infty\>>x<rsub|n>=x> there exists a
    <math|N\<in\><around*|{|k,\<ldots\>\<infty\>|}>> so that
    <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>> is
    <math|n\<geqslant\>N> proving that <math|x<rsub|N>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U\<Rightarrow\>U<big|cap>A\<neq\>\<emptyset\>>
    proving that <math|x\<in\>A> (see <reference|alternate definition of
    closed set>) and thus that <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is convergent in <math|S>.
  </proof>

  <\theorem>
    <label|limit preserve inequality>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a convergent sequence with <math|<wide||\<wide-bar\>><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>>
    then if <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>A\<in\>\<bbb-R\>>
    (or <math|A\<leqslant\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>) then we
    have that <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>A> (or
    <math|A\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>>)
  </theorem>

  <\proof>
    \ We have to consider the following cases

    <\enumerate>
      <item><dueto|<math|\<forall\>i\<in\><around*|{|k,\<ldots\>\<infty\>|}>
      we have <around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>A>>We proceed
      by contradiction so assume that <math|A\<less\><around*|\<\|\|\>|x|\<\|\|\>>>
      then there exists a <math|\<varepsilon\>=<around*|\<\|\|\>|x|\<\|\|\>>-A>
      with <math|\<varepsilon\>\<less\>0> so there exists a
      <math|N\<in\><around*|{|k,\<ldots\>\<infty\>|}>> such that if
      <math|<around*|\<\|\|\>|x-x<rsub|N>|\<\|\|\>>\<less\>\<varepsilon\>>
      and thus <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-x<rsub|N>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<less\>\<varepsilon\>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<leqslant\>\<varepsilon\>+A=<around*|\<\|\|\>|x|\<\|\|\>>-A+A=<around*|\<\|\|\>|x|\<\|\|\>>>
      giving the contradiction <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\><around*|\<\|\|\>|x|\<\|\|\>>>.

      <item><dueto|<math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
      we have A\<leqslant\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>>We proceed
      by contradiction so assume that <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>A>
      then <math|\<varepsilon\>=A-<around*|\<\|\|\>|x|\<\|\|\>>\<gtr\>0> and
      there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
      that <math|<around*|\<\|\|\>|x<rsub|N>-x|\<\|\|\>>\<less\>\<varepsilon\>>
      then <math|A\<leqslant\><around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-x<rsub|N>|\<\|\|\>>+<around*|\<\|\|\>|x|\<\|\|\>>\<less\>\<varepsilon\>\<noplus\>\<noplus\>+<around*|\<\|\|\>|x|\<\|\|\>>=A-<around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|x|\<\|\|\>>=A>
      leading to the contradiction <math|A\<less\>A> so we must have
      <math|A\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|limit preserves inequality (3)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    \ be a normed space on <math|\<bbb-K\>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>> a
    convergent sequence in <math|X>, <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a convergent sequence in <math|\<bbb-R\>> with
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>s<rsub|i>> (so
    <math|0\<leqslant\>s<rsub|N>>) then <math|<around*|\<\|\|\>|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|\<\|\|\>>\<less\><below|lim|i\<rightarrow\>\<infty\>>s<rsub|i>>
  </theorem>

  <\proof>
    Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>,
    <math|s=<below|lim|i\<rightarrow\>\<infty\>>s<rsub|i>> (using the
    previous theorem we must then have that <math|0\<leqslant\>s> as
    <math|0\<leqslant\><around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\>s>)
    and assume that <math|s\<less\><around*|\<\|\|\>|x|\<\|\|\>>> so that
    <math|\<varepsilon\>=<around*|\<\|\|\>|x|\<\|\|\>>-s\<gtr\>0> and find
    <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>\<infty\>|}>> such
    that <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    if <math|n\<geqslant\>N<rsub|1>> and <math|<around*|\||s<rsub|m>-s|\|>\<less\><frac|\<varepsilon\>|2>>
    then if <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x-x<rsub|N>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>+s<rsub|N>\<leqslant\><frac|e|2>+<around*|\||s<rsub|N>|\|>\<leqslant\><frac|\<varepsilon\>|2>+<around*|\||s<rsub|N>-s|\|>+<around*|\||s|\|>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>+<around*|\||s|\|>=\<varepsilon\>+<around*|\||s|\|>\<equallim\><rsub|0\<leqslant\>s\<Rightarrow\>s=<around*|\||s|\|>>\<varepsilon\>+s=<around*|\<\|\|\>|x|\<\|\|\>>-s+s=<around*|\<\|\|\>|x|\<\|\|\>>>
    leading to the contradiction <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\><around*|\<\|\|\>|x|\<\|\|\>>\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>s>.
  </proof>

  <\theorem>
    <label|limit preserves inequality (2)>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space and let <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>\<infty\>|}>>,<around*|{|y<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be convergent sequences with <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y<rsub|n>|\<\|\|\>>>
    then <math|<around*|\<\|\|\>|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>|\<\|\|\>>>
  </theorem>

  <\proof>
    Let <math|x=<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>>,
    <math|y=<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>> and assume that
    <math|<around*|\<\|\|\>|y|\<\|\|\>>\<less\><around*|\<\|\|\>|x|\<\|\|\>>>
    so that <math|0\<less\><around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>=\<varepsilon\>>
    and find <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>\<infty\>|}>>
    such that <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>,<math|<around*|\<\|\|\>|y<rsub|m>-y|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    if <math|n\<geqslant\>N<rsub|1>,m\<geqslant\>N<rsub|2>> then if
    <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
    <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|N>-x|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|N>-x|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|N>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|N>-x|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|N>-y+y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|N>-x|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|N>-y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>+<around*|\<\|\|\>|y|\<\|\|\>>=\<varepsilon\>+<around*|\<\|\|\>|y|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>-<around*|\<\|\|\>|y|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>=<around*|\<\|\|\>|x|\<\|\|\>>\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>>\<less\><around*|\<\|\|\>|x|\<\|\|\>>>
    a contradiction so we must have that <math|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|y|\<\|\|\>>>
  </proof>

  \;

  <\theorem>
    <label|limit of a sum>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and given two sequences
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
    <math|<around*|{|y<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be convergent sequences with <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>
    and <math|<below|lim|n\<rightarrow\>\<infty\>>y<rsub|n>\<rightarrow\>y>
    then <math|<around*|{|x<rsub|n>+y<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is convergent with <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|x<rsub|n>+y<rsub|n>|)>=x+y>.
    Second <math|\<forall\>\<alpha\>\<in\>\<bbb-K\>>
    (<math|\<bbb-K\>=\<bbb-C\>> or <math|\<bbb-R\>> the field of scalars in
    <math|X>) we have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=\<alpha\>\<cdot\>x>.
    Third if <math|z\<in\>X> then <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|z+x<rsub|n>|)>=z+<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|\<varepsilon\>\<gtr\>0> find a
      <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|n\<geqslant\>N<rsub|1>,N<rsub|2>> we have
      <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>,
      <math|<around*|\<\|\|\>|y<rsub|n>-y|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>>
      so that if <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
      <math|k\<geqslant\>N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
      <math|<around*|\<\|\|\>|<around*|(|x<rsub|n>+y<rsub|n>|)>-<around*|(|x+y|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>+<around*|\<\|\|\>|y<rsub|n>-y|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>\ 

      <item>We have two cases to consider

      <\enumerate>
        <item><dueto|<math|\<alpha\>=0>>then
        <math|\<alpha\>\<cdot\>x<rsub|i>=0> and it is trivial to prove that
        <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|n>|)>=0=\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>>

        <item><dueto|<math|\<alpha\>\<neq\>0>>then
        <math|<around*|\||\<alpha\>|\|>\<neq\>0> and given
        <math|\<varepsilon\>\<gtr\>0> find a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> so that
        <math|\<forall\>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
        <math|n\<geqslant\>N> we have <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>>
        so that <math|<around*|\<\|\|\>|\<alpha\>\<cdot\>x<rsub|n>-\<alpha\>\<cdot\>x|\<\|\|\>>=<around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|x<rsub|n>-x|)>|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|<around*|\||\<alpha\>|\|>>\<cdot\><around*|\||\<alpha\>|\|>=\<varepsilon\>>
      </enumerate>

      <item>Given <math|\<varepsilon\>\<gtr\>0> then there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that if
      <math|n\<geqslant\>\<bbb-N\>>, <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>
      then <math|<around*|\<\|\|\>|<around*|(|z+x<rsub|n>|)>-<around*|(|z+x|)>|\<\|\|\>>=<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>\<less\>\<varepsilon\>>.
    </enumerate>
  </proof>

  <\definition>
    <label|definition of a serie><dueto|Definition of Series>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<infty\>>> is
    a sequence then if <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>>
    exists we say that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is
    a convergent series and we note <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>>.
  </definition>

  <\note>
    As a shorthand if we say that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=s>
    then we mean that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is
    a convergent series and that <math|s=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>.
  </note>

  <\theorem>
    <label|terms of a convergent series goes to 0>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space and <math|<around*|{|x|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence such that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    is convergent then <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=0>
  </theorem>

  <\proof>
    Given <math|\<varepsilon\>\<gtr\>0> then because
    <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has a limit it must be Cauchy so there exists a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that if
    <math|n\<geqslant\>N+1> and thus <math|n,n-1\<geqslant\>N> then
    <math|<around*|\<\|\|\>|x<rsub|n>-0|\<\|\|\>>=<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|n-1>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
    proving that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=0>.
  </proof>

  <\theorem>
    <label|subserie property>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence and <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is convergent if and
    only if <math|<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>> is a
    convergent series (so <math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|<big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|i>> converges. Also if
    any of the two series is convergent then we have
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<around*|(|<big|sum><rsub|i=k><rsup|m>x<rsub|i>|)>+<around*|(|<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>|)>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Given
      \ <math|\<varepsilon\>\<gtr\>0> then
      <math|\<exists\>N\<in\><around|{|k,\<ldots\>,\<infty\>|}>> such that if
      <math|n\<geqslant\>N> we have <math|\<shortparallel\><big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|\<infty\>>\<shortparallel\>\<less\>\<varepsilon\>>.
      Now take <math|N<rprime|'>=N+<around|(|m-k|)>+1\<in\><around|{|m+1,\<ldots\>.,\<infty\>|}>>
      [as <math|N\<geqslant\>k>] and if <math|n\<geqslant\>N<rprime|'>\<geqslant\>N>
      [as <math|m\<geqslant\>k>] then <math|\<shortparallel\><big|sum><rsub|i=m+1><rsup|n>x<rsub|i>-<around|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>|)>\<shortparallel\>=\<shortparallel\><big|sum><rsub|i=m+1><rsup|n>x<rsub|i>+<big|sum><rsub|i=k><rsup|m>x<rsub|i>-<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<shortparallel\>\<equallim\>\<shortparallel\><big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<shortparallel\>\<less\>\<varepsilon\>>
      proving that <math|<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>>
      exists and is equal to <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>>\ 

      <item><dueto|<math|\<Leftarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
      then <math|\<exists\>N\<in\><around|{|m+1,\<ldots\>,\<infty\>|}>> such
      that if <math|n\<geqslant\>N> we have
      <math|\<shortparallel\><big|sum><rsub|i=m+1><rsup|n>x<rsub|i>-<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>\<shortparallel\>\<less\>\<varepsilon\>>.
      Then also <math|N\<in\><around|{|k,\<ldots\>,\<infty\>|}>> and
      <math|\<shortparallel\><big|sum><rsub|i=k><rsup|n>x<rsub|i>-<around|(|<big|sum><rsub|i=k><rsup|m>x<rsub|i>+<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>|)>\<shortparallel\>\<equallim\><rsub|>\<shortparallel\><big|sum><rsub|i=m+1><rsup|n>x<rsub|i>-<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>\<shortparallel\>\<less\>\<varepsilon\>>
      proving that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> exist
      and is equal to <math|<big|sum><rsub|i=k><rsup|m>x<rsub|i>+<big|sum><rsub|i=m+1><rsup|\<infty\>>x<rsub|i>>
    </enumerate>
  </proof>

  <\theorem>
    <label|converging of upper serie>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    such that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> converges
    then <math|<below|lim|N\<rightarrow\>\<infty\>><big|sum><rsub|i=N><rsup|\<infty\>>x<rsub|i>=0>
  </theorem>

  <\proof>
    Let <math|\<varepsilon\>\<gtr\>0> then as
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> converges there
    exists a <math|N\<geqslant\>k> so that <math|\<forall\>m-1\<geqslant\>N>
    we have <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>-<big|sum><rsub|i=k><rsup|m-1>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
    then <math|<around*|\<\|\|\>|<big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|i>-0|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=m><rsup|\<infty\>>x<rsub|i>|\<\|\|\>>\<equallim\><rsub|see
    previous theorem <text|<reference|subserie
    property>>><around*|\<\|\|\>|<big|sum><rsup|\<infty\><rsub|>><rsub|i=k>x<rsub|i>-<big|sum><rsup|m-1<rsub|<rsub|>>><rsub|i=k>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
    proving our theorem.
  </proof>

  \ 

  <\theorem>
    <label|linear combination of convergent series>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space over the field <math|\<bbb-K\>>,
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>> and
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
    <math|<around*|{|y<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    sequences such that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    and <math|<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>> exist then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>>
    exists and is equal to <math|\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y>
  </theorem>

  <\proof>
    Given <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have that
    <math|<big|sum><rsub|i=k><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
    sum in a field>,<reference|generalized sum of
    sum's>>>\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|n>x<rsub|i>+\<beta\>\<cdot\><big|sum><rsub|i=k><rsup|n>y<rsub|i>>,
    using <reference|limit of a sum> we have then that
    <math|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n><around*|(|\<alpha\>\<cdot\>x<rsub|i>+\<beta\>\<cdot\>y<rsub|i>|)>>
    exists and is equality to <math|\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>+\<beta\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>y<rsub|i>>.
  </proof>

  <\theorem>
    <label|convergent criteria of a serie in a Banach space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a Banach space, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence in <math|X> and <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence in <math|\<bbb-R\>> such that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>s<rsub|i>> exists and
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>s<rsub|i>> (so
    <math|s<rsub|i>\<geqslant\>0>) then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    exists and <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>s<rsub|i>>
  </theorem>

  <\proof>
    First we prove that <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is Cauchy. So let <math|\<varepsilon\>\<gtr\>0> then as
    <math|<around*|{|<big|sum><rsub|i=k><rsup|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    converges it is Cauchy and thus <math|\<exists\>N> such that if
    <math|n,m\<geqslant\>N> then <math|<around*|\||<big|sum><rsub|i=k><rsup|n>s<rsub|i>-<big|sum><rsub|i=k><rsup|m>s<rsub|i>|\|>\<less\>\<varepsilon\>>.
    Consider now the following sub cases for <math|n,m>:

    <\enumerate>
      <item><dueto|<math|n=m>>then <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>|\<\|\|\>>=0\<less\>\<varepsilon\>>

      <item><dueto|<math|n\<less\>m>>then
      <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|m>x<rsub|i>-<big|sum><rsub|i=k><rsup|n>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=n+1><rsup|m>x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|norm
      of a finite sum>>><big|sum><rsub|i=n+1><rsup|m><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|generalized
      sum and order of families>>><big|sum><rsup|m><rsub|i=n+1><rsup|><around*|\||s<rsub|i>|\|>\<equallim\><rsub|s<rsub|i>\<geqslant\>0><big|sum><rsub|i=n+1><rsup|m>s<rsub|i>\<equallim\><rsub|0\<leqslant\><big|sum><rsub|i=n+1><rsup|m>s<rsub|i>><around*|\||<big|sum><rsub|i=n+1><rsup|m>s<rsub|i>|\|>=<around*|\||<big|sum><rsub|i=k><rsup|m>s<rsub|i>-<big|sum><rsub|i=k><rsup|n>s<rsub|i>|\|>=<around*|\||<big|sum><rsub|i=k><rsup|n>s<rsub|i>-<big|sum><rsub|i=k><rsup|m>s<rsub|i>|\|>\<less\>\<varepsilon\>>

      <item><dueto|<math|n\<gtr\>m>>then <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=m+1><rsup|n>x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|norm
      of a finite sum>>><big|sum><rsub|i=m+1><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|generalized
      sum and order of families>>><big|sum><rsup|n><rsub|i=m+1><rsup|><around*|\||s<rsub|i>|\|>\<equallim\><big|sum><rsub|i=m+1><rsup|n>s<rsub|i>\<equallim\><rsub|0\<leqslant\><big|sum><rsub|i=n+1><rsup|m>s<rsub|i>><around*|\||<big|sum><rsub|i=m+1><rsup|n>s<rsub|i>|\|>=<around*|\||<big|sum><rsub|i=k><rsup|n>s<rsub|i>-<big|sum><rsub|i=k><rsup|m>s<rsub|i>|\|>\<less\>\<varepsilon\>>
      (as <math|s<rsub|i>\<geqslant\>0\<Rightarrow\><around*|\||s<rsub|i>|\|>=s<rsub|i>>)
    </enumerate>
  </proof>

  So in all cases we have <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>-<big|sum><rsub|i=k><rsup|m>x<rsub|i>|\<\|\|\>>\<less\>\<varepsilon\>>
  proving that <math|<around*|{|<big|sum><rsub|i=k><rsup|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
  is Cauchy. as <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
  is a Banach space and thus complete we have that
  <math|<around*|{|<big|sum><rsub|i=k><rsup|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
  converges and thus that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
  exist.

  Second if <math|n\<in\><around*|{|k,\<ldots\>\<infty\>|}>> then we have
  <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=k><rsup|n><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=k><rsup|n><around*|\||x<rsub|i>|\|>=<big|sum><rsub|i=k><rsup|n>s<rsub|i>>
  so that by <reference|limit preserves inequality (2)> we have that
  <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>|\<\|\|\>>=<around*|\<\|\|\>|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsup|n><rsub|i=k>x<rsub|i>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|limit
  preserves inequality (3)>>><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>s<rsub|i>>.

  <\corollary>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed Banach space, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence so that <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
    exists then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> exists
    and <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>
  </corollary>

  <\proof>
    This follows from the previous theorem as
    <math|<around*|{|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a sequence in <math|\<bbb-R\>> and
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>>.
  </proof>

  <\theorem>
    <label|exchange infinite sum and finite sum>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space, <math|k,m,n\<in\>\<bbb-N\>\<vdash\>m\<leqslant\>n> and
    <math|<around*|{|x<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|m,\<ldots\>,n|}>>>
    a family in <math|X> then if <math|\<forall\>j\<in\><around*|{|m,\<ldots\>,n|}>>
    we have that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>> exists
    then <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m><rsup|n>x<rsub|i,j>|)>>
    exists and is equal to <math|<big|sum><rsub|j=m><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>
  </theorem>

  <\proof>
    As <math|\<forall\>j\<in\><around*|{|m,\<ldots\>,n|}>> we have that
    <math|b<rsub|j>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>> exists
    there is given a <math|\<varepsilon\>\<gtr\>0> a
    <math|N<rsub|j>\<geqslant\>0> such that if <math|l\<geqslant\>N<rsub|j>>
    then <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|l>x<rsub|i,j>-b<rsub|j>|\<\|\|\>>\<less\><frac|\<varepsilon\>|n-m+1>>.
    then we have that if <math|l\<geqslant\>max<around*|(|<around*|{|b<rsub|j>\|j\<in\><around*|{|m,\<ldots\>,n|}>|}>|)>>
    that <math|<around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|l><around*|(|<big|sum><rsub|j=m><rsup|n>x<rsub|i,j>|)>-<big|sum><rsub|j=m><rsup|n>b<rsub|j>|\<\|\|\>>\<equallim\><rsub|<text|<reference|exchange
    sum>>><around*|\<\|\|\>|<big|sum><rsub|j=m><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|l>x<rsub|i,j>|)>-<big|sum><rsub|j=m><rsup|n>b<rsub|j>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|j=m><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|l>x<rsub|i,j>-b<rsub|j>|)>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|norm
    of a finite sum>>><big|sum><rsub|j=m><rsup|n><around*|\<\|\|\>|<big|sum><rsub|i=k><rsup|l>x<rsub|i,j>-b<rsub|j>|\<\|\|\>>\<less\><big|sum><rsub|j=m><rsup|n><frac|\<varepsilon\>|m-n+1>\<less\>\<varepsilon\>>
    proving that <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|j=m><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>.<math|>
  </proof>

  <\theorem>
    Let <math|X> be a set with two equivalent compatible norms
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>>,
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> then

    <\enumerate>
      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is convergent to <math|x\<in\>X> in
      <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> if and only if it is
      convergent to <math|x> in <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>

      <item><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is Cauchy in <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> if and only if
      it is Cauchy in <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>>
    </enumerate>
  </theorem>

  <\proof>
    First note that we only have to prove <math|\<Rightarrow\>> (as
    <math|\<Leftarrow\>> follows from applying the theorem in the opposite
    direction. Next as <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> and
    <math|<around*|\<\|\|\>||\<\|\|\>><rsub|2>> are equivalent there exists
    <math|M<rsub|1>\<gtr\>0,M<rsub|2>\<gtr\>0> such that
    <math|\<forall\>x\<in\>X> we have <math|M<rsub|1>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|1>>.
    We have then\ 

    <\enumerate>
      <item><dueto|Convergence>Let <math|\<varepsilon\>\<gtr\>0> then by
      convergence in <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> there exists
      a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|<around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>>\<less\><frac|\<varepsilon\>|M<rsub|2>>>
      so that <math|<around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x-x<rsub|n>|\<\|\|\>><rsub|1>\<less\>M<rsub|2>\<cdot\><frac|\<varepsilon\>|M<rsub|2>>=\<varepsilon\>>

      <item><dueto|Cauchy>Let <math|\<varepsilon\>\<gtr\>0> then by the
      Cauchy property in <math|<around*|\<\|\|\>||\<\|\|\>><rsub|1>> there
      exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n,m\<geqslant\>N> we have
      <math|<around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>>\<less\><frac|\<varepsilon\>|M<rsub|2>>>
      and thus <math|<around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>><rsub|2>\<leqslant\>M<rsub|2>\<cdot\><around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>><rsub|1>\<less\>M<rsub|2>\<cdot\><frac|e|M<rsub|2>>=\<varepsilon\>>
    </enumerate>
  </proof>

  <\theorem>
    <label|limit point of sequences>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a metric space, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
    a sequence and <math|x> a limit point of
    <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|,\<ldots\>,\<infty\>|}>|}>>
    then <math|\<forall\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|\<varepsilon\>\<gtr\>0> there exists a
    <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with <math|n\<gtr\>N>
    such that <math|d<around*|(|x,x<rsub|n>|)>\<less\>\<varepsilon\>>
  </theorem>

  <\proof>
    Given <math|\<varepsilon\>\<gtr\>0> take then
    <math|A<rsub|\<varepsilon\>>=<around*|{|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|0\<less\>d<around*|(|x,x<rsub|i>|)>\<less\>\<varepsilon\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>.
    We prove now that <math|A<rsub|\<varepsilon\>>> must be finite by
    contradiction. So assume that <math|A<rsub|\<varepsilon\>>> is finite.
    Then as <math|x> is a limit point of <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    there exists a <math|x<rsub|i>\<in\><around*|{|x<rsub|i><around*|\||i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>>
    with <math|x<rsub|i>\<neq\>x> and <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<Rightarrow\>0\<less\>d<around*|(|x,x<rsub|i>|)>\<less\>\<varepsilon\>\<Rightarrow\>i\<in\>A<rsub|\<varepsilon\>>\<Rightarrow\>A<rsub|\<varepsilon\>>\<neq\>\<emptyset\>>.
    As we assumed that <math|A<rsub|\<varepsilon\>>> is finite, we have that
    <math|B<rsub|\<varepsilon\>>=<around*|{|d<around*|(|x,x<rsub|i>|)>\|i\<in\>A<rsub|\<varepsilon\>>|}>>
    is finite (as <math|f:A<rsub|\<varepsilon\>>\<rightarrow\>B<rsub|\<varepsilon\>>>,
    <math|i\<rightarrow\>f<around*|(|i|)>=d<around*|(|x,x<rsub|i>|)>> is a
    surjection) and we have by <reference|finite ordered sets have a maximum>
    the existence of a <math|\<delta\>=min<around*|(|B<rsub|\<varepsilon\>>|)>=min<around*|(|d<around*|(|x,x<rsub|i>|)><around*|\||i\<in\>A<rsub|\<varepsilon\>>|\|>|)>>.
    We must have that <math|\<delta\>\<gtr\>0> (as
    <math|\<forall\>i\<in\>A<rsub|\<varepsilon\>>> we have
    <math|d<around*|(|x,x<rsub|i>|)>\<gtr\>0> by definition of
    <math|A<rsub|\<varepsilon\>>>). Again by the fact that <math|x> is the
    limit point of <math|<around*|{|x<rsub|i><around*|\||i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>>
    that there exists a <math|x<rsub|j>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    such that <math|x<rsub|j>\<neq\>x> and
    <math|x<rsub|j>\<in\>B<rsub|d><around*|(|x,\<delta\>|)>\<Rightarrow\>0\<less\>d<around*|(|x,x<rsub|j>|)>\<less\>\<delta\>\<Rightarrow\>j\<in\>A<rsub|\<varepsilon\>>\<Rightarrow\>d<around*|(|x,x<rsub|j>|)>\<in\>B<rsub|\<varepsilon\>>=<around*|{|d<around*|(|x,x<rsub|i>|)>\|i\<in\>A<rsub|\<varepsilon\>>|}>\<Rightarrow\>\<delta\>\<leqslant\>d<around*|(|x,x<rsub|j>|)>\<less\>\<delta\>\<Rightarrow\>\<delta\>\<less\>\<delta\>>
    a contradiction. So we must have that <math|A<rsub|\<varepsilon\>>> is
    infinite.

    If the theorem is not true then <math|\<exists\>N<rsub|0>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    such that <math|\<forall\>n\<gtr\>N<rsub|0>> that
    <math|d<around*|(|x,x<rsub|n>|)>\<geqslant\>\<varepsilon\>\<Rightarrow\>n\<nin\>A<rsub|\<varepsilon\>>>
    and thus <math|A<rsub|\<varepsilon\>>\<subseteq\><around*|{|k,\<ldots\>,N<rsub|0>|}>>
    so <math|A<rsub|\<varepsilon\>>> would be finite contradicting the fact
    that <math|A<rsub|\<varepsilon\>>> is infinite.
  </proof>

  <\theorem>
    <label|cauchy and uniqueness>Let <math|<around*|\<langle\>|X,d|\<rangle\>>>
    be a metrics space then every Cauchy sequence has a maximum of one limit
    point.
  </theorem>

  <\proof>
    Assume that <math|x,y> are different limit points of the Cauchy sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>.
    Then as <math|x\<neq\>y> we have that
    <math|\<varepsilon\>=d<around*|(|x,y|)>\<gtr\>0> . Now by the Cauchy
    condition we can find a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    such that <math|\<forall\>i,j\<geqslant\>N> we have
    <math|d<around*|(|x<rsub|i>,x<rsub|j>|)>\<less\><frac|\<varepsilon\>|3>>.
    By <reference|limit point of sequences> there exists
    <math|n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|n,m\<gtr\>N> and <math|d<around*|(|x,x<rsub|n>|)>\<less\><frac|\<varepsilon\>|2>>,
    <math|d<around*|(|x,x<rsub|m>|)>\<less\><frac|\<varepsilon\>|2>\<Rightarrow\>\<varepsilon\>=d<around*|(|x,y|)>\<leqslant\>d<around*|(|x,x<rsub|n>|)>+d<around*|(|x<rsub|n>,x<rsub|m>|)>+d<around*|(|y,x<rsub|m>|)>\<less\><frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
    a contradiction so we must have that <math|x=y>.
  </proof>

  \ <with|color|<pattern|/usr/local/share/TeXmacs/misc/patterns/paper-manila-medium.png||>|>

  <\theorem>
    <label|every compact metric space is complete>Every compact metric space
    <math|<around*|\<langle\>|X,d|\<rangle\>>> is complete.
  </theorem>

  <\proof>
    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a arbitrary Cauchy sequence and let
    <math|S=<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>\<infty\>|}>|}>>
    then we must consider the following cases:

    <\enumerate>
      <item><dueto|<math|S> is finite>In this case there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i,j\<geqslant\>N> we have <math|x<rsub|i>=x<rsub|j>>
      [[We prove this by contradiction, so assume that
      <math|\<forall\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> there
      exists <math|i,j\<geqslant\>N> such that
      <math|x<rsub|i>\<neq\>x<rsub|j>> so that
      <math|A=<around*|{|d<around*|(|x,y|)>\|x,y\<in\>S\<wedge\>x\<neq\>y|}>>
      is not empty (take <math|N=k> then there exists a
      <math|i,j\<geqslant\>k> with <math|x<rsub|i>\<neq\>x<rsub|j>>) and
      finite (as by <reference|product of finite sets is finite>
      <math|S*\<times\>S> is finite and <math|f:S\<times\>S\<rightarrow\>A>
      defined by <math|<around*|(|x,y|)>\<rightarrow\>d<around*|(|x,y|)>> is
      a surjection). \ By <reference|finite ordered sets have a maximum>
      <math|\<varepsilon\>=min<around*|(|A|)>> exists and is <math|\<gtr\>0>
      (for if <math|d\<in\>A\<Rightarrow\>d=d<around*|(|x,y|)>\<gtr\>0> as
      <math|x\<neq\>y>). By the Cauchy option there exists then a
      <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that if
      <math|i<rprime|'>,j<rprime|'>\<geqslant\>N<rsub|1>> then
      <math|d<around*|(|x<rsub|i>,x<rsub|j>|)>\<less\>\<varepsilon\>> and by
      the hypothesis there exists a <math|i,j\<geqslant\>N<rsub|1>> such that
      <math|x<rsub|i>\<neq\>x<rsub|j>\<Rightarrow\>d<around*|(|x<rsub|i>,x<rsub|j>|)>\<in\>A\<Rightarrow\>\<varepsilon\>\<leqslant\>d<around*|(|x,y|)>\<less\>\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
      a contradiction]]. Given a <math|\<varepsilon\>\<gtr\>0> take
      <math|n\<geqslant\>N> then <math|x<rsub|n>=x<rsub|N>\<Rightarrow\>d<around*|(|x<rsub|n>,x<rsub|N>|)>=0\<less\>\<varepsilon\>>
      proving that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      converges to <math|x<rsub|N>>.

      <item><dueto|<math|S is infinite>>Then using <reference|compactness and
      sequential compactness> there exists limit points for <math|S> which
      because of the previous theorem must be unique (see <reference|cauchy
      and uniqueness>), let's call this limit point <math|x>. Take now
      <math|\<varepsilon\>\<gtr\>0> then by the Cauchy property there exist a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i,j\<geqslant\>N> we have
      <math|d<around*|(|x<rsub|i>,x<rsub|j>|)>\<less\><frac|\<varepsilon\>|2>>,
      by <reference|limit point of sequences> there exists a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|n\<geqslant\>N> and <math|d<around*|(|x,x<rsub|n>|)>\<less\><frac|\<varepsilon\>|2>>
      so that if <math|m\<geqslant\>N> then
      <math|d<around*|(|x,x<rsub|m>|)>\<leqslant\>d<around*|(|x,x<rsub|n>|)>+d<around*|(|x<rsub|n>,x<rsub|m>|)>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
      proving convergence to <math|x>.
    </enumerate>
  </proof>

  <\theorem>
    <label|real space is complete>The normed space
    <math|<around*|\<langle\>|\<bbb-R\>,<around*|\|||\|>|\<rangle\>>> of the
    real numbers together with the default metric is complete.
  </theorem>

  <\proof>
    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a Cauchy sequence in <math|\<bbb-R\>> so that there exists a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>i,j\<geqslant\>N> that
    <math|<around*|\||x<rsub|i>-x<rsub|j>|\|>\<less\>1>. Take then
    <math|A=max<around*|(|<around*|\||x<rsub|1>|\|>,\<ldots\>,<around*|\||x<rsub|N-1>|\|>,<around*|\||x<rsub|N>|\|>+1|)>>
    and <math|<around*|[|-A,A|]>>. If <math|i\<geqslant\>N> we have
    <math|<around*|\||x<rsub|i>|\|>\<leqslant\><around*|\||x<rsub|i>-x<rsub|N>|\|>+<around*|\||x<rsub|N>|\|>\<less\>1+<around*|\||x<rsub|N>|\|>\<leqslant\>A\<Rightarrow\>x<rsub|i>\<in\><around*|[|-A,A|]>>
    and if <math|i\<less\>N\<Rightarrow\><around*|\||x<rsub|i>|\|>\<leqslant\>A>
    so that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have <math|x<rsub|i>\<in\><around*|[|-A,A|]>>. By <reference|[a,b] is
    compact> <math|<around*|[|-A,A|]>> is compact in <math|\<bbb-R\>> (and
    thus compact in the subspace topology)) and by the previous theorem (see
    <reference|every compact metric space is complete>)
    <math|<around*|[|-A,A|]>> is complete in the subspace topology and thus
    as <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is trivially Cauchy in the subspace topology there exists a
    <math|x\<in\><around*|[|-A,A|]>> such that
    <math|\<exists\>M\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>m\<geqslant\>M> we have
    <math|<around*|\||x-x<rsub|m>|\|>=<around*|\||x-x<rsub|m>|\|><rsub|\|A>\<less\>\<varepsilon\>>
    proving convergence to <math|x>.
  </proof>

  <\lemma>
    <label|Cauchy includes bounded>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a Cauchy sequence then there exists a
    <math|K\<in\>\<bbb-R\><rsup|+><rsub|0>> so that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>K>
  </lemma>

  <\proof>
    Take <math|\<varepsilon\>=1> then because of Cauchy there exists a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n,m\<geqslant\>N> we have
    <math|<around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>>\<less\>1> and thus
    is <math|n\<geqslant\>N> we have <math|<around*|\<\|\|\>|x<rsub|n>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x<rsub|n>-x<rsub|N>|\<\|\|\>>+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>\<less\>1+<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>>
    so if we take <math|K=max<around*|(|<around*|\<\|\|\>|x<rsub|1>|\<\|\|\>>,\<ldots\>,<around*|\<\|\|\>|x<rsub|N-1>|\<\|\|\>>,<around*|\<\|\|\>|x<rsub|N>|\<\|\|\>>+1|)>>
    then we have <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    that <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>K>.
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be the normed space based on the maximum (product) norm (see
    <reference|norm of finite product of normed spaces>)
    <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space. As all norms on <math|\<bbb-R\><rsup|n>> are
    equivalent (see <reference|equivalence of norms on product of real
    numbers>) we have that <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around|\<interleave\>||\<interleave\>>|\<rangle\>>>
    is a Banach space for every norm <math|<around|\<interleave\>||\<interleave\>>>
    on <math|\<bbb-R\><rsup|n>>.
  </theorem>

  <\proof>
    If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a Cauchy sequence then by the previous lemma there exist a
    <math|K\<in\>\<bbb-R\><rsup|+><rsub|0>> such that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<less\>K\<Rightarrow\><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>\<leqslant\>K>
    or if we take <math|<wide|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<bar\>><around*|(|0,K|)>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|\<\|\|\>|x|\<\|\|\>>\<leqslant\>K|}>>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<in\>B>. <math|<wide|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<bar\>><around*|(|0,K|)>>
    is closed (see <reference|closed balls are closed>) and trivially bounded
    [if <math|x,y\<in\><wide|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<bar\>><around*|(|0,K|)>>
    then <math|d<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>=<around*|\<\|\|\>|x-y|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>+<around*|\<\|\|\>|y|\<\|\|\>>\<leqslant\>K+K=2\<cdot\>K>]
    so by the Heine-Borel theorem (<reference|compact subsets of the reals>)
    we have that it is compact and thus by <reference|every compact metric
    space is complete> is complete. So the sequence
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    in <math|<wide|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<bar\>><around*|(|0,K|)>>
    being Cauchy in <math|<wide|B<rsub|d<rsub|<around*|\<\|\|\>||\<\|\|\>>>>|\<bar\>><around*|(|0,K|)>>
    has a limit <math|x> which is trivially also the limit of
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>.
  </proof>

  <\theorem>
    <label|every finite dimensional space is Banach>Every finite dimensional
    normed vector space is a Banach space
  </theorem>

  <\proof>
    Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a n-dimensional normed vector space then using <reference|existance of
    isometry,isomorphism,homeomorphism> there exists a norm
    <math|<around*|\<\|\|\>||\<\|\|\>>> on <math|\<bbb-R\><rsup|n>> and a
    isometry (also isomorphism) <math|\<varphi\>> between <math|X> and
    <math|\<bbb-R\><rsup|n>>. If then <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
    is a Cauchy sequence in <math|X> we have for
    <math|\<varepsilon\>\<gtr\>0> the existence of a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that if
    <math|n,m\<geqslant\>N> that <math|<around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>>\<less\>\<varepsilon\>>.
    Take now the sequence <math|<around*|{|\<varphi\><around*|(|x<rsub|i>|)>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    then if <math|n,m\<geqslant\>N> we have that
    <math|<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>|)>-\<varphi\><around*|(|x<rsub|m>|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>-x<rsub|m>|)>|\<\|\|\>>\<equallim\><rsub|\<varphi\>
    is a isometry><around*|\<\|\|\>|x<rsub|n>-x<rsub|m>|\<\|\|\>>\<less\>\<varepsilon\>>
    proving that <math|<around*|{|\<varphi\><around*|(|x<rsub|i>|)>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is Cauchy, using the previous theorem we have that
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space and so <math|<around*|{|\<varphi\><around*|(|x<rsub|i>|)>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has a limit <math|y\<in\>\<bbb-R\><rsup|n>> or in other words if
    <math|\<varepsilon\>\<gtr\>0> then there exists a
    <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that if
    <math|n\<geqslant\>N> then <math|<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|i>|)>-y|\<\|\|\>>\<less\>\<varepsilon\>>.
    If we then take <math|x=\<varphi\><rsup|-1><around*|(|y|)>> then if
    <math|n\<geqslant\>N> we have that <math|<around*|\<\|\|\>|x<rsub|n>-x|\<\|\|\>>=<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>-x|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>|)>-\<varphi\><around*|(|x|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>|)>-\<varphi\><around*|(|\<varphi\><rsup|-1><around*|(|y|)>|)>|\<\|\|\>>=<around*|\<\|\|\>|\<varphi\><around*|(|x<rsub|n>|)>-y|\<\|\|\>>\<less\>\<varepsilon\>>.
    This finally proves that <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space.
  </proof>

  <\theorem>
    <label|space of linear continuous maps to a Banach space is Banach>Let
    <math|<around*|{|<around*|\<langle\>|X<rsub|i>,<around*|\<\|\|\>||\<\|\|\>><rsub|i>|\<rangle\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of normed spaces and let <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a Banach space then <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    is a Banach space using the operator norm.
  </theorem>

  <\proof>
    Let <math|<around*|{|L<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a Cauchy sequence in <math|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    and take <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>X<rsub|i>>
    then we have for <math|p,q\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>

    <\equation>
      <label|eq 11.19><around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|q><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|L<rsub|p>-L<rsub|q>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>
    </equation>

    Take now the family <math|<around*|{|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    and take <math|\<varepsilon\>\<gtr\>0> then we have two possible cases:

    <\enumerate>
      <item><dueto|<math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=0>>then
      by <reference|eq 11.19> we have that
      <math|<around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|q><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>=0\<less\>\<varepsilon\>>
      so if <math|p,q\<geqslant\>k\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      then <math|<around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>.,x<rsub|n>|)>-L<rsub|q><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<less\>\<varepsilon\>>

      <item><dueto|<math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<neq\>0>>take
      then <math|\<varepsilon\><rprime|'>=<frac|\<varepsilon\>|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>>
      and as <math|<around*|{|L<rsub|p>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is Cauchy there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that if <math|p,q\<geqslant\>N> then
      <math|<around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<less\>\<varepsilon\><rprime|'>\<Rightarrowlim\><rsub|<text|<reference|eq
      11.19>>><around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|q><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>\<less\>\<varepsilon\><rprime|'>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=\<varepsilon\>>
    </enumerate>

    from (1) and (2) we conclude then that

    <\equation>
      <label|eq 11.20><around*|{|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      is a Cauchy sequence in Y
    </equation>

    \ As <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a Banach space it follows from <reference|eq 11.20> that
    <math|<around*|{|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has a limit (depending of course on <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>)
    let's note this limit as <math|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
    so we have

    <\equation>
      <label|eq 11.21>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>=lim<rsub|q\<rightarrow\>\<infty\>>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n><rsub|>|)>
    </equation>

    Define now the function <math|L:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\>Y>
    by <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<rightarrow\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>.
    We prove now that <math|L\<in\>L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>
    :

    <\enumerate>
      <item><dueto|multilinearity>Given <math|\<alpha\>,\<beta\>\<in\>\<bbb-K\>,<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>,
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|x,y\<in\>X<rsub|i>>
      then we have that <math|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=<below|lim|p\<rightarrow\>\<infty\>>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,\<alpha\>\<cdot\>x+\<beta\>\<cdot\>y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<equallim\><rsub|L<rsub|p>
      is multilinear><below|lim|p\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>|)>\<equallim\><rsub|<text|<reference|limit
      of a sum>> >\<alpha\>\<cdot\><below|lim|p\<rightarrow\>\<infty\>>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\><below|lim|p\<rightarrow\>\<infty\>>L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>=\<alpha\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,y,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>
      >

      <item><dueto|continuity>Take the family
      <math|<around*|{|<around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      in <math|\<bbb-R\>> then if <math|\<varepsilon\>\<gtr\>0> we have from
      the fact that <math|<around*|{|L<rsub|p>|}><rsub|p\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
      is Cauchy there exists a <math|N\<in\><around*|{|k,\<ldots\>\<infty\>|}>>
      such that if <math|p,q\<geqslant\>N> then
      <math|<around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>-<around*|\<\|\|\>|L<rsub|q>|\<\|\|\>>
      |\|>\<leqslant\><around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|<around*|{|<around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>|}><rsub|p\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is Cauchy in <math|<around*|\<langle\>|\<bbb-R\>\<nocomma\>,<around*|\|||\|>|\<rangle\>>>
      and as <math|<around*|\<langle\>|\<bbb-R\>\<nocomma\>,<around*|\|||\|>|\<rangle\>>>
      is complete (see <reference|real space is complete>) there exists a
      <math|A\<in\>\<bbb-R\>> with <math|A=<below|lim|p\<rightarrow\>\<infty\>><around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>>.
      Using <reference|limit preserves inequality (2)> and
      <math|<around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      we have that <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>x<rsub|n>|)>|\<\|\|\>>=<below|lim|p\<rightarrow\>\<infty\>><around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><below|lim|p\<rightarrow\>\<infty\>><around*|(|<around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>|)>=<around*|(|<below|lim|p\<rightarrow\>\<infty\>><around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>|)>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=A\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>>
      proving that <math|L> is indeed continuous and that

      <\equation>
        <label|eq 11.22><around*|\<\|\|\>|L|\<\|\|\>>\<leqslant\>A=<below|lim|p\<rightarrow\>\<infty\>><around*|\<\|\|\>|L<rsub|p>|\<\|\|\>>
      </equation>
    </enumerate>

    So the only thing left to prove is that
    <math|<around*|{|L<rsub|q>|}><rsub|q\<in\><around*|{|k,\<ldots\>\<infty\>|}>>>
    converges to <math|L>. Let <math|\<varepsilon\>\<gtr\>0> then for every
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>>=1> we have by the fact that
    <math|<around*|{|L<rsub|q>|}><rsub|q\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    is Cauchy there exists a <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    such that if <math|p,q\<geqslant\>N<rsub|1>> then
    <math|<around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    so that <math|<around*|\<\|\|\>|L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|q><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|<around*|(|L<rsub|p>-L<rsub|q>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<cdot\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|i>=<around*|\<\|\|\>|L<rsub|p>-L<rsub|q>|\<\|\|\>>\<less\><frac|\<varepsilon\>|4>>.
    Further using <reference|eq 11.21> there exists a
    <math|N<rsub|2><around*|(|x<rsub|1>,\<ldots\>x<rsub|n>|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    such that if <math|r\<geqslant\>N<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><rsub|>>
    then <math|<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|r><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|4>>.
    So that if <math|p\<geqslant\>N<rsub|1>> then we have
    <math|<around*|\<\|\|\>|<around*|(|L-L<rsub|p>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>=<around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|L<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|s><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)><rsub|>|\<\|\|\>>+<around*|\<\|\|\>|L<rsub|s><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>-L<rsub|p><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|4>+<frac|\<varepsilon\>|4>=<frac|\<varepsilon\>|2>>
    if we choose <math|s\<geqslant\>max<around*|(|N<rsub|1>,N<rsub|2><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|)>>
    proving that if <math|p\<geqslant\>N<rsub|1>> then
    <math|<around*|\<\|\|\>|<around*|(|L-L<rsub|p>|)><around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
    proving by <reference|norm of a multilinear mapping> that
    <math|<around*|\<\|\|\>|L-L<rsub|p>|\<\|\|\>>\<leqslant\><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>>
    and thus that <math|<below|lim|p\<rightarrow\>\<infty\>>L<rsub|p>=L>.
  </proof>

  <\corollary>
    <label|L^n(X;Y) is a Banach space if Y is a Banach space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    be a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a Banach space, <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|<around*|\<langle\>|L<rsup|n><around*|(|X;Y|)>,<around*|\<\|\|\>||\<\|\|\>><rsub|L<rsup|n><around*|(|X;Y|)>>|\<rangle\>>>
    is a Banach space (using the operator norms)
  </corollary>

  <\proof>
    Let <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
    <around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>> is
    a normed space, <around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>
    a Banach space then L<rsup|n><around*|(|A;Y|)> is a Banach space|}>
    >then:

    <\enumerate>
      <item>If <math|n=1> then <math|L<rsup|1><around*|(|X;Y|)>=L<around*|(|X,Y|)>=L<around*|(|X;Y|)>>
      is a Banach space by the above theorem, so that <math|1\<in\>S>.

      <item>If <math|n\<in\>S> then <math|L<rsup|n><around*|(|X;Y|)>> is a
      Banach space (if <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
      is a normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
      a Banach space) so that by (1) <math|L<rsup|n+1><around*|(|X;Y|)>=L<around*|(|X;L<rsup|n><around*|(|X;Y|)>|)>>
      is a Banach space proving that <math|n+1\<in\>S>
    </enumerate>

    Induction proves then the theorem.
  </proof>

  <\definition>
    <label|contraction><index|contraction>Let
    <math|<around*|\<langle\>|S,d|\<rangle\>>> be a metric space then a
    function <math|f:S\<rightarrow\>S> is a
    <with|font-series|bold|contraction> if
    <math|\<exists\>\<lambda\>\<in\><around*|[|0,1|[>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>x,y\<in\>S> we have
    <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|x,y|)>>
  </definition>

  <\lemma>
    <label|a contraction mapping is continuous>Let
    <math|<around*|\<langle\>|S,d|\<rangle\>>> be a metric space and
    <math|f:S\<rightarrow\>S> a contraction then <math|f> is continuous
  </lemma>

  <\proof>
    Let <math|\<lambda\>\<in\><around*|[|0,1|[>> be such that
    <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|x,y|)>>
    then given a <math|x\<in\>S> and a <math|y\<in\>S> such that
    <math|d<around*|(|x,y|)>\<less\>\<varepsilon\>> we have
    <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|x,y|)>\<less\>\<lambda\>\<cdot\>d<around*|(|x,y|)>\<less\>d<around*|(|x,y|)>>.
  </proof>

  <\lemma>
    <label|sum of powers theorem>Let <math|\<lambda\>\<in\>\<bbb-R\>> such
    that <math|\<lambda\>\<neq\>1> then if <math|k\<in\>\<bbb-N\><rsub|0>>
    and <math|n\<in\>\<bbb-N\>> we have <math|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>=\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|k>|1-\<lambda\>>>
  </lemma>

  <\proof>
    We proof this by induction so let <math|S=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>=\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|k>|1-\<lambda\>>|}>>
    then \ we have:

    <\enumerate>
      <item>If <math|k=1> then <math|<big|sum><rsub|i=1><rsup|1>\<lambda\><rsup|n+<around*|(|i-1|)>>=\<lambda\><rsup|n>=\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\>|1-\<lambda\>>=\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|1>|1-\<lambda\>>>
      so that <math|1\<in\>S>

      <item>Assume that <math|k\<in\>S> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|k+1>\<lambda\><rsup|n+<around*|(|i-1|)>>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>+\<lambda\><rsup|n+<around*|(|<around*|(|k+1|)>-1|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>+\<lambda\><rsup|n+k>>>|<row|<cell|>|<cell|\<equallim\><rsub|k\<in\>S>>|<cell|\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|k>|1-\<lambda\>>+\<lambda\><rsup|n+k>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\><rsup|n>\<cdot\><around*|(|1-\<lambda\><rsup|k>|)>+<around*|(|1-\<lambda\>|)>\<cdot\>\<lambda\><rsup|n+k>|1-\<lambda\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\><rsup|n>\<cdot\><around*|(|1-\<lambda\><rsup|k>+<around*|(|1-\<lambda\>|)>\<cdot\>\<lambda\><rsup|k>|)>|1-\<lambda\>>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\><rsup|n>\<cdot\><around*|(|1-\<lambda\><rsup|k>+\<lambda\><rsup|k>-\<lambda\><rsup|k+1>|)>|1-\<lambda\>>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|k+1>|1-\<lambda\>>>>>>
      </eqnarray*>

      proving that <math|k+1\<in\>S>
    </enumerate>
  </proof>

  <\lemma>
    <label|exaple of a convergent serie>Let <math|\<lambda\>\<in\>\<bbb-R\>>
    with <math|0\<less\>\<lambda\>\<less\>1> then
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|i>> converges
    and <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|i>=<frac|\<lambda\>|1-\<lambda\>>>
  </lemma>

  <\proof>
    Given a <math|k\<in\>\<bbb-N\><rsub|0>> we have that
    <math|<around*|\||<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|i>|)>-<frac|\<lambda\>|1-\<lambda\>>|\|>=<around*|\||<around*|(|\<lambda\>\<cdot\><big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|i-1>|)>-<frac|\<lambda\>|1-\<lambda\>>|\|>\<equallim\><rsub|previous
    lemma with n=0><around*|\||\<lambda\>\<cdot\><around*|(|\<lambda\><rsup|0>\<cdot\><frac|1-\<lambda\><rsup|k>|1-\<lambda\>>|)>-<frac|\<lambda\>|1-\<lambda\>>|\|>=<around*|\||<frac|\<lambda\>|1-\<lambda\>>\<cdot\><around*|(|1-\<lambda\><rsup|k>-1|)>|\|>=<around*|\||<frac|\<lambda\><rsup|k+1>|1-\<lambda\>>|\|>=<frac|\<lambda\><rsup|>|1-\<lambda\>>\<cdot\>\<lambda\><rsup|k>>.
    Now using <reference|convergence of powersequence> given
    <math|\<varepsilon\>\<gtr\>0> there exists a
    <math|N\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such that
    <math|<frac|\<lambda\>|1-\<lambda\>>\<cdot\>\<lambda\><rsup|k>=<around*|\||<frac|\<lambda\>|1-\<lambda\>>\<cdot\>\<lambda\><rsup|k>-0|\|>\<less\>\<varepsilon\>>
    if <math|k\<geqslant\>N\<Rightarrow\><around*|\||<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|i>|)>-<frac|\<lambda\>|1-\<lambda\>>|\|>\<less\>\<varepsilon\>>
    if <math|k\<geqslant\>N>
  </proof>

  <\theorem>
    <label|the Banach Fixed Point Theorem><index|Banach fixed point
    theorem><dueto|The Banach Fixed Point Theorem>Let
    <math|<around*|\<langle\>|S,d|\<rangle\>>> be a complete metric space and
    <math|f:S\<rightarrow\>S> any <with|font-series|bold|contraction> then
    <math|\<exists\>!x<rsub|0>\<in\>S> such that
    <math|f<around*|(|x<rsub|0>|)>=x<rsub|0>> (<math|f> has exactly one fixed
    point <math|x<rsub|0>>). If <math|x\<in\>S> then
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsup|<around*|(|n|)>><around*|(|x|)>\<rightarrow\>x<rsub|0>>
    where <math|f<rsup|n>> is recursively defined by\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsup|<around*|(|1|)>>>|<cell|=>|<cell|f>>|<row|<cell|f<rsup|<around*|(|n+1|)>>>|<cell|=>|<cell|f\<circ\>f<rsup|<around*|(|n|)>>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    First as <math|f> is a contraction there exists a
    <math|\<lambda\>\<in\><around*|[|0,1|[>> such that
    <math|d<around*|(|f<around*|(|x|)>,f<around*|(|y|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|x,y|)>>.
    As <math|S> is not empty there exists a <math|x\<in\>S>. We prove now by
    induction that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>\<leqslant\>\<lambda\><rsup|n>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>.
    So take then <math|P=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>\<leqslant\>\<lambda\><rsup|n>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>|}>>
    then we have:

    <\enumerate>
      <item>If <math|n=1> then <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>=d<around*|(|f<rsup|<around*|(|1|)>><around*|(|x|)>,f<rsup|<around*|(|2|)>><around*|(|x|)>|)>=d<around*|(|f<around*|(|x|)>,f<around*|(|<around*|(|f<around*|(|x|)>|)>|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>=\<lambda\><rsup|1>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>
      proving that <math|1\<in\>P>

      <item>If <math|n\<in\>P> then we have
      <math|d<around*|(|f<rsup|<around*|(|n+1|)>><around*|(|x|)>,f<rsup|<around*|(|<around*|(|n+1|)>+1|)>><around*|(|x|)>|)>=d<around*|(|f<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>|)>,f<around*|(|f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>|)>\<leqslant\>\<lambda\>\<cdot\>d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>\<leqslant\>\<lambda\>\<cdot\>\<lambda\><rsup|n>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>=\<lambda\><rsup|n>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>
      proving that <math|n+1\<in\>P>
    </enumerate>

    Next we prove by induction that given <math|n,k\<in\>\<bbb-N\><rsub|0>>
    that <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)>|)>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>.
    So let <math|Q<rsub|n>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)>|)>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>|}>>
    then we have:

    <\enumerate>
      <item>If <math|k=1> then <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+1|)>><around*|(|x|)>|)>\<leqslant\>\<lambda\><rsup|n>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>=<around*|(|<big|sum><rsub|i=1><rsup|1>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>
      proving that <math|1\<in\>Q<rsub|n>>

      <item>If <math|k\<in\>Q<rsub|n>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+<around*|(|k+1|)>|)>><around*|(|x|)>|)>>|<cell|\<leqslant\>>|<cell|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)>|)>+d<around*|(|f<rsup|<around*|(|n+k|)>><around*|(|x|)>,f<rsup|<around*|(|n+<around*|(|k+1|)>|)>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>+d<around*|(|f<rsup|<around*|(|n+k|)>><around*|(|x|)>,f<rsup|<around*|(|<around*|(|n+k|)>+1|)>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>+\<lambda\><rsup|n+k>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<big|sum><rsub|i=1><rsup|k>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>+\<lambda\><rsup|n+<around*|(|<around*|(|k+1|)>-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k+1>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>>>>
      </eqnarray*>

      proving that <math|k+1\<in\>Q<rsub|n>>
    </enumerate>

    So <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)>|)>\<leqslant\><around*|(|<big|sum><rsub|i=1><rsup|k+1>\<lambda\><rsup|n+<around*|(|i-1|)>>|)>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|sum
    of powers theorem>>>\<lambda\><rsup|n>\<cdot\><frac|1-\<lambda\><rsup|k>|1-\<lambda\>>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>\<less\><rsub|\<lambda\><rsup|k>\<gtr\>0><frac|\<lambda\><rsup|n>|1-\<lambda\>>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>>
    proving

    <\equation>
      <label|eq 11.23> d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)>|)>\<less\><frac|\<lambda\><rsup|n>|1-\<lambda\>>\<cdot\>d<around*|(|x,f<around*|(|x|)>|)>
    </equation>

    Next we prove that <math|<around*|{|f<rsup|<around*|(|n|)>><around*|(|x|)>|}><rsub|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    is Cauchy (using <reference|another characterization of Cauchy>) so let
    <math|\<varepsilon\>\<gtr\>0> be given then using <reference|eq 11.23>
    and <reference|convergence of powersequence> there exists a
    <math|N\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such that if
    <math|k\<geqslant\>N> then <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,f<rsup|<around*|(|n+k|)>><around*|(|x|)><rsup|>|)>\<less\>\<varepsilon\>>
    proving the Cauchy property.

    As <math|S> is complete there exists a <math|x<rsub|0>\<in\>S> such that

    <\equation>
      <label|eq 11.24><below|lim|n\<rightarrow\>\<infty\>>f<rsup|<around*|(|n|)>><around*|(|x|)>=x<rsub|0>
    </equation>

    Using the fact that a contraction mapping is continuous (<reference|a
    contraction mapping is continuous>), <reference|eq 11.24> and
    <reference|limit and continuity> we have

    <\equation>
      <label|eq 11.25><below|<below|lim<rsub|n\<rightarrow\>\<infty\>>f<rsup|<around*|(|n+1|)>><around*|(|x|)>=|>lim<rsub|n\<rightarrow\>\<infty\>>f<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>|)>=f<around*|(|x<rsub|0>|)>|>
    </equation>

    Assume now that <math|f<around*|(|x<rsub|0>|)>\<neq\>x<rsub|o>> then
    <math|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|o>|)>\<gtr\>0> by
    <reference|eq 11.24> there exists a <math|N<rsub|1>> such that
    <math|d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>|)>\<less\><frac|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>|2>>
    if <math|n\<geqslant\>N<rsub|1>>, likewise from <reference|eq 11.25>
    there exists a <math|N<rsub|2>> such that
    <math|d<around*|(|f<rsup|<around*|(|n+1|)>><around*|(|x|)>,f<around*|(|x<rsub|>|)>|)>\<less\><frac|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>|2>>.
    Let <math|n\<geqslant\>max<around*|(|N<rsub|1>,N<rsub|2>+1|)>\<Rightarrow\>n\<geqslant\>N<rsub|1>,n-1\<geqslant\>N<rsub|2>>
    then <math|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>\<leqslant\>d<around*|(|f*<around*|(|x<rsub|0>|)>,f<rsup|<around*|(|<around*|(|n-1|)>+1|)>><around*|(|x|)>|)>+d<around*|(|f<rsup|<around*|(|<around*|(|n-1|)>+1|)>><around*|(|x|)>,x<rsub|0>|)>=d<around*|(|f*<around*|(|x<rsub|0>|)>,f<rsup|<around*|(|<around*|(|n-1|)>+1|)>><around*|(|x|)>|)>+d<around*|(|f<rsup|<around*|(|n|)>><around*|(|x|)>,x<rsub|0>|)>\<less\><frac|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>|2>+<frac|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|o>|)>|2>=d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>>
    giving the contradiction <math|d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>\<less\>d<around*|(|f<around*|(|x<rsub|0>|)>,x<rsub|0>|)>>.
    So we must have that <math|f<around*|(|x<rsub|0>|)>=x<rsub|0>>.

    Finally to prove uniqueness assume that there is also a
    <math|x<rsub|1>\<in\>S> such that <math|f<around|(|x<rsub|1>|)>=x<rsub|1>>,
    then if <math|x<rsub|1>\<neq\>x<rsub|0>> then
    <math|0\<less\>d<around|(|x<rsub|1>,x<rsub|0>|)>=d<around|(|f<around|(|x<rsub|0>|)>,f<around|(|x<rsub|1>|)>|)>\<less\>\<lambda\>d<around|(|x<rsub|0>,x<rsub|1>|)>\<less\>d<around|(|x<rsub|0>,x<rsub|1>|)>>
    as <math|\<lambda\>\<in\><around*|[|0,1|[>> <math|\<Rightarrow\>
    d<around|(|x<rsub|1>,x<rsub|0>|)>\<less\>d<around|(|x<rsub|1>,x<rsub|0>|)>>
    a contradiction so <math|x<rsub|0>=x<rsub|1>>\ 
  </proof>

  <\lemma>
    If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
    family of sets such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\\\\<around*|{|1|}>>
    we have that <math|A<rsub|i>\<subseteq\>A<rsub|i-1>> then for every
    <math|n,m\<in\>\<bbb-N\><rsub|0>> with <math|n\<leqslant\>m> we have
    <math|A<rsub|m>\<subseteq\>A<rsub|n>>
  </lemma>

  <\proof>
    This is easy proved by induction. So let
    <math|S<rsub|n>=<around*|{|k\<in\>\<bbb-N\>\|A<rsub|n+k>\<subseteq\>A<rsub|n>|}>>
    then we have\ 

    <\enumerate>
      <item>If <math|k=0> then <math|A<rsub|n+k>=A<rsub|n>\<subseteq\>A<rsub|n>>
      proving that <math|0\<in\>S<rsub|n>>

      <item>If <math|k\<in\>S<rsub|n>> then we have that
      <math|A<rsub|n+<around*|(|k+1|)>>=A<rsub|<around*|(|n+k|)>+1>\<subseteq\>A<rsub|<around*|(|<around*|(|n+k|)>+1|)>-1>=A<rsub|n+k>\<subseteq\>A<rsub|n>\<Rightarrow\>k+1\<in\>S<rsub|n>>
    </enumerate>

    Using induction we have then that <math|S<rsub|n>=\<bbb-N\>>. If now
    <math|n\<leqslant\>m> then <math|m-n\<in\>\<bbb-N\>=S<rsub|n>> so that
    <math|A<rsub|m>=A<rsub|n+<around*|(|m-n|)>>\<subseteq\>A<rsub|n>>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,d|\<rangle\>>> be a complete metric space
    and let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be
    a sequence of non empty closed sets with
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\\\\<around*|{|1|}>> we have
    <math|A<rsub|i>\<subseteq\>A<rsub|i-1>> and
    <math|<below|lim|n\<rightarrow\>\<infty\>>diam<around*|(|A<rsub|i>|)>=0>
    then <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>> is not
    empty.
  </lemma>

  <\proof>
    Using the axiom of choice (see <reference|equivalences of axiom of
    choice>) there exists a function <math|c:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|c<rsub|i>\<in\>A<rsub|i>> defining the family
    <math|<around*|{|c<around*|(|i|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>. Now
    if <math|\<varepsilon\>\<gtr\>0> we use
    <math|<below|lim|n\<rightarrow\>\<infty\>>diam<around*|(|A<rsub|i>|)>=0>
    to find a <math|N\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<forall\>n\<geqslant\>N> we have
    <math|diam<around*|(|A<rsub|n>|)>=<around*|\||diam<around*|(|A<rsub|n>|)>-0|\|>\<less\>\<varepsilon\>>.
    If now <math|n,m\<geqslant\>N> then <math|>using the above lemma we have
    that <math|A<rsub|n>,A<rsub|m>\<subseteq\>A<rsub|N>> so that
    <math|c<around*|(|n|)>,c<around*|(|m|)>\<in\>A<rsub|N>> and thus
    <math|d<around*|(|c<around*|(|n|)>,c<around*|(|m|)>|)>\<leqslant\>diam<around*|(|A<rsub|n>|)>\<less\>\<varepsilon\>>
    proving that <math|<around*|{|c<around*|(|i|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is Cauchy. As <math|X> is complete there exists a <math|x\<in\>X> such
    that <math|<below|lim<rsub|>|i\<rightarrow\>\<infty\>>c<around*|(|i|)>=x>.
    If now <math|n\<in\>\<bbb-N\><rsub|0>> and <math|U> a open set with
    <math|x\<in\>U> then there exists a <math|\<varepsilon\>\<gtr\>0> such
    that <math|x\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    From the definition of <math|x> there exists then a
    <math|N\<in\>\<bbb-N\><rsub|0>> such that if <math|m\<geqslant\>N> we
    have <math|d<around*|(|x,c<around*|(|m|)>|)>\<less\>\<varepsilon\>\<Rightarrow\>c<around*|(|m|)>\<in\>B<rsub|d><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    So if we take <math|q=max<around*|(|N,n|)>> then
    <math|q\<geqslant\>n\<Rightarrow\>c<around*|(|q|)>\<in\>A<rsub|n>> and
    <math|q\<geqslant\>N\<Rightarrow\>c<around*|(|q|)>\<in\>U> proving that
    <math|A<rsub|n><big|cap>U\<neq\>\<emptyset\>> so that
    <math|x\<in\>A=<wide|A<rsub|n>|\<bar\>>\<equallim\><rsub|A is closed>A>.
    As <math|n> was chosen arbitrary we have that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that <math|x\<in\>A<rsub|n>> or
    <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>>.
  </proof>

  <\theorem>
    <label|Baire Category Theorem><index|Baire Category Theorem><dueto|Baire
    Category Theorem>If <math|X> is a compact Hausdorff topological space or
    if <math|<around*|\<langle\>|X,d|\<rangle\>>> is a complete metric space
    then <math|X> is a Baire space (<reference|Baire space>).
  </theorem>

  <\proof>
    First note that because of <reference|metric spaces are regular> and
    <reference|compact Hausdorf space is regular and normal> we have that
    <math|X> is regular in both cases. Let <math|\<cal-T\>> be the topology
    of <math|<around*|\<langle\>|X,d|\<rangle\>>> and take then
    <math|\<cal-A\>=<around*|{|U\<in\>\<cal-T\>\|U\<neq\>\<emptyset\>|}>>.
    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
    sequence of closed sets of <math|X> with
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|i><rsup|\<circ\>>=\<emptyset\>>, we must show then that
    <math|<around*|(|<big|cup><rsub|<rsub|i\<in\>\<bbb-N\><rsub|0>>>A<rsub|i>|)><rsup|\<circ\>>=\<emptyset\>>.
    Take <math|U<rsub|0>\<in\>\<cal-A\>> a non empty open set arbitrarily.\ 

    Consider the set <math|A<rsub|1>> then because
    <math|A<rsub|1><rsup|0>=\<emptyset\>> we have
    <math|U<rsub|0>\<nsubseteq\>A<rsub|1>\<Rightarrow\>\<exists\>y\<in\>U<rsub|0>>
    such that <math|y\<nin\>A<rsub|1>>, using regularity there exists open
    sets <math|V<rsub|1>,U<rprime|'><rsub|1>> such that
    <math|y\<in\>U<rprime|'><rsub|1>\<wedge\>A<rsub|1>\<subseteq\>V<rsub|1>\<wedge\>U<rprime|'><rsub|1><big|cap>V<rsub|1>=\<emptyset\>>.
    From <math|U<rprime|'><rsub|1><big|cap>V<rsub|1>=\<emptyset\>> we deduce
    that <math|U<rprime|'><rsub|1>\<subseteq\>X\\\\V<rsub|1>> which is closed
    so that <math|<wide|U<rprime|'><rsub|1>|\<bar\>>\<subseteq\>X\\\\V<rsub|1>>
    and thus <math|<wide|U<rprime|'><rsub|1>|\<bar\>><big|cap>V<rsub|1>=\<emptyset\>\<Rightarrow\><wide|U<rprime|'><rsub|1>|\<bar\>><big|cap>A\<subseteq\><wide|U<rprime|'><rsub|1>|\<bar\>><big|cap>V<rsub|1>=\<emptyset\>>.
    Using <reference|regularity and non empty open sets> there exists a
    <math|U<rprime|''><rsub|1>> such that
    <math|y\<in\>U<rprime|'><rsub|1><rprime|'>> and
    <math|<wide|U<rprime|''>|\<bar\>>\<subseteq\>U<rsub|0>>. If we take now
    <math|U<rsub|1>=U<rprime|'><rsub|1><big|cap>U<rprime|''><big|cap>U<rsub|0>\<ni\>y\<Rightarrow\>U<rsub|1>\<in\>\<cal-A\>>
    [in case of <math|>a complete metric space we take
    <math|U<rsub|1>=U<rprime|'><rsub|1><big|cap>U<rprime|''><big|cap>B<rsub|d><around*|(|y,<frac|1|2>|)>\<ni\>y\<Rightarrow\>U<rsub|1>\<in\>\<cal-A\>>]
    giving

    <\equation>
      <label|eq 11.26><wide|U<rsub|1>|\<bar\>><big|cap>A<rsub|1>=\<emptyset\>\<wedge\><wide|U<rsub|1>|\<bar\>>\<subseteq\>U<rsub|0>
      and in case of a metric space diam<around*|(|<wide|U<rsub|1>|\<bar\>>|)>\<leqslant\>1
    </equation>

    Define now <math|\<cal-N\><rsub|1>=<around*|{|<around*|{|U|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\><rsub|0>\<wedge\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    we have U<rsub|i>\<in\>\<cal-A\>\<wedge\> we have
    <wide|U<rsub|i>|\<bar\>><big|cap>A<rsub|i>=\<emptyset\>\<wedge\><wide|U<rsub|i>|\<bar\>>\<subseteq\>U<rsub|i-1>
    and in case of a metric space diam<around*|(|<wide|U<rsub|i>|\<bar\>>|)>\<leqslant\><frac|1|i>|}>\<subseteq\>\<cal-M\>=<around*|{|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\>\<wedge\>\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>
    we have U<rsub|i>\<in\>\<cal-A\>|}>>. Using <reference|eq 11.26> we have
    then

    <\equation>
      <label|eq 11.27><around*|{|U<rsub|1>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<in\>\<cal-N\><rsub|1>
    </equation>

    Define now <math|\<rho\>:\<cal-N\><rsub|1>\<rightarrow\>\<cal-A\>> as
    follows. Take <math|<around*|{|U|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-N\><rsub|1>>
    then as <math|U<rsub|n>> is not empty and
    <math|A<rsup|\<circ\>><rsub|n+1>=\<emptyset\>> we can not have
    <math|U<rsub|n>\<subseteq\>A<rsub|n+1>\<Rightarrow\>\<exists\>y\<in\>U<rsub|n>>
    such that <math|y\<in\>A<rsub|n+1>>, using regularity we can find a
    <math|U<rprime|'><rsub|n+1>,V<rsub|n+1>\<in\>\<cal-T\>> such that
    <math|y\<in\>U<rprime|'><rsub|n+1>,A<rsub|n+1>\<subseteq\>V<rsub|n+1>>
    and <math|U<rprime|'><rsub|n+1><big|cap>V<rsub|n+1>=\<emptyset\>>. So
    <math|U<rprime|'><rsub|n+1>\<subseteq\>X\\\\V<rsub|n+1>> a closed set so
    that <math|<wide|U<rprime|'><rsub|n+1>|\<bar\>>\<subseteq\>X\\\\V<rsub|n+1>>
    giving <math|<wide|U<rsub|n+1>|\<bar\>><big|cap>V<rsub|n+1>=\<emptyset\>>.
    Using <math|<reference|regularity and non empty open sets> there exists a
    U<rsub|n+1><rprime|''>\<in\>\<cal-T\>> with
    <math|y\<in\>U<rprime|''><rsub|n+1>> and
    <math|<wide|U<rprime|''><rsub|n+1>|\<bar\>>\<subseteq\>U<rprime|'><rsub|n+1>>.
    Taken now <math|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=U<rprime|'><rsub|n+1><big|cap>U<rprime|''><rsub|n+1><big|cap>U<rsub|n>\<ni\>y>
    [in case of a metric space we take <math|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=U<rprime|'><rsub|n+1><big|cap>U<rprime|''><rsub|n+1><big|cap>U<rsub|n><big|cap>B<rsub|d><around*|(|y,<frac|1|2\<cdot\><around*|(|n+1|)>>|)>\<ni\>y>
    so that we have that

    <\equation>
      <label|eq 11.28>\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>\<in\>\<cal-A\>\<wedge\><wide|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>|\<bar\>><big|cap>A<rsub|n+1>=\<emptyset\>\<wedge\><wide|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>|\<bar\>>\<subseteq\>U<rsub|n>
      and in case of a metric space diam<around*|(|<wide|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>|\<bar\>>|)>\<leqslant\><frac|1|n>
    </equation>

    So if we define <math|<around*|{|U<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
    by <math|U<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|U<rsub|i>
    iof i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<rho\><around*|(|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>
    if i=n+1>>>>>> then we have

    <\equation>
      <label|eq 11.29><around*|{|U<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<in\>\<cal-N\><rsub|1>
    </equation>

    Using <reference|recursion with restricted set (general)> there exists a
    function <math|U:\<bbb-N\><rsub|0>\<rightarrow\>\<cal-A\>> such that\ 

    <\enumerate>
      <item><math|U<around*|(|1|)>=U<rsub|1>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|U<around*|(|n+1|)>=\<rho\><around*|(|<around*|{|U<around*|(|i|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|<around*|{|U<around*|(|i|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-N\><rsub|1>>
    </enumerate>

    This defines the sequence <math|<around*|{|U<around*|(|i|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    in <math|\<cal-A\>> (the set of non empty open sets) so that:

    <\equation>
      <label|eq 11.30.>\<forall\>i\<in\>\<bbb-N\><rsub|0> we have
      <wide|U<around*|(|i|)>|\<bar\>><big|cap>A<rsub|i>=\<emptyset\>,<wide|U<rsub|i>|\<bar\>>\<subseteq\>U<rsub|i-1><rsup|>,
      in case of a metric space diam<around*|(|<wide|U<around*|(|i|)>|\<bar\>>|)>\<leqslant\><frac|1|i>
    </equation>

    We prove now that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><wide|U<rsub|i>|\<bar\>>\<neq\>\<emptyset\>>
    consider the two cases:

    <\enumerate>
      <item><dueto|<math|X> is compact Hausdorff>Then we prove by induction
      that <math|\<emptyset\>\<neq\><wide|U<rsub|n>|\<bar\>>\<subseteq\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|U<rsub|i>|\<bar\>>>.
      So let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<wide|U<rsub|n>|\<bar\>>\<subseteq\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|U<rsub|i>|\<bar\>>|}>>
      then we have:

      <\enumerate>
        <item>If <math|n=1> then <math|<wide|U<rsub|1>|\<bar\>>\<subseteq\><wide|U<rsub|1>|\<bar\>>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>><wide|U<rsub|i>|\<bar\>>>
        so that <math|1\<in\>\<cal-S\>>

        <item>If <math|n\<in\>\<cal-S\>> then
        <math|<wide|U<rsub|n+1>|\<bar\>>\<subseteq\>U<rsub|n>\<subseteq\><wide|U<rsub|n>|\<bar\>>\<Rightarrow\><wide|U<rsub|n+1>|\<bar\>>\<subseteq\><wide|U<rsub|n>|\<bar\>><big|cap><wide|U<rsub|n+1>|\<bar\>>\<subseteq\><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><wide|U<rsub|i>|\<bar\>>|)><big|cap><wide|U<rsub|n+1>|\<bar\>>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><wide|U<rsub|i>|\<bar\>>>
        proving that <math|n+1\<in\>S>.
      </enumerate>

      Mathematical induction proves then that <math|S=\<bbb-N\><rsub|1>>.
      This proves that <math|<around*|{|<wide|U<rsub|i>|\<bar\>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      has the finite intersection property so that by <reference|filterbases
      and compactness> we have that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><wide|U<rsub|i>|\<bar\>>\<neq\>\<emptyset\>>

      <item><dueto|<math|<around*|\<langle\>|X,d|\<rangle\>> is a metric
      space>>As <math|diam<around*|(|<wide|U<rsub|i>|\<bar\>>|)>\<leqslant\><frac|1<rsub|>|i>>
      we have that <math|<below|lim|i\<rightarrow\>\<infty\>>diam<around*|(|<wide|U<rsub|i>|\<bar\>>|)>=0>
      so by the previous lemma and <math|<wide|U<rsub|i>|\<bar\>>\<subseteq\>U<rsub|i-1>\<subseteq\><wide|U<rsub|i-1>|\<bar\>>>
      we have again that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><wide|U<rsub|i>|\<bar\>>\<neq\>\<emptyset\>>.
    </enumerate>

    Take now <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><wide|U<rsub|i>|\<bar\>>>
    then <math|x\<in\><wide|U<rsub|1>|\<bar\>>\<subseteq\>U<rsub|0>\<Rightarrow\>x\<in\>U<rsub|0>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<wide|U<rsub|i>|\<bar\>><big|cap>A<rsub|i>=\<emptyset\>> so that
    <math|x\<nin\>A<rsub|i>> so that <math|x\<nin\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
    As <math|U<rsub|0>> was chosen arbitrary we have proved that
    <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>=\<emptyset\>>
    for if <math|y\<in\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>>
    then <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>\<in\>\<cal-A\>>
    and we have then that <math|y\<nin\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    contradicting the fact that <math|y\<in\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><rsup|\<circ\>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<Rightarrow\>y\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
  </proof>

  We use the Baire category theorem to prove the open mapping theorem.

  <\theorem>
    <label|open maaping theorem><index|open mapping theorem><dueto|Open
    Mapping Theorem>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces over <math|\<bbb-K\>> and <math|L:X\<rightarrow\>Y> a
    surjective continuous linear function then <math|L> is also a open
    function.
  </theorem>

  <\proof>
    First if <math|<around*|\<\|\|\>|L|\<\|\|\>>=0> then we have
    <math|\<forall\>x\<in\>X> that <math|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>=0\<Rightarrow\>L<around*|(|x|)>=0>
    so as <math|L> is a surjection we have that <math|Y=<around*|{|0|}>> and
    thus also <math|X=<around*|{|0|}>> so that the only open set in
    <math|X>is <math|<around*|{|0|}>> and
    <math|L<around*|(|<around*|{|0|}>|)>=<around*|{|0|}>=Y> is open proving
    that <math|L> is a open function. Let's now take the case that
    <math|<around*|\<\|\|\>|L|\<\|\|\>>\<gtr\>0>. We split the proof in
    little sub-proofs.

    <\enumerate>
      <item>First we show that given <math|\<delta\>\<gtr\>0> and
      <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>>
      a open ball around <math|0> then there exists <math|\<lambda\>\<gtr\>0>
      with <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<bar\>>>

      <\proof>
        Take <math|\<delta\>\<gtr\>0> and <math|x\<in\>X> then given the
        Archimedean order property of <math|\<bbb-R\>> (see
        <reference|archimedean property of the reals>) there exists a
        <math|n\<in\>\<bbb-N\><rsub|0>> \ such that
        <math|<frac|2|\<delta\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>>\<less\>n\<cdot\>1=n>
        so that <math|<around*|\<\|\|\>|x|\<\|\|\>>\<less\><frac|n\<cdot\>\<delta\>|2>>
        so if <math|y=<frac|x|n>\<Rightarrow\>x=y\<cdot\>n\<Rightarrow\><around*|\<\|\|\>|n\<cdot\>y|\<\|\|\>>\<less\><frac|n\<cdot\>\<delta\>|2>\<Rightarrow\><around*|\<\|\|\>|y|\<\|\|\>>\<less\><frac|\<delta\>|2>\<Rightarrow\>x\<in\>n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>\<Rightarrow\>x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>>
        proving that

        <\equation>
          <label|eq 11.31>X=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>
        </equation>

        As <math|L> is surjective we have that
        <math|Y=L<around*|(|X|)>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>L<around*|(|n\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>\<subseteq\>Y>
        giving

        <\equation>
          <label|eq 11.32>Y=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><wide|n*\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>
        </equation>

        Note that that <math|0\<in\>Y=Y<rsup|\<circ\>>\<equallim\><rsub|<reference|eq
        11.32>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>|)>\<Rightarrow\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>\<neq\>\<emptyset\>>
        we must as <math|Y> is a Banach space (thus a complete metric space)
        using the Baire Category Theorem (<reference|Baire Category Theorem>)
        there must exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|<around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>|)><rsup|\<circ\>>\<neq\>\<emptyset\>>.
        So <math|\<exists\>z\<in\><around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>|)><rsup|\<circ\>>>
        which is open so there exists a <math|\<beta\>\<gtr\>0> such that
        <math|z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>\<subseteq\><around*|(|<wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>|)><rsup|\<circ\>>\<subseteq\><wide|n\<cdot\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>\<equallim\><rsub|<reference|normed
        space properties>>n\<cdot\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>>
        so that

        <\equation>
          <label|eq 11.33><frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>
        </equation>

        As <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<delta\>|)>>
        [If <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>\<Rightarrow\>x=x<rsub|!>=x<rsub|2>
        with <around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>\<less\><frac|\<delta\>|2>,<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><frac|\<delta\>|2>\<Rightarrow\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><around*|\<\|\|\>|x<rsub|1>|\<\|\|\>><rsub|X>+<around*|\<\|\|\>|x<rsub|2>|\<\|\|\>><rsub|X>\<less\><frac|\<delta\>|2>+<frac|\<delta\>|2>=\<delta\>>]
        we have <math|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>-L<around*|(|B<rsub|<around*|\<\|\|\>|<rsub|X>|\<\|\|\>>><around*|(|0,<frac|\<delta\>|2>|)>|)>=L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<tfrac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>=L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>-B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>>
        giving

        <\equation>
          <label|eq 11.34>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>-L<around*|(|B<rsub|<around*|\<\|\|\>|<rsub|X>|\<\|\|\>>><around*|(|0,<frac|\<delta\>|2>|)>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>
        </equation>

        Further <math|<big|cup><rsub|x\<in\><frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>|)>\<subseteq\><frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>-<frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>\<subseteq\><rsub|<reference|eq
        11.33>><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>-<wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>\<subseteq\><rsub|<reference|normed
        space properties>><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>-L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,<frac|\<delta\>|2>|)>|)>|\<bar\>>\<subseteq\><rsub|<reference|eq
        11.34>><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<bar\>>>
        so that we have for <math|U=<big|cup><rsub|x\<in\><frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>|)>>

        <\equation>
          <label|eq 11.35>U=<big|cup><rsub|x\<in\><frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>><around*|(|x-<frac|1|n>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<bar\>>
        </equation>

        Now using <reference|normed space properties> again we have that
        <math|x-<frac|1|n>\<cdot\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|z,\<beta\>|)>>
        is open so that <math|U> being the union of open sets must be open,
        as <math|0=z-z\<in\>U> there exists a <math|\<lambda\>\<gtr\>0> such
        that <math|0\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\>U>
        or using <reference|eq 11.35>

        <\equation>
          <label|eq 11.36>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<delta\>|)>|)>|\<bar\>>
        </equation>

        what we set out to prove.
      </proof>

      <item>Next we refine (1) to show that

      <\equation>
        If \<sigma\><rsub|0>\<gtr\>0 then \<exists\>\<lambda\>\<gtr\>0 such
        that B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|0>|)>|)>
      </equation>

      <\proof>
        Using the Archimedean property of the reals (see
        <reference|consequence of the archimedean property for the reals>) we
        find a <math|N\<in\>\<bbb-N\><rsub|0>> such that
        <math|<frac|1|N>\<less\>\<sigma\><rsub|0>>. Define then
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
        <math|\<sigma\><rsub|n>=<around*|(|<frac|1|N+1>|)><rsup|n>>, we have
        then that <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<sigma\><rsup|i>\<equallim\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<frac|1|N+!>|)><rsup|i><rsub|>\<equallim\><rsub|<frac|1|N+1>\<less\>1
        and <text|<reference|exaple of a convergent
        serie>>><frac|<frac|1|N+1>|1-<frac|1|N+!>>=<frac|<frac|1|N+1>|<frac|N+1-1|N+1>>=<frac|<frac|1|N+1>|<frac|N|N+1>>=<frac|1|N>\<less\>\<sigma\><rsub|0>>
        or

        <\equation>
          <label|eq 11.38><big|sum><rsub|i=1><rsup|\<infty\>>\<sigma\><rsub|i>=<frac|1|N>\<less\>\<sigma\><rsub|0>
        </equation>

        Now <math|\<forall\>n\<in\>\<bbb-N\>=\<bbb-N\><rsub|0><big|cup><around*|{|0|}>>
        we have using (1) the existence of a
        <math|\<lambda\><rsub|n><rprime|'>\<gtr\>0> such that
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n><rprime|'>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<bar\>>>.
        Define <math|0\<less\>\<lambda\><rsub|n>=min<around*|(|\<lambda\><rprime|'><rsub|n>,<frac|1|n+1>|)>\<less\><frac|1|n+1>>
        then trivially we have <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<bar\>>>
        and using <reference|convergence of powersequence> and
        <reference|limit preserves inequality (3)> we have that
        <math|<below|lim|n\<rightarrow\>\<infty\>>\<lambda\><rsub|n>=0>. So
        we have found a sequence <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|>>>
        such that

        <\equation>
          <label|eq 11.39><below|lim|i\<rightarrow\>\<infty\>>\<lambda\><rsub|i>\<wedge\>\<forall\>n\<in\>\<bbb-N\>
          we have B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n>|)>|)>|\<bar\>>
        </equation>

        Taken now <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<sigma\><rsub|0>|)>>.
        Then <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|0>|)>\<Rightarrow\>y\<in\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|0>|)>|)>|\<bar\>>>
        so there exists a <math|y<rsub|0>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|1>|)><big|cap>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|0>|)>|)>>
        [as <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|1>|)>>
        a open set] thus <math|\<exists\>x<rsub|0>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|0>|)>>
        such that <math|y<rsub|0>=L<around*|(|x<rsub|0>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|1>|)>>.
        This gives

        <\equation>
          <label|eq 11.40>\<exists\>x<rsub|0>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|0>|)>
          with <around*|\<\|\|\>|y-L<around*|(|x<rsub|0>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|1><rsub|>
        </equation>

        Take now <math|\<cal-N\><rsub|0>=<around*|{|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\>\<wedge\>\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>
        we have x<rsub|i>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|i>|)>\<wedge\><around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|j=0><rsup|i>x<rsub|j>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|i+1>|}>>
        then we have

        <\equation>
          <around*|{|x<rsub|0>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<in\>\<cal-N\><rsub|0>
        </equation>

        If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<in\>\<cal-N\><rsub|0>>
        then as <math|<around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|j=0><rsup|n>x<rsub|i>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|n+1>>
        we have that <math|y-L<around*|(|<big|sum><rsub|j=0><rsup|n>x<rsub|j>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\><rsub|n+1>|)>\<subseteq\><wide|L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n+1>|)>|)>|\<bar\>>>
        so that there exists a <math|y<rsub|n+1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y-L<around*|(|<big|sum><rsub|j=0><rsup|n>x<rsub|j>|)>,\<lambda\><rsub|n+2>|)><big|cap>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n+1>|)>|)>\<Rightarrow\>\<exists\>x<rsub|n+1>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|n+1>|)>>
        such that <math|y<rsub|n+1>=L<around*|(|x<rsub|n+1>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|y-L<around*|(|<big|sum><rsub|j=0><rsup|n>x<rsub|j>|)>,\<lambda\><rsub|n+2>|)>>.
        Then <math|<around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|j=0><rsup|n+1>x<rsub|j>|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|<around*|(|y-L<around*|(|<big|sum><rsub|j=0><rsup|n>|)>|)>-L<around*|(|x<rsub|n+1>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|n+1>=\<lambda\><rsub|<around*|(|n+1|)>+1>>.
        This defines a function <math|\<rho\>:\<cal-N\><rsub|0>\<rightarrow\>X>
        such that <math|x<rsub|n+1>=\<rho\><around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>|)>>
        and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n+1|}>>\<in\>\<cal-N\><rsub|0>>.
        Using recursion (see <reference|recursion with restricted set
        (general)> this defines a sequence (or function from
        <math|\<bbb-N\>\<rightarrow\>X>) <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
        such that

        <\equation>
          <label|eq 11.42>\<forall\>i\<in\>\<bbb-N\> we have
          x<rsub|i>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|i>|)>\<wedge\><around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|j=0><rsup|i>x<rsub|i>|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|i+1>
        </equation>

        As <math|x<rsub|i>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,\<sigma\><rsub|i>|)>>
        we have <math|<around*|\<\|\|\>|x<rsub|i>|\<\|\|\>><rsub|X>\<less\>\<sigma\><rsub|i>>
        so that using <reference|convergent criteria of a serie in a Banach
        space> we have that <math|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>>
        converges and <math|<around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>|\<\|\|\>><rsub|X>\<leqslant\><big|sum><rsub|i=0><rsup|\<infty\>>\<sigma\><rsub|i>\<equallim\><rsub|<reference|subserie
        property>>\<sigma\><rsub|0>+<big|sum><rsub|i=1><rsup|\<infty\>>\<sigma\><rsub|i>\<less\><rsub|<reference|eq
        11.38>>\<sigma\>+\<sigma\>=2\<cdot\>\<sigma\>> so if
        <math|x=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>> then
        <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\>2\<cdot\>\<sigma\>>
        and thus

        <\equation>
          <label|eq 11.43>x=<big|sum><rsub|j=0><rsup|\<infty\>>x<rsub|i>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|0>|)>
        </equation>

        Assume now that <math|<around*|\<\|\|\>|y-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<gtr\>0>
        then we can take <math|\<varepsilon\>=<around*|\<\|\|\>|y-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<gtr\>0>
        so that as <math|<below|lim|i\<rightarrow\>\<infty\>>\<lambda\><rsub|i>=0>
        and <math|0\<less\>\<lambda\><rsub|i>> that there exists a
        <math|N<rsub|1>\<in\>\<bbb-N\>> such that if
        <math|n\<geqslant\>N<rsub|1>> then
        <math|\<lambda\><rsub|n>=<around*|\||\<lambda\><rsub|n>-0|\|>\<less\><frac|\<varepsilon\>|2>>.
        As <math|x=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>> there exists
        a <math|N<rsub|2>\<in\>\<bbb-N\>> such that if
        <math|n\<geqslant\>N<rsub|2>> then
        <math|<around*|\<\|\|\>|x-<big|sum><rsub|i=0><rsup|n>x<rsub|i>|\<\|\|\>><rsub|X>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>>.
        If <math|n\<geqslant\>max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
        <math|\<varepsilon\>=<around*|\<\|\|\>|y-L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>+L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>\<leqslant\><around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>-L<around*|(|x|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|y-L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>|)>|\<\|\|\>><rsub|Y>+<around*|\<\|\|\>|L<around*|(|<big|sum><rsub|i=0><rsup|n>x<rsub|i>-x|)>|\<\|\|\>><rsub|Y>\<less\>\<lambda\><rsub|n+1>+<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><around*|\<\|\|\>|<big|sum><rsub|i=0><rsup|n>x<rsub|i>-x|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<around*|\<\|\|\>|L|\<\|\|\>>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|\<\|\|\>|L|\<\|\|\>>>=\<varepsilon\>>
        giving the contradiction <math|\<varepsilon\>\<less\>\<varepsilon\>>.
        So we must have that <math|<around*|\<\|\|\>|y-L<around*|(|x|)>|\<\|\|\>>=0\<Rightarrow\>y=L<around*|(|x|)>\<Rightarrowlim\><rsub|<reference|eq
        11.43>>y\<in\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|0>|)>|)>>.
        As <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<sigma\><rsub|0>|)>>
        was chosen arbitrary we have that
        <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<sigma\><rsub|0>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\>\<sigma\><rsub|0>|)>|)>>,
        which taking <math|\<lambda\>=\<sigma\><rsub|0>> proves our
        assertion.

        <item>Now take <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,2\<cdot\><frac|1|2>|)>>
        we find using (2) the existence of a <math|\<lambda\>\<gtr\>0> such
        that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|Y>><around*|(|0,\<lambda\>|)>\<subseteq\>L<around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|0,1|)>|)>>
        which using <reference|linear open mappings> means that <math|L> is
        open.

        <\indent>
          \;
        </indent>
      </proof>
    </enumerate>
  </proof>

  <\corollary>
    <label|inverse of continuous linear mappings between Banach space is
    continuous>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    be Banach spaces over <math|\<bbb-K\>> and <math|L:X\<rightarrow\>Y> a
    continuous linear isomorphism then <math|L<rsup|-1>> is continuous.
  </corollary>

  <\proof>
    This is trivial using the open function theorem (<reference|open maaping
    theorem>) and <reference|inverse of open map is continuous>.
  </proof>

  <section|Integration in Banach space>

  <\note>
    In the following we assume that with <math|<around*|[|a,b|]>> we mean a
    closed and bounded interval in <math|\<bbb-R\>> that is not empty (or
    <math|a\<less\>b>)
  </note>

  <\definition>
    <math|\<bbb-N\><rsub|1>=<around*|{|1,\<ldots\>|}>=\<bbb-N\><rsub|0>\\\\<around*|{|1|}>>
  </definition>

  <\definition>
    <label|partition of a interval><index|partition of
    <math|<around*|[|a,b|]>>>A partition <math|\<cal-P\>> of
    <math|<around*|[|a,b|]>> is a family <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    <math|n\<in\>\<bbb-N\><rsub|1>> such that <math|t<rsub|1>=a,t<rsub|n>=b>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|t<rsub|i>\<less\>t<rsub|i+1>>.
  </definition>

  We prove now some trivial facts for a partition of a interval

  <\theorem>
    <label|partition covers interval>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>
    and <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a partition of <math|<around*|[|a,b|]>> then
    <math|<around*|[|a,b|]>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>>
  </theorem>

  <\proof>
    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|t<rsub|i>\<in\><around*|[|a,b|]>\<Rightarrow\>a\<leqslant\>t<rsub|i>\<leqslant\>b>
    so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|a\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>b\<Rightarrow\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|a,b|]>\<Rightarrow\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>|)>\<subseteq\><around*|[|a,b|]>>.
    Take now <math|x\<in\><around*|[|a,b|]>> and take
    <math|M<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n-1|}>\|t<rsub|i>\<leqslant\>x|}>>
    which is finite and as <math|t<rsub|1>=a\<leqslant\>x\<Rightarrow\>1\<in\>M<rsub|x>>
    is not empty, so <math|m=max<around*|(|M<rsub|x>|)>> exist. As
    <math|m\<in\>M<rsub|x>> we have <math|t<rsub|m>\<leqslant\>x>, if
    <math|t<rsub|m+1>\<less\>x\<Rightarrow\>t<rsub|m+1>\<leqslant\>x\<Rightarrow\>m+1\<in\>M<rsub|x>\<Rightarrow\>m+1\<leqslant\>m>
    a contradiction so <math|x\<leqslant\>t<rsub|m+1>>. So
    <math|x\<in\><around*|[|t<rsub|m>,t<rsub|m+1>|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<Rightarrow\><around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|t<rsub|i>,t<rsub|i+1>|]>>
  </proof>

  <\lemma>
    <label|properties of parititions>Let <math|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|n\<in\>> be such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>
    we have <math|t<rsub|i>\<less\>t<rsub|i+1>> then

    <\enumerate>
      <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|i\<less\>j> we have <math|t<rsub|i>\<less\>t<rsub|j>>

      <item>If <math|t<rsub|i>=t<rsub|j>> then <math|i=j>

      <item>If <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>\<nocomma\>>,
      <math|k\<in\><around*|{|1,\<ldots\>,n|}>> and
      <math|t<rsub|k>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>> then
      <math|k=i> or <math|k=i+1>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction, so given
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> let
      <math|\<cal-S\><rsub|i>=<around*|{|k\<in\>\<bbb-N\><rsub|0>\|if
      i+k\<leqslant\>n then t<rsub|i>\<less\>t<rsub|i+k>|}>> then:

      <\enumerate>
        <item>If <math|k=1> then if <math|i+k=i+1\<leqslant\>n> we have
        <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> and by the hypothesis we
        have <math|t<rsub|i>\<less\>t<rsub|i+1>=t<rsub|i+k>> so
        <math|1\<in\>\<cal-S\><rsub|i>>

        <item>If <math|k\<in\>\<cal-S\><rsub|i>> then for <math|k+1> we have
        if <math|i+<around*|(|k+1|)>\<leqslant\>n\<rightarrow\><around*|(|i+k|)>+1\<leqslant\>n>
        that <math|t<rsub|i+k>\<less\>t<rsub|<around*|(|i+k|)>+1>>
        (hypothesis) and <math|t<rsub|i>\<less\>t<rsub|i+k>>
        (<math|k\<in\>S<rsub|i>>) so that
        <math|t<rsub|i>\<less\>t<rsub|<around*|(|i+k|)>+1>=t<rsub|i+<around*|(|k+1|)>>>
        proving that <math|k+1\<in\>\<cal-S\><rsub|i>>
      </enumerate>

      Using induction we have that <math|\<cal-S\><rsub|i>=\<bbb-N\><rsub|0>>
      so if <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|i\<less\>j> then <math|k=j-i\<in\>\<bbb-N\><rsub|0>\<in\>\<cal-S\><rsub|i>>
      and <math|i+k=j\<leqslant\>n> so that
      <math|t<rsub|i>\<less\>t<rsub|i+k>=t<rsub|j>>.

      <item>If <math|t<rsub|i>=t<rsub|k>> then if <math|i\<less\>k> we have
      by (1) <math|t<rsub|i>\<less\>t<rsub|k>> a contradiction, if
      <math|k\<less\>i> we have by (1) <math|t<rsub|k>\<less\>t<rsub|i>> a
      contradiction. So the only possibility left is <math|i=k>

      <item>If <math|t<rsub|k>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>> then
      <math|t<rsub|i>\<leqslant\>t<rsub|k>\<leqslant\>t<rsub|i+1>>. If now
      <math|k\<less\>i> then using (1) we have
      <math|t<rsub|k>\<less\>t<rsub|i>> contradicting
      <math|t<rsub|i>\<leqslant\>t<rsub|k>>, if <math|i+1\<less\>k> we have
      using (1) <math|t<rsub|i+1>\<less\>t<rsub|k>> contradicting
      <math|t<rsub|k>\<leqslant\>t<rsub|i+1>>. So we must have
      <math|i\<leqslant\>k\<leqslant\>i+1> which means <math|i=k> or
      <math|k=i+1>\ 
    </enumerate>
  </proof>

  <\theorem>
    <label|combined partition><index|<math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>>Let
    <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>>
    be two partitions of <math|<around*|[|a,b|]>> then there exists a unique
    partition <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of <math|<around*|[|a,b|]>> such that
    <math|<around*|{|t<rsub|i><around*|\||i\<in\><around*|{|1,\<ldots\>,n|}>|\|>|}>=<around*|{|t<rsup|1><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|2><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>>.
    This partition of <math|<around*|[|a,b|]>> is noted by
    <math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>.\ 
  </theorem>

  <\proof>
    Define <math|P=<around*|{|t<rsup|1><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|2><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>\<subseteq\><around*|[|a,b|]>>
    which is a finite set. Using <reference|ordering of a finite set> there
    exists a unique bijection <math|t:<around*|{|1,\<ldots\>,#<around*|(|P|)>|}>\<rightarrow\>P>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,#<around*|(|P|)>-1|}>>
    we have <math|t<around*|(|i|)>\<less\>t<around*|(|i+1|)>>. As
    <math|a,b\<in\>P> there exists a <math|i,j\<in\><around*|{|1,\<ldots\>,#<around*|(|P|)>|}>>
    such that <math|t<around*|(|i|)>=a> and <math|t<around*|(|j|)>=b>. If
    <math|i\<gtr\>1> then <math|a=t<around*|(|i|)>\<gtr\>t<around*|(|1|)>\<geqslant\>a>
    a contradiction so we must have <math|i=1>. If
    <math|j\<less\>#<around*|(|P|)>> then
    <math|b=t<around*|(|j|)>\<less\>t<around*|(|#<around*|(|P|)>|)>\<leqslant\>b>
    a contradiction so we must have <math|j=#<around*|(|P|)>>. If we then
    take <math|n=#<around*|(|P|)>> and <math|\<cal-P\>=<around*|{|t<around*|(|i|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then we have that <math|t<around*|(|1|)>=a,t<around*|(|n|)>=b> and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> that
    <math|t<around*|(|i|)>=t<around*|(|i+1|)>> proving our theorem.
  </proof>

  <\lemma>
    Let <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>>
    be two partitions of <math|<around*|[|a,b|]>> with
    <math|\<cal-P\>=\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then for every <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> there exists
    unique <math|i<rsub|1>\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>,i<rsub|2>\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
    such that <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1>>,t<rsup|1><rsub|i<rsub|1>+1>|]>>
    and <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|2><rsub|i<rsub|2>>,t<rsup|2><rsub|i<rsub|2+1>>|]>>.
  </lemma>

  <\proof>
    We prove this for <math|i<rsub|1>> the proof for <math|i<rsub|2>> is
    similar (by switching <math|1\<leftrightarrow\>2>). First as
    <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|t<rsub|i>\<neq\>b=t<rsub|n<rsub|1>>=t<rsub|n<rsub|2>>>, then as
    <math|t<rsub|i>\<in\><around*|{|t<rsub|j><around*|\||j\<in\><around*|{|1,\<ldots\>,n|}>|\|>|}>=<around*|{|t<rsup|1><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>|}><big|cup><around*|{|t<rsup|2><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>|}>>
    we have either

    <\enumerate>
      <item><dueto|<math|t<rsub|1>\<in\><around*|{|t<rsup|1><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}>>>then
      there exists a <math|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> such
      that <math|t<rsub|i>=t<rsup|1><rsub|k>>, by the definition of
      <math|\<cal-P\>=\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>> there
      exists a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|l>=t<rsup|1><rsub|k+1>>. Suppose now that
      <math|t<rsup|1<rsub|>><rsub|k+1>\<less\>t<rsub|i+1>\<Rightarrow\>t<rsub|l>\<less\>t<rsub|i+1>>
      then <math|t<rsub|i>=t<rsup|1><rsub|k>\<less\>t<rsup|1><rsub|k+1>=t<rsub|l>\<less\>t<rsub|i+1>\<Rightarrow\>t<rsub|l>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<Rightarrowlim\><rsub|<reference|properties
      of parititions>>l=i> or <math|l=i+1>, as
      <math|t<rsub|i>\<less\>t<rsub|l>> we must have <math|i\<neq\>l> so that
      <math|l=i+1> but this contract <math|t<rsub|l>\<less\>t<rsub|i+1>>. The
      conclusion is thus that <math|t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|k+1>\<Rightarrow\>t<rsup|1><rsub|k>=t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|k+1>\<Rightarrow\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|k>,t<rsup|1><rsub|k+1>|]>>
      so we take <math|i<rsub|1>=k> to get
      <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1>>,t<rsup|1><rsub|i<rsub|1>+1>|]>>.\ 

      <item><dueto|<math|t<rsub|1>\<in\><around*|{|t<rsup|2><rsub|j>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>>>then
      there exists a <math|k\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>> such
      that <math|t<rsup|2><rsub|k>=t<rsub|i>>. Define then
      <math|B=<around*|{|j\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>\|t<rsup|1><rsub|j>\<leqslant\>t<rsub|i>|}>>
      then as <math|t<rsup|1><rsub|1>=a\<leqslant\>a=t<rsub|1>> we have
      <math|1\<in\>B\<Rightarrow\>B\<neq\>0> and as <math|B> is finite
      (subset of a finite set) there exist a
      <math|m=max<around*|(|B|)>\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>.
      If <math|m=n<rsub|1>> then <math|b=t<rsub|m><rsup|1>=t<rsup|1><rsub|n<rsub|1>>=b\<leqslant\>t<rsub|i>\<less\>b>
      a contradiction so <math|m\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>.
      Then we have by the definition of a maximum and <math|B> that
      <math|t<rsup|1><rsub|m>\<leqslant\>t<rsub|i>\<less\>t<rsup|1><rsub|m+1>>.
      Assume now that <math|t<rsup|1><rsub|m+1>\<less\>t<rsub|i+1>> then as
      by the definition of <math|\<cal-P\>> there exists a
      <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|l>=t<rsup|1><rsub|m+1>> we have from
      <math|t<rsub|i>\<less\>t<rsup|1><rsub|m+1>=t<rsub|l>\<less\>t<rsub|i+1>\<Rightarrow\>t<rsub|l>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<Rightarrowlim\><rsub|<reference|properties
      of parititions>>l=i> or <math|l=i+1> which is impossible as
      <math|t<rsub|i>\<less\>t<rsub|l>\<less\>t<rsub|i+1>>, we are thus
      forced to conclude that <math|t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|m+1>>.
      This gives <math|t<rsup|1><rsub|m>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|m+1>\<Rightarrow\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|m>,t<rsup|1><rsub|m+1>|]>>
      giving if we take <math|i<rsub|1>=m> that
      <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|m>,t<rsup|1><rsub|m+1>|]>>
    </enumerate>

    Next we prove uniqueness so assume that there exists a
    <math|i<rsub|1>,i<rprime|'><rsub|1>> such that
    <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1>>,t<rsup|1><rsub|i<rsub|1>+1>|]>,<around*|[|t<rsup|1><rsub|i<rsub|1><rprime|'>>,t<rsup|1><rsub|i<rsub|1><rprime|'>+1>|]>>
    and assume that <math|i<rsub|1>\<neq\>i<rprime|'><rsub|1>> we have then
    two cases

    <\enumerate>
      <item><dueto|<math|i<rsub|1>\<less\>i<rprime|'><rsub|1>>>then
      <math|t<rsub|i<rsub|1>><rsup|1>\<less\>t<rsup|1><rsub|i<rprime|'><rsub|1>>>
      and so <math|t<rsup|1><rsub|i<rsub|1>>\<less\>t<rsup|1><rsub|i<rprime|'><rsub|1>>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|i<rsub|1>+1>\<Rightarrow\>t<rsup|1><rsub|i<rprime|'><rsub|1>>\<in\><around*|[|t<rsup|1><rsub|i<rsub|1>>,t<rsup|1><rsub|i<rsub|1>+1>|]>\<Rightarrowlim\><rsub|<reference|properties
      of parititions>>i<rprime|'><rsub|1>=i<rsub|1>> or
      <math|i<rprime|'><rsub|1>=i<rsub|1>+1> which as
      <math|t<rsup|1><rsub|i<rsub|1>>\<less\>t<rsub|i<rprime|'><rsub|1>><rsup|1>>
      means that <math|i<rprime|'><rsub|1>=i<rsub|1>+1> but then
      <math|t<rsup|1><rsub|i<rsub|1>+1>=t<rsup|1><rsub|i<rprime|'><rsub|1>>\<leqslant\>t<rsub|i>\<less\>t<rsup|1><rsub|i<rsub|1>+1>>
      a contradiction.

      <item><dueto|<math|i<rprime|'><rsub|1>\<less\>i<rsub|1>>>then
      <math|t<rsub|i<rprime|'><rsub|1>><rsup|1>\<less\>t<rsup|1><rsub|i<rsub|1>>>
      and so <math|t<rsup|1><rsub|i<rprime|'><rsub|1>>\<less\>t<rsup|1><rsub|i<rsub|1>>\<leqslant\>t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|i<rprime|'><rsub|1>+1>\<Rightarrow\>t<rsup|1><rsub|i<rsub|1>>\<in\><around*|[|t<rsup|1><rsub|i<rprime|'><rsub|1>>,t<rsup|1><rsub|i<rprime|'><rsub|1>+1>|]>\<Rightarrowlim\><rsub|<reference|properties
      of parititions>>i<rsub|1>=i<rprime|'><rsub|1>> or
      <math|i<rsub|1>=i<rprime|'><rsub|1>+1> which as
      <math|t<rsup|1><rsub|i<rprime|'><rsub|1>>\<less\>t<rsub|i<rsub|1>><rsup|1>>
      means that <math|i<rsub|1>=i<rprime|'><rsub|1>+1> but then
      <math|t<rsup|1><rsub|i<rprime|'><rsub|1>+1>=t<rsup|1><rsub|i<rsub|1>>\<leqslant\>t<rsub|i>\<less\>t<rsup|1><rsub|i<rprime|'><rsub|1>+1>>
      a contradiction.
    </enumerate>

    so we must conclude that <math|i<rsub|1>=i<rprime|'><rsub|1>>
  </proof>

  <\lemma>
    <label|partitions and combined parititions>Let
    <math|\<cal-P\><rsub|1>=<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>>,
    <math|\<cal-P\><rsub|2>=<around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>>
    be partitions of <math|<around*|[|a,b|]>> and
    <math|\<cal-P\>=\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>=<around*|{|t<rsub|i>|}><rsub|i\<comma\><around*|{|1,\<ldots\>,n|}>>>
    then using the previous lemma for every
    <math|i\<in\><around*|{|0,\<ldots\>,n-1|}>> there exists unique
    <math|i<rsub|1>\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>,i<rsub|2>\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
    so that <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1>>,t<rsup|1><rsub|i<rsub|1>-1>|]>,<around*|[|t<rsup|2><rsub|i<rsub|2>>,t<rsup|2><rsub|i<rsub|2>+1>|]>>.
    This defines functions <math|i<rsub|1>:<around*|{|1,.,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>,
    <math|i<rsub|2>:<around*|{|1,\<ldots\>,n-1|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>
    such that <math|<around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1><around*|(|i|)>>,t<rsup|1><rsub|i<rsub|2><around*|(|i|)>+1>|]>,<around*|[|t<rsup|2><rsub|i<rsub|2><around*|(|i|)>>,t<rsup|2><rsub|i<rsub|2><around*|(|i|)>+1>|]>>.
    We have then additional that

    <\enumerate>
      <item><math|i<rsub|1>,i<rsub|2>> are surjective

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> we
      have that

      <\enumerate>
        <item><math|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>|}>>
        where <math|t<rsub|m<rsup|1><rsub|i>>=t<rsup|1><rsub|i>> and
        <math|t<rsub|M<rsup|1><rsub|i>+1>=t<rsup|1><rsub|i+1>>

        <item><math|i<rsub|2><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|2><rsub|i>,M<rsup|2><rsub|i>|}>>
        where <math|t<rsub|m<rsup|2><rsub|i>>=t<rsup|2><rsub|i>> and
        <math|t<rsub|M<rsup|2><rsub|i>+1>=t<rsup|2><rsub|i+1>>
      </enumerate>

      <item>If <math|i\<neq\>j> then <math|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>i<rsub|1><rsup|-1><around*|(|<around*|{|j|}>|)>=\<emptyset\>>
      and \ <math|i<rsub|2><rsup|-1><around*|(|<around*|{|i|}>|)><big|cap>i<rsub|2><rsup|-1><around*|(|<around*|{|j|}>|)>=\<emptyset\>>
    </enumerate>
  </lemma>

  <\proof>
    \ We prove this for <math|i<rsub|1>> (the proof for <math|i<rsub|2>> is
    similar by interchanging <math|1\<leftrightarrow\>2>)

    <\enumerate>
      <item>Let <math|k\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>> then for
      <math|t<rsub|k><rsup|1>> there exists a
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|k><rsup|1>=t<rsub|i>> and as
      <math|k\<less\>n<rsub|1>\<Rightarrow\>t<rsub|i>=t<rsup|1><rsub|k>\<less\>t<rsup|1><rsub|n<rsub|1>>=b=t<rsub|n>>
      we must have <math|i\<in\><around*|{|1,\<ldots\>,n-1|}>>. Now assume
      that <math|t<rsup|1><rsub|k+1>\<less\>t<rsub|i+1>> then as there exists
      a <math|j\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|j>=t<rsup|1><rsub|k+1>> we have then
      <math|t<rsub|i>=t<rsup|1><rsub|k>\<less\>t<rsup|1><rsub|k+1>=t<rsub|j>\<less\>t<rsub|i+1>\<Rightarrow\>t<rsub|j>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<Rightarrowlim\><rsub|<reference|properties
      of parititions> and t<rsub|i>\<less\>t<rsub|j>>j=i+1> but then
      <math|t<rsub|i+1>=t<rsub|j>=t<rsup|1><rsub|k+1>\<less\>t<rsub|i+1>> a
      contradiction. So we must have <math|t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|k+1>>
      or <math|t<rsub|k><rsup|1>=t<rsub|i>\<less\>t<rsub|i+1>\<leqslant\>t<rsup|1><rsub|k+1>\<Rightarrow\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|k>,t<rsup|1><rsub|k+1>|]>>
      our <math|i<rsub|1><around*|(|i|)>=k> proving surjectivity.

      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>, as
      <math|i<rsub|1>> is surjective we have that
      <math|\<emptyset\>\<neq\>i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>\<subseteq\><around*|{|1,\<ldots\>,n-1|}>>
      so there exists <math|m<rsup|1><rsub|i>=min<around*|(|i<rsup|-1><rsub|1><around*|(|<around*|{|i|}>|)>|)>>,
      <math|M<rsup|1><rsub|i>=max<around*|(|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>|)>>.
      We prove now that <math|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>|}>>

      <\enumerate>
        <item><math|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>\<subseteq\><around*|{|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>|}>>
        (this is trivial by the definition of minimum and maximum)

        <item>If <math|k\<in\><around*|{|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>|}>>
        then <math|m<rsup|1><rsub|i>\<leqslant\>k\<leqslant\>M<rsup|1><rsub|i>\<Rightarrow\>t<rsub|m<rsub|i>>\<leqslant\>t<rsub|k>>
        and <math|k+1\<leqslant\>M<rsup|1><rsub|i>+1\<Rightarrow\>t<rsub|<rsup|m<rsub|i><rsup|1>+1>>\<leqslant\>t<rsub|M<rsup|1><rsub|i>+1>>.
        As we have <math|<around*|[|t<rsub|m<rsup|1><rsub|i>>,t<rsub|m<rsup|1><rsub|i>+1>|]>,<around*|[|t<rsub|M<rsup|1><rsub|i>>,t<rsub|M<rsup|1><rsub|i>+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i>,t<rsup|1><rsub|i+1>|]>>
        we have <math|t<rsup|1><rsub|i>\<leqslant\>t<rsub|m<rsup|1><rsub|i>>\<leqslant\>t<rsub|k>\<less\>t<rsub|k+1>\<leqslant\>t<rsup|1><rsub|M<rsup|1><rsub|i>+1>\<leqslant\>t<rsup|1><rsub|i+1>\<Rightarrow\><around*|[|t<rsub|k>,t<rsub|k+1>|]>\<subseteq\><around*|[|t<rsub|i><rsup|1>,t<rsup|1><rsub|i+1>|]>\<Rightarrow\>i<rsub|1><around*|(|k|)>=i\<Rightarrow\>k\<in\>i<rsup|-1><rsub|1><around*|(|<around*|{|i|}>|)>\<nosymbol\>>.
        Proving <math|<around*|{|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>|}>\<subseteq\>i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>>
      </enumerate>

      As <math|i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|1><rsub|i>,\<ldots\>,M<rsup|1><rsub|i>|}>>
      we have <math|m<rsup|1><rsub|i>,M<rsup|1><rsub|i>\<in\>i<rsub|1><rsup|-1><around*|(|<around*|{|i|}>|)>\<Rightarrow\>i<rsub|1><around*|(|m<rsup|1><rsub|i>|)>=i,i<rsub|1><around*|(|M<rsup|1><rsub|i>|)>=i>
      or

      <\equation>
        <label|eq 11.44><around*|[|t<rsub|m<rsup|1><rsub|i><rsub|>>,t<rsub|m<rsup|1><rsub|i>+1>|]>,<around*|[|t<rsub|M<rsup|1><rsub|i>>,t<rsub|M<rsup|1><rsub|i>+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i>,t<rsup|1><rsub|i+1>|]>
      </equation>

      From <reference|eq 11.44> it follows that
      <math|t<rsup|1><rsub|i>\<leqslant\>t<rsub|m<rsup|1><rsub|i>>>, assume
      now that <math|t<rsup|1><rsub|i>\<less\>t<rsub|m<rsup|1><rsub|i>>> then
      by the definition of <math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>
      there exists a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|t<rsub|l>=t<rsup|1><rsub|i>> then
      <math|t<rsub|l>=t<rsup|1><rsub|1>\<less\>t<rsub|m<rsup|1><rsub|i>>> so
      that <math|l\<less\>m<rsup|1><rsub|i>> or
      <math|l+1\<less\>m<rsup|1><rsub|i>+1\<Rightarrow\>><math|t<rsup|1><rsub|1>=t<rsub|l>\<less\>t<rsub|l+1>\<less\>t<rsub|m<rsup|1><rsub|i>+1>\<leqslant\>t<rsup|1><rsub|i+1>\<Rightarrow\><around*|[|t<rsub|l>,t<rsub|l+1>|]>\<subseteq\><around*|[|t<rsub|i><rsup|1>,t<rsub|i+1><rsup|1>|]>>
      proving that <math|i<rsub|1><around*|(|l|)>=i\<Rightarrow\>l\<in\>i<rsup|-1><rsub|1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|1><rsub|i>,\<ldots\>,M<rsup|1><rsub|i>|}>>
      proving that <math|m<rsup|1><rsub|i>\<leqslant\>l\<less\>m<rsup|1><rsub|i>>
      a contradiction. So we must have <math|t<rsup|1><rsub|i>=t<rsub|m<rsup|1><rsub|i>.>>
      From <reference|eq 11.44> it follows that
      <math|t<rsub|M<rsup|1><rsub|i>+1>\<leqslant\>t<rsup|1><rsub|i+1>>,
      assume now that <math|t<rsub|M<rsup|1><rsub|i>+1>\<less\>t<rsup|1><rsub|i+1>>
      then by the definition of <math|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>
      there exists a <math|l\<in\><around*|{|1,\<ldots\>,n|}>> so that
      <math|t<rsub|i+1><rsup|1>=t<rsub|l>> then
      <math|t<rsub|M<rsup|1><rsub|i>+1>\<less\>t<rsup|1><rsub|i+1>=t<rsub|l>>
      so that <math|M<rsup|1><rsub|i>+1\<less\>l\<Rightarrow\>M<rsup|1><rsub|i>\<less\>l-1>
      thus <math|t<rsup|1><rsub|i>\<leqslant\>t<rsub|M<rsup|1><rsub|i>>\<less\>t<rsub|l-1>\<less\>t<rsub|l>=t<rsup|1><rsub|i+1>\<Rightarrow\><around*|[|t<rsub|l-1>,t<rsub|l>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i>,t<rsup|1><rsub|i+1>|]>>
      proving that <math|i<rsub|1><around*|(|l-1|)>=i\<Rightarrow\>l-1\<in\>i<rsup|-1><rsub|1><around*|(|<around*|{|i|}>|)>=<around*|{|m<rsup|1><rsub|i>,\<ldots\>,M<rsup|1><rsub|i>|}>\<Rightarrow\>l-1\<leqslant\>M<rsup|1><rsub|i>\<less\>l-1>
      \ a contradiction. So we must have that
      <math|t<rsub|M<rsub|i><rsup|1>+1>=t<rsup|1><rsub|i+1>>

      <item>Assume that <math|k\<in\>i<rsub|1><rsup|-1><around*|(|i|)><big|cap>i<rsub|1><rsup|-1><around*|(|j|)>,i\<neq\>j>
      \ then <math|i<rsub|1><around*|(|k|)>=i> and
      <math|i<rsub|1><around*|(|k|)>=j> so that by definition of a function
      we must have <math|i=j>.\ 
    </enumerate>
  </proof>

  <\definition>
    <label|norm of a partition><index|norm of a
    partition><index|<math|\<mu\><around*|(|\<cal-P\>|)>>>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> and
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a partition of <math|<around*|[|a,b|]>> then the norm
    <math|\<mu\><around*|(|\<cal-P\>|)>> of the partition is defined by
    <math|\<mu\><around*|(|\<cal-P\>|)>=max<around*|(|<around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n-1|}>|}>|)>\<equallim\><rsub|t<rsub|i>\<less\>t<rsub|i+1>>max<around*|(|<around*|{|t<rsub|i+1>-t<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n-1|}>|}>|)>>
  </definition>

  <\definition>
    <label|tagged partition><index|tagged
    paritition><math|><index|<math|\<bbb-P\>>>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> and
    <math|\<cal-P\>=<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a partition of <math|<around*|[|a,b|]>> then a
    <with|font-series|bold|tag> on a partition is a family
    <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>>. A tagged
    partition <math|\<bbb-P\>> is a pair of a partition and a tag on this
    partition, so <math|\<bbb-P\>=<around*|(|\<cal-P\>,s|)>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|t<rsub|i>\<less\>t<rsub|i+1>\<wedge\>s<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>>
    and <math|t<rsub|i>=a,t<rsub|n>=b>. The norm of a tagged partition is the
    norm of its partition so <math|\<mu\><around*|(|\<bbb-P\>|)>=\<mu\><around*|(|<around*|(|\<cal-P\>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>|)>=\<mu\><around*|(|\<cal-P\>|)>>
  </definition>

  <\definition>
    <label|riemanian sum><index|Riemanian
    sum><index|<verbatim|<math|\<cal-S\><around*|(|f,\<bbb-P\>|)>>>>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|\<bbb-P\>=<around*|{|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|}>>
    is a tagged partition on <math|<around*|[|a,b|]>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed real vector space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    function then a Riemann sum of <math|f> using the tagged partition, noted
    by <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>> is defined by
    <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>.
  </definition>

  <\lemma>
    <label|difference of Riemann sums>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed real vector space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    function, <math|\<bbb-P\><rsub|1>=<around*|(|<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>,<around*|{|s<rsup|1><rsub|i>|}><rsub|i\<comma\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>|)>>,
    <math|\<bbb-P\><rsub|2>=<around*|(|<around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>,<around*|{|s<rsup|2><rsub|i>|}><rsub|i\<comma\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>|)>>
    tagged partitions of <math|<around*|[|a,b|]>> then if
    <math|\<cal-P\>=<around*|{|t<rsup|><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>=<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>\<boxplus\><around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>>
    we have

    <\enumerate>
      <item><math|\<b-S\><around*|(|f,\<bbb-P\><rsub|1>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>

      <item><math|S<around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>

      <item><math|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>-f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>|)>>
    </enumerate>

    \ \ (<math|i<rsub|1>,i<rsub|2>> as defined in <reference|partitions and
    combined parititions>) \ 
  </lemma>

  <\proof>
    First we prove that for <math|j=1,2> we have
    \ <math|\<cal-S\><around*|(|f,\<bbb-P\><rsub|j>|)>=<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|><rsup|j><rsub|i<rsub|j><around*|(|i|)>>|)><around*|(|t<rsup|><rsub|i+1>-t<rsub|i>|)>>.
    First as by <reference|partitions and combined parititions> we have that
    <math|i<rsub|j>> is surjective so that
    <math|<around*|{|1,\<ldots\>,n-1|}>=<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>>i<rsub|j><rsup|-1><around*|(|<around*|{|k|}>|)>>
    and <math|\<forall\>k,l\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>> with
    <math|k\<neq\>j> we have <math|i<rsub|j><rsup|-1><around*|(|<around*|{|k|}>|)><big|cap>i<rsub|j><rsup|-1><around*|(|<around*|{|l|}>|)>=\<emptyset\>>
    and <math|i<rsub|><rsup|-1><rsub|j><around*|(|<around*|{|k|}>|)>=<around*|{|m<rsup|j><rsub|k>,\<ldots\>,M<rsup|j><rsub|k><rsub|>|}>>
    and <math|t<rsup|j><rsub|m<rsup|j><rsub|k>>=t<rsub|k>> and
    <math|t<rsup|j><rsub|M<rsup|j><rsub|k>+1>=t<rsub|k+1>>, so if
    <math|i\<in\><around*|{|m<rsub|k><rsup|j>,\<ldots\>,M<rsub|k><rsup|j>|}>>
    then <math|k=i<rsub|j><around*|(|i|)>>. Using <reference|general
    associativity of general sums (generals)> we have
    <math|<big|sum><rsup|n><rsub|i=1>f<around*|(|s<rsup|j><rsub|i<rsub|j><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<around*|(|s<rsup|j><rsub|i<rsub|j><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|m<rsup|j><rsub|k>,\<ldots\>,M<rsub|k><rsup|j>|}>>f<around*|(|s<rsup|j><rsub|i<rsub|j><around*|(|i|)>>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>=<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|m<rsub|k><rsup|j>,\<ldots\>,M<rsup|j><rsub|k>|}>><rsup|>f<around*|(|s<rsup|j><rsub|k>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|generlized
    sum and scalair product>>><big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>>f<around*|(|s<rsub|k><rsup|j>|)>\<cdot\><around*|(|<big|sum><rsub|i=m<rsub|k><rsup|j>><rsup|M<rsub|k><rsup|j>><around*|(|t<rsub|i+1>-t<rsub|i>|)><rsub|>|)>\<equallim\><rsub|<text|<reference|sum
    of differences>>><big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>-1|}>>f<around*|(|s<rsub|k><rsup|j>|)>\<cdot\><around*|(|t<rsub|M<rsup|j><rsub|k>+1>-t<rsub|m<rsup|j><rsub|k>>|)>=<big|sum><rsub|k=1><rsup|n<rsub|j>-1>f<around*|(|s<rsup|j><rsub|k>|)>\<cdot\><around*|(|t<rsup|j><rsub|k+1>-t<rsup|j><rsub|k>|)>=\<cal-S\><around*|(|f,\<bbb-P\><rsub|j>|)>>.

    Finally <math|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n>f<around*|(|s<rsub|><rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)><around*|(|t<rsup|><rsub|i+1>-t<rsub|i>|)>|)>-<around*|(|<big|sum><rsub|i=1><rsup|n>f<around*|(|s<rsub|><rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)><around*|(|t<rsup|><rsub|i+1>-t<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>-f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>
  </proof>

  <\lemma>
    <label|differences of tagged partitions>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed real vector space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    continuous function then for every <math|\<varepsilon\>\<gtr\>0> there
    exists a <math|\<delta\>\<less\>0> such that
    <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    for all <math|\<bbb-P\><rsub|1>,\<bbb-P\><rsub|2>> such that
    <math|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>>,
    <math|\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>>
  </lemma>

  <\proof>
    Using the fact that <math|<around*|[|a,b|]>> is compact in
    <math|<around*|\<langle\>|\<bbb-R\>,<around*|\|||\|>|\<rangle\>>> (see
    <reference|[a,b] is compact>), <math|f> is continuous and
    <reference|continuous functions on a compact set are uniform continue> we
    have that <math|f> is uniform continuous on <math|<around*|[|a,b|]>>. So
    there exists a <math|\<delta\>\<gtr\>0> such that
    <math|\<forall\>x,x<rprime|'>\<in\><around*|[|a,b|]>> with
    <math|<around*|\||x-x<rprime|'>|\|>\<less\>2\<cdot\>\<delta\>> we have
    <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|x<rprime|'>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|b-a>>.
    Take now <math|\<bbb-P\><rsub|1>,\<bbb-P\><rsub|2>> such that
    <math|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>\<less\>\<delta\>>,
    <math|\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>> then by
    using the previous lemma we have

    <\equation>
      <label|eq 11.45><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1><around*|(|f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>-f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|\<\|\|\>>
    </equation>

    As <math|t<rsub|i>\<in\><around*|[|t<rsub|i>,t<rsub|i+1>|]>\<subseteq\><around*|[|t<rsup|1><rsub|i<rsub|1><around*|(|i|)>>,t<rsup|1><rsub|i<rsub|1><around*|(|i|)>+1>|]><big|cap><around*|[|t<rsup|2><rsub|i<rsub|2><around*|(|i|)>>,t<rsup|2><rsub|i<rsub|2><around*|(|i|)>+1>|]>>
    we have as also <math|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>\<in\><around*|[|t<rsup|1><rsub|i<rsub|1><around*|(|i|)>>,t<rsup|1><rsub|i<rsub|1><around*|(|i|)>+1>|]>>,
    <math|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>\<in\><around*|[|t<rsup|2><rsub|i<rsub|2><around*|(|i|)>>,t<rsup|2><rsub|i<rsub|2><around*|(|i|)>+1>|]>>
    that <math|<around*|\||s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>-s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|\|>\<leqslant\><around*|\||s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>-t<rsub|i>|\|>+<around*|\||t<rsub|i>-s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|\|>\<leqslant\>\<mu\><around*|(|\<bbb-P\><rsub|1>|)>+\<mu\><around*|(|\<bbb-P\><rsub|2>|)>\<less\>\<delta\>+\<delta\>=2\<cdot\>\<delta\>>
    so that

    <\equation>
      <label|eq 11.46><around*|\<\|\|\>|f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>-f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|b-a>
    </equation>

    Using <reference|eq 11.45> and <reference|eq 11.46> we have
    <math|><math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|f<around*|(|s<rsup|1><rsub|i<rsub|1><around*|(|i|)>>|)>-f<around*|(|s<rsup|2><rsub|i<rsub|2><around*|(|i|)>>|)>|\<\|\|\>><around*|\||t<rsub|i+1>-t<rsub|1>|\|>\<leqslant\><frac|\<varepsilon\>|b-a>\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|\||t<rsub|i+1>-t<rsub|i>|\|>\<equallim\><rsub|t<rsub|i+1>\<gtr\>t<rsub|i>><frac|\<varepsilon\>|b-a>\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
    of differences>>><frac|\<varepsilon\>|b-a>\<cdot\><around*|(|t<rsub|n>-t<rsub|1>|)>=<frac|\<varepsilon\>|b-a>\<cdot\><around*|(|b-a|)>=\<varepsilon\>>
    what we set out to prove.
  </proof>

  <\lemma>
    <label|uniqueness and riemansums>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|a\<less\>b>, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a real normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    function then if a <math|I\<in\>X> satisfies the following condition

    <\enumerate>
      <item><math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that for every Riemann
      <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>> with
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> (where
      <math|\<bbb-P\>> is a tagged partition of <math|<around*|[|a,b|]>>) we
      have <math|<around*|\<\|\|\>|I-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    </enumerate>

    then <math|I> is unique.
  </lemma>

  <\proof>
    Suppose that <math|I,I<rprime|'>> satisfies (1) and
    <math|I\<neq\>I<rprime|'>> then <math|\<varepsilon\>=<around*|\<\|\|\>|I-I<rprime|'>|\<\|\|\>>\<gtr\>0>
    then by (1) there exists a <math|\<delta\>\<gtr\>0> such that if
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|I-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>,
    <math|<around*|\<\|\|\>|I<rprime|'>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>.
    This means <math|\<varepsilon\>=<around*|\<\|\|\>|I-I<rprime|'>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|I-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-I<rprime|'>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
    a contradiction. The only conclusion left is that <math|I=I<rprime|'>>.
  </proof>

  <\definition>
    <label|Rieman Integral><index|Rieman Integral><index|<math|<big|int><rsub|a><rsup|b>f>>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> and
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a function so that there exists
    a <math|I<around*|(|f|)>\<in\>X> with
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
    <math|\<delta\>\<gtr\>0> such that for every Riemann
    <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>> with
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> (where
    <math|\<bbb-P\>> is a tagged partition of <math|<around*|[|a,b|]>>) we
    have <math|<around*|\<\|\|\>|I<around*|(|f|)>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<varepsilon\>>.
    <math|f> is then called <with|font-series|bold|Riemann Integrable> and
    <math|I<around*|(|f|)>> is called the <with|font-series|bold|Riemann
    Integral of f> and noted by <math|<big|int><rsub|a><rsup|b>f>. The set of
    integrable functions on <math|<around*|[|a,b|]>> is noted as
    <math|\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>>. The integral
    <math|<big|int>>is then a function <math|<big|int><rsub|a><rsup|b>:\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>\<rightarrow\>X>
    defined by <math|f\<rightarrow\><big|int><rsub|a><rsup|b>f>
  </definition>

  <\note>
    Sometimes we note a function <math|f:<around*|[|a,b|]>\<rightarrow\>Y>
    defined by <math|x\<rightarrow\>f<around*|(|x|)>> where
    <math|f<around*|(|x|)>> is in general a expression depending on <math|x>,
    in this case we can note <math|<big|int><rsub|a><rsup|b>f> by
    <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>dx>, this notation is
    especially useful if we have for example a function
    <math|f:<around*|[|a,b|]>\<times\>X\<rightarrow\>Y> defined by
    <math|<around*|(|t,x|)>\<rightarrow\>f<around*|(|t,x|)>> then if we
    define for a <math|x\<in\>X> <math|g<rsub|x>:<around*|[|a,b|]>\<rightarrow\>Y>
    by <math|t\<rightarrow\>g<rsub|x><around*|(|t|)>=f<around*|(|t,x|)>> then
    we can write <math|<big|int><rsub|a><rsup|b>g<rsub|x>> as
    <math|<big|int><rsub|a><rsup|b>f<around*|(|t,x|)>dt> which avoids the
    extra definition of <math|g<rsub|x>>. Another benefit is that if we have
    <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-K\>> with
    <math|x\<rightarrow\>f<around*|(|x|)>=<frac|cos<around*|(|x|)>+1|x+1>>
    then again we can write for <math|<big|int><rsub|a><rsup|b>f> the
    expression <math|<big|int><rsub|a><rsup|b><frac|cos<around*|(|x|)>+1|x+1>dx>.
    On the other hand we have introduced a extra indeterminisme as
    <math|<big|int><rsub|a><rsup|b>f<around*|(|x|)>dx> is the same as
    <math|<big|int><rsub|a><rsup|b>f<around*|(|y|)>dy> ... , this is the
    reason that we avoid this notation for the rest of this chapter. However
    if needed we can fall back on this notation if we feel a need to it.
  </note>

  <\theorem>
    <math|><label|existance of converging tagged partititions>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    normed real space then we have that there exists a family of tagged
    partitions on <math|<around*|[|a,b|]>>
    <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    such that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
  </theorem>

  <\proof>
    \ Let <math|k\<in\>\<bbb-N\><rsub|0>> define then
    <math|<around*|{|t<rsub|i><rsup|<around*|(|k|)><rsub|>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>>
    by <math|t<rsub|i><rsup|<around*|(|k|)>>=<around*|(|i-1|)>\<cdot\><frac|b-a|k>+a>
    then we have <math|t<rsub|1><rsup|<around*|(|k|)><rsub|>>=<around*|(|1-1|)>\<cdot\><frac|b-a|k>+a=a>
    and <math|t<rsub|k+1><rsup|<around*|(|k|)><rsub|>>=<around*|(|k+1-1|)>\<cdot\><frac|b-a|k>+a=<frac|k\<cdot\><around*|(|b-a|)>+a\<cdot\>k|k>=<frac|k\<cdot\>b-a\<cdot\>k+a\<cdot\>k|k>=b>,
    further <math|t<rsup|<around*|(|k|)>><rsub|i+1>-t<rsub|i><rsup|<around*|(|k|)>>=<around*|(|<around*|(|i+1|)>-1|)>\<cdot\><frac|b-a|k>+a-<around*|(|i-1|)>\<cdot\><frac|b-a|k>-a=i\<cdot\><frac|b-a|k>-i\<cdot\><frac|b-a|k>+<frac|b-a|k>=<frac|b-a|k>\<gtr\>0>,
    so that using <reference|convergence of powersequence> we have
    <math|<below|lim|k\<rightarrow\>\<infty\>><around*|(|t<rsub|i+1><rsup|<around*|(|k|)>>-t<rsub|i><rsup|<around*|(|k|)>>|)>=0>.
    Define now <math|\<bbb-P\><rsub|k>=<around*|{|<around*|{|t<rsub|i><rsup|<around*|(|k|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k+1|}>>,<around*|{|t<rsub|i><rsup|<around*|(|k|)>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>|}>>
    then we have <math|\<mu\><around*|(|\<bbb-P\><rsub|k>|)>=<frac|b-a|k>>
    and thus for <math|<around*|{|\<bbb-P\><rsub|k>|}><rsub|k\<in\>\<bbb-N\><rsub|0>>>
    we have <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|k>|)>=0>

    \;
  </proof>

  <\theorem>
    <label|alternative definition of Riemann Integral>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>, <math|X>,
    <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    <with|font-series|bold|continuous> function then the following are
    equivalent

    <\enumerate>
      <item><math|f> is Riemann integrable with integral
      <math|<big|int><rsub|a><rsup|b>f>

      <item>There exists a <math|I\<in\>X> such that for every family of
      tagged partitions <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      with <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
      we have <math|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=I>.
      We have then that <math|I=<big|int><rsub|a><rsup|b>f>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<Rightarrow\>>>Let <math|f> be Riemann integrable
      with integral <math|<big|int><rsub|a><rsup|b>f> and take
      <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      such that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
      Then if <math|\<varepsilon\>\<gtr\>0> there exists a
      <math|\<delta\>\<gtr\>0> such that if <math|\<bbb-P\>> is such that
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\>\<varepsilon\>>.
      Now as <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
      then there exists a <math|N\<in\>\<bbb-N\><rsub|0>> such that if
      <math|n\<geqslant\>N> then <math|\<mu\><around*|(|P<rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|n>|)>-0|\|>\<less\>\<delta\>\<Rightarrow\><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>-<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<less\>\<varepsilon\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b>f>

      <item><dueto|<math|\<Leftarrow\>>>First by <reference|existance of
      converging tagged partititions> there exists a
      <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      with <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>,
      by the hypothesis we have then that
      <math|I=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>>
      exists. Take now <math|\<varepsilon\>\<gtr\>0> then there exists a
      <math|N<rsub|1>\<in\>\<bbb-N\><rsub|0>> such that if
      <math|n\<geqslant\>N<rsub|1>> then <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>-I|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>,
      using <reference|differences of tagged partitions> there exists a
      <math|\<delta\>\<gtr\>0> such that if
      <math|\<bbb-P\><rprime|'>,\<bbb-P\><rprime|''>> are two tagged
      partitions with <math|\<mu\><around*|(|\<bbb-P\><rprime|'>|)>\<less\>\<delta\>>,
      <math|\<mu\><around*|(|\<bbb-P\><rprime|'><rprime|'>|)>\<less\>\<delta\>>
      then <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rprime|'>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rprime|''>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>,
      as <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
      there exists also a <math|N<rsub|2>> so that if
      <math|n\<geqslant\>N<rsub|2>> then <math|\<mu\><around*|(|\<bbb-P\><rsub|n>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|n>|)>-0|\|>\<less\>\<delta\>>.
      Take now <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>\<geqslant\>N<rsub|1>,N<rsub|2>>
      then <math|\<mu\><around*|(|\<bbb-P\><rsub|N>|)>\<less\>\<delta\>> and
      <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>-I|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>>
      and assume that for a partition <math|\<bbb-P\>> we have
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-I|\<\|\|\>>=<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|N>|)>|\<\|\|\>>+<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|n>|)>-I|\<\|\|\>>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>.
      Proving that <math|f> is integrable and as we have uniqueness by
      <reference|uniqueness and riemansums> we must have
      <math|I=<big|int><rsub|a><rsup|b>f>.
    </enumerate>
  </proof>

  We prove now that <math|\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>> is not
  empty if <math|X> is a Banach space and <math|f> is continuous.

  <\theorem>
    <label|existance of Riemann integral for continuous function>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    real normed Banach space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    continuous function then <math|f> is integrable. In other words we have
    that <math|\<cal-C\><around*|(|<around*|[|a,b|]>,X|)>\<subseteq\>\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>>
  </theorem>

  <\proof>
    Let <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    be a family of tagged partitions on <math|<around*|[|a,b|]>> with
    <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>.
    Given a <math|\<varepsilon\>\<gtr\>0> we can find by
    <reference|differences of tagged partitions> there exists a
    <math|\<delta\>\<gtr\>0> such that if
    <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>,\<mu\><around*|(|\<bbb-P\><rprime|'>|)>\<less\>\<delta\>>
    then <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rprime|'>|)>|\<\|\|\>>\<less\>\<varepsilon\>>,
    we can then find a <math|N\<in\>\<bbb-N\><rsub|0>> such that if
    <math|i\<geqslant\>N> we have <math|\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|i>|)>-0|\|>\<less\>\<delta\>>.
    So if <math|n,m\<geqslant\>\<bbb-N\>> then
    <math|\<mu\><around*|(|\<bbb-P\><rsub|n>|)>,\<mu\><around*|(|\<bbb-P\><rsub|m>|)>\<less\>\<delta\>>
    and thus <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|n>|)>-\<cal-S\><around*|(|f,\<bbb-P\><rsub|m>|)>|\<\|\|\>>\<less\>\<varepsilon\>>
    proving that <math|<around*|{|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is a Cauchy sequence in <math|X>. As <math|X> is a Banach space we have
    that <math|<around*|{|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    converges to a limit <math|I>. Using then the previous theorem (see
    <reference|alternative definition of Riemann Integral>) we have then that
    <math|f> is Integrable with <math|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>=<big|int><rsub|a><rsup|b>f>
  </proof>

  Up to now we have always assumed that <math|a\<less\>b> let's now remove
  this restriction

  <\definition>
    <label|Riemann Integral (general)><index|Riemann
    Integral><index|<math|<big|int><rsup|b><rsub|a>f>>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>> with <math|a\<leqslant\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> a
    real normed space then <math|f:<around*|[|a,b|]>\<rightarrow\>X> is
    Riemann Integrable with integral <math|<big|int><rsub|a><rsup|b>> if and
    only if

    <\enumerate>
      <item>If <math|a\<less\>b> then we use the definition of
      <reference|Rieman Integral>

      <item>If <math|a=b> then <math|f> is always integrable and
      <math|<big|int><rsub|a><rsup|b>f=0>
    </enumerate>
  </definition>

  From now on if we say <math|<around*|[|a,b|]>\<in\>\<bbb-R\>> then
  <math|a\<leqslant\>b> (so <math|a=b> is back allowed)

  <\theorem>
    <label|linearity of integral>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<leqslant\>b>
    and <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a real normed space then <math|<big|int><rsub|a><rsup|b>:\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>\<rightarrow\>X>
    is linear. In other words <math|\<forall\>\<alpha\>,\<beta\>\<in\>\<bbb-R\>>
    and <math|\<forall\>f,g\<in\>\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>>
    we have <math|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g\<in\>\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>>
    and <math|<big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+\<beta\>\<cdot\><big|int><rsub|a><rsup|b>g>
  </theorem>

  <\proof>
    Consider the two cases for the integral

    <\enumerate>
      <item><dueto|<math|a=b>>Then the integral exists always and
      <math|<big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>=0+0=\<alpha\>\<cdot\>0+\<beta\>\<cdot\>0=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+\<beta\>\<cdot\><big|int><rsub|a><rsup|b>g>

      <item><dueto|<math|a\<less\>b>>Let <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
      a tagged partition of <math|<around*|[|a,b|]>> then
      <math|\<cal-S\><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)><around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>f<around*|(|s<rsub|i>|)>+\<beta\>\<cdot\>g<around*|(|s<rsub|i>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>f\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>+\<beta\>\<cdot\><big|sum><rsub|i=1><rsup|n>g\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>+\<beta\>\<cdot\>\<cal-S\><around*|(|g,\<bbb-P\>|)>>
      giving

      <\equation>
        <label|eq 11.47>\<cal-S\><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g,\<bbb-P\>|)>=\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>+\<beta\>\<cdot\>\<cal-S\><around*|(|g,\<bbb-P\>|)>
      </equation>

      Let <math|\<varepsilon\>\<gtr\>0> then as <math|f,g> is integrable
      there exists a <math|\<delta\>\<gtr\>0> such that if
      <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\||\<alpha\>|\|>+1|)>>>
      and <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>g-\<cal-S\><around*|(|g,\<bbb-P\>|)>|\<\|\|\>>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\||\<beta\>|\|>+1|)>>>
      and thus <math|<around*|\<\|\|\>|<around*|(|\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+\<beta\>\<cdot\><big|int><rsub|a><rsup|b>g|)>-\<cal-S\><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g,\<bbb-P\>|)>|\<\|\|\>>\<equallim\><rsub|<text|<reference|eq
      11.47>>><around*|\<\|\|\>|\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+\<beta\>\<cdot\><big|int><rsub|a><rsup|b>g-\<alpha\>\<cdot\>\<cal-S\><around*|(|f,\<bbb-P\>|)>-\<beta\>\<cdot\>\<cal-S\><around*|(|g,\<bbb-P\>|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|\<alpha\>\<cdot\><around*|(|<big|int><rsub|a><rsup|b>f-\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>|\<\|\|\>>+<around*|\<\|\|\>|\<beta\>\<cdot\><around*|(|<big|int><rsub|a><rsup|b>g-\<cal-S\><around*|(|g,\<bbb-P\>|)>|)>|\<\|\|\>>=<around*|\||\<alpha\>|\|>\<cdot\><around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>+<around*|\||\<beta\>|\|>\<cdot\><around*|\<\|\|\>|<big|int><rsub|a><rsup|b>g-\<cal-S\><around*|(|g,\<bbb-P\>|)>|\<\|\|\>>\<less\><around*|\||\<alpha\>|\|>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\||\<alpha\>|\|>+1|)>>+<around*|\||\<beta\>|\|>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|<around*|\||\<beta\>|\|>+1|)>>\<less\>\<varepsilon\>>
      proving that <math|<big|int><rsub|a><rsup|b><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>=\<alpha\>\<cdot\><big|int><rsub|a><rsup|b>f+\<beta\>\<cdot\><big|int><rsub|a><rsup|b>g>.
    </enumerate>
  </proof>

  <\theorem>
    <label|property of integral>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<leqslant\>b>
    and <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a real normed space and <math|f\<in\>\<cal-L\><around*|(|<around*|[|a,b|]>,X|)>>
    then we have

    <\enumerate>
      <item><math|\<forall\>\<varphi\>\<in\>L<around*|(|X,\<bbb-R\>|)>> (a
      continuous linear function) we have that <math|\<varphi\>\<circ\>f> is
      integrable and <math|<big|int><rsub|a><rsup|b><around*|(|\<varphi\>\<circ\>f|)>=\<varphi\><around*|(|<big|int><rsub|a><rsup|b>f|)>>

      <item>If <math|<around*|\<\|\|\>|f|\<\|\|\>>> is continuous then
      <math|f,<around*|\<\|\|\>|f|\<\|\|\>>> are integrable and
      <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<leqslant\><big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>>

      <item>Given <math|c\<in\>X> the constant function <math|c> defined by
      <math|x\<rightarrow\>c<around*|(|x|)>=c> is integrable and
      <math|<big|int><rsub|a><rsup|b>c=c\<cdot\><around*|(|b-a|)>>

      <item>If <math|f> is continuous and <math|m\<in\>\<bbb-R\>> is such
      that <math|\<forall\>x\<in\><around*|[|a,b|]>> we have
      <math|<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>\<less\>m> then
      <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>\<leqslant\>m\<cdot\><around*|(|b-a|)>>
    </enumerate>
  </theorem>

  <\proof>
    We divide the proof in the cases of <math|a=b> and <math|a\<less\>b>

    <\enumerate>
      <item><dueto|<math|a=b>>

      <\enumerate>
        <item>If <math|\<varphi\>\<in\>L<around*|(|X,\<bbb-R\>|)>> then we
        have <math|<big|int><rsub|a><rsup|a>\<varphi\>\<circ\>f=0\<equallim\><rsub|<text|<reference|linear
        map applied to 0 gives 0>>>\<varphi\><around*|(|0|)>=\<varphi\><around*|(|<big|int><rsub|a><rsup|a>f|)>>

        <item><math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|a>f|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>=0\<leqslant\>0=<big|int><rsub|a><rsup|a><around*|\<\|\|\>|f|\<\|\|\>>>

        <item><math|<big|int><rsub|a><rsup|a>c=0=c\<cdot\>0=c*\<cdot\><around*|(|a-a|)>>

        <item><math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|a>f|\<\|\|\>>=<around*|\<\|\|\>|0|\<\|\|\>>\<leqslant\>0=m\<cdot\>0=m\<cdot\><around*|(|a-a|)>>
      </enumerate>

      <item><dueto|<math|a\<less\>b>>

      <\enumerate>
        <item>If <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
        then we have <math|\<cal-S\><around*|(|\<varphi\>\<circ\>f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1>\<varphi\><around*|(|f<around*|(|s<rsub|i>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<equallim\><rsub|\<varphi\>
        is linear>\<varphi\>*<around*|(|<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>=\<varphi\><around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>>,
        so we have

        <\equation>
          <label|eq 11.48>\<cal-S\><around*|(|\<varphi\>\<circ\>f,\<bbb-P\>|)>=\<varphi\><around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>
        </equation>

        Now as <math|\<varphi\>> is continuous, we have that given a
        <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\><rprime|'>\<gtr\>0> such that if
        <math|<around*|\<\|\|\>|x|\<\|\|\>>=<around*|\<\|\|\>|x-0|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        then <math|<around*|\||\<varphi\><around*|(|x|)>|\|>\<less\>\<varepsilon\>>.
        As <math|f> is integrable there exists a <math|\<delta\>\<gtr\>0>
        such that if <math|\<mu\><around*|(|\<bbb-P\>|)>\<less\>\<delta\>>
        then <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<less\>\<delta\><rprime|'>>
        and thus <math|<around*|\||\<varphi\><around*|(|<big|int><rsub|a><rsup|b>f|)>-\<cal-S\><around*|(|\<varphi\>\<circ\>f,\<bbb-P\>|)>|\|>\<equallim\><rsub|<text|<reference|eq
        11.48>>><around*|\||\<varphi\><around*|(|<big|int><rsub|a><rsup|b>f|)>-\<varphi\><around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>|\|>\<equallim\><rsub|\<varphi\>
        is linear><around*|\||\<varphi\><around*|(|<around*|(|<big|int><rsub|1><rsup|b>f|)>-\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>|\|>\<less\>\<varepsilon\>>
        proving that <math|\<varphi\>\<circ\>f> is integrable with integral
        <math|\<varphi\><around*|(|<big|int><rsub|a><rsup|b>f|)>>.

        <item>As <math|f> is continuous we have that <math|f> is integrable,
        further given <math|x\<in\>X> and <math|\<varepsilon\>\<gtr\>0> a
        <math|\<delta\>\<gtr\>0> \ so that if
        <math|<around*|\<\|\|\>|x-y|\<\|\|\>>\<less\>\<delta\>> then
        <math|<around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<around*|\<\|\|\>|f<around*|(|x|)>|\<\|\|\>>-<around*|\<\|\|\>|f<around*|(|y|)>|\<\|\|\>>
        |\|>\<leqslant\><around*|\<\|\|\>|f<around*|(|x|)>-f<around*|(|y|)>|\<\|\|\>>\<less\>\<varepsilon\>>
        proving that <math|<around*|\<\|\|\>|f|\<\|\|\>>> is continuous and
        thus integrable. Second given <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
        we have <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|\<\|\|\>>=<big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>|\<\|\|\>>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>>
        proving that

        <\equation>
          <label|eq 11.49><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<leqslant\>\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\>|)>
        </equation>

        This means that if <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
        is such that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
        then <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>=<around*|\<\|\|\>|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>||\<\|\|\>>
        is continuous and <text|<reference|limit and
        continuity>>><below|lim|i\<rightarrow\>\<infty\>><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<leqslant\><rsub|<reference|eq
        11.49><text| and <reference|limit preserves inequality
        (2)>>><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|<around*|\<\|\|\>|f|\<\|\|\>>,\<bbb-P\>|)>=<big|int><rsub|a><rsup|b><around*|\<\|\|\>|f|\<\|\|\>>>.

        <item>If <math|c> is the constant function then we have for
        <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
        that <math|\<cal-S\><around*|(|c,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|n-1>c<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n-1>c\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=c\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
        of differences>>>c\<cdot\><around*|(|t<rsub|n>-t<rsub|1>|)>=c\<cdot\><around*|(|b-a|)>>

        <item>First <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
        is a tagged partition on <math|<around*|[|a,b|]>> then we have
        <math|<around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>=<around*|\<\|\|\>|<big|sum><rsub|i=1><rsup|n-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|\<\|\|\>>\<leqslant\><big|sum><rsub|i=1><rsup|n-1><around*|\<\|\|\>|f<around*|(|s<rsub|i>|)>|\<\|\|\>>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n-1>m\<cdot\><around*|(|t<rsub|i+1>-t<rsub|>|)>=m\<cdot\><big|sum><rsub|i=1><rsup|n-1><around*|(|t<rsub|i+1>-t<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
        of differences>>>m\<cdot\><around*|(|b-a|)>> proving that

        <\equation>
          <label|eq 11.50><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\>|)>|\<\|\|\>>\<leqslant\>m\<cdot\><around*|(|b-a|)>
        </equation>

        If now <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
        is such that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
        then <math|<around*|\<\|\|\>|<big|int><rsub|a><rsup|b>f|\<\|\|\>>=<around*|\<\|\|\>|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|\<\|\|\>>\<equallim\><rsub|<around*|\<\|\|\>||\<\|\|\>>
        is continuous and <text|<reference|limit and
        continuity>>><below|lim|i\<rightarrow\>\<infty\>><around*|\<\|\|\>|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|\<\|\|\>>\<leqslant\><rsub|<text|<reference|eq
        11.50> and <reference|limit preserve
        inequality>>>m\<cdot\><around*|(|b-a|)>>
      </enumerate>
    </enumerate>
  </proof>

  <\lemma>
    <label|union of tagged partitions>Let
    <math|c\<in\><around*|[|a,b|]>\<subseteq\>\<bbb-R\>>,
    <math|a\<less\>c\<less\>b> and let <math|\<bbb-P\><rsub|1>=<around*|(|<around*|{|t<rsup|1><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>,<around*|{|s<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>|)>>
    be a tagged partition on <math|<around*|[|a,c|]>>,
    <math|\<bbb-P\><rsub|2>=<around*|(|<around*|{|t<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>|}>>,<around*|{|s<rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>>|)>>
    a tagged partition on <math|<around*|[|c,b|]>> then
    <math|\<bbb-P\>=\<bbb-P\><rsub|1><big|cup>\<bbb-P\><rsub|2>> \ defined by
    <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>|)>>
    where <math|t<rsub|i>=<choice|<tformat|<table|<row|<cell|t<rsup|1><rsub|i>
    if i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>>|<row|<cell|t<rsup|2><rsub|i-n<rsub|1>+1>
    if i\<in\><around*|{|n<rsub|1>+1,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}>>>>>>>
    and <math|s<rsub|i>=<choice|<tformat|<table|<row|<cell|s<rsup|1><rsub|i>
    if i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>>|<row|<cell|s<rsup|2><rsub|i-n<rsub|1>+1>
    if i\<in\><around*|{|n<rsub|1>,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>>>>>>
    then <math|\<bbb-P\>> is a tagged partition of <math|<around*|[|a,b|]>>
    with <math|\<mu\><around*|(|\<bbb-P\>|)>=max<around*|(|\<mu\><rsub|1><around*|(|\<bbb-P\><rsub|1>|)>,\<mu\><around*|(|\<bbb-P\><rsub|2>|)>|)>>.
    If <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    is a normed space and <math|f:<around*|[|a,b|]>\<rightarrow\>X> a
    function then <math|\<cal-S\><around*|(|f,\<bbb-P\>|)>=\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>+\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>>
  </lemma>

  <\proof>
    To prove this note:\ 

    <\enumerate>
      <item><math|t<rsub|1>=t<rsup|1><rsub|1>=a>

      <item><math|t<rsub|n<rsub|1>+n<rsub|2>-1>\<equallim\><rsub|1\<less\>n<rsub|2>\<Rightarrow\>2\<leqslant\>n<rsub|2>\<Rightarrow\>2+<around*|(|n<rsub|1>-1|)>\<leqslant\>n<rsub|2>+<around*|(|n<rsub|1>-1|)>+n<rsub|2>\<Rightarrow\>n<rsub|1>+1\<leqslant\>n<rsub|1>+n<rsub|2>-1>t<rsup|2><rsub|<around*|(|n<rsub|1>+n<rsub|2>-1|)>-n<rsub|1>+1>=t<rsup|2><rsub|n<rsub|2>>=b>

      <item>If <math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>>
      then we have either

      <\enumerate>
        <item><dueto|<math|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>>>then
        <math|s<rsub|i>=s<rsup|1><rsub|i>\<in\><around*|[|t<rsub|i><rsup|1>,t<rsup|1><rsub|i+1>|]>\<equallim\><rsub|1\<leqslant\>i,i+1\<leqslant\>n<rsub|1>><around*|[|t<rsub|i>,t<rsub|i+1>|]>>

        <item><dueto|<math|i=n<rsub|1>>>then
        <math|s<rsub|n<rsub|1>>=s<rsup|2><rsub|<around*|(|n<rsub|1>-n<rsub|1>+1|)>>=s<rsup|2><rsub|1>\<in\><around*|[|t<rsup|2><rsub|1>,t<rsup|2><rsub|1+1>|]>=<around|[|c,t<rsup|2><rsub|1>|]>=<around*|[|t<rsup|1><rsub|n<rsub|1>>,t<rsup|2><rsub|2>|]>=<around|[|t<rsub|n<rsub|1>>,t<rsup|2><rsub|<around*|(|n<rsub|1>+1|)>-n<rsub|1>+1>|]>=<around*|[|t<rsub|n<rsub|1>>,t<rsub|n<rsub|1>+1>|]>>

        <item><dueto|<math|i\<in\><around*|{|n<rsub|1>+1,\<ldots\>,n<rsub|1>+n<rsub|2>-1|}>>>then
        <math|s<rsub|i>=s<rsup|2><rsub|i-n<rsub|1>+1>\<in\><around*|[|t<rsup|2><rsub|i-n<rsub|1>+1>,t<rsup|2><rsub|<around*|(|i-n<rsub|1>+1|)>+1>|]>=<around*|[|t<rsup|><rsub|i>,t<rsub|i+1>|]>>
      </enumerate>

      <item><math|<around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>=<around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|n<rsub|1>|}>|}><big|cup><around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|n<rsub|1>+1,\<ldots\>,<around*|(|n<rsub|1>+n<rsub|2>-1|)>-1|}>|}>=<around*|{|<around*|\||t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|<around*|\||t<rsup|2><rsub|<around*|(|n<rsub|1>+1|)>-n<rsub|1>+1>-t<rsub|n<rsub|1>><rsup|1>|\|>|}><big|cup><around*|{|<around*|\||t<rsup|2><rsub|<around*|(|i-n<rsub|1>+1|)>+1>-t<rsup|2><rsub|i-n<rsub|1>+1>|\|>\|i\<in\><around*|{|n<rsub|1>+1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>=<around*|{|<around*|\||t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|<around*|\||t<rsub|2><rsup|2>-c|\|>|}><big|cup><around*|{|<around*|\||t<rsup|2><rsub|<around*|(|<around*|(|j+<around*|(|n<rsub|1>+1|)>-2|)>-n<rsub|1>+1|)>+1>-t<rsup|2><rsub|<around*|(|j+<around*|(|n<rsub|1>+1|)>-2|)>-n<rsub|1>+1>|\|>\|j\<in\><around*|{|2,\<ldots\>,n<rsub|2>-1|}>|}>=<around*|{|<around*|\||t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|<around*|\||t<rsub|2><rsup|2>-t<rsup|2><rsub|1>|\|>|}><big|cup><around*|{|<around*|\||t<rsup|2><rsub|j+1>-t<rsup|2><rsub|<around*|(|j|\<nobracket\>>>|\|>\|j\<in\><around*|{|2,\<ldots\>,n<rsub|2>-1|}>|}>=<around*|{|<around*|\||t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}><big|cup><around*|{|<around*|\||t<rsup|2><rsub|j+1>-t<rsup|2><rsub|<around*|(|j|\<nobracket\>>>|\|>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>>
      so that <math|\<mu\><around*|(|\<bbb-P\>|)>=max<around*|(|<around*|{|<around*|\||t<rsub|i+1>-t<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>+n<rsub|2>-2|}>|}>|)>=max<around*|(|<around*|{|max<around*|(|<around*|{|<around*|\||t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>-1|}>|}>|)>,max<around*|(|<around*|{|<around*|\||t<rsup|2><rsub|j+1>-t<rsup|2><rsub|<around*|(|j|\<nobracket\>>>|\|>\|j\<in\><around*|{|1,\<ldots\>,n<rsub|2>-1|}>|}>|)>|}>|)>=max<around*|(|\<mu\><around*|(|\<bbb-P\><rsub|1>|)>,\<mu\><around*|(|\<bbb-P\><rsub|2>|)>|)>>

      <item><math|\<cal-S\>*<around*|(|f,\<bbb-P\>|)>=<big|sum><rsub|i=1><rsup|<around*|(|n<rsub|1>+n<rsub|2>-1|)>-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>+<around*|(|<big|sum><rsub|i=n<rsub|1>><rsup|n<rsub|1>>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>+<around*|(|<big|sum><rsub|i=n<rsub|1>+1><rsup|<around*|(|n<rsub|1>+n<rsub|2>-1|)>-1>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsup|1><rsub|i>|)>\<cdot\><around*|(|t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|)>|)>+<around*|(|f<around*|(|s<rsub|n<rsub|1>>|)>\<cdot\><around*|(|t<rsub|n<rsub|1>+1>-t<rsub|n<rsub|1>>|)>|)>+<around*|(|<big|sum><rsub|i=n<rsub|1>+1><rsup|<around*|(|n<rsub|1>+n<rsub|2>-1|)>-1>f<around*|(|s<rsup|2><rsub|i-n<rsub|1>+1>|)>\<cdot\><around*|(|t<rsup|2><rsub|<around*|(|i-n<rsub|1>+1|)>+1>-t<rsup|2><rsub|<around*|(|i-n<rsub|1>+1|)>>|)>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsup|1><rsub|i>|)>\<cdot\><around*|(|t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|)>|)>+<around*|(|f<around*|(|s<rsup|2><rsub|1>|)>\<cdot\><around*|(|t<rsup|2><rsub|<around*|(|n<rsub|1>-n<rsub|1>+1|)>+1>-t<rsup|1><rsub|n<rsub|1>>|)>|)>+<around*|(|<big|sum><rsub|j=2><rsup|n<rsub|2>-1>f<around*|(|s<rsup|2><rsub|j+<around*|(|n<rsub|1>+1|)>-2-n<rsub|1>+1>|)>\<cdot\><around*|(|t<rsup|2><rsub|<around*|(|<around*|(|j+<around*|(|n<rsub|1>+1|)>-2|)>-n<rsub|1>+1|)>+1>-t<rsup|2><rsub|<around*|(|j+<around*|(|n<rsub|1>+1|)>-n<rsub|1>+1|)>-2>|)>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsup|1><rsub|i>|)>\<cdot\><around*|(|t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|)>|)>+<around*|(|f<around*|(|s<rsub|n<rsub|1>>|)>\<cdot\><around*|(|t<rsup|2><rsub|2>-c|)>|)>+<around*|(|<big|sum><rsub|j=2><rsup|n<rsub|2>-1>f<around*|(|s<rsup|2><rsub|j>|)>\<cdot\><around*|(|t<rsup|2><rsub|j+1>-t<rsup|2><rsub|j>|)>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsup|1><rsub|i>|)>\<cdot\><around*|(|t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|)>|)>+<around*|(|f<around*|(|s<rsub|n<rsub|1>>|)>\<cdot\><around*|(|t<rsup|2><rsub|2>-t<rsup|2><rsub|1>|)>|)>+<around*|(|<big|sum><rsub|j=2><rsup|n<rsub|2>-1>f<around*|(|s<rsup|2><rsub|j>|)>\<cdot\><around*|(|t<rsup|2><rsub|j+1>-t<rsup|2><rsub|j>|)>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n<rsub|1>-1>f<around*|(|s<rsup|1><rsub|i>|)>\<cdot\><around*|(|t<rsup|1><rsub|i+1>-t<rsup|1><rsub|i>|)>|)>+<around*|(|<big|sum><rsub|j=1><rsup|n<rsub|2>-1>f<around*|(|s<rsup|2><rsub|j>|)>\<cdot\><around*|(|t<rsup|2><rsub|j+1>-t<rsup|2><rsub|j>|)>|)>=\<cal-S\><around*|(|f,\<bbb-P\><rsub|1>|)>+\<cal-S\><around*|(|f,\<bbb-P\><rsub|2>|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|splitting of a integral>Let <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<leqslant\>b,<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    a real metric space and <math|c\<in\><around*|[|a,b|]>> and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,X|)>> then
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,c|]>,X|)>> and
    <math|f\<in\>\<cal-C\><around*|(|<around*|[|c,d|]>,X|)>> so that
    <math|f:<around*|[|a,b|]>\<rightarrow\>X>,
    <math|f:<around*|[|a,c|]>\<rightarrow\>X> and
    <math|f:<around*|[|c,b|]>\<rightarrow\>X> are integrable and
    <math|<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>f=<big|int><rsub|a><rsup|b>f>
  </theorem>

  <\proof>
    We have the following cases to consider:

    <\enumerate>
      <item><dueto|<math|a=b>>Then <math|a=c=b> so that
      <math|<big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|a>=0=0+0=<big|int><rsub|a><rsup|a>f+<big|int><rsub|a><rsup|a>f=<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>>

      <item><dueto|<math|a\<less\>b\<wedge\>a=c>>Then
      <math|<big|int><rsub|a><rsup|b>f=0+<big|int><rsub|a><rsup|b>=<big|int><rsub|a><rsup|a>f+<big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>f>

      <item><dueto|<math|a\<less\>b\<wedge\>c=b>>Then
      <math|<big|int><rsub|a><rsup|b>f=<big|int><rsub|a><rsup|b>f+0=<big|int><rsub|a><rsup|b>f+<big|int><rsub|b><rsup|b>=<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>>

      <item><dueto|<math|a\<less\>c\<wedge\>c\<less\>b>>As
      <math|f:<around*|[|a,c|]>\<rightarrow\>X> and
      <math|f:<around*|[|c,b|]>\<rightarrow\>X> are continuous we have that
      they are integrable so that by <reference|alternative definition of
      Riemann Integral> there exists a <math|<around*|{|\<bbb-P\><rsup|1><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      (tagged partitions on <math|<around*|[|a,c|]>>) and
      <math|<around*|{|\<bbb-P\><rsup|2><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      (tagged partitions on <math|<around*|[|c,b|]>>) with
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsup|1><rsub|i>|)>=0>,
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsup|2><rsub|i>|)>=0>
      so that <math|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|1><rsub|i>|)>=<big|int><rsub|a><rsup|c>f>
      and <math|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|2><rsub|i>|)>=<big|int><rsub|c><rsup|b>f>.
      Take then <math|<around*|{|\<bbb-P\><rsup|1><rsub|i><big|cup>\<bbb-P\><rsup|1><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      then by <reference|union of tagged partitions> we have that
      <math|<around*|{|\<bbb-P\><rsup|1><rsub|i><big|cup>\<bbb-P\><rsup|2><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is a family of tagged partitions of <math|<around*|[|a,b|]>>. Also if
      <math|\<varepsilon\>\<gtr\>0> then <math|\<exists\>N<rsub|1>,N<rsub|2>>
      such that if <math|i\<geqslant\>N<rsub|1>> then
      <math|\<mu\><around*|(|\<bbb-P\><rsup|1><rsub|i>|)>\<less\><frac|\<varepsilon\>|2>>,
      if <math|i\<geqslant\>N<rsub|2>> then
      <math|\<mu\><around*|(|\<bbb-P\><rsup|2><rsub|i>|)>\<less\><frac|\<varepsilon\>|2>>.
      So if <math|i\<geqslant\>N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
      <math|<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|i><rsup|1><big|cup>\<bbb-P\><rsub|i><rsup|i>|)>-0|\|>=<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|i><rsup|1><big|cup>\<bbb-P\><rsup|2><rsub|i>|)>|\|>\<equallim\><rsub|<text|<reference|union
      of tagged partitions>>><around*|\||\<mu\><around*|(|\<bbb-P\><rsup|1><rsub|i>|)>+\<mu\><around*|(|\<bbb-P\><rsup|2><rsub|i>|)>|\|>\<leqslant\><around*|\||\<mu\><around*|(|\<bbb-P\><rsub|i><rsup|1>|)>|\|>+<around*|\||\<mu\><around*|(|\<bbb-P\><rsub|i><rsup|2>|)>|\|>\<less\><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsup|1><rsub|i><big|cup>\<bbb-P\><rsup|2><rsub|i>|)>=0>.
      Next <math|<big|int><rsub|a><rsup|c>f+<big|int><rsub|c><rsup|b>f=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|1><rsub|i>|)>+<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsup|2><rsub|i>|)>\<equallim\><rsub|<text|<reference|limit
      of a sum>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i><rsup|1>|)>+\<cal-S\><around*|(|f,\<bbb-P\><rsub|i><rsup|2>|)>|)>\<equallim\><rsub|<text|<reference|union
      of tagged partitions>>><below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i><rsup|1><big|cup>\<bbb-P\><rsub|i><rsup|2>|)>\<equallim\><rsub|<text|<reference|union
      of tagged partitions>>><big|int><rsub|a><rsup|b>f>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|integral of function to linear operators>Let
    <math|<around*|[|a,b|]>\<subseteq\>\<bbb-R\>,a\<leqslant\>b>,
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a real normed space, <math|<around*|\<langle\>|Y,<around*|\<\|\|\>||\<\|\|\>><rsub|Y>|\<rangle\>>>
    a real Banach space (so that by <reference|space of linear continuous
    maps to a Banach space is Banach> <math|L<around*|(|X,Y|)>> is a real
    Banach space, <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,L<around*|(|X,Y|)>|)>>.
    If we define <math|\<forall\>x\<in\>X>
    <math|f<around*|(|.|)><around*|(|x|)>:<around*|[|a,b|]>\<rightarrow\>Y>
    by <math|f<around*|(|.|)><around*|(|x|)><around*|(|t|)>=f<around*|(|t|)><around*|(|x|)>>
    then we have <math|<around*|(|<big|int><rsub|a><rsup|b>f|)><around*|(|x|)>=<big|int><rsub|a><rsup|b>f<around*|(|.|)><around*|(|x|)>>
  </theorem>

  <\proof>
    First note that given a <math|x\<in\>X> the function
    <math|\<varphi\><rsub|x>:L<around*|(|X,Y|)>\<rightarrow\>Y> defined by
    <math|\<varphi\><rsub|x><around*|(|f|)>=f<around*|(|x|)>> is continuous
    as <math|<around*|\<\|\|\>|\<varphi\><rsub|x><around*|(|f|)>-\<varphi\><rsub|x><around*|(|g|)>|\<\|\|\>><rsub|Y>=<around*|\<\|\|\>|f<around*|(|x|)>-g<around*|(|x|)>|\<\|\|\>><rsub|X>=<around*|\<\|\|\>|<around*|(|f-g|)><around*|(|x|)>|\<\|\|\>>\<leqslant\><around*|\<\|\|\>|f-g|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>
    so if <math|\<varepsilon\>\<gtr\>0> take then
    <math|\<delta\>=<frac|\<varepsilon\>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>>
    so that if <math|<around*|\<\|\|\>|f-g|\<\|\|\>>\<less\>\<delta\>> then
    <math|<around*|\<\|\|\>|\<varphi\><rsub|x><around*|(|f|)>-\<varphi\><rsub|x><around*|(|g|)>|\<\|\|\>>\<less\><frac|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\>\<varepsilon\>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>\<less\>\<varepsilon\>>.
    Second <math|\<varphi\><rsub|x>> is linear as is proved by
    <math|\<varphi\><rsub|x><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>=<around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>+\<beta\>\<cdot\>g<around*|(|x|)>=\<alpha\>\<cdot\>\<varphi\><rsub|x><around*|(|f|)>+\<beta\>\<cdot\>\<varphi\><rsub|x><around*|(|g|)>>.
    Note that if <math|f\<in\>\<cal-C\><around*|(|<around*|[|a,b|]>,L<around*|(|X,Y|)>|)>>
    we have that <math|\<forall\>t\<in\><around*|[|a,b|]>> that
    <math|f<around*|(|.|)><around*|(|x|)><around*|(|t|)>=f<around*|(|t|)><around*|(|x|)>=\<varphi\><rsub|x><around*|(|f<around*|(|t|)>|)>=<around*|(|\<varphi\><rsub|x>\<circ\>f|)><around*|(|t|)>>
    so that <math|f<around*|(|.|)><around*|(|x|)>=\<varphi\><rsub|x>\<circ\>f:<around*|[|a,b|]>\<rightarrow\>Y>
    is continuous as <math|\<varphi\><rsub|x>> and <math|f> is continuous.
    From the continuity it follows that <math|f<around*|(|.|)><around*|(|x|)>>
    is integrable and thus that <math|<big|int><rsub|a><rsup|b>f<around*|(|.|)><around*|(|x|)>>
    exists. Thirdly if <math|\<bbb-P\>=<around*|(|<around*|{|t<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>>|)>>
    is a tagged partition of <math|<around*|[|a,b|]>> then
    <math|\<cal-S\><around*|(|f<around*|(|.|)><around*|(|x|)>,\<bbb-P\>|)>=\<cal-S\><around*|(|\<varphi\><rsub|x>\<circ\>f,\<bbb-P\>|)>=<big|sum><rsup|n><rsub|i=1><around*|(|\<varphi\><rsub|x>\<circ\>f|)><around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<varphi\><rsub|x><around*|(|f<around*|(|s<rsub|i>|)>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>=\<varphi\><rsub|x><around*|(|<big|sum><rsub|i=1><rsup|n>f<around*|(|s<rsub|i>|)>\<cdot\><around*|(|t<rsub|i+1>-t<rsub|i>|)>|)>=\<varphi\><rsub|x><around*|(|\<cal-S\><around*|(|f,\<bbb-P\>|)>|)>>.
    So if <math|<around*|{|\<bbb-P\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is a family of tagged partitions with
    <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|\<bbb-P\><rsub|i>|)>=0>
    then <math|<big|int><rsub|a><rsup|b>f<around*|(|.|)><around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f<around*|(|.|)><around*|(|x|)>,\<bbb-P\><rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<varphi\><rsub|x><around*|(|\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|limit
    and continuity>>>\<varphi\><rsub|x><around*|(|<below|lim|i\<rightarrow\>\<infty\>>\<cal-S\><around*|(|f,\<bbb-P\><rsub|i>|)>|)>=\<varphi\><rsub|x><around*|(|<big|int><rsub|a><rsup|b>f|)>=<around*|(|<big|int><rsub|a><rsup|b>f|)><around*|(|x|)>>
  </proof>

  <section|Connected Sets>

  <\definition>
    <label|connected space><index|connected space>A topological space
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is
    <with|font-series|bold|connected> if <math|\<forall\>U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>>
    with <math|U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>> and
    <math|X=U<rsub|1><big|cup>U<rsub|2>> we have that either
    <math|U<rsub|1>=\<emptyset\>> or <math|U<rsub|2>=\<emptyset\>> (in other
    words <math|X> is not the union of two non empty disjoint open sets). The
    topological space is <with|font-series|bold|disconnected> if it is not
    connected, or in other words there exists open
    <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\>> with
    <math|U<rsub|1>\<neq\>\<emptyset\>\<neq\>U<rsub|2>> and
    <math|X=U<rsub|1><big|cup>U<rsub|2>>
  </definition>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space then the following are equivalent

    <\enumerate>
      <item><math|\<emptyset\>> an <math|X> are the only subsets of <math|X>
      that are open and closed

      <item><math|X> is connected

      <item><math|\<forall\>A<rsub|1>,A<rsub|2>> closed sets with
      <math|A<rsub|1><big|cap>A<rsub|2>=\<emptyset\>> and
      <math|X=A<rsub|1><big|cup>A<rsub|2>> we have either
      <math|A<rsub|1>=\<emptyset\>> or <math|A<rsub|2>=\<emptyset\>>
    </enumerate>
  </theorem>

  <\proof>
    We make in this proof heavy use of <reference|union and intersection of
    disjoint classes>!

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>Assume that
      <math|U<rsub|1>,U<rsub|2>> are disjoint open sets with
      <math|X=U<rsub|1><big|cup>U<rsub|2>> then
      <math|U<rsub|2>=X\\\\U<rsub|1>> which is closed. According to (1) we
      must then have that either <math|U<rsub|2>=\<emptyset\>> or
      <math|U<rsub|2>=X> and then <math|U<rsub|1>=X\\\\U<rsub|2>=X\\\\X=\<emptyset\>>
      so <math|U<rsub|1>=\<emptyset\>> proving that <math|X> is connected.

      <item><dueto|<math|2\<Rightarrowlim\>>3>Assume that we have two
      disjoint closed sets <math|A<rsub|1>,A<rsub|2>> with
      <math|X=A<rsub|1><big|cup>A<rsub|2>> then
      <math|A<rsub|1>=X\\\\A<rsub|2>> is open and
      <math|A<rsub|2>=X\\\\A<rsub|1>> is open, so by the connectness of
      <math|X> we must have either <math|A<rsub|1>=\<emptyset\>> or
      <math|A<rsub|2>=\<emptyset\>>.

      <item><dueto|<math|3\<Rightarrow\>1>>Let <math|A\<subseteq\>X> and
      <math|A> is open and closed then <math|X\\\\A> is closed,
      <math|A<big|cap><around*|(|X\\\\A|)>=\<emptyset\>> and
      <math|X=A<big|cup><around*|(|X\\\\A|)>>. By (3) we must have either
      <math|A=\<emptyset\>> or <math|X\\\\A=\<emptyset\>\<Rightarrow\>A=X>.
    </enumerate>
  </proof>

  <\definition>
    <label|connected subset><index|connected subset>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|A\<subseteq\>X> then <math|A> is connected if it is
    connected in the subspace topology
  </definition>

  <\theorem>
    Let <math|<around*|\<langle\>|\<bbb-R\>\<nocomma\>,<around*|\|||\|>|\<rangle\>>>
    be the real normed space then <math|\<forall\>a,b\<in\>\<bbb-R\>> with
    <math|a\<leqslant\>b> we have that <math|<around*|[|a,b|]>> is a
    connected subset. \ 
  </theorem>

  <\proof>
    First as <math|<around*|[|a,b|]>=<around*|[|<frac|a+b|2>-<frac|b-a|2>,<frac|a+b|2>+<frac|b-a|2>|]>\<equallim\><rsub|><wide|B|\<bar\>><rsub|<around*|\|||\|>><around*|(|<frac|a+b|2>,<frac|b-a|2>|)>>
    which is closed by <reference|closed balls are closed> so that
    <math|<around*|[|a,b|]>> is a closed subset of <math|\<bbb-R\>>. So if
    <math|A\<subseteq\><around*|[|a,b|]>> is closed in the subspace topology
    of <math|<around*|[|a,b|]>> then <math|A=A<rprime|'><big|cap><around*|[|a,b|]>>
    with <math|A<rprime|'>> is closed in <math|\<bbb-R\>> so that <math|A> is
    also closed in <math|\<bbb-R\>>. Assume now that <math|<around*|[|a,b|]>>
    is not connected then by the previous theorem we can find disjoint closed
    sets (closed in <math|<around*|[|a,b|]>> and thus also in
    <math|\<bbb-R\>>) <math|A<rsub|1>,A<rsub|2>> with
    <math|A<rsub|1>,A<rsub|2>\<neq\>\<emptyset\>> such that
    <math|<around*|[|a,b|]>=A<rsub|1><big|cup>A<rsub|2>>. We can always
    assume that <math|b\<in\>A<rsub|2>> (otherwise switch
    <math|1\<leftrightarrow\>2>). As <math|A<rsub|1>\<subseteq\>A<rsub|1><big|cup>A<rsub|2>=<around*|[|a,b|]>>
    we have that <math|A<rsub|1>> is bounded above by <math|b> and is not
    empty so by order conditional completeness of the reals (see
    <reference|the reals are conditional complete>)
    <math|c=sup<around*|(|A<rsub|1>|)>> exists. If now there exists a
    <math|x,y\<in\>\<bbb-R\>> with <math|c\<in\><around*|]|x,y|[>> then
    <math|x\<less\>c\<less\>y> and by the definition of a supremum there
    exists a <math|a<rprime|'>\<in\>A<rsub|1>> such that
    <math|x\<less\>a<rprime|'>\<leqslant\>c\<less\>y\<Rightarrow\>a<rprime|'>\<in\><around*|]|x,y|[>\<Rightarrow\><around*|]|x,y|[><big|cap>A<rsub|1>\<neq\>\<emptyset\>\<Rightarrowlim\><rsub|A<rsub|1>
    is closed>c\<in\>A<rsub|1>>. Since <math|b> is a upper bound of
    <math|A<rsub|1>,> <math|b\<in\>A<rsub|2>> and
    <math|A<rsub|1><big|cap>A<rsub|2>=\<emptyset\>\<Rightarrow\>b\<nin\>A<rsub|1>>
    we must have <math|c\<less\>b\<Rightarrow\>b-c\<gtr\>0>. Now if
    <math|x\<in\><around*|]|c,b|]>> then \ <math|x\<gtr\>c> and thus
    <math|x\<nin\>A<rsub|1>> (<math|c=sup<around*|(|A<rsub|1>|)>>)<math|\<Rightarrow\><around*|]|c,b|]>\<subseteq\><around*|[|a,b|]>\\\\A<rsub|1>=A<rsub|2>>.
    If <math|c\<in\><around*|]|x,y|[>> then if
    <math|\<varepsilon\>=min<around*|(|y-c,b-c|)>\<gtr\>0> then for
    \ <math|c+<frac|\<varepsilon\>|2>> we have
    <math|c\<less\>c+<frac|\<varepsilon\>|2>\<less\>c+\<varepsilon\>\<leqslant\>y,b\<Rightarrow\>c+<frac|\<varepsilon\>|2>\<in\><around*|]|c,y|[><big|cap><around*|]|c,b|[>\<subseteq\><around*|]|x,y|[><big|cap>A<rsub|2>>
    proving that <math|<around*|]|x,y|[><big|cap>A<rsub|2>\<neq\>\<emptyset\>>
    and as <math|A<rsub|2>> is closed we must have that
    <math|c\<in\>A<rsub|2>>. So we have finally that
    <math|c\<in\>A<rsub|1><big|cap>A<rsub|2>=\<emptyset\>> a contradiction.
    So our assumption that <math|<around*|[|a,b|]>> is not connected is wrong
    and thus <math|<around*|[|a,b|]>> is connected what we set out to prove.\ 
  </proof>

  <\theorem>
    <label|generalized intervals and connectness>Let
    <math|<around*|\<langle\>|\<bbb-R\>,<around*|\|||\|>|\<rangle\>>> be the
    a normed space then the following are equivalent for
    <math|I\<subseteq\>\<bbb-R\>>

    <\enumerate>
      <item><math|I> is connected

      <item><math|I> is a generalized interval
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|1\<Rightarrow\>2>>We proceed by contradiction so
      assume that <math|I> is connected but not a generalized interval. Using
      the properties of a generalized interval (see <reference|generalized
      intervals condition>) we have that <math|\<exists\>x,y\<in\>I> with
      <math|x\<less\>y> and <math|\<exists\>z\<in\>\<bbb-R\>\\\\I> such that
      <math|x\<less\>z\<less\>y> then <math|U<rsub|1>=<around*|]|-\<infty\>,z|[><big|cap>I>
      contains <math|x> and is open in <math|I>, also
      <math|U<rsub|2>=<around*|]|z,\<infty\>|[><big|cap>I> contains <math|y>
      and is open in <math|I>. Then as <math|z\<in\>I> we have
      <math|I\<subseteq\><around*|]|-\<infty\>,\<infty\>|[>\\\\<around*|{|z|}>=<around*|]|-\<infty\>,z|[><big|cup><around*|]|z,\<infty\>|[>\<Rightarrow\>I=I<big|cap><around*|(|<around*|]|-\<infty\>,z|[><big|cup><around*|]|z,\<infty\>|[>|)>=U<rsub|1><big|cup>U<rsub|2>>,
      as also <math|U<rsub|1><big|cap>U<rsub|2>\<subseteq\><around*|]|-\<infty\>,z|[><big|cap><around*|]|z,\<infty\>|[>=\<emptyset\>\<Rightarrow\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>>
      we have that <math|I> is connected, contradicting our assumption that
      <math|I> is not connected. <math|I> must thus be connected.

      <item><dueto|<math|2\<Leftarrow\>1>>We prove this also by
      contradiction. So assume that <math|I> is a generalized interval and
      that <math|I> is not connected. Then we have open sets
      <math|U<rsub|1>,U<rsub|2>\<subseteq\>\<bbb-R\>> such that
      <math|I=<around*|(|U<rsub|1><big|cap>I|)><big|cup><around*|(|U<rsub|2><big|cap>I|)>>,
      <math|\<emptyset\>=<around*|(|U<rsub|1><big|cap>I|)><big|cap><around*|(|U<rsub|2><big|cap>I|)>=U<rsub|1><big|cap>U<rsub|2><big|cap>I>
      and <math|U<rsub|1><big|cap>I\<neq\>\<emptyset\>\<neq\>U<rsub|2><big|cap>I>.
      So <math|\<exists\>x\<in\>U<rsub|1><big|cap>I> and
      <math|\<exists\>y\<in\>U<rsub|2><big|cap>I> and as
      <math|\<emptyset\>=<around*|(|U<rsub|1><big|cap>I|)><big|cap><around*|(|U<rsub|2><big|cap>I|)>>
      we must have <math|x\<neq\>y>, assume that <math|x\<less\>y> (if
      <math|y\<less\>x> interchange the role of <math|U<rsub|1>> and
      <math|U<rsub|2>>) then using <reference|generalized intervals
      condition> we have <math|<around*|[|x,y|]>\<subseteq\>I\<Rightarrow\><around*|[|x,y|]>=<around*|[|x,y|]><big|cap>I=<around*|[|x,y|]><big|cap><around*|(|U<rsub|1><big|cap>I|)><big|cup><around*|(|U<rsub|2><big|cap>I|)>=<around*|(|U<rsub|1><big|cap>I<big|cap><around*|[|x,y|]>|)><big|cup><around*|(|U<rsub|2><big|cap>I<big|cap><around*|[|x,y|]>|)>=<around*|(|U<rsub|1><big|cap><around*|[|x,y|]>|)><big|cup><around*|(|U<rsub|2><big|cap><around*|[|x,y|]>|)>\<Rightarrow\><around*|[|x,y|]>=<around*|(|U<rsub|1><big|cap><around*|[|x,y|]>|)><big|cup><around*|(|U<rsub|2><big|cap><around*|[|x,y|]>|)>>,
      as also <math|x\<in\>U<rsub|1><big|cap><around*|[|x,y|]>>,
      <math|y\<in\>U<rsub|2><big|cap><around*|[|x,y|]>> and
      <math|<around*|(|U<rsub|1><big|cap><around*|[|x,y|]>|)><big|cap><around*|(|U<rsub|2><big|cap><around*|[|x,y|]>|)>\<subseteq\><around*|(|U<rsub|1><big|cap>I|)><big|cap><around*|(|U<rsub|2><big|cap>I|)>=\<emptyset\>>
      we have that <math|<around*|[|x,y|]>> is covered by two non empty
      disjoint open sets and thus not connected, contradicting the fact that
      <math|<around*|[|x,y|]>> is connected by the previous theorem.
    </enumerate>
  </proof>

  <\theorem>
    <label|continuity and connectness>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> be a connected
    topological space, <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>>
    a topological space and <math|f:X\<rightarrow\>Y> a continuous space then
    <math|f<around*|(|X|)>> is connected.
  </theorem>

  <\proof>
    We proceed by contradiction. Assume that <math|f<around*|(|X|)>> is not
    connected then we have open sets <math|V<rsub|1>,V<rsub|2>> in <math|Y>
    such that <math|f<around*|(|X|)>=<around*|(|f<around*|(|X|)><big|cap>V<rsub|1>|)><big|cup><around*|(|f<around*|(|X|)><big|cap>V<rsub|2>|)>\<subseteq\>V<rsub|1><big|cup>V<rsub|2>>,
    <math|\<exists\>y<rsub|1>\<in\>f<around*|(|X|)><big|cap>V<rsub|1>>,
    <math|\<exists\>y<rsub|2>\<in\>f<around*|(|X|)><big|cap>V<rsub|2>> and
    <math|<around*|(|f<around*|(|X|)><big|cap>V<rsub|1>|)><big|cap><around*|(|f<around*|(|X|)><big|cap>V<rsub|2>|)>=\<emptyset\>>.
    The <math|\<exists\>x<rsub|1>,x<rsub|2>\<in\>X> such that
    <math|f<around*|(|x<rsub|1>|)>=y<rsub|1>\<in\>V<rsub|1>>,
    <math|f<around*|(|x<rsub|2>|)>=y<rsub|2>\<in\>V<rsub|2>> thus
    <math|x<rsub|1>\<in\>f<rsup|-1><around*|(|V<rsub|1>|)>=U<rsub|1>>,
    <math|x<rsub|2>\<in\>f<rsup|-1><around*|(|V<rsub|2>|)>=U<rsub|2>> where
    <math|U<rsub|1>,U<rsub|2>> are open because of continuity of <math|f>.
    Further if <math|x\<in\>X\<Rightarrow\>f<around*|(|x|)>\<in\>f<around*|(|X|)>\<subseteq\>V<rsub|1><big|cup>V<rsub|2>\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|V<rsub|1><big|cup>V<rsub|2>|)>\<subseteq\>f<rsup|-1><around*|(|V<rsub|1>|)><big|cup>f<rsup|-1><around*|(|V<rsub|2>|)>=U<rsub|1><big|cup>U<rsub|2>>
    proving that <math|X\<subseteq\>U<rsub|1><big|cup>U<rsub|2>>, as
    trivially <math|U<rsub|1><big|cup>U<rsub|2>\<subseteq\>X> we have
    <math|X=U<rsub|1><big|cup>U<rsub|2>>. Finally assume that
    <math|y\<in\>U<rsub|1><big|cap>U<rsub|2>\<Rightarrow\>f<around*|(|y|)>\<in\>f<around*|(|U<rsub|1>|)><big|cap>f<around*|(|U<rsub|2>|)>\<subseteq\>V<rsub|1><big|cap>V<rsub|2>=\<emptyset\>>
    a contradiction so that we have <math|U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>>.
    So we have proved that <math|X> is covered by non-empty disjoint open
    sets contradicting the fact that <math|X> is connected.
  </proof>

  <\theorem>
    <label|continuous mapping in [a,b]>Let
    <math|f:<around*|[|a,b|]>\<rightarrow\>\<bbb-R\>> a continuous function
    then <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>> (so
    <math|f> retains its minimum and maximum settings).
  </theorem>

  <\proof>
    As <math|f> is continuous and <math|<around*|[|a,b|]>> is compact we have
    by <reference|continuous image of compact set> that
    <math|f<around*|(|<around*|[|a,b|]>|)>> is compact and thus by
    <reference|compact space in a metric space is bounded> it is bounded. As
    by the previous theorem <math|f<around*|(|<around*|[|a,b|]>|)>> is
    connected we have by <reference|generalized intervals and connectness>
    that <math|f<around*|(|<around*|[|a,b|]>|)>> is a generalized interval
    and as it is bounded there exists a <math|c,d\<in\>\<bbb-R\>> such that
    <math|f<around*|(|<around*|[|a,b|]>|)>=<around*|[|c,d|]>>.
  </proof>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|0>
    <associate|info-flag|minimal>
    <associate|page-even-footer|>
    <associate|page-even-header|>
    <associate|page-first|319>
    <associate|page-height|auto>
    <associate|page-medium|paper>
    <associate|page-odd-footer|>
    <associate|page-odd-header|>
    <associate|page-type|a4>
    <associate|page-width|auto>
    <associate|preamble|false>
    <associate|section-nr|0<uninit>>
    <associate|src-special|normal>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|@ product|<tuple|12.174|359>>
    <associate|@ prouct property|<tuple|12.175|359>>
    <associate|B(X,Y) is a Banach space if Y is|<tuple|12.273|379>>
    <associate|Baire Category Theorem|<tuple|12.308|388>>
    <associate|Baire space|<tuple|12.42|327>>
    <associate|Cauchy includes bounded|<tuple|12.296|384>>
    <associate|Cauchy sequences in metric spaces|<tuple|12.256|376>>
    <associate|Complete matric space|<tuple|12.267|378>>
    <associate|Continuity of function on a topological
    product|<tuple|12.117|341>>
    <associate|Hausdorff spaces|<tuple|12.178|360>>
    <associate|L(X,Y)|<tuple|12.144|349>>
    <associate|L(X^n;Y)|<tuple|12.155|353>>
    <associate|L(x1)(x2:..:xn)|<tuple|12.166|356>>
    <associate|L(x1,..,xm) is in Ln-m(X;Y)|<tuple|12.164|355>>
    <associate|L^(X;Y) is equivalent with L(X^n;Y)|<tuple|12.173|358>>
    <associate|L^n(X1,..,Xn;),L(Xn+1,Y))=L^n+1(X1,..,Xn+1;Y)|<tuple|12.161|354>>
    <associate|L^n(X1,...,Xn;Y)|<tuple|12.157|354>>
    <associate|L^n(X;L(X,Y))=L^n(X;Y)|<tuple|12.162|355>>
    <associate|L^n(X;Y)|<tuple|12.159|354>>
    <associate|L^n(X;Y) is a Banach space if Y is a Banach
    space|<tuple|12.300|385>>
    <associate|Pn(L) definition|<tuple|12.170|357>>
    <associate|Pn(L)(x1,..,xn)=Pn-1(L)(x1,..,xn-1)(xn)|<tuple|12.171|357>>
    <associate|Rieman Integral|<tuple|12.325|395>>
    <associate|Riemann Integral (general)|<tuple|12.330|396>>
    <associate|Tychonoff|<tuple|12.241|373>>
    <associate|[a,b] is compact|<tuple|12.211|366>>
    <associate|a closed set is equal to its closurer|<tuple|12.17|322>>
    <associate|a contraction mapping is continuous|<tuple|12.302|386>>
    <associate|a isometry is a homeomorphism|<tuple|12.131|344>>
    <associate|a second countable basis is first
    countable|<tuple|12.191|361>>
    <associate|accumulation and closure|<tuple|12.221|368>>
    <associate|alternate definition of a compact subset|<tuple|12.198|362>>
    <associate|alternate definition of closed set|<tuple|12.21|322>>
    <associate|alternative definition of Baire sets|<tuple|12.44|327>>
    <associate|alternative definition of Riemann Integral|<tuple|12.328|396>>
    <associate|alternative definition of a bounded
    function|<tuple|12.269|378>>
    <associate|another characterization of Cauchy|<tuple|12.257|376>>
    <associate|auto-1|<tuple|12|319>>
    <associate|auto-10|<tuple|12.11|320>>
    <associate|auto-100|<tuple|12.255|376>>
    <associate|auto-101|<tuple|12.256|376>>
    <associate|auto-102|<tuple|12.267|378>>
    <associate|auto-103|<tuple|12.267|378>>
    <associate|auto-104|<tuple|12.268|378>>
    <associate|auto-105|<tuple|12.268|378>>
    <associate|auto-106|<tuple|12.274|379>>
    <associate|auto-107|<tuple|12.301|386>>
    <associate|auto-108|<tuple|12.305|386>>
    <associate|auto-109|<tuple|12.308|388>>
    <associate|auto-11|<tuple|12.11|320>>
    <associate|auto-110|<tuple|12.309|389>>
    <associate|auto-111|<tuple|12.12|391>>
    <associate|auto-112|<tuple|12.313|392>>
    <associate|auto-113|<tuple|12.316|392>>
    <associate|auto-114|<tuple|12.319|394>>
    <associate|auto-115|<tuple|12.319|394>>
    <associate|auto-116|<tuple|12.320|394>>
    <associate|auto-117|<tuple|12.320|394>>
    <associate|auto-118|<tuple|12.321|394>>
    <associate|auto-119|<tuple|12.321|394>>
    <associate|auto-12|<tuple|12.18|322>>
    <associate|auto-120|<tuple|12.325|395>>
    <associate|auto-121|<tuple|12.325|395>>
    <associate|auto-122|<tuple|12.330|396>>
    <associate|auto-123|<tuple|12.330|396>>
    <associate|auto-124|<tuple|12.13|399>>
    <associate|auto-125|<tuple|12.336|399>>
    <associate|auto-126|<tuple|12.338|400>>
    <associate|auto-13|<tuple|12.18|322>>
    <associate|auto-14|<tuple|12.18|322>>
    <associate|auto-15|<tuple|12.1.2|322>>
    <associate|auto-16|<tuple|12.23|322>>
    <associate|auto-17|<tuple|12.23|322>>
    <associate|auto-18|<tuple|12.28|323>>
    <associate|auto-19|<tuple|12.29|324>>
    <associate|auto-2|<tuple|12.1|319>>
    <associate|auto-20|<tuple|12.34|325>>
    <associate|auto-21|<tuple|12.1.3|327>>
    <associate|auto-22|<tuple|12.41|327>>
    <associate|auto-23|<tuple|12.42|327>>
    <associate|auto-24|<tuple|12.2|328>>
    <associate|auto-25|<tuple|12.45|328>>
    <associate|auto-26|<tuple|12.47|328>>
    <associate|auto-27|<tuple|12.49|328>>
    <associate|auto-28|<tuple|12.49|328>>
    <associate|auto-29|<tuple|12.50|328>>
    <associate|auto-3|<tuple|12.1|319>>
    <associate|auto-30|<tuple|12.50|328>>
    <associate|auto-31|<tuple|12.54|328>>
    <associate|auto-32|<tuple|12.58|329>>
    <associate|auto-33|<tuple|12.60|329>>
    <associate|auto-34|<tuple|12.65|331>>
    <associate|auto-35|<tuple|12.65|331>>
    <associate|auto-36|<tuple|12.65|331>>
    <associate|auto-37|<tuple|12.3|331>>
    <associate|auto-38|<tuple|12.67|331>>
    <associate|auto-39|<tuple|12.67|331>>
    <associate|auto-4|<tuple|12.1|319>>
    <associate|auto-40|<tuple|12.67|331>>
    <associate|auto-41|<tuple|12.70|332>>
    <associate|auto-42|<tuple|12.70|332>>
    <associate|auto-43|<tuple|12.79|334>>
    <associate|auto-44|<tuple|12.81|334>>
    <associate|auto-45|<tuple|12.4|335>>
    <associate|auto-46|<tuple|12.85|335>>
    <associate|auto-47|<tuple|12.87|335>>
    <associate|auto-48|<tuple|12.5|338>>
    <associate|auto-49|<tuple|12.102|338>>
    <associate|auto-5|<tuple|12.1|319>>
    <associate|auto-50|<tuple|12.102|338>>
    <associate|auto-51|<tuple|12.106|339>>
    <associate|auto-52|<tuple|12.106|339>>
    <associate|auto-53|<tuple|12.106|339>>
    <associate|auto-54|<tuple|12.107|339>>
    <associate|auto-55|<tuple|12.111|340>>
    <associate|auto-56|<tuple|12.120|342>>
    <associate|auto-57|<tuple|12.124|343>>
    <associate|auto-58|<tuple|12.129|344>>
    <associate|auto-59|<tuple|12.130|344>>
    <associate|auto-6|<tuple|12.6|320>>
    <associate|auto-60|<tuple|12.6|346>>
    <associate|auto-61|<tuple|12.139|347>>
    <associate|auto-62|<tuple|12.139|347>>
    <associate|auto-63|<tuple|12.144|349>>
    <associate|auto-64|<tuple|12.7|350>>
    <associate|auto-65|<tuple|12.152|352>>
    <associate|auto-66|<tuple|12.155|353>>
    <associate|auto-67|<tuple|12.157|354>>
    <associate|auto-68|<tuple|12.159|354>>
    <associate|auto-69|<tuple|12.170|357>>
    <associate|auto-7|<tuple|12.9|320>>
    <associate|auto-70|<tuple|12.174|359>>
    <associate|auto-71|<tuple|12.8|360>>
    <associate|auto-72|<tuple|12.178|360>>
    <associate|auto-73|<tuple|12.181|360>>
    <associate|auto-74|<tuple|12.184|360>>
    <associate|auto-75|<tuple|12.186|361>>
    <associate|auto-76|<tuple|12.186|361>>
    <associate|auto-77|<tuple|12.187|361>>
    <associate|auto-78|<tuple|12.188|361>>
    <associate|auto-79|<tuple|12.190|361>>
    <associate|auto-8|<tuple|12.9|320>>
    <associate|auto-80|<tuple|12.9|361>>
    <associate|auto-81|<tuple|12.192|361>>
    <associate|auto-82|<tuple|12.194|361>>
    <associate|auto-83|<tuple|12.10|362>>
    <associate|auto-84|<tuple|12.196|362>>
    <associate|auto-85|<tuple|12.197|362>>
    <associate|auto-86|<tuple|12.206|364>>
    <associate|auto-87|<tuple|12.10.1|367>>
    <associate|auto-88|<tuple|12.215|367>>
    <associate|auto-89|<tuple|12.220|368>>
    <associate|auto-9|<tuple|12.1.1|320>>
    <associate|auto-90|<tuple|12.220|368>>
    <associate|auto-91|<tuple|12.229|370>>
    <associate|auto-92|<tuple|12.235|371>>
    <associate|auto-93|<tuple|12.10.2|373>>
    <associate|auto-94|<tuple|12.241|373>>
    <associate|auto-95|<tuple|12.243|373>>
    <associate|auto-96|<tuple|12.11|375>>
    <associate|auto-97|<tuple|12.11.1|375>>
    <associate|auto-98|<tuple|12.250|375>>
    <associate|auto-99|<tuple|12.252|375>>
    <associate|ball cover of a metric space|<tuple|12.208|364>>
    <associate|ball in balls|<tuple|12.53|328>>
    <associate|basis for the product topology|<tuple|12.37|325>>
    <associate|basis of a topology|<tuple|12.23|322>>
    <associate|basis of product topology|<tuple|12.38|326>>
    <associate|basis of the subspace topology|<tuple|12.25|323>>
    <associate|bounded function|<tuple|12.268|378>>
    <associate|box topology|<tuple|12.34|325>>
    <associate|box topology and base|<tuple|12.35|325>>
    <associate|cauchy and uniqueness|<tuple|12.293|383>>
    <associate|characterization of a basis in a topology|<tuple|12.26|323>>
    <associate|characterization of closure|<tuple|12.19|322>>
    <associate|characterization of closure (another)|<tuple|12.30|324>>
    <associate|characterization of closure of a set|<tuple|12.20|322>>
    <associate|characterization of closure of a set 2|<tuple|12.31|324>>
    <associate|closed ball|<tuple|12.50|328>>
    <associate|closed balls are closed|<tuple|12.56|329>>
    <associate|closed sets|<tuple|12.11|320>>
    <associate|closed subset of a complete space is
    complete|<tuple|12.277|380>>
    <associate|combined partition|<tuple|12.316|392>>
    <associate|compact Hausdorf space is regular and
    normal|<tuple|12.204|363>>
    <associate|compact space in a metric space is bounded|<tuple|12.200|362>>
    <associate|compact subsets|<tuple|12.197|362>>
    <associate|compact subsets of subsets|<tuple|12.199|362>>
    <associate|compact subsets of the reals|<tuple|12.243|373>>
    <associate|compact subspaces are closed|<tuple|12.202|363>>
    <associate|compact subspaces are sequential compact|<tuple|12.207|364>>
    <associate|compact topological space|<tuple|12.196|362>>
    <associate|compactness and base|<tuple|12.205|364>>
    <associate|compactness and closed sets|<tuple|12.203|363>>
    <associate|compactness and sequential compactness|<tuple|12.209|365>>
    <associate|complex inner space|<tuple|12.87|335>>
    <associate|composition of a continuous linear mapping and a continuous
    multilinear mapping is a continuous linear mapping|<tuple|12.153|353>>
    <associate|composition of continuous functions is
    continuous|<tuple|12.114|340>>
    <associate|composition of continuous linear mapping is continuous and
    multilinear|<tuple|12.156|354>>
    <associate|composition of homeomorphisms is a
    homeomorphism|<tuple|12.128|344>>
    <associate|composition of isometries metric|<tuple|12.62|330>>
    <associate|composition of isometries norm|<tuple|12.83|335>>
    <associate|composition of open functions is open|<tuple|12.113|340>>
    <associate|conditions to make a basis|<tuple|12.27|323>>
    <associate|conjugate of sum|<tuple|12.93|336>>
    <associate|connected space|<tuple|12.336|399>>
    <associate|connected subset|<tuple|12.338|400>>
    <associate|constant functions are continuous|<tuple|12.107|339>>
    <associate|construction of new filterbases|<tuple|12.218|367>>
    <associate|continuity and connectness|<tuple|12.341|401>>
    <associate|continuity and multilinearity|<tuple|12.148|350>>
    <associate|continuity at a point and topological
    basis|<tuple|12.103|339>>
    <associate|continuity characterization|<tuple|12.109|339>>
    <associate|continuity in metric spaces|<tuple|12.118|342>>
    <associate|continuity is local|<tuple|12.110|340>>
    <associate|continuity of function in a normed space|<tuple|12.121|342>>
    <associate|continuity of restricted maps|<tuple|12.104|339>>
    <associate|continuity of vector space operations|<tuple|12.122|342>>
    <associate|continuity to a subspace|<tuple|12.105|339>>
    <associate|continuous function|<tuple|12.102|338>>
    <associate|continuous functions on a compact set are uniform
    continue|<tuple|12.212|367>>
    <associate|continuous functions to a product space|<tuple|12.116|341>>
    <associate|continuous image of compact set|<tuple|12.201|363>>
    <associate|continuous linear maps in a normed space|<tuple|12.136|346>>
    <associate|continuous mapping in [a,b]|<tuple|12.342|401>>
    <associate|contraction|<tuple|12.301|386>>
    <associate|convergence in a metric space|<tuple|12.252|375>>
    <associate|convergence in a normed space|<tuple|12.259|376>>
    <associate|convergence in normed space|<tuple|12.259|376>>
    <associate|convergence in topological and metric
    space|<tuple|12.253|376>>
    <associate|convergence of powersequence|<tuple|12.265|377>>
    <associate|convergency in a topological space|<tuple|12.250|375>>
    <associate|convergent criteria of a serie in a Banach
    space|<tuple|12.288|382>>
    <associate|convergent filterbase|<tuple|12.220|368>>
    <associate|convergent sequences are Cauchy|<tuple|12.258|376>>
    <associate|converging and accumulation|<tuple|12.227|369>>
    <associate|converging of upper serie|<tuple|12.286|381>>
    <associate|definition of a serie|<tuple|12.282|381>>
    <associate|definition of the operator norm of a multilinear
    mapping|<tuple|12.150|351>>
    <associate|dense subset|<tuple|12.41|327>>
    <associate|diameter|<tuple|12.65|331>>
    <associate|difference of Riemann sums|<tuple|12.322|394>>
    <associate|differences of tagged partitions|<tuple|12.323|395>>
    <associate|each filterbase converges to exactly one
    point|<tuple|12.226|369>>
    <associate|eq 11.1|<tuple|12.1|324>>
    <associate|eq 11.10|<tuple|12.10|333>>
    <associate|eq 11.11|<tuple|12.11|342>>
    <associate|eq 11.12|<tuple|12.12|343>>
    <associate|eq 11.13|<tuple|12.13|348>>
    <associate|eq 11.14|<tuple|12.14|348>>
    <associate|eq 11.15|<tuple|12.15|348>>
    <associate|eq 11.16|<tuple|12.16|352>>
    <associate|eq 11.17|<tuple|12.18|365>>
    <associate|eq 11.17 bis|<tuple|12.17|357>>
    <associate|eq 11.18|<tuple|12.19|365>>
    <associate|eq 11.19|<tuple|12.20|384>>
    <associate|eq 11.2|<tuple|12.2|324>>
    <associate|eq 11.20|<tuple|12.21|385>>
    <associate|eq 11.21|<tuple|12.22|385>>
    <associate|eq 11.22|<tuple|12.23|385>>
    <associate|eq 11.23|<tuple|12.24|387>>
    <associate|eq 11.24|<tuple|12.25|387>>
    <associate|eq 11.25|<tuple|12.26|387>>
    <associate|eq 11.26|<tuple|12.27|388>>
    <associate|eq 11.27|<tuple|12.28|388>>
    <associate|eq 11.28|<tuple|12.29|388>>
    <associate|eq 11.29|<tuple|12.30|388>>
    <associate|eq 11.3|<tuple|12.4|330>>
    <associate|eq 11.30|<tuple|12.3|330>>
    <associate|eq 11.30.|<tuple|12.31|389>>
    <associate|eq 11.31|<tuple|12.32|389>>
    <associate|eq 11.32|<tuple|12.33|389>>
    <associate|eq 11.33|<tuple|12.34|390>>
    <associate|eq 11.34|<tuple|12.35|390>>
    <associate|eq 11.35|<tuple|12.36|390>>
    <associate|eq 11.36|<tuple|12.37|390>>
    <associate|eq 11.38|<tuple|12.39|390>>
    <associate|eq 11.39|<tuple|12.40|390>>
    <associate|eq 11.4|<tuple|12.5|330>>
    <associate|eq 11.40|<tuple|12.41|391>>
    <associate|eq 11.42|<tuple|12.43|391>>
    <associate|eq 11.43|<tuple|12.44|391>>
    <associate|eq 11.44|<tuple|12.45|394>>
    <associate|eq 11.45|<tuple|12.46|395>>
    <associate|eq 11.46|<tuple|12.47|395>>
    <associate|eq 11.47|<tuple|12.48|397>>
    <associate|eq 11.48|<tuple|12.49|397>>
    <associate|eq 11.49|<tuple|12.50|397>>
    <associate|eq 11.5|<tuple|12.6|330>>
    <associate|eq 11.50|<tuple|12.51|398>>
    <associate|eq 11.7|<tuple|12.7|331>>
    <associate|eq 11.8|<tuple|12.8|331>>
    <associate|eq 11.9|<tuple|12.9|333>>
    <associate|equiality in L^n(X;Y)|<tuple|12.165|355>>
    <associate|equivalence of norms|<tuple|12.80|334>>
    <associate|equivalence of norms on product of real
    numbers|<tuple|12.246|374>>
    <associate|equivalence of operator norm (multilinear)|<tuple|12.154|353>>
    <associate|equivalent definition of homeomorphism|<tuple|12.125|343>>
    <associate|equivalent metric|<tuple|12.58|329>>
    <associate|equivalent norms|<tuple|12.79|334>>
    <associate|ev_L is linear and continuous|<tuple|12.176|359>>
    <associate|ev_l + @|<tuple|12.177|360>>
    <associate|every compact metric space is complete|<tuple|12.294|383>>
    <associate|every finite dimensional space is Banach|<tuple|12.298|384>>
    <associate|every finite subset of a Hausdorff is
    closed|<tuple|12.180|360>>
    <associate|example of continuous mappings in a topological vector
    space|<tuple|12.195|362>>
    <associate|exaple of a convergent serie|<tuple|12.304|386>>
    <associate|exchange infinite sum and finite sum|<tuple|12.290|382>>
    <associate|existance of Riemann integral for continuous
    function|<tuple|12.329|396>>
    <associate|existance of converging tagged
    partititions|<tuple|12.327|395>>
    <associate|existance of isometry,isomorphism,homeomorphism|<tuple|12.132|345>>
    <associate|existance of maximal filterbase|<tuple|12.237|371>>
    <associate|existance of maximum and minimum in the image of a continuous
    function of a compact set|<tuple|12.245|374>>
    <associate|filter base has the finite intersection
    property|<tuple|12.219|368>>
    <associate|filterbase and closure|<tuple|12.230|370>>
    <associate|filterbase and continuity 1|<tuple|12.232|370>>
    <associate|filterbase and continuity 2|<tuple|12.233|370>>
    <associate|filterbase on a set|<tuple|12.229|370>>
    <associate|filterbases and compactness|<tuple|12.240|372>>
    <associate|filterbases and products|<tuple|12.234|371>>
    <associate|finer basis|<tuple|12.32|324>>
    <associate|finer metric|<tuple|12.59|329>>
    <associate|finer norm|<tuple|12.75|333>>
    <associate|finite product topology is box topology|<tuple|12.39|326>>
    <associate|finite subset of filterbase|<tuple|12.214|367>>
    <associate|first countable topological space|<tuple|12.188|361>>
    <associate|fundamental system of neighborhoods|<tuple|12.187|361>>
    <associate|generalized intervals and connectness|<tuple|12.340|400>>
    <associate|generating basis of a topology|<tuple|12.28|323>>
    <associate|homeomorphism|<tuple|12.124|343>>
    <associate|homeomorphism on subset|<tuple|12.126|343>>
    <associate|identity function is continuous|<tuple|12.108|339>>
    <associate|in a normed space the sum,product with scalar is
    ontinuous|<tuple|12.133|345>>
    <associate|induced topology|<tuple|12.129|344>>
    <associate|inner product norm of finite dimensional
    spaces|<tuple|12.100|338>>
    <associate|inner product of neutral elements|<tuple|12.90|335>>
    <associate|inner set|<tuple|12.9|320>>
    <associate|integral of function to linear operators|<tuple|12.335|399>>
    <associate|intersection of balls|<tuple|12.52|328>>
    <associate|intersection of finite open sets is open|<tuple|12.4|319>>
    <associate|introduction of the multilinear norm|<tuple|12.149|351>>
    <associate|inverse induced topology|<tuple|12.130|344>>
    <associate|inverse of a homeomorphisme|<tuple|12.127|343>>
    <associate|inverse of continuous linear mappings between Banach space is
    continuous|<tuple|12.310|391>>
    <associate|inverse of isometry metric|<tuple|12.61|330>>
    <associate|inverse of isometry norm|<tuple|12.82|334>>
    <associate|inverse of open map is continuous|<tuple|12.112|340>>
    <associate|isometry and balls|<tuple|12.63|330>>
    <associate|isometry norm|<tuple|12.81|334>>
    <associate|limit and continuity|<tuple|12.266|378>>
    <associate|limit in a Hausdorff space is unique|<tuple|12.251|375>>
    <associate|limit of a convergent sequence is unique in a metric
    space|<tuple|12.254|376>>
    <associate|limit of a partial function|<tuple|12.47|328>>
    <associate|limit of a sequence in a metric space|<tuple|12.255|376>>
    <associate|limit of a sum|<tuple|12.281|381>>
    <associate|limit point|<tuple|12.18|322>>
    <associate|limit point of sequences|<tuple|12.292|383>>
    <associate|limit preserve inequality|<tuple|12.278|380>>
    <associate|limit preserves inequality (2)|<tuple|12.280|380>>
    <associate|limit preserves inequality (3)|<tuple|12.279|380>>
    <associate|linear combination of convergent series|<tuple|12.287|382>>
    <associate|linear continuous mappings and +,.|<tuple|12.140|347>>
    <associate|linear mappins between products of the real spaces are
    continuous|<tuple|12.137|347>>
    <associate|linear maps between finite dimesnional spaces are
    continuous|<tuple|12.247|375>>
    <associate|linear open mappings|<tuple|12.147|350>>
    <associate|linearity of integral|<tuple|12.331|396>>
    <associate|local property of open sets|<tuple|12.5|319>>
    <associate|mapping of a filterbase|<tuple|12.231|370>>
    <associate|max(alfa.A)|<tuple|12.76|334>>
    <associate|maximal filterbase and mapping|<tuple|12.239|372>>
    <associate|maximal filterbase characterization|<tuple|12.236|371>>
    <associate|maximum filterbase and convergence|<tuple|12.238|372>>
    <associate|metric spaces are Hausdorff|<tuple|12.179|360>>
    <associate|metric spaces are first countable|<tuple|12.189|361>>
    <associate|metric spaces are regular|<tuple|12.182|360>>
    <associate|metric topology|<tuple|12.54|328>>
    <associate|neighborhood|<tuple|12.186|361>>
    <associate|neighborhood filter base|<tuple|12.215|367>>
    <associate|neighborhood filterbase converges|<tuple|12.222|368>>
    <associate|neighborhood filterbase is a filterbase|<tuple|12.216|367>>
    <associate|norm and absolute value|<tuple|12.71|332>>
    <associate|norm mappings are continuous in the produc tof
    reals|<tuple|12.123|343>>
    <associate|norm of L(x1:..:xn}|<tuple|12.168|356>>
    <associate|norm of a finite sum|<tuple|12.72|332>>
    <associate|norm of a multilinear mapping|<tuple|12.151|351>>
    <associate|norm of a partition|<tuple|12.319|394>>
    <associate|norm of composition of linear mapping|<tuple|12.143|349>>
    <associate|norm of continuous linear mapping (inf)|<tuple|12.138|347>>
    <associate|norm of finite product of normed spaces|<tuple|12.77|334>>
    <associate|normal space|<tuple|12.184|360>>
    <associate|normed space|<tuple|12.67|331>>
    <associate|normed space of bounded functions|<tuple|12.272|378>>
    <associate|normed space properties|<tuple|12.74|332>>
    <associate|normed topology|<tuple|12.70|332>>
    <associate|open ball|<tuple|12.49|328>>
    <associate|open functions|<tuple|12.111|340>>
    <associate|open functions in metric spaces|<tuple|12.119|342>>
    <associate|open maaping theorem|<tuple|12.309|389>>
    <associate|open sets in metric topology|<tuple|12.55|328>>
    <associate|partition covers interval|<tuple|12.314|392>>
    <associate|partition of a interval|<tuple|12.313|392>>
    <associate|partitions and combined parititions|<tuple|12.318|393>>
    <associate|power function is continuous|<tuple|12.135|346>>
    <associate|principle of nested intervals|<tuple|12.210|365>>
    <associate|product of compact subspaces|<tuple|12.242|373>>
    <associate|product of continuous functions is
    continue|<tuple|12.134|345>>
    <associate|product of metric spaces|<tuple|12.66|331>>
    <associate|product topological of subspace topologies|<tuple|12.40|327>>
    <associate|product topology|<tuple|12.36|325>>
    <associate|projection map is continuous and linear|<tuple|12.142|348>>
    <associate|projection map is open and open|<tuple|12.115|341>>
    <associate|properties of parititions|<tuple|12.315|392>>
    <associate|properties of two filterbases|<tuple|12.225|368>>
    <associate|property of integral|<tuple|12.332|397>>
    <associate|pseudo metric space|<tuple|12.45|328>>
    <associate|real continuous mappings on a compact
    subset|<tuple|12.244|374>>
    <associate|real inner product spaces|<tuple|12.85|335>>
    <associate|real space is complete|<tuple|12.295|384>>
    <associate|regular space|<tuple|12.181|360>>
    <associate|regularity and non empty open sets|<tuple|12.183|360>>
    <associate|riemanian sum|<tuple|12.321|394>>
    <associate|schwartz inequality|<tuple|12.97|337>>
    <associate|second countable topological space|<tuple|12.190|361>>
    <associate|sequential compact space|<tuple|12.206|364>>
    <associate|space of linear continuous maps to a Banach space is
    Banach|<tuple|12.299|384>>
    <associate|splitting of a integral|<tuple|12.334|399>>
    <associate|stitching topologies|<tuple|12.29|324>>
    <associate|sub basis topology|<tuple|12.33|325>>
    <associate|subserie property|<tuple|12.285|381>>
    <associate|subspace topology|<tuple|12.6|320>>
    <associate|subspace topology of a metric space|<tuple|12.57|329>>
    <associate|subspace topology of subspace topology|<tuple|12.8|320>>
    <associate|sum of positive numbers is positive|<tuple|12.91|335>>
    <associate|sum of powers theorem|<tuple|12.303|386>>
    <associate|sum,product on (x1:..:xn)|<tuple|12.167|356>>
    <associate|tagged partition|<tuple|12.320|394>>
    <associate|terms of a convergent series goes to 0|<tuple|12.284|381>>
    <associate|the Banach Fixed Point Theorem|<tuple|12.305|386>>
    <associate|the alternative definition of the norm of a continuous linear
    function|<tuple|12.141|348>>
    <associate|the inner product norm is a norm|<tuple|12.99|338>>
    <associate|the norm of a continuous linear mapping|<tuple|12.139|347>>
    <associate|the set of linear continuous mappings is a vector
    space|<tuple|12.145|349>>
    <associate|toplinear isomorphism|<tuple|12.194|361>>
    <associate|topologies and isometries|<tuple|12.64|330>>
    <associate|topology of real complex numbers|<tuple|12.69|331>>
    <associate|topology of spaces which are isometric in the
    norm|<tuple|12.84|335>>
    <associate|triangle inequality of inner product norm|<tuple|12.98|337>>
    <associate|trivial filterbase|<tuple|12.217|367>>
    <associate|ultra filter|<tuple|12.235|371>>
    <associate|uniform continuous|<tuple|12.120|342>>
    <associate|uniform convergence|<tuple|12.274|379>>
    <associate|uniform convergence in bounded functions|<tuple|12.275|379>>
    <associate|uniform convergence preserves continuity|<tuple|12.276|380>>
    <associate|union of tagged partitions|<tuple|12.333|398>>
    <associate|uniqueness and riemansums|<tuple|12.324|395>>
    <associate|upper limit of L in L^n(K;Y)|<tuple|12.169|356>>
    <associate|vector space of multilinear continuous
    mappings|<tuple|12.152|352>>
    <associate|\|\|L\|\| depends only on the topology|<tuple|12.146|349>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|topological space>|<pageref|auto-3>>

      <tuple|<tuple|topology>|<pageref|auto-4>>

      <tuple|<tuple|open set>|<pageref|auto-5>>

      <tuple|<tuple|subspace topology>|<pageref|auto-6>>

      <tuple|<tuple|inner set>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|A<rsup|\<circ\>>>>|<pageref|auto-8>>

      <tuple|<tuple|closed sets>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-C\>>>|<pageref|auto-11>>

      <tuple|<tuple|limit point>|<pageref|auto-12>>

      <tuple|<tuple|accumulation point>|<pageref|auto-13>>

      <tuple|<tuple|derived set>|<pageref|auto-14>>

      <tuple|<tuple|basis of a topology>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\>>>|<pageref|auto-17>>

      <tuple|<tuple|generating basis of a topology>|<pageref|auto-18>>

      <tuple|<tuple|stitching topologies>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|box>>>|<pageref|auto-20>>

      <tuple|<tuple|dense subset>|<pageref|auto-22>>

      <tuple|<tuple|Baire space>|<pageref|auto-23>>

      <tuple|<tuple|pseudo metric space>|<pageref|auto-25>>

      <tuple|<tuple|limit of a partial function>|<pageref|auto-26>>

      <tuple|<tuple|open ball>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|B<rsub|d><around*|(|x,\<varepsilon\>|)>>>|<pageref|auto-28>>

      <tuple|<tuple|closed ball>|<pageref|auto-29>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|B|\<bar\>><rsub|d><around*|(|x,\<varepsilon\>|)>>>|<pageref|auto-30>>

      <tuple|<tuple|metric topology>|<pageref|auto-31>>

      <tuple|<tuple|equivalent metrics>|<pageref|auto-32>>

      <tuple|<tuple|isometry>|<pageref|auto-33>>

      <tuple|<tuple|diameter of a set>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|diam<around*|(|A|)>>>|<pageref|auto-35>>

      <tuple|<tuple|bounded set>|<pageref|auto-36>>

      <tuple|<tuple|psuedo normed space>|<pageref|auto-38>>

      <tuple|<tuple|normed space>|<pageref|auto-39>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>||\<\|\|\>>>>|<pageref|auto-40>>

      <tuple|<tuple|normed topology>|<pageref|auto-41>>

      <tuple|<tuple|pseudo normed topology>|<pageref|auto-42>>

      <tuple|<tuple|equivalent norms>|<pageref|auto-43>>

      <tuple|<tuple|isometry>|<pageref|auto-44>>

      <tuple|<tuple|real product spaces>|<pageref|auto-46>>

      <tuple|<tuple|complex inner spaces>|<pageref|auto-47>>

      <tuple|<tuple|continuous function at a point>|<pageref|auto-49>>

      <tuple|<tuple|continuous mapping ay a point>|<pageref|auto-50>>

      <tuple|<tuple|continuous functions>|<pageref|auto-51>>

      <tuple|<tuple|continuous mappings>|<pageref|auto-52>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-C\><around*|(|X,Y|)>>>|<pageref|auto-53>>

      <tuple|<tuple|<with|mode|<quote|math>|C<rsub|X,c>>>|<pageref|auto-54>>

      <tuple|<tuple|open functions>|<pageref|auto-55>>

      <tuple|<tuple|uniform continuous>|<pageref|auto-56>>

      <tuple|<tuple|homeomorphism>|<pageref|auto-57>>

      <tuple|<tuple|induced topology>|<pageref|auto-58>>

      <tuple|<tuple|inverse induced topology>|<pageref|auto-59>>

      <tuple|<tuple|norm of a continuous linear function>|<pageref|auto-61>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<\|\|\>|L|\<\|\|\>>>>|<pageref|auto-62>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|X,Y|)>>>|<pageref|auto-63>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>|<pageref|auto-65>>

      <tuple|<tuple|<with|mode|<quote|math>|L<around*|(|X<rsup|n>;Y|)>>>|<pageref|auto-66>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsup|n><around*|(|X<rsub|1>,\<ldots\>,X<rsub|n>;Y|)>>>|<pageref|auto-67>>

      <tuple|<tuple|<with|mode|<quote|math>|L<rsup|n><around*|(|X;Y|)>>>|<pageref|auto-68>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-P\><rsub|n><around*|(|L|)>>>|<pageref|auto-69>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bullet\><rsub|n>>>|<pageref|auto-70>>

      <tuple|<tuple|Hausdorff space>|<pageref|auto-72>>

      <tuple|<tuple|regular space>|<pageref|auto-73>>

      <tuple|<tuple|normal space>|<pageref|auto-74>>

      <tuple|<tuple|neighborhood>|<pageref|auto-75>>

      <tuple|<tuple|open neighborhood>|<pageref|auto-76>>

      <tuple|<tuple|fundamental system of neighborhoods>|<pageref|auto-77>>

      <tuple|<tuple|first countable topological space>|<pageref|auto-78>>

      <tuple|<tuple|second countable topological space>|<pageref|auto-79>>

      <tuple|<tuple|topological vector space>|<pageref|auto-81>>

      <tuple|<tuple|toplinear isomorphism>|<pageref|auto-82>>

      <tuple|<tuple|compact topological space>|<pageref|auto-84>>

      <tuple|<tuple|compact subsets>|<pageref|auto-85>>

      <tuple|<tuple|sequential compact space>|<pageref|auto-86>>

      <tuple|<tuple|<with|mode|<quote|math>|\<frak-U\><around*|(|x|)>>>|<pageref|auto-88>>

      <tuple|<tuple|convergent filterbase>|<pageref|auto-89>>

      <tuple|<tuple|accumulation point of a filterbase>|<pageref|auto-90>>

      <tuple|<tuple|filterbase on a set>|<pageref|auto-91>>

      <tuple|<tuple|ultra filter>|<pageref|auto-92>>

      <tuple|<tuple|Tychonoff's theorem>|<pageref|auto-94>>

      <tuple|<tuple|Heine-Borel theorem>|<pageref|auto-95>>

      <tuple|<tuple|convergency in a topological space>|<pageref|auto-98>>

      <tuple|<tuple|convergence in a metric space>|<pageref|auto-99>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>|<pageref|auto-100>>

      <tuple|<tuple|Cauchy sequence>|<pageref|auto-101>>

      <tuple|<tuple|complete metric space>|<pageref|auto-102>>

      <tuple|<tuple|Banach space>|<pageref|auto-103>>

      <tuple|<tuple|bounded function>|<pageref|auto-104>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><around*|(|X,Y|)>>>|<pageref|auto-105>>

      <tuple|<tuple|uniform convergence>|<pageref|auto-106>>

      <tuple|<tuple|contraction>|<pageref|auto-107>>

      <tuple|<tuple|Banach fixed point theorem>|<pageref|auto-108>>

      <tuple|<tuple|Baire Category Theorem>|<pageref|auto-109>>

      <tuple|<tuple|open mapping theorem>|<pageref|auto-110>>

      <tuple|<tuple|partition of <with|mode|<quote|math>|<around*|[|a,b|]>>>|<pageref|auto-112>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-P\><rsub|1>\<boxplus\>\<cal-P\><rsub|2>>>|<pageref|auto-113>>

      <tuple|<tuple|norm of a partition>|<pageref|auto-114>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\><around*|(|\<cal-P\>|)>>>|<pageref|auto-115>>

      <tuple|<tuple|tagged paritition>|<pageref|auto-116>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-P\>>>|<pageref|auto-117>>

      <tuple|<tuple|Riemanian sum>|<pageref|auto-118>>

      <tuple|<tuple|<with|font-family|<quote|tt>|language|<quote|verbatim>|<with|mode|<quote|math>|\<cal-S\><around*|(|f,\<bbb-P\>|)>>>>|<pageref|auto-119>>

      <tuple|<tuple|Rieman Integral>|<pageref|auto-120>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsub|a><rsup|b>f>>|<pageref|auto-121>>

      <tuple|<tuple|Riemann Integral>|<pageref|auto-122>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsup|b><rsub|a>f>>|<pageref|auto-123>>

      <tuple|<tuple|connected space>|<pageref|auto-125>>

      <tuple|<tuple|connected subset>|<pageref|auto-126>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|12<space|2spc>Topology>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      12.1<space|2spc>Topological spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|12.1.1<space|2spc>Closed sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|12.1.2<space|2spc>Basis of a topological
      space <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|12.1.3<space|2spc>Dense sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      12.2<space|2spc>Metric Spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>

      12.3<space|2spc>Normed spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>

      12.4<space|2spc>Inner product spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-45>

      12.5<space|2spc>Continuity <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>

      12.6<space|2spc>Linear maps and continuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-60>

      12.7<space|2spc>Multilinear \ mappings and continuity
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-64>

      12.8<space|2spc>Separation <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      12.9<space|2spc>Toppological Vector Spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>

      12.10<space|2spc>Compact Spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>

      <with|par-left|<quote|1tab>|12.10.1<space|2spc>Filter bases in
      Topological spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-87>>

      <with|par-left|<quote|1tab>|12.10.2<space|2spc>Product of compact
      spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-93>>

      12.11<space|2spc>Complete spaces <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-96>

      <with|par-left|<quote|1tab>|12.11.1<space|2spc>Convergence
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-97>>

      12.12<space|2spc>Integration in Banach space
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-111>

      12.13<space|2spc>Connected Sets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-124>
    </associate>
  </collection>
</auxiliary>