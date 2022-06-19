<TeXmacs|1.99.17>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|17>

  <chapter|Measure Theory>

  <\notation>
    Given <math|a,b\<in\><wide|\<bbb-R\>|\<bar\>>> we use the following
    notations

    <\enumerate>
      <item><math|<around*|[|a,b|]>=<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|a\<leqslant\>x\<leqslant\>b|}>>

      <item><math|<around*|[|a,b|[>=<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|a\<leqslant\>x\<less\>b|}>>

      <item><math|<around*|]|a,b|]>>=<math|<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|a\<less\>x\<leqslant\>b|}>>

      <item><math|<around*|]|a,b|[>>=<math|<around*|{|x\<in\><wide|\<bbb-R\>|\<bar\>>\|a\<less\>x\<less\>b|}>>
      [note that this set is guaranteed to be a subset of <math|\<bbb-R\>>]
    </enumerate>

    the special cases where <math|a=-\<infty\>> or <math|b=\<infty\>> are
    called segments.
  </notation>

  <section|<math|Basic concepts of measure theory>>

  <subsection|Measurable spaces>

  Measure theory is involved with the concepts of length, area or volume of
  sets, actually a measure of a set contains is the unification of the terms
  'length', \<#2018\>area' and 'volume' of a set. To apply this term of
  measure in a meaningful way on sets and avoid paradoxes (like the Tarski
  paradox) we must restrict ourselves to certain classes of sets. This is the
  idea of <math|\<sigma\>>-algebra\<#2019\>s.\ 

  <\definition>
    <label|sigma-algebra><index|<math|\<sigma\>>-algebra><dueto|<math|\<sigma\>>-algebra>Let
    <math|X> be a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> [
    <math|\<cal-P\><around*|(|X|)>> is the set of subsets of <math|X> (see
    <reference|power set>) ] then <math|\<cal-A\>> is a a
    <math|\<sigma\>>-algebra on <math|X> iff\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have that
      <math|X\\A\<in\>\<cal-A\>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      [ meaning that <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<in\>\<cal-A\>>] we have that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </definition>

  <\notation>
    <label|measurable space><dueto|Measurable Space>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra then the structure
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is called a
    <with|font-series|bold|measurable space>.
  </notation>

  A trivial example of a measure space is the following, although it is not
  very useful

  <\example>
    <label|trivial measurable space>Let <math|X> be a set then
    <math|<around*|\<langle\>|X,\<cal-P\><around*|(|X|)>|\<rangle\>>> is a
    measurable space\ 
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|A\<in\>\<cal-P\><around*|(|X|)>> then
      <math|X\\A\<subseteq\>X> so that <math|X\\A\<in\>\<cal-P\><around*|(|X|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      we have <math|A<rsub|i>\<subseteq\>X> so that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>X> proving
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  Actually the above definition can be rewritten using the more general
  concept of countable sets (see <reference|countable sets>) as is seen in
  the following proposition.

  <\proposition>
    <label|alternate definition of a sigma algebra>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <math|\<sigma\>>-algebra iff\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|X\\A\<in\>\<cal-A\>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>K>\<subseteq\>\<cal-A\>>
      where <math|K> is countable we have that
      <math|<big|cup><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|\<cal-A\>> be a algebra then (1)
      and (2) in the proposition follows from the definition of a
      <math|\<sigma\>>-algebra. So we must only prove (3), so let <math|K> be
      a countable set then we have the following possibilities to consider:

      <\description>
        <item*|<math|K is finite>>then either <math|K=\<emptyset\>> and then
        <math|<big|cup><rsub|i\<in\>K>A<rsub|i>\<equallim\><rsub|<text|<reference|union
        and intersection of emptyset>>>\<emptyset\>\<in\>\<cal-A\>> or there
        exists a <math|n\<in\>\<bbb-N\>> and a bijection
        <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>K> define
        then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
        <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
        if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
        i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\>\<bbb-N\>\<vDash\>x\<in\>B<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>\<Rightarrow\>x\<in\>B<rsub|i>=\<emptyset\><text|
          a contradiction>>>|<cell|i\<in\><around*|{|1,\<ldots\>,n|}><rsub|>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><rsub|\<beta\><around*|(|i|)>\<in\>K><big|cup><rsub|i\<in\>K>A<rsub|i>>>|<row|<cell|x\<in\><big|cup><rsub|i\<in\>K>A<rsub|i>>|<cell|\<Rightarrowlim\>>|<cell|\<exists\>i\<in\>K\<vDash\>x\<in\>A<rsub|I>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|\<beta\>
          <text| is surjective>>>|<cell|\<exists\>j\<in\><around*|{|1,\<ldots\>,n|}>\<subseteq\>\<bbb-N\>\<vDash\>\<beta\><around*|(|j|)>=i>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<rsub|\<beta\><around*|(|j|)>>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>>>>
        </eqnarray*>

        which proves that <math|<big|cup><rsub|i\<in\>K>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>
        [as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra]

        <item*|<math|K is infinite countable>>then there exists a bijection
        <math|\<beta\>:\<bbb-N\>\<rightarrow\>K>, define then
        <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
        <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>>. Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\>\<bbb-N\>\<vDash\>x\<in\>B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|k\<in\>K>B<rsub|k>>>|<row|<cell|x\<in\><big|cup><rsub|k\<in\>K>A<rsub|k>>|<cell|\<Rightarrow\>>|<cell|\<exists\>k\<in\>K\<vDash\>x\<in\>A<rsub|k>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|\<beta\><text|
          is bijection>>>|<cell|\<exists\>i\<in\>\<bbb-N\>\<vDash\>\<beta\><around*|(|i|)>=k>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<rsub|k>=A<rsub|\<beta\><around*|(|i|)>>=B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>>>>
        </eqnarray*>

        which proves that <math|<big|cup><rsub|i\<in\>K>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>
      </description>

      So in all cases we have that <math|<big|cup><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>
      proving that (3)

      <item*|<math|\<Leftarrow\>>>If <math|\<cal-A\>> satisfies (1),(2) of
      the proposition then (1) (2) of the definition of a
      <math|\<sigma\>>-algebra is satisfied and (3) is satisfied because
      <math|\<bbb-N\>> is countable.
    </description>
  </proof>

  A trivial example of a <math|\<sigma\>>-algebra is the set of all subsets
  of <math|X> although it is not a very useful one.

  <\example>
    <label|trivial sigma algebra>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra on <math|X>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<emptyset\>\<subseteq\>X> we have
      <math|\<emptyset\>\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|A\<in\>\<cal-P\><around*|(|X|)>> then
      <math|X\\A\<subseteq\>X> so that <math|X\\A\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>\<cal-P\><around*|(|X|)>> so that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>X> proving
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  <\proposition>
    <label|sigma algebra properties>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measure space then we have\ 

    <\enumerate>
      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>K>\<subseteq\>\<cal-A\>>
      with <math|K> countable we have <math|<big|cap><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have

      <\enumerate>
        <item><math|A<big|cup>B\<in\>\<cal-A\>>

        <item><math|A<big|cap>B\<in\>\<cal-A\>>

        <item><math|A\\B\<in\>\<cal-A\>>
      </enumerate>

      <item><math|X\<in\>\<cal-A\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>K>> by
      <math|B<rsub|i>=X\\A<rsub|i>> then using <reference|alternate
      definition of a sigma algebra> (2) we have that
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>K>\<subseteq\>\<cal-A\>>
      hence by <reference|alternate definition of a sigma algebra> (3)
      <math|<big|cup><rsub|i\<in\>K>B<rsub|i>\<in\>\<cal-A\>> and thus

      <\equation>
        <label|eq 18.1.001.1>X\\<around*|(|<big|cup><rsub|i\<in\>K>B<rsub|i>|)>\<in\>\<cal-A\>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|(|<big|cup><rsub|i\<in\>K>B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cap><rsub|i\<in\>K><around*|(|X\\B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>K><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|<big|cap><rsub|i\<in\>K>A<rsub|i>>>>>
      </eqnarray*>

      so that <math|<big|cap><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>

      <item> Let <math|A,B\<in\>\<cal-A\>>

      <\enumerate>
        <item>Define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
        by <math|A<rsub|1>=A\<wedge\>A<rsub|2>=B> then as
        <math|<around*|{|1,2|}>> is finite hence countable
        <math|A<big|cup>B\<equallim\><rsub|<text|<reference|alternate
        definition of a sigma algebra> (3)>><big|cup><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>

        <item>Define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
        by <math|A<rsub|1>=A\<wedge\>A<rsub|2>=B> then
        <math|A<big|cap>B\<equallim\><rsub|<around*|(|1|)>><big|cap><rsub|i\<in\>K>A<rsub|i>\<in\>\<cal-A\>>

        <item>As <math|B\<in\>\<cal-A\>> we have <math|X\\B\<in\>\<cal-A\>>
        so that <math|A\\B=A<big|cap>B<rsup|c>=A<big|cap>X<big|cap>B<rsup|c>=A<big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>
        (by 2.b)
      </enumerate>

      <item>As <math|X=X\<setminus\>\<emptyset\>> we have by
      <reference|alternate definition of a sigma algebra> (1,2) that
      <math|X\\\<emptyset\>\<in\>\<cal-A\>>
    </enumerate>
  </proof>

  The following theorem shows how we can generate from a measurable space a
  new measurable space.

  <\theorem>
    <label|sub-algebra><index|sub-algebra><index|trace algebra>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<subseteq\>X> then <math|\<cal-A\><rsub|\|A>=<around*|{|A<big|cap>B\|B\<in\>\<cal-A\>|}>>
    is a <math|\<sigma\>>-algebra on <math|A> making
    <math|<around*|\<langle\>|A,\<cal-A\><rsub|\|A>|\<rangle\>>> a measurable
    space. <math|\<cal-A\><rsub|\|A>> is called the
    <with|font-series|bold|sub-algebra> or <with|font-series|bold|trace
    algebra> induced by <math|A>. Further
    <math|\<cal-A\><rsub|\|X>=\<cal-A\>>
  </theorem>

  <\proof>
    First as <math|\<emptyset\>=A<big|cap>\<emptyset\>> and
    <math|\<emptyset\>\<in\>\<cal-A\>> we have that\ 

    <\equation>
      <label|eq 18.2.003>\<emptyset\>\<in\>\<cal-A\><rsub|A>
    </equation>

    Second if <math|B\<in\>\<cal-A\><rsub|A>> then
    <math|\<exists\>E\<in\>\<cal-A\>> such that <math|B=A<big|cap>E> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|X\\E|)><big|cap>A>|<cell|\<equallim\><rsub|<text|<reference|distributivity
      of union or intersection>>>>|<cell|<around*|(|X<big|cap>A|)>\\E>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<subseteq\>X>>|<cell|A\\E>>>>
    </eqnarray*>

    which as <math|<around*|(|X\\E|)>\<in\>\<cal-A\>> proves that\ 

    <\equation>
      <label|eq 18.003>A\\E\<in\>\<cal-A\><rsub|A>
    </equation>

    Finally if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><rsub|A>>
    then <math|\<forall\>i\<in\>\<bbb-N\>> there exists a
    <math|E<rsub|i>\<in\>\<cal-A\>> such that
    <math|A<rsub|i>=A<big|cap>E<rsub|i>> hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<big|cap>E<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      distributive laws>>>>|<cell|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>>>>>
    </eqnarray*>

    which as <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
    proves that\ 

    <\equation>
      <label|eq 18.4.003><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\><rsub|A>
    </equation>

    Finally as <math|\<forall\>B\<in\>\<cal-A\>> we have
    <math|A\<subseteq\>X> so that <math|X<big|cap>B=B> proving that
    <math|\<cal-A\><rsub|\|X>=<around*|{|X<big|cap>B\|B\<in\>\<cal-A\>|}>=<around*|{|B\|B\<in\>\<cal-A\>|}>=\<cal-A\>>
  </proof>

  The following shows how to construct a algebra from a given set of subsets
  of a set and will be used in many cases to generate a
  <math|\<sigma\>>-algebra.

  <\theorem>
    <label|sigma algebra generated><index|<math|\<sigma\><around*|[|\<cal-A\>|]>>>Let
    <math|X> be a set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then there exists a unique <math|\<sigma\>>-algebra
    <math|\<sigma\><around*|[|\<cal-A\>|]>> on <math|X> such that\ 

    <\enumerate>
      <item><math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>

      <item>For every <math|\<sigma\>>-algebra <math|\<cal-B\>> with
      <math|\<cal-A\>\<subseteq\>\<cal-B\>> we have that
      <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-B\>> [ meaning
      that <math|\<sigma\><around*|[|\<cal-A\>|]>> is the smallest
      <math|\<sigma\>>-algebra containing <math|\<cal-A\>>]
    </enumerate>
  </theorem>

  <\notation>
    <label|Borel algebras and generator><index|Borel sets>Elements of
    <math|\<sigma\><around*|[|\<cal-A\>|]>> are called Borel sets and
    <math|\<sigma\><around*|[|\<cal-A\>|]>> is called a
    <with|font-series|bold|Borel algebra> and <math|\<cal-A\>> is called the
    <with|font-series|bold|generator> of the Borel algebra.
  </notation>

  <\proof>
    Define <math|\<cal-Q\>=<around*|{|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>\|\<cal-B\><text|
    is a >\<sigma\><text|-algebra and >\<cal-A\>\<subseteq\>\<cal-B\>|}>>
    then as <math|\<cal-P\><around*|(|X|)>> a <math|\<sigma\>>-algebra (see
    <reference|trivial sigma algebra>) and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> we have that
    <math|\<cal-P\><around*|(|X|)>\<in\>\<cal-Q\>> such that
    <math|\<cal-Q\>\<neq\>\<emptyset\>>. Define now
    <math|\<sigma\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>>
    then as <math|\<forall\>\<cal-B\>\<in\>\<cal-Q\>> we have
    <verbatim|><math|\<cal-A\>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    it follows that <math|>

    <\equation>
      <label|eq 18.1.1.001>\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-P\><around*|(|X|)>
    </equation>

    We prove now that <math|\<sigma\><around*|[|\<cal-A\>|]>> is a
    <math|\<sigma\>>-algebra

    <\enumerate>
      <item><math|\<forall\>\<cal-B\>> we have that
      <math|\<emptyset\>\<in\>\<cal-B\>> so that
      <math|\<emptyset\>\<in\><big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>>

      <item>If <math|A\<in\>\<sigma\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>>
      then <math|\<forall\>\<cal-B\>\<in\>\<cal-Q\>>
      <math|A\<in\>\<cal-B\>\<Rightarrowlim\><rsub|\<cal-B\><text| is a
      >\<sigma\><text|-algebra>>X\\A\<in\>\<cal-B\>> proving that
      <math|X\\A\<in\><big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>=\<sigma\><around*|[|\<cal-A\>|]>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<in\>\<sigma\><around*|[|\<cal-A\>|]>> so that
      <math|\<forall\>\<cal-B\>\<in\>\<cal-Q\>> we have
      <math|A<rsub|i>\<in\>\<cal-B\>>, hence
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-B\>.> So
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\><big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>=\<sigma\><around*|[|\<cal-A\>|]>>
    </enumerate>

    hence\ 

    <\equation>
      <label|eq 18.1.2.001>\<sigma\><around*|[|\<cal-A\>|]><text| is a
      >\<sigma\><text|-algebra>
    </equation>

    Further if there is a another <math|\<sigma\>>-algebra <math|\<cal-R\>>
    with <math|\<cal-A\>\<subseteq\>\<cal-R\>> then by definition
    <math|\<cal-R\>\<in\>\<cal-Q\>> so that
    <math|\<sigma\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-B\>\<in\>\<cal-Q\>>\<cal-B\>\<subseteq\>\<cal-R\>>.
    This together with <reference|eq 18.1.1.001> and <reference|eq
    18.1.2.001> proves the theorem.
  </proof>

  A special Borel algebra is the algebra generated by open sets in a
  topology.

  <\definition>
    <label|Borel sigma-algebra>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space then the <with|font-series|bold|Borel
    <math|\<sigma\><text|>>>-<with|font-series|bold|algebra>
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>> is defined by
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-T\>|]>>
  </definition>

  <\notation>
    <label|Borel algebras>We use the following notations for the following
    topological spaces\ 

    <\enumerate>
      <item><math|\<cal-B\><around*|[|\<bbb-R\>|]>> is
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>> where
      <math|\<cal-T\><rsub|\<bbb-R\>>> is the topology on <math|\<bbb-R\>>
      generated by the norm <math|<around*|\|||\|>>\ 

      <item><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>|]>> is
      <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      where <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> is the topology
      defined by the norm \ <reference|topology on extented reals>

      <item>Let <math|n\<in\>\<bbb-N\>> then
      <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> is
      <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
      is the product topology on <math|\<bbb-R\><rsup|n>> (see
      <reference|topology of R^n>)

      <item>Let <math|n\<in\>\<bbb-N\>> then
      <math|\<cal-B\><around*|[|<wide|\<bbb-R\><rsup|n>|\<bar\>>|]>> is
      <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>><rsup|n>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>><rsup|n>>|]>>
      is the box topology on <math|<wide|\<bbb-R\>|\<bar\>><rsup|n>> (see
      <reference|box topology>)
    </enumerate>
  </notation>

  Actually we can generate the Borel <math|\<sigma\>>-algebra generated by
  the topology on a set also by the set of closed sets as is proved in the
  following proposition.

  <\proposition>
    <label|Borel sets and closed sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and <math|\<cal-C\>=<around*|{|C\<subseteq\>X\|C is closed in
    \<cal-T\>|}>> then <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-C\>|[>>
  </proposition>

  <\proof>
    Let <math|C\<in\>\<cal-C\>> then there exist by definition a
    <math|U\<in\>\<cal-T\>> such that <math|C=X\\U\<in\>\<sigma\><around*|[|\<cal-T\>|]>>
    [using the definition of a <math|\<sigma\>>-algebra] proving that
    <math|\<cal-C\>\<subseteq\>\<b-sigma\><around*|[|\<cal-T\>|]>>. As
    <math|\<sigma\><around*|[|\<cal-C\>|]>> is the smallest
    <math|\<sigma\>>-algebra containing <math|\<cal-C\>> we must have\ 

    <\equation>
      <label|eq 18.4.001.1>\<sigma\><around*|[|\<cal-C\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>=\<cal-B\><around*|[|X,\<cal-T\>|]>
    </equation>

    Further if <math|U\<in\>\<cal-T\>> then <math|X\\U> is closed so that
    <math|X\\U\<in\>\<sigma\><around*|[|\<cal-C\>|]>> [using the definition
    of a <math|\<sigma\>>-algebra] proving that
    <math|\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>>. As
    <math|\<sigma\><around*|[|\<cal-T\>|]>> is the smallest
    <math|\<sigma\>>-algebra containing <math|\<cal-T\>> we have
    <math|\<sigma\><around*|[|\<cal-T\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>>
    which by <reference|eq 18.4.001.1> proves that\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-C\>|]>=\<sigma\><around*|[|\<cal-T\>|]>=\<cal-B\><around*|[|\<cal-X\>,\<cal-T\>|]>
    </equation*>

    \;
  </proof>

  <subsection|Measure spaces>

  Now we know which sets we are going to work with we can introduce the
  concept of a measure to indicate the size of a set. In defining this
  concept we want that it behaves in the same intuitive ways as lengths,
  area's and volume's.\ 

  <\definition>
    <label|measure space><index|measure space><index|<math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>>A
    measure space is a triple <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    where <math|X> is a set, <math|\<cal-A\>> is a <math|\<sigma\>>-algebra
    on <math|X> and <math|\<mu\>> is the graph of a function
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> such that\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>For every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that <math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we
      have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> [ a pairwise
      disjoint sequence of sets in <math|\<cal-A\>> ] we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
    </enumerate>

    the set function <math|\<mu\>> is called a
    <with|font-series|bold|measure>.
  </definition>

  Note that by <reference|series of positive extented reals is increasing>
  \ <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>|)>>.
  Also we have a more generalized definition of a infinite and finite sums of
  extended reals numbers (see <reference|generalized sum of the extended
  reals>) <math|<big|sum><rsub|i\<in\>I>x<rsub|i>>, this allows us to have a
  alternative definition of measure spaces. First we need a little lemma.

  <\lemma>
    <label|reindex union of sets>Let <math|I,J> be sets and
    <math|\<beta\>:I\<rightarrow\>J> a surjection,
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>J>> a family of sets then
    <math|<big|cup><rsub|i\<in\>I>A<rsub|\<beta\><around*|(|i|)>>=<big|cup><rsub|i\<in\>J>A<rsub|i>>
  </lemma>

  <\proof>
    First we prove that <math|<big|cup><rsub|i\<in\>I>A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|i\<in\>J>A<rsub|i>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|\<beta\><around*|(|i|)>>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\>I
      such that x\<in\>A<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|\<beta\><around*|(|i|)>\<in\>J>>|<cell|x\<in\><big|cup><rsub|i\<in\>J>A<rsub|i>>>>>
    </eqnarray*>

    Next we prove that <math|<big|cup><rsub|i\<in\>J>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|\<beta\><around*|(|i|)>>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>J>A<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<exists\>i\<in\>J
      such that x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|\<beta\>
      is surjective>>|<cell|\<exists\>j\<in\>I such that
      i=\<beta\><around*|(|j|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A<rsub|\<beta\><around*|(|j|)>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<big|cup><rsub|i\<in\>I>A<rsub|\<beta\><around*|(|i|)>>>>>>
    </eqnarray*>
  </proof>

  <\proposition>
    <label|measure space alternative definition>Let <math|X> be a set,
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra then
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> is a measure
    space iff\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>For every <math|<around*|{|A<rsub|i>|}><rsub|k\<in\>K>\<subseteq\>\<cal-A\>>
      such that <math|K> is countable and <math|\<forall\>i,j\<in\>K> with
      <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>=<big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>
  </proposition>

  <\proof>
    \ It is enough to prove that (2) of the proposition is equivalent to (2)
    of the definition

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>K>\<subseteq\>\<cal-A\>>
      such that <math|\<forall\>i,j\<in\>K> with <math|i\<neq\>j> we have
      <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> then we have the
      following cases to consider for <math|K>:\ 

      <\description>
        <item*|<math|K=\<emptyset\>>>then
        <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|union
        and intersection of emptyset>>>\<mu\><around*|(|\<emptyset\>|)>=0\<equallim\><rsub|<text|<reference|generalized
        sum of the extended reals>>><big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)>>

        <item*|<math|K is finite non empty>>then there exists a
        <math|n\<in\>\<bbb-N\>> such that
        <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>K> define
        then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
        <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
        if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
        i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>>then
        <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        and if <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we have either\ 

        <\description>
          <item*|<math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>>then
          <math|B<rsub|i><big|cap>B<rsub|j>=A<rsub|\<beta\><around*|(|i|)>><big|cap>A<rsub|\<beta\><around*|(|j|)>>\<equallim\><rsub|\<beta\>
          is a bijection\<Rightarrow\>\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>>\<emptyset\>>

          <item*|<math|1\<less\>i\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>then
          <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\><big|cap>B<rsub|j>=\<emptyset\>>

          <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>1\<less\>j>>then
          <math|B<rsub|i><big|cap>B<rsub|j>=B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>

          <item*|<math|1\<less\>i\<wedge\>1\<less\>j>>then
          <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\><big|cap>\<emptyset\>=\<emptyset\>>
        </description>

        proving that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is
        pairwise disjoint so that\ 

        <\equation>
          <label|eq 18.3.001>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
        </equation>

        Now <math|\<forall\>i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>> we
        have <math|\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>
        so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
          serie of extended positive numbers>>>>|<cell|<big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sequence of extended and remove
          zeroes>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sums and bijections>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)><eq-number><label|eq
          18.4.001>>>>>
        </eqnarray*>

        Further\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|cup><rsub|i\<in\>K>A<rsub|i>>|<cell|=>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|i|)>>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>B<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>>>>
        </eqnarray*>

        so that using <reference|eq 18.3.001> and <reference|eq 18.4.001> we
        have\ 

        <\equation*>
          \<mu\><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>=<big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)>
        </equation*>

        <item*|<math|K is infinite countable>>then there exists a
        <math|\<beta\>:\<bbb-N\>\<rightarrow\>K> then and if
        <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we have as
        <math|\<beta\>> is a bijection <math|>that
        <math|\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>> so that
        <math|A<rsub|\<beta\><around*|(|i|)>><big|cap>A<rsub|\<beta\><around*|(|j|)>>=\<emptyset\>>
        proving that <math|<around*|{|A<rsub|\<beta\><around*|(|i|)>>|}><rsub|i\<in\>\<bbb-N\>>>
        is pairwise disjoint

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|reindex
          union of sets>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
          sum of the extended reals>>>>|<cell|<big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)>>>>>
        </eqnarray*>
      </description>

      So in all cases we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)>=<big|sum><rsub|i\<in\>K>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      be a family of pairwise disjoint then as <math|\<bbb-N\>> is countable
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        serie of extended positive numbers>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>
    </description>
  </proof>

  In this treatise we will encounter many times that the sentence let
  <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> be a family of pairwise
  disjoint sets and then work with the union
  <math|<big|cup><rsub|i\<in\>I>A<rsub|i>>. To avoid this excessive notation
  we introduce the following notations.

  <\notation>
    If we define <math|<around*|{|A<rsub|i>|}><rsub|>> and then refer to
    \ <math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>> we mean that
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is pairwise disjoint and
    that <math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\>I>A<rsub|i>>.
  </notation>

  Given the role that pairwise disjoint sequences of sets play in measure
  theory, it is useful to turn a sequence of sets in a pairwise disjoint
  union of sets. The following lemma can be used to do this.\ 

  <\lemma>
    <label|constructing pairwise disjoint sequences>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is a sequence of
    sets then if we define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
    by <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>
    if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>> we have that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>.
    Furthermore if <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is a
    measurable space and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
  </lemma>

  <\proof>
    First we prove that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
    is pairwise disjoint. So let <math|i,j\<in\>\<bbb-N\>> with
    <math|i\<neq\>j> then we may assume that <math|i\<less\>j> [otherwise
    interchange <math|i> and <math|j>] so that <math|1\<leqslant\>i\<less\>j>
    and thus that <math|j\<neq\>1>. Assume that
    <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then <math|x\<in\>B<rsub|i>>
    and <math|x\<in\>B<rsub|j>>. If <math|i=1> then
    <math|B<rsub|i>=A<rsub|1>> so that <math|x\<in\>A<rsub|1>=A<rsub|i>> and
    if <math|1\<less\>i> then <math|B<rsub|i>=A<rsub|i>\\<around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|k>|)>>
    so that <math|x\<in\>A<rsub|i>>, hence we must have
    <math|x\<in\>A<rsub|i>>. As <math|i\<less\>j> we have
    <math|i\<leqslant\>j-1> hence <math|x\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k><rsub|>>
    so that <math|x\<nin\>A<rsub|j>\\<around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>|)>>
    a contradiction. So we must have that <math|B<rsub|i><big|cap>B<rsub|j>>.
    This proves that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is
    pairwise disjoint.\ 

    Second we have as <math|\<forall\>i\<in\>\<bbb-N\>>
    <math|B<rsub|i>\<subseteq\>A<rsub|i>> we have that

    <\equation>
      \ <label|eq 18.5.001><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>.
    </equation>

    For the opposite inclusion let <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    then there exists a <math|i\<in\>\<bbb-N\>> such that
    <math|x\<in\>A<rsub|i>>, so that <math|I=<around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>\<neq\>\<emptyset\>>
    hence <math|m=min<around*|(|I|)>> exists. We have two cases for <math|m>
    to consider

    <\description>
      <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>

      <item*|<math|1\<less\>m>>then by definition of the minimum we must have
      that <math|x\<in\>A<rsub|m>> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m-1|}>>
      [so that <math|i\<less\>m>] we must have that <math|x\<nin\>A<rsub|i>>
      hence <math|x\<nin\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|i>>.
      Hence <math|x\<in\>A<rsub|m>\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|i>|)>=B<rsub|m>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
    </description>

    So we must have that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
    which using <reference|eq 18.5.001> and the pairwise disjointedness gives\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
    </equation*>

    Finally if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    then given <math|i\<in\>\<bbb-N\>> we have either\ 

    <\description>
      <item*|<math|i=1>>then <math|B<rsub|i>=B<rsub|1>=A<rsub|1>\<in\>\<cal-A\>>

      <item*|<math|1\<less\>i>>then <math|B<rsub|i>=A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>>.
      By <reference|alternate definition of a sigma algebra> (2) we have that
      <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>\<in\>\<cal-A\>>
      and as <math|A<rsub|i>\<in\>\<cal-A\>> we can use <reference|sigma
      algebra properties> proving that <math|><math|B<rsub|i>=A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>\<in\>\<cal-A\>>
    </description>
  </proof>

  We have the following properties of a measure space

  <\proposition>
    <label|measure space properties>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then we have\ 

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with
      <math|A<big|cap>B=\<emptyset\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>\<leqslant\>\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|A<rsub|i>|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>>
      [<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is a increasing
      sequence] then

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|E<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|E<rsub|i>|)>\|i\<in\>\<bbb-N\>|}>|)>
      </equation*>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is such that <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>>
      [<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is a descreasing
      sequence] and <math|\<exists\>k\<in\>\<bbb-N\>> such that
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> then <math|>

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|A<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>
      </equation*>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,2|}>>>
      by <math|A<rsub|1>=A> and <math|A<rsub|2>=B> then as
      <math|<around*|{|1,2|}>> is countable we have by <reference|measure
      space alternative definition> (2) that
      <math|\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,.2|}>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|2>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>+\<mu\><around*|(|A<rsub|2>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item>If <math|A\<subseteq\>B> then
      <math|B\<equallim\><rsub|<text|<reference|distributivity of union or
      intersection>>><around*|(|B\\A|)><big|cup>A> with
      <math|<around*|(|B\\A|)><big|cap>A=\<emptyset\>> hence by (1) we have
      that <math|\<mu\><around*|(|A|)>=\<mu\><around*|(|B\\A|)>+\<mu\><around*|(|A|)>\<geqslant\>\<mu\><around*|(|A|)>>
      as <math|\<mu\><around*|(|B\\A|)>\<geqslant\>0>

      <item>As <math|<around*|(|A\\B|)><big|cup>B\<equallim\><rsub|<text|<reference|distributivity
      of union or intersection>>>A<big|cup>B> and
      <math|<around*|(|A\\B|)><big|cap>B> so by (1) we have
      <math|\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|A\\B|)>+\<mu\><around*|(|B|)>\<leqslant\>\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
      [using <math|A\\B\<subseteq\>A> and (2)]

      <item>Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>>>>>>>
      then using <reference|constructing pairwise disjoint sequences> we have
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      and <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>,
      further we have <math|B<rsub|i>\<subseteq\>A<rsub|i>\<Rightarrowlim\><rsub|<around*|(|2|)>>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>>.
      So <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|\<mu\>
      is a measure><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\><rsub|<text|<reference|sum
      and order relation in the extented reals>>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.

      <item>Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1> if
      i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>> then using <reference|sigma
      algebra properties> we have that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
      We prove now that\ 

      <\equation>
        <label|eq 18.6.001><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      <\proof>
        Let <math|i,j\<in\>\<bbb-N\>> be such that <math|i\<neq\>j> then we
        may assume that <math|i\<less\>j> [otherwise interchange <math|i> and
        <math|j>]. Assume that <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then
        <math|x\<in\>B<rsub|i>> and <math|x\<in\>B<rsub|j>>. Using
        <reference|sequence of classes> we have that
        <math|A<rsub|i>\<subseteq\>A<rsub|j-1>> so as
        <math|x\<in\>B<rsub|i>\<subseteq\>A<rsub|i>> we have
        <math|x\<in\>A<rsub|j-1>> and thus
        <math|x\<nin\>A<rsub|j>\\A<rsub|j-1>=B<rsub|j>> a contradiction.
        Hence we have that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
        is pairwise disjoint.

        \ As <math|\<forall\>i\<in\>\<bbb-N\>> we have
        <math|B<rsub|i>\<subseteq\>A<rsub|i>> so that
        <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
        For the opposite inequality take <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
        then there exists a <math|i\<in\>\<bbb-N\>> such that
        <math|x\<in\>A<rsub|i>> so that <math|I=<around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>\<neq\>\<emptyset\>>
        hence <math|m=min<around*|(|I|)>> exists. We have two cases to
        consider for <math|m>

        <\description>
          <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>

          <item*|<math|1\<less\>m>>then <math|x\<in\>A<rsub|m>> and
          <math|x\<nin\>A<rsub|m-1>> so that
          <math|x\<in\>B<rsub|m>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
        </description>

        proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      </proof>

      Next we prove by induction that <math|\<forall\>n\<in\>\<bbb-N\>>

      <\equation>
        <label|eq 18.7.001>\<mu\><around*|(|A<rsub|n>|)>=<big|sum><rsub|j=1><rsup|n>\<mu\><around*|(|B<rsub|j>|)>
      </equation>

      <\proof>
        So let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<mu\><around*|(|A<rsub|n>|)>=<big|sum><rsub|j=1><rsup|n>\<mu\><around*|(|B<rsub|j>|)>|}>>
        then\ 

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>>for <math|n=1> we have
          <math|\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|B<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|B<rsub|i>|)>>
          so that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>let
          <math|n\<in\>\<cal-S\>> then <math|B<rsub|n+1>=A<rsub|n+1>\\A<rsub|n>>
          so that as <math|A<rsub|n>\<subseteq\>A<rsub|n+1>> we have that
          <math|A<rsub|n+1>=A<rsub|n><big|sqcup><around*|(|A<rsub|n+1>\\A<rsub|n>|)>=A<rsub|n><big|sqcup>B<rsub|n+1>>.
          Hence\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><around*|(|A<rsub|n+1>|)>>|<cell|=>|<cell|\<mu\><around*|(|A<rsub|n>|)>+\<mu\><around*|(|B<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>+\<mu\><around*|(|B<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|B<rsub|i>|)>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>\<cal-S\>>
        </description>
      </proof>

      Next as <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i>\<subseteq\>A<rsub|1>> it follows that\ 

      <\equation>
        <label|eq 18.8.001>\<forall\>i\<in\>\<bbb-N\><text| we have
        >\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i+1>|)>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.7.001>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.8.001> and <reference|equivalence of limits on increasing
        (decreasing) sequences of extented
        reals>>>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|A<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>>>>>
      </eqnarray*>

      proving (5).

      <item>Let <math|k\<in\>\<bbb-N\>> be such that
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> and define
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|A<rsub|k>\\A<rsub|i>>. Then\ 

      <\equation>
        <label|eq 18.10.001>\<forall\>i\<in\>\<bbb-N\> we have
        B<rsub|i>\<in\>\<cal-A\> <infix-and>B<rsub|i>\<subseteq\>B<rsub|i+1>
      </equation>

      <\proof>
        First <math|B<rsub|i>=A<rsub|k>\\A<rsub|k+i>\<in\>\<cal-A\>> because
        <math|A<rsub|k>,A<rsub|k+i>> and <reference|sigma algebra
        properties>. If <math|x\<in\>B<rsub|i>=A<rsub|k>\\A<rsub|k+i>> then
        <math|x\<in\>A<rsub|k>> and <math|x\<nin\>A<rsub|k+i>\<subseteq\><rsub|<text|hypothesis
        and <reference|sequence of classes>>>A<rsub|k>> so that
        <math|x\<in\>A<rsub|k>> and <math|x\<nin\>A<rsub|i+1>> proving that
        <math|x\<in\>B<rsub|i+1>>
      </proof>

      Using (5) proves

      <\equation>
        <label|eq 18.11.001>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation>

      Further as <math|A<rsub|k+i>\<subseteq\>A<rsub|k>> we have that
      <math|A<rsub|k>\<equallim\><rsub|<text|<reference|distributivity of
      union or intersection>>><around*|(|A<rsub|k>\\A<rsub|k+i>|)><big|sqcup>A<rsub|k+i>=B<rsub|i><big|sqcup>A<rsub|k+i>>
      so that <math|\<mu\><around*|(|A<rsub|k>|)>=\<mu\><around*|(|B<rsub|i>|)>+\<mu\><around*|(|A<rsub|k+i>|)>>
      and as <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> we have
      <math|\<mu\><around*|(|A<rsub|k+i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>>
      so that <math|\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|A<rsub|k>|)>-\<mu\><around*|(|A<rsub|k+i>|)>>.
      Substituting this in <reference|eq 18.11.001> gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|k>|)>-\<mu\><around*|(|A<rsub|k+i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        xi+x> and <reference|properties of the limit in the extented
        reals>>>>|<cell|\<mu\><around*|(|A<rsub|k>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|k+i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        and translation of indexes>>>>|<cell|\<mu\><around*|(|A<rsub|k>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)><eq-number><label|eq
        18.12.001>>>>>
      </eqnarray*>

      Now as <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|B<rsub|i>=A<rsub|k>\\A<rsub|k+i>\<subseteq\>A<rsub|k>> it follows
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\>A<rsub|k>>
      hence we have\ 

      <\equation>
        <label|eq 18.13.001>A<rsub|k>=<around*|(|A<rsub|k>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)><big|sqcup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>
      </equation>

      As\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|k>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|k>\\B<rsub|i><rsub|>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|k>\\<around*|(|A<rsub|k>\\A<rsub|k+i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|k+i><eq-number><label|eq
        18.14.001>>>>>
      </eqnarray*>

      Now we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>|<cell|\<Rightarrow\>>|<cell|\<forall\>i\<in\>\<bbb-N\>
        we have x\<in\>A<rsub|i><rsub|>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|k+i\<in\>\<bbb-N\>>>|<cell|\<forall\>i\<in\>\<bbb-N\>
        we have x\<in\>A<rsub|i+k>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i+k>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.15.001><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i+k>
      </equation>

      For the opposite inclusion let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i+k>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|x\<in\>A<rsub|i+k>>. Take <math|j\<in\>\<bbb-N\>> then
      <math|x\<in\>A<rsub|j+k>\<subseteq\>A<rsub|j>> proving that
      <math|x\<in\><big|cap><rsub|j\<in\>\<bbb-N\>>A<rsub|j>> proving that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i+k>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      Using <reference|eq 18.15.001> we have then that
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i+k>=<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>,
      substituting this in <reference|eq 18.14.001> gives
      <math|A<rsub|k>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
      and then using <reference|eq 18.13.001> we have\ 

      <\equation*>
        A<rsub|k>=<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)><big|sqcup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>
      </equation*>

      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|A<rsub|k>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>+\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.12.001>>>>|<cell|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>+\<mu\><around*|(|A<rsub|k>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      or as <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> so that
      also <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<less\>0>
      [because <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>A<rsub|k>>
      we have <math|-\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      proving that\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<text|<reference|equivalence
        of limits on increasing (decreasing) sequences of extented
        reals>>>inf<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\>|}>|)>
      </equation*>
    </enumerate>
  </proof>

  If we have a measure space then we can induce a algebra and a measure on a
  other space using a function between the two spaces.

  <\proposition>
    <label|image measure><index|image measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|Y> a set and <math|f:X\<rightarrow\>Y> then
    <math|<around*|\<langle\>|Y,\<cal-A\><rsub|f>,\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>>|\<rangle\>>>
    is a measure space where <math|\<cal-A\><rsub|f>=<around*|{|B\<in\>\<cal-P\><around*|(|Y|)>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>|}>>
    and <math|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>>:\<cal-A\><rsub|f>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by <math|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>><around*|(|B|)>=\<mu\><around*|(|f<rsup|-1><around*|(|B|)>|)>>.
    <math|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>>> is called
    the <with|font-series|bold|image measure> on <math|Y>.
  </proposition>

  <\proof>
    First we prove that <math|\<cal-A\><rsub|f>> is a
    <math|\<sigma\>>-algebra on <math|Y>

    <\enumerate>
      <item>As <math|f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>\<in\>\<cal-A\>>
      so that <math|\<emptyset\>\<in\>\<cal-A\><rsub|f>>

      <item>Let <math|B\<in\>\<cal-A\><rsub|f>> then
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>> so that
      <math|X\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. Now
      <math|f<rsup|-1><around*|(|Y\\B|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage> (4)>>X\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
      proving that <math|X\\B\<in\>\<cal-A\><rsub|f>>

      <item>Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><rsub|f>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. Now
      <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>><big|cup><rsub|i\<in\>\<bbb-N\>>f<rsup|-1><around*|(|B<rsub|i>|)>\<in\>\<cal-A\>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>.
    </enumerate>

    Next we must prove that <math|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>>>
    is a measure on <math|\<cal-A\><rsub|f>>.\ 

    <\enumerate>
      <item><math|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|f<rsup|-1><around*|(|\<emptyset\>|)>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><rsub|f>>
      such that <math|\<forall\>i,j\<in\>\<cal-A\>> we have
      <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>. As
      <math|f<rsup|-1><around*|(|B<rsub|i>|)><big|cap>f<rsup|-1><around*|(|B<rsub|j>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>>f<rsup|-1><around*|(|B<rsub|i><big|cap>B<rsub|j>|)>=f<rsup|-1><around*|(|\<emptyset\>|)>=0>
      proving that <math|<around*|{|f<rsup|-1><around*|(|A<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is pairwise disjoint. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|\<equallim\><rsub|def>>|<cell|\<mu\><around*|(|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>f<rsup|-1><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|f<rsup|-1><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><rsub|<around*|\<langle\>|f<rsup|-1>|\<rangle\>>><around*|(|B<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Negligible sets>

  <\definition>
    <label|negligible set><index|<math|\<mu\>>-negligible
    set><dueto|Negligible Set>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|A\<subseteq\>X>, then <math|A> is
    <math|\<mu\>>-<with|font-series|bold|negligible> iff
    <math|\<exists\>B\<in\>\<cal-A\>> such that
    <math|\<mu\><around*|(|B|)>=0> and <math|A\<subseteq\>B>. The set of all
    the <math|\<mu\>>-negligible sets is noted by
    <math|\<cal-N\><rsub|\<mu\>>> so <math|\<cal-N\><rsub|\<mu\>>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A
    is \<mu\><text|-negligible>|}>>
  </definition>

  <\note>
    Note that it is not required that a set is part of the
    <math|\<sigma\>>-algebra to be negligible.
  </note>

  We have the following properties for <math|\<cal-N\><rsub|\<mu\>>>

  <\proposition>
    <label|negligible sets properties>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-N\><rsub|\<mu\>>>

      <item>If <math|A\<in\>\<cal-N\><rsub|\<mu\>>> then if
      <math|B\<subseteq\>A> we have <math|B\<in\>\<cal-N\><rsub|\<mu\>>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>K>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      where <math|K> is countable then <math|<big|cup><rsub|i\<in\>K>N<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>>
      <math|>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>This is trivial as <math|\<emptyset\>\<subseteq\>\<emptyset\>>
        and <math|\<mu\><around*|(|\<emptyset\>|)>=0>

        <item>As <math|A\<in\>\<cal-N\>> there exists a
        <math|A<rprime|'>\<in\>\<cal-A\>> such that
        <math|B\<subseteq\>A\<subseteq\>A<rprime|'>> and
        <math|\<mu\><around*|(|A<rprime|'>|)>=0> proving that
        <math|B\<in\>\<cal-N\><rsub|\<mu\>>>

        <item><math|\<forall\>i\<in\>K> there exists a
        <math|N<rsub|i>\<in\>\<cal-A\>> such that
        <math|A<rsub|i>\<subseteq\>N<rsub|i>> and
        <math|\<mu\><around*|(|N<rsub|i>|)>> then
        <math|<big|cup><rsub|i\<in\>K>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>K>N<rsub|i>>
        and <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>K>N<rsub|i>|)>\<leqslant\><rsub|<text|<reference|measure
        space properties>>><big|sum><rsub|i\<in\>K>\<mu\><around*|(|N<rsub|i>|)>=<big|sum><rsub|i\<in\>K>0=0>
      </enumerate>
    </proof>

    <\definition>
      <label|conegligible sets><index|<math|\<mu\>>-conegligible
      set><dueto|Conegligible Set>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
      be a measure space then <math|A\<in\>\<cal-P\><around*|(|X|)>> is a
      <math|\<mu\>>-conegligible set if <math|X\\A> is
      <math|\<mu\>>-negligible set.
    </definition>

    Conegligible sets have the following properties.

    <\proposition>
      <label|conegligible sets properties>Let
      <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
      space then we have\ 

      <\enumerate>
        <item><math|X> is <math|\<mu\>>-conegligible.\ 

        <item>If <math|A> is <math|\<mu\>>-conegligible and
        <math|B\<in\>\<cal-P\><around*|(|A|)>> such that
        <math|A\<subseteq\>B> then <math|B> is <math|\<mu\>>-conegligible.

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>K>> be a
        countable family of <math|\<mu\>>-conegligible sets
        <math|<big|cap><rsub|i\<in\>K>A<rsub|i>> is
        <math|\<mu\>>-conegligible.

        <item>If <math|A> is <math|\<mu\>>-conegligble then there exists a
        <math|B\<in\>\<cal-A\>> such that <math|B\<subseteq\>A> and <math|B>
        is <math|\<mu\>>-conegligible.
      </enumerate>
    </proposition>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|X\\X=\<emptyset\>> we using <reference|negligible sets
        properties> that <math|X\\X> is <math|\<mu\>>-negligible so that
        <math|X> is <math|\<mu\>>-conegligible

        <item>As <math|A\<subseteq\>B> we have that
        <math|X\\B\<subseteq\>X\\A> and as <math|A> is
        <math|\<mu\>>-conegligible so that there exists a
        <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> and
        <math|X\\B\<subseteq\>X\\A\<subseteq\>N> proving that <math|B> is
        <math|\<mu\>>-conegligible.

        <item>As <math|\<forall\>i\<in\>K> <math|A<rsub|i>> is
        <math|\<mu\>>-conegligible there exists
        <math|N<rsub|i>\<in\>\<cal-A\>> such that
        <math|X\\A<rsub|i>\<subseteq\>N<rsub|i>> and
        <math|\<mu\><around*|(|N<rsub|i>|)>=0>. Hence
        <math|X\\<around*|(|<big|cap><rsub|i\<in\>K>A<rsub|i>|)>=<big|cup><rsub|i\<in\>K><around*|(|X\\A<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>K>N<rsub|i>>
        and <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>K>N<rsub|i>|)>\<leqslant\><rsub|<text|<reference|measure
        space properties>>><big|sum><rsub|i\<in\>K>\<mu\><around*|(|N<rsub|i>|)>=<big|sum><rsub|i\<in\>K>0=0>
        proving that <math|<big|cap><rsub|i\<in\>K>A<rsub|i>> is
        <math|\<mu\>>-conegligible.

        <item>As <math|A> is <math|\<mu\>>-conegligble then there exists a
        <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> so that
        <math|X\\A\<subseteq\>N>. Take <math|B=X\\N> then using the
        definition of a <math|\<sigma\>>-algebra we have that
        <math|B\<in\>\<cal-A\>>, also as <math|B=X\\N\<subseteq\><around*|(|X\\<around*|(|X\\A|)>|)>=A>
        we have tha <math|B\<subseteq\>A>, finally as
        <math|X\\B=X\\<around*|(|X\\N|)>=N> and
        <math|\<mu\><around*|(|N|)>=0> we have that <math|B> is
        <math|\<mu\>>-conegligible.\ 
      </enumerate>
    </proof>
  </proposition>

  We use conegligible set in the term <with|font-series|bold|almost every> as
  expressed in the following notation

  <\notation>
    <label|a.e. condition>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|P<around*|(|x|)>> a assertion about
    <math|x\<in\>X> then <math|P<around*|(|x|)>> for
    <with|font-series|bold|almost every> <math|x\<in\>X> iff
    <math|<around*|{|x\<in\>X\|P<around*|(|x|)>|}>> is
    <math|\<mu\>>-conegligible. Other notations are\ 

    <\equation*>
      P<around*|(|x|)> a.e.\ 
    </equation*>
  </notation>

  <\example>
    <label|functions and a.e.>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|A,B\<subseteq\>X> and
    <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<bar\>>,g:B\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    then we say that\ 

    <\equation*>
      f=<rsub|a.e.>g meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>=g<around*|(|x|)>|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f\<leqslant\><rsub|a.e.>g meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f\<less\><rsub|a.e.>g meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f\<geqslant\><rsub|a.e.>g meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>\<geqslant\>g<around*|(|x|)>|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f\<gtr\><rsub|a.e.>g meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>\<gtr\>g<around*|(|x|)>|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f=<rsub|a.e.>y where y\<in\><wide|\<bbb-R\>|\<bar\>> meaning
      <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>=a|}>
      is \<mu\><text|-conegligible>
    </equation*>

    <\equation*>
      f=<rsub|a.e.>finite meaning <around*|{|x\<in\>X\|x\<in\>A<big|cap>B\<wedge\>f<around*|(|x|)>\<less\>\<infty\>|}>
      is \<mu\><text|-conegligible>
    </equation*>
  </example>

  <subsection|Carathéodory construction>

  The following lemma will be useful in some of the proofs that follow this,
  it allows us to avoid having to use a proof by induction argument in these
  proofs.

  <\lemma>
    <label|union of two sets to finite union of two sets>Let <math|X> be a
    set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have\ 

    <\enumerate>
      <item>If <math|\<forall\>A,B\<in\>\<cal-A\>> we have <math|A<big|cup>B>
      then <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      where <math|n\<in\>\<bbb-N\>> we have
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|\<forall\>A,B\<in\>\<cal-A\>> we have <math|A<big|cup>B>
      then <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      where <math|n\<in\>\<bbb-N\>> we have
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </lemma>

  <\proof>
    \ We use a mathematical induction in this proof.

    <\enumerate>
      <item>Let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
      we have <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>if
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
        then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>if
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
        then as <math|n\<in\>\<cal-S\>> we have that
        <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
        hence <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>\<in\>\<cal-A\>>
      </description>

      <item>Let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
      we have <big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>if
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
        then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>if
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
        then as <math|n\<in\>\<cal-S\>> we have that
        <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>
        hence <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>\<in\>\<cal-A\>>
      </description>
    </enumerate>
  </proof>

  Constructing measures on a <math|\<sigma\>>-algebra is not a easy task. The
  idea of the Carathéodory construction is that is that we first start with a
  set function that has some of the properties that a measure must have (see
  <reference|measure space properties>) and then find a
  <math|\<sigma\>>-algebra that makes this a measure on this
  <math|\<sigma\>>-algebra. With luck this <math|\<sigma\>>-algebra is the
  <math|\<sigma\>>-algebra where we are constructing a measure for.\ 

  First we define the concept of outer measure that is a set function that
  fulfills the minimum requirements that a measure must have.

  <\definition>
    <label|outer measure><index|outer measure><dueto|Outer Measure>Let
    <math|X> be a set then <math|\<cal-O\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|outer> measure on X iff\ 

    <\enumerate>
      <item><math|\<cal-O\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|A,B\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B> then <math|\<cal-O\><around*|(|A|)>\<leqslant\>\<cal-O\><around*|(|B|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<cal-O\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\>>\<cal-O\><around*|(|A<rsub|i>|)>>
    </enumerate>
  </definition>

  The following shows how to construct a outer measure based on a
  semi-additive function\ 

  <\theorem>
    <label|constructing a outer measure>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> such that\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>>

      <item><math|\<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that <math|X\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>

      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item><math|\<forall\>A\<in\>\<cal-A\>>,
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have <math|\<mu\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>

    then <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
    such that A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>|)>>
    is a outer measure on <math|X>. Further <math|\<forall\>A\<in\>\<cal-A\>>
    we have <math|\<varphi\><around*|(|A|)>=\<mu\><around*|(|A|)>>
  </theorem>

  <\proof>
    First we must prove that <math|\<varphi\>> is defined for every
    <math|A\<in\>\<cal-P\><around*|(|X|)>>. Let\ 

    <\equation>
      <label|eq 18.17.002>\<cal-C\><rsub|A>=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
      such that A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}><space|1em>where
      A\<in\>\<cal-P\><around*|(|X|)>
    </equation>

    Given <math|A\<in\>\<cal-P\><around*|(|X|)>> there exists using (2) a
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    such that <math|A\<subseteq\>X\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    proving that <math|\<cal-C\><rsub|A>\<neq\>\<emptyset\>> so by
    <reference|every non empty set in the extented reals has a limit>
    <math|lim<around*|(|C<rsub|A>|)>> exists and as <math|0> is a a lower
    bound of <math|\<cal-C\><rsub|A>> we have that\ 

    <\equation>
      <label|eq 18.18.002>\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
      \<varphi\><around*|(|A|)>=inf<around*|(|\<cal-C\><rsub|A>|)>
      exists<infix-and>\<varphi\><around*|(|A|)>\<in\><around*|[|0,\<infty\>|]>
    </equation>

    Next we check the conditions for a outer measure.

    <\enumerate>
      <item>Define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|A<rsub|i>=\<emptyset\>> then by (1)
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      and <math|\<emptyset\>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      As <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<around*|(|3|)>><big|sum><rsub|i=1><rsup|\<infty\>>0=0>
      we have that <math|0\<leqslant\>\<varphi\><around*|(|\<emptyset\>|)>\<leqslant\>0>.
      Hence\ 

      <\equation>
        <label|eq 18.19.002>\<varphi\><around*|(|\<emptyset\>|)>
      </equation>

      <item>Let <math|A,B\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B> then if <math|x\<in\>\<cal-C\><rsub|B>> there
      exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that <math|B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      and <math|x=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>.
      As <math|A\<subseteq\>B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      it follows that <math|x\<in\>\<cal-C\><rsub|A>> or
      <math|\<cal-C\><rsub|B>\<subseteq\>\<cal-C\><rsub|A>>. So using
      \ <reference|inclusion and sup and inf> we have that
      <math|inf<around*|(|\<cal-C\><rsub|A>|)>\<leqslant\>inf<around*|(|\<cal-C\><rsub|B>|)>>
      or\ 

      <\equation>
        <label|eq 18.20.002>\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|B|)>
        for A\<subseteq\>B
      </equation>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      and note <math|A=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>. Take
      <math|\<varepsilon\>\<gtr\>0> then using the definition of
      <math|\<varphi\>> and the infinum there exists a
      <math|\<forall\>n\<in\>\<bbb-N\>> a sequence
      <math|<around*|{|I<rsub|n,i>|}><rsub|n,i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that\ 

      <\equation>
        <label|eq 18.21.002>\<varphi\><around*|(|A<rsub|n>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|n,i>|)>\<less\>\<varphi\><around*|(|A<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>><infix-and>A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|n,i>
      </equation>

      As <math|\<bbb-N\>\<times\>\<bbb-N\>> is denumerable (or infinite
      countable) (see <reference|product of enumerable sets is enumerable>)
      there exists a bijection <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<bbb-N\>\<times\>\<bbb-N\>>.
      We prove now that\ 

      <\equation>
        <label|eq 18.22.002>A\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>I<rsub|\<beta\><around*|(|n|)><rsub|1>,\<beta\><around*|(|n|)><rsub|2>>
      </equation>

      <\proof>
        If <math|x\<in\>A> then <math|\<exists\>n\<in\>\<bbb-N\>> such that
        <math|x\<in\>A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|n,i>>,
        hence <math|\<exists\>i\<in\>\<bbb-N\>> such that
        <math|x\<in\>I<rsub|n,i>>. As <math|\<varphi\>> is surjective there
        exists a <math|k\<in\>\<bbb-N\>> such that
        <math|\<beta\><around*|(|k|)>=<around*|(|n,i|)>> so that
        <math|x\<in\>I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|k\<in\>\<bbb-N\>>I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>>
      </proof>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A|)>>|<cell|=>|<cell|inf<around*|(|\<cal-C\><rsub|A>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
        18.17.002>>>>|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
        such that A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.22.002>>><rsub|<text|>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|\<beta\><around*|(|n|)><rsub|1>,\<beta\><around*|(|n|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|countable
        sum of countable sums is a countable
        sum>>>>|<cell|<big|sum><rsup|\<infty\>><rsub|i=1><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|i,j>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.21.002>>><rsub|<text|>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<varphi\><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of series in the extended reals>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|i>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><frac|<frac|1|2>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+\<varepsilon\>>>>>
      </eqnarray*>

      As <math|\<varepsilon\>> is chosen arbitrary we have using
      <reference|consequence of the Archimedean property (2)> that\ 

      <\equation>
        <label|eq 18.74.001>\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<varphi\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>
      </equation>
    </enumerate>

    Using <smart-ref|eq 18.19.002>,<smart-ref|eq 18.20.002> and the above it
    follows that <math|\<varphi\>> is a outer measure. For the last part of
    the theorem let <math|A\<in\>\<cal-A\>> and define
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
    i=1>>|<row|<cell|\<emptyset\> if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>\<in\>\<cal-A\>>
    then clearly <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    so that <math|\<varphi\><around*|(|A|)>=sup<around*|(|\<cal-C\><rsub|A>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|A|)>>.
    Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is such that <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    then using (4) we have that <math|\<mu\><around*|(|A|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|A<rsub|i>|)>>
    so that <math|\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|\<cal-C\><rsub|A>|)>=\<varphi\><around*|(|A|)>>.
    Hence we have\ 

    <\equation*>
      \<forall\>A\<in\>\<cal-A\> we have \<varphi\><around*|(|A|)>=\<mu\><around*|(|A|)>
    </equation*>
  </proof>

  We are now ready to construct given a set <math|X>, a outer measure on
  <math|X> a <math|\<sigma\>>-algebra on <math|X> such that the restriction
  of the outer measure on this <math|\<sigma\>>-algebra is a measure.\ 

  <\theorem>
    <label|Caratheodory><dueto|Carathéodory>Let <math|X> be a set and
    <math|\<cal-O\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure on <math|X> then <math|\<cal-A\>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<cal-O\><around*|(|A|)>=\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|}>>
    is a <math|\<sigma\>>-algebra and <math|\<cal-O\><rsub|\|\<cal-A\>>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure, making <math|<around*|\<langle\>|X,\<cal-A\>,\<cal-O\><rsub|\|\<cal-A\>>|\<rangle\>>>
    a measure space. Further <math|\<cal-A\>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|}>>
  </theorem>

  <\proof>
    First we prove that\ 

    <\equation>
      <label|eq 18.16.001>\<cal-A\>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
      we have \<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|\<nobracket\>>
    </equation>

    <\proof>
      First if <math|E\<in\>\<cal-A\>> then <math|\<forall\>A> we have
      <math|><math|\<cal-O\><around*|(|A|)>=\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>
      hence <math|\<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>
      so that <math|E\<in\><around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
      we have \<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|}>>,
      second if <math|E\<in\><around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
      we have \<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|}>>
      then <math|\<forall\>A> we have <math|\<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>.
      As <math|A=<around*|(|A<big|cap>E|)><big|cup><around*|(|A\\E|)>> it
      follows from <reference|outer measure> (2) that
      <math|\<cal-O\><around*|(|A|)>\<leqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>
      and thus that <math|\<cal-O\><around*|(|A|)>=\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>.
      Hence <math|E\<in\>\<cal-A\>>.
    </proof>

    Next we prove that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra.\ 

    <\enumerate>
      <item>Let <math|A\<in\>\<cal-P\><around*|(|X|)>> then
      <math|A<big|cap>\<emptyset\>=\<emptyset\>> and <math|A\\\<emptyset\>=A>
      so that <math|\<cal-O\><around*|(|A|)>=0+\<cal-O\><around*|(|A\\\<emptyset\>|)>\<equallim\><rsub|<text|<reference|outer
      measure> (1)>>\<cal-O\><around*|(|\<emptyset\>|)>+\<cal-O\><around*|(|A\\\<emptyset\>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.17.001>\<emptyset\>\<in\>\<cal-A\>
      </equation>

      <item>Let <math|E\<in\>\<cal-A\>> then
      <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|X\\E|)>|)>+\<cal-O\><around*|(|A\\<around*|(|X\\E|)>|)>>|<cell|=>|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|X<big|cap>E<rsup|c>|)>|)>+\<cal-O\><around*|(|A\\<around*|(|X\\E|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A<big|cap>E<rsup|c>|)>+\<cal-O\><around*|(|A\\<around*|(|X\\E|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A\\<around*|(|X\\E|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|X\\E|)><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|X<big|cap>E<rsup|c>|)><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|X<rsup|c><big|cup><around*|(|E<rsup|c>|)><rsup|c>|)>|)>>>|<row|<cell|>|<cell|=>|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|X<rsup|c><big|cup>E|)>|)>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|<around*|(|A<big|cap>X<rsup|c>|)><big|cup><around*|(|A<big|cap>E|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<subseteq\>X>>|<cell|\<cal-O\><around*|(|A\\E|)>+\<cal-O\><around*|(|A<big|cap>E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|E\<in\>\<cal-A\>>>|<cell|\<cal-O\><around*|(|A|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.18.001>\<forall\>E\<in\>\<cal-A\> we have
        X\\E\<in\>\<cal-A\>
      </equation>

      <item>Let <math|E,F\<in\>\<cal-A\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|E<big|cup>F|)>|)>>|<cell|\<equallim\><rsub|E\<in\>\<cal-A\>,A<big|cap><around*|(|E<big|cup>F|)>\<in\>\<cal-P\><around*|(|X|)>>>|<cell|\<cal-O\><around*|(|<around*|(|A<big|cap><around*|(|E<big|cup>F|)>|)><big|cap>E|)>+\<cal-O\><around*|(|<around*|(|A<big|cap><around*|(|E<big|cup>F|)>|)>\\E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|<around*|(|A<big|cap><around*|(|E<big|cup>F|)>|)>\\E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|<around*|(|E\\E|)><big|cup><around*|(|F\\E|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A<big|cap><around*|(|<around*|\<nobracket\>|F\\E|)>|\<nobracket\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|<around*|(|A\\E|)><big|cap>F|)><eq-number><label|eq
        18.19.001>>>>>
      </eqnarray*>

      so\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|E<big|cup>F|)>|)>+\<cal-O\><around*|(|A\\<around*|(|E<big|cup>F|)>|)>>|<cell|\<equallim\><rsub|<reference|eq
        18.19.001>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|<around*|(|A\\E|)><big|cap>F|)>+\<cal-O\><around*|(|A\\<around*|(|E<big|cup>F|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|<around*|(|A\\E|)><big|cap>F|)>+\<cal-O\><around*|(|<around*|(|A\\E|)>\\F|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|A\\F|)>\<in\>\<cal-P\><around*|(|X|)>\<wedge\>F\<in\>\<cal-A\>>>|<cell|\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|E\<in\>\<cal-A\>>>|<cell|\<cal-O\><around*|(|A|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.20.001>\<forall\>E,F\<in\>\<cal-A\> we have
        E<big|cup>F\<in\>\<cal-A\>
      </equation>

      <item>Let <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
      Define then <math|<around*|{|G<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> by
      <math|G<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>>
      and <math|<around*|{|F<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> by
      <math|F<rsub|i>=<choice|<tformat|<table|<row|<cell|G<rsub|1> if
      i=1>>|<row|<cell|G<rsub|i>\\G<rsub|i-1> if
      i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>>. By construction we have\ 

      <\equation>
        <label|eq 18.21.001>\<forall\>n\<in\>\<bbb-N\> that
        G<rsub|n>\<subseteq\>G<rsub|n+1>
      </equation>

      Further\ 

      <\equation>
        <label|eq 18.22.001><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>F<rsub|i>
      </equation>

      <\proof>
        As <math|\<forall\>n\<in\>\<bbb-N\>> we have
        <math|G<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>
        we have that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>.
        Further if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>>
        then there exists a <math|i\<in\>\<bbb-N\>> such that
        <math|x\<in\>E<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>E<rsub|j>=G<rsub|i>>
        so that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>>.
        Next as <math|F<rsub|1>=G<rsub|1>> and
        <math|\<forall\>i\<in\>\<bbb-N\>\\<around*|{|1|}>> we have
        <math|F<rsub|i>=G<rsub|i>\\G<rsub|i-1>\<subseteq\>G<rsub|i>> we have
        that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>F<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>>.
        Finally if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>>
        then <math|\<exists\>i\<in\>\<bbb-N\>> such that
        <math|x\<in\>G<rsub|i>> and then either <math|i=1> so that
        <math|x\<in\>F<rsub|1>> or <math|1\<less\>i> giving
        <math|x\<in\>F<rsub|i>=G<rsub|i>\\G<rsub|i-1>\<subseteq\>G<rsub|i>>
        proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>F<rsub|i>>.
      </proof>

      \ Using <reference|eq 18.20.001> and <reference|union of two sets to
      finite union of two sets> we have\ 

      <\equation>
        <label|eq 18.23.001><around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
      </equation>

      Take <math|A\<in\>\<cal-P\><around*|(|X|)>>,
      <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> then as
      <math|G<rsub|n-1>\<in\>\<cal-A\>> and
      <math|A<big|cap>G\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap>G<rsub|n>|)>>|<cell|=>|<cell|\<cal-O\><around*|(|<around*|(|A<big|cap>G<rsub|n>|)><big|cap>G<rsub|n-1>|)>+\<cal-O\><around*|(|<around*|(|A<big|cap>G<rsub|n>|)>\\G<rsub|n-1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|G<rsub|n><big|cap>G<rsub|n-1>|)>|)>+\<cal-O\><around*|(|A<big|cap><around*|(|G<rsub|n>\\G<rsub|n-1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.22.001>>>>|<cell|\<cal-O\><around*|(|A<big|cap>G<rsub|n-1>|)>+\<cal-O\><around*|(|A<big|cap>F<rsub|n>|)><eq-number><label|eq
        18.24.001>>>>>
      </eqnarray*>

      We prove now by induction that\ 

      <\equation>
        <label|eq 18.25.001>\<forall\>n\<in\>\<bbb-N\>,\<forall\>A\<in\>\<cal-P\><around*|(|X|)>\<vDash\>\<cal-O\><around*|(|A<big|cap>G<rsub|n>|)>=<big|sum><rsub|i=1><rsup|n>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>
      </equation>

      <\proof>
        Let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<cal-O\><around*|(|A<big|cap>G<rsub|n>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>|}>>
        then we have\ 

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>><math|\<cal-O\><around*|[|A<big|cap>G<rsub|1>|]>\<equallim\><rsub|def>\<cal-O\><around*|(|A<big|cap>F<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>>
          proving that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<cal-O\><around*|[|A<big|cap>G<rsub|n+1>|]>>|<cell|\<equallim\><rsub|<text|<reference|eq
            18.24.001>>>>|<cell|\<cal-O\><around*|(|A<big|cap>G<rsub|n>|)>+\<cal-O\><around*|(|A<big|cap>F<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>+\<cal-O\><around*|(|A<big|cap>F<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>>>>>
          </eqnarray*>

          proving <math|n+1\<in\>\<cal-S\>>
        </description>
      </proof>

      Let <math|A\<in\>\<cal-P\><around*|(|X|)>> then
      <math|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
      18.22.001>>>A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>F<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<big|cap>F<rsub|i>|)>>
      so that as <math|\<cal-O\>> is a outer measure we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<cal-O\><around*|(|A<big|cap>F<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.25.001>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<cal-O\><around*|(|A<big|cap>G<rsub|i>|)><eq-number><label|eq
        18.26.001>>>>>
      </eqnarray*>

      Next as <math|\<forall\>n\<in\>\<bbb-N\>> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.22.001>>>>|<cell|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A\\G<rsub|i>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|A\\G<rsub|n>>>>>
      </eqnarray*>

      and as <math|\<cal-O\>> is a outer measure we have that
      <math|\<cal-O\><around*|(|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>\<subseteq\>\<cal-O\><around*|(|A\\G<rsub|n>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.27.001>\<cal-O\><around*|(|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>\<leqslant\>inf<around*|(|<around*|{|\<cal-O\><around*|(|A\\G<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>
      </equation>

      Now given <math|n\<in\>\<bbb-N\>> we have using <reference|eq
      18.21.001> that <math|G<rsub|n>\<subseteq\>G<rsub|n+1>> hence
      <math|X\\G<rsub|n+1>\<subseteq\>X\\G<rsub|n>>, using the fact that
      <math|\<cal-O\>> is a outer measure we must have that
      <math|\<cal-O\><around*|(|X\\G<rsub|n+1>|)>\<leqslant\>\<cal-O\><around*|(|X\\G<rsub|n>|)>>.
      So <math|<around*|{|\<cal-O\><around*|(|X\\G<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\>>>
      is decreasing and thus by <reference|equivalence of limits on
      increasing (decreasing) sequences of extented reals> we have that
      <math|inf<around*|(|<around*|{|\<cal-O\><around*|(|A\\G<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>=<below|lim|i\<rightarrow\>\<infty\>>\<cal-O\><around*|(|X\\G<rsub|i>|)>|\<nobracket\>>>.
      Using <reference|eq 18.27.001> we have then that\ 

      <\equation>
        <label|eq 18.28.001>\<cal-O\><around*|(|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>>\<cal-O\><around*|(|X\\G<rsub|i>|)>
      </equation>

      Applying now <reference|eq 18.26.001> and <reference|eq 18.28.001>
      gives\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<cal-O\><around*|(|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>+\<cal-O\><around*|(|A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>|)>>|<cell|\<leqslant\>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<cal-O\><around*|(|A<big|cap>G<rsub|i>|)>+<below|lim|i\<rightarrow\>\<infty\>>\<cal-O\><around*|(|X\\G<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<cal-O\><around*|(|A<big|cap>G<rsub|i>|)>+\<cal-O\><around*|(|X\\G<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|G<rsub|i>\<in\>\<cal-A\>>>|<cell|<below|lim|i\<rightarrow\>>
        \<cal-O\><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|\<cal-O\><around*|(|A|)><eq-number><label|eq
        18.29.001>>>>>
      </eqnarray*>

      Using this with <reference|eq 18.16.001> we have that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>> proving
      that\ 

      <\equation>
        <label|eq 18.30.001>\<forall\><around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
        we have that \ <big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>
      </equation>

      Combining <reference|eq 18.17.001>, <reference|eq 18.18.001> and
      <reference|eq 18.30.001> we have proved that\ 

      <\equation>
        <label|eq 18.31.001>\<cal-A\>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
        we have \<cal-O\><around*|(|A|)>\<geqslant\>\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|\<nobracket\>>
        is a \<sigma\><text|-algebra>
      </equation>

      Finally we must prove that the restriction of <math|\<cal-O\>> to
      <math|\<cal-A\>> is a measure. Define
      <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> by
      <math|\<mu\>=\<cal-O\><rsub|\<cal-A\>>>. Then we have that
      <math|\<mu\><around*|(|\<emptyset\>|)>\<equallim\>\<cal-O\><rsub|\|\<cal-A\>><around*|(|\<emptyset\>|)>=\<cal-O\><around*|(|\<emptyset\>|\<nobracket\>>=0>
      proving that\ 

      <\equation>
        <label|eq 18.32.001>\<mu\><around*|(|\<emptyset\>|)>=0
      </equation>

      Let now <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      be such that <math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j>
      \ <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>. If we define then
      <math|<around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|G<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>E<rsub|i>>
      then using (6) <reference|eq 18.21.001>,<reference|eq 18.22.001> we
      have\ 

      <\equation>
        <label|eq 18.33.001><big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>G<rsub|i><infix-and>\<forall\>i\<in\>\<bbb-N\>
        we have G<rsub|i>\<subseteq\>G<rsub|i+1>
      </equation>

      but also as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra that\ 

      <\equation>
        <label|eq 18.34.001><around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>
        and <big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>
      </equation>

      Given <math|n\<in\>\<bbb-N\>> we have that <math|>

      <\eqnarray*>
        <tformat|<table|<row|<cell|G<rsub|n+1>\\E<rsub|n+1>>|<cell|=>|<cell|<around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>E<rsub|i>|)>\\E<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)><big|cup>E<rsub|n+1>|)>\\E<rsub|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)>\\E<rsub|n+1>|)><big|cup><around*|(|E<rsub|n+1>\\E<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|E<rsub|i>\\E<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>A<rsub|n+1><big|cap>A<rsub|i>=\<emptyset\>
        i>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i><space|1em><around*|(|see
        <text|<reference|union and intersection of disjoint
        classes>)>|)>>>|<row|<cell|>|<cell|=>|<cell|G<rsub|n><eq-number><label|eq
        18.35.001>>>>>
      </eqnarray*>

      so

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|G<rsub|n+1>|)>>|<cell|=>|<cell|\<cal-O\><around*|(|G<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|E<rsub|n+1>\<in\>\<cal-A\>\<wedge\>G<rsub|n+1>\<in\>\<cal-P\><around*|(|X|)>>>|<cell|\<cal-O\><around*|(|G<rsub|n+1><big|cap>E<rsub|n+1>|)>+\<cal-O\><around*|(|G<rsub|n+1>\\E<rsub|n+1>|)><rsub|>>>|<row|<cell|>|<cell|\<subseteq\><rsub|E<rsub|n+1>\<subseteq\>G<rsub|n+1>>>|<cell|\<cal-O\><around*|(|E<rsub|n+1>|)>+\<cal-O\><around*|(|G<rsub|n+1>\\E<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.35.001>>>>|<cell|\<cal-O\><around*|(|E<rsub|n+1>|)>+\<cal-O\><around*|(|G<rsub|n>|)>>>|<row|<cell|>|<cell|>|<cell|\<mu\><around*|(|E<rsub|n+1>|)>+\<mu\><around*|(|G<rsub|n>|)><eq-number><label|eq
        18.36.001>>>>>
      </eqnarray*>

      We prove now by induction that\ 

      <\equation>
        <label|eq 18.37.001>\<forall\>n\<in\>\<bbb-N\> we have
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|E<rsub|i>|)>
      </equation>

      <\proof>
        Define <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|}>>
        then we have\ 

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>><math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>E<rsub|i>|)>=\<mu\><around*|(|E<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|E<rsub|i>|)>>
          proving that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>E<rsub|i><rsub|>|)>>|<cell|=>|<cell|\<mu\><around*|(|G<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
            18.36.001>>>>|<cell|\<mu\><around*|(|E<rsub|n+1>|)>+\<mu\><around*|(|G<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|\<mu\><around*|(|E<rsub|n+1>|)>+<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|E<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|E<rsub|i>|)>>>>>
          </eqnarray*>

          proving that <math|n+1\<in\>\<cal-S\>>
        </description>
      </proof>

      Now as <math|\<cal-O\>> is a outer measure and
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>> we
      have that <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>=\<cal-O\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<cal-O\><around*|(|E<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.38.001>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>
      </equation>

      Now given <math|n\<in\>\<bbb-N\>> we have
      <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>=\<cal-O\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<geqslant\>\<cal-O\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|I>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>|)>>
      [as <math|\<cal-O\>> is a outer measure and
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<supseteq\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>>).
      Hence using <reference|eq 18.37.001> we have that
      <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<geqslant\><big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<mu\><around*|(|E<rsub|i>|)>>.
      So <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<geq\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|E<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>|)>\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>>.
      Applying then <reference|eq 18.38.001> we have finally have\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>\<mu\><around*|(|E<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>
      </equation*>

      which together with <reference|eq 18.32.001> proves that <math|\<mu\>>
      is a measure.
    </enumerate>
  </proof>

  As an example of the use of a outer measure we show how we can define a
  measure on a subset of a measure space. First we need a little lemma to
  create a outer measure based on a measure.

  <\lemma>
    <label|outer measure induced by a measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then for <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>|)>>
    we have [note that <math|0\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>|)>>
    as <math|0> is a lower bound for <math|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>>
    and that the infinum exists as the real numbers are conditional complete
    (see <smart-ref|the reals are conditional complete>)]

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> there exists a
      <math|E\<in\>\<cal-A\>> such that <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|E|)>>
      and <math|A\<subseteq\>E>

      <item><math|\<mu\><rsup|\<ast\>>> is a outer measure

      <item><math|\<forall\>E\<in\>\<cal-A\>> we have
      <math|\<mu\><rsup|\<ast\>><around*|(|E|)>=\<mu\><around*|(|E|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ First as <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> we have
    <math|>that <math|A\<subseteq\>X\<in\>\<cal-P\><around*|(|X|)>> so that
    <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>\<neq\>\<emptyset\>>
    and thus that <math|inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>|)>>
    exists.

    <\enumerate>
      <item>Let <math|A\<in\>\<cal-P\><around*|(|X|)>> and
      <math|n\<in\>\<bbb-N\>> then <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|n>>
      so using the definition of a infinum there exists a
      <math|E<rsub|n>\<in\>\<cal-A\>> with <math|A\<subseteq\>E<rsub|n>> such
      that

      <\equation>
        <label|eq 18.39.001>\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><around*|(|E<rsub|n>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|n>
      </equation>

      Using <reference|sigma algebra properties> we have then that\ 

      <\equation>
        <label|eq 18.40.001>E=<big|cap><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>
      </equation>

      Now as <math|\<forall\>n\<in\>\<bbb-N\>> <math|A\<subseteq\>E<rsub|n>>
      it follows that <math|A\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>>
      so that\ 

      <\equation>
        <label|eq 18.41.001>\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><around*|(|E|)>
      </equation>

      Assume now that <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<mu\><around*|(|E|)>>
      then <math|0\<less\>\<mu\><around*|(|E|)>-\<mu\><rsup|\<ast\>><around*|(|A|)>>
      and using <reference|consequence of the archimedean property for the
      reals> there exists a <math|n\<in\>\<bbb-N\>> such that
      <math|0\<less\><frac|1|n>\<less\>\<mu\><around*|(|E|)>-\<mu\><rsup|\<ast\>><around*|(|A|)>>
      so that <math|><math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|n>\<less\>\<mu\><around*|(|E|)>>.
      applying <reference|eq 18.39.001> we have then that
      <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<mu\><around*|(|E<rsub|n>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|n>\<less\>\<mu\><around*|(|E|)>>
      or <math|\<mu\><around*|(|E<rsub|n>|)>\<less\>\<mu\><around*|(|E|)>>.
      As <math|E=<big|cap><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<subseteq\>E<rsub|n>>
      we have <math|\<mu\><around*|(|E|)>\<leqslant\>\<mu\><around*|(|E<rsub|n>|)>>
      leading to the contradiction <math|\<mu\><around*|(|E<rsub|n>|)>\<less\>\<mu\><around*|(|E<rsub|n>|)>>.
      Hence we must have\ 

      <\equation>
        <label|eq 18.42.001>\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|E|)>
      </equation>

      proving the first part of the lemma.

      <item>First note that <math|\<emptyset\>\<subseteq\>\<emptyset\>\<in\>\<cal-A\>>
      so that <math|0\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>\<leqslant\><around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>\<leqslant\>\<mu\><around*|(|\<emptyset\>|)>=0>
      proving that\ 

      <\equation>
        <label|eq 18.43.001>\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0
      </equation>

      Take now <math|A,B\<in\>\<cal-P\>*<around*|(|X|)>> with
      <math|A\<subseteq\>B> if then if <math|x\<in\><around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>B\<subseteq\>E|}>>
      there exists a <math|E\<in\>\<cal-A\>> such that <math|B\<subseteq\>E>
      and <math|x=\<mu\><around*|(|E|)>>, as
      <math|A\<subseteq\>B\<subseteq\>E> we have
      <math|x\<in\><around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>>
      proving <math|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>B\<subseteq\>E|}>\<subseteq\><around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>>.
      Using <reference|inclusion and sup and inf> we have that
      <math|inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>A\<subseteq\>E|}>|)>\<leqslant\><around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>B\<subseteq\>E|}>>
      proving that\ 

      <\equation>
        <label|eq 18.44.001>\<forall\>A,B\<in\>\<cal-A\> with A\<subseteq\>B
        we have \<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>
      </equation>

      Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> there exists a <math|E<rsub|i>>
      such that <math|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<mu\><around*|(|E<rsub|i>|)>>
      and <math|A<rsub|i>\<subseteq\>E<rsub|i>> (see (1)). So
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>\<in\>\<cal-A\>>
      [as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra], hence
      <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>E|}>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>E<rsub|i>|)>\<leqslant\><rsub|<text|<reference|measure
      space properties>>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.45.001>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>
        we have \<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Finally <reference|eq 18.43.001>,<reference|eq 18.44.001> and
      <reference|eq 18.45.001> proves part (2) of the theorem.

      <item>Let <math|E\<in\>\<cal-A\>> then using (1) there exists a
      <math|E<rprime|'>\<in\>\<cal-A\>> such that
      <math|E\<subseteq\>E<rprime|'>> and
      <math|\<mu\><rsup|\<ast\>><around*|(|E|)>=\<mu\><around*|(|E<rprime|'>|)>>.
      As <math|\<mu\><rsup|\<ast\>><around*|(|E|)>=inf<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<in\>\<cal-A\>\<wedge\>E\<subseteq\>F|}>|)>>
      we have <math|\<mu\><rsup|\<ast\>><around*|(|E|)>\<leqslant\>\<mu\><around*|(|E|)>>,
      further from <math|E\<subseteq\>E<rprime|'>> we have
      <math|\<mu\><around*|(|E|)>\<leqslant\>\<mu\><around*|(|E<rprime|'>|)>=\<mu\><rsup|\<ast\>><around*|(|E|)>>.
      So <math|\<mu\><rsup|\<ast\>><around*|(|E|)>\<leqslant\>\<mu\><around*|(|E|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|E|)>>
      proving that <math|\<mu\><around*|(|E|)>=\<mu\><rsup|\<ast\>><around*|(|E|)>>.
    </enumerate>
  </proof>

  <\theorem>
    <label|subspace measure><index|sub-algebra>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|A\<subseteq\>X> then <math|\<cal-A\><rsub|\|A>=<around*|{|A<big|cap>E\|E\<in\>\<cal-P\><around*|(|X|)>|}>>
    is a <math|\<sigma\>>-space and <math|\<mu\><rsub|A>:\<cal-A\><rsub|\|A>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<mu\><rsub|A><around*|(|B|)>=inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>B\<subseteq\>E|}>|)>>

    <\enumerate>
      <item><math|\<cal-A\><rsub|A>> is a <math|\<sigma\>>-algebra on
      <math|A>

      <item><math|\<mu\><rsub|A>> is a measure on <math|\<cal-A\><rsub|A>>
    </enumerate>

    \ making <math|<around*|\<langle\>|A,\<cal-A\><rsub|\|A>,\<mu\><rsub|A>|\<rangle\>>>
    a measure space. <math|\<mu\><rsub|A>> is called the
    <with|font-series|bold|subspace measure> on <math|A>.
    <math|\<cal-A\><rsub|\|A>> is called the
    <with|font-series|bold|s><with|font-series|bold|ub-algebra> induced by
    <math|A> (sometimes also called the <with|font-series|bold|trace>
    algebra.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from <reference|sub-algebra>

      \;

      <item>We use the previous lemma (see <reference|outer measure induced
      by a measure>) to get the outer-measure
      <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
      defined by <math|\<mu\><rsup|\<ast\>><around*|(|B|)>=inf<around*|(|<around*|{|\<mu\><around*|(|E|)>\|E\<in\>\<cal-A\>\<wedge\>B\<subseteq\>E|}>|)>>,
      using the definition of <math|\<mu\><rsub|A>> it follows then that
      <math|\<mu\><rsub|A>=\<mu\><rsup|\<ast\>><rsub|\|\<cal-A\><rsub|A>>>.
      First we have\ 

      <\equation>
        <label|eq 18.49.001>\<mu\><rsub|A><around*|(|\<emptyset\>|)>=\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0
      </equation>

      Second let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><rsub|A>>
      be such that <math|\<forall\>i,j\<in\>\<bbb-N\>> we have
      <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>. First we have that as
      <math|\<mu\><rsup|\<ast\>>> is a outer measure that\ 

      <\equation>
        <label|eq 18.50.001>\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\>>\<mu\><rsup|\<star\>><around*|(|A<rsub|i>|)>
      </equation>

      For the opposite inequality note that by definition there exist
      <math|\<forall\>i\<in\>\<bbb-N\>> a <math|E<rsub|i>\<in\>\<cal-A\>>
      such that <math|A<rsub|i>=A<big|cap>E<rsub|i>>. Define now
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|E<rsub|1> if
      i=1>>|<row|<cell|E<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>>>>>>>
      then using <reference|constructing pairwise disjoint sequences> we have
      that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> are
      <with|font-series|bold|pairwise disjoint> and that

      <\equation>
        <label|eq 18.51.001><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><infix-and><big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
      </equation>

      Further we have that\ 

      <\equation>
        <label|eq 18.52.001>\<forall\>i\<in\>\<bbb-N\> we have
        A<rsub|i>\<subseteq\>B<rsub|i>
      </equation>

      <\proof>
        Two cases must be considered

        <\description>
          <item*|<math|i=1>>then <math|A<rsub|1>=A<big|cap>E<rsub|1>\<subseteq\>E<rsub|1>=B<rsub|1>>
          proving that <math|A<rsub|1>\<subseteq\>B<rsub|1>>

          <item*|<math|i\<gtr\>1>>assume that
          <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,i-1|}>> such that
          <math|x\<in\>A<rsub|i><big|cap>E<rsub|j>> then
          <math|x\<in\>A<big|cap>E<rsub|i><big|cap>E<rsub|j>=<around*|(|A<big|cap>E<rsub|i>|)><big|cap><around*|(|A<big|cap>E<rsub|j>|)>=A<rsub|i><big|cap>A<rsub|j>\<equallim\><rsub|i\<neq\>j>\<emptyset\>>
          a contradiction. So we have that
          <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,i-1|}>> that
          <math|A<rsub|i><big|cap>E<rsub|j>=\<emptyset\>> hence
          <math|A<rsub|i><big|cap><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>E<rsub|j>|)>=\<emptyset\>>.
          As <math|A<rsub|i>=A<big|cap>E<rsub|i>\<subseteq\>E<rsub|i>> we
          conclude that <math|A<rsub|i>\<subseteq\>E<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>E<rsub|j>|)>>
        </description>
      </proof>

      Now using <reference|outer measure induced by a measure> there exists a
      <math|E\<in\>\<cal-A\>> such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>E>
      and <math|\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=\<mu\><around*|(|E|)>>.
      Given <math|i\<in\>\<bbb-N\>> define
      <math|C<rsub|i>=B<rsub|i><big|cap>E\<in\>\<cal-A\>> then
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is pairwise
      disjoint because <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      is pairwise disjoint, also as <math|A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>E>
      we have using <reference|eq 18.52.001> that
      <math|A<rsub|i>\<subseteq\>C<rsub|i>>. So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|C<rsub|i>\<in\>\<cal-A\><infix-and><text|<reference|outer
        measure induced by a measure> (3)>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\>
        is a measure>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>><around*|(|B<rsub|i><big|cap>E|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|E<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.51.001>>>>|<cell|\<mu\><around*|(|E<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>E>>|<cell|\<mu\><around*|(|E|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsup|*\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>>>
      </eqnarray*>

      which together with <reference|eq 18.50.001> proves that

      <\equation>
        <label|eq 18.53.001>\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
      </equation>

      Finally as <math|\<cal-A\><rsub|A>> is a <math|\<sigma\>>-algebra
      \ <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\><rsub|A>>
      so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><rsub|A><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|>>|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.53.001>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|i>\<in\>\<cal-A\><rsub|A>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|A><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      \ \ which together with <reference|eq 18.49.001> proves that
      <math|\<mu\><rsub|A>> is a measure.
    </enumerate>
  </proof>

  <\note>
    \;
  </note>

  <subsubsection|Lebesgue measure on <math|\<bbb-R\>>>

  As an example of the Carathéodore construct we construct a measure on
  <math|\<bbb-R\>>. We start with simple measurable objects, half open
  intervals where the length is a natural way to measure them.

  <\definition>
    <label|half open interval><index|half open
    interval><index|<math|<around*|[|a,b|[>>>Given <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<leqslant\>b> then <math|<around*|[|a,b|[>=<around*|{|x\<in\>\<bbb-R\>\|a\<leqslant\>x\<less\>b|}>>
    is called a half open interval and <math|<around*|[|a,b|]>=<around*|{|x\<in\>\<bbb-R\>\|a\<leqslant\>x\<leqslant\>b|}>>
    a closed interval. The set of all half open intervals is noted as
    <math|\<cal-I\>> hence <math|\<cal-I\>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
  </definition>

  <\note>
    For <math|a\<in\>\<bbb-R\>> we have <math|x\<in\><around*|[|a,a|[>> that
    <math|a\<leqslant\>x\<less\>a> giving the contradiction <math|a\<less\>a>
    hence <math|<around*|[|a,a|[>=\<emptyset\>> so
    <math|\<emptyset\>=<around*|[|1,1|[>\<in\>\<cal-I\>>.
  </note>

  To be able to define a length of a interval in a unique way we must first
  prove that the endpoints of a non empty half open intervals are unique.

  <\lemma>
    <label|bounds of a half open interval>Let <math|I\<in\>\<cal-I\>> with
    <math|I\<neq\>\<emptyset\>> then there exists
    <with|font-series|bold|unique> <math|a,b\<in\>\<bbb-R\>> with
    <math|a\<less\>b> such that <math|I=<around*|[|a,b|[>>
  </lemma>

  <\proof>
    If <math|I\<in\>\<cal-I\>> then there exists a <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<leqslant\>b> such that <math|I=<around*|[|a,b|[>>, as
    <math|I\<neq\>\<emptyset\>> we must have that <math|a\<less\>b>. Assume
    that there exists a <math|a<rprime|'>,b<rprime|'>> so that
    <math|<around*|[|a,b|[>=<around*|[|a<rprime|'>,b<rprime|'>|[>> then we
    have as <math|a\<leqslant\>a\<less\>b> that
    <math|a\<in\><around*|[|a,b|[>=<around*|[|a<rprime|'>,b<rprime|'>|[>>
    that

    <\equation>
      <label|eq 18.54.001>a\<leqslant\>a<rprime|'>\<less\>b
    </equation>

    If <math|a\<less\>a<rprime|'>> then using <reference|density theorem for
    the reals> there exists a <math|x\<in\>\<bbb-R\>> such that
    <math|a\<less\>x\<less\>a<rprime|'>> and as <math|a<rprime|'>\<less\>b>
    we have that <math|x\<in\><around*|[|a,b|[>=<around*|[|a<rprime|'>,b<rprime|'>|[>>
    hence <math|a<rprime|'>\<leqslant\>x\<less\>b<rprime|'>> giving the
    contradiction <math|a<rprime|'>\<less\>x\<less\>a<rprime|'>>. So we must
    have that <math|a<rprime|'>\<leqslant\>a> which using <reference|eq
    18.54.001> proves\ 

    <\equation>
      <label|eq 18.55.001>a=a<rprime|'>
    </equation>

    If now <math|b\<less\>b<rprime|'>> then using <reference|density theorem
    for the reals> again there exists a <math|x\<in\>\<bbb-R\>> such that
    <math|b\<less\>x\<less\>b<rprime|'>> and as
    <math|a<rprime|'>\<equallim\><rsub|<text|<reference|eq
    18.55.001>>>a\<less\>b> we have <math|a<rprime|'>\<less\>x\<less\>b<rprime|'>>
    so that <math|x\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>=<around*|[|a,b|[>>
    hence <math|x\<less\>b\<less\>b<rprime|'>> contradicting
    <math|b\<less\>x\<less\>b<rprime|'>>. So we must have\ 

    <\equation>
      <label|eq 18.56.001>b<rprime|'>\<leqslant\>b
    </equation>

    Assume now that <math|b<rprime|'>\<less\>b> then using <reference|density
    theorem for the reals> there exists a <math|x\<in\>\<bbb-R\>> such that
    <math|b<rprime|'>\<less\>x\<less\>b> or as
    <math|a=a<rprime|'>\<leqslant\>b<rprime|'>> we have
    <math|x\<in\><around*|[|a,b|[>=<around*|[|a<rprime|'>,b<rprime|'>|[>> so
    that <math|x\<less\>b<rprime|'>> contradicting
    <math|b<rprime|'>\<less\>x\<less\>b>. Hence
    <math|b\<leqslant\>b<rprime|'>> which using <reference|eq 18.56.001>
    prove that\ 

    <\equation>
      <label|eq 18.57.001>b=b<rprime|'>
    </equation>

    The lemma is then proved by <reference|eq 18.55.001> and <reference|eq
    18.57.001>
  </proof>

  The above lemma ensures that the following definitions of begin,end and
  length of a half open interval is defined.

  <\definition>
    <label|boundary of a interval><math|begin:\<cal-I\>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\>>
    and <math|end:\<cal-I\>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\>>
    are defined by <math|begin<around*|(|I|)>=a> and
    <math|end<around*|(|I|)>=b> where <math|I=<around*|[|a,b|[>>
  </definition>

  <\definition>
    Let <math|I\<in\>\<cal-I\>> then <math|l<around*|(|I|)>=<choice|<tformat|<table|<row|<cell|0
    if I\<neq\>\<emptyset\>>>|<row|<cell|b-a where I=<around*|[|a,b|[>>>>>>>
  </definition>

  <\note>
    From the definition it easily follows that
    <math|\<forall\>I\<in\>\<cal-I\>> we have that
    <math|0\<leqslant\>l<around*|(|I|)>>
  </note>

  <\lemma>
    <label|length is semi-additive>If <math|I\<in\>\<cal-I\>> and
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>>
    is such that <math|I\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
    then <math|\<lambda\><around*|(|I|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>
  </lemma>

  <\proof>
    We have the following cases to consider for <math|I>\ 

    <\description>
      <item*|<math|I=\<emptyset\>>>then <math|l<around*|(|I|)>=0\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>

      <item*|<math|I\<neq\>\<emptyset\>>>then
      <math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such that
      <math|I=<around*|[|a,b|[>>, further for every <math|i\<in\>\<bbb-N\>>
      there exists a <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>> such that
      <math|I<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>> . Given
      <math|x\<in\>\<bbb-R\>> define <math|<around*|{|I<rsup|x><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      by <math|I<rsup|i><rsub|i>=<around*|[|a<rsub|i,>min<around*|(|b<rsub|i>,x|)>|[>>.
      Consider now the sets\ 

      <\equation>
        <label|eq 18.58.001>A=<around*|{|x\<in\>\<bbb-R\>\|x\<in\><around*|[|a,b|]>\<wedge\>x-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i><rsup|x>|)>|}>\<subseteq\><around*|[|a,b|]>
      </equation>

      Then as <math|a\<in\><around*|[|a,b|]>> and
      <math|a-a=0\<leqslant\><big|sum><rsup|\<infty\>><rsub|i=1>l<around*|(|I<rsup|x><rsub|i>|)>>
      we have that <math|a\<in\>A> so that <math|sup<around*|(|A|)>> exists.
      Further as <math|\<forall\>x\<in\>A> we have
      <math|a\<leqslant\>x\<leqslant\>b> we must have that
      <math|a\<leqslant\>sup<around*|(|A|)>\<leqslant\>b>. So if we define
      <math|c=sup<around*|(|A|)>> we have\ 

      <\equation>
        <label|eq 18.59.001>c=sup<around*|(|A|)>
        exists<infix-and>a\<leqslant\>c\<leqslant\>b
      </equation>

      Define <math|B=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>>
      then given <math|x\<in\>A> we have that
      <math|x-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\<leqslant\>sup<around*|(|B|)>>
      so that <math|x-a\<leqslant\>sup<around*|(|B|)>> or as <math|a> is
      finite that <math|x\<leqslant\>sup<around*|(|B|)>+a> hence
      <math|c=sup<around*|(|A|)>\<leqslant\>sup<around*|(|B|)>+a> or\ 

      <\equation>
        <label|eq 18.60.001>c-a\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>|)>
      </equation>

      Let <math|i\<in\>\<bbb-N\>> then as <math|\<forall\>x\<in\>A> we have
      <math|x\<leqslant\>sup<around*|(|A|)>=c> it follows
      <math|min<around*|(|b<rsub|i>,x|)>\<leqslant\>min<around*|(|b<rsub|i>,c|)>>
      so that <math|min<around*|(|b<rsub|i>,x|)>-a<rsub|i>\<leqslant\>min<around*|(|b<rsub|i>,c|)>-a<rsub|i>>
      or <math|l<around*|(|I<rsup|x><rsub|i>|)>\<leqslant\>l<around*|(|I<rsup|c><rsub|i>|)>>.
      Hence

      <\equation>
        <label|eq 18.61.001>c-a\<leqslant\><rsub|<text|<reference|eq
        18.60.001>>><rsub|>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>
      </equation>

      \;

      which as <math|c\<in\><around*|[|a,b|]>> (see <reference|eq 18.59.001>)
      proves that\ 

      <\equation>
        <label|eq 18.62.001>c\<in\>A
      </equation>

      Assume now that <math|c\<less\>b> then
      <math|c\<in\><around*|[|a,b|[>=<big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
      so there exists a <math|k\<in\>\<bbb-N\>> such that
      <math|c\<in\>I<rsub|k>=<around*|[|a<rsub|k>,b<rsub|k>|[>\<Rightarrow\>c\<less\>b<rsub|k>>.
      Take <math|m=min<around*|(|b<rsub|k>,b|)>> then

      <\equation>
        <label|eq 18.62.001.1>c\<less\>m<infix-and>c\<less\>b<rsub|k>
      </equation>

      Now <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|min<around*|(|b<rsub|i>,c|)>\<leqslant\>min<around*|(|b<rsub|i>,m|)>>
      or <math|min<around*|(|b<rsub|i>,c|)>-a<rsub|i>\<leqslant\>min<around*|(|b<rsub|i>,m|)>-a<rsub|i>>
      giving \ 

      <\equation>
        <label|eq 18.63.001>\<forall\>i\<in\>\<bbb-N\> we have
        l<around*|(|I<rsup|c><rsub|i>|)>\<leqslant\>l<around*|(|I<rsup|m><rsub|i>|)>
      </equation>

      Further <math|l<around*|(|I<rsub|k><rsup|m>|)>=min<around*|(|b<rsub|k>,m|)>-a<rsub|k>\<equallim\><rsub|m\<leqslant\>b<rsub|k>>m-a<rsub|k>>
      and <math|l<around*|(|I<rsup|c><rsub|k>|)>=min<around*|(|c,b<rsub|k>|)>-a<rsub|k>\<equallim\><rsub|c\<less\>b<rsub|k>>c-a<rsub|k>>
      hence\ 

      <\equation>
        <label|eq 18.64.001>l<around*|(|I<rsup|m><rsub|k>|)>=l<around*|(|I<rsup|c><rsub|k>|)>+m-c
      </equation>

      hence if we define <math|<around*|{|s<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      by

      <\equation>
        <label|eq 18.65.001>s<rsub|i>=<choice|<tformat|<table|<row|<cell|l<around*|(|I<rsup|c><rsub|k>|)>+m-c<space|1em>if
        i=k>>|<row|<cell|l<around*|(|I<rsub|i><rsup|c>|)> if i\<neq\>k>>>>>
      </equation>

      Using <reference|eq 18.63.001> and <reference|eq 18.64.001> we have
      that <math|\<forall\>i\<in\>\<bbb-N\>> that
      <math|l<around*|(|I<rsup|m><rsub|i>|)>\<geqslant\>c<rsub|i>> so using
      <reference|sum and order relation in the extented reals> we have that\ 

      <\equation>
        <label|eq 18.66.001><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>\<geqslant\><big|sum><rsub|i=1><rsup|\<infty\>>s<rsub|i>
      </equation>

      Now if we define <math|<around*|{|a<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      by <math|a<rsub|i>=<choice|<tformat|<table|<row|<cell|m-c if
      i=k>>|<row|<cell|0 if i\<neq\>k>>>>>> then using <reference|eq
      18.65.001> we have that <math|\<forall\>i\<in\>\<bbb-N\>
      s<rsub|i>=l<around*|(|I<rsup|c><rsub|i>|)>+a<rsub|i>> so that
      <math|<big|sum><rsub|i=1><rsup|\<infty\>>s<rsub|i>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|l<around*|(|I<rsup|c><rsub|i>|)>+a<rsub|i>|)>\<equallim\><rsub|<text|<reference|sum
      of series in the extended reals>>><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>a<rsub|i>=<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>+m-c<rsub|>>.
      Hence using <reference|eq 18.66.001> we have
      <math|><math|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>\<geqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>+m-c>.
      Applying then <reference|eq 18.61.001> we have <math|>

      <\equation>
        <label|eq 18.67.001><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>\<geqslant\>c-a+m-c=m-a
      </equation>

      As we also have that <math|c\<in\><around*|[|a<rsub|k>,b<rsub|k>|[>\<Rightarrow\>c\<less\>b<rsub|k>>
      and <math|a\<leqslant\>c> it follow that
      <math|a\<leqslant\>min<around*|(|b,b<rsub|k>|)>\<leqslant\>b\<Rightarrow\>m=min<around*|(|b,b<rsub|k>|)>\<in\><around*|[|a,b|]>>
      which together with <reference|eq 18.67.001> proves that
      <math|m\<in\>A> hence <math|m\<leqslant\>sup<around*|(|A|)>=c>
      contradicting <reference|eq 18.62.001.1>. So the assumption
      <math|c\<less\>b> is false and we must have that <math|b\<leqslant\>c>,
      using <reference|eq 18.59.001> we have <math|c=b> or <math|b\<in\>A>,
      which by the definition of <math|A> gives
      <math|b-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|b><rsub|i>|)>>.
      As <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|l<around*|(|I<rsup|b><rsub|i>|)>=min<around*|(|b,b<rsub|i>|)>-a<rsub|i>\<leqslant\>b<rsub|i>-a<rsub|i>=l<around*|(|I<rsub|i>|)>>
      it follows that\ 

      <\equation>
        <label|eq 18.69.001>l<around*|(|I|)>=b-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>
      </equation>

      proving the theorem.
    </description>
  </proof>

  To be able to apply the Carathédory theorem we must now define a outer
  measure. To do this we must define a outer measure on <math|\<bbb-R\>>.
  This is done in the following lemma:

  <\lemma>
    <label|outer measure on the real numbers><math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    where <math|\<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>
    such that A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|}>|)>>
    is a outer measure on <math|\<bbb-R\>>. Further
    <math|\<forall\>I\<in\>\<cal-I\>> we have
    <math|\<varphi\><around*|(|I|)>=l<around*|(|I|)>.>
  </lemma>

  <\proof>
    We have\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-I\>> as <math|<around*|[|1,1|[>>

      <item>If <math|x\<in\>\<bbb-R\>> then using a consequence of the
      Archimedean property of the real numbers (see <smart-ref|consequence of
      the archimedean property for the reals>) there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|<around*|\||x|\|>\<less\>n>
      then <math|x\<less\>n> and <math|-x\<less\>n\<Rightarrow\>-n\<less\>x>
      proving that <math|x\<in\><around*|[|-n,n|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|-n,n|[>>.
      So <math|\<bbb-R\>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|[|-n,n|[>>

      <item><math|l<around*|(|\<emptyset\>|)>=0>

      <item><math|\<forall\>I\<in\>\<cal-I\>,<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>>
      with <math|I\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>> we
      have <math|l<around*|(|I|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>
      (see the previous lemma <reference|length is semi-additive>)
    </enumerate>

    So all the conditions of theorem <reference|constructing a outer measure>
    are satisfied which proves the theorem.
  </proof>

  We are now ready to define a <math|\<sigma\>>-algebra and a measure on
  <math|\<bbb-R\>> using the Carathéodory theorem (see
  <reference|Caratheodory>)

  <\definition>
    <label|Lebesgue><index|Lebesgue measurable set><label|Lebesgue
    measure><index|<math|\<cal-L\>>><index|<math|\<lambda\>>>Let
    <math|\<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>
    where A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|}>|)>> be
    the outer measure from the previous lemma then the
    <math|\<sigma\>>-algebra defined by the Carathéodory method
    <math|<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<varphi\><around*|(|A|)>=\<varphi\><around*|(|A<big|cap>E|)>+\<varphi\><around*|(|A\\E|)>|}>>
    is called the set of Lebesgue measurable sets and is noted by
    <math|\<cal-L\>>. The measure <math|\<lambda\>:\<cal-L\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<lambda\>=\<varphi\><rsub|\|\<cal-L\>>> is called the
    Lebesgue measure. This makes <math|<around*|\<langle\>|\<bbb-R\>,\<cal-L\>,\<lambda\>|\<rangle\>>>
    a measure space.
  </definition>

  We prove now that the Borel algebra <math|\<cal-B\><around*|[|\<bbb-R\>|]>>
  (see <reference|Borel sigma-algebra>) is a subset of <math|\<cal-L\>> or in
  other words that all Borel measurable sets on <math|\<bbb-R\>> are Lebesgue
  measurable. First we prove that segments of the form
  <math|<around*|]|-\<infty\>,x|[>> are Lebesgue measurable. Before that we
  have a little lemma about the intersection of a segment and a interval.

  <\lemma>
    <label|intersection of interval and segments>Let <math|x\<in\>\<bbb-R\>>
    and <math|I=<around*|[|a,b|[>\<in\>\<cal-I\>> then we have for
    <math|I<big|cap><around*|]|-\<infty\>,x|[>> and
    <math|I\\<around*|]|-\<infty\>,x|[>> either

    <\enumerate>
      <item><math|I<big|cap><around*|]|-\<infty\>,x|[>=\<emptyset\>\<wedge\>I\\<around*|]|-\<infty\>,x|[>=I>

      <item><math|I<big|cap><around*|]|-\<infty\>,x|[>=I\<wedge\>I\\<around*|]|-\<infty\>,x|[>=\<emptyset\>>

      <item><math|I<big|cap><around*|]|-\<infty\>,x|[>=<around*|[|a,x|[>\<wedge\>I\\<around*|]|-\<infty\>,x|[>=<around*|[|x,b|[>>
    </enumerate>

    In other words <math|I<big|cap><around*|]|-\<infty\>,x|[>\<in\>\<cal-I\>>
    and <math|I\\<around*|]|-\<infty\>,x|[>\<in\>\<cal-I\>>
  </lemma>

  <\proof>
    As <math|I\<in\>\<cal-I\>> there exists a <math|a,b\<in\>\<bbb-R\>> such
    that <math|a\<leqslant\>b> and <math|I=<around*|[|a,b|[>>. Then for
    <math|a,b,x> we have the following cases to consider

    <\description>
      <item*|<math|a=b>>then of course <math|I=\<emptyset\>> so that
      <math|I<big|cap><around*|]|-\<infty\>,x|[>=\<emptyset\>> and
      <math|I\\<around*|]|-\<infty\>,x|[>=\<emptyset\>=I> giving (1) of the
      lemma.

      <item*|<math|a\<less\>b>>\ 

      <\description>
        <item*|<math|a\<less\>b\<leqslant\>x>>then if <math|y\<in\>I> we have
        <math|x\<leqslant\>y\<less\>b\<leqslant\>x> so that
        <math|y\<in\><around*|]|-\<infty\>,x|[>> proving that
        <math|I\<subseteq\><around*|]|-\<infty\>,x|[>>. Hence
        <math|I<big|cap><around*|]|-\<infty\>,x|[>=I> and
        <math|I\\<around*|]|-\<infty\>,x|[>=\<emptyset\>> giving (2) of the
        lemma.

        <item*|<math|a\<leqslant\>x\<less\>b>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|y\<in\>I<big|cap><around*|]|-\<infty\>,x|[>>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>y\<less\>b\<wedge\>y\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|x\<less\>b>>>|<cell|a\<leqslant\>y\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|a,x|[><eq-number><label|eq
          18.76.001>>>|<row|<cell|y\<in\>I\\<around*|]|-\<infty\>,x|[>>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>y\<less\>b\<wedge\>\<neg\><around*|(|y\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>y\<less\>b\<wedge\>x\<leqslant\>y>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|a\<leqslant\>x>>|<cell|x\<leqslant\>y\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around|[|x,b|[><eq-number><label|eq
          18.77.001>>>>>
        </eqnarray*>

        giving (3) of the lemma.

        <item*|<math|x\<less\>a\<less\>b>>then if
        <math|y\<in\>I<big|cap><around*|]|-\<infty\>,x|[>> then
        <math|a\<leqslant\>y\<less\>b> and
        <math|y\<less\>x\<less\>a><space|1em>giving the contradiction
        <math|y\<less\>y> proving that <math|I<big|cap><around*|]|-\<infty\>,x|[>=\<emptyset\>>.
        From this it follows also that <math|I\\<around*|]|-\<infty\>,x|[>=I>
        giving (1) of the lemma.
      </description>
    </description>
  </proof>

  <\lemma>
    <label|segments are lebesgue measurable>Let <math|x\<in\>\<bbb-R\>> then
    <math|<around*|]|-\<infty\>,x|[>> is Lebesgue measurable\ 
  </lemma>

  <\proof>
    First we prove that for the <math|\<varphi\>> in the above definition

    <\equation>
      <label|eq 18.75.001>\<forall\>I\<in\>\<cal-I\> we have
      \<varphi\><around*|(|I|)>=\<varphi\><around*|(|I<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|I\\<around*|]|-\<infty\>,x|[>|)>
    </equation>

    <\proof>
      As <math|I\<in\>\<cal-I\>> then there exists a
      <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and
      <math|I=<around*|[|a,b|[>>, we have then using <reference|intersection
      of interval and segments> the following cases to consider for
      <math|I<big|cap><around*|]|-\<infty\>,x|[>> and
      <math|I\\<around*|]|-\<infty\>,x|[>>

      <\description>
        <item*|<math|I<big|cap><around*|]|-\<infty\>,x|[>=\<emptyset\>\<wedge\>I\\<around*|]|-\<infty\>,x|[>=I>>then
        <math|><math|\<varphi\><around*|(|I<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|I\\<around*|]|-\<infty\>,x|[>|)>=\<varphi\><around*|(|\<emptyset\>|)>+\<varphi\><around*|(|I|)>=0+\<varphi\><around*|(|I|)>=\<varphi\><around*|(|I|)>>

        <item*|<math|I<big|cap><around*|]|-\<infty\>,x|[>=I\<wedge\>I\\<around*|]|-\<infty\>,x|[>=\<emptyset\>>>then
        <math|\<varphi\><around*|(|I<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|I\\<around*|]|-\<infty\>,x|[>|)>=\<varphi\><around*|(|I|)>+\<varphi\><around*|(|\<emptyset\>|)>=\<varphi\><around*|(|I|)>>

        <item*|<math|I<big|cap><around*|]|-\<infty\>,x|[>=<around*|[|a,x|[>\<wedge\>I\\<around*|]|-\<infty\>,x|[>=<around*|[|x,b|[>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><around*|(|I<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|I\\<around*|]|-\<infty\>,x|[>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a,x|[>|)>+\<varphi\><around*|(|<around*|[|x,b|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure on the real numbers>>>>|<cell|\<lambda\><around*|(|<around*|[|a,x|[>|)>+\<lambda\><around*|(|<around*|[|x,b|[>|)>>>|<row|<cell|>|<cell|=>|<cell|x-a+b-x>>|<row|<cell|>|<cell|=>|<cell|b-a>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><around*|(|I|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure on the real numbers>>>>|<cell|\<varphi\><around*|(|I|)>>>>>
        </eqnarray*>
      </description>

      So in all cases we have <math|\<varphi\><around*|(|I<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|I\\<around*|]|-\<infty\>,x|[>|)>=\<varphi\><around*|(|I|)>>
    </proof>

    Take now <math|A\<in\>\<cal-P\><around*|(|X|)>> then by the definition of
    <math|\<varphi\>> (see <reference|outer measure on the real numbers>) we
    have <math|\<forall\>\<varepsilon\>\<gtr\>0> that there exists a
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>>
    such that <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    and

    <\equation>
      <label|eq 18.78.001>\<varphi\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\<less\>\<varphi\><around*|(|A|)>+\<varepsilon\>
    </equation>

    Now <math|\<forall\>i\<in\>\<bbb-N\>> we have that
    <math|I<rsub|i><big|cap><around*|]|-\<infty\>,x|[>\<in\>\<cal-I\>\<wedge\>I<rsub|i>\\<around*|]|-\<infty\>,x|[>\<in\>\<cal-I\>>
    (see <reference|intersection of interval and segments>). Now as
    <math|A<big|cap><around*|]|-\<infty\>,x|[>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|)><big|cap><around*|]|-\<infty\>,x|[>\<equallim\><rsub|<text|<reference|generalized
    distributive laws>>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|I<rsub|i><big|cap><around*|]|-\<infty\>,x|[>|)>>
    and <math|A\\<around*|]|-\<infty\>,x|[>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|)>\\<around*|]|-\<infty\>,x|[>\<equallim\><rsub|<text|<reference|generalized
    difference>>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|I<rsub|i>\\<around*|]|-\<infty\>,x|[>|)>>
    hence we have using the definition of <math|\<varphi\>> that
    <math|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,x|[>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|I<rsub|i><big|cap><around*|]|-\<infty\>,x|[>|)>>
    and <math|\<varphi\><around*|(|A\\<around*|]|-\<infty\>,x|[>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|I<rsub|i>\\<around*|]|-\<infty\>,x|[>|)>>
    so that<space|1em>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|A\\<around*|]|-\<infty\>,x|[>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|I<rsub|i><big|cap><around*|]|-\<infty\>,x|[>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|I<rsub|i>\\<around*|]|-\<infty\>,x|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|sum
      of series in the extended reals>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<varphi\><around*|(|I<rsub|i><big|cap><around*|]|-\<infty\>,x|]>|)>+\<varphi\><around*|(|I<rsub|i>\\<around*|]|-\<infty\>,x|[>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.77.001>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.78.001>>>>|<cell|\<varphi\><around*|(|A|)>+\<varepsilon\>>>>>
    </eqnarray*>

    As <math|\<varepsilon\>> is chosen arbitrary we can use
    \ <reference|consequence of the Archimedean property (2)> to prove that
    <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> we have
    <math|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,x|[>|)>+\<varphi\><around*|(|A\\<around*|]|-\<infty\>,x|[>|)>\<leqslant\>\<varphi\><around*|(|A|)>>.
    Hence <math|<around*|]|-\<infty\>,x|[>\<in\><around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<varphi\><around*|(|A|)>\<geqslant\>\<varphi\><around*|(|A<big|cap>E|)>+\<varphi\><around*|(|A\\E|)>|}>\<equallim\><rsub|<text|<reference|Caratheodory>>><around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<varphi\><around*|(|A|)>=\<varphi\><around*|(|A<big|cap>E|)>+\<varphi\><around*|(|A\\E|)>|}>=\<cal-L\>>
    proving that <math|<around*|]|-\<infty\>,x|[>> is Lebesgue measurable.
  </proof>

  A consequence of the above is that the <math|\<sigma\>>-algebra generated
  by a segments of the form <math|<around*|]|-\<infty\>,x|[>> is a subset of
  the set of Lebesgue measurable\ 

  <\corollary>
    <math|<label|set of segments is a sigma
    algebra>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-L\>>
  </corollary>

  <\proof>
    Using the previous lemma <reference|segments are lebesgue measurable> we
    have that <math|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-L\>>.
    As <math|\<cal-L\>> is a <math|\<sigma\>>-algebra and
    <math|><math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    is the smallest <math|\<sigma\>>-algebra covering
    <math|><math|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-L\>>.
    As <math|\<cal-L\>> is a <math|\<sigma\>>-algebra and
    <math|><math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    is the smallest <math|\<sigma\>>-algebra covering
    <math|><math|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>>
    (see <reference|sigma algebra generated>) it follows that
    <math|\<sigma\><around*|(|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|)>>
  </proof>

  <\corollary>
    <label|sigma algebra of half open intervals><math|\<sigma\><around*|[|\<cal-I\>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>\<subseteq\><rsub|<text|<reference|set
    of segments is a sigma algebra>>>\<cal-L\>>
  </corollary>

  <\proof>
    Let <math|I\<in\>\<cal-I\>> then there exists a <math|a,b\<in\>\<bbb-R\>>
    such that <math|I=<around*|[|a,b|[>>. Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|[>>|<cell|\<Leftrightarrow\>>|<cell|x\<less\>b\<wedge\>\<neg\><around*|(|x\<less\>a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<less\>b\<wedge\>a\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,b|[><eq-number><label|eq
      18.79.001>>>>>
    </eqnarray*>

    As <math|><math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    is a <math|\<sigma\>>-algebra we have using <reference|sigma algebra
    properties> that <math|<around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    so that by <reference|eq 18.79.001> it follows that
    <math|I=<around*|[|a,b|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>.
    Hence <math|\<cal-I\>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    so that <math|\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
    (see <reference|sigma algebra generated>)
  </proof>

  We can extend the above to open sets. to do this we first show that every
  open set can be written as a countable union of half open intervals.
  Actually we go even further and show that it can be written as a countable
  disjoint union of intervals. For this we introduce the concept of Dyadic
  intervals.\ 

  <\definition>
    <label|Dyadic intervals><index|<math|\<cal-D\><rsub|n>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|z\<in\>\<bbb-Z\>> then
    <math|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>> is called a
    <with|font-series|bold|Dyadic> interval of order <math|n>. The set of all
    Dyadic intervals of order <math|n> is noted by <math|\<cal-D\><rsub|n>>
    so <math|\<cal-D\><rsub|n>=<around*|{|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>\|z\<in\>\<bbb-Z\>|}>>.
    The set of all Dyadic intervals is noted by <math|\<cal-D\>> so
    <math|\<cal-D\>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<cal-D\><rsub|n>>.
  </definition>

  <\note>
    As <math|<frac|z|2<rsup|n>>\<less\><frac|z+1|2<rsup|n>>> we have that
    Dyadic intervals are non empty.
  </note>

  We prove now that the set of Dyadic interval is denumerable\ 

  <\lemma>
    <label|set of Dyadic intervals is denumerable><math|\<forall\>n\<in\>\<bbb-N\>>
    <math|\<cal-D\><rsub|n>> is denumerable and in addition <math|\<cal-D\>>
    is also denumerable.
  </lemma>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> define then
    <math|\<beta\>:\<bbb-Z\>\<rightarrow\>\<bbb-D\><rsub|n>> by
    <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>>
    then <math|\<beta\>> is a bijection:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|x|)>=\<beta\><around*|(|y|)>>
      then <math|<around*|[|<frac|x|2<rsup|n>>,<frac|x+1|2<rsup|n>>|[>=<around*|[|<frac|y|2<rsup|n>>,<frac|y+1|2<rsup|n>>|[>\<Rightarrowlim\><rsub|<text|<reference|bounds
      of a half open interval>>><frac|x|2<rsup|n>>=<frac|y|2<rsup|n>>\<Rightarrow\>x=y>\ 

      <item*|surjectivity>If <math|I\<in\>\<bbb-D\><rsub|n>> then
      <math|\<exists\>z\<in\>\<bbb-Z\>> so that
      <math|I=<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>=\<beta\><around*|(|z|)>>
    </description>

    As <math|\<bbb-Z\>> is denumerable (see <reference|the integer numbers in
    the reals are denumerable>) we have thus that <math|\<cal-D\><rsub|n>> is
    denumerable. Using <reference|denumerable union of denumerable sets is
    denumerable> we have then that <math|\<cal-D\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-D\><rsub|i>>
    is also denumerable.
  </proof>

  Dyadic intervals have the following important property\ 

  <\lemma>
    <label|property of Dyadic interval of order n>Let
    <math|n,k\<in\>\<bbb-N\><rsub|0><rsub|>>with <math|k\<leqslant\>n> and
    <math|v,z\<in\>\<bbb-Z\>> then we have either
    <math|<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[><big|cap><around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>=\<emptyset\>>
    or <math|<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[>\<subseteq\><around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>
  </lemma>

  <\proof>
    Take <math|I=<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[>>and
    <math|J=<around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>. As
    <math|k\<less\>n> we have <math|0\<leqslant\>l=n-k> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z|2<rsup|k>>\<cdot\><frac|2<rsup|n-k>|2<rsup|n-k>>,<frac|z\<cdot\>2<rsup|n-k*>+2<rsup|n-k>|2<rsup|k>\<cdot\>2<rsup|n-k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z\<cdot\>2<rsup|n-k>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|n-k**>+2<rsup|n-k>|2<rsup|n>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|[>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.80.001>J=<around*|[|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|[>
    </equation>

    If now <math|I<big|cap>J\<neq\>0> so there exists a
    <math|x\<in\>I<big|cap>J> then we have if

    <\description>
      <item*|<math|<frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>>>then
      <math|<frac|v|2<rsup|n>>\<leqslant\>x\<less\><frac|v+1|2<rsup|n>>\<wedge\><frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\>x\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
      giving <math|x\<less\>x> a contradiction.

      <item*|<math|<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>>>then
      <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\>x\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<wedge\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>\<leqslant\>x\<less\><frac|v+1|2<rsup|n>>>
      giving <math|x\<less\>x> a contradiction
    </description>

    so we must have <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>>
    and <math|<frac|v|2<rsup|n>>\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
    so by multiplication with <math|2<rsup|n>> gives\ 

    <\equation>
      <label|eq 18.81.001>z\<cdot\>2<rsup|l>\<less\>v+1\<wedge\>v\<less\>z\<cdot\>2<rsup|l>+2<rsup|l>
    </equation>

    Assume now that <math|<frac|v|2<rsup|n>>\<less\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>>
    then \ <math|v\<less\>z\<cdot\>2<rsup|l>> and as
    <math|v,z\<cdot\>2<rsup|l>\<in\>\<bbb-Z\>> we have
    <math|v+1\<leqslant\>z\<cdot\>2<rsup|l>\<less\><rsub|<text|<reference|eq
    18.81.001>>>v+1> a contradiction so we must have\ 

    <\equation>
      <label|eq 18.82.001><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>
    </equation>

    Assume that <math|<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>>
    then <math|z\<cdot\>2<rsup|l>+2<rsup|l>\<less\>v+1> so as
    <math|\<cdot\>2<rsup|l>+2<rsup|l>,v+1\<in\>\<bbb-Z\>> we have
    <math|z\<cdot\>2<rsup|l>+2<rsup|l>\<leqslant\>v> contradicting
    <reference|eq 18.81.001> so we must have\ 

    <\equation>
      <label|eq 18.83.001><frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>
    </equation>

    So if <math|x\<in\>I> then <math|<frac|v|2<rsup|n>>\<leqslant\>x\<less\><frac|v+1|2<rsup|n>>>
    and using <reference|eq 18.82.001> and <reference|eq 18.83.001> we have
    <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\>x\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
    giving by <reference|eq 18.80.001> that <math|x\<in\>I>. So we have that
    if <math|I<big|cap>J\<neq\>\<emptyset\>> then <math|I\<subseteq\>J>.
    Further if <math|I<big|cap>J=\<emptyset\>> then if <math|I\<subseteq\>J>
    we have as <math|I\<neq\>\<emptyset\>> that
    <math|\<exists\>x\<in\>I\<subseteq\>J> giving
    <math|I<big|cap>J\<neq\>\<emptyset\>> a contradiction. Hence we must
    either have that <math|I<big|cap>J=\<emptyset\>> or <math|I\<subseteq\>J>
    but not both <math|I<big|cap>J=\<emptyset\>> and <math|I\<subseteq\>J>.
  </proof>

  We prove now the extra properties of Dyadic sets

  <\lemma>
    <label|Dyadic properties>Dyadic intervals have the following properties\ 

    <\enumerate>
      <item>If <math|k,n\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>n>
      we have <math|\<forall\>I\<in\>\<cal-D\><rsub|n>,\<forall\>J\<in\>\<cal-D\><rsub|k>>
      then either <math|I\<subseteq\>J> or <math|I<big|cap>J=\<emptyset\>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> then
      <math|\<forall\>I,J\<in\>\<cal-D\><rsub|n>> with <math|I\<neq\>J> we
      have <math|I<big|cap>J=\<emptyset\>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<bbb-R\>=<big|sqcup><rsub|I\<in\>\<cal-D\><rsub|n>>I>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>I\<in\>\<cal-D\><rsub|n>> we have
      <math|l<around*|(|I|)>=<frac|1|2<rsup|n>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows directly from <reference|property of Dyadic interval
      of order n>

      <item>Take <math|I\<neq\>J> and assume that
      <math|I<big|cap>J\<neq\>\<emptyset\>> then as <math|n\<leqslant\>n> we
      have by (1) that <math|I\<subseteq\>J\<wedge\>J\<subseteq\>I\<Rightarrow\>I=J>
      a contradiction, so we must have that <math|I<big|cap>J=\<emptyset\>>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then trivially
      <math|<big|cup><rsub|I\<in\>\<bbb-D\><rsub|n>>I\<subseteq\>\<bbb-R\>>,
      for the opposite inclusion let <math|x\<in\>\<bbb-R\>> then for
      <math|x\<cdot\>2<rsup|n>> we have by the Archimedean property of the
      reals (see <reference|consequence of the archimedean property for the
      reals>) that there exists a <math|z\<in\>\<bbb-Z\>> such that
      <math|z\<leqslant\>x\<cdot\>2<rsup|n>\<less\>z+1> and thus that
      <math|<frac|z|2<rsup|n>>\<leqslant\>x\<less\><frac|z+1|2<rsup|n>>\<Rightarrow\>x\<in\><around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>>
      proving that <math|\<bbb-R\>\<subseteq\><big|cup><rsub|I\<in\>\<bbb-D\><rsub|n>>I>.
      Using (2) proves then that <math|\<bbb-R\>=<big|sqcup><rsub|I\<in\>\<bbb-D\><rsub|n>>I>

      <item>If <math|I\<in\>\<bbb-D\><rsub|n>> then
      <math|\<exists\>z\<in\>\<bbb-Z\>> such that
      <math|I=<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>> so that
      <math|l<around*|(|I|)>=<frac|z+1|2<rsup|n>>-<frac|z|2<rsup|n>>=<frac|1|2<rsup|n>>=2<rsup|-n>>
    </enumerate>
  </proof>

  We can now use Dyadic intervals to show that every open set is a disjoint
  union of Dyadic intervals.

  <\lemma>
    <label|Dyadic intervals and open sets>Let <math|\<bbb-R\>> equipped with
    the canonical topology <math|\<cal-T\><rsub|\<bbb-R\>>> then we have
    <math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\>>> with
    <math|\<emptyset\>\<neq\>U> that there exists a sequence of pairwise
    disjoint Dyadic intervals <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
  </lemma>

  <\proof>
    Let <math|U> be a non empty open set in <math|\<bbb-R\>>, define then\ 

    <\equation>
      <label|eq 18.84.001><around*|{|S<rsub|n>|}><rsub|n\<in\>\<bbb-N\>> by
      S<rsub|n>=<around*|{|I\<in\>\<cal-D\><rsub|n>\|I\<subseteq\>U|}>\<subseteq\>\<cal-D\><rsub|n>
    </equation>

    Further define recursively

    <\equation>
      <label|eq 18.85.001><around*|{|\<cal-T\><rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>
      by \<cal-T\><rsub|n>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|1>
      if n=1>>|<row|<cell|<around*|{|I\<in\>\<cal-S\><rsub|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text|
      we have >\<forall\>I\<in\>\<cal-T\><rsub|i>\<vDash\>I<big|cap>J=\<emptyset\>|}>>>>>>\<subseteq\>\<cal-S\><rsub|n>\<subseteq\>\<cal-D\><rsub|n>
    </equation>

    Take now\ 

    <\equation>
      <label|eq 18.86.001>\<cal-T\>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<cal-T\><rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>\<cal-D\><rsub|n>\<subseteq\>\<cal-D\>
    </equation>

    Let <math|x\<in\>U> then as <math|U> is open there exists a
    <math|0\<less\>\<varepsilon\><rsub|x>> such that
    <math|x\<in\><around*|]|x-\<varepsilon\><rsub|x>,x+\<varepsilon\><rsub|x>|[>\<subseteq\>U>.
    Using a consequence of the Archimedean property of the real numbers (see
    <reference|0\<less\>x^n\<less\>e>) there exists a
    <math|n<rsub|x>\<in\>\<bbb-N\>> such that

    <\equation>
      <label|eq 18.87.001>0\<less\><frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\>
    </equation>

    Using <reference|Dyadic properties> (3) there exists a
    <math|I<rsub|x>\<in\>\<cal-D\><rsub|n<rsub|x>>> such that
    <math|x\<in\>I<rsub|x><rsub|>>, hence there exists a
    <math|z\<in\>\<bbb-Z\>> such that <math|I<rsub|x>=<around*|[|<frac|z|2<rsup|n<rsub|x>>>,<frac|z+1|2<rsup|n<rsub|x>>>|[>>
    proving\ 

    \;

    <\equation>
      <label|eq 18.88.001><frac|z|2<rsup|n<rsub|x>>>\<leqslant\>x\<less\><frac|z+1|2<rsup|n<rsub|x>>>
    </equation>

    and\ 

    <\equation>
      <label|eq 18.89.001>\<forall\>t\<in\>I<rsub|x><text| we have
      ><frac|z|2<rsup|n<rsub|x>>>\<leqslant\>t\<less\><frac|z+1|2<rsup|n<rsub|x>>>
    </equation>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x-t>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.88.001>,<reference|eq 18.89.001>>>>|<cell|<frac|z+1|2<rsup|n<rsub|x>>>-<frac|z|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\><rsub|x>>>|<row|<cell|t-x>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.88.001>,<reference|eq 18.89.001>>>>|<cell|<frac|z+1|2<rsup|n<rsub|x>>>-<frac|z|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\><rsub|x>>>>>
    </eqnarray*>

    hence <math|x-\<varepsilon\><rsub|x>\<less\>t\<less\>x+\<varepsilon\><rsub|x>>
    proving that <math|t\<in\><around*|]|x-\<varepsilon\><rsub|x>,x+\<varepsilon\><rsub|x>|[>\<subseteq\>U>.
    So we have that <math|I<rsub|x>\<subseteq\>U> or using <reference|eq
    18.84.001> that <math|x\<in\>I<rsub|x>\<in\>\<cal-S\><rsub|n<rsub|x>>>.
    Define now <math|\<cal-K\><rsub|x>=<around*|{|n\<in\><around*|{|1,\<ldots\>,n<rsub|x>|}>\|\<exists\>I\<in\>\<cal-S\><rsub|n>
    such that x\<in\>I|}>> then <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>>
    proving that <math|\<cal-K\><rsub|x>\<neq\>\<emptyset\>> so that
    <math|m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)>> exists. We have then
    two cases to consider

    <\description>
      <item*|<math|m<rsub|x>=1>>then <math|\<exists\>I\<in\>S<rsub|1>=\<cal-T\><rsub|1>\<in\>\<cal-T\>>
      such that <math|x\<in\>I> hence <math|x\<in\>I\<subseteq\><big|cup><rsub|I\<in\>\<cal-T\>>I>

      <item*|<math|1\<less\>m<rsub|x>>>then
      <math|\<exists\>J\<in\>\<cal-S\><rsub|m<rsub|x>>> (such that
      <math|x\<in\>J>) and for <math|n\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>>
      we have <math|\<forall\>I\<in\>\<cal-S\><rsub|n>> that
      <math|x\<nin\>I>. Now as <math|n\<leqslant\>m<rsub|x>> we have by
      <reference|Dyadic properties> (1) that either <math|J\<subseteq\>I,>
      but then as <math|x\<in\>J\<subseteq\>I> we contradict<math|x\<nin\>I>,
      or <math|J<big|cap>I=\<emptyset\>>. So
      <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,m<rsub|x><rsub|>-1|}>>,
      <math|\<forall\>I\<in\>\<cal-I\><rsub|n>> we have
      <math|J<big|cap>I=\<emptyset\>> or <math|J\<in\>\<cal-T\><rsub|m<rsub|x>><rsub|>>
      (see <reference|eq 18.85.001>) hence
      <math|x\<in\>J\<subseteq\><big|cup><rsub|I\<in\>\<cal-T\>>I>
    </description>

    As we have chosen <math|x\<in\>U> arbitrary it follows that\ 

    <\equation>
      <label|eq 18.90.001>U\<subseteq\><big|cup><rsub|I\<in\>\<cal-T\>>I
    </equation>

    \ Now if <math|x\<in\><big|cup><rsub|I\<in\>\<cal-T\>>I<rsub|>> then
    there exists a <math|I\<in\>\<cal-T\>> such that <math|x\<in\>I>, as
    <math|\<cal-T\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-T\><rsub|i>>
    there exists a <math|i\<in\>\<bbb-N\>> such that
    <math|I\<in\>\<cal-T\><rsub|i>> and thus by <reference|eq 18.85.001> that
    <math|I\<subseteq\>U>. So <math|<big|cup><rsub|I\<in\>\<cal-T\>>I\<subseteq\>U>
    which by <reference|eq 18.90.001> proves that\ 

    <\equation>
      <label|eq 18.91.001>U=<big|cup><rsub|I\<in\>\<cal-T\>>I
    </equation>

    Now if <math|I,J\<in\>\<cal-T\>> with <math|I\<neq\>J> then there exists
    <math|n,m> such that <math|I\<in\>\<cal-T\><rsub|n><rsub|>> and
    <math|J\<in\>\<cal-T\><rsub|m>>. For <math|n,m> we have the following
    possibilities:

    <\description>
      <item*|n=m>then using <reference|Dyadic properties> (2) we have that
      <math|I<big|cap>J=\<emptyset\>>

      <item*|<math|n\<less\>m>>then using <reference|eq 18.85.001> we have
      <math|I<big|cap>J=\<emptyset\>>

      <item*|<math|m\<less\>n>>then using <reference|eq 18.85.001> we have
      <math|I<big|cap>J=\<emptyset\>>
    </description>

    Applying this on <reference|eq 18.91.001> proves that\ 

    <\equation>
      <label|eq 18.92.001>U=<big|sqcup><rsub|I\<in\>\<cal-T\>>I
    </equation>

    Assume now that <math|\<cal-T\>> is finite, then as
    <math|U\<neq\>\<emptyset\>> we must have that
    <math|\<cal-T\>\<neq\>\<emptyset\>>. As Dyadic intervals are non empty we
    have that <math|a=min<around*|(|<around*|{|begin<around*|(|I|)>\|I\<in\>\<cal-T\>|}>|)>>
    exists. By the definition of a minimum there exists a
    <math|I\<in\>\<cal-T\>> such that <math|begin<around*|(|I|)>=a> hence
    <math|a\<in\>I\<subseteq\>U>. As <math|U> is open there exists a
    <math|\<varepsilon\>\<gtr\>0> such that
    <math|a\<in\><around*|]|a-\<varepsilon\>,a+\<varepsilon\>|[>\<subseteq\>U>
    hence <math|a-<frac|\<varepsilon\>|2>\<in\>U>. So there exists a
    <math|J\<in\>\<cal-T\>> such that <math|a-<frac|\<varepsilon\>|2>\<in\>J>
    hence <math|begin<around*|(|J|)>\<leqslant\>a-<frac|\<varepsilon\>|2>\<less\>a\<leqslant\>begin<around*|(|J|)>>
    a contradiction. So we must have that <math|\<cal-T\>> is infinite. As
    <math|\<cal-T\>\<subseteq\>\<cal-D\>> a denumerable set (see
    <reference|set of Dyadic intervals is denumerable>) it follows from
    <reference|subsets of denumerable sets are finite or denumerable> that

    \;

    <\equation>
      <label|eq 18.93.001>\<cal-T\><text| is denumerable>
    </equation>

    So there exists a bijection <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<cal-T\>>,
    define then <math|<around*|{|I<rsub|i>|}><rsub|I\<in\>\<bbb-N\>>> by
    <math|I<rsub|i>=\<beta\><around*|(|i|)>> giving

    <\equation*>
      U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>
    </equation*>

    proving the lemma.
  </proof>

  <\lemma>
    <label|half open interval as union of open
    sets><math|\<forall\>I\<in\>\<cal-I\>> with <math|\<emptyset\>\<neq\>I>
    there exists a sequence <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>>
    of open sets such that <math|<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>=I>
  </lemma>

  <\proof>
    As <math|I\<neq\>\<emptyset\>> there exists a <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<less\>b> such that <math|I=<around*|[|a,b|[>> define then
    <math|<around*|{|<around*|]|a-<frac|1|n>,b|[>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>>.
    As <math|\<forall\>n\<in\>\<bbb-N\>> <math|<around*|[|a,b|[>\<subseteq\><around*|]|a+<frac|1|n>,b|[>>
    we have\ 

    <\equation>
      <label|eq 18.94.001>I\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>
    </equation>

    For the opposite inequality let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>>
    then <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|a-<frac|1|n>\<leqslant\>x\<less\>b>. Assume now that
    <math|x\<less\>a> then <math|0\<less\>a-x>, so that using
    <reference|consequence of the archimedean property for the reals> there
    exists a <math|n\<in\>\<bbb-N\>> such that
    <math|0\<less\><frac|1|n>\<less\>a-x\<Rightarrow\>x\<less\>a-<frac|1|n>>
    contradicting <math|a-<frac|1|n>\<less\>x>, so
    <math|a\<leqslant\>x\<less\>b> or <math|x\<in\><around*|[|a,b|[>>. Hence
    <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|]>\<subseteq\>I>
    proving using <reference|eq 18.94.001> that\ 

    <\equation*>
      I=<big|cap><rsub|i\<in\>\<bbb-N\>><around*|]|a-<frac|1|n>,b|[>
    </equation*>
  </proof>

  We are now ready to prove that <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-I\>|]>>

  <\lemma>
    <label|half open interval and Borel Sets><math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-I\>|]>>
    (where <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
    see <reference|Borel algebras>)\ 
  </lemma>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then we have either\ 

    <\description>
      <item*|<math|U=\<emptyset\>>>then <math|U\<in\>\<sigma\><around*|[|\<cal-I\>|]>>

      <item*|<math|U\<neq\>\<emptyset\>>>then using <reference|Dyadic
      intervals and open sets> there exists a
      <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>>
      such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>\<in\>\<sigma\><around*|[|\<cal-I\>|]>>
      [as <math|\<sigma\><around*|[|I|]>> is a <math|\<sigma\>>-algebra]
      hence <math|U\<in\>\<sigma\><around*|[|\<cal-I\>|]>>
    </description>

    \ \ so <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-I\>|]>>
    and thus\ 

    <\equation>
      <label|eq 18.95.001>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\>|]>
    </equation>

    Further if <math|I\<in\>\<cal-I\>> then we have either\ 

    <\description>
      <item*|<math|I=\<emptyset\>>>then <math|I\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>

      <item*|<math|I\<neq\>\<emptyset\>>>then using <reference|half open
      interval as union of open sets> there exists a
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>>
      such that <math|I=<big|cap><rsub|i\<in\>\<bbb-N\>>I<rsub|i>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
      [because <math|\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>> is a
      <math|\<sigma\>>-algebra together with <reference|sigma algebra
      properties>]
    </description>

    so <math|\<cal-I\>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
    and thus\ 

    <\equation>
      <label|eq 18.96.001>\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>
    </equation>

    The proposition is then proved by <reference|eq 18.95.001> and
    <reference|eq 18.96.001>
  </proof>

  Actually we can also generate <math|\<sigma\><around*|[|\<cal-I\>|]>> by
  closed intervals as shown in the following proposition.

  <\proposition>
    <label|closed intervals and Borel Sets>We have
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
    with a\<leqslant\>b|}>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>>\ 
  </proposition>

  <\proof>
    Take <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|[|a,b+1|[>\\<around*|]|b,b+1|[>>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<less\>b+1\<wedge\>\<neg\><around*|(|b\<less\>x\<less\>b+1|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<less\>b+1\<wedge\><around*|(|x\<leqslant\>b\<vee\>b+1\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a\<leqslant\>x\<less\>b+1\<wedge\>x\<leqslant\>b|)>\<vee\><around*|(|a\<leqslant\>x\<less\>b+1\<wedge\>b+1\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\>>|<cell|a\<leqslant\>x\<less\>b+1\<wedge\>x\<leqslant\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<leqslant\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,b|]>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|18.98.001><around*|[|a,b|]>=<around*|[|a,b+1|[>\\<around*|]|b,b+1|[>
    </equation>

    Now <math|<around*|[|a,b+1|[>\<in\>\<cal-I\>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>>
    (see <reference|half open interval and Borel Sets>) and
    <math|<around*|]|b,b+1|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>>
    hence using the properties of of a <math|\<sigma\>>-algebra (see
    <reference|sigma algebra properties>) we have that
    <math|<around*|[|a,b+1|[>\\<around*|]|b,b+1|[>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>.
    So <math|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\> with
    a\<leqslant\>b|}>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>> and as
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
    with a\<leqslant\>b|}>|]>> is the smallest <math|\<sigma\>>-algebra
    containing <math|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\> with
    a\<leqslant\>b|}>> we have\ 

    <\equation>
      <label|eq 18.99.001>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    For the opposite inclusion note let <math|I\<in\>\<cal-I\>> then we have
    either\ 

    <\description>
      <item*|<math|I=\<emptyset\>>>then <math|I=\<emptyset\>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>

      <item*|<math|I\<neq\>\<emptyset\>>>then there exists a
      <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b>. Note that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|[|a,b+1|]>\\<around*|[|b,b+1|]>>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<leqslant\>b+1\<wedge\>\<neg\><around*|(|b\<leqslant\>x\<leqslant\>b+1|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<leqslant\>b+1\<wedge\><around*|(|x\<less\>b\<vee\>b+1\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a\<leqslant\>x\<leqslant\>b\<wedge\>x\<less\>b|)>\<vee\><around*|(|a\<leqslant\>x\<leqslant\>b\<wedge\>b+1\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a\<leqslant\>x\<leqslant\>b\<wedge\>x\<less\>b|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,b|[>>>>>
      </eqnarray*>

      proving that <math|<around*|[|a,b|[>=<around*|[|a,b+1|]>\\<around*|[|b,b+1|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>> [see <reference|sigma algebra properties>]
    </description>

    So we have that <math|\<cal-I\>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
    with a\<leqslant\>b|}>|]>> hence <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
    with a\<leqslant\>b|}>|]>> proving together with <reference|eq 18.99.001>
    that\ 

    <\equation*>
      <around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\> with
      a\<leqslant\>b|}>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation*>
  </proof>

  <\lemma>
    <label|]-@@,a]>We have <math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
  </lemma>

  <\proof>
    Let <math|a\<in\>\<bbb-R\>> then we have
    <math|\<forall\>n\<in\>\<bbb-N\>> that
    <math|<around*|]|-\<infty\>,a|]>\<subseteq\><around*|]|-\<infty\>,a+<frac|1|n>|[>>
    so that <math|<around*|]|-\<infty\>,a|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>>.
    For the opposite equality take <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>>
    then <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|x\<less\>a+<frac|1|n>> so using <smart-ref|consequence of the
    Archimedean property (2)> (3) we have <math|x\<leqslant\>a> proving that
    <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<subseteq\><around*|]|-\<infty\>,a|]>>
    giving <math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    [because of <smart-ref|sigma algebra properties>]. Hence we have
    <math|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    giving

    <\equation>
      <label|eq 18.102.003>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    For the opposite inclusion note that given <math|a\<in\>\<bbb-R\>>,
    <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|<around*|]|-\<infty\>,a-<frac|1|n>|]>\<subseteq\><around*|]|-\<infty\>,a|[>>
    proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>\<subseteq\><around*|]|-\<infty\>,a|[>>.
    Take <math|x\<in\><around*|]|-\<infty\>,a|[>> then <math|x\<less\>a> or
    <math|0\<less\>a-x>, using <smart-ref|consequence of the archimedean
    property for the reals> (3) there exists a <math|n\<in\>\<bbb-N\>> such
    that <math|0\<less\><frac|1|n>\<less\>a-x\<Rightarrow\>x\<less\>a-<frac|1|n>\<Rightarrow\>x\<in\><around*|]|-\<infty\>,a-<frac|1|n>|[>>
    proving that <math|<around*|]|-\<infty\>,a|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>>,
    giving <math|<around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|-\<infty\>,a-<frac|1|n>|]>\<in\>\<sigma\><around*|[|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|]>>.
    Hence we have <math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|]>>
    which using <smart-ref|eq 18.102.003> means that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  <\lemma>
    <label|]a,@@[>We have <math|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
  </lemma>

  <\proof>
    Let <math|a\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|]|-\<infty\>,a|]>>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|x\<leqslant\>a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,\<infty\>|[>>>>>
    </eqnarray*>

    proving that <math|<around*|]|a,\<infty\>|[>=\<bbb-R\>\\<around*|]|-\<infty\>,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>.
    So <math|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
    hence\ 

    <\equation>
      <label|eq 18.103.003>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Further if <math|a\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|]|a,\<infty\>|[>>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|a\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<leqslant\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|]|-\<infty\>,a|]>>>>>
    </eqnarray*>

    proving that <math|<around*|]|-\<infty\>,a|]>=\<bbb-R\>\\<around*|]|a,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    So <math|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>,
    hence <math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    which together with <smart-ref|eq 18.103.003> proves that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  <\lemma>
    <label|[a,@@[>We have <math|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
  </lemma>

  <\proof>
    Let <math|a\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|]|-\<infty\>,a|[>>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|x\<less\>a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,\<infty\>|[>>>>>
    </eqnarray*>

    proving that <math|<around*|[|a,\<infty\>|[>=\<bbb-R\>\\<around*|]|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    Hence <math|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    giving\ 

    <\equation>
      <label|eq 18.104.003>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Further given <math|a\<in\>\<bbb-R\>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|[|a,\<infty\>|[>>|<cell|\<Leftrightarrow\>>|<cell|\<neg\><around*|(|a\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|-\<infty\>,a|[>>>>>
    </eqnarray*>

    proving that <math|<around*|]|-\<infty\>,a|[>=\<bbb-R\>\\<around*|[|a,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    Hence <math|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    giving <math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    Together with <smart-ref|eq 18.104.003> it follows that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  To summarize the above lemmas we have by <reference|set of segments is a
  sigma algebra>, <reference|sigma algebra of half open intervals>,
  <reference|half open interval and Borel Sets>,<reference|closed intervals
  and Borel Sets>,<smart-ref|]-@@,a]>,<smart-ref|]a,@@[> and
  <smart-ref|[a,@@[> that\ 

  <\theorem>
    <label|Borel sets on R and Lebesgue sets>For <math|\<cal-L\>> the set of
    Lebesgue measurable sets of <math|\<bbb-R\>> (see <reference|Lebesgue
    measure> in <smart-ref|Lebesgue>) we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-L\>>>>>
    </eqnarray*>

    constructing the measure space <math|<around*|\<langle\>|\<bbb-R\>,\<cal-B\><around*|[|\<bbb-R\>|]>,\<lambda\><rsub|\|\<cal-B\><around*|[|\<bbb-R\>|]>>|\<rangle\>>>
  </theorem>

  <subsubsection|Lebesgue measure on <math|\<bbb-R\><rsup|n>>>

  We will develop our theory of a Lebesgue measure on
  <math|\<bbb-R\><rsup|n>> similar to the Lebesgue measure on
  <math|\<bbb-R\><rsup|n>> \ so the first thing we do is define the concept
  of half open intervals in <math|\<bbb-R\><rsup|n>>.

  <\definition>
    Let <math|a,b\<in\>\<bbb-R\><rsup|n>> then we say that

    <\enumerate>
      <item><math|a\<leqslant\>b> if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|a<rsub|i>\<leqslant\>b<rsub|i>>

      <item><math|a\<less\>b> if <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|a<rsub|i>\<less\>b<rsub|i>>
    </enumerate>
  </definition>

  <\definition>
    \ Let <math|n\<in\>\<bbb-N\>> and <math|a,b\<in\>\<bbb-R\><rsup|n>> with
    <math|a\<leqslant\>b> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|a,b|[>>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have a<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>|}>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|a,b|]>>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have a<rsub|i>\<leqslant\>x<rsub|i>\<leqslant\>b<rsub|i>|}>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|]|-\<infty\>,a|[>>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have x<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      we have x<rsub|i>\<less\>a<rsub|i>|}>>>>>
    </eqnarray*>

    the set of all half-open intervals in <math|\<bbb-R\><rsup|n>> is called
    <math|\<cal-R\><rsup|n>>, so <math|\<cal-R\><rsup|n>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\><rsup|n>
    with a\<leqslant\>b|}>>
  </definition>

  The condition <math|a\<leqslant\>b> in the above definition is there to
  allow the empty set in the set of all half-open intervals in
  <math|\<bbb-R\><rsup|n>> as is expressed in the following proposition.

  <\proposition>
    Let <math|n\<in\>\<bbb-R\><rsup|n>> then
    <math|<around*|[|a,b|[>\<in\>\<cal-R\><rsup|n>> is empty if and only if
    <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|a<rsub|i>=b<rsub|i>>
  </proposition>

  <\proof>
    Let <math|<around*|[|a,b|[>=\<emptyset\>> and assume that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<less\>b<rsub|i>> then
    <math|a=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>\<in\><around*|[|a,b|[>>
    contradicting <math|<around*|[|a,b|[>=\<emptyset\>>. Hence if
    <math|<around*|[|a,b|[>=\<emptyset\>> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|a<rsub|i>=b<rsub|i>>. On the other hand if there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|a<rsub|i>=b<rsub|i>> then if <math|x\<in\><around*|[|a,b|[>> we
    have <math|a<rsub|i>\<leqslant\>x\<less\>a<rsub|i>> a contradiction so
    <math|<around*|[|a,b|[>=\<emptyset\>>
  </proof>

  The endpoints of a non empty half-open intervals in
  <math|\<bbb-R\><rsup|n>> are unique just like endpoints in
  <math|\<bbb-R\>>.\ 

  <\proposition>
    <label|endpoints are unique for halfopen intervals in R^n>Let
    <math|n\<in\>\<bbb-N\>> and <math|\<emptyset\>\<neq\>R\<in\>\<cal-R\><rsup|n>>
    then there exists a unique <math|a,b\<in\>\<bbb-R\><rsup|n>> such that
    <math|R=<around*|[|a,b|[>>.\ 
  </proposition>

  <\proof>
    By the definition of <math|\<cal-R\><rsup|n>> \ there exists a
    <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> such that
    <math|R=<around*|[|a,b|[>> which proves existence. Assume that also
    <math|R=<around*|[|a<rprime|'>,b<rprime|'>|[>> Using <reference|equality
    of product of sets (1)> and the fact that <math|R\<neq\>\<emptyset\>> we
    must have then that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>\<neq\>\<emptyset\>>
    hence using <reference|bounds of a half open interval> we must have that
    <math|a<rsub|i>=a<rsub|i><rprime|'>> and
    <math|b<rsub|i>=b<rsub|i><rprime|'>> proving that
    <math|a=a<rprime|'>\<wedge\>b=b<rprime|'>>.
  </proof>

  Using the above we can define then the volume of a interval in
  <math|\<bbb-R\><rsup|n>> and begin or end of a interval in
  <math|\<bbb-R\><rsup|n>>

  <\definition>
    Let <math|n\<in\>\<bbb-N\>> then <math|begin:\<cal-R\><rsup|n>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\><rsup|n>>
    and <math|end:\<cal-R\><rsup|n>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\><rsup|n>>
    are defined by <math|begin<around*|(|R|)>=a> and
    <math|end<around*|(|R|)>=b> where <math|R=<around*|[|a,b|[>>.
  </definition>

  <\definition>
    Let <math|n\<in\>\<bbb-N\>> then <math|v<rsup|n>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by <math|v<rsup|n><around*|(|\<emptyset\>|)>=0> and if
    <math|R\<neq\>\<emptyset\>> <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>
    where <math|R=<around*|[|a,b|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
  </definition>

  <\note>
    <label|intervals in R^1>If <math|n=1> then <math|\<bbb-R\><rsup|n>=1> and
    if <math|R\<in\>\<cal-R\><rsup|1>> then there exists a
    <math|a,b\<in\>\<bbb-R\>> with <math|a<rsub|1>=a\<leqslant\>b=b<rsub|1>>
    such that <math|R=<around*|[|a,b|[>=<big|prod><rsub|i\<in\><around*|{|1|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    so that <math|\<cal-R\><rsup|1>=\<cal-I\>>. Further we have that
    <math|v<rsup|1><around*|(|R|)>=<big|prod><rsub|i=1><rsup|1>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=l<around*|(|R|)>>
  </note>

  <\lemma>
    <label|volume is semi-additive>Let <math|n\<in\>\<bbb-N\>>,
    <math|R\<in\>\<cal-R\><rsup|n>> and <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
    such that <math|R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>
    then <math|v<rsup|n><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>>
  </lemma>

  <\proof>
    we prove this by induction on <math|n> so let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\>R\<in\>\<cal-R\><rsup|n>,\<forall\><around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>
    with R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i > we have
    v<rsup|n><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>|}>>
    then\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|R\<in\>\<cal-R\><rsup|1>> and
      <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-R\><rsup|1>>
      then (see <reference|intervals in R^1>) we have that
      <math|R\<in\>\<cal-I\>> and <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\>>.
      So we can apply <reference|length is semi-additive>, giving
      <math|v<rsup|1><around*|(|R|)>=l<around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|R<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>,>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|R\<in\>\<cal-R\><rsup|n+1>> and
      <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n+1>>
      such that <math|R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>,
      then <math|R=<around*|[|a,b|[>> and
      <math|R<rsub|i>=<around*|[|a<rsup|i>,b<rsup|i>|[>> where
      <math|a,b,a<rsup|i>,b<rsup|i>\<in\>\<cal-R\><rsup|n+1><rsup|>> such
      that <math|a\<leqslant\>b> and <math|a<rsub|i>\<leqslant\>b<rsub|i>>.
      If we write

      <\equation>
        <label|eq 18.100.001.2>V=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<geqslant\>0
      </equation>

      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|R|)>>|<cell|=>|<cell|v<rsup|n+1><around*|(|<around*|[|a,b|[>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n+1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n+1><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>|)>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>>>>
      </eqnarray*>

      proving\ 

      <\equation>
        <label|eq 18.100.001>v<rsup|n+1><around*|(|R|)>=V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>
      </equation>

      Take now <math|\<varepsilon\>\<gtr\>0> then for <math|r\<in\>\<bbb-R\>>
      with <math|a<rsub|n+1>\<leqslant\>r> define
      <math|H<rsub|r>=<around*|{|x\<in\>\<bbb-R\><rsup|n+1>\|x<rsub|n+1>\<less\>r|}>>.
      Then given <math|i\<in\>\<bbb-N\>> \ <math|\<forall\>x\<in\>R<rsub|i><big|cap>H<rsub|r>>
      we have <math|x<rsub|j>\<in\><around*|[|a<rsup|i><rsub|j>,b<rsup|i><rsub|j>|[>\<Rightarrow\>a<rsup|i><rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsup|i><rsub|j>>
      (<math|j\<in\><around*|{|1,\<ldots\>,n+1|}>>) and
      <math|x<rsub|n+1>\<less\>r> which is equivalent to
      <math|x\<in\><around*|[|a<rsup|i>,<wide|b|\<bar\>><rsup|i>|[>> where
      <math|<wide|b|\<bar\>><rsup|i><rsub|j>=<choice|<tformat|<table|<row|<cell|b<rsup|i><rsub|j>
      if j\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|min<around*|(|b<rsup|i><rsub|n+1>,r|)>>>>>>>(so
      that <math|a\<leqslant\><wide|b|\<bar\>>> and thus that
      <math|R<rsub|i>=<around*|[|a,<wide|b|\<bar\>>|[>>) proving that
      <math|v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|r>|)>> is defined
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|r>|)>>|<cell|=>|<cell|v<rsup|n+1><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>><around*|[|a<rsup|i><rsub|j>,<wide|b|\<bar\>><rsup|i><rsub|j>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|j=1><rsup|n+1><around*|(|<wide|b|\<bar\>><rsup|i><rsub|j>-a<rsup|i><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|<wide|b|\<bar\>><rsup|i><rsub|j>-a<rsup|i><rsub|j>|)>|)>\<cdot\><around*|(|<wide|b|\<bar\>><rsup|i><rsub|n+1>-a<rsup|i><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|j><rsup|i>-a<rsub|j><rsup|i>|)>|)>\<cdot\><around*|(|min<around*|(|b<rsup|i><rsub|n+1>,r|)>-a<rsup|i><rsub|j>|)><eq-number><label|eq
        18.101.001>>>>>
      </eqnarray*>

      Further we have from the above also\ 

      <\equation>
        <label|eq 18.102.001.1>\<forall\>r,s with
        a<rsub|n+1>\<leqslant\>r\<leqslant\>s that
        v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|r>|)>\<leqslant\>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|s>|)>
        \<forall\>i\<in\>\<bbb-N\>
      </equation>

      \ So the following definition is valid

      <\equation>
        <label|eq 18.102.001>A<rsub|\<varepsilon\>>=<around*|{|x\<in\>\|a<rsub|n+1>\<leqslant\>x\<leqslant\>b<rsub|n+1>\<wedge\>V\<cdot\><around*|(|x-a<rsub|n+1>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|x>|)>|}>
      </equation>

      using the above definition we have\ 

      <\equation>
        <label|eq 18.103.001>A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a<rsub|n+1>,b<rsub|n+1>|]>
      </equation>

      As <math|V\<cdot\><around*|(|a<rsub|n+1>-a<rsub|n+1>|)>=0\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|x>|)>>
      and <math|a<rsub|n+1>\<leqslant\>a<rsub|n+1>\<leqslant\>b<rsub|n+1>> we
      have that <math|a<rsub|n+1>\<in\>A<rsub|\<varepsilon\>>> proving that
      <math|A<rsub|\<varepsilon\>>\<neq\>\<emptyset\>>, as also by
      <reference|eq 18.103.001> <math|b<rsub|n+1>> is a upper bound of
      <math|A<rsub|\<varepsilon\>>>, we have by the conditional completeness
      of the real numbers (see <reference|the reals are conditional
      complete>) that\ 

      <\equation>
        <label|eq 18.104.001>\<gamma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>
        exists<infix-and> a<rsub|n+1>\<leqslant\>\<gamma\>\<leqslant\>b<rsub|n+1>
        <around*|(|see <text|<smart-ref|eq 18.103.001>> |)>
      </equation>

      Further as for <math|x\<in\>A<rsub|\<varepsilon\>>> we have
      <math|a<rsub|n+1>\<leqslant\>x\<leqslant\>\<gamma\>> we have by
      <reference|eq 18.102.001.1> that <math|v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|x>|)>\<leqslant\>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.105.001>\<forall\>x\<in\>A<rsub|\<varepsilon\>> we have
        V\<cdot\><around*|(|x-a<rsub|n+1>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|x>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|\<gamma\>-a<rsub|n+1>|)>>|<cell|\<equallim\>>|<cell|V\<cdot\><around*|(|sup<around*|(|A<rsub|\<varepsilon\>>|)>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sup
        of set and sum>>>>|<cell|V\<cdot\>sup<around*|(|<around*|{|x-a<rsub|n+1>\|x\<in\>A<rsub|\<varepsilon\>>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|0\<leqslant\>V<infix-and><text|<smart-ref|-sup
        A=inf -A>>>>|<cell|sup<around*|(|<around*|{|V\<cdot\><around*|(|x-a<rsub|n+1>|)>\|x\<in\>A<rsub|\<varepsilon\>>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.105.001>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)><eq-number><label|eq
        18.106.001>>>>>
      </eqnarray*>

      which proves together with <smart-ref|eq 18.104.001> that\ 

      <\equation>
        <label|eq 18.107.001>\<gamma\>\<in\>A<rsub|\<varepsilon\>>
      </equation>

      Assume now that <math|\<gamma\>\<less\>b<rsub|n+1>>. Using
      <reference|eq 18.104.001> we have then that\ 

      <\equation>
        <label|eq 18.108.001>\<gamma\>\<in\><around*|[|a<rsub|n+1>,b<rsub|n+1>|[>
      </equation>

      Set\ 

      <\equation>
        J=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|(|x,\<gamma\>|)>\<in\>R|}><infix-and>J<rsub|j>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|(|x,\<gamma\>|)>\<in\>R<rsub|j>|}>
        j\<in\>\<bbb-N\>
      </equation>

      Now if we take <math|a<rprime|'>=<around*|(|a<rsub|1>,\<ldots\>,.a<rsub|n>|)>,b<rprime|'>=<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then as <math|a\<leqslant\>b> we have
      <math|a<rprime|'>\<leqslant\>b<rprime|'>> and using <smart-ref|eq
      18.108.001> we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>>|<cell|\<Leftrightarrowlim\><rsub|<text|<smart-ref|eq
        18.108.001>>>>|<cell|a<rprime|'>\<leqslant\>x\<less\>b<rprime|'>\<wedge\>a<rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        a<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>\<wedge\>a<rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,\<gamma\>|)>\<in\>R>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>J>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.110.001>J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-R\><rsup|n>
      </equation>

      Given <math|j\<in\>\<bbb-N\>> we have either\ 

      <\description>
        <item*|<math|\<gamma\>\<in\><around*|[|a<rsup|j<rsub|>><rsub|n+1>,b<rsup|j><rsub|n+1>|[>>>then
        if we take <math|a<rsup|<rprime|'>j>=<around*|(|a<rsub|1><rsup|j>,\<ldots\>,a<rsub|n><rsup|j>|)>,b<rprime|'><rsup|j>=<around*|(|b<rsup|j><rsub|1>,\<ldots\>,b<rsup|j><rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
        we have from <math|a<rsup|j>\<leqslant\>b<rsup|j>> that
        <math|a<rprime|'><rsup|j>\<leqslant\>b<rprime|'><rsup|j>>. Further

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>J<rsub|j>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x,\<gamma\>|)>\<in\>R<rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
          a<rsup|j><rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsup|j><rsub|i><infix-and>a<rsup|j><rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsup|j><rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<gamma\>\<in\><around*|[|a<rsup|j><rsub|n+1>,b<rsup|j><rsub|n+1>|[>>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
          a<rsup|j><rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsup|j><rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a<rprime|'><rsup|j>,b<rprime|'><rsup|j>|[>\<in\>\<cal-R\><rsup|n>>>>>
        </eqnarray*>

        <item*|<math|\<gamma\>\<nin\><around*|[|a<rsup|j><rsub|n+1>,b<rsup|j><rsub|n+1>|[><rsup|>>>then
        <math|J<rsub|i>=\<emptyset\>\<in\>\<cal-R\><rsup|n>>
      </description>

      so in all cases we have\ 

      <\equation>
        <label|eq 18.111.001>J<rsub|j>\<in\>\<cal-R\><rsup|n><infix-and>either
        a<rsup|j><rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsup|j><rsub|n+1>\<Rightarrow\>J<rsub|j>=<around*|[|a<rprime|'><rsup|j>,b<rprime|'><rsup|j>|[>\<Rightarrow\>v<rsup|n><around*|(|J<rsub|j>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsup|j><rsub|i>-a<rsup|j><rsub|i>|)><infix-or>J<rsub|j>=\<emptyset\>
      </equation>

      Now if <math|x\<in\>J> then <math|<around*|(|x\<comma\>\<gamma\>|)>\<in\>R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>
      hence there exists a <math|i\<in\>\<bbb-N\>> such that
      <math|<around*|(|x,\<gamma\>|)>\<in\>R<rsub|i>> proving that
      <math|x\<in\>J<rsub|i>>. So\ 

      <\equation>
        <label|eq 18.112.001>J\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>J<rsub|i>
      </equation>

      As <math|n\<in\>\<cal-S\>> we have combining <reference|eq 18.110.001>,
      <smart-ref|eq 18.111.001> and <smart-ref|eq 18.112.001> we have
      <math|v<rsup|n><around*|(|J|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|J<rsub|i>|)>>,
      further <math|v<rsup|n><around*|(|J|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<equallim\><rsub|<text|<smart-ref|eq
      18.100.001.2>>>V> so we have\ 

      <\equation>
        <label|eq 18.113.001>V=v<rsup|n><around*|(|J|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|J<rsub|i>|)>
      </equation>

      As <math|\<emptyset\>\<neq\>R=<big|prod><rsub|i=1><rsup|n+1><around*|[|a<rsub|i>,b<rsub|i>|[>>
      we have by <smart-ref|conventions for product of sets> that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n+1|}>>
      <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>> hence
      <math|a<rsub|i>\<less\>b<rsub|i>> proving that <math|0\<less\>V>. As we
      have taken <math|\<varepsilon\>\<gtr\>0> we have that
      <math|1+\<varepsilon\>\<gtr\>1> so that
      <math|<frac|V|1+\<varepsilon\>>\<less\>V\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|J<rsub|i>|)>\<equallim\><rsub|<text|<smart-ref|series
      of positive extented reals is increasing>>>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>\|m\<in\>\<bbb-N\>|}>|)>>.
      Using the definition of a supremum it follows then that there exists a
      <math|m\<in\>\<bbb-N\>> such that <math|<frac|V|1+\<varepsilon\>>\<less\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|J<rsub|i>|)>>.
      So\ 

      <\equation>
        <label|eq 18.114.001>V\<less\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>
      </equation>

      Define\ 

      <\equation>
        <label|eq 18.115.001>\<chi\>=min<around*|(|<around*|{|b<rsub|n+1>|}><big|cup><around*|{|b<rsup|j><rsub|n+1>\|j\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,m|}>\|J<rsub|j>\<neq\>\<emptyset\>|}>|}>|)>
      </equation>

      Now as <math|>by <reference|eq 18.111.001> we have
      \ <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}> with
      J<rsub|j>\<neq\>\<emptyset\>> that <math|\<gamma\>\<less\>b<rsup|j><rsub|n+1>>
      and we assumed that <math|\<gamma\>\<less\>b<rsub|n+1>> we have that\ 

      <\equation>
        <label|eq 18.116.001>b<rsub|n+1>\<geqslant\>\<cal-X\>\<gtr\>\<gamma\>\<geqslant\>a<rsub|n+1>
      </equation>

      so that <math|v<rsup|n><around*|(|R<rsub|j><big|cap>H<rsub|\<cal-X\>>|)>>
      and <math|v<rsup|n><around*|(|R<rsub|j><big|cap>H<rsub|\<gamma\>>|)>>
      is defined. For <math|j\<in\><around*|{|1,\<ldots\>,m|}>> we have
      either (see <smart-ref|eq 18.111.001>)\ 

      <\description>
        <item*|<math|J<rsub|j>=\<emptyset\>>>then <math|>

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|\<cal-X\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|j>|)>>|<cell|=>|<cell|v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<gamma\>>|)>+0>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
          18.116.001> and <smart-ref|eq 18.102.001.1>>>>|<cell|v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<chi\>>|)>>>>>
        </eqnarray*>

        <item*|<math|J<rsub|j>\<neq\>\<emptyset\>>>then
        <math|a<rsup|j><rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsup|j><rsub|n+1>>
        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<chi\>>|)>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          18.101.001>>>>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|min<around*|(|b<rsup|j><rsub|n+1>,\<cal-X\>|)>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          18.116.001>>>>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|\<chi\>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>+\<gamma\>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|\<cal-X\>-\<gamma\>|)>+<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|\<gamma\>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          18.111.001>>>>|<cell|v<rsup|n><around*|(|J<rsub|j>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>|)>+<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|\<gamma\>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n><around*|(|J<rsub|j>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>|)>+<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i><rsup|j>-a<rsup|j><rsub|i><rsup|>|)>|)>\<cdot\><around*|(|min<around*|(|b<rsup|j><rsub|n+1>,\<gamma\>|)>-a<rsup|j><rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          18.101.001>>>>|<cell|v<rsup|n><around*|(|J<rsub|j>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>|)>+v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<gamma\>>|)>>>>>
        </eqnarray*>
      </description>

      so we have in all cases

      <\equation>
        <label|eq 18.117.001>\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}> we
        have v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|j>|)>\<leqslant\>v<rsup|n+1><around*|(|R<rsub|j><big|cap>H<rsub|\<chi\>>|)>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|\<chi\>-a<rsub|n+1>|)>>|<cell|=>|<cell|V\<cdot\><around*|(|\<chi\>-\<gamma\>+\<gamma\>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|V\<cdot\><around*|(|\<gamma\>-a<rsub|n+1>|)>+V\<cdot\><around*|(|\<chi\>-\<gamma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<smart-ref|eq
        18.106.001>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+V\<cdot\><around*|(|\<chi\>-\<gamma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.114.001>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m><around*|(|v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.117.001>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<chi\>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.116.001> and <smart-ref|eq 18.102.001.1>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<chi\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<chi\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|\<chi\>>|)>>>>>
      </eqnarray*>

      proving using <reference|eq 18.116.001> that
      <math|\<chi\>\<in\>A<rsub|\<varepsilon\>>> so that
      <math|\<chi\>\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<gamma\>>
      contradicting <smart-ref|eq 18.116.001>. Hence the assumption
      <math|\<gamma\>\<less\>b<rsub|n+1>> must be wrong. Combining this with
      <reference|eq 18.104.001> proves that
      <math|b<rsub|n+1>=\<gamma\>\<in\>A<rsub|\<varepsilon\>>> (see
      <smart-ref|eq 18.107.001>). So by the definition of
      <math|A<rsub|\<varepsilon\>>> we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>|<cell|\<leqslant\>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i><big|cap>H<rsub|b<rsub|n+1>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
        18.101.001>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><around*|[|<around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsup|i><rsub|j>-a<rsup|i><rsub|j>|)>|)>\<cdot\><around*|(|min<around*|(|b<rsup|i><rsub|n+1>,b<rsup|i><rsub|n+1>|)>-a<rsup|i><rsub|n+1>|)>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><around*|[|<around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsup|i><rsub|i>-a<rsup|i><rsub|j>|)>|)>\<cdot\><around*|(|b<rsup|i><rsub|n+1>-a<rsup|i><rsub|n+1>|)>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
        18.101.001>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i>|)><eq-number><label|eq
        18.119.001.1>>>>>
      </eqnarray*>

      As we have chosen <math|\<varepsilon\>> arbitrary it follows (using
      <smart-ref|consequence of the Archimedean property (2)> (6)) that\ 

      <\equation*>
        v<rsup|n+1><around*|(|R|)>\<equallim\><rsub|<text|<smart-ref|eq
        18.100.001>>>V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i>|)>
      </equation*>
    </description>
  </proof>

  We can now define a outer measure based on the volume of a half open
  interval.

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>> then <math|\<varphi\><rsup|n>:\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<varphi\><rsup|n><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>
    such that A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>|)>>
    then <math|\<varphi\><rsup|n>> is a outer-measure. Further
    <math|\<forall\>A\<in\>\<cal-R\><rsup|n>> we have
    <math|v<rsup|n><around*|(|A|)>=\<varphi\><rsup|n><around*|(|A|)>.>

    <\proof>
      We have

      <\enumerate>
        <item><math|\<emptyset\>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|i,i|[>>

        <item>Let <math|x\<in\>\<bbb-R\><rsup|n>> then using a consequence of
        the Archimedean property of the real numbers (see
        <reference|consequence of the archimedean property for the reals>)
        there exists <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> a
        <math|n<rsub|i>\<in\>\<bbb-N\>>, such that
        <math|<around*|\||x<rsub|i>|\|>\<less\>n<rsub|i>\<Rightarrow\>x<rsub|i>,-x<rsub|i>\<less\>n<rsub|i>\<Rightarrow\>x<rsub|i>\<in\><around*|[|-n<rsub|i>,n<rsub|i>|[>>,
        proving that <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-n<rsub|i>,n<rsub|i>|[>>.
        Hence if we take <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
        by <math|R<rsub|i>=<big|prod><rsub|i\<in\>\<bbb-N\>><around*|[|-n<rsub|i>,n<rsub|i>|[>\<subseteq\>\<cal-R\><rsup|n>>
        we have\ 

        <\equation*>
          \<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>
        </equation*>

        <item><math|\<varphi\><rsup|n><around*|(|\<emptyset\>|)>=0> by
        definition

        <item>Using <reference|volume is semi-additive> we have
        <math|\<forall\>A\<in\>\<cal-R\><rsup|n>,<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
        with <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
        that <math|v<rsup|n><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|A<rsub|i>|)>>
      </enumerate>

      Using the above with <reference|constructing a outer measure> the
      theorem is proved.
    </proof>
  </theorem>

  \ We are now ready to define a <math|\<sigma\>>-algebra and a measure on
  <math|\<bbb-R\><rsup|n>> using the Carathéodory theorem (see
  <reference|Caratheodory>)

  <\definition>
    <label|Lebesgue R^n><index|Lebesgue measurable
    set><index|<math|\<cal-L\>>><index|<math|\<lambda\><rsup|n>>>Let
    <math|\<varphi\><rsup|n><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>
    where A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>|}>|)>> be
    the outer measure from the previous lemma then the
    <math|\<sigma\>>-algebra defined by the Carathéodory method
    <math|<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<varphi\><rsup|n><around*|(|A|)>=\<varphi\><rsup|n><around*|(|A<big|cap>E|)>+\<varphi\><rsup|n><around*|(|A\\E|)>|}>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<varphi\><rsup|n><around*|(|A|)>\<geqslant\>\<varphi\><rsup|n><around*|(|A<big|cap>E|)>+\<varphi\><rsup|n><around*|(|A\\E|)>|}>>
    is called the set of Lebesgue measurable sets and is noted by
    <math|\<cal-L\><rsup|n>>. The measure
    <math|\<lambda\><rsup|n>:\<cal-L\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<lambda\><rsup|n>=\<varphi\><rsub|<rsup|n>\|\<cal-L\>>>
    is called the Lebesgue measure. This makes
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
    a measure space.
  </definition>

  Just as with the real numbers we proceed now to prove that the Borel
  algebra defined by the open sets in <math|\<bbb-R\><rsup|n>> is included in
  <math|\<cal-L\><rsup|n>>. First we prove that the set of half open spaces
  are Lebesgue measurable.

  <\lemma>
    <label|half spaces are Lebesgue>Let <math|n\<in\>\<bbb-N\>>,
    <math|x\<in\>\<bbb-R\>> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    then <math|H<rsup|i><rsub|x>=<around*|{|y\<in\>\<bbb-R\><rsup|n>\|y<rsub|i>\<less\>x|}>>
    is Lebesgue measurable or <math|H<rsup|i><rsub|\<varepsilon\>>\<in\>\<cal-L\><rsup|n>>
  </lemma>

  <\proof>
    First we prove that\ 

    <\equation>
      <label|eq 18.123.002>\<forall\>R\<in\>\<cal-R\><rsup|n> we have
      v<rsup|n><around*|(|R|)>=v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>+v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>
    </equation>

    <\proof>
      We must consider the following cases for <math|R>

      <\description>
        <item*|<math|R\<subseteq\>H<rsup|i><rsub|x>>>then

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>+v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>>|<cell|=>|<cell|v<rsup|n><around*|(|R|)>+v<rsup|n><around*|(|\<emptyset\>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n><around*|(|R|)>>>>>
        </eqnarray*>

        <item*|<math|R<big|cap>H<rsup|i><rsub|x>=\<emptyset\>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>+\<lambda\>v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>>|<cell|=>|<cell|v<rsup|n><around*|(|\<emptyset\>|)>+v<rsup|n><around*|(|R|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n><around*|(|R|)>>>>>
        </eqnarray*>

        <item*|<math|R\<nsubseteq\>H<rsup|i><rsub|x>\<wedge\>R<big|cap>H<rsup|i><rsub|x>\<neq\>\<emptyset\>>>then
        <math|R\<neq\>\<emptyset\>> so there exists a
        <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<less\>b> such that
        <math|R=<around*|[|a,b|[>>. Consider now for <math|x> the following
        cases\ 

        <\description>
          <item*|<math|b<rsub|i>\<leqslant\>x>>let <math|y\<in\>R> then
          <math|a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<leqslant\>x\<Rightarrow\>y<rsub|i>\<less\>x>
          so that <math|y\<in\>H<rsup|i><rsub|x>>, hence
          <math|R\<subseteq\>H<rsup|i><rsub|x>> contradicting
          <math|R\<nsubseteq\>H<rsup|i><rsub|x>>

          <item*|<math|x\<leqslant\>a<rsub|i>>>as
          <math|R<big|cap>H<rsup|i><rsub|x>\<neq\>\<emptyset\>> there exists
          a <math|y\<in\>R<big|cap>H<rsup|i><rsub|x>> so that
          <math|a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>> and
          <math|y<rsub|i>\<less\>x\<leqslant\>a<rsub|i>> giving the
          contradiction <math|y<rsub|i>\<less\>y<rsub|i>>
        </description>

        So we must have that <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>>, then
        we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|y\<in\>R<big|cap>H<rsup|i><rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<wedge\>y<rsub|i>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|x\<less\>b<rsub|j>>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|a,<wide|b|\<bar\>>|[>
          where <wide|b|\<bar\>><rsub|j>=<choice|<tformat|<table|<row|<cell|x
          if j=i>>|<row|<cell|b<rsub|i> if
          j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>>>>
        </eqnarray*>

        so that <math|R<big|cap>H<rsup|i><rsub|x>\<in\>\<cal-R\><rsup|n>> and
        <math|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>> exists
        where\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>>|<cell|=>|<cell|<big|prod><rsub|j\<in\><around*|{|1,,\<ldots\>,n|}>><around*|(|<wide|b|\<bar\>><rsub|j>-a<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|x-a<rsub|i>|)><eq-number><label|eq
          18.124.002>>>>>
        </eqnarray*>

        Further we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|y\<in\>R\\H<rsup|i><rsub|x>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<wedge\>x\<leqslant\>y<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|a<rsub|i>\<less\>x>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>\<wedge\>x\<leqslant\>y<rsub|i>\<less\>b<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|<wide|a|\<bar\>>,b|[>
          where <wide|a|\<bar\>><rsub|j>=<choice|<tformat|<table|<row|<cell|x
          if j=i>>|<row|<cell|a<rsub|j> if
          j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>>>>
        </eqnarray*>

        so that <math|R\\H<rsup|i><rsub|x>\<in\>\<cal-R\><rsup|n>> and
        <math|v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>> exists where\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>>|<cell|=>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|j>-<wide|a|\<bar\>><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|b<rsub|i>-x|)><eq-number><label|eq
          18.125.002>>>>>
        </eqnarray*>

        So we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>+v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
          18.124.002> and <smart-ref|eq 18.125.002>>>>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|x-a<rsub|i>|)>+<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|b<rsub|i>-x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|[|x-a<rsub|i>+b<rsub|i>-x|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|j>-a<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n><around*|(|R|)>>>>>
        </eqnarray*>
      </description>

      so in all cases we have <math|v<rsup|n><around*|(|R<big|cap>H<rsup|i><rsub|x>|)>+v<rsup|n><around*|(|R\\H<rsup|i><rsub|x>|)>=v<rsup|n><around*|(|R|)>>
      proving <smart-ref|eq 18.123.002>
    </proof>

    Let now <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>> and take
    <math|\<varepsilon\>\<gtr\>0> then from the definition of
    <math|\<varphi\><rsup|n>> and the infinum there exists a
    <math|<around*|{|R<rsub|j>|}><rsub|j\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
    with <math|A\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|i>> such
    that

    <\equation>
      <label|eq 18.126.002>\<varphi\><rsup|n><around*|(|A|)>\<leqslant\><big|sum><rsub|j=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|j>|)>\<less\>\<varphi\><rsup|n><around*|(|A|)>+\<varepsilon\>.
    </equation>

    Hence <math|A<big|cap>H<rsup|i><rsub|x>\<subseteq\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|j>|)><big|cap>H<rsup|i><rsub|x>\<equallim\><rsub|<text|<reference|generalized
    distributive laws>>><big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap>H<rsub|x><rsup|i>|)>>
    and <math|A\\H<rsup|i><rsub|x>\<subseteq\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|j>|)>\\H<rsup|i><rsub|x><rsub|<text|<smart-ref|generalized
    difference>>><big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>>.
    Hence using the definition of a outer measure we have

    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|A<big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|A\\H<rsup|i><rsub|x>|)>>|<cell|\<leqslant\>>|<cell|\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>|)>+\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>+<big|sum><rsub|j=1>\<varphi\><rsup|n><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sum
      of series in the extended reals>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      18.123.002>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
      18.126.002>>>>|<cell|\<varphi\><rsup|n><around*|(|A|)>+\<varepsilon\>>>>>
    </eqnarray*>

    which by the fact that <math|\<varepsilon\>> is chosen arbitrary and
    <smart-ref|consequence of the Archimedean property (2)> proves that\ 

    <\equation*>
      \<varphi\><rsup|n><around*|(|A<big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|A\\H<rsup|i><rsub|x>|)>\<leqslant\>\<varphi\><rsup|n><around*|(|A|)>
    </equation*>

    and as <math|A> was chosen arbitrary that\ 

    <\equation*>
      H<rsup|i><rsub|x>\<in\>\<cal-L\><rsup|n>
    </equation*>
  </proof>

  <\corollary>
    <label|sigma algebra of half spaces>Let <math|n\<in\>\<bbb-N\>> then
    <math|\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-L\><rsup|n>>
  </corollary>

  <\proof>
    Using <reference|half spaces are Lebesgue> we have that
    <math|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-L\><rsup|n>>
    then as <math|\<cal-L\><rsup|n>> is a <math|\<sigma\>>-algebra and
    <math|><math|\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>>
    is the smallest <math|\<sigma\>>-algebra covering
    <math|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>>
    the corollary follows.
  </proof>

  Next we extend the above to the half open intervals.\ 

  <\lemma>
    <label|sigma algebra of half open intervals in R^n>Let
    <math|n\<in\>\<bbb-N\>> then <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-L\><rsup|n>>
  </lemma>

  <\proof>
    First given <math|a\<in\>\<bbb-R\><rsup|n>> take <math|
    <around*|]|-\<infty\>,a|[>\<equallim\><rsub|def><around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<less\>a|}>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<less\>a<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x\<in\><around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<less\>a<rsub|i>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x\<in\>H<rsup|i><rsub|a<rsub|i>>>>>>
    </eqnarray*>

    which proves that <math|>

    we prove that\ 

    <\equation>
      <label|eq 18.127.002>\<forall\>a\<in\>\<bbb-R\><rsup|n>
      <around*|]|-\<infty\>,a|[>\<equallim\><rsub|def><around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<less\>a|}>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>H<rsup|j><rsub|x<rsub|j>>
    </equation>

    which by <reference|sigma algebra properties> proves that
    <math|<around*|]|-\<infty\>,a|[>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>H<rsup|j><rsub|a<rsub|j>>\<in\>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>>
    (using <reference|sigma algebra properties>) which proves that

    <\equation>
      <label|eq 18.128.002>\<forall\>a\<in\>\<bbb-R\><rsup|n><space|1em>
      <around*|]|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>
    </equation>

    Next if <math|a,b\<in\>\<bbb-R\><rsup|n>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|[>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<less\>b<rsub|i>\<wedge\>\<neg\><around*|(|x<rsub|i>\<less\>a<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<less\>b<rsub|i>\<wedge\>a<rsub|i>\<leqslant\>x<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,b|[>>>>>
    </eqnarray*>

    hence <math|<around*|[|a,b|[>=<around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>>
    (using <reference|eq 18.127.002> and <smart-ref|sigma algebra
    properties>). So we have that <math|\<cal-R\><rsup|n>\<subseteq\>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>>.
    Hence as <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>> is the smallest
    <math|\<sigma\>>-algebra containing <math|\<cal-R\><rsup|n>> we have\ 

    <\equation>
      <label|eq 18.129.002>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>
    </equation>

    Next let <math|i\<in\>\<bbb-N\>> and <math|x\<in\>\<bbb-R\>> define then
    <math|<around*|{|<around*|[|a<rsub|j>,b<rsub|j>|[>|}><rsub|j\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
    where <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<around*|(|a<rsub|j>|)><rsub|k>=-j> and
    <math|<around*|(|b<rsub|j>|)><rsub|k>=<choice|<tformat|<table|<row|<cell|x
    if k=i>>|<row|<cell|j if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\><big|cup><rsub|j\<in\>\<bbb-N\>><around*|[|a<rsub|j>,b<rsub|j>|[>>|<cell|\<Rightarrow\>>|<cell|y<rsub|i>\<leqslant\>x>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y\<in\>H<rsup|i><rsub|x>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.130.002><big|cup><rsub|j\<in\>\<bbb-N\>><around*|[|a<rsub|j>,b<rsub|j>|[>\<subseteq\>H<rsup|i><rsub|x>
    </equation>

    Let <math|y\<in\>H<rsup|i><rsub|x>> then for all
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> there exists a
    <math|n<rsub|k>\<in\>\<bbb-N\>> such that
    <math|<around*|\||y<rsub|k>|\|>\<less\>n<rsub|k>> (see
    <reference|consequence of the archimedean property for the reals>) so
    that <math|y<rsub|k>,-y<rsub|x>\<less\>n<rsub|k>\<Rightarrow\>-n<rsub|k>\<less\>y<rsub|k>\<less\>n<rsub|k>>.
    If we take <math|N=max<around*|(|<around*|{|n<rsub|k>\|k\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<around*|(|a<rsub|N>|)><rsub|k>=-N\<less\>y<rsub|k>> and
    <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>> we
    have <math|y<rsub|k>\<less\>N=<around*|(|b<rsub|N>|)><rsub|k>> and
    <math|y<rsub|i>\<less\>x=<around*|(|b<rsub|N>|)><rsub|i>> proving that
    <math|y\<in\><around*|[|a<rsub|N>,b<rsub|N>|[>>. Hence
    <math|H<rsup|i><rsub|x>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>><around*|[|a<rsub|j>,b<rsub|j>|[>>
    which together with <smart-ref|eq 18.130.002> proves that
    <math|H<rsup|i><rsub|x>=<big|cup><rsub|J\<in\>\<bbb-N\>><around*|[|a<rsub|j>,b<rsub|j>|[>\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    (because of the definition of a <math|\<sigma\>>-algebra). So we have
    proved that <math|><math|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    or\ 

    <\equation>
      <label|eq 18.131.002>\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation>

    proving together with <smart-ref|eq 18.129.002> that\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|[|<around*|{|H<rsup|i><rsub|x>\|i\<in\><around*|{|1,\<ldots\>,n|}><infix-and>x\<in\>\<bbb-R\>|}>|]>\<subseteq\><rsub|<text|<smart-ref|sigma
      algebra of half spaces>>>\<cal-L\><rsup|n>
    </equation*>
  </proof>

  Now we introduce the concept of dyadic cubes to prove that every open sets
  is a countable union of half open intervals. Similar to what we have done
  in <smart-ref|Dyadic intervals and open sets>.

  <\definition>
    <label|Dyadic cube><index|dyadic cube><index|<math|\<cal-D\><rsup|n><rsub|m>>><index|<math|\<cal-D\><rsup|n>>>Let
    <math|n,m\<in\>\<bbb-N\>> and <math|z\<in\>\<bbb-Z\><rsup|n>> then
    <math|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>>
    is a dyadic cube of order <math|m>. The set of dyadic cubes of order
    <math|m> is noted as <math|\<cal-D\><rsup|n><rsub|m>> so
    <math|\<cal-D\><rsup|n><rsub|m>=<around*|{|<around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>\|z\<in\>\<bbb-Z\><rsup|n>|}>>.
    The set of all dyadic intervals is noted as <math|\<cal-D\><rsup|n>> so
    <math|\<cal-D\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<cal-D\><rsup|n><rsub|i>>.
  </definition>

  <\note>
    As <math|<frac|z|2<rsup|n>>\<in\><around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>>
    it follows that dyadic cubes are always non empty.
  </note>

  Dyadic cubes have the same properties as Dyadic intervals (see
  <smart-ref|Dyadic properties>)

  <\lemma>
    <label|Dyadic cubes properties>Let <math|n\<in\>\<bbb-N\>> then dyadic
    cubes have the following properties\ 

    <\enumerate>
      <item><math|\<forall\>m\<in\>\<bbb-N\>> and
      <math|\<forall\>R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with
      <math|R\<neq\>Q> we have <math|R<big|cap>Q=\<emptyset\>>

      <item>If <math|k,l\<in\>\<bbb-N\>> with <math|k\<leqslant\>l> we have
      <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|l>>,
      <math|\<forall\>Q\<in\>\<cal-D\><rsup|n><rsub|k>> we have either
      <math|R\<subseteq\>Q> or <math|Q<big|cap>R=\<emptyset\>>

      <item><math|\<forall\>m\<in\>\<bbb-N\>> we have
      <math|\<bbb-R\><rsup|n>=<big|sqcup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>
      (a pairwise disjoint union)

      <item><math|\<forall\>m\<in\>\<bbb-N\>> and
      <math|\<forall\>R\<in\>\<cal-D\><rsub|m><rsup|n>> we have
      <math|v<rsup|n><around*|(|R|)>=2<rsup|-n\<cdot\>m>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|m\<in\>\<bbb-N\>> and
      <math|R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with <math|R\<neq\>Q> then
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>
      and <math|Q=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|w<rsub|i>|2<rsup|m>>,<frac|w<rsub|i>+1|2<rsup|m>>|[>>
      where <math|z,w\<in\>\<bbb-Z\><rsup|n>>. As <math|R\<neq\>Q> there
      exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|<around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>\<neq\><around*|[|<frac|w<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>>,
      using then <reference|Dyadic properties> (2) we have that
      <math|<around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>=\<emptyset\>>.
      So using <smart-ref|conventions for product of sets> we have that

      <\equation*>
        R<big|cap>Q=\<emptyset\>
      </equation*>

      <item>Let <math|k,l\<in\>\<bbb-N\>> with <math|k\<leqslant\>l> and
      <math|R\<in\>\<cal-D\><rsup|n><rsub|l>>,
      <math|Q\<in\>\<cal-D\><rsup|n><rsub|k>> then there exists
      <math|z,w\<in\>\<bbb-R\><rsup|n>> so that
      <math|R=<around*|[|<frac|z|2<rsup|l>>,<frac|z+1|2<rsup|l>>|[>> and
      <math|Q=<around*|[|<frac|w|2<rsup|k>>,<frac|w+1|2<rsup|k>>|[>>. If
      <math|R\<subseteq\>Q> then as <math|R\<neq\>\<emptyset\>> we have
      <math|R<big|cap>Q=R\<neq\>\<emptyset\>>. If <math|R\<nsubseteq\>Q> we
      have either\ 

      <\description>
        <item*|<math|k=l>>then as <math|R\<nsubseteq\>Q> we have that
        <math|R\<neq\>Q> and thus by (1) that <math|R<big|cap>Q=\<emptyset\>>

        <item*|<math|k\<less\>l>>then we have either\ 

        <\description>
          <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\><around*|[|<frac|z<rsub|i>|2<rsup|l>>,<frac|z<rsub|i>+1|2<rsup|l>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>=\<emptyset\>>>then
          using <smart-ref|conventions for product of sets> it follows that
          <math|R<big|cap>Q=\<emptyset\>>

          <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\><around*|[|<frac|z<rsub|i>|2<rsup|l>>,<frac|z<rsub|i>+1|2<rsup|l>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>>then
          using <reference|Dyadic properties> (1) we have that
          <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
          <math|<around*|[|<frac|z<rsub|i>|2<rsup|l>>,<frac|z<rsub|i>+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>>
          so that using <smart-ref|conventions for product of sets> it
          follows that <math|R\<subseteq\>Q> contradiction
          <math|R\<nsubseteq\>Q>. So this case can not occur.
        </description>
      </description>

      so we must have <math|R<big|cap>Q=\<emptyset\>>.

      <item>Let <math|m\<in\>\<bbb-N\>>. If <math|x\<in\>\<bbb-R\><rsup|n>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|x<rsub|i>\<in\>\<bbb-R\>\<Rightarrowlim\><rsub|<text|<smart-ref|Dyadic
      properties> (3)>>\<exists\>z<rsub|i>\<in\>\<bbb-Z\> >such that
      <math|x<rsub|i>\<in\><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>.
      Hence if we take <math|z=<around*|{|z<rsub|1>,\<ldots\>,z<rsub|n>|}>\<in\>\<bbb-Z\><rsup|n>>
      we have that <math|x\<in\><around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>\<in\>\<cal-D\><rsup|n><rsub|m>>
      proving that <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>.
      As also <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|m>> we have
      <math|R\<subseteq\>\<bbb-R\><rsup|n>> it follows that
      <math|<big|cup><rsub|R\<in\>\<b-D\><rsup|n><rsub|m>>R\<subseteq\>\<bbb-R\><rsup|n>>.
      So also using (1) we have

      <\equation*>
        \<bbb-R\><rsup|n>=<big|sqcup><rsub|R\<in\>\<cal-R\><rsup|n><rsub|m>>R
      </equation*>

      <item>If <math|R\<in\>\<cal-R\><rsup|n><rsub|m>> then
      <math|\<exists\>z\<in\>\<bbb-Z\><rsup|n>> such that
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>>
      so that\ 

      <\equation*>
        v<rsup|n><around*|(|R|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<frac|z<rsub|i>+1-z<rsub|i>|2<rsup|m>>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><frac|1|2<rsup|m>>=<frac|1|2<rsup|n\<cdot\>m>>
      </equation*>
    </enumerate>
  </proof>

  Next we prove that the set of Dyadic cubes is denumerable\ 

  <\lemma>
    <label|set of dyadic cubes is denumerable>Let <math|n,m\<in\>\<bbb-N\>>
    then <math|\<cal-D\><rsup|n><rsub|m>> is denumerable and in addition
    <math|\<cal-D\><rsup|n>> is also denumerable
  </lemma>

  <\proof>
    Let <math|n,m\<in\>\<bbb-N\><rsub|0>>. As <math|\<bbb-Z\>> is denumerable
    (see <reference|the integer numbers in the reals are denumerable>) we
    have by <smart-ref|finite product of finite or denumerable sets> that
    <math|\<bbb-Z\><rsup|n>> is also denumerable. Define now
    <math|\<beta\>:\<bbb-Z\><rsup|n>\<rightarrow\>\<cal-D\><rsup|n><rsub|m>>
    by <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>
    then <math|\<beta\>> is a bijection

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|z|)>=\<beta\><around*|(|w|)>>
      then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<around*|[|<frac|w|2<rsup|m>>,<frac|w+1|2<rsup|m>>|[>\<Rightarrowlim\><rsub|dyadic
      intervals ar not empty<infix-and><text|<smart-ref|endpoints are unique
      for halfopen intervals in R^n>>><frac|z|2<rsup|m>>=<frac|w|2<rsup|m>>>
      proving that <math|z=w>

      <item*|surjectivity>If <math|D\<in\>\<cal-D\><rsup|n><rsub|m>> then
      <math|\<exists\>z\<in\>\<bbb-Z\><rsup|n>> such that
      <math|D=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=\<beta\><around*|(|z|)>>
    </description>

    so <math|\<cal-D\><rsup|n><rsub|m>> is denumerable. Further using
    <smart-ref|denumerable union of denumerable sets is denumerable> we have
    that <math|\<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsup|n><rsub|m>>
    is also denumerable.
  </proof>

  We decompose now open sets in <math|\<bbb-R\><rsup|n>> as a countable union
  of dyadic cubes.\ 

  <\lemma>
    <label|Dyadic cubes and open sets>Let <math|n\<in\>\<bbb-N\>> and
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>> the canonical topology defined
    on <math|\<bbb-R\><rsup|n>> (see <smart-ref|topology of R^n>) then if
    <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> is a
    non empty open set then there exists a denumerable pairwise disjoint
    family <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\><rsup|n>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>
  </lemma>

  <\proof>
    Let <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> be
    a non empty open set in <math|\<bbb-R\><rsup|n>>. We use the following
    definitions for <math|m\<in\>\<bbb-N\>>

    <\equation>
      <label|eq 18.132.002> \<cal-S\><rsub|m>=<around*|{|D\<in\>\<cal-D\><rsup|n><rsub|m>\|D\<subseteq\>U|}>\<subseteq\>\<cal-D\><rsup|n><rsub|m>
    </equation>

    <\equation>
      <label|eq 18.133.002>\<cal-T\><rsub|m>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|0>
      if m=0>>|<row|<cell|<around*|{|D\<in\>\<cal-S\><rsub|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1
      we have \<forall\>P\<in\>\<cal-T\><rsub|i> that
      P<big|cap>D=\<emptyset\>|}>|}> if m\<gtr\>0>>>>>
    </equation>

    from the above definitions it quickly follows that\ 

    <\equation*>
      \<cal-T\><rsub|m>\<subseteq\>\<cal-S\><rsub|m>\<subseteq\>\<cal-D\><rsup|n><rsub|m>\<subseteq\>\<cal-D\><rsup|n>
    </equation*>

    finally we define\ 

    <\equation>
      <label|eq 18.134.002>\<cal-T\>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-T\><rsub|m>\<subseteq\>\<cal-D\><rsup|n>
    </equation>

    First as <math|\<forall\>D\<in\>\<cal-T\>> we have that
    <math|\<exists\>i\<in\>\<bbb-N\>> such that
    <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>S<rsub|i>\<Rightarrow\>D\<subseteq\>U>
    it follows that\ 

    <\equation>
      <label|eq 18.136.002><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
    </equation>

    For the opposite inclusion, take <math|x\<in\>U> then as <math|U> is open
    there exist a <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>
    such that <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    Using <reference|consequence of the archimedean property for the reals>
    there exists a <math|n<rsub|x>\<in\>\<bbb-N\>> such that
    <math|0\<less\><frac|1|n<rsub|x>>\<less\>\<varepsilon\>>. Using
    <smart-ref|Dyadic cubes properties> (3) there exists a
    <math|D=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>|[>\<in\>\<cal-D\><rsup|n><rsub|m>>
    such that <math|x\<in\>D>. So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>>.
    If <math|y\<in\>D> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>>,
    from this it follows that <math|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>\<leqslant\>x<rsub|i>-y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<Rightarrow\>-<frac|1|2<rsup|n<rsub|x>>>\<leqslant\>x<rsub|i>-y<rsub|i>\<less\><frac|1|2<rsup|n<rsub|x>>>\<Rightarrow\>-\<varepsilon\>\<less\>x<rsub|i>-y<rsub|i>\<less\>\<varepsilon\>\<Rightarrow\><around*|\||x<rsub|i>-y<rsub|i>|\|>\<less\>\<varepsilon\>\<Rightarrow\>max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>>
    proving that <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>.
    So we have <math|x\<in\>D\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>
    or <math|D\<in\>\<cal-S\><rsub|n<rsub|x>>>. If we define then
    <math|\<cal-K\><rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n<rsub|x>|}>\|\<exists\>D\<in\>\<cal-S\><rsub|i>
    such that x\<in\>D|}>> then <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>> so
    that <math|\<cal-K\><rsub|x>\<neq\>\<emptyset\>>, hence
    <math|m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)>>. We have now two
    cases to consider

    <\description>
      <item*|<math|m<rsub|x>=1>>then <math|\<exists\>D\<in\>\<cal-S\><rsub|1>=\<cal-T\><rsub|1>\<subseteq\>\<cal-T\>>
      such that <math|x\<in\>D\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>

      <item*|<math|1\<less\>m<rsub|x>>>then
      <math|\<exists\>D\<in\>\<cal-S\><rsub|m<rsub|x>>>(such that
      <math|x\<in\>D>) and for <math|i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>>
      we have <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|x\<nin\>R>. Now as <math|i\<less\>m<rsub|x>> we have by
      <smart-ref|Dyadic cubes properties> (2) that either
      <math|D\<subseteq\>R>, but then as <math|x\<in\>D\<subseteq\>R> we
      contradict <math|x\<nin\>R>, or <math|D<big|cap>R=\<emptyset\>>. So
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>> we have
      <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> we have
      <math|R<big|cap>D=\<emptyset\>> proving that
      <math|D\<in\>\<cal-T\><rsub|m<rsub|x>>\<subseteq\>\<cal-T\>> (see
      <smart-ref|eq 18.133.002>) hence <math|x\<in\>D\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>.
    </description>

    As we have chosen <math|x\<in\>U> arbitrary it follows that
    <math|U\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D> which together with
    <smart-ref|eq 18.136.002> proves\ 

    <\equation>
      <label|eq 18.136.003>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Let <math|D,E\<in\>\<cal-T\>> with <math|D\<neq\>E> then there exists
    <math|k,l\<in\>\<bbb-N\>> such that <math|D\<in\>\<cal-T\><rsub|k>\<subseteq\>\<cal-D\><rsup|n><rsub|k>>,
    <math|E\<in\>\<cal-T\><rsub|l>\<subseteq\>\<cal-D\><rsup|n><rsub|l>>. For
    <math|k,l> we have the following possibilities

    <\description>
      <item*|<math|k=l>>then using <smart-ref|Dyadic cubes properties> we
      have <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|k\<less\>l>>then using <smart-ref|eq 18.133.002> we have
      <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|l\<less\>k>>then using <smart-ref|eq 18.133.002> we have
      <math|D<big|cap>E=\<emptyset\>>
    </description>

    combining this with <smart-ref|eq 18.136.003> proves that\ 

    <\equation>
      <label|eq 18.137.003>U=<big|sqcup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Assume now that <math|\<cal-T\>> is finite. Then as
    <math|U\<neq\>\<emptyset\>> we must have that
    <math|\<cal-T\>\<neq\>\<emptyset\>> then
    <math|m=min<around*|{|begin<around*|(|D|)><rsub|1>\|D\<in\>\<cal-T\>|}>>
    is well defined and thus there exists a
    <math|R=<around*|[|a,b|[>\<in\>\<cal-T\>>, such that <math|a<rsub|1>=m>.
    As <math|a\<in\>R\<subseteq\>U> a open set \ there exists a
    <math|\<varepsilon\>\<gtr\>0> such that
    <math|a\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>.
    As \ <math|a-<frac|\<varepsilon\>|2>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>
    there exists a <math|D=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-T\>>
    such that <math|a-<frac|\<varepsilon\>|2>\<in\>D> then
    <math|m\<leqslant\>a<rprime|'><rsub|1>=begin<around*|(|D|)><rsub|1>\<leqslant\>a<rsub|1>-<frac|\<varepsilon\>|2>\<less\>a<rsub|1>=m<rsub|>>
    a contradiction. Se we must have that <math|\<cal-T\>> is infinite. As
    <math|\<cal-T\>\<subseteq\>\<cal-D\><rsup|n>> a denumerable set(see
    <smart-ref|set of dyadic cubes is denumerable>) it follows from
    <smart-ref|subsets of denumerable sets are finite or denumerable> that\ 

    <\equation>
      <label|eq 18.138.003>\<cal-T\> is denumerable
    </equation>

    So there exist a bijection <math|\<beta\>:\<bbb-R\>\<rightarrow\>\<cal-T\>>,
    define then <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|D<rsub|i>=\<beta\><around*|(|i|)>> then we have using
    <smart-ref|reindexing of a family>

    <\equation*>
      U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
    </equation*>

    proving the lemma.
  </proof>

  Actually if we don't need to write a open set as union of
  <with|font-series|bold|disjoint> non empty intervals we do not need to use
  dyadic intervals. This is illutrated in the following lemma.

  <\lemma>
    <label|open set as union of ]a,b]>Let <math|n\<in\>\<bbb-N\>> and define
    <math|\<cal-I\><rsup|n>=<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n>
    with a\<leqslant\>b|}>> then <math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    there exists a <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsup|n>>
    such that <math|\<emptyset\>\<neq\>U=<big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>
  </lemma>

  <\proof>
    Take <math|U\<in\>\<cal-T\>> and define

    <\equation>
      <label|eq 18.142.005>\<cal-U\>=<around*|{|<around*|(|q,q<rprime|'>|)>\<in\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><rsup|n>\|q\<leqslant\>q<rprime|'>\<wedge\><around*|]|q,q<rprime|'>|]>\<subseteq\>U
      |}>\<subseteq\>\<bbb-Q\><rsup|n>\<times\>\<bbb-Q\><rsup|n>
    </equation>

    Using <smart-ref|natural,whole and rational numbers are denumerable>,
    <smart-ref|product of countable sets is countable> and <smart-ref|subsets
    of countable sets are countable> we have that\ 

    <\equation>
      <label|eq 18.143.005>\<cal-U\> is countable
    </equation>

    By the definition of <math|\<cal-U\>> it is clear that\ 

    <\equation>
      <label|eq 18.144.005><big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-U\>><around*|]|q,q<rprime|'>|]>\<subseteq\>U
    </equation>

    Let <math|x\<in\>U> a open set there exists a
    <math|\<delta\><rsub|x>\<gtr\>0> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|x>|)>=<around*|{|y\<in\>\<bbb-R\><rsup|n>\|max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<delta\><rsub|x>|}>>.
    Given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> there exists by
    <smart-ref|density theorem for the reals> a
    <math|q<rsub|i>,q<rprime|'><rsub|i>\<in\>\<bbb-Q\>> such that
    <math|x<rsub|i>-\<delta\><rsub|x>\<less\>q<rsub|i>\<less\>x<rsub|i>\<less\>q<rprime|'><rsub|i>\<less\>x<rsub|i>+\<delta\><rsub|x>>.
    Define then <math|q=<around*|(|q<rsub|1>,\<ldots\>,q<rsub|n>|)>,q<rprime|'>=<around*|(|q<rprime|'><rsub|1>,\<ldots\>,q<rprime|'><rsub|n>|)>\<in\>\<bbb-Q\><rsup|n>>
    then <math|x\<in\><around*|]|q,q<rprime|'>|]>> and if
    <math|y\<in\><around*|]|q,q<rprime|'>|]>> we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|x<rsub|i>-\<delta\><rsub|x>\<less\>q\<less\>y\<leqslant\>q<rprime|'>\<less\>x<rsub|i>+\<delta\><rsub|x>\<Rightarrow\>x<rsub|i>-y<rsub|i>\<less\>\<delta\><rsub|x>,y<rsub|i>-x<rsub|i>\<less\>\<delta\><rsub|x>\<Rightarrow\><around*|\||x<rsub|i>-y<rsub|i>|\|>\<less\>\<delta\><rsub|x>>
    so that <math|<around*|\<\|\|\>|x-y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<delta\><rsub|x>>
    proving that <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\><rsub|x>|)>>.
    So <math|x\<in\><around*|]|q,q<rprime|'>|]>\<subseteq\>U> hence
    <math|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-U\>> or
    <math|x\<in\><big|cup><rsub|<around*|(|q,q<rprime|'>|)>><around*|]|q,q<rprime|'>|]>>
    proving that <math|U\<subseteq\><big|cup><rsub|<around*|(|q,q<rprime|'>|)>><around*|]|q,q<rprime|'>|]>>
    and thus by <smart-ref|eq 18.144.005> we have\ 

    <\equation>
      <label|eq 18.145.005>U=<big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-U\>><around*|]|q,q<rprime|'>|]>
    </equation>

    Now as <math|\<cal-U\>> is countable we have either\ 

    <\description>
      <item*|<math|\<cal-U\> is finite>>Then as <math|\<emptyset\>\<neq\>U>
      we have that <math|\<cal-U\>\<neq\>\<emptyset\>> and thus there exists
      a <math|m\<in\>\<bbb-N\>> and a bijection
      <math|\<beta\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>\<cal-U\>>.
      Define now <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|R<rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|]|\<beta\><around*|(|i|)><rsub|1>,\<beta\><around*|(|i|)><rsub|2>|]>
      if i\<in\><around*|{|1,\<ldots\>,m|}>>>|<row|<cell|\<emptyset\>=<around*|]|1,1|]>>>>>>>then
      <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsup|n>>
      and <math|<big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>\<equallim\><rsub|<text|<smart-ref|union
      of possible empty sets>>><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>\<equallim\><rsub|<text|<smart-ref|reindexing
      of a family>>><big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-U\>><around*|]|q,q<rprime|'>|]>=U<rsub|>>

      <item*|<math|\<cal-U\> is infinitely countable>>Then there exists a
      bijection <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<cal-U\>> and thus if
      we define <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|R<rsub|i>=<around*|]|q<rsub|\<beta\><around*|(|i|)>>,q<rsub|\<beta\><around*|(|i|)><rsub|2>>|]>>
      we have that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>\<equallim\><rsub|<text|<smart-ref|reindexing
      of a family>>><big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-U\>><around*|]|q,q<rprime|'>|]>=U>
    </description>

    So in allcase we have\ 

    <\equation*>
      \<exists\><around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsup|n>
      such that <big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>=U
    </equation*>

    \;
  </proof>

  The next lemma allows us the write a half-open interval in
  <math|\<bbb-R\><rsup|n>> as a countable intersection of open sets.

  <\lemma>
    <label|half open interval in R^n and a intersection of open sets>Let
    <math|n\<in\>\<bbb-N\><text| then >\<forall\>R\<in\>\<cal-R\><rsup|n>>
    with <math|\<emptyset\>\<neq\>R> there exists a sequence
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    of open sets such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
  </lemma>

  <\proof>
    As <math|R\<neq\>\<emptyset\>> there exists <math|a,b\<in\>\<bbb-R\>>
    such that <math|R=<around*|[|a,b|[>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j>,b<rsub|j>|[>>.
    Define then <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|U<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>>,
    then as <math|<around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
    and <math|T<rsub|\<bbb-R\><rsup|n>>> is the product topology based on
    <math|\<cal-T\><rsub|\<bbb-R\>>> (see <reference|topology of R^n>) it
    follows that <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>.
    \ Let <math|i\<in\>\<bbb-N\>> then \ <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|<around*|]|a<rsub|j>,b<rsub|j>|[>\<subseteq\><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>>
    so that using <smart-ref|conventions for product of sets> we have
    \ <math|R=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j>,b<rsub|j>|[>\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>=U<rsub|i>>.
    This proves\ 

    <\equation>
      <label|eq 18.139.003>R\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation>

    For the opposite inequality let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>.
    Take <math|j\<in\><around*|{|1,\<ldots\>,n|}>> then
    <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>\<less\>b<rsub|j>>. Assume now
    that <math|x<rsub|j>\<less\>a<rsub|j>\<Rightarrow\>0\<less\>a<rsub|j>-x<rsub|j>>
    then using <smart-ref|consequence of the archimedean property for the
    reals> there exists a <math|i\<in\>\<bbb-N\>> such that
    <math|0\<less\><frac|1|i>\<less\>a<rsub|j>-x<rsub|j>\<Rightarrow\>x<rsub|j>\<less\>a<rsub|j>-<frac|1|i>>
    contradicting <math|a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>>
    <math|\<forall\>i\<in\>\<bbb-N\>>. Hence
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>> which proves that
    <math|x\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j>,b<rsub|j>|[>>
    or <math|<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>\<subseteq\>R>.
    Combining this with <smart-ref|eq 18.139.003> gives finally

    <\equation*>
      R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation*>
  </proof>

  We are now ready to prove that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>

  <\lemma>
    <label|half open intervals and Borel sets in
    R^n><math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    (where <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    see <smart-ref|Borel algebras>)
  </lemma>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then we have either\ 

    <\description>
      <item*|<math|U=\<emptyset\>>>then <math|U\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>

      <item*|<math|U\<neq\>\<emptyset\>>>then using <smart-ref|Dyadic cubes
      and open sets> there exists a <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
      such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
      [as <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>> is a
      <math|\<sigma\>>-algebra] hence <math|U\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    </description>

    so <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    and thus\ 

    <\equation>
      <label|eq 18.140.003>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation>

    Further if <math|R\<in\>\<cal-R\><rsup|n>> then we have either\ 

    <\description>
      <item*|<math|R=\<emptyset\>>>then <math|R\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>

      <item*|<math|R\<neq\>\<emptyset\>>>then using <reference|half open
      interval in R^n and a intersection of open sets> there exists a
      <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
      such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>R<rsub|i>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
      [because <math|\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
      is a <math|\<sigma\>>-algebra together with <smart-ref|sigma algebra
      properties>]
    </description>

    proving <math|\<cal-R\><rsup|n>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    and thus <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>.
    Combining this with <smart-ref|eq 18.140.003> gives\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation*>

    proving the lemma.
  </proof>

  A alternate formulation of <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  is expressed in the following lemma

  <\definition>
    Let <math|n\<in\>\<bbb-N\>> then given
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|a\<in\>\<bbb-R\>> we
    define the lower half space <math|<around*|]|-\<infty\>,a|]><rsub|i>> by
    <math|<around*|]|-\<infty\>,a|]><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>
    and the set of all lower half spaces is noted by <math|\<cal-H\><rsup|n>>
    so <math|\<cal-H\><rsup|n>=<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|a\<in\>\<bbb-R\>,i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
  </definition>

  <\lemma>
    <label|half spaces is closed>Let <math|n\<in\>\<bbb-N\>> then
    <math|\<forall\>H\<in\>\<cal-H\><rsup|n>> we have that <math|H> is closed
    in <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
  </lemma>

  <\proof>
    Let <math|H\<in\>\<cal-H\><rsup|n>> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and a <math|a\<in\>\<bbb-R\>>
    such that <math|H=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>.
    Take now <math|x\<in\>\<bbb-R\><rsup|n>\\H> then
    <math|a\<less\>x<rsub|i>> so that <math|\<varepsilon\>=x<rsub|i>-a<rsub|i>\<gtr\>0>
    then <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>
    and if <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>
    we have that <math|x<rsub|i>-y<rsub|i><around*|\||x<rsub|i>-y<rsub|i>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||x<rsub|j>-y<rsub|j>|\|>\|j\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>=x<rsub|i>-a<rsub|i>>
    so that <math|-y<rsub|i>\<less\>-a<rsub|i>> or
    <math|a<rsub|i>\<less\>x<rsub|i>> hence <math|y\<in\>H> or
    <math|y\<in\>\<bbb-R\><rsup|n>\\H>. So for every
    <math|x\<in\>\<bbb-R\><rsup|n>\\H> we found a open set
    <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><around*|(|x,\<varepsilon\>|)>>>
    containing <math|x> which proves that <math|\<bbb-R\><rsup|n>\\H> is open
    and that <math|H> is closed.
  </proof>

  <\lemma>
    <label|Borel sets and half spaces>Let <math|n\<in\>\<bbb-N\>> then we
    have that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-H\><rsup|n><rsup|>|]>>
  </lemma>

  <\proof>
    As <math|\<forall\>H\<in\>\<cal-H\><rsup|n>> we have that <math|H> is
    closed we have by <smart-ref|Borel sets and closed sets> that
    <math|H\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> so that
    <math|\<cal-H\><rsup|n>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
    and thus\ 

    <\equation>
      <label|eq 18.148.005>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation>

    Take <math|R\<in\>\<cal-I\><rsup|n>> (see <reference|open set as union of
    ]a,b]>) then there exists <math|a,b\<in\>\<bbb-R\><rsup|n>> with
    <math|a\<leqslant\>b> such that <math|R=<around*|]|a,b|]>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|]><rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x\<in\><around*|]|-\<infty\>,b<rsub|i>|]><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|]><rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<leqslant\>b<rsub|i>\<wedge\>\<neg\><around*|(|x<rsub|i>\<leqslant\>a<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<leqslant\>b<rsub|i>\<wedge\>a<rsub|i>\<less\>x<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,b|]>>>>>
    </eqnarray*>

    proving that <math|<around*|]|a,b|]>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|]><rsub|i>|)>.>
    Using <smart-ref|sigma algebra properties> we have that
    <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|]><rsub|i>|)>\<in\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>
    so that\ 

    <\equation>
      <label|eq 18.149.005>\<cal-I\><rsup|n>\<subseteq\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>
    </equation>

    Let now <math|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> then using
    <reference|open set as union of ]a,b]> there exists a
    <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsup|n>\<subseteq\><rsub|<text|<smart-ref|eq
    18.149.005>>>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>> such that
    <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>> which proves that
    <math|U\<in\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>. So
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>
    hence <math|\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>
    which together with <smart-ref|eq 18.149.005> proves that\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|\<cal-H\><rsup|n>|]>
    </equation*>
  </proof>

  To summarize the above lemmas we have by <smart-ref|sigma algebra of half
  open intervals in R^n>,<smart-ref|half open intervals and Borel sets in
  R^n> and <smart-ref|Borel sets and half spaces> that\ 

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>> then we have that for
    <math|\<cal-L\><rsup|n>> the set of Lebesgue measurable sets of
    <math|\<bbb-R\><rsup|n>> (see <smart-ref|Lebesgue R^n>) we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\><rsup|n>
      with a\<leqslant\>b|}>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-L\><rsup|n>>>>>
    </eqnarray*>

    \ \ constructing the measure space <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,\<lambda\><rsup|n><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>.
  </theorem>

  <section|Integration>

  <subsection|Measurable functions>

  <\definition>
    <label|measurable functions>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces,
    <math|D\<subseteq\>X> then <math|f:D\<rightarrow\>Y> is
    <math|\<cal-A\>/\<cal-B\>>-<with|font-series|bold|measurable> if
    <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>> [here
    <math|\<cal-A\><rsub|\|D>=<around*|{|D<big|cap>A\|A\<in\>\<cal-A\>|}>> is
    the sub-algebra induced by <math|D> (see <smart-ref|sub-algebra>)].
  </definition>

  <\note>
    If <math|D=X> then <math|\<cal-A\><rsub|\|D>=\<cal-A\>> so in this case
    <math|f:X\<rightarrow\>Y> is <math|\<cal-A\>/\<cal-B\>>-measurable if
    <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
  </note>

  As we have to deal a lot with functions to the real numbers we introduce
  the following notations.

  <\notation>
    \ 

    <\enumerate>
      <item>If <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is a
      measurable space, <math|D\<subseteq\>X> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is <math|\<cal-A\>>-measurable iff
      <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.

      <item>If <math|X> is a set, <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>,
      <math|D\<subseteq\>X> then <math|f:D\<rightarrow\>\<bbb-R\>> is Borel
      measurable iff <math|f> is <math|\<sigma\><around*|[|\<cal-A\>|]>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.

      <item>If <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> is a
      topological space, <math|D\<subseteq\>X> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is Borel measurable iff <math|f> is
      <math|\<cal-B\><around*|[|X,\<cal-T\>|]>\<over\>\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.

      <item>If <math|D\<subseteq\>\<bbb-R\>> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is Borel measurable iff <math|f> is
      <math|\<cal-B\><around*|[|\<bbb-R\>|]>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.

      <item>If <math|D\<subseteq\>\<bbb-R\>> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is Lebesgue measurable iff <math|f>
      is <math|\<cal-L\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable

      <item>If <math|D\<subseteq\>\<bbb-R\><rsup|n>> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is Borel measurable iff <math|f> is
      <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.

      <item>If <math|D\<subseteq\>\<bbb-R\><rsup|n>> then
      <math|f:D\<rightarrow\>\<bbb-R\>> is Lebesgue measurable iff <math|f>
      is <math|\<cal-L\><rsup|n>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.
    </enumerate>
  </notation>

  For Borel algebras (see <reference|Borel algebras and generator>) we can
  use the generator of the Borel algebra to prove if a function is
  measurable.

  <\theorem>
    <label|measurable functions and generators>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|D\<subseteq\>X>, <math|Y> a set,
    <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|Y|)>> and
    <math|f:D\<rightarrow\>Y> a function then <math|f> is
    <math|\<cal-A\>/\<sigma\><around*|[|\<cal-B\>|]>>-measurable if and only
    if <math|\<forall\>B\<in\>\<cal-B\>> <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is
      <math|\<cal-A\>/\<sigma\><around*|[|\<cal-B\>|]>>-measurable then
      \ <math|\<forall\>B\<in\>\<cal-B\>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
      we have that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|\<forall\>B\<in\>\<cal-B\>> <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>.
      Define <math|\<cal-C\>=<around*|{|B\<in\>\<cal-P\><around*|(|Y|)>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>|}>>
      then by assumption we have\ 

      <\equation>
        <label|eq 18.141.003>\<cal-B\>\<subseteq\>\<cal-C\>
      </equation>

      As <math|f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>\<in\>\<cal-A\><rsub|\|A>>
      we have\ 

      <\equation>
        <label|eq 18.142.003>\<emptyset\>\<in\>\<cal-C\>
      </equation>

      If <math|B\<in\>\<cal-C\>> then by definition
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>, as
      <math|f<rsup|-1><around*|(|Y\\B|)>\<equallim\><rsub|<text|<smart-ref|properties
      of image and preimage> (4)>>D\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>
      [as <math|\<cal-A\><rsub|\|D>> is a <math|\<sigma\>>-algebra on
      <math|D>] proving that\ 

      <\equation>
        <label|eq 18.143.003>\<forall\>B\<in\>\<cal-C\> we have
        Y\\B\<in\>\<cal-C\>
      </equation>

      If <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>. Now
      <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|<smart-ref|image
      (preimage) of union , intersections>>><big|cup><rsub|i\<in\>\<bbb-N\>>f<rsup|-1><around*|(|B<rsub|i>|)>\<in\>\<cal-A\><rsub|\|D>>
      proving that\ 

      <\equation>
        <label|eq 18.144.003>\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\>
        we have <big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-C\>
      </equation>

      To summarize <smart-ref|eq 18.141.003>,<smart-ref|eq
      18.142.003>,<smart-ref|eq 18.143.003> and <smart-ref|eq 18.144.003>
      proves that <math|\<cal-C\>> is a <math|\<sigma\>>-algebra containing
      <math|\<cal-B\>>, hence <math|\<sigma\><around*|[|\<cal-B\>|]>\<subseteq\>\<cal-C\>>
      or in other words

      <\equation*>
        \<forall\>B\<in\>\<sigma\><around*|[|\<cal-B\>|]> we have
        f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>
      </equation*>
    </description>
  </proof>

  Continuous functions are automatically measurable as the following
  proposition shows.

  <\proposition>
    <label|measurable functions and continuity>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces, <math|D\<subseteq\>X> and <math|f:D\<rightarrow\>Y>
    is a continuous function (using the subspace topology on <math|D>) then
    <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>/\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>-measurable.
  </proposition>

  <\proof>
    As <math|f> is continuous using the subspace topology we have
    <math|\<forall\>V\<in\>\<cal-T\>> that
    <math|f<rsup|-1><around*|(|V|)>\<in\><around*|(|\<cal-T\><rsub|X>|)><rsub|\|D>>,
    so there exists a <math|U\<in\>\<cal-T\><rsub|X>> such that
    <math|f<rsup|-1><around*|(|V|)>=U<big|cap>D>. As
    <math|\<cal-T\><rsub|X>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|X>|]>=\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>>
    it follows that <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]><rsub|\|D>>.
    Finally using the fact that <math|\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>=\<sigma\><around*|[|\<cal-T\><rsub|Y>|]>>
    it follows using <smart-ref|measurable functions and generators> that
    <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>/\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>-measurable.
  </proof>

  The composition of measurable mappings is measurable as is expressed in the
  following proposition.

  <\proposition>
    <label|measurable maps composition>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,\<cal-C\>|\<rangle\>>> be measurable spaces,
    <math|A\<subseteq\>X>, <math|B\<subseteq\>Y>, <math|f:A\<rightarrow\>Y> a
    <math|\<cal-A\>/\<cal-B\>>-measurable function ,
    <math|g:B\<rightarrow\>Z> a <math|\<cal-B\>/\<cal-C\>>-measurable
    function then <math|g\<circ\>f:A<big|cap>f<rsup|-1><around*|(|B|)>\<rightarrow\>Z>
    is <math|\<cal-A\>/\<cal-C\>>-measurable function. <math|>
  </proposition>

  <\proof>
    Let <math|C\<in\>\<cal-C\>> then as <math|g> is
    <math|\<cal-B\>/\<cal-C\>>-measurable we have that
    <math|g<rsup|-1><around*|(|C|)>\<in\>\<cal-B\><rsub|\|B>> so there exists
    a <math|B<rprime|'>\<in\>\<cal-B\>> such that
    <math|g<rsup|-1><around*|(|C|)>=B<rprime|'><big|cap>B>. Then
    <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>=f<rsup|-1><around*|(|B<rprime|'><big|cap>B|)>\<equallim\><rsub|<text|<smart-ref|image
    (preimage) of union , intersections>>>f<rsup|-1><around*|(|B<rprime|'>|)><big|cap>f<rsup|-1><around*|(|B|)>>
    proving that\ 

    <\equation>
      <label|eq 18.145.003>f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>=f<rsup|-1><around*|(|B<rprime|'>|)><big|cap>f<rsup|-1><around*|(|B|)>
    </equation>

    As <math|f> is <math|\<cal-A\>/\<cal-B\>>-measurable function we have
    that <math|f<rsup|-1><around*|(|B<rprime|'>|)>\<in\>\<cal-A\><rsub|\|A>>
    so that <math|\<exists\>A<rprime|'>\<in\>\<cal-A\>> such that
    <math|f<rsup|-1><around*|(|B<rprime|'>|)>=A<rprime|'><big|cap>A> hence
    <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>\<equallim\><rsub|<text|<smart-ref|eq
    18.145.003>>><around*|(|A<rprime|'><big|cap>A|)><big|cap>f<rsup|-1><around*|(|B|)>=A<rprime|'><big|cap><around*|(|A<big|cap>f<rsup|-1><around*|(|B|)>|)>\<in\>\<cal-A\><rsub|\|A<big|cap>f<rsup|-1><around*|(|B|)>>>
    which proves that <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|C|)>=f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>\<in\>\<cal-A\><rsub|\|A<big|cap>f<rsup|-1><around*|(|B|)>>>.
    So <math|g\<circ\>f> is <math|\<cal-A\>/\<cal-C\>>-measurable.
  </proof>

  A import example in integration theory is the case were
  <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<cal-B\><around*|[|\<bbb-R\>|]>|\<rangle\>>>,
  we have then the following equivalences for measurable functions. First we
  have some simplifying definitions

  <\definition>
    Let <math|D> be a set and <math|f:D\<rightarrow\>\<bbb-R\>> a function
    then for <math|a,b\<in\>\<bbb-R\>>

    <\enumerate>
      <item><math|<around*|{|f\<less\>a|}>=<around*|{|x\<in\>D\|f<around*|(|x|)>\<less\>a|}>\<subseteq\>D>

      <item><math|<around*|{|f\<leqslant\>a|}>=<around*|{|x\<in\>D\|f<around*|(|x|)>\<leqslant\>a|}>\<subseteq\>D>

      <item><math|<around*|{|a\<less\>f|}>=<around*|{|x\<in\>D\|a\<less\>f<around*|(|x|)>|}>\<subseteq\>D>

      <item><math|<around*|{|a\<leqslant\>f|}>=<around*|{|x\<in\>D\|a\<leqslant\>f<around*|(|x|)>|}>\<subseteq\>D>
    </enumerate>
  </definition>

  <\theorem>
    <label|measurable functions conditions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|D\<subseteq\>X> and <math|f:D\<rightarrow\>\<bbb-R\>> a mapping
    then the following are equivalent\ 

    <\enumerate>
      <item><math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable\ 

      <item><math|\<forall\>a\<in\>\<bbb-R\>
      <around*|{|f\<less\>a|}>\<in\>\<cal-A\><rsub|\|D>>

      <item><math|\<forall\>a\<in\>\<bbb-R\>
      <around*|{|f\<leqslant\>a|}>\<in\>\<cal-A\><rsub|\|D>>

      <item><math|\<forall\>a\<in\>\<bbb-R\>
      <around*|{|a\<less\>f|}>\<in\>\<cal-A\><rsub|\|D>>

      <item><math|\<forall\>a\<in\>\<bbb-R\>
      <around*|{|a\<leqslant\>f|}>\<in\>\<cal-A\><rsub|\|D>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Leftrightarrow\>2>>Let <math|a\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|[>|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<around*|(|x|)>\<in\><around*|]|-\<infty\>,a|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<less\>a|}>>>>>
      </eqnarray*>

      proving that <math|f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|[>|)>=<around*|{|f\<less\>a|}>>,
      as <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<smart-ref|Borel
      sets on R and Lebesgue sets>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>,
      we have by <smart-ref|measurable functions and generators> that
      <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      if and only if <math|<around*|{|f\<less\>a|}>\<in\>\<cal-A\><rsub|\|A>>.

      <item*|<math|1\<Leftrightarrow\>3>>Let <math|a\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<in\><around*|]|-\<infty\>,a|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<leqslant\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<leqslant\>a|}>>>>>
      </eqnarray*>

      proving that <math|f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>=<around*|{|f\<leqslant\>a|}>>,
      as <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<smart-ref|Borel
      sets on R and Lebesgue sets>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>,
      we have by <smart-ref|measurable functions and generators> that
      <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      if and only if <math|<around*|{|f\<leqslant\>a|}>\<in\>\<cal-A\><rsub|\|A>>

      <item*|<math|1\<Leftrightarrow\>4>>Let <math|a\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|<around*|]|a,\<infty\>|[>|)>>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<in\><around*|]|a,\<infty\>|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|a\<less\>f|}>>>>>
      </eqnarray*>

      proving that <math|f<rsup|-1><around*|(|<around*|]|a,\<infty\>|[>|)>=<around*|{|a\<less\>f|}>>,
      as <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<smart-ref|Borel
      sets on R and Lebesgue sets>>>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>,
      we have by <smart-ref|measurable functions and generators> that
      <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      if and only if <math|<around*|{|a\<less\>f|}>\<in\>\<cal-A\><rsub|\|A>>

      <item*|<math|4\<Rightarrow\>5>>Let <math|a\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|<around*|[|a,\<infty\>|[>|)>>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<in\><around*|[|a,\<infty\>|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|a\<leqslant\>f|}>>>>>
      </eqnarray*>

      proving that <math|f<rsup|-1><around*|(|<around*|[|a,\<infty\>|[>|)>=<around*|{|a\<leqslant\>f|}>>,
      as <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<smart-ref|Borel
      sets on R and Lebesgue sets>>>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>,
      we have by <smart-ref|measurable functions and generators> that
      <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      if and only if <math|<around*|{|a\<leqslant\>f|}>\<in\>\<cal-A\><rsub|\|A>>
    </description>
  </proof>

  <\lemma>
    <label|Borel functions and intersection>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|D,E\<subseteq\>X> and <math|f:D\<rightarrow\>\<bbb-R\>> a
    <math|\<cal-A\>>-measurable function then
    <math|\<forall\>a\<in\>\<bbb-R\>> we have that

    <\enumerate>
      <item><math|<around*|{|f\<less\>a|}><big|cap>E\<in\>\<cal-A\><rsub|\|D<big|cap>E>>

      <item><math|<around*|{|f\<leqslant\>a|}><big|cap>E\<in\>\<cal-A\><rsub|\|D<big|cap>E>>

      <item><math|<around*|{|a\<less\>f|}><big|cap>E\<in\>\<cal-A\><rsub|\|D<big|cap>E>>

      <item><math|<around*|{|a\<leqslant\>f|}><big|cap>E\<in\>\<cal-A\><rsub|\|D<big|cap>E>>
    </enumerate>
  </lemma>

  <\proof>
    \;

    <\enumerate>
      <item>As <math|f> is <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|f\<less\>a|}>\<in\>\<cal-A\><rsub|\|D> so there exists
      a A\<in\>\<cal-A\>> such that <math|<around*|{|f\<less\>a|}>=A<big|cap>D>.
      Hence <math|<around*|{|f\<less\>a|}><big|cap>E=<around*|(|A<big|cap>D|)><big|cap>E=A<big|cap><around*|(|D<big|cap>A|)>\<in\>\<cal-A\><rsub|\|D<big|cap>A>>

      <item>As <math|f> is <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|f\<leqslant\>a|}>\<in\>\<cal-A\><rsub|\|D> so there
      exists a A\<in\>\<cal-A\>> such that
      <math|<around*|{|f\<leqslant\>a|}>=A<big|cap>D>. Hence
      <math|<around*|{|f\<leqslant\>a|}><big|cap>E=<around*|(|A<big|cap>D|)><big|cap>E=A<big|cap><around*|(|D<big|cap>A|)>\<in\>\<cal-A\><rsub|\|D<big|cap>A>>

      <item>As <math|f> is <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|a\<less\>f|}>\<in\>\<cal-A\><rsub|\|D> so there exists
      a A\<in\>\<cal-A\>> such that <math|<around*|{|a\<less\>f|}>=A<big|cap>D>.
      Hence <math|<around*|{|a\<less\>f|}><big|cap>E=<around*|(|A<big|cap>D|)><big|cap>E=A<big|cap><around*|(|D<big|cap>A|)>\<in\>\<cal-A\><rsub|\|D<big|cap>A>>

      <item>As <math|f> is <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|a\<leqslant\>f|}>\<in\>\<cal-A\><rsub|\|D> so there
      exists a A\<in\>\<cal-A\>> such that
      <math|<around*|{|a\<leqslant\>f|}>=A<big|cap>D>. Hence
      <math|<around*|{|a\<leqslant\>f|}><big|cap>E=<around*|(|A<big|cap>D|)><big|cap>E=A<big|cap><around*|(|D<big|cap>A|)>\<in\>\<cal-A\><rsub|\|D<big|cap>A>>
    </enumerate>
  </proof>

  <\definition>
    Let <math|D\<subseteq\>\<bbb-R\>> and <math|f:D\<rightarrow\>\<bbb-R\>>
    then <math|f> is strict monotonic if either\ 

    <\enumerate>
      <item><math|\<forall\>x,y\<in\>D> with <math|x\<less\>y> we have
      <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>> (f is strict
      increasing)

      <item><math|\<forall\>x,y\<in\>D> with <math|x\<less\>y> we have
      <math|f<around*|(|y|)>\<less\>f<around*|(|x|)>> (f is strict
      decreasing)
    </enumerate>
  </definition>

  <\proposition>
    Let <math|n\<in\>\<bbb-N\>>, <math|D\<subseteq\>\<bbb-R\><rsup|n>> and
    <math|f:D\<rightarrow\>\<bbb-R\>> a function then\ 

    <\enumerate>
      <item>If <math|f> is Borel measurable then <math|f> is Lebesgue
      measurable.

      <item>If <math|f> is continuous (using the subspace topology on
      <math|D>) then <math|f> is Borel measurable.

      <item>If <math|n=1> and <math|f> is strict monotonic then <math|f> is
      Borel measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is Borel measurable we have using
      <smart-ref|measurable functions conditions> that
      <math|\<forall\>a\<in\>\<bbb-R\>> <math|<around*|{|f\<less\>a|}>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<cal-L\><rsup|n>>
      [see <smart-ref|Borel sets on R and Lebesgue sets>]] hence using
      <smart-ref|measurable functions conditions> again we have that <math|f>
      is Lebesgue measurable.

      <item>This follows from <smart-ref|measurable functions and
      continuity>.

      <item>As <math|f> is monotonic we have that either\ 

      <\description>
        <item*|<math|f> is non decreasing>So <math|\<forall\>x,y\<in\>D> with
        <math|x\<less\>y> we have <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>>.
        Let now <math|a\<in\>\<bbb-R\>> then for
        <math|<around*|{|f\<less\>a|}>> we have the following possibilities:

        <\description>
          <item*|<math|<around*|{|f\<less\>a|}>=\<emptyset\>>>then
          <math|<around*|{|f\<less\>a|}>=\<emptyset\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>

          <item*|<math|<around*|{|f\<less\>a|}>=D>>then
          <math|<around*|{|f\<less\>a|}>=\<bbb-R\><big|cap>D\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>

          <item*|<math|\<emptyset\>\<neq\><around*|{|f\<less\>a|}>\<neq\>D>>then
          as <math|<around*|{|f\<less\>a|}>\<subseteq\>D> there exists a
          <math|x\<in\>D> such that <math|x\<nin\><around*|{|f\<less\>a|}>>
          hence <math|a\<leqslant\>f<around*|(|x|)>>. Let
          <math|y\<in\><around*|{|f\<less\>a|}>\<Rightarrow\>f<around*|(|y|)>\<less\>a>
          and assume that <math|x\<less\>y> then
          <math|a\<leqslant\>f<around*|(|x|)>\<less\>f<around*|(|y|)>>
          contradicting <math|f<around*|(|y|)>\<less\>a>. Hence <math|x> is a
          upper bound of <math|<around*|{|f\<less\>a|}>\<neq\>\<emptyset\>>
          so that <math|s=sup<around*|(|<around*|{|f\<less\>a|}>|)>> exists.
          We must consider now two cases for <math|s>\ 

          <\description>
            <item*|<math|s\<in\><around*|{|f\<less\>a|}>>>As <math|s> is a
            upper bound of <math|<around*|{|f\<less\>a|}>> it follows that\ 

            <\equation>
              <label|eq 18.149.003><around*|{|f\<less\>a|}>\<subseteq\><around*|]|-\<infty\>,s|]><big|cap>D
            </equation>

            If <math|x\<in\><around*|]|-\<infty\>,s|]><big|cap>D> then
            <math|x\<leqslant\>s\<Rightarrow\>f<around*|(|x|)>\<leqslant\>f<around*|(|s|)>\<less\>a>
            so <math|x\<in\><around*|{|f\<less\>a|}>> which together with
            <smart-ref|eq 18.149.003> proves that
            <math|<around*|{|f\<less\>a|}>=<around*|]|-\<infty\>,s|]><big|cap>D\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]><rsub|\|D>\<equallim\><rsub|<text|<smart-ref|Borel
            sets on R and Lebesgue sets>>>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>
            proving\ 

            <\equation*>
              <around*|{|f\<less\>a|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>
            </equation*>

            <item*|<math|s\<nin\><around*|{|f\<less\>a|}>>>As <math|s> is a
            upper bound of <math|<around*|{|f\<less\>a|}>>it follows that\ 

            <\equation>
              <label|eq 18.150.003><around*|{|f\<less\>a|}>\<subseteq\><around*|]|-\<infty\>,s|[><big|cap>D
            </equation>

            If <math|x\<in\><around*|]|-\<infty\>,s|[><big|cap>D> then
            <math|x\<less\>s> so by the definition of a supremum there exists
            a <math|y\<in\><around*|{|f\<less\>a|}>\<Rightarrow\>f<around*|(|y|)>\<less\>a>
            such that <math|x\<less\>y\<leqslant\>s> then
            <math|f<around*|(|x|)>\<less\>f<around*|(|y|)>\<less\>a> proving
            that <math|x\<in\><around*|{|f\<less\>a|}>>. Together with
            <smart-ref|eq 18.150.003> this proves that
            <math|><math|<around*|{|f\<less\>a|}>=<around*|]|-\<infty\>,s|[><big|cap>D\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]><rsub|\|D>\<equallim\><rsub|<text|<smart-ref|Borel
            sets on R and Lebesgue sets>>>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>
            proving\ 

            <\equation*>
              <around*|{|f\<less\>a|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>
            </equation*>
          </description>
        </description>

        So in all cases we have that <math|<around*|{|f\<less\>a|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>
        proving as <math|a\<in\>\<bbb-R\>> by <reference|measurable functions
        conditions> that <math|f> is measurable.

        <item*|<math|f> is non increasing>So <math|\<forall\>x,y\<in\>D> with
        <math|x\<less\>y> we have <math|f<around*|(|y|)>\<less\>f<around*|(|x|)>>.
        Let now <math|a\<in\>\<bbb-R\>> then for
        <math|<around*|{|a\<less\>f|}>> we have the following possibilities:

        <\description>
          <item*|<math|<around*|{|a\<less\>f|}>=\<emptyset\>>>then
          <math|<around*|{|a\<less\>f|}>=\<emptyset\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>

          <item*|<math|<around*|{|a\<less\>f|}>=D>>then
          <math|<around*|{|a\<less\>f|}>=\<bbb-R\><big|cap>D\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>

          <item*|<math|\<emptyset\>\<neq\><around*|{|a\<less\>f|}>\<neq\>D>>then
          as <math|<around*|{|a\<less\>f|}>\<subseteq\>D> there exists a
          <math|x\<in\>D> such that <math|x\<nin\><around*|{|a\<less\>f|}>>
          hence <math|f<around*|(|x|)>\<leqslant\>a>. Let
          <math|y\<in\><around*|{|a\<less\>f|}>\<Rightarrow\>a\<less\>f<around*|(|y|)>>
          and assume that <math|x\<less\>y> then
          <math|a\<less\>f<around*|(|y|)>\<less\>f<around*|(|x|)>\<leqslant\>a>
          a contradiction. So <math|\<emptyset\>\<neq\><around*|{|a\<less\>f|}>>
          is bounded above by <math|x> and thus
          <math|s=sup<around*|(|<around*|{|a\<less\>f|}>|)>> exists. We must
          consider the following cases for s:

          <\description>
            <item*|<math|s\<in\><around*|{|a\<less\>f|}>>>As <math|s> is a
            upper bound of <math|<around*|{|a\<less\>f|}>> we have\ 

            <\equation>
              <label|eq 18.151.003><around*|{|a\<less\>f|}>\<subseteq\><around*|]|-\<infty\>,s|]><big|cap>D
            </equation>

            If <math|x\<in\><around*|]|-\<infty\>,s|]><big|cap>D> then
            <math|x\<leqslant\>s\<Rightarrow\>a\<less\>f<around*|(|s|)>\<leqslant\>f<around*|(|x|)>>
            proving that <math|x\<in\><around*|{|a\<less\>f|}>> which
            together with <smart-ref|eq 18.151.003> proves that
            <math|<around*|{|a\<less\>f|}>=<around*|]|-\<infty\>,s|]><big|cap>D\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]><rsub|\|D>\<equallim\><rsub|<text|<smart-ref|Borel
            sets on R and Lebesgue sets>>>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>
            proving\ 

            <\equation*>
              <around*|{|a\<less\>f|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>
            </equation*>

            <item*|<math|s\<nin\><around*|{|a\<less\>f|}>>>As <math|s> is a
            upper bound of <math|<around*|{|a\<less\>f|}>> we have\ 

            <\equation>
              <label|eq 18.152.003><around*|{|a\<less\>f|}>\<subseteq\><around*|]|-\<infty\>,s|[><big|cap>D
            </equation>

            Let <math|x\<in\><around*|]|-\<infty\>,s|[><big|cap>D> then
            <math|x\<less\>s> then using the definition of a supremum there
            exists a <math|y\<in\><around*|{|a\<less\>f|}>\<Rightarrow\>a\<less\>f<around*|(|y|)>>
            such that <math|x\<less\>y\<leqslant\>s> then
            <math|a\<less\>f<around*|(|y|)>\<less\>f<around*|(|x|)>> proving
            that <math|x\<in\><around*|{|a\<less\>f|}>>. Using this together
            with <smart-ref|eq 18.152.003> proves that
            <math|<around*|{|a\<less\>f|}>=<around*|]|-\<infty\>,s|[><big|cap>D\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]><rsub|\|D>\<equallim\><rsub|<text|<smart-ref|Borel
            sets on R and Lebesgue sets>>>\<b-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>.
            Hence\ 

            <\equation*>
              <around*|{|a\<less\>f|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>
            </equation*>
          </description>
        </description>

        So in all cases we have that <math|<around*|{|f\<less\>a|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]><rsub|\|D>>
        proving as <math|a\<in\>\<bbb-R\>> by <reference|measurable functions
        conditions> that <math|f> is measurable.
      </description>
    </enumerate>
  </proof>

  The following theorem shows the operations that we can do on measurable
  real valued functions.\ 

  <\theorem>
    <label|measurable function operations>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable set,
    <math|D,E\<subseteq\>X> and <math|f:D\<rightarrow\>\<bbb-R\>>,
    <math|g:E\<rightarrow\>\<bbb-R\>> functions then we have:

    <\enumerate>
      <item>If <math|f> is a constant function [<math|\<forall\>x\<in\>D> we
      have <math|f<around*|(|x|)>=c> where <math|c\<in\>\<bbb-R\>>] then
      <math|f> is <math|\<cal-A\>>-measurable.

      <item>If <math|f,g> are <math|\<cal-A\>>-measurable functions then
      <math|f+g:D<big|cap>E\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      is <math|\<cal-A\>>-measurable.

      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|f<rsub|i>:A<rsub|i>\<rightarrow\>\<bbb-R\>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      a set of <math|\<cal-A\>>-measurable functions then
      <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>:<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
      is <math|\<cal-A\>>-measurable.

      <item>If <math|f> is measurable, <math|c\<in\>\<bbb-R\>> then
      <math|c\<cdot\>f:D\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|c\<cdot\>f|)><around*|(|x|)>=c\<cdot\>f<around*|(|x|)>>
      is <math|\<cal-A\>>-measurable.

      <item>If <math|f,g> are <math|\<cal-A\>>-measurable functions then
      <math|f\<cdot\>g:D<big|cap>E\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      is Borel measurable.

      <item>If <math|f,g> are <math|\<cal-A\>>-measurable functions then
      <math|f/g:D<big|cap>E<big|cap><around*|{|x\<in\>\<bbb-R\>\|g<around*|(|x|)>\<neq\>0|}>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|f/g|)><around*|(|x|)>=f<around*|(|x|)>/g<around*|(|x|)>>
      is <math|\<cal-A\>>-measurable.

      <item>If <math|f> is <math|\<cal-A\>>-measurable and
      <math|C\<subseteq\>X> then <math|f<rsub|\|C>:D<big|cap>C\<rightarrow\>\<bbb-R\>>
      is <math|\<cal-A\>>-measurable
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|a\<in\>\<bbb-R\>> then we have for <math|c> the
      following possibilities

      <\description>
        <item*|<math|a\<leqslant\>c>>then if
        <math|x\<in\><around*|{|f\<less\>a|}>\<Rightarrow\>x\<in\>D\<wedge\>f<around*|(|x|)>\<less\>a\<Rightarrowlim\><rsub|f<around*|(|x|)>=c>c\<less\>a\<leqslant\>c>
        a contradiction, so <math|<around*|{|f\<less\>a|}>=\<emptyset\>\<in\>\<cal-A\><rsub|\|D>>

        <item*|<math|c\<less\>a>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|f\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>c\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|c\<less\>a
          assumed>>|<cell|x\<in\>D>>>>
        </eqnarray*>

        proving that <math|<around*|{|f\<less\>a|}>=D\<in\>\<cal-A\><rsub|\|D>>.
      </description>

      So in all cases we have <math|<around*|{|f\<less\>A|}>\<in\>\<cal-A\><rsub|\|D>>
      which by <smart-ref|measurable functions conditions> proves that
      <math|f> is <math|\<cal-A\>>-measurable.

      <item>Let <math|a\<in\>\<bbb-R\>> and define
      <math|Q<rsub|a>=<around*|{|<around*|(|q,q<rprime|'>|)>\<in\>\<bbb-Q\>\<times\>\<bbb-Q\>\|q+q<rprime|'>\<less\>a|}>\<subseteq\>\<bbb-Q\>*\<times\>\<bbb-Q\>>
      then using <smart-ref|natural,whole and rational numbers are
      denumerable>,<smart-ref|product of countable sets is countable> and
      <smart-ref|subsets of countable sets are countable> it follows that\ 

      <\equation>
        <label|eq 18.153.003>Q<rsub|a> is countable
      </equation>

      Given <math|q\<in\>\<bbb-Q\>> we have as <math|f,g> are
      <math|\<cal-A\>>-measurable that <math|<around*|{|f\<less\>q|}>\<in\>\<cal-A\><rsub|\|D>>
      and <math|<around*|{|g\<less\>q|}>\<in\>\<cal-A\><rsub|\|E>>. So there
      exists <math|F<rsub|q>,G<rsub|q>\<in\>\<cal-A\>> such that\ 

      <\equation>
        <label|eq 18.154.003><around*|{|f\<less\>q|}>=F<rsub|q><big|cap>D<infix-and><around*|{|g\<less\>q|}>=G<rsub|q><big|cap>E
      </equation>

      For each <math|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>> define
      <math|E<rsub|q,q<rprime|'>>=<around*|{|x\<in\>D<big|cap>E\|f<around*|(|x|)>\<less\>q\<wedge\>g<around*|(|x|)>\<less\>q<rprime|'>|}>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>E<rsub|q,q<rprime|'>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>f<around*|(|x|)>\<less\>q\<wedge\>g<around*|(|x|)>\<less\>q<rprime|'>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>D<big|cap>E|)>\<wedge\><around*|(|x\<in\>D\<wedge\>f<around*|(|x|)>\<less\>q|)>\<wedge\><around*|(|x\<in\>E\<wedge\>g<around*|(|x|)>\<less\>q<rprime|'>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>x\<in\><around*|{|f\<less\>q|}>\<wedge\>x\<in\><around*|{|g\<less\>q<rprime|'>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>x\<in\>F<rsub|q><big|cap>D\<wedge\>x\<in\>G<rsub|q<rprime|'>><big|cap>E>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|D<big|cap>E|)><big|cap><around*|(|F<rsub|q><big|cap>D|)><big|cap><around*|(|G<rsub|q<rprime|'>><big|cap>E|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|D<big|cap>E|)><big|cap>F<rsub|q><big|cap>G<rsub|q<rprime|'>>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.155.003>\<forall\><around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>
        we have E<rsub|q,q<rprime|'>>=<around*|(|D<big|cap>E|)><big|cap>F<rsub|q><big|cap>G<rsub|q<rprime|'>>\<in\>\<cal-A\><rsub|\|D<big|cap>E>
      </equation>

      Now if for <math|x\<in\>D<big|cap>E> we have
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<less\>a>
      then <math|f<around*|(|x|)>\<less\>a-g<around*|(|x|)>> so using the
      density theorem of the real numbers (see <smart-ref|density theorem for
      the reals>) we have\ 

      <\equation>
        <label|eq 18.156.003>\<exists\>q\<in\>Q such that
        f<around*|(|x|)>\<less\>q\<less\>a-g<around*|(|x|)>
      </equation>

      \ Further from <math|f<around*|(|x|)>+g<around*|(|x|)>\<less\>a> we
      have also <math|g<around*|(|x|)>\<less\><rsub|<text|<smart-ref|eq
      18.156.003>>>a-q> and using <smart-ref|density theorem for the reals>
      again we have\ 

      <\equation>
        <label|eq 18.157.003>\<exists\>q<rprime|'>\<in\>Q such that
        g<around*|(|x|)>\<less\>q<rprime|'>\<less\>a-q
      </equation>

      From the <smart-ref|eq 18.157.003> we have then that
      <math|q+q<rprime|'>\<less\>a> hence
      <math|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>> and as
      <math|f<around*|(|x|)>\<less\>q,g<around*|(|x|)>\<less\>q<rprime|'>> it
      follows that <math|x\<in\>E<rsub|q,q<rprime|'>>>. So if
      <math|x\<in\><around*|{|f+g\<less\>a|}>=<around*|{|x\<in\>D<big|cap>E\|<around*|(|f+g|)><around*|(|x|)>\<less\>a|}>>
      we have that <math|\<exists\><around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>
      such that <math|<around*|(|q,q<rprime|'>|)>\<in\>E<rsub|q,q<rprime|'>>>
      proving that\ 

      <\equation>
        <label|eq 18.158.003><around*|{|f+g\<less\>a|}>\<subseteq\><big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>E<rsub|q,q<rprime|'>>
      </equation>

      Further if <math|x\<in\><big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>\<cal-Q\><rsub|a>>E<rsub|q,q<rprime|'>>>
      there exists a <math|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>> such
      that <math|x\<in\>E<rsub|q,q<rprime|'>>> hence
      <math|x\<in\>D<big|cap>E> and <math|f<around*|(|x|)>\<less\>q\<wedge\>g<around*|(|x|)>\<less\>q<rprime|'>\<Rightarrow\><around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>\<less\>q+q<rprime|'>\<less\>a>
      [as <math|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>] proving that
      <math|x\<in\><around*|{|f+g\<less\>a|}>> and thus
      <math|<big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>E<rsub|q,q<rprime|'>>\<subseteq\><around*|{|f+g\<less\>a|}>>.
      Using <smart-ref|eq 18.158.003> it follows then that\ 

      <\equation>
        <label|eq 18.159.003><around*|{|f+g\<less\>a|}>=<big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>E<rsub|q,q<rprime|'>>
      </equation>

      As <math|<big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>E<rsub|q,q<rprime|'>>>
      is a countable union of sets in <math|\<cal-A\><rsub|\|D<big|cap>E>>
      (see <smart-ref|eq 18.155.003>) it follows from <reference|alternate
      definition of a sigma algebra> that
      <math|<big|cup><rsub|<around*|(|q,q<rprime|'>|)>\<in\>Q<rsub|a>>E<rsub|q,q<rprime|'>>\<in\>\<cal-A\><rsub|\|D<big|cap>E>>
      or using <smart-ref|eq 18.159.003> that
      <math|<around*|{|f+g\<less\>a|}>\<in\>\<cal-A\><rsub|\|D<big|cap>E>>.
      So as <math|a\<in\>\<bbb-R\>> was chosen arbitrary we have by
      <smart-ref|measurable functions conditions>

      <\equation*>
        f+g is \<cal-A\><text|->measurable
      </equation*>

      <item>We prove this by induction, so let
      <math|\<cal-N\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|f<rsub|i>:D<rsub|i>\<rightarrow\>\<bbb-R\>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>
      \<cal-A\><text|->measurable functions we have that
      <big|sum><rsub|i=1><rsup|n>f<rsub|i> is \<cal-A\><text|->measurable|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-N\>>>this is trivial as
        <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> which is
        <math|\<cal-A\>>-measurable

        <item*|<math|n\<in\>\<cal-N\>\<Rightarrow\>n+1\<in\>\<cal-N\>>>assume
        that <math|<around*|{|f<rsub|i>:D<rsub|i>\<rightarrow\>\<bbb-R\>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        is <math|\<cal-A\>>-measurable then
        <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is
        <math|\<cal-A\>>-measurable (as <math|n\<in\>\<cal-N\>>). Hence
        <math|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>>
        is <math|\<cal-A\>>-measurable, proving that
        <math|n+1\<in\>\<cal-N\>>.
      </description>

      <item>We have for <math|c\<in\>\<bbb-R\>> then if <math|c=0> we have
      that <math|\<forall\>x\<in\>D> that
      <math|<around*|(|c\<cdot\>f|)><around*|(|x|)>=0\<cdot\>f<around*|(|x|)>=0>
      so that <math|c\<cdot\>f> is a constant function which is by (1)
      <math|\<cal-A\>>-measurable. So we should check only the cases where
      <math|c\<neq\>0>. Then we have two cases to consider:

      <\description>
        <item*|<math|0\<less\>c>>then <math|\<forall\>a\<in\>\<bbb-R\>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|c\<cdot\>f\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|c\<cdot\>f|)><around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|c\<cdot\>f<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|x|)>\<less\><frac|a|c>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<less\><frac|a|c>|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|c\<cdot\>f\<less\>a|}>=<around*|{|f\<less\><frac|a|c>|}>\<in\>\<cal-A\><rsub|\|D>>
        (as <math|f> is <math|\<cal-A\>>-measurable). Using
        <smart-ref|measurable functions conditions> it follows then that
        <math|c\<cdot\>f> is <math|\<cal-A\>>-measurable.

        <item*|<math|c\<less\>0>>then <math|\<forall\>a\<in\>\<bbb-R\>>

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|c\<cdot\>f\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|c\<cdot\>f|)><around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|c\<cdot\>f<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|a|c>\<less\>f<around*|(|x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|<frac|a|c>\<less\>f|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|c\<cdot\>f\<less\>a|}>=<around*|{|<frac|a|c>\<less\>f|}>\<in\>\<cal-A\><rsub|\|D>>
        (as <math|f> is <math|\<cal-A\>>-measurable). Using
        <smart-ref|measurable functions conditions> it follows then that
        <math|c\<cdot\>f> is <math|\<cal-A\>>-measurable.
      </description>

      <item>Let <math|a\<in\>\<bbb-R\>>. Define now

      <\equation*>
        Q<rsub|a>=<around*|{|<around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>\<bbb-Q\><rsup|4>\|\<forall\>u\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>\<wedge\>\<forall\>v\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>
        we have u\<cdot\>v\<less\>a|}>\<subseteq\>\<bbb-Q\><rsup|4>
      </equation*>

      then from <smart-ref|natural,whole and rational numbers are
      denumerable>,<smart-ref|subsets of countable sets are countable> and
      <smart-ref|finite product of finite or denumerable sets> it follows
      that

      <\equation>
        <label|eq 18.160.003>\<forall\>a\<in\>\<bbb-R\> we have that
        Q<rsub|a> is countable
      </equation>

      Now given <math|q\<in\>\<bbb-Q\>> we have as <math|f,g> are
      <math|\<cal-A\>>-measurable that <math|<around*|{|f\<less\>q|}>,<around*|{|q\<less\>f|}>\<in\>\<cal-A\><rsub|\|D>>
      and <math|<around*|{|g\<less\>q|}>,<around*|{|q\<less\>g|}>\<in\>\<cal-A\><rsub|\|E>>
      so that there exists <math|F<rsub|q>,F<rprime|'><rsub|q>,G<rsub|q>,G<rsub|q><rprime|'>\<in\>\<cal-A\>>
      such that\ 

      <\equation>
        <label|eq 18.161.003><around*|{|f\<less\>q|}>=F<rsub|q><big|cap>D\<wedge\><around*|{|q\<less\>f|}>=F<rprime|'><rsub|q><big|cap>D\<wedge\><around*|{|g\<less\>q|}>=G<rsub|q><big|cap>E\<wedge\><around*|{|q\<less\>g|}>=G<rprime|'><rsub|q><big|cap>E
      </equation>

      Now define

      <\equation>
        <label|eq 18.162.003>\<forall\><around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a><space|1em>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>=<around*|{|x\<in\>D<big|cap>E\|f<around*|(|x|)>\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>\<wedge\>g<around*|(|x|)>\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>|}>
      </equation>

      then we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>q<rsub|1>\<less\>f<around*|(|x|)>\<wedge\>f<around*|(|x|)>\<less\>q<rsub|2>\<wedge\>q<rsub|3>\<less\>g<around*|(|x|)>\<wedge\>g<around*|(|x|)>\<less\>q<rsub|4>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>x\<in\><around*|{|q<rsub|1>\<less\>f|}>\<wedge\>x\<in\><around*|{|f\<less\>q<rsub|2>|}>\<wedge\>x\<in\><around*|{|q<rsub|3>\<less\>g|}>\<wedge\><around*|(|g\<less\>q<rsub|4>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|D<big|cap>E|)><big|cap>F<rprime|'><rsub|q<rsub|1>><big|cap>F<rsub|q<rsub|2>><big|cap>G<rprime|'><rsub|q<rsub|3>><big|cap>Q<rsub|q<rsub|4>><rsub|>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.163.003>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>=<around*|(|D<big|cap>E|)><big|cap>F<rprime|'><rsub|q<rsub|1>><big|cap>F<rsub|q<rsub|2>><big|cap>G<rprime|'><rsub|q<rsub|3>><big|cap>Q<rprime|'><rsub|q<rsub|4>><rsub|>\<in\>\<cal-A\><rsub|\|D<big|cap>E>
      </equation>

      As <math|Q<rsub|a>> is countable (see <smart-ref|eq 18.160.003>) it
      follows using <smart-ref|alternate definition of a sigma algebra> and
      the above that\ 

      <\equation>
        <label|eq 18.164.003><big|cup><rsub|<around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>\<in\>\<cal-A\><rsub|\|D<big|cap>E>
      </equation>

      If now <math|x\<in\><around*|{|f\<cdot\>g\<less\>a|}>> then
      <math|x\<in\>D<big|cap>E> and <math|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>=<around*|(|f\<cdot\>g|)><around*|(|x|)>\<less\>a\<Rightarrow\>0\<less\>a-f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      so that\ 

      <\equation>
        <label|eq 18.165.003>\<eta\><rsub|x>=min<around*|(|1,<frac|a-f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|1+<around*|\||f<around*|(|x|)>|\|>\<cdot\><around*|\||g<around*|(|x|)>|\|>>|)>\<gtr\>0
      </equation>

      As <math|f<around*|(|x|)>-\<eta\><rsub|x>\<less\>f<around*|(|x|)>> by
      <smart-ref|density theorem for the reals> there exists a
      <math|q<rsub|1>\<in\>\<bbb-Q\>> such that
      <math|f<around*|(|x|)>-\<eta\><rsub|x>\<less\>q<rsub|1>\<less\>f<around*|(|x|)>>,
      as <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>+\<eta\><rsub|x>>
      there exists by <smart-ref|density theorem for the reals> a
      <math|q<rsub|2>\<in\>\<bbb-Q\>> such that
      <math|f<around*|(|x|)>\<less\>q<rsub|2>\<less\>f<around*|(|x|)>+\<eta\><rsub|x>>,
      as <math|g<around*|(|x|)>-\<eta\><rsub|x>\<less\>g<around*|(|x|)>>
      there exists by <smart-ref|density theorem for the reals> a
      <math|q<rsub|3>\<in\>\<bbb-Q\>> such that
      <math|g<around*|(|x|)>-\<eta\><rsub|x>\<less\>q<rsub|3>\<less\>g<around*|(|x|)>>
      and finally from <math|g<around*|(|x|)>\<less\>g<around*|(|x|)>+\<eta\><rsub|x>>
      there exists a <math|q<rsub|4>\<in\>\<bbb-Q\>> such that
      <math|g<around*|(|x|)>\<less\>q<rsub|4>\<less\>g<around*|(|x|)>+\<eta\><rsub|q>>.
      To summarize\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<exists\><around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>\<bbb-Q\><rsup|4>>|<cell|such
        that>|<cell|f<around*|(|x|)>-\<eta\><rsub|x>\<less\>q<rsub|1>\<less\>f<around*|(|x|)>>>|<row|<cell|>|<cell|>|<cell|f<around*|(|x|)>\<less\>q<rsub|2>\<less\>f<around*|(|x|)>+\<eta\><rsub|x>>>|<row|<cell|>|<cell|>|<cell|g<around*|(|x|)>-\<eta\><rsub|x>\<less\>q<rsub|3>\<less\>g<around*|(|x|)>>>|<row|<cell|>|<cell|>|<cell|g<around*|(|x|)>\<less\>q<rsub|4>\<less\>g<around*|(|x|)>+\<eta\><rsub|x><eq-number><label|eq
        18.166.003>>>>>
      </eqnarray*>

      Now we have if <math|r\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>> that
      <math|q<rsub|1>\<less\>r\<less\>q<rsub|2>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|r-f<around*|(|x|)>>|<cell|\<less\>>|<cell|q<rsub|2>-f<around*|(|x|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
        18.166.003>>>>|<cell|<around*|(|f<around*|(|x|)>+\<eta\><rsub|x>|)>-f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<eta\><rsub|x>>>|<row|<cell|f<around*|(|x|)>-r>|<cell|\<less\>>|<cell|f<around*|(|x|)>-q<rsub|1>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
        18.166.003>>>>|<cell|f<around*|(|x|)>-<around*|(|f<around*|(|x|)>-\<eta\><rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|\<eta\><rsub|x>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.167.003>\<forall\>r\<in\><around*|]|q<rsub|1>,q|[> we
        have <around*|\||r-f<around*|(|x|)>|\|>\<less\>\<eta\><rsub|x>
      </equation>

      If <math|r\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>> then
      <math|q<rsub|3>\<less\>r\<less\>q<rsub|4>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|r-g<around*|(|x|)>>|<cell|\<less\>>|<cell|q<rsub|4>-g<around*|(|x|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
        18.166.003>>>>|<cell|<around*|(|g<around*|(|x|)>+\<eta\><rsub|x>|)>-g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<eta\><rsub|x>>>|<row|<cell|g<around*|(|x|)>-r>|<cell|\<less\>>|<cell|g<around*|(|x|)>-q<rsub|3>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
        18.166.003>>>>|<cell|g<around*|(|x|)>-<around*|(|g<around*|(|x|)>-\<eta\><rsub|x>|)>>>|<row|<cell|>|<cell|=>|<cell|\<eta\><rsub|x>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.168.003>\<forall\>r\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>
        we have <around*|\||r-g<around*|(|x|)>|\|>\<less\>\<eta\><rsub|x>
      </equation>

      \ Next if <math|r\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>> and
      <math|s\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|r\<cdot\>s-f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>|<cell|=>|<cell|<around*|(|r-f<around*|(|x|)>|)>\<cdot\>s+f<around*|(|x|)>\<cdot\><around*|(|s-g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|r-f<around*|(|x|)>|)>\<cdot\><around*|(|s-g<around*|(|x|)>+g<around*|(|x|)>|)>+f<around*|(|x|)>\<cdot\><around*|(|s-g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|r-f<around*|(|x|)>|)>\<cdot\><around*|(|s-g<around*|(|x|)>|)>+<around*|(|r-f<around*|(|x|)>|)>\<cdot\>g<around*|(|x|)>+f<around*|(|x|)>\<cdot\><around*|(|s-g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||r-f<around*|(|x|)>|\|>\<cdot\><around*|\||s-g<around*|(|x|)>|\|>+<around*|\||r-f<around*|(|x|)>|\|>\<cdot\><around*|\||g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>\<cdot\><around*|\||s-g<around*|(|x|)>|\|>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
        18.168.003>>,<smart-ref|eq 18.167.003>>>|<cell|\<eta\><rsub|x><rsup|2>+\<eta\><rsub|x>\<cdot\><around*|\||g<around*|(|x|)>|\|>+\<eta\><rsub|x>\<cdot\><around*|\||f<around*|(|x|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|\<eta\><rsub|x><around*|(|\<eta\><rsub|x>+<around*|\||g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.165.003>>>>|<cell|\<eta\><rsub|x><around*|(|1+<around*|\||g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
        18.165.003>>>>|<cell|<frac|a-f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|1+<around*|\||f<around*|(|x|)>|\|>\<cdot\><around*|\||g<around*|(|x|)>|\|>>\<cdot\><around*|(|1+<around*|\||g<around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>|)>>>|<row|<cell|>|<cell|=>|<cell|a-f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>>>
      </eqnarray*>

      from which it follows that <math|r\<cdot\>s\<less\>a> and thus\ 

      <\equation>
        <label|eq 18.169.003><around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>
      </equation>

      As from <smart-ref|eq 18.166.003> <math|f<around*|(|x|)>\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>>
      and <math|g<around*|(|x|)>\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>> we
      have using the above and the definition of
      <math|E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>> that
      <math|x\<in\>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>>. Which
      proves that\ 

      <\equation>
        <label|eq 18.170.003><around*|{|f\<cdot\>g\<less\>a|}>\<subseteq\><big|cup><rsub|<around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>
      </equation>

      For the opposite inclusion we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|<around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>>|<cell|\<Rightarrow\>>|<cell|\<exists\><around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>
        such that x\<in\>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|2>,q<rsub|4>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>D<big|cap>E\<wedge\>f<around*|(|x|)>\<in\><around*|]|q<rsub|1>,q<rsub|2>|[>\<wedge\>g<around*|(|x|)>\<in\><around*|]|q<rsub|3>,q<rsub|4>|[>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|definition
        of Q<rsub|a>>>|<cell|x\<in\>D<big|cap>E\<wedge\>f<around*|(|x|)>\<cdot\>g<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><around*|{|f\<cdot\>g\<less\>a|}>>>>>
      </eqnarray*>

      so using <smart-ref|eq 18.170.003> we have that
      <math|<around*|{|f\<cdot\>g\<less\>a|}>=<big|cup><rsub|<around*|(|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>|)>\<in\>Q<rsub|a>>E<rsub|q<rsub|1>,q<rsub|2>,q<rsub|3>,q<rsub|4>>\<in\>\<cal-A\><rsub|\|D<big|cap>E>>
      (using <smart-ref|eq 18.164.003>). As <math|a\<in\>\<bbb-R\>> was
      chosen arbitrary we have by <smart-ref|measurable functions conditions>
      that\ 

      <\equation*>
        f\<cdot\>g is \<cal-A\><text|->measurable\ 
      </equation*>

      <item>Using (4) it is enough to prove that
      <math|<frac|1|g>:E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>\<rightarrow\>\<bbb-R\>>
      is <math|\<cal-A\>>-measurable. Let now <math|a\<in\>\<bbb-R\>> then we
      have for <math|a> the following cases\ 

      <\description>
        <item*|<math|0\<less\>a>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|<frac|1|g>\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><frac|1|g<around*|(|x|)>>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><frac|1|g<around*|(|x|)>>\<less\>a\<wedge\><around*|(|g<around*|(|x|)>\<less\>0\<vee\>0\<less\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><around*|(|<frac|1|g<around*|(|x|)>>\<less\>a\<wedge\>g<around*|(|x|)>\<less\>0|)>\<vee\><around*|(|<frac|1|g<around*|(|x|)>>\<less\>a\<wedge\>0\<less\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><around*|(|a\<cdot\>g<around*|(|x|)>\<less\>1\<wedge\>g<around*|(|x|)>\<less\>0|)>\<vee\><around*|(|1\<less\>a\<cdot\>g<around*|(|x|)>\<wedge\>0\<less\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><around*|(|g<around*|(|x|)>\<less\><frac|1|a>\<wedge\>g<around*|(|x|)>\<less\>0|)>\<vee\><around*|(|<frac|1|a>\<less\>g<around*|(|x|)>\<wedge\>0\<less\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|0\<less\>a>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><around*|(|g<around*|(|x|)>\<less\>0|)>\<vee\><around*|(|<frac|1|a>\<less\>g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|(|<around*|{|g\<less\>0|}><big|cup><around*|(|<frac|1|a>\<less\>g|)>|)>>>>>
        </eqnarray*>

        proving that <math|<around*|{|<frac|1|g>\<less\>a|}>=E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|(|<around*|{|g\<less\>0|}><big|cup><around*|(|<frac|1|a>\<less\>g|)>|)>\<in\>\<cal-A\><rsub|\|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>>>
        (see <smart-ref|Borel functions and intersection>). Hence using
        <smart-ref|measurable functions conditions> we have that
        <math|<around*|{|<frac|1|g>\<less\>a|}>\<in\>\<cal-A\><rsub|\|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>>>

        <item*|<math|0=a>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|<frac|1|g>\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><frac|1|g<around*|(|x|)>>\<less\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and>g<around*|(|x|)>\<less\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|{|g\<less\>0|}>>>>>
        </eqnarray*>

        proving (see <smart-ref|Borel functions and intersection>) that
        <math|<around*|{|<frac|1|g>\<less\>a|}>=E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|{|g\<less\>0|}>\<in\>\<cal-A\><rsub|\|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>>>

        <item*|<math|a\<less\>0>>then

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|{|<frac|1|g>\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><frac|1|g<around*|(|x|)>>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<frac|1|g<around*|(|x|)>>\<less\>a\<less\>0\<Rightarrow\>g<around*|(|x|)>\<less\>0>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and>a\<cdot\>g<around*|(|x|)>\<less\>1\<wedge\>g<around*|(|x|)>\<less\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><infix-and><frac|1|a>\<less\>g<around*|(|x|)>\<less\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|{|<frac|1|a>\<less\>g|}><big|cap><around*|{|g\<less\>0|}>>>>>
        </eqnarray*>

        proving (see <smart-ref|Borel functions and intersection>) that
        <math|<around*|{|<frac|1|g>\<less\>a|}>=E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}><big|cap><around*|{|<frac|1|a>\<less\>g|}><big|cap><around*|{|g\<less\>0|}>\<in\>\<cal-A\><rsub|\|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>>>
      </description>

      So in all cases we have that <math|<around*|{|<frac|1|g>\<less\>a|}>\<in\>\<cal-A\><rsub|\|E<big|cap><around*|{|x\<in\>E\|g<around*|(|x|)>\<neq\>0|}>>>
      which as <math|a\<in\>\<bbb-R\>> is chosen arbitrary by
      <smart-ref|measurable functions conditions> proves that

      <\equation*>
        <frac|1|g> is Borel measurable
      </equation*>

      <item>Let <math|a\<in\>\<bbb-R\>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|{|f<rsub|\|C>\<less\>a|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>C\<wedge\>f<rsub|\|C><around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D<big|cap>C\<wedge\>f<around*|(|x|)>\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|D<big|cap>C|)>\<wedge\>x\<in\><around*|{|f\<less\>a|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|D<big|cap>C|)><big|cap><around*|{|f\<less\>a|}>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|{|f\<less\>a|}>\<subseteq\>D>>|<cell|x\<in\>C<big|cap><around*|{|f\<less\>a|}>>>>>
      </eqnarray*>

      proving that <math|<around*|{|f<rsub|\|C>\<less\>a|}>=C<big|cap><around*|{|f\<less\>a|}>\<in\>\<cal-A\><rsub|\|D<big|cap>C>>
      (see <smart-ref|Borel functions and intersection>)
    </enumerate>
  </proof>

  <\theorem>
    <label|measurable functions and limits>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|<around*|{|f<rsub|n>:D<rsub|n>\<rightarrow\>\<bbb-R\>|}><rsub|n\<in\>\<bbb-N\>>>
    a sequence of functions such that <math|D<rsub|i>\<subseteq\>X> and
    <math|f<rsub|i>> is <math|\<cal-A\>>-measurable then we have\ 

    <\enumerate>
      <item>Let <math|D=<around*|{|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>D<rsub|i><rsub|>|)>\|\<exists\>n\<in\>\<bbb-N\>
      such that x\<in\><big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>D<rsub|i><infix-and><below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>
      here <below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)> is
      the limit of <around*|{|f<rsub|i><around*|(|x|)>|}><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>|}>>
      then <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>:D\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
      is <math|\<cal-A\>>-measurable.\ 

      <item>Let <math|D=<around*|{|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\|sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\<in\>\<bbb-R\>|}>>
      then <math|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>:D\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>>
      is <math|\<cal-A\>>-measurable.

      <item>Let <math|D=<around*|{|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\|inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\<in\>\<bbb-R\>|}>>
      then <math|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i>:D\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i>|)><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>>
      is <math|\<cal-A\>>-measurable.

      <item>Let <math|D=<around*|{|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\|<below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>|}>>
      then <math|<below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i>:D\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>=<below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>> is
      <math|\<cal-A\>>-measurable.

      <item>Let <math|D=<around*|{|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\|<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>|}>>
      then <math|<below|lim sup|i\<rightarrow\>\<infty\>>f<rsub|i>:D\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>=<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>> is
      <math|\<cal-A\>>-measurable.
    </enumerate>
  </theorem>

  <\proof>
    \ Let <math|n\<in\>\<bbb-N\>> and <math|a\<in\>\<bbb-R\>> then as
    <math|f<rsub|n>:D<rsub|n>\<rightarrow\>\<bbb-R\>> is
    <math|\<cal-A\>>-measurable, there exists a
    <math|F<rsub|n><around*|(|a|)>\<in\>\<cal-A\>> such that
    <math|<around*|{|f<rsub|n>\<leqslant\>a|}>=F<rsub|n><around*|(|a|)><big|cap>D<rsub|n>>,
    we proceed now to prove points 1-5.

    <\enumerate>
      <item>Let <math|a\<in\>\<bbb-R\>> and take
      <math|x\<in\><around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>>
      then <math|x\<in\>D> and <math|<around*|(|<below|lim|i\<rightarrowlim\>>f<rsub|i>|)><around*|(|x|)>\<leqslant\>a>.
      In other words there exists a <math|M<rsub|x>\<in\>\<bbb-N\>> such that
      <math|x\<in\><big|cap><rsub|i\<in\><around*|{|M<rsub|x>,\<ldots\>,\<infty\>|}>>D<rsub|i>>
      and <math|<around*|{|f<rsub|i><around*|(|x|)>|}><rsub|i\<in\><around*|{|M,\<ldots\>,\<infty\>|}>>>
      has a limit <math|l=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
      where <math|l\<equallim\><rsub|def><around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>\<leqslant\>a>.
      Take now <math|k\<in\>\<bbb-N\>> then
      <math|l\<leqslant\>a\<less\>a+<frac|1|k>> and if we take
      <math|\<varepsilon\><rsub|k>=a+<frac|1|k>-l\<gtr\>0> there exists a
      <math|n<rsub|k>\<in\><around*|{|M<rsub|x>,\<ldots\>,\<infty\>|}>> such
      that <math|\<forall\>i\<in\><around*|{|n<rsub|k>,\<ldots\>,\<infty\>|}>>
      we have <math|f<rsub|i><around*|(|x|)>-l\<leqslant\><around*|\||l-f<rsub|i><around*|(|x|)>|\|>\<less\>\<varepsilon\><rsub|k>=a+<frac|1|k>-l>
      proving that <math|f<rsub|i><around*|(|x|)>\<less\>a+<frac|1|k>> hence
      <math|x\<in\><around*|{|f<rsub|i>\<less\>a+<frac|1|k>|}>\<subseteq\>F<rsub|i><around*|(|a+<frac|1|k>|)>>.
      So \ <math|x\<in\><big|cap><rsub|i\<in\><around*|{|n<rsub|k>,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>>
      and as <math|n<rsub|k>\<in\><around*|{|M<rsub|x>,\<ldots\>,\<infty\>|}>\<subseteq\>\<bbb-N\>>
      we have <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>>.
      Further as <math|k> was chosen arbitrary and <math|x\<in\>D> we have
      that\ 

      <\equation>
        <label|eq 18.171.003><around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>\<subseteq\>D<big|cap><around*|(|<big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>
      </equation>

      Let <math|x\<in\>D<big|cap><around*|(|<big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>>
      then as <math|x\<in\>D> there exists a <math|m\<in\>\<bbb-N\>> such
      that <math|x\<in\><big|cap><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>D<rsub|i>>
      and for <math|<around*|{|f<rsub|i><around*|(|x|)>|}><rsub|i\<in\><around*|{|m,\<ldots\>,\<infty\>|}>>>
      <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>>.
      As <math|x\<in\><big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|n>|)>|)>|)>>
      we have <math|\<forall\>k\<in\>\<bbb-N\>> that there exists a
      <math|n\<in\>\<bbb-N\>> such that <math|\<forall\>i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>
      we have <math|x\<in\>F<rsub|i><around*|(|a+<frac|1|k>|)>>. Take now
      <math|p=max<around*|(|n,m|)>> then <math|\<forall\>k\<in\>\<bbb-N\>> we
      have for <math|i\<in\><around*|{|p,\<ldots\>,\<infty\>|}>> that
      <math|x\<in\>D<rsub|i><big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>=<around*|{|f<rsub|i>\<less\>a+<frac|1|k>|}>\<Rightarrow\>f<rsub|i><around*|(|x|)>\<less\>a+<frac|1|k>>.
      Using <smart-ref|consequence of the Archimedean property (2)> we have
      then that <math|\<forall\>i\<in\><around*|{|p,\<ldots\>,\<infty\>|}>>
      <math|f<rsub|i><around*|(|x|)>\<leqslant\>a>. So using <smart-ref|limit
      preserve inequality> we have that <math|<around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>\<leqslant\>a>
      or <math|x\<in\><around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>>
      giving

      <\equation>
        <label|eq 18.172.003>D<big|cap><around*|(|<big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>\<subseteq\><around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>
      </equation>

      which together with <smart-ref|eq 18.171.003> gives\ 

      <\equation>
        <label|eq 18.173.003>D<big|cap><around*|(|<big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>=<around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>
      </equation>

      Using <smart-ref|generalized distributive laws> we have then\ 

      <\equation>
        <label|eq 18.174.003><big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>><around*|(|D<big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>=<around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>
      </equation>

      Now \ <math|D<big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>\<in\>\<cal-A\><rsub|\|D>>,
      hence \ <math|>using <smart-ref|sigma algebra properties> we have
      <math|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>><around*|(|D<big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>\<in\>\<cal-A\><rsub|\|D>>,
      so <math|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>><around*|(|D<big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>\<in\>\<cal-A\><rsub|\|D>>
      and thus <math|<big|cap><rsub|k\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cap><rsub|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>><around*|(|D<big|cap>F<rsub|i><around*|(|a+<frac|1|k>|)>|)>|)>|)>\<in\>\<cal-A\><rsub|\|D>>
      which proves that <math|<around*|{|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<leqslant\>a|}>\<in\>\<cal-A\><rsub|\|D>>.
      So by <smart-ref|measurable functions conditions> we have that\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>>f<rsub|i> is
        \<cal-A\><text|->measurable
      </equation*>

      <item>Let <math|x\<in\><around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>>
      then <math|x\<in\>D> so that <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>,
      <math|<around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\<in\>\<bbb-R\>>
      and <math|><math|sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\<leqslant\>a>.
      Hence <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|f<rsub|i><around*|(|x|)>\<leqslant\>a\<Rightarrow\>x\<in\><around*|{|f<rsub|i>\<leqslant\>a|}>\<subseteq\>F<rsub|i><around*|(|a|)>>
      proving

      <\equation>
        <label|eq 18.175.003><around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>\<subseteq\>D<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>|)>
      </equation>

      If <math|x\<in\>D<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>|)>>
      then <math|x\<in\>D\<Rightarrow\>x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>
      and <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>>
      so that <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|x\<in\>F<rsub|i><around*|(|a|)><big|cap>D<rsub|i>=<around*|{|f<rsub|i>\<leqslant\>a|}>\<Rightarrow\>f<rsub|i><around*|(|x|)>\<leqslant\>a>.
      Hence <math|<around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\<leqslant\>a>
      or <math|x\<in\><around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>>
      proving that <math|D<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>|)>\<subseteq\><around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>>.
      Using this in <smart-ref|eq 18.175.003>\ 

      <\equation>
        <label|eq 18.176.003><around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>=D<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>|)>
      </equation>

      As <math|D<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>F<rsub|i><around*|(|a|)>|)>=<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|D<big|cap>F<rsub|i><around*|(|A|)>|)>\<in\>\<cal-A\><rsub|\|D>>
      we have <math|<around*|{|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>\<leqslant\>a|}>\<in\>\<cal-A\><rsub|\|D>>.
      Applying then <smart-ref|measurable functions conditions> give that\ 

      <\equation*>
        <below|sup|i\<in\>\<bbb-N\>>f<rsub|i> is \<cal-A\><text|->measurable
      </equation*>

      <item>As <math|\<forall\>i\<in\>\<bbb-N\>> <math|f<rsub|i>> is
      <math|\<cal-A\>>-measurable we have by <smart-ref|measurable function
      operations> (3) that <math|-f<rsub|i>> is <math|\<cal-A\>>-measurable.
      So by (2) <math|<below|sup|i\<in\>\<bbb-N\>><around*|(|-f<rsub|i>|)>>
      is <math|\<cal-A\>>-measurable and using <smart-ref|measurable function
      operations> (3) again we have that <math|<below|-sup|i\<in\>\<bbb-N\>><around*|(|-f<rsub|i>|)>>
      is <math|\<cal-A\>>-measurable. Further as\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|sup|i\<in\>\<bbb-N\>><around*|(|-f<rsub|i>|)>|)><around*|(|x|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|-f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|-sup
        A=inf -A>>>>|<cell|-inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|-<around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i>|)><around*|(|x|)>>>>>
      </eqnarray*>

      which proves that <math|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i>=-<below|sup|i\<in\>\<bbb-N\>>f<rsub|i>>.
      Hence\ 

      <\equation*>
        <below|inf|i\<in\>\<bbb-N\>>f<rsub|i> is
        \ \<cal-A\><text|->measurable
      </equation*>

      <item>Let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        sup|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>>|<cell|=>|<cell|<below|lim
        sup|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|f<rsub|i+n-1><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\|n\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)><around*|(|x|)>\|n\<in\>\<bbb-N\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|inf|n\<in\>\<bbb-N\>><around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<below|lim sup|i\<rightarrow\>\<infty\>>f<rsub|i>=<below|inf|n\<in\>\<bbb-N\>><around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>>.
      Let <math|n\<in\>\<bbb-N\>> then as <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|i+n-1\<in\>\<bbb-N\>> we have that <math|><math|f<rsub|i+n-1>> is
      <math|\<cal-A\>>-measurable, so that by (2)
      <math|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i+n-1>> is
      <math|\<cal-A\>>-measurable. Finally by (3)
      <math|><math|<below|inf|n\<in\>\<bbb-N\>><around*|(|<below|sup|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>>
      is <math|\<cal-A\>>-measurable proving that\ 

      <\equation*>
        <below|lim sup|i\<rightarrow\>\<infty\>>f<rsub|i> is
        \ \<cal-A\><text|->measurable
      </equation*>

      \ 

      <item>Let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>D<rsub|i>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        inf|i\<rightarrow\>\<infty\>>f<rsub|i>|)><around*|(|x|)>>|<cell|=>|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|i+n-1><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>\|n\<in\>\<bbb-N\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)><around*|(|x|)>\|n\<in\>\<bbb-N\>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|sup|n\<in\>\<bbb-N\>><around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|<below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i>=<below|sup|n\<in\>\<bbb-N\>><around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>>.
      Let <math|n\<in\>\<bbb-N\>> then as <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|i+n-1\<in\>\<bbb-N\>> we have that <math|><math|f<rsub|i+n-1>> is
      <math|\<cal-A\>>-measurable, so that by (3)
      <math|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i+n-1>> is
      <math|\<cal-A\>>-measurable. Finally by (2)
      <math|><math|<below|sup|n\<in\>\<bbb-N\>><around*|(|<below|inf|i\<in\>\<bbb-N\>>f<rsub|i+n-1>|)>>
      is <math|\<cal-A\>>-measurable proving that\ 

      <\equation*>
        <below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i> is
        \<cal-A\><text|->measurable
      </equation*>
    </enumerate>
  </proof>

  <\proposition>
    <label|measurable function extension>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|D\<subseteq\>X> and <math|f:D\<rightarrow\>\<bbb-R\>> then <math|f>
    is Borel measurable if and only if <math|\<exists\>h:X\<rightarrow\>\<bbb-R\>>
    <math|\<cal-A\>>-measurable such that <math|h<rsub|\|D>=f>
  </proposition>

  <\proof>
    \ If <math|h:X\<rightarrow\>\<bbb-R\>> is a <math|\<cal-A\>>-measurable
    function such that <math|h<rsub|\|D>=f> then by <smart-ref|measurable
    function operations> (6) <math|h<rsub|\|D>> is
    <math|\<cal-A\>>-measurable hence <math|f> is
    <math|\<cal-A\>>-measurable. So we must only prove the opposite
    implication. Let <math|f:D\<rightarrow\>\<bbb-R\>> be a
    <math|\<cal-A\>>-measurable function. Take <math|q\<in\>\<bbb-Q\>> then
    <math|<around*|{|f\<leqslant\>q|}>\<in\>\<cal-A\><rsub|\|D>> and thus
    there exists a <math|A<rsub|q>\<in\>\<cal-A\>> such that\ 

    <\equation>
      <label|eq 18.177.003><around*|{|f\<leqslant\>q|}>=A<rsub|q><big|cap>D
    </equation>

    As <math|\<bbb-Q\>> is denumerable and thus countable (see
    <smart-ref|natural,whole and rational numbers are denumerable>) we have
    by <smart-ref|sigma algebra properties> that
    <math|<big|cup><rsub|q\<in\>Q>A<rsub|q>\<in\>\<cal-A\>>, hence we have
    that\ 

    <\equation>
      <label|eq 18.178.003>F=X\\<big|cup><rsub|q\<in\>Q>A<rsub|q>\<in\>\<cal-A\>
    </equation>

    Further if <math|n\<in\>\<bbb-N\>> we have that
    <math|<around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>-n|}>\<subseteq\>\<bbb-Q\>>
    is countable (see <smart-ref|subsets of countable sets are countable>) it
    follows using <smart-ref|sigma algebra properties> that
    <math|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>-n|}>>A<rsub|q>\<in\>\<cal-A\>>,
    hence we have that\ 

    <\equation>
      <label|eq 18.179.003>G=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|(|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>-n|}>>A<rsub|q>|)>\<in\>\<cal-A\>
    </equation>

    If <math|x\<in\>D> then <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>+1>,
    using <smart-ref|density theorem for the reals> there exists a
    <math|q\<in\>\<bbb-Q\>> such that <math|f<around*|(|x|)>\<less\>q\<less\>f<around*|(|x|)>+1>,
    so that <math|x\<in\><around*|{|f\<leqslant\>q|}>\<subseteq\>A<rsub|q>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>>A<rsub|q>>
    hence <math|x\<nin\>F> proving that <math|F<big|cap>D=\<emptyset\>.> Also
    using <reference|consequence of the archimedean property for the reals>
    there exists a <math|n\<in\>\<bbb-N\>> such that
    <math|-f<around*|(|x|)>\<less\>n\<Rightarrow\>-n\<less\>f<around*|(|x|)>>
    so that <math|\<forall\>q<rprime|'>\<in\>Q> with
    <math|q<rprime|'>\<leqslant\>-n> we have
    <math|q<rprime|'>\<less\>f<around*|(|x|)>>. Assume that
    <math|x\<in\>A<rsub|q<rprime|'>>\<Rightarrowlim\><rsub|x\<in\>D>x\<in\>A<rsub|q<rprime|'>><big|cap>D=<around*|{|f\<leqslant\>q<rprime|'>|}>\<Rightarrow\>f<around*|(|x|)>\<leqslant\>q<rprime|'>>
    contradicting <math|q<rprime|'>\<less\>f<around*|(|x|)>>, hence we must
    have that <math|x\<nin\>A<rsub|q<rprime|'>>>. This proves that
    <math|x\<nin\><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<leqslant\>-n|}>>A<rsub|q>>
    and thus <math|x\<nin\>G> or <math|D<big|cap>G=\<emptyset\>>. To
    summarize we have\ 

    <\equation>
      <label|eq 18.180.003>D<big|cap>F=\<emptyset\><infix-and>D<big|cap>G=\<emptyset\>
    </equation>

    Set <math|H=X\\<around*|(|F<big|cup>G|)>> then using <smart-ref|eq
    18.178.003> and <smart-ref|eq 18.179.003> we have that
    <math|H\<in\>\<cal-A\>>. Now given <math|x\<in\>H> we have
    <math|x\<nin\>F\<Rightarrow\>\<exists\>q\<in\>\<bbb-Q\>> such that
    <math|x\<in\>A<rsub|q>> proving that <math|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>\<neq\>\<emptyset\>>,
    Further as <math|x\<nin\>G> there exists a <math|n\<in\>\<bbb-N\>> such
    that <math|\<forall\>q\<in\>\<bbb-Q\>> with <math|q\<leqslant\>-n> we
    have <math|x\<nin\>A<rsub|q>>. So for all
    <math|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>> we must
    have that <math|-n\<less\>q> or <math|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>\<cal-A\><rsub|q>|}>>
    is bounded below. As <math|\<bbb-R\>> is conditionally complete (see
    <smart-ref|the reals are conditional complete>) we have

    <\equation>
      <label|eq 18.181.003>\<forall\>x\<in\>H=X\\<around*|(|F<big|cup>G|)><space|1em>
      inf<around*|(|<around*|{|q\<in\>Q\|x\<in\>A<rsub|q>|}>|)> exist in
      \<bbb-R\>
    </equation>

    We define now <math|h:X\<rightarrow\>\<bbb-R\>> by\ 

    <\equation>
      <label|eq 18.182.003>h<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|inf<around*|(|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>|)>
      if x\<in\>H>>|<row|<cell|0 if x\<nin\>H>>>>>
    </equation>

    Next we prove that <math|h> extends <math|f>. If <math|x\<in\>D> then
    using <smart-ref|eq 18.180.003> we have that <math|x\<in\>H>. As for
    <math|f<around*|(|x|)>> we can find (see <smart-ref|density theorem for
    the reals>) a <math|q\<in\>\<bbb-Q\>> such that
    <math|f<around*|(|x|)>\<less\>q\<less\>f<around*|(|x+1|)>> hence
    <math|q\<in\><around*|{|f\<leqslant\>q|}>\<subseteq\>A<rsub|q>\<Rightarrow\>q\<in\><around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>>
    so that <math|f<around*|(|x|)>\<leqslant\>inf<around*|(|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>|)>=h<around*|(|x|)>>
    proving that

    <\equation>
      <label|eq 18.183.003>f<around*|(|x|)>\<leqslant\>h<around*|(|x|)>.
    </equation>

    If <math|\<varepsilon\>\<gtr\>0> then using <smart-ref|density theorem
    for the reals> there a <math|q\<in\>\<bbb-Q\>> such that
    <math|f<around*|(|x|)>\<less\>q\<less\>f<around*|(|x|)>+\<varepsilon\>>,
    as <math|f<around*|(|x|)>\<less\>q<text| gives
    >x\<in\><around*|{|f\<leqslant\>q|}>\<subseteq\>A<rsub|q>>, it follows
    from the definition of infinum that <math|h<around*|(|x|)>\<leqslant\>q\<less\>f<around*|(|x|)>+\<varepsilon\>>,
    proving that <math|h<around*|(|x|)>\<less\>f<around*|(|x|)>+\<varepsilon\>>.
    As <math|\<varepsilon\>\<gtr\>0> was choosen arbitrary it follows from
    <smart-ref|consequence of the Archimedean property (2)> that
    <math|h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>> giving using
    <smart-ref|eq 18.183.003> that <math|f<around*|(|x|)>=h<around*|(|x|)>>.
    Hence\ 

    <\equation>
      <label|eq 18.184.003>\<forall\>x\<in\>D we have
      h<around*|(|x|)>=f<around*|(|x|)><infix-or>h<rsub|\|D>=f
    </equation>

    Finally we must prove that <math|h> is measurable. Let
    <math|a\<in\>\<bbb-R\>> then we must consider the following cases:\ 

    <\description>
      <item*|0\<less\>a>Let <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      and consider for <math|x> the following cases\ 

      <\description>
        <item*|<math|x\<in\>F<big|cup>G>>then
        <math|x\<in\><around*|(|F<big|cup>G|)>\<subseteq\><around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>>

        <item*|<math|x\<nin\>F<big|cup>G>>then <math|x\<in\>H> hence
        <math|h<around*|(|x|)>=inf<around*|(|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>|)>\<less\>a>,
        so there exists a <math|q\<in\>\<bbb-Q\>\<vdash\>x\<in\>A<rsub|q>>
        such that <math|h<around*|(|x|)>\<leqslant\>q\<less\>a>, giving
        <math|x\<in\><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>>,
        so <math|x\<in\>H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>\<subseteq\><around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>>
      </description>

      hence\ 

      <\equation>
        <label|eq 18.186.003.1><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>\<subseteq\><around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>
      </equation>

      If <math|x\<in\><around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>>
      then either

      <\description>
        <item*|<math|x\<in\>F<big|cup>G>>then <math|x\<nin\>H> so that
        <math|h<around*|(|x|)>=0\<less\>a> proving that
        <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>

        <item*|<math|x\<nin\>F<big|cup>G>>then
        <math|x\<in\>H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>>
        hence <math|x\<in\>H> and <math|\<exists\>q\<in\>Q with q\<less\>a>
        and <math|x\<in\>A<rsub|q>>. From <math|x\<in\>H> we have that
        <math|h<around*|(|x|)>=inf<around*|(|<around*|{|q<rprime|'>\<in\>Q\|x\<in\>A<rsub|q<rprime|'>>|}>|)>>
        so that <math|h<around*|(|x|)>\<leqslant\>q\<less\>a> which proves
        that <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      </description>

      So in all cases <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      and thus we have <math|<around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>\<subseteq\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      which together with <smart-ref|eq 18.186.003.1> gives\ 

      <\equation>
        <label|eq 18.186.003><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>=<around*|(|H<big|cap><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)><big|cup><around*|(|F<big|cup>G|)>
      </equation>

      As <math|<around*|{|a\<in\>\<bbb-Q\>\|q\<less\>a|}>\<subseteq\>\<bbb-Q\>>
      is countable [see <smart-ref|natural,whole and rational numbers are
      denumerable>, <smart-ref|subsets of countable sets are countable>] and
      <math|A<rsub|q>\<in\>\<cal-A\>> we have by <smart-ref|sigma algebra
      properties> that <math|><math|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>\<in\>\<cal-A\>>.
      Further <math|F,G\<in\>\<cal-A\>> [see <smart-ref|eq
      18.178.003>,<smart-ref|eq 18.179.003>] and thus also
      <math|H=X\\<around*|(|F<big|cup>G|)>\<in\>\<cal-A\>>. To summarize

      <\equation>
        <label|eq 18.187.003.1><big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>,F,G,H\<in\>\<cal-A\>
      </equation>

      So using <smart-ref|eq 18.186.003> we have\ 

      <\equation>
        <label|eq 18.187.003><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>\<in\>\<cal-A\>
      </equation>

      <item*|<math|a\<leqslant\>0>>If <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      then <math|h<around*|(|x|)>\<less\>a>. If <math|x\<nin\>H> then
      <math|0=h<around*|(|x|)>\<less\>a\<leqslant\>0> giving the
      contradiction <math|0\<less\>0>. So we must have that <math|x\<in\>H>,
      then <math|h<around*|(|x|)>=inf<around*|(|<around*|{|q\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q>|}>|)>>
      and thus there exists a <math|q\<in\>\<bbb-Q\>> with
      <math|x\<in\>A<rsub|q>> such that <math|h<around*|(|x|)>\<leqslant\>q\<less\>a>.
      So <math|x\<in\><big|cup><rsub|q\<in\><around*|{|q\<in\>Q\|q\<less\>a|}>>A<rsub|q>>
      giving\ 

      <\equation>
        <label|eq 18.188.003><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>\<subseteq\>H<big|cap><around*|(|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)>
      </equation>

      If <math|x\<in\>H<big|cap><around*|(|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)>>
      then <math|x\<in\>X> and <math|\<exists\>q\<in\>\<bbb-Q\>> with
      <math|q\<less\>a> such that <math|x\<in\>A<rsub|q>>. As <math|x\<in\>H>
      we have that <math|h<around*|(|x|)>=inf<around*|(|<around*|{|q<rprime|'>\<in\>\<bbb-Q\>\|x\<in\>A<rsub|q<rprime|'>>|}>|)>\<leqslant\>q\<less\>a>
      proving that <math|x\<in\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>.
      So <math|H<big|cap><around*|(|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)>\<subseteq\><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>>
      which by <smart-ref|eq 18.188.003> proves\ 

      <\equation>
        <label|eq 18.189.003><around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>=H<big|cap><around*|(|<big|cup><rsub|q\<in\><around*|{|q\<in\>\<bbb-Q\>\|q\<less\>a|}>>A<rsub|q>|)>
      </equation>

      Using <smart-ref|eq 18.187.003.1> on the above gives\ 

      <\equation*>
        <around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>
      </equation*>
    </description>

    So we have proves that <math|\<forall\>a\<in\>\<bbb-R\>> we have
    <math|<around*|{|h\<less\>a|}>=<around*|{|x\<in\>X\|h<around*|(|x|)>\<less\>a|}>\<in\>\<cal-A\>>
    which proves (see <smart-ref|measurable functions conditions>) that\ 

    <\equation>
      <label|eq 18.191.003>h is \<cal-A\><text|->measurable
    </equation>

    The proposition is then proved by <smart-ref|eq 18.184.003> and
    <smart-ref|eq 18.191.003>
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    a measurable space and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|D<rsub|i>\<subseteq\>X> and <math|f<rsub|i>:D<rsub|i>\<rightarrow\>\<bbb-R\>>
    <math|\<cal-A\>>-measurable functions. Then if we take
    <math|D=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>> and
    <math|f:D\<rightarrow\>\<bbb-R\><rsup|n>> defined by
    <math|f<around*|(|x|)>=<around*|(|f<rsub|1><around*|(|x|)>,\<ldots\>,f<rsub|n><around*|(|x|)>|)>>
    we have

    <\enumerate>
      <item><math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>> [or <math|f>
      is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>-measurable.

      <item>If <math|A\<subseteq\>\<bbb-R\><rsup|n>> and
      <math|h:A\<rightarrow\>\<bbb-R\>> a <math|\<cal-A\>>-measurable
      function then <math|h\<circ\>f:D<big|cap>h<rsup|-1><around*|(|A|)>\<rightarrow\>\<bbb-R\>>
      is Borel measurable.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define

      <\equation>
        <label|eq 18.198.005>\<cal-C\>=<around*|{|B\<in\>\<bbb-R\><rsup|n>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>|}>
      </equation>

      As <math|f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>\<in\>\<cal-A\><rsub|\|D>>
      it follows that\ 

      <\equation>
        <label|eq 18.199.005>\<emptyset\>\<in\>\<cal-C\>
      </equation>

      If <math|B\<in\>\<cal-C\>> then <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>
      a <math|\<sigma\>>-algebra on <math|D> then
      <math|f<rsup|-1><around*|(|\<bbb-R\><rsup|n>\\B|)>\<equallim\><rsub|<text|<smart-ref|properties
      of image and preimage>> <around*|(|4|)>>D\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>>
      [see <smart-ref|sigma algebra properties>] proving\ 

      <\equation>
        <label|eq 18.200.005>\<forall\>B\<in\>\<cal-C\> we have
        D\\B\<in\>\<cal-C\>
      </equation>

      Further if <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|f<rsup|-1><around*|(|B<rsub|i>|)>\<in\>\<cal-A\><rsub|\|D>>. As
      <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|<smart-ref|image
      (preimage) of union , intersections>>><big|cup><rsub|i\<in\>\<bbb-N\>>f<rsup|-1><around*|(|B<rsub|i>|)>\<in\>\<cal-A\><rsub|<around*|\||D|\|>>>
      we have together with <smart-ref|eq 18.199.005> and <smart-ref|eq
      18.200.005> that\ 

      <\equation>
        <label|eq 18.201.005>\<cal-C\> is a \<sigma\><text|-algebra>
      </equation>

      Let <math|H\<in\>\<cal-H\><rsup|n>> there exists a
      <math|a\<in\>\<bbb-R\>> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
      so that <math|H=<around*|]|-\<infty\>,a|]><rsub|i>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>f<rsup|-1><around*|(|H|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<around*|(|x|)>\<in\><around*|]|-\<infty\>,a|]><rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<around*|(|x|)><rsub|i>\<leqslant\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<rsub|i><around*|(|x|)>\<leqslant\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>f<rsub|i><around*|(|x|)>\<in\><around*|]|-\<infty\>,a|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>D\<wedge\>x\<in\>f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>>>>>
      </eqnarray*>

      proving that <math|f<rsup|-1><around*|(|H|)>=D<big|cap>f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>>.
      As by <smart-ref|Borel sets on R and Lebesgue sets>
      <math|<around*|]|-\<infty\>,a|]>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
      and <math|f<rsub|i>> is measurable we have that
      <math|f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>\<in\>\<cal-A\><rsub|\|D<rsub|i>>>
      so there exists a <math|A\<in\>\<cal-A\>> such that
      <math|f<rsup|-1><around*|(|<around*|]|-\<infty\>,a|]>|)>=A<big|cap>D<rsub|i>>,
      hence <math|f<rsup|-1><around*|(|H|)>=D<big|cap><around*|(|A<big|cap>D<rsub|i>|)>\<equallim\><rsub|D\<subseteq\>D<rsub|i>>A<big|cap>D>,
      proving that <math|f<rsup|-1><around*|(|H|)>\<in\>\<cal-A\><rsub|\|D>>.
      So we have proved that <math|\<forall\>H\<in\>\<cal-H\><rsup|n>> we
      have <math|f<rsup|-1><around*|(|H|)>\<in\>\<cal-A\><rsub|\|D>> or that
      <math|\<cal-H\><rsup|n>\<subseteq\>\<cal-C\>> hence we have that\ 

      <\equation>
        <label|eq 18.202.005>\<sigma\><around*|(|\<cal-H\><rsup|n>|)>\<subseteq\>\<cal-C\>
      </equation>

      As <math|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>\<equallim\><rsub|<text|<smart-ref|Borel
      sets and half spaces>>>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
      have that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<cal-C\>>
      so\ 

      <\equation>
        <label|eq 18.203.005>\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
        we have f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\><rsub|\|D>
      </equation>

      <item>As by (1) <math|f> is <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>-measurable
      and <math|h> is Borel measurable [or
      <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>/\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable]
      we have by <reference|measurable maps composition> that
      <math|h\<circ\>f> is Borel measurable.
    </enumerate>
  </proof>

  <subsection|Measure Integral>

  Recap the definition of a characteristic function (see
  <smart-ref|characteristics function>)\ 

  <\definition>
    <label|characteristics function recapitulation><index|<math|\<cal-X\><rsub|A>>><index|characteristics
    function recap>Let <math|X> be a set,
    <math|A\<in\>\<cal-P\><around*|(|X|)>> then the
    <with|font-series|bold|characteristics function>
    <math|\<cal-X\><rsub|A>:X\<rightarrow\>\<bbb-R\>> is defined by
    <math|\<cal-X\><rsub|A><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1
    if x\<in\>A>>|<row|<cell|0 if x\<in\>X\\A>>>>>>
  </definition>

  <\lemma>
    <label|charcteristics function is measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then <math|\<forall\>A\<in\>\<cal-A\>> we have that
    <math|\<cal-X\><rsub|A>:X\<rightarrow\>\<bbb-R\>> is Borel measurable.
  </lemma>

  <\proof>
    Let <math|a\<in\>\<bbb-R\>> consider then the following cases for\ 

    <\description>
      <item*|<math|a=1>>then <math|<around*|{|\<cal-X\><rsub|A>\<less\>a|}>=A\<in\>\<cal-A\>>

      <item*|<math|a\<less\>1>>then <math|<around*|{|\<cal-X\><rsub|A>\<less\>a|}>=X\\A\<in\>\<cal-A\>>

      <item*|<math|1\<less\>a>>then <math|<around*|{|\<cal-X\><rsub|A>\<less\>a|}>=\<emptyset\>>
    </description>
  </proof>

  <\lemma>
    <label|characteristics function properties>Let <math|X> be a set then we
    have the following properties for characteristics functions\ 

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-P\><around*|(|X|)>> we have
      <math|\<cal-X\><rsub|A<big|cap>B>=\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>>

      <item>Let <math|n\<in\>\<bbb-N\><text| then
      >\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      pairwise disjoint we have <math|\<cal-X\><rsub|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>=<big|sum><rsub|i=1><rsup|n>\<cal-X\><rsub|A<rsub|i>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then we have the following possibilities for
      <math|x>\ 

      <\description>
        <item*|<math|x\<in\>A\<wedge\>x\<in\>B>>then
        <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>|)><around*|(|x|)>=\<cal-X\><rsub|A><around*|(|x|)>\<cdot\>\<cal-X\><rsub|B><around*|(|x|)>=1\<cdot\>1=1\<equallim\><rsub|x\<in\>A<big|cap>B>\<cal-X\><rsub|A<big|cap>B><around*|(|x|)>>

        <item*|<math|x\<in\>A\<wedge\>x\<nin\>B>>then
        <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>|)><around*|(|x|)>=\<cal-X\><rsub|A><around*|(|x|)>\<cdot\>\<cal-X\><rsub|B><around*|(|x|)>=1\<cdot\>0=0\<equallim\><rsub|x\<nin\>A<big|cap>B>\<cal-X\><rsub|A<big|cap>B><around*|(|x|)>>

        <item*|<math|x\<nin\>A\<wedge\>x\<in\>B>>then
        <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>|)><around*|(|x|)>=\<cal-X\><rsub|A><around*|(|x|)>\<cdot\>\<cal-X\><rsub|B><around*|(|x|)>=0\<cdot\>1=0\<equallim\><rsub|x\<nin\>A<big|cap>B>\<cal-X\><rsub|A<big|cap>B><around*|(|x|)>>

        <item*|<math|x\<nin\>A\<wedge\>x\<nin\>B>>then
        <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>|)><around*|(|x|)>=\<cal-X\><rsub|A><around*|(|x|)>\<cdot\>\<cal-X\><rsub|B><around*|(|x|)>=0\<cdot\>0=0\<equallim\><rsub|x\<nin\>A<big|cap>B>\<cal-X\><rsub|A<big|cap>B><around*|(|x|)>>
      </description>

      proving that <math|><math|\<cal-X\><rsub|A>\<cdot\>\<cal-X\><rsub|B>=\<cal-X\><rsub|A<big|cap>B>>

      <item>Let <math|x\<in\>X> then we have the following possibilities for
      <math|x>\ 

      <\description>
        <item*|<math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>then
        there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|x\<in\>A<rsub|i>> and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
        that <math|x\<in\>A<rsub|j>=0>. Hence
        <math|<big|sum><rsub|j=1><rsup|n>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>=\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=1\<equallim\><rsub|x\<in\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>\<cal-X\><rsub|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>

        <item*|<math|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
        <math|x\<nin\>A<rsub|i>\<Rightarrow\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=0>
        so that <math|<big|sum><rsub|j=1><rsup|n>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>=0\<equallim\><rsub|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>\<cal-X\><rsub|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>
      </description>

      which proves that <math|\<cal-X\><rsub|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>=<big|sum><rsub|i=1><rsup|n>\<cal-X\><rsub|A<rsub|i>>>
    </enumerate>

    \;
  </proof>

  We define now the concept of a simple function that will be the basis to
  define the measure integral. We require that a simple function is finite
  and measurable. This lead to the following definition.

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then a function of the form
    <math|<big|sum><rsup|n><rsub|i=1>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>:X\<rightarrow\>\<bbb-R\>>
    where \ <math|n\<in\>\<bbb-N\>>, <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    such that <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> \ is
    called a <with|font-series|bold|simple function>. The set of all the
    simple functions is noted as <math|\<cal-S\><around*|[|X,\<cal-A\>|]>>.
  </definition>

  <\definition>
    <label|representation of a simple function>Let
    <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then a representation of
    <math|f> consists of <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>,
    <math|n\<in\>\<bbb-N\>> such that\ 

    <\enumerate>
      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>

      <item><math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    </enumerate>
  </definition>

  <\note>
    Using the definiton of a simple function it is clear that every simple
    function has always a representation. Of course a simple function can
    have many different representations.
  </note>

  Simple functions have the following properties\ 

  <\lemma>
    <label|simple functions properties (basic)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have

    <\enumerate>
      <item><math|\<forall\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|f> is <math|\<cal-A\>>-measurable

      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|f+g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>

      <item>If <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> and
      <math|c\<in\>\<bbb-R\>> then <math|c\<cdot\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>From the definition of a simple function, the fact that
        characteristics function are <math|\<mu\>>-measurable we have using
        <smart-ref|measurable function operations> that that <math|f> is
        <math|\<cal-A\>>-measurable.

        <item>Let <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>,g=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
        where <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>,
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\><infix-and>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>,\<mu\><around*|(|B<rsub|i>|)>\<less\>\<infty\>>
        then <math|<big|sum><rsub|i=1><rsup|n+m>\<varsigma\><rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>
        where <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
        i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i> if
        i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>\<in\>\<cal-A\>> and
        <math|\<varsigma\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i>
        if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<beta\><rsub|i>
        if i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>\<in\>\<bbb-R\>> which
        proves that <math|f+g\<in\>\<cal-A\>>

        <item>Let <math|f=<big|sum><rsup|n><rsub|i=1>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
        with <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<Rightarrow\><around*|{|c\<cdot\>a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
        and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        with <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> we have
        that <math|c\<cdot\>f=<big|sum><rsub|i=1><rsup|n><around*|(|c\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
        which proves that <math|c\<cdot\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.
      </enumerate>
    </proof>
  </lemma>

  \ The following lemma will allows us to examine the relation between
  different representations of a simple function.

  <\lemma>
    <label|make measurable sets pairwise disjoint>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\>> and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    a finite family of sets in <math|\<cal-A\>> such that
    <math|\<forall\>i\<in\>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>.
    Then there exists a <math|m\<in\>\<bbb-N\>> and
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>
    such that <math|\<mu\><around*|(|B<rsub|i>|)>\<less\>\<infty\>>,
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,m|}>> with
    <math|i\<neq\>j> we have <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> there exists a
    <math|I<rsub|i>\<subseteq\><around*|{|1,\<ldots\>,m|}>> such that
    <math|A<rsub|i>=<big|sqcup><rsub|j\<in\>I<rsub|i>>B<rsub|j>>.\ 
  </lemma>

  <\proof>
    We prove this by induction so let <math|\<cal-N\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
    there exists a pairwise disjoint <around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>
    such that \<mu\><around*|(|B<rsub|i>|)>\<less\>\<infty\><infix-and>
    \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> there
    \<exists\>I<rsub|i>\<subseteq\><around*|{|1,\<ldots\>,m|}> such that
    A<rsub|i>=<big|sqcup><rsub|j\<in\>I<rsub|i>>B<rsub|j>|}>> then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-N\>>>then for
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>\<cal-A\>>
      take <math|<around*|{|B|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>> by
      <math|B<rsub|1>=A<rsub|1>> then clearly
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>\<cal-A\>>,
      <math|\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>
      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,1|}>> we have
      <math|A<rsub|i>=A<rsub|1>=B<rsub|1>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>B<rsub|i>>.
      this proves that <math|1\<in\>\<cal-N\>>

      <item*|<math|n\<in\>\<cal-N\>\<Rightarrow\>n+1\<in\>\<cal-N\>>>take
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      then as <math|n\<in\>\<cal-N\>> we find a <math|k\<in\>\<bbb-N\>> and a
      pairwise disjoint <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>.k|}>>\<subseteq\>\<cal-A\>>
      such that <math|\<mu\><around*|(|C<rsub|i>|)>\<less\>\<infty\>> and

      <\equation>
        <label|eq 18.204.005.1>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        there exists a I<rsub|i>\<subseteq\><around*|{|1,\<ldots\>,k|}> such
        that A<rsub|i>=<big|sqcup><rsub|ij\<in\>I<rsub|i>>C<rsub|j>
      </equation>

      Define now <math|<around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      by <math|E<rsub|i>=C<rsub|i>\\A<rsub|n+1>>,
      <math|<around*|{|F<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>>
      by <math|F<rsub|i>=C<rsub|i><big|cap>A<rsub|n+1>> and
      <math|G=A<rsub|n+1>\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>>.
      Using the properties of a <math|\<sigma\>>-algebra (see
      <smart-ref|sigma algebra properties>) it follows that

      <\equation>
        <label|eq 18.205.005><around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<cal-A\>,<around*|{|F<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<subseteq\>\<cal-A\><infix-and>G\<in\>\<cal-A\>
      </equation>

      Further <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> we have
      <math|\<mu\><around*|(|E<rsub|i>|)>\<leqslant\>\<mu\><around*|(|C<rsub|i>|)>\<less\>\<infty\>>
      [<math|E<rsub|i>\<subseteq\>C<rsub|i>> and <smart-ref|measure space
      properties>], <math|\<mu\><around*|(|F<rsub|i>|)>\<leqslant\>\<mu\><around*|(|C<rsub|i>|)>\<less\>\<infty\>>
      [<math|F<rsub|i>\<subseteq\>C<rsub|i>> and <smart-ref|measure space
      properties>] and <math|\<mu\><around*|(|G|)>\<less\>\<mu\><around*|(|A<rsub|n+1>|)>\<less\>\<infty\>>
      [<math|D\<subseteq\>A<rsub|n+1>> and <smart-ref|measure space
      properties>]. So we have\ 

      <\equation>
        <label|eq 18.206.005>\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>
        \<mu\><around*|(|E<rsub|i>|)>\<less\>\<infty\>,\<mu\><around*|(|F<rsub|i>|)>\<less\>\<infty\><infix-and>\<mu\><around*|(|G|)>\<less\>\<infty\>
      </equation>

      Define now\ 

      <\equation>
        <label|eq 18.207.005><around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,2\<cdot\>k+1|}>>
        by <choice|<tformat|<table|<row|<cell|E<rsub|i> if
        i\<in\><around*|{|1,\<ldots\>,k|}>>>|<row|<cell|F<rsub|i-k> if
        i\<in\><around*|{|k+1,\<ldots\>,2\<cdot\>k|}> >>|<row|<cell|G if
        i=2\<cdot\>k+1>>>>>
      </equation>

      Let now <math|i,j\<in\><around*|{|1,\<ldots\>,2\<cdot\>k+1|}>> with
      <math|i\<neq\>j>, then we may assume that <math|i\<less\>j> [otherwise
      exchange <math|i> and <math|j>] and we have the the following cases to
      consider

      <\description>
        <item*|<math|i=n+1\<wedge\>k+1\<leqslant\>j\<leqslant\>2\<cdot\>k>>then

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|i><big|cap>B<rsub|j>>|<cell|=>|<cell|G<big|cap>F<rsub|j-k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|A<rsub|n+1>\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>|)><big|cap>C<rsub|j-k><big|cap>A<rsub|n+1>>>|<row|<cell|>|<cell|=>|<cell|\<emptyset\>>>>>
        </eqnarray*>

        <item*|<math|i=n+1\<wedge\>1\<leqslant\>j\<leqslant\>k>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|i><big|cap>B<rsub|j>>|<cell|=>|<cell|G<big|cap>E<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|A<rsub|n+1>\\<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>|)><big|cap><around*|(|C<rsub|j>\\A<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<emptyset\>>>>>
        </eqnarray*>

        <item*|<math|k+1\<leqslant\>j\<less\>i\<leqslant\>2\<cdot\>k>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|i><big|cap>B<rsub|j>>|<cell|=>|<cell|F<rsub|i-k><big|cap>F<rsub|j-k>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|C<rsub|i-k><big|cap>A<rsub|n+1>|)><big|cap><around*|(|C<rsub|j-k><big|cap>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i-k\<neq\>j-k>>|<cell|\<emptyset\>>>>>
        </eqnarray*>

        <item*|<math|1\<leqslant\>j\<leqslant\>k\<wedge\>k+1\<leqslant\>i\<leqslant\>2\<cdot\>k>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|i><big|cap>B<rsub|j>>|<cell|=>|<cell|F<rsub|i-k><big|cap>E<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|C<rsub|i-k><big|cap>A<rsub|n+1>|)><big|cap><around*|(|C<rsub|j>\\A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i-k\<neq\>j-k>>|<cell|\<emptyset\>>>>>
        </eqnarray*>

        <item*|<math|1\<leqslant\>j\<less\>i\<leqslant\>k>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|B<rsub|i><big|cap>B<rsub|j>>|<cell|=>|<cell|E<rsub|i><big|cap>E<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|C<rsub|i>\\A<rsub|n+1>|)><big|cap><around*|(|C<rsub|j>\\A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|i\<neq\>j>>|<cell|\<emptyset\>>>>>
        </eqnarray*>
      </description>

      Using the above we have proved that\ 

      <\equation>
        <label|eq 18.208.005>\<forall\>i,j\<in\><around*|{|1,\<ldots\>,2\<cdot\>k+1|}>
        with i\<neq\>j we have B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>
      </equation>

      Next let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|i>>|<cell|=>|<cell|<around*|(|A<rsub|i>\\A<rsub|n+1>|)><big|sqcup><around*|(|A<rsub|i><big|cap>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<smart-ref|eq
        18.204.005.1>>>|<cell|<around*|(|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>C<rsub|j>|)>\\A<rsub|n+1>|)><big|cup><around*|(|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>C<rsub|j>|)><big|cap>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|generalized
        difference>>>>|<cell|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>><around*|(|C<rsub|j>\\A<rsub|n+1>|)>|)><big|cup><around*|(|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>C<rsub|j>|)><big|cap>A<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|generalized
        distributive laws>>>>|<cell|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>><around*|(|C<rsub|j>\\A<rsub|n+1>|)>|)><big|cup><around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>><around*|(|C<rsub|j><big|cap>A<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>B<rsub|j>|)><big|cup><around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>B<rsub|j+k>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|j\<in\>I<rsub|i><big|cup><around*|{|l+k\|l\<in\>I<rsub|i>|}>>B<rsub|j>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|j\<in\>J<rsub|i>>B<rsub|j>
        where J<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i><big|cup><around*|{|l+k\|l\<in\>I<rsub|i>|}>>\<subseteq\><around*|{|1,\<ldots\>,2\<cdot\>k+1|}><eq-number><label|eq
        18.209.005>>>>>
      </eqnarray*>

      Futrher\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|n+1>>|<cell|=>|<cell|<around*|(|A<rsub|n+1><big|cap><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>|)>|)><big|sqcup><around*|(|A<rsub|n+1>\\<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|generalized
        distributive laws>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>><around*|(|A<rsub|n+1><big|cap>C<rsub|i>|)><big|sqcup><around*|(|A<rsub|n+1>\\<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>C<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>B<rsub|i+k>|)><big|sqcup>B<rsub|2\<cdot\>k+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}><big|cup><around*|{|2\<cdot\>k+1|}>>B<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|j\<in\>J<rsub|n+1>>B<rsub|j>
        where J<rsub|n+1>=<around*|{|1,\<ldots\>,k|}><big|cup><around*|{|2\<cdot\>k+1|}><eq-number><label|eq
        18.210.005>>>>>
      </eqnarray*>

      Finally <smart-ref|eq 18.205.005>,<smart-ref|eq
      18.207.005>,<smart-ref|eq 18.208.005>,<smart-ref|eq 18.209.005> and
      <smart-ref|eq 18.210.005> proves that <math|n+1\<in\>\<cal-N\>>.
    </description>
  </proof>

  We use the above to prove the following lemma that gives a way to deal with
  the different representations of a simple function.

  <\lemma>
    <label|simple function standard representation>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item>If <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists a <with|font-series|bold|pairwise disjoint> family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      with <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>,<math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
      such that <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|\|A<rsub|i>>>.

      <item>If <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> with
      <math|\<forall\>x\<in\>X> <math|0\<leqslant\>f<around*|(|x|)>> we have
      for every <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<mu\><around*|(|B<rsub|i>|)>\<less\>\<infty\>> and
      <math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-R\>>
      such that <math|f=<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
      then <math|0\<leqslant\><big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>.
    </enumerate>
  </lemma>

  <\proof>
    \ As <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> >hen there exists a
    family <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    with <math|\<mu\><around*|(|B<rsub|i>|)>\<less\>\<infty\>>,<math|<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|f=<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>.
    Using <smart-ref|make measurable sets pairwise disjoint> there exists a
    <with|font-series|bold|pairwise disjoint> family
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>
    with <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> there exists a
    <math|I<rsub|i>\<subseteq\><around*|{|1,\<ldots\>,m|}>> such that
    <math|B<rsub|i>=<big|sqcup><rsub|j\<in\>I<rsub|i>>A<rsub|j>>. Define now
    <math|<around*|(|i,j|)>\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|<around*|(|i,j|)>\|j\<in\>I<rsub|i>|}>>
    <math|\<zeta\><rsub|i,j>=<choice|<tformat|<table|<row|<cell|1 if
    j\<in\>I<rsub|i>>>|<row|<cell|0 otherwise>>>>>> so that
    <math|\<beta\><rsub|i>\<cdot\>\<zeta\><rsub|i,j>=<choice|<tformat|<table|<row|<cell|\<beta\><rsub|i>
    if j\<in\>I<rsub|i>>>|<row|<cell|0>>>>> toherwise> then we have
    <math|\<forall\>x\<in\>X>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|<big|sqcup><rsub|j\<in\>I<rsub|i>>A<rsub|j>><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|characteristics
      function properties>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>*\<cdot\><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<beta\><rsub|i>\<cdot\>\<zeta\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<beta\>\<cdot\>\<zeta\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<beta\>\<cdot\>\<zeta\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>+0|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<beta\><rsub|i\<cdot\>>\<zeta\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>+<around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>\\I<rsub|i>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sum
      over product of sets>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>|)>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<alpha\><rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>
      where \<alpha\><rsub|j>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.211.005>f=<big|sum><rsub|j=1><rsup|m>\<alpha\><rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|j>>
      where \<alpha\><rsub|j>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<xi\><rsub|i,j>=<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<varepsilon\><rsub|i,j>
    </equation>

    which as <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    is pairwise disjoint with <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>
    proves (1) of the lemma. For the second part assume that we have that
    <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>\<geqslant\>0>. Then for
    <math|i\<in\><around*|{|1,\<ldots\>,m|}>> we have for <math|A<rsub|i>>
    either\ 

    <\description>
      <item*|<math|A<rsub|i>=\<emptyset\>>>then
      <math|\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0\<geqslant\>0>

      <item*|<math|A<rsub|i>\<neq\>\<emptyset\>>>then
      <math|\<forall\>x\<in\>A<rsub|i>> such that
      <math|0\<leqslant\>f<around*|(|x|)>=<big|sum><rsub|j=1><rsup|m>\<alpha\><rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|X|)>=\<alpha\><rsub|j>>
      [as <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
      are pairwise disjoint] proving that
      <math|\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>\<geqslant\>0>.
    </description>

    giving\ 

    <\equation>
      <label|eq 18.212.005>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><space|1em>0\<leqslant\>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|j\<in\>I<rsub|i>>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|n><rsub|i=1>\<beta\><rsub|i>\<cdot\><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<mu\><around*|(|A<rsub|j>|)>+0|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\><around*|(|<big|sum><rsub|j\<in\>I<rsub|i>>\<zeta\><rsub|i,j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>+<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>\\I<rsub|j>>\<zeta\><rsub|i,j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\><big|sum><rsub|j\<in\><around*|{|1\<ldots\>,m|}>>\<zeta\><rsub|i,j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<beta\><rsub|i>\<cdot\>\<zeta\><rsub|i,j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sum
      over product of sets>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<zeta\><rsub|i,j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><rsub|i>\<cdot\>\<zeta\><rsub|i,j>|)>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      18.211.005>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>m|}>>\<alpha\><rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|j>|)>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<smart-ref|eq
      18.212.005>>>>|<cell|0>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      if \<forall\>x\<in\>X we have \ 0\<leqslant\>f<around*|(|x|)> then
      0\<leqslant\><big|sum><rsub|i=1><rsup|n>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>
    </equation*>

    which proves (2)
  </proof>

  <\corollary>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then if for <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    we have <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    and <math|f=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
    where <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>,\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>>
    <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>\<wedge\>\<mu\><around*|(|B<rsub|j>|)>\<less\>\<infty\>>
    and <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|\<beta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<bbb-R\>>
    we have that <math|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
  </corollary>

  <\proof>
    Define <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>>
    by <math|\<zeta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i>
    if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|-\<beta\><rsub|i-n> if
    i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>>,
    <math|\<gamma\><rsub|i>=<choice|<tformat|<table|<row|<cell|-\<alpha\><rsub|i>
    if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<beta\><rsub|i-m> if
    i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>>,
    <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>>
    by <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
    i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i> \ if
    i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>> then we have
    <math|\<forall\>x\<in\>X>

    <\equation*>
      <big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>-<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>=f<around*|(|x|)>-f<around*|(|x|)>=0\<geqslant\>0
    </equation*>

    so using <smart-ref|simple function standard representation> we have that
    <math|0\<leqslant\><big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>-<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
    giving\ 

    <\equation>
      <label|eq 18.213.005><big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>
    </equation>

    Further\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n+m>\<gamma\><rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>><around*|(|x|)>=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>-<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=f<around*|(|x|)>-f<around*|(|x|)>=0\<geqslant\>0
    </equation*>

    so using <smart-ref|simple function standard representation> we have that
    <math|0\<leqslant\><big|sum><rsub|i=1><rsup|n+m>\<gamma\><rsub|i>\<cdot\>\<mu\>
    <around*|(|C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>-<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>
    which proves that <math|><math|<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>.
    Combining this with <smart-ref|eq 18.213.005> proves\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>
    </equation*>

    \;
  </proof>

  The above corollary proves that the following definition is well defined

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then for all <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    we define the integral <math|<big|int>f d\<mu\>> of the simple function
    <math|f> by\ 

    <\equation*>
      <big|int>f d\<mu\>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>

    where <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>,<math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    with <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
    <math|<around*|{|\<alpha\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
  </definition>

  <\proposition>
    <label|integral of simple function properties>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> that
      <math|<big|int><around*|(|f+g|)>d\<mu\>=<big|int>f d\<mu\>+<big|int>g
      d\<mu\>> (note that <math|f+g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
      [see <smart-ref|simple functions properties (basic)>]

      <item><math|\<forall\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> and
      <math|c\<in\>\<bbb-R\>> then <math|<big|int><around*|(|c\<cdot\>f|)>d\<mu\>=c\<cdot\><big|int>f
      d\<mu\>>

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> such that
      <math|f\<leqslant\>g> [meaning that <math|\<forall\>x\<in\>X>
      <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>] we have
      <math|<big|int>f d\<mu\>\<leqslant\><big|int>g d\<mu\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
      and <math|g=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
      be representations of <math|f> and <math|g> then if we define
      <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1m,\<ldots\>,mn+m|}>>>
      by <math|\<zeta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<alpha\><rsub|i>
      i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<beta\><rsub|i-n> if
      i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>>and
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>>
      by <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
      i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n> if
      i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>> then
      <math|<big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>
      is a representation of <math|f+g> hence
      <math|<big|int><around*|(|f+g|)>d\<mu\>=<big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>=<big|int>f
      d\<mu\>+<big|int>g d\<mu\>>

      <item>Let <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
      be a representation of <math|f> then <math|c\<cdot\>f> has
      <math|<big|sum><rsub|i=1><rsup|n><around*|(|c\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
      as a representation. So that <math|<big|int><around*|(|c\<cdot\>f|)>d\<mu\>=<big|sum><rsub|i=1><rsup|n><around*|(|c\<cdot\>\<alpha\><rsub|i>|)>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=c\<cdot\><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=c\<cdot\><big|int>f
      d\<mu\>>\ 

      <item>Let <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
      and <math|g=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
      are representations of <math|f> and <math|g> then if we define
      <math|<around*|{|\<zeta\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|\<zeta\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<beta\><rsub|
      i> if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|-\<alpha\><rsub|i-n>
      if i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>>and
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
      i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n> if
      i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>> we have that <math|g-f>
      has as representation <math|<big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>.
      So <math|\<forall\>x\<in\>X> we have
      <math|0\<leqslant\>g<around*|(|x|)>-f<around*|(|x|)>=<around*|(|g-f|)><around*|(|x|)>>
      so using <smart-ref|simple function standard representation> we have
      that

      <\equation*>
        0\<leqslant\><big|sum><rsub|i=1><rsup|n+m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<beta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>-<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|int>g
        d\<mu\>-<big|int>f \ d\<mu\>
      </equation*>

      proving that\ 

      <\equation*>
        <big|int>f d\<mu\>\<leqslant\><big|int>g d\<mu\>
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|simple function null set>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure spaces and <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    then <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-A\>>
    and <math|\<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>|)>\<less\>\<infty\>>
  </lemma>

  <\proof>
    Take <math|A=<around*|{|x\<in\>X\|f<around*|(|x\<neq\>0|)>|}>> then we
    have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>A>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\>f<around*|(|x|)>\<neq\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\><around*|(|f<around*|(|x|)>\<less\>0\<vee\>0\<less\>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<less\>0|}>\<vee\>x\<in\><around*|{|0\<less\>f|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|{|f\<less\>0|}><big|cup><around*|{|0\<less\>f|}>>>>>
    </eqnarray*>

    proving that <math|A=<around*|{|f\<less\>0|}><big|cup><around*|{|0\<less\>f|}>\<in\>\<cal-A\>>
    [as <math|f:X\<rightarrow\>\<bbb-R\>>]. Let
    <math|f=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>be
    a representation of the simple function <math|f> then if
    <math|f<around*|(|x|)>\<neq\>0> there must exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>A<rsub|i>> [otherwise <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|x\<nin\>A<rsub|i>=\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=0>
    proving that <math|f<around*|(|x|)>=0> a contradiction]. Hence we have
    that <math|H\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    so using <reference|measure space properties> we have that
    <math|\<mu\><around*|(|H|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<less\>\<infty\>>
    [as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    \<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>]. Which proves the lemma.
  </proof>

  <\lemma>
    <label|simple functions increasing and sup>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    such that <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> and
    <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> such that
    <math|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\>|}>|)>>
    for almost every <math|x\<in\>X> [see <smart-ref|a.e. condition>] then
    <math|<big|int>f d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\>|}>|)>>
  </lemma>

  <\proof>
    Note that as <math|f,f<rsub|0>> are simple functions we have that
    <math|f-f<rsub|0>> is a simple function (see <smart-ref|simple functions
    properties (basic)>). If we define then
    <math|H=<around*|{|x\<in\>X\|<around*|(|f-f<rsub|0>|)><around*|(|x|)>\<neq\>0|}>>
    it follws from <smart-ref|simple function null set> that\ 

    <\equation>
      <label|eq 18.214.005>\<mu\><around*|(|H|)>\<less\>\<infty\>
    </equation>

    As <math|f-f<rsub|0>> is a simple function there exists a representation
    <math|f-f<rsub|0>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    so that <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>1\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<alpha\><rsub|i>\<leqslant\><around*|\||<big|sum><rsub|i=1><rsup|\<infty\>>\<alpha\><rsub|i>|\|>=M>
    hence we have that\ 

    <\equation>
      <label|eq 18.125.005>\<exists\>M\<in\>\<bbb-R\> such that
      \<forall\>x\<in\>X we have <around*|(|f-f<rsub|0>|)><around*|(|x|)>\<leqslant\>M
      where 0\<leqslant\>M
    </equation>

    Take now <math|\<delta\>\<gtr\>0> and take\ 

    <\equation>
      <label|eq 18.216.005.1>\<varepsilon\>=<frac|\<delta\>|1+\<mu\><around*|(|H|)>+M>
    </equation>

    \ Take <math|n\<in\>\<bbb-N\>> then <math|f-f<rsub|n>> is a simple
    function hence <math|\<cal-A\>>-measurable [see <reference|simple
    functions properties (basic)>] so that
    <math|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>\<in\>\<cal-A\>>
    [see <smart-ref|measurable functions conditions>]. Further if
    <math|x\<in\><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n+1>|}>> then
    <math|\<varepsilon\>\<leqslant\><around*|(|f-f<rsub|n+1>|)><around*|(|x|)>=f<around*|(|x|)>-f<rsub|n+1><around*|(|x|)>\<leqslant\>f<around*|(|x|)>-f<rsub|n><around*|(|x|)>>
    proving that <math|x\<in\><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>>.
    to summarize we have\ 

    <\equation>
      <label|eq 18.216.005>\<forall\>n\<in\>\<bbb-N\>
      <around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>\<in\>\<cal-A\><infix-and><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n+1>|}>\<subseteq\><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>
    </equation>

    Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>>
    then <math|\<forall\>n\<in\>\<bbb-N\>> we have
    <math|\<varepsilon\>\<leqslant\><around*|(|f-f<rsub|n>|)><around*|(|x|)>=f<around*|(|x|)>-f<rsub|n><around*|(|x|)>>
    hence <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>-\<varepsilon\>>
    so that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\>f<around*|(|x|)>-\<varepsilon\>>
    or <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>+\<varepsilon\>\<leqslant\>f<around*|(|x|)>>
    so that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<less\>f<around*|(|x|)>>
    giving

    <\equation>
      <label|eq 18.217.005><big|cap><rsub|n\<in\>\<bbb-N\>><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>\<subseteq\><around*|{|x\<in\>X\|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<less\>f<around*|(|x|)>|}>
    </equation>

    As by the hypothese <math|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>|}>|)>>
    a.e. <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>sup<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\>|}>|)>|}>>
    is negligible hence there exists a <math|B\<in\>\<cal-A\>> with
    <math|\<mu\><around*|(|B|)>=0> such that
    <math|<around*|{|x\<in\>X\|sup<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\>|}>|)>\<less\>f<around*|(|x|)>|}>=><math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>sup<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\>|}>|)>|}>\<subseteq\>B>.
    Using <smart-ref|sigma algebra properties> (1) and <smart-ref|eq
    18.216.005> we have that <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>\<in\>\<cal-A\>>,
    further <math|0\<leqslant\>\<mu\><around*|(|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>|)>\<leqslant\>\<mu\><around*|(|B|)>=0>,
    so we have\ 

    <\equation>
      <label|eq 18.218.005>\<mu\><around*|(|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>|)>=0
    </equation>

    Further as <math|x\<in\><around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|0>|}>\<Rightarrow\>0\<less\>\<varepsilon\>\<leqslant\><around*|(|f-f<rsub|0>|)><around*|(|x|)>\<Rightarrow\>x\<in\>H>
    proving <math|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|0>|}>> we
    have using <smart-ref|eq 18.214.005> that\ 

    <\equation>
      <label|eq 18.219.005>\<mu\><around*|(|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|0>|}>|)>\<less\>\<infty\>
    </equation>

    <smart-ref|eq 18.216.005>,<smart-ref|eq 18.218.005> and <smart-ref|eq
    18.219.005> allows us to apply <smart-ref|measure space properties> (6)
    giving\ 

    <\equation>
      <label|eq 18.220.005>inf<around*|(|<around*|{|\<mu\><around*|(|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>|)>\|n\<in\>\<bbb-N\>|}>|)>=0
    </equation>

    As <math|0\<less\>\<varepsilon\>> we have by the definition of a infinum
    and the above that

    <\equation>
      <label|eq 18.221.005>\<exists\>n\<in\>\<bbb-N\> such that
      \<mu\><around*|(|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>|)>\<less\>\<varepsilon\>
    </equation>

    Define the simple function <math|h=\<varepsilon\>\<cdot\>\<cal-X\><rsub|H>+M\<cdot\>\<cal-X\><rsub|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>>>
    then as \ <math|0\<less\>\<varepsilon\>>, <math|0\<leqslant\>M> we have
    that <math|0\<leqslant\>h>. Then for the simple function
    <math|g=f<rsub|n>+h> we have that <math|f\<leqslant\>g> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int>f
      d\<mu\>>|<cell|\<leqslant\><rsub|<text|<smart-ref|integral of simple
      function properties>>>>|<cell|<big|int>g
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|integral
      of simple function properties>>>>|<cell|<big|int>f<rsub|n>d\<mu\>+<big|int>h
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int>f<rsub|n>
      d\<mu\>+\<varepsilon\>\<cdot\>\<mu\><around*|(|H|)>+M\<cdot\>\<mu\><around*|(|\<cal-X\><rsub|<around*|{|\<varepsilon\>\<leqslant\>f-f<rsub|n>|}>>|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<smart-ref|eq
      18.221.005>>>>|<cell|<big|int>f<rsub|n>d\<mu\>+\<varepsilon\>\<cdot\>\<mu\><around*|(|H|)>+M\<cdot\>\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|<big|int>f<rsub|n>
      d\<mu\>+\<varepsilon\>\<cdot\><around*|(|\<mu\><around*|(|H|)>+M|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      18.216.005.1>>>>|<cell|<big|int>f<rsub|n> d\<mu\>+\<delta\>>>>>
    </eqnarray*>

    As <math|\<delta\>> is choosen arbitrary we have using
    <smart-ref|consequence of the Archimedean property (2)> that
    <math|<big|int>f d\<mu\>\<leqslant\><big|int>f<rsub|n>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>>
    proving that\ 

    <\equation*>
      <big|int>f d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>
    </equation*>
  </proof>

  <\lemma>
    <label|positive integrable function properties>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f:D\<rightarrow\>\<bbb-R\>> a function such that\ 

    <\enumerate>
      <item><math|D> is a conegligible subset of <math|X>

      <item><math|\<forall\>x\<in\>D> we have
      <math|f<around*|(|x|)>\<in\><around*|[|0,\<infty\>|[>>

      <item>There exists a sequence <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>>
      of simple functions such that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|0\<leqslant\>f<rsub|n>\<leqslant\>f<rsub|n+1>>,
      <math|sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>>
      and <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=<rsub|a.e.>f<around*|(|x|)>>
      [meaning that <math|<around*|{|x\<in\>D\|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>>
      is conegligible]
    </enumerate>

    <\equation*>
      sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>=sup<around*|(|<around*|{|<big|int>g
      d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
      g\<leqslant\><rsub|a.e.>f|}>|)>
    </equation*>
  </lemma>

  <\proof>
    From (3) it follows that there exists a conegligible subset
    <math|D<rprime|'>> of <math|X> such that
    <math|\<forall\>x\<in\>D<big|cap>D<rprime|'>> we have
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>.
    Using <smart-ref|conegligible sets properties> we have that\ 

    <\equation>
      <label|eq 18.223.005>D<big|cap>D<rprime|'> is conegligible
    </equation>

    If <math|x\<in\>D<big|cap>D<rprime|'>> then as
    <math|<around*|{|f<rsub|n><around*|(|x|)>|}><rsub|i\<in\>\<bbb-N\>>> is a
    increasing sequence we can use <smart-ref|condition for increasing
    sequence to convert> giving\ 

    <\equation>
      <label|eq 18.224.005>\<forall\>x\<in\>D<big|cap>D<rprime|'>
      f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>\<Rightarrow\>\<forall\>n\<in\>\<bbb-N\>
      we have f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    Using <smart-ref|eq 18.223.005> it follows that

    <\equation>
      <label|eq 18.225.005>\<forall\>n\<in\>\<bbb-N\> we have
      f<rsub|n>\<leqslant\><rsub|a.e.>f
    </equation>

    which proves that <math|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>\<subseteq\><around*|{|<big|int>g
    d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
    g\<leqslant\><rsub|a.e.>f|}>>. Hence using <smart-ref|inclusion and sup
    and inf> we have

    <\equation>
      <label|eq 18.226.005>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|int>g
      d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
      g\<leqslant\><rsub|a.e.>f|}>|)>
    </equation>

    For the opposite inequality take <math|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    such that <math|g\<leqslant\><rsub|a.e.>f> then there exists a
    conegligible subset <math|D<rprime|''>> of <math|X> such that
    <math|\<forall\>x\<in\>D<rprime|''><big|cap>D> we have
    <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>>, hence
    <math|\<forall\>x\<in\>D<rprime|''><big|cap>D<rprime|'><big|cap>D> [a
    conegligible set by <smart-ref|conegligible sets properties>]we have
    <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<equallim\><rsub|<text|<smart-ref|eq
    18.224.005>>>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>>
    so that using <smart-ref|simple functions increasing and sup> it follows
    that <math|<big|int>g d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>>.
    Hence <math|sup<around*|(|<around*|{|<big|int>g
    d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
    g\<leqslant\><rsub|a.e.>f|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>>
    which by <smart-ref|eq 18.226.005> proves finally\ 

    <\equation*>
      <label|eq 18.226.005>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>=sup<around*|(|<around*|{|<big|int>g
      d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
      g\<leqslant\><rsub|a.e.>f|}>|)>
    </equation*>
  </proof>

  The above lemma leads to the following definition.

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then a function <math|f:D\<rightarrow\>\<bbb-R\>> is a
    positive integrable function iff\ 

    <\enumerate>
      <item><math|D> is a conegligible subset of <math|X>

      <item><math|\<forall\>x\<in\>D> we have
      <math|f<around*|(|x|)>\<in\><around*|[|0,\<infty\>|[>>

      <item>There exists a sequence <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>>
      of simple functions such that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|0\<leqslant\>f<rsub|n>\<leqslant\>f<rsub|n+1>>,
      <math|sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>>
      and <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=<rsub|a.e.>f<around*|(|x|)>>
      [meaning that <math|<around*|{|x\<in\>D\|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>>
      is conegligible]
    </enumerate>

    the set of all positive integrable functions is noted as
    <math|\<cal-L\><rsub|+>>
  </definition>

  Let's see how a measurable function can be written as a limit of simple
  functions.

  <\lemma>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>,
    <math|E\<in\>\<cal-A\>> be a measure space
    <math|f:E\<rightarrow\>\<bbb-R\>> a <math|\<cal-A\>>-measurable function
    so that <math|f<around*|(|E|)>\<in\><around*|[|0,\<infty\>|[>> then there
    exists a sequence <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    such that <math|\<forall\>n\<in\>\<bbb-N\>>
    <math|0\<leqslant\>f<rsub|n>\<leqslant\>f<rsub|n+1>> and
    <math|f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>=sup<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\>|}>|)>>
    [meaning that <math|\<forall\>x\<in\>E> we have
    <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<infty\>|}>|)>>
  </lemma>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> then if <math|x\<in\><big|cup><rsub|k\<in\><around*|{|0,\<ldots\>,4<rsup|n>-1|}>><around*|[|<frac|k|2<rsup|n>>,<frac|k+1|2<rsup|n>>|[>>
    we have that <math|\<exists\>k\<in\><around*|{|0,\<ldots\>,4<rsup|n>-1|}>>
    such that <math|0=<frac|0|2<rsup|n>>\<leqslant\><frac|k|2<rsup|n>>\<leqslant\>x\<less\><frac|k+1|2<rsup|n>>\<leqslant\><frac|<around*|(|4<rsup|n>-1|)>+1|2<rsup|n>>=<frac|4<rsup|n>|2<rsup|n>>=2<rsup|n>>
    which proves that <math|x\<in\><around*|[|0,2<rsup|n>|[>> hence\ 

    <\equation*>
      <big|cup><rsub|k\<in\><around*|{|0,\<ldots\>,4<rsup|n>-1|}>><around*|[|<frac|k|2<rsup|n>>,<frac|k+1|2<rsup|n>>|[>\<subseteq\><around*|[|0,2<rsup|n>|[>
    </equation*>

    \;
  </proof>

  The following lemma gives a simpler condition to check if a function is a
  positive integrable function.

  <\lemma>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|f:D\<rightarrow\>\<bbb-R\>> such that
    <math|f<around*|(|D|)>\<subseteq\><around*|[|0,\<infty\>|[>> where
    <math|D> is a conegligible subset of <math|X> then we have that

    <\enumerate>
      <item><math|f\<in\>\<cal-L\><rsub|+>> if and only if there exists a
      conegligible set <math|E\<in\>\<cal-A\>> such that\ 

      <\enumerate>
        <item><math|E\<subseteq\>D>

        <item><math|f<rsub|\|E>> is <math|\<cal-A\>>-measurable

        <item><math|\<forall\>\<varepsilon\>\<gtr\>0>
        <math|\<mu\><around*|(|<around*|{|\<varepsilon\>\<leqslant\>f<rsub|\|E>|}>|)>\<less\>\<infty\>>

        <item><math|sup<around*|(|<around*|{|<big|int>g
        d\<mu\>\<of\>g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>with
        g\<leqslant\><rsub|a.e.>f|}>|)>\<less\>\<infty\>>
      </enumerate>

      <item>Let <math|f\<in\>\<cal-L\><rsub|+>> and let
      <math|h:F\<rightarrow\>\<bbb-R\>> be such that <math|F> is a
      conegligible subset of <math|X> with
      <math|h<around*|(|F|)>\<subseteq\><around*|[|0,\<infty\>|[>> then if
      <math|h\<leqslant\><rsub|a.e.>f> and there exists conegligible <math|G>
      subset of <math|X> such that <math|h<rsub|\|G>> is
      <math|\<cal-A\>>-measurable then <math|h\<in\>\<cal-L\><rsub|+>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|f\<in\>\<cal-L\><rsub|+>> then there exists a sequence
      <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> of simple
      functions such that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|0\<leqslant\>f<rsub|n>\<leqslant\>f<rsub|n+1>>,
      <math|sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>>
      and <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>
      for almost every <math|x\<in\>X>.<space|1em>Then
      <math|<around*|{|x\<in\>D\|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>\<subseteq\>D>
      is a conegligible and using <smart-ref|conegligible sets properties>
      there exists then a conegligible set <math|E\<in\>\<cal-A\>> such that
      <math|E\<subseteq\><around*|{|x\<in\>D\|<below|lim|n0\<less\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>>.
      Now <math|\<forall\>x\<in\>E> we have that
      <math|f<rsub|\|E><around*|(|x|)>=f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      hence <math|f<rsub|\|E>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>
      which is <math|\<cal-A\>>-measurable [because
      <math|\<forall\>n\<in\>\<bbb-N\>> <math|f<rsub|n>> is
      <math|\<cal-A\>>-measurable (see <smart-ref|simple functions properties
      (basic)>) together with <smart-ref|measurable functions and limits>].
      To summarize

      <\equation>
        <label|eq 18.227.005>E\<in\>\<cal-A\><infix-and>f<rsub|\|E>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>
        is \<cal-A\><text|-measurable>
      </equation>

      \ This proves (1.a.) and (1,b.). Next take
      <math|\<varepsilon\>\<gtr\>0> then set
      <math|H<rsub|n>=<around*|{|<frac|1|2>\<cdot\>\<varepsilon\>\<leqslant\>f<rsub|n>|}><big|cap>E>.
      As <math|f<rsub|n>> is a simple function thus measurable [see
      <smart-ref|simple functions properties (basic)>] proving that
      <math|H<rsub|n>\<in\>\<cal-A\>> and as <math|E\<in\>\<cal-A\>> we have
      that <math|H<rsub|n>\<in\>\<cal-A\>>. Define then the simple function
      <math|h<rsub|n>=<around*|(|<frac|1|2>\<cdot\>\<varepsilon\>|)>\<cdot\>\<cal-X\><rsub|H<rsub|n>>>
      then <math|\<forall\>x\<in\>X> we have either\ 

      <\description>
        <item*|<math|x\<in\>H<rsub|n>>>then
        <math|x\<in\>H<rsub|n>\<Rightarrow\><frac|1|2>\<cdot\>\<varepsilon\>\<leqslant\>f<rsub|n\|E><around*|(|x|)>=f<rsub|n><around*|(|x|)>>
        and <math|h<rsub|n><around*|(|x|)>=<frac|1|2>\<cdot\>\<varepsilon\>\<leqslant\>f<rsub|n><around*|(|x|)>>

        <item*|<math|x\<in\>H<rsub|n>>>then
        <math|h<rsub|n><around*|(|*x|)>=0\<leqslant\>f<rsub|n><around*|(|x|)>>
        [as <math|0\<leqslant\>f<rsub|n>>]
      </description>

      \ \ proving that <math|<frac|1|2>\<cdot\>\<varepsilon\>\<cdot\>\<cal-X\><rsub|H<rsub|n>>\<leqslant\>f<rsub|n>>
      then using <smart-ref|integral of simple function properties> we have
      that <math|<frac|1|2>\<cdot\>\<varepsilon\>\<cdot\>\<mu\><around*|(|H<rsub|n>|)>=<big|int><around*|(|<frac|1|2>\<cdot\>\<varepsilon\>\<cdot\>\<cal-X\><rsub|H<rsub|n>>|)>d\<mu\>\<leqslant\><big|int>f<rsub|n>d\<mu\>>.
      So we have

      <\equation>
        <label|eq 18.228.005>\<forall\>n\<in\>\<bbb-N\> we have
        <frac|1|2>\<cdot\>\<varepsilon\>\<cdot\>\<mu\><around*|(|H<rsub|n>|)>\<leqslant\><big|int>f<rsub|n>d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>
      </equation>

      or taking the supremum\ 

      <\equation>
        <label|eq 18.229.005>sup<around*|(|<around*|{|\<mu\><around*|(|H<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>\<leqslant\><frac|2|\<varepsilon\>>\<cdot\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>
      </equation>

      Take <math|n\<in\>\<bbb-N\>> then if <math|x\<in\>H<rsub|n>> then
      <math|<frac|1|2>\<cdot\>\<varepsilon\>\<leqslant\>f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>\<Rightarrow\>x\<in\>H<rsub|n+1>>
      proving that <math|<around*|{|H<rsub|n>|}><rsub|n\<in\>\<bbb-N\>>> is
      increasing. Using <smart-ref|measure space properties> then
      <math|\<mu\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>>H<rsub|n>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|H<rsub|n>|)>\|n\<in\>\<bbb-N\>|}>|)>>
      which if we combine this with <smart-ref|eq 18.229.005> gives\ 

      <\equation>
        <label|eq 18.230.005>\<mu\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>>H<rsub|n>|)>\<leqslant\><frac|2|\<varepsilon\>>\<cdot\>sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>
      </equation>

      <math|>If now <math|x\<in\><around*|{|\<varepsilon\>\<leqslant\>f<rsub|\|E>|}>>
      then <math|x\<in\>E> and <math|<frac|\<varepsilon\>|2>\<less\>\<varepsilon\>\<leqslant\>f<rsub|\|E><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>\<equallim\><rsub|<around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\>>
      increasing+<text|<smart-ref|condition for increasing sequence to
      convert>>>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>|}>|)>>
      so there exists a <math|n\<in\>\<bbb-N\>> such that
      <math|<frac|\<varepsilon\>|2>\<less\>f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|\|E><around*|(|x|)>\<Rightarrow\>x\<in\><around*|{|<frac|1|2>\<cdot\>\<varepsilon\>\<leqslant\>f<rsub|n>|}><big|cap>E=H<rsub|n>>
      which proves that <math|<around*|{|\<varepsilon\>\<leqslant\>f<rsub|\|E>|}>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>>H<rsub|n>>
      hence as also <math|<around*|{|\<varepsilon\>\<leqslant\>f|}>\<in\>\<cal-A\>>
      [see <smart-ref|eq 18.227.005> together with <smart-ref|measurable
      functions conditions>] we have

      <\equation>
        <label|eq 18.231.005>\<mu\><around*|(|<around*|{|\<varepsilon\>\<leqslant\>f<rsub|\|E>|}>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\>>H<rsub|n>|)>\<less\>\<infty\>
      </equation>

      which proves (1.c). Using <smart-ref|positive integrable function
      properties> we have that <math|sup<around*|(|<around*|{|<big|int>g
      d\<mu\>\|g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]> such that
      g\<leqslant\><rsub|a.e.>f|}>|)>=sup<around*|(|<around*|{|<big|int>f<rsub|n>d\<mu\>\|n\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>>
      which proves 1.d. Hence we have proved that
      <math|f\<in\>\<cal-L\><rsub|+>> that there exists a
      <math|E\<in\>\<cal-A\>> such that (1.a),(1.b),(1.c) and (1.d) is
      satisfied.

      For the opposite implication, assume that there exists a
      <math|E\<in\>\<cal-A\>> so that <math|<around*|(|1.a|)>,<around*|(|1.b|)>,<around*|(|1.c|)>>
      and <math|<around*|(|1.d|)>> are satisfied.

      <\equation*>
        \;
      </equation*>
    </enumerate>

    \ 

    \;
  </proof>
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|711>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|18.98.001|<tuple|18.100|?>>
    <associate|Borel algebras|<tuple|18.12|?>>
    <associate|Borel algebras and generator|<tuple|18.10|?>>
    <associate|Borel functions and intersection|<tuple|18.94|?>>
    <associate|Borel sets and closed sets|<tuple|18.13|?>>
    <associate|Borel sets and half spaces|<tuple|18.84|?>>
    <associate|Borel sets on R and Lebesgue sets|<tuple|18.60|?>>
    <associate|Borel sigma-algebra|<tuple|18.11|?>>
    <associate|Caratheodory|<tuple|18.31|?>>
    <associate|Dyadic cube|<tuple|18.74|?>>
    <associate|Dyadic cubes and open sets|<tuple|18.78|?>>
    <associate|Dyadic cubes properties|<tuple|18.76|?>>
    <associate|Dyadic intervals|<tuple|18.48|?>>
    <associate|Dyadic intervals and open sets|<tuple|18.53|?>>
    <associate|Dyadic properties|<tuple|18.52|?>>
    <associate|Lebesgue|<tuple|18.43|?>>
    <associate|Lebesgue R^n|<tuple|18.70|?>>
    <associate|Lebesgue measure|<tuple|Lebesgue measurable set|?>>
    <associate|[a,@@[|<tuple|18.59|?>>
    <associate|]-@@,a]|<tuple|18.57|?>>
    <associate|]a,@@[|<tuple|18.58|?>>
    <associate|a.e. condition|<tuple|18.26|?>>
    <associate|alternate definition of a sigma algebra|<tuple|18.5|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|measure space|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>|?>>
    <associate|auto-12|<tuple|image measure|?>>
    <associate|auto-13|<tuple|18.1.3|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible
    set|?>>
    <associate|auto-15|<tuple|<with|mode|<quote|math>|\<mu\>>-conegligible
    set|?>>
    <associate|auto-16|<tuple|18.1.4|?>>
    <associate|auto-17|<tuple|outer measure|?>>
    <associate|auto-18|<tuple|sub-algebra|?>>
    <associate|auto-19|<tuple|18.1.4.1|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-20|<tuple|half open interval|?>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|<around*|[|a,b|[>>|?>>
    <associate|auto-22|<tuple|Lebesgue measurable set|?>>
    <associate|auto-23|<tuple|<with|mode|<quote|math>|\<cal-L\>>|?>>
    <associate|auto-24|<tuple|<with|mode|<quote|math>|\<lambda\>>|?>>
    <associate|auto-25|<tuple|<with|mode|<quote|math>|\<cal-D\><rsub|n>>|?>>
    <associate|auto-26|<tuple|18.1.4.2|?>>
    <associate|auto-27|<tuple|Lebesgue measurable set|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|\<cal-L\>>|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|\<lambda\><rsup|n>>|?>>
    <associate|auto-3|<tuple|18.1.1|?>>
    <associate|auto-30|<tuple|dyadic cube|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>|?>>
    <associate|auto-33|<tuple|18.2|?>>
    <associate|auto-34|<tuple|18.2.1|?>>
    <associate|auto-35|<tuple|18.2.2|?>>
    <associate|auto-36|<tuple|<with|mode|<quote|math>|\<cal-X\><rsub|A>>|?>>
    <associate|auto-37|<tuple|characteristics function recap|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-5|<tuple|sub-algebra|?>>
    <associate|auto-6|<tuple|trace algebra|?>>
    <associate|auto-7|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-8|<tuple|Borel sets|?>>
    <associate|auto-9|<tuple|18.1.2|?>>
    <associate|boundary of a interval|<tuple|18.38|?>>
    <associate|bounds of a half open interval|<tuple|18.37|?>>
    <associate|characteristics function properties|<tuple|18.103|?>>
    <associate|characteristics function recapitulation|<tuple|18.101|?>>
    <associate|charcteristics function is measurable|<tuple|18.102|?>>
    <associate|closed intervals and Borel Sets|<tuple|18.56|?>>
    <associate|conegligible sets|<tuple|18.24|?>>
    <associate|conegligible sets properties|<tuple|18.25|?>>
    <associate|constructing a outer measure|<tuple|18.30|?>>
    <associate|constructing pairwise disjoint sequences|<tuple|18.18|?>>
    <associate|endpoints are unique for halfopen intervals in
    R^n|<tuple|18.64|?>>
    <associate|eq 18.003|<tuple|18.3|?>>
    <associate|eq 18.1.001.1|<tuple|18.1|?>>
    <associate|eq 18.1.1.001|<tuple|18.5|?>>
    <associate|eq 18.1.2.001|<tuple|18.6|?>>
    <associate|eq 18.10.001|<tuple|18.14|?>>
    <associate|eq 18.100.001|<tuple|18.106|?>>
    <associate|eq 18.100.001.2|<tuple|18.105|?>>
    <associate|eq 18.101.001|<tuple|18.107|?>>
    <associate|eq 18.102.001|<tuple|18.109|?>>
    <associate|eq 18.102.001.1|<tuple|18.108|?>>
    <associate|eq 18.102.003|<tuple|18.102|?>>
    <associate|eq 18.103.001|<tuple|18.110|?>>
    <associate|eq 18.103.003|<tuple|18.103|?>>
    <associate|eq 18.104.001|<tuple|18.111|?>>
    <associate|eq 18.104.003|<tuple|18.104|?>>
    <associate|eq 18.105.001|<tuple|18.112|?>>
    <associate|eq 18.106.001|<tuple|18.113|?>>
    <associate|eq 18.107.001|<tuple|18.114|?>>
    <associate|eq 18.108.001|<tuple|18.115|?>>
    <associate|eq 18.11.001|<tuple|18.15|?>>
    <associate|eq 18.110.001|<tuple|18.117|?>>
    <associate|eq 18.111.001|<tuple|18.118|?>>
    <associate|eq 18.112.001|<tuple|18.119|?>>
    <associate|eq 18.113.001|<tuple|18.120|?>>
    <associate|eq 18.114.001|<tuple|18.121|?>>
    <associate|eq 18.115.001|<tuple|18.122|?>>
    <associate|eq 18.116.001|<tuple|18.123|?>>
    <associate|eq 18.117.001|<tuple|18.124|?>>
    <associate|eq 18.119.001.1|<tuple|18.125|?>>
    <associate|eq 18.12.001|<tuple|18.16|?>>
    <associate|eq 18.123.002|<tuple|18.126|?>>
    <associate|eq 18.124.002|<tuple|18.127|?>>
    <associate|eq 18.125.002|<tuple|18.128|?>>
    <associate|eq 18.125.005|<tuple|18.215|?>>
    <associate|eq 18.126.002|<tuple|18.129|?>>
    <associate|eq 18.127.002|<tuple|18.130|?>>
    <associate|eq 18.128.002|<tuple|18.131|?>>
    <associate|eq 18.129.002|<tuple|18.132|?>>
    <associate|eq 18.13.001|<tuple|18.17|?>>
    <associate|eq 18.130.002|<tuple|18.133|?>>
    <associate|eq 18.131.002|<tuple|18.134|?>>
    <associate|eq 18.132.002|<tuple|18.135|?>>
    <associate|eq 18.133.002|<tuple|18.136|?>>
    <associate|eq 18.134.002|<tuple|18.137|?>>
    <associate|eq 18.136.002|<tuple|18.138|?>>
    <associate|eq 18.136.003|<tuple|18.139|?>>
    <associate|eq 18.137.003|<tuple|18.140|?>>
    <associate|eq 18.138.003|<tuple|18.141|?>>
    <associate|eq 18.139.003|<tuple|18.146|?>>
    <associate|eq 18.14.001|<tuple|18.18|?>>
    <associate|eq 18.140.003|<tuple|18.147|?>>
    <associate|eq 18.141.003|<tuple|18.150|?>>
    <associate|eq 18.142.003|<tuple|18.151|?>>
    <associate|eq 18.142.005|<tuple|18.142|?>>
    <associate|eq 18.143.003|<tuple|18.152|?>>
    <associate|eq 18.143.005|<tuple|18.143|?>>
    <associate|eq 18.144.003|<tuple|18.153|?>>
    <associate|eq 18.144.005|<tuple|18.144|?>>
    <associate|eq 18.145.003|<tuple|18.154|?>>
    <associate|eq 18.145.005|<tuple|18.145|?>>
    <associate|eq 18.148.005|<tuple|18.148|?>>
    <associate|eq 18.149.003|<tuple|18.155|?>>
    <associate|eq 18.149.005|<tuple|18.149|?>>
    <associate|eq 18.15.001|<tuple|18.19|?>>
    <associate|eq 18.150.003|<tuple|18.156|?>>
    <associate|eq 18.151.003|<tuple|18.157|?>>
    <associate|eq 18.152.003|<tuple|18.158|?>>
    <associate|eq 18.153.003|<tuple|18.159|?>>
    <associate|eq 18.154.003|<tuple|18.160|?>>
    <associate|eq 18.155.003|<tuple|18.161|?>>
    <associate|eq 18.156.003|<tuple|18.162|?>>
    <associate|eq 18.157.003|<tuple|18.163|?>>
    <associate|eq 18.158.003|<tuple|18.164|?>>
    <associate|eq 18.159.003|<tuple|18.165|?>>
    <associate|eq 18.16.001|<tuple|18.27|?>>
    <associate|eq 18.160.003|<tuple|18.166|?>>
    <associate|eq 18.161.003|<tuple|18.167|?>>
    <associate|eq 18.162.003|<tuple|18.168|?>>
    <associate|eq 18.163.003|<tuple|18.169|?>>
    <associate|eq 18.164.003|<tuple|18.170|?>>
    <associate|eq 18.165.003|<tuple|18.171|?>>
    <associate|eq 18.166.003|<tuple|18.172|?>>
    <associate|eq 18.167.003|<tuple|18.173|?>>
    <associate|eq 18.168.003|<tuple|18.174|?>>
    <associate|eq 18.169.003|<tuple|18.175|?>>
    <associate|eq 18.17.001|<tuple|18.28|?>>
    <associate|eq 18.17.002|<tuple|18.20|?>>
    <associate|eq 18.170.003|<tuple|18.176|?>>
    <associate|eq 18.171.003|<tuple|18.177|?>>
    <associate|eq 18.172.003|<tuple|18.178|?>>
    <associate|eq 18.173.003|<tuple|18.179|?>>
    <associate|eq 18.174.003|<tuple|18.180|?>>
    <associate|eq 18.175.003|<tuple|18.181|?>>
    <associate|eq 18.176.003|<tuple|18.182|?>>
    <associate|eq 18.177.003|<tuple|18.183|?>>
    <associate|eq 18.178.003|<tuple|18.184|?>>
    <associate|eq 18.179.003|<tuple|18.185|?>>
    <associate|eq 18.18.001|<tuple|18.29|?>>
    <associate|eq 18.18.002|<tuple|18.21|?>>
    <associate|eq 18.180.003|<tuple|18.186|?>>
    <associate|eq 18.181.003|<tuple|18.187|?>>
    <associate|eq 18.182.003|<tuple|18.188|?>>
    <associate|eq 18.183.003|<tuple|18.189|?>>
    <associate|eq 18.184.003|<tuple|18.190|?>>
    <associate|eq 18.186.003|<tuple|18.192|?>>
    <associate|eq 18.186.003.1|<tuple|18.191|?>>
    <associate|eq 18.187.003|<tuple|18.194|?>>
    <associate|eq 18.187.003.1|<tuple|18.193|?>>
    <associate|eq 18.188.003|<tuple|18.195|?>>
    <associate|eq 18.189.003|<tuple|18.196|?>>
    <associate|eq 18.19.001|<tuple|18.30|?>>
    <associate|eq 18.19.002|<tuple|18.22|?>>
    <associate|eq 18.191.003|<tuple|18.197|?>>
    <associate|eq 18.198.005|<tuple|18.198|?>>
    <associate|eq 18.199.005|<tuple|18.199|?>>
    <associate|eq 18.2.003|<tuple|18.2|?>>
    <associate|eq 18.20.001|<tuple|18.31|?>>
    <associate|eq 18.20.002|<tuple|18.23|?>>
    <associate|eq 18.200.005|<tuple|18.200|?>>
    <associate|eq 18.201.005|<tuple|18.201|?>>
    <associate|eq 18.202.005|<tuple|18.202|?>>
    <associate|eq 18.203.005|<tuple|18.203|?>>
    <associate|eq 18.204.005.1|<tuple|18.204|?>>
    <associate|eq 18.205.005|<tuple|18.205|?>>
    <associate|eq 18.206.005|<tuple|18.206|?>>
    <associate|eq 18.207.005|<tuple|18.207|?>>
    <associate|eq 18.208.005|<tuple|18.208|?>>
    <associate|eq 18.209.005|<tuple|18.209|?>>
    <associate|eq 18.21.001|<tuple|18.32|?>>
    <associate|eq 18.21.002|<tuple|18.24|?>>
    <associate|eq 18.210.005|<tuple|18.210|?>>
    <associate|eq 18.211.005|<tuple|18.211|?>>
    <associate|eq 18.212.005|<tuple|18.212|?>>
    <associate|eq 18.213.005|<tuple|18.213|?>>
    <associate|eq 18.214.005|<tuple|18.214|?>>
    <associate|eq 18.216.005|<tuple|18.217|?>>
    <associate|eq 18.216.005.1|<tuple|18.216|?>>
    <associate|eq 18.217.005|<tuple|18.218|?>>
    <associate|eq 18.218.005|<tuple|18.219|?>>
    <associate|eq 18.219.005|<tuple|18.220|?>>
    <associate|eq 18.22.001|<tuple|18.33|?>>
    <associate|eq 18.22.002|<tuple|18.25|?>>
    <associate|eq 18.220.005|<tuple|18.221|?>>
    <associate|eq 18.221.005|<tuple|18.222|?>>
    <associate|eq 18.223.005|<tuple|18.223|?>>
    <associate|eq 18.224.005|<tuple|18.224|?>>
    <associate|eq 18.225.005|<tuple|18.225|?>>
    <associate|eq 18.226.005|<tuple|18.226|?>>
    <associate|eq 18.227.005|<tuple|18.227|?>>
    <associate|eq 18.228.005|<tuple|18.228|?>>
    <associate|eq 18.229.005|<tuple|18.229|?>>
    <associate|eq 18.23.001|<tuple|18.34|?>>
    <associate|eq 18.230.005|<tuple|18.230|?>>
    <associate|eq 18.231.005|<tuple|18.231|?>>
    <associate|eq 18.24.001|<tuple|18.35|?>>
    <associate|eq 18.25.001|<tuple|18.36|?>>
    <associate|eq 18.26.001|<tuple|18.37|?>>
    <associate|eq 18.27.001|<tuple|18.38|?>>
    <associate|eq 18.28.001|<tuple|18.39|?>>
    <associate|eq 18.29.001|<tuple|18.40|?>>
    <associate|eq 18.3.001|<tuple|18.8|?>>
    <associate|eq 18.30.001|<tuple|18.41|?>>
    <associate|eq 18.31.001|<tuple|18.42|?>>
    <associate|eq 18.32.001|<tuple|18.43|?>>
    <associate|eq 18.33.001|<tuple|18.44|?>>
    <associate|eq 18.34.001|<tuple|18.45|?>>
    <associate|eq 18.35.001|<tuple|18.46|?>>
    <associate|eq 18.36.001|<tuple|18.47|?>>
    <associate|eq 18.37.001|<tuple|18.48|?>>
    <associate|eq 18.38.001|<tuple|18.49|?>>
    <associate|eq 18.39.001|<tuple|18.50|?>>
    <associate|eq 18.4.001|<tuple|18.9|?>>
    <associate|eq 18.4.001.1|<tuple|18.7|?>>
    <associate|eq 18.4.003|<tuple|18.4|?>>
    <associate|eq 18.40.001|<tuple|18.51|?>>
    <associate|eq 18.41.001|<tuple|18.52|?>>
    <associate|eq 18.42.001|<tuple|18.53|?>>
    <associate|eq 18.43.001|<tuple|18.54|?>>
    <associate|eq 18.44.001|<tuple|18.55|?>>
    <associate|eq 18.45.001|<tuple|18.56|?>>
    <associate|eq 18.49.001|<tuple|18.57|?>>
    <associate|eq 18.5.001|<tuple|18.10|?>>
    <associate|eq 18.50.001|<tuple|18.58|?>>
    <associate|eq 18.51.001|<tuple|18.59|?>>
    <associate|eq 18.52.001|<tuple|18.60|?>>
    <associate|eq 18.53.001|<tuple|18.61|?>>
    <associate|eq 18.54.001|<tuple|18.62|?>>
    <associate|eq 18.55.001|<tuple|18.63|?>>
    <associate|eq 18.56.001|<tuple|18.64|?>>
    <associate|eq 18.57.001|<tuple|18.65|?>>
    <associate|eq 18.58.001|<tuple|18.66|?>>
    <associate|eq 18.59.001|<tuple|18.67|?>>
    <associate|eq 18.6.001|<tuple|18.11|?>>
    <associate|eq 18.60.001|<tuple|18.68|?>>
    <associate|eq 18.61.001|<tuple|18.69|?>>
    <associate|eq 18.62.001|<tuple|18.70|?>>
    <associate|eq 18.62.001.1|<tuple|18.71|?>>
    <associate|eq 18.63.001|<tuple|18.72|?>>
    <associate|eq 18.64.001|<tuple|18.73|?>>
    <associate|eq 18.65.001|<tuple|18.74|?>>
    <associate|eq 18.66.001|<tuple|18.75|?>>
    <associate|eq 18.67.001|<tuple|18.76|?>>
    <associate|eq 18.69.001|<tuple|18.77|?>>
    <associate|eq 18.7.001|<tuple|18.12|?>>
    <associate|eq 18.74.001|<tuple|18.26|?>>
    <associate|eq 18.75.001|<tuple|18.80|?>>
    <associate|eq 18.76.001|<tuple|18.78|?>>
    <associate|eq 18.77.001|<tuple|18.79|?>>
    <associate|eq 18.78.001|<tuple|18.81|?>>
    <associate|eq 18.79.001|<tuple|18.82|?>>
    <associate|eq 18.8.001|<tuple|18.13|?>>
    <associate|eq 18.80.001|<tuple|18.83|?>>
    <associate|eq 18.81.001|<tuple|18.84|?>>
    <associate|eq 18.82.001|<tuple|18.85|?>>
    <associate|eq 18.83.001|<tuple|18.86|?>>
    <associate|eq 18.84.001|<tuple|18.87|?>>
    <associate|eq 18.85.001|<tuple|18.88|?>>
    <associate|eq 18.86.001|<tuple|18.89|?>>
    <associate|eq 18.87.001|<tuple|18.90|?>>
    <associate|eq 18.88.001|<tuple|18.91|?>>
    <associate|eq 18.89.001|<tuple|18.92|?>>
    <associate|eq 18.90.001|<tuple|18.93|?>>
    <associate|eq 18.91.001|<tuple|18.94|?>>
    <associate|eq 18.92.001|<tuple|18.95|?>>
    <associate|eq 18.93.001|<tuple|18.96|?>>
    <associate|eq 18.94.001|<tuple|18.97|?>>
    <associate|eq 18.95.001|<tuple|18.98|?>>
    <associate|eq 18.96.001|<tuple|18.99|?>>
    <associate|eq 18.99.001|<tuple|18.101|?>>
    <associate|functions and a.e.|<tuple|18.27|?>>
    <associate|half open interval|<tuple|18.35|?>>
    <associate|half open interval and Borel Sets|<tuple|18.55|?>>
    <associate|half open interval as union of open sets|<tuple|18.54|?>>
    <associate|half open interval in R^n and a intersection of open
    sets|<tuple|18.80|?>>
    <associate|half open intervals and Borel sets in R^n|<tuple|18.81|?>>
    <associate|half spaces are Lebesgue|<tuple|18.71|?>>
    <associate|half spaces is closed|<tuple|18.83|?>>
    <associate|image measure|<tuple|18.20|?>>
    <associate|integral of simple function properties|<tuple|18.112|?>>
    <associate|intersection of interval and segments|<tuple|18.44|?>>
    <associate|intervals in R^1|<tuple|18.67|?>>
    <associate|length is semi-additive|<tuple|18.41|?>>
    <associate|make measurable sets pairwise disjoint|<tuple|18.108|?>>
    <associate|measurable function extension|<tuple|18.99|?>>
    <associate|measurable function operations|<tuple|18.97|?>>
    <associate|measurable functions|<tuple|18.86|?>>
    <associate|measurable functions and continuity|<tuple|18.90|?>>
    <associate|measurable functions and generators|<tuple|18.89|?>>
    <associate|measurable functions and limits|<tuple|18.98|?>>
    <associate|measurable functions conditions|<tuple|18.93|?>>
    <associate|measurable maps composition|<tuple|18.91|?>>
    <associate|measurable space|<tuple|18.3|?>>
    <associate|measure space|<tuple|18.14|?>>
    <associate|measure space alternative definition|<tuple|18.16|?>>
    <associate|measure space properties|<tuple|18.19|?>>
    <associate|negligible set|<tuple|18.21|?>>
    <associate|negligible sets properties|<tuple|18.23|?>>
    <associate|open set as union of ]a,b]|<tuple|18.79|?>>
    <associate|outer measure|<tuple|18.29|?>>
    <associate|outer measure induced by a measure|<tuple|18.32|?>>
    <associate|outer measure on the real numbers|<tuple|18.42|?>>
    <associate|positive integrable function properties|<tuple|18.115|?>>
    <associate|property of Dyadic interval of order n|<tuple|18.51|?>>
    <associate|reindex union of sets|<tuple|18.15|?>>
    <associate|representation of a simple function|<tuple|18.105|?>>
    <associate|segments are lebesgue measurable|<tuple|18.45|?>>
    <associate|set of Dyadic intervals is denumerable|<tuple|18.50|?>>
    <associate|set of dyadic cubes is denumerable|<tuple|18.77|?>>
    <associate|set of segments is a sigma algebra|<tuple|18.46|?>>
    <associate|sigma algebra generated|<tuple|18.9|?>>
    <associate|sigma algebra of half open intervals|<tuple|18.47|?>>
    <associate|sigma algebra of half open intervals in R^n|<tuple|18.73|?>>
    <associate|sigma algebra of half spaces|<tuple|18.72|?>>
    <associate|sigma algebra properties|<tuple|18.7|?>>
    <associate|sigma-algebra|<tuple|18.2|?>>
    <associate|simple function null set|<tuple|18.113|?>>
    <associate|simple function standard representation|<tuple|18.109|?>>
    <associate|simple functions increasing and sup|<tuple|18.114|?>>
    <associate|simple functions properties (basic)|<tuple|18.107|?>>
    <associate|sub-algebra|<tuple|18.8|?>>
    <associate|subspace measure|<tuple|18.33|?>>
    <associate|trivial measurable space|<tuple|18.4|?>>
    <associate|trivial sigma algebra|<tuple|18.6|?>>
    <associate|union of two sets to finite union of two sets|<tuple|18.28|?>>
    <associate|volume is semi-additive|<tuple|18.68|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra>|<pageref|auto-4>>

      <tuple|<tuple|sub-algebra>|<pageref|auto-5>>

      <tuple|<tuple|trace algebra>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>>|<pageref|auto-7>>

      <tuple|<tuple|Borel sets>|<pageref|auto-8>>

      <tuple|<tuple|measure space>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>>|<pageref|auto-11>>

      <tuple|<tuple|image measure>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible
      set>|<pageref|auto-14>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-conegligible
      set>|<pageref|auto-15>>

      <tuple|<tuple|outer measure>|<pageref|auto-17>>

      <tuple|<tuple|sub-algebra>|<pageref|auto-18>>

      <tuple|<tuple|half open interval>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|[|a,b|[>>>|<pageref|auto-21>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-22>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-L\>>>|<pageref|auto-23>>

      <tuple|<tuple|<with|mode|<quote|math>|\<lambda\>>>|<pageref|auto-24>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsub|n>>>|<pageref|auto-25>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-L\>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|\<lambda\><rsup|n>>>|<pageref|auto-29>>

      <tuple|<tuple|dyadic cube>|<pageref|auto-30>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-X\><rsub|A>>>|<pageref|auto-36>>

      <tuple|<tuple|characteristics function recap>|<pageref|auto-37>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Measure
      Theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      18.1<space|2spc><with|mode|<quote|math>|Basic concepts of measure
      theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      <with|par-left|<quote|1tab>|18.1.1<space|2spc>Measurable spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>>

      <with|par-left|<quote|1tab>|18.1.2<space|2spc>Measure spaces
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|18.1.3<space|2spc>Negligible sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>

      <with|par-left|<quote|1tab>|18.1.4<space|2spc>Carathéodory construction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|18.1.4.1<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|2tab>|18.1.4.2<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      18.2<space|2spc>Integration <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-33>

      <with|par-left|<quote|1tab>|18.2.1<space|2spc>Measurable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-34>>

      <with|par-left|<quote|1tab>|18.2.2<space|2spc>Measure Integral
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-35>>
    </associate>
  </collection>
</auxiliary>