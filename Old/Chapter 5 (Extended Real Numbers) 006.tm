<TeXmacs|1.99.10>

<project|Book.tm>

<style|book>

<\body>
  <assign|chapter-nr|15>

  <chapter|The extended real numbers>

  <section|Extented reals>

  <\lemma>
    There exists at least two sets that are not a element of <math|\<bbb-R\>>
  </lemma>

  <\proof>
    Using the definition of the real numbers (see <reference|dedekind's cut>)
    we have that <math|\<emptyset\>\<nin\>\<bbb-R\>> and
    <math|\<bbb-Q\>\<nin\>\<bbb-R\>>
  </proof>

  Using the above lemma and the fact that a set is by definition a element
  the following definition of extended reals make sense

  <\definition>
    <label|extented reals><index|extented reals>The set
    <math|<wide|R|\<bar\>>=\<bbb-R\><big|cup><around*|{|\<infty\>,-\<infty\>|}>>
    where <math|\<infty\>,-\<infty\>\<nin\>\<bbb-R\>> and
    <math|\<infty\>\<neq\>-\<infty\>>
  </definition>

  We extend the order relation <math|\<leqslant\><rsub|\<bbb-R\>>> on
  <math|\<bbb-R\>> to a order relation on <math|<wide|\<bbb-R\>|\<bar\>>>
  that will make <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
  a fully ordered set. By doing so we will show that as a benefit every non
  empty set in <math|<wide|\<bbb-R\>|\<bar\>>> has a supremum and a infinum.

  <\definition>
    Given the fully ordered set <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\><rsub|\<bbb-R\>>|\<rangle\>>>
    (see <reference|the set of reals is fully-ordered>) define
    <math|\<leqslant\>\<subseteq\><wide|\<bbb-R\>|\<bar\>>\<times\><wide|\<bbb-R\>|\<bar\>>>
    by\ 

    <\enumerate>
      <item><math|-\<infty\>\<leqslant\>\<infty\>>

      <item><math|-\<infty\>\<leqslant\>-\<infty\>>

      <item><math|\<infty\>\<leqslant\>\<infty\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|-\<infty\>\<leqslant\>x> and <math|x\<leqslant\>\<infty\>>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> with
      <math|x\<leqslant\><rsub|\<bbb-R\>>y> we have <math|x\<leqslant\>y>
    </enumerate>
  </definition>

  <\note>
    As <math|<around*|{|-\<infty\>,\<infty\>|}><big|cap>\<bbb-R\>=\<emptyset\>>
    and <math|-\<infty\>\<neq\>\<infty\>> we have

    <\enumerate>
      <item><math|-\<infty\>\<neq\>\<infty\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|-\<infty\>\<less\>x> and <math|x\<less\>\<infty\>>
    </enumerate>
  </note>

  <\theorem>
    <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
    is fully ordered
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexitivity>The following cases occurs for
      <math|x\<in\><wide|\<bbb-R\>|\<bar\>>>

      <\description>
        <item*|<math|x=\<infty\>>>then by definition <math|x\<leqslant\>x>

        <item*|<math|x=-\<infty\>>>then by definition <math|x\<leqslant\>x>

        <item*|<math|x\<in\>\<bbb-R\>>>then as
        <math|x\<leqslant\><rsub|\<bbb-R\>>x\<Rightarrow\>x\<leqslant\>x>
      </description>

      proving reflexitivity.

      <item*|anti-symmetry>Let <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> with
      <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> then the following cases
      must be considered for <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>>:\ 

      <\description>
        <item*|<math|x=y=\<infty\>>>then <math|x=y>

        <item*|<math|x=y=-\<infty\>>>then <math|x=y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then by definition
        <math|x\<nleqslant\>y> so this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then by definition
        <math|y\<nleqslant\>x> so this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then by definition
        <math|x\<nleqslant\>y> so this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then by
        definition <math|y\<nleqslant\>x> so this case does not count

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then by definition
        <math|y\<nleqslant\>x> so this case does not count

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then by
        definition <math|x\<nleqslant\>y> so this case does not count

        <item*|<math|x,y\<in\>\<bbb-R\>>>then
        <math|x\<leqslant\><rsub|\<bbb-R\>>y\<wedge\>y\<leqslant\><rsub|\<bbb-R\>>x\<Rightarrow\>x=y>
      </description>

      so in all the cases where <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x>
      we have <math|x=y>

      <item*|transitivity>Let <math|x,y,z\<in\><wide|\<bbb-R\>|\<bar\>>> with
      <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z> then the following cases
      must be considered for <math|x,y,z\<in\><wide|\<bbb-R\>|\<bar\>>>:

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>then
        as <math|x\<nleqslant\>y> this cases does not count

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|y\<nleqslant\>z> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
        as <math|x\<nleqslant\>y> this case does not count

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
        <math|x\<leqslant\>z>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
        <math|x\<leqslant\>z>
      </description>

      so in all cases that count we have <math|x\<leqslant\>z>

      <item*|fully-ordered>The following cases must be considered for
      <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>>:

      <\description>
        <item*|<math|x=y=-\<infty\>>><math|\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>><math|\<Rightarrow\>y\<leqslant\>x>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>><math|\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>><math|\<Rightarrow\>y\<leqslant\>x>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>><math|\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>><math|\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>><math|\<Rightarrow\>y\<leqslant\>x>

        <item*|<math|x,y\<in\>\<bbb-R\>>><math|x\<leqslant\><rsub|\<bbb-R\>>y\<vee\>y\<leqslant\><rsub|\<bbb-R\>>x\<Rightarrow\>x\<leqslant\>y\<vee\>y\<leqslant\>x>
      </description>
    </description>
  </proof>

  <\definition>
    <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> is finite iff
    <math|x\<in\>\<bbb-R\>> (or in other words
    <math|x\<neq\>\<infty\>,-\<infty\>>)
  </definition>

  We have the following analog to the density of <math|\<bbb-R\>>

  <\theorem>
    <label|density of the extented reals>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<less\>y> then
    <math|\<exists\>z\<in\><wide|\<bbb-R\>|\<bar\>>> such that
    <math|x\<less\>z\<less\>y>
  </theorem>

  <\proof>
    We have the following possibilities for
    <math|x\<less\>y\<Rightarrow\>x\<neq\>y>

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>take then
      <math|z=x+1\<Rightarrow\>x\<less\>z\<less\>y>

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>take then
      <math|x=0\<Rightarrow\>x\<less\>z\<less\>y>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>using
      <reference|density theorem for the reals> there exists then a
      <math|z\<in\>\<bbb-R\>\<subseteq\><wide|\<bbb-R\>|\<bar\>>> such that
      <math|x\<less\>x\<less\>y>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>take then
      <math|z=y-1> so that <math|x\<less\>z\<less\>y>
    </description>
  </proof>

  <\notation>
    <label|supremum, infinum of real set><index|<math|sup<rsub|\<bbb-R\>>>><index|<math|inf<rsub|\<bbb-R\>>>>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\>\<bbb-R\>> be a non empty real set
    then <math|sup<rsub|\<bbb-R\>><around*|(|A|)>,inf<rsub|\<bbb-R\>><around*|(|A|)>>
    is the supremum and infinum of <math|A> in
    <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\>|\<rangle\>>> (see
    <reference|order in the reals>)
  </notation>

  <\notation>
    <label|supremum, infinum of extented real
    set><index|<math|sup>><index|<math|inf>>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<bar\>>> be a non
    empty extended real set then <math|sup<around*|(|A|)>>,
    <math|inf<around*|(|A|)>> is the supremum and infinum of <math|A> in
    <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
  </notation>

  We prove now that in <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
  every on empty set has a supremum and infinum

  <\theorem>
    <label|every non empty set in the extented reals has a limit>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<bar\>>> then
    <math|sup<around*|(|A|)>> and <math|inf<around*|(|A|)>> exist
  </theorem>

  <\proof>
    From the full ordering of <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
    we have by <reference|subset of a well-ordered (fully-ordered) set is
    well-ordered (fully-ordered)> that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,\<leqslant\>|\<rangle\>>>
    is well ordered and thus by <reference|well ordering implies conditional
    completeness> conditionally complete. Now if <math|A> is non empty then
    it is bounded above by <math|\<infty\>> and bounded below by
    <math|-\<infty\>> so that by conditional completeness (see
    <reference|conditonal complete classes> and the equivalence of inf and
    sup (see <reference|alternative definition for conditional
    completeness>)) <math|A> has a infinum and supremum.
  </proof>

  <\theorem>
    <label|condition for supremum (infinum) to be infinite>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<bar\>>> then
    <math|sup<around*|(|A|)>=\<infty\>> (or
    <math|inf<around*|(|A|)>=-\<infty\>>) iff either <math|\<infty\>\<in\>A>
    or <math|A<big|cap>\<bbb-R\>> is not bounded above (or either
    <math|-\<infty\>\<in\>A> or <math|A<big|cap>\<bbb-R\>> is not bounded
    below) in <math|\<bbb-R\>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|sup<around*|(|A|)>=\<infty\>>
      then we have for <math|A> either\ 

      <\description>
        <item*|<math|\<infty\>\<in\>A>>proving <math|\<infty\>\<in\>A>

        <item*|<math|\<infty\>\<nin\>A>>consider then the following cases\ 

        <\description>
          <item*|<math|A=<around*|{|-\<infty\>|}>>>then as
          <math|sup<around*|(|<around*|{|-\<infty\>|}>|)>=-\<infty\>\<neq\>\<infty\>>
          we have a contradiction, so this case can not occur

          <item*|<math|A\<neq\><around*|{|-\<infty\>|}>>>then if
          <math|A<big|cap>\<bbb-R\>> is bounded above in <math|\<bbb-R\>> we
          have by <reference|the reals are conditional complete> that
          <math|sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>
          exists. If now <math|x\<in\>A> then either <math|x=-\<infty\>> and
          thus <math|x=-\<infty\>\<less\>sup<rsub|\<bbb-R\>><around*|(|A<big|cap>R|)>>
          or <math|x\<neq\>-\<infty\>> and
          <math|x\<in\>A<big|cap>\<bbb-R\>\<Rightarrow\>x\<leqslant\>sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>
          so <math|A> is bounded above by
          <math|sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>> proving
          that <math|sup<around*|(|A|)>\<leqslant\>sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<less\>\<infty\>>
          a contradition. So we must have that <math|A<big|cap>\<bbb-R\>> is
          not bounded above.
        </description>
      </description>

      If <math|inf<around*|(|A|)>=-\<infty\>> then we have for <math|A>
      either\ 

      <\description>
        <item*|<math|-\<infty\>\<in\>A>>proving <math|-\<infty\>>

        <item*|<math|-\<infty\>\<nin\>A>>consider then the following cases

        <\description>
          <item*|<math|A=<around*|{|\<infty\>|}>>>then as
          <math|inf<around*|(|<around*|{|\<infty\>|}>|)>=\<infty\>\<neq\>-\<infty\>>
          we have a contradiction, so this case can not occur

          <item*|<math|A\<neq\><around*|{|\<infty\>|}>>>then if
          <math|A<big|cap>\<bbb-R\>> is bounded below in <math|\<bbb-R\>> we
          have by <reference|the reals are conditional complete> and
          <reference|alternative definition for conditional completeness>
          that <math|inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<bbb-R\>>
          exists. If now <math|x\<in\>A> then either
          <math|x=\<infty\>\<Rightarrow\>inf<rsub|\<bbb-R\>><around*|(|A<big|cap>R|)>\<less\>\<infty\>=x>
          or <math|x\<neq\>\<infty\>\<Rightarrow\>x\<in\>A<big|cap>\<bbb-R\>\<Rightarrow\>inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<leqslant\>x>,
          so <math|A> is bounded below by
          <math|inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>> proving
          that <math|-\<infty\>\<less\>inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>\<leqslant\>inf<around*|(|A|)>>
          a contradiction. So we must have that <math|A<big|cap>\<bbb-R\>> is
          not bounded below.
        </description>
      </description>

      <item*|<math|\<Leftarrow\>>>If <math|\<infty\>\<in\>A> then
      <math|\<infty\>\<leqslant\>sup<around*|(|A|)>\<Rightarrow\>sup<around*|(|A|)>=\<infty\>>
      [if <math|sup<around*|(|A|)>\<neq\>\<infty\>\<Rightarrow\>\<infty\>\<leqslant\>sup<around*|(|A|)>\<less\>\<infty\>>
      a contradiction], else if <math|A<big|cap>\<bbb-R\>> is not bounded
      above in <math|\<bbb-R\>> then if <math|sup<around*|(|A|)>\<less\>\<infty\>>
      we have that <math|sup<around*|(|A<big|cap>R|)>\<leqslant\>sup*<around*|(|A|)>\<less\>\<infty\>>
      giving the contradiction that <math|A<big|cap>\<bbb-R\>> is bounded
      above, so <math|sup<around*|(|A|)>=\<infty\>>. If
      <math|-\<infty\>\<in\>A> then <math|inf<around*|(|A|)>\<leqslant\>-\<infty\>\<Rightarrow\>inf<around*|(|A|)>=-\<infty\>>
      [if <math|inf<around*|(|A|)>\<neq\>-\<infty\>\<Rightarrow\>-\<infty\>\<less\>inf<around*|(|A|)>\<leqslant\>-\<infty\>>
      a contradiction], else if <math|A<big|cap>\<bbb-R\>> is not bounded
      below in <math|\<bbb-R\>> then if <math|-\<infty\>\<less\>inf<around*|(|A|)>>
      we have that <math|-\<infty\>\<less\>inf<around*|(|A|)>\<leqslant\>inf<around*|(|A<big|cap>\<bbb-R\>|)>>
      giving the contradiction that <math|A<big|cap>\<bbb-R\>> is bounded
      below, so <math|inf<around*|(|A|)>=-\<infty\>>.
    </description>
  </proof>

  We extend the algebraic operations on <math|\<bbb-R\>> as follows (note
  that this will not make <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,+,\<cdot\>|\<rangle\>>>
  a field)

  <\definition>
    On <math|<wide|\<bbb-R\>|\<bar\>>> we have the following possibilities
    for the <math|+> and <math|.> operations

    <\enumerate>
      <item>Given <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> we have for
      <math|x+y> the following possibilities

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+y> is equal to <math|x+y> as defined in <math|\<bbb-R\>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x+y=\<infty\>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+y=-\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+y=\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x+y=\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then <math|x+y> is
        <with|font-series|bold|not defined>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+y=-\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then <math|x+y> is
        <with|font-series|bold|not definied>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x+y=-\<infty\>>
      </description>

      <item>Given <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> we have for
      <math|x\<cdot\>y> the following possibilities where
      <math|\<bbb-R\><rsub|+>=<around*|{|x\<in\>\<bbb-R\>\|0\<less\>x|}>>,
      <math|\<bbb-R\><rsub|->=<around*|{|x\<in\>\<bbb-R\>\|x\<less\>0|}>>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x\<cdot\>y> is equal to <math|x\<cdot\>y> as defined in
        <math|\<bbb-R\>>

        <item*|<math|><math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=0\<wedge\>y=\<infty\>>>then <math|x\<cdot\>y=0>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=0\<wedge\>y=-\<infty\>>>then <math|x\<cdot\>y=0>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y=0>>then <math|x\<cdot\>y=0>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|x\<cdot\>y=\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y=0>>then <math|x\<cdot\>y=0>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>>
      </description>

      <item>Given <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> we have for
      <math|-x> the following possibilities\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then <math|-x> is as is defined in
        <math|\<bbb-R\>>

        <item*|<math|x=\<infty\>>>then <math|-x=-\<infty\>>

        <item*|<math|x=-\<infty\>>>then <math|-x=\<infty\>>
      </description>
    </enumerate>

    So in all cases the product of two numbers is defined, however the sum is
    not defined for the cases <math|\<infty\>+<around*|(|-\<infty\>|)>> and
    <math|-\<infty\>+\<infty\>>.
  </definition>

  <\note>
    Using the above definition it is easy to see that
    <math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<bar\>>> we have
    <math|x\<cdot\>y=y\<cdot\>x> and if <math|x+y> is defined then <math|y+x>
    is defined and <math|x+y=y+x>.
  </note>

  <\theorem>
    <label|x\<less\>=y=\<gtr\>-y\<less\>=-x>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<leqslant\>y> then
    <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>> and if
    <math|x\<less\>y> then <math|<around*|(|-y|)>\<less\><around*|(|-x|)>>
  </theorem>

  <\proof>
    First if <math|x\<leqslant\>y> then we have to consider the following
    possibilities for <math|x>

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>>>then as <math|x\<leqslant\>y> we have to
      consider the following possibilities for <math|y>

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then using the properties of the reals
        we have <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

        <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>-x\<in\>\<bbb-R\>\<Rightarrow\><around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
      </description>

      <item*|<math|x=\<infty\>>>then as <math|x\<leqslant\>y> we have
      <math|y=\<infty\>> so that <math|-y=-\<infty\>\<leqslant\>-\<infty\>=-x>
      proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

      <item*|<math|x=-\<infty\>>>then as <math|x\<leqslant\>y> we have to
      consider the following possibilities

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then <math|-x=\<infty\>> so that
        <math|\<bbb-R\>\<ni\>-y\<leqslant\>\<infty\>=-x> proving
        <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

        <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>\<infty\>=-x>
        proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

        <item*|<math|y=-\<infty\>>>then <math|-y=\<infty\>=-x> proving
        <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
      </description>
    </description>

    this proves the first part of the theorem. For the second part if
    <math|x\<less\>y> then <math|x\<neq\>y> and
    <math|x\<leqslant\>y\<Rightarrow\><around*|(|-x|)>\<neq\><around*|(|-y|)>>
    and <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>> proving
    <math|<around*|(|-y|)>\<less\><around*|(|-x|)>>
  </proof>

  <\corollary>
    <label|x\<less\>=y=\<gtr\>lx\<less\>=ly>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<leqslant\>y> then
    for <math|\<lambda\>\<in\><wide|\<bbb-R\>|\<bar\>>> we have\ 

    <\enumerate>
      <item>If <math|0\<leqslant\>\<lambda\>> then
      <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>\ 

      <item>If <math|\<lambda\>\<leqslant\>0> then
      <math|\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|0\<leqslant\>\<lambda\>> we have the following cases to
      consider for <math|\<lambda\>>\ 

      <\description>
        <item*|<math|\<lambda\>=0>>then <math|\<lambda\>\<cdot\>x=0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

        <item*|<math|\<lambda\>\<in\>\<bbb-R\><rsub|+>>>then for <math|x> we
        have either\ 

        <\description>
          <item*|<math|x=-\<infty\>>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>y>

          <item*|<math|x\<in\>\<bbb-R\>>>then
          <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y> (using
          <reference|properties of positive, negative real numbers>)

          <item*|<math|x=\<infty\>>>then <math|y\<equallim\><rsub|x\<leqslant\>\<infty\>>\<infty\>>
          hence <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
        </description>

        <item*|<math|\<lambda\>=\<infty\>>>then for <math|x> we have either\ 

        <\description>
          <item*|<math|x=-\<infty\>>>then for <math|y> we have either

          <\description>
            <item*|<math|y=-\<infty\>>><math|\<lambda\>\<cdot\>x=-\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|->>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=0>>then <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x\<in\>\<bbb-R\><rsub|->>>then for <math|y> we have
          either\ 

          <\description>
            <item*|<math|y=-\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|->>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=0>>then <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x=0>>then as <math|0=x\<leqslant\>y> we have for
          <math|y> either

          <\description>
            <item*|<math|y=0>>then <math|\<lambda\>\<cdot\>x=0=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=0\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=0\<leqslant\>\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x\<in\>\<bbb-R\><rsub|+>>> then as
          <math|0\<less\>x\<leqslant\>y> we have either\ 

          <\description>
            <item*|<math|y\<in\>\<bbb-R\><rsub|+>>>then
            <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
          </description>

          <item*|<math|x=\<infty\>>>then <math|y=\<infty\>> and
          <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
        </description>
      </description>

      <item>As <math|\<lambda\>\<leqslant\>0> we have by
      <reference|x\<less\>=y=\<gtr\>-y\<less\>=-x> that
      <math|0\<leqslant\><around*|(|-\<lambda\>|)>> so by (1) we have that
      <math|<around*|(|-\<lambda\>|)>\<cdot\>x\<leqslant\><around*|(|-\<lambda\>|)>\<Rightarrow\>-<around*|(|\<lambda\>\<cdot\>x|)>\<leqslant\>-<around*|(|\<lambda\>\<cdot\>y|)>\<Rightarrowlim\><rsub|<text|<reference|x\<less\>=y=\<gtr\>-y\<less\>=-x>>>\<lambda\>\<cdot\>y\<leqslant\>\<lambda\>\<cdot\>x>
    </enumerate>
  </proof>

  We have to be very carefull if we do sums on elements of
  <math|<wide|\<bbb-R\>|\<bar\>>> for example if <math|x=10,y=4> and
  <math|z=\<infty\>> then <math|x+z=y+z=\<infty\>> however <math|x\<neq\>y>
  also <math|x+z\<leqslant\>y+z> however <math|x\<nleqslant\>y>. The
  following theorems shows what is possible.

  <\theorem>
    <label|x+z=y+z=\<gtr\>x=y>If <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> and
    <math|z\<in\>\<bbb-R\>> then we have\ 

    <\enumerate>
      <item>if <math|x+z=y+z> we have <math|x=y>

      <item>if <math|x+z\<leqslant\>y+z> we have <math|x\<leqslant\>y>

      <item>if <math|x+z\<less\>y+z> we have <math|x\<less\>y>

      <item>if <math|x+z=y> we have <math|x=y-z>

      <item>if <math|x+z\<leqslant\>y> we have
      <math|x\<leqslant\>y+<around*|(|-z|)>>

      <item>if <math|x+z\<less\>y> we have <math|x\<less\>y+<around*|(|-z|)>>

      <item>if <math|x\<leqslant\>y+z> we have
      <math|x+<around*|(|-z|)>\<leqslant\>y>

      <item>if <math|x\<less\>y+z> we have <math|x+<around*|(|-z|)>\<less\>y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume <math|x+z=y+z> and consider the following possibilities
      for <math|x,y> when

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then as
        <math|x+z=y+z> we have <math|<around*|(|x+z|)>-z=<around*|(|y+z|)>-z\<Rightarrow\>x=y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x+z\<neq\>y+z=\<infty\>> so this does not apply

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+z\<neq\>y+z=-\<infty\>> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|\<infty\>=x+z\<neq\>y+z> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then <math|x=y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|\<infty\>=x+z\<neq\>y+z=-\<infty\>> so this does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|-\<infty\>=x+z\<neq\>y+z> so this does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|-\<infty\>=x+z\<neq\>y+z=\<infty\>> so this does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then <math|x=y>
      </description>

      so in all cases that apply we have proved that <math|x=y>

      <item>Assume <math|x+y\<leqslant\>y+z> and consider the following
      possibilities for <math|x,y>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then using
        the properties of the reals we have <math|x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+z\<nleqslant\>y+z=-\<infty\>> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|\<infty\>=x+z\<nleqslant\>y+z> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|\<infty\>=x+z\<nleqslant\>y+z=-\<infty\>> so this does not
        apply

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x\<less\>y\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<less\>y\<Rightarrow\>x\<leqslant\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x=y\<Rightarrow\>x\<leqslant\>y>
      </description>

      so in all cases that apply we have <math|x\<leqslant\>y>

      <item>Assume that <math|x+z\<less\>y+z>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then as
        <math|x+z\<less\>y+z> we have <math|<around*|(|x+z|)>-z\<less\><around*|(|y+z|)>-z\<Rightarrow\>x\<less\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x\<less\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+z\<nless\>y+z=-\<infty\>> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|\<infty\>=x+z\<nless\>y+z> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|\<infty\>=x+z\<nless\>y+z=\<infty\>> so this does not apply

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|\<infty\>=x+z\<nless\>y+z=-\<infty\>> so this does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x\<less\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then <math|x\<less\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|-\<infty\>=x+z\<nless\>y+z=-\<infty\>> so this does not apply
      </description>

      So in all cases that apply we have <math|x\<less\>y>

      <item>If <math|x+z=y> we have for <math|x> the following possibilities

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then <math|y\<in\>\<bbb-R\>> and we
        have <math|x=y+<around*|(|-z|)>>

        <item*|<math|x=\<infty\>>>then <math|y=\<infty\>> and we have
        <math|x=\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>>

        <item*|<math|x=-\<infty\>>>then <math|y=-\<infty\>> and we have
        <math|x=-\<infty\>=-\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>>
      </description>

      so in all cases we have <math|x=y+<around*|(|-z|)>>

      <item>If <math|x+z\<leqslant\>y> we have for <math|x> the following
      possibilities

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then for <math|y> we have either

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x\<leqslant\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x\<leqslant\>\<infty\>=\<infty\>+<around*|(|-z|)>\<Rightarrow\>x\<leqslant\>y+<around*|(|-z|)>>
        </description>

        <item*|<math|x=\<infty\>>>then <math|x+z=\<infty\>\<Rightarrow\>y=\<infty\>>
        so that <math|x=\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<leqslant\>y+<around*|(|-z|)>>

        <item*|<math|x=-\<infty\>>>then <math|x+<around*|(|-z|)>=-\<infty\>>
        and we have the following possibilites for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x=-\<infty\>\<less\>y\<Rightarrow\>x\<leqslant\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x=-\<infty\>\<less\>\<infty\>=y+<around*|(|-z|)>\<Rightarrow\>x\<leqslant\>y+<around*|(|-z|)>>

          <item*|<math|y=-\<infty\>>>then
          <math|x=-\<infty\>=-\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<leqslant\>y+<around*|(|-z|)>>
        </description>
      </description>

      <item>If <math|x+z\<less\>y> we have for <math|x> the following
      possibilities

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then we have for <math|> either

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then by the properties of the reals
          we have <math|x\<less\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x\<less\>\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>
        </description>

        <item*|<math|x=\<infty\>>>then <math|x+z=\<infty\>\<less\>y> a
        contradiction so this does not apply

        <item*|<math|x=-\<infty\>>>then we have the following possibilities
        for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x=-\<infty\>\<less\>y-z\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x=-\<infty\>\<less\>\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>
        </description>
      </description>

      so in all cases we have <math|x\<less\>y+<around*|(|-z|)>>

      <item>If <math|x\<leqslant\>y+z> then for <math|x> we have the
      following possibilities for <math|x>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then for <math|y> we have the
        following possibilities (as <math|-\<infty\>+z=-\<infty\>\<less\>x>)

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x+<around*|(|-z|)>\<leqslant\>y>

          <item*|<math|y=\<infty\>>>then <math|x+<around*|(|-z|)>\<leqslant\>\<infty\>=y\<Rightarrow\>x+<around*|(|-z|)>\<leqslant\>y>
        </description>

        <item*|<math|x=\<infty\>>>then <math|y+z=\<infty\>> so that
        <math|y=\<infty\>> and <math|x+<around*|(|-z|)>=\<infty\>=y\<Rightarrow\>x+<around*|(|-z|)>\<leqslant\>y>

        <item*|<math|x=-\<infty\>>>then <math|x+<around*|(|-z|)>=-\<infty\>\<leqslant\>y>
        proving that <math|x+<around*|(|-z|)>\<leqslant\>y>
      </description>

      so in all cases we have <math|x+<around*|(|-z|)>\<leqslant\>y>

      <item>If <math|x\<less\>y+z> then for <math|x> we have the following
      possibilities for <math|x> (as <math|\<infty\>\<nless\>y+z>)

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then
        <math|x+<around*|(|-z|)>\<less\>y>

        <item*|<math|x=-\<infty\>>>then <math|x+<around*|(|-z|)>=-\<infty\>\<less\>y\<Rightarrow\>x+<around*|(|-z|)>\<less\>y>
      </description>

      so in all cases we have <math|x+<around*|(|-z|)>\<less\>y>
    </enumerate>
  </proof>

  <\theorem>
    <label|x\<less\>=y=\<gtr\>x+z\<less\>=y+z>If
    <math|x,y,z\<in\><wide|\<bbb-R\>|\<bar\>>> such that
    <math|x\<leqslant\>y> then <math|x+z\<leqslant\>y+z> assuming that the
    sums are well defined. If <math|x\<less\>y> and <math|z\<in\>\<bbb-R\>>
    then <math|x+z\<less\>y+z>.
  </theorem>

  <\proof>
    As <math|x+z>, <math|y+z> must be well defined we have only the following
    cases to consider (the others are not well defined)

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
      using the properties of the real numbers we have that
      <math|x\<leqslant\>y=x+z\<leqslant\>y+z>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
      <math|x+z=\<infty\>=y+z\<Rightarrowlim\>x+z\<leqslant\>y+z>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z\<less\>\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
      <math|x+z\<less\>\<infty\>=y+z\<Rightarrow\>x+z\<less\>y+z>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>x\<in\>\<bbb-R\>>>then
      <math|x\<nleqslant\>y> so this does not count

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>x=-\<infty\>>>then
      <math|x\<nleqslant\>y> so this does not count

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x\<nleqslant\>y> so this does not count

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
      <math|x+z=\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
      <math|x+z\<leqslant\>y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x\<nleqslant\>y> this does not count

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=-\<infty\>\<less\>\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>then
      <math|z+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>
    </description>

    proving the first part of the theorem.

    For the second part if <math|x\<less\>y\<Rightarrow\>x\<leqslant\>y\<Rightarrowlim\><rsub|first
    part>x+z\<leqslant\>y+z>. Assume now that <math|x+z=y+z> then as
    <math|z\<in\>\<bbb-R\>> we have by the previous theorem (see
    <reference|x+z=y+z=\<gtr\>x=y>) that <math|x=y> contradicting
    <math|x\<less\>y> so we must have that <math|x+z\<less\>y+z>.
  </proof>

  <\theorem>
    <label|difference in extented reals>Let
    <math|a,b\<in\><wide|\<bbb-R\>|\<bar\>>> such that
    <math|a,b\<geqslant\>0> then we have

    <\enumerate>
      <item><math|a+<around*|(|-b|)>> is well defined if and only if
      <math|a\<less\>\<infty\>\<vee\>b\<less\>\<infty\>>

      <item><math|a+<around*|(|-b|)>=\<infty\>> if and only if
      <math|a=\<infty\>> and <math|b\<less\>\<infty\>>

      <item><math|a+<around*|(|-b|)>=-\<infty\>> if and only
      <math|a\<less\>\<infty\>\<wedge\>b=\<infty\>>

      <item><math|a+<around*|(|-b|)>\<less\>\<infty\>> if and only
      <math|a\<less\>\<infty\>\<wedge\>b\<less\>\<infty\>>

      <item>If <math|a+<around*|(|-b|)>> and <math|c+<around*|(|-d|)>> are
      well defined with <math|a+<around*|(|-b|)>=c+<around*|(|-d|)>> then
      <math|a+d,c+b> are well defined and <math|a+d=c+b>
    </enumerate>
  </theorem>

  <\proof>
    \ We have the following possibilities to consider for <math|a,b> where
    <math|0\<leqslant\>a,b>\ 

    <\description>
      <item*|<math|a\<less\>\<infty\>\<wedge\>b\<less\>\<infty\>>>then
      <math|a,b\<in\>\<bbb-R\>> so that <math|a+<around*|(|-b|)>> is well
      defined and <math|a+<around*|(|-b|)>\<in\>\<bbb-R\>\<Rightarrow\>a+<around*|(|-b|)>\<less\>\<infty\>>

      <item*|<math|a\<less\>\<infty\>\<wedge\>b=\<infty\>>>then
      <math|a+<around*|(|-b|)>=a+<around*|(|-\<infty\>|)>\<equallim\><rsub|a\<in\>\<bbb-R\>>-\<infty\>>
      (by definition)

      <item*|<math|a=\<infty\>\<wedge\>b\<less\>\<infty\>>>then
      <math|a+<around*|(|-b|)>=\<infty\>+<around*|(|-b|)>\<equallim\><rsub|b\<in\>\<bbb-R\>=-b\<in\>\<bbb-R\>>\<infty\>>
      (by definition)

      <item*|<math|a=\<infty\>\<wedge\>b=\<infty\>>>then
      <math|a+<around*|(|-b|)>=\<infty\>+<around*|(|-\<infty\>|)>> which is
      not well defined
    </description>

    So the only cases where <math|a+<around*|(|-b|)>> are well defined are
    these where either <math|a\<less\>\<infty\>> or <math|b\<less\>\<infty\>>
    giving (1). Further <math|a+<around*|(|-b|)>=\<infty\>> only if
    <math|a=\<infty\>\<wedge\>b\<less\>\<infty\>>,
    <math|a+<around*|(|-b|)>=-\<infty\>> only if
    <math|a\<less\>\<infty\>\<wedge\>b=\<infty\>> and
    <math|a+<around*|(|-b|)>\<less\>\<infty\>> only if
    <math|a\<less\>\<infty\>\<wedge\>b\<less\>\<infty\>> giving (2),(3) and
    (4). Finally to prove (5) if <math|a+<around*|(|-b|)>,c+<around*|(|-d|)>>
    are well defined and <math|a+<around*|(|-b|)>=c+<around*|(|-d|)>> then we
    have by (1) only the following cases to consider for <math|a,b>

    <\description>
      <item*|<math|a\<less\>\<infty\>\<wedge\>b\<less\>\<infty\>>>then
      <math|a+<around*|(|-b|)>\<less\>\<infty\>> and for <math|c,d> we have
      either

      <\description>
        <item*|<math|c\<less\>\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>\<less\>\<infty\>>, also as
        <math|a,b,c,d\<less\>\<infty\>> we have that <math|a+d,c+b> are
        defined. Also from <math|a+<around*|(|-b|)>=c+<around*|(|-d|)>> we
        have using the associativitiy and commutativity of <math|+> in
        <math|\<bbb-R\>> that <math|a+d=c+b>

        <item*|<math|c\<less\>\<infty\>\<wedge\>d=\<infty\>>>then
        <math|c+<around*|(|-d|)>=-\<infty\>\<neq\>a+<around*|(|-b|)>> so this
        case does not apply.

        <item*|<math|c=\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>=\<infty\>\<neq\>a+<around*|(|-b|)>> so this
        case does not apply
      </description>

      <item*|<math|a\<less\>\<infty\>\<wedge\>b=\<infty\>>>then
      <math|a+<around*|(|-b|)>=-\<infty\>> and for <math|c,d> we have either

      <\description>
        <item*|<math|c\<less\>\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>\<less\>\<infty\>\<Rightarrow\>c+<around*|(|-d|)>\<neq\>a+<around*|(|-b|)>>
        so this case does not apply

        <item*|<math|c\<less\>\<infty\>\<wedge\>d=\<infty\>>>then
        <math|c+<around*|(|-d|)>=-\<infty\>=<around*|(|a+<around*|(|-b|)>|)>>
        then <math|a+d,c+b> is well defined and <math|a+d=\<infty\>=c+b>

        <item*|<math|c=\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>=\<infty\>\<neq\>a+<around*|(|-b|)>> so this
        case does not apply
      </description>

      <item*|<math|a=\<infty\>\<wedge\>b\<less\>\<infty\>>>then
      <math|a-b=\<infty\>> and for <math|c,d> we have either

      <\description>
        <item*|<math|c\<less\>\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>\<less\>\<infty\>\<Rightarrow\>c+<around*|(|-d|)>\<neq\>a-b>
        so this case does not apply

        <item*|<math|c\<less\>\<infty\>\<wedge\>d=\<infty\>>>then
        <math|c+<around*|(|-d|)>=-\<infty\>\<neq\>a-b> so this case does not
        apply

        <item*|<math|c=\<infty\>\<wedge\>d\<less\>\<infty\>>>then
        <math|c+<around*|(|-d|)>=\<infty\>=a-b> then <math|a+d,c+b> is well
        defined and <math|a+d=\<infty\>=c+b>
      </description>
    </description>

    So in all the cases that apply we have <math|a+d,b+c> is well defined and
    <math|a+d=c+b>
  </proof>

  <\theorem>
    <label|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y>Let
    <math|x,y,z\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|0\<leqslant\>y>,
    <math|z=x+y> (where <math|x+y> is well defined) then we have
    <math|x\<leqslant\>z>
  </theorem>

  <\proof>
    As <math|x+y> is well defined we have to consider the following cases
    (taking in account that <math|0\<leqslant\>y>)

    <\description>
      <item*|<math|x,y\<in\>\<bbb-R\>>>as <math|0\<leqslant\>y> we have
      <math|x=x+0\<leqslant\>x+y>

      <item*|<math|x=\<infty\>,y\<in\>\<bbb-R\>>>as <math|z=x+y=\<infty\>=x>
      we have <math|x\<leqslant\>z>

      <item*|<math|x=-\<infty\>,y\<in\>\<bbb-R\>>>then <math|x\<leqslant\>z>

      <item*|<math|x\<in\>\<bbb-R\>,y=\<infty\>>>then
      <math|z=x+\<infty\>=\<infty\>> so that <math|x\<leqslant\>z>

      <item*|<math|x=\<infty\>,y=\<infty\>>>then
      <math|z=\<infty\>+\<infty\>=\<infty\>> so that <math|x\<leqslant\>z>
    </description>
  </proof>

  <\note>
    To simplify notations we addopt the notation <math|a-b> to mean
    <math|a+<around*|(|-b|)>> so <math|a-\<infty\>=a+<around*|(|-\<infty\>|)>>
  </note>

  Another combination that we need is the following

  <\theorem>
    <label|(a-b)+(c-d)=(a+c)-(b+d)>Let <math|a,b,c,d\<in\><wide|\<bbb-R\>|\<bar\>>>
    with <math|a,b,c,d\<geqslant\>0> be such that
    <math|<around*|(|a-b|)>+<around*|(|c-d|)>> is well defined then
    <math|<around*|(|a+c|)>-<around*|(|b+d|)>> is well defined and
    <math|<around*|(|a-b|)>+<around*|(|c-d|)>=<around*|(|a+c|)>-<around*|(|b+d|)>>
  </theorem>

  <\proof>
    First assume that <math|<around*|(|a-b|)>+<around*|(|c-d|)>> is well
    defined, then we must consider the following cases for
    <math|<around*|(|a-b|)>>

    <\description>
      <item*|<math|<around*|(|a-b|)>\<in\>\<bbb-R\>>>then
      <math|a-b\<less\>\<infty\>> and thus by the previous theorem
      <math|a\<leqslant\>a,b\<less\>\<infty\>> giving
      <math|a,b\<in\>\<bbb-R\>> and thus <math|a-b\<in\>\<bbb-R\>> for
      <math|<around*|(|c-d|)>> we have then the following cases to consider

      <\description>
        <item*|<math|<around*|(|c-d|)>\<in\>\<bbb-R\>>>thus
        <math|c-d\<less\>\<infty\>> and thus by the previous theorem we have
        <math|0\<leqslant\>c\<less\>\<infty\>\<wedge\>0\<leqslant\>d\<less\>\<infty\>>
        so that <math|c,d\<in\>\<bbb-R\>>. As <math|a,b,c,d\<in\>\<bbb-R\>>
        we have that <math|<around*|(|a+c|)>-<around*|(|b+d|)>> is well
        defined and <math|<around*|(|a-b|)>+<around*|(|c-d|)>=<around*|(|a+c|)>-<around*|(|b+d|)>>

        <item*|<math|<around*|(|c-d|)>=\<infty\>>>then we have
        <math|c=\<infty\>> and <math|0\<leqslant\>d\<less\>\<infty\>\<Rightarrow\>d\<in\>\<bbb-R\>>
        (previous theorem). So <math|<around*|(|a+c|)>=\<infty\>>,
        <math|<around*|(|b+d|)>\<in\>\<bbb-R\>> and thus
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>> is well defined and
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=\<infty\>>, as
        <math|<around*|(|a-b|)>+<around*|(|c-d|)>=\<infty\>> we have also
        <math|<around*|(|a-b|)>+<around*|(|c-d|)>=<around*|(|a+c|)>-<around*|(|b+d|)>>

        <item*|<math|<around*|(|c-d|)>=-\<infty\>>>then
        <math|0\<leqslant\>c\<less\>\<infty\>> and <math|d=\<infty\>>
        (previous theorem). So <math|<around*|(|a+c|)>\<in\>\<bbb-R\>>,
        <math|<around*|(|b+d|)>=\<infty\>> giving the well defined
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=-\<infty\>=<around*|(|a-b|)>+<around*|(|c-d|)>>
      </description>

      <item*|<math|<around*|(|a-b|)>=\<infty\>>>then we must have
      <math|-\<infty\>\<less\><around*|(|c+d|)>>, <math|a=\<infty\>> and
      <math|0\<leqslant\>b\<less\>\<infty\>\<Rightarrow\>b\<in\>\<bbb-R\>>
      \ giving the possible cases for <math|<around*|(|c-d|)>>

      <\description>
        <item*|<math|<around*|(|c-d|)>\<in\>\<bbb-R\>>>then
        <math|c,d\<in\>\<bbb-R\>> and thus <math|<around*|(|a+c|)>=\<infty\>>
        and <math|<around*|(|b+d|)>\<in\>\<bbb-R\>> giving the well defined
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=\<infty\>=<around*|(|a-b|)>+<around*|(|c-d|)>>

        <item*|<math|<around*|(|c-d|)>=\<infty\>>>then <math|c=\<infty\>>,
        <math|0\<leqslant\>d\<less\>\<infty\>\<Rightarrow\>d\<in\>\<bbb-R\>>
        and thus <math|<around*|(|a+c|)>=\<infty\>>,
        <math|<around*|(|b+d|)>\<in\>\<bbb-R\>> giving the well defined
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=\<infty\>=<around*|(|a-b|)>+<around*|(|c-d|)>>
      </description>

      <item*|<math|<around*|(|a-b|)>=-\<infty\>>>then we must have
      <math|0\<leqslant\>a\<less\>\<infty\>\<Rightarrow\>a\<in\>\<bbb-R\>>,
      <math|b=\<infty\>> and <math|<around*|(|c-d|)>\<less\>\<infty\>> giving
      the following cases for <math|<around*|(|c-d|)>>\ 

      <\description>
        <item*|<math|<around*|(|c-d|)>\<in\>\<bbb-R\>>>then
        <math|c,d\<in\>\<bbb-R\>> so that <math|a+c\<in\>\<bbb-R\>> and
        <math|<around*|(|b+d|)>=\<infty\>> giving the well defined
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=-\<infty\>=<around*|(|a-b|)>+<around*|(|c-d|)>>

        <item*|<math|<around*|(|c-d|)>=-\<infty\>>>then
        <math|0\<leqslant\>c\<less\>\<infty\>\<Rightarrow\>c\<in\>\<bbb-R\>,d=\<infty\>>
        giving <math|<around*|(|a+c|)>\<in\>\<bbb-R\>>,
        <math|<around*|(|b+d|)>=\<infty\>> and thus the well defined
        <math|<around*|(|a+c|)>-<around*|(|b+d|)>=-\<infty\>=<around*|(|a-b|)>+<around*|(|c-d|)>>
      </description>
    </description>
  </proof>

  <\theorem>
    <label|a-b=c-d=\<gtr\>a+d=c+b>Let <math|a,b,c,d\<in\><wide|\<bbb-R\>|\<bar\>>>
    with <math|0\<leqslant\>a,b,c,d> then if <math|a-b,c-d> are well defined
    with <math|a-b=c-d> then <math|a+d,c+b> are well defined and
    <math|a+d=c+b>\ 
  </theorem>

  <\proof>
    We have the following cases to consider for <math|a-b>

    <\description>
      <item*|<math|a-b\<in\>\<bbb-R\>>>then from <math|a-b=c-d> we have that
      <math|c-d\<in\>\<bbb-R\>> hence <math|a,b,c,d\<in\>\<bbb-R\>> so using
      the properties of <math|\<bbb-R\>> we find <math|a+d=c+b>

      <item*|<math|a-b=\<infty\>>>then from <math|a-b=c-d> we have that
      <math|c-d=\<infty\>>. Using <reference|difference in extented reals> we
      must then have <math|a=\<infty\>,c=\<infty\>,b,d\<in\>\<bbb-R\>> hence
      <math|a+d,c+b> are well defined and <math|a+d=\<infty\>=c+b>

      <item*|<math|a-b=-\<infty\>>>then from <math|a-b=c-d> we have that
      <math|c-d=-\<infty\>>. Using <reference|difference in extented reals>
      we must then have <math|a,c\<in\>\<bbb-R\>,b=\<infty\>=d> hence
      <math|a+d,c+b> are well defined and <math|a+d=\<infty\>=c+b>
    </description>
  </proof>

  \;

  Although <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>>,+|\<rangle\>>>
  is not a group we can prove that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>><rsub|+>,+|\<rangle\>>>
  where <math|<wide|\<bbb-R\>|\<bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|x\<geqslant\>0|}>>
  is a abelian semi-group (see <reference|semi-group>) which is import
  because then all the theorems about generalized sums and semi-groups are
  valid.

  <\theorem>
    <label|the positive extented reals form a abelian
    semi-group><math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>><rsub|+>,+|\<rangle\>>>
    where <math|<wide|\<bbb-R\>|\<bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|x\<geqslant\>0|}>>
    forms a abelian semi-group
  </theorem>

  <\proof>
    First if <math|x,y\<in\><wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>> then we
    have [as <math|-\<infty\>\<less\>0>] either

    <\description>
      <item*|<math|x=\<infty\>\<vee\>y=\<infty\>>>then
      <math|x+y=\<infty\>\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>

      <item*|<math|x,y\<in\>\<bbb-R\><rsub|+>>>then as
      <math|0\<leqslant\>x,y> we have that
      <math|0\<leqslant\>x\<leqslant\>x+y\<Rightarrow\>x+y\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>
    </description>

    so that <math|+:<wide|\<bbb-R\>|\<bar\>><rsub|+>\<times\><wide|\<bbb-R\>|\<bar\>><rsub|+>\<rightarrow\><wide|\<bbb-R\>|\<bar\>><rsub|+>>
    defined by <math|<around*|(|x,y|)>\<rightarrow\>x+y> is indeed a
    function.<space|1em>

    <\description>
      <item*|Neutral Element>First <math|0\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>,
      next let \ <math|x\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>> then we have
      [as <math|-\<infty\>\<less\>0>] either\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsub|+>>>then <math|x+0=0+x=0> [as
        <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a group with
        neutral element 0

        <item*|<math|x=\<infty\>>>then <math|\<infty\>+0=\<infty\>=\<infty\>+0>
      </description>

      so <math|0\<in\><wide|\<bbb-R\>|\<bar\>>> is a neutral element.

      <item*|Associativity>Let <math|x,y,z\<in\><wide|\<bbb-R\>|\<bar\>>>
      then we have [as <math|-\<infty\>\<less\>0>] either

      <\description>
        <item*|<math|\<exists\>z\<in\><around*|{|x,y,z|}>\<vdash\>z=\<infty\>>>

        <item*|<math|x,y,z\<in\>\<bbb-R\><rsub|+>>>then
        <math|x+<around*|(|y+z|)>=<around*|(|x+y|)>+z> [as
        <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a group
      </description>

      <item*|Commutativity>Let <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>
      then as [<math|-\<infty\>\<less\>0>] we have either

      <\description>
        <item*|<math|x=\<infty\>\<vee\>y=\<infty\>>>and then
        <math|x+y=\<infty\>=y+x>

        <item*|<math|x,y\<in\>\<bbb-R\><rsub|+>>>then <math|x+y=y+x> [as
        <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a Abelian
        group]
      </description>
    </description>
  </proof>

  <\theorem>
    <label|adding of positive extented reals>Let
    <math|x,y,x<rprime|'>,y<rprime|'>\<in\><wide|\<bbb-R\>|\<bar\>>> be such
    that <math|0\<leqslant\>x\<leqslant\>x<rprime|'>> and
    <math|0\<leqslant\>y\<leqslant\>y> then
    <math|x+y\<leqslant\>x<rprime|'>+y<rprime|'>>
  </theorem>

  <\proof>
    We have the following possibilities for <math|x<rprime|'>,y<rprime|'>>

    <\description>
      <item*|<math|x<rprime|'>=\<infty\>\<vee\>y<rprime|'>=\<infty\>>>then
      <math|x<rprime|'>+y<rprime|'>=\<infty\>> so that
      <math|x+y\<leqslant\>\<infty\>=x<rprime|'>+y<rprime|'>>

      <item*|<math|x<rprime|'>,y<rprime|'>\<less\>\<infty\>>>then
      <math|x\<less\>\<infty\>,y\<less\>\<infty\>> so that using
      <reference|properties of positive, negative real numbers>
      <math|x\<leqslant\>x<rprime|'>\<Rightarrow\>x+y\<leqslant\>x<rprime|'>+y\<wedge\>y\<leqslant\>y<rprime|'>\<Rightarrow\>x<rprime|'>+y\<leqslant\>x<rprime|'>+y<rprime|'>\<Rightarrow\>x+y\<leqslant\>x<rprime|'>+y<rprime|'>>
    </description>
  </proof>

  We have also the distributive law in <math|<wide|\<bbb-R\>|\<bar\>>> as is
  proved in the following theorem, but we have to be carefull because for
  example <math|\<infty\>\<cdot\><around*|(|1-3|)>=\<infty\>\<cdot\><around*|(|-2|)>=-\<infty\>>
  but <math|\<infty\>\<cdot\>1+\<infty\>\<cdot\><around*|(|-3|)>=\<infty\>+<around*|(|-\<infty\>|)>>
  which not defined. So we must restrict the distributive law.

  <\theorem>
    <label|distributivity in the extented reals>Let
    <math|\<alpha\>\<in\>\<bbb-R\>>, <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>>
    then if <math|x+y> is defined we have
    <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
  </theorem>

  <\proof>
    <math|x+y> is defined only in the following cases\ 

    <\description>
      <item*|<math|x,y\<in\>\<bbb-R\>>>then
      <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      by the properties of the real numbers.

      <item*|<math|x\<in\>\<bbb-R\>,y=-\<infty\>>>then for <math|\<alpha\>>
      we have either\ 

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x\<in\>\<bbb-R\>,y=\<infty\>>>then for <math|\<alpha\>> we
      have either\ 

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>,y\<in\>\<bbb-R\>>>then for <math|\<alpha\>> we
      have either

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>,y\<in\>\<bbb-R\>>>then for <math|\<alpha\>>
      we have either\ 

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>,y=\<infty\>>>then for <math|\<alpha\>> we have
      either\ 

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>\<infty\>+\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<infty\>=\<alpha\>\<cdot\>\<infty\>+\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>,y=-\<infty\>>>then for <math|\<alpha\>> we
      have either\ 

      <\description>
        <item*|<math|\<alpha\>=0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=0\<cdot\>x+0\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<infty\>+\<infty\>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>+\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<gtr\>0>><math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<infty\>=\<alpha\>\<cdot\>\<infty\>+\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>
    </description>

    So in all cases we have <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
  </proof>

  <\theorem>
    <label|sup of set and sum>Let <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
    then we have\ 

    <\enumerate>
      <item>If <math|y\<in\>\<bbb-R\>> then

      <\enumerate>
        <item><math|sup<around*|(|A|)>+y> is well defined and
        <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y>

        <item><math|inf<around*|(|A|)>+y> is well defined and
        <math|inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=inf<around*|(|A|)>+y>
      </enumerate>

      <item>If <math|y\<in\><around*|[|0,\<infty\>|]>> and
      <math|A\<subseteq\><around*|[|0,\<infty\>|]>> then
      <math|sup<around*|(|A|)>+y> is well defined and
      <math|sup<around*|(|A+y|)>=sup<around*|(|A|)>+y>

      <item>If <math|y\<in\><around*|[|-\<infty\>,0|]>> and
      <math|A\<subseteq\><around*|[|-\<infty\>,0|]>> then
      <math|inf<around*|(|A|)>+y> is well defined and
      <math|inf<around*|(|A+y|)>=inf<around*|(|A|)>+y>
    </enumerate>

    \ <math|y\<in\>\<bbb-R\>> then we have that
    <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y>
    and <math|inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=inf<around*|(|A|)>+y>
    where the last sums are well defined.
  </theorem>

  <\proof>
    \ As <math|y\<in\>\<bbb-R\>> we have that
    <math|\<forall\>x\<in\>\<bbb-R\>> <math|x+y> is well defined and
    <math|sup<around*|(|A|)>+y>, <math|inf<around*|(|A|)>+y> is well defined.

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>Now <math|\<forall\>x\<in\>A> we have
        <math|x\<leqslant\>sup<around*|(|A|)>> so that by
        <reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z> we have
        <math|x+y\<leqslant\>sup<around*|(|A|)>+y> so that\ 

        <\equation>
          <label|eq 13.1.300>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<leqslant\>sup<around*|(|A|)>+y
        </equation>

        Assume now that <math|sup<around*|(|<around*|{|x+y\|y\<in\>A|}>|)>\<less\>sup<around*|(|A|)>+y\<Rightarrowlim\><rsub|y\<in\>\<bbb-R\>\<wedge\><text|<reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z>>>sup<around*|(|<around*|{|x+y\|y\<in\>A|}>|)>-y\<less\>sup<around*|(|A|)>>
        so by the definition of the supremum there exists a <math|z\<in\>A>
        such that <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>-y\<less\>z\<leqslant\>sup<around*|(|A|)>\<Rightarrowlim\><rsub|y\<in\>\<bbb-R\>
        and <text|<reference|x+z=y+z=\<gtr\>x=y>>>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<less\>z+y>
        a contradiction as <math|z+y\<in\><around*|{|x+y\|y\<in\>A|}>>. So we
        must have that <math|sup<around*|(|A|)>+y\<leqslant\>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>>
        which together with <reference|eq 13.1.300> gives\ 

        <\equation*>
          sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y
        </equation*>

        <item>Now <math|\<forall\>x\<in\>A> we have
        <math|inf<around*|(|A|)>\<leqslant\>x> so that by
        <reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z> we have
        <math|inf<around*|(|A|)>+y\<leqslant\>x+y> proving that\ 

        <\equation>
          <label|eq 13.2.300>inf<around*|(|A|)>+y\<leqslant\>inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>
        </equation>

        Assume now that <math|inf<around*|(|A|)>+y\<less\>inf<around*|(|<around*|{|x+y<around*|\||x\<in\>A|\|>|}>|)>>
        then using <reference|x+z=y+z=\<gtr\>x=y> we have
        <math|inf<around*|(|A|)>\<less\>inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>-y>
        so by the definition of the infinum there exists a <math|z\<in\>A>
        such that <math|inf<around*|(|A|)>\<leqslant\>z\<less\>inf<around*|(|<around*|{|x+y<around*|\||x\<in\>A|\|>|}>|)>-y\<Rightarrowlim\><rsub|y\<in\>\<bbb-R\>
        and <text|<reference|x+z=y+z=\<gtr\>x=y>>>z+y\<less\>inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>>
        a contradiction as <math|z+y\<in\><around*|{|x+y\|x\<in\>A|}>>. So we
        must have that <math|in<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<leqslant\>inf<around*|(|A|)>+y>
        proving that\ 

        <\equation*>
          inf<around*|(|A|)>+y=inf<around*|(|<around*|{|x+y<around*|\||x\<in\>A|\|>|}>|)>
        </equation*>
      </enumerate>

      <item>For <math|y\<in\><around*|[|0,\<infty\>|]>> we have either\ 

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then by 1.a we have that
        <math|sup<around*|(|A|)>+y> is well defined and
        <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y>

        <item*|<math|y=\<infty\>>>then as
        <math|A\<subseteq\><around*|[|0,\<infty\>|]>> we have that
        <math|\<forall\>x\<in\>A+y> that <math|x=a+y=a+\<infty\>=\<infty\>>
        so that <math|sup<around*|(|A+y|)>=\<infty\>>, further
        <math|0\<leqslant\>sup<around*|(|A|)>\<Rightarrow\>sup<around*|(|A|)>+y=sup<around*|(|A|)>+\<infty\>>
        is well defined and <math|sup<around*|(|A+y|)>=\<infty\>=sup<around*|(|A|)>+y>
      </description>

      <item>For <math|y\<in\><around*|[|-\<infty\>,0|]>> we have either\ 

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then by 1.b we have that
        <math|inf<around*|(|A|)>+y> is well defined and
        <math|inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=inf<around*|(|A|)>+y>

        <item*|<math|y=\<infty\>>>then as
        <math|A\<subseteq\><around*|[|-\<infty\>,0|]>> we have that
        <math|\<forall\>x\<in\>A+y> that <math|x=a+y=a+<around*|(|-\<infty\>|)>=-\<infty\>>
        so that <math|inf<around*|(|A+y|)>=-\<infty\>>, further
        <math|inf<around*|(|A|)>\<leqslant\>0\<Rightarrow\>inf<around*|(|A|)>+y=inf<around*|(|A|)>+<around*|(|-\<infty\>|)>>
        is well defined and <math|inf<around*|(|A+y|)>=-\<infty\>=inf<around*|(|A|)>+y>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|-sup A=inf -A>Let <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
    be a non empty set then

    <\enumerate>
      <item> <math|-sup<around*|(|A|)>=inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>>

      <item><math|-inf<around*|(|A|)>=sup<around*|(|<around*|{|-x\|x\<in\>A|}>|)>>

      <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
      <math|\<alpha\>\<cdot\>sup<around*|(|A|)>=sup<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>>

      <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
      <math|\<alpha\>\<cdot\>inf<around*|(|A|)>=inf<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>A> then <math|x\<leqslant\>sup<around*|(|A|)>\<Rightarrowlim\><rsub|<text|<reference|x\<less\>=y=\<gtr\>-y\<less\>=-x>>>-sup<around*|(|A|)>\<leqslant\>-x>
      so that\ 

      <\equation>
        <label|eq 13.3.301>-sup<around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>
      </equation>

      Assume now that <math|-sup<around*|(|A|)>\<less\>inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>>
      then using <reference|x\<less\>=y=\<gtr\>-y\<less\>=-x> we have
      <math|-inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>\<less\>sup<around*|(|A|)>>
      so by the definition of the supremum there exists a <math|z\<in\>A>
      such that <math|-inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>\<less\>z\<leqslant\>sup<around*|(|A|)>\<Rightarrowlim\><rsub|<text|<reference|x\<less\>=y=\<gtr\>-y\<less\>=-x>>>-z\<less\>inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>>
      which as <math|-z\<in\><around*|{|-x<around*|\||x\<in\>A|\<nobracket\>>|}>>
      is a contradiction. So we must have
      <math|inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>\<leqslant\>-sup<around*|(|A|)>>
      which together with <reference|eq 13.3.301> proves that\ 

      <\equation*>
        -sup<around*|(|A|)>=inf<around*|(|<around*|{|-x\|x\<in\>A|}>|)>
      </equation*>

      <item>Take <math|B=<around*|{|-x\|x\<in\>A|}>> then
      <math|A=<around*|{|-x\|x\<in\>B|}>> and
      <math|-inf<around*|(|A|)>=-inf<around*|(|<around*|{|-x\|x\<in\>B|}>|)>\<equallim\><rsub|<around*|(|1|)>>-<around*|(|-sup<around*|(|B|)>|)>=sup<around*|(|<around*|{|-x\|x\<in\>A|}>|)>>
      proving\ 

      <\equation*>
        -inf<around*|(|A|)>=sup<around*|(|<around*|{|-x\|x\<in\>A|}>|)>
      </equation*>

      <item>We must consider two cases for <math|\<alpha\>>\ 

      <\description>
        <item*|<math|\<alpha\>=0>>In this cases
        <math|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\<nobracket\>>|}>=<around*|{|0|}>>
        and thus <math|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>=sup<around*|(|<around*|{|0|}>|)>=0=0\<cdot\>sup<around*|(|A|)>=\<alpha\>\<cdot\>sup<around*|(|A|)>>

        <item*|<math|0\<neq\>\<alpha\>>><math|\<forall\>x\<in\>A> we have
        have <math|x\<leqslant\>sup<around*|(|A|)>\<Rightarrowlim\><rsub|\<alpha\>\<geqslant\>0>\<alpha\>\<cdot\>x\<leqslant\>\<alpha\>\<cdot\>sup<around*|(|A|)>>
        giving

        <\equation>
          <label|eq 14.4.472>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>\<leqslant\>\<alpha\>\<cdot\>sup<around*|(|A|)>
        </equation>

        Assume now that <math|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>\<less\>\<alpha\>\<cdot\>sup<around*|(|A|)>\<Rightarrow\><frac|1|\<alpha\>>\<cdot\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>\<less\>sup<around*|(|A|)>>
        hence by the definition of the supremum there exists a
        <math|z\<in\>A> such that <math|<frac|1|\<alpha\>>\<cdot\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>\<less\>z\<leqslant\>sup<around*|(|A|)>\<Rightarrow\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>\<less\>\<alpha\>\<cdot\>z>
        a contradiction as <math|\<alpha\>\<cdot\>z\<in\><around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>>.
        So we must have that <math|\<alpha\>\<cdot\>sup<around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>>
        which together with <reference|eq 14.4.472> gives

        <\equation*>
          sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>=\<alpha\>\<cdot\>sup<around*|(|A|)>
        </equation*>
      </description>

      <item>We must consider two cases for <math|\<alpha\>>\ 

      <\description>
        <item*|<math|\<alpha\>=0>>In this cases
        <math|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\<nobracket\>>|}>=<around*|{|0|}>>
        and thus <math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>=inf<around*|(|<around*|{|0|}>|)>=0=0\<cdot\>inf<around*|\<nobracket\>|A|)>=\<alpha\>\<cdot\>inf<around*|(|A|)>>

        <item*|<math|0\<neq\>\<alpha\>>><math|\<forall\>x\<in\>A> we have
        have <math|inf<around*|(|A|)>\<leqslant\>x\<Rightarrowlim\><rsub|\<alpha\>\<geqslant\>0>\<alpha\>\<cdot\>inf<around*|(|A|)>\<leqslant\>\<alpha\>\<cdot\>x>
        giving

        <\equation>
          <label|eq 14.5.472>\<alpha\>\<cdot\>inf<around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>
        </equation>

        Assume now that <math|\<alpha\>\<cdot\>inf<around*|(|A|)>\<less\>><math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>\<less\>\<Rightarrow\>inf<around*|(|A|)>\<less\><frac|1|\<alpha\>>\<cdot\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>>
        hence by the definition of the infinum there exists a <math|z\<in\>A>
        such that <math|inf<around*|(|A|)>\<leqslant\>z\<less\><frac|1|\<alpha\>>\<cdot\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>\<Rightarrow\>\<alpha\>\<cdot\>z\<less\>inf<around*|(|<around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>|)>>
        a contradiction as <math|\<alpha\>\<cdot\>z\<in\><around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>>.
        So we must have that <math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>\<leqslant\>inf<around*|(|A|)>>
        which together with <reference|eq 14.5.472>gives

        <\equation*>
          inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>=\<alpha\>\<cdot\>inf<around*|(|A|)>
        </equation*>
      </description>
    </enumerate>

    \;
  </proof>

  <section|Topology on <math|<wide|\<bbb-R\>|\<bar\>>>>

  <\definition>
    <label|absolute value in the extended reals>Let
    <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> then
    <math|<around*|\||x|\|>=<choice|<tformat|<table|<row|<cell|x if
    0\<leqslant\>x>>|<row|<cell|-x if x\<less\>0>>>>>>,
    <math|<around*|\|||\|>> is called the absolute value on the extended
    reals.\ 
  </definition>

  <\note>
    From the definition it is clear that <math|x\<leqslant\><around*|\||x|\|>>
  </note>

  The absolute value on the extended reals has similar properties as the
  absolute value on the real numbers. However we must take in account that
  the sum is not always defined.

  <\theorem>
    <label|absolute value on the extended real properties>The absolute value
    has the following properties

    <\enumerate>
      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have that
      <math|<around*|\||x|\|>=<around*|\||x|\|><rsub|r>> (where we use the
      special notation <math|<around*|\|||\|><rsub|r>> to indicate the
      absolute value on the real numbers (see <reference|norm in real space>)

      <item><math|<around*|\||x|\|>=0\<Leftrightarrow\>x=0>

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<bar\>><text| we have
      ><around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<bar\>>> such that
      <math|x+y> is well defined we have that
      <math|<around*|\||x+y|\|>\<leqslant\><around*|\||x|\|>+<around*|\||y|\|>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> then
      <math|<around*|\||x|\|>=<choice|<tformat|<table|<row|<cell|x if
      x\<geqslant\>0>>|<row|<cell|-x if x\<less\>0>>>>>\<equallim\><rsub|<text|<reference|norm
      in real space>>><around*|\||x|\|><rsub|r>>

      <item>First <math|<around*|\||0|\|>\<equallim\><rsub|0\<leqslant\>0>>0
      by definition, second if <math|<around*|\||x|\|>=0> then if
      <math|x\<neq\>0> we have either <math|x\<less\>0\<Rightarrow\>0=<around*|\||x|\|>=-x\<neq\>0>
      a contradiction or <math|0\<less\>x\<Rightarrow\>0=<around*|\||x|\|>=x\<neq\>0>
      again a contradiction so we must have <math|x=0>

      <item>We must consider the following cases for <math|x,y>\ 

      <\description>
        <item*|<math|0\<leqslant\>x\<wedge\>0\<leqslant\>y>>then by
        <reference|x\<less\>=y=\<gtr\>lx\<less\>=ly> we have that
        <math|0\<leqslant\>x\<cdot\>y> so that
        <math|<around*|\||x\<cdot\>y|\|>=x\<cdot\>y=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

        <item*|<math|0\<leqslant\>x\<wedge\>y\<leqslant\>0>>then by
        \ <reference|x\<less\>=y=\<gtr\>lx\<less\>=ly> we have that
        <math|x\<cdot\>y\<leqslant\>0> so that
        <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>=x\<cdot\><around*|(|-y|)>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

        <item*|<math|x\<leqslant\>0\<wedge\>0\<leqslant\>y>>then by
        \ <reference|x\<less\>=y=\<gtr\>lx\<less\>=ly> we have that
        <math|x\<cdot\>y\<leqslant\>0> so that
        <math|<around*|\||x\<cdot\>y|\|>=-<around*|(|x\<cdot\>y|)>=<around*|(|-x|)>\<cdot\>y=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

        <item*|<math|x\<leqslant\>0\<wedge\>y\<leqslant\>0>>then by
        \ <reference|x\<less\>=y=\<gtr\>lx\<less\>=ly> we have that
        <math|0\<leqslant\>x\<cdot\>y> so that
        <math|<around*|\||x\<cdot\>y|\|>=x\<cdot\>y=<around*|(|-<around*|\||x|\|>|)>\<cdot\><around*|(|-<around*|\||y|\|>|)>=<around*|(|-1|)>\<cdot\><around*|(|-1|)>\<cdot\><around*|\||x|\|>\<cdot\><around*|\||y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>
      </description>

      \ <item>We have to consider the following (valid) cases for <math|x,y>\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||x+y|\|><rsub|r>\<leqslant\><around*|\||x<rsub|r>|\|>+<around*|\||y|\|><rsub|r>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=<around*|\||x|\|>+\<infty\>=<around*|\||x|\|>+<around*|\||\<infty\>|\|>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||-\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=<around*|\||x|\|>+\<infty\>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=\<infty\>+<around*|\||y|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=\<infty\>+\<infty\>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=\<infty\>+<around*|\||y|\|>=<around*|\||x|\|>+<around*|\||y|\|>>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|<around*|\||x+y|\|>=<around*|\||-\<infty\>|\|>=\<infty\>\<leqslant\>\<infty\>=<around*|\||x|\|>+<around*|\||y|\|>>
      </description>
    </enumerate>
  </proof>

  To define the topology on <math|<wide|\<bbb-R\>|\<bar\>>> we first define
  some sets of sets that we use to create a generating basis for the topology
  (see <reference|generating basis of a topology>).

  <\notation>
    In what follows <math|\<varepsilon\>\<gtr\>0> means
    <math|\<varepsilon\>\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<gtr\>0>
  </notation>

  <\definition>
    <label|sets for basis of topology on the extented
    reals><index|<math|\<cal-B\><rsub|\<bbb-R\>>>><index|<math|\<cal-B\><rsub|\<infty\>>>><index|<math|\<cal-B\><rsub|-\<infty\>>>><index|<math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>>We
    define the following sets

    <\enumerate>
      <item><math|\<cal-B\><rsub|\<bbb-R\>>=<around*|{|<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\|x\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<in\>\<bbb-R\>\<vdash\>\<varepsilon\>\<gtr\>0|}>>
      (the set of open balls in <math|\<bbb-R\>> using the metric defined by
      the norm <math|<around*|\|||\|>>)

      <item><math|\<cal-B\><rsub|\<infty\>>=<around*|{|<around*|]|x,\<infty\>|]>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|-\<infty\>>=<around*|{|<around*|[|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>=\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>><big|cup>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<bar\>>|)>>
    </enumerate>
  </definition>

  <\theorem>
    <label|topology on extented reals><index|topology on
    <math|<wide|\<bbb-R\>|\<bar\>>>><index|<math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>><math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    forms a generating basis for a topology
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> on
    <math|<wide|\<bbb-R\>|\<bar\>>>. Further if
    <math|\<cal-T\><rsub|\<bbb-R\>>> is the canoncial topology on
    <math|\<bbb-R\>> (defined by the norm <math|<around*|\|||\|>>) then
    <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    and <math|\<cal-T\><rsub|\<bbb-R\>>> is the subspace topology on
    <math|\<bbb-R\>> induced by <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>,
    in other words <math|\<cal-T\><rsub|\<bbb-R\>>=<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
  </theorem>

  <\proof>
    We have\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\><wide|\<bbb-R\>|\<bar\>>> we have either\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then
        <math|x\<in\><around*|]|x-1,x+1|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>

        <item*|<math|x=\<infty\>>>then <math|\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>

        <item*|<math|x=-\<infty\>>>then <math|-\<infty\>\<in\><around*|[|-\<infty\>,0|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      </description>

      which proves that <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<bar\>>>
      there exists a <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      such that <math|x\<in\>B>

      <item>If <math|A,B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
      we have either

      <\description>
        <item*|<math|A,B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>then
        <math|A=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>,
        <math|B=<around*|]|y-\<delta\>,y+\<delta\>|[>>, if
        <math|z\<in\>A<big|cap>B> then we have
        <math|z\<in\>\<bbb-R\>\<wedge\>x-\<varepsilon\>\<less\>z\<less\>x+\<varepsilon\>\<wedge\>y-\<delta\>\<less\>z\<less\>y+\<delta\>>
        so that <math|\<rho\>=min<around*|(|z-x+\<varepsilon\>,z-y+\<delta\>,x+\<varepsilon\>-z,y+\<delta\>-z|)>\<gtr\>0>,
        then we have <math|-z+x-\<varepsilon\>\<less\>-\<rho\>\<Rightarrow\>x-\<varepsilon\>\<less\>z-\<rho\>>,
        <math|-z+y-\<delta\>\<less\>-\<rho\>\<Rightarrow\>y-\<delta\>\<less\>z-\<rho\>>,
        <math|z+\<rho\>\<less\>x+\<varepsilon\>> and
        <math|z+\<rho\>\<less\>y+\<delta\>> proving that
        <math|<around*|]|z-\<rho\>,z+\<rho\>|[>\<subseteq\>A,B>. So there
        exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|z\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>then
        <math|A=<around*|]|x,\<infty\>|]>> and
        <math|B=<around*|]|y-\<delta\>,y+\<delta\>|[>>. if
        <math|z\<in\>A<big|cap>B> then we have
        <math|z\<in\>\<bbb-R\>\<wedge\>x\<less\>z\<wedge\>y-\<delta\>\<less\>z\<less\>y+\<delta\>>
        so that <math|\<rho\>=min<around*|(|z-x,z-y+\<delta\>,y+\<delta\>-z|)>\<gtr\>0>,
        then we have <math|x-z\<less\>-\<rho\>\<Rightarrow\>x\<less\>z-\<delta\>>,
        <math|> <math|-z+y-\<delta\>\<less\>-\<rho\>> and
        <math|z+\<rho\>\<less\>y+\<delta\>> proving that
        <math|<around*|]|z-\<rho\>,z+\<rho\>|[>\<subseteq\>A,B>. So there
        exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|z\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>then
        <math|A=<around*|[|-\<infty\>,x|[>> and
        <math|B=<around*|]|y-\<delta\>,y+\<delta\>|[>>, if
        <math|z\<in\>A<big|cap>B> then <math|z\<in\>\<bbb-R\>\<wedge\>z\<less\>x>,
        <math|y-\<delta\>\<less\>z\<less\>y+\<delta\>> so that
        <math|\<rho\>=min<around*|(|x-z,z-y+\<delta\>,y+\<delta\>-z|)>\<gtr\>0>,
        then we have <math|-z+y-\<delta\>\<less\>-\<rho\>\<Rightarrow\>y-\<delta\>\<less\>z-\<rho\>>,
        <math|z+\<rho\>\<less\>x> and <math|z+\<rho\>\<less\>y+\<delta\>>
        proving that <math|<around*|]|z-\<rho\>,z+\<rho\>|[>\<subseteq\>A,B>.
        So there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        with <math|z\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>this
        is equal to the case <math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>
        by interchanging <math|A> and <math|B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>this
        is equal to the case <math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>
        by interchanging <math|A> and <math|B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>then
        <math|A=<around*|]|x,\<infty\>|]>> and
        <math|B=<around*|]|y,\<infty\>|]>>, if <math|z\<in\>A<big|cap>B> then
        <math|x\<less\>z\<wedge\>y\<less\>z\<Rightarrow\>max<around*|(|x,y|)>\<less\>z\<Rightarrow\>z\<in\><around*|]|max<around*|(|x,y|)>,\<infty\>|]>>
        and as <math|x,y\<leqslant\>max<around*|(|x,y|)>> we have
        <math|<around*|]|max<around*|(|x,y|)>,\<infty\>|]>\<subseteq\>A,B>.
        So there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>><rsub|>>
        with <math|z\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>then
        <math|A=<around*|]|x,\<infty\>|]>> and
        <math|B=<around*|[|-\<infty\>,y|[>>, if <math|z\<in\>A<big|cap>B>
        then <math|x\<less\>z\<wedge\>z\<less\>y\<Rightarrow\>z\<in\>\<bbb-R\>>,
        take then <math|\<rho\>=min<around*|(|z-x,y-z|)>\<gtr\>0>, then we
        have <math|-z+x\<less\>-\<rho\>\<Rightarrow\>x\<less\>z+\<rho\>> and
        <math|z+\<rho\>\<less\>y> proving that
        <math|<around*|]|z-\<rho\>,z+\<rho\>|[>\<subseteq\>A,B>. So there
        exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>><rsub|>>
        with <math|z\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>this
        is equal to the case <math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>
        by interchanging <math|A> and <math|B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>then
        <math|A=<around*|[|-\<infty\>,x|[>> and
        <math|B=<around*|[|-\<infty\>,y|[>>, if <math|z\<in\>A<big|cap>B>
        then <math|z\<less\>y\<wedge\>z\<less\>x\<Rightarrow\>z\<less\>min<around*|(|x,y|)>\<Rightarrow\>z\<in\><around*|[|-\<infty\>.min<around*|(|x,y|)>|[>>
        and as <math|min<around*|(|x,y|)>\<leqslant\>x,y> we have
        <math|<around*|[|-\<infty\>,min<around*|(|x,y|)>|[>\<subseteq\>A,B>.
        So there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        with <math|z\<in\>C\<subseteq\>A<big|cap>B>
      </description>

      This proves that <math|\<forall\>A,B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      we have if <math|z\<in\>A<big|cap>B> then there exists a
      <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such that
      <math|z\<in\>C\<subseteq\>A<big|cap>B>.
    </enumerate>

    Using the definition of a generating basis for a topology (see
    <reference|generating basis of a topology>) we have by (1) and (2) that
    <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is the generating basis
    for a topology on <math|<wide|\<bbb-R\>|\<bar\>>>, we call this topology
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>, then we we have
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<equallim\><rsub|<text|<reference|generating
    basis of a topology>>><around*|{|U\<subseteq\><wide|\<bbb-R\>|\<bar\>>\|\<forall\>x\<in\>U\<vDash\>\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>
    such that x\<in\>B\<subseteq\>U|}>>. As
    <math|\<cal-T\><rsub|\<bbb-R\>>=<around*|{|U\<subseteq\>\<bbb-R\>\|\<forall\>x\<in\>U\<vDash\>\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>|}>>
    we have as <math|\<cal-B\><rsub|\<bbb-R\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    and <math|\<bbb-R\>\<subseteq\><wide|\<bbb-R\>|\<bar\>>> proving that

    <\equation>
      <label|eq 13.1.123>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>
    </equation>

    Finally if <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then if
    <math|x\<in\>U<big|cap>\<bbb-R\>> there exists a
    <math|B<rprime|'>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
    <math|x\<in\>B<rprime|'>\<subseteq\>U> we have either

    <\description>
      <item*|<math|B<rprime|'>=<around*|]|z-\<varepsilon\>,z+\<varepsilon\>|[>>>then
      <math|B<rprime|'>\<in\>\<cal-B\><rsub|\<bbb-R\>>\<Rightarrowlim\><rsub|take
      B=B<rprime|'>>\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>\<vDash\>x\<in\>B\<subseteq\>U>

      <item*|<math|B<rprime|'>=<around*|]|z,\<infty\>|]>>>then as
      <math|x\<in\>\<bbb-R\>> we have <math|x\<neq\>\<infty\>> so that
      <math|x\<in\><around*|]|z,\<infty\>|[>\<Rightarrow\>z\<less\>x>, then
      \ <math|\<varepsilon\>=x-z\<gtr\>0> proving that
      <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>=<around*|]|z,z+\<varepsilon\>|[>\<subseteq\><around*|]|z,\<infty\>|[>\<subseteq\>B<rprime|'>\<subseteq\>U\<Rightarrowlim\><rsub|take
      B=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>
      with <math|x\<in\>B\<subseteq\>U>

      <item*|<math|B<rprime|'>=<around*|[|-\<infty\>,z|[>>>then as
      <math|x\<in\>\<bbb-R\>> we have <math|x\<neq\>-\<infty\>> so that
      <math|x\<in\><around*|]|-\<infty\>,z|[>\<Rightarrow\>x\<less\>z>, then
      <math|\<varepsilon\>=z-x\<gtr\>0> proving that
      <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|]|x-\<varepsilon\>,z|[>\<subseteq\><around*|]|-\<infty\>,z|[>\<subseteq\>B<rprime|'>\<Rightarrowlim\><rsub|take
      B=<around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>>\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>
      with <math|x\<in\>B\<subseteq\>U>
    </description>

    proving that <math|\<forall\>x\<in\>U<big|cap>\<bbb-R\>> we have
    <math|\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>> such that
    <math|x\<in\>B\<subseteq\>U<big|cap>\<bbb-R\>> proving that
    <math|U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>> and thus that

    <\equation>
      <label|eq 13.2.123><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>
    </equation>

    If <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then
    <math|U\<subseteq\>\<bbb-R\>\<Rightarrow\>U=U<big|cap>\<bbb-R\>> and as
    by <reference|eq 13.1.123> we have <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    we have that <math|U\<in\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    proving that <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    which together with <reference|eq 13.2.123> proves that
    <math|\<cal-T\><rsub|\<bbb-R\>>> is the subspace topology of
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> on <math|\<bbb-R\>>.
  </proof>

  <\theorem>
    <label|closed sets in the extended reals>We have the following closed
    sets in <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> where
    <math|x\<in\>\<bbb-R\>>

    <\enumerate>
      <item><math|<around*|[|-\<infty\>,x|]>>

      <item><math|<around*|[|x,\<infty\>|]>>

      <item><math|<around*|{|x|}>>

      <item><math|<around*|[|-\<infty\>,\<infty\>|]>>

      <item><math|<around*|{|-\<infty\>,\<infty\>|}>>

      <item><math|<around*|{|-\<infty\>|}>>

      <item><math|<around*|{|\<infty\>|}>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|y\<in\><wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,x|]>\<Leftrightarrow\>y\<in\>\<neg\><around*|(|-\<infty\>\<leqslant\>y\<wedge\>y\<leqslant\>x|)>\<Leftrightarrow\><around*|(|y\<less\>-\<infty\>\<vee\>x\<less\>y|)>\<Leftrightarrow\>x\<less\>y\<Leftrightarrow\>y\<in\><around*|]|x,\<infty\>|]>>
      we have that <math|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,x|]>=<around*|]|x,\<infty\>|]>>
      by definition a open set

      <item>As <math|y\<in\><wide|\<bbb-R\>|\<bar\>>\\<around*|[|x,\<infty\>|]>\<Leftrightarrow\>y\<in\>\<neg\><around*|(|x\<leqslant\>y\<wedge\>y\<leqslant\>\<infty\>|)>\<Leftrightarrow\><around*|(|y\<less\>x\<vee\>\<infty\>\<less\>y|)>\<Leftrightarrow\>y\<less\>x\<Leftrightarrow\>y\<in\><around*|[|-\<infty\>,x|[>>
      we have that <math|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|x,\<infty\>|]>=<around*|[|-\<infty\>,x|[>>
      by definiton a open set.

      <item><math|<around*|{|x|}>=<around*|[|-\<infty\>,x|]><big|cap><around*|[|x,\<infty\>|]>>
      by (1) and (2) a intersection of closed sets and thus closed

      <item>This is trivial as <math|<wide|\<bbb-R\>|\<bar\>>=<around*|[|-\<infty\>,\<infty\>|]>>

      <item>As <math|<wide|\<bbb-R\>|\<bar\>>\\<around*|{|-\<infty\>,\<infty\>|}>=\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      <math|>we have that <math|<wide|\<bbb-R\>|\<bar\>>\\<around*|{|-\<infty\>,\<infty\>|}>>
      is open so that <math|<around*|{|-\<infty\>,\<infty\>|}>> is closed.

      <item>This follows from <math|<around*|{|-\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|-\<infty\>,0|]>>
      a intersection of closed sets.

      <item>This follows from <math|<around*|{|\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|0,\<infty\>|]>>
      a intersection of closed sets.
    </enumerate>
  </proof>

  We have the following characterization of open sets in
  <math|<wide|\<bbb-R\>|\<bar\>>.>

  <\theorem>
    Let <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> and <math|x\<in\>U> a open set
    then we have\ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>U>

      <item>If <math|x=\<infty\>> then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|x\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>

      <item>If <math|x=-\<infty\>> then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|x\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> and <math|x\<in\>U> a open set
    then\ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> we have as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> the following possible
      cases

      <\description>
        <item*|<math|\<exists\>\<delta\>\<gtr\>0,y\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|y-\<delta\>,y+\<delta\>|[>>>then
        <math|y-\<delta\>\<less\>x\<less\>y+\<delta\>> take then
        <math|\<varepsilon\>=min<around*|(|x-<around*|(|y-\<delta\>|)>,<around*|(|y+\<delta\>|)>-x|)>\<gtr\>0>.
        Then <math|x-\<varepsilon\>\<gtr\>x-<around*|(|x-<around*|(|y-\<delta\>|)>|)>=y-\<delta\>>
        and <math|x+\<varepsilon\>\<less\>x+<around*|(|y+\<delta\>|)>-x=y+\<delta\>>
        so that <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|]|y-\<delta\>,y+\<delta\>|[>\<subseteq\>U>
        proving that <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\>U>.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|\<delta\>,\<infty\>|]>>>then
        <math|\<delta\>\<less\>x\<less\>\<infty\>>, take then
        <math|\<varepsilon\>=x-\<delta\>\<gtr\>0> then we have
        <math|x-\<varepsilon\>=x-x+\<delta\>=\<delta\>> and
        <math|x+\<varepsilon\>\<less\>\<infty\>> so that
        <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|[|-\<infty\>,\<delta\>|[>>>then
        <math|-\<infty\>\<less\>x\<less\>\<delta\>>, take then
        <math|\<varepsilon\>=\<delta\>-x\<gtr\>0> then we have
        <math|x+\<varepsilon\>\<less\>\<delta\>> and
        <math|-\<infty\>\<less\>x-\<varepsilon\>> so that
        <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
      </description>

      <item>If <math|x=\<infty\>> then we have as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> the following possible
      cases

      <\description>
        <item*|<math|\<exists\>\<delta\>\<gtr\>0,y\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|y-\<delta\>,y+\<delta\>|[>>>then
        <math|\<infty\>\<less\>y+\<delta\>\<less\>\<infty\>> a contradiction
        so this will never happen.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|\<delta\>,\<infty\>|]>>>then
        as <math|1\<less\>\<infty\>=x\<leqslant\>\<infty\>> we have if we
        take <math|\<varepsilon\>=max<around*|(|\<delta\>,1|)>> we have
        <math|\<delta\>\<leqslant\>\<varepsilon\>> so that
        <math|x\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|[|-\<infty\>,\<delta\>|[>>>then
        <math|\<infty\>=x\<less\>\<delta\>\<less\>\<infty\>> a contradiction
        so thiw will not apply
      </description>

      <item>If <math|x=-\<infty\>> then we have as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> the following possible
      cases

      <\description>
        <item*|<math|\<exists\>\<delta\>\<gtr\>0,y\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|y-\<delta\>,y+\<delta\>|[>>>then
        <math|-\<infty\>\<less\>y-\<delta\>\<less\>x=-\<infty\>> a
        contradiction.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|\<delta\>,\<infty\>|]>>>then
        <math|-\<infty\>\<less\>\<delta\>\<less\>x=-\<infty\>> a
        contradiction

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|[|-\<infty\>,\<delta\>|[>>>then
        as <math|-\<infty\>\<less\>-1> we have if we take
        <math|\<varepsilon\>=-min<around*|(|-1,\<delta\>|)>\<gtr\>0> that
        <math|-\<varepsilon\>\<leqslant\>\<delta\>> so that
        <math|x=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|open sets and addition scalar multiplication>If
    <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then if
    <math|\<delta\>\<in\>\<bbb-R\>> we have that
    <math|\<delta\>+U=<around*|{|\<delta\>+x\|x\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    and if <math|\<delta\>\<neq\>0> we have
    \ <math|\<delta\>\<cdot\>U=<around*|{|\<delta\>\<cdot\>x\|x\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
  </theorem>

  <\proof>
    \ If <math|x\<in\>\<delta\>+U> then there exists a <math|u\<in\>U> such
    that <math|x=\<delta\>+u> we have then for <math|u> the following
    possibilities

    <\description>
      <item*|<math|u\<in\>\<bbb-R\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
      then <math|u-\<varepsilon\>\<less\>u\<less\>u-\<varepsilon\>\<Rightarrow\><around*|(|u-\<varepsilon\>|)>+\<delta\>\<less\>u+\<delta\>\<less\><around*|(|u+\<varepsilon\>|)>+\<delta\>>
      proving that <math|x=u+\<delta\>\<in\><around*|]|<around*|(|u-\<varepsilon\>|)>+\<delta\>,<around*|(|u+\<varepsilon\>|)>+\<delta\>|[>=<around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>>.
      Also if <math|y\<in\><around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>>
      then <math|<around*|(|u+\<delta\>|)>-\<varepsilon\>\<less\>y\<less\><around*|(|u+\<delta\>|)>+\<varepsilon\>\<Rightarrow\>u-\<varepsilon\>\<less\>y-\<delta\>\<less\>u+\<varepsilon\>\<Rightarrow\>y-\<delta\>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
      so that <math|y=\<delta\>+<around*|(|y-\<delta\>|)>\<in\>\<delta\>+U>
      proving that <math|x\<in\><around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>\<subseteq\>\<delta\>+U>.
      This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      such that <math|x\<in\>B\<subseteq\>\<delta\>+U>

      <item*|<math|u=\<infty\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u=\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>,
      take now <math|<around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>> then
      <math|x=\<delta\>+\<infty\>=\<infty\>\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>>.
      If now <math|y\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>>
      then we have either <math|y=\<infty\>=\<delta\>+\<infty\>=\<delta\>+u\<in\>\<delta\>+U>
      or <math|y\<in\>\<bbb-R\>> so that <math|\<varepsilon\>+\<delta\>\<less\>y\<less\>\<infty\>\<Rightarrow\>\<varepsilon\>\<less\>y-\<delta\>\<less\>\<infty\>\<Rightarrow\>y-\<delta\>\<subset\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U\<Rightarrow\>y=\<delta\>+y-\<delta\>\<in\>\<delta\>+U>
      proving that <math|x\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>\<subseteq\>\<delta\>+U>.
      This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      such that <math|x\<in\>B\<subseteq\>\<delta\>+U>.

      <item*|<math|u=-\<infty\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
      take now <math|<around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>> then
      <math|x=\<delta\>+<around*|(|-\<infty\>|)>=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>>.
      If now <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>>
      the we have either <math|y=-\<infty\>=\<delta\>+<around*|(|-\<infty\>|)>=\<delta\>+u\<in\>\<delta\>+U>
      or <math|y\<in\>\<bbb-R\>> so that <math|-\<infty\>\<less\>y\<less\>-\<varepsilon\>+\<delta\>\<Rightarrow\>-\<infty\>\<less\>y-\<delta\>\<less\>-\<varepsilon\>\<Rightarrow\>y-\<delta\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>+<around*|(|y-\<delta\>|)>\<in\>\<delta\>+U>
      proving that <math|x\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>\<subseteq\>U>.
      This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      such that <math|x\<in\>B\<subseteq\>U>
    </description>

    As in all possible cases we have <math|\<forall\>x\<in\>\<delta\>+U> that
    <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such
    that <math|x\<in\>B\<subseteq\>\<delta\>+U> proving that
    <math|\<delta\>+U> is a open set.

    If <math|x\<in\>\<delta\>\<cdot\>U> then there exists a <math|u\<in\>U>
    such that <math|x=\<delta\>\<cdot\>u> we have then for <math|u> the
    following possibilities

    <\description>
      <item*|<math|u\<in\>\<bbb-R\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
      so that <math|u-\<varepsilon\>\<less\>u\<less\>u+\<varepsilon\>>
      consider then the following possibilities for <math|\<delta\>\<neq\>0>:

      <\description>
        <item*|<math|0\<less\>\<delta\>>>then
        <math|\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>\<less\>\<delta\>\<cdot\>u\<less\>\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>>
        so that <math|x=\<delta\>\<cdot\>u\<in\><around*|]|\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>,\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>|[>=<around*|]|u\<cdot\>\<delta\>-\<rho\>,u\<cdot\>\<delta\>+\<rho\>|[>>
        where <math|\<rho\>=\<delta\>\<cdot\>\<varepsilon\>\<gtr\>0>. If now
        <math|y\<in\><around*|]|u\<cdot\>\<delta\>-\<rho\>,u*\<cdot\>\<delta\>+\<rho\>|[>\<Rightarrow\>u\<cdot\>\<delta\>-\<rho\>\<less\>y\<less\>u\<cdot\>\<delta\>+\<rho\>\<Rightarrow\><frac|u\<cdot\>\<delta\>|\<delta\>>-<frac|\<rho\>|\<delta\>>\<less\><frac|y|\<delta\>>\<less\><frac|u\<cdot\>\<delta\>|\<delta\>>+<frac|\<rho\>|\<delta\>>\<Rightarrow\>u-\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>u+\<varepsilon\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
        proving that <math|x\<in\><around*|]|\<delta\>\<cdot\>u-\<rho\>,\<delta\>\<cdot\>u+\<rho\>|[>\<subseteq\>\<delta\>\<cdot\>U>.
        This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>

        <item*|<math|\<delta\>\<less\>0>>then
        <math|\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>\<less\>\<delta\>\<cdot\>u\<less\>\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>\<Rightarrow\>x=\<delta\>\<cdot\>u\<in\><around*|]|\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>,\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>|[>=<around*|]|\<delta\>\<cdot\>u-\<rho\>,\<delta\>\<cdot\>u+\<rho\>|[>>
        where <math|\<rho\>=-\<delta\>\<cdot\>\<varepsilon\>\<gtr\>0>. If now
        <math|y\<in\><around*|]|u\<cdot\>\<delta\>-\<rho\>,u\<cdot\>\<delta\>+\<rho\>|[>\<Rightarrow\>u\<cdot\>\<delta\>-\<rho\>\<less\>y\<less\>u\<cdot\>\<delta\>+\<rho\>\<Rightarrow\><frac|u\<cdot\>\<delta\>|\<delta\>>+<frac|\<rho\>|\<delta\>>\<less\><frac|y|\<delta\>>\<less\><frac|u\<cdot\>\<delta\>|y>-<frac|\<rho\>|\<delta\>>\<Rightarrow\>u-\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>u+\<varepsilon\>\<Rightarrow\><frac|y|\<rho\>>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
        so that <math|y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
        proving that <math|x\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>\<delta\>\<cdot\>U>.
        This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
      </description>

      <item*|<math|u=\<infty\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>, we
      have to consider the following cases for <math|\<delta\>>

      <\description>
        <item*|<math|0\<less\>\<delta\>>>then
        <math|x=\<delta\>\<cdot\>u=\<infty\>\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>>.
        If <math|y\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>>
        then if <math|y=\<infty\>=\<delta\>\<cdot\>u> we have
        <math|y=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U> and if
        <math|y\<in\>\<bbb-R\>> we have that
        <math|\<varepsilon\>\<cdot\>\<delta\>\<less\>y\<less\>\<infty\>> so
        that <math|\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>\<infty\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>.
        So we have proved that <math|x\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>\<subseteq\>U>
        and thus that \ <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>

        <item*|<math|\<delta\>\<less\>0>>then
        <math|x=\<delta\>\<cdot\>u=-\<infty\>\<in\><around*|[|-\<infty\>,\<varepsilon\>\<cdot\>\<delta\>|[>>.
        If <math|y\<in\><around*|[|-\<infty\>,\<varepsilon\>\<cdot\>\<delta\>|[>>
        then if <math|y=-\<infty\>=\<delta\>\<cdot\>u> we have
        <math|y=\<delta\>\<cdot\>\<infty\>=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U>
        and if <math|y\<in\>\<bbb-R\>> we have that
        <math|-\<infty\>\<less\>y\<less\>\<varepsilon\>\<cdot\>\<delta\>> so
        that <math|\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>\<infty\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
        So we have proved that <math|x\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>\<delta\>\<cdot\>U>
        and thus that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
      </description>

      <item*|<math|u=-\<infty\>>>then there exists a
      <math|\<varepsilon\>\<gtr\>0> such that
      <math|u\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>, we
      have to consider the following cases for <math|\<delta\>>

      <\description>
        <item*|<math|0\<less\>\<delta\>>>then
        <math|x=\<delta\>\<cdot\>u=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>>.
        If <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>>
        then if <math|y=-\<infty\>> we have
        <math|y=\<delta\>\<cdot\><around*|(|-\<infty\>|)>=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U>
        and if <math|y\<in\>\<bbb-R\>> we have that
        <math|-\<infty\>\<less\>y\<less\>-\<varepsilon\>\<cdot\>\<delta\>> so
        that <math|-\<infty\>\<less\><frac|y|\<delta\>>\<less\>-\<varepsilon\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>.
        So we have proved that <math|x\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>\<subseteq\>U>
        and thus that \ <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>

        <item*|<math|\<delta\>\<less\>0>>then
        <math|x=\<delta\>\<cdot\>u=\<infty\>\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>>.
        If <math|y\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>>
        then if <math|y=\<infty\>> we have
        <math|y=\<delta\>\<cdot\>-\<infty\>=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U>
        and if <math|y\<in\>\<bbb-R\>> we have that
        <math|\<varepsilon\>\<cdot\>\<delta\>\<less\>y\<less\>\<infty\>> so
        that <math|-\<infty\>\<less\><frac|y|\<delta\>>\<less\>\<varepsilon\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|[|-\<infty\>,\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
        So we have proved that <math|x\<in\><around*|]|\<varepsilon\>\<cdot\>\<delta\>,\<infty\>|]>\<subseteq\>\<delta\>\<cdot\>U>
        and thus that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
      </description>
    </description>

    As in all possible cases we have <math|\<forall\>x\<in\>\<delta\>\<cdot\>U>
    that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U> which proves that
    <math|\<delta\>\<cdot\>U> is open.
  </proof>

  <\note>
    The restrictions in the above theorem are need for example is
    <math|U=<around*|]|-1,1|[>> a open set then
    <math|0\<cdot\>U=0\<cdot\><around*|]|-1,1|[>=<around*|{|0|}>> a closed
    set. Also <math|\<infty\>+U=\<infty\>+<around*|]|-1,1|[>=<around*|{|\<infty\>|}>>
    a closed set.
  </note>

  <\theorem>
    <label|the topology on the extented reals is
    Hausdorff><math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is Hausdorff
    (see <reference|Hausdorff spaces>)
  </theorem>

  <\proof>
    Let <math|x<rsub|1>,x<rsub|2>\<in\><wide|\<bbb-R\>|\<bar\>>> with
    <math|x<rsub|1>\<neq\>x<rsub|2>> then we have to check the following
    cases

    <\description>
      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      we have either

      <\description>
        <item*|<math|x<rsub|1>\<less\>x<rsub|2>>>Take then
        <math|\<delta\>=<frac|x<rsub|2>-x<rsub|1>|2>\<gtr\>0> then
        <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>,
        <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>,
        as <math|<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[>=<around*|]|x<rsub|1>-\<delta\>,<frac|x<rsub|1>+x<rsub|2>|2>|[>,<around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>=<around*|]|<frac|x<rsub|1>+x<rsub|2>|2>,x<rsub|2>+\<delta\>|[>>
        we have <math|\<emptyset\>=<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[><big|cap><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>>.

        <item*|<math|x<rsub|2>\<less\>x<rsub|1>>>Take then
        <math|\<delta\>=<frac|x<rsub|1>-x<rsub|2>|2>\<gtr\>0> then
        <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>,
        <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>,
        as <math|<around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>=<around*|]|x<rsub|2>-\<delta\>,<frac|x<rsub|1>+x<rsub|2>|2>|[>,<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[>=<around*|]|<frac|x<rsub|1>+x<rsub|2>|2>,x<rsub|1>+\<delta\>|[>>
        we have <math|\<emptyset\>=<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[><big|cap><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>>.
      </description>

      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>=\<infty\>>>then
      <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-1,x<rsub|1>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|\<infty\>\<in\><around*|]|x<rsub|1>+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|<around*|]|x<rsub|1>-1,x<rsub|1>+1|[><big|cap><around*|]|x<rsub|1>+1,\<infty\>|]>=\<emptyset\>>

      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>=-\<infty\>>>then
      <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-1,x<rsub|1>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|-\<infty\>\<in\><around*|[|-\<infty\>,x<rsub|1>-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|<around*|]|x<rsub|1>-1,x<rsub|1>+1|[><big|cap><around*|[|-\<infty\>,x<rsub|1>-1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=\<infty\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      <math|\<infty\>\<in\><around*|]|x<rsub|2>+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|<around*|]|x<rsub|2>+1,\<infty\>|]><big|cap><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=\<infty\>\<wedge\>x<rsub|2>=-\<infty\>>>then
      <math|\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|-\<infty\>\<in\><around*|[|-\<infty\>,0|[>> with
      <math|<around*|]|0,\<infty\>|]><big|cap><around*|[|-\<infty\>,0|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=-\<infty\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      <math|-\<infty\>\<in\><around*|[|-\<infty\>,x<rsub|2>-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|<around*|[|-\<infty\>,x<rsub|2>-1|[><big|cap><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=-\<infty\>\<wedge\>x<rsub|2>=\<infty\>>>then
      <math|-\<infty\>\<in\><around*|[|-\<infty\>,0|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      and <math|\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|<around*|[|-\<infty\>,0|[><big|cap><around*|]|0,\<infty\>|]>=\<emptyset\>>
    </description>

    So in all cases there exists a <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    with <math|x\<in\>V<rsub|1>\<wedge\>x\<in\>V<rsub|2>\<wedge\>V<rsub|1><big|cap>V<rsub|2>=\<emptyset\>>
    proving that <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is
    Hausdorff.
  </proof>

  <subsection|Limit of functions in <math|<wide|\<bbb-R\>|\<bar\>>>>

  <\definition>
    <label|limit points><index|left limit point><index|right limit
    point><index|limit point>Let <math|A\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> then we have

    <\enumerate>
      <item><math|x> is a <with|font-series|bold|left limit point> of
      <math|A> iff <math|\<forall\>V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x\<in\>V> there exists a <math|y\<in\>A<big|cap>V> with
      <math|y\<less\>x>

      <item><math|y> is a <with|font-series|bold|right limit point> of
      <math|A> iff <math|\<forall\>V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x\<in\>V> there exists a <math|y\<in\>A<big|cap>V> with
      <math|x\<less\>y>

      <item><math|y> is a <with|font-series|bold|limit point> of <math|A> iff
      <math|\<forall\>V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
      <math|x\<in\>V> there exists a <math|y\<in\>A<big|cap>V> with
      <math|x\<neq\>y>
    </enumerate>
  </definition>

  <\lemma>
    <label|limit points and plus or min infinity>Let
    <math|A\<subseteq\><wide|\<bbb-R\>|\<bar\>>> then we have\ 

    <\enumerate>
      <item>If <math|x> is a left limit point of <math|A> then
      <math|-\<infty\>\<less\>x>

      <item>If <math|x> is a right limit point of <math|A> then
      <math|x\<less\>\<infty\>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x> be a left limit point of <math|A> and assume that
      <math|x=-\<infty\>> then for the open set
      <math|<around*|[|-\<infty\>,1|[>> we have that
      <math|x\<in\><around*|[|-\<infty\>,1|[>> and thus by definiton there
      exists <math|y\<in\>A<big|cap><around*|[|-\<infty\>,1|[>> with
      <math|y\<less\>x=-\<infty\>> a ontradiction.

      <item>Let <math|x> be a right limit point of <math|A> and assume that
      <math|x=\<infty\>> then for the open set
      <math|<around*|]|1,\<infty\>|]>> we have that
      <math|x\<in\><around*|]|1,\<infty\>|]>> and thus by definition there
      exists <math|y\<in\>A<big|cap><around*|]|1,\<infty\>|]>> with
      <math|\<infty\>=x\<less\>y> a contradiction.
    </enumerate>
  </proof>

  <\remark>
    <label|infinity can not be a right limit>If
    <math|A\<subseteq\><wide|\<bbb-R\>|\<bar\>>> then \ <math|\<infty\>> can
    not be a right limit point of <math|A> and <math|-\<infty\>> can not be a
    left limit point of <math|A>
  </remark>

  <\proof>
    This follows as there does not exists a
    <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<less\>-\<infty\>> or
    <math|\<infty\>\<less\>x>
  </proof>

  <\definition>
    <label|left limit of a function><index|left limit of a function>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>> then we say
    that <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L> if and
    only if <math|x<rsub|0>> is a left limit point of A and
    <math|\<forall\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> (see
    <reference|topology on extented reals>) with <math|L\<in\>U> there exists
    a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
    <math|x<rsub|0>\<in\>V> so that <math|\<forall\>x\<in\>V<big|cap>A> with
    <math|x\<less\>x<rsub|0>> we have <math|f<around*|(|x|)>\<in\>U>.
    <math|L> is called the <with|font-series|bold|left limit of f at
    <math|x<rsub|0>>.>
  </definition>

  <\definition>
    <label|right limit><index|right limit of a function>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>> then we say
    that <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L> if and
    only if <math|x<rsub|0>> is a right limit point of <math|A> and
    <math|\<forall\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> (see
    <reference|topology on extented reals>) with <math|L\<in\>U> there exists
    a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
    <math|x<rsub|0>\<in\>V> so that <math|\<forall\>x\<in\>V<big|cap>A> with
    <math|x<rsub|0>\<less\>x> we have <math|f<around*|(|x|)>\<in\>U>.
    <math|L> is called the <with|font-series|bold|right limit of f at
    <math|x<rsub|0>>.>
  </definition>

  <\definition>
    <label|limit of a function><index|limit of a function>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>> then we say
    that <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L> if and
    only if <math|x<rsub|0>> is a limit point of <math|A> and
    <math|\<forall\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> (see
    <reference|topology on extented reals>) with <math|L\<in\>U> there exists
    a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
    <math|x<rsub|0>\<in\>V> so that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>x<rsub|0>>
    we have <math|f<around*|(|x|)>\<in\>U>. <math|L> is called the
    <with|font-series|bold|limit of f at <math|x<rsub|0>>.>
  </definition>

  Note that the limitation of limits of functions to left limit points, right
  limit points or limit points is needed to have a unique limit (as is
  suggested in the notation for a limit). For example if
  <math|f:<around*|]|0,1|[>\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> is defined
  by <math|x\<rightarrow\>2\<cdot\>x> so that <math|0> is not a left limit
  point of <math|<around*|]|0,1|[>>, then if we take
  <math|1,2\<in\><wide|\<bbb-R\>|\<bar\>>> and
  <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
  with <math|1\<in\>U<rsub|1>,2\<in\>U<rsub|2>> we have for
  <math|0\<in\><around*|]|-1,1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
  that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>0> we have
  <math|f<around*|(|x|)>\<in\>U<rsub|1>,U<rsub|2>> is satisfied vacuously.
  The following theorem shows that the limits as defined above have indeed
  unique limits and that the notation make sense.

  <\example>
    <label|limit of a constant function>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function, <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>> then we have

    <\enumerate>
      <item>If <math|x<rsub|0>> is a left limit point of <math|A>,
      <math|x<rsub|0>\<in\>W> a open set and
      <math|\<forall\>x\<in\>A<big|cap>W\<vdash\>x\<less\>x<rsub|0>> we have
      <math|f<around*|(|x|)>=L> then <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>

      <item>If <math|x<rsub|0>> is a a right limit point of <math|A>,
      <math|x<rsub|0>\<in\>W> a open set and
      <math|\<forall\>x\<in\>A<big|cap>W\<vdash\>x<rsub|0>\<less\>x> we have
      <math|f<around*|(|x|)>=L> then <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>

      <item>If <math|x<rsub|0>> is a limit point of <math|A>,
      <math|x<rsub|0>\<in\>W> a open set and
      <math|\<forall\>x\<in\>A<big|cap>W\<vdash\>x\<neq\>x<rsub|0>> we have
      <math|f<around*|(|x|)>=L> then <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|U> be a open set in <math|<wide|\<bbb-R\>|\<bar\>>>
      such that <math|L\<in\>U> then if <math|x\<in\>W<big|cap>A> with
      <math|x\<less\>x<rsub|0>> we have <math|f<around*|(|x|)>=L\<in\>U>
      proving that <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>

      <item>Let <math|U> be a open set in <math|<wide|\<bbb-R\>|\<bar\>>>
      such that <math|L\<in\>U> then if <math|x\<in\>W<big|cap>A> with
      <math|x<rsub|0>\<less\>x> we have <math|f<around*|(|x|)>=L\<in\>U>
      proving that <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>

      <item>Let <math|U> be a open set in <math|<wide|\<bbb-R\>|\<bar\>>>
      such that <math|L\<in\>U> then if <math|x\<in\>W<big|cap>A=A> with
      <math|x\<neq\>x<rsub|0>> we have <math|f<around*|(|x|)>=L\<in\>U>
      proving that <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>
    </enumerate>
  </proof>

  <\theorem>
    <label|uniqueness of limits in extented reals>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    and <math|L<rsub|1>,L<rsub|2>,x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>>
    then we have

    <\enumerate>
      <item>If <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|1>>
      and <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|2>>
      then <math|L<rsub|1>=L<rsub|2>>

      <item>If <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|1>>
      and <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|2>>
      then <math|L<rsub|1>=L<rsub|2>>

      <item>If <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|1>>
      and <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L<rsub|2>>
      then <math|L<rsub|1>=L<rsub|2>>
    </enumerate>
  </theorem>

  <\proof>
    \ We prove this by contradiction

    <\enumerate>
      <item>Assume that <math|L<rsub|1>\<neq\>L<rsub|2>> then as
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is Hausdorff (see
      <reference|the topology on the extented reals is Hausdorff>) there
      exists <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|L<rsub|1>\<in\>U<rsub|1>\<wedge\>L<rsub|2>\<in\>U<rsub|2>\<wedge\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>>.
      Then <math|\<exists\>V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x<rsub|0>\<in\>V<rsub|1>\<wedge\>x<rsub|0>\<in\>V<rsub|2>>
      <math|\<wedge\>> <math|\<forall\>x\<in\>V<rsub|1><big|cap>A\<vdash\>x\<less\>x<rsub|0>>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|1>> <math|\<wedge\>>
      <math|\<forall\>x\<in\>V<rsub|2><big|cap>A\<vdash\>x\<less\>x<rsub|0>>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|2>>. As <math|x<rsub|0>> is
      a left limit point and <math|x<rsub|0>\<in\>V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      there exists a <math|y\<in\><around*|(|V<rsub|1><big|cap>V<rsub|2>|)><big|cap>A>
      with <math|y\<less\>x<rsub|0>> so that from the above we have
      <math|f<around*|(|y|)>\<in\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>> a
      contradiction. So we must have <math|L<rsub|1>=L<rsub|2>>.

      <item>Assume that <math|L<rsub|1>\<neq\>L<rsub|2>> then as
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is Hausdorff (see
      <reference|the topology on the extented reals is Hausdorff>) there
      exists <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|L<rsub|1>\<in\>U<rsub|1>\<wedge\>L<rsub|2>\<in\>U<rsub|2>\<wedge\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>>.
      Then <math|\<exists\>V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x<rsub|0>\<in\>V<rsub|1>\<wedge\>x<rsub|0>\<in\>V<rsub|2>>
      <math|\<wedge\>> <math|\<forall\>x\<in\>V<rsub|1><big|cap>A\<vdash\>x<rsub|0>\<less\>x>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|1>> <math|\<wedge\>>
      <math|\<forall\>x\<in\>V<rsub|2><big|cap>A\<vdash\>x<rsub|0>\<less\>x>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|2>>. As <math|x<rsub|0>> is
      a right limit point and <math|x<rsub|0>\<in\>V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      there exists a <math|y\<in\><around*|(|V<rsub|1><big|cap>V<rsub|2>|)><big|cap>A>
      with <math|x<rsub|0>\<less\>y> so that from the above we have
      <math|f<around*|(|y|)>\<in\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>> a
      contradiction. So we must have <math|L<rsub|1>=L<rsub|2>>.

      <item>Assume that <math|L<rsub|1>\<neq\>L<rsub|2>> then as
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is Hausdorff (see
      <reference|the topology on the extented reals is Hausdorff>) there
      exists <math|U<rsub|1>,U<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|L<rsub|1>\<in\>U<rsub|1>\<wedge\>L<rsub|2>\<in\>U<rsub|2>\<wedge\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>>.
      Then <math|\<exists\>V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x<rsub|0>\<in\>V<rsub|1>\<wedge\>x<rsub|0>\<in\>V<rsub|2>>
      <math|\<wedge\>> <math|\<forall\>x\<in\>V<rsub|1><big|cap>A\<vdash\>x<rsub|0>\<neq\>x>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|1>> <math|\<wedge\>>
      <math|\<forall\>x\<in\>V<rsub|2><big|cap>A\<vdash\>x<rsub|0>\<neq\>x>
      we have <math|f<around*|(|x|)>\<in\>U<rsub|2>>. As <math|x<rsub|0>> is
      a limit point and <math|x<rsub|0>\<in\>V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      there exists a <math|y\<in\><around*|(|V<rsub|1><big|cap>V<rsub|2>|)><big|cap>A>
      with <math|x<rsub|0>\<neq\>y> so that from the above we have
      <math|f<around*|(|y|)>\<in\>U<rsub|1><big|cap>U<rsub|2>=\<emptyset\>> a
      contradiction. So we must have <math|L<rsub|1>=L<rsub|2>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|left, right limit of sum and scalar product>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>> then we have\ 

    <\enumerate>
      <item>If <math|\<alpha\>\<in\>\<bbb-R\>>, <math|f:A\<rightarrow\>B> a
      function with a left limit <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>
      then for <math|\<alpha\>\<cdot\>f:A\<rightarrow\>C> defined by
      <math|*<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      where <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|A|)>\<subseteq\>C>
      we have <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>

      <item>If <math|\<alpha\>\<in\>\<bbb-R\>>, <math|f:A\<rightarrow\>B> a
      function with a right limit <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>
      then for <math|\<alpha\>\<cdot\>f:A\<rightarrow\>C> defined by
      <math|*<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      where <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|A|)>\<subseteq\>C>
      we have <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>

      <item>If <math|\<alpha\>\<in\>\<bbb-R\>>, <math|f:A\<rightarrow\>B> a
      function with a limit <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>
      then for <math|\<alpha\>\<cdot\>f:A\<rightarrow\>C> defined by
      <math|*<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      where <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|A|)>\<subseteq\>C>
      we have <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>

      <item>If <math|f:A\<rightarrow\>B>, <math|g:A\<rightarrow\>B> are
      functions with left limits <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>> such that
      <math|\<forall\>x\<in\>A> we have that
      <math|f<around*|(|x|)>+g<around*|(|x|)>> is defined and
      <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>
      is defined (so not <math|\<infty\>+<around*|(|-\<infty\>|)>>) then for
      <math|f+g:A\<rightarrow\>C> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      where <math|<around*|(|f+g|)><around*|(|A|)>\<subseteq\>C> we have
      <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>

      <item>If <math|f:A\<rightarrow\>B>, <math|g:A\<rightarrow\>B> are
      functions with left limits <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>> such that
      <math|\<forall\>x\<in\>A> we have that
      <math|f<around*|(|x|)>+g<around*|(|x|)>> is defined and
      <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>
      is defined \ (so not <math|\<infty\>+<around*|(|-\<infty\>|)>>) then
      for <math|f+g:A\<rightarrow\>C> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      where <math|<around*|(|f+g|)><around*|(|A|)>\<subseteq\>C> we have
      <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>

      <item>If <math|f:A\<rightarrow\>B>, <math|g:A\<rightarrow\>B> are
      functions with left limits <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>> such that
      <math|\<forall\>x\<in\>A> we have that
      <math|f<around*|(|x|)>+g<around*|(|x|)>> is defined and
      <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>
      is defined \ (so not <math|\<infty\>+<around*|(|-\<infty\>|)>>) then
      for <math|f+g:A\<rightarrow\>C> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      where <math|<around*|(|f+g|)><around*|(|A|)>\<subseteq\>C> we have
      <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>If <math|\<alpha\>=0> then <math|\<alpha\>\<cdot\>f> is the
      constant function <math|0> so that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=0=0\<cdot\><below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>,
      proving the case of <math|a=0>. So we are left with the case
      <math|\<alpha\>\<neq\>0>. Let now <math|U> be a open set with
      <math|\<alpha\>\<cdot\>L\<in\>U> then
      <math|L\<in\><frac|1|\<alpha\>>\<cdot\>U> which is a open set (see
      <reference|open sets and addition scalar multiplication>). Using the
      definition of the right limit we have that <math|x<rsub|0>> is a right
      limit point of <math|A> and there exists a open set <math|V> containing
      <math|x<rsub|0>> such that <math|\<forall\>x\<in\>V<big|cap>A> with
      <math|x<rsub|0>\<less\>x> we have <math|f<around*|(|x|)>\<in\><frac|1|\<alpha\>>\<cdot\>U\<Rightarrow\>\<alpha\>\<cdot\>f<around*|(|x|)>\<in\>U>
      proving that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>L>.

      <item>If <math|\<alpha\>=0> then <math|\<alpha\>\<cdot\>f> is the
      constant function <math|0> so that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=0=0\<cdot\><below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>,
      proving the case of <math|a=0>. So we are left with the case
      <math|\<alpha\>\<neq\>0>. Let now <math|U> be a open set with
      <math|\<alpha\>\<cdot\>L\<in\>U> then
      <math|L\<in\><frac|1|\<alpha\>>\<cdot\>U> which is a open set (see
      <reference|open sets and addition scalar multiplication>). Using the
      definition of the left limit we have that <math|x<rsub|0>> is a left
      limit point of <math|A> and there exists a open set <math|V> containing
      <math|x<rsub|0>> such that <math|\<forall\>x\<in\>V<big|cap>A> with
      <math|x<rsub|0>\<less\>x> we have <math|f<around*|(|x|)>\<in\><frac|1|\<alpha\>>\<cdot\>U\<Rightarrow\>\<alpha\>\<cdot\>f<around*|(|x|)>\<in\>U>
      proving that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>L>.

      <item>If <math|\<alpha\>=0> then <math|\<alpha\>\<cdot\>f> is the
      constant function <math|0> so that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=0=0\<cdot\><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=\<alpha\>\<cdot\><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>,
      proving the case of <math|a=0>. So we are left with the case
      <math|\<alpha\>\<neq\>0>. Let now <math|U> be a open set with
      <math|\<alpha\>\<cdot\>L\<in\>U> then
      <math|L\<in\><frac|1|\<alpha\>>\<cdot\>U> which is a open set (see
      <reference|open sets and addition scalar multiplication>). Using the
      definition of the limit we have that <math|x<rsub|0>> is a limit point
      of <math|A> and there exists a open set <math|V> containing
      <math|x<rsub|0>> such that <math|\<forall\>x\<in\>V<big|cap>A> with
      <math|x<rsub|0>\<less\>x> we have <math|f<around*|(|x|)>\<in\><frac|1|\<alpha\>>\<cdot\>U\<Rightarrow\>\<alpha\>\<cdot\>f<around*|(|x|)>\<in\>U>
      proving that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>L>.

      <item>Let <math|U> be a open set containing <math|L<rsub|1>+L<rsub|2>>
      then we have the following cases to consider for
      <math|L<rsub|1>+L<rsub|2>>\ 

      <\description>
        <item*|<math|L<rsub|1>+L<rsub|2>\<in\>\<bbb-R\>>>then we must have
        <math|L<rsub|1>,L<rsub|2>\<in\>\<bbb-R\>>, If now
        <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there exists a
        <math|\<delta\>\<gtr\>0> such that
        <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|L<rsub|1>+L<rsub|2>-\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>.
        From <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|1>+<frac|\<varepsilon\>|2>|[>>,
        <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>
        and the definition of right limits we have that <math|x<rsub|0>> is a
        right limit point of <math|A> and there exists open sets
        <math|V<rsub|f>,V<rsub|g>> with <math|x<rsub|0>\<in\>V<rsub|f>,V<rsub|g>>
        such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|2>-<frac|\<varepsilon\>|2>|[>>
        and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>.
        So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
        with <math|x<rsub|0>\<less\>x> then
        <math|L<rsub|1>-<frac|\<varepsilon\>|2>\<less\>f<around*|(|x|)>\<less\>L<rsub|1>+<frac|\<varepsilon\>|2>\<wedge\>L<rsub|2>-<frac|\<varepsilon\>|2>\<less\>g<around*|(|x|)>\<less\>L<rsub|2>+<frac|\<varepsilon\>|2>\<Rightarrow\>L<rsub|1>+L<rsub|2>-\<varepsilon\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+L<rsub|2>+\<varepsilon\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|L<rsub|1>+L<rsub|2>+\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>
        which proves that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>.

        <item*|<math|L<rsub|1>+L<rsub|2>=\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and by the definition of right limits we have that <math|x<rsub|0>>
          is a right limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|<frac|\<delta\>|2>\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>\<wedge\><frac|\<delta\>|2>\<less\>g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\>\<delta\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|2>=\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a right limit we have that <math|x<rsub|0>>
          is the right limit point of <math|A> and that there exists open
          sets <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|L<rsub|1>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|1>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a right limit we have that <math|x<rsub|0>>
          is the right limit point of <math|A> and that there exists open
          sets <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|L<rsub|2>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|2>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>
        </description>

        <item*|<math|L<rsub|1>+L<rsub|2>=-\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=-\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and by the definition of right limits we have that <math|x<rsub|0>>
          is a right limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<wedge\>-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<Rightarrow\>-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
          which proves that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=-\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a right limit we have that <math|x<rsub|0>>
          is the right limit point of <math|A> and that there exists open
          sets <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+\<delta\>-2\<cdot\>\<delta\>-L<rsub|1>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=-\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a right limit we have that <math|x<rsub|0>>
          is the right limit point of <math|A> and that there exists open
          sets <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<less\>x> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>-2\<cdot\>\<delta\>-L<rsub|2>+L<rsub|2>+\<delta\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>
        </description>
      </description>

      <item>Let <math|U> be a open set containing <math|L<rsub|1>+L<rsub|2>>
      then we have the following cases to consider for
      <math|L<rsub|1>+L<rsub|2>>\ 

      <\description>
        <item*|<math|L<rsub|1>+L<rsub|2>\<in\>\<bbb-R\>>>then we must have
        <math|L<rsub|1>,L<rsub|2>\<in\>\<bbb-R\>>, If now
        <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there exists a
        <math|\<delta\>\<gtr\>0> such that
        <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|L<rsub|1>+L<rsub|2>-\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>.
        From <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|1>+<frac|\<varepsilon\>|2>|[>>,
        <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>
        and the definition of left limits we have that <math|x<rsub|0>> is a
        left limit point of <math|A> and there exists open sets
        <math|V<rsub|f>,V<rsub|g>> with <math|x<rsub|0>\<in\>V<rsub|f>,V<rsub|g>>
        such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|2>-<frac|\<varepsilon\>|2>|[>>
        and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>.
        So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
        with <math|x\<less\>x<rsub|0>> then
        <math|L<rsub|1>-<frac|\<varepsilon\>|2>\<less\>f<around*|(|x|)>\<less\>L<rsub|1>+<frac|\<varepsilon\>|2>\<wedge\>L<rsub|2>-<frac|\<varepsilon\>|2>\<less\>g<around*|(|x|)>\<less\>L<rsub|2>+<frac|\<varepsilon\>|2>\<Rightarrow\>L<rsub|1>+L<rsub|2>-\<varepsilon\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+L<rsub|2>+\<varepsilon\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|L<rsub|1>+L<rsub|2>+\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>
        which proves that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>.

        <item*|<math|L<rsub|1>+L<rsub|2>=\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and by the definition of left limits we have that <math|x<rsub|0>>
          is a left limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|<frac|\<delta\>|2>\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>\<wedge\><frac|\<delta\>|2>\<less\>g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\>\<delta\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|2>=\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a left limit we have that <math|x<rsub|0>>
          is the left limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|L<rsub|1>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|1>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a left limit we have that <math|x<rsub|0>>
          is the left limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|L<rsub|2>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|2>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>
        </description>

        <item*|<math|L<rsub|1>+L<rsub|2>=-\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=-\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and by the definition of left limits we have that <math|x<rsub|0>>
          is a left limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<wedge\>-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<Rightarrow\>-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
          which proves that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=-\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a left limit we have that <math|x<rsub|0>>
          is the left limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+\<delta\>-2\<cdot\>\<delta\>-L<rsub|1>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=-\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a left limit we have that <math|x<rsub|0>>
          is the left limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<less\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<less\>x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>-2\<cdot\>\<delta\>-L<rsub|2>+L<rsub|2>+\<delta\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>
        </description>
      </description>

      <item>Let <math|U> be a open set containing <math|L<rsub|1>+L<rsub|2>>
      then we have the following cases to consider for
      <math|L<rsub|1>+L<rsub|2>>\ 

      <\description>
        <item*|<math|L<rsub|1>+L<rsub|2>\<in\>\<bbb-R\>>>then we must have
        <math|L<rsub|1>,L<rsub|2>\<in\>\<bbb-R\>>, If now
        <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there exists a
        <math|\<delta\>\<gtr\>0> such that
        <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|L<rsub|1>+L<rsub|2>-\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>.
        From <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|1>+<frac|\<varepsilon\>|2>|[>>,
        <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>
        and the definition of limits we have that <math|x<rsub|0>> is a limit
        point of <math|A> and there exists open sets
        <math|V<rsub|f>,V<rsub|g>> with <math|x<rsub|0>\<in\>V<rsub|f>,V<rsub|g>>
        such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x\<neq\>x<rsub|0>> we have <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-<frac|\<varepsilon\>|2>,L<rsub|2>-<frac|\<varepsilon\>|2>|[>>
        and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<neq\>x<rsub|0>> we have <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-<frac|\<varepsilon\>|2>,L<rsub|2>+<frac|\<varepsilon\>|2>|[>>.
        So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
        with <math|x\<neq\>x<rsub|0>> then
        <math|L<rsub|1>-<frac|\<varepsilon\>|2>\<less\>f<around*|(|x|)>\<less\>L<rsub|1>+<frac|\<varepsilon\>|2>\<wedge\>L<rsub|2>-<frac|\<varepsilon\>|2>\<less\>g<around*|(|x|)>\<less\>L<rsub|2>+<frac|\<varepsilon\>|2>\<Rightarrow\>L<rsub|1>+L<rsub|2>-\<varepsilon\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+L<rsub|2>+\<varepsilon\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|L<rsub|1>+L<rsub|2>+\<varepsilon\>,L<rsub|1>+L<rsub|2>-\<varepsilon\>|[>\<subseteq\>U>
        which proves that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>.

        <item*|<math|L<rsub|1>+L<rsub|2>=\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and by the definition of limits we have that <math|x<rsub|0>> is a
          \ limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|<frac|\<delta\>|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<neq\>x<rsub|0>> we have
          <math|<frac|\<delta\>|2>\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>\<wedge\><frac|\<delta\>|2>\<less\>g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\>\<delta\>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|2>=\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a limit we have that <math|x<rsub|0>> is
          the limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|1>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x<rsub|0>\<neq\>x> we have
          <math|L<rsub|1>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|1>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a limit we have that <math|x<rsub|0>> is
          the limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|2\<cdot\>\<delta\>-L<rsub|2>,\<infty\>|]>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<neq\>x<rsub|0>> we have
          <math|L<rsub|2>-\<delta\>+2\<cdot\>\<delta\>-L<rsub|2>\<less\>f<around*|(|x|)>+g<around*|(|x|)>\<leqslant\>\<infty\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>
        </description>

        <item*|<math|L<rsub|1>+L<rsub|2>=-\<infty\>>>then we have either

        <\description>
          <item*|<math|L<rsub|1>,L<rsub|2>=-\<infty\>>>Let <math|U> be a open
          set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a open set then there
          exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>,L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|1>,L<rsub|2>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and by the definition of limits we have that <math|x<rsub|0>> is a
          limit point of <math|A> and there exists open sets
          <math|V<rsub|f>>,<math|V<rsub|g>> containing <math|x<rsub|0>> such
          that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x<rsub|0>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|>> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-<frac|\<delta\>|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<neq\>x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<wedge\>-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>-<frac|\<delta\>|2>\<Rightarrow\>-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
          which proves that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>.

          <item*|<math|L<rsub|1>\<in\>\<bbb-R\>,L<rsub|2>=-\<infty\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|2>=-\<infty\>> we have
          <math|L<rsub|2>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>
          and as <math|L<rsub|1>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|1>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>,
          so by the definition of a limit we have that <math|x<rsub|0>> is
          the limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L<rsub|1>-\<delta\>,L<rsub|1>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|>> we have
          <math|g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|1>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x\<neq\>x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>L<rsub|1>+\<delta\>-2\<cdot\>\<delta\>-L<rsub|1>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>

          <item*|<math|L<rsub|1>=-\<infty\>,L<rsub|2>\<in\>\<bbb-R\>>>Let
          <math|U> be a open set with <math|L<rsub|1>+L<rsub|2>\<in\>U> a
          open set then there exists a <math|\<delta\>\<gtr\>0> such that
          <math|L<rsub|1>+L<rsub|2>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          then as <math|L<rsub|1>=\<infty\>> we have
          <math|L<rsub|1>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>
          and as <math|L<rsub|2>\<in\>\<bbb-R\>> we have that
          <math|L<rsub|2>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>,
          so by the definition of a limit we have that <math|x<rsub|0>> is
          the limit point of <math|A> and that there exists open sets
          <math|V<rsub|f>,V<rsub|g>> containing <math|x<rsub|0>> such that
          <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|g<around*|(|x|)>\<in\><around*|]|L<rsub|2>-\<delta\>,L<rsub|2>+\<delta\>|[>>
          and <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
          <math|x\<neq\>x<rsub|0>> we have
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-2\<cdot\>\<delta\>-L<rsub|2>|[>>.
          So if <math|x\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
          with <math|x=x<rsub|0>> we have
          <math|-\<infty\>\<leqslant\>f<around*|(|x|)>+g<around*|(|x|)>\<less\>-2\<cdot\>\<delta\>-L<rsub|2>+L<rsub|2>+\<delta\>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>U>
          which proves that \ <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|f+g|)><around*|(|x|)>=L<rsub|1>+L<rsub|2>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>.
        </description>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|left and right limit implies limit>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>> then
    <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>
    if and only if <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>
    and <math|x<rsub|0>> is a left and right limit point of <math|A>.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>From the fact that the left and right
      limits exists we have that <math|x<rsub|0>> is a left and right limit
      point of <math|A>. So if <math|U> open set contains <math|x<rsub|0>>
      there exists a <math|x\<in\>U<big|cap>A> with
      <math|x\<less\>x<rsub|0>\<Rightarrow\>x\<neq\>x<rsub|0>> proving that
      <math|x<rsub|0>> is a limit point of <math|A>. Take
      <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
      <math|L\<in\>U> then there exists a
      <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      with <math|x<rsub|0>\<in\>V<rsub|1>,V<rsub|2>> such that
      <math|\<forall\>x\<in\>V<rsub|1><big|cap>A\<vdash\>x\<less\>x<rsub|0>>
      we have <math|f<around*|(|x|)>\<in\>U> and
      <math|\<forall\>x\<in\>V<rsub|2><big|cap>A\<vdash\>x<rsub|0>\<less\>x>
      we have <math|f<around*|(|x|)>\<in\>U>. So if we take
      <math|W=V<rsub|1><big|cap>V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      then <math|x<rsub|0>\<in\>W> and <math|\<forall\>x\<in\>W<big|cap>A\<vdash\>x\<neq\>x<rsub|0>>
      we have <math|x\<less\>x<rsub|0>\<vee\>x<rsub|0>\<less\>x> giving as
      <math|x<rsub|0>> is proven to be a limit point that
      <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>.

      <item*|<math|\<Leftarrow\>>>Take <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>>
      with <math|L\<in\>U> then there exists a
      <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
      <math|x<rsub|0>\<in\>V> such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>x<rsub|0>>
      we have <math|f<around*|(|x|)>\<in\>U> proving that
      <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>x<rsub|0>> [or
      <math|x<rsub|0>\<less\>x>] <math|\<Rightarrow\>x\<neq\>x<rsub|0>>
      giving <math|f<around*|(|x|)>\<in\>U>. which proves, as we assume that
      <math|x<rsub|0>> is a left and right limit point of <math|A>, that
      <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>.
    </description>
  </proof>

  <\note>
    The extra condition on the right side of the above equivalence is needed
    because the fact that <math|x<rsub|0>> is a limit point of <math|A> does
    not guarantees that <math|x<rsub|0>> is a left and right limit point of
    <math|A>. For example in <math|A=<around*|]|1,\<infty\>|]> > we have that
    <math|\<infty\>> is a limit point of <math|A>, also a left limit point of
    <math|A> but not a right limit point of <math|A>. So a well defined right
    limit at <math|\<infty\>> can not exists. However we can have at
    <math|\<infty\>> and <math|-\<infty\>> the following equivalences.
  </note>

  The following theorem essentially proves that limits preserver order on
  functions.

  <\theorem>
    <label|limits at infinity>Let <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|f:A\<rightarrow\>B> a function,
    <math|L\<in\><wide|\<bbb-R\>|\<bar\>>> then we have\ 

    <\enumerate>
      <item><math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L> if
      and only if <math|<below|lim|x\<downarrow\>-\<infty\>>f=L>

      <item><math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L> if
      and onlyy if <math|<below|lim|x\<uparrow\>\<infty\>>f=L>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|-\<infty\>> is a limit point of
        <math|A> we have that <math|\<forall\>U> open with
        <math|-\<infty\>\<in\>U> there exists a <math|x\<in\>U<big|cap>A>
        with <math|x\<neq\>-\<infty\>\<Rightarrow\>-\<infty\>\<less\>x>
        proving that <math|-\<infty\>> is a right limit point of <math|A>.
        Further \ if <math|U> is a open set containing <math|L> then we have
        that there exists a open set <math|V> containing <math|-\<infty\>>
        such that <math|\<forall\>x\<in\>V<big|cap>A> with
        <math|x\<neq\>-\<infty\>> we have <math|f<around*|(|x|)>\<in\>U>, as
        <math|x\<neq\>-\<infty\>> implies <math|-\<infty\>\<less\>x> we have
        then proved that <math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>.

        <item*|<math|\<Leftarrow\>>>As <math|-\<infty\>> is a right limit
        point of <math|A> we have <math|\<forall\>U> open containing
        <math|-\<infty\>> there exists a <math|x\<in\>U<big|cap>A> with
        <math|-\<infty\>\<less\>x\<Rightarrow\>-\<infty\>\<neq\>x> proving
        that <math|-\<infty\>> is a limit point of <math|A>. Further if
        <math|U> is a open set containing <math|L> then there exists a open
        set <math|V> containing <math|-\<infty\>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|-\<infty\>\<less\>x>
        we have <math|f<around*|(|x|)>\<in\>U>, as <math|x\<less\>-\<infty\>>
        implies <math|x\<neq\>-\<infty\>> we have
        <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>As <math|\<infty\>> is a limit point of
        <math|A> we have that <math|\<forall\>U> open with
        <math|\<infty\>\<in\>U> there exists a <math|x\<in\>U<big|cap>A> with
        <math|x\<neq\>\<infty\>\<Rightarrow\>x\<less\>\<infty\>> proving that
        <math|\<infty\>> is a left limit point of <math|A>. Further \ if
        <math|U> is a open set containing <math|L> then we have that there
        exists a open set <math|V> containing <math|\<infty\>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<neq\>\<infty\>> we
        have <math|f<around*|(|x|)>\<in\>U>, as <math|x\<neq\>\<infty\>>
        implies <math|x\<less\>\<infty\>> we have then proved that
        <math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>.

        <item*|<math|\<Leftarrow\>>>As <math|\<infty\>> is a left limit point
        of <math|A> we have <math|\<forall\>U> open containing
        <math|\<infty\>> there exists a <math|x\<in\>U<big|cap>A> with
        <math|x\<less\>\<infty\>\<Rightarrow\>\<infty\>\<neq\>x> proving that
        <math|\<infty\>> is a limit point of <math|A>. Further if <math|U> is
        a open set containing <math|L> then there exists a open set <math|V>
        containing <math|\<infty\>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<less\>\<infty\>> we
        have <math|f<around*|(|x|)>\<in\>U>, as <math|x\<less\>\<infty\>>
        implies <math|x\<neq\>\<infty\>> we have
        <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>>
      </description>
    </enumerate>
  </proof>

  Note that the limit of a function is related to continuity at a point in
  the topology <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> as the
  following theorem shows.

  <\theorem>
    <label|limit and continuity in the extented reals>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function <math|x<rsub|0>\<in\>A> a limit point of <math|x<rsub|0>> then
    <math|f> is continuous at <math|x<rsub|0>> (see <reference|continuous
    function>) if and only if <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=f<around*|(|x<rsub|0>|)>>
  </theorem>

  <\proof>
    \ Let <math|\<cal-T\><rsub|A>=<around*|{|U<big|cap>A\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    be the subspace topology of <math|A>, and
    <math|\<cal-T\><rsub|B>=<around*|{|U<big|cap>B\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    be the subspace topology of <math|B>.

    <\description>
      <item*|<math|\<Rightarrow\>>>Take now
      <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
      <math|f<around*|(|x<rsub|0>|)>\<in\>U\<Rightarrowlim\><rsub|f<around*|(|x<rsub|0>|)>\<in\>B>f<around*|(|x<rsub|0>|)>\<in\>U<big|cap>B\<in\>\<cal-T\><rsub|B>>,
      so by continuity of <math|f> in the subspace topologies we have
      <math|\<exists\>V\<in\>\<cal-T\><rsub|A>> such that
      <math|x<rsub|0>\<in\>V\<wedge\>f<around*|(|V|)>\<subseteq\>U<big|cap>B>.
      As <math|V\<in\>\<cal-T\><rsub|A>> there exists a
      <math|V<rprime|'>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such
      that <math|V=V<rprime|'><big|cap>A>. So if
      <math|x\<in\>A<big|cap>V<rprime|'>\<vdash\>x\<neq\>x<rsub|0>> we have
      <math|x\<in\>V\<Rightarrow\>f<around*|(|x|)>\<in\>U<big|cap>B\<subseteq\>U>
      proving that <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=f<around*|(|x<rsub|0>|)>>

      <item*|<math|\<Leftarrow\>>>Take <math|U\<in\>\<cal-T\><rsub|B>> with
      <math|f<around*|(|x<rsub|0>|)>\<in\>U> then
      <math|\<exists\>U<rprime|'>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
      such that <math|U=U<rprime|'><big|cap>B> giving
      <math|f<around*|(|x<rsub|0>|)>\<in\>U<rprime|'>> so there exists a
      <math|V<rprime|'>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such
      that <math|x<rsub|0>\<in\>V<rprime|'>> and
      <math|\<forall\>x\<in\>V<rprime|'><big|cap>A\<vdash\>x\<neq\>x<rsub|0>>
      we have <math|f*<around*|(|x|)>\<in\>U<rprime|'>\<Rightarrow\>f<around*|(|x|)>\<in\>U>
      [as <math|f<around*|(|x|)>\<in\>B>]. Take now
      <math|V=V<rprime|'><big|cap>A\<in\>\<cal-T\><rsub|A>> then as
      <math|x<rsub|0>\<in\>A> we have <math|x<rsub|0>\<in\>V> and
      <math|f<around*|(|x<rsub|0>|)>\<in\>U> [as
      <math|f<around*|(|x<rsub|0>|)>\<in\>B>, also if
      <math|x\<in\>V\<vdash\>x\<neq\>x<rsub|0>> then
      <math|f<around*|(|x|)>\<in\>U> so that
      <math|f<around*|(|V|)>\<subseteq\>U> proving that <math|f> is
      continuous a <math|x<rsub|0>>.
    </description>
  </proof>

  The above theorem motivates the definition of left or right continuity

  <\definition>
    <label|left (right) continuity><index|left continuity><index|right
    continuity>Let <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|f:A\<rightarrow\>B>, <math|x<rsub|0>\<in\>A> a left [right] limit
    point of <math|A> then <math|f> is left [right] continuous at
    <math|x<rsub|0>> iff <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=f<around*|(|x<rsub|0>|)>>
    [<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=f<around*|(|x<rsub|0>|)>>]
  </definition>

  We now look at some special cases of limits where <math|x<rsub|0>> or
  <math|L> where in <math|\<bbb-R\>> or equal to <math|\<infty\>>,
  <math|-\<infty\>>

  <\theorem>
    <label|special cases of limits>:et <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|f:A\<rightarrow\>B> and <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>>
    then we have the following possible cases for a left, right, limit

    <\description>
      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L\<in\>\<bbb-R\>>>then we have
      for the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>><math|x<rsub|0>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0\<vDash\>\<exists\>\<delta\>\<gtr\>0>
        such that <math|\<forall\>x\<in\>A\<vdash\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
        we have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>><math|x<rsub|0>>
        is a right limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0\<vDash\>\<exists\>\<delta\>\<gtr\>0>
        such that <math|\<forall\>x\<in\>A\<vdash\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
        we have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>><math|x<rsub|0>>
        is a limit point of <math|A> and <math|\<forall\>\<varepsilon\>\<gtr\>0\<vDash\>\<exists\>\<delta\>\<gtr\>0>
        such that <math|\<forall\>x\<in\>A\<vdash\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
        we have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>
      </description>

      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>><math|x<rsub|0>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>> we have
        <math|\<varepsilon\>\<less\>f<around*|(|x|)>>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>><math|x<rsub|0>>
        is a right limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>> we have
        <math|\<varepsilon\>\<less\>f<around*|(|x|)>>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>><math|x<rsub|0>>
        is a limit point of <math|A> and <math|\<forall\>\<varepsilon\>\<gtr\>0>
        there exists a <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
        we have <math|\<varepsilon\>\<less\>f<around*|(|x|)>>
      </description>

      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L=-\<infty\>>>then we have for
      the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>><math|x<rsub|0>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>> we have
        <math|f<around*|(|x|)>\<less\>-\<varepsilon\>>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>><math|x<rsub|0>>
        is a right limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>> we have
        <math|f<around*|(|x|)>\<less\>-\<varepsilon\>>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>><math|x<rsub|0>>
        is a limit point of <math|A> and <math|\<forall\>\<varepsilon\>\<gtr\>0>
        there exists a <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
        we have <math|f<around*|(|x|)>\<less\>-\<varepsilon\>>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L\<in\>\<bbb-R\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>><math|\<infty\>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that if
        <math|x\<in\>A\<wedge\>\<delta\>\<less\>x\<less\>\<infty\>> we have
        <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=L>>as
        <math|\<infty\>> can not be a right limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L>><math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>><math|\<infty\>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> so that if
        <math|\<delta\>\<less\>x\<less\>\<infty\>> then
        <math|\<varepsilon\>\<less\>f<around*|(|x|)>>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>>as
        <math|\<infty\>> can not be a right limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>>
        <math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L=-\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>><math|\<infty\>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> so that if
        <math|\<delta\>\<less\>x\<less\>\<infty\>> then
        <math|f<around*|(|x|)>\<less\>-\<varepsilon\>>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>>as
        <math|\<infty\>> can not be a right limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>><math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L\<in\>\<bbb-R\>>>then we have for
      the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=L>>as
        <math|-\<infty\>> can not be a left limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>><math|-\<infty\>>
        is a right limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> so that if
        <math|-\<infty\>\<less\>x\<less\>-\<infty\>> then
        <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L>><math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>>as
        <math|-\<infty\>> can not be a left limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>><math|-\<infty\>>
        is a right limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that <math|\<forall\>x\<in\>A> with
        <math|-\<infty\>\<less\>x\<less\>-\<delta\>> we have
        <math|\<varepsilon\>\<less\>f<around*|(|x|)>>\ 

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>><math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L=-\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>>as
        <math|-\<infty\>> can not be a left limit point of any set <math|A>
        this can not happen.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>><math|-\<infty\>>
        is a left limit point of <math|A> and
        <math|\<forall\>\<varepsilon\>\<gtr\>0> there exists a
        <math|\<delta\>\<gtr\>0> such that <math|\<forall\>x\<in\>A> with
        <math|-\<infty\>\<less\>x\<less\>-\<infty\>> we have
        <math|f<around*|(|x|)>\<less\>-\<infty\>>

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>><math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>
      </description>
    </description>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L\<in\>\<bbb-R\>>>then we have
      for the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>><math|>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          [as <math|L\<in\>\<bbb-R\>>] then there exists a
          <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>x<rsub|0>> we
          have <math|f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<Rightarrow\><around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>,
          as <math|x<rsub|0>\<in\>V\<Rightarrowlim\><rsub|x<rsub|0>\<in\>\<bbb-R\>>x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>><text|
          [using <reference|topology on extented reals>]
          >\<Rightarrow\>\<exists\>\<delta\>\<gtr\>0\<vdash\>x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          then <math|x\<in\>A<big|cap>V\<wedge\>x\<less\>x<rsub|0>> giving
          <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<vdash\>L\<in\>U>
          then as <math|L\<in\>\<bbb-R\>> we have
          <math|L\<in\>U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>>,
          by the hypothese there <math|\<exists\>\<delta\>\<gtr\>0> such that
          if <math|x\<in\>A\<vdash\>0\<less\>x<rsub|0>-x\<less\>\<delta\>> we
          have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>\<subseteq\>U>.
          So if we take <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then <math|x<rsub|0>\<in\>V> and if <math|x\<in\>A<big|cap>V> with
          <math|x\<less\>x<rsub|0>> we have
          <math|0\<less\>x<rsub|0>-x\<less\>\<delta\>\<wedge\>x\<in\>A>, so
          that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>. <math|>
        </description>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          [as <math|L\<in\>\<bbb-R\>>] then there exists a
          <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x<rsub|0>\<less\>x> we
          have <math|f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<Rightarrow\><around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>,
          as <math|x<rsub|0>\<in\>V\<Rightarrowlim\><rsub|x<rsub|0>\<in\>\<bbb-R\>>x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>><text|
          [using <reference|topology on extented reals>]
          >\<Rightarrow\>\<exists\>\<delta\>\<gtr\>0\<vdash\>x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          then <math|x\<in\>A<big|cap>V\<wedge\>x<rsub|0>\<less\>x> giving
          <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<vdash\>L\<in\>U>
          then as <math|L\<in\>\<bbb-R\>> we have
          <math|L\<in\>U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>>,
          by the hypothese there <math|\<exists\>\<delta\>\<gtr\>0> such that
          if <math|x\<in\>A\<vdash\>0\<less\>x-x<rsub|0>\<less\>\<delta\>> we
          have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>\<subseteq\>U>.
          So if we take <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then <math|x<rsub|0>\<in\>V> and if <math|x\<in\>A<big|cap>V> with
          <math|x<rsub|0>\<less\>x> we have
          <math|0\<less\>x-x<rsub|0>\<less\>\<delta\>\<wedge\>x\<in\>A>, so
          that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>. <math|>
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          [as <math|L\<in\>\<bbb-R\>>] then there exists a
          <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<neq\>x<rsub|0>>
          we have <math|f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<Rightarrow\><around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] there exists a
          <math|\<delta\>\<gtr\>0> such that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>0\<less\><around*|\||x-x<rsub|0>|\|>\<less\>\<delta\>>
          we have <math|x\<in\>A\<wedge\>x\<in\>V> which gives that
          <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.\ 

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> then as <math|L\<in\>\<bbb-R\>> we have
          <math|L\<in\>U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>\<subseteq\>U>,
          by the hypothese there exists a <math|\<delta\>\<gtr\>0> such that
          <math|\<forall\>x\<in\>A\<vdash\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          we have <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U>.
          So if we take <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>
          then <math|x<rsub|0>\<in\>V> and if <math|x\<in\>A<big|cap>V> with
          <math|x<rsub|0>\<neq\>x> we have
          <math|0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>, so
          that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x\<less\>x<rsub|0>>
          we have <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x\<less\>x<rsub|0>> so
          that <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<Rightarrow\>\<varepsilon\>\<less\>f<around*|(|x|)>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|-\<infty\>>>
          we have <math|\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          we have <math|\<varepsilon\>\<less\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>x<rsub|0>> we
          have <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>=L>.
        </description>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x<rsub|0>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x<rsub|0>\<less\>x> so
          that <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<Rightarrow\>\<varepsilon\>\<less\>f<around*|(|x|)>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|-\<bbb-R\>>>
          we have <math|\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          we have <math|\<varepsilon\>\<less\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x<rsub|0>\<less\>x> we
          have <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>=L>.
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x\<neq\>x<rsub|0>>
          we have <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x\<neq\>x<rsub|0>> so that
          <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<Rightarrow\>\<varepsilon\>\<less\>f<around*|(|x|)>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|-\<infty\>>>
          we have <math|\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          we have <math|\<varepsilon\>\<less\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>x<rsub|0>> we
          have <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>=L>.
        </description>
      </description>

      <item*|<math|x<rsub|0>\<in\>\<bbb-R\>,L=-\<infty\>>>then we have for
      the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x\<less\>x<rsub|0>>
          we have <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x\<less\>x<rsub|0>> so
          that <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<varepsilon\>|[>\<Rightarrow\>f<around*|(|x|)>\<less\>-\<varepsilon\>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=-\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>>>
          we have <math|-\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          we have <math|f<around*|(|x|)>\<less\>-\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>x<rsub|0>> we
          have <math|x\<in\>A\<wedge\>0\<less\>x<rsub|0>-x\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>=L>.
        </description>

        <item*|<math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x<rsub|0>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x<rsub|0>\<less\>x> so
          that <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<varepsilon\>|[>\<Rightarrow\>f<around*|(|x|)>\<less\>-\<varepsilon\>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=-\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>>>
          we have <math|-\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          we have <math|f<around*|(|x|)>\<less\>-\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>x<rsub|0>> we
          have <math|x\<in\>A\<wedge\>0\<less\>x-x<rsub|0>\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>=L>.
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0>
          take <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|x<rsub|0>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V> with <math|x\<neq\>x<rsub|0>>
          we have <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>>.
          As <math|x<rsub|0>\<in\>\<bbb-R\>> we have
          <math|x<rsub|0>\<in\>V<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<delta\>\<gtr\>0> so that
          <math|x<rsub|0>\<in\><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<subseteq\>V<big|cap>\<bbb-R\>\<subseteq\>V>.
          If then <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<wedge\>x\<neq\>x<rsub|0>> so that
          <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,\<varepsilon\>|[>\<Rightarrow\>f<around*|(|x|)>\<less\>-\<varepsilon\>>.

          <item*|<math|\<Leftarrow\>>>Given
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L=-\<infty\>> we have, using <reference|topology on
          extented reals> and the fact that
          <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>>>
          we have <math|-\<infty\>\<nin\>B>, that
          <math|\<exists\>\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>.
          Using the hypothese there exists a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<vdash\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          we have <math|f<around*|(|x|)>\<less\>-\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          If we take then <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          we have <math|x<rsub|0>\<in\>V> and
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>x<rsub|0>> we
          have <math|x\<in\>A\<wedge\>0\<less\><around*|\||x<rsub|0>-x|\|>\<less\>\<delta\>>
          so that <math|f<around*|(|x|)>\<in\>U>. Proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>=L>.
        </description>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L\<in\>\<bbb-R\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>>

        <\description>
          <item*|<math|\<Rightarrow\>>>If <math|\<varepsilon\>\<gtr\>0> take
          then <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          [as <math|L\<in\>\<bbb-R\>>]. We have then that there exists a
          <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such that if
          <math|x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<Rightarrow\><around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.
          As <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|-\<infty\>>>
          we have <math|\<infty\>\<nin\>B> we have that
          <math|\<exists\>\<delta\>\<gtr\>0> such that
          <math|\<infty\>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>V>,
          so if <math|x\<in\>A> and <math|\<delta\>\<less\>x\<less\>\<infty\>>
          we have <math|x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>> and
          thus <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

          <item*|<math|\<Leftarrow\>>>Let
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L\<in\>\<bbb-R\>> we have
          <math|L\<in\>U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>\<subseteq\>U>.
          By the hypothese there exists a <math|\<delta\>\<gtr\>0> such that
          if <math|\<delta\>\<less\>x\<less\>\<infty\>> we have
          <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U>.
          Take now <math|V=<around*|]|\<delta\>,\<infty\>|]>> then if
          <math|x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>> we have
          <math|f<around*|(|x|)>\<in\>U> proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>
        </description>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=L>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|\<infty\>\<in\><around*|]|1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that \ <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        that <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously, so this
        is always true.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L>>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>> we
          have <math|x\<neq\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>> we
          have <math|x\<less\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0> we
          have that <math|L=\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>>
          so there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|\<infty\>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>> we
          have <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<Rightarrow\>\<varepsilon\>\<less\>f<around*|(|x|)>>.
          As <math|\<infty\>\<in\>V> there exists a <math|\<delta\>\<gtr\>0>
          such that <math|\<infty\>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>\<delta\>\<less\>x\<less\>\<infty\>>
          then <math|\<varepsilon\>\<less\>f<around*|(|x|)>>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|\<varepsilon\>\<gtr\>0> such
          that <math|\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>,
          by the hypothese there exists then a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<wedge\>\<delta\>\<less\>x\<less\>\<infty\>>
          then <math|\<varepsilon\>\<less\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          Take now <math|V=<around*|]|\<delta\>,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then we have <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>>
          that <math|f<around*|(|x|)>\<in\>U>
        </description>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|\<infty\>\<in\><around*|]|1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that \ <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        that <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously. So this
        is always true.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=\<infty\>>>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>> we
          have <math|x\<neq\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>> we
          have <math|x\<less\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>=\<infty\>,L=-\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0> we
          have that <math|L=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>>
          so there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|\<infty\>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>> we
          have <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<Rightarrow\>f<around*|(|x|)>\<less\>-\<varepsilon\>>.
          As <math|\<infty\>\<in\>V> there exists a <math|\<delta\>\<gtr\>0>
          such that <math|\<infty\>\<in\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>\<delta\>\<less\>x\<less\>\<infty\>>
          then <math|f<around*|(|x|)>\<less\>-\<infty\>>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|\<varepsilon\>\<gtr\>0> such
          that <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
          by the hypothese there exists then a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<wedge\>\<delta\>\<less\>x\<less\>\<infty\>>
          then <math|f<around*|(|x|)>\<less\>-\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          Take now <math|V=<around*|]|\<delta\>,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then we have <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>x\<less\>\<infty\>>
          that <math|f<around*|(|x|)>\<in\>U>
        </description>

        <item*|<math|<below|lim|x\<downarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|\<infty\>\<in\><around*|]|1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        that <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously. So this
        is always true.

        <item*|<math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>> we
          have <math|x\<less\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>\<infty\>>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<less\>\<infty\>> we
          have <math|x\<neq\>\<infty\>> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L\<in\>\<bbb-R\>>>then we have for
      the different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=L>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|-\<infty\>\<in\><around*|[|-\<infty\>,-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        \ <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously. So this is
        always true.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>>

        <\description>
          <item*|<math|\<Rightarrow\>>>If <math|\<varepsilon\>\<gtr\>0> take
          then <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          [as <math|L\<in\>\<bbb-R\>>]. We have then that there exists a
          <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such that if
          <math|x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<Rightarrow\><around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>.
          As <math|\<forall\>B\<in\>\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>>>
          we have <math|-\<infty\>\<nin\>B> we have that
          <math|\<exists\>\<delta\>\<gtr\>0> such that
          <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>V>,
          so if <math|x\<in\>A> and <math|-\<infty\>\<less\>x\<less\>-\<delta\>>
          we have <math|x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x> and
          thus <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>>

          <item*|<math|\<Leftarrow\>>>Let
          <math|L\<in\>U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then
          as <math|L\<in\>\<bbb-R\>> we have
          <math|L\<in\>U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
          [using <reference|topology on extented reals>] so there exists a
          <math|\<varepsilon\>\<gtr\>0> such that
          <math|L\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U<big|cap>\<bbb-R\>\<subseteq\>U>.
          By the hypothese there exists a <math|\<delta\>\<gtr\>0> such that
          if <math|-\<infty\>\<less\>x\<less\>-\<delta\>> we have
          <math|<around*|\||f<around*|(|x|)>-L|\|>\<less\>\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|L-\<varepsilon\>,L+\<varepsilon\>|[>\<subseteq\>U>.
          Take now <math|V=<around*|[|-\<infty\>,-\<delta\>|[>> then if
          <math|x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x> we have
          <math|f<around*|(|x|)>\<in\>U> proving that
          <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L=\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|-\<infty\>\<in\><around*|[|-\<infty\>,-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        \ <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously. So this is
        always true.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0> we
          have that <math|L=\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>>
          so there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|-\<infty\>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x> we
          have <math|f<around*|(|x|)>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<Rightarrow\>\<varepsilon\>\<less\>f<around*|(|x|)>>.
          As <math|-\<infty\>\<in\>V> there exists a <math|\<delta\>\<gtr\>0>
          such that <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>-\<infty\>\<less\>x\<less\>-\<delta\>>
          then <math|\<varepsilon\>\<less\>f<around*|(|x|)>>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|\<varepsilon\>\<gtr\>0> such
          that <math|\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>,
          by the hypothese there exists then a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<wedge\>-\<infty\>\<less\>x\<less\>-\<delta\>>
          then <math|\<varepsilon\>\<less\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          Take now <math|V=<around*|[|-\<infty\>,-\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then we have <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x>
          that <math|f<around*|(|x|)>\<in\>U>
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>

      <item*|<math|x<rsub|0>=-\<infty\>,L=-\<infty\>>>then we have for the
      different limits the following alternative definitions

      <\description>
        <item*|<math|<below|lim|x\<uparrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>>then
        given <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
        <math|L\<in\>U> we have for <math|-\<infty\>\<in\><around*|[|-\<infty\>,-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
        that <math|\<forall\>x\<in\><around*|]|1,\<infty\>|]>\<vdash\>x\<gtr\>\<infty\>>
        \ <math|f<around*|(|x|)>\<in\>U> is satisfied vacuously. So this is
        always true.

        <item*|<math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given <math|\<varepsilon\>\<gtr\>0> we
          have that <math|L=-\<infty\>\<in\><around*|[|-\<infty\>.-\<varepsilon\>|[>>
          so there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          with <math|-\<infty\>\<in\>V> such that
          <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x> we
          have <math|f<around*|(|x|)>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<Rightarrow\>f<around*|(|x|)>\<less\>-\<varepsilon\>>.
          As <math|-\<infty\>\<in\>V> there exists a <math|\<delta\>\<gtr\>0>
          such that <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<delta\>|[>\<subseteq\>V>.
          So if <math|x\<in\>A\<vdash\>-\<infty\>\<less\>x\<less\>-\<delta\>>
          then <math|f<around*|(|x|)>\<less\>-\<varepsilon\>>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L=-\<infty\>\<in\>U> there exists a
          <math|\<varepsilon\>\<gtr\>0> such that
          <math|-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
          by the hypothese there exists then a <math|\<delta\>\<gtr\>0> such
          that if <math|x\<in\>A\<wedge\>-\<infty\>\<less\>x\<less\>-\<delta\>>
          then <math|f<around*|(|x|)>\<less\>-\<varepsilon\>\<Rightarrow\>f<around*|(|x|)>\<in\>U>.
          Take now <math|V=<around*|[|-\<infty\>,-\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          then we have <math|\<forall\>x\<in\>A<big|cap>V\<vdash\>-\<infty\>\<less\>x>
          that <math|f<around*|(|x|)>\<in\>U>
        </description>

        <item*|<math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=-\<infty\>>>

        <\description>
          <item*|<math|\<Rightarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=L>

          <item*|<math|\<Leftarrow\>>>Given
          <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> with
          <math|L\<in\>U> there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
          such that <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>-\<infty\>\<less\>x>
          we have <math|f<around*|(|x|)>\<in\>U>, so
          <math|\<forall\>x\<in\>V<big|cap>A\<vdash\>x\<neq\>-\<infty\>> we
          have <math|-\<infty\>\<less\>x> giving that
          <math|f<around*|(|x|)>\<in\>U>, proving that
          <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=L>
        </description>
      </description>
    </description>
  </proof>

  <\lemma>
    <label|usefull properties of open sets in the extented reals >Let
    <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<in\>U> a open set in
    <math|<wide|\<bbb-R\>|\<bar\>>> then we have\ 

    <\enumerate>
      <item>If <math|-\<infty\>\<less\>x> then there exists a
      <math|z\<in\>\<bbb-R\>> such that <math|z\<less\>x> and
      <math|<around*|]|z,x|]>\<subseteq\>U>

      <item>If <math|x\<less\>\<infty\>> then there exists a
      <math|z\<in\>\<bbb-R\>> such that <math|x\<less\>z> and
      <math|<around*|[|x,z|[>\<subseteq\>U>
    </enumerate>

    Note that if <math|x=\<infty\>> or <math|x=-\<infty\>> we must have the
    inclusion <math|<around*|]|\<ldots\>x|]>> or
    <math|<around*|[|x\<ldots\>|[>>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|-\<infty\>\<less\>x> and <math|U> a open set in
      <math|<wide|\<bbb-R\>|\<bar\>>> containing <math|x> then there exists a
      <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such that
      <math|x\<in\>B\<subseteq\>U> now for <math|B> we have the following
      possibilities:

      <\description>
        <item*|<math|B=<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[> where
        y\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<gtr\>0>>take then
        <math|z=y-\<varepsilon\>> then as
        <math|x\<in\>B=<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>> we
        have <math|z=y-\<varepsilon\>\<less\>x> and
        <math|<around*|]|z,x|]>\<subseteq\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<subseteq\>U>.

        <item*|<math|B=<around*|[|-\<infty\>,y|[> where
        y\<in\>\<bbb-R\>>>then as <math|x\<in\>B> we have <math|x\<less\>y>,
        from <math|-\<infty\>\<less\>x\<less\>y\<less\>\<infty\>> we have
        then that <math|x\<in\>\<bbb-R\>>, take then <math|z=x-1> then we
        have <math|z\<less\>x> and <math|<around*|]|z,x|]>\<subseteq\><around*|[|-\<infty\>,y|[>\<subseteq\>U>.

        <item*|<math|B=<around*|]|y,\<infty\>|]>> where
        <math|y\<in\>\<bbb-R\>>>then as <math|x\<in\>B> we have
        <math|y\<less\>x> take then <math|z=y> then we have <math|z\<less\>x>
        and <math|<around*|]|z,x|]>\<subseteq\><around*|]|y,\<infty\>|]>\<subseteq\>U>
      </description>

      <item>If <math|x\<less\>\<infty\>> and <math|U> a open set in
      <math|<wide|\<bbb-R\>|\<bar\>>> containing <math|x> then there exists a
      <math|B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>> such that
      <math|x\<in\>B\<subseteq\>U> now for <math|B> we have the following
      possibilities:

      <\description>
        <item*|<math|B=<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[> where
        y\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<gtr\>0>>take then
        <math|z=y+\<varepsilon\>> then as
        <math|x\<in\>B=<around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>> we
        have <math|x\<less\>y+\<varepsilon\>=z> and
        <math|<around*|[|x,z|[>\<subseteq\><around*|]|y-\<varepsilon\>,y+\<varepsilon\>|[>\<subseteq\>U>.

        <item*|<math|B=<around*|[|-\<infty\>,y|[> where
        y\<in\>\<bbb-R\>>>then as <math|x\<in\>B> we have <math|x\<less\>y>,
        take then <math|z=y> then we have <math|x\<less\>z> and
        <math|<around*|[|x,z|[>\<subseteq\><around*|[|-\<infty\>,y|[>\<subseteq\>U>.

        <item*|<math|B=<around*|]|y,\<infty\>|]>> where
        <math|y\<in\>\<bbb-R\>>>then as <math|x\<in\>B> we have
        <math|y\<less\>x>, from <math|-\<infty\>\<less\>y\<less\>x\<less\>\<infty\>>
        we have <math|x\<in\>\<bbb-R\>>, take then <math|z=x+1> then we have
        <math|x\<less\>z> and <math|<around*|[|x,z|[>\<subseteq\><around*|]|y,\<infty\>|]>\<subseteq\>U>
      </description>
    </enumerate>
  </proof>

  \;

  <\theorem>
    <label|limit of monotone functions>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>, <math|f:A\<rightarrow\>B>
    a function and <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>> then we
    have\ 

    <\enumerate>
      <item>If <math|f> is a increasing function and <math|x<rsub|0>> is a
      left limit point of <math|A> then <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>>

      <item>If <math|f> is a increasing function and <math|x<rsub|0>> is a
      right limit point of <math|A> then <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>>

      <item>If <math|f> is a decreasing function and <math|x<rsub|0>> is a
      left limit point of <math|A> then <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>>

      <item>If <math|f> is a decreasing function and <math|x<rsub|0>> is a
      right limit point of <math|A> then <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|x<rsub|0>> is a left limit point we must have by
      <reference|limit points and plus or min infinity> that
      <math|-\<infty\>\<less\>x<rsub|0>>. Take
      <math|L=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>>
      then we have the following cases to consider

      <\description>
        <item*|<math|\<forall\>x\<in\>A\<vdash\>x\<less\>x<rsub|0>\<vDash\>f<around*|(|x|)>=-\<infty\>>>then
        using <reference|limit of a constant function> \ we have
        <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>=sup<around*|(|<around*|{|-\<infty\>|}>|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>=L>
        so that <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>

        <item*|<math|\<exists\>x<rsub|1>\<in\>A\<vdash\>x<rsub|1>\<less\>x<rsub|0>\<vDash\>f<around*|(|x<rsub|1>|)>\<gtr\>-\<infty\>>>then
        <math|L\<gtr\>-\<infty\>>. If now <math|U> is a open set in
        <math|<wide|\<bbb-R\>|\<bar\>>> with <math|L\<in\>U>, then using the
        previous lemma (see <reference|usefull properties of open sets in the
        extented reals >) there exists a <math|z\<in\>\<bbb-R\>> such that
        <math|z\<less\>L> and <math|<around*|]|z,L|]>\<subseteq\>U>. From the
        definition of a supremum and <math|z\<less\>L> it follows that there
        exists a <math|y\<in\>A> with <math|y\<less\>x<rsub|0>> such that
        <math|z\<less\>f<around*|(|y|)>\<leqslant\>L>. We have now to
        consider the following two cases for <math|x<rsub|0>>

        <\description>
          <item*|<math|x<rsub|0>=\<infty\>>>take then the open set
          <math|V=<around*|]|y,x<rsub|0>+1|]>> containing
          <math|x<rsub|0><rsub|>>, if now <math|x\<in\>V<big|cap>A> with
          <math|x\<less\>x<rsub|0>> then <math|y\<less\>x> so as <math|f> is
          increasing we have <math|z\<less\>f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>L\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|z,L|]>\<subseteq\>U>

          <item*|<math|x<rsub|0>\<in\>\<bbb-R\>>>for <math|y> we have as
          <math|y\<less\>x<rsub|0>> two possibilities\ 

          <\description>
            <item*|<math|y=-\<infty\>>>take the open set
            <math|V>=<math|<around*|]|x<rsub|0>-1,y|]>> containing
            <math|x<rsub|0>>, if now <math|x\<in\>V<big|cap>A> with
            <math|x<rsub|0>\<less\>x> then <math|x\<leqslant\>y> so as
            <math|f> is increasing we have
            <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>

            <item*|<math|y\<in\>\<bbb-R\>>>define then
            <math|\<delta\>=x<rsub|0>-y> and take the open set
            <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x<rsub|0>\<less\>x>
            then <math|y=x<rsub|0>-\<delta\>\<less\>x> so as <math|f> is
            increasing we have <math|z\<less\>f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>L\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|z,L|]>\<subseteq\>U>
          </description>
        </description>

        This proves that given <math|U> open with <math|L\<in\>U> there
        exists a <math|V> open containing <math|x<rsub|0>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<less\>x<rsub|0>> we
        have <math|f<around*|(|x|)>\<in\>U> proving that
        <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>
      </description>

      <item>As <math|x<rsub|0>> is a right limit point we must have by
      <reference|limit points and plus or min infinity> that
      \ <math|x<rsub|0>\<less\>\<infty\>>. Take
      <math|L=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>>
      then we have the following cases to consider

      <\description>
        <item*|<math|\<forall\>x\<in\>A\<vdash\>x<rsub|0>\<less\>x we have
        f<around*|(|x|)>=\<infty\>>>then using <reference|limit of a constant
        function> we have <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=inf<around*|(|<around*|{|\<infty\>|}>|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>=L>
        so that <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>

        <item*|<math|\<exists\>x<rsub|1>\<in\>A\<vdash\>x<rsub|0>\<less\>x<rsub|1>\<vDash\>f<around*|(|x|)>\<less\>\<infty\>>>then
        <math|L\<less\>\<infty\>>. If now <math|U> is a open set in
        <math|<wide|\<bbb-R\>|\<bar\>>> with <math|L\<in\>U>, then using the
        previous lemma (see <reference|usefull properties of open sets in the
        extented reals >) there exists a <math|z\<in\><wide|\<bbb-R\>|\<bar\>>>
        such that <math|L\<less\>z> and <math|<around*|[|L,z|[>\<subseteq\>U>.
        From the definition of a infinum and <math|L\<less\>z> it follows
        that there exists a <math|y\<in\>A> with <math|x<rsub|0>\<less\>y>
        such that <math|L\<leqslant\>f<around*|(|y|)>\<less\>z>. We have now
        to consider the following two cases for <math|x<rsub|0>>

        <\description>
          <item*|<math|x<rsub|0>=-\<infty\>>>take then the open set
          <math|V=<around*|[|-\<infty\>,y|[>> containing
          <math|x<rsub|0><rsub|>>, if now <math|x\<in\>V<big|cap>A> with
          <math|x<rsub|0>\<less\>x> then <math|x\<less\>y> so as <math|f> is
          increasing we have <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>

          <item*|<math|x<rsub|0>\<in\>\<bbb-R\>>>for <math|y> we have as
          <math|x<rsub|0>\<less\>y> two possibilities\ 

          <\description>
            <item*|<math|y=\<infty\>>>take the open set
            <math|V>=<math|<around*|]|x<rsub|0>-1,y|]>> containing
            <math|x<rsub|0>>, if now <math|x\<in\>V<big|cap>A> with
            <math|x<rsub|0>\<less\>x> then <math|x\<leqslant\>y> so as
            <math|f> is increasing we have
            <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>

            <item*|<math|y\<in\>\<bbb-R\>>>define then
            <math|\<delta\>=y-x<rsub|0>> and take the open set
            <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x<rsub|0>\<less\>x>
            then <math|x\<less\>x<rsub|0>+\<delta\>=y> so as <math|f> is
            increasing we have <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>
          </description>
        </description>

        This proves that given <math|U> open with <math|L\<in\>U> there
        exists a <math|V> open containing <math|x<rsub|0>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x<rsub|0>\<less\>x> we
        have <math|f<around*|(|x|)>\<in\>U> proving that
        <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>
      </description>

      <item>As <math|x<rsub|0>> is a left limit point we must have by
      <reference|limit points and plus or min infinity> that
      <math|-\<infty\>\<less\>x<rsub|0>>. \ Take
      <math|L=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>>
      then we have the following cases to consider

      <\description>
        <item*|<math|\<forall\>x\<in\>A\<vdash\>x\<less\>x<rsub|0>\<vDash\>f<around*|(|x|)>=\<infty\>>>then
        using <reference|limit of a constant function> \ we have
        <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=\<infty\>=inf<around*|(|<around*|{|\<infty\>|}>|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x\<less\>x<rsub|0>|}>|)>=L>
        so that <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>

        <item*|<math|\<exists\>x<rsub|1>\<in\>A\<vdash\>x<rsub|1>\<less\>x<rsub|0>\<vDash\>f<around*|(|x<rsub|1>|)>\<less\>\<infty\>>>then
        <math|L\<less\>\<infty\>>. If now <math|U> is a open set in
        <math|<wide|\<bbb-R\>|\<bar\>>> with <math|L\<in\>U>, then using the
        previous lemma (see <reference|usefull properties of open sets in the
        extented reals >) there exists a <math|z\<in\>\<bbb-R\>> such that
        <math|L\<less\>z> and <math|<around*|[|L,z|[>\<subseteq\>U>. From the
        definition of a infinum and <math|L\<less\>z> it follows that there
        exists a <math|y\<in\>A> with <math|y\<less\>x<rsub|0>> such that
        <math|L\<leqslant\>f<around*|(|y|)>\<less\>z>. We have now to
        consider the following two cases for <math|x<rsub|0>>

        <\description>
          <item*|<math|x<rsub|0>=\<infty\>>>take then the open set
          <math|V=<around*|]|y,x<rsub|0>|]>> containing
          <math|x<rsub|0><rsub|>>, if now <math|x\<in\>V<big|cap>A> with
          <math|x\<less\>x<rsub|0>> then <math|y\<less\>x> so as <math|f> is
          decreasing we have <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>

          <item*|<math|x<rsub|0>\<in\>\<bbb-R\>>>for <math|y> we have as
          <math|y\<less\>x<rsub|0>> two possibilities\ 

          <\description>
            <item*|<math|y=-\<infty\>>>take the open set
            <math|V=<around*|[|y,x<rsub|0>+1|[>> containing <math|x<rsub|0>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x\<less\>x<rsub|0>>
            then <math|y\<leqslant\>x> so as <math|f> is decreasing we have
            <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,z|[>\<subseteq\>U>

            <item*|<math|y\<in\>\<bbb-R\>>>define then
            <math|\<delta\>=x<rsub|0>-y> and take the open set
            <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x<rsub|0>\<less\>x>
            then <math|y=x<rsub|0>-\<delta\>\<less\>x> so as <math|f> is
            decreasing we have <math|L\<leqslant\>f<around*|(|x|)>\<leqslant\>f<around*|(|y|)>\<less\>z\<Rightarrow\>f<around*|(|x|)>\<in\><around*|[|L,x|[>\<subseteq\>U>
          </description>
        </description>

        This proves that given <math|U> open with <math|L\<in\>U> there
        exists a <math|V> open containing <math|x<rsub|0>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<less\>x<rsub|0>> we
        have <math|f<around*|(|x|)>\<in\>U> proving that
        <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>=L>.
      </description>

      <item>As <math|x<rsub|0>> is a right limit point we must have by
      <reference|limit points and plus or min infinity> that
      <math|x<rsub|0>\<less\>\<infty\>>. \ Take
      <math|L=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>>
      then we have the following cases to consider

      <\description>
        <item*|<math|\<forall\>x\<in\>A\<vdash\>x\<less\>x<rsub|0>\<vDash\>f<around*|(|x|)>=-\<infty\>>>then
        using <reference|limit of a constant function> \ we have
        <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=-\<infty\>=sup<around*|(|<around*|{|\<infty\>|}>|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|x\<in\>A\<wedge\>x<rsub|0>\<less\>x|}>|)>=L>
        so that <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>

        <item*|<math|\<exists\>x<rsub|1>\<in\>A\<vdash\>x<rsub|0>\<less\>x<rsub|1>\<vDash\>-\<infty\>\<less\>f<around*|(|x<rsub|1>|)>>>then
        <math|-\<infty\>\<less\>L>. If now <math|U> is a open set in
        <math|<wide|\<bbb-R\>|\<bar\>>> with <math|L\<in\>U>, then using the
        previous lemma (see <reference|usefull properties of open sets in the
        extented reals >) there exists a <math|z\<in\>\<bbb-R\>> such that
        <math|z\<less\>L> and <math|<around*|]|z,L|]>\<subseteq\>U>. From the
        definition of a supremum and <math|z\<less\>L> it follows that there
        exists a <math|y\<in\>A> with <math|x<rsub|0>\<less\>y> such that
        <math|z\<less\>f<around*|(|y|)>\<leqslant\>L>. We have now to
        consider the following two cases for <math|x<rsub|0>>

        <\description>
          <item*|<math|x<rsub|0>=-\<infty\>>>take then the open set
          <math|V=<around*|[|x<rsub|0>,y|[>> containing
          <math|x<rsub|0><rsub|>>, if now <math|x\<in\>V<big|cap>A> with
          <math|x<rsub|0>\<less\>x> then <math|x\<less\>y> so as <math|f> is
          decreasing we have <math|z\<less\>f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>L\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|z,L|]>\<subseteq\>U>

          <item*|<math|x<rsub|0>\<in\>\<bbb-R\>>>for <math|y> we have as
          <math|x<rsub|0>\<less\>y> two possibilities\ 

          <\description>
            <item*|<math|y=\<infty\>>>take the open set
            <math|V=<around*|]|x<rsub|0>-1,y|]>> containing <math|x<rsub|0>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x<rsub|0>\<less\>x>
            then <math|x\<leqslant\>y> so as <math|f> is decreasing we have
            <math|z\<less\>f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>L\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|z,L|]>\<subseteq\>U>

            <item*|<math|y\<in\>\<bbb-R\>>>define then
            <math|\<delta\>=y-x<rsub|0>> and take the open set
            <math|V=<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>>,
            if now <math|x\<in\>V<big|cap>A> with <math|x\<less\>x<rsub|0>>
            then <math|x\<less\>x<rsub|0>+\<delta\>=y> so as <math|f> is
            decreasing we have <math|z\<less\>f<around*|(|y|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>L\<Rightarrow\>f<around*|(|x|)>\<in\><around*|]|z,L|]>\<subseteq\>U>
          </description>
        </description>

        This proves that given <math|U> open with <math|L\<in\>U> there
        exists a <math|V> open containing <math|x<rsub|0>> such that
        <math|\<forall\>x\<in\>V<big|cap>A> with <math|x\<less\>x<rsub|0>> we
        have <math|f<around*|(|x|)>\<in\>U> proving that
        <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>=L>.
      </description>
    </enumerate>
  </proof>

  Applying the above on limits at <math|\<infty\>> and <math|-\<infty\>>
  gives the following corollary.

  <\corollary>
    <label|limit at infinity of ascending (descending) functions>Let
    <math|B\<subseteq\><wide|\<bbb-R\>|\<bar\>>> then we have that\ 

    <\enumerate>
      <item>If <math|f:<around*|[|-\<infty\>,a|]>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<leqslant\>a|}>|)>>

      <item>If <math|f:<around*|[|-\<infty\>,a|[>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<less\>a|}>|)>>

      <item>If <math|f:<around*|]|-\<infty\>,a|]>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<leqslant\>a|}>|)>>

      <item>If <math|f:<around*|]|-\<infty\>,a|[>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<less\>a|}>|)>>

      <item>If <math|f:<around*|[|-\<infty\>,a|]>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<leqslant\>a|}>|)>>

      <item>If <math|f:<around*|[|-\<infty\>,a|[>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<less\>a|}>|)>>

      <item>If <math|f:<around*|]|-\<infty\>,a|]>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<leqslant\>a|}>|)>>

      <item>If <math|f:<around*|]|-\<infty\>,a|[>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>-\<infty\>>f<around*|(|x|)>=<below|lim|x\<downarrow\>-\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|-\<infty\>\<less\>x\<less\>a|}>|)>>

      <item>If <math|f:<around*|[|a,\<infty\>|]>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|a\<leqslant\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|[|a,\<infty\>|[>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|a\<leqslant\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|]|a,\<infty\>|]>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|a\<less\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|]|a,\<infty\>|[>\<rightarrow\>B> is a
      increasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|a\<less\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|[|a,\<infty\>|]>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|a\<leqslant\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|[|a,\<infty\>|[>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|a\<leqslant\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|]|a,\<infty\>|]>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|a\<less\>x\<less\>\<infty\>|}>|)>>

      <item>If <math|f:<around*|]|a,\<infty\>|[>\<rightarrow\>B> is a
      decreasing function where <math|a\<in\>\<bbb-R\><big|cup><around*|{|-\<infty\>|}>>
      then <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|x\<uparrow\>\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|a\<less\>x\<less\>\<infty\>|}>|)>>
    </enumerate>
  </corollary>

  <\proof>
    This follows from the fact that in cases 1,2,3,4,5,7,8 <math|-\<infty\>>
    is a left limit point of the domain of <math|f>, in cases
    <math|9,10,11,12,13,14,15,16> is <math|\<infty\>> is a right limit point
    of the domain of <math|f>, theorem <reference|limits at infinity> and the
    previous theorem <reference|limit of monotone functions>.
  </proof>

  <\theorem>
    <label|limit for f\<less\>=g>Let <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>>, <math|x<rsub|0>\<in\>W> a
    open set and <math|f:A\<rightarrow\>B>, <math|g:A\<rightarrow\>B> \ be
    functions so that <math|\<forall\>x\<in\>A<big|cap>W> we have
    <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>> then we have

    <\enumerate>
      <item>If <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>> exists then
      we have <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>

      <item>If <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>> exists then we
      have <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>>

      <item>If <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>> exists then
      we have <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>
    </enumerate>
  </theorem>

  <\proof>
    The proofs for the the different cases are similar\ 

    <\enumerate>
      <item>Take <math|L<rsub|f>=<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|L<rsub|g>=<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>
      and assume that <math|L<rsub|g>\<less\>L<rsub|f>>, the following
      possibilities exists then for <math|L<rsub|f>,L<rsub|g>>

      <\description>
        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-1,L<rsub|g>+1|[>> a open
        set so by the definition of the right limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|L<rsub|g>-1\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+1>. Also
        <math|<around*|]|L<rsub|g>+1,\<infty\>|]>> is a open set containing
        <math|L<rsub|f>=\<infty\>> so by the definition of a right limit
        there exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>>
        so that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<less\>x<rsub|>> we have
        <math|L<rsub|g>+1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>. Now
        as <math|x<rsub|0>> is a right limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<less\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|g>+1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,1|[>> a open
        set so by definition of the right limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>1>. Also
        <math|<around*|]|1,\<infty\>|]>> is a open set containing
        <math|L<rsub|f>=\<infty\>> so by the definition of a right limit
        there exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>>
        so that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>. Now as
        <math|x<rsub|0>> is a right limit point and
        <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        there exists a <math|y<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>A>
        with <math|x<rsub|0>\<less\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Take
        then <math|\<varepsilon\>=<frac|L<rsub|f>-L<rsub|g>|2>>. We have then
        that <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-\<varepsilon\>,L<rsub|g>+\<varepsilon\>|[>>
        a open set so by definition of the right limit there exists a open
        set <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|L<rsub|g>-\<varepsilon\>\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+\<varepsilon\>=<frac|L<rsub|f>+L<rsub|g>|2>>.
        Also <math|<around*|]|L<rsub|f>-\<varepsilon\>,L<rsub|f>+\<varepsilon\>|[>>
        is a open set containing <math|L<rsub|f>> thus we have by the
        definition of a right limit that there exists a open set
        <math|V<rsub|f>> such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A>
        with <math|x<rsub|0>\<less\>x> we have
        <math|<frac|L<rsub|f>+L<rsub|g>|2>=L<rsub|f>-\<varepsilon\>\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+\<varepsilon\>>.
        Now as <math|x<rsub|0>> is a right limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<less\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\><frac|L<rsub|f>+L<rsub|g>|2>\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,L<rsub|f>-1|[>>
        a open set so by the definition of the right limit there exists a
        open set <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>L<rsub|f>-1>.
        Also <math|<around*|]|L<rsub|f>-1,L<rsub|f>+1|[>> is a open set
        containing <math|L<rsub|f>> so by the definition of a right limit
        there exists a open set <math|V<rsub|f>> such that
        <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<less\>x> we have
        <math|L<rsub|f>-1\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+1>. \ Now
        as <math|x<rsub|0>> is a right limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<less\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|f>-1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.
      </description>

      <item>Take <math|L<rsub|f>=<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|L<rsub|g>=<below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>>
      and assume that <math|L<rsub|g>\<less\>L<rsub|f>>, the following
      possibilities exists then for <math|L<rsub|f>,L<rsub|g>>

      <\description>
        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-1,L<rsub|g>+1|[>> a open
        set so by the definition of the left limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|L<rsub|g>-1\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+1>. Also
        <math|<around*|]|L<rsub|g>+1,\<infty\>|]>> is a open set containing
        <math|L<rsub|f>=\<infty\>> so by the definition of a left limit there
        exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>> so
        that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x\<less\>x<rsub|0><rsub|>> we have
        <math|L<rsub|g>+1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>. Now
        as <math|x<rsub|0>> is a left limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|y<rsub|0>\<less\>x<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|g>+1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,1|[>> a open
        set so by definition of the left limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>1>. Also
        <math|<around*|]|1,\<infty\>|]>> is a open set containing
        <math|L<rsub|f>=\<infty\>> so by the definition of a left limit there
        exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>> so
        that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>. Now as
        <math|x<rsub|0>> is a left limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|y<rsub|0>\<less\>x<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Take
        then <math|\<varepsilon\>=<frac|L<rsub|f>-L<rsub|g>|2>>. We have then
        that <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-\<varepsilon\>,L<rsub|g>+\<varepsilon\>|[>>
        a open set so by definition of the left limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|L<rsub|g>-\<varepsilon\>\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+\<varepsilon\>=<frac|L<rsub|f>+L<rsub|g>|2>>.
        Also <math|<around*|]|L<rsub|f>-\<varepsilon\>,L<rsub|f>+\<varepsilon\>|[>>
        is a open set containing <math|L<rsub|f>> thus we have by the
        definition of a left limit that there exists a open set
        <math|V<rsub|f>> such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A>
        with <math|x\<less\>x<rsub|0>> we have
        <math|<frac|L<rsub|f>+L<rsub|g>|2>=L<rsub|f>-\<varepsilon\>\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+\<varepsilon\>>.
        Now as <math|x<rsub|0>> is a left limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|y<rsub|0>\<less\>x<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\><frac|L<rsub|f>+L<rsub|g>|2>\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,L<rsub|f>-1|[>>
        a open set so by the definition of the left limit there exists a open
        set <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>L<rsub|f>-1>.
        Also <math|<around*|]|L<rsub|f>-1,L<rsub|f>+1|[>> is a open set
        containing <math|L<rsub|f>> so by the definition of a left limit
        there exists a open set <math|V<rsub|f>> such that
        <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x\<less\>x<rsub|0>> we have
        <math|L<rsub|f>-1\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+1>. \ Now
        as <math|x<rsub|0>> is a left limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|y<rsub|0>\<less\>x<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|f>-1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.
      </description>

      <item>Take <math|L<rsub|f>=<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>,
      <math|L<rsub|g>=<below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>>
      and assume that <math|L<rsub|g>\<less\>L<rsub|f>>, the following
      possibilities exists then for <math|L<rsub|f>,L<rsub|g>>

      <\description>
        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-1,L<rsub|g>+1|[>> a open
        set so by the definition of the limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|L<rsub|g>-1\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+1>.
        Also <math|<around*|]|L<rsub|g>+1,\<infty\>|]>> is a open set
        containing <math|L<rsub|f>=\<infty\>> so by the definition of a limit
        there exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>>
        so that <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        with <math|x<rsub|0>\<neq\>x<rsub|>> we have
        <math|L<rsub|g>+1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>. Now
        as <math|x<rsub|0>> is a limit point and
        <math|x<rsub|0>\<in\>V<rsub|f><big|cap>V<rsub|g><rsub|>> there exists
        a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<neq\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|g>+1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>=\<infty\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,1|[>> a open
        set so by definition of the limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>1>.
        Also <math|<around*|]|1,\<infty\>|]>> is a open set containing
        <math|L<rsub|f>=\<infty\>> so by the definition of a limit there
        exists a open set <math|V<rsub|f>> containing <math|x<rsub|0>> so
        that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|1\<less\>f<around*|(|x|)>\<leqslant\>\<infty\>>.
        Now as <math|x<rsub|0>> is a limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<neq\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>

        <item*|<math|L<rsub|g>\<in\>\<bbb-R\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Take
        then <math|\<varepsilon\>=<frac|L<rsub|f>-L<rsub|g>|2>>. We have then
        that <math|L<rsub|g>\<in\><around*|]|L<rsub|g>-\<varepsilon\>,L<rsub|g>+\<varepsilon\>|[>>
        a open set so by definition of the limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|L<rsub|g>-\<varepsilon\>\<less\>g<around*|(|x|)>\<less\>L<rsub|g>+\<varepsilon\>=<frac|L<rsub|f>+L<rsub|g>|2>>.
        Also <math|<around*|]|L<rsub|f>-\<varepsilon\>,L<rsub|f>+\<varepsilon\>|[>>
        is a open set containing <math|L<rsub|f>> thus we have by the
        definition of a limit that there exists a open set <math|V<rsub|f>>
        such that <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|<frac|L<rsub|f>+L<rsub|g>|2>=L<rsub|f>-\<varepsilon\>\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+\<varepsilon\>>.
        Now as <math|x<rsub|0>> is a limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<neq\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\><frac|L<rsub|f>+L<rsub|g>|2>\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.

        <item*|<math|L<rsub|g>=-\<infty\>\<wedge\>L<rsub|f>\<in\>\<bbb-R\>>>Then
        <math|-\<infty\>=L<rsub|g>\<in\><around*|[|-\<infty\>,L<rsub|f>-1|[>>
        a open set so by the definition of the limit there exists a open set
        <math|V<rsub|g>> containing <math|x<rsub|0>> so that
        <math|\<forall\>x\<in\>V<rsub|g><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|-\<infty\>\<leqslant\>g<around*|(|x|)>\<less\>L<rsub|f>-1>.
        Also <math|<around*|]|L<rsub|f>-1,L<rsub|f>+1|[>> is a open set
        containing <math|L<rsub|f>> so by the definition of a limit there
        exists a open set <math|V<rsub|f>> such that
        <math|\<forall\>x\<in\>V<rsub|f><big|cap>A> with
        <math|x<rsub|0>\<neq\>x> we have <math|L<rsub|f>-1\<less\>f<around*|(|x|)>\<less\>L<rsub|f>+1>.
        \ Now as <math|x<rsub|0>> is a limit point and
        <math|x<rsub|0>\<in\><around*|(|V<rsub|f><big|cap>V<rsub|g><rsub|>|)><big|cap>W>
        there exists a <math|y<rsub|0>\<in\><around*|(|<around*|(|V<rsub|f><big|cap>V<rsub|g>|)><big|cap>W|)><big|cap>A>
        with <math|x<rsub|0>\<neq\>y<rsub|0>> and thus by the above we have
        <math|g<around*|(|y<rsub|0>|)>\<less\>L<rsub|f>-1\<less\>f<around*|(|y<rsub|0>|)>>
        contradicting the fact that <math|f<around*|(|y<rsub|0>|)>\<leqslant\>g<around*|(|y<rsub|0>|)>>.
        So we must have <math|L<rsub|f>\<leqslant\>L<rsub|g>>.
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|limit for f\<less\>=L or L\<less\>=f>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|x<rsub|0>,L\<in\><wide|\<bbb-R\>|\<bar\>>>, <math|x<rsub|0>\<in\>W>
    a open set and <math|f:A\<rightarrow\>B> then

    <\enumerate>
      <item>If <math|\<forall\>x\<in\>A<big|cap>W> we have
      <math|f<around*|(|x|)>\<leqslant\>L> then\ 

      <\enumerate>
        <item>If <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\>L>

        <item>If <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\>L>

        <item>If <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\>L>
      </enumerate>

      <item>If <math|\<forall\>x\<in\>A<big|cap>W> we have
      <math|L\<leqslant\>f<around*|(|x|)>> then\ 

      <\enumerate>
        <item>If <math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|<below|L\<leqslant\>lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>

        <item>If <math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|<below|L\<leqslant\>lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>

        <item>If <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>
        exists then <math|L\<leqslant\><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>
      </enumerate>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item> In this define then <math|g:A\<rightarrow\>B> by
      <math|x\<rightarrow\>L> so that <math|\<forall\>x\<in\>A<big|cap>W> we
      have <math|f<around*|(|x|)>\<leqslant\>L=g<around*|(|x|)>>, applying
      then the previous theorem (see <reference|limit for f\<less\>=g>) gives

      <\enumerate>
        <item><math|<below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>\<equallim\><rsub|<text|<reference|limit
        of a constant function>>>L>

        <item><math|<below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>\<equallim\><rsub|<text|<reference|limit
        of a constant function>>>L>

        <item><math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>\<leqslant\><below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>\<equallim\><rsub|<text|<reference|limit
        of a constant function>>>L>
      </enumerate>

      <item>In this define then <math|g:A\<rightarrow\>B> by
      <math|x\<rightarrow\>L> so that <math|\<forall\>x\<in\>A<big|cap>W> we
      have <math|g<around*|(|x|)>=L\<leqslant\>f<around*|(|x|)>>, applying
      then the previous theorem (see <reference|limit for f\<less\>=g>) gives

      <\enumerate>
        <item><math|L\<equallim\><rsub|<text|<reference|limit of a constant
        function>>><below|lim|x\<downarrow\>x<rsub|0>>g<around*|(|x|)>\<leqslant\><below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>>

        <item><math|L\<equallim\><rsub|<text|<reference|limit of a constant
        function>>><below|lim|x\<uparrow\>x<rsub|0>>g<around*|(|x|)>\<leqslant\><below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>>

        <item><math|L\<equallim\><rsub|<text|<reference|limit of a constant
        function>>><below|lim|x\<rightarrow\>x<rsub|0>>g<around*|(|x|)>\<leqslant\><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>
      </enumerate>
    </enumerate>
  </proof>

  <subsection|Sequences in <math|<wide|\<bbb-R\>|\<bar\>>>>\ 

  Note that the sum in <math|<wide|\<bbb-R\>|\<bar\>>> is not always defined
  so if we want to see how the supremum and infinum behaves on sums we have
  to be carefull, that is the reason that we restrict ourself to positve
  extended reals.

  <\notation>
    Given <math|k\<in\>\<bbb-N\><rsub|0>> we note
    <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|k\<leqslant\>i|}>> as
    <math|<around*|{|k,\<ldots\>.,\<infty\>|}>>
  </notation>

  <\definition>
    <label|increasing (decreasing) sequence><index|increasing
    sequence><index|decreasing sequence>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>>>
    be a sequence in a partial ordered set
    <math|<around*|\<langle\>|S,\<leqslant\>|\<rangle\>>> then we say that
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a increasing (decreasing) sequence if
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<leqslant\>x<rsub|i+1>>
    (<math|x<rsub|i+1>\<leqslant\>x<rsub|i>>)
  </definition>

  <\lemma>
    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence then
    <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|n\<leqslant\>m> we have <math|x<rsub|n>\<leqslant\>x<rsub|m>>
    (<math|x<rsub|m>\<leqslant\>x<rsub|n>>)
  </lemma>

  <\proof>
    The proof is trivial by mathematical induction, let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence
    \ <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define
    <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|x<rsub|n>\<leqslant\>x<rsub|n+m>
    <around*|(|or x<rsub|n+m>\<leqslant\>x<rsub|n>|)>|}>> then we have

    <\description>
      <item*|<math|0\<in\>S>>this is trivial as
      <math|x<rsub|n>\<leqslant\>x<rsub|n>=x<rsub|n+0>> (or
      <math|x<rsub|n+0>=x<rsub|n>\<leqslant\>x<rsub|n>>)

      <item*|if <math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>from <math|m\<in\>S>
      we have <math|x<rsub|n>\<leqslant\>x<rsub|n+m>\<leqslant\>x<rsub|n+m+1>\<Rightarrow\>x<rsub|n>\<leqslant\>x<rsub|n+m+1>>
      (or <math|x<rsub|n+m+1>\<leqslant\>x<rsub|n+m>\<leqslant\>x<rsub|n>\<Rightarrow\>x<rsub|n+m+1>\<leqslant\>x<rsub|n>>)
      proving <math|m+1\<in\>S>
    </description>

    Let now <math|n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|n\<leqslant\>m> (or <math|m\<leqslant\>n>) then
    <math|i=m-n\<in\>S<rsub|n>\<Rightarrow\>x<rsub|n>\<leqslant\>x<rsub|n+<around*|(|m-n|)>>=x<rsub|m>>
    (or <math|x<rsub|m>=x<rsub|n+<around*|(|m-n|)>>\<leqslant\>x<rsub|n>>)
  </proof>

  <\lemma>
    <label|increasing (decreasing) sequence converges>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (decreasing) sequence of real numbers then we have

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      has a supremum (infinum) then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      exists and <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists
      then <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      (<math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>)
      exists and <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      (<math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>)
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|increasing sequence>Let <math|x=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
        have <math|x<rsub|i>\<leqslant\>x>. If <math|\<varepsilon\>\<gtr\>0>
        then there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|x-\<varepsilon\>\<less\>x<rsub|N>\<leqslant\>x>, if
        now <math|n\<geqslant\>N> then <math|x-\<varepsilon\>\<less\>x<rsub|N>\<leqslant\>x<rsub|n>\<leqslant\>x>
        or <math|<around*|\||x-x<rsub|n>|\|>=x-x<rsub|n>\<less\>x-<around*|(|x-\<varepsilon\>|)>=\<varepsilon\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>

        <item*|decreasing sequence>Let <math|x=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
        have <math|x\<leqslant\>x<rsub|i>>. If <math|\<varepsilon\>\<gtr\>0>
        then there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|x\<leqslant\>x<rsub|N>\<less\>x+\<varepsilon\>>, if
        now <math|n\<geqslant\>N> then <math|x\<leqslant\>x<rsub|n>\<leqslant\>x<rsub|N>\<less\>x+\<varepsilon\>>
        or <math|<around*|\||x-x<rsub|n>|\|>=x<rsub|n>-x\<less\>x+\<varepsilon\>-x=\<varepsilon\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
      </description>

      <item>\ 

      <\description>
        <item*|increasing sequence>Take <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
        Assume that <math|\<exists\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        with <math|x\<less\>x<rsub|m>> define then
        <math|\<varepsilon\>=x<rsub|m>-x\<gtr\>0> then there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<geqslant\>N> we have
        <math|<around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>>. Take now
        <math|N<rsub|0>=max<around*|(|N,m|)>\<Rightarrow\>N<rsub|0>\<geqslant\>N,m>
        so that <math|x\<less\>x<rsub|m>\<leqslant\>x<rsub|N<rsub|0>>\<Rightarrow\>\<varepsilon\>=x<rsub|m>-x\<leqslant\>x<rsub|N<rsub|0>>-x\<leqslant\><around*|\||x<rsub|N<rsub|0>>-x|\|>\<less\>\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
        a contradiction. Proving\ 

        <\equation>
          \<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we have
          x<rsub|i>\<leqslant\>x
        </equation>

        So <math|x> is a upper bound of <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
        and thus by <reference|the reals are conditional complete> there
        exists a <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>.
        Using (1) we have then that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>

        <item*|decreasing sequence>Take <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
        Assume that <math|\<exists\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        with <math|x<rsub|m>\<less\>x> define then
        <math|\<varepsilon\>=x-x<rsub|m>\<gtr\>0> then there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<geqslant\>N> we have
        <math|<around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>>. Take now
        <math|N<rsub|0>=max<around*|(|N,m|)>\<Rightarrow\>N<rsub|0>\<geqslant\>N,m>
        so that <math|x\<less\>x<rsub|N<rsub|0>>\<leqslant\>x<rsub|m>\<Rightarrow\>\<varepsilon\>=x-x<rsub|m>\<leqslant\>x-x<rsub|N<rsub|0>>\<leqslant\><around*|\||x<rsub|N<rsub|0>>-x|\|>\<less\>\<varepsilon\>\<Rightarrow\>\<varepsilon\>\<less\>\<varepsilon\>>
        a contradiction. Proving\ 

        <\equation>
          \<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we have
          x\<leqslant\>x<rsub|i>
        </equation>

        So <math|x> is a lower bound of <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
        and thus by <reference|the reals are conditional complete> there
        exists a <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>.
        Using (1) we have then that <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
      </description>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|existance of lim inf and lim sup>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    and <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    exists always. Furthermore if <math|m\<geqslant\>n> then
    <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>.\<infty\>|}>|}>|)>>
    and <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
  </theorem>

  <\proof>
    The existence follows from the fact that in
    <math|<wide|\<bbb-R\>|\<bar\>>> every non empty set has a sup and inf
    (see <reference|every non empty set in the extented reals has a limit>).
    For the rest assume that <math|m\<gtr\>n> [the theorem is trivial if
    <math|m=n>] then we have <math|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><around*|\||k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|\<nobracket\>>|}>>
    and <math|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
    so that by <reference|inclusion and sup and inf> we have

    <\equation>
      <label|eq 13.4.39>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><around*|\||k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|\<nobracket\>>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><around*|\||k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|\<nobracket\>>|}>|)>
    </equation>

    and\ 

    <\equation>
      <label|eq 13.5.39>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation>

    Next if <math|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> then we have
    the following possibilities\ 

    <\description>
      <item*|<math|n\<leqslant\>l\<less\>m>>then we have for
      <math|m\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> that
      <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>

      <item*|<math|m\<leqslant\>l>>then we have
      <math|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> and
      <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      [as <math|=\<Rightarrow\>\<leqslant\>>]\ 
    </description>

    so using <reference|sup of set of bigger elements> we have
    <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>,
    using <reference|eq 13.4.39> we have then\ 

    <\equation>
      <label|eq 13.6.39>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><around*|\||k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|\<nobracket\>>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><around*|\||k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|\<nobracket\>>|}>|)>
    </equation>

    \ Finally if <math|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> then we
    have the following possibilites

    <\description>
      <item*|<math|n\<leqslant\>l\<less\>m>>then we have for
      <math|m\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>

      <item*|<math|m\<leqslant\>l>>then we have
      <math|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> and
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
      [as <math|=\<Rightarrow\>\<leqslant\>>]
    </description>

    so using <reference|sup of set of bigger elements> we have
    <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>,
    using <reference|eq 13.5.39> we have then\ 

    <\equation>
      <label|eq 13.7.39>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation>

    Using <reference|eq 13.6.39> and <reference|eq 13.7.39> we have proved
    the theorem.
  </proof>

  The above theorem motivates the following definition

  <\definition>
    <label|lim inf and lim sup><index|<math|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>><index|<math|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then <math|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    and <math|<below|lim sup|i\<rightarrow\>\<infty\>>
    x<rsub|i>=inf<around*|(|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>|)>>.
  </definition>

  <\note>
    <label|independence of limit inf and limit sup of start index>Notice that
    in the above notation <math|<below|lim inf|i\<rightarrow\>\<infty\>>> and
    <math|<below|lim sup|i\<rightarrow\>\<infty\>>> is independent of the
    value of <math|k> as is indeed expressed in the previous theorem.
  </note>

  <\theorem>
    <label|lim sup xn+x>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals, <math|x\<in\>\<bbb-R\>>, such that
    <math|<around*|{|x<rsub|i>+x|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is well defined then\ 

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>=<around*|(|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>=<around*|(|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>+x\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup
        of set and sum>>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+x\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup
        of set and sum>>>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+x>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim
        sup|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>+x\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup
        of set and sum>>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+x\|l\<in\><around*|{|,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup
        of set and sum>>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+x>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+x>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|lim inf -xn>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a sequence of extended reals then\ 

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>=-<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>=<below|-lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim
          inf|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|-x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
          A=inf -A>>>>|<cell|sup<around*|(|<around*|{|-sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
          A=inf -A>>>>|<cell|-inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|-<below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
        </eqnarray*>

        <item>

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim
          sup|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|-<below|lim
          inf|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|-x<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
        </eqnarray*>
      </enumerate>
    </proof>
  </theorem>

  The following theorem shows the relation between both types of limits.

  <\theorem>
    <label|the limit inferior is lower then limit superior>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
  </theorem>

  <\proof>
    Take <math|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> then for
    <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    we have if <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> that
    <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|l>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,n|}>|}>|)>>
    and if <math|l\<in\><around*|{|1,\<ldots\>,k-1|}>> then
    <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|k>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
    so we have proved that\ 

    <\equation*>
      \<forall\>k\<in\><around*|{|1,\<ldots\>,\<infty\>|}> we have
      inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>
      \<forall\>l\<in\><around*|{|1,\<ldots\>,\<infty\>|}>
    </equation*>

    So <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> we have
    <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>sup
    x<rsub|i>> so that <math|<below|lim|i\<rightarrow\>\<infty\>>inf
    x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>inf
    x<rsub|i>>
  </proof>

  <\theorem>
    <label|convergence in real implies that lim inferior = lim superior>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a sequence of real numbers then we have

    <\enumerate>
      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists
      then <math|<below|lim inf |i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

      <item>If <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>,<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<in\>\<bbb-R\>> and<math|> <math|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists and
      <math|><math|<below|lim inf |i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      exists and that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>.
      Assume now that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<less\>x> then take <math|\<varepsilon\>=x-<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>. By the existance of a limit
      there exists a <math|N> such that if <math|n\<geqslant\>N> we have that
      <math|<around*|\||x<rsub|n>-x|\|>\<less\><frac|\<varepsilon\>|2>>. As
      <math|<below|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
      inf|i\<rightarrow\>\<infty\>>|i\<rightarrow\>\<infty\>> x<rsub|i>> we
      have <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\><below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>+<frac|\<varepsilon\>|2>> there
      exists a <math|M\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> such that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|M>\<less\><below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>+<frac|\<varepsilon\>|2>> then
      we have <math|x<rsub|M>\<less\>x-\<varepsilon\>+<frac|\<varepsilon\>|2>=x-<frac|\<varepsilon\>|2>\<Rightarrow\>0\<less\>x-x<rsub|M>-<frac|\<varepsilon\>|2>\<Rightarrow\>0\<less\><frac|\<varepsilon\>|2>\<less\>x-x<rsub|M>=<around*|\||x-x<rsub|M>|\|>\<less\><frac|\<varepsilon\>|2>>
      (as <math|N\<leqslant\>M>) so we reach the contradiction . So we must
      have\ 

      <\equation>
        <label|eq 13.3>x\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>
      </equation>

      Assume now that <math|<below|x\<less\>lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>> then take <math|\<varepsilon\>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>-x>. By the existance of a limit
      there exists a <math|N> such that if <math|n\<geqslant\>N> we have that
      <math|<around*|\||x<rsub|n>-x|\|>\<less\><frac|\<varepsilon\>|2>>. As
      <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>
      we have that <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>-<frac|\<varepsilon\>|2>\<less\><below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>
      and thus there exists a <math|M\<in\><around*|{|N,\<ldots\>.,\<infty\>|}>>
      such that <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>-<frac|\<varepsilon\>|2>\<less\>x<rsub|M>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\>\<varepsilon\>+x-<frac|\<varepsilon\>|2>\<less\>x<rsub|M>\<Rightarrow\>0\<less\><frac|\<varepsilon\>|2>\<less\>x<rsub|M>-x=<around*|\||x<rsub|M>-x|\|>\<less\><frac|\<varepsilon\>|2>>
      (as <math|N\<leqslant\>M>) giving contradiction. So we must have that\ 

      <\equation>
        <label|eq 13.4><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<leqslant\>x
      </equation>

      So using <reference|the limit inferior is lower then limit superior>,
      <reference|eq 13.3> and <reference|eq 13.4> we have that
      <math|x\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<Rightarrow\><below|lim inf
      |i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=x>

      <item>Assume that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>=x> then if
      <math|\<varepsilon\>\<gtr\>0> we have
      <math|x-\<varepsilon\>\<less\><below|x=lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>
      so there exists a <math|M\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      such that <math|x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|M,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>
      and thus <math|\<forall\>n\<geqslant\>M> we have
      <math|x-\<varepsilon\>\<less\>x<rsub|n>> so we have\ 

      <\equation>
        <label|eq 13.5>\<exists\>M\<in\><around*|{|1,\<ldots\>,\<infty\>|}>
        such that \<forall\>n\<geqslant\>M we have
        x-\<varepsilon\>\<less\>x<rsub|n>
      </equation>

      As also <math|<below|inf<around*|(|<around*|{|sup
      <around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>=lim
      sup |i\<rightarrow\>\<infty\>> x<rsub|i>=x\<less\>x+\<varepsilon\>>
      there exists a <math|N\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such
      that <math|x\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>>
      giving\ 

      <\equation>
        <label|eq 13.6>\<exists\>N\<in\><around*|{|1,\<ldots\>,\<infty\>|}>
        such that \<forall\>n\<geqslant\>N we have
        x<rsub|n>\<less\>x+\<varepsilon\>
      </equation>

      So using <reference|eq 13.5>,<reference|eq 13.6> we have if
      <math|n\<geqslant\>max<around*|(|N,M|)>> that
      <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>\<Rightarrow\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
    </enumerate>
  </proof>

  Motivated by the above theorem we can extend the notation of a limit on
  <math|\<bbb-R\>> to <math|<wide|\<bbb-R\>|\<bar\>>> as follows

  <\definition>
    <label|definition of limit in the extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    exists iff <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> and we have
    then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>. Note that by
    <reference|independence of limit inf and limit sup of start index> the
    limit, if it exists, is independent of the value of <math|k> (as is
    expressed in the notation).\ 
  </definition>

  <\remark>
    To avoid execessive notation if we use
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then we autimatical
    assume that the limit exists.
  </remark>

  <\example>
    <label|limit of constant extented real>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be defined by <math|x<rsub|i>=x\<in\><wide|\<bbb-R\>|\<bar\>>> then
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
  </example>

  <\proof>
    <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x|}>|)>|}>|)>=x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x|}>|)>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
  </proof>

  <\theorem>
    <label|limit xi+x>Let <math|x\<in\><wide|\<bbb-R\>|\<bar\>>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be such
    that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
    <math|x+x<rsub|i>> is well defined and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists then
    <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+x|)>>
    exists and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x+x<rsub|i>|)>=x+<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
  </theorem>

  <\proof>
    By assumption we have that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>. Now
    <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    <around*|(|x+x<rsub|i>|)>\<equallim\><rsub|<text|<reference|lim sup
    xn+x>>>x+<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=x+<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x+<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<equallim\><rsub|<text|<reference|lim
    sup xn+x>>><around*|(|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|
    x+x<rsub|i>|)>|)>> proving that\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>><around*|(|x+x<rsub|i>|)>=x+<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
    </equation*>

    \;
  </proof>

  In the theorem <reference|convergence in real implies that lim inferior =
  lim superior> we have proved that if a sequence of reals converges in
  <math|\<bbb-R\>> then it converges also in <math|<wide|\<bbb-R\>|\<bar\>>>.
  We intend now to prove that increasing (decreasing) sequences in
  <math|<wide|\<bbb-R\>|\<bar\>>> converges and that the limit is equal to
  <math|sup> (<math|inf>) as in <math|\<bbb-R\>>. To do this we need the
  following lemma.

  <\lemma>
    <label|supremum (infinum) of increasing (decreasing) sequence is
    indpendent of start>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence of extended real numbers then if
    <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
    <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    (or <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
  </lemma>

  <\proof>
    \ Let <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>

    <\description>
      <item*|increasing sequence>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      we must have

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>.
      </equation*>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such
      that <math|x=x<rsub|m>> we have for <math|m> the following
      possibilities\ 

      <\description>
        <item*|<math|m\<in\><around*|{|n,\<ldots\>,k-1|}>>>then
        <math|x=x<rsub|m>\<leqslant\><rsub|k-1\<leqslant\>k>x<rsub|k>\<in\><around*|{|x<rsub|i>\|i\<in\>k,\<ldots\>,\<infty\>|}>>

        <item*|<math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>then
        <math|x\<leqslant\>x<rsub|m>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      </description>

      so that by <reference|sup of set of bigger elements> we have

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>.
      </equation*>

      <item*|decreasing sequence>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      we must have

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>.
      </equation*>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>m\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such
      that <math|x=x<rsub|m>> and we have the following cases for <math|m>

      <\description>
        <item*|<math|m\<in\><around*|{|n,\<ldots\>,k-1|}>>>then
        <math|x=x<rsub|m>\<geqslant\>x<rsub|k>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>

        <item*|<math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>then
        <math|x=x<rsub|m>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      </description>

      so by <reference|sup of set of bigger elements> we have

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>.
      </equation*>
    </description>
  </proof>

  <\theorem>
    <label|equivalence of limits on increasing (decreasing) sequences of
    extented reals>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence of extended reals then
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists and
    <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    (or <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|increasing sequence>First <math|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|<text|<reference|supremum
      (infinum) of increasing (decreasing) sequence is indpendent of
      start>>>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Next <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      is increasing>sup<around*|(|<around*|{|x<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>.
      Proving that <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>.

      <item*|decreasing sequence>First <math|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|<text|<reference|supremum
      (infinum) of increasing (decreasing) sequence is indpendent of
      start>>>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|k\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Next <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      is \ decreasing>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Proving that <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>.
    </description>
  </proof>

  The above theorem motivates the following definition

  <\definition>
    <label|notation for limit of increasing/decreasing sequences>Let
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then if we say that
    <math|x<rsub|n>\<uparrow\>x> we mean that
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is increasing and that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>.
    Likewise <math|x<rsub|n>\<downarrow\>x> means that
    <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is decreasing and that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|n>=x>.
    Note that using <reference|equivalence of limits on increasing
    (decreasing) sequences of extented reals> we have that
    <math|x<rsub|n>\<uparrow\>x> is equivalent with
    <math|x=sup<around*|(|<around*|{|x<rsub|n>|\|>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>>
    and <math|x<rsub|n>\<downarrow\>x> is equivalen with
    <math|x=in<around*|(|<around*|{|x<rsub|n>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
  </definition>

  For functions <math|f:A\<rightarrow\>B> where
  <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>> and
  <math|x\<in\><wide|\<bbb-R\>|\<bar\>>> a limit point we have also a concept
  of a limit (see <reference|limit of a function>)
  <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>>. We show now
  the similarities between the two limits.

  <\theorem>
    <label|limit of functions and sequences>Let <math|A> be either
    <math|<around*|[|1,\<infty\>|]>> or <math|<around*|[|1,\<infty\>|[>>,
    <math|B\<subseteq\><wide|\<bbb-R\>|\<bar\>>> and
    <math|f:A\<rightarrow\>B> a increasing (decreasing function) then if we
    define <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    by <math|f<rsub|n>=f<around*|(|n|)>> we have that
    <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>>,
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>> exists and
    <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>.
    In other words if <math|f> is a increasing (descreasing function) then
    <math|f<rsub|n>\<uparrow\><below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>>
    (or <math|f<rsub|n>\<downarrow\><below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>>.
  </theorem>

  <\proof>
    First of all using <reference|limit at infinity of ascending (descending)
    functions> we have that <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>>
    exists and is equal to <math|sup<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>>
    if <math|f> is ascending and equal to
    <math|inf<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>>
    if <math|f> is descending. Also as <math|i\<less\>i+1> we have if
    <math|f> is increasing that \ <math|f<rsub|i>=f<around*|(|i|)>\<leqslant\>f<around*|(|i+1|)>=f<rsub|i+1>>
    and if <math|f> is decreasing then <math|f<rsub|i+1>=f<around*|(|i+1|)>\<leqslant\>f<around*|(|i|)>=f<rsub|i>>.
    So that <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is increasing (f increasing) or <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    <math|<around*|(|f decreasing|)>>. Using the previous theorem we have
    then that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>> exists and
    is equal to <math|sup<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>
    if <math|f> is increasing and equal to
    <math|inf<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>
    if <math|f> is decreasing. We prove now equality, consider now the
    following cases

    <\description>
      <item*|<math|f is increasing>>As <math|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>=<around*|{|f<around*|(|n|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>>
      we have that <math|sup<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>>.
      Also if <math|y\<in\><around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>>
      then there exists a <math|\<infty\>\<gtr\>x\<geqslant\>1> such that
      <math|y=f<around*|(|x|)>>, so there exists a <math|m\<in\>\<bbb-N\>>
      such that <math|m\<geqslant\>x> and then
      <math|f<rsub|m>=f<around*|(|m|)>\<geqslant\>f<around*|(|x|)>=y> proving
      by <reference|sup of set of bigger elements> that
      <math|sup<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
      So we have <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=sup<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>=sup<around*|(|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|)>=<below|lim|n\<rightarrow\>1\<infty\>>f<rsub|n>>.

      <item*|<math|f> is decreasing>As <math|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>=<around*|{|f<around*|(|n|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>>
      we have that <math|inf<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<geqslant\>inf<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>>.
      Also if <math|y\<in\><around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>>
      then there exists a <math|\<infty\>\<gtr\>x\<geqslant\>1> such that
      <math|y=f<around*|(|x|)>>, so there exists a <math|m\<in\>\<bbb-N\>>
      such that <math|m\<geqslant\>x> and then
      <math|f<rsub|m>=f<around*|(|m|)>\<leqslant\>f<around*|(|x|)>=y> proving
      by <reference|sup of set of bigger elements> that
      <math|inf<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>\<geqslant\>inf<around*|(|<around*|{|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>.
      So we have <math|<below|lim|x\<rightarrow\>\<infty\>>f<around*|(|x|)>=inf<around*|(|<around*|{|f<around*|(|x|)>\|\<infty\>\<gtr\>x\<geqslant\>1|}>|)>=inf<around*|(|f<rsub|n>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>.
    </description>
  </proof>

  <\example>
    <label|limit of constants>Let <math|x\<in\><wide|\<bbb-R\>|\<bar\>>>,
    <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>l> and let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>>>
    be a sequence of extended reals such that <math|\<forall\>i\<geqslant\>l>
    we have <math|x<rsub|i>=x> then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
    \ 
  </example>

  <\proof>
    <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|x<rsub|i>=x
    if k\<geqslant\>l>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x|}>|)>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>=x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x|}>|)>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>.
  </proof>

  The idea of a limit in the reals is that the sequence approaches its limit
  the higher the index is (as is expressed in the <math|\<varepsilon\>>
  definition), we show now a alternative definition of the limit in
  <math|<wide|\<bbb-R\>|\<bar\>>> that embed this idea.

  <\theorem>
    <label|alternative definition of limit in the extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><rsub|>>
    be a sequence of extended reals then we have the following equivalences

    <\enumerate>
      <item><math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>=\<infty\>>
      if and only <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have <math|C\<less\>x<rsub|n>>

      <item><math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>=-\<infty\>>
      if and only <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have <math|x<rsub|n>\<less\>-C>

      <item><math|<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>=x\<in\>\<bbb-R\>> if and only
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have that
      <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>> (Note
      as <math|x,\<varepsilon\>\<in\>\<bbb-N\><rsub|0>> we have that
      <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>> is
      equivalent with <math|x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>>)
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>> then <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>,
        so by <reference|condition for supremum (infinum) to be infinite> we
        have that <math|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
        is not bounded above, so if <math|C\<in\>\<bbb-R\><rsub|+>> then
        <math|\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\>\<forall\>n\<geqslant\>N>
        we have <math|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<Rightarrow\>C\<less\>x<rsub|n>>.

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<infty\>>
        then by the hypothese there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<geqslant\>N> we have
        <math|><math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-1\<less\>x<rsub|n>\<Rightarrow\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\>sup({inf({x<rsub|i>\|i\<in\>{n,\<ldots\>,\<infty\>}})\|n\<in\>{k,\<ldots\>,\<infty\>}})\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        a contradiction. So we must have <math|\<infty\>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><rsub|<around*|(|<text|<reference|the
        limit inferior is lower then limit superior>>|)>><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\>\<infty\>> proving
        that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>=<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>> and thus <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>
        then <math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>>
        so by <reference|condition for supremum (infinum) to be infinite> we
        have that <math|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
        is not bounded below, so if <math|C\<in\>\<bbb-R\><rsub|+>> then
        <math|\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>C>
        so <math|\<forall\>n\<geqslant\>N> we have
        <math|x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>C\<Rightarrow\>x<rsub|n>\<less\>C>

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|-\<infty\>\<less\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        then by the hypothese there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>n\<geqslant\>N> we have
        <math|x<rsub|n>\<less\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+1\<Rightarrow\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        a contradiction. So <math|-\<infty\>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<geqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<geqslant\>-\<infty\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\>>
        then <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        then if <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> we have

        <\enumerate>
          <item><math|x-\<varepsilon\>\<less\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=x>
          so that <math|\<exists\>N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x\<Rightarrow\>\<forall\>n\<geqslant\>N<rsub|1>>
          we have <math|x-\<varepsilon\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|1>,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<Rightarrow\>x-\<varepsilon\>\<leqslant\>x<rsub|n>>

          <item><math|x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>>
          so that <math|\<exists\>N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|x\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>\<Rightarrow\>\<forall\>n\<geqslant\>N>
          we have <math|x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|2>,\<ldots\>,\<infty\>|}>|}>|)>\<less\>x+\<varepsilon\>\<Rightarrow\>x<rsub|n>\<less\>x+\<varepsilon\><rsub|>>
        </enumerate>

        Using (a) en (b) we have if <math|n\<geqslant\>max<around*|(|N<rsub|1>,N<rsub|2>|)>>
        that <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>\<Rightarrow\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>>

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|\<exists\>x\<in\>\<bbb-R\>> such that
        <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
        <math|N<rsub|\<varepsilon\>>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>n\<geqslant\>N> we have
        <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>>.
        Given <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists then
        a <math|N<rsub|\<varepsilon\>>> such that
        <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x+\<varepsilon\>>
        and <math|x-\<varepsilon\>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>>
        so we have [as <math|N<rsub|\<varepsilon\>>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>]
        <math|<below|<below|lim sup |i\<rightarrow\>\<infty\>>x<rsub|i>=|>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x+\<varepsilon\>><space|1em>and
        <math|x-\<varepsilon\>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>> giving [using <reference|the
        limit inferior is lower then limit superior>]

        <\equation>
          <label|eq 13.11.40>-\<infty\>\<less\>x-\<varepsilon\>\<leqslant\><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><below|lim sup
          |i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>x+\<varepsilon\>\<less\>\<infty\>
        </equation>

        Assume now that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<less\>x>, take then <math|\<varepsilon\>=<frac|x-<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|2>\<gtr\>0> so by
        <reference|eq 13.11.40> we have then that
        <math|x-<around*|(|<frac|x-<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>|2>|)>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<Rightarrow\><frac|x|2>+<frac|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|2>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<Rightarrow\><frac|x|2>\<leqslant\><frac|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|2>\<less\><frac|x|2>> a
        contradiction. So we must have\ 

        <\equation>
          <label|eq 13.12.40>x\<leqslant\><below|lim
          inf|i\<rightarrow\>\<circ\>2> x<rsub|i>
        </equation>

        Assume that <math|x\<less\><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>, take then <math|\<varepsilon\>=<frac|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>-x|2>\<gtr\>0> so by
        <reference|eq 13.11.40> we have that <math|<below|lim sup
        |i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>x+<frac|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>-x|2>=<frac|x|2>+<frac|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>|2>\<Rightarrow\><frac|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>|2>\<leqslant\><frac|x|2>\<Rightarrow\><frac|x|2>\<less\><frac|x|2>>
        a contradiction. So we must have

        <\equation>
          <label|eq 13.13.40><below|lim sup
          |i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>x
        </equation>

        Using <reference|eq 13.11.40>, <reference|eq 13.12.40> and
        <reference|eq 13.13.40> we have then that <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=x=<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>> proving that

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x
        </equation*>

        \ 
      </description>
    </enumerate>

    \;
  </proof>

  <\corollary>
    <label|limit and absolut value>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals with <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
    then <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>|\|>=<around*|\||x|\|>>
  </corollary>

  <\proof>
    We have three cases to consider for <math|x>

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>>>using the previous theorem (see
      <reference|alternative definition of limit in the extented reals>) we
      have <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> that
      <math|\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>\<Rightarrowlim\><rsub|<around*|\||<around*|\||x|\|>-<around*|\||x<rsub|n>|\|>|\|>\<less\>\<varepsilon\>>x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||<around*|\||x|\|>-<around*|\||x<rsub|n>|\|>|\|>\<less\>\<varepsilon\>>
      proving by the previous theorem again that
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>|\|>=<around*|\||x|\|>>.\ 

      <item*|<math|x=\<infty\>>>using the previous theorem (see
      <reference|alternative definition of limit in the extented reals>) we
      have <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> that there exists a
      <math|N\<in\><around*|{|,\<ldots\>.,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|C\<leqslant\>x<rsub|n>\<Rightarrowlim\><rsub|0\<leqslant\>C\<Rightarrow\>0\<leqslant\>x<rsub|n>>C\<leqslant\><around*|\||x<rsub|n>|\|>>
      proving by the previous theorem that
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|n>=\<infty\>=<around*|\||x|\|>>

      <item*|<math|x=-\<infty\>>>orem (see <reference|alternative definition
      of limit in the extented reals>) we have
      <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> that there exists a
      <math|N\<in\><around*|{|,\<ldots\>.,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|x<rsub|n>\<leqslant\>-C\<Rightarrowlim\>C\<leqslant\>-x<rsub|n>\<Rightarrowlim\><rsub|0\<leqslant\>C\<Rightarrow\>0\<leqslant\>-x<rsub|n>\<Rightarrow\>x<rsub|n>\<leqslant\>0>C\<leqslant\><around*|\||x<rsub|n>|\|>>
      proving by the previous theorem that
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|n>=\<infty\>=<around*|\||x|\|>>
    </description>
  </proof>

  We show now that the limit in <math|<wide|\<bbb-R\>|\<bar\>>> has similar
  properties as the limit in <math|\<bbb-R\>>

  <\theorem>
    <label|properties of the limit in the extented reals>The limit in
    <math|<wide|\<bbb-R\>|\<bar\>>> has the following properties

    <\enumerate>
      <item>Let <math|A\<in\><wide|\<bbb-R\>|\<bar\>>>,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      a sequence of extended reals with a limit so that
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|x<rsub|i>\<leqslant\>A> [or <math|A\<leqslant\>x<rsub|i>>] then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>A> [or
      <math|A\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>]

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
      <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      be sequences of extended reals with a limit such that
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|x<rsub|i>\<leqslant\>y<rsub|i>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit and <math|\<alpha\>\<in\>\<bbb-R\>> then
      <math|<around*|{|\<alpha\>\<cdot\>x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
      be sequences of extended reals with limits such that
      <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      is well defined and there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have that <math|x<rsub|i>+y<rsub|i>> is well defined then for
      <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

      <item>Let <math|><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
      be sequences of extended reals with limits such that for
      <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
      <math|y=<below|lim|i\<rightarrow\>\<infty\>>> we have if <math|x=0>
      then <math|y\<neq\>\<infty\>,-\<infty\>> and if <math|y=0> then
      <math|x\<neq\>\<infty\>,-\<infty\>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      be sequences of extended reals with limits then we have\ 

      <\enumerate>
        <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>

      <\enumerate>
        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|x<rsub|i>\<leqslant\>A> then
        <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>A\<Rightarrowlim\>\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>A>
        and thus <math|<below||>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>A\<Rightarrowlim\><rsub|definition
        of limit><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>A>

        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|A\<leqslant\>x<rsub|i>> then
        <math|A\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\>\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|A\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
        so that <math|A\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrowlim\><rsub|defnition
        of limit>A\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      </enumerate>

      <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>y<rsub|i>>, we have
      <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,n|}>> that
      <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
      <math|x<rsub|i>\<leqslant\>y<rsub|i>\<Rightarrowlim\><rsub|<text|<reference|sup
      of set of bigger elements>>>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrowlim\><rsub|<text|<reference|sup
      of set of bigger elements>>>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrowlim\><rsub|definition
      of limit><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>

      <item>Consider the following possible cases for
      <math|\<alpha\>\<in\>\<bbb-R\>>\ 

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|\<alpha\>\<cdot\>x<rsub|i>=0> so that
        <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
        <math|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=0>
        so that <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=0=sup<around*|(|<around*|{|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=0=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
        proving the theorem in this case.

        <item*|<math|\<alpha\>\<in\>\<bbb-R\>\\<around*|{|0|}>>>then we have
        the following possibilities for <math|\<alpha\>>

        <\description>
          <item*|<math|<below|\<alpha\>\<gtr\>0|>>>consider now the following
          possibilities for <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

          <\description>
            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<gtr\><frac|C|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<gtr\>C>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<infty\>=\<alpha\>\<cdot\>\<infty\>>
            and thus <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<less\>-<frac|C|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<less\>-C\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=-\<infty\>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>>
            and thus <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>>Take
            <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>, let now
            <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|<around*|\||x-x<rsub|n>|\|>\<less\><frac|\<varepsilon\>|\<alpha\>>\<Rightarrow\>x-<frac|\<varepsilon\>|\<alpha\>>\<less\>x<rsub|n>\<less\>x-<frac|\<varepsilon\>|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x-\<varepsilon\>\<less\>\<alpha\>\<cdot\>x<rsub|n>\<less\>\<alpha\>\<cdot\>x+\<varepsilon\>\<Rightarrow\><around*|\||\<alpha\>\<cdot\>x-\<alpha\>\<cdot\>x<rsub|n>|\|>\<less\>\<varepsilon\>>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
          </description>

          \ 

          <item*|<math|<below|\<alpha\>\<less\>0|>>>consider now the
          following possibilities for <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

          <\description>
            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<gtr\><frac|C|-\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<less\>-C\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=-\<infty\>=\<alpha\>\<cdot\>\<infty\>>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<less\><frac|-C|-\<alpha\>>\<Rightarrow\>C\<less\>\<alpha\>\<cdot\>x<rsub|n>\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>>Take
            <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and let
            <math|\<varepsilon\>\<gtr\>0> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|<around*|\||x-x<rsub|n>|\|>\<less\><frac|\<varepsilon\>|-\<alpha\>>\<Rightarrow\>x+<frac|\<varepsilon\>|\<alpha\>>\<less\>x<rsub|n>\<less\>x-<frac|\<varepsilon\>|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x-\<varepsilon\>\<less\>x<rsub|n>\<less\>\<alpha\>\<cdot\>x+\<varepsilon\>\<Rightarrow\><around*|\||\<alpha\>\<cdot\>x-\<alpha\>\<cdot\>x<rsub|n>|\|>\<less\>\<varepsilon\>>
            proving that <math|<below|lim|i<rsub|>\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
          </description>
        </description>
      </description>

      So in all cases we have that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

      <item>We have that <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      is only well defined in the following cases

      <\description>
        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>>then
        there exists <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|1\<less\>x<rsub|i>> and <math|\<forall\>i\<geqslant\>N<rsub|2>>
        we have <math|1\<less\>y<rsub|i>> so if
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
        <math|\<forall\>i\<geqslant\>n> that <math|x<rsub|i>+y<rsub|i>> is
        well defined. Let now <math|C\<in\>\<bbb-R\><rsub|+>> then there
        exists <math|M<rsub|1>,M<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>M<rsub|1>> we have
        <math|x<rsub|i>\<gtr\><frac|C|2>> and
        <math|\<forall\>i\<geqslant\>M<rsub|2>> we have
        <math|y<rsub|i>\<gtr\><frac|C|2>> so that if
        <math|n\<geqslant\>max<around*|(|n,M<rsub|1>,M<rsub|2>|)>> we have
        <math|x<rsub|i>+y<rsub|i>\<gtr\><frac|C|2>+<frac|C|2>=C> proving that
        for <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=\<infty\>=\<infty\>+\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>>then
        there exists <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|x<rsub|i>\<less\>-1> and <math|\<forall\>i\<geqslant\>N<rsub|2>>
        we have <math|y<rsub|i>\<less\>-1> so if
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
        <math|\<forall\>i\<geqslant\>n> that <math|x<rsub|i>+y<rsub|i>> is
        well defined. Let now <math|C\<in\>\<bbb-R\><rsub|+>> then there
        exists <math|M<rsub|1>,M<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>M<rsub|1>> we have
        <math|x<rsub|i>\<less\><frac|-C|2>> and
        <math|\<forall\>i\<geqslant\>M<rsub|2>> we have
        <math|y<rsub|i>\<less\><frac|-C|2>> so that if
        <math|n\<geqslant\>max<around*|(|n,M<rsub|1>,M<rsub|2>|)>> we have
        <math|x<rsub|i>+y<rsub|i>\<less\><frac|-C|2>+<frac|-C|2>=C> proving
        that for <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Take
        <math|y=<below|lim|i-.\<infty\>>y<rsub|i>> then there exists a
        <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|<around*|\||y-y<rsub|i>|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>y-1\<less\>y<rsub|i>>.
        Also there exists a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|x<rsub|i>\<gtr\>1\<gtr\>-\<infty\>>. So if
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
        <math|\<forall\>i\<geqslant\>n> that <math|x<rsub|i>+y<rsub|i>> is
        well defined and <math|y<rsub|i>\<gtr\>y-1>. Take now
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
        <math|M\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|\<forall\>i\<geqslant\>M> we have
        <math|x<rsub|i>\<gtr\>max<around*|(|C-<around*|(|y-1|)>,1|)>> then if
        <math|i\<geqslant\>N=max<around*|(|n,M|)>> we have that
        <math|x<rsub|i>\<gtr\>C-<around*|(|y-1|)>> and
        <math|y<rsub|i>\<gtr\>y-1> so that <math|x<rsub|i>+y<rsub|i>\<gtr\>C>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=\<infty\>=\<infty\>+y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Take
        <math|y=<below|lim|i-.\<infty\>>y<rsub|i>> then there exists a
        <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|<around*|\||y-y<rsub|i>|\|>\<less\>1\<Rightarrow\>y<rsub|i>\<less\>y+1>.
        Also there exists a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|x<rsub|i>\<less\>-1\<less\>\<infty\>>. So if
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
        <math|\<forall\>i\<geqslant\>n> that <math|x<rsub|i>+y<rsub|i>> is
        well defined and <math|y<rsub|i>\<less\>y+1>. Take now
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
        <math|M\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|\<forall\>i\<geqslant\>M> we have
        <math|x<rsub|i>\<less\>min<around*|(|-C-<around*|(|y+1|)>,-1|)>> then
        if <math|i\<geqslant\>N=max<around*|(|n,M|)>> we have that
        <math|x<rsub|i>\<less\>-C-<around*|(|y+1|)>> and
        <math|y<rsub|i>\<less\>y+1> so that
        <math|x<rsub|i>+y<rsub|i>\<less\>-C> proving that
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>=-\<infty\>+y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>>>This
        is equivalent with the case <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>
        if we interchage <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-\<infty\>>>This
        is equivalent with the case <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>
        if we interchage <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Let
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x> and
        <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=y>, then there
        exists a <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that if <math|i\<geqslant\>N<rsub|1>> we have
        <math|<around*|\||x<rsub|i>-x|\|>\<less\>1\<Rightarrow\>x-1\<less\>x<rsub|i>\<less\>x+1\<Rightarrow\>x<rsub|i>\<in\>\<bbb-R\>>
        and if <math|i\<geqslant\>N<rsub|2>> we have
        <math|<around*|\||y-y<rsub|i>|\|>\<less\>1\<Rightarrow\>y-1\<less\>y<rsub|i>\<less\>y+1\<Rightarrow\>y<rsub|i>\<in\>\<bbb-R\>>.
        Take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
        <math|i\<geqslant\>n> we have that <math|x<rsub|i>+y<rsub|i>> is well
        defined. Let now <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then
        there exists <math|M<rsub|1>,M<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>M<rsub|1>> we have
        <math|<around*|\||x-x<rsub|i>|\|>\<less\><frac|\<varepsilon\>|2>\<Rightarrow\>x-<frac|\<varepsilon\>|2>\<less\>x<rsub|i>\<less\>x+<frac|\<varepsilon\>|2>>
        and <math|\<forall\>i\<geqslant\>M<rsub|2>> we have
        <math|<around*|\||y-y<rsub|i>|\|>\<less\><frac|\<varepsilon\>|2>\<Rightarrow\>y-<frac|\<varepsilon\>|2>\<less\>y<rsub|i>\<less\>y+<frac|\<varepsilon\>|2>>.
        So if <math|i\<geqslant\>max<around*|(|M<rsub|1>,M<rsub|2>,n|)>> we
        have <math|<around*|(|x-<frac|\<varepsilon\>|2>|)>+<around*|(|y-<frac|\<varepsilon\>|2>|)>\<less\>x<rsub|i>+y<rsub|i>\<less\><around*|(|x+<frac|\<varepsilon\>|2>|)>+<around*|(|y+<frac|\<varepsilon\>|2>|)>\<Rightarrow\><around*|(|x+y|)>-\<varepsilon\>\<less\>x<rsub|i>+y<rsub|i>\<less\><around*|(|x+y|)>+\<varepsilon\>\<Rightarrow\><around*|\||<around*|(|x+y|)>-<around*|(|x<rsub|i>+y<rsub|i>|)>|\|>\<less\>\<varepsilon\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=x+y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      </description>

      So in all cases we have that <math|\<exists\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<geqslant\>n> we have
      <math|x<rsub|i>+y<rsub|i>> is well defined, and for
      <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>.

      <item>Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
      <math|y=<below|lim|i\<rightarrow\>\<infty\>>> we have if <math|x=0>
      then <math|y\<neq\>\<infty\>,-\<infty\>> and if <math|y=0> then
      <math|x\<neq\>\<infty\>,-\<infty\>> then we must consider the following
      remaining cases:

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|1\<leqslant\>x<rsub|i>> and <math|C\<leqslant\>y<rsub|i>>. Take
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
        <math|i\<geqslant\>n> we have <math|1\<leqslant\>x<rsub|i>\<wedge\>C\<leqslant\>y<rsub|i>\<Rightarrow\>C\<leqslant\>C\<cdot\>x<rsub|i>\<wedge\>C\<cdot\>x<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>>.
        This proves that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=\<infty\>\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|1\<leqslant\>x<rsub|i>> and <math|y<rsub|i>\<leqslant\>-C>.
        Take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
        <math|i\<geqslant\>n> we have <math|1\<leqslant\>x<rsub|i>\<wedge\>y<rsub|i>\<leqslant\>-C\<Rightarrow\>C\<leqslant\>C\<cdot\>x<rsub|i>\<wedge\>y<rsub|i>\<cdot\>x<rsub|i>\<leqslant\>-C\<cdot\>x<rsub|i>\<Rightarrow\>-C\<cdot\>x<rsub|i>\<leqslant\>-C\<wedge\>y<rsub|i>\<cdot\>x<rsub|i>\<leqslant\>-C\<cdot\>x<rsub|i>\<Rightarrow\>x<rsub|i>\<cdot\>y<rsub|i>\<leqslant\>-C>.
        This proves that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=-\<infty\>=\<infty\>\<cdot\>-\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|x=\<infty\><rsup|>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>>We
        have then for <math|y> two possiibilities:

        <\description>
          <item*|<math|0\<less\>y>>Let <math|C\<in\>\<bbb-R\><rsub|+>> take
          <math|\<varepsilon\>=<frac|y|2>\<gtr\>0> then
          <math|\<exists\>N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|\<forall\>i\<geqslant\>N<rsub|1>,\<forall\>j\<geqslant\>N<rsub|2>>
          we have <math|y-\<varepsilon\>\<less\>y<rsub|i>\<less\>y+\<varepsilon\>\<wedge\><frac|2\<cdot\>C|y>\<leqslant\>x<rsub|i>>.
          Take <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
          <math|n\<leqslant\>i> we have <math|<frac|y|2>\<less\>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<leqslant\>x<rsub|i>\<Rightarrowlim\><rsub|0\<less\><frac|2\<cdot\>C|y>\<wedge\>0\<less\><frac|y|2>\<less\>y<rsub|i>><around*|(|<frac|2\<cdot\>C|y>|)>\<cdot\><frac|y|2>\<leqslant\><frac|2\<cdot\>C|2>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>>.
          So we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=x\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item*|<math|y\<less\>0>>Take <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
          defined by <math|y<rprime|'><rsub|i>=-y<rsub|i>> then
          <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i><rprime|'>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|-y<rsub|i>|)>=-y\<gtr\>0>
          so by the previous case we have that
          <math|-<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\><around*|(|-y<rsub|i>|)>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-y<rsub|i>|)>|)>=-<around*|(|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>|)>>
          proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </description>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>this is the same as
        <math|x=\<infty\>\<wedge\>y=-\<infty\>> with <math|x> and <math|y>
        exchanged.

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>Define
        <math|<around*|{|x<rsub|i><rprime|'>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
        <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|x<rprime|'><rsub|i>=-x<rsub|i>\<wedge\>y<rprime|'><rsub|i>=-y<rsub|i>>
        then we have <math|<below|lim|i\<rightarrow\>\<infty\>>x<rprime|'><rsub|i>\<equallim\><rsub|<around*|(|3|)>>-<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-x\<gtr\>0\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rprime|'><rsub|i>\<equallim\><rsub|<around*|(|3|)>>-<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=-y\<gtr\>0>.
        As we have already proved this case we have
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>\<cdot\><around*|(|-y<rsub|i>|)>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>-x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-y<rsub|i>|)>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>>As
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>\<equallim\><rsub|<around*|(|3|)>>\<infty\>>
        we can use the case <math|x=\<infty\><rsup|>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>
        giving <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>|)>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<Rightarrow\>-<around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>=-<around*|(|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>|)>\<Rightarrow\>><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y=\<infty\>>>this
        is the same as <math|x=\<infty\><rsup|>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>
        with <math|x,y> interchanged.

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y=-\<infty\>>>this
        is the same as <math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>
        with <math|x,y> interchanged.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>Take
        <math|\<varepsilon\>\<gtr\>0>. First there exists a
        <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        \ <math|<around*|\||x<rsub|i>-x|\|>\<less\>1\<Rightarrow\><around*|\||x<rsub|i>|\|>\<leqslant\><around*|\||x<rsub|i>-x|\|>+<around*|\||x|\|>\<less\>1+<around*|\||x|\|>>.
        Find then <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|2>> we have
        <math|<around*|\||x<rsub|i>-x|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>>
        and a <math|N<rsub|3>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
        that <math|<around*|\||y<rsub|i>-y<rsub|i>|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>>.
        Take now <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
        <math|i\<geqslant\>n> we have tht
        <math|<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x\<cdot\>y|\|>=<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x<rsub|i>\<cdot\>y+x<rsub|i>\<cdot\>y-x\<cdot\>y|\|>=<around*|\||x<rsub|i>\<cdot\><around*|(|y<rsub|i>-y|)>+<around*|(|x<rsub|i>-x|)>\<cdot\>y|\|>\<leqslant\><around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|i>-y|\|>+<around*|\||y|\|>\<cdot\><around*|\||x<rsub|i>-x|\|>\<less\><around*|(|1+<around*|\||x|\|>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>+<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>\<cdot\><around*|\||y|\|>=<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=x\<cdot\>y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      </description>

      <item>Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
      <math|y=<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>> then we have the
      following cases to consider for <math|x,y>\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,<math|\<forall\>j\<geqslant\>N<rsub|2>>
        we have <math|C\<leqslant\>x<rsub|i>,C\<leqslant\>y<rsub|j>>. Take
        <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
        <math|\<forall\>i\<geqslant\>N> we have
        <math|C\<leqslant\>max<around*|(|x<rsub|i>,y<rsub|i>|)>> and
        <math|C\<leqslant\>min<around*|(|x<rsub|i>,y<rsub|i>|)>> proving that

        <\enumerate>
          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=\<infty\>=min<around*|(|\<infty\>,\<infty\>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=\<infty\>=max<around*|(|\<infty\>,\<infty\>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,<math|\<forall\>j\<geqslant\>N<rsub|2>>
        we have <math|C\<leqslant\>x<rsub|i>,y<rsub|j>\<leqslant\>-C\<Rightarrowlim\><rsub|-C\<leqslant\>C>y<rsub|j>\<leqslant\>-C\<leqslant\>C\<leqslant\>x<rsub|i>>.
        Take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
        <math|\<forall\>i\<in\>\<bbb-N\>> we have
        <math|C\<leqslant\>max<around*|(|x<rsub|i>,y<rsub|i>|)>> and
        <math|min<around*|(|x<rsub|i>,y<rsub|i>|)>\<leqslant\>-C> proving
        that\ 

        <\enumerate>
          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=-\<infty\>=min<around*|(|\<infty\>,-\<infty\>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=\<infty\>=max<around*|(|\<infty\>,-\<infty\>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> and <math|\<varepsilon\>\<gtr\>0>
        there exists a <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|max<around*|(|C,<around*|\||y|\|>+\<varepsilon\>|)>\<leqslant\>x<rsub|i>\<wedge\><around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\>\<Rightarrow\>C\<leqslant\>x<rsub|i>\<wedge\><around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\>\<wedge\>y<rsub|i>\<less\>y+\<varepsilon\>\<leqslant\><around*|\||y|\|>+\<varepsilon\>\<leqslant\>x<rsub|i>>.
        If we take then <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> we have
        <math|\<forall\>i\<geqslant\>N> that

        <\enumerate>
          <item><math|<around*|\||min<around*|(|x<rsub|i>,y<rsub|i>|)>-x|\|>=<around*|\||y<rsub|i>-x|\|>\<less\>\<varepsilon\>>
          proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=y=min<around*|(|\<infty\>,y|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|C\<leqslant\>x<rsub|i>=max<around*|(|x<rsub|i>,y<rsub|i>|)>>
          proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=\<infty\>=max<around*|(|\<infty\>,y|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

        \ 

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>this reduces to the
        case <math|x=\<infty\>\<wedge\>y=-\<infty\>> if we interchange
        <math|x> and <math|y>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,<math|\<forall\>j\<geqslant\>N<rsub|2>>
        we have <math|x<rsub|i>\<leqslant\>-C,y<rsub|j>\<leqslant\>-C>. Take
        <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
        <math|\<forall\>i\<geqslant\>N> we have
        <math|max<around*|(|x<rsub|i>,y<rsub|i>|)>\<leqslant\>-C> and
        <math|min<around*|(|x<rsub|i>,y<rsub|i>|)>\<leqslant\>-C> proving
        that

        <\enumerate>
          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=-\<infty\>=min<around*|(|-\<infty\>,-\<infty\>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=-\<infty\>=max<around*|(|-\<infty\>,-\<infty\>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>this reduce to the
        case <math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>> if we interchange
        <math|x> and <math|y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>this reduce to
        the case <math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>> if we
        interchange <math|x> and <math|y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then given
        <math|\<varepsilon\>\<gtr\>0> there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>,\<forall\>j\<geqslant\>N<rsub|2>>
        we have <math|<around*|\||x<rsub|i>-x|\|>\<less\>\<varepsilon\>\<wedge\><around*|\||y<rsub|j>-y|\|>\<less\>\<varepsilon\>\<Leftrightarrow\>x-\<varepsilon\>\<less\>x<rsub|i>\<less\>x+\<varepsilon\>\<wedge\>y-\<varepsilon\>\<less\>y<rsub|j>\<less\>y+\<varepsilon\>>.
        Take then <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
        <math|\<forall\>i\<geqslant\>N> that\ 

        <\enumerate>
          <item><math|min<around*|(|x,y|)>-\<varepsilon\>=min<around*|(|x-\<varepsilon\>,y-\<varepsilon\>|)>\<less\>x<rsub|i>,y<rsub|i>\<Rightarrow\>min<around*|(|x,y|)>-\<varepsilon\>\<less\>min<around*|(|x<rsub|i>,y<rsub|i>|)>>
          and <math|min<around*|(|x<rsub|i>,y<rsub|i>|)>\<less\>x+\<varepsilon\>,y+\<varepsilon\>\<Rightarrow\>min<around*|(|x<rsub|i>,y<rsub|i>|)>\<less\>min*<around*|(|x+\<varepsilon\>,y+\<varepsilon\>|)>\<less\>min<around*|(|x,y|)>+\<varepsilon\>>
          proving that <math|<around*|\||min<around*|(|x<rsub|i>,y<rsub|i>|)>-min<around*|(|x,y|)>|\|>\<less\>\<varepsilon\>>
          giving <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=min<around*|(|x,y|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|x-\<varepsilon\>,y-\<varepsilon\>\<less\>max<around*|(|x<rsub|i>,y<rsub|i>|)>\<Rightarrow\>max<around*|(|x,y|)>-\<varepsilon\>=max<around*|(|x-\<varepsilon\>,y-\<varepsilon\>|)>\<less\>max<around*|(|x<rsub|i>,y<rsub|i>|)>>
          and <math|x<rsub|i>,y<rsub|i>\<less\>max<around*|(|x+\<varepsilon\>,y+\<varepsilon\>|)>=max<around*|(|x,y|)>+\<varepsilon\>>
          proving that <math|<around*|\||max<around*|(|x<rsub|i>,y<rsub|i>|)>-max<around*|(|x,y|)>|\|>\<less\>\<varepsilon\>
          giving ><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=max<around*|(|x,y|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>
      </description>
    </enumerate>
  </proof>

  <\note>
    The condition that <math|\<alpha\>> in the above theorem is real is
    required as the following example shows. The sequence
    <math|<around*|{|<frac|<around*|(|-1|)><rsup|i>|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    converges to <math|0> but <math|<around*|{|\<infty\>\<cdot\><frac|<around*|(|-1|)><rsup|i>|i>|}><rsub|i>=<around*|{|<around*|(|-1|)><rsup|i>\<cdot\>\<infty\>|}><rsub|i\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    does not converges.

    <\note>
      The extra conditions in (5) are needed, for example take
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> defined
      by <math|x<rsub|i>=<frac|1|i>> and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      defined by <math|y<rsub|i>=i<rsup|2>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=0> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>=\<infty\>> but
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>i=\<infty\>\<neq\>\<infty\>\<cdot\>0=0>
    </note>
  </note>

  To prove that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<frac|1|x<rsub|i>>|)>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>
  we first need a lemma\ 

  <\lemma>
    <label|lemma 15.75>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    be a sequence of real numbers such that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<neq\>0> and <math|0\<neq\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>
    then <math|inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<gtr\>0>
  </lemma>

  <\proof>
    Take <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and define
    <math|\<varepsilon\>=<frac|<around*|\||x|\|>|2>\<gtr\>0>, as
    <math|x\<in\>\<bbb-R\>> there exists a
    <math|N\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>i\<geqslant\>N> we have
    <math|<around*|\||x<rsub|i>-x|\|>\<less\>\<varepsilon\>>. Assume that
    <math|\<exists\>i\<geqslant\>N> such that
    <math|<around*|\||x<rsub|i>|\|>\<less\>\<varepsilon\>> then we have
    <math|<around*|\||x|\|>=<around*|\||x-x<rsub|i>+x<rsub|i>|\|>\<leqslant\><around*|\||x-x<rsub|i>|\|>+<around*|\||x<rsub|i>|\|>\<less\>\<varepsilon\>+\<varepsilon\>=2\<cdot\>\<varepsilon\>=<around*|\||x|\|>\<Rightarrow\><around*|\||x|\|>\<less\><around*|\||x|\|>>
    a contradiction. So we must have\ 

    <\equation*>
      \<forall\>i\<geqslant\>N\<vDash\><around*|\||x<rsub|i>|\|>\<geqslant\>\<varepsilon\>
    </equation*>

    If we take also <math|M<rprime|'>=min<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,N|}>|}>|)>\<gtr\>0>
    [as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we have
    x<rsub|i>\<neq\>0>) and <math|M=min<around*|(|M<rprime|'>,\<varepsilon\>|)>\<gtr\>0>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|<around*|\||x<rsub|i>|\|>\<geqslant\>M\<gtr\>0> so that
    <math|inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<geqslant\>M\<gtr\>0>
    as we must prove.
  </proof>

  <\theorem>
    <label|limit of 1/f>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals such that
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<neq\>0> then there
    exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>i\<in\><around*|{|h,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<neq\>0> and for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,n|}>>>
    we have that <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>
  </theorem>

  <\proof>
    Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then we must
    consider the following cases for <math|x>

    <\description>
      <item*|<math|x=\<infty\>>>First there exists a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|1\<leqslant\>x<rsub|i>\<Rightarrow\>\<forall\>i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<neq\>0>. Take now
      <math|\<varepsilon\>\<gtr\>0> then by the Archimedean property of the
      reals (see <reference|consequence of the archimedean property for the
      reals>) \ there exists a <math|C\<in\>\<bbb-N\><rsub|0>> such that
      <math|0\<less\><frac|1|C>\<less\>\<varepsilon\>>.<space|1em>As
      <math|x=\<infty\>> there exists a <math|N\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<geqslant\>N> we have
      <math|x<rsub|i>\<geqslant\>C\<gtr\>0> hence
      <math|0\<less\><frac|1|x<rsub|i>>\<less\><frac|1|C>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<frac|1|x<rsub|i>>-0|\|>=<frac|1|x<rsub|i>>\<less\>\<varepsilon\>\<Rightarrow\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<frac|1|x<rsub|i>>|)>=0=<frac|1|\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>-0

      <item*|<math|x=-\<infty\>>>First there exists a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|x<rsub|i>\<leqslant\>-1\<Rightarrow\>\<forall\>i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<neq\>0>. Take now
      <math|\<varepsilon\>\<gtr\>0> then by the Archimedean property of the
      reals (see <reference|consequence of the archimedean property for the
      reals>) \ there exists a <math|C\<in\>\<bbb-N\><rsub|0>> such that
      <math|0\<less\><frac|1|C>\<less\>\<varepsilon\>\<Rightarrow\>-\<varepsilon\>\<less\><frac|1|-C>\<less\>0>.<space|1em>As
      <math|x=-\<infty\>> there exists a <math|N\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<geqslant\>N> we have
      <math|x<rsub|i>\<leqslant\>-C\<less\>0\<Rightarrow\>0\<less\>C\<leqslant\>-x<rsub|i>>
      hence <math|0\<less\><frac|1|-x>\<leqslant\><frac|1|C>\<less\>\<varepsilon\>\<Rightarrow\>-\<varepsilon\>\<less\><frac|1|x<rsub|i>>\<less\>0\<Rightarrow\><frac|1|x<rsub|i>>\<in\><around*|]|0-\<varepsilon\>,0+\<varepsilon\>|[>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<frac|1|x<rsub|i>>|)>=0=<frac|1|-\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>

      <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>>>As <math|x\<neq\>0> we
      have that <math|0\<less\><around*|\||x|\|>> take
      <math|\<delta\>=<frac|<around*|\||x|\|>|2>\<gtr\>0> then there exists a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<geqslant\>n> we have
      <math|<around*|\||x-x<rsub|i>|\|>\<less\>\<delta\>=<frac|<around*|\||x|\|>|2>>,
      if now there exists a <math|i\<geqslant\>n> such that
      <math|x<rsub|i>=0> then we have <math|<around*|\||x|\|>\<less\><frac|<around*|\||x|\|>|2>>
      a contradiction and if <math|<around*|\||x<rsub|i>|\|>=\<infty\>> we
      have <math|\<infty\>\<less\><frac|<around*|\||x|\|>|2>\<in\>\<bbb-R\>>
      also a contradiction.. \ So <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have <math|0\<neq\>x<rsub|i>\<in\>\<bbb-R\>>. Using the above lemma
      <reference|lemma 15.75> we have that
      <math|m=inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<gtr\>0>
      hence <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we
      have that <math|x<rsub|i>\<geqslant\>m\<gtr\>0>. Take now
      <math|\<varepsilon\>\<gtr\>0> then there exists a
      <math|N\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<geqslant\>N> we have
      <math|<around*|\||x-x<rsub|i>|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>m>,
      then <math|<around*|\||<frac|1|x<rsub|i>>-<frac|1|x>|\|>=<around*|\||<frac|x<rsub|i>-x|x<rsub|i>\<cdot\>x>|\|>=<frac|<around*|\||x<rsub|i>-x|\|>|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||x|\|>>\<leqslant\><frac|<around*|\||x<rsub|i>-x|\|>|m\<cdot\><around*|\||x|\|>>\<less\><frac|\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>m|<around*|\||x|\|>\<cdot\>m>=\<varepsilon\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<frac|1|x<rsub|i>>|)>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>
      <math|>
    </description>
  </proof>

  <\example>
    <label|limit n>We have that <math|<below|lim|n\<rightarrow\>\<infty\>>n=\<infty\>>
    and <math|<below|lim|n\<rightarrow\>\<infty\>><frac|1|n>=0>
  </example>

  <\proof>
    As <math|<around*|{|n|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> is increasing
    <math|<below|lim|n\<rightarrow\>\<infty\>>n=sup<around*|(|<around*|{|n\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|\<bbb-N\><rsub|0>|)>>
    which exists. Assume that <math|sup<around*|(|\<bbb-N\><rsub|0>|)>\<less\>\<infty\>>
    then there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|sup<around*|(|\<bbb-N\><rsub|n>|)>\<less\>n\<leqslant\>sup<around*|(|\<bbb-N\><rsub|0>|)>\<less\>n>
    leading to the contradiction <math|n\<less\>n> hence we have
    <math|<below|lim|n\<rightarrow\>\<infty\>>n=\<infty\>>. Using the
    previous theorem <reference|limit of 1/f> we have then
    <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|n>|)>=<frac|1|<below|lim|n\<rightarrow\>\<infty\>>n>=<frac|1|\<infty\>>=0>.
    \ 
  </proof>

  <\theorem>
    <label|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
    with <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\>>
    then <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x-x<rsub|i>|\|>=0>.
    Further if <math|x\<in\>\<bbb-R\>> is such that
    <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x-x<rsub|i>|\|>=0>
    then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
  </theorem>

  <\proof>
    First as <math|x\<in\>\<bbb-R\>> we have that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> <math|x-x<rsub|i>> is well
    defined. Also by <reference|alternative definition of limit in the
    extented reals> we have that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that <math|\<forall\>n\<geqslant\>N> we have
    <math|<around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<around*|\||x<rsub|n>-x|\|>-0|\|>=<around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>>
    proving by <reference|alternative definition of limit in the extented
    reals> again that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>-x|\|>=0>.
    If <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x-x<rsub|i>|\|>=0\<in\>\<bbb-R\>>
    then by \ <reference|alternative definition of limit in the extented
    reals> we have that <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>>
    there <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>n\<geqslant\>N> we have
    <math|<around*|\||<around*|\||x<rsub|n>-x|\|>-0|\|>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||x<rsub|n>-x|\|>\<less\>\<varepsilon\>>
    proving by <reference|alternative definition of limit in the extented
    reals> again that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x=0>
  </proof>

  <\note>
    The condition that <math|x\<in\>\<bbb-R\>> in the above definition is
    needed. For example take <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    defined by <math|x<rsub|i>=i> then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>
    however <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>-x|\|>=<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>-\<infty\>|\|>=\<infty\>\<neq\>0>
  </note>

  \;

  <\subsection>
    Series in <math|<wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>>
  </subsection>

  To avoid any problems with non defined sums in
  <math|<wide|\<bbb-R\>|\<bar\>>> (like <math|-\<infty\>+\<infty\>> and
  <math|+\<infty\>+<around*|(|-\<infty\>|)>> we restrict ourself to
  <math|<wide|\<bbb-R\>|\<bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|x\<geqslant\>0|}>>
  so that by <reference|the positive extented reals form a abelian
  semi-group> <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>><rsub|+>,+|\<rangle\>>>
  is a Abelian semi-group. All the theorems, definitions and propositions for
  Abelian groups in section 10.1 will then apply. In particular we can use
  the definition of a finite sum in <reference|generalized fnite sum> to
  define <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>> where
  <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
  <math|x<rsub|i>\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>. So using
  <reference|defining property of finite sum> we have the following:

  <\theorem>
    <label|finite sum of extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    be a finite family of non negative extended reals
    [<math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    \ <math|x<rsub|i>\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+>>] then
    <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>=<choice|<tformat|<table|<row|<cell|x<rsub|0>
    if n=0>>|<row|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|i>+x<rsub|n> if
    n\<gtr\>0>>>>>>
  </theorem>

  Using <reference|finite sum starting at n> and <reference|propertiy of
  finite sum starting at n> we have also in general

  <\theorem>
    <label|finite sum of extented reals starting at n>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>> a
    finite family of non negative extended reals then
    <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>\<equallim\><rsub|def><big|sum><rsub|i=0><rsup|m-n>x<rsub|i+n>=<choice|<tformat|<table|<row|<cell|x<rsub|n>
    if m=n>>|<row|<cell|<big|sum><rsub|i=n><rsup|m-1>x<rsub|i>+x<rsub|m> if
    m\<gtr\>n>>>>>>
  </theorem>

  Using the above we prove that the sum of a finite family of non negative
  extended reals is non negative as expressed in the following theorem.

  <\theorem>
    <label|finite sum of non negative extented reals is non negative>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a finite family of non negative extended reals then
    <math|0\<leqslant\><big|sum><rsub|k=1><rsup|n>x<rsub|i>> and more general
    if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a finite family of
    non negative extended reals then <math|0\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>
    (see <reference|generalized sum>)
  </theorem>

  <\proof>
    We start by induction so let <math|\<cal-S\>=<around*|{|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|<text|if
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><text|
    is a family of non negative extended reals then
    >0\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|i>|}>> then we have\ 

    <\description>
      <item*|<math|k\<in\>\<cal-S\>>>As <math|0\<leqslant\>x<rsub|k>=<big|sum><rsub|i=k><rsup|k>x<rsub|i>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>>
      is a family of non negative extended reals then
      <math|<big|sum><rsub|k=1><rsup|n+1>x<rsub|i>=0\<leqslant\><around*|(|<big|sum><rsub|k=1><rsup|n>x<rsub|i>|)>+x<rsub|n+1>>
      [as <math|n\<in\>\<cal-S\>> we have
      <math|0\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|i>>] proving
      <math|n+1\<in\>\<cal-S\>>
    </description>

    For the last part of the theorem if <math|I> is a finite family we have a
    bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> and
    thus <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\<geqslant\>0>
  </proof>

  As a application of the above theorem we prove that series are increeasing
  based on there domain.

  <\theorem>
    <label|series are increasing><math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
    is a finite family of extended non negative reals then
    <math|\<forall\>\<emptyset\>\<neq\>J\<subseteq\>I> we have
    <math|<big|sum><rsub|i\<in\>J>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>.
    So if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a finite family of non negative extended reals then
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<big|sum><rsub|i=1><rsup|m>x<rsub|i>\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i>>
  </theorem>

  <\proof>
    As <math|I=<around*|(|I\\J|)><big|cup>J> and
    <math|<around*|(|I\\J|)><big|cap>I=\<emptyset\>> we have by
    <reference|general associativity of general sum> that
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\><around*|(|I\\J|)>>x<rsub|i>+<big|sum><rsub|i\<in\>J>x<rsub|i>\<Rightarrowlim\><rsub|0\<leqslant\><big|sum><rsub|i\<in\>I\\J>x<rsub|i><text|
    and <reference|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y>>><big|sum><rsub|i\<in\>J>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>
  </proof>

  <\theorem>
    <label|sum of extented reals and product>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
    be a finite family of non negative reals then if
    <math|\<alpha\>\<in\>\<bbb-R\>> we have
    <math|<big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|<text|If
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>><text|
    is a family of extended reals then ><big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>|}>>
    then we have\ 

    <\description>
      <item*|<math|m\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,m|}>>>
      is a finite family of extended reals then
      <math|<big|sum><rsub|i=m><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x<rsub|m>=\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=m><rsup|m>x<rsub|i>|)>>
      proving that <math|m\<in\>S>

      <item*|<math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>If
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>n,\<ldots\>,m+1>> is a finite
      family of extended reals then <math|<big|sum><rsub|i=n><rsup|m+1><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<around*|(|<big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>|)>+\<alpha\>\<cdot\>x<rsub|m+1>\<equallim\><rsub|m\<in\>S>\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|m>x<rsub|i>|)>+\<alpha\>\<cdot\>x<rsub|m+1>\<equallim\><rsub|<text|<reference|distributivity
      in the extented reals>>>\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|m+1>x<rsub|i>|)>>
      proving that <math|m+1\<in\>S>
    </description>
  </proof>

  Another application is proving that the sum of limits is the limit of sums
  as is expressed in the following theorem.

  <\theorem>
    <label|limit of finite sums in the extented reals>If
    <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>>>
    is a finite family of sequences of positive extended reals such that
    <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>> we have that
    <math|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has a limit then <math|<around*|{|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,n|}>>>
    is well defined and <math|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|i=l><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>
  </theorem>

  <\proof>
    We use mathematical induction to prove this, so let
    <math|\<cal-S\>=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\|if
    <around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
    is such that >\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
    has a limit >then <below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>|}>>,
    we have then :

    <\description>
      <item*|<math|l\<in\>\<cal-S\>>>If <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,l|}>>>
      is such that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,l|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
      has a limit> then <around*|{|<big|sum><rsub|i=l><rsup|l>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>=<around*|{|x<rsub|l,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a a limit and <math|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|1>x<rsub|i,j>|)>=<below|lim|j\<rightarrow\>\<infty\>>x<rsub|l,j>=<big|sum><rsub|i=l><rsup|l><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>
      proving that <math|l\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
      <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
      is such that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n+1|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
      has a limit>>, then as <math|n\<in\>\<cal-S\>> we have that
      <math|<around*|{|<big|sum><rsub|l=1><rsup|n>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit. Then <math|<around*|{|<big|sum><rsub|i=l><rsup|n+1>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>=<around*|{|<around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+x<rsub|n+1,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit (using <reference|properties of the limit in the extented
      reals> (4)) and <math|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n+1>x<rsub|i,j>|)>=<below|lim|j\<rightarrow\>\<infty\>><around*|(|<around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+x<rsub|n+1,j>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>
      ><around*|(|4|)>><around*|(|<below|lim|j\<rightarrow\>\<infty\>><big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+<below|lim|j\<rightarrow\>\<infty\>>x<rsub|n+1,j>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=l><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>+<below|lim|j\<rightarrow\>\<infty\>>x<rsub|n+1,j>=<big|sum><rsub|i=l><rsup|n+1><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>
      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  We have a similar theorem for limits of functions

  <\definition>
    If <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>
    <math|f:A\<rightarrow\>B>, <math|g:A\<rightarrow\>B> functions then the
    graph <math|<around*|(|f+g|)>\<subseteq\>A\<times\><wide|\<bbb-R\>|\<bar\>>>
    is defined by <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
    (assuming that the sum is well defined (so no
    <math|\<infty\>+<around*|(|-\<infty\>|)>>)
  </definition>

  <\definition>
    <label|graph of sum of functions>Let <math|A,B> sets
    <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><rsub|>>
    a finite family of functions then the graph
    <math|<big|sum><rsub|i=l><rsup|n>f<rsub|i>\<subseteq\>A\<times\><wide|\<bbb-R\>|\<bar\>>>
    is defined by\ 

    <\enumerate>
      <item><math|<big|sum><rsub|i=l><rsup|l>f<rsub|i>=f<rsub|l>>

      <item><math|<big|sum><rsub|i=l><rsup|n+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)>+f<rsub|n+1>>
      (assuming that the sum is well defined)
    </enumerate>
  </definition>

  A alternative definition is then expressed in the following lemma

  <\lemma>
    <label|alternative graph of sum of functions>et <math|A,B> sets
    <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><rsub|>>
    a finite family of functions then the graph
    <math|<big|sum><rsub|i=l><rsup|n>f<rsub|i>\<subseteq\>A\<times\><wide|\<bbb-R\>|\<bar\>>>
    is defined by <math|<around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n>f<rsub|i><around*|(|x|)>>
  </lemma>

  <\proof>
    The trivial proof is by induction so let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
    <around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
    is a finite family of functions then ><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n>f<rsub|i><around*|(|x|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|l\<in\>\<cal-S\>>>This follows as
      <math|<around*|(|<big|sum><rsub|i=l><rsup|l>f<rsub|i>|)><around*|(|x|)>=f<rsub|l><around*|(|x|)>=<big|sum><rsub|i=l><rsup|l>f<rsub|i><around*|(|x|)>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|n\<in\>\<cal-S\>> and take <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
      a finite family of functions then <math|<around*|(|<big|sum><rsub|i=l><rsup|n+1>f<rsub|i>|)><around*|(|x|)>=<around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>+f<rsub|n+1>|)><around*|(|x|)>=<around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>+f<rsub|n+1><around*|(|x|)>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=l><rsup|n>f<rsub|i><around*|(|x|)>+f<rsub|n+1><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n+1>f<rsub|i><around*|(|x|)>>
    </description>
  </proof>

  <\theorem>
    <label|finite sum of limits of functions>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>,>
    <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>> and
    <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsub|>>
    a finite family of functions then if <math|<around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|A|)>\<subseteq\>C>
    we have for <math|<big|sum><rsub|i=l><rsup|n>f<rsub|i>:A\<rightarrow\>C>

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>>
      <math|<below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      exists then <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)

      <item>If <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>>
      <math|<below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>> exists
      then <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)

      <item>If <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>>
      <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      exists then <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)
    </enumerate>
  </theorem>

  <\proof>
    This is proved by induction\ 

    <\enumerate>
      <item>Let <math|\<cal-S\>=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\|for
      <around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
      we have ><below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<downarrow\>x<rsub|0>>f<around*|(|x|)>|}>>
      then we have\ 

      <\description>
        <item*|<math|l\<in\>\<cal-S\>>>If we have
        <math|<around*|{|f<rsub|i><around*|\||A\<rightarrow\>B|\|>|}><rsub|i\<in\><around*|{|l,\<ldots\>,l|}>>>
        then we have <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|l>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<downarrow\>x<rsub|0>>f<rsub|l><around*|(|x|)>=<big|sum><rsub|i=l><rsup|l><below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|l\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
        then we have that <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n+1>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>+f<rsub|n+1>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|left,
        right limit of sum and scalar product>>><below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=l><rsup|n><below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>+<below|lim|x\<downarrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n+1><below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>Let <math|\<cal-S\>=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\|for
      <around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
      we have ><below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<uparrow\>x<rsub|0>>f<around*|(|x|)>|}>>
      then we have\ 

      <\description>
        <item*|<math|l\<in\>\<cal-S\>>>If we have
        <math|<around*|{|f<rsub|i><around*|\||A\<rightarrow\>B|\|>|}><rsub|i\<in\><around*|{|l,\<ldots\>,l|}>>>
        then we have <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|l>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<uparrow\>x<rsub|0>>f<rsub|l><around*|(|x|)>=<big|sum><rsub|i=l><rsup|l><below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|l\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
        then we have that <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n+1>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>+f<rsub|n+1>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|left,
        right limit of sum and scalar product>>><below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=l><rsup|n><below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>+<below|lim|x\<uparrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n+1><below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>Let <math|\<cal-S\>=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\|for
      <around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
      we have ><below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f|)><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n><below|lim|x\<rightarrow\>x<rsub|0>>f<around*|(|x|)>|}>>
      then we have\ 

      <\description>
        <item*|<math|l\<in\>\<cal-S\>>>If we have
        <math|<around*|{|f<rsub|i><around*|\||A\<rightarrow\>B|\|>|}><rsub|i\<in\><around*|{|l,\<ldots\>,l|}>>>
        then we have <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|l>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|l><around*|(|x|)>=<big|sum><rsub|i=l><rsup|l><below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|l\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|<around*|{|f<rsub|i>A\<rightarrow\>B|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
        then we have that <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n+1>f<rsub|i>|)><around*|(|x|)>=<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>+f<rsub|n+1>|)><around*|(|x|)>\<equallim\><rsub|<text|<reference|left,
        right limit of sum and scalar product>>><below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=l><rsup|n>f<rsub|i>|)><around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=l><rsup|n><below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>+<below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|n+1><around*|(|x|)>=<big|sum><rsub|i=l><rsup|n+1><below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>
    </enumerate>
  </proof>

  <\definition>
    Let <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>>,
    <math|f:A\<rightarrow\>B> a function ,
    <math|\<alpha\>\<in\><wide|\<bbb-R\>|\<bar\>>> then the graph
    <math|\<alpha\>\<cdot\>f\<subseteq\>A\<times\><wide|\<bbb-R\>|\<bar\>>>
    is defined by <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
  </definition>

  <\corollary>
    <label|finite sum of limits of scalar product with functions>Let
    <math|A,B\<subseteq\><wide|\<bbb-R\>|\<bar\>>,>
    <math|x<rsub|0>\<in\><wide|\<bbb-R\>|\<bar\>>> and
    <math|<around*|{|f<rsub|i>:A\<rightarrow\>B|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><rsub|>>
    a finite family of functions, <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    a finite family of extended reals \ then if
    <math|<around*|(|<big|sum><rsub|i=k><rsup|n>\<alpha\><rsub|i>\<cdot\>f<rsub|i>|)><around*|(|A|)>\<subseteq\>C>
    we have for <math|<big|sum><rsub|i=k><rsup|n>\<alpha\>\<cdot\>f<rsub|i>:A\<rightarrow\>C>
    that\ 

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>>
      <math|<below|lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      exists then <math|<below|lim|x\<downarrow\>x<rsub|0>><around*|(|<big|sum><rsub|k=1><rsup|n>\<alpha\>\<cdot\>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=k><rsup|n>\<alpha\><rsub|i><below|\<cdot\>lim|x\<downarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)

      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>>
      <math|<below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>> exists
      then <math|<below|lim|x\<uparrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=k><rsup|n>\<alpha\><rsub|i>\<cdot\>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=k><rsup|n>\<alpha\><rsub|i>\<cdot\><below|lim|x\<uparrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)

      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>>
      <math|<below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      exists then <math|<below|lim|x\<rightarrow\>x<rsub|0>><around*|(|<big|sum><rsub|i=k><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=k><rsup|n>\<alpha\><rsub|i>\<cdot\><below|lim|x\<rightarrow\>x<rsub|0>>f<rsub|i><around*|(|x|)>>
      (assuming that the sum is well defined)
    </enumerate>
  </corollary>

  <\proof>
    This follows from applying <reference|left, right limit of sum and scalar
    product> on the scalar product of a scalar and a function and the
    previous theorem (see <reference|finite sum of limits of functions>)
  </proof>

  We prove now that if <math|\<infty\>\<nin\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,m|}>|}>>
  then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>> is finite and otherwise
  <math|\<infty\>>

  <\theorem>
    <label|finite sum of extented reals properties>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
    be a finite family of extended non negative reals then we have\ 

    <\enumerate>
      <item>If <math|\<infty\>\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,m|}>|}>>
      then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=\<infty\>>

      <item>If <math|\<infty\>\<nin\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,m|}>|}>>
      then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>\<less\>\<infty\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|If
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>> is a
      family in <wide|\<bbb-R\>|\<bar\>><rsub|+> with
      \<infty\>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}> then
      <big|sum><rsub|i=m><rsup|m>x<rsub|i>=\<infty\>|}>> then we have

      <\description>
        <item*|<math|n\<in\>\<cal-S\>>>then
        <math|\<infty\>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|n><rsub|>|}>\<Rightarrow\>x<rsub|n>=\<infty\>>
        and <math|<big|sum><rsub|i=n><rsup|n>x<rsub|i>=x<rsub|n>=\<infty\>>
        proving that <math|n\<in\>\<cal-S\>>

        <item*|<math|m\<in\>\<cal-S\>\<Rightarrow\>m+1\<in\>\<cal-S\>>>let
        <math|\<infty\>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m+1>|}>>
        then we have either\ 

        <\description>
          <item*|<math|x<rsub|m+1>=\<infty\>>>then
          <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+\<infty\>=\<infty\>>

          <item*|<math|x<rsub|m+1>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}>>>then
          <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m+1>\<equallim\><rsub|n\<in\>\<cal-S\>>\<infty\>+x<rsub|m+1>=\<infty\>>
        </description>

        so in all cases we have <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=\<infty\>>
        proving that <math|m+1\<in\>\<cal-S\>>
      </description>

      Using mathematical induction we have then that
      <math|\<forall\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
      <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=\<infty\>>

      <item>We prove this also by induction so let
      <math|\<cal-S\>=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|If
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>> is a
      family in <wide|\<bbb-R\>|\<bar\>><rsub|+> with
      \<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}> then
      <big|sum><rsub|i=m><rsup|m>x<rsub|i>\<less\>\<infty\>|}>> then we have\ 

      <\description>
        <item*|<math|n\<in\>\<cal-S\>>>then as
        <math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|n>|}>\<Rightarrow\>x<rsub|n>\<less\>\<infty\>>
        and thus <math|<big|sum><rsub|i=n><rsup|n>x<rsub|i>=x<rsub|n>\<less\>\<infty\>>
        proving that <math|n\<in\>\<cal-S\>>

        <item*|<math|m\<in\>\<cal-S\>\<Rightarrow\>m+1\<in\>\<cal-S\>>>then
        from<space|1em><math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m+1>|}>>
        we have <math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}>\<wedge\>x<rsub|m+1>\<neq\>\<infty\>>
        and then <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m+1>\<equallim\><rsub|m\<in\>\<cal-S\>\<Rightarrow\><big|sum><rsub|i=n><rsup|m>x<rsub|i>\<less\>\<infty\>\<wedge\>x<rsub|m+1>\<less\>\<infty\>><big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m+1>\<less\>\<infty\>>
        proving that <math|m+1\<in\>\<cal-S\>>
      </description>

      so by mathematical induction we have that
      <math|\<cal-S\>=<around*|{|n,\<ldots\>,\<infty\>|}>> proving our
      theorem.
    </enumerate>
  </proof>

  We extend now the sum of constant values (see <reference|sum of constants>
  for the real case).

  <\proposition>
    <label|finite sum of constants in the extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a finite family with <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>>
    <math|x<rsub|i>=c\<in\><wide|\<bbb-R\>|\<bar\>><rsub|+><rsub|>> then
    <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>=<around*|(|n-k+1|)>\<cdot\>c>.
    More general if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a family
    with finite support such that <math|\<forall\>i\<in\>I> we have
    <math|x<rsub|i>=c> then <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=#<around*|(|I|)>\<cdot\>c>
  </proposition>

  <\proof>
    We prove the first part by induction so let
    <math|S=<around*|{|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|if
    <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><text| is
    a family with >x<rsub|i>=c<text| then
    ><big|sum><rsub|i=k><rsup|n>x<rsub|i>=n\<cdot\>c|}>> then we have\ 

    <\description>
      <item*|<math|k\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,k|}>>>
      is such that <math|x<rsub|i>=c> then
      <math|<big|sum><rsub|k=1><rsup|k>x<rsub|i>=x<rsub|k>=c=<around*|(|k-k+1|)>\<cdot\>c>
      proving that <math|k\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>take
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>>
      with <math|x<rsub|i>=c> then we have
      <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>+x<rsub|n+1>\<equallim\><rsub|n\<in\>S><around*|(|n-k+1|)>\<cdot\>c+x<rsub|n+1>=<around*|(|n-k+1|)>\<cdot\>c+c>,
      we have now two cases either <math|c=\<infty\>> and then
      <math|<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>\<infty\>=<around*|(|n-k+1|)>\<cdot\>c+c>
      or <math|c\<less\>\<infty\>> and then
      <math|<around*|(|n-k+1|)>\<cdot\>c+c=<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>c>,
      this proves <math|<big|sum><rsub|i=1><rsup|n+1>x<rsub|i>=<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>c>
      giving <math|n+1\<in\>S>
    </description>

    Mathematical induction completes then the proof.\ 

    For the second part either we have <math|c=0> and then
    <math|support<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=\<emptyset\>>
    and thus by definition <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0=#<around*|(|I|)>\<cdot\>0=#<around*|(|I|)>\<cdot\>c>
    or <math|c\<gtr\>0> and then <math|support<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=I>,
    so there exists a bijection <math|b:<around*|{|1,\<ldots\>,#<around*|(|I|)>|}>\<rightarrow\>I>
    and <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=1><rsup|#<around*|(|I|)>>x<rsub|b<around*|(|i|)>>=<around*|(|#<around*|(|I|)>-1+1|)>\<cdot\>c=#<around*|(|I|)>\<cdot\>c>.
  </proof>

  We now define the concept of infinite sums of the extended positive reals.

  <\definition>
    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended non negative reals then we say that
    <math|<big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|i>=x> \ if
    <math|<around*|{|<big|sum><rsub|i=n><rsup|m>x<rsub|i>|}><rsub|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    is convergent and <math|<below|lim|m\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=n><rsup|m>x<rsub|i>|)>=x>
    (using the definition of the limit in <math|<wide|\<bbb-R\>|\<bar\>>>).
  </definition>

  <\theorem>
    <label|series and product with a scalar>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a a sequence of extended non negative reals such that
    <math|<big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|i>> is convergent to
    <math|x>, <math|\<alpha\>\<in\>\<bbb-R\>> then
    <math|<big|sum><rsub|i=n><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x|)>>
    is convergent to <math|\<alpha\>\<cdot\>x> or
    <math|<big|sum><rsub|i=n><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x>
  </theorem>

  <\proof>
    As <math|<big|sum><rsub|i=n><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=n><rsup|k>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
    of extented reals and product>>><below|lim|k\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|k>x<rsub|i>|)>\<equallim\><rsub|<text|<reference|properties
    of the limit in the extented reals>>>\<alpha\>\<cdot\><below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=n><rsup|k>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|k>>.
  </proof>

  As increasing sequences have always a limit the following theorem will
  ensure that series of positive extended reals always converges.

  <\theorem>
    <label|series of positive extented reals is increasing>If
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    of non negative extended reals [<math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have <math|0\<leqslant\>x<rsub|i>\<in\><wide|\<bbb-R\>|\<bar\>>>] then
    <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a increasing sequence of extended reals. So there exists a
    <math|s\<in\><wide|\<bbb-R\>|\<bar\>>> such that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>=s>
    or \ <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<uparrow\>s> (see
    <reference|notation for limit of increasing/decreasing sequences>) and
    using <reference|equivalence of limits on increasing (decreasing)
    sequences of extented reals> we have <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\>\<bbb-N\><rsub|0>|)>>
  </theorem>

  <\proof>
    This follows from <reference|series are increasing> and
    <reference|equivalence of limits on increasing (decreasing) sequences of
    extented reals>
  </proof>

  Series preserve the order relation in the set of extended reals as the
  following theorem shows.\ 

  <\theorem>
    <label|sum and order relation in the extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be sequences of positive extended reals such that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<leqslant\>y<rsub|i>> then we have that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>
  </theorem>

  <\proof>
    Note that <math|\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have by <reference|sum and inequalities of family> that
    <math|<big|sum><rsub|i=k><rsup|l>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|l>y<rsub|i>>
    and thus by <reference|sup of set of bigger elements> we have that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|l>x<rsub|i>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|l>y<rsub|i>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>
  </proof>

  The following two theorems are intuitive very clear but still needs some
  proof.

  <\theorem>
    <label|finite infinite sum means finite terms>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of positive extended reals such that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>> then
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<less\>\<infty\>>.
  </theorem>

  <\proof>
    As <math|sup<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>>
    we have, using <reference|condition for supremum (infinum) to be
    infinite>, that <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<vDash\><big|sum><rsub|i=k><rsup|n>x<rsub|i>\<less\>\<infty\>\<Rightarrowlim\><rsub|<text|<reference|finite
    sum of extented reals starting at n>>>x<rsub|n>\<less\>\<infty\>>\ 
  </proof>

  <\theorem>
    <label|finite sum of extented reals written as infinite sum>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence of positive extended reals such that
    <math|\<exists\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|\<forall\>i\<in\><around*|{|m+1,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>=0> then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|m>x<rsub|i>>
  </theorem>

  <\proof>
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|if
    n\<gtr\>m\<Rightarrow\><big|sum><rsub|i=k><rsup|n>x<rsub|i>=<big|sum><rsub|i=k><rsup|m>x<rsub|i>
    the biggest sum>=<big|sum><rsub|i=k><rsup|m>x<rsub|i>>
  </proof>

  \;

  We show now that the finite sum of a family of extended positive reals is
  independent of the order of the terms.

  <\theorem>
    <label|sum of extented reals is indepenent of order the reals>If
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
    is a finite family of extended reals such that
    <math|<around*|{|-\<infty\>,\<infty\>|}>\<nsubseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
    and <math|\<sigma\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>
  </theorem>

  <\proof>
    This follows from the fact that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<bar\>><rsub|+>,+|\<rangle\>>>
    is a Abelian semi-group and <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>\<equallim\><rsub|<text|<reference|finite
    sum of extented reals starting at n>>><big|sum><rsub|i=0><rsup|m-n>x<rsub|i+n>\<equallim\><rsub|<text|<reference|commutativity
    of general sum>>><big|sum><rsub|i=0><rsup|m-n>x<rsub|\<sigma\><around*|(|i+n|)>>=<big|sum><rsub|i=n><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>
  </proof>

  As for infinite sums, the infinite sum of extended positive reals exists
  always and is independent of the order as is shown in the following
  theorem.\ 

  <\theorem>
    <label|a serie of extented positive reals converges always and is
    independent of the order>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a sequence of positive extended reals
    [<math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<geqslant\>0>] then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    and <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
    converges and <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
    for every permutation <math|\<sigma\>:<around*|{|k,\<ldots\>,n|}>\<rightarrow\><around*|{|k,\<ldots\>,n|}>>
  </theorem>

  <\proof>
    As by <reference|extented reals> we have that
    <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    and <math|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|}><rsub|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>>
    are increasing sequences we have by <reference|equivalence of limits on
    increasing (decreasing) sequences of extented reals> that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>,
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
    always converges and <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>,
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
    Next we prove that\ 

    <\equation>
      <label|eq 13.14.41>If \<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}><text|
      is a permutation then ><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>
    </equation>

    Let <math|s\<in\><around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    then <math|s=<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>>
    , define now <math|m=max<around*|(|<around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>> we have
    <math|1\<leqslant\>\<sigma\><around*|(|i|)>\<leqslant\>m\<Rightarrow\>\<sigma\><around*|(|<around*|{|k,\<ldots\>,n|}>|)>\<subseteq\><around*|{|k,\<ldots\>,m|}>>
    then we have <math|<big|sum><rsub|i=k><rsup|m>x<rsub|i>\<equallim\><rsub|<text|<reference|generalized
    sum and finite sum>>><big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|i>\<geqslant\><rsub|<text|<reference|series
    are increasing>>><big|sum><rsub|i\<in\>\<sigma\><around*|(|<around*|{|k,\<ldots\>,n|}>|)>>x<rsub|i>=<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>x<rsub|\<sigma\><around*|(|i|)>>>,
    so using <reference|sup of set of bigger elements> and the fact that
    <math|<big|sum><rsub|i=k><rsup|m>x<rsub|i>\<in\><around*|{|<big|sum><rsub|k=1><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>,
    we have <math|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
    and thus <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><rsub|>>
    as must be proved.

    Now if <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    is a bijection take then <math|\<sigma\><rsup|-1>> and then we have by
    <reference|eq 13.14.41> that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><rsup|-1><around*|(|\<sigma\><around*|(|i|)>|)>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
    which by <reference|eq 13.14.41> proves that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
  </proof>

  The next theorem shows that we can interchange infinite sums.

  <\theorem>
    <label|interchange infinite and finite sum>Let
    <math|k,l\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
    be a family of extended positive reals then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsup|\<infty\>><rsub|j=l>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)><rsub|>>.
    Note that using <reference|finite sum of extented reals written as
    infinite sum> we have also for <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,n|}>>>
    that <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    and using <reference|finite sum of extented reals written as infinite
    sum> we have for <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>>
    that <math|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>.
  </theorem>

  <\proof>
    Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> then
    <math|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|generalized
    sum and finite sum>>><big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|sum
    over product of sets>>><big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,m|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|j=l><rsup|m><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>=<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\|n\<in\><around*|{|l,\<ldots\>,m|}><rsub|>|}>|)>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    from which follows <math|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>|}>|)>\<leqslant\><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<Rightarrowlim\><rsub|<text|<reference|sup
    of set of bigger elements>>>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    giving\ 

    <\equation>
      <label|eq 13.15.41><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
    </equation>

    Likewise if <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> then
    <math|<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|m>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|generalized
    sum and finite sum>>><big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,n|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|sum
    over product of sets>>><big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,n|}>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|i=k><rsup|m><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|i=k><rsup|m><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|n>x<rsub|<around*|(|i,j|)>>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>=<big|sum><rsub|i=k><rsup|m><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\|n\<in\><around*|{|l,\<ldots\>,m|}><rsub|>|}>|)>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    from which follows <math|sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|m>x<rsub|<around*|(|i,j|)>>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|)>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<Rightarrowlim\><rsub|<text|<reference|sup
    of set of bigger elements>>>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|n><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|m>x<rsub|<around*|(|i,j|)>>\|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|)>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    giving\ 

    <\equation>
      <label|eq 13.16.41><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
    </equation>

    <reference|eq 13.15.41> and <reference|eq 13.16.41> proves then finally
    the theorem.
  </proof>

  Every finite sum of a denumerable sum can be writen as a denumerable sum\ 

  <\theorem>
    <label|finite sum of denumerable sums>Let
    <math|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and
    <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|[|l,\<ldots\>,\<infty\>|]>>>
    be a family of non negative extended real then if
    <math|\<sigma\>:<around*|{|p,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>
    is a bijection (which exist by <reference|product of a finite and
    denumerable set is denumerable>) then
    <math|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|interchange
    infinite and finite sum>>><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|<around*|(|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>|)>>>
  </theorem>

  <\proof>
    Let <math|m\<in\><around*|{|p,\<ldots\>,\<infty\>|}>> and define
    <math|N<rsub|m>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|2>\|i\<in\><around*|{|p,\<ldots\>,m|}>|}>|)>>
    then we have <math|\<sigma\><around*|(|<around*|{|p,\<ldots\>,m|}>|)>\<subseteq\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,N<rsub|m>|}>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=p><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|p,\<ldots\>,m|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|p,\<ldots\>,m|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,N<rsub|m>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,N<rsub|m>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|N<rsub|m>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|sum
      and inequalities of family>>>>|<cell|<big|sum><rsub|i=k><rsup|n>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
    </eqnarray*>

    From the above it follows that <math|<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=sup<around*|(|<around*|{|<big|sum><rsub|i=p><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    so we have\ 

    <\equation>
      <label|eq 14.22.423><big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
    </equation>

    For the opposite inequality let <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
    and take <math|N<rsub|m>=max<around*|(|\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>|)>>
    then if <math|i\<in\>\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>\<Rightarrow\>p\<leqslant\>i\<leqslant\>N<rsub|m>>
    proving that <math|\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><around*|{|p,\<ldots\>,N<rsub|m>|}>>.
    So <math|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>\<equallim\><rsub|\<sigma\>
    is a bijection>\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>|)>\<subseteq\>\<sigma\><around*|(|<around*|{|p,\<ldots\>,N<rsub|m>|}>|)>>.
    It follows that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|*<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|series
      are increasing>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|p,\<ldots\>,N<rsub|m>|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|p,\<ldots\>,N<rsub|m>|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=p><rsup|N<rsub|m>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=p><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|{|<around*|(|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|sup<around*|{|<around*|(|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>>>|<row|<cell|>|<cell|\<leqslant\><rsub|>>|<cell|<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    proving together with <reference|eq 14.22.423> that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
    and thus the theorem.
  </proof>

  Every denumerable sum of finite sums can be written as a denumerable sun.

  <\theorem>
    <label|associativity of series of extended reals>Let
    <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>>
    [where <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have <math|m<rsub|i>\<leqslant\>n<rsub|i>>] we have <math|> then if
    <math|\<sigma\>:<around*|{|l,\<ldots\>,\<infty\>|}>\<rightarrow\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    is a bijection (which must exists by <reference|a denumerable family of
    countable sets is countable>) we have
    <math|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|i=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>>
  </theorem>

  <\proof>
    First let <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define
    the bijection <math|\<tau\><rsub|i>:<around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>\<rightarrow\><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    by <math|\<tau\><rsub|i><around*|(|k|)>=<around*|(|i,k|)>> so that by
    <reference|generalized sums and bijections> we have
    <math|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>x<rsub|<around*|(|i,j|)>>=<big|sum><rsub|k\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>x<rsub|\<tau\><rsub|i><around*|(|k|)>>=<big|sum><rsub|k\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>x<rsub|<around*|(|i,k|)>>=<big|sum><rsub|k=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,k|)>>>
    proving that\ 

    <\equation>
      <label|eq 14.23.425><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>x<rsub|<around*|(|i,j|)>>=<big|sum><rsub|j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>x<rsub|<around*|(|i,j|)>>=<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|j>>x<rsub|<around*|(|i,j|)>>
    </equation>

    \ Let <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> define then
    <math|N<rsub|m>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|l,\<ldots\>,m|}>|}>|)>>.
    If <math|i\<in\><around*|{|l,\<ldots\>,m|}>> then
    \ <math|\<sigma\><around*|(|i|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    there exists a <math|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that <math|\<sigma\><around*|(|i|)>\<in\><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>>
    so that as <math|\<sigma\><around*|(|i|)><rsub|1>=j\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>>
    proving that

    <\equation>
      <label|eq 14.23.424>\<sigma\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}><text|>
      <around*|(|<text|a pairwise disjoint union>|)>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=l><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|eq
      14.23.424> and <text|<reference|series are
      increasing>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|cup><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|general
      associativity of general sum>>>|<cell|<big|sum><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>>>
    </eqnarray*>

    \ proving using the above and <reference|eq 14.23.425> that\ 

    <\equation>
      <label|eq 14.24.424><big|sum><rsub|i=l><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>
    </equation>

    So <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have
    <math|<big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|r=k><rsup|n><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|sum><rsub|r=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>>
    proving by the definition of a supremum together with <reference|eq
    14.24.424> that\ 

    <\equation>
      <label|eq 14.25.424><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>
    </equation>

    For the opposite inequality take <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    and take <math|N<rsub|m>=max<around*|(|\<sigma\><rsup|-1><around*|(|<big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>|)>|)>>
    then if <math|i\<in\>\<sigma\><rsup|-1><around*|(|<big|cup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>|)>>
    then <math|i\<in\><around*|{|l,\<ldots\>,N<rsub|m>|}>> so that
    <math|\<sigma\><rsup|-1><around*|(|<big|sqcup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>|)>\<subseteq\><around*|{|l,\<ldots\>,N<rsub|m>|}>>
    giving as <math|\<sigma\>> is a bijection that

    <\equation>
      <label|eq 14.26.424><big|sqcup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>\<subseteq\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,N<rsub|m><rsub|>|}>|)>
    </equation>

    Now we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|m><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.23.425>>>>|<cell|<big|sum><rsub|r=k><rsup|m><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|general
      associativity of general sum>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|r\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing> together with <reference|eq
      14.26.424>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,N<rsub|m>|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,N<rsub|m>|}>><rsup|>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=l><rsup|N<rsub|m>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=l><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    Using the definition of a supremum we have then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>,
    this together with <reference|eq 14.25.424> proves\ 

    <\equation*>
      <big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>
    </equation*>

    \;
  </proof>

  We prove that a denumerable sum of denumerable sums may be written by as a
  denumerable sum.\ 

  <\theorem>
    <label|countable sum of countable sums is a countable sum>Let
    <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>|}><rsub|j\<in\>\<bbb-N\><rsub|0>>>
    a sequence of sequences of extended positive reals and
    <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    a bijection (which exists as by <reference|product of enumerable sets is
    enumerable> <math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>> is
    denumerable) then <math|<big|sum><rsub|i\<in\>\<bbb-N\><rsub|0>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\<equallim\><rsub|<text|<reference|interchange
    infinite and finite sum>>><big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i,j>|)>>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> take then
    <math|N<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>,
    <math|M<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|2>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then we have that <math|\<sigma\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>\<subseteq\><around*|{|1,\<ldots\>,N<rsub|n>|}>\<times\><around*|{|1,\<ldots\>,M<rsub|n>|}>>
    and thus <math|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<equallim\><rsub|<text|<reference|generalized
    sum and finite sum>>><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|{|1,\<ldots\>,n|}>>x<rsub|i,j>\<leqslant\><rsub|<text|<reference|series
    are increasing>>><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,N<rsub|n>|}>\<times\><around*|{|1,\<ldots\>,M<rsub|n>|}>>x<rsub|i,j>\<equallim\><rsub|<text|<reference|sum
    over product of sets>>><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,N<rsub|n>|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,M<rsub|n>|}>>x<rsub|i,j>|)>=<big|sum><rsub|i=1><rsup|N<rsub|n>><around*|(|<big|sum><rsub|j=1><rsup|M<rsub|n>>x<rsub|i,j>|)>\<leqslant\><big|sum><rsub|i=1><rsup|N<rsub|n>>sup<around*|(|<around*|{|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|sum><rsub|i=><rsup|N<rsub|n>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\<Rightarrow\><big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>>.
    Taking the supremum gives

    <\equation>
      <label|eq 13.17.50><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation>

    Let now take <math|n,m\<in\>\<bbb-N\><rsub|0>> and take
    <math|N=max<around*|(|\<sigma\><rsup|-1><around*|(|<around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>|)>|)>>
    then if <math|i\<in\>\<sigma\><rsup|-1><around*|(|<around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>|)>>
    we have <math|1\<leqslant\>i\<leqslant\>N> proving that
    <math|\<sigma\><rsup|-1><around*|(|<around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>|)>\<subseteq\><around*|{|1,\<ldots\>,N|}>\<Rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>\<equallim\><rsub|\<sigma\>
    is a bijection>\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|<around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>|)>|)>\<subseteq\>\<sigma\><around*|(|<around*|{|1,\<ldots\>,N|}>|)>>.
    Then <math|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>x<rsub|i,j>|)>\<equallim\><rsub|<text|<reference|sum
    over product of sets>>><big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>x<rsub|i,j>\<leqslant\><rsub|<text|<reference|series
    are increasing>>><big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|1,\<ldots\>,N|}>|)>>x<rsub|i,j>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=1><rsup|N>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|k>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
    proving that <math|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>\<Rightarrow\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|k><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<Rightarrowlim\><rsub|<text|<reference|interchange
    infinite and finite sum>>><big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i,j>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<Rightarrow\><big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i,j>|)>=sup<around*|(|<around*|{|<big|sum><rsub|j=1><rsup|k><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i,j>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<Rightarrowlim\><rsub|<text|<reference|interchange
    infinite and finite sum>>><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
    which together with <reference|eq 13.17.50> gives\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>
  </proof>

  <\theorem>
    <label|associativity of inifinite series>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|\<sigma\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>\<sigma\><around*|(|\<bbb-N\><rsub|0>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a set of bijections so that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)>=\<bbb-N\><rsub|0>>
    and <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)><big|cap>\<sigma\><rsub|j><around*|(|\<bbb-N\><rsub|0>|)>=\<emptyset\>>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> a
    sequence of non-negative extended reals then
    <math|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>
  </theorem>

  <\proof>
    First we prove that <math|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>.
    Given <math|m\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\>i\<neq\>j>
    that <math|\<sigma\><rsub|i><around*|(|<around*|{|1,\<ldots\>,m|}>|)><big|cap>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>\<subseteq\>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)><big|cap>\<sigma\><rsub|j><around*|(|\<bbb-N\><rsub|0>|)>=\<emptyset\>>
    and thus applying <reference|general associativity of general sum> we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\>\<sigma\><rsub|i><around*|(|<around*|{|1,\<ldots\>,m|}>|)>>x<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|general
      associativity of general sum>>>>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>>x<rsub|i><rsub|>>>>>
    </eqnarray*>

    \ \ proving\ 

    <\equation>
      <label|eq 14.23.409>\<forall\>m\<in\>\<bbb-N\><rsub|0><text| we have
      ><big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>=<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>>x<rsub|i>
    </equation>

    Take now <math|N<rsub|m>=max<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>|)>>
    then <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>\<subseteq\><around*|{|1,\<ldots\>,N|}>>
    and by <reference|series are increasing> we have
    <math|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,m|}>|)>>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,N<rsub|m>|}>>x<rsub|i>=<big|sum><rsub|i=1><rsup|N<rsub|m>>x<rsub|i>>.
    So using <reference|eq 14.23.409> we have
    <math|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|N<rsub|m>>x<rsub|i>\<leqslant\>sup<around*|(|<big|sum><rsub|i=1><rsup|m>x<rsub|i>\|m\<in\>\<bbb-N\><rsub|0>|)>\<equallim\><rsub|<text|<reference|series
    of positive extented reals is increasing>>><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>
    proving, as by <reference|interchange infinite and finite sum> we have
    <math|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>>
    that <math|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>.
    Using the definition of the supremum we have then that
    <math|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>=sup<around*|(|<around*|{|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>
    giving\ 

    <\equation>
      <label|eq 14.24.409><big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>><big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>
    </equation>

    For the opposite inequality let <math|m\<in\>\<bbb-N\><rsub|0>> then
    <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>> we have, as
    <math|\<bbb-N\><rsub|0>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)>>,
    that there exists a <math|i<rsub|k>\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|k\<in\>\<sigma\><rsub|i<rsub|k>><around*|(|\<bbb-N\><rsub|0>|)>>
    and thus a <math|l<rsub|k>\<in\>\<bbb-N\><rsub|0>> such that
    <math|k=\<sigma\><rsub|i<rsub|k>><around*|(|l<rsub|k>|)>>. Take now
    <math|N<rsub|m>=max<around*|(|<around*|{|l<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,m|}>|}>|)>>
    then, as <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>> we have
    <math|1\<leqslant\>l<rsub|k>\<leqslant\>N<rsub|m>\<Rightarrow\>l<rsub|k>\<in\><around*|{|1,\<ldots\>,N<rsub|m>|}>>,
    we have <math|k=\<sigma\><rsub|i<rsub|k>><around*|(|l<rsub|k>|)>\<in\>\<sigma\><rsub|i<rsub|k>><around*|(|<around*|{|1,\<ldots\>,N<rsub|m>|}>|)>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|i><around*|(|<around*|{|1,\<ldots\>,N<rsub|m>|}>|)>>
    proving that\ 

    <\equation>
      <label|eq 14.25.411><around*|{|1,\<ldots\>,m|}>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|i><around*|(|<around*|{|1,\<ldots\>,N<rsub|m>|}>|)>
    </equation>

    So using <reference|series are increasing> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|m>x<rsub|i>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>x<rsub|i>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<sigma\><rsub|j><around*|(|<around*|{|1,\<ldots\>,N<rsub|m>|}>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.23.409>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|N<rsub|m>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n>sup<around*|(|<around*|{|<around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>>>>>
    </eqnarray*>

    which together with <reference|eq 14.24.409> proves the theorem.
  </proof>

  \;

  The following definition allows us to sum from <math|-\<infty\>> to
  <math|+\<infty\>>

  <\definition>
    <label|sum from -infinity to infinity><index|<math|<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>x<rsub|i>>>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>\<bbb-Z\>>> then
    <math|<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=0><rsup|\<infty\>>x<rsub|i>+<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|-i>>
  </definition>

  <chapter|The exponential function>

  <section|Power series>

  <subsection|Definition and convergence domains>

  In this chapter we limit ourselves to series of real numbers so as
  <math|<around*|\<langle\>|\<bbb-R\>,+,0|\<rangle\>>> is a field we have
  that finite sums are always defined (see <reference|generalized fnite sum>)
  So we can use the definition of a convergent (divergent) serie in
  <math|\<bbb-R\>> (see <reference|definition of a serie>).\ 

  <\theorem>
    Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> converges if and
    only \ <math|<below|lim sup |n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>=<below|lim
    inf|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>|)>\<in\>\<bbb-R\>>
    in which case we have <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<below|lim
    sup |n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>=<below|lim
    inf|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>|)>\<in\>\<bbb-R\>>
  </theorem>

  <\proof>
    This follows from <reference|definition of a serie> and
    <reference|convergence in real implies that lim inferior = lim superior>
  </proof>

  <\definition>
    <label|Power series><dueto|Power Serie>Let <math|z\<in\>\<bbb-Z\>> and
    <math|<around*|{|a<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-C\>>
    then <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    <math|> is called a power serie.
  </definition>

  <\theorem>
    <label|power series 0>Let <math|<around*|{|a<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<bbb-C\>>
    be a sequence then <math|a<rsub|0>=<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>0<rsup|i>>
    and <math|<around*|\||a<rsub|0>|\|>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>\<cdot\>0<rsup|i>|\|>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>0<rsup|i>>.
    Let <math|n\<in\>\<bbb-N\>> then <math|<big|sum><rsub|i=1><rsup|n><around*|\||a<rsub|i>\<cdot\>0<rsup|i>|\|>=<big|sum><rsub|i=1><rsup|n><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||0|\|><rsup|i>=<around*|\||a<rsub|0>|\|>\<cdot\><around*|\||0|\|><rsup|0>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\><around*|\||0|\|><rsup|i>=<around*|\||a<rsub|0>|\|>+<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>|\|>\<cdot\>0\<cdot\>0<rsup|i-1>=<around*|\||a<rsub|0>|\|>+0\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\>0<rsup|i-1>=<around*|\||a<rsub|0>|\|>>.
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> then <math|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>0<rsup|i>=a<rsub|0>\<cdot\>0<rsup|0>+<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\>o<rsup|i>=a<rsub|0>+<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\>0\<cdot\>0<rsup|i-1>=a<rsub|0>+0\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\>0<rsup|i-1>=a<rsub|0>>.
  </proof>

  <\definition>
    <index|convergence domain><index|absolute convergence domain>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then we define\ 

    <\enumerate>
      <item> <math|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>
      is convergent|}>>, <math|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
      is called the <with|font-series|bold|convergence domain> of
      <math|><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>

      <item><math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>=<around*|{|z\<in\>\<bbb-C\>\|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>
      is absolute convergent|}>>, <math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>
      is called the <with|font-series|bold|absolute convergence domain> of
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    </enumerate>
  </definition>

  <\theorem>
    <label|zero and convergentie domain>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then \ <math|0\<in\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
  </theorem>

  <\proof>
    Using <reference|power series 0> we have that
    <math|0\<in\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>,
    further as absolute convergence implies convergence (see
    \ <reference|corollary 12.340>) we have that
    <math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
  </proof>

  <\theorem>
    <label|convergence of powerseries (1)>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then for <math|0\<neq\>z<rsub|0>\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
    we have <math|\<forall\>\<rho\>> with
    <math|0\<leqslant\>\<rho\>\<less\><around*|\||z<rsub|0>|\|>> that
    <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>>
    is convergent.
  </theorem>

  <\proof>
    Let <math|0\<leqslant\>\<rho\>\<less\><around*|\||z<rsub|0>|\|>> then we
    have for <math|\<delta\>> either

    <\description>
      <item*|<math|\<rho\>=0>>Using <reference|power series 0> we have that
      <math|><math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>>
      is convergent.

      <item*|<math|0\<less\>\<rho\>>>As <math|z<rsub|0>\<in\>\<cal-D\><rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>><rsub|>>
      we have that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsub|0><rsup|i>>
      is convergent, so using <reference|terms of a convergent series goes to
      0> we have that <math|<below|lim|n\<rightarrow\>\<infty\>>a<rsub|n>\<cdot\>z<rsub|0><rsup|n>=0>,
      hence by <reference|convergent sequences are Cauchy (1)>
      <math|<around*|{|a<rsub|n>\<cdot\>z<rsub|0><rsup|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      is Cauchy and thus bounded (see <reference|Cauchy includes bounded>)
      proving\ 

      <\equation>
        <label|eq 17.1.515>\<exists\>K\<in\>\<bbb-R\><text| such that
        >\<forall\>i\<in\>\<bbb-N\>\<vDash\><around*|\||a<rsub|n>\<cdot\>z<rsup|n>|\|>\<leqslant\>K
      </equation>

      Now <math|\<forall\>n\<in\>\<bbb-N\>> we have
      <math|<around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>\<equallim\><rsub|0\<neq\><around*|\||z<rsub|0>|\|>><around*|\||a<rsub|n>|\|>\<cdot\><around*|\||z<rsub|0>|\|><rsup|n>\<cdot\><around*|(|<frac|\<rho\>|<around*|\||z<rsub|0>|\|>>|)><rsup|n>=<around*|\||a<rsub|n>z<rsub|0><rsup|n>|\|>\<cdot\>q<rsup|n>>
      with <math|q=<around*|\||<frac|\<rho\>|<around*|\||z<rsub|0>|\|>>|\|>\<less\>1>
      and using <reference|eq 17.1.515> we have then that\ 

      <\equation>
        <label|eq 17.2.515>\<forall\>n\<in\>\<bbb-N\>\<vDash\><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>\<leqslant\>K\<cdot\>q<rsup|n>
        where q\<less\>1
      </equation>

      Using <reference|exaple of a convergent serie> we have that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<rho\><rsup|i>> is convergent
      and thus using <reference|linear combination of convergent series> we
      have that <math|<big|sum><rsub|i=0><rsup|\<infty\>>K\<cdot\>\<rho\><rsup|i>>
      is convergent. Using <reference|eq 17.2.515> on the above allows us to
      apply dominent convergence (see <reference|convergent criteria of a
      serie in a Banach space>) to prove that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>>
      is convergent.
    </description>
  </proof>

  <\corollary>
    <label|convergence domain and balls>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie, <math|0\<neq\>z<rsub|0>\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
    then <math|B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z<rsub|0>|\|>|)>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
  </corollary>

  <\proof>
    Take <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z<rsub|0>|\|>|)>>
    then for <math|z> we have either\ 

    <\description>
      <item*|<math|z=0>>then we have <math|z=0\<in\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>

      <item*|<math|z\<neq\>0>>then <math|0\<less\><around*|\||z|\|>\<less\><around*|\||z<rsub|0>|\|>\<Rightarrow\>\<exists\>\<rho\>\<vdash\>0\<less\><around*|\||z|\|>\<less\>\<rho\>\<less\><around*|\||z<rsub|0>|\|>>.
      Using the previous theorem we have that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>>
      is convergent. Finally as <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|<around*|\||a<rsub|i>\<cdot\>z<rsup|i>|\|>=<around*|\||a<rsub|i>|\|>\<cdot\><around*|\||z|\|><rsup|i>\<less\><around*|\||a<rsub|i>|\|>\<cdot\>\<rho\><rsup|i>>
      it follows from dominent vonvergence (see <reference|convergent
      criteria of a serie in a Banach space>) that
      <math|<big|sum><rsub|i=1><rsup|\<infty\>><around*|\||a<rsub|i>\<cdot\>z<rsup|i>|\|>>
      is convergent, hence <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
      is absolute convergent and thus <math|z\<in\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>.
    </description>
  </proof>

  From the above it follows that <math|0\<in\><around*|[|0,\<infty\>|[><big|cap>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<Rightarrow\>\<emptyset\>\<neq\><around*|[|0,\<infty\>|[><big|cap>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
  which allows us to define the following

  <\definition>
    <label|convergence radius><index|convergence
    radius><index|<math|R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>>>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=sup<around*|(|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>|)>>
    is called the <with|font-series|bold|conversion radius>
  </definition>

  The above corollary is then summarized as follows

  <\corollary>
    Let<math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-C\>>
    be a sequence then we have for <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>\ 

    <\enumerate>
      <item>If <math|0\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>\<infty\>>
      then <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>

      <item>If <math|><math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=\<infty\>>
      then <math|><math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>=\<bbb-C\>=\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>

      <item>If <math|><math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>=\<bbb-C\>=\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
      then <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=\<infty\>>
      and <math|><math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|0\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>\<infty\>>
      we have either

      <\description>
        <item*|<math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=0>>if
        <math|0\<neq\>z\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
        then <math|0\<less\><around*|\||z|\|>> so there exists a
        <math|\<rho\>\<in\>\<bbb-R\>> such that
        <math|0\<less\>r\<less\><around*|\||z|\|>> proving that
        <math|0\<less\>r\<in\><around*|[|0,\<infty\>|[><big|cap>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z|\|>|)>\<subseteq\><rsub|<text|<reference|convergence
        domain and balls>>><around*|[|0,\<infty\>|[><big|cap>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>.
        From this it follows that <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=sup<around*|(|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>|)>\<gtr\>0>
        a contradiction. So we have that <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>=\<emptyset\>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>=<around*|{|0|}>=>
        \ <math|<wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<equallim\><rsub|0\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>><around*|{|0|}>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>.

        <item*|<math|0\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>\<infty\>>>Let
        <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>
        then we have either\ 

        <\description>
          <item*|z=0>then <math|z=0\<in\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>

          <item*|<math|z\<neq\>0>>then <math|0\<less\><around*|\||z|\|>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=sup<around*|(|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>|)>>
          so there exists a <math|z<rprime|'>\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>>
          such that <math|0\<less\><around*|\||z|\|>\<less\>z<rprime|'>\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>.
          Hence <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,z<rprime|'>|)>=B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||z<rprime|'>|\|>|)>\<subseteq\><rsub|<text|<reference|convergence
          domain and balls>>><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>
        </description>

        so in all cases we have <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>|)>>
        proving that\ 

        <\equation>
          <label|eq 17.3.515>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>|)>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>
        </equation>

        If <math|z\<nin\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
        then <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\><around*|\||z|\|>>
        then <math|\<exists\>r\<in\><around*|[|0,\<infty\>|[>> such that
        <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>r\<less\><around*|\||z|\|>>.
        If now <math|z\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>
        then by <reference|convergence domain and balls> we have that
        <math|r\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>>
        hence <math|r\<leqslant\>sup<around*|(|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>|)>=R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>r>
        a contradiction. So we must have that
        <math|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
        proving using <reference|eq 17.3.515> that\ 

        <\equation*>
          B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>
        </equation*>
      </description>

      <item>If <math|z\<in\>\<bbb-C\>> then as
      <math|><math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=\<infty\>>
      there exists by <reference|condition for supremum (infinum) to be
      infinite> a <math|r\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|><big|cap><around*|[|0,\<infty\>|[>>
      such that <math|<around*|\||z|\|>\<less\>r=<around*|\||r|\|>\<Rightarrow\>z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,<around*|\||r|\|>|)>\<subseteq\><rsub|<text|<reference|convergence
      domain and balls>>><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>>
      proving that <math|\<bbb-C\>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<subseteq\>\<bbb-C\>>
      giving

      <\equation*>
        <wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>=\<bbb-C\>=\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>
      </equation*>

      <item>As by (1) we have <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\>\<bbb-C\>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
      we must have that <math|<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>=\<bbb-C\>>.
      If now <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>\<infty\>>
      then as <math|> <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>+1\<in\>\<bbb-C\>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
      so that <math|> <math|><math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>+1\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
      giving the contradiction <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
      so we must have that <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>=\<infty\>>
      which means by (2) that also \ <math|\<bbb-C\>=\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>>.
    </enumerate>
  </proof>

  We can simplify the above corollary if we extend the definition of a
  open/closed ball in <math|\<bbb-C\>> so that the radiuscan be infinite.

  <\definition>
    Let <math|\<delta\>\<in\><around*|[|0,\<infty\>|]> <text| and >
    z<rsub|0>\<in\>\<bbb-C\>> then <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>=<around*|{|z\<in\>\<bbb-C\>\|<around*|\||z-z<rsub|0>|\|>\<less\>\<rho\>|}>>
    and <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>=<around*|{|z\<in\>\<bbb-C\>\|<around*|\||z-z<rsub|0>|\|>\<leqslant\>\<delta\>|}>>
    then we have\ 

    <\enumerate>
      <item>If <math|\<delta\>=0> then <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,0|)>=\<emptyset\>>
      a open set and <math|<wide|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>|\<bar\>>=<around*|{|z<rsub|0>|}>>
      a closed set

      <item>If <math|\<delta\>\<less\>\<infty\>> then
      <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>> is the
      classical open ball and <math|<wide|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>|\<bar\>>>
      is the classical closed ball.

      <item>If <math|\<delta\>=\<infty\>> then if <math|z\<in\>\<bbb-C\>> we
      have <math|<around*|\||z-z<rsub|0>|\|>\<less\><around*|\||z-z<rsub|0>|\|>+1\<less\>\<infty\>>
      so that <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>=\<bbb-C\>=<wide|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>|\<bar\>>>
      a open/closed set
    </enumerate>
  </definition>

  we have then the following

  <\lemma>
    <label|ball inclusion>Let <math|\<delta\>,\<delta\><rprime|'>\<in\><around*|[|0,\<infty\>|]>>
    and <math|z<rsub|0>\<in\>\<bbb-C\>> then if
    <math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\><rprime|'>|)>|\<bar\>>>
    then <math|\<delta\>\<leqslant\>\<delta\><rprime|'>>
  </lemma>

  <\proof>
    We have the following possibilities to consider for
    <math|\<delta\><rprime|'>>

    <\description>
      <item*|<math|\<delta\><rprime|'>\<in\><around*|]|0,\<infty\>|[>>>assume
      then that <math|\<delta\><rprime|'>\<less\>\<delta\>> then there exists
      a <math|\<rho\>\<in\>\<bbb-R\>> such that
      <math|0\<less\>\<delta\><rprime|'>\<less\>\<rho\>\<less\>\<delta\>>
      hence <math|\<delta\><rprime|'>\<less\><around*|\||\<rho\>|\|>=\<rho\>\<less\>\<delta\>\<Rightarrow\>\<rho\>\<in\>B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>\<Rightarrow\>\<rho\>\<in\>B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\><rprime|'>|)>\<Rightarrow\>\<delta\><rprime|'>\<less\>\<rho\>\<leqslant\>\<delta\><rprime|'>\<Rightarrow\>\<delta\><rprime|'>\<less\>\<delta\><rprime|'>>
      a contradiction so we must have that
      <math|\<delta\>\<leqslant\>\<delta\><rprime|'>>

      <item*|<math|\<delta\><rprime|'>=0>>then
      <math|><math|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\><rprime|'>|)>|\<bar\>>=<around*|{|0|}>>
      if now <math|0\<less\>\<delta\>> then there exists a
      <math|0\<less\>\<rho\>\<less\>\<delta\>\<Rightarrow\><around*|\||\<rho\>|\|>=\<rho\>\<less\>\<delta\>\<Rightarrow\>\<rho\>\<in\>B<rsub|<around*|\|||\|>><around*|(|z<rsub|0>,\<delta\>|)>\<subseteq\><around*|{|0|}>\<Rightarrow\>0\<less\>\<rho\>=0>
      a contradiction so we must have <math|\<delta\>\<leqslant\>0=\<delta\><rprime|'>>

      <item*|<math|\<delta\><rprime|'>=\<infty\>>>then
      <math|\<delta\>\<leqslant\>\<infty\>=\<delta\><rprime|'>>
    </description>

    So in all cases we have <math|\<delta\>\<leqslant\>\<delta\><rprime|'>>.
  </proof>

  The above corollary condences then to\ 

  <\corollary>
    <label|Balls and convergence domains>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    power serie then we have that <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\><wide|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>|\<bar\>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><rsub|>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
    where <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>
    is open and <math|<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
    is closed.
  </corollary>

  <subsection|Convergence criteria>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    and <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    defined by <math|s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j>> then
    <math|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>
  </lemma>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|if
    <text|<math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    and <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    defined by <math|s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j>> then
    <math|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>>
    |}>> then we have

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>for\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>|<cell|\<equallim\><rsub|n=1>>|<cell|<big|sum><rsub|i=0><rsup|0>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|1>\<cdot\>s<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|s<rsub|0>\<cdot\><around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|1>|)>+\<alpha\><rsub|1>\<cdot\>s<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|z<rsub|0>\<cdot\><around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|1>|)>+\<alpha\><rsub|1>\<cdot\><around*|(|z<rsub|0>+z<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\><rsub|0>\<cdot\>z<rsub|0>+\<alpha\><rsub|1>\<cdot\>z<rsub|1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|1>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>>>>
      </eqnarray*>

      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=0><rsup|n+1>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|)>+\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>|)>+\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+<around*|(|\<alpha\><rsub|n>\<cdot\>s<rsub|n>-a<rsub|n+1>\<cdot\>s<rsub|n>|)>+<around*|(|\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1><rsub|>+\<alpha\><rsub|n+1>\<cdot\>s<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+<around*|(|\<alpha\><rsub|n+1>\<cdot\>z<rsub|n+1><rsub|>+\<alpha\><rsub|n+1>\<cdot\>s<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n+1>\<cdot\><around*|(|z<rsub|n+1>+<big|sum><rsub|i=0><rsup|n>z<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=0><rsup|n>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|)>+\<alpha\><rsub|n+1>\<cdot\>s<rsub|n+1>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\lemma>
    <label|inequality of Abel><dueto|Inequality of Abel>Let
    <math|n\<in\>\<bbb-N\>> <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n-1|}>> we have
    <math|\<alpha\><rsub|i+1>\<leqslant\>\<alpha\><rsub|i>>,
    <math|\<sigma\>=<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>>,
    <math|<around*|{|s<rsub|k>|}><rsub|k\<in\><around*|{|0,\<ldots\>,n|}>>>
    defined by <math|s<rsub|k>=<big|sum><rsub|i=0><rsup|n>z<rsub|i>> and
    <math|\<mu\>\<in\><around*|[|0,\<infty\>|[>>, then if
    <math|\<forall\>k\<in\><around*|{|0,\<ldots\>,n|}>> we have
    <math|<around*|\||s<rsub|k>|\|>\<leqslant\>\<mu\>> it follows that
    <math|<around*|\||\<sigma\>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\>\<mu\>>
  </lemma>

  <\proof>
    We have for <math|n> two cases to consider\ 

    <\description>
      <item*|<math|n=0>>then <math|<around*|\||\<sigma\>|\|>=<around*|\||<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\>z<rsub|0>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\><big|sum><rsub|i=0><rsup|0>z<rsub|i>|\|>=<around*|\||\<alpha\><rsub|0>\<cdot\>s<rsub|0>|\|>=<around*|\||\<alpha\><rsub|0>|\|>\<cdot\><around*|\||s<rsub|0>|\|>\<equallim\><rsub|0\<leqslant\>\<alpha\><rsub|0>>\<alpha\><rsub|0>\<cdot\><around*|\||s<rsub|0>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\>\<mu\>>
      proving that <math|<around*|\||\<sigma\>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\>\<mu\>>

      <item*|<math|n\<neq\>0>>then <math|n\<in\>\<bbb-N\><rsub|0>> so we can
      use the previous lemma
    </description>

    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||\<sigma\>|\|>>|<cell|=>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|previous
      lemma>>|<cell|<around*|\||<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|\||s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>|\|>+<around*|\||\<alpha\><rsub|n>\<cdot\>s<rsub|n>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<alpha\><rsub|i+1>\<leqslant\>\<alpha\><rsub|i>,0\<leqslant\>\<alpha\><rsub|n>>>|<cell|<big|sum><rsub|i=0><rsup|n-1><around*|\||s<rsub|i>|\|>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=0><rsup|n-1>\<mu\>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>>|<row|<cell|>|<cell|=>|<cell|\<mu\>\<cdot\><big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>\<mu\>>>|<row|<cell|>|<cell|=>|<cell|\<mu\>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|n-1><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      of differences (1)>>>>|<cell|\<mu\>\<cdot\><around*|(|\<alpha\><rsub|0>-\<alpha\><rsub|n>+\<alpha\><rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\>\<cdot\>\<alpha\><rsub|0>>>>>
    </eqnarray*>

    which proves the theorem.
  </proof>

  The above lemma will be used to prove the convergence criteria of Abel
  Dirichlet

  <\theorem>
    <label|Abel-Dirichlet><dueto|Abel Dirichlet>Let
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|s<rsub|n><rsub|>|}><rsub|n\<in\>\<bbb-N\>>> defined by
    <math|s<rsub|n>=<big|sum><rsub|i=0><rsup|n>z<rsub|i>>,
    <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|\<varepsilon\><rsub|i+1>\<leqslant\>\<varepsilon\><rsub|i>> then we
    have\ 

    <\enumerate>
      <item>If <math|\<exists\>C\<in\>\<bbb-R\>> such that
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|<around*|\||s<rsub|i>|\|>\<leqslant\>C> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>=0>
      then <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      is convergent

      <item>If <math|<big|sum><rsub|i=0><rsup|\<infty\>>z<rsub|i>> is
      convergent then <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      is convergent
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|n,m\<in\>\<bbb-N\><rsub|0>\<vdash\>n\<leqslant\>m>
      define <math|<around*|{|x<rsup|<around*|(|n|)>><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>><rsub|>>
      by <math|x<rsup|<around*|(|n|)>><rsub|i>=z<rsub|n+i>>, define
      <math|<around*|{|s<rsup|<around*|(|n|)>><rsub|k>|}><rsub|k\<in\><around*|{|0,.,m-n|}>>>
      by <math|s<rsup|<around*|(|n|)>><rsub|k>=<big|sum><rsub|i=0><rsup|k>x<rsub|i><rsup|<around*|(|n|)>>>
      and define <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>>>
      by <math|\<alpha\><rsup|<around*|(|n|)>><rsub|i>=\<varepsilon\><rsub|n+i>>
      then we have that\ 

      <\equation>
        <label|eq 17.4.515.1><text|<math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m-n-1|}>\<vDash\>\<alpha\><rsup|<around*|(|n|)>><rsub|i+1>\<leqslant\>\<alpha\><rsub|i><rsup|<around*|(|m|)>>>
        <math|>and <math|<around*|{|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>>|}>\<subseteq\><around*|[|0,\<infty\>|[>>>
      </equation>

      Further giving <math|k\<in\><around*|{|0,\<ldots\>,m-n|}>> we have
      <math|s<rsub|k><rsup|<around*|(|n|)>>=<big|sum><rsub|i=0><rsup|k>x<rsup|<around*|(|n|)>><rsub|i>=<big|sum><rsub|i=0><rsup|n+k>z<rsub|n+i>=<big|sum><rsub|i=n><rsup|n+k>z<rsub|i>\<equallim\><rsub|<text|<reference|simple
      associativity>>><big|sum><rsub|i=0><rsup|n+k>z<rsub|i>-<big|sum><rsub|i=0><rsup|n-1>z<rsub|i>=s<rsub|n+k>-s<rsub|n-1>>
      which in addition to <math|<around*|\||s<rsub|n+k>-s<rsub|n-1>|\|>\<leqslant\><around*|\||s<rsub|n+k>|\|>+<around*|\||s<rsub|n>|\|>\<leqslant\>2\<cdot\>C>
      proves that\ 

      <\equation>
        <label|eq 17.5.515>\<forall\>k\<in\><around*|{|0,\<ldots\>,m-n|}> we
        have s<rsub|k><rsup|<around*|(|n|)>>=s<rsub|n+k>-s<rsub|n-1><text|
        and ><around*|\||s<rsup|<around*|(|n|)>><rsub|k>|\|>\<leqslant\>2\<cdot\>C
      </equation>

      Using the the ineaquality of Abele (see <reference|inequality of Abel>)
      we have then that <math|<around*|\||<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>\<cdot\>x<rsup|<around*|(|n|)>><rsub|i>|\|>\<leqslant\>\<alpha\><rsub|0>\<cdot\><around*|(|2\<cdot\>C|)>>,
      and as <math|<big|sum><rsub|i=0><rsup|m-n>\<alpha\><rsub|i>\<cdot\>x<rsup|<around*|(|n|)>><rsub|i>=<big|sum><rsub|i=0><rsup|m-n>\<varepsilon\><rsub|n+i>\<cdot\>z<rsub|n+i>=<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      we have that\ 

      <\equation>
        <label|eq 17.6.515><around*|\||<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>|\|>\<leqslant\>2\<cdot\>C\<cdot\>\<varepsilon\><rsub|n>
      </equation>

      Take now <math|\<varepsilon\>\<gtr\>0> then as
      <math|<below|lim|n\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>=0>
      there exists a <math|N\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<forall\>n\<geqslant\>N> we have that
      <math|\<varepsilon\><rsub|n>=<around*|\||\<varepsilon\><rsub|n>-0|\|>\<less\><frac|\<varepsilon\>|2\<cdot\>C>>.
      So we conclude using <reference|eq 17.6.515> that\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<gtr\>0<text| there
        >\<exists\>N\<in\>\<bbb-N\><rsub|0><text| such that
        ><around*|\||<big|sum><rsub|i=n><rsup|m>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>|\|>\<less\>\<varepsilon\>
      </equation*>

      which by the Cauchy condition for series (see <reference|Cauchy
      condition for convergence of a serie>) and the fact that
      <math|<around*|\<langle\>|\<bbb-C\>,<around*|\|||\|>|\<rangle\>>>
      proves that <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
      converges.

      <item>From the hypothese it follows that
      \ <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is
      a decreasing sequence, so using <reference|increasing (decreasing)
      sequence converges> we have that <math|\<alpha\>=<below|lim|i\<rightarrow\>\<infty\>>\<varepsilon\><rsub|i>>
      exists so that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>=0>.
      From (1) it follows then that <math|<big|sum><rsub|i=1><rsup|n><around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>\<cdot\>z<rsub|i>>
      converges. As by the hypothese <math|<big|sum><rsub|i=0><rsup|\<infty\>>z<rsub|i<text|
      >><text|converges >\<Rightarrowlim\><rsub|<text|<reference|linear
      combination of convergent series>>><big|sum><rsub|i=0><rsup|\<infty\>>\<alpha\>\<cdot\>z<rsub|i>>
      converges we have then by <reference|linear combination of convergent
      series> that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|<around*|(|\<varepsilon\><rsub|i>-\<alpha\>|)>\<cdot\>z<rsub|i>+\<alpha\>\<cdot\>z<rsub|i>|)>>
      converges proving that <math|<big|sum><rsub|i=0><rsup|\<infty\>>\<varepsilon\><rsub|i>\<cdot\>z<rsub|i>>
    </enumerate>
  </proof>

  <\lemma>
    <label|lemma 17.2>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
    be such that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have <math|<frac|x<rsub|i+1>|y<rsub|i+1>>\<leqslant\><frac|x<rsub|i>|y<rsub|i>>>
    then if <math|<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>> is convergent
    then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is convergent.
  </lemma>

  <\proof>
    Take <math|\<alpha\>=<frac|y<rsub|k>|x<rsub|k>>> then by the hypothese we
    have <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> that
    <math|<frac|x<rsub|k>|y<rsub|k>>\<leqslant\>\<alpha\>\<Rightarrowlim\><rsub|0\<less\>y<rsub|k>>x<rsub|k>\<leqslant\>\<alpha\>\<cdot\>y<rsub|k>\<Rightarrowlim\><rsub|0\<less\>x<rsub|k>><around*|\||x<rsub|k>|\|>\<leqslant\>\<alpha\>\<cdot\>y<rsub|k>>.
    As <math|<big|sum><rsub|i=k><rsup|\<infty\>>\<alpha\>\<cdot\>y<rsub|i>>
    is convergent (see <reference|linear combination of convergent series>)
    we have by the dominent convergence (see <reference|convergent criteria
    of a serie in a Banach space>) that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>
    is convergent.
  </proof>

  <\theorem>
    <label|d'Alembert><dueto|d'Alembert>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,.,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
    and take <math|\<alpha\>=<below|lim inf|i\<rightarrow\>\<infty\>>
    <frac|x<rsub|i+1>|x<rsub|i>>> and <math|\<beta\>=<below|lim
    sup|i\<rightarrow\>\<infty\>> <frac|x<rsub|i+1>|x<rsub|i>>> then we have\ 

    <\enumerate>
      <item>If <math|\<beta\>\<less\>1> then
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is convergent

      <item>If <math|1\<less\>\<alpha\>> then
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is divergent
      (meaning <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is not
      convergent)
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<beta\>\<less\>1> there exists a <math|\<rho\>> such
      that <math|0\<leqslant\>\<beta\>\<less\>\<rho\>\<less\>1> then we have
      <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<rho\>>
      so there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|sup<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<rho\>>
      hence

      <\equation>
        <label|eq 17.1.514>\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}><text|
        that ><frac|x<rsub|i+1>|x<rsub|i>>\<less\>\<rho\>\<equallim\><rsub|0\<less\>\<rho\>><frac|\<rho\><rsup|i+1>|\<rho\><rsup|i>>
      </equation>

      Now as <math|\<rho\>\<less\>1> we have by <reference|exaple of a
      convergent serie> that <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<rho\><rsup|i>>
      is convergent and thus using <reference|subserie property> we have

      <\equation>
        <label|eq 17.2.514><big|sum><rsup|\<infty\>><rsub|i=n>\<rho\><rsup|i>
      </equation>

      Using lemma <reference|lemma 17.2> we have by <reference|eq 17.1.514>
      and <reference|eq 17.2.514> that <math|<big|sum><rsub|i=n><rsup|\<infty\>>x<rsub|i>>
      is convergent. Applying <reference|subserie property> again we have
      that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> is convergent.

      <item>If <math|\<alpha\>\<less\>1> then we have
      <math|1\<less\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      hence there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|1\<less\>inf<around*|(|<around*|{|<frac|x<rsub|i+1>|x<rsub|i>>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
      hence <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we
      have that <math|1\<less\><frac|x<rsub|i+1>|x<rsub|i>>\<Rightarrow\>x<rsub|i>\<less\>x<rsub|i+1>>
      so <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      is a increasing sentence. Using <reference|equivalence of limits on
      increasing (decreasing) sequences of extented reals> we have that
      <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<geqslant\>x<rsub|k>\<gtr\>0\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<neq\>0>.
      If n<math|ow <big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|i>> is
      convergent then we have by <reference|terms of a convergent series goes
      to 0> that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=0> a
      contradiction proving that <math|<big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|i>>
      is divergent.
    </enumerate>
  </proof>

  <\corollary>
    <label|convergence domain of exponential function>Let
    <math|z\<in\>\<bbb-C\>> then <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|\||z|\|><rsup|n>|n!>>
    and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>
    converges and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|0<rsup|i>|i!>=1>.
    So we have <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>>|)>=<wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>>|)>|\<bar\>>=\<cal-D\><rsub|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>=\<bbb-C\>=<wide|\<cal-D\><rsub|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>|\<bar\>>>
  </corollary>

  <\proof>
    Let <math|z\<in\>\<bbb-C\>> then we have either

    <\description>
      <item*|<math|z=0>>then using <reference|power series 0> we have that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|<around*|\||z|\|><rsup|n>|n!>>
      and <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>
      converges

      <item*|<math|z\<neq\>0>>then we have
      <math|\<forall\>n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>> that
      <math|0\<less\><frac|<around*|\||z|\|><rsup|n>|n>> and
      <math|<frac|<frac|<around*|\||z|\|><rsup|n+1>|<around*|(|n+1|)>!>|<frac|<around*|\||z|\|><rsup|n>|n!>>=<frac|<around*|\||z|\|>|n+1>>.
      Using the consequence of the Archimedian property of the reals (see
      <reference|consequence of the archimedean property for the reals (R)>)
      there exists a <math|k\<in\><around*|{|0,\<ldots\>,\<infty\>|}>> such
      that <math|2\<cdot\><around*|\||z|\|>\<less\>k> so that
      <math|\<forall\>n\<geqslant\>k> we have
      <math|<around*|\||z|\|>\<less\>k\<Rightarrow\><frac|<around*|\||z|\|>|k>\<less\><frac|1|2>>
      proving that <math|sup<around*|(|<around*|{|<frac|<frac|<around*|\||z|\|><rsup|n+1>|<around*|(|n+1|)>!>|<frac|<around*|\||z|\|><rsup|n>|n!>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><frac|1|2>>
      hence <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|<frac|<around*|\||z|\|><rsup|n+1>|<around*|(|n+1|)>!>|<frac|<around*|\||z|\|><rsup|n>|n!>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|<frac|<frac|<around*|\||z|\|><rsup|n+1>|<around*|(|n+1|)>!>|<frac|<around*|\||z|\|><rsup|n>|n!>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|0,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><frac|1|2>\<less\>1>.
      Applying then d'Alembert (see <reference|d'Alembert>) we conclude that
      <math|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<around*|\||z|\|><rsup|i>|i!>>
      converges. Using dominent convergence (see <reference|convergent
      criteria of a serie in a Banach space>) we have then that
      <math|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>> is
      convergent.
    </description>
  </proof>

  Using the above corollary the following definition is well defined

  <\definition>
    <label|exp(z)><index|<math|exp<around*|(|z|)>>><dueto|Exponential
    Function><math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is defined by
    <math|z\<rightarrow\><big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>
  </definition>

  <subsection|Differentiation of power series>

  <\definition>
    Let <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be a sequence
    and <math|D<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    its convergence domain then we can define
    <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n><around*|(|.|)><rsup|n>:D<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>\<rightarrow\>\<bbb-C\>>
    by <math|z\<rightarrow\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\><around*|(|.|)><rsup|n>|)><around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>
  </definition>

  If <math|0\<less\>R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>>
  then <math|0\<in\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\>D<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>>
  so that it makes sense to talk about the derivative of
  <math|<big|sum><rsub|n=0><rsup|\<infty\>>a<rsub|n><around*|(|.|)><rsup|n>>
  at 0 on <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>|)>>.
  If we would differentiate the different terms of
  <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>> in a
  informal way we would have <math|<big|sum><rsub|i=0><rsup|\<infty\>>n\<cdot\>a<rsub|n>\<cdot\>z<rsup|n-1>=<big|sum><rsub|i=1><rsup|\<infty\>>n\<cdot\>a<rsub|n>\<cdot\>z<rsup|n-1>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>.
  Of course we must find out that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
  is convergent and what it's convergence domain is before even proving that
  this is the derivative of <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|n>\<cdot\>z<rsup|n>>.

  <\definition>
    Let <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    be a power serie then <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>
    is called the <with|font-series|bold|derivated power serie of
    ><math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
  </definition>

  <\lemma>
    <label|convergence of derived powerseries>Let
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>> be a
    powerserie then

    <\enumerate>
      <item><math|\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>

      <item>If <math|0\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
      then <math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>=R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>Let <math|z\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>>
        then <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>
        is convergent. \ Now for the sequence
        <math|<around*|{|<frac|1|i+1>|}><rsub|i\<in\>\<bbb-N\>>> we have that
        <math|\<forall\>i\<in\>\<bbb-N\>> that
        <math|<frac|1|<around*|(|i+1|)>+1>\<less\><frac|1|<around*|(|i+1|)>>>
        so using Abel Dirichlet (see <reference|Abel-Dirichlet>) we have that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i+1>\<cdot\>z<rsup|i>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|i+1|i+1>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>
        is convergent. Using <reference|linear combination of convergent
        series> we have then that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i+1>\<cdot\>z<rsup|i+1>=<big|sum><rsub|i=0><rsup|\<infty\>>z\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>
        is convergent. As <math|a<rsub|0>\<cdot\>z<rsup|0>+<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i+1>\<cdot\>z<rsup|i+1>\<equallim\><rsub|<text|<reference|serie
        k-\<gtr\>k+l>>>a<rsub|0>\<cdot\>z<rsup|0>+<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>\<equallim\><rsub|<text|<reference|subserie
        property>>><big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
        we have that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
        converges proving that <math|z\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>

        <item>First as <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>|)>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>\<cdot\>a<rsub|i>\<cdot\>z<rsup|i>>|)>|\<bar\>>>
        so using <reference|ball inclusion> we have that\ 

        <\equation>
          <label|eq 17.9.515>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
        </equation>

        Let <math|0\<less\>z\<in\>\<bbb-C\>> be such that
        <math|<around*|\||z|\|>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
        then <math|\<exists\>\<rho\>\<in\>\<bbb-R\>> such that
        <math|0\<less\><around*|\||z|\|>\<less\>\<rho\>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>.
        From <math|\<rho\>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
        it follows that <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|n>\<cdot\>\<rho\><rsup|n>>
        converges. Using <reference|terms of a convergent series goes to 0>
        we have then that <math|\<exists\>K\<in\>\<bbb-R\><rsub|+>> such that

        <\equation>
          <label|eq 17.10.515>\<forall\>n\<in\>\<bbb-N\>\<vDash\><around*|\||a<rsub|n>|\|>\<cdot\>\<rho\><rsup|n>=<around*|\||a<rsub|n>\<cdot\>\<rho\><rsup|n>|\|>\<less\>K
        </equation>

        Now <math|\<forall\>n\<in\>\<bbb-N\>> we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|\||<around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|\|>>|<cell|=>|<cell|<around*|(|n+1|)>\<cdot\><around*|\||a<rsub|n+1>|\|>\<cdot\><around*|\||z|\|><rsup|n>>>|<row|<cell|>|<cell|=>|<cell|<frac|n+1|\<rho\>>\<cdot\><around*|(|<frac|<around*|\||z|\|>|\<rho\>>|)><rsup|n>\<cdot\>a<rsub|n+1>\<cdot\>\<rho\><rsup|n+1>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          17.10.515>>>>|<cell|K\<cdot\><frac|n+1|\<rho\>>\<cdot\><around*|(|<frac|<around*|\||z|\|>|\<rho\>>|)><rsup|n>>>|<row|<cell|>|<cell|=>|<cell|K\<cdot\><frac|n+1|\<rho\>>\<cdot\>q<rsup|n>
          where 0\<less\>q=<frac|<around*|\||z|\|>|\<rho\>>\<less\>1>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 17.11.515>\<forall\>n\<in\>\<bbb-N\>\<vDash\><around*|\||<around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>|\|>\<leqslant\>K\<cdot\><frac|n+1|\<rho\>>\<cdot\>q<rsup|n>
          where 0\<less\>q\<less\>1
        </equation>

        Now for the serie <math|<big|sum><rsub|n=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>q<rsup|n>>
        we have that <math|<frac|<around*|(|<around*|(|n+1|)>+1|)>\<cdot\>q<rsup|n+1>|<around*|(|n+1|)>\<cdot\>q<rsup|n>>=<frac|n+2|n+1>\<cdot\>q>.
        As by <reference|(a+n)(b+n)-\<gtr\>1> we have that
        <math|<below|lim|n\<rightarrow\>\<infty\>><frac|n+2|n+1>=1\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|n+2|n+1>\<cdot\>q|)>=q\<less\>1>
        we can use d'Alembert (see <reference|d'Alembert>) proving to
        conclude that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>q<rsup|n>>
        is convergent. Using then dominent convergence (see
        <reference|convergent criteria of a serie in a Banach space>)
        together with <reference|eq 17.11.515> we conclude then that
        <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|n+1|)>\<cdot\>a<rsub|n+1>\<cdot\>z<rsup|n>>
        is convergent. So we have proved that
        <math|\<forall\>x\<in\>\<bbb-C\><text| with
        >0\<less\><around*|\||z|\|>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>><text|
        we have >z\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>>
        and as <math|0\<in\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>>
        we conclude that <math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<subseteq\>\<cal-D\><rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>\<subseteq\><wide|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>|)>|\<bar\>>>.
        From <reference|ball inclusion> it follows then that
        <math|><math|R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<leqslant\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>>
        which together with <reference|eq 17.9.515> proves finally that\ 

        <\equation*>
          R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>>=R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
        </equation*>
      </enumerate>
    </proof>
  </lemma>

  We now prove that the derivated power serie of a power serie is indeed its
  derivative.

  <\theorem>
    Let <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>
    be a power serie with <math|0\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    and <math|z\<in\>\<bbb-C\>> then <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|.|)><rsup|i>:B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>\<rightarrow\>\<bbb-C\>>
    has a derivate (see <reference|derivative>) at every
    <math|z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>
    with <math|<around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|.|)><rsup|i>|)><rprime|'><around*|(|z|)>=<around*|(|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\><around*|(|.|)><rsup|i>|)><around*|(|z|)>>
  </theorem>

  <\proof>
    \ Define <math|f=<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|.|)><rsup|i>>
    and <math|g=<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\><around*|(|.|)><rsup|i>.>
    Let <math|\<varepsilon\>\<gtr\>0> and take <math|z> such that
    <math|<around*|\||z|\|>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>\<Rightarrow\>z\<in\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>.
    As <math|><math|B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>
    is open there exists a <math|0\<less\>\<rho\>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    such that <math|B<rsub|<around*|\|||\|>><around*|(|z,\<rho\>|)>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|0,R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>|)>>,
    if now <math|h\<in\>\<bbb-C\>> is choosen such that
    <math|<around*|\||h|\|>\<less\>min<around*|(|\<rho\>,\<rho\>-<around*|\||z|\|>|)>>
    then <math|<around*|\||h+z|\|>\<leqslant\><around*|\||h|\|>+<around*|\||z|\|>\<less\>\<rho\>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    so that <math|f<around*|(|z|)>,f<around*|(|z+h|)>> and
    <math|g<around*|(|z|)>> are well defined (see also <reference|convergence
    of derived powerseries>) and <math|<around*|\||h+z-z|\|>=<around*|\||h|\|>\<less\>\<rho\>>
    so that <math|h\<in\>B<rsub|<around*|\|||\|>><around*|(|z,\<rho\>|)>>
    (needed for the definition of a derivative)\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|f<around*|(|z+h|)>-f<around*|(|z|)>-h\<cdot\>g<around*|(|z|)>|)>
      >>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|z+h|)><rsup|i>-<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=0><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-z<rsup|i>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-z<rsup|i>|)>+a<rsub|0>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|0><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-z<rsup|0>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-z<rsup|i>|)>+a<rsub|0>\<cdot\><around*|\<nobracket\>|<around*|(|<matrix|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>\<cdot\>h<rsup|0>\<cdot\>z<rsup|0>|\<nobracket\>>-1|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=0><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-z<rsup|i>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>+<matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|0>>>>>\<cdot\>h<rsup|0>\<cdot\>z<rsup|i-0>|)>-z<rsup|i>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>+z<rsup|i>|)>-z<rsup|i>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-h\<cdot\><big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>+a<rsub|1>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|1><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-h\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>-h\<cdot\><around*|(|0+1|)>\<cdot\>a<rsub|0+1>\<cdot\>z<rsup|0><rsub|>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>+a<rsub|1>\<cdot\><matrix|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>\<cdot\>h<rsup|1>\<cdot\>z<rsup|1-1>-h\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>-h\<cdot\>a<rsub|1>\<cdot\>z<rsup|0><rsub|>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-h\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\>z<rsup|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|serie
      k-\<gtr\>k+l>>>>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-h\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>>i\<cdot\>a<rsub|i>\<cdot\>z<rsup|i-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|h>\<cdot\><around*|(|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j>\<cdot\>z<rsup|i-j>|)>-i\<cdot\>h\<cdot\>z<rsup|i-1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=1><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|)>-i\<cdot\>z<rsup|i-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|)>+<matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|1>>>>>\<cdot\>h<rsup|1-1>\<cdot\>z<rsup|i-1>-i\<cdot\>z<rsup|i-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|(|<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|)>+i\<cdot\>z<rsup|i-1>-i\<cdot\>z<rsup|i-1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|)>>>>>
    </eqnarray*>

    to summarize\ 

    <\equation>
      <label|eq 17.12.073><frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-h\<cdot\>g<around*|(|z|)>=<big|sum><rsub|i=2><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|)>
    </equation>

    Now let <math|i\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-1>\<cdot\>z<rsup|i-j>|\|>>|<cell|\<equallim\>>|<cell|<around*|\||h|\|>\<cdot\><around*|\||<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\>h<rsup|j-2>\<cdot\>z<rsup|i-j>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||h|\|>\<cdot\><around*|\||<big|sum><rsub|j=2><rsup|i><matrix|<tformat|<table|<row|<cell|i>>|<row|<cell|j>>>>>\<cdot\><around*|\||h<rsup|j-2>|\|>\<cdot\><around*|\||z<rsup|i-j>|\|>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\><around*|\||<big|sum><rsub|j=2><rsup|i><frac|i!|j!\<cdot\><around*|(|i-j|)>!>\<cdot\><around*|\||h<rsup|j-2>|\|>\<cdot\><around*|\||z<rsup|i-j>|\|>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|i,j\<geqslant\>2>>|<cell|<around*|\||h|\|>\<cdot\><around*|\||<big|sum><rsub|j=2><rsup|i><frac|i\<cdot\><around*|(|i-1|)>\<cdot\><around*|(|i-2|)>!|j\<cdot\><around*|(|j-1|)>\<cdot\><around*|(|j-2|)>!\<cdot\><around*|(|i-j|)>!>\<cdot\><around*|\||h<rsup|j-2>|\|>\<cdot\><around*|\||z<rsup|i-j>|\|>|\|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|j\<geqslant\>2\<Rightarrow\>j\<cdot\><around*|(|j-1|)>\<geqslant\>1>>|<cell|<around*|\||h|\|>\<cdot\><big|sum><rsub|j=2><rsup|i><frac|i\<cdot\><around*|(|i-1|)>\<cdot\><around*|(|i-2|)>!|<around*|(|j-2|)>!\<cdot\><around*|(|i-j|)>!>\<cdot\><around*|\||h<rsup|j-2>|\|>\<cdot\><around*|\||z<rsup|i-j>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\>i\<cdot\><around*|(|i-1|)>\<cdot\><big|sum><rsub|j=2><rsup|i><frac|<around*|(|i-2|)>!|<around*|(|j-2|)>!\<cdot\><around*|(|<around*|(|i-2|)>-<around*|(|j-2|)>|)>!>\<cdot\><around*|\||h<rsup|j-2>|\|>\<cdot\><around*|\||z<rsup|<around*|(|i-2|)>-<around*|(|j-2|)>>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\>i\<cdot\><around*|(|i-1|)>\<cdot\><big|sum><rsub|j=0><rsup|i-2><frac|<around*|(|i-2|)>!|j!\<cdot\><around*|(|<around*|(|i-2|)>-j|)>!>\<cdot\><around*|\||h<rsup|j>|\|>\<cdot\><around*|\||z<rsup|<around*|(|i-2|)>-j>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||h|\|>\<cdot\>i\<cdot\><around*|(|i-1|)>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i-2>>>>>
    </eqnarray*>

    Using the above with <reference|eq 17.12.073> gives\ 

    <\equation>
      <label|eq 17.13.073><around*|\||<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>|\|>\<leqslant\><around*|\||h|\|>\<cdot\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|i\<cdot\><around*|(|i-1|)>\<cdot\>a<rsub|i>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i-2>|)>
    </equation>

    Now as <math|<around*|\||z|\|>+<around*|\||h|\|>\<less\>\<rho\>\<less\>R<rsub|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\>z<rsup|i>>>
    we have using <reference|convergence of powerseries (1)> that
    <math|<big|sum><rsub|i=0><rsup|\<infty\>>a<rsub|i>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i>>
    converges. From <reference|convergence of derived powerseries> it follows
    then that <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\>a<rsub|i+1>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i>>
    converges and applying <reference|convergence of derived powerseries> we
    have that <math|> <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\><around*|(|i+2|)>\<cdot\>a<rsub|i+2>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i>>
    converges. As <math|<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\><around*|(|i+2|)>\<cdot\>a<rsub|i+2>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i>\<equallim\><rsub|<text|<reference|serie
    k-\<gtr\>k+l>>><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|i-1|)>\<cdot\>i\<cdot\>a<rsub|i>><math|\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i-2>>
    proving that\ 

    <\equation>
      <label|eq 17.14.073>0\<less\><big|sum><rsub|i=2><rsup|\<infty\>><around*|(|i\<cdot\><around*|(|i-1|)>\<cdot\>a<rsub|i>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i-2>|)>\<in\>\<bbb-R\>
    </equation>

    If we now add the extra condition on <math|h> that
    <math|0\<less\><around*|\||h|\|>\<less\>min<around*|(|\<rho\>,\<rho\>-<around*|\||z|\|>,<frac|\<varepsilon\>|<big|sum><rsub|i=2><rsup|\<infty\>><around*|(|i\<cdot\><around*|(|i-1|)>\<cdot\>a<rsub|i>\<cdot\><around*|(|<around*|\||z|\|>+<around*|\||h|\|>|)><rsup|i-2>|)>>|)>>
    then by <reference|eq 17.3.515> we have\ 

    <\equation*>
      <around*|\||<frac|f<around*|(|z+h|)>-f<around*|(|z|)>|h>-g<around*|(|z|)>|\|>\<less\>\<varepsilon\>
    </equation*>

    which proves our theorem.
  </proof>

  We can now prove what the derivative of the exponential function is.

  <\corollary>
    <label|derivative of the exponential function>The exponential function
    <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
    <math|exp<around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>
    has a derivative equal to itself at every point in <math|\<bbb-C\>>, in
    other words <math|\<forall\>z\<in\>\<bbb-C\>> that
    <math|exp<rprime|'><around*|(|z|)>=exp<around*|(|z|)>>
  </corollary>

  <\proof>
    First by <reference|convergence domain of exponential function> we have
    that <math|\<cal-D\><rsub|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>=\<bbb-C\>>.
    So if <math|z\<in\>C> we have that using the above theorem that
    <math|exp<rprime|'><around*|(|z|)>> exists and that
    <math|exp<rprime|'><around*|(|z|)>=<big|sum><rsub|i=0><rsup|\<infty\>><around*|(|i+1|)>\<cdot\><frac|z<rsup|i>|<around*|(|i+1|)>!>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|x<rsup|i>|i!>=exp<around*|(|z|)>>
  </proof>

  <\corollary>
    <label|exp(x) is continuous>The exponential function
    <math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>> defined by
    <math|exp<around*|(|z|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>
    is continuous on <math|\<bbb-C\>>
  </corollary>

  <\proof>
    Let <math|z\<in\>\<bbb-C\>> then by the previous corollary <math|exp> has
    a derivate at <math|z> and thus exp is differentiable at <math|z> (see
    <reference|differentias and derivates>). As differentiability implies
    continuity (see <reference|differentiability at x implies continuity at
    x>) we have that <math|exp> is continuous at <math|z> hence <math|exp> is
    continuous on <math|\<bbb-C\>>.
  </proof>

  Next we show that the exponential function behaves as a power which
  motivates the other notation for <math|exp<around*|(|z|)>> as
  <math|e<rsup|z>>.

  <\theorem>
    <label|exp(x+y)=exp(x)exp(y)>Let <math|x,y\<in\>\<bbb-C\>> then
    <math|exp<around*|(|x+y|)>=exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>>
  </theorem>

  <\proof>
    Let <math|x,y\<in\>\<bbb-C\>> then as
    <math|\<cal-D\><rsub|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>=\<bbb-C\>=<wide|\<cal-D\><rsub|<big|sum><rsub|n=0><rsup|\<infty\>><frac|z<rsup|n>|n!>>|\<bar\>>>
    we have that <math|exp<around*|(|x|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|x<rsup|n>|n!><text|
    and >exp<around*|(|y|)>=<big|sum><rsub|n=0><rsup|\<infty\>><frac|y<rsup|n>|n!>>
    are absolute convergent

    <\eqnarray*>
      <tformat|<table|<row|<cell|exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>>|<cell|=>|<cell|<around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|x<rsup|n>|n!>|)>\<cdot\><around*|(|<big|sum><rsub|n=0><rsup|\<infty\>><frac|y<rsup|n>|n!>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|absolute
      convergent family>>>>|<cell|<around*|(|<big|sum><rsub|n\<in\>\<bbb-N\>><frac|x<rsup|n>|n!>|)>\<cdot\><around*|(|<big|sum><rsub|n\<in\>\<bbb-N\>><frac|y<rsup|n>|n!>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
      of absolute convergetn series>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>><around*|(|<frac|x<rsup|i>|i!>\<cdot\><frac|y<rsup|j>|j!>|)>
      <around*|{|absolute convergent|}>>>>>
    </eqnarray*>

    giving\ 

    <\equation>
      <label|eq 17.15.073>exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>=<big|sum><rsub|<around*|(|i,j|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>><around*|(|<frac|x<rsup|i>|i!>\<cdot\><frac|y<rsup|j>|j!>|)>
      a absolute convergent serie
    </equation>

    Let <math|n\<in\>\<bbb-N\>> define then
    <math|N<rsub|n>=<around*|{|<around*|(|i,j|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>\|i+j=n|}>>,
    as <math|N<rsub|n>\<subseteq\>\<bbb-N\>\<times\>\<bbb-N\>> we have
    <math|<big|cup><rsub|n\<in\>\<bbb-N\>>N<rsub|n>\<subseteq\>\<bbb-N\>*\<times\>\<bbb-N\>>
    and if <math|<around*|(|i,j|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>> then
    either <math|<around*|(|i,j|)>\<in\>N<rsub|i+j>> proving that
    <math|\<bbb-N\>\<times\>\<bbb-N\>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>N<rsub|n>>.
    Further we have that if <math|n.n<rprime|'>\<in\>\<bbb-N\>> with
    <math|n=n<rprime|'>> then if <math|<around*|(|i,j|)>\<in\>N<rsub|n><big|cap>N<rsub|n<rprime|'>>\<Rightarrow\>i+j=n\<wedge\>i+j=n<rprime|'>\<Rightarrow\>n=n<rprime|'>>
    a contradiction so we must have <math|N<rsub|n><big|cap>N<rsub|n<rprime|'>>=\<emptyset\>.>
    Summarized\ 

    <\equation>
      <label|eq 17.16.002>\<bbb-N\>\<times\>\<bbb-N\>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>N<rsub|n>
    </equation>

    Further we have that <math|\<beta\>:<around*|{|0,\<ldots\>,n|}>\<rightarrow\>N<rsub|n>>
    defined by <math|\<beta\><around*|(|i|)>=<around*|(|i,n-i|)>> is a
    bijection\ 

    <\description>
      <item*|injectivity>if <math|\<beta\><around*|(|i|)>=\<beta\><around*|(|j|)>>
      then <math|<around*|(|i,n-i|)>=<around*|(|j,n-j|)>\<Rightarrow\>i=j>

      <item*|surjectivity>if <math|<around*|(|i,j|)>\<in\>N<rsub|n>> then
      <math|i+j=n\<Rightarrow\>j=n-i\<Rightarrow\><around*|(|i,j|)>=<around*|(|i,n-i|)>=\<beta\><around*|(|i|)>>
    </description>

    \ 

    Using then the associativity of absolute convergent series we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<bbb-N\>\<times\>\<bbb-N\>><around*|(|<frac|x<rsup|i>|i!>\<cdot\><frac|y<rsup|j>|j!>|)>>|<cell|\<equallim\><rsub|<text|<reference|associativity
      of absolute convergent families>>>>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\>N<rsub|n>><around*|(|<frac|x<rsup|i>|i!>\<cdot\><frac|y<rsup|j>|j!>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|absolute
      convergent series and nijections>>>>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<frac|x<rsup|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>y<rsup|\<beta\><around*|(|i|)><rsub|2>>|\<beta\><around*|(|i|)><rsub|1>!\<cdot\>\<beta\><around*|(|j|)><rsub|2>!>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<frac|x<rsup|i>\<cdot\>y<rsup|<around*|(|n-i|)>>|i!\<cdot\>j!>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><frac|1|n!><around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<frac|n!\<cdot\>x<rsup|i>\<cdot\>y<rsup|<around*|(|n-i|)>>|i!\<cdot\>n-i!>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><frac|1|n!><around*|(|<big|sum><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>><around*|(|<matrix|<tformat|<table|<row|<cell|n>>|<row|<cell|i>>>>>\<cdot\>x<rsup|i>\<cdot\>y<rsup|<around*|(|n-i|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n\<in\>\<bbb-N\>><frac|<around*|(|x+y|)><rsup|i>|n!>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x+y|)>>>>>
    </eqnarray*>

    which by <reference|eq 17.15.073> proves that\ 

    <\equation*>
      exp<around*|(|x+y|)>=exp<around*|(|x|)>\<cdot\>exp<around*|(|y|)>
    </equation*>
  </proof>

  <\theorem>
    <label|properties of exp (1)><math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    satisfies\ 

    <\enumerate>
      <item><math|exp<around*|(|0|)>=1>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|exp<around*|(|z|)>\<neq\>0>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|exp<around*|(|-z|)>=<frac|1|exp<around*|(|z|)>>>

      <item><math|\<forall\>z\<in\>\<bbb-R\>> we have
      <math|0\<less\>exp<around*|(|z|)>> in other words
      <math|exp<around*|(|\<bbb-R\>|)>=\<bbb-R\><rsub|+>>

      <item><math|\<forall\>z\<in\>\<bbb-R\>> with <math|x\<gtr\>0> we have
      <math|exp<around*|(|x|)>\<gtr\>1>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> with <math|x\<gtr\>y> we have
      <math|exp<around*|(|x|)>\<gtr\>exp<around*|(|y|)>> [<math|exp> is
      strictly increasing on <math|\<bbb-R\>>]\ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|exp<around*|(|0|)>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>\<equallim\><rsub|<text|<reference|power
      series 0>>><frac|z<rsup|0>|0!>=1>

      <item>Assume that <math|\<exists\>z\<in\>\<bbb-C\>> such that
      <math|exp<around*|(|z|)>=0> then as
      <math|1=exp<around*|(|0|)>=exp<around*|(|z+<around*|(|-z|)>|)>\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>exp<around*|(|z|)>\<cdot\>exp<around*|(|-z|)>=0\<cdot\>exp<around*|(|-z|)>=0>
      leading to the contradiction <math|1=0>. Hence we have
      <math|\<forall\>z\<in\>\<bbb-C\>> that
      <math|exp<around*|(|z|)>\<neq\>0>

      <item><math|1=exp<around*|(|0|)>=exp<around*|(|z+<around*|(|-z|)>|)>\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>exp<around*|(|z|)>\<cdot\>exp<around*|(|-z|)>\<Rightarrowlim\><rsub|exp<around*|(|z|)>\<neq\>0>exp<around*|(|-z|)>=<frac|1|exp<around*|(|z|)>>>\ 

      <item>If <math|z\<in\>\<bbb-R\>> then we have 3 cases to consider for
      <math|z>

      <\description>
        <item*|<math|z\<in\>\<bbb-R\><rsub|+>>>then
        <math|\<forall\>i\<in\>\<bbb-N\>> we have
        <math|0\<less\><frac|z<rsup|i>|i!>> (see
        <reference|0\<less\>x=\<gtr\>0\<less\>x^n>) so that by
        <reference|serie of positive numbers is positive>
        <math|0\<less\><big|sum><rsub|i=0><rsup|\<infty\>><frac|x<rsup|i>|i!>=exp<around*|(|z|)>>

        <item*|<math|z=0>>then <math|0\<less\>1=exp<around*|(|z|)>>

        <item*|<math|z\<in\>\<bbb-R\><rsub|->>>then
        <math|-z\<in\>\<bbb-R\><rsub|+>> so that
        <math|0\<less\><frac|1|exp<around*|(|z|)>>=exp<around*|(|-z|)>>
      </description>

      <item>If <math|z\<gtr\>0> then by <reference|0\<less\>x=\<gtr\>0\<less\>x^n>
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|0\<less\>z<rsup|i>\<Rightarrow\>0\<less\><frac|z<rsup|i>|i!>> so
      that using <reference|serie of positive numbers is positive>

      <\equation>
        <label|eq 17.17.002.1>0\<less\><big|sum><rsub|i=1><rsup|\<infty\>><frac|z<rsup|i>|i!>
      </equation>

      \ So <math|exp<around*|(|z|)>=<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>=<frac|z<rsup|0>|0!>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|z<rsup|i>|i!>=1+<big|sum><rsub|i=1><rsup|\<infty\>><frac|z<rsup|i>|i!>\<gtr\>1>

      <item>Let <math|x\<gtr\>y> then <math|x-y\<gtr\>0> so by
      <reference|properties of exp (1)>(5) we have
      <math|exp<around*|(|x|)>=exp<around*|(|y+<around*|(|x-y|)>|)>=exp<around*|(|y|)>\<cdot\>exp<around*|(|x-y|)>\<gtr\>exp<around*|(|y|)>>
    </enumerate>
  </proof>

  <\corollary>
    <label|exp is convex>Let <math|x,y\<in\>\<bbb-R\>> with <math|x\<less\>y>
    then <math|exp> is convex on <math|<around*|[|x,y|]>>
  </corollary>

  <\proof>
    This follows from the fact that <math|\<forall\>x\<in\>\<bbb-R\>> we have
    that <math|exp<rprime|''><around*|(|x|)>=<around*|(|exp<rprime|'><around*|(|x|)>|)><rprime|'>\<equallim\><rsub|<text|<reference|derivative
    of the exponential function>>>exp<rprime|'><around*|(|x|)>\<equallim\><rsub|<text|<reference|derivative
    of the exponential function>>>exp<around*|(|x|)>\<gtr\>0> and the
    condition for convexitivity (see <reference|condition for concavity
    (convexitivity)>).
  </proof>

  <\definition>
    <label|Euler's number><index|Euler's number><dueto|Euler's
    number><math|e=exp<around*|(|1|)>>
  </definition>

  We can now see how for natural numbers <math|exp> behaves as a power of
  <math|e>

  <\theorem>
    \ <label|exponential as power>

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><text| we have
      >exp<around*|(|n|)>=e<rsup|n>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><text| we have
      >exp<around*|(|-n|)>=<frac|1|e<rsup|n>>\<equallim\><rsub|definition>e<rsup|-n>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>We use mathematical induction so let
        <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|exp<around*|(|n|)>=e<rsup|n>|}>>
        then we have\ 

        <\description>
          <item*|<math|0\<in\>\<cal-S\>>><math|exp<around*|(|0|)>=1=e<rsup|0>>

          <item*|<math|n\<in\>\<b-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>then
          <math|exp<around*|(|n+1|)>\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>exp<around*|(|n|)>\<cdot\>exp<around*|(|1|)>\<equallim\><rsub|n\<in\>\<cal-S\>>e<rsup|n>\<cdot\>e=e<rsup|n+1>>
          proving that <math|n+1\<in\>\<cal-S\>>
        </description>

        <item><math|exp<around*|(|-n|)>\<equallim\><rsub|<text|<reference|properties
        of exp (1)>>><frac|1|exp<around*|(|n|)>>\<equallim\><rsub|<around*|(|1|)>><frac|1|e<rsup|n>>e<rsup|-n>>
      </enumerate>
    </proof>
  </theorem>

  <\theorem>
    <label|exp exceeds every number>Let <math|y\<in\>\<bbb-R\><rsub|+>> then
    there exists a <math|x\<in\>\<bbb-R\>> such that
    <math|y\<less\>exp<around*|(|x|)>>
  </theorem>

  <\proof>
    As <math|0\<less\>1> we have by <reference|properties of exp (1)> that
    <math|1=exp<around*|(|0|)>\<less\>exp<around*|(|1|)>=e>. Using
    <reference|1\<less\>x=\<gtr\>a\<less\>x^n> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|y\<less\>e<rsup|n>\<equallim\><rsub|previous
    theorem>exp<around*|(|n|)>>\ 
  </proof>

  Next we want to define the Napierian logarithm which is the inverse of
  <math|exp> resticted to <math|\<bbb-R\>>, so we must prove that
  <math|exp<rsub|\|\<bbb-R\>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|+>> is a
  bijection.

  <\theorem>
    <label|exp is a bijection><math|exp<rsub|<around*|\||\<bbb-R\>|\|>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|+>>
    is a bijection where <math|exp<rsub|<around*|\||\<bbb-R\>|\|>><around*|(|\<bbb-R\><rsub|->|)>=<around*|]|0,1|[>>
    and <math|exp<rsub|\|\<bbb-R\>><around*|(|\<bbb-R\><rsub|+>|)>=<around*|]|1,\<infty\>|[>>
  </theorem>

  <\proof>
    \;

    <\description>
      <item*|injectivity>Let <math|exp<around*|(|x|)>=exp<around*|(|y|)>> and
      assume that <math|x\<neq\>y> then we may assume that <math|x\<gtr\>y>,
      as <math|exp> is strictly increasing (see <reference|properties of exp
      (1)> (6)) we have <math|exp<around*|(|x|)>\<gtr\>exp<around*|(|y|)>> a
      contradiction so we must have that <math|x=y>.

      <item*|surjectivity>Let <math|y\<in\>\<bbb-R\><rsub|+>=<around*|]|0,\<infty\>|[>>
      then we must consider 3 cases\ 

      <\description>
        <item*|<math|y=1>>then <math|y=1=exp<around*|(|0|)>>

        <item*|<math|1\<less\>y>>then by <reference|exp exceeds every number>
        there exists a <math|b\<in\>\<bbb-R\>> such that
        <math|y\<less\>exp<around*|(|b|)>> so that we have
        <math|exp<around*|(|0|)>\<less\>y\<less\>exp<around*|(|b|)>>. As
        <math|exp> is continuous on <math|\<bbb-R\>> (see <reference|exp(x)
        is continuous>) and thus on <math|<around*|[|0,b|]>> we have by the
        itermediate value theorem (see <reference|intermediate value
        theorem>) that <math|\<exists\>x\<in\><around*|[|0,b|]>> such that
        <math|exp<around*|(|x|)>=y>

        <item*|<math|0\<less\>y\<less\>1>>So <math|1\<less\><frac|1|y>> and
        we can apply the previous case to find a <math|x\<in\>\<bbb-R\>> such
        that <math|exp<around*|(|x|)>=<frac|1|y>> hence
        <math|exp<around*|(|-x|)>=<frac|1|exp<around*|(|x|)>>=y>
      </description>
    </description>

    for the remaing of the theorem we have if <math|x\<in\>\<bbb-R\><rsub|+>>
    by <reference|properties of exp (1)> (5) that
    <math|1\<less\>exp<around*|(|x|)>\<Rightarrow\>exp<around*|(|x|)>\<in\><around*|]|1,\<infty\>|[>>
    so that

    <\equation>
      <label|eq 17.18.002>exp<around*|(|\<bbb-R\><rsub|+>|)>\<subseteq\><around*|]|1,\<infty\>|[>
    </equation>

    If <math|x\<in\>\<bbb-R\><rsub|->> then <math|-x\<in\>\<bbb-R\><rsub|+>>
    so that <math|1\<less\>exp<around*|(|-x|)>=<frac|1|exp<around*|(|x|)>>>
    or <math|1\<less\><frac|1|exp<around*|(|x|)>>\<Rightarrow\>exp<around*|(|x|)>\<less\>1>
    proving that <math|exp<around*|(|x|)>\<in\><around*|]|0,1|[>> so that

    <\equation>
      <label|eq 17.19.002>exp<around*|(|\<bbb-R\><rsub|->|)>\<subseteq\><around*|]|0,1|[>
    </equation>

    If now <math|y\<in\><around*|]|1,\<infty\>|[>\<subseteq\>\<bbb-R\><rsub|+>>
    then as <math|exp> is a surjection there exists a <math|x\<in\>\<bbb-R\>>
    such that <math|exp<around*|(|x|)>=y> assume
    <math|x\<in\>\<bbb-R\><rsub|->> then by <reference|eq 17.19.002> we have
    <math|y=exp<around*|(|x|)>\<in\><around*|]|0,1|[>> not
    <math|<around*|]|1,\<infty\>|[>> so we must have
    <math|x\<in\>\<bbb-R\><rsub|+>> proving that
    <math|<around*|]|1,\<infty\>|[>\<subseteq\>exp<around*|(|\<bbb-R\><rsub|+>|)>>
    which together with <reference|eq 17.18.002> gives\ 

    <\equation*>
      exp<around*|(|\<bbb-R\><rsub|+>|)>=<around*|]|1,\<infty\>|[>
    </equation*>

    If now <math|y\<in\><around*|]|0,1|[>\<subseteq\>\<bbb-R\><rsub|+>> then
    as <math|exp> is a surjection there exists a <math|x\<in\>\<bbb-R\>> such
    that <math|exp<around*|(|x|)>=y> assume <math|x\<in\>\<bbb-R\><rsub|+>>
    then by <reference|eq 17.18.002> we have
    <math|y=exp<around*|(|x|)>\<in\><around*|]|1,\<infty\>|[>> not
    <math|<around*|]|0,1|[>> so we must have <math|x\<in\>\<bbb-R\><rsub|->>
    proving that <math|<around*|]|0,1|[>\<subseteq\>exp<around*|(|\<bbb-R\><rsub|->|)>>
    which together with <reference|eq 17.19.002> gives\ 

    <\equation*>
      exp<around*|(|\<bbb-R\><rsub|->|)>=<around*|]|0,1|[>
    </equation*>

    \;
  </proof>

  The above definition allows us to define the Napierian logarithm

  <\definition>
    <label|Napierian><index|Napierian logarithm><index|<math|log>><dueto|Napierian
    logarithm><math|log:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\>> is defined
    by <math|log=exp<rsup|-1>>
  </definition>

  Based on the properties of exp we have the following properties of the
  logarithme

  <\theorem>
    <label|properties of log><math|log:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\>>
    has the following properties

    <\enumerate>
      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|+>> we have that
      <math|exp<around*|(|log<around*|(|x|)>|)>=x>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have that
      <math|log<around*|(|exp<around*|(|x|)>|)>=x>

      <item><math|log<around*|(|e|)>=1>

      <item><math|log<around*|(|1|)>=0>

      <item>\<forall\><math|x,y\<in\>\<bbb-R\><rsub|+>> we have
      <math|log<around*|(|x\<cdot\>y|)>=log<around*|(|x|)>+log<around*|(|y|)>>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|+>> we have
      <math|log<around*|(|<frac|1|x>|)>=-log<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-R\><rsub|+>> <math|log> has a
      derivative <math|log<rprime|'><around*|(|x|)>=<frac|1|x>>

      <item><math|log:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\>> is strictly
      increasing and <math|\<forall\>x\<less\>1> we have
      <math|log<around*|(|x|)>\<less\>0>
    </enumerate>
  </theorem>

  <\proof>
    This follows easely from the definition of <math|log> as the inverse of
    <math|exp> on <math|\<bbb-R\><rsub|+>>

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|exp<around*|(|log<around*|(|x|)>|)>=exp<around*|(|exp<rsup|-1><around*|(|x|)>|)>=x>

      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|log<around*|(|exp<around*|(|x|)>|)>=exp<rsup|-1><around*|(|exp<around*|(|x|)>|)>=x>

      <item><math|log<around*|(|e|)>=log<around*|(|exp<around*|(|1|)>|)>\<equallim\><rsub|<around*|(|2|)>>1>

      <item>As <math|exp<around*|(|0|)>=1> we have that
      <math|log<around*|(|1|)>=exp<rsup|-1><around*|(|exp<around*|(|0|)>|)>=0>

      <item>Let <math|x,y\<in\>\<bbb-R\><rsub|+>> then
      <math|exp<around*|(|log<around*|(|x|)>+log<around*|(|y|)>|)>=exp<around*|(|log<around*|(|x|)>|)>\<cdot\>exp<around*|(|log<around*|(|y|)>|)>\<equallim\><rsub|<around*|(|1|)>>x\<cdot\>y>
      so that <math|log<around*|(|x\<cdot\>y|)>=log<around*|(|exp<around*|(|log<around*|(|x|)>+log<around*|(|y|)>|)>|)>\<equallim\><rsub|<around*|(|2|)>>log<around*|(|x|)>+log<around*|(|y|)>>

      <item>Let <math|x\<in\>\<bbb-R\><rsub|+>> then
      <math|x=exp<around*|(|log<around*|(|x|)>|)>> so that
      <math|exp<around*|(|-log<around*|(|x|)>|)>=<frac|1|x>> and thus
      <math|-log<around*|(|x|)>=log<around*|(|exp<around*|(|-log<around*|(|x|)>|)>|)>=log<around*|(|<frac|1|x>|)>>

      <item>Take <math|x\<in\>\<bbb-R\><rsub|+>> and take
      <math|y=log<around*|(|x|)>>. As <math|exp<around*|(|y|)>\<gtr\>0> we
      have by a consequence of the inverse function theorem (see
      <reference|inverse of derivative>) that there exists a open
      <math|U\<subseteq\>\<bbb-R\><rsub|+>,V\<subseteq\>\<bbb-R\>> with
      <math|y\<in\>U> and <math|x=exp<around*|(|log<around*|(|x|)>|)>=exp<around*|(|y|)>\<in\>V>
      such that <math|exp<rsub|\|U>:U\<rightarrow\>V> has a inverse
      <math|exp<rsub|\|U><rsup|-1>\<of\>V\<rightarrow\>U> such that
      <math|\<forall\>z\<in\>V> we have <math|<around*|(|exp<rsub|\|U><rsup|-1>|)><rprime|'><around*|(|z|)>\<cdot\>exp<around*|(|exp<rsup|-1><around*|(|z|)>|)>>.
      As <math|\<forall\>w\<in\>U> we have that
      <math|<around*|(|exp<rsub|\|U>\<circ\>log<rsub|\|V>|)><around*|(|w|)>=exp<rsub|\|U><around*|(|log<rsub|\|V><around*|(|w|)>|)>=exp<around*|(|log<around*|(|w|)>|)>=w=1<rsub|V><around*|(|w|)>>
      and <math|\<forall\>w\<in\>U<text| we have that
      ><around*|(|log<rsub|\|V>\<circ\>exp<rsub|\|U>|)><around*|(|w|)>=log<around*|(|exp<around*|(|w|)>|)>=w=1<rsub|U><around*|(|w|)>>
      we conclude that <math|exp<rsub|\|U><rsup|-1>=log<rsub|\|V>>. So we
      have that <math|\<forall\>z\<in\>V> that
      <math|1=<around*|(|log<rsub|\|V>|)><rprime|'><around*|(|z|)>\<cdot\>exp<around*|(|log<around*|(|z|)>|)>\<equallim\><rsub|<text|<reference|derivative
      is local>>>log<rprime|'><around*|(|z|)>\<cdot\>z>. More specific as
      <math|x\<in\>V\<subseteq\>\<bbb-R\><rsub|+>> we proved that
      <math|log<rprime|'><around*|(|x|)>=<frac|1|x>>

      <item>Let <math|x,y\<in\>\<bbb-R\><rsub|+>> with <math|x\<less\>y> then
      if <math|log<around*|(|y|)>\<leqslant\>log<around*|(|x|)>> we have if
      <math|exp> is stritly increasing we have
      <math|y=exp<around*|(|log<around*|(|y|)>|)>\<leqslant\>exp<around*|(|log<around*|(|x|)>|)>=x>
      contradicting <math|x\<less\>y> so that
      <math|log<around*|(|x|)>\<less\>log<around*|(|y|)>>. Further if
      <math|x\<less\>1> then <math|log<around*|(|x|)>\<less\>log<around*|(|1|)>=0>.
    </enumerate>
  </proof>

  Once we have introduced the log function and the definition
  <math|e<rsup|x>=exp<around*|(|x|)>> (which was expired by the fact that
  <math|exp<around*|(|n|)>=e<rsup|n>=<wide*|e\<ldots\>e|\<wide-underbrace\>><rsub|n
  times>> (see <reference|exponential as power>) we can now define a general
  definiton of the power of a real number to a real number.\ 

  <\definition>
    <label|generalized power>Let <math|a\<in\><around*|]|0,\<infty\>|[>> be a
    positive number and <math|x\<in\>\<bbb-R\>> then
    <math|a<rsup|<around*|[|x|]>>=exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<in\>\<bbb-R\>>
  </definition>

  <\remark>
    The restrictions in the above definition are needed for
    <math|log<around*|(|a|)>> is only defined if
    <math|a\<in\>\<bbb-R\><rsub|+>=<around*|]|0,\<infty\>|[>>, further if for
    example if <math|x=<frac|1|2>> then we will see that
    <math|a<rsup|<frac|1|2>>=<sqrt|a>> which is not defined in the reals if
    <math|a=<frac|1|2>>. Later we will see that in the case of
    <math|0\<less\>x> we can include the case <math|a=0> in the definition of
    <math|a<rsup|x>>.
  </remark>

  Next we prove now that we have the classical properties of our generalized
  power.

  <\theorem>
    <label|properties of general strict power>Let
    <math|a\<in\><around*|]|0,\<infty\>|[>=\<bbb-R\><rsub|+>> then we that\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\>> we have that
      <math|a<rsup|<around*|[|n|]>>=<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n
      times>> (we have a conflict of notation here so we use
      <math|<wide*|a*\<ldots\>a|\<wide-underbrace\>>> to note the classical
      power on <math|\<bbb-R\>>)

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|1<rsup|<around*|[|x|]>>=1>

      <item><math|\<forall\>x\<in\>\<bbb-R\> <text| we have
      >e<rsup|<around*|[|x|]>>=exp<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<frac|a<rsup|<around*|[|x|]>>|a>=a<rsup|<around*|[|x-1|]>>>

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> we have
      <math|<around*|(|a<rsup|<around*|[|x|]>>|)><rsup|<around*|[|y|]>>=a<rsup|<around*|[|x\<cdot\>y|]>>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|a<rsup|<around*|[|-x|]>>=<frac|1|a<rsup|<around*|[|x|]>>>>

      <item><math|\<forall\>b\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|(|a\<cdot\>b|)><rsup|<around*|[|x|]>>=a<rsup|<around*|[|x|]>>\<cdot\>b<rsup|<around*|[|x|]>>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|log<around*|(|a<rsup|<around*|[|x|]>>|)>=x\<cdot\>log<around*|(|a|)>>

      <item>Let <math|a\<in\>\<bbb-R\><rsub|+>> and define
      <math|a<rsup|<around*|(|.|)>>:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|+>>
      by <math|a<rsup|<around*|(|.|)>><around*|(|x|)>=a<rsup|<around*|[|x|]>>>
      then <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|(|a<rsup|<around*|(|.|)>>|)><rprime|'><around*|(|x|)>=log<around*|(|a|)>\<cdot\>a<rsup|<around*|[|x|]>>>

      <item>Let <math|x\<in\>\<bbb-R\>> and define
      <math|<around*|(|.|)><rsup|<around*|[|x|]>>:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\><rsub|+>>
      by <math|<around*|(|.|)><rsup|<around*|[|x|]>><around*|(|y|)>=y<rsup|<around*|[|x|]>>
      > then <math|\<forall\>y\<in\>\<bbb-R\>> we have that
      <math|<around*|(|<around*|(|.|)><rsup|<around*|[|x|]>>|)><rprime|'><around*|(|y|)>=x\<cdot\>y<rsup|<around*|[|x-1|]>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We proof this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|a<rsup|<around*|[|n|]>>=<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n
      times>|}>> then we have\ 

      <\description>
        <item*|<math|0\<in\>\<cal-S\>>><math|a<rsup|<around*|[|0|]>>=exp<around*|(|0*\<cdot\>log<around*|(|a|)>|)>=exp<around*|(|0|)>\<equallim\><rsub|<text|<reference|properties
        of exp (1)>>>1=<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|0
        \ times>> proving that <math|n\<in\>\<bbb-N\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>then

        <\eqnarray*>
          <tformat|<table|<row|<cell|a<rsup|<around*|[|n+1|]>>>|<cell|=>|<cell|exp<around*|(|<around*|(|n+1|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>+log<around*|(|a|)>|\<nobracket\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>>|<cell|exp<around*|(|n\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<wide*|a\<ldots\>a|\<wide-underbrace\>><rsub|n
          times>\<cdot\>exp<around*|(|log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide*|a\<ldots\>a|\<wide-underbrace\>><rsub|n
          times>\<cdot\>a>>|<row|<cell|>|<cell|=>|<cell|<wide*|a\<ldots\>a|\<wide-underbrace\>><rsub|n+1
          times>>>>>
        </eqnarray*>

        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|x<rsup|<around*|[|1|]>>=exp<around*|(|log<around*|(|1|)>\<cdot\>x|)>\<equallim\><rsub|<text|<reference|properties
      of log> (4)>>exp<around*|(|0\<cdot\>x|)>=exp<around*|(|0|)>\<equallim\><rsub|<text|<reference|properties
      of exp (1)>>>1>

      <item><math|e<rsup|<around*|[|x|]>>=exp<around*|(|x\<cdot\>log<around*|(|e|)>|)>\<equallim\><rsub|<text|<reference|properties
      of log> (3)>>exp<around*|(|x\<cdot\>1|)>=exp<around*|(|x|)>>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a<rsup|<around*|[|x|]>>|)><rsup|<around*|[|y|]>>>|<cell|=>|<cell|<around*|(|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|)><rsup|<around*|[|y|]>>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|y\<cdot\>log<around*|(|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|y\<cdot\><around*|(|x\<cdot\>log<around*|(|a|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|<around*|(|x\<cdot\>y|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|<around*|[|x|]>\<cdot\><around*|[|y|]>>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a<rsup|<around*|[|x|]>>|a>>|<cell|=>|<cell|<frac|exp<around*|(|log<around*|(|a|)>\<cdot\>x|)>|exp<around*|(|log<around*|(|a|)>|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of exp (1)> (3)>>>|<cell|exp<around*|(|-log<around*|(|a|)>|)>\<cdot\>exp<around*|(|log<around*|(|a|)>\<cdot\>x|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|log<around*|(|a|)>\<cdot\>x-log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|log<around*|(|a|)>\<cdot\><around*|(|x-1|)>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|<around*|[|x-1|]>>>>>>
      </eqnarray*>

      <item>Let <math|x\<in\>\<bbb-R\>> then
      <math|a<rsup|<around*|[|-x|]>>=exp<around*|(|-x\<cdot\>log<around*|(|a|)>|)>\<equallim\><rsub|<text|<reference|properties
      of exp (1)> (3)>><frac|1|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>>=<frac|1|a<rsup|<around*|[|x|]>>>>

      <item>Let <math|b\<in\><around*|]|0,\<infty\>|[>> and
      <math|x\<in\>\<bbb-R\>> then <math|<around*|(|a\<cdot\>b|)><rsup|<around*|[|x|]>>=exp<around*|(|log<around*|(|a\<cdot\>b|)>\<cdot\>x|)>\<equallim\><rsub|<text|<reference|properties
      of log> (5)>>exp<around*|(|<around*|(|log<around*|(|a|)>+log<around*|(|b|)>|)>\<cdot\>x|)>=exp<around*|(|log<around*|(|a|)>\<cdot\>x+log<around*|(|b|)>\<cdot\>x|)>\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>exp<around*|(|log<around*|(|a|)>\<cdot\>x|)>\<cdot\>exp<around*|(|log<around*|(|b|)>\<cdot\>x|)>=a<rsup|<around*|[|x|]>>\<cdot\>b<rsup|<around*|[|x|]>>>

      <item><math|log<around*|(|a<rsup|<around*|[|x|]>>|)>=log<around*|(|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>|)>=x\<cdot\>log<around*|(|a|)>>

      <item>If we define <math|f:\<bbb-R\>\<rightarrow\>\<bbb-R\>> by
      <math|f<around*|(|x|)>=log<around*|(|a|)>\<cdot\>x> then we have that
      <math|<around*|(|exp\<circ\>f|)><around*|(|x|)>=exp<around*|(|f<around*|(|x|)>|)>=exp<around*|(|log<around*|(|a|)>|)>=a<rsup|<around*|[|x|]>>=<around*|(|a<rsup|<around*|(|.|)>>|)><around*|(|x|)>>
      proving that <math|exp\<circ\>f=a<rsup|<around*|(|.|)>>>. As
      <math|\<forall\>x\<in\>\<bbb-R\>> we have that
      <math|exp<rprime|'><around*|(|x|)>> and
      <math|f<rprime|'><around*|(|x|)>> exists we have by
      <reference|derivative and composition> that
      <math|<around*|(|a<rsup|<around*|(|<rprime|'>|)>>|)><rprime|'><around*|(|x|)>=exp<rprime|'><around*|(|f<around*|(|x|)>|)>\<cdot\>f<rprime|'><around*|(|x|)>=exp<around*|(|f<around*|(|x|)>|)>\<cdot\>log<around*|(|a|)>=log<around*|(|a|)>\<cdot\>exp<around*|(|log<around*|(|a|)>\<cdot\>x|)>=log<around*|(|a|)>\<cdot\>a<rsup|x>>

      <item>Let <math|x\<in\>\<bbb-R\>> and define
      <math|f:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\>> by
      <math|f<around*|(|y|)>=log<around*|(|y|)>\<cdot\>x> then
      <math|\<forall\>y\<in\>\<bbb-R\>> we have
      <math|f<rprime|'><around*|(|y|)>=x\<cdot\>log<around*|(|y|)>\<equallim\><rsub|<text|<reference|properties
      of log> (7)>><frac|x|y>>. Further as
      <math|<around*|(|exp\<circ\>f|)><around*|(|y|)>=exp<around*|(|f<around*|(|y|)>|)>=exp<around*|(|log<around*|(|y|)>\<cdot\>x|)>=a<rsup|<around*|[|x|]>>=<around*|(|<around*|(|.|)><rsup|x>|)><around*|(|y|)>>
      we conclude that <math|<around*|(|.|)><rsup|x>=exp\<circ\>f>. So using
      <reference|derivative and composition> we have
      <math|\<forall\>x\<in\>\<bbb-R\>> that
      <math|<around*|(|<around*|(|.|)><rsup|<around*|[|x|]>>|)><rprime|'><around*|(|y|)>=exp<around*|(|f<around*|(|y|)>|)>\<cdot\>f<rprime|'><around*|(|y|)>=exp<around*|(|f<around*|(|y|)>|)>\<cdot\><frac|x|y>=x\<cdot\><frac|exp<around*|(|log<around*|(|y|)>\<cdot\>x|)>|y>=x\<cdot\><frac|y<rsup|<around*|[|x|]>>|x>\<equallim\><rsub|<around*|(|4|)>>x\<cdot\>y<rsup|<around*|[|x-1|]>>>
    </enumerate>
  </proof>

  Using the above theorem (9) we see that the function
  <math|<around*|(|.|)><rsup|x>:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\><rsub|+>>
  has a derivative and thus by <reference|differentias and derivates> and
  <reference|differentiability at x implies continuity at x> we have that
  <math|<around*|(|.|)><rsup|<around*|[|x|]>>> is continuous at every
  <math|x\<in\>\<bbb-R\><rsub|+>=<around*|]|0,\<infty\>|[>> this can be
  extended to <math|<around*|[|0,\<infty\>|[>> using the subspace topology on
  <math|<around*|[|0,\<infty\>|[>> if we extend the definition of a power to
  <math|<around*|[|0,\<infty\>|[>> which can be done if we restrict the power
  to strict positive numbers.

  <\definition>
    <label|general strict positive powers>Let
    <math|p\<in\><around*|]|0,\<infty\>|[>> and
    <math|a\<in\><around*|[|0,\<infty\>|[>> then we define
    <math|a<rsup|p>=<choice|<tformat|<table|<row|<cell|a<rsup|<around*|[|p|]>>=exp<around*|(|p\<cdot\>log<around*|(|a|)>|)>
    if a\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|0 if a=0>>>>>>
  </definition>

  Note that the requirement <math|0\<less\>p> is needed for if
  <math|a\<in\><around*|]|0,\<infty\>|[>> then
  <math|a<rsup|0>=exp<around*|(|log<around*|(|a|)>\<cdot\>0|)>=1> and as
  \ <math|0<rsup|0>=0> the function <math|<around*|[|.|]><rsup|0>:<around*|[|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
  defined by <math|<around*|[|.|]><rsup|0><around*|(|x|)>> is then
  discontinuous at <math|0>. Furter if <math|p\<less\>0> then
  <math|0<rsup|p>=0<rsup|-p>=<frac|1|0<rsup|p>>> is not well defined. We have
  now simular properties for <math|a<rsup|p>> as <math|a<rsup|p>>

  <\theorem>
    <label|properties of general power>Let
    <math|a\<in\><around*|[|0,\<infty\>|[>=\<bbb-R\><rsub|+>> then we that\ 

    <\enumerate>
      <item><math|\<forall\>p\<in\><around*|]|0,\<infty\>|[>> we have
      <math|a<rsup|p>=0\<Leftrightarrow\>a=0>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|a<rsup|n>=<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n times>>
      (we have a conflict of notation here so we use
      <math|<wide*|a*\<ldots\>a|\<wide-underbrace\>>> to note the classical
      power on <math|\<bbb-R\>>)

      <item><math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>=\<bbb-R\><rsub|+>>
      we have <math|1<rsup|x>=1>

      <item><math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>>
      <math|e<rsup|x>=exp<around*|(|x|)>>

      <item><math|\<forall\>x\<in\><around*|]|1,\<infty\>|[>> and
      <math|a\<neq\>0> then <math|<frac|a<rsup|x>|a>=a<rsup|x-1>>

      <item><math|\<forall\>x,y\<in\><around*|]|0,\<infty\>|[>> we have
      <math|<around*|(|a<rsup|x>|)><rsup|y>=a<rsup|x\<cdot\>y>>

      <item><math|\<forall\>b\<in\><around*|[|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|(|a\<cdot\>b|)><rsup|x>=a<rsup|x>\<cdot\>b<rsup|x>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>If <math|a<rsup|p>=0> if <math|a\<neq\>0> we have
        <math|a<rsup|p>=exp<around*|(|p\<cdot\>log<around*|(|a|)>|)>\<gtr\>0>
        a contradiction so we must have <math|a=0>. The opposite equivalence
        follows from <math|0<rsup|p>=0>

        <item>If <math|n\<in\>\<bbb-N\><rsub|0>> then if
        <math|a\<in\><around*|]|0,\<infty\>|[>> we have
        <math|a<rsup|n>=a<rsup|<around*|[|n|]>>\<equallim\><rsub|<text|<reference|properties
        of general strict power> (1)>><wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n
        times>> and <math|0<rsup|n>=0=<wide*|0*\<ldots\>0|\<wide-underbrace\>><rsub|1
        time>>

        <item>Let <math|x\<in\><around*|]|0,\<infty\>|[>> then as
        <math|1\<in\><around*|]|0,\<infty\>|[>> we have that
        <math|1<rsup|x>=1<rsup|<around*|[|x|]>>\<equallim\><rsub|<text|<reference|properties
        of general strict power> (2)>>1>

        <item>Let <math|x\<in\><around*|]|0,\<infty\>|[>> then as
        <math|e\<neq\>0> we have <math|e<rsup|x>=e<rsup|<around*|[|x|]>>\<equallim\><rsub|<text|<reference|properties
        of general strict power> (3)>>exp<around*|(|x|)>>

        <item>Let <math|><math|x\<in\><around*|]|1,\<infty\>|[>> and
        <math|a\<neq\>0> then <math|<frac|a<rsup|x>|a>=<frac|a<rsup|<around*|[|x|]>>|a>\<equallim\><rsub|<text|<reference|properties
        of general strict power>>>a<rsup|<around*|[|x-1|]>>\<equallim\><rsub|0\<less\>x-1>a<rsup|x-1>>

        <item><math|\<forall\>x,y\<in\><around*|]|0,\<infty\>|[>> we have for
        <math|a\<in\><around*|[|a,\<infty\>|[>> that\ 

        <\description>
          <item*|<math|a=0>>then <math|<around*|(|0<rsup|x>|)><rsup|y>=0<rsup|y>=0=0<rsup|x\<cdot\>y>>

          <item*|<math|a\<neq\>0>>then <math|a<rsup|x>=a<rsup|<around*|[|x|]>>\<neq\>0>
          (see (1)) so that <math|<around*|(|a<rsup|x>|)><rsup|y>=<around*|(|a<rsup|<around*|[|x|]>>|)><rsup|<around*|[|y|]>>\<equallim\><rsub|<text|<reference|properties
          of general strict power>>>a<rsup|<around*|[|x\<cdot\>y|]>>=a<rsup|x\<cdot\>y>>
          </description>

        <item>We have for <math|a,b> either\ 

        <\description>
          <item*|<math|a=0\<wedge\>b=0>>then
          <math|<around*|(|a\<cdot\>b|)><rsup|x>=0<rsup|x>=0=0\<cdot\>0=0<rsup|x>\<cdot\>0<rsup|x>=a<rsup|x>\<cdot\>b<rsup|x>>

          <item*|<math|a=0\<wedge\>b\<neq\>0>>then
          <math|<around*|(|a\<cdot\>b|)><rsup|x>=0<rsup|x>=0\<cdot\>b<rsup|x>=0<rsup|x>\<cdot\>b<rsup|x>=a<rsup|x>\<cdot\>b<rsup|x>>

          <item*|<math|a\<neq\>0\<wedge\>b=0>>then
          <math|<around*|(|a\<cdot\>b|)><rsup|x>=0<rsup|x>=a<rsup|x>\<cdot\>0=a<rsup|x>\<cdot\>0<rsup|x>=a<rsup|x>\<cdot\>b<rsup|x>>

          <item*|<math|a\<neq\>0\<wedge\>b\<neq\>0>><math|<around*|(|a\<cdot\>b|)><rsup|x>\<equallim\><rsub|a\<cdot\>b\<neq\>0><around*|(|a\<cdot\>b|)><rsup|<around*|[|x\<cdot\>y|]>>\<equallim\><rsub|<text|<reference|properties
          of general strict power> (7)>>=a<rsup|<around*|[|x|]>>\<cdot\>b<rsup|<around*|[|x|]>>=a<rsup|x>\<cdot\>b<rsup|x>>
        </description>
      </enumerate>
    </proof>
  </theorem>

  <\theorem>
    <label|x^p is continuous>Let <math|p\<in\><around*|]|0,\<infty\>|[>> then
    <math|<around*|[|.|]><rsup|p>:<around*|[|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|[|.|]><rsup|p><around*|(|x|)>=x<rsup|p> >then
    we have <math|<around*|[|.|]><rsup|p>> is continuous
    <math|\<forall\>x\<in\><around*|[|0,\<infty\>|[>> [where we use the
    canonical topology on <math|\<bbb-R\>> based on the norm
    <math|<around*|\|||\|>> and the subspace topology on
    <math|<around*|[|0,\<infty\>|[>> (see <reference|subspace topology>)
  </theorem>

  <\proof>
    \ Let <math|x\<in\><around*|[|0,\<infty\>|[>> the we can divide the proof
    in two pieces

    <\description>
      <item*|<math|x\<neq\>0>>Let <math|<around*|[|.|]><rsup|p><around*|(|x|)>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>>
      then as <math|<around*|(|.|)><rsup|p>:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
      is continuous (<math|<around*|(|<around*|(|.|)><rsup|p>|)><rprime|'><around*|(|x|)>>
      exists together with <reference|differentias and derivates> and
      <reference|differentiability at x implies continuity at x>) there
      exists a <math|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|1>|)>>
      such that <math|\<forall\>y\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|1>|)><big|cap><around*|]|0,\<infty\>|[>>
      we have <math|<around*|[|.|]><rsup|p><around*|(|y|)>=y<rsup|p>=<around*|(|.|)><rsup|p><around*|(|y|)>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>>.
      Further as <math|x\<neq\>0> we have <math|0\<less\>x> take then
      <math|\<delta\>=min<around*|(|x,\<delta\><rsub|1>|)>>. If
      <math|0\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>> then
      <math|x=x-0\<less\>\<delta\>\<leqslant\>x> a contradiction so that
      <math|0\<nin\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)>> which
      proves that <math|B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>=B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>>.
      Finally <math|\<forall\>y\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>=B<rsub|<around*|\|||\|>><around*|(|x,\<delta\>|)><big|cap><around*|]|0,\<infty\>|[>\<subseteq\>B<rsub|<around*|\|||\|>><around*|(|x,\<delta\><rsub|1>|)><big|cap><around*|]|0,\<infty\>|[>>
      we have that <math|<around*|[|.|]><rsup|p><around*|(|y|)>\<in\>B<rsub|<around*|\|||\|>><around*|(|x,\<varepsilon\>|)>>
      proving that <math|<around*|[|.|]><rsup|p>> is continuous at <math|x>.

      <item*|<math|x=0>>Let <math|\<varepsilon\>\<gtr\>0> then as
      <math|exp:\<bbb-R\>\<rightarrow\>\<bbb-R\><rsub|+>> is a bijection
      there exists a <math|\<delta\><rsub|1>\<in\>\<bbb-R\>> such that
      <math|exp<around*|(|\<delta\><rsub|1>|)>=\<varepsilon\>>. Further as
      <math|log:\<bbb-R\><rsup|+>\<rightarrow\>\<bbb-R\>> is a bijection
      there exists a <math|\<delta\>\<less\>\<bbb-R\><rsub|+>> such that
      <math|log<around*|(|\<delta\>|)>=<frac|\<delta\><rsub|1>|p>>. Hence if
      <math|y\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<delta\>|)><big|cap><around*|[|0,\<infty\>|[>>
      then <math|y\<less\>\<delta\>> so that
      <math|log<around*|(|y|)>\<less\>log<around*|(|\<delta\>|)>> [as
      <math|log> is strictly increasing], as <math|0\<less\>p> if follows
      that <math|p\<cdot\>log<around*|(|y|)>\<less\>p\<cdot\>log<around*|(|\<delta\>|)>\<Rightarrowlim\><rsub|exp<text|
      is increasing>>exp<around*|(|p\<cdot\>log<around*|(|y|)>|)>\<less\>exp<around*|(|p\<cdot\>log<around*|(|\<delta\>|)>|)>=exp<around*|(|p\<cdot\><frac|\<delta\><rsub|1>|p>|)>=exp<around*|(|\<delta\><rsub|1>|)>=\<varepsilon\>>.
      Finally as <math|y<rsup|p>=exp<around*|(|p\<cdot\>log<around*|(|y|)>|)>\<gtr\>0>
      it follows that <math|y<rsup|p>\<in\>B<rsub|<around*|\|||\|>><around*|(|0,\<varepsilon\>|)>>
      which proves that <math|<around*|[|.|]><rsup|p>> is continuous at
      <math|0>
    </description>
  </proof>

  Now that we have extended the concept of powers we can prove Young'
  inequality. First we need a little lemma.

  <\lemma>
    <label|lemma 17.38>Let <math|p\<in\><around*|]|1,\<infty\>|[>> and
    <math|f<rsub|p>:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>> defined
    by <math|f<rsub|p><around*|(|x|)>=<around*|(|1-x<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-x|)>>
    then <math|x=1\<Leftrightarrow\>f<rsub|p><around*|(|x|)>=0>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|x=1> then
      <math|f<rsub|p><around*|(|1|)>=<around*|(|1-1<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-1|)>\<equallim\><rsub|<text|<reference|properties
      of general power> (2)>><around*|(|1-1|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-1|)>=0>

      <item*|<math|\<Leftarrow\>>>Let <math|x\<in\><around*|]|0,\<infty\>|[>>
      then <math|f<rsub|p><rprime|'><around*|(|x|)>=-<around*|(|1-p|)>\<cdot\>x<rsup|-p>-<around*|(|p-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|x<rsup|-p>-1|)>>
      and <math|f<rsub|p><rprime|''><around*|(|x|)>=<around*|(|p-1|)>\<cdot\><around*|(|-p|)>\<cdot\>x<rsup|-p>\<Rightarrowlim\><rsub|0\<less\>p-1,-p\<less\>0,0\<less\>x<rsup|-p>>f<rsub|p><rprime|''><around*|(|x|)>\<less\>0>
      proving by <reference|strictly increasing function and derivative> that
      <math|f<rprime|'>> is strictly decreasing on
      <math|<around*|]|0,\<infty\>|[>>

      <\equation>
        <label|eq 17.20.020>f<rprime|'><rsub|p><around*|(|1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1<rsup|-p>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-1|)>=0
      </equation>

      and\ 

      <\equation>
        <label|eq 17.21.020>f<rprime|'><text| is strctly decreasing>
      </equation>

      Assume now that <math|\<exists\>x\<in\><around*|]|0,\<infty\>|[>> such
      that <math|x\<neq\>1> and <math|f<rsub|p><around*|(|x|)>=0> we have
      either\ 

      <\description>
        <item*|<math|x\<less\>1>>then as <math|f<rsub|p><around*|(|x|)>=0=f<rsub|p><around*|(|1|)>>
        we have by the theorem of Rolle (see <reference|rolles theorem>) that
        <math|\<exists\>z\<in\><around*|]|x,1|[>> such that
        <math|f<rsub|p><rprime|'><around*|(|z|)>=0>. As <math|f<rprime|'>> is
        strictly increasing we must have that
        <math|f<rprime|'><rsub|p><around*|(|z|)>\<less\>f<rprime|'><rsub|p><around*|(|1|)>=0>
        giving <math|0\<less\>0> a contradiction.

        <item*|<math|1\<less\>x>>hen as <math|f<rsub|p><around*|(|1|)>=0=f<rsub|p><around*|(|0|)>>
        we have by the theorem of Rolle (see <reference|rolles theorem>) that
        <math|\<exists\>z\<in\><around*|]|1,z|[>> such that
        <math|f<rsub|p><rprime|'><around*|(|z|)>=0>. As <math|f<rprime|'>> is
        strictly increasing we must have that
        <math|0=f<rprime|'><rsub|p><around*|(|1|)>\<less\>f<rprime|'><rsub|p><around*|(|z|)>>
        giving <math|0\<less\>0> a contradiction.
      </description>

      As we have in both cases a contradiction we must have that
      <math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>> with <math|x\<neq\>1>
      that <math|f<rsub|p><around*|(|x|)>\<neq\>0>. So if
      <math|f<rsub|p><around*|(|x|)>=0> we must have <math|x=1>
    </description>
  </proof>

  <\theorem>
    <label|Young's inequality><dueto|Young's inequality>Let
    <math|p,q\<in\><around*|]|0,\<infty\>|[>> such that
    <math|<frac|1|p>+<frac|1|q>=1> and <math|a,b\<in\><around*|]|0,\<infty\>|[>>
    then we have that <math|a\<cdot\>b\<leqslant\><frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>.
    Further if <math|p\<in\><around*|]|0,\<infty\>|[>> then we have that
    <math|a\<cdot\>b=<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>\<Leftrightarrow\>b=a<rsup|p-1>>
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|=>|<cell|exp<around*|(|log<around*|(|a\<cdot\>b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of log>>>>|<cell|exp<around*|(|log<around*|(|a|)>+log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|<frac|1|p>\<cdot\>p\<cdot\>log<around*|(|a|)>+<frac|1|q>\<cdot\>q\<cdot\>log<around*|(|b|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of general power>>>>|<cell|exp<around*|(|<frac|1|p>\<cdot\>log<around*|(|a<rsup|p>|)>+<frac|1|q>\<cdot\>log<around*|(|b<rsup|q>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|exp
      is convex (see <reference|exp is convex>) and <reference|equivalences
      of convexitivity (concavity)>>>>|<cell|<frac|1|p>\<cdot\>exp<around*|(|log<around*|(|a<rsup|p>|)>|)>+<frac|1|q>\<cdot\>exp<around*|(|log<around*|(|b<rsup|q>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|p>\<cdot\>a<rsup|p>+<frac|1|q>\<cdot\>b<rsup|q>>>|<row|<cell|>|<cell|=>|<cell|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 17.22.020>a\<cdot\>b\<leqslant\><frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>
    </equation>

    Further we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|1|p>+<frac|1|q>=1>|<cell|\<Rightarrow\>>|<cell|<frac|p|p>+<frac|p|q>=p>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1+<frac|p|q>=p>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|p|q>=<around*|(|p-1|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|q|p>+<frac|q|q>=q>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|1+<frac|q|p>=q>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|q|p>=<around*|(|q-1|)>>>>>
    </eqnarray*>

    so we have by the hypothese that\ 

    <\equation>
      <label|eq 17.23.020><frac|p|q>=<around*|(|p-1|)>\<wedge\><frac|q|p>=<around*|(|q-1|)>
      and thus 1=<around*|(|p-1|)>\<cdot\><around*|(|q-1|)>
    </equation>

    \;

    Next we assume that additionally <math|p\<in\><around*|]|1,\<infty\>|[>>
    . First we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<rsup|p>=b<rsup|q>>|<cell|\<Leftrightarrowlim\><rsub|0\<less\>q>>|<cell|<around*|(|a<rsup|p>|)><rsup|<frac|1|q>>=<around*|(|b<rsup|q>|)><rsup|<frac|1|q>>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|properties
      of general power> (5)>>>|<cell|a<rsup|<frac|p|q>>=b<rsup|<frac|q|q>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a<rsup|<frac|p|q>>=b<rsup|<rsup|1>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a<rsup|<frac|p|q>>=b>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<reference|eq
      17.23.020>>>|<cell|a<rsup|p-1>=b>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|a<rsup|p>=b<rsup|q>>|<cell|\<Leftrightarrowlim\><rsub|0\<less\>p>>|<cell|<around*|(|a<rsup|p>|)><rsup|<frac|1|p>>=<around*|(|b<rsup|q>|)><rsup|<frac|1|p>>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|properties
      of general power> (5)>>>|<cell|a<rsup|<frac|p|p>>=b<rsup|<frac|q|p>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a<rsup|1>=b<rsup|<frac|q|p>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a=b<rsup|<frac|q|p>>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|eq
      17.23.020>>>>|<cell|a=b<rsup|q-1>>>>>
    </eqnarray*>

    so that we have\ 

    <\equation>
      <label|eq 17.24.020>a<rsup|p>=a<rsup|q>\<Leftrightarrow\>a<rsup|p-1>=b\<Leftrightarrow\>a=b<rsup|<frac|q|p>>\<Leftrightarrow\>b=a<rsup|<frac|p|q>>\<Leftrightarrow\>a=b<rsup|q-1>
    </equation>

    <\description>
      <item*|<math|\<Leftarrow\>>>If <math|a=b<rsup|p-1>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>>|<cell|=>|<cell|<frac|a<rsup|p>\<cdot\>q+b<rsup|q>\<cdot\>p|p\<cdot\>q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.24.020>>>>|<cell|<frac|q\<cdot\><around*|(|b<rsup|<frac|q|p>>|)><rsup|p>+b<rsup|q>\<cdot\>p|p\<cdot\>q>>>|<row|<cell|>|<cell|=>|<cell|<frac|q\<cdot\>b<rsup|<frac|q|p>\<cdot\>p>+p\<cdot\>b<rsup|q>|p\<cdot\>q>>>|<row|<cell|>|<cell|=>|<cell|<frac|q\<cdot\>b<rsup|q>+p\<cdot\>b<rsup|q>|p\<cdot\>q>>>|<row|<cell|>|<cell|=>|<cell|<frac|q+p|p\<cdot\>q>\<cdot\>b<rsup|q>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<frac|1|p>+<frac|1|q>|)>\<cdot\>b<rsup|q>>>|<row|<cell|>|<cell|=>|<cell|b<rsup|q>>>|<row|<cell|>|<cell|=>|<cell|b\<cdot\>b<rsup|q-1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.24.020>>>>|<cell|a\<cdot\>b>>>>
      </eqnarray*>

      proving that <math|<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>=a\<cdot\>b>

      <item*|<math|\<Rightarrow\>>>Suppose that
      <math|a\<cdot\>b=<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>> then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a\<cdot\>b>|<cell|=>|<cell|<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|p\<cdot\>q>>>|<row|<cell|>|<cell|\<equallim\><rsub|<frac|1|p>+<frac|1|q>=1\<Rightarrow\><frac|p+q|p\<cdot\>q>=1\<Rightarrow\><frac|1|p\<cdot\>q>=<frac|1|p+q>>>|<cell|<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|p+q>>>>>
      </eqnarray*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|p+q=<frac|q\<cdot\>a<rsup|p>+p\<cdot\>b<rsup|q>|a\<cdot\>b>>|<cell|\<Rightarrow\>>|<cell|p+q=q\<cdot\><frac|a<rsup|p-1>|b>+p\<cdot\><frac|b<rsup|q-1>|a>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|p\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>=q\<cdot\><around*|(|<frac|a<rsup|p-1>|b>-1|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|<frac|a<rsup|p-1>|b>-1|)>=<frac|p|q>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|<reference|eq
        17.23.020>>>>|<cell|<around*|(|<frac|a<rsup|p-1>|b>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|<reference|properties
        of general power>> <around*|(|6|)>>>|<cell|<around*|(|<frac|b<rsup|-1>|a<rsup|-<around*|(|p-1|)>>>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|<reference|eq
        17.23.020>>>>|<cell|<around*|(|<frac|b<rsup|-<around*|(|p-1|)>\<cdot\><around*|(|q-1|)>>|a<rsup|-<around*|(|p-1|)>>>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|<frac|b<rsup|<around*|(|1-p|)>\<cdot\><around*|(|q-1|)>>|a<rsup|<around*|(|1-p|)>>>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|<around*|(|<frac|b<rsup|q-1>|a>|)><rsup|1-p>-1|)>=<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|0=<around*|(|1-<around*|(|<frac|b<rsup|q-1>|a>|)><rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-<frac|b<rsup|q-1>|a>|)>>>>>
      </eqnarray*>

      so if we define <math|f<rsub|p>:<around*|]|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
      by <math|f<rsub|p><around*|(|x|)>=<around*|(|1-x<rsup|1-p>|)>+<around*|(|p-1|)>\<cdot\><around*|(|1-x|)>>
      we have by the above that <math|f<rsub|p><around*|(|<frac|b<rsup|q-1>|a>|)>=0>.
      Using the previous lemma (see<reference|lemma 17.38>) we conclude then
      that <math|<frac|b<rsup|q-1>|a>=1> or that <math|a=b<rsup|q-1>> or
      using <reference|eq 17.23.020> that\ 

      <\equation*>
        b=a<rsup|p-1>
      </equation*>
    </description>
  </proof>

  Next we examine the relation between the exponential map and goniometric
  functions, for that we must consider the behavior of <math|exp> on the
  space of complex numbers.

  <\theorem>
    <label|properties of exp (2)><math|exp:\<bbb-C\>\<rightarrow\>\<bbb-C\>>
    has the following properties

    <\enumerate>
      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|<wide|exp<around*|(|z|)>|\<bar\>>=exp<around*|(|z|)>>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|<around*|\||exp<around*|(|z|)>|\|><rsup|2>=exp<around*|(|Re<around*|(|z|)>|)>>

      <item><math|\<forall\>z=x+i\<cdot\>y\<in\>\<bbb-C\>> we have that
      <math|<around*|\||exp<around*|(|z|)>|\|>=exp<around*|(|x|)>> and
      <math|<around*|\||exp<around*|(|i\<cdot\>y|)>|\|>=exp<around*|(|0|)>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<around*|(|<wide|z|\<bar\>>|)>>|<cell|=>|<cell|<big|sum><rsub|i=0><rsup|\<infty\>><frac|<wide|z|\<bar\>><rsup|i>|i!>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n><frac|<wide|z|\<bar\>><rsup|i>|i!>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|n><wide|<frac|z<rsup|i>|i!>|\<bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><wide|<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>|\<bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|complex
        conjugate of a limit>>>>|<cell|<wide|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=0><rsup|\<infty\>><frac|z<rsup|i>|i!>|)>|\<bar\>>>>|<row|<cell|>|<cell|=>|<cell|<below|exp<around*|(|z|)>|>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||exp<around*|(|z|)>|\|><rsup|2>>|<cell|=>|<cell|exp<around*|(|z|)>\<cdot\><wide|exp<around*|(|z|)>|\<bar\>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|exp<around*|(|z|)>\<cdot\>exp<around*|(|<wide|z|\<bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|z+<wide|z|\<bar\>>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|2\<cdot\>Re<around*|(|z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|Re<around*|(|z|)>|)><rsup|2>>>>>
      </eqnarray*>

      Now as <math|<around*|\||exp<around*|(|z|)>|\|>,exp<around*|(|Re<around*|(|z|)>|)>\<in\>\<bbb-R\><rsub|+>>
      we have by <reference|square root is inverse (1)> that
      <math|<around*|\||exp<around*|(|z|)>|\|>=exp<around*|(|Re<around*|(|z|)>|)>>

      <item>If <math|x=x+i\<cdot\>y> then
      <math|<around*|\||exp<around*|(|z|)>|\|>\<equallim\><rsub|<around*|(|2|)>>exp<around*|(|Re<around*|(|z|)>|)>=exp<around*|(|x|)>>.
      Further <math|<around*|\||exp<around*|(|i\<cdot\>y|)>|\|>=exp<around*|(|Re<around*|(|i\<cdot\>y|)>|)>=exp<around*|(|0|)>=1>
    </enumerate>
  </proof>

  \;

  We can define the trigoniometric functions in terms of the exponential
  function

  <\definition>
    \ <label|trigoniometric functions><index|<math|cos<around*|(|x|)>>><index|<math|sin<around*|(|x|)>>><dueto|trigoniometric
    functions>

    <\enumerate>
      <item><math|cos:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is defined by
      <math|cos=<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2>>

      <item><math|sin:\<bbb-C\>\<rightarrow\>\<bbb-C\>> is defined by
      <math|sin=<frac|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>>
    </enumerate>
  </definition>

  <\theorem>
    <label|trigoniometic properties>We have the following properties for the
    trigoniometric functions

    <\enumerate>
      <item><math|cos:\<bbb-C\>\<rightarrow\>\<bbb-C\>> and
      <math|sin:\<bbb-C\>\<rightarrow\>\<bbb-C\>> are continuous on
      <math|\<bbb-C\>>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have that
      <math|cos<rprime|'><around*|(|z|)>=-sin<around*|(|z|)>> and
      <math|sin<rprime|'><around*|(|z|)>=cos<around*|(|z|)>>

      <item><math|cos<around*|(|0|)>=1>

      <item><math|sin<around*|(|0|)>=0>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have

      <\enumerate>
        <item><math|cos<around*|(|-z|)>=cos<around*|(|-z|)>>

        <item><math|sin<around*|(|-z|)>=-sin<around*|(|z|)>>
      </enumerate>

      <item><math|\<forall\>z\<in\>\<bbb-C\>> we have
      <math|cos<around*|(|z|)><rsup|2>+sin<around*|(|z|)><rsup|2>=1>

      <item><math|\<forall\>x,y\<in\>\<bbb-C\>> we have\ 

      <\enumerate>
        <item><math|cos<around*|(|x+y|)>=cos<around*|(|x|)>\<cdot\>cos<around*|(|y|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>

        <item><math|sin<around*|(|x+y|)>=sin<around*|(|x|)>\<cdot\>cos<around*|(|y|)>+cos*<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>
      </enumerate>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have\ 

      <\enumerate>
        <item><math|cos<around*|(|x|)>\<in\>\<bbb-R\>>

        <item><math|sin<around*|(|x|)>\<in\>\<bbb-R\>>
      </enumerate>

      <item><math|\<forall\>x\<in\>\<bbb-C\>> we have
      <math|e<rsup|i\<cdot\>x>=cos<around*|(|x|)>+i\<cdot\>sin<around*|(|x|)>>
      (which by (8) means that for <math|x\<in\>\<bbb-R\>> we have
      <math|Re<around*|(|i\<cdot\>x|)>=cos<around*|(|x|)>> and
      <math|Im<around*|(|e<rsup|i\<cdot\>x>|)>=sin<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|\||e<rsup|i\<cdot\>x>|\|>=1>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows as the product of a scalar with a continuous
      function is continuous and the sum of continuous functions is
      continuous.

      <item>Let <math|z\<in\>\<bbb-C\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<rprime|'><around*|(|z|)>>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|i\<cdot\>exp<around*|(|i\<cdot\>z|)>+<around*|(|-i|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|i\<cdot\>i\<cdot\>exp<around*|(|i\<cdot\>z|)>+i\<cdot\><around*|(|-i|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|-exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|-sin<around*|(|z|)>>>>>
      </eqnarray*>

      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sin<rprime|'><around*|(|z|)>>|<cell|=>|<cell|<frac|1|2><rsub|\<cdot\>i>\<cdot\><around*|(|i\<cdot\>exp<around*|(|i\<cdot\>z|)>-<around*|(|-i|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|i\<cdot\>z|)>|2>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|z|)>>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|0|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>0|)>+exp<around*|(|-i\<cdot\>0|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|1+1|2>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sin<around*|(|0|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>0|)>-exp<around*|(|-i\<cdot\>0|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|1-1|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      <item>\ 

      <\enumerate>
        <item>

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|-z|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\><around*|(|-z|)>|)>+exp<around*|(|-i\<cdot\><around*|(|-z|)>|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<ast\>z|)>+exp<around|(|-i\<cdot\>z|)>|2>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|z|)>>>>>
        </eqnarray*>

        <item>

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|-z|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\><around*|(|-z|)>|)>-exp<around*|(|-i\<cdot\><around*|(|-z|)>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|-i\<cdot\>z|)>-exp<around*|(|i\<cdot\>z|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|-sin<around*|(|z|)>>>>>
        </eqnarray*>
      </enumerate>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|z|)><rsup|2>+sin<around*|(|z|)><rsup|2>>|<cell|=>|<cell|<frac|<around*|(|exp<around*|(|i\<cdot\>z|)>+exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>|4>+<frac|<around*|(|exp<around*|(|i\<cdot\>z|)>-exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>|-4>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|<around*|(|exp<around*|(|i|)>|)><rsup|2>+<around*|(|exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>+2\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>-<around*|(|exp<around*|(|i\<cdot\>z|)>|)><rsup|2>-<around*|(|exp<around*|(|-i\<cdot\>z|)>|)><rsup|2>+2\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|4\<cdot\>exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|i\<cdot\>z|)>\<cdot\>exp<around*|(|-i\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|i\<cdot\>z-i\<cdot\>z|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|0|)>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
      </eqnarray*>

      <item>\ 

      <\enumerate>
        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|x|)>\<cdot\>cos<around*|(|y|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|2>\<cdot\><frac|exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>y|)>|2>-<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|2\<cdot\>i>\<cdot\><frac|exp<around*|(|i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>y|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>+<frac|1|4>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>+exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4>\<cdot\><around*|(|2\<cdot\>exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+2\<cdot\>exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x+i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\><around*|(|x+y|)>|)>+exp<around*|(|-i\<cdot\><around*|(|x+y|)>|)>|2>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|x+y|)>>>>>
        </eqnarray*>

        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|x|)>\<cdot\>cos<around*|(|y|)>+cos<around*|(|x|)>\<cdot\>sin<around*|(|y|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|2\<cdot\>i>\<cdot\><frac|exp<around*|(|i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>y|)>|2>+<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|2>\<cdot\><frac|exp<around*|(|i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>y|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4\<cdot\>i>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>+exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>+exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>+exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|4\<cdot\>i>\<cdot\><around*|(|2\<cdot\>exp<around*|(|i\<cdot\>x|)>\<cdot\>exp<around*|(|i\<cdot\>y|)>-2\<cdot\>exp<around*|(|-i\<cdot\>x|)>\<cdot\>exp<around*|(|-i\<cdot\>y|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x+i\<cdot\>y|)>-exp<around*|(|-i\<cdot\>x-i\<cdot\>y|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\><around*|(|x+y|)>|)>-exp<around*|(|-i\<cdot\><around*|(|x+y|)>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|x+y|)>>>>>
        </eqnarray*>
      </enumerate>

      <item>Let <math|x\<in\>\<bbb-R\>> then\ 

      <\enumerate>
        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|cos<around*|(|x|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|<wide|i\<cdot\>x|\<bar\>>|)>|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
          of exp (2)> (1)>>>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+<wide|exp<around*|(|i\<cdot\>x|)>|\<bar\>>|2>>>|<row|<cell|>|<cell|=>|<cell|<frac|2\<cdot\>Re<around*|(|exp<around*|(|i\<cdot\>x|)>|)>|2>>>|<row|<cell|>|<cell|=>|<cell|Re<around*|(|exp<around*|(|i\<cdot\>x|)>|)>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<bbb-R\>>>>>
        </eqnarray*>

        <item>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|sin<around*|(|x|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|<wide|i\<cdot\>x|\<bar\>>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|<wide|i\<cdot\>x|\<bar\>>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|2\<cdot\>i\<cdot\>Img<around*|(|exp<around*|(|i\<cdot\>x|)>|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|Img<around*|(|exp<around*|(|i\<cdot\>x|)>|)>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<bbb-R\>>>>>
        </eqnarray*>
      </enumerate>

      <item>Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|x|)>+i\<cdot\>sin<around*|(|x|)>>|<cell|=>|<cell|<frac|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>|2>+i\<cdot\><frac|exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|2\<cdot\>i>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|exp<around*|(|i\<cdot\>x|)>+exp<around*|(|-i\<cdot\>x|)>+exp<around*|(|i\<cdot\>x|)>-exp<around*|(|-i\<cdot\>x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|i\<cdot\>x|)>>>>>
      </eqnarray*>

      <item>Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||e<rsup|i\<cdot\>x>|\|>>|<cell|\<equallim\><rsub|<around*|(|9|)>>>|<cell|<around*|\||cos<around*|(|x|)>+i\<cdot\>sin<around*|(|x|)>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|cos<around*|(|x|)>,sin<around*|(|x|)>\<in\>\<bbb-R\>>>|<cell|cos<rsup|2><around*|(|x|)>+sin<rsup|2><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|6|)>>>|<cell|1>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  The next theorem shows that <math|cos:\<bbb-R\>\<rightarrow\>\<bbb-R\>> has
  a zero, this will allows us to define <math|\<pi\>> and show thqat
  <math|sin> and <math|cos> are periodically.

  <\theorem>
    <math|\<exists\>x<rsub|0>\<in\><around*|[|0,\<infty\>|[>> such that
    <math|cos<around*|(|x|)>=0>
  </theorem>

  <\proof>
    We proof this by contradiction so let assume that
    <math|\<forall\>x\<in\><around*|[|0,\<infty\>|[>> we have that
    <math|cos<around*|(|x|)>\<neq\>0>. If now there exists a
    <math|x\<in\><around*|[|0,\<infty\>|[>> such that
    <math|cos<around*|(|x|)>\<leqslant\>0\<less\>1\<equallim\><rsub|<text|<reference|trigoniometic
    properties> (3) >>cos<around*|(|0|)>\<Rightarrow\>0\<in\><around*|[|cos<around*|(|x|)>,1|]>>
    we have by the continuity of <math|exp> and the intermediate value
    theorem (see <reference|intermediate value theorem>) that there exists a
    <math|y\<in\><around*|[|x,1|]>> such that <math|cos<around*|(|y|)>=0>
    contradicting the assumption that <math|cos<around*|(|x|)>\<neq\>0>. So
    we conclude that <math|\<forall\>x\<in\><around*|[|0,\<infty\>|[><text|
    we have >0\<less\>cos<around*|(|x|)>,>as
    <math|sin<rprime|'><around*|(|x|)>=cos<around*|(|x|)>> we conclude that
    <math|\<forall\>x\<in\><around*|[|0,\<infty\>|[>>
    <math|sin<rprime|'><around*|(|x|)>\<gtr\>0> hence by <reference|strictly
    increasing function and derivative> we have that

    <\equation>
      <label|eq 17.20.003>sin:<around*|[|0,\<infty\>|[>\<rightarrow\><around*|[|0,\<infty\>|[><text|
      is strictly increasing>
    </equation>

    As <math|sin<around*|(|0|)>\<equallim\><rsub|<text|<reference|trigoniometric
    functions> (4)>>0> we conclude that\ 

    <\equation>
      <label|eq 17.21.003>\<forall\>x\<in\><around*|]|0,\<infty\>|[><text|
      that >0\<less\>sin<around*|(|x|)>
    </equation>

    Further we have by <reference|trigoniometic properties> (6) that
    <math|\<forall\>x\<in\>\<bbb-R\>> that
    <math|cos<rsup|2><around*|(|x|)>+sin<rsup|2><around*|(|x|)>=1> so that
    <math|<around*|\||cos<around*|(|x|)>|\|><rsup|2>=cos<rsup|2><around*|(|x|)>=1-sin<rsup|2><around*|(|x|)>\<leqslant\>1>
    so as <math|0\<leqslant\><around*|\||cos<around*|(|x|)>|\|>> and
    <math|<sqrt|>> is increasing (see <reference|square root is a strictly
    increasing function>) we have that <math|<around*|\||cos<around*|(|x|)>|\|>=<sqrt|<around*|\||cos<around*|(|x|)>|\|><rsup|2>>\<leqslant\><sqrt|1>=1>
    so that\ 

    <\equation>
      <label|eq 17.22.003>\<forall\>x\<in\>\<bbb-R\><text| we have
      >cos<around*|(|x|)>,-cos<around*|(|x|)>\<leqslant\>1
    </equation>

    We have then for <math|0\<less\>x\<less\>y> that if we take
    <math|C<rsub|sin<around*|(|x|)>>:<around*|[|0,x|]>\<rightarrow\>\<bbb-R\>>
    defined by <math|C<rsub|sin<around*|(|x|)>><around*|(|t|)>=sin<around*|(|x|)>>
    so that <math|\<forall\>t\<in\><around*|[|x,y|]>> we have
    <math|C<rsub|sin<around*|(|x|)>><around*|(|t|)>\<equallim\><rsub|<text|<reference|eq
    17.20.003>>>sin<around*|(|x|)>\<less\>sin<around*|(|t|)>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|sin<around*|(|x|)>\<cdot\><around*|(|y-x|)>>|<cell|\<equallim\><rsub|<text|<reference|property
      of integral>>>>|<cell|<big|int><rsub|x><rsup|y>C<rsub|sin<around*|(|x|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|C<rsub|sin<around*|(|x|)>><around*|(|t|)>\<leqslant\>sin<around*|(|t|)><text|
      and <reference|Rieman integral is increasing>>>>|<cell|<big|int><rsub|x><rsup|y>sin>>|<row|<cell|>|<cell|\<equallim\><rsub|cos<rprime|'>=-sin>>|<cell|-<big|int><rsub|x><rsup|y>cos<rprime|'>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|fundamental
      theorem of calculus (<reference|fundamental theorem of
      calculus>)>>>|<cell|-<around*|(|cos<around*|(|y|)>-cos<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|x|)>-cos<around*|(|y|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      17.22.003>>>>|<cell|2>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 17.23.003>\<forall\>x,y\<in\>\<bbb-R\> with
      0\<less\>x\<less\>y we have <around*|(|y-x|)>\<leqslant\><frac|2|sin<around*|(|x|)>>
    </equation>

    Take now <math|0\<less\>x> and take <math|y=<frac|2|sin<around*|(|x|)>>+x+1>
    then as <math|0\<less\>sin<around*|(|x|)>> we have that
    <math|0\<less\>x\<less\>y> and <math|y-x=<frac|2|sin<around*|(|x|)>>+1\<gtr\><frac|2|sin<around*|(|x|)>>\<geqslant\><rsub|<text|<reference|eq
    17.23.003>>><around*|(|y-x|)>> a contradiction. So our assumption is
    wrong and ther must exists a <math|x\<in\><around*|[|0,\<infty\>|[>> such
    that <math|cos<around*|(|x|)>=0>
  </proof>

  <\corollary>
    <label|zeroes of cos has a minimum><math|<around*|{|x\<in\><around*|[|0,.\<infty\>|[>\|cos<around*|(|x|)>=0|}>=cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    has a minimum
  </corollary>

  <\proof>
    Using the previous theorem we we have that
    <math|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>\<neq\>\<emptyset\>>
    so that by the conditionally completeness of the real numbers (see
    <reference|the reals are conditional complete>)
    <math|x<rsub|0>=cos<rsup|-1><around*|(|<around*|{|0|}>|)>> exists.
    Further as <math|<around*|{|0|}>> is closed (see <reference|every finite
    subset of a Hausdorff is closed>), <math|<around*|[|0,\<infty\>|[>> is
    closed (see <reference|[a,@@[ is closed>) and the continuity of
    <math|cos> it follows that <math|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    is closed. Assume now that <math|x<rsub|0>\<nin\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    then <math|x<rsub|0>\<in\>\<bbb-R\>\\<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
    a open set so that <math|\<exists\>\<delta\>\<gtr\>0> such that
    <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>=B<rsub|<around*|\|||\|>><around*|(|x<rsub|0>,\<delta\>|)>\<subseteq\>\<bbb-R\>\\<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
    proving that <math|<around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[><big|cap>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>=\<emptyset\>>.
    As <math|x<rsub|0>\<less\>x<rsub|0>+\<delta\>> there exists by the
    definition of a infinum a <math|y\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    such that <math|x<rsub|0>\<leqslant\>y\<less\>x<rsub|0>+\<delta\>>
    proving that <math|<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)><big|cap><around*|]|x<rsub|0>-\<delta\>,x<rsub|0>+\<delta\>|[>\<neq\>\<emptyset\>>
    a contradiction. So we must have that
    <math|x<rsub|0>\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    which as <math|\<forall\>y\<in\>cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>>
    we have <math|x<rsub|0>\<leqslant\>y> means that
    <math|x<rsub|0>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
  </proof>

  The above corollary allows us to define <math|\<pi\>> for the
  trigoniometric functions.

  <\definition>
    <label|pi><index|<math|\<pi\>>><dueto|<math|\<pi\>>><math|\<pi\>=2\<cdot\>min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
    so that <math|<frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>
    hence <math|cos<around*|(|<frac|\<pi\>|2>|)>=0> and
    <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we have
    <math|cos<around*|(|<frac|\<pi\>|2>|)>\<neq\>0>. Note that as
    <math|cos<around*|(|0|)>=1> we have that <math|0\<less\><frac|\<pi\>|2>>.
  </definition>

  Next we prove that <math|\<pi\>> and the trigoniometric functions have the
  usual properties

  <\theorem>
    <label|0\<less\>cos(x),sin(x)><math|We have>

    <\enumerate>
      <item><math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we have
      <math|0\<less\>cos<around*|(|x|)>> (hence as
      <math|cos<around*|(|<frac|\<pi\>|2>|)>=0> we have
      <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|]>> that
      <math|0\<leqslant\>cos<around*|(|x|)>>)

      <item><math|\<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|]>> we have
      <math|0\<less\>sin<around*|(|x|)>> (hence as
      <math|sin<around*|(|0|)>=0> we have
      <math|\<forall\>x\<in\><around*|[|0,<frac|\<pi\>|2>|]>> that
      <math|0\<leqslant\>sin<around*|(|x|)>>)
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume that <math|\<exists\>y\<in\><around*|[|0,<frac|\<pi\>|2>|[>>
      such that <math|cos<around*|(|y|)>\<leqslant\>0> then
      <math|cos<around*|(|y|)>\<less\>1\<equallim\><rsub|<text|<reference|trigoniometic
      properties> (3) >>cos<around*|(|0|)>> so using the intermediate value
      theorem (see <reference|intermediate value theorem>) there exists a
      <math|z\<in\><around*|[|0,y|]>> such that <math|cos<around*|(|z|)>=0>.
      Hence as <math|y\<less\><frac|\<pi\>|2>> we have found a
      <math|z\<in\><around*|[|0,<frac|\<pi\>|2>|[>> such that
      <math|cos<around*|(|z|)>=0> contradicting
      <math|<frac|\<pi\>|2>=min<around*|(|cos<rsup|-1><around*|(|<around*|{|0|}>|)><big|cap><around*|[|0,\<infty\>|[>|)>>.
      So we must have that <math|\<forall\>y\<in\><around*|[|0,<frac|\<pi\>|2>|[>>
      that <math|0\<less\>cos<around*|(|y|)>>

      <item>As <math|\<forall\>y\<in\><around*|[|0,<frac|\<pi\>|2>|[>> we
      have <math|sin<rprime|'><around*|(|x|)>\<equallim\><rsub|<text|<reference|trigoniometic
      properties> (2)>>cos<around*|(|x|)>\<gtr\>0> (by (1)) we have by
      <reference|strictly increasing function and derivative> that <math|sin>
      is strictly increasing on <math|<around*|[|0,<frac|\<pi\>|2>|[>> so
      that\ 

      <\equation>
        <label|eq 17.24.004>\<forall\>x\<in\><around*|]|0,<frac|\<pi\>|2>|[><text|
        we have >0\<less\>sin<around*|(|x|)>
      </equation>

      More special we have that for <math|0\<less\><frac|\<pi\>|4>\<less\><frac|\<pi\>|2>>
      that <math|0\<less\>sin<around*|(|<frac|\<pi\>|4>|)>>, then as
      <math|\<forall\>x\<in\><around*|[|<frac|\<pi\>|4>,<frac|\<pi\>|2>|]>>
      we have by (2) that <math|sin<rprime|'><around*|(|x|)>=cos<around*|(|x|)>\<geqslant\>0>
      that by <reference|strictly increasing function and derivative>
      <math|sin<around*|(|x|)>> is increasing on\ 
    </enumerate>
  </proof>

  <\theorem>
    We have the following properties for <math|\<pi\>> and the trigoniometric
    functions

    <\enumerate>
      <item><math|cos<around*|(|0|)>=1>

      <item><math|cos<around*|(|<frac|\<pi\>|2>|)>=0>

      <item><math|sin<around*|(|0|)>=0>

      <item><math|sin<around*|(|<frac|\<pi\>|2>|)>=1>

      <item><math|cos<around*|(|\<pi\>|)>=-1>

      <item><math|sin<around*|(|\<pi\>|)>=0>

      <item><math|cos<around*|(|2\<cdot\>\<pi\>|)>=1>

      <item><math|sin<around*|(|2\<cdot\>\<pi\>|)>=0>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have\ 

      <\enumerate>
        <item><math|sin<around*|(|x+2\<cdot\>\<pi\>|)>=sin<around*|(|x|)>>

        <item><math|cos<around*|(|x+2\<cdot\>p|)>=cos<around*|(|x|)>>
      </enumerate>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|exp<around*|(|i\<cdot\><around*|(|x+2\<cdot\>\<pi\>|)>|)>=exp<around*|(|i\<cdot\>x|)>>
      (or using the power notation <math|e<rsup|i\<cdot\><around*|(|x+2\<cdot\>\<pi\>|)>>=e<rsup|i\<cdot\>x>>)

      <item><math|exp<around*|(|i\<cdot\>\<pi\>|)>=-1<text| (or using the
      power notation >e<rsup|i\<cdot\>\<pi\>>=-1>) ( the most beautifull
      equation in the world because it shows how three funcamental constants
      <math|<around*|(|\<pi\>,e<text| and >1|)>> are related)
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This was already proved in <reference|trigoniometic properties>
      (3)

      <item>This follows from the definition of <math|<frac|\<pi\>|2>>

      <item>This was already proved in <reference|trigoniometic properties>
      (4)

      <item>Using <reference|trigoniometic properties> (6) we have that
      <math|cos<rsup|2><around*|(|<frac|\<pi\>|2>|)>+sin<rsup|2><around*|(|<frac|\<pi\>|2>|)>=1\<Rightarrowlim\><rsub|<around*|(|2|)>>sin<rsup|2><around*|(|<frac|\<pi\>|2>|)>=1>
      so that <math|sin<around*|(|<frac|\<pi\>|2>|)>=1\<vee\>sin<around*|(|<frac|\<pi\>|2>|)>=-1>,
      as <math|sin<around*|(|<frac|\<pi\>|2>|)>\<gtr\>1> (see
      <reference|0\<less\>cos(x),sin(x)>) it follows that
      <math|sin<around*|(|<frac|\<pi\>|2>|)>=1>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|\<pi\>|)>>|<cell|=>|<cell|cos<around*|(|<frac|\<pi\>|2>+<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|trigoniometic
        properties> (7)>>>|<cell|cos<around*|(|<frac|\<pi\>|2>|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>-sin<around*|(|<frac|\<pi\>|2>|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>
        and <around*|(|4|)>>>|<cell|0\<cdot\>0-1\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|-1>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sin<around*|(|\<pi\>|)>>|<cell|=>|<cell|sin<around*|(|<frac|\<pi\>|2>+<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|trigoniometic
        properties> (7)>>>|<cell|sin<around*|(|<frac|\<pi\>|2>|)>\<cdot\>cos<around*|(|<frac|\<pi\>|2>|)>+cos<around*|(|<frac|\<pi\>|2>|)>\<cdot\>sin<around*|(|<frac|\<pi\>|2>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>
        and <around*|(|4|)>>>|<cell|1\<cdot\>0-0\<cdot\>1>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|cos<around*|(|2\<cdot\>\<pi\>|)>>|<cell|=>|<cell|cos<around*|(|\<pi\>+\<pi\>|)>>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>-sin<around*|(|\<pi\>|)>\<cdot\>sin<around*|(|\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|5|)>
        and <around*|(|6|)>>>|<cell|<around*|(|-1|)>\<cdot\><around*|(|-1|)>-0\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|1>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sin<around*|(|2\<cdot\>\<pi\>|)>>|<cell|=>|<cell|sin<around*|(|\<pi\>+\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|trigoniometic
        properties> (7)>>>|<cell|sin<around*|(|\<pi\>|)>\<cdot\>cos<around*|(|\<pi\>|)>+cos<around*|(|\<pi\>|)>\<cdot\>sin<around*|(|\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|5|)>
        and <around*|(|6|)>>>|<cell|0\<cdot\><around*|(|-1|)>+<around*|(|-1|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|0>>>>
      </eqnarray*>

      <item> Let <math|x\<in\>\<bbb-R\>> then\ 

      <\enumerate>
        <item> <math|<tabular|<tformat|<table|<row|<cell|cos<around*|(|x+2\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<reference|trigoniometic
        properties> (7)>>>|<cell|cos<around*|(|x|)>\<cdot\>cos<around*|(|2\<cdot\>\<pi\>|)>-sin<around*|(|x|)>\<cdot\>sin<around*|(|2\<cdot\>\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|7|)>
        and <around*|(|8|)>>>|<cell|cos<around*|(|x|)>\<cdot\>1-sin<around*|(|x|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|cos<around*|(|x|)>>>>>>>

        <item> <math|<tabular|<tformat|<table|<row|<cell|sin<around*|(|x+2\<cdot\>\<pi\>|)>>|<cell|\<equallim\><rsub|<text|<reference|trigoniometic
        properties> (7)>>>|<cell|sin<around*|(|x|)>\<cdot\>cos<around*|(|2\<cdot\>\<pi\>|)>+cos<around*|(|x|)>\<cdot\>sin<around*|(|2\<cdot\>\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|7|)>
        and <around*|(|8|)>>>|<cell|sin<around*|(|x|)>\<cdot\>1+cos<around*|(|x|)>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|sin<around*|(|x|)>>>>>>>
      </enumerate>

      <item>Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<around*|(|i\<cdot\><around*|(|x+2\<cdot\>\<pi\>|)>|)>>|<cell|=>|<cell|cos<around*|(|x+2\<cdot\>\<pi\>|)>+i\<cdot\>sin<around*|(|x+2\<cdot\>\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|9|)>>>|<cell|cos<around*|(|x|)>+i\<cdot\>sin<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|i\<cdot\>x|)>>>>>
      </eqnarray*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|exp<around*|(|i\<cdot\>\<pi\>|)>>|<cell|=>|<cell|cos<around*|(|\<pi\>|)>+i\<cdot\>sin<around*|(|\<pi\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|5|)>
        <around*|(|6|)>>>|<cell|-1+i\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|-1>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|14>
    <associate|page-first|595>
    <associate|page-medium|paper>
    <associate|section-nr|7<uninit>>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|(a-b)+(c-d)=(a+c)-(b+d)|<tuple|16.21|606>>
    <associate|-sup A=inf -A|<tuple|16.27|609>>
    <associate|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y|<tuple|16.19|605>>
    <associate|0\<less\>cos(x),sin(x)|<tuple|17.49|684>>
    <associate|Abel-Dirichlet|<tuple|17.15|665>>
    <associate|Balls and convergence domains|<tuple|17.12|663>>
    <associate|Euler's number|<tuple|17.29|672>>
    <associate|Napierian|<tuple|17.33|673>>
    <associate|Power series|<tuple|17.2|661>>
    <associate|Young's inequality|<tuple|17.42|677>>
    <associate|a serie of extented positive reals converges always and is
    independent of the order|<tuple|16.110|654>>
    <associate|a-b=c-d=\<gtr\>a+d=c+b|<tuple|16.22|606>>
    <associate|absolute value in the extended reals|<tuple|16.28|610>>
    <associate|absolute value on the extended real
    properties|<tuple|16.30|610>>
    <associate|adding of positive extented reals|<tuple|16.24|607>>
    <associate|alternative definition of limit in the extented
    reals|<tuple|16.79|642>>
    <associate|alternative graph of sum of functions|<tuple|16.97|651>>
    <associate|associativity of inifinite series|<tuple|16.115|658>>
    <associate|associativity of series of extended reals|<tuple|16.113|656>>
    <associate|auto-1|<tuple|16|597>>
    <associate|auto-10|<tuple|16.32|611>>
    <associate|auto-11|<tuple|16.32|611>>
    <associate|auto-12|<tuple|16.32|611>>
    <associate|auto-13|<tuple|16.33|611>>
    <associate|auto-14|<tuple|16.33|611>>
    <associate|auto-15|<tuple|16.2.1|615>>
    <associate|auto-16|<tuple|16.39|615>>
    <associate|auto-17|<tuple|16.39|615>>
    <associate|auto-18|<tuple|16.39|615>>
    <associate|auto-19|<tuple|16.42|615>>
    <associate|auto-2|<tuple|16.1|597>>
    <associate|auto-20|<tuple|16.43|615>>
    <associate|auto-21|<tuple|16.44|615>>
    <associate|auto-22|<tuple|16.52|623>>
    <associate|auto-23|<tuple|16.52|623>>
    <associate|auto-24|<tuple|16.2.2|636>>
    <associate|auto-25|<tuple|16.60|636>>
    <associate|auto-26|<tuple|16.60|636>>
    <associate|auto-27|<tuple|16.64|638>>
    <associate|auto-28|<tuple|16.64|638>>
    <associate|auto-29|<tuple|16.2.3|649>>
    <associate|auto-3|<tuple|16.2|597>>
    <associate|auto-30|<tuple|16.116|659>>
    <associate|auto-31|<tuple|17|661>>
    <associate|auto-32|<tuple|17.1|661>>
    <associate|auto-33|<tuple|17.1.1|661>>
    <associate|auto-34|<tuple|17.4|661>>
    <associate|auto-35|<tuple|17.4|661>>
    <associate|auto-36|<tuple|17.8|662>>
    <associate|auto-37|<tuple|17.8|662>>
    <associate|auto-38|<tuple|17.1.2|663>>
    <associate|auto-39|<tuple|17.19|666>>
    <associate|auto-4|<tuple|16.8|599>>
    <associate|auto-40|<tuple|17.1.3|666>>
    <associate|auto-41|<tuple|17.29|672>>
    <associate|auto-42|<tuple|17.33|673>>
    <associate|auto-43|<tuple|17.33|673>>
    <associate|auto-44|<tuple|17.44|679>>
    <associate|auto-45|<tuple|17.44|679>>
    <associate|auto-46|<tuple|17.48|684>>
    <associate|auto-5|<tuple|16.8|599>>
    <associate|auto-6|<tuple|16.9|599>>
    <associate|auto-7|<tuple|16.9|599>>
    <associate|auto-8|<tuple|16.2|610>>
    <associate|auto-9|<tuple|16.32|611>>
    <associate|ball inclusion|<tuple|17.11|663>>
    <associate|closed sets in the extended reals|<tuple|16.34|612>>
    <associate|condition for supremum (infinum) to be
    infinite|<tuple|16.11|599>>
    <associate|convergence domain and balls|<tuple|17.7|662>>
    <associate|convergence domain of exponential function|<tuple|17.18|666>>
    <associate|convergence in real implies that lim inferior = lim
    superior|<tuple|16.69|639>>
    <associate|convergence of derived powerseries|<tuple|17.22|667>>
    <associate|convergence of powerseries (1)|<tuple|17.6|661>>
    <associate|convergence radius|<tuple|17.8|662>>
    <associate|countable sum of countable sums is a countable
    sum|<tuple|16.114|658>>
    <associate|d'Alembert|<tuple|17.17|665>>
    <associate|definition of limit in the extented reals|<tuple|16.70|640>>
    <associate|density of the extented reals|<tuple|16.7|599>>
    <associate|derivative of the exponential function|<tuple|17.24|670>>
    <associate|difference in extented reals|<tuple|16.18|605>>
    <associate|distributivity in the extented reals|<tuple|16.25|607>>
    <associate|eq 13.1.123|<tuple|16.6|612>>
    <associate|eq 13.1.300|<tuple|16.1|608>>
    <associate|eq 13.11.40|<tuple|16.18|643>>
    <associate|eq 13.12.40|<tuple|16.19|643>>
    <associate|eq 13.13.40|<tuple|16.20|643>>
    <associate|eq 13.14.41|<tuple|16.21|654>>
    <associate|eq 13.15.41|<tuple|16.22|655>>
    <associate|eq 13.16.41|<tuple|16.23|655>>
    <associate|eq 13.17.50|<tuple|16.30|658>>
    <associate|eq 13.2.123|<tuple|16.7|612>>
    <associate|eq 13.2.300|<tuple|16.2|608>>
    <associate|eq 13.3|<tuple|16.14|639>>
    <associate|eq 13.3.301|<tuple|16.3|609>>
    <associate|eq 13.4|<tuple|16.15|639>>
    <associate|eq 13.4.39|<tuple|16.10|637>>
    <associate|eq 13.5|<tuple|16.16|639>>
    <associate|eq 13.5.39|<tuple|16.11|637>>
    <associate|eq 13.6|<tuple|16.17|639>>
    <associate|eq 13.6.39|<tuple|16.12|637>>
    <associate|eq 13.7.39|<tuple|16.13|637>>
    <associate|eq 14.22.423|<tuple|16.24|656>>
    <associate|eq 14.23.409|<tuple|16.31|659>>
    <associate|eq 14.23.424|<tuple|16.26|657>>
    <associate|eq 14.23.425|<tuple|16.25|656>>
    <associate|eq 14.24.409|<tuple|16.32|659>>
    <associate|eq 14.24.424|<tuple|16.27|657>>
    <associate|eq 14.25.411|<tuple|16.33|659>>
    <associate|eq 14.25.424|<tuple|16.28|657>>
    <associate|eq 14.26.424|<tuple|16.29|657>>
    <associate|eq 14.4.472|<tuple|16.4|609>>
    <associate|eq 14.5.472|<tuple|16.5|610>>
    <associate|eq 17.1.514|<tuple|17.7|666>>
    <associate|eq 17.1.515|<tuple|17.1|661>>
    <associate|eq 17.10.515|<tuple|17.10|667>>
    <associate|eq 17.11.515|<tuple|17.11|667>>
    <associate|eq 17.12.073|<tuple|17.12|669>>
    <associate|eq 17.13.073|<tuple|17.13|670>>
    <associate|eq 17.14.073|<tuple|17.14|670>>
    <associate|eq 17.15.073|<tuple|17.15|671>>
    <associate|eq 17.16.002|<tuple|17.16|671>>
    <associate|eq 17.17.002.1|<tuple|17.17|672>>
    <associate|eq 17.18.002|<tuple|17.18|673>>
    <associate|eq 17.19.002|<tuple|17.19|673>>
    <associate|eq 17.2.514|<tuple|17.8|666>>
    <associate|eq 17.2.515|<tuple|17.2|661>>
    <associate|eq 17.20.003|<tuple|17.25|683>>
    <associate|eq 17.20.020|<tuple|17.20|676>>
    <associate|eq 17.21.003|<tuple|17.26|683>>
    <associate|eq 17.21.020|<tuple|17.21|676>>
    <associate|eq 17.22.003|<tuple|17.27|683>>
    <associate|eq 17.22.020|<tuple|17.22|677>>
    <associate|eq 17.23.003|<tuple|17.28|683>>
    <associate|eq 17.23.020|<tuple|17.23|677>>
    <associate|eq 17.24.004|<tuple|17.29|684>>
    <associate|eq 17.24.020|<tuple|17.24|678>>
    <associate|eq 17.3.515|<tuple|17.3|662>>
    <associate|eq 17.4.515.1|<tuple|17.4|665>>
    <associate|eq 17.5.515|<tuple|17.5|665>>
    <associate|eq 17.6.515|<tuple|17.6|665>>
    <associate|eq 17.9.515|<tuple|17.9|667>>
    <associate|equivalence of limits on increasing (decreasing) sequences of
    extented reals|<tuple|16.75|641>>
    <associate|every non empty set in the extented reals has a
    limit|<tuple|16.10|599>>
    <associate|existance of lim inf and lim sup|<tuple|16.63|637>>
    <associate|exp exceeds every number|<tuple|17.31|672>>
    <associate|exp is a bijection|<tuple|17.32|673>>
    <associate|exp is convex|<tuple|17.28|672>>
    <associate|exp(x) is continuous|<tuple|17.25|670>>
    <associate|exp(x+y)=exp(x)exp(y)|<tuple|17.26|670>>
    <associate|exp(z)|<tuple|17.19|666>>
    <associate|exponential as power|<tuple|17.30|672>>
    <associate|extented reals|<tuple|16.2|597>>
    <associate|finite infinite sum means finite terms|<tuple|16.107|654>>
    <associate|finite sum of constants in the extented
    reals|<tuple|16.102|653>>
    <associate|finite sum of denumerable sums|<tuple|16.112|655>>
    <associate|finite sum of extented reals|<tuple|16.89|649>>
    <associate|finite sum of extented reals properties|<tuple|16.101|652>>
    <associate|finite sum of extented reals starting at n|<tuple|16.90|649>>
    <associate|finite sum of extented reals written as infinite
    sum|<tuple|16.108|654>>
    <associate|finite sum of limits of functions|<tuple|16.98|651>>
    <associate|finite sum of limits of scalar product with
    functions|<tuple|16.100|652>>
    <associate|finite sum of non negative extented reals is non
    negative|<tuple|16.91|649>>
    <associate|general strict positive power|<tuple|17.38|?>>
    <associate|general strict positive powers|<tuple|17.38|?>>
    <associate|generalized power|<tuple|17.35|674>>
    <associate|graph of sum of functions|<tuple|16.96|651>>
    <associate|increasing (decreasing) sequence|<tuple|16.60|636>>
    <associate|increasing (decreasing) sequence converges|<tuple|16.62|636>>
    <associate|independence of limit inf and limit sup of start
    index|<tuple|16.65|638>>
    <associate|inequality of Abel|<tuple|17.14|664>>
    <associate|infinity can not be a right limit|<tuple|16.41|615>>
    <associate|interchange infinite and finite sum|<tuple|16.111|654>>
    <associate|left (right) continuity|<tuple|16.52|623>>
    <associate|left and right limit implies limit|<tuple|16.48|621>>
    <associate|left limit of a function|<tuple|16.42|615>>
    <associate|left, right limit of sum and scalar product|<tuple|16.47|616>>
    <associate|lemma 15.75|<tuple|16.84|648>>
    <associate|lemma 17.2|<tuple|17.16|665>>
    <associate|lemma 17.38|<tuple|17.41|676>>
    <associate|lim inf -xn|<tuple|16.67|638>>
    <associate|lim inf and lim sup|<tuple|16.64|638>>
    <associate|lim sup xn+x|<tuple|16.66|638>>
    <associate|limit and absolut value|<tuple|16.80|643>>
    <associate|limit and continuity in the extented reals|<tuple|16.51|623>>
    <associate|limit at infinity of ascending (descending)
    functions|<tuple|16.56|632>>
    <associate|limit for f\<less\>=L or L\<less\>=f|<tuple|16.58|635>>
    <associate|limit for f\<less\>=g|<tuple|16.57|633>>
    <associate|limit n|<tuple|16.86|649>>
    <associate|limit of 1/f|<tuple|16.85|648>>
    <associate|limit of a constant function|<tuple|16.45|616>>
    <associate|limit of a function|<tuple|16.44|615>>
    <associate|limit of constant extented real|<tuple|16.72|640>>
    <associate|limit of constants|<tuple|16.78|641>>
    <associate|limit of finite sums in the extented reals|<tuple|16.94|650>>
    <associate|limit of functions and sequences|<tuple|16.77|641>>
    <associate|limit of monotone functions|<tuple|16.55|630>>
    <associate|limit points|<tuple|16.39|615>>
    <associate|limit points and plus or min infinity|<tuple|16.40|615>>
    <associate|limit xi+x|<tuple|16.73|640>>
    <associate|limits at infinity|<tuple|16.50|622>>
    <associate|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0|<tuple|16.87|649>>
    <associate|notation for limit of increasing/decreasing
    sequences|<tuple|16.76|641>>
    <associate|open sets and addition scalar
    multiplication|<tuple|16.36|613>>
    <associate|pi|<tuple|17.48|684>>
    <associate|power series 0|<tuple|17.3|661>>
    <associate|properties of exp (1)|<tuple|17.27|671>>
    <associate|properties of exp (2)|<tuple|17.43|679>>
    <associate|properties of general power|<tuple|17.39|674>>
    <associate|properties of general strict power|<tuple|17.37|?>>
    <associate|properties of log|<tuple|17.34|673>>
    <associate|properties of the limit in the extented
    reals|<tuple|16.81|643>>
    <associate|right limit|<tuple|16.43|615>>
    <associate|series and product with a scalar|<tuple|16.104|653>>
    <associate|series are increasing|<tuple|16.92|650>>
    <associate|series of positive extented reals is
    increasing|<tuple|16.105|653>>
    <associate|sets for basis of topology on the extented
    reals|<tuple|16.32|611>>
    <associate|special cases of limits|<tuple|16.53|623>>
    <associate|sum and order relation in the extented
    reals|<tuple|16.106|653>>
    <associate|sum from -infinity to infinity|<tuple|16.116|659>>
    <associate|sum of extented reals and product|<tuple|16.93|650>>
    <associate|sum of extented reals is indepenent of order the
    reals|<tuple|16.109|654>>
    <associate|sup of set and sum|<tuple|16.26|608>>
    <associate|supremum (infinum) of increasing (decreasing) sequence is
    indpendent of start|<tuple|16.74|640>>
    <associate|supremum, infinum of extented real set|<tuple|16.9|599>>
    <associate|supremum, infinum of real set|<tuple|16.8|599>>
    <associate|the limit inferior is lower then limit
    superior|<tuple|16.68|639>>
    <associate|the positive extented reals form a abelian
    semi-group|<tuple|16.23|607>>
    <associate|the topology on the extented reals is
    Hausdorff|<tuple|16.38|614>>
    <associate|topology on extented reals|<tuple|16.33|611>>
    <associate|trigoniometic properties|<tuple|17.45|679>>
    <associate|trigoniometric functions|<tuple|17.44|679>>
    <associate|uniqueness of limits in extented reals|<tuple|16.46|616>>
    <associate|usefull properties of open sets in the extented reals
    |<tuple|16.54|629>>
    <associate|x+z=y+z=\<gtr\>x=y|<tuple|16.16|602>>
    <associate|x\<less\>=y=\<gtr\>-y\<less\>=-x|<tuple|16.14|601>>
    <associate|x\<less\>=y=\<gtr\>lx\<less\>=ly|<tuple|16.15|601>>
    <associate|x\<less\>=y=\<gtr\>x+z\<less\>=y+z|<tuple|16.17|604>>
    <associate|x^p is continuous|<tuple|17.40|676>>
    <associate|zero and convergentie domain|<tuple|17.5|661>>
    <associate|zeroes of cos has a minimum|<tuple|17.47|683>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|extented reals>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|sup<rsub|\<bbb-R\>>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|inf<rsub|\<bbb-R\>>>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|sup>>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|inf>>|<pageref|auto-7>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|\<bbb-R\>>>>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|\<infty\>>>>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|-\<infty\>>>>|<pageref|auto-11>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>>|<pageref|auto-12>>

      <tuple|<tuple|topology on <with|mode|<quote|math>|<wide|\<bbb-R\>|\<bar\>>>>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>>|<pageref|auto-14>>

      <tuple|<tuple|left limit point>|<pageref|auto-16>>

      <tuple|<tuple|right limit point>|<pageref|auto-17>>

      <tuple|<tuple|limit point>|<pageref|auto-18>>

      <tuple|<tuple|left limit of a function>|<pageref|auto-19>>

      <tuple|<tuple|right limit of a function>|<pageref|auto-20>>

      <tuple|<tuple|limit of a function>|<pageref|auto-21>>

      <tuple|<tuple|left continuity>|<pageref|auto-22>>

      <tuple|<tuple|right continuity>|<pageref|auto-23>>

      <tuple|<tuple|increasing sequence>|<pageref|auto-25>>

      <tuple|<tuple|decreasing sequence>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>x<rsub|i>>>|<pageref|auto-30>>

      <tuple|<tuple|convergence domain>|<pageref|auto-34>>

      <tuple|<tuple|absolute convergence domain>|<pageref|auto-35>>

      <tuple|<tuple|convergence radius>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>>>|<pageref|auto-37>>

      <tuple|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>>|<pageref|auto-39>>

      <tuple|<tuple|Euler's number>|<pageref|auto-41>>

      <tuple|<tuple|Napierian logarithm>|<pageref|auto-42>>

      <tuple|<tuple|<with|mode|<quote|math>|log>>|<pageref|auto-43>>

      <tuple|<tuple|<with|mode|<quote|math>|cos<around*|(|x|)>>>|<pageref|auto-44>>

      <tuple|<tuple|<with|mode|<quote|math>|sin<around*|(|x|)>>>|<pageref|auto-45>>

      <tuple|<tuple|<with|mode|<quote|math>|\<pi\>>>|<pageref|auto-46>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>The
      extended real numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      16.1<space|2spc>Extented reals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      16.2<space|2spc>Topology on <with|mode|<quote|math>|<wide|\<bbb-R\>|\<bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      <with|par-left|<quote|1tab>|16.2.1<space|2spc>Limit of functions in
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-15>>

      <with|par-left|<quote|1tab>|16.2.2<space|2spc>Sequences in
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|16.2.3<space|2spc>Series in
      <with|mode|<quote|math>|<wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>The
      exponential function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-31><vspace|0.5fn>

      17.1<space|2spc>Power series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-32>

      <with|par-left|<quote|1tab>|17.1.1<space|2spc>Definition and
      convergence domains <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>>

      <with|par-left|<quote|1tab>|17.1.2<space|2spc>Convergence criteria
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-38>>

      <with|par-left|<quote|1tab>|17.1.3<space|2spc>Differentiation of power
      series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-40>>
    </associate>
  </collection>
</auxiliary>