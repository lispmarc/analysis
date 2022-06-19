<TeXmacs|1.99.15>

<project|Book.tm>

<style|book>

<\body>
  <assign|chapter-nr|17>

  <chapter|Measure Theory>

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
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a algebra iff\ 

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

    \;
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
    We use the following notations for the following topological spaces\ 

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
  theory, it is usefull to turn a sequence of sets in a pairwise disjoin
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
    which using <reference|eq 18.5.001> and the pairwise disjointness gives\ 

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
      <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a mesaure
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

  Constructing measures on a <math|\<sigma\>>-algebra is not a easy task. The
  idea of the Carathéodory construction is that is that we first start with a
  set function that has some of the properties that a measure must have (see
  <reference|measure space properties>) and then find a
  <math|\<sigma\>>-algebra that makes this a measure on this
  <math|\<sigma\>>-algebra. With luck this <math|\<sigma\>>-algebra is the
  <math|\<sigma\>>-algebra where we are constructing a measure on.\ 

  First we define the concept of outer measure that is a set function that
  fullfils the minimum requirements that a measure must have.

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

  We are now ready to construct given a set <math|X>, a outer measure on
  <math|X> a <math|\<sigma\>>-algebra on <math|X> such that the restriction
  of the outer measure on this <math|\<sigma\>>-algebra is a measure.

  <\theorem>
    <label|Caratheodory><dueto|Carathéodory>Let <math|X> be a set and
    <math|\<cal-O\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure on <math|X> then <math|\<cal-A\>=<around*|{|E\<in\>\<cal-P\><around*|(|X|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>
    we have \<cal-O\><around*|(|A|)>=\<cal-O\><around*|(|A<big|cap>E|)>+\<cal-O\><around*|(|A\\E|)>|}>>
    is a <math|\<sigma\>>-algebra and <math|\<cal-O\><rsub|\|\<cal-A\>>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure, making <math|<around*|\<langle\>|X,\<cal-A\>,\<cal-O\><rsub|\|\<cal-A\>>|\<rangle\>>>
    a measure space.
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
    </enumerate>

    \;
  </proof>

  \;

  \;

  \ 
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|707>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Borel sigma-algebra|<tuple|18.9|?>>
    <associate|Caratheodory|<tuple|18.26|?>>
    <associate|alternate definition of a sigma algebra|<tuple|18.4|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|18.17|?>>
    <associate|auto-11|<tuple|18.1.3|?>>
    <associate|auto-12|<tuple|18.18|?>>
    <associate|auto-13|<tuple|18.21|?>>
    <associate|auto-14|<tuple|18.1.4|?>>
    <associate|auto-15|<tuple|18.25|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-3|<tuple|18.1.1|?>>
    <associate|auto-4|<tuple|18.1|?>>
    <associate|auto-5|<tuple|18.7|?>>
    <associate|auto-6|<tuple|18.8|?>>
    <associate|auto-7|<tuple|18.1.2|?>>
    <associate|auto-8|<tuple|18.11|?>>
    <associate|auto-9|<tuple|18.11|?>>
    <associate|conegligible sets|<tuple|18.21|?>>
    <associate|conegligible sets properties|<tuple|18.22|?>>
    <associate|constructing pairwise disjoint sequences|<tuple|18.15|?>>
    <associate|eq 18.1.001.1|<tuple|18.1|?>>
    <associate|eq 18.1.1.001|<tuple|18.2|?>>
    <associate|eq 18.1.2.001|<tuple|18.3|?>>
    <associate|eq 18.10.001|<tuple|18.10|?>>
    <associate|eq 18.11.001|<tuple|18.11|?>>
    <associate|eq 18.12.001|<tuple|18.12|?>>
    <associate|eq 18.13.001|<tuple|18.13|?>>
    <associate|eq 18.14.001|<tuple|18.14|?>>
    <associate|eq 18.15.001|<tuple|18.15|?>>
    <associate|eq 18.16.001|<tuple|18.16|?>>
    <associate|eq 18.17.001|<tuple|18.17|?>>
    <associate|eq 18.18.001|<tuple|18.18|?>>
    <associate|eq 18.19.001|<tuple|18.19|?>>
    <associate|eq 18.20.001|<tuple|18.20|?>>
    <associate|eq 18.3.001|<tuple|18.4|?>>
    <associate|eq 18.4.001|<tuple|18.5|?>>
    <associate|eq 18.5.001|<tuple|18.6|?>>
    <associate|eq 18.6.001|<tuple|18.7|?>>
    <associate|eq 18.7.001|<tuple|18.8|?>>
    <associate|eq 18.8.001|<tuple|18.9|?>>
    <associate|functions and a.e.|<tuple|18.24|?>>
    <associate|image measure|<tuple|18.17|?>>
    <associate|measurable space|<tuple|18.2|?>>
    <associate|measure space|<tuple|18.11|?>>
    <associate|measure space alternative definition|<tuple|18.13|?>>
    <associate|measure space properties|<tuple|18.16|?>>
    <associate|negligible set|<tuple|18.18|?>>
    <associate|negligible sets properties|<tuple|18.20|?>>
    <associate|outer measure|<tuple|18.25|?>>
    <associate|reindex union of sets|<tuple|18.12|?>>
    <associate|sigma algebra generated|<tuple|18.7|?>>
    <associate|sigma algebra properties|<tuple|18.6|?>>
    <associate|sigma-algebra|<tuple|18.1|?>>
    <associate|trivial measurable space|<tuple|18.3|?>>
    <associate|trivial sigma algebra|<tuple|18.5|?>>
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
    </associate>
  </collection>
</auxiliary>