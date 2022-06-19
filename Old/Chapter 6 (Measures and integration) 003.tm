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
    <with|font-series|bold|measure space>.
  </notation>

  A trivial example of a measure space is the following, although it is not
  very useful

  <\example>
    <label|trivial measurable space>Let <math|X> be a set then
    <math|<around*|\<langle\>|X,\<cal-P\><around*|(|X|)>|\<rangle\>>> is a
    measure space\ 
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
    <index|Borel sets>Elements of <math|\<sigma\><around*|[|\<cal-A\>|]>> are
    called Borel sets.
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

  A special <math|\<sigma\>>-algebra is the algebra generated by open sets in
  a topology.

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
    \<cal-T\>|}>> then <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|(|\<cal-C\>|)>>
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
      [<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is a non
      decreasing sequence] then

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|E<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|E<rsub|i>|)>\|i\<in\>\<bbb-N\>|}>|)>
      </equation*>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      is such that <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>>
      [<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> is a non
      increasing sequence] and <math|\<exists\>k\<in\>\<bbb-N\>> such that
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
      be a measure space then <math|A\<in\>\<cal-P\><around*|(|X|)>> is
      <math|\<mu\>>-conegligible set if <math|X\\A> is
      <math|\<mu\>>-conegligible set.
    </definition>

    Conegligible sets have the following properties.

    <\proposition>
      <label|conegligible sets properties>Let
      <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
      space then we have\ 

      <\enumerate>
        <item><math|X> is <math|\<mu\>>-conegligible\ 

        <item>If <math|A> is <math|\<mu\>>-conegligible and
        <math|B\<in\>\<cal-P\><around*|(|A|)>> such that
        <math|A\<subseteq\>B> then <math|B> is <math|\<mu\>>-conegligible

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>K>> be a
        countable family of <math|\<mu\>>-conegligible sets
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
      </enumerate>
    </proof>
  </proposition>

  We use conegligible set in the term <with|font-series|bold|almost every> as
  expressed in the following notation

  <\notation>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|P<around*|(|x|)>> a assertion about
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
    <label|subspace measure>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|A\<subseteq\>X> then
    <math|\<cal-A\><rsub|\|A>=<around*|{|A<big|cap>E\|E\<in\>\<cal-P\><around*|(|X|)>|}>>
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
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First as <math|\<emptyset\>=A<big|cap>\<emptyset\>> and
      <math|\<emptyset\>\<in\>\<cal-A\>> we have that\ 

      <\equation>
        <label|eq 18.46.001>\<emptyset\>\<in\>\<cal-A\><rsub|A>
      </equation>

      Second if <math|B\<in\>\<cal-A\><rsub|A>> then
      <math|\<exists\>E\<in\>\<cal-A\>> such that <math|B=A<big|cap>E> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|X\\E|)><big|cap>A>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>>>|<cell|<around*|(|X<big|cap>A|)>\\E>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<subseteq\>X>>|<cell|A\\E>>>>
      </eqnarray*>

      which as <math|<around*|(|X\\E|)>\<in\>\<cal-A\>> proves that\ 

      <\equation>
        <label|eq 18.47.001>A\\E\<in\>\<cal-A\><rsub|A>
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
        <label|eq 18.48.001><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\><rsub|A>
      </equation>

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
      Archimedean property of the real numers (see <smart-ref|consequence of
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
    <label|set of Dyadic intervals is denumerable><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<cal-D\><rsub|n>> is denumerable hence using
    <reference|denumerable union of denumerable sets is denumerable> we have
    that <math|\<cal-D\>> is denumerable.
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
    the reals are denumerable>) we have thus that <math|\<bbb-D\><rsub|n>> is
    denumerable. Using <reference|denumerable union of denumerable sets is
    denumerable> we have then that <math|\<bbb-D\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<bbb-D\><rsub|i>>.
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
      by \<cal-T\><rsub|n>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|0>
      if n=0>>|<row|<cell|<around*|{|I\<in\>\<cal-S\><rsub|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text|
      we have >\<forall\>I\<in\>\<cal-T\><rsub|i>\<vDash\>I<big|cap>J=\<emptyset\>|}>>>>>>\<subseteq\>\<cal-S\><rsub|n>\<subseteq\>\<cal-D\><rsub|n>
    </equation>

    Take now\ 

    <\equation>
      <label|eq 18.86.001>\<cal-T\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-T\><rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<cal-D\><rsub|n>\<subseteq\>\<cal-D\>
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
    Define now <math|\<cal-K\><rsub|x>=<around*|{|n\<in\><around*|{|0,\<ldots\>,n<rsub|x>|}>\|\<exists\>I\<in\>\<cal-S\><rsub|n>
    such that x\<in\>I|}>> then <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>>
    proving that <math|\<cal-K\><rsub|x>\<neq\>\<emptyset\>> so that
    <math|m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)>> exists. We have then
    two cases to consider

    <\description>
      <item*|<math|m<rsub|x>=0>>then <math|\<exists\>I\<in\>S<rsub|0>=\<cal-T\><rsub|0>\<in\>\<cal-T\>>
      such that <math|x\<in\>I> hence <math|x\<in\>I\<subseteq\><big|cup><rsub|I\<in\>\<cal-T\>>I>

      <item*|<math|0\<less\>m<rsub|x>>>then
      <math|\<exists\>J\<in\>\<cal-S\><rsub|m<rsub|x>>> (such that
      <math|x\<in\>J>) and for <math|n\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>>
      we have <math|\<forall\>I\<in\>\<cal-S\><rsub|n>> that
      <math|x\<nin\>I>. Now as <math|n\<leqslant\>m<rsub|x>> we have by
      <reference|Dyadic properties> (1) that either <math|J\<subseteq\>I,>
      but then as <math|x\<in\>J\<subseteq\>I> we contradict<math|x\<nin\>I>,
      or <math|J<big|cap>I=\<emptyset\>>. So
      <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,m<rsub|x><rsub|>|}>>,
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
    there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such that
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
    have that <math|b=max<around*|(|<around*|{|end<around*|(|I|)>\|I\<in\>\<cal-T\>|}>|)>>
    exists. By the definition of a maximum there exists a
    <math|I\<in\>\<cal-T\>> such that <math|end<around*|(|I|)>=b> hence
    <math|b\<in\>I\<subseteq\>U>. As <math|U> is open there exists a
    <math|\<varepsilon\>\<gtr\>0> such that
    <math|b\<in\><around*|]|b-\<varepsilon\>,b+\<varepsilon\>|[>\<subseteq\>U>
    hence <math|b+<frac|\<varepsilon\>|2>\<in\>U>. So there exists a
    <math|J\<in\>\<cal-T\>> such that <math|b+<frac|\<varepsilon\>|2>\<in\>J>
    hence <math|b\<less\>b+<frac|\<varepsilon\>|2>\<less\>end<around*|(|J|)>\<in\><around*|{|end<around*|(|I|)>\|I\<in\>\<cal-T\>|}>\<less\>b>
    a contradiction. So we must have that <math|\<cal-T\>> is infinite. As
    <math|\<cal-T\>\<subseteq\>\<cal-D\>> a denumerable set (see
    <reference|set of Dyadic intervals is denumerable>) it follows from
    <reference|subsets of denumerable sets are finite or denumerable> at\ 

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
      properties>
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

  To summarize the above lemmas we have by <reference|set of segments is a
  sigma algebra>, <reference|sigma algebra of half open intervals>,
  <reference|half open interval and Borel Sets> and <reference|closed
  intervals and Borel Sets> that\ 

  <\theorem>
    For <math|\<cal-L\>> the set of Lebesgue measurable sets of
    <math|\<bbb-R\>> (see <reference|Lebesgue measure>) we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-L\>>>>>
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
    Let <math|n\<in\>\<bbb-N\>> and <math|\<emptyset\>\<neq\>R\<in\>\<cal-R\><rsup|n>>
    then there exists a unique <math|a,b\<in\>\<bbb-R\><rsup|n>> such that
    <math|R=<around*|[|a,b|[>>
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
  <math|\<bbb-R\><rsup|n>> as follows\ 

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
    Hence using the defition of a outer measure we have

    \;

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|A<big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|A\\H<rsup|i><rsub|x>|)>>|<cell|\<leqslant\>>|<cell|\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>|)>+\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>+<big|sum><rsub|j=1>\<varphi\><rsup|n><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sum
      of series in the extended reals>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|R<rsub|j>\\H<rsup|i><rsub|x>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|eq
      18.123.002>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<smart-ref|eq
      18.126.002>>>>|<cell|\<varphi\><rsup|n><around*|(|A|)>+\<varepsilon\>>>>>
    </eqnarray*>

    which by the fact that <math|\<varepsilon\>> is choosen arbitrary and
    <smart-ref|consequence of the Archimedean property (2)> proves that\ 

    <\equation*>
      \<varphi\><rsup|n><around*|(|A<big|cap>H<rsup|i><rsub|x>|)>+\<varphi\><rsup|n><around*|(|A\\H<rsup|i><rsub|x>|)>\<leqslant\>\<varphi\><rsup|n><around*|(|A|)>
    </equation*>

    and as <math|A> was choosen arbitrary that\ 

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
    <label|sigma algebra of half opent intervals in R^n>Let
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
    <math|\<sigma\>>-algebra contaning <math|\<cal-R\><rsup|n>> we have\ 

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
    Let <math|n\<in\>\<bbb-N\>> then dyadic cubes have the following
    properties\ 

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

  We decompose now open sets in <math|\<bbb-R\><rsup|n>> as a countable union
  of dyadic cubes.

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

    The proof consists now of different steps. First we prove that\ 

    <\equation>
      <label|eq 18.13.002>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    <\proof>
      First as <math|\<forall\>D\<in\>\<cal-T\>> we have that
      <math|\<exists\>i\<in\>\<bbb-N\>> such that
      <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>S<rsub|i>\<Rightarrow\>D\<subseteq\>U>
      it follows that\ 

      <\equation>
        <label|eq 18.136.002><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
      </equation>

      For the opposite inclusion, take <math|x\<in\>U> then as <math|U> is
      open there exist a <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>>
    </proof>

    \;
  </proof>

  \;

  \;

  \;

  \ 
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
    <associate|Borel algebras|<tuple|18.11|?>>
    <associate|Borel sets and closed sets|<tuple|18.12|?>>
    <associate|Borel sigma-algebra|<tuple|18.10|?>>
    <associate|Caratheodory|<tuple|18.30|?>>
    <associate|Dyadic cube|<tuple|18.68|?>>
    <associate|Dyadic cubes and open sets|<tuple|18.71|?>>
    <associate|Dyadic intervals|<tuple|18.46|?>>
    <associate|Dyadic intervals and open sets|<tuple|18.51|?>>
    <associate|Dyadic properties|<tuple|18.50|?>>
    <associate|Lebesgue|<tuple|18.41|?>>
    <associate|Lebesgue R^n|<tuple|18.64|?>>
    <associate|Lebesgue measure|<tuple|Lebesgue measurable set|?>>
    <associate|alternate definition of a sigma algebra|<tuple|18.5|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|image measure|?>>
    <associate|auto-11|<tuple|18.1.3|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible
    set|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|\<mu\>>-conegligible
    set|?>>
    <associate|auto-14|<tuple|18.1.4|?>>
    <associate|auto-15|<tuple|outer measure|?>>
    <associate|auto-16|<tuple|18.1.4.1|?>>
    <associate|auto-17|<tuple|half open interval|?>>
    <associate|auto-18|<tuple|<with|mode|<quote|math>|<around*|[|a,b|[>>|?>>
    <associate|auto-19|<tuple|Lebesgue measurable set|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-20|<tuple|<with|mode|<quote|math>|\<cal-L\>>|?>>
    <associate|auto-21|<tuple|<with|mode|<quote|math>|\<lambda\>>|?>>
    <associate|auto-22|<tuple|<with|mode|<quote|math>|\<cal-D\><rsub|n>>|?>>
    <associate|auto-23|<tuple|18.1.4.2|?>>
    <associate|auto-24|<tuple|Lebesgue measurable set|?>>
    <associate|auto-25|<tuple|<with|mode|<quote|math>|\<cal-L\>>|?>>
    <associate|auto-26|<tuple|<with|mode|<quote|math>|\<lambda\><rsup|n>>|?>>
    <associate|auto-27|<tuple|dyadic cube|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>|?>>
    <associate|auto-3|<tuple|18.1.1|?>>
    <associate|auto-4|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-6|<tuple|Borel sets|?>>
    <associate|auto-7|<tuple|18.1.2|?>>
    <associate|auto-8|<tuple|measure space|?>>
    <associate|auto-9|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>|?>>
    <associate|boundary of a interval|<tuple|18.36|?>>
    <associate|bounds of a half open interval|<tuple|18.35|?>>
    <associate|closed intervals and Borel Sets|<tuple|18.54|?>>
    <associate|conegligible sets|<tuple|18.23|?>>
    <associate|conegligible sets properties|<tuple|18.24|?>>
    <associate|constructing a outer measure|<tuple|18.29|?>>
    <associate|constructing pairwise disjoint sequences|<tuple|18.17|?>>
    <associate|eq 18.1.001.1|<tuple|18.1|?>>
    <associate|eq 18.1.1.001|<tuple|18.2|?>>
    <associate|eq 18.1.2.001|<tuple|18.3|?>>
    <associate|eq 18.10.001|<tuple|18.11|?>>
    <associate|eq 18.100.001|<tuple|18.103|?>>
    <associate|eq 18.100.001.2|<tuple|18.102|?>>
    <associate|eq 18.101.001|<tuple|18.104|?>>
    <associate|eq 18.102.001|<tuple|18.106|?>>
    <associate|eq 18.102.001.1|<tuple|18.105|?>>
    <associate|eq 18.103.001|<tuple|18.107|?>>
    <associate|eq 18.104.001|<tuple|18.108|?>>
    <associate|eq 18.105.001|<tuple|18.109|?>>
    <associate|eq 18.106.001|<tuple|18.110|?>>
    <associate|eq 18.107.001|<tuple|18.111|?>>
    <associate|eq 18.108.001|<tuple|18.112|?>>
    <associate|eq 18.11.001|<tuple|18.12|?>>
    <associate|eq 18.110.001|<tuple|18.114|?>>
    <associate|eq 18.111.001|<tuple|18.115|?>>
    <associate|eq 18.112.001|<tuple|18.116|?>>
    <associate|eq 18.113.001|<tuple|18.117|?>>
    <associate|eq 18.114.001|<tuple|18.118|?>>
    <associate|eq 18.115.001|<tuple|18.119|?>>
    <associate|eq 18.116.001|<tuple|18.120|?>>
    <associate|eq 18.117.001|<tuple|18.121|?>>
    <associate|eq 18.119.001.1|<tuple|18.122|?>>
    <associate|eq 18.12.001|<tuple|18.13|?>>
    <associate|eq 18.123.002|<tuple|18.123|?>>
    <associate|eq 18.124.002|<tuple|18.124|?>>
    <associate|eq 18.125.002|<tuple|18.125|?>>
    <associate|eq 18.126.002|<tuple|18.126|?>>
    <associate|eq 18.127.002|<tuple|18.127|?>>
    <associate|eq 18.128.002|<tuple|18.128|?>>
    <associate|eq 18.129.002|<tuple|18.129|?>>
    <associate|eq 18.13.001|<tuple|18.14|?>>
    <associate|eq 18.13.002|<tuple|18.135|?>>
    <associate|eq 18.130.002|<tuple|18.130|?>>
    <associate|eq 18.131.002|<tuple|18.131|?>>
    <associate|eq 18.132.002|<tuple|18.132|?>>
    <associate|eq 18.133.002|<tuple|18.133|?>>
    <associate|eq 18.134.002|<tuple|18.134|?>>
    <associate|eq 18.136.002|<tuple|18.136|?>>
    <associate|eq 18.14.001|<tuple|18.15|?>>
    <associate|eq 18.15.001|<tuple|18.16|?>>
    <associate|eq 18.16.001|<tuple|18.24|?>>
    <associate|eq 18.17.001|<tuple|18.25|?>>
    <associate|eq 18.17.002|<tuple|18.17|?>>
    <associate|eq 18.18.001|<tuple|18.26|?>>
    <associate|eq 18.18.002|<tuple|18.18|?>>
    <associate|eq 18.19.001|<tuple|18.27|?>>
    <associate|eq 18.19.002|<tuple|18.19|?>>
    <associate|eq 18.20.001|<tuple|18.28|?>>
    <associate|eq 18.20.002|<tuple|18.20|?>>
    <associate|eq 18.21.001|<tuple|18.29|?>>
    <associate|eq 18.21.002|<tuple|18.21|?>>
    <associate|eq 18.22.001|<tuple|18.30|?>>
    <associate|eq 18.22.002|<tuple|18.22|?>>
    <associate|eq 18.23.001|<tuple|18.31|?>>
    <associate|eq 18.24.001|<tuple|18.32|?>>
    <associate|eq 18.25.001|<tuple|18.33|?>>
    <associate|eq 18.26.001|<tuple|18.34|?>>
    <associate|eq 18.27.001|<tuple|18.35|?>>
    <associate|eq 18.28.001|<tuple|18.36|?>>
    <associate|eq 18.29.001|<tuple|18.37|?>>
    <associate|eq 18.3.001|<tuple|18.5|?>>
    <associate|eq 18.30.001|<tuple|18.38|?>>
    <associate|eq 18.31.001|<tuple|18.39|?>>
    <associate|eq 18.32.001|<tuple|18.40|?>>
    <associate|eq 18.33.001|<tuple|18.41|?>>
    <associate|eq 18.34.001|<tuple|18.42|?>>
    <associate|eq 18.35.001|<tuple|18.43|?>>
    <associate|eq 18.36.001|<tuple|18.44|?>>
    <associate|eq 18.37.001|<tuple|18.45|?>>
    <associate|eq 18.38.001|<tuple|18.46|?>>
    <associate|eq 18.39.001|<tuple|18.47|?>>
    <associate|eq 18.4.001|<tuple|18.6|?>>
    <associate|eq 18.4.001.1|<tuple|18.4|?>>
    <associate|eq 18.40.001|<tuple|18.48|?>>
    <associate|eq 18.41.001|<tuple|18.49|?>>
    <associate|eq 18.42.001|<tuple|18.50|?>>
    <associate|eq 18.43.001|<tuple|18.51|?>>
    <associate|eq 18.44.001|<tuple|18.52|?>>
    <associate|eq 18.45.001|<tuple|18.53|?>>
    <associate|eq 18.46.001|<tuple|18.54|?>>
    <associate|eq 18.47.001|<tuple|18.55|?>>
    <associate|eq 18.48.001|<tuple|18.56|?>>
    <associate|eq 18.49.001|<tuple|18.57|?>>
    <associate|eq 18.5.001|<tuple|18.7|?>>
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
    <associate|eq 18.6.001|<tuple|18.8|?>>
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
    <associate|eq 18.7.001|<tuple|18.9|?>>
    <associate|eq 18.74.001|<tuple|18.23|?>>
    <associate|eq 18.75.001|<tuple|18.80|?>>
    <associate|eq 18.76.001|<tuple|18.78|?>>
    <associate|eq 18.77.001|<tuple|18.79|?>>
    <associate|eq 18.78.001|<tuple|18.81|?>>
    <associate|eq 18.79.001|<tuple|18.82|?>>
    <associate|eq 18.8.001|<tuple|18.10|?>>
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
    <associate|functions and a.e.|<tuple|18.26|?>>
    <associate|half open interval|<tuple|18.33|?>>
    <associate|half open interval and Borel Sets|<tuple|18.53|?>>
    <associate|half open interval as union of open sets|<tuple|18.52|?>>
    <associate|half spaces are Lebesgue|<tuple|18.65|?>>
    <associate|image measure|<tuple|18.19|?>>
    <associate|intersection of interval and segments|<tuple|18.42|?>>
    <associate|intervals in R^1|<tuple|18.61|?>>
    <associate|length is semi-additive|<tuple|18.39|?>>
    <associate|measurable space|<tuple|18.3|?>>
    <associate|measure space|<tuple|18.13|?>>
    <associate|measure space alternative definition|<tuple|18.15|?>>
    <associate|measure space properties|<tuple|18.18|?>>
    <associate|negligible set|<tuple|18.20|?>>
    <associate|negligible sets properties|<tuple|18.22|?>>
    <associate|outer measure|<tuple|18.28|?>>
    <associate|outer measure induced by a measure|<tuple|18.31|?>>
    <associate|outer measure on the real numbers|<tuple|18.40|?>>
    <associate|property of Dyadic interval of order n|<tuple|18.49|?>>
    <associate|reindex union of sets|<tuple|18.14|?>>
    <associate|segments are lebesgue measurable|<tuple|18.43|?>>
    <associate|set of Dyadic intervals is denumerable|<tuple|18.48|?>>
    <associate|set of segments is a sigma algebra|<tuple|18.44|?>>
    <associate|sigma algebra generated|<tuple|18.8|?>>
    <associate|sigma algebra of half open intervals|<tuple|18.45|?>>
    <associate|sigma algebra of half opent intervals in R^n|<tuple|18.67|?>>
    <associate|sigma algebra of half spaces|<tuple|18.66|?>>
    <associate|sigma algebra properties|<tuple|18.7|?>>
    <associate|sigma-algebra|<tuple|18.2|?>>
    <associate|subspace measure|<tuple|18.32|?>>
    <associate|trivial measurable space|<tuple|18.4|?>>
    <associate|trivial sigma algebra|<tuple|18.6|?>>
    <associate|union of two sets to finite union of two sets|<tuple|18.27|?>>
    <associate|volume is semi-additive|<tuple|18.62|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>>|<pageref|auto-5>>

      <tuple|<tuple|Borel sets>|<pageref|auto-6>>

      <tuple|<tuple|measure space>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>>|<pageref|auto-9>>

      <tuple|<tuple|image measure>|<pageref|auto-10>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible
      set>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-conegligible
      set>|<pageref|auto-13>>

      <tuple|<tuple|outer measure>|<pageref|auto-15>>

      <tuple|<tuple|half open interval>|<pageref|auto-17>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|[|a,b|[>>>|<pageref|auto-18>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-L\>>>|<pageref|auto-20>>

      <tuple|<tuple|<with|mode|<quote|math>|\<lambda\>>>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsub|n>>>|<pageref|auto-22>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-24>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-L\>>>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|\<lambda\><rsup|n>>>|<pageref|auto-26>>

      <tuple|<tuple|dyadic cube>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>>|<pageref|auto-29>>
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
      <no-break><pageref|auto-7>>

      <with|par-left|<quote|1tab>|18.1.3<space|2spc>Negligible sets
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|18.1.4<space|2spc>Carathéodory construction
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-14>>

      <with|par-left|<quote|2tab>|18.1.4.1<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-16>>

      <with|par-left|<quote|2tab>|18.1.4.2<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>
    </associate>
  </collection>
</auxiliary>