<TeXmacs|2.1.1>

<project|Book.tm>

<style|<tuple|book|old-dots|old-lengths|preview-ref>>

<\body>
  <assign|chapter-nr|16>

  <chapter|The extended real numbers>

  <section|Extented reals>

  In measure theory we have to work with series of positive real numbers that
  will not always convert. By extending the set of the real numbers we are
  able to deal with these series, in addition the supremum and infinum of non
  empty sets will always exists. The disadvantage that we will encounter is
  that the sum of extended reals is not always well defined.

  First we extend the set of the reals with two non real numbers
  <math|\<infty\>> and <math|-\<infty\>>.

  <\lemma>
    There exists at least two sets that are not a element of
    <math|\<bbb-R\>>.
  </lemma>

  <\proof>
    Using the definition of the real numbers [see <reference|dedekind's cut>
    and <reference|the real numbers>] we have that
    <math|\<emptyset\>\<nin\>\<bbb-R\>> and <math|\<bbb-Q\>\<nin\>\<bbb-R\>>.
  </proof>

  Using the above lemma and the fact that a set is by definition a element
  the following definition of extended reals make sense

  <\definition>
    <label|extented reals><index|extented reals>The set
    <math|<wide|\<bbb-R\>|\<wide-bar\>>=\<bbb-R\><big|cup><around*|{|\<infty\>,-\<infty\>|}>>
    where <math|\<infty\>,-\<infty\>\<nin\>\<bbb-R\>> and
    <math|\<infty\>\<neq\>-\<infty\>>
  </definition>

  The original real numbers are now called finite real numbers in the set of
  the extended reals

  <\definition>
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> is finite iff
    <math|x\<in\>\<bbb-R\>> (or in other words
    <math|x\<neq\>\<infty\>,-\<infty\>>)
  </definition>

  We extend now the order relation <math|\<leqslant\><rsub|\<bbb-R\>>> on
  <math|\<bbb-R\>> [see <reference|the set of reals is fully-ordered>] to a
  order relation on <math|<wide|\<bbb-R\>|\<wide-bar\>>> that will make
  <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
  a fully ordered set. By doing so we will show that as a benefit every non
  empty set in <math|<wide|\<bbb-R\>|\<wide-bar\>>> has a supremum and a
  infinum.

  <\definition>
    Given the fully ordered set <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\><rsub|\<bbb-R\>>|\<rangle\>>>
    [see <reference|the set of reals is fully-ordered>] define
    <math|\<leqslant\>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>
    by\ 

    <\enumerate>
      <item><math|-\<infty\>\<leqslant\>\<infty\>>\ 

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
    <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
    is fully ordered
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|reflexitivity>The following cases occurs for
      <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>

      <\description>
        <item*|<math|x=\<infty\>>>then by definition <math|x\<leqslant\>x>

        <item*|<math|x=-\<infty\>>>then by definition <math|x\<leqslant\>x>

        <item*|<math|x\<in\>\<bbb-R\>>>then as
        <math|x\<leqslant\><rsub|\<bbb-R\>>x\<Rightarrow\>x\<leqslant\>x>
      </description>

      proving reflexitivity.

      <item*|anti-symmetry>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      with <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x> then the following
      cases must be considered for <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>:\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then <math|x=y>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then as by the
        definition <math|y\<nleqslant\>x> this case will not apply.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then as by
        definition <math|y\<nleqslant\>x> this case does not apply

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then as by definition
        <math|x\<nleqslant\>y> this case does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then <math|x=y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then asby
        definition <math|x\<nleqslant\>y> the case does not apply

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then as by
        definition <math|x\<nleqslant\>y> this case does not apply

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then as by
        definiton <math|y\<nleqslant\>x> this case does not apply

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then by
        defintion <math|x\<leqslant\><rsub|R>y> and
        <math|y\<leqslant\><rsub|R>x> from which it follows that <math|x=y>
      </description>

      so in all the cases where <math|x\<leqslant\>y\<wedge\>y\<leqslant\>x>
      we have <math|x=y>

      <item*|transitivity>Let <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      with <math|x\<leqslant\>y\<wedge\>y\<leqslant\>z> then the following
      cases must be considered for <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>>:

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
      <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>:\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x=-\<infty\>\<wedge\>x=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|y\<leqslant\>x>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|y\<leqslant\>x>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|y\<leqslant\>x>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then either
        <math|x\<leqslant\><rsub|R>y\<Rightarrow\>x\<leqslant\>y> or
        <math|y\<leqslant\><rsub|R>x\<Rightarrow\>y\<leqslant\>x>
      </description>

      so in all possible cases we have either <math|x\<leqslant\>y> or
      <math|y\<leqslant\>x>
    </description>
  </proof>

  <\proposition>
    <label|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf and y\<less\>\<gtr\>-inf>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that <math|x\<less\>y>
    then <math|x\<neq\>\<infty\>> and <math|y\<neq\>-\<infty\>>
  </proposition>

  <\proof>
    Assume that <math|x=\<infty\>> then by definition
    <math|y\<leqslant\>x\<Rightarrowlim\><rsub|x\<less\>y>y\<less\>y> a
    contradiction so we must have that <math|x\<neq\>\<infty\>>. Assume that
    <math|y=-\<infty\>> then by definiton
    <math|y\<leqslant\>x\<Rightarrowlim\><rsub|x\<less\>y>\<Rightarrow\>y\<less\>y>
    a contradiction so we must have that <math|y\<neq\>-\<infty\>>.
  </proof>

  Some of the properties of the real numbers (like the density of the
  rational numbers in the set of real numbers still apply for extended real
  numbers).

  <\proposition>
    <label|x\<less\>y=\<gtr\>x+1/n\<less\>y>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<bar\>>> with <math|x\<less\>y> then
    <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|x+<frac|1|n>\<less\>y>
  </proposition>

  <\proof>
    As <math|x\<less\>y> we can not have <math|y=-\<infty\>> [see
    <reference|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf and
    y\<less\>\<gtr\>-inf>i], so we must only consider the following cases for
    <math|x,y>:

    <\description>
      <item*|<math|y\<in\>\<bbb-R\>>>As <math|x\<less\>y> we can not have
      <math|x=\<infty\>> [see <reference|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf
      and y\<less\>\<gtr\>-inf>], so we must have for <math|x> either\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then using <reference|consequence of
        the archimedean property for the reals> there exists a
        <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|x\<less\>x+<frac|1|n>\<less\>y>

        <item*|<math|x=-\<infty\>>>then for <math|n=2\<in\>\<bbb-N\><rsub|0>>
        we have <math|x+<frac|1|n>=-\<infty\>+<frac|1|2>=-\<infty\>\<less\>y>
      </description>

      <item*|<math|y=\<infty\>>>As <math|x\<less\>y> we can not have
      <math|x=\<infty\>> [see <reference|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf
      and y\<less\>\<gtr\>-inf>], so we must have for <math|x> either

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then for
        <math|n=2\<in\>\<bbb-N\><rsub|0>> we have
        <math|x+<frac|1|2>\<less\>\<infty\>=y>

        <item*|<math|x=-\<infty\>>>then for <math|n=2\<in\>\<bbb-N\><rsub|0>>
        we have <math|x+<frac|1|n>=-\<infty\>+<frac|1|2>=-\<infty\>\<less\>y>
      </description>
    </description>
  </proof>

  We have the following analog to the density of the rational numbers in
  <math|\<bbb-R\>>

  <\theorem>
    <label|density of the extented reals>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with <math|x\<less\>y> then
    <math|\<exists\>z\<in\>\<bbb-Q\>> such that <math|x\<less\>z\<less\>y>
  </theorem>

  <\proof>
    As <math|x\<less\>y> we have by <reference|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf
    and y\<less\>\<gtr\>-inf> that <math|x\<neq\>-\<infty\>>,
    <math|y\<neq\>\<infty\>> and <math|x\<neq\>y> So we have to consider only
    the following cases for <math|x> and <math|y>:

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then as
      <math|x\<less\>x+1> there exists by <reference|density theorem for the
      reals> a <math|z\<in\>\<bbb-Q\>> such that
      <math|x\<less\>z\<less\>x+1\<less\>\<infty\>=y><math|\<Rightarrow\>x\<less\>z\<less\>y>.

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>take then
      <math|z=0\<in\>\<bbb-Q\>\<Rightarrow\>x\<less\>z\<less\>y>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>using
      <reference|density theorem for the reals> there exists then a
      <math|z\<in\>\<bbb-Q\>> such that <math|x\<less\>x\<less\>y>.

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then as
      <math|y-1\<less\>y> there exists by <reference|density theorem for the
      reals> a <math|z\<in\>\<bbb-Q\>> such that
      <math|-\<infty\>\<less\>y-1\<less\>z\<less\>y> so that
      <math|x\<less\>z\<less\>y>.
    </description>
  </proof>

  We look now at the infinum and supremum on the extended reals. To avoid
  confusion with the infinum and supremum on the real numbers and the
  extended real numbers we introduce the following notation.

  <\notation>
    <label|supremum, infinum of real set><index|<math|sup<rsub|\<bbb-R\>>>><index|<math|inf<rsub|\<bbb-R\>>>>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\>\<bbb-R\>> be a non empty real set
    then <math|sup<rsub|\<bbb-R\>><around*|(|A|)>,inf<rsub|\<bbb-R\>><around*|(|A|)>>
    is the supremum and infinum of <math|A> in
    <math|<around*|\<langle\>|\<bbb-R\>,\<leqslant\><rsub|\<bbb-R\>>|\<rangle\>>>
    (where <math|\<leqslant\><rsub|\<bbb-R\>>> is the canonical order in
    <math|\<bbb-R\>> see <reference|order in the reals>)
  </notation>

  <\notation>
    <label|supremum, infinum of extented real
    set><index|<math|sup>><index|<math|inf>>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>> be a
    non empty extended real set then <math|sup<around*|(|A|)>>,
    <math|inf<around*|(|A|)>> is the supremum and infinum of <math|A> in
    <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
  </notation>

  We prove now that in <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,\<leqslant\>|\<rangle\>>>
  every non empty set has a supremum and infinum, which the primary reason
  that we introduced the set of the extended real numbers.

  <\theorem>
    <label|every non empty set in the extented reals has a limit>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>> then
    <math|sup<around*|(|A|)>> and <math|inf<around*|(|A|)>> exist. Further
    more we have for <math|A> the following exclusive cases possible\ 

    <\enumerate>
      <item>If <math|A=<around*|{|-\<infty\>|}>> then
      <math|sup<around*|(|A|)>=-\<infty\>>

      <item>If <math|\<infty\>\<in\>A> then
      <math|sup<around*|(|A|)>=\<infty\>>

      <item>If <math|\<infty\>\<nin\>A\<neq\><around*|{|\<infty\>|}>> then we
      have\ 

      <\enumerate>
        <item>If <math|><math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A
        we have x\<leqslant\>u> then <math|sup<around*|(|A|)>=sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>

        <item>If <math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A
        we have x\<leqslant\>u> then <math|sup<around*|(|A|)>=\<infty\>>
      </enumerate>

      <item>If <math|A=<around*|{|\<infty\>|}>> then
      <math|inf<around*|(|A|)>=\<infty\>>

      <item>If <math|-\<infty\>\<in\>A> then
      <math|inf<around*|(|A|)>=-\<infty\>>

      <item>If <math|-\<infty\>\<nin\>A\<neq\><around*|{|\<infty\>|}>> then
      we have

      <\enumerate>
        <item>If <math|\<exists\>l\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A
        we have l\<leqslant\>x> then <math|inf<around*|(|A|)>=inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>

        <item>If <math|\<forall\>l\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A
        such that l\<nleqslant\>x> then <math|inf<around*|(|A|)>=-\<infty\>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    Lets first consider the supremum then we must consider the following
    cases:

    <\description>
      <item*|<math|A=<around*|{|-\<infty\>|}>>>then as
      <math|-\<infty\>\<leqslant\>-\<infty\>>, <math|-\<infty\>> is trivially
      a upper bound, further if <math|u\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      is another upper bound then as <math|-\<infty\>\<leqslant\>u> we have
      that

      <\equation*>
        sup<around*|(|A|)>=-\<infty\>
      </equation*>

      <item*|<math|\<infty\>\<in\>A>>then trivially <math|\<infty\>> is a
      upper bound of <math|A> [actually of every set in <math|\<bbb-R\>>].
      Further if <math|u> is a another upper bound of <math|A> we must have
      that <math|\<infty\>\<leqslant\>u> [<math|\<infty\>\<in\>>A] so that

      <\equation*>
        sup<around*|(|A|)>=\<infty\>
      </equation*>

      <item*|<math|\<infty\>\<nin\>A\<neq\><around*|{|-\<infty\>|}>>>Now we
      consider the following cases for <math|A>:\ 

      <\description>
        <item*|<math|\<exists\>u\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A we
        have x\<leqslant\>u>>then <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>\<subseteq\>A>
        we have <math|x\<leqslant\>u\<Rightarrowlim\><rsub|x,u\<in\>\<bbb-R\>>x\<leqslant\><rsub|\<bbb-R\>>u>
        so that <math|A<big|cap>\<bbb-R\>> is bounded above [using
        <math|\<leqslant\><rsub|\<bbb-R\>>>. Hence as <math|\<bbb-R\>> is
        conditional complete [see <reference|the reals are conditional
        complete>] <math|S=sup<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>
        exists. Let <math|x\<in\>A> then we have as
        <math|\<infty\>\<nsubset\>A> <math|>either:

        <\description>
          <item*|<math|x\<in\>A<big|cap>\<bbb-R\>>>then as a supremum is a
          upper bound we have <math|x\<leqslant\><rsub|\<bbb-R\>>S\<Rightarrow\>x\<leqslant\>S>

          <item*|<math|x=-\<infty\>>>then <math|x\<leqslant\>S>
        </description>

        So we have that <math|S> is a upper bound of <math|A> [using
        <math|\<leqslant\>>]. Let <math|U> be another upper bound of <math|A>
        [using <math|\<leqslant\>>] then we have either:

        <\description>
          <item*|<math|U\<in\>\<bbb-R\>>>in this case as <math|U> is also a
          upper bound of <math|A<big|cap>\<bbb-R\>> [using
          <math|\<leqslant\>>] we have <math|\<forall\>a\<in\>A<big|cap>\<bbb-R\>>
          that <math|a\<leqslant\>u\<Rightarrowlim\><rsub|a,U\<in\>\<bbb-R\>>a\<leqslant\>U>.
          It follows that <math|U> is another upper bound of
          <math|A<big|cap>\<bbb-R\>> [using
          <math|\<leqslant\><rsub|\<bbb-R\>>>] so that
          <math|S\<leqslant\><rsub|\<bbb-R\>>U><math|>, hence
          <math|S\<leqslant\>U>.

          <item*|<math|U=\<infty\>>>then triviall <math|S\<leqslant\>U>

          <item*|<math|U=-\<infty\>>>then <math|\<forall\>x\<in\>A> we have
          <math|-\<infty\>\<leqslant\>x\<leqslant\>-\<infty\>> contradicting
          <math|A\<neq\><around*|{|-\<infty\>|}>> so this will not occur.
        </description>

        Hence in all valid cases we have <math|S\<leqslant\>U> which proves
        that\ 

        <\equation*>
          sup<around*|(|A|)>=sup <rsub|\<bbb-R\>><around*|(|A|)>
        </equation*>

        <item*|<math|\<forall\>u\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A
        such that x\<nleqslant\>u>>As <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
        we have <math|x\<leqslant\>\<infty\>>, <math|\<infty\>> is clearly a
        upper bound of <math|A> [using <math|\<leqslant\>>]. Let <math|u> be
        another upper bound of <math|A> [using <math|\<leqslant\>>] and
        assume that <math|\<infty\>\<nleqslant\>u>, so that
        <math|u\<less\>\<infty\>>, then we must have either:

        <\description>
          <item*|<math|u=-\<infty\>>>then <math|\<forall\>x\<in\>A> we have
          <math|-\<infty\>\<leqslant\>x\<leqslant\>-\<infty\>> contradicting
          <math|A\<neq\><around*|{|-\<infty\>|}>>.

          <item*|<math|u\<in\>\<bbb-R\>>>then <math|\<exists\>x\<in\>A> such
          that <math|x\<nleqslant\>u> contradicting the fact that <math|u> is
          a upper bound.
        </description>

        As in all cases we have a contradcition we must have that
        <math|u\<leqslant\>\<infty\>> which proves that\ 

        <\equation*>
          sup<around*|(|A|)>=\<infty\>
        </equation*>
      </description>
    </description>

    So in all possible cases for <math|A> we have that\ 

    <\equation>
      sup<around*|(|A|)> exists
    </equation>

    Now for the existance of the infinum we must consider the following
    cases:

    <\description>
      <item*|<math|A=<around*|{|\<infty\>|}>>>then as
      <math|\<infty\>\<leqslant\>\<infty\>>, <math|\<infty\>> is a lower
      bound of <math|A>, further if <math|l\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      is another lower bound then <math|l\<leqslant\>\<infty\>> which proves
      that

      <\equation*>
        inf<around*|(|A|)>=\<infty\>
      </equation*>

      <item*|<math|-\<infty\>\<in\>A>>then <math|-\<infty\>> is a lower bound
      of <math|A> [actually of every set in <math|\<bbb-R\>>]. If <math|l> is
      another lower bound of <math|A> then we must have
      <math|l\<leqslant\>-\<infty\>> so that\ 

      <\equation*>
        inf<around*|(|A|)>=-\<infty\>
      </equation*>

      <item*|<math|-\<infty\>\<nin\>A\<wedge\>A\<neq\><around*|{|\<infty\>|}>>>Then
      we must consider the following possible cases:

      <\description>
        <item*|<math|\<exists\>l\<in\>\<bbb-R\>\<vdash\>\<forall\>x\<in\>A we
        have l\<leqslant\>x>>then <math|\<forall\>x\<in\>A<big|cap>\<bbb-R\>\<subseteq\>A>
        we have <math|l\<leqslant\>x\<Rightarrowlim\><rsub|l,x\<in\>\<bbb-R\>>l\<leqslant\><rsub|\<bbb-R\>>x>
        so that <math|l> is a lower bound of <math|A<big|cap>\<bbb-R\>>
        [using <math|\<leqslant\><rsub|\<bbb-R\>>>]. Hence as
        <math|\<bbb-R\>> is conditional complete [see <reference|the reals
        are conditional complete>] <math|I=inf<rsub|\<bbb-R\>><around*|(|A<big|cap>\<bbb-R\>|)>>
        exists. Let <math|x\<in\>A> then we have as <math|-\<infty\>\<nin\>A>
        either:

        <\description>
          <item*|<math|x\<in\>A<big|cap>\<bbb-R\>>>then by the definition of
          a infinum we have <math|I\<leqslant\><rsub|\<bbb-R\>>x\<Rightarrow\>I\<leqslant\>x>

          <item*|<math|x=\<infty\>>>then <math|I\<leqslant\>x>
        </description>

        So it follows that <math|I> is a upper bound of <math|A> [using
        <math|\<leqslant\>>]. Let <math|L> be another lower bound of <math|A>
        [using <math|\<leqslant\>>] then we have either\ 

        <\description>
          <item*|<math|L\<in\>\<bbb-R\>>>then <math|L> is also a lower bound
          of <math|A<big|cap>\<bbb-R\>> [using <math|\<leqslant\>>], so that
          <math|\<forall\>a\<in\>A<big|cap>\<bbb-R\>> we have
          <math|L\<leqslant\>a\<Rightarrowlim\><rsub|a,L\<in\>\<bbb-R\>>L\<leqslant\><rsub|\<bbb-R\>>a>,
          proving that <math|L> is also a lower bound of
          <math|A<big|cap>\<bbb-R\>> [using
          <math|\<leqslant\><rsub|\<bbb-R\>>>] so that
          <math|L\<leqslant\><rsub|\<bbb-R\>>I>, from which it follows that
          <math|L\<leqslant\>I>

          <item*|<math|L=\<infty\>>>then <math|\<forall\>a\<in\>A> we have
          <math|\<infty\>\<leqslant\>a\<leqslant\>\<infty\>\<Rightarrow\>a=\<infty\>>
          contradicting <math|A\<neq\><around*|{|\<infty\>|}>>, so this case
          does not apply.

          <item*|<math|L=-\<infty\>>>then <math|L\<leqslant\>I>
        </description>

        So in all valid cases we have <math|L\<leqslant\>I> which proves that\ 

        <\equation*>
          inf<around*|(|A|)>=inf <rsub|\<bbb-R\>><around*|(|A|)>
        </equation*>

        <item*|<math|\<forall\>l\<in\>\<bbb-R\>\<vdash\>\<exists\>x\<in\>A
        such that l\<nleqslant\>x>>as <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
        we have <math|-\<infty\>\<leqslant\>x>, <math|-\<infty\>> is a lower
        bound of <math|A> [using <math|\<leqslant\>>]. Let <math|l> be
        another lower bound of <math|A> [using <math|\<leqslant\>>] and
        assume that <math|l\<nleqslant\>-\<infty\>> so that
        <math|-\<infty\>\<less\>l>. then we must have either

        <\description>
          <item*|<math|l=\<infty\>>>then <math|\<forall\>x\<in\>A> we have
          <math|\<infty\>\<leqslant\>x\<leqslant\>\<infty\>> contradicting
          <math|A=<around*|{|\<infty\>|}>>

          <item*|<math|l\<in\>\<bbb-R\>>>then <math|\<exists\>x\<in\>A> usch
          that <math|l\<nleqslant\>x> contradicting the fact that <math|l> is
          a lower bound,
        </description>

        As in all cases we have a contradiction we must have that
        <math|l\<leqslant\>-\<infty\>> which proves that

        <\equation*>
          inf<around*|(|A|)>=-\<infty\>
        </equation*>

        \ 
      </description>
    </description>

    So in all possible cases for <math|A> we have that\ 

    <\equation>
      inf<around*|(|A|)> exists
    </equation>
  </proof>

  <\corollary>
    <label|supremum of set of real numbers is ververy -ifinity>If
    <math|A\<subseteq\>\<bbb-R\>> then <math|sup<around*|(|A|)>\<neq\>-\<infty\>>
    and <math|inf<around*|(|A|)>\<neq\>\<infty\>>
  </corollary>

  <\proof>
    For <math|A\<subseteq\>\<bbb-R\>> we have
    <math|\<infty\>\<nin\>A\<neq\><around*|{|\<infty\>|}>> and
    <math|-\<infty\>\<nin\>A\<neq\><around*|{|-\<infty\>|}>> so that using
    <reference|every non empty set in the extented reals has a limit> we have
    <math|sup<around*|(|A|)>=\<infty\>\<vee\>sup<around*|(|A|)>\<in\>\<bbb-R\>>
    and <math|inf<around*|(|A|)>=-\<infty\>\<vee\>inf<around*|(|A|)>\<in\>\<bbb-R\>>.
    So <math|sup<around*|(|A|)>\<neq\>-\<infty\>> and
    <math|inf<around*|(|A|)>\<neq\>\<infty\>>.
  </proof>

  The next theorem shows the neccesary and sufficient contraint for the
  supremum and infinum to be not finite.\ 

  <\corollary>
    <label|condition for supremum (infinum) to be infinite>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>> then\ 

    <\enumerate>
      <item><math|sup<around*|(|A|)>=\<infty\>> if and only if
      <math|\<infty\>\<in\>A> or <math|\<forall\>u\<in\>\<bbb-R\>> there
      exists a <math|a\<in\>A<big|cap>\<bbb-R\>> with <math|a\<nleqslant\>u>
      [in other words <math|A<big|cap>\<bbb-R\>> is not bounded above using
      <math|\<leqslant\><rsub|\<bbb-R\>>>]

      <item><math|inf<around*|(|A|)>=-\<infty\>> if and only if
      <math|-\<infty\>\<in\>A> or <math|\<forall\>l\<in\>\<bbb-R\>> there
      exists a <math|a\<in\>A<big|cap>\<bbb-R\>> with <math|l\<nleqslant\>a>
      [in other words <math|A<big|cap>\<bbb-R\>> is not bounded below using
      <math|\<leqslant\><rsub|\<bbb-R\>>>]

      <item><math|sup<around*|(|A|)>=-\<infty\>> if and only if
      <math|A=<around*|{|-\<infty\>|}>>

      <item><math|inf*<around*|(|A|)>=\<infty\>> if and only if
      <math|A=<around*|{|\<infty\>|}>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from <reference|every non empty set in the extented
      reals has a limit> (2),{3.b)

      <item>This follows from <reference|every non empty set in the extented
      reals has a limit> (5),{6.b)

      <item>This follows from <reference|every non empty set in the extented
      reals has a limit> (5),{6.b)

      <item>This follows from <reference|every non empty set in the extented
      reals has a limit> (5),{6.b)
    </enumerate>
  </proof>

  We show now that the supremum (infinum) in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> is a extension of the supremum and
  infinum in <math|\<bbb-R\>> (if they exists)

  <\theorem>
    <label|sup and inf in real and extended reals>Let
    <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>> then\ 

    <\enumerate>
      <item>If <math|A\<subseteq\><around*|]|-\<infty\>,\<infty\>|]>> and
      <math|sup<around*|(|A|)>\<less\>\<infty\>> then
      <math|A\<subseteq\>\<bbb-R\>>, <math|sup<rsub|\<bbb-R\>><around*|(|A|)>>
      exists and <math|sup<around*|(|A|)>=sup<rsub|\<bbb-R\>><around*|(|A|)>>\ 

      <item>If <math|A\<subseteq\><around*|[|-\<infty\>,\<infty\>|[>> and
      <math|-\<infty\>\<less\>inf<around*|(|A|)>> then
      <math|A\<subseteq\>\<bbb-R\>>, <math|inf<rsub|\<bbb-R\>><around*|(|A|)>>
      exists and <math|inf<around*|(|A|)>=inf<rsub|\<bbb-R\>><around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|\<infty\>\<in\>A> then by the above theorem (see
      <reference|condition for supremum (infinum) to be infinite>) we have
      that <math|sup<around*|(|A|)>=\<infty\>> a contradiction so we have\ 

      <\equation*>
        A\<subseteq\>\<bbb-R\>
      </equation*>

      Further using <reference|every non empty set in the extented reals has
      a limit> we have as <math|sup<around*|(|A|)>\<less\>\<infty\>> that
      <math|sup<around*|(|A|)>=sup<rsub|\<bbb-R\>><around*|(|A|)>>.

      <item>If <math|-\<infty\>\<in\>A> then by the above theorem (see
      <reference|condition for supremum (infinum) to be infinite>) we have
      that <math|sup<around*|(|A|)>=\<infty\>> a contradiction so we have\ 

      <\equation*>
        A\<subseteq\>\<bbb-R\>
      </equation*>

      Further using <reference|every non empty set in the extented reals has
      a limit> we have as <math|-\<infty\>\<less\>inf<around*|(|A|)>> that
      <math|inf<around*|(|A|)>=inf<rsub|\<bbb-R\>><around*|(|A|)>>.
    </enumerate>
  </proof>

  <\note>
    The condition <math|A\<subseteq\><around*|]|-\<infty\>,\<infty\>|]>> in
    (1) above or <math|A\<subseteq\><around*|[|-\<infty\>,\<infty\>|[>> in
    (2) is needed for if <math|A=<around*|{|-\<infty\>|}>> then
    <math|A\<nsubseteq\>\<bbb-R\>> and <math|sup<around*|(|A|)>=-\<infty\>\<neq\>sup<rsub|\<bbb-R\>><around*|(|A|)>>
    and if <math|A=<around*|{|\<infty\>|}>> then
    <math|A\<subseteq\>\<bbb-R\>> and <math|inf<around*|(|A|)>=\<infty\>\<neq\>inf<rsub|\<bbb-R\>><around*|(|A|)>>.
  </note>

  <\convention>
    <label|convention of sup inf>For the rest of the document, if
    <math|A\<subseteq\>\<bbb-R\>> then <math|sup<around*|(|A|)>\<less\>\<infty\>>
    means <math|sup<rsub|\<bbb-R\>><around*|(|A|)>> exists and
    <math|-\<infty\>\<less\>inf<around*|(|A|)>> means
    <math|inf<rsub|\<bbb-R\>><around*|(|A|)>> exists. Where
    <math|sup<rsub|\<bbb-R\>><around*|(|A|)>\<in\>\<bbb-R\>> and
    <math|inf<rsub|\<bbb-R\>><around*|(|A|)>\<in\>\<bbb-R\>>. This is of
    course consistent with the above theorem.
  </convention>

  The avoid any confusion we note the sum, product and dvision on
  <math|\<bbb-R\>> as <math|+<rsub|\<bbb-R\>>>,
  <math|\<cdot\><rsub|\<bbb-R\>>>. and <math|/<rsub|\<bbb-R\>>> We will
  extend the algebraic operations on <math|\<bbb-R\>> to
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>, however it will not be possible to
  define <math|+> fully on <math|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>>.

  <\definition>
    On <math|<wide|\<bbb-R\>|\<wide-bar\>>> we \ define the <math|+> and
    <math|.> operations for the following cases

    <\enumerate>
      <item>The function <math|<around*|(|+|)>:<around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|\<infty\>,-\<infty\>|)>,<around*|(|-\<infty\>,\<infty\>|)>|}>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is defined by <math|<around*|(|+|)><around*|(|x,y|)>=x+y> where
      <math|+> is defined as follows:

      <\equation*>
        x+y=<choice|<tformat|<table|<row|<cell|\<infty\> if
        x=\<infty\>\<wedge\>y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>|}>>>|<row|<cell|-\<infty\>
        if x=-\<infty\>\<wedge\>y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|\<infty\>|}>>>|<row|<cell|\<infty\>
        if x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|\<infty\>|}>\<wedge\>y=\<infty\>>>|<row|<cell|-\<infty\>
        if x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>|}>\<wedge\>y=-\<infty\>>>|<row|<cell|x+<rsub|\<bbb-R\>>y
        if x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>>>>
      </equation*>

      Note: Using the above definition it is easy to see that if <math|x+y>
      exists then <math|y+x> exists and <math|x+y=y+x>.

      <item>The function <math|<around*|(|\<cdot\>|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is defined by <math|<around*|(|\<cdot\>|)><around*|(|x,y|)>> where
      <math|x\<cdot\>y> is defined as follows:\ 

      <\equation*>
        x\<cdot\>y=<choice|<tformat|<table|<row|<cell|\<infty\> if
        x=\<infty\>\<wedge\>0\<less\>y>>|<row|<cell|-\<infty\> if
        x=\<infty\>\<wedge\>y\<less\>0>>|<row|<cell|0 if
        x=\<infty\>\<wedge\>y=0>>|<row|<cell|-\<infty\> if
        x=-\<infty\>\<wedge\>0\<less\>y>>|<row|<cell|\<infty\> if
        x=-\<infty\>\<wedge\>y\<less\>0>>|<row|<cell|0 if
        x=-\<infty\>\<wedge\>y=0>>|<row|<cell|\<infty\> if
        \ 0\<less\>x\<wedge\>y=\<infty\>>>|<row|<cell|-\<infty\> if
        x\<less\>0\<wedge\>y=\<infty\>>>|<row|<cell|0 if
        x=0\<wedge\>y=\<infty\>>>|<row|<cell|-\<infty\> if
        0\<less\>x\<wedge\>y=-\<infty\>>>|<row|<cell|\<infty\> if
        x\<less\>0\<wedge\>y=-\<infty\>>>|<row|<cell|0 if
        x=0\<wedge\>y=-\<infty\>>>|<row|<cell|x\<cdot\><rsub|\<bbb-R\>>y if
        \ x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>>>>
      </equation*>

      <item>We define <math|<around*|(|-|)>:<wide|\<bbb-R\>|\<wide-bar\>>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      by <math|*<around*|(|-|)><around*|(|x|)>=<around*|(|-1|)>\<cdot\>x> and
      note <math|<around*|(|-|)><around*|(|x|)>> as <math|-x>. Using (2) we
      have then that\ 

      <\equation*>
        -x=<choice|<tformat|<table|<row|<cell|\<infty\> if
        x=-\<infty\>>>|<row|<cell|-\<infty\> if
        x=\<infty\>>>|<row|<cell|-x\<equallim\><rsub|def><around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x>>>>>
      </equation*>

      <item>Let <math|<around*|(|x,y|)>\<in\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\<times\><wide|\<bbb-R\>|\<wide-bar\>>|)>\\<around*|{|<around*|(|\<infty\>,\<infty\>|)>,<around*|(|-\<infty\>,-\<infty\>|)>|}>>
      then <math|x-y=x+<around*|(|-y|)>=x+<around*|(|<around*|(|-1|)>\<cdot\>y|)>>

      <item>Let <math|x\<in\><wide||\<wide-bar\>><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|0|}>>
      then

      <\equation*>
        <frac|1|x>=<choice|<tformat|<table|<row|<cell|1/<rsub|\<bbb-R\>>x if
        x\<in\>\<bbb-R\>\\<around*|{|0|}>>>|<row|<cell|0 if
        x\<in\><around*|{|-\<infty\>,\<infty\>|}>>>>>>
      </equation*>
    </enumerate>

    \ 

    <\note>
      The product of two extended numbers is alwasy defined, howver the sum
      is not defined for the cases <math|\<infty\>+<around*|(|-\<infty\>|)>>
      and <math|-\<infty\>+\<infty\>>.
    </note>
  </definition>

  <\lemma>
    <label|x.y \<less\> 0 or \<gtr\> 0>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have\ 

    <\enumerate>
      <item>If <math|0\<less\>x\<wedge\>0\<less\>y> then
      <math|0\<less\>x\<cdot\>y>

      <item>If <math|x\<less\>0\<wedge\>y\<less\>0> then
      <math|0\<less\>x\<cdot\>y>

      <item>If <math|x\<less\>0\<wedge\>0\<less\>y> then
      <math|x\<cdot\>y\<less\>0>

      <item>If <math|0\<less\>x\<wedge\>y\<less\>0> then
      <math|x\<cdot\>y\<less\>0>

      <item>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
      <math|0\<less\>x\<leqslant\>y> then
      <math|<frac|1|y>\<leqslant\><frac|1|x>>
    </enumerate>
  </lemma>

  <\proof>
    \ Take <math|\<bbb-R\><rsub|+>=<around*|{|x\<in\>\<bbb-R\>\|0\<less\>x|}>>
    and <math|\<bbb-R\><rsub|->=<around*|{|x\<in\>\<bbb-R\>\|x\<less\>0|}>>

    <\enumerate>
      <item>If <math|0\<less\>x\<wedge\>0\<less\>y> then we have either\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|0\<less\>x\<cdot\><rsub|\<bbb-R\>>y=x\<cdot\>y>
      </description>

      <item>If <math|x\<less\>0\<wedge\>y\<less\>y> then we have either then
      we have either\ 

      <\description>
        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|0\<less\>x\<cdot\><rsub|\<bbb-R\>>y=x\<cdot\>y>
      </description>

      <item>If <math|x\<less\>0\<wedge\>0\<less\>y> then we have either then
      we have either\ 

      <\description>
        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>x\<cdot\>y\<less\>0>

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>x\<cdot\>y\<less\>0>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y=\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>x\<cdot\>y\<less\>0>

        <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>then
        <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y\<less\>0>
      </description>

      <item>If <math|0\<less\>x\<wedge\>y\<less\>0> then we have either then
      we have either\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y=-\<infty\>>>then
        <math|x\<cdot\>y=-\<infty\>\<Rightarrow\>0\<less\>x\<cdot\>y>

        <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>then
        <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y\<less\>0>
      </description>

      <item>As <math|0\<less\>x\<leqslant\>y> we have for <math|x,y> to
      consider the following cases\ 

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|<frac|1|y>=0=<frac|1|x>> proving
        <math|<frac|1|y>\<leqslant\><frac|1|x>>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y=\<infty\>>>then
        as <math|0\<less\>x> we have <math|<frac|1|x>=1/<rsub|\<bbb-R\>>x\<gtr\>0=<frac|1|\<infty\>>=<frac|1|y>>
        proving <math|<frac|1|y>\<leqslant\><frac|1|x>>

        <item*|<math|x\<in\>\<bbb-R\>\\<around*|{|0|}>\<wedge\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>>then
        <math|<frac|1|y>=1/<rsub|\<bbb-R\>>y\<leqslant\><rsub|\<bbb-R\>>1/<rsub|\<bbb-R\>>x=<frac|1|x>>
        proving <math|<frac|1|y>\<leqslant\><frac|1|x>>
      </description>

      \ 
    </enumerate>
  </proof>

  <\proposition>
    <label|associativity of the product of extnded reals>We have the
    following properties for the product of extended real numbers\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have

      <\enumerate>
        <item><math|x\<cdot\>y=0> if and only if <math|x=0> or <math|y=0>

        <item><math|x\<cdot\>y\<in\>\<bbb-R\>\\<around*|{|0|}>> if and only
        if <math|x,y\<in\>\<bbb-R\>>

        <item><math|x\<cdot\>y=\<infty\>> if and only if

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|x=\<infty\>*\<wedge\>0\<less\>y|)>>|<cell|\<vee\>>|<cell|<around*|(|x=-\<infty\>\<wedge\>y\<less\>0|)>>>|<row|<cell|>|<cell|\<vee\>>|<cell|<around*|(|0\<less\>x\<wedge\>y=\<infty\>|)>>>|<row|<cell|>|<cell|\<vee\>>|<cell|<around*|(|x\<less\>0\<wedge\>y=-\<infty\>|)>>>>>
        </eqnarray*>

        <item><math|x\<cdot\>y=-\<infty\>> if and only if

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|x=-\<infty\>*\<wedge\>0\<less\>y|)>>|<cell|\<vee\>>|<cell|<around*|(|x=\<infty\>\<wedge\>y\<less\>0|)>>>|<row|<cell|>|<cell|\<vee\>>|<cell|<around*|(|0\<less\>x\<wedge\>y=-\<infty\>|)>>>|<row|<cell|>|<cell|\<vee\>>|<cell|<around*|(|x\<less\>0\<wedge\>y=\<infty\>|)>>>>>
        </eqnarray*>
      </enumerate>

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>> we have
      x\<cdot\>y=y\<cdot\>x>

      <item><math|\<forall\>x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have
      <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

      <item><math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have
      <math|1\<cdot\>x=x>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>\ 

        <\description>
          <item*|<math|\<Rightarrow\>>>If <math|x\<cdot\>y=0> then we must
          consider the following cases for <math|x>

          <\description>
            <item*|<math|x\<in\><around*|{|-\<infty\>,\<infty\>|}>>>then
            using the definition of <math|<around*|(|\<cdot\>|)>> we must
            have <math|y=0>\ 

            <item*|<math|x\<in\>\<bbb-R\>>>If
            <math|y\<in\><around*|{|-\<infty\>,\<infty\>|}>> then using the
            definition of the \ we must have that <math|x=0>, if
            <math|y\<in\>\<bbb-R\>> then <math|x\<cdot\>y=x\<cdot\><rsub|\<bbb-R\>>y>
            so that we must have <math|y=0> or <math|x=0>
          </description>

          so in all cases we have either <math|x=0> or <math|y=0>

          <item*|<math|\<Leftarrow\>>>this trivially follows from the
          definition of the product.
        </description>

        <item>this trivially follows from the defiition of the product

        <item>this trivially follows from the definition of the product

        <item>this trivially follows from the dediniton of the prodcut\ 
      </enumerate>

      <item>For <math|x\<cdot\>y> we have either

      <\description>
        <item*|<math|x\<cdot\>y=\<infty\>>>then using (1.c) we have either\ 

        <\description>
          <item*|<math|<around*|(|x=\<infty\>\<wedge\>0\<less\>y|)>>>then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|x=-\<infty\>\<wedge\>y\<less\>0|)>>>then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|0\<less\>x\<wedge\>y=\<infty\>|)>>>then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|x\<less\>0\<wedge\>y=-\<infty\>|)>>>then
          <math|y\<cdot\>x=\<infty\>=x\<cdot\>y>
        </description>

        <item*|<math|x\<cdot\>y=-\<infty\>>>then using (1.d) we have either\ 

        <\description>
          <item*|<math|<around*|(|x=-\<infty\>\<wedge\>0\<less\>y|)>>>then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|x=\<infty\>\<wedge\>y\<less\>0|)>>>then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|0\<less\>x\<wedge\>y=-\<infty\>|)>>>then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>

          <item*|<math|<around*|(|x\<less\>0\<wedge\>y=\<infty\>|)>>>then
          <math|y\<cdot\>x=-\<infty\>=x\<cdot\>y>
        </description>

        <item*|<math|x\<cdot\>y=0>>then using (1.a) we have either <math|x=0>
        so that <math|y\<cdot\>x=0=x\<cdot\>y> or <math|y=0> so that
        <math|y\<cdot\>x=0=x\<cdot\>y>

        <item*|<math|x\<cdot\>y\<in\>\<bbb-R\>\\<around*|{|0|}>>>then using
        (1.b) we have <math|x,y\<in\>\<bbb-R\>> so that
        <math|y\<cdot\>x=y\<cdot\><rsub|\<bbb-R\>>x=x\<cdot\><rsub|\<bbb-R\>>y=x\<cdot\>y>
      </description>

      <item>For <math|x\<cdot\>y> we have the following possibilities to
      consider :

      <\description>
        <item*|<math|x\<cdot\>y=\<infty\>>>then using (1.c) we have either\ 

        <\description>
          <item*|<math|<around*|(|x=\<infty\>\<wedge\>0\<less\>y|)>>>then for
          <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            \ <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|0\<less\>y\<cdot\>z> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>.

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|y\<cdot\>z\<less\>0> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|x=-\<infty\>\<wedge\>y\<less\>0|)>>>then
          for <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            \ <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|y\<cdot\>z\<less\>0> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>.

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|0\<less\>y\<cdot\>z> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|0\<less\>x\<wedge\>y=\<infty\>|)>>>then for
          <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            \ <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            <math|y\<cdot\>z=\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>.

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            <math|y\<cdot\>z=-\<infty\>> <math|> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|x\<less\>0\<wedge\>y=-\<infty\>|)>>>then
          for <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            \ <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            <math|y\<cdot\>z=-\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>.

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            <math|y\<cdot\>z=\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>
        </description>

        <item*|<math|x\<cdot\>y=-\<infty\>>>then using (1.d) we have either\ 

        <\description>
          <item*|<math|<around*|(|x=-\<infty\>\<wedge\>0\<less\>y|)>>>then
          for <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|0\<less\>y\<cdot\>z> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further using
            <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|y\<cdot\>z\<less\>0> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|x=\<infty\>\<wedge\>y\<less\>0|)>>>then for
          <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            using <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|y\<cdot\>z\<less\>0> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> proving that
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further using
            <reference|x.y \<less\> 0 or \<gtr\> 0>
            <math|0\<less\>y\<cdot\>z> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> proving that
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|0\<less\>x\<wedge\>y=-\<infty\>|)>>>then
          for <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            <math|y\<cdot\>z=-\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            <math|y\<cdot\>z=\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|<around*|(|x\<less\>0\<wedge\>y=\<infty\>|)>>>then for
          <math|z> we must have either\ 

          <\description>
            <item*|<math|0\<less\>z>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>>, further
            <math|y\<cdot\>z=\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=-\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<less\>0>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>>, further
            <math|y\<cdot\>z=-\<infty\>> so that
            <math|x\<cdot\><around*|(|y\<cdot\>z|)>=\<infty\>> which proves
            that <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>
        </description>

        <item*|<math|x\<cdot\>y=0>>then using (1.a) we have either

        <\description>
          <item*|<math|x=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0\<cdot\>z=0\<cdot\><around*|(|y\<cdot\>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>

          <item*|<math|y=0>>then <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=0\<cdot\>z=x\<cdot\><around*|(|0\<cdot\>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>
        </description>

        <item*|<math|x\<cdot\>y\<in\>\<bbb-R\><rsub|+>>>then by (1.b)
        <math|x,y\<in\>\<bbb-R\>> so that using <reference|x.y \<less\> 0 or
        \<gtr\> 0> we have

        <\description>
          <item*|<math|x,y\<in\>\<bbb-R\><rsub|+>>>for <math|z> we must then
          consider the following cases:\ 

          <\description>
            <item*|<math|z=\<infty\>>>then as by <reference|x.y \<less\> 0 or
            \<gtr\> 0> <math|0\<less\>x\<cdot\>y> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=-\<infty\>>>then as by <reference|x.y \<less\> 0
            or \<gtr\> 0> <math|0\<less\>x\<cdot\>y> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<in\>\<bbb-R\>>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=x\<cdot\><rsub|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|x,y\<in\>\<bbb-R\><rsub|->>>for <math|z> we must then
          consider the following cases:\ 

          <\description>
            <item*|<math|z=\<infty\>>>then as by <reference|x.y \<less\> 0 or
            \<gtr\> 0> <math|0\<less\>x\<cdot\>y> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=-\<infty\>>>then as by <reference|x.y \<less\> 0
            or \<gtr\> 0> <math|0\<less\>x\<cdot\>y> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<in\>\<bbb-R\>>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=x\<cdot\><rsub|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>
        </description>

        <item*|<math|x\<cdot\>y\<in\>\<bbb-R\><rsub|->>>then by (1.b)
        <math|x,y\<in\>\<bbb-R\>> so that using <reference|x.y \<less\> 0 or
        \<gtr\> 0> we have

        <\description>
          <item*|<math|x\<in\>\<bbb-R\><rsub|+>\<wedge\>y\<in\>\<bbb-R\><rsub|->>>for
          <math|z> we must then consider the following cases:\ 

          <\description>
            <item*|<math|z=\<infty\>>>then as by <reference|x.y \<less\> 0 or
            \<gtr\> 0> <math|x\<cdot\>y\<less\>0> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=-\<infty\>>>then as by <reference|x.y \<less\> 0
            or \<gtr\> 0> <math|x\<cdot\>y\<less\>0> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<in\>\<bbb-R\>>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=x\<cdot\><rsub|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>

          <item*|<math|x\<in\>\<bbb-R\><rsub|->\<wedge\>y\<in\>\<bbb-R\><rsub|+>>>for
          <math|z> we must then consider the following cases:\ 

          <\description>
            <item*|<math|z=\<infty\>>>then as by <reference|x.y \<less\> 0 or
            \<gtr\> 0> <math|x\<cdot\>y\<less\>0> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=-\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z=-\<infty\>>>then as by <reference|x.y \<less\> 0
            or \<gtr\> 0> <math|x\<cdot\>y\<less\>0> we have
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=\<infty\>=x\<cdot\><around*|(|y\<cdot\>z|)>>

            <item*|<math|z\<in\>\<bbb-R\>>>then
            <math|<around*|(|x\<cdot\>y|)>\<cdot\>z=<around*|(|x\<cdot\><rsub|\<bbb-R\>>y|)>\<cdot\><rsub|\<bbb-R\>>z=x\<cdot\><rsub|\<bbb-R\>><around*|(|y\<cdot\><rsub|\<bbb-R\>>z|)>=x\<cdot\><around*|(|y\<cdot\>z|)>>
          </description>
        </description>
      </description>

      <item>For <math|x> we have either\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then
        <math|1\<cdot\>x=1\<cdot\><rsub|\<bbb-R\>>x=x>

        <item*|<math|x=\<infty\>>>then <math|1\<cdot\>x=\<infty\>=x>

        <item*|<math|x=-\<infty\>>>then <math|1\<cdot\>x=-\<infty\>=x>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|x\<less\>=y=\<gtr\>-y\<less\>=-x>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then we have

    <\enumerate>
      <item>If <math|-x=-y> then <math|>x=y

      <item>If <math|x\<leqslant\>y> then <math|-y\<leqslant\>-x>

      <item>If <math|x\<less\>y> then <math|-y\<less\>-x>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>For <math|x> we have to consider the following cases to consider

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then
        <math|-x=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x\<in\>\<bbb-R\>> so
        that <math|-y\<in\>\<bbb-R\>>. If <math|y=\<infty\>> or
        <math|y=-\<infty\>> then <math|-y\<nin\>\<bbb-R\>>, so we must have
        that <math|y\<in\>\<bbb-R\>>, but then we have that
        <math|-y=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>y>. Hence we have
        <math|<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>x=<around*|(|-1|)>\<cdot\><rsub|\<bbb-R\>>y\<Rightarrow\>x=y>

        <item*|<math|x=\<infty\>>>then <math|-x=-\<infty\>> so that
        <math|-y=-\<infty\>>. If <math|y\<in\>\<bbb-R\>> then
        <math|-y\<in\>\<bbb-R\>> and if <math|y=-\<infty\>> then
        <math|-y=\<infty\>>, so we must have that <math|y=\<infty\>> from
        which it follows that <math|x=y>.

        <item*|<math|x=-\<infty\>>>then <math|-x=\<infty\>> so that
        <math|-y=\<infty\>>. If <math|y\<in\>\<bbb-R\>> then
        <math|-y\<in\>\<bbb-R\>> and if <math|y=\<infty\>> then
        <math|-y=-\<infty\>>, so we must have that <math|y=-\<infty\>> from
        which it follows that <math|x=y>.
      </description>

      <item>If <math|x\<leqslant\>y> then we have to consider the following
      possibilities for <math|x>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then as <math|x\<leqslant\>y> we have
        to consider the following possibilities for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then using the properties of the
          reals we have <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>-x\<in\>\<bbb-R\>\<Rightarrow\><around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
        </description>

        <item*|<math|x=\<infty\>>>then as <math|x\<leqslant\>y> we have
        <math|y=\<infty\>> so that <math|-y=-\<infty\>\<leqslant\>-\<infty\>=-x>
        proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

        <item*|<math|x=-\<infty\>>>then as <math|x\<leqslant\>y> we have to
        consider the following possibilities

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then <math|-x=\<infty\>> so as
          <math|-y\<in\>\<bbb-R\>> <math|-y\<leqslant\>\<infty\>=-x> proving
          <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=\<infty\>>>then <math|-y=-\<infty\>\<less\>\<infty\>=-x>
          proving <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>

          <item*|<math|y=-\<infty\>>>then <math|-y=\<infty\>=-x> proving
          <math|<around*|(|-y|)>\<leqslant\><around*|(|-x|)>>
        </description>
      </description>

      <item>If <math|x\<less\>y> then <math|x\<neq\>y> and <math|x\<less\>y>,
      using (2) we have then that <math|<around*|(|-y|)>\<leqslant\>-x> and
      using (1) that <math|-x\<neq\>-y> proving that <math|-y\<less\>-x>
    </enumerate>
  </proof>

  <\corollary>
    <label|x\<less\>=y=\<gtr\>lx\<less\>=ly>If
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with <math|x\<leqslant\>y>
    then for <math|\<lambda\>\<in\><wide|\<bbb-R\>|\<wide-bar\>>> we have\ 

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
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>

          <item*|<math|x\<in\>\<bbb-R\>>>then as <math|-\<infty\>\<less\>x>
          we must have that <math|-\<infty\>\<less\>y>, so for <math|y> to
          consider either

          <\description>
            <item*|<math|y=\<infty\>>>then
            <math|\<lambda\>\<cdot\>y=\<infty\>> so that
            <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>

            <item*|<math|y\<in\>\<bbb-R\>>>then as
            <math|x\<leqslant\><rsub|\<bbb-R\>>y> we have using
            \ <reference|properties of positive, negative real numbers> that
            <math|\<lambda\>\<cdot\>x\<leqslant\><rsub|\<bbb-R\>>\<lambda\>\<cdot\>y>
            proving <math|\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>.
          </description>

          <item*|<math|x=\<infty\>>>then <math|y\<equallim\><rsub|x\<leqslant\>y>\<infty\>>
          hence <math|\<lambda\>\<cdot\>x=\<infty\>=\<lambda\>\<cdot\>y\<Rightarrow\>\<lambda\>\<cdot\>x\<leqslant\>\<lambda\>\<cdot\>y>
        </description>

        <item*|<math|\<lambda\>=\<infty\>>>then for <math|x> we have either

        <\description>
          <item*|<math|x=-\<infty\>>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>\ 

          <item*|<math|x\<in\>\<bbb-R\><rsub|->>>then
          <math|\<lambda\>\<cdot\>x=-\<infty\>\<leqslant\>\<lambda\>\<cdot\>y>

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
      <math|0\<leqslant\><around*|(|-\<lambda\>|)>> then by (1)
      <math|<around*|(|-\<lambda\>|)>\<cdot\>x\<leqslant\><around*|(|-\<lambda\>|)>\<cdot\>y>,<space|1em>Using
      <reference|x\<less\>=y=\<gtr\>-y\<less\>=-x> we have that
      <math|<around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>y|)>|)>\<leqslant\><around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>x|)>|)>>.
      As

      <\equation*>
        <around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>y|)>|)>\<equallim\><rsub|def><around*|(|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|<around*|(|-1|)>\<cdot\>\<lambda\>|)>\<cdot\>y|)>|)>\<equallim\><rsub|<text|<reference|associativity
        of the product of extnded reals>>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)><around*|(|\<lambda\>\<cdot\>y|)>=\<lambda\>\<cdot\>y
      </equation*>

      and

      <\equation*>
        <around*|(|-<around*|(|<around*|(|-\<lambda\>|)>\<cdot\>x|)>|)>\<equallim\><rsub|def><around*|(|<around*|(|-1|)>\<cdot\><around*|(|<around*|(|<around*|(|-1|)>\<cdot\>\<lambda\>|)>\<cdot\>x|)>|)>\<equallim\><rsub|<text|<reference|associativity
        of the product of extnded reals>>><around*|(|<around*|(|-1|)>\<cdot\><around*|(|-1|)>|)><around*|(|\<lambda\>\<cdot\>x|)>=\<lambda\>\<cdot\>x
      </equation*>

      it follows that

      <\equation*>
        \<lambda\>\<cdot\>y\<less\>\<lambda\>\<cdot\>x
      </equation*>
    </enumerate>
  </proof>

  We have to be very carefull if we do sums on elements of
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> for example if <math|x=10,y=4> and
  <math|z=\<infty\>> then <math|x+z=y+z=\<infty\>> however <math|x\<neq\>y>,
  also <math|x+z\<leqslant\>y+z> however <math|x\<nleqslant\>y>. The
  following theorems shows what is possible.

  <\theorem>
    <label|x+z=y+z=\<gtr\>x=y>If <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    and <math|z\<in\>\<bbb-R\>> then we have\ 

    <\enumerate>
      <item>if <math|x+z=y+z> we have <math|x=y>

      <item>if <math|x+z\<leqslant\>y+z> we have <math|x\<leqslant\>y>

      <item>if <math|x+z\<less\>y+z> we have <math|x\<less\>y>

      <item>if <math|x+z=y> we have <math|x=y-z\<equallim\><rsub|def>y+<around*|(|-z|)>>
      [where <math|y-z> is well defined]

      <item>if <math|x+z\<leqslant\>y> we have
      <math|x\<leqslant\>y-z\<equallim\><rsub|def>y+<around*|(|-z|)>> [where
      <math|y-z> is well defined]

      <item>if <math|x+z\<less\>y> we have
      <math|x\<less\>y-x\<equallim\><rsub|def>y+<around*|(|-z|)>> [where
      <math|y-z> is well defined]

      <item>if <math|x\<leqslant\>y+z> we have
      <math|x+<around*|(|-z|)>\<leqslant\>y>

      <item>if <math|x\<less\>y+z> we have <math|x+<around*|(|-z|)>\<less\>y>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Assume <math|x+z=y+z> and consider the following possibilities
      for <math|x,y>\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+<rsub|\<bbb-R\>>z=y+<rsub|\<bbb-R\>>z> so that <math|x=y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x+z\<in\>\<bbb-R\>> and <math|y+z=\<infty\>> giving the
        contradiction <math|x+z\<neq\>y+z> so this case does not apply.

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+z\<in\>\<bbb-R\>> and <math|y+z=-\<infty\>> giving the
        contradiction <math|x+z\<neq\>y+z> so this case does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+z=\<infty\>> and <math|y+x\<in\>\<bbb-R\>> giving the
        contradiction <math|x+z\<neq\>y+z> so this case does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then <math|x=y>.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x+z=\<infty\>\<neq\>-\<infty\>=y+z> so this does not apply.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+z=-\<infty\>> and <math|y+z\<in\>\<bbb-R\>> giving the
        contradiction <math|x+z\<neq\>y+z> so this does not apply.

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x+z=-\<infty\>\<neq\>y+z=\<infty\>> so this does not apply.

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
        <math|x+z\<nleqslant\>-\<infty\>=y+z> so this does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|\<infty\>=x+z\<nleqslant\>y+z> so this does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x\<leqslant\>y>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x+z=\<infty\>\<nleqslant\>-\<infty\>=y+z> so this does not
        apply.

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
        <math|x+z\<less\>y+z> we have using the properties of the real
        numbers that <math|x\<less\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then
        <math|x\<less\>y>

        <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then
        <math|x+z\<in\>\<bbb-R\>> and <math|y+z=-\<infty\>> so that
        <math|x+z\<nless\>y+z> so this does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x+z=\<infty\>> and <math|y+x\<in\>\<bbb-R\>> giving the
        contradiction <math|x+z\<nless\>y+z> so this does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then
        <math|x+z=y+z\<Rightarrow\>x+z\<nless\>y+z> so this does not apply.

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|\<infty\>=x+z\<nless\>y+z=-\<infty\>> so this does not apply.

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then
        <math|x\<less\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>>>then <math|x\<less\>y>

        <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then
        <math|x+z-\<infty\>\<nless\>-\<infty\>=y+z> so this does not apply.
      </description>

      So in all cases that apply we have <math|x\<less\>y>.

      <item>If <math|x+z=y> we have for <math|x> the following possibilities

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then <math|y\<in\>\<bbb-R\>> and we
        have <math|x=y+<rsub|\<bbb-R\>><around*|(|-z|)>=y+<around*|(|-z|)>>

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
          <math|x\<leqslant\>y+<rsub|\<bbb-R\>><around*|(|-z|)>=y+<around*|(|-z|)>>

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
        <item*|<math|x\<in\>\<bbb-R\>>>then we have as
        <math|x+z\<nless\>-\<infty\>> for <math|y> <math|> either

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then by the properties of the reals
          we have <math|x\<less\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x\<less\>\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>
        </description>

        <item*|<math|x=\<infty\>>>then <math|x+z=\<infty\>\<less\>y> a
        contradiction so this does not apply

        <item*|<math|x=-\<infty\>>>then we have as
        <math|x+z\<nless\>-\<infty\>> the following possibilities for
        <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x=-\<infty\>\<less\>y+<around*|(|-z|)>\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>

          <item*|<math|y=\<infty\>>>then <math|x=-\<infty\>\<less\>\<infty\>=\<infty\>+<around*|(|-z|)>=y+<around*|(|-z|)>\<Rightarrow\>x\<less\>y+<around*|(|-z|)>>
        </description>
      </description>

      so in all cases we have <math|x\<less\>y+<around*|(|-z|)>>

      <item>If <math|x\<leqslant\>y+z> then for <math|x> we have the
      following possibilities for <math|x>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then for <math|y> we have the
        following possibilities

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then
          <math|x+<around*|(|-z|)>\<leqslant\>y>

          <item*|<math|y=\<infty\>>>then <math|x+<around*|(|-z|)>\<leqslant\>\<infty\>=y\<Rightarrow\>x+<around*|(|-z|)>\<leqslant\>y>

          <item*|<math|y=-\<infty\>>>then as <math|x\<in\>\<bbb-R\>> that
          <math|x\<nleqslant\>-\<infty\>=y+z> a contradiction, so this case
          does not applly.
        </description>

        <item*|<math|x=\<infty\>>>then <math|y+z=\<infty\>> so that
        <math|y=\<infty\>> and <math|x+<around*|(|-z|)>=\<infty\>=y\<Rightarrow\>x+<around*|(|-z|)>\<leqslant\>y>

        <item*|<math|x=-\<infty\>>>then <math|x+<around*|(|-z|)>=-\<infty\>\<leqslant\>y>
        proving that <math|x+<around*|(|-z|)>\<leqslant\>y>
      </description>

      so in all cases we have <math|x+<around*|(|-z|)>\<leqslant\>y>

      <item>If <math|x\<less\>y+z> then we have the following possibilities
      for <math|x>

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then we have the following
        possibilities for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then by the properties of the real
          numbers we have <math|x+<around*|(|-z|)>\<less\>y>

          <item*|<math|y=\<infty\>>>then as
          <math|x+<around*|(|-z|)>\<in\>\<bbb-R\>> we have
          <math|x+<around*|(|-z|)>\<less\>y>

          <item*|<math|y=-\<infty\>>>then as <math|x\<in\>\<bbb-R\>> we have
          <math|x\<nless\>-\<infty\>=y+z> so this case does not apply
        </description>

        <item*|<math|x=-\<infty\>>>then we have the following possibilities
        for <math|y>

        <\description>
          <item*|<math|y\<in\>\<bbb-R\>>>then as
          <math|x+<around*|(|-z|)>=-\<infty\>\<less\>y>\ 

          <item*|<math|y=\<infty\>>>then <math|x+<around*|(|-z|)>=-\<infty\>\<less\>\<infty\>=y>

          <item*|<math|y=-\<infty\>>>then
          <math|x=-\<infty\>\<nless\>-\<infty\>=y+z> so this case does not
          apply.
        </description>

        <item*|<math|x=\<infty\>>>then <math|x=\<infty\>\<nless\>y+z> so this
        case does not apply
      </description>

      so in all cases we have <math|x+<around*|(|-z|)>\<less\>y>
    </enumerate>
  </proof>

  <\theorem>
    <label|x\<less\>=y=\<gtr\>x+z\<less\>=y+z>If
    <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|x\<leqslant\>y> then <math|x+z\<leqslant\>y+z> assuming that the
    sums are well defined. If <math|x\<less\>y> and <math|z\<in\>\<bbb-R\>>
    then <math|x+z\<less\>y+z>.
  </theorem>

  <\proof>
    We must consider the following possible cases (excluding the undefined
    sums and the cases where <math|x\<nleqslant\>y>

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
      using the properties of <math|\<bbb-R\>> we have
      <math|x+z\<leqslant\>y+z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
      <math|x+y\<leqslant\>\<infty\>=y+z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z\<leqslant\>\<infty\>=y+z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>then
      <math|x+z=\<infty\>=y+z\<Rightarrow\>x+u\<leqslant\>y+z>.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>as
      <math|y+z> is not well defined this does not apply.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>><math|x+z=\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>as
      <math|y+z> is not well defined this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>as
      <math|x\<nleqslant\>y> this does not apply.

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=-\<infty\>\<leqslant\>y+z>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=\<infty\>>>then
      <math|x+z=-\<infty\>\<less\>\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>\<wedge\>z=-\<infty\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=-\<infty\>\<less\>\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=\<infty\>>>as
      <math|x+z> is not well defined this does not apply.

      <item*|<math|x=-\<infty\>\<wedge\>y=\<infty\>\<wedge\>z=-\<infty\>>>as
      <math|y+z> is not well defined this does not apply.

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z\<in\>\<bbb-R\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=\<infty\>>>as
      <math|y+z> is not well defined this does not apply.

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>\<wedge\>z=-\<infty\>>>then
      <math|x+z=-\<infty\>=y+z\<Rightarrow\>x+z\<leqslant\>y+z>.
    </description>

    proving the first part of the theorem. For the second part if
    <math|x\<less\>y\<Rightarrow\>x\<leqslant\>y\<Rightarrowlim\><rsub|first
    part>x+z\<leqslant\>y+z>. Assume now that <math|x+z=y+z> then as
    <math|z\<in\>\<bbb-R\>> we have by the previous theorem [see
    <reference|x+z=y+z=\<gtr\>x=y>] that <math|x=y> contradicting
    <math|x\<less\>y> so we must have that <math|x+z\<less\>y+z>.
  </proof>

  <\corollary>
    <label|0\<less\>x and 0\<less\>y gives 0\<less\>x+y>Let
    <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> wit
    <math|0\<leqslant\>x\<wedge\>0\<less\>y> then <math|0\<leqslant\>x+y>
  </corollary>

  <\proof>
    As <math|0\<less\>x> we have by <reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z>
    that <math|y\<leqslant\>x+y> which as <math|0\<leqslant\>y> proves
    <math|0\<leqslant\>x+y>
  </proof>

  <\theorem>
    <label|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y>Let
    <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
    <math|0\<leqslant\>y>, <math|z=x+y> [where <math|x+y> is well defined]
    then we have <math|x\<leqslant\>z>
  </theorem>

  <\proof>
    As <math|x+y> is well defined we have to consider the following cases
    (taking in account that <math|0\<leqslant\>y>)

    <\description>
      <item*|<math|x,y\<in\>\<bbb-R\>>>as <math|0\<leqslant\>y> we have
      <math|x=x+0\<leqslant\><rsub|\<bbb-R\>>x+y=z\<Rightarrow\>x\<leqslant\>z>

      <item*|<math|x=\<infty\>,y\<in\>\<bbb-R\>>>as <math|z=x+y=\<infty\>=x>
      we have <math|x\<leqslant\>z>

      <item*|<math|x=-\<infty\>,y\<in\>\<bbb-R\>>>then <math|x\<leqslant\>z>

      <item*|<math|x\<in\>\<bbb-R\>,y=\<infty\>>>then
      <math|z=x+\<infty\>=\<infty\>> so that <math|x\<leqslant\>z>

      <item*|<math|x=\<infty\>,y=\<infty\>>>then
      <math|z=\<infty\>+\<infty\>=\<infty\>> so that <math|x\<leqslant\>z>
    </description>
  </proof>

  Although <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>>,+|\<rangle\>>>
  is not a group we can prove that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>,+|\<rangle\>>>
  where <math|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\|x\<geqslant\>0|}>>
  is a abelian semi-group [see <reference|semi-group>] which is important
  because then all the theorems about generalized sums and semi-groups are
  valid.

  <\theorem>
    <label|the positive extented reals form a abelian
    semi-group><math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>,+|\<rangle\>>>
    where <math|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\|x\<geqslant\>0|}>>
    forms a abelian semi-group
  </theorem>

  <\proof>
    First if <math|x,y\<in\><wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>> then we
    have [as <math|-\<infty\>\<less\>0>] either

    <\description>
      <item*|<math|x=\<infty\>\<vee\>y=\<infty\>>>then
      <math|x+y=\<infty\>\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>

      <item*|<math|x,y\<in\>\<bbb-R\><rsub|+>>>then as
      <math|0\<leqslant\>x,y> we have that
      <math|0\<leqslant\>x\<leqslant\>x+y\<Rightarrow\>x+y\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>
    </description>

    so that <math|+:<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>\<times\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>
    defined by <math|<around*|(|x,y|)>\<rightarrow\>x+y> is indeed a
    function.<space|1em>

    <\description>
      <item*|Neutral Element>First <math|0\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>,
      next let \ <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>> then we
      have [as <math|-\<infty\>\<less\>0>] either\ 

      <\description>
        <item*|<math|x\<in\>\<bbb-R\><rsub|+>>>then <math|x+0=0+x=x> [as
        <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a group with
        neutral element 0

        <item*|<math|x=\<infty\>>>then <math|\<infty\>+0=\<infty\>=\<infty\>+0>
      </description>

      so <math|0\<in\><wide|\<bbb-R\>|\<wide-bar\>>> is a neutral element.

      <item*|Associativity>Let <math|x,y,z\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
      then we have [as <math|-\<infty\>\<less\>0>] either

      <\description>
        <item*|<math|\<exists\>z\<in\><around*|{|x,y,z|}>\<vdash\>z=\<infty\>>>then
        <math|x+<around*|(|y+z|)>=\<infty\>=<around*|(|x+y|)>+z>

        <item*|<math|x,y,z\<in\>\<bbb-R\><rsub|+>>>then
        <math|x+<around*|(|y+z|)>=<around*|(|x+y|)>+z> [as
        <math|<around*|\<langle\>|\<bbb-R\>,+|\<rangle\>>> is a group
      </description>

      <item*|Commutativity>Let <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>
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

  We have also the distributive law in <math|<wide|\<bbb-R\>|\<wide-bar\>>>
  as is proved in the following theorem, but we have to be carefull because
  for example <math|\<infty\>\<cdot\><around*|(|1-3|)>=\<infty\>\<cdot\><around*|(|-2|)>=-\<infty\>>
  but <math|\<infty\>\<cdot\>1+\<infty\>\<cdot\><around*|(|-3|)>=\<infty\>+<around*|(|-\<infty\>|)>>
  which is not defined. So we must restrict the distributive law.

  <\theorem>
    <label|distributivity in the extented reals>Let
    <math|\<alpha\>\<in\>\<bbb-R\>>, <math|x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then if <math|x+y> is defined we have
    <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
  </theorem>

  <\proof>
    As <math|x+y> is well defined we have to consider only the following
    cases\ 

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y\<in\>\<bbb-R\>>>then
      <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><rsub|\<bbb-R\>><around*|(|x+<rsub|\<bbb-R\>>y|)>=\<alpha\>\<cdot\><rsub|\<bbb-R\>>x+<rsub|\<bbb-R\>>\<alpha\>\<cdot\><rsub|\<bbb-R\>>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        \ <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x\<in\>\<bbb-R\>\<wedge\>y=-\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=\<alpha\>\<cdot\>x+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<alpha\>\<cdot\>x+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>then for <math|\<alpha\>>
      we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=\<infty\>=\<infty\>+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>\<infty\>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=-\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=\<infty\>+\<alpha\>\<cdot\>y=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>

      <item*|<math|x=-\<infty\>\<wedge\>y=-\<infty\>>>then for
      <math|\<alpha\>> we have either

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\><around*|(|x+y|)>=0=0+0=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>.

        <item*|<math|0\<less\>\<alpha\>>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>

        <item*|<math|\<alpha\>\<less\>0>>then
        <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<infty\>=-\<infty\>+\<infty\>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
      </description>
    </description>

    So in all cases we have <math|\<alpha\>\<cdot\><around*|(|x+y|)>=\<alpha\>\<cdot\>x+\<alpha\>\<cdot\>y>
  </proof>

  The next two theorems show how the supremum and infinum behaves when a sum
  or product is involved.

  <\theorem>
    <label|sup of set and sum>Let <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
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
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item> As <math|y\<in\>\<bbb-R\>> we have that
      <math|\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> <math|x+y> is
      well defined and <math|sup<around*|(|A|)>+y>,
      <math|inf<around*|(|A|)>+y> is well defined.

      <\enumerate>
        <item><math|\<forall\>x\<in\>A> we have
        <math|x\<leqslant\>sup<around*|(|A|)>> so that by
        <reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z> we have
        <math|x+y\<leqslant\>sup<around*|(|A|)>+y> so that\ 

        <\equation>
          <label|eq 13.1.300>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<leqslant\>sup<around*|(|A|)>+y
        </equation>

        Assume now that <math|sup<around*|(|<around*|{|x+y\|y\<in\>A|}>|)>\<less\>sup<around*|(|A|)>+y\<Rightarrowlim\><rsub|y\<in\>\<bbb-R\><infix-and><text|<reference|x\<less\>=y=\<gtr\>x+z\<less\>=y+z>>>sup<around*|(|<around*|{|x+y\|y\<in\>A|}>|)>-y\<less\>sup<around*|(|A|)>>
        so by the definition of the supremum there exists a <math|z\<in\>A>
        such that <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>-y\<less\>z\<leqslant\>sup<around*|(|A|)>\<Rightarrowlim\><rsub|y\<in\>\<bbb-R\>
        and <text|<reference|x+z=y+z=\<gtr\>x=y>>>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<less\>z+y>
        a contradiction [as <math|z+y\<in\><around*|{|x+y\|y\<in\>A|}>>]. So
        we must have that <math|sup<around*|(|A|)>+y\<leqslant\>sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>>
        which together with <reference|eq 13.1.300> gives\ 

        <\equation*>
          sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y
        </equation*>

        <item><math|\<forall\>x\<in\>A> we have
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
        a contradiction [as <math|z+y\<in\><around*|{|x+y\|x\<in\>A|}>>]. So
        we must have that <math|in<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>\<leqslant\>inf<around*|(|A|)>+y>
        proving that\ 

        <\equation*>
          inf<around*|(|A|)>+y=inf<around*|(|<around*|{|x+y<around*|\||x\<in\>A|\|>|}>|)>
        </equation*>
      </enumerate>

      <item>For <math|y\<in\><around*|[|0,\<infty\>|]>> we have either\ 

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then by (1.a) we have that
        <math|sup<around*|(|A|)>+y> is well defined and
        <math|sup<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=sup<around*|(|A|)>+y>

        <item*|<math|y=\<infty\>>>then as
        <math|A\<subseteq\><around*|[|0,\<infty\>|]>> we have
        <math|\<forall\>a\<in\>A> that <math|a+y=\<infty\>> so that
        <math|<around*|{|a+y\|a\<in\>A|}>=<around*|{|\<infty\>|}>>, hence
        <math|sup<around*|(|A+y|)>=\<infty\>>, further
        <math|0\<leqslant\>sup<around*|(|A|)>\<Rightarrow\>sup<around*|(|A|)>\<neq\>-\<infty\>\<Rightarrow\>sup<around*|(|A|)>+y<text|
        is well defined and >sup<around*|(|A|)>+y=\<infty\>> which proves
        that

        <\equation*>
          sup<around*|(|A+y|)>=\<infty\>=sup<around*|(|A|)>+y
        </equation*>
      </description>

      <item>For <math|y\<in\><around*|[|-\<infty\>,0|]>> we have either\ 

      <\description>
        <item*|<math|y\<in\>\<bbb-R\>>>then by 1.b we have that
        <math|inf<around*|(|A|)>+y> is well defined and
        <math|inf<around*|(|<around*|{|x+y\|x\<in\>A|}>|)>=inf<around*|(|A|)>+y>

        <item*|<math|y=-\<infty\>>>then as
        <math|A\<subseteq\><around*|[|-\<infty\>,0|]>> we have
        \ <math|\<forall\>a\<in\>A> <math|a+y=-\<infty\>> so that
        <math|<around*|{|a+y\|a\<in\>A|}>=<around*|{|-\<infty\>|}>>, hence
        <math|inf<around*|(|A+y|)>=-\<infty\>>, further
        <math|inf<around*|(|A|)>\<leqslant\>0\<Rightarrow\>inf<around*|(|A|)>+y<text|
        is well defined and >inf<around*|(|A|)>+y=-\<infty\>> which proves
        that

        <\equation*>
          inf<around*|(|A+y|)>=-\<infty\>=inf<around*|(|A|)>+y
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|-sup A=inf -A>Let <math|\<emptyset\>\<neq\>A\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
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
        <item*|<math|\<alpha\>=0>>In this case
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
        a contradiction [as <math|\<alpha\>\<cdot\>z\<in\><around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>>].
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
        a contradiction as [<math|\<alpha\>\<cdot\>z\<in\><around*|{|\<alpha\>\<cdot\>x\|x\<in\>A|}>>].
        So we must have that <math|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>\<leqslant\>inf<around*|(|A|)>>
        which together with <reference|eq 14.5.472>gives

        <\equation*>
          inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<around*|\||x\<in\>A|\|>|}>|)>=\<alpha\>\<cdot\>inf<around*|(|A|)>
        </equation*>
      </description>
    </enumerate>

    \;
  </proof>

  <section|Topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  <\definition>
    <label|absolute value in the extended reals>Let
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then
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

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>><text| we
      have ><around*|\||x\<cdot\>y|\|>=<around*|\||x|\|>\<cdot\><around*|\||y|\|>>

      <item><math|\<forall\>x,y\<in\><wide|\<bbb-R\>|\<wide-bar\>>> such that
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

  To define the topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>> we first
  define some sets of sets that we use to create a generating basis for the
  topology (see <reference|generating basis of a topology>).

  <\notation>
    In what follows <math|\<varepsilon\>\<gtr\>0> means
    <math|\<varepsilon\>\<in\>\<bbb-R\>\<wedge\>\<varepsilon\>\<gtr\>0>
  </notation>

  <\definition>
    <label|sets for basis of topology on the extented
    reals><index|<math|\<cal-B\><rsub|\<bbb-R\>>>><index|<math|\<cal-B\><rsub|\<infty\>>>><index|<math|\<cal-B\><rsub|-\<infty\>>>><index|<math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>>We
    define the following sets

    <\enumerate>
      <item><math|\<cal-B\><rsub|\<bbb-R\>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<less\>b|}>>
      [note this is by <reference|topology of real complex numbers> the
      generating base of <math|\<cal-T\><rsub|\<bbb-R\>>>]

      <item><math|\<cal-B\><rsub|\<infty\>>=<around*|{|<around*|]|x,\<infty\>|]>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|-\<infty\>>=<around*|{|<around*|[|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>>

      <item><math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=\<cal-B\><rsub|\<bbb-R\>><big|cup>\<cal-B\><rsub|\<infty\>><big|cup>\<cal-B\><rsub|-\<infty\>>\<subseteq\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>>
    </enumerate>
  </definition>

  To define the topology <math|<wide|\<bbb-R\>|\<wide-bar\>>> we first prove
  that <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is a generating
  basis on <math|<wide|\<bbb-R\>|\<wide-bar\>>> [see <reference|generating
  basis of a topology>]

  <\lemma>
    <label|gnerating basis vor the extended
    reals><math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is a
    generating basis for <math|<wide|\<bbb-R\>|\<wide-bar\>>> [see
    <reference|generating basis of a topology>]
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then we have
      either:

      <\description>
        <item*|<math|x\<in\>\<bbb-R\>>>then
        <math|x\<in\><around*|]|x-1,x+1|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>

        <item*|<math|x=\<infty\>>>then <math|x\<in\><around*|]|0,\<infty\>|]>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>

        <item*|<math|x=-\<infty\>>>then <math|x\<in\><around*|[|-\<infty\>,0|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      </description>

      proving that

      <\equation>
        <label|eq 17.6.033>\<forall\>x\<in\><wide|\<bbb-R\>|\<wide-bar\>><text|
        there exists a >B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
        <text|such that >x\<in\>B
      </equation>

      <item>If <math|A,B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|x\<in\>A<big|cap>B>

      <\description>
        <item*|<math|A,B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>then
        <math|\<exists\>a,b,c,d\<in\>\<bbb-R\>> with
        <math|A=<around*|]|a,b|[>,B=<around*|]|c,d|[>>. As
        <math|x\<in\>A<big|cap>B> we have that
        <math|a\<less\>x\<less\>b\<wedge\>c\<less\>x\<less\>d>. So if we take
        <math|e=max<around*|(|a,c|)>,f=min<around*|(|b,d|)>> then
        <math|a,c\<leqslant\>e\<less\>x\<less\>f\<leqslant\>b,d> or if we
        define <math|C=<around*|[|e,f|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        that <math|x\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>then
        <math|\<exists\>a,b.d\<in\>\<bbb-R\>> such that
        <math|A=<around*|]|a,b|[>,B=<around*|]|d,\<infty\>|]>>. As
        <math|x\<in\>A<big|cap>B> we have that
        <math|a\<less\>x\<less\>b\<wedge\>d\<less\>x>. So if we take
        <math|e=max<around*|(|a,d|)>> then
        <math|a,d\<leqslant\>e\<less\>x\<less\>b>, or if we define
        <math|C=<around*|]|e,b|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        that <math|x\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>then
        <math|\<exists\>a,b,d\<in\>\<bbb-R\>> such that
        <math|A=<around*|]|a,b|[>\<wedge\>B=<around*|[|-\<infty\>,d|[>>. As
        <math|x\<in\>A<big|cap>B> we have
        <math|a\<less\>x\<less\>b\<wedge\>x\<less\>d>. So if we take
        <math|e=min<around*|(|b,d|)>> then
        <math|a\<less\>x\<less\>e\<leqslant\>b,d>, or if we define
        <math|C=<around*|]|a,e|[>\<in\>\<cal-B\><rsub|\<bbb-R\>>> that
        <math|x\<in\>C\<subseteq\>A<big|cap>B>\ 

        <item*|<math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>interchange
        <math|A> and <math|B> then we have the case
        <math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>
        so there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>C\<subseteq\>B<big|cap>A=A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>then
        <math|\<exists\>a,b\<in\>\<bbb-R\>> such that
        <math|A=<around*|]|a,\<infty\>|]>,B=<around*|]|b,\<infty\>|]>>. As
        <math|x\<in\>A<big|cap>B> we have that
        <math|a\<less\>x\<wedge\>b\<less\>x>. So if take
        <math|c=max<around*|(|a,b|)>> then <math|a,b\<leqslant\>c\<less\>x>
        or if we define <math|C=<around*|]|c,\<infty\>|]>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        that <math|x\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<b-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>then
        <math|\<exists\>a,b\<in\>\<bbb-R\>> with
        <math|A=<around*|]|a,\<infty\>|]>,B=<around*|[|-\<infty\>,b|[>>. As
        <math|x\<in\>A<big|cap>B> we have that
        <math|a\<less\>x\<wedge\>x\<less\>b>. So if we define
        <math|C=<around*|]|a,b|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        that <math|x\<in\>C\<subseteq\>A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>>>interchange
        <math|A> and <math|B> then we have the case
        <math|A\<in\>\<cal-B\><rsub|\<bbb-R\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>
        so there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>C\<subseteq\>B<big|cap>A=A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|\<infty\>>>>interchange
        <math|A> and <math|B> then we have the case
        <math|A\<in\>\<cal-B\><rsub|\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>
        so there exists a <math|C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>C\<subseteq\>B<big|cap>A=A<big|cap>B>

        <item*|<math|A\<in\>\<cal-B\><rsub|-\<infty\>>\<wedge\>B\<in\>\<cal-B\><rsub|-\<infty\>>>>then
        <math|\<exists\>a,b\<in\>\<bbb-R\>> such that
        <math|A=<around*|[|-\<infty\>,a|[>,B=<around*|[|-\<infty\>,b|[>>. As
        <math|x\<in\>A<big|cap>B> we have that
        <math|x\<less\>a\<wedge\>x\<less\>b>. Take
        <math|c=min<around*|(|a,b|)>> then <math|x\<less\>c\<leqslant\>a,b>
        or if we define <math|C=<around*|[|-\<infty\>,c|[>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        that <math|x\<in\>C\<subseteq\>A<big|cap>B>.
      </description>

      this proves that\ 

      <\equation>
        <label|eq 17.7.033>\<forall\>A,B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
        with x\<in\>A<big|cap>B there exists a
        C\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>><text| such that
        >x\<in\>C\<subseteq\>A<big|cap>B
      </equation>
    </enumerate>

    Finally using the definition of a generating basis [see
    <reference|generating basis of a topology>] together with <reference|eq
    17.6.033> and<reference|eq 17.7.033> proves the lemma.
  </proof>

  We can us now the above generating basis on
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> to define the topolgy on
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>

  <\definition>
    <label|topology on extented reals><index|<math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>><math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=<around*|{|U\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\|\<forall\>x\<in\>U\<vDash\>\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    such that x\<in\>B\<subseteq\>U|}>> is a topology called the canonical
    topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>>
  </definition>

  The canonical topology on <math|<wide|\<bbb-R\>|\<wide-bar\>>> has the
  following properties.

  <\proposition>
    <label|topology on the extended reals properties><math|Let
    \<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> be the canonical topology
    on <math|<wide|\<bbb-R\>|\<wide-bar\>>> and
    <math|\<cal-T\><rsub|\<bbb-R\>>> the canonical topology on
    <math|\<bbb-R\>> [see <reference|topology of real complex numbers>] then
    <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    and <math|\<cal-T\><rsub|\<bbb-R\>>=<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>>.
  </proposition>

  <\proof>
    By definition we have <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>=<around*|{|U\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>\|\<forall\>x\<in\>U\<vDash\>\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    with x\<in\>B\<subset\>-U|}>> and <math|\<cal-T\><rsub|\<bbb-R\>>\<equallim\><rsub|<text|<reference|topology
    of real complex numbers>>><around*|{|U\<subseteq\>\<bbb-R\>\|\<forall\>x\<in\>U\<vDash\>\<exists\>B\<in\>\<cal-B\><rsub|\<bbb-R\>>|}>>.
    \ If <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then
    <math|\<forall\>x\<in\>U> <math|\<exists\>B<rsub|x>\<in\>\<cal-B\><rsub|\<bbb-R\>>>
    such that <math|x\<in\>B<rsub|x>\<subseteq\>U>, so
    <math|U=<big|cup><rsub|x\<in\>U>B<rsub|x>>. As
    <math|B<rsub|x>\<in\>\<cal-B\><rsub|\<bbb-R\>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    > it follows that <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
    So\ 

    <\equation>
      <label|eq 17.8.033>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>
    </equation>

    Now if <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then
    <math|U\<subseteq\>\<bbb-R\>\<Rightarrow\>U=U<big|cap>\<bbb-R\>> and as
    <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> we have that
    <math|U\<in\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>>
    proving that\ 

    <\equation>
      <label|eq 17.9.033>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>
    </equation>

    If <math|U\<in\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>>
    then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    such that <math|U=V<big|cap>\<bbb-R\>>. If <math|x\<in\>U> then
    <math|x\<in\>V,x\<in\>\<bbb-R\>> and there exists a
    <math|B<rsub|x>\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> such
    that <math|x\<in\>B<rsub|x>\<subseteq\>V>. We have now the following
    cases to consider for <math|B<rsub|x>>:

    <\description>
      <item*|<math|B<rsub|x>\<in\>\<cal-B\><rsub|\<bbb-R\>>>>then if we
      define <math|B<rprime|'><rsub|x>=B<rsub|x>> we have
      <math|x\<in\>B<rprime|'><rsub|x>\<subseteq\>V\<subseteq\>U> where
      <math|B<rprime|'><rsub|x>\<in\>\<cal-T\><rsub|\<bbb-R\>>>

      <item*|<math|B<rsub|x>\<in\>\<cal-B\><rsub|\<infty\>>>>then
      <math|\<exists\>a\<in\>\<bbb-R\>> such that
      <math|x\<in\>B<rsub|x>=<around*|]|a,\<infty\>|]>>. Take
      <math|B<rsub|x><rprime|'>=<around*|]|a,x+1|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
      then <math|x\<in\>B<rsub|x><rprime|'>\<subseteq\>B<rsub|x>\<subseteq\>V\<subseteq\>U>

      <item*|<math|B<rsub|x>\<in\>\<cal-B\><rsub|-\<infty\>>>>then
      <math|\<exists\>a\<in\>\<bbb-R\>> such that
      <math|x\<in\>B<rsub|x>=<around*|[|-\<infty\>,a|[>>. Take
      <math|B<rsub|x><rprime|'>=<around*|]|x-1,a|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
      then <math|x\<in\>B<rsub|x><rprime|'>\<subseteq\>B<rsub|x>\<subseteq\>V\<subseteq\>U>
    </description>

    so in all cases there exists a <math|\<cal-B\><rsub|x><rprime|'>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
    such that <math|x\<in\>B<rprime|'><rsub|x>\<subseteq\>U> which as
    <math|x\<in\>U> was choosen arbitrary proves that
    <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>>. So we have that
    <math|<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>>,
    combining this with <reference|eq 17.9.033> proves that\ 

    <\equation*>
      \<cal-T\><rsub|\<bbb-R\>>=<around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>
    </equation*>
  </proof>

  <\theorem>
    <label|closed sets in the extended reals>We have the following closed
    sets in <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> where
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
      <item>As <math|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>\<Leftrightarrow\>y\<in\>\<neg\><around*|(|-\<infty\>\<leqslant\>y\<wedge\>y\<leqslant\>x|)>\<Leftrightarrow\><around*|(|y\<less\>-\<infty\>\<vee\>x\<less\>y|)>\<Leftrightarrow\>x\<less\>y\<Leftrightarrow\>y\<in\><around*|]|x,\<infty\>|]>>
      we have that <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>=<around*|]|x,\<infty\>|]>>
      by definition a open set, hence <math|<around*|[|-\<infty\>,x|]>> is
      closed.

      <item>As <math|y\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>\<Leftrightarrow\>y\<in\>\<neg\><around*|(|x\<leqslant\>y\<wedge\>y\<leqslant\>\<infty\>|)>\<Leftrightarrow\><around*|(|y\<less\>x\<vee\>\<infty\>\<less\>y|)>\<Leftrightarrow\>y\<less\>x\<Leftrightarrow\>y\<in\><around*|[|-\<infty\>,x|[>>
      we have that <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>=<around*|[|-\<infty\>,x|[>>
      by definiton a open set, hence <math|<around*|[|x,\<infty\>|]>> is a
      closed set.

      <item><math|<around*|{|x|}>=<around*|[|-\<infty\>,x|]><big|cap><around*|[|x,\<infty\>|]>>
      by (1) and (2) a intersection of closed sets and thus closed.

      <item>This is trivial as <math|<wide|\<bbb-R\>|\<wide-bar\>>=<around*|[|-\<infty\>,\<infty\>|]>>,

      <item>As <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>,\<infty\>|}>=\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      <math|>we have that <math|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|{|-\<infty\>,\<infty\>|}>>
      is open so that <math|<around*|{|-\<infty\>,\<infty\>|}>> is closed.

      <item>This follows from <math|<around*|{|-\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|-\<infty\>,0|]>>
      a intersection of closed sets.

      <item>This follows from <math|<around*|{|\<infty\>|}>=<around*|{|-\<infty\>,\<infty\>|}><big|cap><around*|[|0,\<infty\>|]>>
      a intersection of closed sets.
    </enumerate>
  </proof>

  We have the following characterization of open sets in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>.>

  <\theorem>
    <label|open sets in the extended reals condition>Let
    <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> and <math|x\<in\>U> a open
    set then we have\ 

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
    Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> and <math|x\<in\>U> a
    open set then\ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> we have, as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>, the following
      possible cases to consider

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
        <math|x\<in\><around*|]|x-\<varepsilon\>,x+\<varepsilon\>|[>\<subseteq\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>.
      </description>

      <item>If <math|x=\<infty\>> then we have, as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>, the following
      possible cases to consider

      <\description>
        <item*|<math|\<exists\>\<delta\>\<gtr\>0,y\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|y-\<delta\>,y+\<delta\>|[>>>then
        <math|\<infty\>\<less\>y+\<delta\>\<less\>\<infty\>> a contradiction
        so this will never happen.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|\<delta\>,\<infty\>|]>>>then
        as <math|1\<less\>\<infty\>=x=\<infty\>> we have, if we take
        <math|\<varepsilon\>=max<around*|(|\<delta\>,1|)>\<gtr\>0>, that
        <math|\<delta\>\<leqslant\>\<varepsilon\>> so that
        <math|x\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\><around*|]|\<delta\>,\<infty\>|]>\<subseteq\>U>

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|[|-\<infty\>,\<delta\>|[>>>then
        <math|\<infty\>=x\<less\>\<delta\>\<less\>\<infty\>> a contradiction
        so this will not apply
      </description>

      <item>If <math|x=-\<infty\>> then we have as
      <math|\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is a basis for
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> the following
      possible cases

      <\description>
        <item*|<math|\<exists\>\<delta\>\<gtr\>0,y\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|y-\<delta\>,y+\<delta\>|[>>>then
        <math|-\<infty\>\<less\>y-\<delta\>\<less\>x=-\<infty\>> a
        contradiction.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|]|\<delta\>,\<infty\>|]>>>then
        <math|-\<infty\>\<less\>\<delta\>\<less\>x=-\<infty\>> a
        contradiction.

        <item*|<math|\<exists\>\<delta\>\<in\>\<bbb-R\>\<vdash\>x\<in\><around*|[|-\<infty\>,\<delta\>|[>>>then
        as <math|-\<infty\>\<less\>-1> we have if we take
        <math|\<varepsilon\>=-min<around*|(|-1,\<delta\>|)>\<gtr\>0> that
        <math|-\<varepsilon\>\<leqslant\>\<delta\>> so that
        <math|x=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\><around*|[|-\<infty\>,\<delta\>|[>\<subseteq\>U>
      </description>
    </enumerate>
  </proof>

  We show now that continuous functions to <math|\<bbb-R\>> are continuous in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>.

  <\theorem>
    <label|continuity in R is continuity of extended reals>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|f:X\<rightarrow\>\<bbb-R\>> a continuous function (using
    <math|\<cal-T\><rsub|\<bbb-R\>>>) then
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is continous in
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
  </theorem>

  <\proof>
    Let <math|x\<in\>X> and <math|f<around*|(|x|)>\<in\>U> then as
    <math|f<around*|(|x|)>\<in\>\<bbb-R\>> we have by the above theorem a
    <math|\<varepsilon\>\<gtr\>0> such that
    <math|<around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x+\<varepsilon\>|)>|[>\<subseteq\>U>.
    As <math|f:X\<rightarrow\>\<bbb-R\>> is continuous there exists a
    <math|V\<in\>\<cal-T\>> such that <math|f<around*|(|V|)>\<subseteq\><around*|]|f<around*|(|x|)>-\<varepsilon\>,f<around*|(|x0+\<varepsilon\>|)>|[>\<subseteq\>U>
    proving that <math|f:X-<wide|\<bbb-R\>|\<wide-bar\>>> is continuous.
  </proof>

  <\theorem>
    <label|open sets and addition scalar multiplication>If
    <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> then if
    <math|\<delta\>\<in\>\<bbb-R\>> we have that

    <\enumerate>
      <item><math|\<delta\>+U=<around*|{|\<delta\>+x\|x\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.

      <item>If <math|\<delta\>\<neq\>0> we have
      \ <math|\<delta\>\<cdot\>U=<around*|{|\<delta\>\<cdot\>x\|x\<in\>U|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>\<delta\>+U> then there exists a <math|u\<in\>U>
      such that <math|x=\<delta\>+u>, \ we have now for <math|u> the
      following possibilities

      <\description>
        <item*|<math|u\<in\>\<bbb-R\>>>then using <reference|open sets in the
        extended reals condition> there exists a
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>,
        then <math|u-\<varepsilon\>\<less\>u\<less\>u-\<varepsilon\>\<Rightarrow\><around*|(|u-\<varepsilon\>|)>+\<delta\>\<less\>u+\<delta\>\<less\><around*|(|u+\<varepsilon\>|)>+\<delta\>>
        proving that <math|x=u+\<delta\>\<in\><around*|]|<around*|(|u-\<varepsilon\>|)>+\<delta\>,<around*|(|u+\<varepsilon\>|)>+\<delta\>|[>=<around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>>.
        Also if <math|y\<in\><around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>>
        then <math|<around*|(|u+\<delta\>|)>-\<varepsilon\>\<less\>y\<less\><around*|(|u+\<delta\>|)>+\<varepsilon\>\<Rightarrow\>u-\<varepsilon\>\<less\>y-\<delta\>\<less\>u+\<varepsilon\>\<Rightarrow\>y-\<delta\>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
        so that <math|y=\<delta\>+<around*|(|y-\<delta\>|)>\<in\>\<delta\>+U>
        proving that <math|x\<in\><around*|]|<around*|(|u+\<delta\>|)>-\<varepsilon\>,<around*|(|u+\<delta\>|)>+\<varepsilon\>|[>\<subseteq\>\<delta\>+U>.
        This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>+U>.

        <item*|<math|u=\<infty\>>>then using <reference|open sets in the
        extended reals condition> there exists a
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|u=\<infty\>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U>,
        take now <math|<around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>> then
        <math|x=\<delta\>+\<infty\>=\<infty\>\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>>.
        If now <math|y\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>>
        then we have either <math|y=\<infty\>=\<delta\>+\<infty\>=\<delta\>+u\<in\>\<delta\>+U>
        or <math|y\<in\>\<bbb-R\>> so that
        <math|\<varepsilon\>+\<delta\>\<less\>y\<less\>\<infty\>\<Rightarrow\>\<varepsilon\>\<less\>y-\<delta\>\<less\>\<infty\>\<Rightarrow\>y-\<delta\>\<subset\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U\<Rightarrow\>y=\<delta\>+<around*|(|y-\<delta\>|)>\<in\>\<delta\>+U>
        proving that <math|x\<in\><around*|]|\<varepsilon\>+\<delta\>,\<infty\>|]>\<subseteq\>\<delta\>+U>.
        This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<delta\>+U>.

        <item*|<math|u=-\<infty\>>>then using <reference|open sets in the
        extended reals condition> there exists a
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|u=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
        take now <math|<around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>>
        then <math|x=\<delta\>+<around*|(|-\<infty\>|)>=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>>.
        If now <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>>
        the we have either <math|y=-\<infty\>=\<delta\>+<around*|(|-\<infty\>|)>=\<delta\>+u\<in\>\<delta\>+U>
        or <math|y\<in\>\<bbb-R\>> so that
        <math|-\<infty\>\<less\>y\<less\>-\<varepsilon\>+\<delta\>\<Rightarrow\>-\<infty\>\<less\>y-\<delta\>\<less\>-\<varepsilon\>\<Rightarrow\>y-\<delta\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>+<around*|(|y-\<delta\>|)>\<in\>\<delta\>+U>
        proving that <math|x\<in\><around*|[|-\<infty\>,-\<varepsilon\>+\<delta\>|[>\<subseteq\>\<delta\>+U>.
        This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|x\<in\>B\<subseteq\>\<sigma\>+U>
      </description>

      As in all possible cases we have <math|\<forall\>x\<in\>\<delta\>+U>
      that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|x\<in\>B\<subseteq\>\<delta\>+U> it follows that
      <math|\<delta\>+U> is a open set.

      <item>If <math|x\<in\>\<delta\>\<cdot\>U> then there exists a
      <math|u\<in\>U> such that <math|x=\<delta\>\<cdot\>u> we have then for
      <math|u> the following possibilities

      <\description>
        <item*|<math|u\<in\>\<bbb-R\>>>then using <reference|open sets in the
        extended reals condition> \ there exists a
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|u\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
        so that <math|u-\<varepsilon\>\<less\>u\<less\>u+\<varepsilon\>>
        consider then the following possibilities for
        <math|\<delta\>\<neq\>0>:

        <\description>
          <item*|<math|0\<less\>\<delta\>>>then
          <math|\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>\<less\>\<delta\>\<cdot\>u\<less\>\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>>
          so that <math|x=\<delta\>\<cdot\>u\<in\><around*|]|\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>,\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>|[>=<around*|]|u\<cdot\>\<delta\>-\<rho\>,u\<cdot\>\<delta\>+\<rho\>|[>>
          where <math|\<rho\>=\<delta\>\<cdot\>\<varepsilon\>\<gtr\>0>. If
          now <math|y\<in\><around*|]|u\<cdot\>\<delta\>-\<rho\>,u*\<cdot\>\<delta\>+\<rho\>|[>\<Rightarrow\>u\<cdot\>\<delta\>-\<rho\>\<less\>y\<less\>u\<cdot\>\<delta\>+\<rho\>\<Rightarrow\><frac|u\<cdot\>\<delta\>|\<delta\>>-<frac|\<rho\>|\<delta\>>\<less\><frac|y|\<delta\>>\<less\><frac|u\<cdot\>\<delta\>|\<delta\>>+<frac|\<rho\>|\<delta\>>\<Rightarrow\>u-\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>u+\<varepsilon\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
          proving that <math|x\<in\><around*|]|\<delta\>\<cdot\>u-\<rho\>,\<delta\>\<cdot\>u+\<rho\>|[>\<subseteq\>\<delta\>\<cdot\>U>.
          This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>

          <item*|<math|\<delta\>\<less\>0>>then
          <math|\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>\<less\>\<delta\>\<cdot\>u\<less\>\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>\<Rightarrow\>x=\<delta\>\<cdot\>u\<in\><around*|]|\<delta\>\<cdot\>u+\<delta\>\<cdot\>\<varepsilon\>,\<delta\>\<cdot\>u-\<delta\>\<cdot\>\<varepsilon\>|[>=<around*|]|\<delta\>\<cdot\>u-\<rho\>,\<delta\>\<cdot\>u+\<rho\>|[>>
          where <math|\<rho\>=-\<delta\>\<cdot\>\<varepsilon\>\<gtr\>0>. If
          now <math|y\<in\><around*|]|u\<cdot\>\<delta\>-\<rho\>,u\<cdot\>\<delta\>+\<rho\>|[>\<Rightarrow\>u\<cdot\>\<delta\>-\<rho\>\<less\>y\<less\>u\<cdot\>\<delta\>+\<rho\>\<Rightarrow\><frac|u\<cdot\>\<delta\>|\<delta\>>+<frac|\<rho\>|\<delta\>>\<less\><frac|y|\<delta\>>\<less\><frac|u\<cdot\>\<delta\>|y>-<frac|\<rho\>|\<delta\>>\<Rightarrow\>u-\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>u+\<varepsilon\>\<Rightarrow\><frac|y|\<rho\>>\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>U>
          so that <math|y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
          proving that <math|x\<in\><around*|]|u-\<varepsilon\>,u+\<varepsilon\>|[>\<subseteq\>\<delta\>\<cdot\>U>.
          This proves that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
        </description>

        <item*|<math|u=\<infty\>>>then using <reference|open sets in the
        extended reals condition> \ there exists a
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
          and thus that \ <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>

          <item*|<math|\<delta\>\<less\>0>>then
          <math|x=\<delta\>\<cdot\>u=-\<infty\>\<in\><around*|[|-\<infty\>,\<varepsilon\>\<cdot\>\<delta\>|[>>.
          If <math|y\<in\><around*|[|-\<infty\>,\<varepsilon\>\<cdot\>\<delta\>|[>>
          then if <math|y=-\<infty\>=\<delta\>\<cdot\>u> we have
          <math|y=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U> and if
          <math|y\<in\>\<bbb-R\>> we have that
          <math|-\<infty\>\<less\>y\<less\>\<varepsilon\>\<cdot\>\<delta\>>
          so that <math|\<varepsilon\>\<less\><frac|y|\<delta\>>\<less\>\<infty\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|]|\<varepsilon\>,\<infty\>|]>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>
          So we have proved that <math|x\<in\><around*|[|-\<infty\>,\<varepsilon\>\<cdot\>\<delta\>|[>\<subseteq\>\<delta\>\<cdot\>U>
          and thus that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
        </description>

        <item*|<math|u=-\<infty\>>>then using <reference|open sets in the
        extended reals condition> \ there exists a
        <math|\<varepsilon\>\<gtr\>0> such that
        <math|u\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U>,
        we have to consider the following cases for <math|\<delta\>>

        <\description>
          <item*|<math|0\<less\>\<delta\>>>then
          <math|x=\<delta\>\<cdot\>u=-\<infty\>\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>>.
          If <math|y\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>>
          then if <math|y=-\<infty\>> we have
          <math|y=\<delta\>\<cdot\><around*|(|-\<infty\>|)>=\<delta\>\<cdot\>u\<in\>\<delta\>\<cdot\>U>
          and if <math|y\<in\>\<bbb-R\>> we have that
          <math|-\<infty\>\<less\>y\<less\>-\<varepsilon\>\<cdot\>\<delta\>>
          so that <math|-\<infty\>\<less\><frac|y|\<delta\>>\<less\>-\<varepsilon\>\<Rightarrow\><frac|y|\<delta\>>\<in\><around*|[|-\<infty\>,-\<varepsilon\>|[>\<subseteq\>U\<Rightarrow\>y=\<delta\>\<cdot\><frac|y|\<delta\>>\<in\>\<delta\>\<cdot\>U>.
          So we have proved that <math|x\<in\><around*|[|-\<infty\>,-\<varepsilon\>\<cdot\>\<delta\>|[>\<subseteq\>U>
          and thus that \ <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
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
          and thus that <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
          such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U>
        </description>
      </description>

      As in all possible cases we have <math|\<forall\>x\<in\>\<delta\>\<cdot\>U>
      \ <math|\<exists\>B\<in\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      such that <math|x\<in\>B\<subseteq\>\<delta\>\<cdot\>U> which proves
      that <math|\<delta\>\<cdot\>U> is open.
    </enumerate>
  </proof>

  <\note>
    The restrictions in the above theorem are needed, for example
    <math|U=<around*|]|-1,1|[>> is a open set but
    <math|0\<cdot\>U=0\<cdot\><around*|]|-1,1|[>=<around*|{|0|}>> a closed
    set. Also <math|\<infty\>+U=\<infty\>+<around*|]|-1,1|[>=<around*|{|\<infty\>|}>>
    a closed set.
  </note>

  <\theorem>
    <label|the topology on the extented reals is
    Hausdorff><math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is
    Hausdorff (see <reference|Hausdorff spaces>).
  </theorem>

  <\proof>
    Let <math|x<rsub|1>,x<rsub|2>\<in\><wide|\<bbb-R\>|\<wide-bar\>>> with
    <math|x<rsub|1>\<neq\>x<rsub|2>> then we have to check the following
    cases

    <\description>
      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      we have either

      <\description>
        <item*|<math|x<rsub|1>\<less\>x<rsub|2>>>Take then
        <math|\<delta\>=<frac|x<rsub|2>-x<rsub|1>|2>\<gtr\>0> then
        <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
        <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
        as <math|<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[>=<around*|]|x<rsub|1>-\<delta\>,<frac|x<rsub|1>+x<rsub|2>|2>|[>,<around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>=<around*|]|<frac|x<rsub|1>+x<rsub|2>|2>,x<rsub|2>+\<delta\>|[>>
        we have <math|\<emptyset\>=<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[><big|cap><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>>.

        <item*|<math|x<rsub|2>\<less\>x<rsub|1>>>Take then
        <math|\<delta\>=<frac|x<rsub|1>-x<rsub|2>|2>\<gtr\>0> then
        <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
        <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>,
        as <math|<around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>=<around*|]|x<rsub|2>-\<delta\>,<frac|x<rsub|1>+x<rsub|2>|2>|[>,<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[>=<around*|]|<frac|x<rsub|1>+x<rsub|2>|2>,x<rsub|1>+\<delta\>|[>>
        we have <math|\<emptyset\>=<around*|]|x<rsub|1>-\<delta\>,x<rsub|1>+\<delta\>|[><big|cap><around*|]|x<rsub|2>-\<delta\>,x<rsub|2>+\<delta\>|[>>.
      </description>

      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>=\<infty\>>>then
      <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-1,x<rsub|1>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|\<infty\>\<in\><around*|]|x<rsub|1>+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|<around*|]|x<rsub|1>-1,x<rsub|1>+1|[><big|cap><around*|]|x<rsub|1>+1,\<infty\>|]>=\<emptyset\>>

      <item*|<math|x<rsub|1>\<in\>\<bbb-R\>\<wedge\>x<rsub|2>=-\<infty\>>>then
      <math|x<rsub|1>\<in\><around*|]|x<rsub|1>-1,x<rsub|1>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|-\<infty\>\<in\><around*|[|-\<infty\>,x<rsub|1>-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|<around*|]|x<rsub|1>-1,x<rsub|1>+1|[><big|cap><around*|[|-\<infty\>,x<rsub|1>-1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=\<infty\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      <math|\<infty\>\<in\><around*|]|x<rsub|2>+1,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|<around*|]|x<rsub|2>+1,\<infty\>|]><big|cap><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=\<infty\>\<wedge\>x<rsub|2>=-\<infty\>>>then
      <math|\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|-\<infty\>\<in\><around*|[|-\<infty\>,0|[>> with
      <math|<around*|]|0,\<infty\>|]><big|cap><around*|[|-\<infty\>,0|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=-\<infty\>\<wedge\>x<rsub|2>\<in\>\<bbb-R\>>>then
      <math|-\<infty\>\<in\><around*|[|-\<infty\>,x<rsub|2>-1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|x<rsub|2>\<in\><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|<around*|[|-\<infty\>,x<rsub|2>-1|[><big|cap><around*|]|x<rsub|2>-1,x<rsub|2>+1|[>=\<emptyset\>>

      <item*|<math|x<rsub|1>=-\<infty\>\<wedge\>x<rsub|2>=\<infty\>>>then
      <math|-\<infty\>\<in\><around*|[|-\<infty\>,0|[>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      and <math|\<infty\>\<in\><around*|]|0,\<infty\>|]>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      with <math|<around*|[|-\<infty\>,0|[><big|cap><around*|]|0,\<infty\>|]>=\<emptyset\>>
    </description>

    So in all cases there exists a <math|V<rsub|1>,V<rsub|2>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    with <math|x\<in\>V<rsub|1>\<wedge\>x\<in\>V<rsub|2>\<wedge\>V<rsub|1><big|cap>V<rsub|2>=\<emptyset\>>
    proving that <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> is
    Hausdorff.
  </proof>

  <section|Sequences in <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  \ 

  Note that the sum in <math|<wide|\<bbb-R\>|\<wide-bar\>>> is not always
  defined so if we want to see how the supremum and infinum behaves on sums
  we have to be carefull, that is the reason that we restrict ourself to
  positve extended reals in many cases.

  <\notation>
    Given <math|k\<in\>\<bbb-N\><rsub|0>> we note
    <math|<around*|{|i\<in\>\<bbb-N\><rsub|0>\|k\<leqslant\>i|}>> as
    <math|<around*|{|k,\<ldots\>,\<infty\>|}>>
  </notation>

  <\definition>
    <label|increasing (decreasing) sequence><index|increasing
    sequence><index|decreasing sequence>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence in a partial ordered set
    <math|<around*|\<langle\>|S,\<leqslant\>|\<rangle\>>> then we say that
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    is a increasing (decreasing) sequence if
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<leqslant\>x<rsub|i+1>>
    (<math|x<rsub|i+1>\<leqslant\>x<rsub|i>>)
  </definition>

  <\lemma>
    Let <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence then
    <math|\<forall\>n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|n\<leqslant\>m> we have <math|x<rsub|n>\<leqslant\>x<rsub|m>>
    (<math|x<rsub|m>\<leqslant\>x<rsub|n>>)
  </lemma>

  <\proof>
    The proof is trivial using mathematical induction. Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing (or decreasing) sequence
    \ <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define
    <math|S<rsub|n>=<around*|{|m\<in\>\<bbb-N\>\|x<rsub|n>\<leqslant\>x<rsub|n+m>
    <around*|[|or x<rsub|n+m>\<leqslant\>x<rsub|n>|]>|}>> then we have

    <\description>
      <item*|<math|0\<in\>S>>this is trivial as
      <math|x<rsub|n>\<leqslant\>x<rsub|n>=x<rsub|n+0>> [or
      <math|x<rsub|n+0>=x<rsub|n>\<leqslant\>x<rsub|n>>]

      <item*|if <math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>from <math|m\<in\>S>
      we have <math|x<rsub|n>\<leqslant\>x<rsub|n+m>\<leqslant\>x<rsub|n+m+1>\<Rightarrow\>x<rsub|n>\<leqslant\>x<rsub|n+m+1>>
      [or <math|x<rsub|n+m+1>\<leqslant\>x<rsub|n+m>\<leqslant\>x<rsub|n>\<Rightarrow\>x<rsub|n+m+1>\<leqslant\>x<rsub|n>>]
      proving <math|m+1\<in\>S>
    </description>

    Let now <math|n,m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|n\<leqslant\>m> [or <math|m\<leqslant\>n>] then
    <math|i=m-n\<in\>S<rsub|n>\<Rightarrow\>x<rsub|n>\<leqslant\>x<rsub|n+<around*|(|m-n|)>>=x<rsub|m>>
    [or <math|x<rsub|m>=x<rsub|n+<around*|(|m-n|)>>\<leqslant\>x<rsub|n>>]
  </proof>

  Recap the following result for increasing/decreasing sequences \ of real
  numbers [see <reference|condition for increasing sequence to convert>]

  <\lemma>
    <label|increasing (decreasing) sequence converges>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing [decreasing] sequence of real numbers then we have

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      has a supremum [infinum] then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      exists and <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists
      then <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      [<math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>]
      exists and <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      [<math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>]
    </enumerate>
  </lemma>

  <\proof>
    \ This is already proved in <reference|condition for increasing sequence
    to convert>
  </proof>

  We want to extend the above lemma to the extended real numbers. As the
  supremum and the infinum in <math|<wide|\<bbb-R\>|\<wide-bar\>>> always
  exists this suggest that the limit always exists for increasing and
  decreasing sequences of extended reals. However we must then first extend
  also the limit of sequences to the set of the extended real numbers.\ 

  <\theorem>
    <label|existance of lim inf and lim sup>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then\ 

    <\enumerate>
      <item><math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
      exists\ 

      <item><math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
      exists

      <item><math|\<forall\>m\<geqslant\>n> we have

      <\equation*>
        inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item><math|\<forall\>m\<geqslant\>n> we have\ 

      <\equation*>
        sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item><math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have\ 

      <\enumerate>
        <item><math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>

        <item><math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>The existence follows from the fact that in
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> every non empty set has a sup and
      inf [see <reference|every non empty set in the extented reals has a
      limit>]

      <item>The existence follows from the fact that in
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> every non empty set has a sup and
      inf [see <reference|every non empty set in the extented reals has a
      limit>]

      <item>Given <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> take
      <math|S<rsub|k>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      then <math|<around*|{|S<rsub|k>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|S<rsub|k>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      proving using <reference|inclusion and sup and inf> that
      <math|inf<around*|(|S<rsub|k>\|k\<in\><around*|{|n,\<ldots\>,,\<infty\>|}>|)>\<leqslant\>inf<around*|(|S<rsub|k>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|)>>
      proving that\ 

      <\equation>
        <label|eq 17.10.001>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      For the opposite inclusion, given <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>,
      take <math|l=max<around*|(|k,m|)>>, then <math|k\<leqslant\>l> and
      <math|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>. We have then that
      <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      so that using <reference|inclusion and sup and inf>
      <math|S<rsub|l>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=S<rsub|k>>.
      So for every <math|S<rsub|k>\<in\><around*|{|S<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      we find a <math|S<rsub|l>\<in\><around*|{|S<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>>
      such that <math|S<rsub|l>\<leqslant\>S<rsub|k>>. Using <reference|sup
      of set of bigger elements> we have then that
      <math|inf<around*|(|S<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|)>\<leqslant\>inf<around*|(|S<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|)>>
      or <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      Hence using <reference|eq 17.10.001> we have\ 

      <\equation*>
        inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>Given <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> take
      <math|I<rsub|i>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      then <math|<around*|{|I<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|I<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      proving using <reference|inclusion and sup and inf> that
      <math|sup<around*|(|<around*|{|S<rsub|k>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|S<rsub|k>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>,
      hence\ 

      <\equation>
        <label|eq 17.11.001>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>|\<nobracket\>>
      </equation>

      For the opposite inclusion, given <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      take <math|l=max<around*|(|k,m|)>> then <math|k\<leqslant\>l> and
      <math|l\<in\><around*|{|m,.,.,\<infty\>|}>>. We have then that
      <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      so that using <reference|inclusion and sup and inf> we have
      <math|I<rsub|k>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>=I<rsub|l>>.
      So for every <math|I<rsub|k>\<in\><around*|{|I<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      we can find a <math|I<rsub|l>\<in\><around*|{|I<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>>
      such that <math|I<rsub|k>\<leqslant\>I<rsub|l>>. Using <reference|sup
      of set of bigger elements> we have then that
      <math|sup<around*|(|<around*|{|I<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|I<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>
      or <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>.
      Hence using <reference|eq 17.11.001> we have that\ 

      <\equation*>
        sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>Given <math|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>> define
      <math|A<rsub|k>=<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
      and for <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      <math|B<rsub|k>=<around*|{|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>.
      Then we have for <math|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>A<rsub|k>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
        such that x=x<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|k\<leqslant\>i\<Rightarrow\>k-m\<leqslant\>i-m\<wedge\>x<rsub|i>=x<rsub|<around*|(|i-m|)>+m>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x<rsub|i>\<in\>B<rsub|k-m>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<rsub|k-m>>>|<row|<cell|x\<in\>B<rsub|k-m>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\><around*|{|k-m,\<ldots\>,\<infty\>|}>
        such that x=x<rsub|i+m>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|k-m\<leqslant\>i\<Rightarrow\>k\<leqslant\>i+m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<rsub|k>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 17.12.001>\<forall\>k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>
        we have that A<rsub|k>=B<rsub|k-m>
      </equation>

      On the other hand if <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>B<rsub|k>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
        such that x=x<rsub|i+m>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|k+m\<leqslant\>i+m>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<rsub|k+m>>>|<row|<cell|x\<in\>A<rsub|k+m>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\><around*|{|k+m,\<ldots\>,\<infty\>|}>
        such that x=x<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|k+m\<leqslant\>i\<Rightarrow\>k\<leqslant\>i-m<infix-and>x<rsub|i>=x<rsub|<around*|(|i-m|)>+m>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<rsub|k>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 17.13.001>\<forall\>k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>
        we have that B<rsub|k>=A<rsub|k+m>
      </equation>

      Now if <math|x\<in\><around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>> such
      that <math|x=sup<around*|(|A<rsub|k>|)>\<equallim\><rsub|<text|<reference|eq
      17.12.001>>>sup<around*|(|B<rsub|k-m>|)>> where
      <math|k-m\<in\><around*|{|n,\<ldots\>\<infty\>|}>>, hence
      <math|><math|x\<in\><around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      proving that <math|<around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>.
      Using <reference|inclusion and sup and inf> \ it follows that:

      <\equation>
        <label|eq 17.14.001>inf<around*|(|<around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      If <math|x\<in\><around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x=sup<around*|(|B<rsub|k>|)>\<equallim\><rsub|<text|<reference|eq
      17.13.001>>>sup<around*|(|A<rsub|k+m>|)>> where
      <math|k+m\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>>, hence
      <math|x\<in\><around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>
      proving that <math|<around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>.
      Using <reference|inclusion and sup and inf> it follows that:

      <\equation>
        <label|eq 17.15.001>inf<around*|(|<around*|{|sup<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Combining <reference|eq 17.14.001> and <reference|eq 17.15.001>
      together with the definition of <math|A<rsub|k>,B<rsub|k>> we have\ 

      <\equation>
        <label|eq 17.16.001>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>=<text|>inf<around*|(|<around*|{|sup<around*|(|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Using then (3) on the above proves:

      <\equation>
        <label|eq 17.17.001>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=<text|>inf<around*|(|<around*|{|sup<around*|(|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Now if <math|x\<in\><around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>> such
      that <math|x=inf<around*|(|A<rsub|k>|)>\<equallim\><rsub|<text|<reference|eq
      17.12.001>>>inf<around*|(|B<rsub|k-m>|)>> where
      <math|k-m\<in\><around*|{|n,\<ldots\>\<infty\>|}>>, hence
      \ <math|x\<in\><around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      proving that <math|<around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>\<subseteq\>x\<in\><around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>.
      Applying then <reference|inclusion and sup and inf> gives

      <\equation>
        <label|eq 17.18.001>sup<around*|(|<around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      If <math|x\<in\><around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x=inf<around*|(|B<rsub|k>|)>\<equallim\><rsub|<text|<reference|eq
      17.13.001>>>inf<around*|(|A<rsub|k+m>|)>> where
      <math|k+m\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>>, hence
      <math|x\<in\><around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>
      proving that <math|<around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>>.
      Applying then <reference|inclusion and sup and inf> gives:

      <\equation>
        <label|eq 17.19.001>sup<around*|(|<around*|{|inf<around*|(|B<rsub|k>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|A<rsub|k>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Combining <reference|eq 17.18.001> and <reference|eq 17.19.001>
      together with the definition of <math|A<rsub|k>,B<rsub|k>> we have\ 

      <\equation>
        <label|eq 17.20.001>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n+m,\<ldots\>,\<infty\>|}>|}>|)>=<text|>inf<around*|(|<around*|{|sup<around*|(|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Using then (3) on the above proves\ 

      <\equation>
        <label|eq 17.21.001>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=<text|>inf<around*|(|<around*|{|sup<around*|(|x<rsub|i+m>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Finally 5 (a) is proved by <reference|eq 17.17.001> and 5 (b) by
      <reference|eq 17.21.001>
    </enumerate>
  </proof>

  The above theorem motivates the following definition

  <\definition>
    <label|lim inf and lim sup><index|<math|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>><index|<math|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then

    <\equation*>
      <below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    and

    <\equation*>
      <below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>|)>.
    </equation*>
  </definition>

  <\note>
    <label|independence of limit inf and limit sup of start index>In the
    above above definition the starting index <math|k> is not mentioned in
    the notation <math|<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
    and <math|<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>> but this is
    ok because of the previous theorem [see <reference|existance of lim inf
    and lim sup>] we can use every number in
    <math|<around*|{|k,\<ldots\>,\<infty\>|}>> as the starting index.
  </note>

  <\example>
    <label|liminf and limsup of a constant>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|x<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,n|}>>>
    defined by <math|x<rsub|n>=x\<in\><below|\<bbb-R\>|>> then

    <\equation*>
      <below|x=lim inf|n\<rightarrow\>\<infty\>> x<rsub|n>=<below|lim
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>
    </equation*>
  </example>

  <\proof>
    <space|1em>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
      x<rsub|n>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|x\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>>>>>
    </eqnarray*>
  </proof>

  Using this definition and the previous theorem [see <reference|existance of
  lim inf and lim sup>] we have the following:

  <\theorem>
    <label|lim inf lim sup basic properties>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then we have\ 

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>> exists

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> exists

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that\ 

      <\enumerate>
        <item><math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i+n>>

        <item><math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i+n>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proposition>
    <label|lim inf and lim sup inequality>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be sequences of extended reals such that
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    <math|x<rsub|i>\<leqslant\>y<rsub|i>> then\ 

    <\enumerate>
      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>
      x<rsub|n>\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>>
      y<rsub|n>>

      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>
      x<rsub|n>\<leqslant\><below|lim sup|n\<rightarrow\>\<infty\>>
      y<rsub|n>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then using
      <reference|sup of set of bigger elements> we have that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>.
      Applying <reference|sup of set of bigger elements> again we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>>|<cell|\<equallim\><rsub|def>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)><around*|\||l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
        inf|n\<rightarrow\>\<infty\>> y<rsub|n>>>>>
      </eqnarray*>

      <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then using
      <reference|sup of set of bigger elements> we have that
      <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>.
      Applying <reference|sup of set of bigger elements> again we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|n\<rightarrow\>\<infty\>>
        x<rsub|n>>|<cell|\<equallim\><rsub|def>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)><around*|\||l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
        sup|n\<rightarrow\>\<infty\>> y<rsub|n>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\proposition>
    <label|lim sup lim inf inequality (1)>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals and <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have\ 

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x\<leqslant\>x<rsub|i>> then we have\ 

      <\enumerate>
        <item><math|x\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>>

        <item><math|x\<leqslant\><below|lim sup
        x<rsub|n>|n\<rightarrow\>\<infty\>>>
      </enumerate>

      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>x> then we have\ 

      <\enumerate>
        <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>\<leqslant\>x>

        <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>
        x<rsub|n>\<leqslant\>x>
      </enumerate>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
        <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|x<rsub|>\<leqslant\>x<rsub|i>>, hence it follows that
        <math|x\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>.
        As <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|n\<rightarrow\>\<infty\>> x<rsub|n>> we have that\ 

        <\equation*>
          x\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>> x<rsub|n>
        </equation*>

        <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
        <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|x<rsub|>\<leqslant\>x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>,
        so that <math|x\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        sup|n\<rightarrow\>\<infty\>> x<rsub|n>>. Hence\ 

        <\equation*>
          x\<leqslant\><below|lim sup|n\<rightarrow\>\<infty\>>
        </equation*>
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
        <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
        we have <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|i>\<leqslant\>x>,
        so that <math|<below|lim inf|n\<rightarrow\>\<infty\>>
        x<rsub|n>=<below|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,n|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x|>>.
        So that\ 

        <\equation*>
          <below|lim inf|n\<rightarrow\>\<infty\>> x<rsub|n>\<leqslant\>x
        </equation*>

        <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
        <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x<rsub|i>\<leqslant\>x>, so it follows that
        <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>,
        hence <math|inf<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<leqslant\>x>.
        Using the definition of <math|<below|lim
        sup|n\<rightarrow\>\<infty\>> x<rsub|n>> it follows then that\ 

        <\equation*>
          <below|lim sup|n\<rightarrow\>\<infty\>> x<rsub|n>\<leqslant\>x
        </equation*>
      </enumerate>
    </enumerate>
  </proof>

  <\theorem>
    <label|lim sup xn+x>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
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
    <label|lim inf -xn>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a sequence of extended reals then\ 

    <\enumerate>
      <item><math|<below|lim inf|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>=-<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>

      <item><math|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>=<below|-lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>
    </enumerate>
  </theorem>

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

  <\lemma>
    <label|sup,inf sum of monotone sequences>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\>\<bbb-R\>>
    sequences of <with|font-series|bold|reals> [so that the sums are well
    defined] then\ 

    <\enumerate>
      <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>x<rsub|i+1>> and
      <math|y<rsub|i>\<leqslant\>y<rsub|i+1>> then

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>f <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i+1>\<leqslant\>x<rsub|i>> and
      <math|y<rsub|i+1>\<leqslant\>y<rsub|i>> then

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      and <math|y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      it follows that <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|x<rsub|i>+y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      hence\ 

      <\equation>
        <label|eq 17.14.006>sup<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      Take now <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then for
      <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have either\ 

      <\description>
        <item*|<math|i\<less\>l>>then <math|x<rsub|l>+y<rsub|i>\<leqslant\>x<rsub|l>+y<rsub|l>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        so that <math|y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|l>>

        <item*|<math|l\<leqslant\>i>><math|x<rsub|l>+y<rsub|i>\<leqslant\>x<rsub|i>+y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        so that <math|y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|l>>
      </description>

      as in all cases we have that <math|y<rsub|i>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|l>>
      it follows that\ 

      <\equation>
        <label|eq 17.15.006>\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
        we have >sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-x<rsub|l>
      </equation>

      We have as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      by <reference|supremum of set of real numbers is ververy -ifinity>]
      only the following possibilities for
      <math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <\description>
        <item*|<math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>>then
        by <reference|eq 17.15.006> we have
        <math|sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>
        so that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.

        <item*|<math|sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<in\>\<bbb-R\>>>then
        by <reference|eq 17.15.006> we have
        <math|\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> that
        <math|x<rsub|l>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        proving that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>-sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
        and thus <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      </description>

      As in all cases we have <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      it follows using <reference|eq 17.14.006> that\ 

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      <item>Define <math|<around*|{|<wide|x|\<bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>,<around*|{|<wide|y|\<bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      by <math|<wide|x|\<bar\>><rsub|i>=-x<rsub|i>> and
      <math|<wide|y|\<bar\>><rsub|i>=-y<rsub|i>> then
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|<wide|x|\<bar\>><rsub|i>\<leqslant\><wide|x|\<bar\>><rsub|i+1>>
      and <math|<wide|y|\<bar\>><rsub|i>\<leqslant\><wide|y|\<bar\>><rsub|i+1>>.
      Hence using (1) we have that <math|sup<around*|(|<around*|{|<wide|x|\<bar\>><rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|<wide|y|\<bar\>><rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|<wide|x|\<bar\>><rsub|i>+<wide|y|\<bar\>><rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      or <math|sup<around*|(|<around*|{|-x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|-y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|-<around*|(|x<rsub|i>+y<rsub|i>|)>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Using <reference|-sup A=inf -A> we have then that

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>+y<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|liminf and limsup properties for sum product>Let
    <math|k\<in\>\<bbb-N\><rsub|0>> then <math|<below|lim
    inf|i\<rightarrow\>\<infty\>>> and <math|<below|lim
    sup|i\<rightarrow\>\<infty\>>> have the following properties\ 

    <\enumerate>
      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      is a sequence of extended reals and
      <math|0\<leqslant\>\<alpha\>\<in\>\<bbb-R\>> then

      <\enumerate>
        <item><math|<below|lim inf|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>

        <item><math|<below|lim sup|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
      </enumerate>

      \ 

      <item>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      be sequences of <with|font-series|bold|real numbers> such that
      <math|<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>|)>+<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
      y<rsub|i>|)>> is well defined then\ 

      <\enumerate>
        <item><math|<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>|)>+<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        y<rsub|i>|)>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>>

        <item><math|<below|lim sup |i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>\<leqslant\><around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>|)>+<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>> y<rsub|i>|)>>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
        A=inf -A>>>>|<cell|sup<around*|(|<around*|{|\<alpha\>\<cdot\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
        A=inf -A>>>>|<cell|\<alpha\>\<cdot\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim
        sup|i\<rightarrow\>\<infty\>><around*|(|\<alpha\><rsub|i>\<cdot\>x|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|\<alpha\>\<cdot\>x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
        A=inf -A>>>>|<cell|inf<around*|(|<around*|{|\<alpha\>\<cdot\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|-sup
        A=inf -A>>>>|<cell|\<alpha\>\<cdot\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>>>
      </eqnarray*>

      <item>\ 

      <\enumerate>
        <item>Let <math|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then we
        have \ <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>
        that <math|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|i>\<in\>\<bbb-R\>>
        and <math|inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>y<rsub|i>\<in\>\<bbb-R\>>
        so that <math|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
        is well defined and <math|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|i>+y<rsub|i>>
        So \ <math|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>
        hence we have

        <\equation>
          <label|eq 17.16.006>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|j>+y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
          inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>
        </equation>

        Now as <math|\<forall\>l\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text|
        >inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>|)>>
        and <math|inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l+1,\<ldots\>,\<infty\>|}>|}>|)>>
        we can use <reference|sup,inf sum of monotone sequences> giving
        <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>+sup<around*|(|<around*|{|inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|}>|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>+inf<around*|(|<around*|{|y<rsub|j>\|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
        Applying this together with <reference|eq 17.16.006> and the
        definition of <math|<below|lim inf|i\<rightarrow\>\<infty\>>> we have
        finally\ 

        <\equation*>
          <below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>+<below|lim
          inf|i\<rightarrow\>\<infty\>> y<rsub|i>\<leqslant\><below|lim
          inf|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>
        </equation*>

        <item>Define <math|<around*|{|<wide|x|\<bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|<wide|y|\<bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        by <math|<wide|x|\<bar\>><rsub|i>=-x<rsub|i>>,
        <math|<wide|y|\<bar\>><rsub|i>=-y<rsub|i>> then using (1) we have
        that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        <wide|x|\<bar\>><rsub|i>+<below|lim inf|i\<rightarrow\>\<infty\>>
        <wide|y|\<bar\>><rsub|i>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|<wide|x|\<bar\>><rsub|i>+<wide|y|\<bar\>><rsub|i>|)>\<Rightarrow\><below|lim
        inf|i\<rightarrow\>\<infty\>> <around*|(|-x<rsub|i>|)>+<below|lim
        inf|i\<rightarrow\>\<infty\>> <around*|(|-y<rsub|i>|)>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|-<around*|(|x<rsub|i>+y<rsub|i>|)>|)>>,
        using <reference|lim inf -xn> we have <math|-<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>+<around*|(|-<below|lim
        sup|i\<rightarrow\>\<infty\>> y<rsub|i>|)>\<leqslant\>-<below|lim
        sup|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>>.
        Hence\ 

        <\equation*>
          <below|lim sup|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>\<leqslant\><below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>+<below|lim
          sup|i\<rightarrow\>\<infty\>> y<rsub|i>
        </equation*>
      </enumerate>
    </enumerate>
  </proof>

  The following theorem shows the relation between both types of limits.

  <\theorem>
    <label|the limit inferior is lower then limit superior>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    then <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>\<leqslant\><below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>>
  </theorem>

  <\proof>
    Fix <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then
    <math|\<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    either\ 

    <\description>
      <item*|<math|m\<in\><around*|{|k,\<ldots\>,n-1|}>>>then
      <math|m\<leqslant\>n> so that <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>>
      hence <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>

      <item*|<math|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>then
      <math|><math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    </description>

    So we have

    <\equation*>
      \<forall\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}><text| that>
      \ inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    and thus\ 

    <\equation*>
      sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    giving that\ 

    <\equation*>
      sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>\|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>

    proving

    <\equation*>
      <below|lim inf|n\<rightarrow\>\<infty\>>
      x<rsub|n>\<leqslant\><below|lim sup|n\<rightarrow\>\<infty\>> x<rsub|n>
    </equation*>
  </proof>

  <\theorem>
    <label|convergence in real implies that lim inferior = lim superior>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>,<math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a sequence of <with|font-series|bold|real numbers> then we have

    <\enumerate>
      <item>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists
      (in <math|\<bbb-R\>>) then <math|<below|lim inf
      |i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
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
      <item>Let <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\>>.
      Assume that <math|<below|lim inf|i\<rightarrow\>\<infty\>>x<rsub|i>\<less\>x>
      then we have either

      <\description>
        <item*|<math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i=-\<infty\>>>>Assume that
        <math|-\<infty\>\<neq\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\<nobracket\>>|)>>
        then we have <math|-\<infty\>\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\<nobracket\>>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|\<nobracket\>>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=-\<infty\>> a contradiction.
        So we must have

        <\equation>
          <label|eq 17.27.035>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\<nobracket\>>|)>=-\<infty\>
        </equation>

        As <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists we
        have that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        is bounded [see <reference|convergent sequence are bounded>], so
        there exists a <math|K\<in\>\<bbb-R\>> such that
        <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
        <math|<around*|\||x<rsub|i>|\|>\<less\>K> or\ 

        <\equation>
          <label|eq 17.28.035>\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
          we have-K\<less\>x<rsub|i>\<less\>K
        </equation>

        Using <reference|eq 17.27.035> and the fact that
        <math|-\<infty\>\<less\>-K> there exists a
        <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
        <math|x<rsub|i>\<less\>-K> contradicting <reference|eq 17.28.035>.\ 

        <item*|<math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<in\>\<bbb-R\>>>Take now <math|\<varepsilon\>=x-<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<gtr\>0>. As
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists there
        exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that

        <\equation>
          <label|eq 17.29.035>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>
          we have <around*|\||x<rsub|n>-x|\|>\<less\><frac|\<varepsilon\>|2>
        </equation>

        . Now

        <\eqnarray*>
          <tformat|<table|<row|<cell|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>>|<cell|=>|<cell|x-\<varepsilon\>>>|<row|<cell|>|<cell|\<less\>>|<cell|x-<frac|\<varepsilon\>|2>>>>>
        </eqnarray*>

        so that by the definition of a infinum there exists a
        <math|M\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> such that
        <math|x<rsub|M>\<less\>x-<frac|\<varepsilon\>|2>>. Hence
        <math|<around*|\||x<rsub|M>-x|\|>=x-x<rsub|M>\<gtr\><frac|\<varepsilon\>|2>>
        which contradicts <reference|eq 17.29.035>.\ 
      </description>

      As we in all cases have a contradiction. the assumption that
      <math|<below|lim inf|i\<rightarrow\>\<infty\>>x<rsub|i>\<less\>x> must
      be wrong so we must have that\ 

      <\equation>
        <label|eq 17.30.0.35>x\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation>

      Assume now that <math|x\<less\><below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>>. Then for <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>> we have either\ 

      <\description>
        <item*|<math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>>>Assume that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<neq\>\<infty\>>
        then we have <math|\<infty\>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<less\>\<infty\>>
        a contradiction. So we must have that\ 

        <\equation>
          <label|eq 17.31.035>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>
        </equation>

        As \ <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists we
        have that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
        is bounded [see <reference|convergent sequence are bounded>], so
        there exists a <math|K\<in\>\<bbb-R\>> such that
        <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
        <math|<around*|\||x<rsub|i>|\|>\<less\>K> or\ 

        <\equation>
          <label|eq 17.32.035>\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
          we have-K\<less\>x<rsub|i>\<less\>K
        </equation>

        As <math|K\<less\>\<infty\>> there exists by the definition of the
        supremum and <reference|eq 17.31.035> that
        <math|\<exists\>i\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|K\<less\>x<rsub|i>> contradicting <reference|eq 17.32.035>.

        <item*|<math|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<in\>\<bbb-R\>>>Take <math|\<varepsilon\>=<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>-x\<gtr\>\<varepsilon\>>. As
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists there
        exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that\ 

        <\equation>
          <label|eq 17.33.035>\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>
          we have <around*|\||x<rsub|n>-x|\|>\<less\><frac|\<varepsilon\>|2>
        </equation>

        Now

        <\eqnarray*>
          <tformat|<table|<row|<cell|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|\<geqslant\>>|<cell|>>|<row|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)><around*|\||l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<below|lim
          sup|i\<rightarrow\>\<infty\>> x<rsub|i>>|<cell|=>|<cell|x+\<varepsilon\>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|x+\<varepsilon\>>>>>
        </eqnarray*>

        so using the definiton of the supremum there exists a
        <math|M\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> such that
        <math|x<rsub|M>\<gtr\>x+<frac|\<varepsilon\>|2>>. Hence
        <math|<around*|\||x<rsub|M>-x|\|>\<gtr\><frac|\<varepsilon\>|2>>
        contradicing <reference|eq 17.33.035>
      </description>

      As we have in all cases a contradiction the assumption
      <math|x\<less\><below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> must
      be wrong, hence\ 

      <\equation>
        <label|eq 17.34.035><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<leqslant\>x
      </equation>

      Finally we have <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><rsub|<text|<reference|eq
      17.34.035>>>x\<leqslant\><rsub|<text|<reference|eq
      17.30.0.35>>><below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>\<leqslant\><rsub|<text|<reference|the limit inferior is lower
      then limit superior>>><below|lim sup
      x<rsub|i>|i\<rightarrow\>\<infty\>>> proving that\ 

      <\equation*>
        <below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>,\<in\>\<bbb-R\>\<wedge\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<in\>\<bbb-R\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>
      </equation*>

      <item>Assume that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=x\<in\>\<bbb-R\>>. Take <math|\<varepsilon\>\<gtr\>0> then we
      have <math|x-\<varepsilon\>\<less\><below|x=lim
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
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>.
    </enumerate>
  </proof>

  Motivated by the above theorem we can extend the notation of a limit on
  <math|\<bbb-R\>> to <math|<wide|\<bbb-R\>|\<wide-bar\>>> as follows

  <\definition>
    <label|definition of limit in the extented reals>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals then <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    exists iff <math|<below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>> x<rsub|i>> and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> is defined as
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>.
  </definition>

  <\note>
    By <reference|independence of limit inf and limit sup of start index> the
    limit, if it exists, is independent of the value of <math|k> (as is
    expressed in the notation).\ 
  </note>

  Using the above definition and <reference|convergence in real implies that
  lim inferior = lim superior> and proces that the limit of the real numbers
  is the same as the limit in the extended reals as is expressed in the
  following proposition. We note <math|lim<rsub|\<bbb-R\>>> as the limit in
  <math|\<bbb-R\>> to clarify the distinction between the two limits.

  <\proposition>
    Let <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence of <with|font-series|bold|real numbers> then
    <math|<below|lim<rsub|\<bbb-R\>>|i\<rightarrow\>\<infty\>>x<rsub|i>=x> if
    and only if <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
  </proposition>

  <\proof>
    See \ <reference|convergence in real implies that lim inferior = lim
    superior> and the definition.
  </proof>

  <\remark>
    To avoid execessive notation we use the convention that if we use
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x> then we
    automatical assume that the limit exists and is equal to <math|x>.
  </remark>

  <\example>
    <label|limit of constant extented real>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be defined by <math|x<rsub|i>=x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
  </example>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x|}>|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x|}>|)>>>|<row|<cell|>|<cell|=>|<cell|x>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|x|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x|}>|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|nf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>>>
    </eqnarray*>

    proving that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>.
  </proof>

  The limit of a sequence of extended reals is independent of a translation
  of the index

  <\proposition>
    <label|limit and translation of indexes>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals and <math|n\<in\>\<bbb-N\><rsub|0>> then
    if <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists we have
    that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>> exists and
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i+n>>
  </proposition>

  <\proof>
    As <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists we have by
    definition that <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>. Next we have <math|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i+n>\<equallim\><rsub|<text|<reference|lim
    inf lim sup basic properties>>><below|lim inf|i\<rightarrow\>\<infty\>>
    x<rsub|i>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i+n>>
  </proof>

  <\theorem>
    <label|limit xi+x>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>>,
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
    sup xn+x>>><below|lim sup|i\<rightarrow\>\<infty\>><around*|(|
    x+x<rsub|i>|)>> proving that\ 

    <\equation*>
      <below|lim|i\<rightarrow\>\<infty\>><around*|(|x+x<rsub|i>|)>=x+<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
    </equation*>
  </proof>

  In the theorem <reference|convergence in real implies that lim inferior =
  lim superior> we have proved that if a sequence of reals converges in
  <math|\<bbb-R\>> then it converges also in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>. We intend now to prove that
  increasing (decreasing) sequences in <math|<wide|\<bbb-R\>|\<wide-bar\>>>
  converges and that the limit is equal to the supremum and ibfnum of the
  sequence [as in <math|\<bbb-R\>>]. To do this we need the following lemma.

  <\lemma>
    <label|supremum (infinum) of increasing (decreasing) sequence is
    indpendent of start>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a increasing [or decreasing] sequence of extended real numbers then if
    <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
    <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    [or <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|]>>
  </lemma>

  <\proof>
    \ Let <math|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>

    <\description>
      <item*|increasing sequence>As <math|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      we have by <reference|inclusion and sup and inf> that

      <\equation*>
        sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      there <math|\<exists\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such
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
      we must have by <reference|inclusion and sup and inf>

      <\equation*>
        inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>.
      </equation*>

      Next if <math|x\<in\><around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>>
      then <math|\<exists\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such
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
    extented reals>Let <math|k\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a increasing [or decreasing] sequence of extended reals then
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> exists and
    <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
    [or <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|]>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|increasing sequence>First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|supremum
        (infinum) of increasing (decreasing) sequence is indpendent of
        start>>>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><eq-number><label|eq
        17.37.035>>>>>
      </eqnarray*>

      Next as <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is increasing we have for <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> that
      <math|x<rsub|n>\<leqslant\>x<rsub|i>> so that
      <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
      proving that\ 

      <\equation>
        <label|eq 17.38.035>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=x<rsub|n>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.38.035>>>>|<cell|sup<around*|(|<around*|{|x<rsub|n>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><eq-number><label|eq
        17.39.035>>>>>
      </eqnarray*>

      \ Using <reference|eq 17.37.035> and <reference|eq 17.39.035> we have
      that <math|<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)><rsub|>>
      proving that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
        exists<infix-and><below|lim|i\<rightarrow\>\<infty\>>
        x<rsub|i>=sup<around*|(|<around*|{|x<rsub|i>\||}>|)>
      </equation*>

      <item*|decreasing sequence>Define <math|<around*|{|<wide|x|\<wide-bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      by <math|<wide|x|\<wide-bar\>><rsub|i>=-x<rsub|i>> then as
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is decreasing we have that <math|<around*|{|<wide|x|\<wide-bar\>><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      is increasing. So using <reference|eq 17.37.035> and <reference|eq
      17.39.035> we have that <math|<below|lim sup|i\<rightarrow\>\<infty\>>
      <wide|x|\<wide-bar\>><rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>>
      <wide|x|\<wide-bar\>><rsub|i>=sup<around*|(|<around*|{|<wide|x|\<wide-bar\>><rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
      Applying then <reference|lim inf -xn> and <reference|-sup A=inf -A> we
      have <math|-<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=-<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=-inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      proving that <math|><math|<below|lim sup|i\<rightarrow\>\<infty\>>
      x<rsub|i>=<below|lim inf|i\<rightarrow\>\<infty\>>
      x<rsub|i>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      giving\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
        exists<infix-and><below|lim|i\<rightarrow\>\<infty\>>
        x<rsub|i>=inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>
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
    <math|x=inf<around*|(|<around*|{|x<rsub|n>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
  </definition>

  The idea of a limit in the reals numbers that the sequence approaches its
  limit the higher the index is (as is expressed in the <math|\<varepsilon\>>
  definition of a lint in the real numbers), we show now a alternative
  definition of the limit in <math|<wide|\<bbb-R\>|\<wide-bar\>>> that embed
  this idea.

  <\theorem>
    <label|alternative definition of limit in the extented reals>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><rsub|>>
    be a sequence of extended reals then we have the following equivalences

    <\enumerate>
      <item><math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>=\<infty\>>
      if and only <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
      <math|C\<less\>x<rsub|n>>

      <item><math|<below|lim|i\<rightarrow\>\<infty\>> x<rsub|i>=-\<infty\>>
      if and only <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
      <math|x<rsub|n>\<less\>-C>

      <item><math|<below|lim|i\<rightarrow\>\<infty\>>
      x<rsub|i>=x\<in\>\<bbb-R\>> if and only
      <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<in\><around*|{|N,\<ldots\>m\<infty\>|}>> we have
      that <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>>

      <\note>
        as <math|x,\<varepsilon\>\<in\>\<bbb-R\>> we have that
        <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>> is
        equivalent with <math|x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>>
      </note>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><space|1em>

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>
        x<rsub|i>=\<infty\>> then <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>,
        using <reference|condition for supremum (infinum) to be infinite> we
        have then either:

        <\description>
          <item*|<math|\<infty\>\<in\><around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>>So
          there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=\<infty\>>.
          Using <reference|condition for supremum (infinum) to be infinite>
          we have that <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <math|x<rsub|n>=\<infty\>>. Hence if
          <math|C\<in\>\<bbb-R\><rsub|+>> then
          <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
          <math|C\<less\>x<rsub|n>>.

          <item*|<math|\<forall\>C\<in\>\<bbb-R\>
          \<exists\>x\<in\><around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}><big|cap>\<bbb-R\>
          with C\<less\>x>>then given <math|C\<in\>\<bbb-R\><rsub|+>> there
          exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
          that <math|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>>.
          Hence <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <math|C\<less\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x<rsub|n>>
        </description>

        So in all cases we have that

        <\equation*>
          \<forall\>C\<in\>\<bbb-R\><rsub|+> there
          \<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}> such that
          \<forall\>n\<geqslant\>N we have \ C\<less\>x<rsub|n>
        </equation*>

        <item*|<math|\<Leftarrow\>>>Assume that <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\>\<infty\>>. Take
        <math|C=max<around*|(|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>,1|)>\<in\>\<bbb-R\><rsub|+>> then there exists a
        <math|N\<in\><around*|{|k,\<ldots\>,n|}>> such that
        <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
        <math|C\<less\>x<rsub|i>>. Hence <math|C\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>> leading to the contradiction
        <math|<below|lim inf|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<less\><below|lim inf|i\<rightarrow\>\<infty\>> x<rsub|i>>.
        Hence <math|\<infty\>\<leqslant\><below|lim
        inf|i\<rightarrow\>\<infty\> > x<rsub|i>\<leqslant\><rsub|<text|<reference|the
        limit inferior is lower then limit
        superior>>><rsub|<text|>><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>> proving that <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim sup
        |i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>> or that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>
        x<rsub|i>=-\<infty\>> then <math|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>>,
        using <reference|condition for supremum (infinum) to be infinite> we
        have then either:

        <\description>
          <item*|<math|-\<infty\>\<in\><around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>>So
          there exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
          such that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>=-\<infty\>>.
          Using <reference|condition for supremum (infinum) to be infinite>
          we have that <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <math|x<rsub|n>=\<infty\>>. Hence if
          <math|C\<in\>\<bbb-R\><rsub|+>> then
          <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we have
          <math|x<rsub|n>\<less\>-C>.

          <item*|<math|\<forall\>C\<in\>\<bbb-R\>
          \<exists\>x\<in\><around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}><big|cap>\<bbb-R\>
          with x\<less\>C>>then given <math|C\<in\>\<bbb-R\><rsub|+>> there
          exists a <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
          that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>-C>.
          Hence <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>>
          we have <math|x<rsub|n>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<less\>-C>
        </description>

        So in all cases we have that

        <\equation*>
          \<forall\>C\<in\>\<bbb-R\><rsub|+> there
          \<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}> such that
          \<forall\>n\<geqslant\>N we have \ x<rsub|n>\<less\>-C\ 
        </equation*>

        <item*|<math|\<Leftarrow\>>>Assume that
        <math|-\<infty\>\<less\><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>>. Take <math|C=-min<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>,-1|)>\<in\>\<bbb-R\><rsub|+>>
        then there exists a <math|N\<in\><around*|{|k,\<ldots\>,n|}>> such
        that <math|\<forall\>n\<in\><around*|{|N,\<ldots\>,\<infty\>|}>> we
        have <math|x<rsub|i>\<less\>-C>. Hence
        <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)><around*|\||n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|\|>|}>|)>\<leqslant\>sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>-C>
        leading to the contradiction <math|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>\<less\><below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>>. Hence <math|<below|lim
        inf|i\<rightarrow\>\<infty\> > x<rsub|i>\<leqslant\><rsub|<text|<reference|the
        limit inferior is lower then limit
        superior>>><rsub|<text|>><below|lim sup|i\<rightarrow\>\<infty\>>
        x<rsub|i>\<leqslant\>-\<infty\>> proving that <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>=<below|lim sup
        |i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>> or that\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>
        </equation*>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x\<in\>\<bbb-R\>>
        then <math|sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=x=inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
        Let <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> then we have

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

        <item*|<math|\<Leftarrow\>>>Given
        <math|\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> there exists a
        <math|N<rsub|\<varepsilon\>>> such that
        <math|\<forall\>n\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>>
        we have <math|x-\<varepsilon\>\<less\>x<rsub|n>\<less\>x+\<varepsilon\>>.
        Hence we have that <math|sup<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x+\<varepsilon\>>
        and <math|x-\<varepsilon\>\<leqslant\>inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|N<rsub|\<varepsilon\>>,\<ldots\>,\<infty\>|}>|}>|)>>
        from which it follows that <math|inf<around*|(|<around*|{|sup<around*|(|<around*|{|x<rsub|i>|}>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x+\<varepsilon\>>
        and <math|x-\<varepsilon\>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|x<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>|}>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>>.
        Using the definition of <math|<below|lim
        inf|i\<rightarrow\>\<infty\>> x<rsub|i>> and <math|<below|lim
        sup|i\<rightarrow\>\<infty\>> x<rsub|i>> we have:

        <\equation>
          \<varepsilon\>-\<infty\>\<less\>x-\<varepsilon\>\<leqslant\><below|lim
          inf|i\<rightarrow\>\<infty\>> x<rsub|i>\<leqslant\><below|lim sup
          |i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>x+\<varepsilon\>\<less\>\<infty\>
        </equation>

        \ As <math|\<varepsilon\>> was choocen arbitrary we have by
        <reference|consequence of the Archimedean property (2)> that
        <math|x\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>>\<leqslant\><below|lim
        sup|i\<rightarrow\>\<infty\>>\<leqslant\>x> proving that
        <math|x=<below|lim inf|i\<rightarrow\>\<infty\>>=<below|lim
        sup|i\<rightarrow\>\<infty\>>>. Hence we have\ 

        <\equation*>
          <below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>
          exists<infix-and><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x
        </equation*>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|limit n to infinite>Let <math|<around*|{|x<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    be defined by <math|x<rsub|n>=n> then
    <math|<below|lim|n-\<less\>\<infty\>>x<rsub|n>> exists and is equal to
    <math|\<infty\>>. In there words <math|<below|lim|n\<rightarrow\>\<infty\>>n=\<infty\>>
  </corollary>

  <\proof>
    Let <math|C\<in\>\<bbb-R\><rsub|+>> then by <reference|consequence of the
    archimedean property for the reals> there exist a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|C\<less\>N> which by the
    previous theorem <reference|alternative definition of limit in the
    extented reals> proves that <math|<below|lim|n\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>>
  </proof>

  <\corollary>
    <label|limit and absolut value>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals with <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=x>
    then <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>|\|>=<around*|\||x|\|>>
  </corollary>

  <\proof>
    We have three cases to consider for <math|x>

    <\description>
      <item*|<math|x\<in\>\<bbb-R\>>>using the previous theorem [see
      <reference|alternative definition of limit in the extented reals>] we
      have <math|\<forall\>\<varepsilon\>\<in\>\<bbb-R\><rsub|+>> that
      <math|\<exists\>N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||x-x<rsub|n>|\|>\<less\>\<varepsilon\>\<Rightarrowlim\><rsub|<around*|\||<around*|\||x|\|>-<around*|\||x<rsub|n>|\|>|\|>\<leqslant\><around*|\||x-x<rsub|n>|\|>>x<rsub|n>\<in\>\<bbb-R\>\<wedge\><around*|\||<around*|\||x|\|>-<around*|\||x<rsub|n>|\|>|\|>\<less\>\<varepsilon\>>
      proving by the previous theorem again that
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||x<rsub|i>|\|>=<around*|\||x|\|>>.\ 

      <item*|<math|x=\<infty\>>>using the previous theorem (see
      <reference|alternative definition of limit in the extented reals>) we
      have <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> that there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|C\<leqslant\>x<rsub|n>\<Rightarrowlim\><rsub|0\<leqslant\>C\<Rightarrow\>0\<leqslant\>x<rsub|n>>C\<leqslant\><around*|\||x<rsub|n>|\|>>
      proving by the previous theorem that
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|n>=\<infty\>=<around*|\||x|\|>>

      <item*|<math|x=-\<infty\>>>using the previous theorem [see
      <reference|alternative definition of limit in the extented reals>] we
      have <math|\<forall\>C\<in\>\<bbb-R\><rsub|+>> that there exists a
      <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>n\<geqslant\>N> we have
      <math|x<rsub|n>\<leqslant\>-C\<Rightarrowlim\>C\<leqslant\>-x<rsub|n>\<Rightarrowlim\><rsub|0\<leqslant\>C\<Rightarrow\>0\<leqslant\>-x<rsub|n>\<Rightarrow\>x<rsub|n>\<leqslant\>0>C\<leqslant\><around*|\||x<rsub|n>|\|>>
      proving by the previous theorem that
      <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|n>=\<infty\>=<around*|\||x|\|>>
    </description>
  </proof>

  We show now that the limit in <math|<wide|\<bbb-R\>|\<wide-bar\>>> has
  similar properties as the limit in <math|\<bbb-R\>>

  <\theorem>
    <label|properties of the limit in the extented reals>The limit in
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> has the following properties

    <\enumerate>
      <item>Let <math|A\<in\><wide|\<bbb-R\>|\<wide-bar\>>>,
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      a sequence of extended reals with a limit then\ 

      <\enumerate>
        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        <math|x<rsub|i>\<leqslant\>A> then
        <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\>A>

        <item>If <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>
        A\<leqslant\>x<rsub|i>> then <math|A\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
      </enumerate>

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

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      be sequences of extended reals with limits such that
      <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
      is well defined and there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have that <math|x<rsub|i>+y<rsub|i>> is well defined then for
      <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
      we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

      <item>Let <math|><math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      and <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
      be sequences of extended reals with limits such that for
      <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and
      <math|y=<below|lim|i\<rightarrow\>\<infty\>>> we have if <math|x=0>
      then <math|y\<neq\>\<infty\>,-\<infty\>> and if <math|y=0> then
      <math|x\<neq\>\<infty\>,-\<infty\>> then
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

      <item>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
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
        of limit>A\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>.
      </enumerate>

      <item>As <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|x<rsub|i>\<leqslant\>y<rsub|i>>, we have using
      <reference|lim inf and lim sup inequality> that <math|<below|lim
      sup|n\<rightarrow\>\<infty\>> x<rsub|n>\<leqslant\><below|lim
      sup|n\<rightarrow\>\<infty\>> y<rsub|n>>
      <math|\<Rightarrowlim\><rsub|definition of
      limit><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>>,

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
            <math|C\<in\>\<bbb-R\><rsub|+>> then using <reference|alternative
            definition of limit in the extented reals> there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<gtr\><frac|C|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<gtr\>C>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<infty\>=\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
            and thus <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<less\>-<frac|C|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<less\>-C\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=-\<infty\>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
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
            <math|x<rsub|n>\<gtr\><frac|C|-\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x<rsub|n>\<less\>-C\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=-\<infty\>=\<alpha\>\<cdot\>\<infty\>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=-\<infty\>>>Let
            now <math|C\<in\>\<bbb-R\><rsub|+>> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|\<forall\>n\<geqslant\>N> we have
            <math|x<rsub|n>\<less\><frac|C|\<alpha\>>\<Rightarrow\>C\<less\>\<alpha\>\<cdot\>x<rsub|n>\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>=\<alpha\>\<cdot\><around*|(|-\<infty\>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>
            proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>

            <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<in\>\<bbb-R\>>>Take
            <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> and let
            <math|\<varepsilon\>\<gtr\>0> then there exists a
            <math|N\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
            <math|<around*|\||x-x<rsub|n>|\|>\<less\><frac|\<varepsilon\>|-\<alpha\>>\<Rightarrow\>x+<frac|\<varepsilon\>|\<alpha\>>\<less\>x<rsub|n>\<less\>x-<frac|\<varepsilon\>|\<alpha\>>\<Rightarrow\>\<alpha\>\<cdot\>x-\<varepsilon\>\<less\>\<alpha\>\<cdot\>x<rsub|n>\<less\>\<alpha\>\<cdot\>x+\<varepsilon\>\<Rightarrow\><around*|\||\<alpha\>\<cdot\>x-\<alpha\>\<cdot\>x<rsub|n>|\|>\<less\>\<varepsilon\>>
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
        <math|x<rsub|i>+y<rsub|i>\<less\><frac|-C|2>+<frac|-C|2>=-C> proving
        that for <math|<around*|{|x<rsub|i>+y<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
        we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=-\<infty\>=-\<infty\>+<around*|(|-\<infty\>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>+<around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>=\<infty\>\<wedge\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<in\>\<bbb-R\>>>Take
        <math|y=<below|lim|i-.\<infty\>>y<rsub|i>> then there exists a
        <math|N<rsub|1>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
        <math|\<forall\>i\<geqslant\>N<rsub|1>> we have
        <math|<around*|\||y-y<rsub|i>|\|>\<less\>1\<Rightarrow\>-\<infty\>\<less\>y-1\<less\>y<rsub|i>>.
        Also there exists a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|2>> we have
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
        <math|<around*|\||y-y<rsub|i>|\|>\<less\>1\<Rightarrow\>y<rsub|i>\<less\>y+1\<less\>\<infty\>>.
        Also there exists a <math|N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|2>> we have
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
      <math|x\<neq\>\<infty\>,-\<infty\>> so we must consider the following
      remaining cases:

      <\description>
        <item*|<math|x=\<infty\>\<wedge\>y=\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|1\<leqslant\>x<rsub|i>> and <math|C\<leqslant\>y<rsub|j>>. Take
        <math|n=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then if
        <math|i\<geqslant\>n> we have <math|1\<leqslant\>x<rsub|i>\<wedge\>C\<leqslant\>y<rsub|i>\<Rightarrow\>C\<leqslant\>C\<cdot\>x<rsub|i>\<wedge\>C\<cdot\>x<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>>.
        This proves that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=\<infty\>\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

        <item*|<math|x=\<infty\>\<wedge\>y=-\<infty\>>>Let
        <math|C\<in\>\<bbb-R\><rsub|+>> then there exists
        <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|1\<leqslant\>x<rsub|i>> and <math|y<rsub|j>\<leqslant\>-C>.
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
          <math|n\<leqslant\>i> we have <math|<frac|y|2>\<less\>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<leqslant\>x<rsub|i>\<Rightarrowlim\><rsub|0\<less\><frac|2\<cdot\>C|y>\<wedge\>0\<less\><frac|y|2>\<less\>y<rsub|i>><around*|(|<frac|2\<cdot\>C|y>|)>\<cdot\><frac|y|2>\<leqslant\><frac|2\<cdot\>C|y>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<wedge\><frac|2\<cdot\>C|y>\<cdot\>y<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>\<Rightarrow\>C\<leqslant\>x<rsub|i>\<cdot\>y<rsub|i>>.
          So we have <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=\<infty\>=x\<cdot\>\<infty\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item*|<math|y\<less\>0>>Let <math|<around*|{|y<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
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
        giving <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<around*|(|-x<rsub|i>|)>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|-x<rsub|i>|)>|)>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>\<Rightarrow\>-<around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>|)>=-<around*|(|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>|)>\<Rightarrow\>><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

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
        that <math|<around*|\||y<rsub|i>-y<rsub|>|\|>\<less\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>>.
        Take now <math|n=max<around*|(|N<rsub|1>,N<rsub|2>,N<rsub|3>|)>> then
        if <math|i\<geqslant\>n> we have tht
        <math|<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x\<cdot\>y|\|>=<around*|\||x<rsub|i>\<cdot\>y<rsub|i>-x<rsub|i>\<cdot\>y+x<rsub|i>\<cdot\>y-x\<cdot\>y|\|>=<around*|\||x<rsub|i>\<cdot\><around*|(|y<rsub|i>-y|)>+<around*|(|x<rsub|i>-x|)>\<cdot\>y|\|>\<leqslant\><around*|\||x<rsub|i>|\|>\<cdot\><around*|\||y<rsub|i>-y|\|>+<around*|\||y|\|>\<cdot\><around*|\||x<rsub|i>-x|\|>\<less\><around*|(|1+<around*|\||x|\|>|)>\<cdot\><frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||x|\|>|)>>+<frac|\<varepsilon\>|2\<cdot\><around*|(|1+<around*|\||y|\|>|)>>\<cdot\><around*|\||y|\|>=<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
        proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|x<rsub|i>\<cdot\>y<rsub|i>|)>=x\<cdot\>y=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>.
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
        we have <math|C\<leqslant\>x<rsub|i>,y<rsub|j>\<leqslant\>-C>. Take
        <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then
        <math|\<forall\>i\<in\>\<bbb-N\>> we have
        <math|C\<leqslant\>x<rsub|i>\<leqslant\>max<around*|(|x<rsub|i>,y<rsub|i>|)>>
        and <math|min<around*|(|x<rsub|i>,y<rsub|i>|)>\<leqslant\>y<rsub|i>\<leqslant\>-C>
        proving that\ 

        <\enumerate>
          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=-\<infty\>=min<around*|(|\<infty\>,-\<infty\>|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|max<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=\<infty\>=max<around*|(|\<infty\>,-\<infty\>|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

        <item*|<math|x=\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> and <math|\<varepsilon\>\<gtr\>0>
        there exists a <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>>,
        <math|\<forall\>j\<geqslant\>N<rsub|2>> we have
        <math|max<around*|(|C,<around*|\||y|\|>+\<varepsilon\>|)>\<leqslant\>x<rsub|i>\<wedge\><around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\><text|.
        If we take <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
        <math|\<forall\>i\<geqslant\>N> that
        >C\<leqslant\>x<rsub|i>\<wedge\><around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\>\<wedge\>y<rsub|i>\<less\>y+\<varepsilon\>\<leqslant\><around*|\||y|\|>+\<varepsilon\>\<leqslant\>x<rsub|i>>.
        Hence

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

        <item*|<math|x=-\<infty\>\<wedge\>y\<in\>\<bbb-R\>>>then given
        <math|C\<in\>\<bbb-R\><rsub|+>> and <math|\<varepsilon\>\<gtr\>0>
        there exists <math|N<rsub|1>,N<rsub|2>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
        such that <math|\<forall\>i\<geqslant\>N<rsub|1>,\<forall\>j\<geqslant\>N<rsub|2>>
        we have <math|x<rsub|i>\<leqslant\>-max<around*|(|C,-y+\<varepsilon\>|)>>
        and <math|<around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\>>. Take
        <math|N=max<around*|(|N<rsub|1>,N<rsub|2>|)>> then we have
        <math|\<forall\>i\<geqslant\>N> that
        <math|x<rsub|i>\<leqslant\>-C\<wedge\><around*|\||y-y<rsub|i>|\|>\<less\>\<varepsilon\>\<wedge\>x<rsub|i>\<leqslant\>y-\<varepsilon\>\<less\>y<rsub|i>>,
        hence\ 

        <\enumerate>
          <item><math|min<around*|(|x<rsub|i>,y<rsub|i>|)>=x<rsub|i>\<leqslant\>-C>
          proving that <math|<below|lim|i\<rightarrow\>\<infty\>>min<around*|(|x<rsub|i>,y<rsub|i>|)>=-\<infty\>=min<around*|(|-\<infty\>,y|)>=min<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>

          <item><math|<around*|\||max<around*|(|x<rsub|i>,y<rsub|i>|)>-y|\|>=<around*|\||y<rsub|i>-y|\|>\<less\>\<varepsilon\>>
          proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|min<around*|(|x<rsub|i>,y<rsub|i>|)>|)>=y=max<around*|(|-\<infty\>,y|)>=max<around*|(|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>,<below|lim|i\<rightarrow\>\<infty\>>y<rsub|i>|)>>
        </enumerate>

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
          and <math|min<around*|(|x<rsub|i>,y<rsub|i>|)>\<less\>x+\<varepsilon\>,y+\<varepsilon\>\<Rightarrow\>min<around*|(|x<rsub|i>,y<rsub|i>|)>\<less\>min*<around*|(|x+\<varepsilon\>,y+\<varepsilon\>|)>=min<around*|(|x,y|)>+\<varepsilon\>>
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

    <\equation>
      <label|eq 17.41.035>\<forall\>i\<geqslant\>N\<vDash\><around*|\||x<rsub|i>|\|>\<geqslant\>\<varepsilon\>
    </equation>

    If we take <math|M<rprime|'>=min<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|k,\<ldots\>,N|}>|}>|)>\<gtr\>0>
    [as <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}> we have
    x<rsub|i>\<neq\>0>] and <math|M=min<around*|(|M<rprime|'>,\<varepsilon\>|)>\<gtr\>0>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    either

    <\description>
      <item*|<math|i\<in\><around*|{|k,\<ldots\>,N|}>>>then
      <math|<around*|\||x<rsub|i>|\|>\<geqslant\>\<varepsilon\>\<geqslant\>M>

      <item*|<math|i\<in\><around*|{|N+1,\<ldots\>,\<infty\>|}>>><math|<around*|\||x<rsub|i>|\|>\<geqslant\>M<rprime|'>\<geqslant\>M>
    </description>

    \ \ giving <math|<around*|\||x<rsub|i>|\|>\<geqslant\>M\<gtr\>0> so that
    <math|inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<geqslant\>M\<gtr\>0>.
  </proof>

  <\theorem>
    <label|limit of 1/f>Let <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of extended reals such that
    <math|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>\<neq\>0> then there
    exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
    <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<neq\>0> and for <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    we have that <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>
  </theorem>

  <\proof>
    Let <math|x=<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>> then we must
    consider the following cases for <math|x>

    <\description>
      <item*|<math|x=\<infty\>>>First there exists a
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
      <math|1\<leqslant\>x<rsub|i>\<Rightarrow\>\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>\<neq\>0>. Take now
      <math|\<varepsilon\>\<gtr\>0> then by the Archimedean property of the
      reals [see <reference|consequence of the archimedean property for the
      reals>] there exists a <math|C\<in\>\<bbb-N\><rsub|0>> such that
      <math|0\<less\><frac|1|C>\<less\>\<varepsilon\>>.<space|1em>As
      <math|x=\<infty\>> there exists a <math|N\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      such that <math|\<forall\>i\<geqslant\>N> we have
      <math|x<rsub|i>\<geqslant\>C\<gtr\>0> . For <math|x<rsub|i>> we have
      then either\ 

      <\description>
        <item*|<math|x<rsub|i>=\<infty\>>>then <math|<frac|1|x<rsub|i>>=0> so
        that <math|<around*|\||<frac|1|x<rsub|i>>-0|\|>=0\<less\>\<varepsilon\>>

        <item*|<math|x<rsub|i>\<less\>\<infty\>>>then
        <math|0\<less\><frac|1|x<rsub|i>>\<leqslant\><frac|1|C>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||<frac|1|x<rsub|i>>-0|\|>=<frac|1|x<rsub|i>>\<less\>\<varepsilon\>>
      </description>

      which proves that <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=0=<frac|1|\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>

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
      <math|x<rsub|i>\<leqslant\>-C\<less\>0\<Rightarrow\>0\<less\>C\<leqslant\>-x<rsub|i>>.
      For <math|x<rsub|i>> we have then either\ 

      <\description>
        <item*|<math|x<rsub|i>=-\<infty\>>>then <math|<frac|1|x<rsub|i>>=0>
        so that <math|<around*|\||<frac|1|x<rsub|i>>-0|\|>=0\<less\>\<varepsilon\>>

        <item*|<math|-\<infty\>\<less\>x<rsub|i>>>then
        <math|0\<less\><frac|1|-x<rsub|i>>\<leqslant\><frac|1|C>\<less\>\<varepsilon\>>
        so that <math|<around*|\||<frac|1|x<rsub|i>>-0|\|>=<around*|\||<frac|1|x<rsub|i>>|\|>=<frac|1|-x<rsub|i>>\<less\>\<varepsilon\>>
      </description>

      which proves that <math|<below|lim|i\<rightarrow\>\<infty\>><frac|1|x<rsub|i>>=0=<frac|1|-\<infty\>>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>

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
      also a contradiction.. So <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have <math|0\<neq\>x<rsub|i>\<in\>\<bbb-R\>>. Using the above lemma
      <reference|lemma 15.75> we have that
      <math|m=inf<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\<gtr\>0>
      hence <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we
      have that <math|<around*|\||x<rsub|i>|\|>\<geqslant\>m\<gtr\>0>. Take
      now <math|\<varepsilon\>\<gtr\>0> then there exists a
      <math|N\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> such that
      <math|\<forall\>i\<geqslant\>N> we have
      <math|<around*|\||x-x<rsub|i>|\|>\<less\>\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>m>,
      then <math|<around*|\||<frac|1|x<rsub|i>>-<frac|1|x>|\|>=<around*|\||<frac|x<rsub|i>-x|x<rsub|i>\<cdot\>x>|\|>=<frac|<around*|\||x<rsub|i>-x|\|>|<around*|\||x<rsub|i>|\|>\<cdot\><around*|\||x|\|>>\<leqslant\><frac|<around*|\||x<rsub|i>-x|\|>|m\<cdot\><around*|\||x|\|>>\<less\><frac|\<varepsilon\>\<cdot\><around*|\||x|\|>\<cdot\>m|<around*|\||x|\|>\<cdot\>m>=\<varepsilon\>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<frac|1|x<rsub|i>>|)>=<frac|1|<below|lim|i\<rightarrow\>\<infty\>>x<rsub|i>>>
      <math|>
    </description>

    \;
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
    <math|sup<around*|(|\<bbb-N\><rsub|0>|)>\<less\>n\<leqslant\>sup<around*|(|\<bbb-N\><rsub|0>|)>>
    leading to the contradiction <math|sup<around*|(|N<rsub|0>|)>\<less\>sup<around*|(|\<bbb-N\><rsub|0>|)>>
    hence we have <math|<below|lim|n\<rightarrow\>\<infty\>>n=\<infty\>>.
    Using the previous theorem <reference|limit of 1/f> we have then
    <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|n>|)>=<frac|1|<below|lim|n\<rightarrow\>\<infty\>>n>=<frac|1|\<infty\>>=0>.
  </proof>

  <\theorem>
    <label|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
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

  <\subsection>
    Series in <math|<wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>>
  </subsection>

  To avoid any problems with non defined sums in
  <math|<wide|\<bbb-R\>|\<wide-bar\>>> [like <math|-\<infty\>+\<infty\>> and
  <math|+\<infty\>+<around*|(|-\<infty\>|)>>] we restrict ourself to
  <math|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>=<around*|{|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\|x\<geqslant\>0|}>>
  so that by <reference|the positive extented reals form a abelian
  semi-group> <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>,+|\<rangle\>>>
  is a Abelian semi-group. All the theorems, definitions and propositions for
  Abelian semi groups in section 10.1 will then apply. In particular we can
  use the definition of a finite sum in <reference|generalized fnite sum> to
  define <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>> where
  <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>> we have
  <math|x<rsub|i>\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>. So using
  <reference|defining property of finite sum> we have the following:

  <\theorem>
    <label|finite sum of extented reals>Let <math|n\<in\>\<bbb-N\>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    be a finite family of non negative extended reals
    [<math|\<forall\>i\<in\><around*|{|0,\<ldots\>,n|}>>
    \ <math|0\<leqslant\>x<rsub|i>>] then
    <math|<big|sum><rsub|i=0><rsup|n>x<rsub|i>=<choice|<tformat|<table|<row|<cell|x<rsub|0>
    if n=0>>|<row|<cell|<big|sum><rsub|i=0><rsup|n-1>x<rsub|i>+x<rsub|n> if
    n\<gtr\>0>>>>>>
  </theorem>

  Using <reference|finite sum starting at n> and <reference|propertiy of
  finite sum starting at n> we have also in general

  <\theorem>
    <label|finite sum of extented reals starting at n>Let
    <math|n,m\<in\>\<bbb-N\>> with <math|n\<leqslant\>m> and
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
    <math|k,n\<in\>\<bbb-N\>> with <math|k\<leqslant\>n> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a finite family of non negative extended reals then
    <math|0\<leqslant\><big|sum><rsub|k=1><rsup|n>x<rsub|i>> and more general
    if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>> is a finite family of
    non negative extended reals then <math|0\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>
    [see <reference|generalized sum>]
  </theorem>

  <\proof>
    We start by induction so let <math|\<cal-S\>=<around*|{|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\|<text|for
    every family of non negatieve extended reals
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><text|
    we have >0\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|i>|}>>. Then we
    have

    <\description>
      <item*|<math|k\<in\>\<cal-S\>>>As <math|0\<leqslant\>x<rsub|k>=<big|sum><rsub|i=k><rsup|k>x<rsub|i>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>>
      a family of non negative extended reals then
      <math|<big|sum><rsub|k=1><rsup|n+1>x<rsub|i>=<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>+x<rsub|n+1>\<geqslant\>0>
      [as <math|n\<in\>\<cal-S\>\<Rightarrow\>0\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|i>>,
      <math|0\<leqslant\>x<rsub|n+1>> and <reference|0\<less\>x and
      0\<less\>y gives 0\<less\>x+y>] proving <math|n+1\<in\>\<cal-S\>>.
    </description>

    For the last part of the theorem if <math|I> is a finite family we have a
    bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> so
    that <math|<big|sum><rsub|i\<in\>I>x<rsub|i>\<equallim\><rsub|def><big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\<geqslant\>0>
  </proof>

  As a application of the above theorem we prove that series are increeasing
  based on there domain.

  <\theorem>
    <label|series are increasing><math|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>>
    is a finite family of extended non negative reals then
    <math|\<forall\>J\<subseteq\>I> we have
    <math|<big|sum><rsub|i\<in\>J>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>.
    So if <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a finite family of non negative extended reals then
    <math|\<forall\>m\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<big|sum><rsub|i=1><rsup|m>x<rsub|i>\<leqslant\><big|sum><rsub|i=1><rsup|n>x<rsub|i>>.
  </theorem>

  <\proof>
    As <math|I=<around*|(|I\\J|)><big|cup>J> and
    <math|<around*|(|I\\J|)><big|cap>I=\<emptyset\>> we have by
    <reference|general associativity of general sum> that
    <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i\<in\><around*|(|I\\J|)>>x<rsub|i>+<big|sum><rsub|i\<in\>J>x<rsub|i>\<Rightarrowlim\><rsub|0\<leqslant\><big|sum><rsub|i\<in\>I\\J>x<rsub|i><text|
    and <reference|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y>>><big|sum><rsub|i\<in\>J>x<rsub|i>\<leqslant\><big|sum><rsub|i\<in\>I>x<rsub|i>>
  </proof>

  <\theorem>
    <label|sum of extented reals and product>Let <math|n,m\<in\>\<bbb-N\>>
    with <math|n\<leqslant\>m> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>>
    be a finite family of non negative reals then if
    <math|\<alpha\>\<in\>\<bbb-R\>> we have
    <math|<big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>>
  </theorem>

  <\proof>
    We prove this by induction so let <math|S=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|<text|For
    every family of non negative extended real numbers
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>><text|
    we have ><big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|m>x<rsub|i>|}>>
    then

    <\description>
      <item*|<math|m\<in\>S>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|m,\<ldots\>,m|}>>>
      is a finite family of non negative extended reals then
      <math|<big|sum><rsub|i=m><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=\<alpha\>\<cdot\>x<rsub|m>=\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=m><rsup|m>x<rsub|i>|)>>
      proving that <math|m\<in\>S>

      <item*|<math|m\<in\>S\<Rightarrow\>m+1\<in\>S>>If
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\>n,\<ldots\>,m+1>> is a finite
      family of non negative extended reals then
      <math|<big|sum><rsub|i=n><rsup|m+1><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<around*|(|<big|sum><rsub|i=n><rsup|m><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>|)>+\<alpha\>\<cdot\>x<rsub|m+1>\<equallim\><rsub|m\<in\>S>\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|m>x<rsub|i>|)>+\<alpha\>\<cdot\>x<rsub|m+1>\<equallim\><rsub|<text|<reference|distributivity
      in the extented reals>>>\<alpha\>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|m+1>x<rsub|i>|)>>
      proving that <math|m+1\<in\>S>
    </description>
  </proof>

  The next theorem shows that the finite sum of limits is the limit of finite
  sums.

  <\theorem>
    <label|limit of finite sums in the extented reals>If
    <math|k,n\<in\>\<bbb-N\>> and <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>>>
    is a finite family of sequences of non negative extended reals such that
    <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>> we have that
    <math|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    has a limit then <math|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|i=l><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>
  </theorem>

  <\proof>
    We use mathematical induction to prove this, so let
    <math|\<cal-S\>=<around*|{|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>\|if
    <around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n|}>><text|
    is such that >\<forall\>i\<in\><around*|{|l,\<ldots\>,n|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
    has a limit >then <below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>=<big|sum><rsub|i=l><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>|}>>.
    Then :

    <\description>
      <item*|<math|l\<in\>\<cal-S\>>>If <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,l|}>>>
      is such that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,l|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
      has a limit> then <around*|{|<big|sum><rsub|i=l><rsup|l>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>=<around*|{|x<rsub|l,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit and <math|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|l>x<rsub|i,j>|)>=<below|lim|j\<rightarrow\>\<infty\>>x<rsub|l,j>=<big|sum><rsub|i=l><rsup|l><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>
      proving that <math|l\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
      <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|i\<in\><around*|{|l,\<ldots\>,n+1|}>>>
      is such that <math|\<forall\>i\<in\><around*|{|l,\<ldots\>,n+1|}>\<vDash\><around*|{|x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><text|
      has a limit>>, then as <math|n\<in\>\<cal-S\>> we have that
      <math|<around*|{|<big|sum><rsub|l=1><rsup|n>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit. Then <math|<around*|{|<big|sum><rsub|i=l><rsup|n+1>x<rsub|i,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>=<around*|{|<around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+x<rsub|n+1,j>|}><rsub|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
      has a limit (using <reference|properties of the limit in the extented
      reals> (4)) and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+x<rsub|n+1,j>|)>>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>
        (4)>>>|<cell|<below|lim|j\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=l><rsup|n>x<rsub|i,j>|)>+<below|lim|j\<rightarrow\>\<infty\>>x<rsub|n+1,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=l><rsup|n><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>+<below|lim|j\<rightarrow\>\<infty\>>x<rsub|n+,j>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|n+1><around*|(|<below|lim|j\<rightarrow\>\<infty\>>x<rsub|i,j>|)>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>.
    </description>

    Using mathematical induction it follows that
    <math|\<cal-S\>=<around*|{|l,\<ldots\>,\<infty\>|}>> which completes the
    proof.
  </proof>

  <\theorem>
    <label|finite sum of extented reals properties>Let
    <math|n,m\<in\>\<bbb-N\>> wioh <math|n\<leqslant\>m> and
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
      <math|\<cal-S\>=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|Let
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>
      \ with \<infty\>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}> then
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

          <item*|<math|\<infty\>\<in\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}>>>then
          <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m+1>\<equallim\><rsub|n\<in\>\<cal-S\>>\<infty\>+x<rsub|m+1>=\<infty\>>
        </description>

        so in all cases we have <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=\<infty\>>
        proving that <math|m+1\<in\>\<cal-S\>>
      </description>

      Using mathematical induction we have then that
      <math|\<forall\>m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>> we have
      <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=\<infty\>>

      <item>We prove this also by induction so let
      <math|\<cal-S\>=<around*|{|m\<in\><around*|{|n,\<ldots\>,\<infty\>|}>\|Let
      <around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>m|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>
      \ with \<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}> then
      <big|sum><rsub|i=m><rsup|m>x<rsub|i>\<less\>\<infty\>|}>> then we have\ 

      <\description>
        <item*|<math|n\<in\>\<cal-S\>>>then as
        <math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|n>|}>\<Rightarrow\>x<rsub|n>\<less\>\<infty\>>
        and thus <math|<big|sum><rsub|i=n><rsup|n>x<rsub|i>=x<rsub|n>\<less\>\<infty\>>
        proving that <math|n\<in\>\<cal-S\>>

        <item*|<math|m\<in\>\<cal-S\>\<Rightarrow\>m+1\<in\>\<cal-S\>>>then
        from <math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m+1>|}>>
        we have <math|\<infty\>\<nin\><around*|{|x<rsub|n>,\<ldots\>,x<rsub|m>|}>\<wedge\>x<rsub|m+1>\<neq\>\<infty\>>.
        As <math|m\<in\>\<cal-S\>> we have that
        <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>\<less\>\<infty\>> which
        as <math|<big|sum><rsub|i=n><rsup|m+1>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|i>+x<rsub|m+1>>
        proves that <math|m+1\<in\>\<cal-S\>>
      </description>

      By mathematical induction we have that
      <math|\<cal-S\>=<around*|{|n,\<ldots\>,\<infty\>|}>> proving our
      theorem.
    </enumerate>
  </proof>

  We extend now the sum of constant values [see <reference|sum of constants>
  for the real case].

  <\proposition>
    <label|finite sum of constants in the extented reals>Let
    <math|n,k\<in\>\<bbb-N\>> with <math|k\<leqslant\>n> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>>
    be a finite family with <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>>
    <math|x<rsub|i>=c\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+><rsub|>> then
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
      <math|<big|sum><rsub|i=k><rsup|k>x<rsub|i>=x<rsub|k>=c=<around*|(|k-k+1|)>\<cdot\>c>
      proving that <math|k\<in\>S>

      <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>S>>take
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,n+1|}>>>
      with <math|x<rsub|i>=c> then we have
      <math|<big|sum><rsub|i=k><rsup|n+1>x<rsub|i>=<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>+x<rsub|n+1>\<equallim\><rsub|n\<in\>S><around*|(|n-k+1|)>\<cdot\>c+x<rsub|n+1>=<around*|(|n-k+1|)>\<cdot\>c+c>.
      We have now two cases either <math|c=\<infty\>> then
      <math|<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>\<infty\>=\<infty\>=<around*|(|n-k+1|)>\<cdot\>c+c>
      or <math|c\<less\>\<infty\>> then <math|<around*|(|n-k+1|)>\<cdot\>c+c=<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>c>.
      So <math|<big|sum><rsub|i=1><rsup|n+1>x<rsub|i>=<around*|(|<around*|(|n+1|)>-k+1|)>\<cdot\>c>
      proving <math|n+1\<in\>S>
    </description>

    Mathematical induction completes then the proof of the first part of the
    proposition.

    For the second part either we have <math|c=0> and then
    <math|support<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=\<emptyset\>>
    and thus by definition <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=0=#<around*|(|I|)>\<cdot\>0=#<around*|(|I|)>\<cdot\>c>
    or <math|c\<gtr\>0> and then <math|support<around*|(|<around*|{|x<rsub|i>|}><rsub|i\<in\>I>|)>=I>,
    so there exists a bijection <math|b:<around*|{|1,\<ldots\>,#<around*|(|I|)>|}>\<rightarrow\>I>
    and <math|<big|sum><rsub|i\<in\>I>x<rsub|i>=<big|sum><rsub|i=1><rsup|#<around*|(|I|)>>x<rsub|b<around*|(|i|)>>=<around*|(|#<around*|(|I|)>-1+1|)>\<cdot\>c=#<around*|(|I|)>\<cdot\>c>.
  </proof>

  <\theorem>
    <label|series of positive extented reals is increasing (1)>Let
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsub|+>>
    [a sequence of non negative extended reals] then\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|n+1>x<rsub|i>>

      <item><math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>>
      exists and <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    </enumerate>
  </theorem>

  <\proof>
    This follows from <reference|series are increasing> and
    <reference|equivalence of limits on increasing (decreasing) sequences of
    extented reals>
  </proof>

  The above theorem allows us to define the infinite sum of all sequences
  of<space|1em>non negative extended real numbers.

  <\definition>
    <label|series of positive extented reals is increasing>Let
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a sequence of non negative extended real numbers then we define
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>> by\ 

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<equallim\><rsub|def><below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>|)>\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing
      (1)>>>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|series and product with a scalar>Let <math|n\<in\>\<bbb-N\>>,
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>>
    be a a sequence of non negative extended real numbers abd
    <math|\<alpha\>\<in\>\<bbb-R\>,0\<leqslant\>\<alpha\>> then

    <\equation*>
      <big|sum><rsub|i=n><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x|)>=\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|\<infty\>>
    </equation*>
  </theorem>

  <\proof>
    This follows from \ <math|<big|sum><rsub|i=n><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>x<rsub|i>|)>=<below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=n><rsup|k>\<alpha\><rsub|i>\<cdot\>x<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
    of extented reals and product>>><below|lim|k\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\><big|sum><rsub|i=n><rsup|k>x<rsub|i>|)>\<equallim\><rsub|<text|<reference|properties
    of the limit in the extented reals>>>\<alpha\>\<cdot\><below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=n><rsup|k>x<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|k>>.
  </proof>

  <\theorem>
    <label|sum of series in the extended reals>Let <math|k\<in\>\<bbb-N\>>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>,
    <math|<around*|{|y<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be sequences of non negative extended real numbers then

    <\equation*>
      <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>+<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|x<rsub|i>+y<rsub|i>|)>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n><around*|(|x<rsub|i>+y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum of sum's>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>+<big|sum><rsub|i=k><rsup|n>y<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>x<rsub|i>+<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=k><rsup|n>y<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>+<big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>>>>
    </eqnarray*>
  </proof>

  Series preserve the order relation in the set of extended reals as the
  following theorem shows.

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
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<equallim\><rsub|<text|<reference|series
    of positive extented reals is increasing>>>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|l>x<rsub|i>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|l>y<rsub|i>\|l\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<equallim\><rsub|<text|<reference|series
    of positive extented reals is increasing>>><big|sum><rsub|i=k><rsup|\<infty\>>y<rsub|i>>
  </proof>

  The following two theorems are intuitive very clear but still needs some
  proof.

  <\theorem>
    <label|finite infinite sum means finite terms>Let <math|k\<in\>\<bbb-N\>>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a sequence of non negative extended reals such that
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>> then
    <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>\<less\>\<infty\>>.
  </theorem>

  <\proof>
    As <math|sup<around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|)>\<equallim\><rsub|<text|<reference|series
    of positive extented reals is increasing>>><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<less\>\<infty\>>
    we have, using <reference|condition for supremum (infinum) to be
    infinite>, that <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<vDash\><big|sum><rsub|i=k><rsup|n>x<rsub|i>\<less\>\<infty\>>
    which as <math|x<rsub|n>\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|i>>
    proves that <math|x<rsub|i>\<less\>\<infty\>>.
  </proof>

  <\theorem>
    <label|finite sum of extented reals written as infinite sum>Let
    <math|k\<in\>\<bbb-N\>> and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence of non negative extended reals such that
    <math|\<exists\>m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> with
    <math|\<forall\>i\<in\><around*|{|m+1,\<ldots\>,\<infty\>|}>> we have
    <math|x<rsub|i>=0> then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|m>x<rsub|i>>
  </theorem>

  <\proof>
    As <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>.,\<infty\>|}>|}>|)>\<geqslant\><big|sum><rsub|i=k><rsup|m>x<rsub|i>>
    it follows that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|i>>.
    For the opposite inequallity if <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    we have either\ 

    <\description>
      <item*|<math|n\<in\><around*|{|k,\<ldots\>,m|}>>>then
      <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\<leqslant\><rsub|<reference|series
      are increasing>><big|sum><rsub|i=k><rsup|m>x<rsub|i>>

      <item*|<math|n\<in\><around*|{|m+1,\<ldots\>,\<infty\>|}>>>then
      <math|<big|sum><rsub|i=k><rsup|n>x<rsub|i>=<big|sum><rsub|i=k><rsup|m>x<rsub|i>+<big|sum><rsub|i=m+1><rsup|n>x<rsub|i>=<big|sum><rsub|i=k><rsup|m>>
    </description>

    hence <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|m>x<rsub|i>>.
  </proof>

  We show now that the finite sum of a family of extended positive reals is
  independent of the order of the terms.

  <\theorem>
    <label|sum of extented reals is indepenent of order the reals>Let
    <math|n,m\<in\>\<bbb-N\>> with <math|n\<leqslant\>m> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|n,\<ldots\>,m|}>>> a
    finite family of non negative extended reals \ and
    <math|\<sigma\>:<around*|{|n,\<ldots\>,m|}>\<rightarrow\><around*|{|n,\<ldots\>,m|}>>
    a bijection then <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>=<big|sum><rsub|i=n><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>
  </theorem>

  <\proof>
    This follows from the fact that <math|<around*|\<langle\>|<wide|\<bbb-R\>|\<wide-bar\>><rsub|+>,+|\<rangle\>>>
    is a Abelian semi-group and <math|<big|sum><rsub|i=n><rsup|m>x<rsub|i>\<equallim\><rsub|<text|<reference|finite
    sum of extented reals starting at n>>><big|sum><rsub|i=0><rsup|m-n>x<rsub|i+n>\<equallim\><rsub|<text|<reference|commutativity
    of general sum>>><big|sum><rsub|i=0><rsup|m-n>x<rsub|\<sigma\><around*|(|i+n|)>>=<big|sum><rsub|i=n><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>
  </proof>

  We extend now the above to the infinite sum of non negative real numbers.

  <\theorem>
    <label|a serie of extented positive reals converges always and is
    independent of the order>Let <math|k\<in\>\<bbb-N\>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    a sequence of non negative extended real numbers then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>
    for every permutation <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
  </theorem>

  <\proof>
    Let <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    be a bijection. Take \ <math|s\<in\><around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    then <math|\<exists\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that <math|s=<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>>.
    Define <math|m<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>>
    then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>> we have
    <math|\<sigma\><around*|(|i|)>\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>
    or\ 

    <\equation>
      <label|eq 17.42.035><around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>\<subseteq\><around*|{|k,\<ldots\>,m<rsub|n>|}>
    </equation>

    so that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>>|<cell|\<equallim\><rsub|<reference|generalized
      sum>>>|<cell|<big|sum><rsub|i\<in\><around*|{|\<sigma\><around*|(|i|)>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing> and <reference|eq 17.42.035>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m<rsub|n>|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|generalized
      sum>>>|<cell|<big|sum><rsub|i=k><rsup|m<rsub|n>>x<rsub|i>>>>>
    </eqnarray*>

    so using <reference|sup of set of bigger elements> and the fact that
    <math|<big|sum><rsub|i=k><rsup|m<rsub|n>>x<rsub|i>\<in\><around*|{|<big|sum><rsub|k=1><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>>
    it follows that <math|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|k=1><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>.
    Hence using the definition of infinite sums [see <reference|series of
    positive extented reals is increasing>] we have\ 

    <\equation>
      <label|eq 17.43.035>If \<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>
      is a bijection then <big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|i>
    </equation>

    For the opposite inequality let <math|\<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>>
    be a a bijection and take the bijection <math|\<tau\>=\<sigma\><rsup|-1>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|\<tau\><around*|(|\<sigma\><around*|(|i|)>|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      17.43.035>> \<tau\> is a bijection>>|<cell|<big|sum><rsub|k=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    which using <reference|eq 17.43.035> proves that\ 

    <\equation*>
      If \<sigma\>:<around*|{|k,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}><text|
      is a bijection ><big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i><rsub|>
    </equation*>
  </proof>

  The next theorem shows how we can remove zeroes out of a infinite sum of
  extended reals.

  <\theorem>
    <label|series of extended reals and zeroes>Let <math|k\<in\>\<bbb-N\>>
    and <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>
    be a family of extended positive reals and
    <math|S=<around*|{|i\<in\><around*|{|k,\<ldots\>,n|}>\|x<rsub|i>\<neq\>0|}>>
    then we have the following possibilities\ 

    <\description>
      <item*|<math|S=\<emptyset\>>>then <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=0>

      <item*|<math|\<emptyset\>\<neq\>S is finite>>then there exists a
      bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>S>
      such that <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>>

      <item*|<math|S is infinite countable>>then there exists a bijection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>S> such that
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<beta\><around*|(|i|)>>>
    </description>
  </theorem>

  <\proof>
    As <math|S\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>> we have that\ 

    <\equation>
      <label|eq 17.2.20.001>\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\\S\<vDash\>x<rsub|i>=0
    </equation>

    For <math|S> we have the following cases to consider

    <\description>
      <item*|<math|S=\<emptyset\>>>Then <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      we have <math|x<rsub|i>=0>. so that
      <math|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|0|}>|)>=0>

      <item*|<math|\<emptyset\>\<neq\>S is finite>>Then there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>S>. Take
      <math|m=max<around*|(|S|)>\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
      then if <math|i\<gtr\>m> we have <math|i\<nin\>S> and thus by
      <reference|eq 17.2.20.001> <math|x<rsub|i>=0> giving\ 

      <\equation>
        <label|eq 17.2.21.001>\<forall\>i\<gtr\>m we have x<rsub|i>=0
      </equation>

      Further <math|S\<subseteq\><around*|{|k,\<ldots\>,m|}>> so that\ 

      <\equation>
        <label|eq 17.2.22.001.1><around*|{|k,\<ldots\>,m|}>=<around*|(|<around*|{|k,\<ldots\>,m|}>\\S|)><big|cup>S<text|
        and ><around*|{|k,\<ldots\>,m|}>\\S<big|cap>S=\<emptyset\>
      </equation>

      \ Now for <math|l\<in\><around*|{|m,\<ldots\>,\<infty\>|}>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|l>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|m>x<rsub|i>+<big|sum><rsub|i=m+1><rsup|l>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.2.21.001>>>>|<cell|<big|sum><rsub|i=k><rsup|m>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sum and union> and ><text|<reference|eq
        17.2.22.001.1>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>\\S>x<rsub|i>+<big|sum><rsub|i\<in\>S>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.2.20.001>>>>|<cell|0+<big|sum><rsub|i\<in\>S>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>><eq-number><label|eq
        17.47.035>>>>>
      </eqnarray*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>>|<cell|\<equallim\><rsub|<text|<reference|series
        of positive extented reals is increasing>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|supremum
        (infinum) of increasing (decreasing) sequence is indpendent of
        start>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|m,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        17.47.035>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>>>>>
      </eqnarray*>

      <item*|<math|S is infinite countable>>Then there exists a bijection
      <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>S>. Take
      <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> then for
      <math|<around*|{|k,\<ldots\>,n|}>> we have to consider the following
      cases:\ 

      <\description>
        <item*|<math|\<forall\>i\<in\><around*|{|k,\<ldots\>,n|}>\<vDash\>x<rsub|i>=0>>then
        <math|<big|sum><rsub|i=1><rsup|n>x<rsub|i>=0\<leqslant\><big|sum><rsub|i=k><rsup|n>x<rsub|\<beta\><around*|(|i|)>>>

        <item*|<math|\<exists\>i\<in\><around*|{|k,\<ldots\>,n|}>\<vDash\>x<rsub|i>\<neq\>0>>then
        <math|i\<in\><around*|{|k,\<ldots\>,n|}><big|cap>S> and as
        <math|\<beta\>> is surjective there exists a
        <math|j\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such that
        <math|\<beta\><around*|(|j|)>=i\<in\><around*|{|k,\<ldots\>,n|}><big|cap>S>
        proving that <math|\<emptyset\>\<neq\>\<beta\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>>.
        As <math|><math|\<beta\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>>
        is also finite <math|m=max<around*|(|\<beta\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>|)>>
        exists, then <math|\<beta\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>\<subseteq\><around*|{|1,\<ldots\>,m|}>>
        so that

        <\equation>
          <label|eq 17.2.23.001><around*|{|k,\<ldots\>,n|}><big|cap>S\<subseteq\>\<beta\><around*|(|1,\<ldots\>,m|)>
        </equation>

        Futher we have that

        <\equation>
          <label|eq 17.2.24.001><around*|{|k,\<ldots\>,n|}>=<around*|(|<around*|{|k,\<ldots\>,n|}>\\S|)><big|cup><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>
        </equation>

        and\ 

        <\equation>
          <label|eq 17.2.25.001><around*|(|<around*|{|k,\<ldots\>,n|}>\\S|)><big|cap><around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>=\<emptyset\>
        </equation>

        So\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n>x<rsub|i>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sum and union> and <reference|eq 17.2.24.001>,<reference|eq
          17.2.25.001> >>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>\\S>x<rsub|i>+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}><big|cap>S>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|0+<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}><big|cap>S>x<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}><big|cap>S>x<rsub|i>+<big|sum><rsub|\<beta\><around*|{|1,\<ldots\>,m|}>\\<around*|(|<around*|{|k,\<ldots\>,n|}><big|cap>S|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sum and union> and <reference|eq
          17.2.23.001>>>>|<cell|<big|sum><rsub|i\<in\>\<beta\><around*|(|<around*|{|1,\<ldots\>,m|}>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>x<rsub|\<beta\><around*|(|i|)>>>>>>
        </eqnarray*>
      </description>

      So <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> there
      exists a <math|m\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> such that
      <math|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=1><rsup|m>x<rsub|i>>
      proving using <reference|sup of set of bigger elements> that\ 

      <\equation>
        <label|eq 17.2.26.001>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>
      </equation>

      For the opposite inequality, take <math|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>
      then <math|\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>> is non
      empty and finite so that <math|m=max<around*|(|\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>|)>\<subseteq\>S\<subseteq\><around*|{|k,\<ldots\>,\<infty\>|}>>
      exists giving

      <\equation>
        <label|eq 17.2.27.001>\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>\<subseteq\><around*|{|k,\<ldots\>,m|}>
      </equation>

      hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\>\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>>x<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>\\\<beta\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>>x<rsub|i>+<big|sum><rsub|i\<in\>\<beta\><around*|(|<around*|{|k,\<ldots\>,m|}>|)>>x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sum and union> and <reference|eq 17.2.27.001>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|m>x<rsub|i>>>>>
      </eqnarray*>

      Hence <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>> there
      exists a <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such that
      <math|<big|sum><rsub|i=1><rsup|n>x<rsub|i>\<leqslant\><big|sum><rsub|i=k><rsup|m><rsub|>x<rsub|i>>
      proving using <reference|sup of set of bigger elements> that

      <\equation*>
        sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>
      </equation*>

      Finally using the above together with <reference|eq 17.2.26.001> we
      have\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i>=sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|i>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<beta\><around*|(|i|)>>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>=<big|sum><rsup|\<infty\>><rsub|i=1>x<rsub|\<beta\><around*|(|i|)>>
      </equation*>
    </description>

    \;
  </proof>

  The next theorem shows that we can interchange infinite sums.

  <\theorem>
    <label|interchange infinite and finite sum>Let <math|k,l\<in\>\<bbb-N\>>

    <\enumerate>
      <item> Let <math|n,m\<in\>\<bbb-N\>> with
      <math|k\<leqslant\>n\<wedge\>l\<leqslant\>m> and
      \ <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>>
      a family of extended non negative real numbers then

      <\equation*>
        <big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>
      </equation*>

      <item>Let <math|n\<in\>\<bbb-N\>> with <math|l\<leqslant\>n> and
      <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,n|}>>>
      a family of extended non negative real numbers then

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
      </equation*>

      <item>Let <math|n\<in\>\<bbb-N\>> with <math|l\<leqslant\>n> and
      <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      a family of extended non negative real numbers then

      <\equation*>
        <big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>
      </equation*>

      <item>Let <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      be a family of extended non negative real numbers then\ 

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsup|\<infty\>><rsub|j=l>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
      </equation*>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        over product of sets>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,n|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>>>>
      </eqnarray*>

      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if
      <around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,l+n|}>>\<subseteq\><around*|[|0,\<infty\>|]><text|
      then ><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l+n>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|l+n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>|}>>
      then we have\ 

      <\description>
        <item*|<math|0\<in\>\<cal-S\>>>If <math|n=0> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l+n>x<rsub|<around*|(|i,j|)>>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,l|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|l><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|l+n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
        </eqnarray*>

        proving that <math|0\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<rightarrow\>n+1\<in\>\<cal-S\>>>Let
        <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,l+<around*|(|n+1|)>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l+n+1>x<rsub|<around*|(|i,j|)>>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l+n>x<rsub|<around*|(|i,j|)>>+x<rsub|<around*|(|i,l+n+1|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
          of series in the extended reals>>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsup|l+n><rsub|j=l>x<rsub|<around*|(|i,j|)>>|)>+<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,l+n+1|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|j=l><rsup|l+n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>><rsub|>x<rsub|<around*|(|i,j|)>>|)>+<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,l+n+1|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|l+n+1><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
        </eqnarray*>

        which proves that <math|n+1\<in\>\<cal-S\>>
      </description>

      Using mathematical induction we have then that
      <math|\<cal-S\>=\<bbb-N\>>. If <math|l\<leqslant\>n> then
      <math|n-l\<in\>\<bbb-N\>=\<cal-S\>> so that
      <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|n>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|l+<around*|(|n-l|)>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|l+<around*|(|n-l|)>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=l><rsup|n><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
      proving (2).

      <item>Define <math|<around*|{|y<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>>
      by <math|y<rsub|<around*|(|i,j|)>>=x<rsub|<around*|(|j,i|)>>> then we
      have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>y<rsub|<around*|(|j,i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>y<rsub|<around*|(|j,i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>>>>
      </eqnarray*>

      <item>Let <math|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<around*|(|3|)>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|sum
        and order relation in the extented
        reals>>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
      </eqnarray*>

      hence <math|sup<around*|(|<around*|{|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
      proving that\ 

      <\equation>
        <label|eq 17.53.035><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
      </equation>

      Futher take <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsup|m><rsub|j=1><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)><rsup|>>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|sum
        and order relation in the extented
        reals>>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>\|m\<of\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
      </eqnarray*>

      hence <math|sup<around*|(|<around*|{|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>
      proving that <math|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>.
      Combining this with <reference|eq 17.53.035> proves that

      <\equation*>
        <big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
      </equation*>

      \ 
    </enumerate>
  </proof>

  Every finite sum of a denumerable sums can be writen as a denumerable sum.

  <\theorem>
    <label|finite sum of denumerable sums>Let
    <math|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and
    <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|[|l,\<ldots\>,\<infty\>|]>>>
    be a family of non negative extended real then if

    <\equation*>
      \<sigma\>:<around*|{|p,\<ldots\>,\<infty\>|}>\<rightarrow\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>
    </equation*>

    is a bijection (which exist by <reference|product of a finite and
    denumerable set is denumerable>) then

    <\equation*>
      <big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>><big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>=<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|<around*|(|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>|)>>
    </equation*>
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
      and inequalities of family>>>>|<cell|<big|sum><rsub|i=k><rsup|n>sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|r>x<rsub|<around*|(|i,j|)>>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>>>>
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
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|*<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|series
      are increasing>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|p,\<ldots\>,N<rsub|m>|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|p,\<ldots\>,N<rsub|m>|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=p><rsup|N<rsub|m>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=p><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>\|m\<in\><around*|{|p,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>><eq-number><label|eq
      17.55.035>>>>>
    </eqnarray*>

    Then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|<around*|(|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|n>x<rsub|<around*|(|i,j|)>>|)>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|sup<around*|{|<around*|(|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|<around*|(|i,j|)>>|)>|)>\|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      17.55.035>>><rsub|>>|<cell|<big|sum><rsub|i=p><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    proving together with <reference|eq 14.22.423> that

    <\equation*>
      <big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|<around*|(|i,j|)>>|)>
    </equation*>

    and thus the theorem.
  </proof>

  Next we extend the above theorem for arbitrary finite sums of different
  size.

  <\theorem>
    <label|associativity of series of extended reals>Let
    <math|k\<in\>\<bbb-N\>> and <math|<around*|{|x<rsub|<around*|(|i,j|)>>|}><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    [where <math|\<forall\>i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
    have <math|m<rsub|i>\<leqslant\>n<rsub|i>>]<math|> then if

    <\equation*>
      \<sigma\>:<around*|{|l,\<ldots\>,\<infty\>|}>\<rightarrow\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>
    </equation*>

    is a bijection [which must exists by <reference|a denumerable family of
    countable sets is countable>] we have

    <\equation*>
      <big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>
    </equation*>
  </theorem>

  <\proof>
    First let <math|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> and define
    the bijection <math|\<tau\><rsub|i>:<around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>\<rightarrow\><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    by <math|\<tau\><rsub|i><around*|(|j|)>=<around*|(|i,j|)>> so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>x<rsub|<around*|(|i,j|)>>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>x<rsub|\<tau\><rsub|i><around*|(|j|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>><eq-number><label|eq
      14.23.425>>>>>
    </eqnarray*>

    Let <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> define then
    <math|N<rsub|m>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|l,\<ldots\>,m|}>|}>|)>>.
    If <math|i\<in\><around*|{|l,\<ldots\>,m|}>> then as
    \ <math|\<sigma\><around*|(|i|)>\<in\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    there exists a <math|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
    that <math|\<sigma\><around*|(|i|)>\<in\><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>>
    so as additional <math|\<sigma\><around*|(|i|)><rsub|1>=j\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>>
    it follows that

    <\equation>
      <label|eq 14.23.424>\<sigma\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}><text|
      [a pairwise disjoint union]>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=l><rsup|m>x<rsub|\<sigma\><around*|(|i|)>>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,m|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|eq
      14.23.424> and <text|<reference|series are
      increasing>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|general
      associativity of general sum>>>|<cell|<big|sum><rsub|r\<in\><around*|{|k,\<ldots\>,N<rsub|m>|}>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.23.425>>>>|<cell|<big|sum><rsub|r=k><rsup|N<rsub|m>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|
      <text|<reference|series are increasing>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|r=k><rsup|n><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>>>>>
    </eqnarray*>

    So <math|sup<around*|(|<around*|{|<big|sum><rsub|i=l><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\><big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>>\ 

    <\equation>
      <label|eq 14.25.424><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>\<leqslant\><big|sum><rsub|r=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|r>>x<rsub|<around*|(|r,j|)>>|)>
    </equation>

    For the opposite inequality take <math|m\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
    and take <math|N<rsub|m>=max<around*|(|\<sigma\><rsup|-1><around*|(|<big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|i,m<rsub|i>|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>|)>|)>>.
    Let <math|i\<in\>\<sigma\><rsup|-1><around*|(|<big|cup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>|)>>
    then <math|i\<in\><around*|{|l,\<ldots\>,N<rsub|m>|}>> so that
    <math|\<sigma\><rsup|-1><around*|(|<big|sqcup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>|)>\<subseteq\><around*|{|l,\<ldots\>,N<rsub|m>|}>>,
    giving as <math|\<sigma\>> is a bijection that

    <\equation>
      <label|eq 14.26.424><big|sqcup><rsub|j\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|j,m<rsub|j>|)>,\<ldots\>,<around*|(|j,n<rsub|j>|)>|}>\<subseteq\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,N<rsub|m><rsub|>|}>|)>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|r=k><rsup|m><around*|(|<big|sum><rsub|j=m<rsub|r>><rsup|n<rsub|i>>x<rsub|<around*|(|r,j|)>>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      14.23.425>>>>|<cell|<big|sum><rsub|r=k><rsup|m><around*|(|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|general
      associativity of general sum>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><big|sqcup><rsub|r\<in\><around*|{|k,\<ldots\>,m|}>><around*|{|<around*|(|r,m<rsub|r>|)>,\<ldots\>,<around*|(|r,n<rsub|r>|)>|}>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing> together with <reference|eq
      14.26.424>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|l,\<ldots\>,N<rsub|m>|}>|)>>x<rsub|<around*|(|i,j|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|l,\<ldots\>,N<rsub|m>|}>><rsup|>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|N<rsub|m>>x<rsub|\<sigma\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=l><rsup|n>x<rsub|\<sigma\><around*|(|i|)>>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>>>>
    </eqnarray*>

    Using the definition of a supremum we have then
    <math|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>>,
    this together with <reference|eq 14.25.424> proves\ 

    <\equation*>
      <big|sum><rsub|i=l><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>>x<rsub|<around*|(|i,j|)>>|)>
    </equation*>

    \;
  </proof>

  <\note>
    To simplify or terminology we write <math|x<rsub|i,j>> instead of
    <math|x<rsub|<around*|(|i,j|)>>> from now on, unless want express that
    <math|<around*|(|i,j|)>> is a couple.
  </note>

  The next theorem shows that a denumerable sum of denumerable sums can be
  written as one single denumerable sum.

  <\theorem>
    <label|countable sum of countable sums is a countable sum>Let
    <math|k,l\<in\>\<bbb-N\>> and <math|<around*|{|<around*|{|x<rsub|i,j>|}><rsub|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>|}><rsub|j\<in\><around*|{|l,\<ldots\>,\<infty\>|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    a sequence of sequences of extended non negative reals and
    <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\><around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>
    a bijection [which exists as by <reference|product of enumerable sets is
    enumerable> <math|<around*|{|k,\<ldots\>,\<infty\>|}>\<times\><around*|{|l,\<ldots\>,\<infty\>|}>>
    is denumerable] then

    <\equation*>
      <big|sum><rsub|i\<in\>\<bbb-N\><rsub|0>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>><big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>
  </theorem>

  \;

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> take then
    <math|N<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|1>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>,
    <math|M<rsub|n>=max<around*|(|<around*|{|\<sigma\><around*|(|i|)><rsub|2>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then we have that <math|\<sigma\><around*|(|<around*|{|1,\<ldots\>,n|}>|)>\<subseteq\><around*|{|k,\<ldots\>,N<rsub|n>|}>\<times\><around*|{|l,\<ldots\>,M<rsub|n>|}>>
    and thus\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|{|1,\<ldots\>,n|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,N<rsub|n>|}>\<times\><around*|{|l,\<ldots\>,M<rsub|n>|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,N<rsub|n>|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,M<rsub|n>|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i=k><rsup|N<rsub|n>><around*|(|<big|sum><rsub|j=l><rsup|M<rsub|n>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=k><rsup|N<rsub|n>>sup<around*|(|<around*|{|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>\|m\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>>>|<cell|<big|sum><rsub|i=1><rsup|N<rsub|n>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=><rsup|r><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>\|r\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>>>>>
    </eqnarray*>

    \ So <math|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>>
    or using <reference|series of positive extented reals is increasing>

    <\equation>
      <label|eq 17.49.001><big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<leqslant\><big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation>

    Let now take <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>,
    <math|m\<in\><around*|{|l,\<ldots\>,\<infty\>|}>> and take
    <math|N=max<around*|(|\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>|)>>
    then if <math|i\<in\>\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>>
    we have <math|1\<leqslant\>i\<leqslant\>N> proving that
    <math|\<sigma\><rsup|-1><around*|(|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>|)>\<subseteq\><around*|{|1,\<ldots\>,N|}>>.
    Hence as <math|\<sigma\>> is a bijection it follows that
    <math|<around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>\<subseteq\>\<sigma\><around*|(|<around*|{|1,\<ldots\>,N|}>|)>>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|n><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      sum and finite sum>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|k,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|l,\<ldots\>,m|}>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|{|k,\<ldots\>,n|}>\<times\><around*|{|l,\<ldots\>,m|}>>x<rsub|i,j>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|series
      are increasing>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>\<sigma\><around*|(|<around*|{|1,\<ldots\>,N|}>|)>>x<rsub|i,j>>>|<row|<cell|>|<cell|<math|\<equallim\><rsub|<text|<reference|generalized
      sums and bijections>>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|N>x<rsub|\<sigma\><around*|(|i|)><rsub|1>\<sigma\><around*|(|i|)><rsub|2>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|r>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\|r\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><eq-number><label|eq
      17.50.001>>>>>
    </eqnarray*>

    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>x<rsub|i,j>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|eq
      17.50.001>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><eq-number><label|eq
      17.51.001>>>>>
    </eqnarray*>

    Next we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|j=l><rsup|m><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|m>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      17.51.001>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><eq-number><label|eq
      17.63.035>>>>>
    </eqnarray*>

    So that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=k><rsup|\<infty\>><around*|(|<big|sum><rsub|j=l><rsup|\<infty\>>x<rsub|i,j>|)>>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|<big|sum><rsub|j=l><rsup|\<infty\>><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|j=l><rsup|r><around*|(|<big|sum><rsub|i=k><rsup|\<infty\>>x<rsub|i,>|)>\|r\<in\><around*|{|l,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      17.63.035>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    Finally combining the above with <reference|eq 17.49.001> proves \ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|\<infty\>>x<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>x<rsub|i,j>|)>
    </equation*>
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
      <math|<around*|{|a<rsub|n>\<cdot\>z<rsub|0><rsup|n>|}><rsub|n\<in\>\<bbb-N\>>>
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
    radius><index|<math|R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>>>Let
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
    Let <math|n\<in\>\<bbb-N\>> and <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>\<subseteq\>\<bbb-C\>>
    and <math|<around*|{|s<rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,n|}>>>
    defined by <math|s<rsub|i>=<big|sum><rsub|j=0><rsup|i>z<rsub|j>> then
    <math|<big|sum><rsub|i=0><rsup|n>\<alpha\><rsub|i>\<cdot\>z<rsub|i>=<big|sum><rsub|i=0><rsup|n-1>s<rsub|i>\<cdot\><around*|(|\<alpha\><rsub|i>-\<alpha\><rsub|i+1>|)>+\<alpha\><rsub|n>\<cdot\>s<rsub|n>>
  </lemma>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|if
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

      <item*|<math|n\<neq\>0>>then <math|n\<in\>\<bbb-N\>> so we can use the
      previous lemma
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
      <item>Given <math|n,m\<in\>\<bbb-N\>\<vdash\>n\<leqslant\>m> define
      <math|<around*|{|x<rsup|<around*|(|n|)>><rsub|i>|}><rsub|i\<in\><around*|{|0,\<ldots\>,m-n|}>><rsub|>>
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
      there exists a <math|N\<in\>\<bbb-N\>> such that
      <math|\<forall\>n\<geqslant\>N> we have that
      <math|\<varepsilon\><rsub|n>=<around*|\||\<varepsilon\><rsub|n>-0|\|>\<less\><frac|\<varepsilon\>|2\<cdot\>C>>.
      So we conclude using <reference|eq 17.6.515> that\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<gtr\>0<text| there
        >\<exists\>N\<in\>\<bbb-N\><text| such that
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
      <math|\<forall\>i\<in\>\<bbb-N\>> we have
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
    <math|n\<in\>\<bbb-N\>> such that <math|y\<less\>e<rsup|n>\<equallim\><rsub|previous
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
    <math|a<rsup|<frac|1|2>>=<sqrt|a>> which is not defined on the negative
    real numbers.\ 
  </remark>

  Next we prove now that we have the classical properties of our generalized
  power. TODO add <math|a<rsup|x+y>=a<rsup|x>\<cdot\>a<rsup|y>>

  <\theorem>
    <label|properties of general strict power>We have the following
    properties for the generalized power

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\>> and
      <math|\<forall\>a\<in\><around*|]|a,\<infty\>|[>> we have that
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

      <item><math|\<forall\>x,y\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|<around*|(|a<rsup|<around*|[|x|]>>|)><rsup|<around*|[|y|]>>=a<rsup|<around*|[|x\<cdot\>y|]>>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|a<rsup|<around*|[|-x|]>>=<frac|1|a<rsup|<around*|[|x|]>>>>

      <item><math|\<forall\>a,b\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|(|a\<cdot\>b|)><rsup|<around*|[|x|]>>=a<rsup|<around*|[|x|]>>\<cdot\>b<rsup|<around*|[|x|]>>>

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x,y\<in\>\<bbb-R\>> we have
      <math|a<rsup|<around*|[|x+y|]>>=a<rsup|<around*|[|x|]>>\<cdot\>a<rsup|<around*|[|y|]>>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> and
      <math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|log<around*|(|a<rsup|<around*|[|x|]>>|)>=x\<cdot\>log<around*|(|a|)>>

      <item>Let <math|a\<in\><around*|]|a,\<infty\>|[>> and define
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

      <item>Let <math|x,y\<in\>\<bbb-R\>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|a<rsup|<around*|[|x+y|]>>>|<cell|=>|<cell|exp<around*|(|<around*|(|x+y|)>\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>+y\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exp(x+y)=exp(x)exp(y)>>>>|<cell|exp<around*|(|x\<cdot\>log<around*|(|a|)>|)>\<cdot\>exp<around*|(|y\<cdot\>log<around*|(|a|)>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|<around*|[|x|]>>\<cdot\>a<rsup|<around*|[|y|]>>>>>>
      </eqnarray*>

      <item>Let\ 

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
  <math|a<rsup|<around*|(|.|)>>:\<bbb-R\><rsub|+>\<rightarrow\>\<bbb-R\><rsub|+>>
  has a derivative and thus by <reference|differentias and derivates> and
  <reference|differentiability at x implies continuity at x> we have that
  <math|a<rsup|<around*|(|.|)>>> is continuous at every
  <math|x\<in\>\<bbb-R\><rsub|+>=<around*|]|0,\<infty\>|[>> this can be
  extended to <math|<around*|[|0,\<infty\>|[>> using the subspace topology on
  <math|<around*|[|0,\<infty\>|[>> if we extend the definition of a power to
  <math|<around*|[|0,\<infty\>|[>> which can be done if we restrict the power
  to strict positive numbers.

  \;

  <\definition>
    <label|general strict positive powers>Let
    <math|p\<in\><around*|]|0,\<infty\>|[>> and
    <math|a\<in\><around*|[|0,\<infty\>|[>> then we define
    <math|a<rsup|p>=<choice|<tformat|<table|<row|<cell|a<rsup|<around*|[|p|]>>=exp<around*|(|p\<cdot\>log<around*|(|a|)>|)>
    if a\<in\><around*|]|0,\<infty\>|[>>>|<row|<cell|0 if a=0>>>>>>
  </definition>

  Note that the requirement <math|0\<less\>p> is needed, for if
  <math|a\<in\><around*|]|0,\<infty\>|[>> then
  <math|a<rsup|0>=exp<around*|(|log<around*|(|a|)>\<cdot\>0|)>=1> and
  \ <math|0<rsup|0>=0> so that the function
  <math|<around*|[|.|]><rsup|0>:<around*|[|0,\<infty\>|[>\<rightarrow\>\<bbb-R\>>
  defined by <math|<around*|[|.|]><rsup|0><around*|(|x|)>> is discontinuous
  at <math|0>. Further if <math|p\<less\>0> then
  <math|0<rsup|p>=0<rsup|-p>=<frac|1|0<rsup|p>>> is not well defined. The new
  definition <math|a<rsup|p>> has similar properties as
  <math|a<rsup|<around*|[|p|]>>> as is expressed in the following theorem.

  <\theorem>
    <label|properties of general power>Let
    <math|a\<in\><around*|[|0,\<infty\>|[>=\<bbb-R\><rsub|+>> then we that\ 

    <\enumerate>
      <item><math|\<forall\>p\<in\><around*|]|0,\<infty\>|[>> we have
      <math|a<rsup|p>=0\<Leftrightarrow\>a=0>

      <item><math|\<forall\>n\<in\>\<bbb-N\>> we have that
      <math|a<rsup|n>=<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n times>>
      (we have a conflict of notation here so we use
      <math|<wide*|a*\<ldots\>a|\<wide-underbrace\>><rsub|n>> to note the
      classical power on <math|\<bbb-R\>>)

      <item><math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>=\<bbb-R\><rsub|+>>
      we have <math|1<rsup|x>=1>

      <item><math|\<forall\>x\<in\><around*|]|0,\<infty\>|[>>
      <math|e<rsup|x>=exp<around*|(|x|)>>

      <item><math|\<forall\>x\<in\><around*|]|1,\<infty\>|[>> and
      <math|a\<neq\>0> then <math|<frac|a<rsup|x>|a>=a<rsup|x-1>>

      <item><math|\<forall\>x,y\<in\><around*|]|0,\<infty\>|[>> we have
      <math|<around*|(|a<rsup|x>|)><rsup|y>=a<rsup|x\<cdot\>y>>

      <item><math|\<forall\>a,b\<in\><around*|[|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|(|a\<cdot\>b|)><rsup|x>=a<rsup|x>\<cdot\>b<rsup|x>>

      <item><math|\<forall\>a\<in\><around*|[|0,\<infty\>|[>> and
      <math|\<forall\>x,y\<in\>\<bbb-R\>> we have
      <math|a<rsup|x+y>=a<rsup|x>\<cdot\>a<rsup|y>>

      <item><math|\<forall\>a\<in\><around*|]|0,\<infty\>|[>> and
      <math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|a<rsup|-x>=<frac|1|a<rsup|x>>>

      <item><math|\<forall\>p\<in\><around*|]|0,\<infty\>|[>> we have that
      <math|<around*|[|.|]><rsup|p>:<around*|[|0,\<infty\>|]>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|[|.|]><rsup|p><around*|(|x|)>=x<rsup|p>> is
      strictly increasing
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|a<rsup|p>=0> if <math|a\<neq\>0> we have
      <math|a<rsup|p>=exp<around*|(|p\<cdot\>log<around*|(|a|)>|)>\<gtr\>0> a
      contradiction so we must have <math|a=0>. The opposite equivalence
      follows from <math|0<rsup|p>=0>

      <item>If <math|n\<in\>\<bbb-N\>> then if
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

      <item>We have for <math|a> either\ 

      <\description>
        <item*|<math|a=0>>then <math|a<rsup|x+y>=0<rsup|x+y>=0=0\<cdot\>0=0<rsup|x>\<cdot\>0<rsup|y>=a<rsup|x>\<cdot\>a<rsup|y>>

        <item*|<math|a\<neq\>0>>then <math|a<rsup|x+y>=a<rsup|<around*|[|x+y|]>>\<equallim\><rsub|<text|<reference|properties
        of general strict power> (8)>>a<rsup|<around*|[|x|]>>\<cdot\>a<rsup|<around*|[|y|]>>=a<rsup|x>\<cdot\>a<rsup|y>>
      </description>

      <item>As <math|a\<in\><around*|]|0,\<infty\>|[>> we have
      <math|a<rsup|-x>=a<rsup|<around*|[|-x|]>>\<equallim\><rsub|<text|<reference|properties
      of general strict power> (6)>><frac|1|a<rsup|<around*|[|x|]>>>=<frac|1|a<rsup|x>>>

      <item>Let <math|x,y\<in\><around*|[|0,\<infty\>|[>> with
      <math|x\<less\>y> then we have for <math|x> either\ 

      <\description>
        <item*|<math|x=0>>then <math|0\<less\>y><space|1em>and
        <math|<around*|[|.|]><rsup|p><around*|(|x|)>=<around*|[|.|]><rsup|p><around*|(|0|)>=0\<less\>exp<around*|(|p\<cdot\>log<around*|(|x|)>|)>=<around*|[|.|]><rsup|p><around*|(|x|)>>

        <item*|<math|0\<less\>x>>then <math|log<around*|(|x|)>\<less\><rsub|<text|<reference|properties
        of log> (8)>>\<Rightarrowlim\><rsub|0\<less\>p>p\<cdot\>log<around*|(|x|)>\<less\>p\<cdot\>log<around*|(|y|)>\<Rightarrowlim\><rsub|<text|<reference|properties
        of exp (1)>> <around*|(|6|)>>exp<around*|(|p\<cdot\>log<around*|(|x|)>|)>\<less\>exp<around*|(|p\<ast\>log<around*|(|y|)>|)>>
        so that \ <math|<around*|[|.|]><rsup|p><around*|(|x|)>=exp<around*|(|p\<cdot\>log<around*|(|x|)>|)>\<less\>exp<around*|(|p\<cdot\>log<around*|(|y|)>|)>=<around*|[|.|]><rsup|p><around*|(|y|)>>
      </description>
    </enumerate>
  </proof>

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
    <math|a\<cdot\>b=<frac|a<rsup|p>|p>+<frac|b<rsup|q>|q>\<Leftrightarrow\>b=a<rsup|p-1>\<Leftrightarrow\>a<rsup|p>=b<rsup|q>>
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
    <associate|page-first|664>
    <associate|page-medium|papyrus>
    <associate|section-nr|7>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|-sup A=inf -A|<tuple|17.31|619>>
    <associate|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y|<tuple|17.27|616>>
    <associate|0\<less\>cos(x),sin(x)|<tuple|18.49|701>>
    <associate|0\<less\>x and 0\<less\>y gives 0\<less\>x+y|<tuple|17.26|?>>
    <associate|Abel-Dirichlet|<tuple|18.15|681>>
    <associate|Balls and convergence domains|<tuple|18.12|679>>
    <associate|Euler's number|<tuple|18.29|688>>
    <associate|Napierian|<tuple|18.33|689>>
    <associate|Power series|<tuple|18.2|677>>
    <associate|Young's inequality|<tuple|18.42|694>>
    <associate|a serie of extented positive reals converges always and is
    independent of the order|<tuple|17.101|666>>
    <associate|absolute value in the extended reals|<tuple|17.32|620>>
    <associate|absolute value on the extended real
    properties|<tuple|17.34|620>>
    <associate|alternative definition of limit in the extented
    reals|<tuple|17.73|653>>
    <associate|associativity of series of extended reals|<tuple|17.105|670>>
    <associate|associativity of the product of extnded reals|<tuple|17.21|?>>
    <associate|auto-1|<tuple|17|607>>
    <associate|auto-10|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|\<infty\>>>|621>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|-\<infty\>>>|621>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>|621>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>|621>>
    <associate|auto-14|<tuple|17.3|621>>
    <associate|auto-15|<tuple|increasing sequence|625>>
    <associate|auto-16|<tuple|decreasing sequence|625>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<below|lim
    inf|i\<rightarrow\>\<infty\>> x<rsub|i>>|625>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<below|lim
    sup|i\<rightarrow\>\<infty\>> x<rsub|i>>|625>>
    <associate|auto-19|<tuple|17.3.1|625>>
    <associate|auto-2|<tuple|17.1|607>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>x<rsub|i>>|625>>
    <associate|auto-21|<tuple|18|626>>
    <associate|auto-22|<tuple|18.1|633>>
    <associate|auto-23|<tuple|18.1.1|633>>
    <associate|auto-24|<tuple|convergence domain|646>>
    <associate|auto-25|<tuple|absolute convergence domain|646>>
    <associate|auto-26|<tuple|convergence radius|646>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>>|648>>
    <associate|auto-28|<tuple|18.1.2|648>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>|661>>
    <associate|auto-3|<tuple|extented reals|607>>
    <associate|auto-30|<tuple|18.1.3|673>>
    <associate|auto-31|<tuple|Euler's number|673>>
    <associate|auto-32|<tuple|Napierian logarithm|677>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|log>|677>>
    <associate|auto-34|<tuple|<with|mode|<quote|math>|cos<around*|(|x|)>>|677>>
    <associate|auto-35|<tuple|<with|mode|<quote|math>|sin<around*|(|x|)>>|677>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|\<pi\>>|677>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|sup<rsub|\<bbb-R\>>>|609>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|inf<rsub|\<bbb-R\>>>|609>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|sup>|609>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|inf>|609>>
    <associate|auto-8|<tuple|17.2|620>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|\<cal-B\><rsub|\<bbb-R\>>>|621>>
    <associate|ball inclusion|<tuple|18.11|679>>
    <associate|closed sets in the extended reals|<tuple|17.40|622>>
    <associate|condition for supremum (infinum) to be
    infinite|<tuple|17.14|609>>
    <associate|continuity in R is continuity of extended
    reals|<tuple|17.42|623>>
    <associate|convention of sup inf|<tuple|17.17|?>>
    <associate|convergence domain and balls|<tuple|18.7|678>>
    <associate|convergence domain of exponential function|<tuple|18.18|682>>
    <associate|convergence in real implies that lim inferior = lim
    superior|<tuple|17.62|650>>
    <associate|convergence of derived powerseries|<tuple|18.22|683>>
    <associate|convergence of powerseries (1)|<tuple|18.6|677>>
    <associate|convergence radius|<tuple|18.8|678>>
    <associate|countable sum of countable sums is a countable
    sum|<tuple|17.107|672>>
    <associate|d'Alembert|<tuple|18.17|681>>
    <associate|definition of limit in the extented reals|<tuple|17.63|651>>
    <associate|density of the extented reals|<tuple|17.9|609>>
    <associate|derivative of the exponential function|<tuple|18.24|686>>
    <associate|distributivity in the extented reals|<tuple|17.29|617>>
    <associate|eq 13.1.300|<tuple|17.3|618>>
    <associate|eq 13.2.300|<tuple|17.4|618>>
    <associate|eq 13.3.301|<tuple|17.5|619>>
    <associate|eq 13.5|<tuple|17.35|651>>
    <associate|eq 13.6|<tuple|17.36|651>>
    <associate|eq 14.22.423|<tuple|17.54|669>>
    <associate|eq 14.23.424|<tuple|17.57|670>>
    <associate|eq 14.23.425|<tuple|17.56|670>>
    <associate|eq 14.25.424|<tuple|17.58|671>>
    <associate|eq 14.26.424|<tuple|17.59|671>>
    <associate|eq 14.4.472|<tuple|17.6|619>>
    <associate|eq 14.5.472|<tuple|17.7|620>>
    <associate|eq 17.1.514|<tuple|18.7|682>>
    <associate|eq 17.1.515|<tuple|18.1|677>>
    <associate|eq 17.10.001|<tuple|17.12|?>>
    <associate|eq 17.10.515|<tuple|18.10|683>>
    <associate|eq 17.11.001|<tuple|17.13|?>>
    <associate|eq 17.11.515|<tuple|18.11|683>>
    <associate|eq 17.12.001|<tuple|17.14|?>>
    <associate|eq 17.12.073|<tuple|18.12|685>>
    <associate|eq 17.13.001|<tuple|17.15|?>>
    <associate|eq 17.13.073|<tuple|18.13|686>>
    <associate|eq 17.14.001|<tuple|17.16|?>>
    <associate|eq 17.14.006|<tuple|17.24|649>>
    <associate|eq 17.14.073|<tuple|18.14|686>>
    <associate|eq 17.15.001|<tuple|17.17|?>>
    <associate|eq 17.15.006|<tuple|17.25|649>>
    <associate|eq 17.15.073|<tuple|18.15|687>>
    <associate|eq 17.16.001|<tuple|17.18|?>>
    <associate|eq 17.16.002|<tuple|18.16|687>>
    <associate|eq 17.16.006|<tuple|17.26|650>>
    <associate|eq 17.17.001|<tuple|17.19|?>>
    <associate|eq 17.17.002.1|<tuple|18.17|688>>
    <associate|eq 17.18.001|<tuple|17.20|?>>
    <associate|eq 17.18.002|<tuple|18.18|689>>
    <associate|eq 17.19.001|<tuple|17.21|?>>
    <associate|eq 17.19.002|<tuple|18.19|689>>
    <associate|eq 17.2.20.001|<tuple|17.44|666>>
    <associate|eq 17.2.21.001|<tuple|17.45|666>>
    <associate|eq 17.2.22.001.1|<tuple|17.46|666>>
    <associate|eq 17.2.23.001|<tuple|17.48|667>>
    <associate|eq 17.2.24.001|<tuple|17.49|667>>
    <associate|eq 17.2.25.001|<tuple|17.50|667>>
    <associate|eq 17.2.26.001|<tuple|17.51|668>>
    <associate|eq 17.2.27.001|<tuple|17.52|668>>
    <associate|eq 17.2.514|<tuple|18.8|682>>
    <associate|eq 17.2.515|<tuple|18.2|677>>
    <associate|eq 17.20.001|<tuple|17.22|?>>
    <associate|eq 17.20.003|<tuple|18.25|700>>
    <associate|eq 17.20.020|<tuple|18.20|693>>
    <associate|eq 17.21.001|<tuple|17.23|?>>
    <associate|eq 17.21.003|<tuple|18.26|700>>
    <associate|eq 17.21.020|<tuple|18.21|693>>
    <associate|eq 17.22.003|<tuple|18.27|700>>
    <associate|eq 17.22.020|<tuple|18.22|694>>
    <associate|eq 17.23.003|<tuple|18.28|700>>
    <associate|eq 17.23.020|<tuple|18.23|694>>
    <associate|eq 17.24.004|<tuple|18.29|701>>
    <associate|eq 17.24.020|<tuple|18.24|695>>
    <associate|eq 17.27.035|<tuple|17.27|?>>
    <associate|eq 17.28.035|<tuple|17.28|?>>
    <associate|eq 17.29.035|<tuple|17.29|?>>
    <associate|eq 17.3.515|<tuple|18.3|678>>
    <associate|eq 17.30.0.35|<tuple|17.30|?>>
    <associate|eq 17.31.035|<tuple|17.31|?>>
    <associate|eq 17.32.035|<tuple|17.32|?>>
    <associate|eq 17.33.035|<tuple|17.33|?>>
    <associate|eq 17.34.035|<tuple|17.34|?>>
    <associate|eq 17.37.035|<tuple|17.37|?>>
    <associate|eq 17.38.035|<tuple|17.38|?>>
    <associate|eq 17.39.035|<tuple|17.39|?>>
    <associate|eq 17.4.515.1|<tuple|18.4|681>>
    <associate|eq 17.41.035|<tuple|17.41|?>>
    <associate|eq 17.42.035|<tuple|17.42|?>>
    <associate|eq 17.43.035|<tuple|17.43|?>>
    <associate|eq 17.47.035|<tuple|17.47|?>>
    <associate|eq 17.49.001|<tuple|17.60|?>>
    <associate|eq 17.5.515|<tuple|18.5|681>>
    <associate|eq 17.50.001|<tuple|17.61|?>>
    <associate|eq 17.51.001|<tuple|17.62|?>>
    <associate|eq 17.53.035|<tuple|17.53|?>>
    <associate|eq 17.55.035|<tuple|17.55|?>>
    <associate|eq 17.6.033|<tuple|17.8|?>>
    <associate|eq 17.6.515|<tuple|18.6|681>>
    <associate|eq 17.63.035|<tuple|17.63|?>>
    <associate|eq 17.7.033|<tuple|17.9|?>>
    <associate|eq 17.8.033|<tuple|17.10|?>>
    <associate|eq 17.9.033|<tuple|17.11|?>>
    <associate|eq 17.9.515|<tuple|18.9|683>>
    <associate|equivalence of limits on increasing (decreasing) sequences of
    extented reals|<tuple|17.71|652>>
    <associate|every non empty set in the extented reals has a
    limit|<tuple|17.12|609>>
    <associate|existance of lim inf and lim sup|<tuple|17.50|647>>
    <associate|exp exceeds every number|<tuple|18.31|689>>
    <associate|exp is a bijection|<tuple|18.32|689>>
    <associate|exp is convex|<tuple|18.28|688>>
    <associate|exp(x) is continuous|<tuple|18.25|686>>
    <associate|exp(x+y)=exp(x)exp(y)|<tuple|18.26|686>>
    <associate|exp(z)|<tuple|18.19|682>>
    <associate|exponential as power|<tuple|18.30|688>>
    <associate|extented reals|<tuple|17.2|607>>
    <associate|finite infinite sum means finite terms|<tuple|17.98|665>>
    <associate|finite sum of constants in the extented
    reals|<tuple|17.92|664>>
    <associate|finite sum of denumerable sums|<tuple|17.104|669>>
    <associate|finite sum of extented reals|<tuple|17.85|661>>
    <associate|finite sum of extented reals properties|<tuple|17.91|664>>
    <associate|finite sum of extented reals starting at n|<tuple|17.86|661>>
    <associate|finite sum of extented reals written as infinite
    sum|<tuple|17.99|665>>
    <associate|finite sum of non negative extented reals is non
    negative|<tuple|17.87|661>>
    <associate|general strict positive powers|<tuple|18.38|692>>
    <associate|generalized power|<tuple|18.35|690>>
    <associate|gnerating basis vor the extended reals|<tuple|17.37|?>>
    <associate|increasing (decreasing) sequence|<tuple|17.47|646>>
    <associate|increasing (decreasing) sequence converges|<tuple|17.49|646>>
    <associate|independence of limit inf and limit sup of start
    index|<tuple|17.52|648>>
    <associate|inequality of Abel|<tuple|18.14|680>>
    <associate|interchange infinite and finite sum|<tuple|17.103|668>>
    <associate|lemma 15.75|<tuple|17.80|660>>
    <associate|lemma 17.2|<tuple|18.16|681>>
    <associate|lemma 17.38|<tuple|18.41|693>>
    <associate|lim inf -xn|<tuple|17.58|648>>
    <associate|lim inf and lim sup|<tuple|17.51|648>>
    <associate|lim inf and lim sup inequality|<tuple|17.55|?>>
    <associate|lim inf lim sup basic properties|<tuple|17.54|?>>
    <associate|lim sup lim inf inequality (1)|<tuple|17.56|?>>
    <associate|lim sup xn+x|<tuple|17.57|648>>
    <associate|liminf and limsup of a constant|<tuple|17.53|?>>
    <associate|liminf and limsup properties for sum
    product|<tuple|17.60|649>>
    <associate|limit and absolut value|<tuple|17.76|655>>
    <associate|limit and translation of indexes|<tuple|17.68|?>>
    <associate|limit n|<tuple|17.82|660>>
    <associate|limit n to infinite|<tuple|17.75|?>>
    <associate|limit of 1/f|<tuple|17.81|660>>
    <associate|limit of constant extented real|<tuple|17.67|651>>
    <associate|limit of finite sums in the extented reals|<tuple|17.90|662>>
    <associate|limit xi+x|<tuple|17.69|651>>
    <associate|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0|<tuple|17.83|660>>
    <associate|notation for limit of increasing/decreasing
    sequences|<tuple|17.72|653>>
    <associate|open sets and addition scalar
    multiplication|<tuple|17.43|623>>
    <associate|open sets in the extended reals condition|<tuple|17.41|?>>
    <associate|pi|<tuple|18.48|701>>
    <associate|power series 0|<tuple|18.3|677>>
    <associate|properties of exp (1)|<tuple|18.27|688>>
    <associate|properties of exp (2)|<tuple|18.43|696>>
    <associate|properties of general power|<tuple|18.39|692>>
    <associate|properties of general strict power|<tuple|18.37|690>>
    <associate|properties of log|<tuple|18.34|689>>
    <associate|properties of the limit in the extented
    reals|<tuple|17.77|655>>
    <associate|series and product with a scalar|<tuple|17.95|665>>
    <associate|series are increasing|<tuple|17.88|661>>
    <associate|series of extended reals and zeroes|<tuple|17.102|666>>
    <associate|series of positive extented reals is
    increasing|<tuple|17.94|665>>
    <associate|series of positive extented reals is increasing
    (1)|<tuple|17.93|?>>
    <associate|sets for basis of topology on the extented
    reals|<tuple|17.36|621>>
    <associate|sum and order relation in the extented
    reals|<tuple|17.97|665>>
    <associate|sum from -infinity to infinity|<tuple|17.108|673>>
    <associate|sum of extented reals and product|<tuple|17.89|661>>
    <associate|sum of extented reals is indepenent of order the
    reals|<tuple|17.100|665>>
    <associate|sum of series in the extended reals|<tuple|17.96|?>>
    <associate|sup and inf in real and extended reals|<tuple|17.15|?>>
    <associate|sup of set and sum|<tuple|17.30|618>>
    <associate|sup,inf sum of monotone sequences|<tuple|17.59|649>>
    <associate|supremum (infinum) of increasing (decreasing) sequence is
    indpendent of start|<tuple|17.70|652>>
    <associate|supremum of set of real numbers is ververy
    -ifinity|<tuple|17.13|?>>
    <associate|supremum, infinum of extented real set|<tuple|17.11|609>>
    <associate|supremum, infinum of real set|<tuple|17.10|609>>
    <associate|the limit inferior is lower then limit
    superior|<tuple|17.61|650>>
    <associate|the positive extented reals form a abelian
    semi-group|<tuple|17.28|617>>
    <associate|the topology on the extented reals is
    Hausdorff|<tuple|17.45|624>>
    <associate|topology on extented reals|<tuple|17.38|621>>
    <associate|topology on the extended reals properties|<tuple|17.39|?>>
    <associate|trigoniometic properties|<tuple|18.45|696>>
    <associate|trigoniometric functions|<tuple|18.44|696>>
    <associate|x+z=y+z=\<gtr\>x=y|<tuple|17.24|612>>
    <associate|x.y \<less\> 0 or \<gtr\> 0|<tuple|17.20|?>>
    <associate|x\<less\>=y=\<gtr\>-y\<less\>=-x|<tuple|17.22|611>>
    <associate|x\<less\>=y=\<gtr\>lx\<less\>=ly|<tuple|17.23|612>>
    <associate|x\<less\>=y=\<gtr\>x+z\<less\>=y+z|<tuple|17.25|614>>
    <associate|x\<less\>y=\<gtr\>x+1/n\<less\>y|<tuple|17.8|?>>
    <associate|x\<less\>y=\<gtr\>x\<less\>\<gtr\>inf and
    y\<less\>\<gtr\>-inf|<tuple|17.7|?>>
    <associate|x^p is continuous|<tuple|18.40|693>>
    <associate|zero and convergentie domain|<tuple|18.5|677>>
    <associate|zeroes of cos has a minimum|<tuple|18.47|700>>
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

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>>|<pageref|auto-13>>

      <tuple|<tuple|increasing sequence>|<pageref|auto-15>>

      <tuple|<tuple|decreasing sequence>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      inf|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|<below|lim
      sup|i\<rightarrow\>\<infty\>> x<rsub|i>>>|<pageref|auto-18>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sum><rsub|i=-\<infty\>><rsup|\<infty\>>x<rsub|i>>>|<pageref|auto-20>>

      <tuple|<tuple|convergence domain>|<pageref|auto-24>>

      <tuple|<tuple|absolute convergence domain>|<pageref|auto-25>>

      <tuple|<tuple|convergence radius>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|R<rsub|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|exp<around*|(|z|)>>>|<pageref|auto-29>>

      <tuple|<tuple|Euler's number>|<pageref|auto-31>>

      <tuple|<tuple|Napierian logarithm>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|log>>|<pageref|auto-33>>

      <tuple|<tuple|<with|mode|<quote|math>|cos<around*|(|x|)>>>|<pageref|auto-34>>

      <tuple|<tuple|<with|mode|<quote|math>|sin<around*|(|x|)>>>|<pageref|auto-35>>

      <tuple|<tuple|<with|mode|<quote|math>|\<pi\>>>|<pageref|auto-36>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|17<space|2spc>The
      extended real numbers> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      17.1<space|2spc>Extented reals <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      17.2<space|2spc>Topology on <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-8>

      17.3<space|2spc>Sequences in <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>

      <with|par-left|<quote|1tab>|17.3.1<space|2spc>Series in
      <with|mode|<quote|math>|<wide|\<bbb-R\><rsub|>|\<bar\>><rsub|+>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>The
      exponential function> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21><vspace|0.5fn>

      18.1<space|2spc>Power series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>

      <with|par-left|<quote|1tab>|18.1.1<space|2spc>Definition and
      convergence domains <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|18.1.2<space|2spc>Convergence criteria
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>

      <with|par-left|<quote|1tab>|18.1.3<space|2spc>Differentiation of power
      series <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>
    </associate>
  </collection>
</auxiliary>