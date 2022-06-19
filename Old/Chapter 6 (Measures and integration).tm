<TeXmacs|1.99.9>

<project|Book.tm>

<style|<tuple|book|old-spacing>>

<\body>
  <assign|chapter-nr|15>

  <chapter|Measure theory>

  <section|Usefull set relations>

  <\definition>
    <label|pairwise disjoint family><index|pairwise disjoint family of
    sets><index|<math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>>>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> be a family of sets such
    that <math|\<forall\>i,j\<in\>I> with <math|i\<neq\>j> we have
    <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is called a
    <with|font-series|bold|pairwise disjoint family of sets>. If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a pairwise disjoint
    family of sets then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> is noted as
    <math|<big|sqcup><rsub|i\<in\>I>A<rsub|i>>. So
    <math|A=<big|sqcup><rsub|i\<in\>I>A<rsub|i>> means that there exists a
    pairwise disjoint family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>>
    such that <math|A=<big|cup><rsub|i\<in\>I>A<rsub|i>>.
  </definition>

  Every union of sets can be rewriten as a union of disjoint sets as the
  following theorem shows.

  <\theorem>
    <label|union as pairwise disjoint union>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is a family of sets (here <math|n> is either <math|\<infty\>> so that we
    have a sequence or <math|n\<in\>\<bbb-N\><rsub|0>> so that we have
    <math|>a finite family) then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
    where <math|B<rsub|i>=<tabular*|<tformat|<table|<row|<cell|<choice|<tformat|<table|<row|<cell|A<rsub|1>
    if i=1>>|<row|<cell|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>
    if i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>\<equallim\><rsub|<text|<reference|generalized
    difference>>><choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\A<rsub|j>|)>
    if i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>>>>>>>
  </theorem>

  <\proof>
    First we prove that <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is pairwise disjoint. So let <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    with <math|i\<neq\>j> then we can assume without loosing generality that
    <math|i\<less\>j> [otherwise interchange <math|i,j>]. Assume now that
    <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then we have that
    <math|1\<leqslant\>i\<leqslant\>j-1\<less\>j> so
    <math|x\<in\>B<rsub|i>\<subseteq\>A<rsub|i>> and
    <math|x\<in\>B<rsub|j>=A<rsub|j>\\<around*|(|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>|)>\<Rightarrowlim\><rsub|i\<leqslant\>j-1>x\<nin\>A<rsub|i><rsub|>>
    leading to a contradiction, so we must have that
    <math|\<emptyset\>=B<rsub|i><big|cap>B<rsub|j>>.

    Next as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>> so that
    <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
    To prove the oppossite operation, take
    <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<Rightarrow\>\<exists\>i<rsub|0>\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|x\<in\>A<rsub|i<rsub|0>>>, so that
    <math|i<rsub|0>\<in\>\<cal-I\>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}>>
    is not empty. Using <reference|the natural numbers are well-ordered> we
    have that <math|k=min<around*|(|\<cal-I\>|)>> exists. By definition we
    have that <math|x\<in\>A<rsub|k>> and for <math|k> we have either

    <\description>
      <item*|<math|k=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>

      <item*|<math|1\<less\>k>>then <math|x\<in\>A<rsub|k>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,k|}>> we have by
      definition of <math|k> that <math|x\<in\>A<rsub|i>> so that
      <math|x\<in\>A<rsub|k>\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k-1|}>>A<rsub|i>|)>=B<rsub|k>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
    </description>

    thus proving <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>.
  </proof>

  <\lemma>
    <label|union of sequences of sequences of sets>Let
    <math|<around*|{|A<rsub|i,j>|}><rsub|<around*|(|i,j|)>\<in\>\<bbb-N\><rsub|9>\<times\>\<bbb-N\><rsub|0>>>
    be a family of sets then if <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
    is a bijection (which exists by <reference|product of enumerable sets is
    enumerable>) then <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)>>
  </lemma>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
    then there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,j>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)><rsub|>>
    proving <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)>>.
    If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)>>
    then <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|k,j>> so that
    <math|\<exists\>l\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|k,l>>. As <math|\<sigma\>> is surjective there exists
    a <math|i\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<sigma\><around*|(|i|)>=<around*|(|k,l|)>> and thus
    <math|x\<in\>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
    provin that \ <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
  </proof>

  <\lemma>
    <label|distribute intersection over union>Let
    <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>> and let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of sets such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    there exists a family of sets <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\>I<rsub|i>>>
    such that <math|A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>A<rsub|i,j>>
    then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>>.
    Further if <math|A<rsub|i>=<big|sqcup><rsub|j\<in\>I<rsub|i>>A<rsub|i,j>>
    then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|sqcup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>>
  </lemma>

  <\proof>
    The first part of the theorem is proved by induction. So let
    <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
    ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
    is such that there exists a ><around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>><text|
    with >A<rsub|i>=<big|cup><rsub|i\<in\>I<rsub|i>>A<rsub|i,j><text| then
    ><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|j>><around*|(|<big|cap><rsub|i\<in\>I<rsub|i>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|2\<in\>\<cal-S\>>>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>>
      be such that <math|A<rsub|1>=<big|cup><rsub|i\<in\>I<rsub|1>>A<rsub|1,i>>
      and <math|A<rsub|2>=<big|cup><rsub|i\<in\>I<rsub|2>>A<rsub|2,i>> then
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>A<rsub|i>=A<rsub|1><big|cap>A<rsub|2>>
      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>A<rsub|1><big|cap>A<rsub|2>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|<big|cup><rsub|i\<in\>I<rsub|1>>A<rsub|1,i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\>I<rsub|2>>A<rsub|2,i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<exists\>i\<in\>I<rsub|1><text|
        we have >x\<in\>A<rsub|1,i>|)>\<wedge\><around*|(|\<exists\>j\<in\>I<rsub|2><text|
        we have <math|x\<in\>A<rsub|2,i>>>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\><around*|(|i,j|)>\<in\>I<rsub|1>\<times\>I<rsub|2>
        such that x\<in\>A<rsub|1,i><big|cap>A<rsub|2,j>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\>>|<cell|\<exists\>\<sigma\>\<in\><big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>I<rsub|i>
        such that x\<in\>A<rsub|1,\<sigma\><around*|(|1|)>><big|cap>A<rsub|2,\<sigma\><around*|(|2|)>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>>>>>
      </eqnarray*>

      proving that <math|2\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      be such that <math|A<rsub|i>=<big|cup><rsub|j\<in\>I<rsub|i>>A<rsub|i,j>>
      then as <math|n\<in\>\<cal-S\>> we have

      <\equation>
        <label|eq 15.1.417><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>
      </equation>

      If <math|x\<in\><around*|(|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>|)><big|cap>A<rsub|n+1>>
      then there exists a <math|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
      such that <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>>
      and <math|x\<in\>A<rsub|n+1>=<big|cup><rsub|j\<in\>I<rsub|n+1>>A<rsub|n+1,j>\<Rightarrow\>\<exists\>j<rsub|x>\<in\>I<rsub|n+1>>
      such that <math|x\<in\>A<rsub|n+1,j<rsub|x>>>. Define
      <math|\<tau\>=\<sigma\><big|cup><around*|{|<around*|(|n+1,j<rsub|x>|)>|}>>
      then <math|\<tau\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>>
      and <math|\<tau\><rsub|\|<around*|{|1,\<ldots\>,n|}>>=\<sigma\>> (see
      <reference|super tuple>) so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<tau\><around*|(|j|)>>\<subseteq\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><rsub|>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|j|)>>|)>>.
      If <math|x\<in\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><rsub|>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|j|)>>|)>>
      then there exists a <math|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>>
      such that <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|j|)>>\<Rightarrow\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x\<in\>A<rsub|i,\<sigma\><around*|(|i|)>>> and
      <math|x\<in\>A<rsub|n+1,\<sigma\><around*|(|n+1|)>>\<subseteq\>A<rsub|n+1>>
      so if we take <math|\<tau\>=\<sigma\><rsub|\|<around*|{|1,\<ldots\>,n|}>>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<tau\><around*|(|i|)>>\<subseteq\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>A<rsub|i,\<rho\><around*|(|i|)>>>
      so that <math|x\<in\>x\<in\><around*|(|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>|)><big|cap>A<rsub|n+1>>.
      This proves that\ 

      <\equation>
        <label|eq 15.2.417><around*|(|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>|)><big|cap>A<rsub|n+1>=<big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><rsub|>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|j|)>>|)>
      </equation>

      Finally as <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>\<equallim\><rsub|<text|<reference|eq
      15.1.417>>><around*|(|<big|cup><rsub|\<sigma\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|i|)>>|)>|)><big|cap>A<rsub|n+1>\<equallim\><rsub|<text|<reference|eq
      15.2.417>>><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>><rsub|>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i,\<sigma\><around*|(|j|)>>|)>>
      we have proved that <math|n+1\<in\>\<cal-S\>>.\ 
    </description>

    For the second part, assume that <math|\<sigma\>,\<tau\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
    with <math|\<sigma\>\<neq\>\<tau\>> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|\<sigma\><around*|(|i|)>\<neq\>\<tau\><around*|(|i|)>> so that as
    <math|A<rsub|i>=<big|sqcup><rsub|j\<in\>I<rsub|i>>A<rsub|i,i>> we have
    <math|A<rsub|i,\<sigma\><around*|(|i|)>><big|cap>A<rsub|i,\<tau\><around*|(|j|)>>=\<emptyset\>>
    and thus <math|<around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j,\<sigma\><around*|(|j|)>>|)><big|cap><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j,\<tau\><around*|(|j|)>>|)>\<subseteq\>A<rsub|i,\<sigma\><around*|(|i|)>><big|cap>A<rsub|i,\<tau\><around*|(|j|)>>=\<emptyset\>>.
  </proof>

  <\definition>
    <index|<em|<math|\<cap\>>-stable>><index|<math|\<cup\>>-stable>Let
    <math|X> be a set then <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|[|X|]>>
    (where <math|\<cal-P\><around*|(|X|)>> is the set of subsets of
    <math|X>(see <reference|power set>)) then <math|\<cal-A\>> is called
    <math|\<cap\>>-stable if <math|\<forall\>A,B\<in\>\<cal-A\>> we have
    <math|A<big|cap>B\<in\>\<cal-A\>>, <math|\<cal-A\>> is called
    <math|\<cup\>>-stable if <math|\<forall\>A,B\<in\>\<cal-A\>> we have
    <math|A<big|cup>B\<in\>\<cal-A\>> and <math|\<cal-A\>> is called
    <math|\<sqcup\>>-stable if <math|\<forall\>A,B\<in\>\<cal-A\>> with
    <math|A<big|cap>B=\<emptyset\>> we have
    <math|A<big|sqcup>B\<in\>\<cal-A\>>
  </definition>

  <\lemma>
    <label|closure of union or intersection>Let <math|X> be a set and
    <math|\<cal-F\>\<subseteq\>\<cal-P\><around*|(|X|)>>\ 

    <\enumerate>
      <item>If <math|\<cal-F\>> is <math|\<cup\>>-stable then
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>
      we have that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>>

      <item>If <math|\<cal-F\>> is <math|\<cap\>>-stable then
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>
      we have that <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>>

      <item>If <math|B\<subseteq\>A> we have
      <math|A=<around*|(|A\\B|)><big|sqcup>B>

      <item>If <math|\<cal-F\>> is <math|\<sqcup\>>-stable then for every
      finite pairwise disjoint family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      of sets in <math|\<cal-F\>> we have
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>This is easely proved by induction, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\><text|
      we have ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>As for
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>
        we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-F\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>>
        then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>\<in\>\<cal-F\>>
        [as <math|n\<in\>\<cal-S\>> we have
        <math|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>A<rsub|i>\<in\>\<cal-F\>>]
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      by induction we have then that <math|\<cal-S\>=\<bbb-N\><rsub|0>>
      proving (1)

      <item>Induction is used again, so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\><text|
      we have ><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>As for
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>
        we have <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-F\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>\<vdash\>A<rsub|i>\<in\>\<cal-F\>>>
        then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>\<in\>\<cal-F\>>
        [as <math|n\<in\>\<cal-S\>> we have
        <math|<around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>A<rsub|i>\<in\>\<cal-F\>>]
        proving that <math|n+1\<in\>\<cal-S\>>
      </description>

      by induction we have then that <math|\<cal-S\>=\<bbb-N\><rsub|0>>
      proving (1)

      <item>First if <math|x\<in\><around*|(|A\\B|)><big|cap>B\<Rightarrow\>x\<in\>A\\B\<wedge\>x\<in\>B\<Rightarrow\>x\<nin\>B\<wedge\>x\<in\>B>
      a contradiction so that <math|<around*|(|A\\B|)><big|cap>B=\<emptyset\>>.
      First <math|<around*|(|A\\B|)><big|cup>B\<subseteq\>A<big|cup>B\<equallim\><rsub|B\<subseteq\>A>A>
      proving <math|<around*|(|A\\B|)><big|cup>B\<subseteq\>A>, next if
      <math|x\<in\>A> then we have <math|x\<in\>A\<wedge\><around*|(|x\<in\>B\<vee\>x\<nin\>B|)>\<Rightarrow\><around*|(|x\<in\>A\<wedge\>x\<in\>B|)>\<vee\><around*|(|x\<nin\>B\<wedge\>x\<in\>A|)>\<Rightarrowlim\>x\<in\>B\<vee\>x\<in\><around*|(|A\\B|)><big|cup>B>
      proving that <math|A\<subseteq\><around*|(|A\\B|)><big|cup>B>.

      <item>We prove this by induction so let
      <math|S=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-F\><text|
      and <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| with
      >i\<neq\>j> we have ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>|}>>
      then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
        is a family in <math|\<cal-F\>> we have
        <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-F\>>
        proving that <math|1\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        be a finite pairwise family of sets in <math|\<cal-F\>> then we have
        as <math|n\<in\>\<cal-S\>> that <math|B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-F\>>,
        further <math|B<big|cap>A<rsub|n+1>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i><big|cap>A<rsub|n+1>|)>=\<emptyset\>>.
        So <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|sqcup>A<rsub|n+1>=B<big|sqcup>A\<in\>\<cal-F\>>.
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|set relations>We have the following usefull set relations

    <\enumerate>
      <item><math|A<big|cup>B=A<big|cup><around*|(|B\\A|)>>

      <item><math|B=<around*|(|A<big|cap>B|)><big|cup><around*|(|B\\A|)>>

      <item><math|A\\B=A\\<around*|(|A<rsup|><big|cap>B|)>>

      <item><math|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<big|cap>A<rsub|i>|)>>

      <item>If <math|A<big|cap>B=\<emptyset\>> then <math|A\\B=A>\ 

      <item><math|A\\<around*|(|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>|)>=A<big|cap>B>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|B\\A\<subseteq\>B> we have
      <math|A<big|cup><around*|(|B\\A|)>\<subseteq\>A<big|cup>B>, if
      <math|x\<in\>A<big|cup><around*|(|B\\A|)>> then
      <math|x\<in\>A\<vee\><around*|(|x\<in\>B\<wedge\>x\<nin\>A|)>\<Rightarrow\><around*|(|x\<in\>A\<vee\>x\<in\>B|)>\<wedge\><around*|(|x\<in\>A\<vee\>x\<nin\>A|)>\<Rightarrow\>x\<in\>A\<vee\>x\<in\>B\<Rightarrow\>x\<in\>A<big|cup>B>
      proving <math|A<big|cup>B\<subseteq\>A<big|cup><around*|(|B\\A|)>>

      <item>As <math|A<big|cap>B\<subseteq\>B\<wedge\>B\\A\<subseteq\>B> we
      have <math|<around*|(|A<big|cap>B|)><big|cup><around*|(|B\\A|)>\<subseteq\>B>,
      if <math|x\<in\>B> then we have either <math|x\<in\>A> and thus
      <math|x\<in\><around*|(|A<big|cap>B|)>> or <math|x\<nin\>A> and thus
      <math|x\<in\>B\\A> from which it follows that
      <math|B\<subseteq\><around*|(|A<big|cap>B|)><big|cup><around*|(|B\\A|)>>

      <item><math|x\<in\>A\\B> then <math|x\<in\>A\<wedge\>x\<nin\>B\<Rightarrowlim\><rsub|A<big|cap>B\<subseteq\>B>x\<in\>A\<wedge\>x\<in\>A\\<around*|(|A<big|cap>B|)>>,
      <math|x\<in\>A\\<around*|(|A<big|cap>B|)>> then
      <math|x\<in\>A\<wedge\>x\<nin\>A<big|cap>B>, assume that
      <math|x\<in\>B> then as <math|x\<in\>A> we have
      <math|x\<in\>A<big|cap>B> a contradiction, so we have
      <math|x\<in\>A\<wedge\>x\<nin\>B\<Rightarrow\>x\<in\>A\\B>

      <item>We have <math|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<big|cap>A<rsub|i>|)>>,
      if <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with <math|i\<neq\>j>
      then <math|<around*|(|B<big|cap>A<rsub|i>|)><big|cap><around*|(|B<big|cap>A<rsub|j>|)>\<subseteq\>A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      so that we have <math|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<big|cap>A<rsub|i>|)>>

      <item>If <math|A<big|cap>B=\<emptyset\>> then if <math|x\<in\>A> we
      have <math|x\<nin\>B> so that <math|x\<in\>A\\B> proving that
      <math|A\<subseteq\>A\\B\<subseteq\>A> proving that <math|A=A\\B>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|(|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>|)>>|<cell|=>|<cell|A<big|cap><around*|(|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>|)><rsup|c>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap><around*|(|<around*|(|A\\B|)><rsup|c><big|cap><around*|(|B\\A|)><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap><around*|(|A<big|cap>B<rsup|c>|)><rsup|c><big|cap><around*|(|B<big|cap>A<rsup|c>|)><rsup|c>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap><around*|(|A<rsup|c><big|cup>B|)><big|cap><around*|(|B<rsup|c><big|cup>A|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|A<big|cap>A<rsup|c>|)><big|cup><around*|(|A<big|cap>B|)>|)><big|cap><around*|(|B<rsup|c><big|cup>A|)>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap>B<big|cap><around*|(|B<rsup|c><big|cup>A|)>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap><around*|(|<around*|(|B<big|cap>B<rsup|c>|)><big|cup>*A<big|cap>B|)>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap><around*|(|A<big|cap>B|)>>>|<row|<cell|>|<cell|=>|<cell|A<big|cap>B>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\theorem>
    <label|pairwise disjoint union of pairwise disjoint unions>Let
    <math|<around*|{|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be a family of sets [then using <reference|union of finite family of
    finite sets (number of elements)> there exists a bijection
    <math|\<sigma\>:<around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>]
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    that <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    is pairwise disjoint and <math|<around*|{|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is pairwise disjoint then <math|<around*|{|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>>
    is a pairwise disjoint set and <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|j=1><rsup|n>n<rsub|j>|}>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
  </theorem>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>\<Rightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>>
    and thus there exists a <math|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>
    such that <math|x\<in\>A<rsub|i,j>>. Take then
    <math|k=\<sigma\><rsup|-1><around*|(|<around*|(|i,j|)>|)>> then
    <math|\<sigma\><around*|(|k|)><rsub|1>=i\<wedge\>\<sigma\><around*|(|k|)><rsub|2>=j>
    so that <math|x\<in\>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>>.
    If <math|x\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>>
    then there exists a <math|k\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>
    such that <math|x\<in\>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,\<sigma\><around*|(|k|)><rsub|1>|}>>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>>
    proving that\ 

    <\equation*>
      <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|i,j>|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>
    </equation*>

    Next if <math|i,j\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>n<rsub|i>|}>>
    with <math|i\<neq\>j> we have the following cases to consider

    <\description>
      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>=\<sigma\><around*|(|j|)><rsub|1>>>If
      <math|\<sigma\><around*|(|i|)><rsub|2>=\<sigma\><around*|(|j|)><rsub|2>>
      then we have <math|\<sigma\><around*|(|i|)>=\<sigma\><around*|(|j|)>\<Rightarrowlim\><rsub|\<sigma\>
      is a bijection>i=j> contradicting <math|i=j> so we have that
      <math|\<sigma\><around*|(|i|)><rsub|2>\<neq\>\<sigma\><around*|(|j|)><rsub|2>>
      and thus <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>\<sigma\><around*|(|j|)><rsub|2><rsub|>>=A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|i|)><rsub|1>\<sigma\><around*|(|j|)><rsub|2><rsub|>>=\<emptyset\>>

      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>\<neq\>\<sigma\><around*|(|j|)><rsub|1>>>If
      then then <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>\<subseteq\><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,j>|)><big|cap><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,j>|)>=\<emptyset\>>
    </description>

    So in all cases we have <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>=\<emptyset\>>
  </proof>

  We can extend the above theorem to the infinite case as is expressed in the
  following theorem:

  <\theorem>
    <label|union of a pairwise disjoint sequence of finite unions>If
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
    sequence of sets such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    there exists a family of sets <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    such that <math|A<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>>
    then there exists by <reference|denumerable union of denumerable sets is
    denumerable> a bijection <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
    and <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>.
    Furthermore if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is a sequence of pairwise disjoint sets such that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> there exists a family of
    pairwise disjoint sets <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    such that <math|A<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>>
    then <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>>
  </theorem>

  <\proof>
    We have <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>\<Rightarrow\>\<exists\>i<rsub|0>\<in\>\<bbb-N\><rsub|0>
    <text|such that > x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i<rsub|0>>|}>>A<rsub|i<rsub|0>,j>\<Rightarrow\>\<exists\>j<rsub|0>\<in\><around*|{|1,\<ldots\>,n<rsub|i<rsub|0>>|}><text|
    such that >x\<in\>A<rsub|i<rsub|0>,j<rsub|0>>\<Rightarrowlim\><rsub|<around*|(|i<rsub|0>,j<rsub|0>|)>\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>><text|
    >><math|\<exists\>k\<in\>\<bbb-N\><rsub|0> such that
    \<sigma\><around*|(|k|)>=<around*|(|i<rsub|0>,j<rsub|0>|)> and thus
    x\<in\>A<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>>
    proving that\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>
    </equation*>

    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|\<sigma\><around*|(|i|)><rsub|1>>|}>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,j>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>>
    proving that\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>
    </equation*>

    and thus the first part of the theorem.\ 

    For the second part assume that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is a sequence of pairwise disjoint sets such that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> there exists a family of
    pairwise disjoint sets <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    such that <math|A<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>>.
    Then we have if <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
    that <math|\<sigma\><around*|(|i|)>\<neq\>\<sigma\><around*|(|j|)>> [as
    <math|\<sigma\>> is a bijection] \ and thus we have the following cases
    for <math|\<sigma\><around*|(|i|)>,\<sigma\><around*|(|j|)>> to consider

    <\description>
      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>=\<sigma\><around*|(|j|)><rsub|1>>>then
      <math|\<sigma\><around*|(|j|)><rsub|1>\<neq\>\<sigma\><around*|(|j|)><rsub|2>>
      and thus <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>=A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>=\<emptyset\>>

      <item*|<math|\<sigma\><around*|(|i|)><rsub|1>\<neq\>\<sigma\><around*|(|j|)><rsub|2>>>then
      <math|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>\<subseteq\>A<rsub|\<sigma\><around*|(|i|)><rsub|1>><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>>=\<emptyset\>>
    </description>

    So that\ 

    <\equation*>
      <big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>|)>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>
    </equation*>

    \ 
  </proof>

  \ 

  <section|<math|\<sigma\>>-algebras>

  Integration in <math|\<bbb-R\><rsup|n>> (<math|\<bbb-R\>>) is the theory of
  calculating the volume (area) of complex geometric objects. In order to do
  this we approximate these objects as a disctinct collection of rectangles
  (intervals) for which the volume calculation is simple and then make a sum
  of these volumes (rectangles). So to develop a general theory of
  integration we have to look at ways how we can express a set in the form of
  elementary sets. This is established by the theory of
  <math|\<sigma\>>-algebras. To simplify definitions we use the following
  notation.

  <\notation>
    Let <math|X> be a \ set <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    [the set of subsets of <math|X>] then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> is
    equivalent with <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is a family
    so that <math|\<forall\>i\<in\>I> we have
    <math|A<rsub|i>\<in\>\<cal-A\>>.
  </notation>

  <\definition>
    <label|sigma-algebra><index|<math|\<sigma\>>-algebra><dueto|<math|\<sigma\>>-algebra>Let
    <math|X> be a set then <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <math|\<sigma\>>-algebra on <math|X> if the following conditions are
    satisfied

    <\enumerate>
      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|X\\A\<in\>\<cal-A\>>

      <item>\<forall\><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      (a sequence of sets in <math|\<cal-A\>>) we have
      <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<in\>\<cal-A\>>
      (this implies that <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>)
    </enumerate>
  </definition>

  <\definition>
    <index|measurable space><label|measurable space>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> then
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is called a
    <with|font-series|bold|measurable space>
  </definition>

  <\note>
    If <math|\<cal-A\>> is a <math|\<sigma\>>-algebra then from<space|1em>(1)
    and (2) it follows that <math|\<emptyset\>=X\\X\<in\>\<cal-A\>>\ 
  </note>

  A laternative definition is provided by the following theorem

  <\theorem>
    <label|alternative definition for a sigma algebra>Let <math|X> be a set
    and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-A\>> is a <math|\<sigma\>>-algebra if and only if the
    following is satisfied

    <\enumerate>
      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|X\\A\<in\>\<cal-A\>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      we have <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>

    <\proof>
      \ 

      <\description>
        <item*|<math|\<Rightarrow\>>>Take
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<vdash\>A<rsub|i>\<in\>\<cal-A\>>
        then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>X\\A<rsub|i>\<in\>\<cal-A\>>
        so that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>
        and thus <math|\<cal-A\>\<ni\>X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|generalized
        difference>>><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>

        <item*|<math|\<Leftarrow\>>>Take <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<vdash\>A<rsub|i>\<in\>\<cal-A\>>
        then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>X\\A<rsub|i>\<in\>\<cal-A\>>
        so that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>
        and thus <math|\<cal-A\>\<ni\>X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|generalized
        difference>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\<around*|(|X\\A<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      </description>
    </proof>
  </theorem>

  <\example>
    <label|power set is a sigma-algebra>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X\<subseteq\>X> we have
      <math|X\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|A\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>A\<subseteq\>X\<Rightarrow\>X\\A\<subseteq\>\<cal-P\><around*|(|X|)>>

      <item>For every sequence <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><rsub|>\<subseteq\>\<cal-A\>>
      we have <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<Rightarrow\>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>A<rsub|i>\<subseteq\>\<cal-P\><around*|(|X|)>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>X\<Rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|restricted algebra>Let <math|X> be a set, <math|\<cal-A\>> a
    <math|\<sigma\>>-algebra on <math|X>, <math|A\<in\>\<cal-A\>> then
    <math|\<cal-A\><big|cap>A=<around*|{|B<big|cap>A\|B\<in\>\<cal-A\>|}>> is
    a <math|\<sigma\>>-algebra on <math|A>\ 
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|A=X<big|cap>A\<in\>\<cal-A\><big|cap>A>

      <item>If <math|B\<in\>\<cal-A\><big|cap>A> then
      <math|A\\B=A<big|cap>B<rsup|c>\<equallim\><rsub|A\<subseteq\>X>A<big|cap>X<big|cap>B<rsup|c>=A<big|cap><around*|(|X\\B|)>\<in\>\<cal-A\><big|cap>A>
      [as <math|B\<in\>\<cal-A\>\<Rightarrow\>X\\B\<in\>\<cal-A\>>]

      <item>If <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a family of sets in <math|\<cal-A\><big|cap>A> then there exists a
      <math|<around*|{|B<rprime|'><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      of sets in <math|\<cal-A\>> such that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|B<rsub|i>=B<rprime|'><rsub|i><big|cap>A>. Then
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|B<rprime|'><rsub|i><big|cap>A|)>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rprime|'><rsub|i>|)><big|cap>A\<in\>\<cal-A\><big|cap>A>
      [as <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rprime|'><rsub|i>\<in\>\<cal-A\>>]
    </enumerate>
  </proof>

  Actually given a set, every set of subsets of this set can be extended to a
  <math|\<sigma\>>-algebra, to prove this we need the following theorem and
  corollary.

  <\theorem>
    <label|insersection of a family of sigma algebras is a sigma algebra>Let
    <math|X> be a set and <math|<around*|{|\<cal-A\><rsub|i>|}><rsub|i\<in\>I>>
    is a non empty family of <math|\<sigma\>>-algebras on <math|X> then
    <math|<big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>> is a
    <math|\<sigma\>>-algebra on <math|X>
  </theorem>

  <\proof>
    \ As <math|I\<neq\>\<emptyset\>> there exists a <math|i<rsub|0>\<in\>I>
    so that <math|<big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>\<subseteq\>\<cal-A\><rsub|i<rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>

    <\enumerate>
      <item><math|><math|\<forall\>i\<in\>I> we have that
      <math|\<cal-A\><rsub|i>> is a <math|\<sigma\>>-algebra so that
      <math|X\<in\>\<cal-A\><rsub|i>> proving that
      <math|X\<in\><big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>>

      <item>If <math|A\<in\>\<cal-A\><rsub|i>> then <math|\<forall\>i\<in\>I>
      we have <math|A\<in\>\<cal-A\><rsub|i>\<Rightarrow\>X\\A\<in\>\<cal-A\><rsub|i>>
      proving that <math|X\\A\<in\><big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>>

      <item>Let <math|<around*|{|A<rsub|j>|}><rsub|j\<in\>\<bbb-N\><rsub|0>>\<subseteq\><big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>>
      <math|> then <math|\<forall\>i\<in\>I> we have
      <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>> that
      <math|A<rsub|j>\<in\>\<cal-A\><rsub|i>\<Rightarrowlim\><rsub|\<cal-A\><rsub|i><text|
      is a >\<sigma\><text|-algebra>><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|j>\<in\>\<cal-A\><rsub|i>>
      proving that <math|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|j>\<in\><big|cap><rsub|i\<in\>I>\<cal-A\><rsub|i>>
    </enumerate>

    Note that <math|I\<neq\>\<emptyset\>> is essential as
    <math|<big|cap><rsub|i\<in\>\<emptyset\>>\<cal-A\><rsub|i>=\<cal-U\>>
    (the universal class).
  </proof>

  <\definition>
    <index|<math|\<sigma\><around*|[|\<cal-A\>|]>>>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<sigma\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-B\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\>\<wedge\>\<cal-B\><text|
    is a >\<sigma\><text|-algebra>|}>>\<cal-B\>>
  </definition>

  <\corollary>
    <label|sigma-algebra generator>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then\ 

    <\enumerate>
      <item><math|\<sigma\><around*|[|\<cal-A\>|]>> is a
      <math|\<sigma\>>-algebra on <math|X>

      <item><math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>

      <item>For every <math|\<sigma\>>-algebra on <math|X> with
      <math|\<cal-A\>\<subseteq\>\<cal-B\>> we have that
      <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-B\>>
    </enumerate>

    In other words <math|\<sigma\><around*|[|\<cal-A\>|]>> is the smallest
    <math|\<sigma\>>-algebra on <math|X> containing <math|\<cal-A\>>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<cal-P\><around*|(|\<cal-A\>|)>> is a
      <math|\<sigma\>>-algebra containing <math|\<cal-A\>> we have that
      <math|<around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\>\<wedge\>\<cal-B\><text|
      is a >\<sigma\><text|-algebra>|}>\<neq\>\<emptyset\>>. Using the
      definition and the previous theorem proves that
      <math|\<sigma\><around*|[|\<cal-A\>|]>> is a <math|\<sigma\>>-algebra.

      <item>As <math|\<forall\>\<cal-B\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\>\<wedge\>\<cal-B\><text|
      is a >\<sigma\><text|-algebra>|}>> we have
      <math|\<cal-A\>\<subseteq\>\<cal-B\>> we have that
      <math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>

      <item>If now <math|\<cal-B\>> is a <math|\<sigma\>>-algebra on <math|X>
      containing <math|\<cal-A\>> then <math|\<cal-B\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\>\<wedge\>\<cal-B\><text|
      is a >\<sigma\><text|-algebra>|}>> and thus
      <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-B\>>
    </enumerate>
  </proof>

  <\corollary>
    <label|sigma-algebra generator of sigma-algebra>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> then
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-A\>|]>>
  </corollary>

  <\proof>
    Using the previous corollary (see <reference|sigma-algebra generator>) we
    have that <math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-A\>>
  </proof>

  The above shows, how geven a set and a set of \ subsets of the set, we can
  extend this set of sets in a <math|\<sigma\>>-algebra. In most cases
  however we want to start met a set of sets with already some some algebraic
  structure this is the idea of rings, semi rings and algebras on which it is
  easy to define a measure and extend this to the more general structure.

  <\definition>
    <label|ring of sets><index|ring><dueto|ring>Let <math|X> be a set then
    <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|\<cal-A\>|)>> is called a
    <with|font-series|bold|ring> if

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-R\>>

      <item>If <math|A,B\<in\>\<cal-R\>> then
      <math|A<big|cup>B\<in\>\<cal-R\>> (or <math|\<cal-R\>> is
      <math|\<cup\>>-stable)

      <item>If <math|A,B\<in\>\<cal-R\>> then <math|A\\B\<in\>\<cal-R\>>
    </enumerate>
  </definition>

  The following lemma shows that a ring is <math|\<cap\>>-stable and

  <\lemma>
    <label|ring is n-stable>Let <math|X> be a set and
    <math|\<cal-R\>\<subseteq\>\<cal-P\><around*|(|\<cal-A\>|)>> a ring then
    <math|\<cal-R\>> is <math|\<cap\>>-stable.\ 
  </lemma>

  <\proof>
    If <math|A,B\<in\>\<cal-R\>> then <math|A\\B,B\\A\<in\>\<cal-R\>> (see
    (3)) and thus by (2) we have <math|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>\<in\>\<cal-R\>>
    and by (3) again we have <math|A\\<around*|(|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>|)>\<in\>\<cal-R\>>.
    As using <reference|set relations> we have
    <math|A<big|cap>B=A\\<around*|(|<around*|(|A\\B|)><big|cup><around*|(|B\\A|)>|)>\<in\>\<cal-R\>>
    proving that <math|A<big|cap>B\<in\>\<cal-R\>>.
  </proof>

  <\definition>
    <label|algebra><index|algebra><dueto|algebra>Let <math|X> be a set then
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|\<cal-A\>|)>> is a
    <with|font-series|bold|algebra> on <math|X> if <math|\<cal-A\>> is a ring
    and additional <math|X\<in\>\<cal-A\>>
  </definition>

  The following theorem gives a alternative definition of a algebra.

  <\theorem>
    <label|alternative definition of algebra>Let <math|X> be a set then
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|\<cal-A\>|)>> is a algebra
    if and only if the following is satisfied

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>> and <math|X\<in\>\<cal-A\>>

      <item>If <math|A,B\<in\>\<cal-R\>> then
      <math|A<big|cap>B\<in\>\<cal-R\>> \ (or <math|\<cal-R\>> is
      <math|\<cap\>>-stable)

      <item>If <math|A\<in\>\<cal-R\>> then <math|X\\A\<in\>\<cal-R\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>> By definition we have
      <math|\<emptyset\>,X\<in\>\<cal-A\>>. Next if <math|A\<in\>\<cal-A\>>
      then as <math|X\<in\>\<cal-A\>> we have by (2) that
      <math|X\\A\<in\>\<cal-A\>>. Finally if <math|A,B\<in\>\<cal-A\>> then
      <math|X\\A\<in\>\<cal-A\>> and <math|X\\B\<in\>\<cal-A\>> so that
      <math|<around*|(|X\\A|)><big|cup><around*|(|X\\B|)>\<in\>\<cal-A\>> and
      thus <math|\<cal-A\>\<ni\>X\\<around*|(|<around*|(|X\\A|)><big|cup><around*|(|X\\B|)>|)>=<around*|(|X\\<around*|(|X\\A|)>|)><big|cap><around*|(|X\\<around*|(|X\\B|)>|)>\<equallim\><rsub|<text|<reference|distributivity
      of union or intersection>>>A<big|cap>B>

      <item*|<math|\<Leftarrow\>>>By the hypothese we have
      <math|\<emptyset\>,X\<in\>\<cal-A\>>. Next if <math|A,B\<in\>\<cal-A\>>
      then <math|<around*|(|X\\A|)>,<around*|(|X\\B|)>\<in\>\<cal-A\>> and
      thus <math|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>
      so that <math|\<cal-A\>\<ni\>X\\<around*|(|<around*|(|X\\A|)><big|cap><around*|(|X\\B|)>|)>=<around*|(|X\\<around*|(|X\\A|)>|)><big|cup><around*|(|X\\<around*|(|X\\B|)>|)>=A<big|cup>B>.
      Finally if <math|A,B\<in\>\<cal-A\>> then
      <math|X<big|cap>B<rsup|c>=<around*|(|X\\B|)>\<in\>\<cal-A\>> and thus
      <math|A\\B=A<big|cap>B<rsup|c>\<equallim\><rsub|A\<subseteq\>X>A<big|cap>X<big|cap>B<rsup|c>=A<big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>
    </description>
  </proof>

  The following theorem shows that every union of sets in a algebra can be
  written as a pairwise disjoint union of sets in a algebra

  <\theorem>
    <label|union in algebra as disjoint union>Let <math|X> be a set,
    <math|\<cal-A\>> a ring on <math|X> then if
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    there exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>>
  </theorem>

  <\proof>
    Given <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>
    if i\<gtr\>1>>>>>\<subseteq\>A<rsub|i>> then using the fact that a ring
    is <math|\<cup\>>-stable and that <math|\<forall\>A,B\<in\>\<cal-A\>> we
    have <math|A\\B\<in\>\<cal-A\>> we have that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|B<rsub|i>\<in\>\<cal-A\>>. Using <reference|union as pairwise
    disjoint union> we have then that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
  </proof>

  <\definition>
    <label|semi-algebra><index|semi algebra>Let <math|X> be a set,
    <math|\<cal-S\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-S\>> is a semi ring on <math|X> if\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cap>B\<in\>\<cal-A\>> (or <math|\<cal-A\>> is
      <math|\<cap\>>-stable)

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have that
      <math|\<exists\><around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
      (a pairwise disjoint family of sets in <math|\<cal-S\>>) such that
      <math|A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>
    </enumerate>
  </definition>

  <\note>
    If <math|\<cal-R\>> is a ring then by <reference|ring is n-stable> we
    have that <math|\<cal-R\>> is <math|\<cap\>>-stable and also if
    <math|A,B\<in\>\<cal-R\>> than <math|A\\B\<in\>\<cal-R\>> so that if we
    take <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
    by <math|A<rsub|1>=A/B\<in\>\<cal-R\>> and
    <math|A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>>.
    So a ring is also a semi ring, justifying the term semi ring.\ 
  </note>

  If we have a function <math|f:X\<rightarrow\>Y> then given a ring, semi
  ring or algebra on <math|Y> we can construct a ring, semi ring or algebra
  on <math|X>.

  <\theorem>
    <label|preimage of a ring, semi ring or algebra>Let
    <math|f:X\<rightarrow\>Y> be a function between two sets <math|X,Y> and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|Y|)>>, define
    <math|f<rsup|-1><around*|(|\<cal-A\>|)>=<around*|{|f<rsup|-1><around*|(|A|)>\|A\<in\>\<cal-A\>|}>>
    then we have\ 

    <\enumerate>
      <item>If <math|\<cal-A\>> is a ring on <math|Y> then
      <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a ring on <math|X>

      <item>If <math|\<cal-A\>> is a algebra on <math|Y> then
      <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a algebra on <math|X>

      <item>If <math|\<cal-A\>> is a semi ring on <math|Y> then
      <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a semi ring on <math|X>

      <item>If <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|Y>
      then <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a
      <math|\<sigma\>>-algebra on <math|X>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><dueto|<math|\<cal-A\> is a >ring>

      <\enumerate>
        <item><math|\<emptyset\>=f<rsup|-1><around*|(|\<emptyset\>|)>\<in\>\<cal-f\><rsup|-1><around*|(|\<cal-A\>|)>>

        <item>If <math|A,B\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>> then there
        exists <math|A<rprime|'>,B<rprime|'>\<in\>\<cal-A\>> such that
        <math|A=f<rsup|-1><around*|(|A<rprime|'>|)>>,
        <math|B=f<rsup|-1><around*|(|B<rprime|'>|)>> then
        <math|A<big|cup>B=f<rsup|-1><around*|(|A<rprime|'>|)><big|cup>f<rsup|-1><around*|(|B<rprime|'>|)>\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>f<rsup|-1><around*|(|A<rprime|'><big|cup>B<rprime|'>|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
        as <math|A<rprime|'><big|cup>B<rprime|'>\<in\>\<cal-A\>>

        <item>If <math|A,B\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>> then there
        exists <math|A<rprime|'>,B<rprime|'>\<in\>\<cal-A\>> such that
        <math|A=f<rsup|-1><around*|(|A<rprime|'>|)>>,
        <math|B=f<rsup|-1><around*|(|B<rprime|'>|)>> then
        <math|A\\B=f<rsup|-1><around*|(|A<rprime|'>|)>\\f<rsup|-1><around*|(|B<rprime|'>|)>\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>f<rsup|-1><around*|(|A<rprime|'>\\B<rprime|'>|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
        as <math|A<rprime|'>\\B<rprime|'>\<in\>\<cal-A\>>
      </enumerate>

      <item><dueto|<math|\<cal-A\> >is a algebra>As <math|\<cal-A\>> is a
      algebra <math|\<cal-A\>> is also a ring so by (1) we have that
      <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a ring. As also
      <math|X=f<rsup|-1><around*|(|Y|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
      [as <math|Y\<in\>\<cal-A\>>] we have by definition that
      <math|f<rsup|-1><around*|(|\<cal-A\>|)>> is a algebra.

      <item><dueto|<math|\<cal-A\>> is a semi ring>

      <\enumerate>
        <item><math|\<emptyset\>=f<rsup|-1><around*|(|\<emptyset\>|)>\<in\>\<cal-f\><rsup|-1><around*|(|\<cal-A\>|)>>

        <item>If <math|A,B\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>> then there
        exists <math|A<rprime|'>,B<rprime|'>\<in\>\<cal-A\>> such that
        <math|A=f<rsup|-1><around*|(|A<rprime|'>|)>>,
        <math|B=f<rsup|-1><around*|(|B<rprime|'>|)>> then
        <math|A<big|cap>B=f<rsup|-1><around*|(|A<rprime|'>|)><big|cap>f<rsup|-1><around*|(|B<rprime|'>|)>\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>f<rsup|-1><around*|(|A<rprime|'><big|cap>B<rprime|'>|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
        as <math|A<rprime|'><big|cap>B<rprime|'>\<in\>\<cal-A\>>

        <item>Let <math|A,B\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>> then
        there exists <math|A<rprime|'>,B<rprime|'>\<in\>\<cal-A\>> such that
        <math|A=f<rsup|-1><around*|(|A<rprime|'>|)>,B=f<rsup|-1><around*|(|B<rprime|'>|)>>.
        As <math|\<cal-A\>> is a semi ring there exists a finite pairwise
        disjoint family <math|<around*|{|A<rprime|'>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        of sets in <math|\<cal-A\>> such that
        <math|A<rprime|'>\\B<rprime|'>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rprime|'><rsub|i>>.
        Take now <math|<around*|{|f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        then <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
        <math|i\<neq\>j> we have <math|f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)><big|cap>f<rsup|-1><around*|(|A<rprime|'><rsub|j>|)>\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>f<rsup|-1><around*|(|A<rprime|'><rsub|i><big|cap>A<rprime|'><rsub|j>|)>=f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>>
        so that <math|<around*|{|f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        is a finite pairwise disjoint family of sets in
        <math|f<rsup|-1><around*|(|\<cal-A\>|)>>. Finally
        <math|A\\B=f<rsup|-1><around*|(|A<rprime|'>|)>/f<rsup|-1><around*|(|B<rprime|'>|)>\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>f<rsup|-1><around*|(|A<rprime|'>\\B<rprime|'>|)>=f<rsup|-1><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rprime|'><rsub|i>|)>\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)>>
      </enumerate>

      <item><dueto|<math|\<cal-A\> <text|is a >\<sigma\>>-algebra>

      <\enumerate>
        <item><math|X=f<rsup|-1><around*|(|Y|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>

        <item>If <math|A\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>> then there
        exists a <math|A<rprime|'>\<in\>\<cal-A\>> such that
        <math|A=f<rsup|-1><around*|(|A<rprime|'>|)>> then
        <math|X\\A=X\\f<rsup|-1><around*|(|A<rprime|'>|)>\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>f<rsup|-1><around*|(|Y\\A<rprime|'>|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
        (as <math|Y\\A<rprime|'>\<in\>\<cal-A\>>)

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
        be a sequence of sets in <math|f<rsup|-1><around*|(|\<cal-A\>|)>>
        then there exists a <math|<around*|{|A<rprime|'><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
        such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|A<rsub|i>=f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)>>. So we
        have <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|A<rprime|'><rsub|i>|)>\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rprime|'><rsub|i>|)>\<in\>f<rsup|-1><around*|(|\<cal-A\>|)>>
        as <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rprime|'><rsub|i>\<in\>\<cal-A\>>
      </enumerate>
    </enumerate>
  </proof>

  Semi rings are usefull as the product of semi rings is again a semi ring
  and it is easy to construct a ring from them as is illustrated in the
  following two theorems. First we need a lemma concerning the product of two
  semi rings that we then extend to the general finite case.

  <\theorem>
    <label|product of two semi rings>Let <math|X<rsub|1>>, <math|X<rsub|2>>
    be sets <math|\<cal-S\><rsub|1>>, <math|\<cal-S\><rsub|2>> be semi rings
    on <math|X<rsub|1>>, <math|X<rsub|2>> then
    <math|\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>=<around*|{|A\<times\>B\|A\<in\>\<cal-S\><rsub|1>\<wedge\>B\<in\>\<cal-S\><rsub|2>|}>>
    is a semi ring on <math|X\<times\>Y>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<emptyset\>=\<emptyset\>\<times\>\<emptyset\>> we have
      <math|\<emptyset\>\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>

      <item>Let <math|A\<times\>B>, <math|C\<times\>D\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>
      then <math|A,C\<in\>\<cal-S\><rsub|1>> and
      <math|B,D\<in\>\<cal-S\><rsub|2>> so that
      <math|A<big|cap>C\<in\>\<cal-S\><rsub|1>> and
      <math|B<big|cap>D\<in\>\<cal-S\><rsub|2>>. So
      <math|<around*|(|A\<times\>B|)><big|cap><around*|(|C\<times\>D|)>\<equallim\><rsub|<text|<reference|product
      of sets properties>>><around*|(|A<big|cap>C|)>\<times\><around*|(|B<big|cap>D|)>\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>

      <item>Let <math|A\<times\>B>, <math|C\<times\>D\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>
      then <math|A,C\<in\>\<cal-S\><rsub|1>> and
      <math|B,D\<in\>\<cal-S\><rsub|2>> so that
      <math|A<big|cap>C\<in\>\<cal-S\><rsub|1>> and
      <math|B<big|cap>D\<in\>\<cal-S\><rsub|2>>. So we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|A\<times\>B|)>\\<around*|(|C\<times\>D|)>>|<cell|\<equallim\><rsub|<text|<reference|product
        of sets properties>>>>|<cell|<around*|(|<around*|(|A\\C|)>\<times\>B|)><big|cup><around*|(|A\<times\><around*|(|B\\D|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|<around*|(|B\\D|)><big|cup><around*|(|B<big|cap>D|)>|)>|)><big|cup><around*|(|<around*|(|<around*|(|A\\C|)><big|cup><around*|(|A<big|cap>C|)>|)>\<times\><around*|(|B\\D|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|product
        of sets properties>>>>|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|cup><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)><big|cup><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|cup><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|cup><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)><big|cup><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>>>>
      </eqnarray*>
    </enumerate>

    As we have also that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|cap><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|product
      of sets properties>>>>|<cell|<around*|(|A\\C|)>\<times\><around*|(|<around*|(|B\\D|)><big|cap><around*|(|B<big|cap>D|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|A\\C|)>\<times\>\<emptyset\>>>|<row|<cell|>|<cell|=>|<cell|\<emptyset\>>>|<row|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|cap><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|product
      of sets properties>>>>|<cell|<around*|(|<around*|(|A\\C|)><big|cap><around*|(|A<big|cap>C|)>|)>\<times\><around*|(|B\\D|)>>>|<row|<cell|>|<cell|>|<cell|\<emptyset\>>>>>
    </eqnarray*>

    If <math|<around*|(|x,y|)>\<in\><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)><big|cap><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>
    then <math|x\<in\><around*|(|A\\C|)><big|cap><around*|(|A<big|cap>C|)>=\<emptyset\>>
    a contradiction so we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)><big|cap><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>|<cell|=>|<cell|\<emptyset\>>>>>
    </eqnarray*>

    From, the above we conclude that\ 

    <\equation>
      <label|eq 15.1.416><around*|(|A\<times\>B|)>\\<around*|(|C\<times\>D|)>=<around*|(|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>|)><big|sqcup><around*|(|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>|)><big|sqcup><around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>
    </equation>

    Now as <math|\<cal-S\><rsub|1>> and <math|\<cal-S\><rsub|2>> are semi
    rings there exists pairwise disjoint sets
    <math|<around*|{|E<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    in <math|\<cal-S\><rsub|1>> and pairwise disjoint sets in
    <math|<around*|{|F<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    in <math|\<cal-S\>> such that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A\\C>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>E<rsub|i>>>>>
    </eqnarray*>

    and

    <\eqnarray*>
      <tformat|<table|<row|<cell|B\\D>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>F<rsub|i>>>>>
    </eqnarray*>

    so that (pairwise disjointness is trivially proved)

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|A\\C|)>\<times\><around*|(|B\\D|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      difference>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|E<rsub|i>\<times\><around*|(|B\\D|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      difference>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|E<rsub|i>\<times\>F<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|pairwise
      disjoint union of pairwise disjoint
      unions>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>><around*|(|E<rsub|\<sigma\><around*|(|i|)><rsub|1>>\<times\>F<rsub|\<sigma\><around*|(|j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>G<rsub|1,i>
      <text|where >G<rsub|1,i>=E<rsub|\<sigma\><around*|(|i|)><rsub|1>>\<times\>F<rsub|\<sigma\><around*|(|i|)><rsub|2>>\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>>>>
    </eqnarray*>

    where <math|\<sigma\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,m|)>|}>>
    is a bijection. Also we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|A\\C|)>\<times\><around*|(|B<big|cap>D|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
      difference>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|E<rsub|i>\<times\><around*|(|B<big|cap>D|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>G<rsub|2,i>
      where G<rsub|2,i>=E<rsub|i>\<times\><around*|(|B<big|cap>D|)>\<in\>\<cal-S\><rsub|1>\<times\>\<cal-S\><rsub|2>>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|A<big|cap>C|)>\<times\><around*|(|B\\D|)>|)>>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<around*|(|A<big|cap>C|)>\<times\>F<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>G<rsub|3,i>
      where G<rsub|3,i>=<around*|(|A<big|cap>C|)>\<times\>F<rsub|i>>>>>
    </eqnarray*>

    Using the above <reference|eq 15.1.416>and <reference|pairwise disjoint
    union of pairwise disjoint unions> gives finally\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|A\<times\>B|)>\\<around*|(|C\<times\>D|)>>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m+n\<ast\>m|}>>G<rsub|\<tau\><around*|(|i|)><rsub|1>.\<tau\><around*|(|i|)><rsub|2>>>>>>
    </eqnarray*>

    where <math|\<tau\>:<around*|{|1,\<ldots\>,n+m+n\<ast\>m|}>\<rightarrow\><around*|{|<around*|(|1,1|)>,\<ldots\>,<around*|(|1,n\<cdot\>m|)>|}><big|cup><around*|{|<around*|(|2,1|)>,\<ldots\>,<around*|(|2,n|)>|}><big|cup><around*|{|<around*|(|3,1|)>,\<ldots\>,<around*|(|3,m|)>|}>>
    is a bijection. This proves the last part of the theorem,
  </proof>

  <\theorem>
    <label|product of semi rings is a semi ring>Let
    <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>>,
    <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    finite family of sets and <math|<around*|{|\<cal-S\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<cal-A\><rsub|i>> is a semi ring on <math|X<rsub|i>> then we have\ 

    <\enumerate>
      <item><math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsup|>\<cal-S\><rsub|i>=<around*|{|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsup|>A<rsub|i>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have> A<rsub|i>\<in\>\<cal-S\><rsub|i>|}>> is a semi ring on
      <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsup|>X<rsub|i>>

      <item><math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><rsup|>\<cal-S\><rsub|i>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-A\><rsub|i>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>> is a semi ring on
      <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>\|<text|If
      ><around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a family of sets and <math|<around*|{|\<cal-S\><rsub|i>|)><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a family of semi rings on the previous family then
      ><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>>
      is a semi ring on ><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|}>>
      then we have

      <\description>
        <item*|<math|2\<in\>\<cal-S\>>>As
        <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>X<rsub|i>=X<rsub|1>\<times\>X<rsub|2>>
        and <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<cal-S\><rsub|i>=<around*|{|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>A<rsub|i>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>A<rsub|i>\<in\>\<cal-S\><rsub|i>|}>=<around*|{|A\<times\>B\|A\<in\>\<cal-S\><rsub|1>\<wedge\>B\<in\>\<cal-S\><rsub|2>|}>>
        we have by <reference|product of two semi rings> that
        <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<cal-S\><rsub|i>>
        is a semi-ring on <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>X<rsub|i>>
        proving <math|2\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<b-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
        <math|<around*|{|X<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        be a family of sets, <math|<around*|{|\<cal-S\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        a family of semi rings on the previous family then we have, as
        <math|n\<in\>\<cal-S\>>, that <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>>
        is a semi ring on <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>.
        Applying then the previous theorem (see <reference|product of two
        semi rings>) we have that

        <\equation>
          <label|eq 15.2.416><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>|)>\<times\>\<cal-S\><rsub|n+1><text|
          is a semi ring on <math|<around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>|)>\<times\>X<rsub|n+1>=<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>X<rsub|i>>>
        </equation>

        Finally

        <\eqnarray*>
          <tformat|<table|<row|<cell|A\<in\><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>|)>\<times\>\<cal-S\><rsub|n+1>>|<cell|\<Leftrightarrow\>>|<cell|A=<around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<times\>A<rsub|n+1>\<wedge\><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<in\><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>\<wedge\>A<rsub|n+1>\<in\>\<cal-S\><rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|A=<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>\<in\><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<cal-S\><rsub|i>>>>>
        </eqnarray*>

        proving using <reference|eq 15.2.416> that
        <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<cal-S\><rsub|i>>
        is a semi ring on <math|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>X<rsub|i>>
      </description>

      <item>Using <reference|finite cartesian product of sets and product of
      sets are bijective> there exists a bijection
      <math|\<sigma\>:<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      such that\ 

      <\enumerate>
        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        is such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|A<rsub|i>\<subseteq\>X<rsub|i>> then
        <math|\<sigma\><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>

        <item><math|\<forall\><around*|[|x<rsub|1>,\<ldots\>,x<rsub|n>|]>\<in\><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
        then <math|\<sigma\><around*|(|<around*|[|x<rsub|1>,\<ldots\>,x<rsub|n>|]>|)>=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>
      </enumerate>

      Take now the bijection <math|\<tau\>=\<sigma\><rsup|-1>:<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>\<rightarrow\><big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>X<rsub|i>>
      Then we have <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\>i>>|}>\<equallim\><rsub|\<sigma\>
      ia bijection><around*|{|<around*|(|\<sigma\>\<circ\>\<sigma\><rsup|-1>|)><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>=<around*|{|\<sigma\><around*|(|\<sigma\><rsup|-1><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|\<nobracket\>>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>\<equallim\><rsub|<around*|(|2|)>
      a><around*|{|\<sigma\><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>=<around*|{|<around*|(|\<tau\><rsup|-1>|)><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>\<equallim\><rsub|<text|<reference|preimage
      of a bijection>>><around*|{|\<tau\><rsup|-1><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|A<rsub|i>\<in\>\<cal-S\><rsub|i>>>|}>=\<tau\><rsup|-1><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>|)>>
      proving that\ 

      <\equation*>
        <big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>=\<tau\><rsup|-1><around*|(|<big|otimes><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>|)>
      </equation*>

      Using the above together with <reference|preimage of a ring, semi ring
      or algebra> proves that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-S\><rsub|i>>
      is a semi ring
    </enumerate>
  </proof>

  <\definition>
    <label|definition of a R[S]><index|<math|\<cal-R\><around*|[|\<cal-S\>|]>>>Let
    <math|X> be a set <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then we define <math|\<cal-R\><around*|[|\<cal-S\>|]>=<around*|{|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\|n\<in\>\<bbb-N\><rsub|0>\<wedge\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>|}>>
    (the set of finite disjoint unions of sets in <math|\<cal-A\>>).
  </definition>

  Now we show how to create a ring from a semi ring.

  \;

  <\theorem>
    <label|semi ring to ring>Let <math|X> be a set, <math|\<cal-S\>> a semi
    ring on <math|X> then \ <math|\<cal-R\><around*|[|\<cal-S\>|]>> is the
    smallest ring containing <math|\<cal-S\>>.
  </theorem>

  <\proof>
    \ First we show that <math|\<cal-R\><around*|[|\<cal-S\>|]>> is a ring

    <\enumerate>
      <item>Take <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      with <math|A<rsub|1>=\<emptyset\>> then
      <math|\<emptyset\>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>\<in\>\<cal-R\><around*|(|\<cal-S\>|)>>

      <item>If <math|A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then
      <math|A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      and <math|B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
      where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|A<rsub|i>\<in\>\<cal-S\>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>
      <math|B<rsub|i>\<in\>\<cal-S\>>. Define then
      <math|<around*|{|D<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>>
      by <math|D<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
      i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|B<rsub|i-n> if
      i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>> then
      <math|A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>D<rsub|i>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>.
      Using <reference|union as pairwise disjoint union> we have that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>D<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>
      where <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|D<rsub|1> if
      i=1>>|<row|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>D<rsub|i>\\D<rsub|j>
      if i=2>>>>>> proving that<space|1em>

      <\equation>
        <label|eq 15.3.417>A<big|cup>B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i><text|
        where >C<rsub|i>=<choice|<tformat|<table|<row|<cell|D<rsub|1> if
        i=1>>|<row|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>D<rsub|i>\\D<rsub|j>
        if i=2>>>>>
      </equation>

      Consider then the following cases for <math|i\<in\>\<bbb-N\><rsub|0>>

      <\description>
        <item*|<math|i=1>>then <math|C<rsub|i>=D<rsub|1>\<in\>\<cal-S\>> so
        if we take <math|F<rsub|1,1>=D<rsub|1>\<in\>\<cal-S\>> and
        <math|n<rsub|1>=1> we have <math|C<rsub|1>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}>>F<rsub|1,i>>
        where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n<rsub|1>|}> we
        have F<rsub|1,i>\<in\>\<cal-S\>>

        <item*|<math|1\<less\>i>>then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,i-1|}>>
        there exists a \ <math|<around*|{|E<rsup|i><rsub|j,k>|}><rsub|k\<in\><around*|{|1,\<ldots\>,m<rsup|i><rsub|j>|}>>>
        such that <math|D<rsub|i>\\D<rsub|j>=<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,m<rsup|i><rsub|j>|}>>E<rsup|i><rsub|j,k>>
        so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|C<rsub|i>>|<cell|=>|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>><around*|(|<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,m<rsup|i><rsub|j>|}>>E<rsup|i><rsub|j,k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distribute
          intersection over union>>>>|<cell|<big|sqcup><rsub|\<sigma\>\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>><around*|{|1,\<ldots\>,m<rsup|i><rsub|k>|}>><around*|(|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsup|i><rsub|k,\<sigma\><around*|(|k|)>>|)>>>>>
        </eqnarray*>

        As a semi-ring is <math|\<sigma\>>-stable we have that
        <math|<big|cap><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>A<rsup|i><rsub|k,\<sigma\><around*|(|k|)>>\<in\>\<cal-S\>>.
        Using <reference|finite product of finite or denumerable sets> there
        exists a bijection <math|\<alpha\>:<around*|{|1,\<ldots\>,<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>m<rsub|k>|}>\<rightarrow\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,i-1|}>><around*|{|1,\<ldots\>,m<rsup|i><rsub|k>|}>>,
        so if <math|F<rsub|i,k>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsup|i><rsub|j,\<alpha\><around*|(|k|)><around*|(|j|)>>\<in\>\<cal-S\>>
        and <math|n<rsub|i>=<big|sqcap><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>m<rsub|k>>
        we have that <math|C<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>F<rsub|i,k>>
        where <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>> we
        have <math|F<rsub|i,k>\<in\>\<cal-S\>>\ 
      </description>

      Using the above together with <reference|pairwise disjoint union of
      pairwise disjoint unions> and <reference|eq 15.3.417> proves that
      <math|A<big|cup>B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|j=1><rsup|n>n<rsub|j>|}>>F<rsub|\<omega\><around*|(|i|)><rsub|1>,w<around*|(|i|)><rsub|2>>>
      where <math|\<omega\>:<around*|{|1,\<ldots\>,<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,n<rsub|i>|}>|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,n<rsub|i>|)>|}>>
      is a bijection proving finally that
      <math|A<big|cup>B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>

      <item>If <math|A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then
      \ <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      and <math|B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
      where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|A<rsub|i>\<in\>\<cal-S\>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>
      <math|B<rsub|i>\<in\>\<cal-S\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\B>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>|)>>>>>
      </eqnarray*>

      Now <math|\<forall\>k,l\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|k\<neq\>l> we have <math|<around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|k>\\B<rsub|j>|)>|)><big|cap><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|l>\\B<rsub|j>|)>|)>\<subseteq\>A<rsub|k><big|cap>A<rsub|l>=\<emptyset\>>
      so we have\ 

      <\equation>
        <label|eq 15.6.418>A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>|)>
      </equation>

      Next given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> that
      <math|A<rsub|i>\\B<rsub|j>=<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsup|i><rsub|j>|}>>G<rsup|i><rsub|j,k>>
      where <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n<rsub|j>|}>> we
      have <math|G<rsup|i><rsub|j,k>\<in\>\<cal-S\>>. Then we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>>|<cell|=>|<cell|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsup|i><rsub|j>|}>>G<rsup|i><rsub|j,k>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distribute
        intersection over union>>>>|<cell|<big|sqcup><rsub|\<sigma\>\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|1,\<ldots\>,n<rsup|i><rsub|k>|}>><around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>G<rsup|i><rsub|j,\<sigma\><around*|(|j|)>>|)>>>>>
      </eqnarray*>

      Using <reference|finite product of finite or denumerable sets> there
      exists a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>n<rsup|i><rsub|j>|}>\<rightarrow\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|{|1,\<ldots\>,n<rsup|i><rsub|j>|}>>,
      so if <math|H<rsub|i,k>=<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>G<rsup|i><rsub|j,\<beta\><around*|(|k|)><around*|(|j|)>>\<in\>\<cal-S\>>
      [as <math|\<cal-S\>> is is <math|<big|cap>>-stable] and
      <math|k<rsub|i>=<big|sqcap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>n<rsup|i><rsub|j>>
      we have that <math|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i>\\B<rsub|j>|)>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>>H<rsub|i,j>>
      where <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,k<rsub|i>|}>> we
      have <math|H<rsub|i,k>\<in\>\<cal-S\>> proving\ 

      <\equation>
        <label|eq 15.7.418>A<rsub|>\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|sqcup><rsub|j\<in\><around*|{|,\<ldots\>,k<rsub|i>|}>>H<rsub|i,j>|)>
      </equation>

      Using this together with <reference|pairwise disjoint union of pairwise
      disjoint unions> we have that there exists a bijection
      <math|\<gamma\>:<around*|{|1,\<ldots\>,<big|sum><rsub|i=1><rsup|n>k<rsub|i>|}>\<rightarrow\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|<around*|(|i,1|)>,\<ldots\>,<around*|(|i,k<rsub|i>|)>|}>>
      such that

      <\equation*>
        A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,<big|sum><rsub|j=1><rsup|n>k<rsub|j>|}>>H<rsub|\<gamma\><around*|(|i|)><rsub|1>,\<gamma\><around*|(|i|)><rsub|2>>
      </equation*>

      proving that <math|A\\B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    </enumerate>

    To prove that <math|\<cal-R\><around*|[|\<cal-S\>|]>> is the smallest
    ring containing <math|\<cal-S\>> assume that <math|\<cal-R\><rprime|'>>
    is a ring containing <math|\<cal-R\>> then if
    <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then
    <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    where <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|A<rsub|i>\<in\>\<cal-S\>> so as <math|\<cal-R\><rprime|'>> is
    <math|<big|cup>>-stable we have that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-R\><rprime|'>>
    and thus that <math|A\<in\>\<cal-R\><rprime|'>> proving that
    <math|\<cal-R\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-R\><rprime|'>>
  </proof>

  As the name suggest every <math|\<sigma\>>-algebra is also a algebra.

  <\theorem>
    <label|sigma algebra is a algebra and a ring>Let <math|X> be a set,
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> then
    <math|\<cal-A\>> is a algebra and thus also a ring
  </theorem>

  <\proof>
    As <math|X> is a algebra we have by the definiton that
    <math|X\<in\>\<cal-A\>> and <math|\<emptyset\>=X\\X\<in\>\<cal-A\>>. By
    definition we have also that <math|\<forall\>A\<in\>\<cal-A\>> that
    <math|X\\A\<in\>\<cal-A\>>. Finally if <math|A,B\<in\>\<cal-A\>> then by
    definition <math|X\\A,X\\B\<in\>\<cal-A\>>, define then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|X\\A if
    i=1>>|<row|<cell|Y\\B if i=2>>|<row|<cell|\<emptyset\> if i\<gtr\>2>>>>>>
    then <math|<around*|(|X\\A|)><big|cup><around*|(|X\\B|)>\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
    So <math|A<big|cap>B=<around*|(|X\\<around*|(|X\\A|)>|)><big|cap><around*|(|X\\<around*|(|X\\B|)>|)>=X\\<around*|(|<around*|(|X\\A|)><big|cup><around*|(|X\\B|)>|)>\<in\>\<cal-A\>>
  </proof>

  As a application of this theorem we prove that the <math|\<sigma\>>-algebra
  generated by a semi ring is the same as the <math|\<sigma\>>-algebra
  generated by the ring that is generated by the semi ring.

  <\theorem>
    <label|sigma algebra of ring of a semi ring>Let <math|X> be a set and
    <math|\<cal-S\>> a semi ring then <math|\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-S\>|]>|]>=\<sigma\><around*|[|\<cal-S\>|]>>
  </theorem>

  <\proof>
    First as <math|\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-S\>|]>|]>>
    a <math|\<sigma\>>-algebra we must have
    <math|\<sigma\><around*|[|\<cal-S\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-S\>|]>|]>>.
    As also <math|\<sigma\><around*|[|\<cal-S\>|]>> is as a
    <math|\<sigma\>>-algebra is a ring (see previous theorem) we have as
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> is the samellest ring covering
    <math|\<cal-S\>> [see <reference|semi ring to ring>] so that
    <math|\<cal-R\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-S\>> and hence
    <math|\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-S\>|]>|]>\<subseteq\>\<sigma\><around*|[|\<cal-S\>|]>>.
  </proof>

  It is not always simple to check if a set of sets is a
  <math|\<sigma\>>-algebra, the concept of Dynkin systems can be used in
  proofs.

  <\definition>
    <label|Dynkin><index|Dynkin system><dueto|Dynkin system>Let <math|X> be a
    set then <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> is called a
    <with|font-series|bold|Dynkin> system on <math|X> if\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-D\>>

      <item><math|\<forall\>A\<in\>\<cal-D\>> we have
      <math|X\\A\<in\>\<cal-D\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>>
      is a sequence of pairwise disjoint sets in <math|\<cal-D\>> then
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
      (this implies that if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is a sequence of pairwise disjoint sets in <math|\<cal-D\>> then
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<cal-A\><rsub|i>\<in\>\<cal-D\>>)
    </enumerate>
  </definition>

  <\note>
    <label|every sigma algebra is a Dynkin system>Note the only difference
    with the definition of a <math|\<sigma\>>-algebra is that in (3) the
    family is pairwise disjoint. So every <math|\<sigma\>>-algebra is a
    <math|Dynkin> system.
  </note>

  <\example>
    <label|P(X) is a Dynkin system on X>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a Dynkin system
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|X\<subseteq\>X> we have
      <math|X\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|A\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>A\<subseteq\>X\<Rightarrow\>X\\A\<subseteq\>X>
      proving that <math|X\\A\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a pairwise disjoin sequence of sets in
      <math|\<cal-P\><around*|(|X|)>> then
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>\<Rightarrow\>A<rsub|i>\<subseteq\>X\<Rightarrow\><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>X\<Rightarrow\><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  The following gives a equivalent definition of a Dynkin system

  <\theorem>
    <label|alternative definition of a Dynkin system>Let <math|X> be a set
    then <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <math|Dynkin> system on <math|X> if and only the following is satisfied\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-D\>>

      <item><math|\<forall\>A,B\<in\>\<cal-D\>> with <math|A\<subseteq\>B> we
      have <math|B\\A\<in\>\<cal-D\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>>
      is a sequence of pairwise disjoint sets in <math|\<cal-D\>> \ then
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
    </enumerate>
  </theorem>

  <\proof>
    \ As <math|<around*|(|1|)>> and (3) in the theorem is the same as
    <math|<around*|(|1|)>> and (3) in the definition of a Dynkin system we
    have only to prove that (2) in the theorem is equivalent with (2) in the
    definition.

    <\description>
      <item*|<math|\<Rightarrow\>>> Let <math|A,B\<in\>\<cal-D\>> with
      <math|A\<subseteq\>B> then we have by definition (2) that
      <math|X\\B\<in\>\<cal-D\>> a<math|>s
      <math|<around*|(|X\\B|)><big|cap>A\<subseteq\><around*|(|X\\B|)><big|cap>B=\<emptyset\>>
      we have by definition (3) that <math|<around*|(|X\\B|)><big|cup>A\<in\>\<cal-D\>>
      so that by definition we have <math|\<cal-A\>\<ni\>X\\<around*|(|<around*|(|X\\B|)><big|cup>A|)>=<around*|(|X\\<around*|(|X\\B|)>|)><big|cap><around*|(|X\\A|)>=B<big|cap><around*|(|X\\A|)>=B<big|cap>X<big|cap>A<rsup|c>=B<big|cap>X<rsup|c>=B\\A>

      <item*|<math|\<Leftarrow\>>>Let <math|A\<in\>\<cal-D\>> then as
      <math|X\<in\>\<cal-D\>> and <math|A\<subseteq\>X> we have by hypothese
      (2) that <math|X\\A\<in\>\<cal-D\>>
    </description>
  </proof>

  The following shows the minimum requirement for a Dynkin system to be a
  <math|\<sigma\>>-algebra

  <\theorem>
    <label|a Dynkin system closed under intersection is a sigma-algebra>Let
    <math|X> be a set then a Dynkin system <math|\<cal-D\>> is a
    <math|\<sigma\>>-algebra if and only if
    <math|\<forall\>A,B\<in\>\<cal-D\>> we have
    <math|A<big|cap>B\<in\>\<cal-D\>> (or <math|\<cal-D\>> is
    <math|\<cap\>>-stable)
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>(1) and (2) of the defition of a
      <math|\<sigma\>>-algebra is satisfied by the definition of a Dynkin
      system. Let <math|A,B\<in\>\<cal-D\>> then as
      <math|A<big|cap>B\<in\>\<cal-D\>> and <math|A<big|cap>B\<subseteq\>A>
      we have by <reference|alternative definition of a Dynkin system> (2)
      that <math|A\\B=A\\<around*|(|A<big|cap>B|)>\<in\>\<cal-D\>> and as
      <math|<around*|(|A\\B|)><big|cap>B=\<emptyset\>> we must have
      <math|A<big|cup>B=<around*|(|A\\B|)><big|cup>B\<in\>\<cal-A\>>, using
      then <reference|closure of union or intersection> proves that\ 

      <\equation>
        <label|eq 15.1.402>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vdash\>A<rsub|i>\<in\>\<cal-D\><text|
        we have ><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-D\>
      </equation>

      Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<vdash\>B<rsub|i>\<in\>\<cal-D\>>
      be a sequence of sets in <math|\<cal-D\>> then using <reference|union
      as pairwise disjoint union> we have that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rprime|'><rsub|i>>
      where <math|B<rprime|'><rsub|i>=<choice|<tformat|<table|<row|<cell|B<rsub|1>
      if i=1>>|<row|<cell|B<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,-1|}>>B<rsub|j>|)>>>>>>>
      then we have using <reference|alternative definition of a Dynkin
      system> (2) and <reference|eq 15.1.402> that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> that
      <math|B<rprime|'><rsub|i>\<in\>\<cal-D\>>. By definition of a Dynkin
      system we have then that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rprime|'><rsub|i>\<in\>\<cal-D\>>
      proving finally that <math|\<cal-D\>> is a <math|\<sigma\>>-algebra.

      <item*|<math|\<Leftarrow\>>>If <math|\<cal-D\>> is a
      <math|\<sigma\>>-algebra then if is clearly a Dynkin system because
      clearly (1), (2) and (3) in the definition of a Dynkin system are
      satisifed.\ 
    </description>
  </proof>

  Just as we can, given a set of sets <math|\<cal-A\>>, construct the
  smallest <math|\<sigma\>>-algebra <math|\<sigma\><around*|[|\<cal-A\>|]>>
  containing <math|\<cal-A\>> we will be able to find the smallest Dynkin
  system covering <math|\<cal-A\>>. To prove this we need the following lemma
  (similar to <reference|insersection of a family of sigma algebras is a
  sigma algebra>)

  <\lemma>
    <label|intersection of a family of Dynkin systems is a Dynkin system>Let
    <math|X> be a set and <math|<around*|{|\<cal-D\><rsub|i>|}><rsub|i\<in\>I>>
    a non empty family of Dynkin systems on <math|X> then
    <math|<big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>> is a Dynkin system.
  </lemma>

  <\proof>
    First <math|\<forall\>i\<in\>I> we have
    <math|X\<in\>\<cal-D\><rsub|i>\<Rightarrow\>X\<in\><big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>>,
    second if <math|A\<in\><big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>\<Rightarrow\>\<forall\>i\<in\>I\<vDash\>A\<in\>\<cal-D\><rsub|i>\<Rightarrow\>X\\A\<in\>\<cal-D\><rsub|i>>
    proving that <math|X\\A\<in\><big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>>.
    Finally if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>>
    is a sequence of pairwise disjoint sets then
    <math|\<forall\>i\<in\>\<bbb-N\>> we have that
    <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>\<vDash\>A<rsub|j>\<in\>\<cal-D\><rsub|i>\<Rightarrow\><big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|j>\<in\>\<cal-D\><rsub|i>>
    proving that <math|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|j>\<in\><big|cap><rsub|i\<in\>I>\<cal-D\><rsub|i>>
  </proof>

  <\definition>
    <index|<math|\<cal-D\><around*|[|\<cal-A\>|]>>>Let <math|X> be a set
    <math|\<cal-A\>\<in\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-D\><around*|[|\<cal-A\>|]>=<big|cap><rsub|\<cal-D\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\><text|
    and >\<cal-B\> <text| is a Dynkin system>|}>>>
  </definition>

  <\theorem>
    <label|Dynkin system generator>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then\ 

    <\enumerate>
      <item><math|\<cal-D\><around*|[|\<cal-A\>|]>> is a Dynkin system

      <item><math|\<cal-A\>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>>

      <item>For every Dynkin system <math|\<cal-D\>> on <math|X> with
      <math|\<cal-A\>\<subseteq\>\<cal-D\>> we have
      <math|\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\>>\ 
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<cal-P\><around*|(|X|)>> is a Dynkin System (see
      <reference|P(X) is a Dynkin system on X>) containing <math|\<cal-A\>>
      so that <math|<around*|{|\<cal-D\>|}><rsub|\<cal-D\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\><text|
      and >\<cal-B\> <text| is a Dynkin system>|}>>> is a non empty sequence
      proving by the previous lemma (see <reference|intersection of a family
      of Dynkin systems is a Dynkin system>) that
      <math|\<cal-D\><around*|[|\<cal-A\>|]>> is a Dynkin system.

      <item>As <math|\<forall\>\<cal-B\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\><text|
      and >\<cal-B\> <text| is a Dynkin system>|}>> we have by construction
      that <math|\<cal-A\>\<subseteq\>\<cal-B\>> we have that
      <math|\<cal-A\>\<subseteq\><big|cap><rsub|\<cal-D\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\><text|
      and >\<cal-B\> <text| is a Dynkin system>|}>>=\<cal-D\><around*|[|\<cal-A\>|]>>

      <item>If now <math|\<cal-B\>> is a Dynkin system on <math|X> containing
      <math|\<cal-A\>> then <math|\<cal-B\>\<in\><around*|{|\<cal-B\>\|\<cal-A\>\<subseteq\>\<cal-B\>\<wedge\>\<cal-B\>
      <text|is a Dynkin system on> X|}>> and thus
      <math|\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-B\>>
    </enumerate>
  </proof>

  The next theorem will be critical in our use of a Dynkin systems\ 

  <\theorem>
    <label|if A is closed under intersection then S(A)=D(A)>Let <math|X> be a
    set, <math|\<cal-A\>\<subseteq\><around*|(|X|)>> such that
    <math|\<cal-A\>> is <math|\<cap\>>-stable then
    <math|\<sigma\><around*|[|\<cal-A\>|]>=\<cal-D\><around*|[|\<cal-A\>|]>>
  </theorem>

  <\proof>
    First as every <math|\<sigma\>>-algebra is Dynkin system we have that
    <math|\<sigma\><around*|[|\<cal-A\>|]>> is a Dynkin system containing
    <math|\<cal-A\>> we have by the previous theorem that\ 

    <\equation>
      <label|eq 15.4.403>\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>
    </equation>

    To prove the opposite inclusion, we prove that
    <math|\<cal-D\><around*|[|\<cal-A\>|]>> is <math|\<cap\>>-stable and thus
    by <reference|a Dynkin system closed under intersection is a
    sigma-algebra> a <math|\<mu\>>-algebra, from which it follows that
    <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>>
    and thus that\ 

    <\equation*>
      \<cal-D\><around*|[|\<cal-A\>|]>=\<sigma\><around*|[|\<cal-A\>|]>
    </equation*>

    To prove that <math|\<cal-D\><around*|[|\<cal-A\>|]>> is closed under
    intersection we define

    <\equation>
      <label|eq 15.5.403>\<forall\>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]><text|
      we define >\<cal-D\><rsub|A>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|B<big|cap>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]>|}>
    </equation>

    then we have given <math|A\<in\>\<cal-A\>> that

    <\enumerate>
      <item>As <math|X\<in\>\<cal-P\><around*|(|X|)>> and
      <math|X<big|cap>A=A\<in\>\<cal-A\>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>>
      proving that <math|X\<in\>\<cal-D\><rsub|A>>

      <item>If <math|B\<in\>\<cal-D\><rsub|A>> then
      <math|B<big|cap>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]>> as
      <math|B<big|cap>A\<subseteq\>A> and
      <math|A\<in\>\<cal-A\>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>> and
      <math|\<cal-D\><around*|[|\<cal-A\>|]>> is a Dynkin system we have by
      <reference|alternative definition of a Dynkin system> that
      <math|\<cal-D\><around*|[|\<cal-A\>|]>\<ni\>A\\<around*|(|B<big|cap>A|)>=<around*|(|A\\B|)><big|cup><around*|(|A\\A|)>=A\\B=A<big|cap>B<rsup|c>=A<big|cap>X<big|cap>B<rsup|c>=A<big|cap><around*|(|X\\B|)>>
      proving that <math|<around*|(|X\\B|)><big|cap>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]>>
      and thus that <math|X\\A\<in\>\<cal-D\><rsub|A>>

      <item>If <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<vdash\>D<rsub|i>\<in\>\<cal-D\><rsub|A>>
      then we have <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> that
      <math|D<rsub|i><big|cap>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]>> and as
      <math|\<forall\>i,j\<vDash\>i\<neq\>j> we have
      <math|<around*|(|D<rsub|i><big|cap>A|)><big|cap><around*|(|D<rsub|j><big|cap>A|)>=A<big|cap><around*|(|D<rsub|i><big|cap>D<rsub|j>|)>=\<emptyset\>>
      and <math|\<cal-D\><around*|[|\<cal-A\>|]>> is a Dynkin system we have
      <math|\<cal-D\><around*|[|\<cal-A\>|]>\<ni\><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|D<rsub|i><big|cap>A|)>=<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>|)><big|cap>A>
      proving that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>\<in\>\<cal-D\><rsub|A>>
    </enumerate>

    proving that\ 

    <\equation>
      <label|eq 15.6.403>\<forall\>A\<in\>\<cal-A\><text| we have that
      >\<cal-D\><rsub|A><text| is a Dynkin system>
    </equation>

    Given <math|A\<in\>\<cal-A\>> we have <math|\<forall\>B\<in\>\<cal-A\>>
    that <math|A<big|cap>B\<in\>\<cal-A\>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>>
    so that <math|B\<in\>\<cal-D\><rsub|A>> which proves that\ 

    <\equation>
      <label|eq 15.7.403>\<forall\>A\<in\>\<cal-A\> <text|we have
      >\<cal-A\>\<subseteq\>\<cal-D\><rsub|A> <text| giving
      >\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|A>
    </equation>

    So <math|\<forall\>D\<in\>\<cal-D\><around*|[|\<cal-A\>|]>> we have
    <math|\<forall\>A\<in\>\<cal-A\>\<subseteq\>\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|A>>
    proving that <math|D<big|cap>A\<in\>\<cal-D\><around*|[|\<cal-A\>|]>>
    proving that <math|A\<in\>\<cal-D\><rsub|D>> and thus that
    <math|\<cal-A\>\<subseteq\>\<cal-D\><rsub|D>> so as
    <math|\<cal-D\><rsub|D>> is a Dynkin system we have
    <math|\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|D>>
    proving that\ 

    <\equation>
      <label|eq 51.8.403>\<forall\>D\<in\>\<cal-D\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|D>
    </equation>

    So if <math|A,B\<in\>\<cal-D\><around*|[|\<cal-A\>|]>> we have
    <math|A\<in\>\<cal-D\><rsub|B>> proving that
    <math|A<big|cap>B\<in\>\<cal-D\><around*|[|\<cal-A\>|]>> and thus that
    <math|\<cal-D\><around*|[|\<cal-A\>|]>> is <math|\<cap\>>-stable.
  </proof>

  <subsection|Ring on <math|\<bbb-R\>>>

  To construct a semi ring we consider the concept of right half open
  intervals

  <\definition>
    <label|right half open interval><index|right half open interval>Given
    <math|a,b\<in\>\<bbb-R\>>with <math|a\<leqslant\>b> then
    <math|<around*|[|a,b|[>=<around*|{|x\<in\>\<bbb-R\>\|a\<leqslant\>x\<less\>b|}>>
    is called a <with|font-series|bold|right half open interval>. Note that
    <math|\<forall\>a\<in\>\<bbb-R\>> we have
    <math|<around*|[|a,a|[>=\<emptyset\>>
  </definition>

  <\definition>
    <label|semi ring of intervals><index|<math|\<cal-I\>>>The set of all
    right half open intervals is noted as <math|\<cal-I\>> so
    <math|\<cal-I\>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
  </definition>

  We have the following theorem about half open intervals

  <\theorem>
    <label|sub interval>If <math|<around*|[|a,b|[>,<around*|[|a,b<rprime|'>|[>\<in\>\<cal-I\>>
    with <math|\<emptyset\>\<neq\><around*|[|a<rprime|'>,b<rprime|'>|[>\<subseteq\><around*|[|a,b|[>>
    then <math|a\<leqslant\>a<rprime|'>> then
    <math|a\<leqslant\>a<rprime|'>\<less\>b<rprime|'>\<leqslant\>b>
  </theorem>

  <\proof>
    As <math|\<emptyset\>\<neq\><around*|[|a<rprime|'>,b<rprime|'>|[>\<subseteq\><around*|[|a,b|[>>
    we have <math|a<rprime|'>\<less\>b<rprime|'>\<Rightarrow\>a<rprime|'>\<leqslant\>a<rprime|'>\<less\>b\<Rightarrow\>a<rprime|'>\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>\<subseteq\><around*|[|a,b|[>\<Rightarrow\>a\<leqslant\>a<rprime|'>\<less\>b>
    sp we have <math|a\<leqslant\>a<rprime|'>\<less\>b<rprime|'>>. Assume now
    that <math|b\<less\>b<rprime|'>> then
    <math|max<around*|(|a<rprime|'>,b|)>\<less\>b<rprime|'>> and by the
    density of the reals (see <reference|density theorem for the reals>)
    there exists a <math|t\<in\>\<bbb-R\>> such that
    <math|max<around*|(|a<rprime|'>,b|)>\<less\>t\<less\>b<rprime|'>> so that
    <math|t\<nin\><around*|[|a,b|[>\<wedge\>t\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>\<subseteq\><around*|[|a,b|[>>
    a contradiction, so we must have <math|b<rprime|'>\<leqslant\>b>.\ 
  </proof>

  <\remark>
    <label|R can be written as a countable union of halfopen intervals>The
    set of the real numbers is a countable union of right half open
    intervals, more specifically <math|\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
  </remark>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<around*|[|-i,i|[>\<subseteq\>\<bbb-R\>> if follows that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>\<subseteq\>\<bbb-R\>>.
    If now <math|x\<in\>\<bbb-R\>> then by a consequence of the Archimedean
    property (see <reference|consequence of the archimedean property for the
    reals>) there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|<around*|\||x|\|>\<less\>n\<Rightarrow\>-x\<less\>n\<wedge\>x\<less\>n\<Rightarrow\>-n\<less\>x\<wedge\>x\<less\>n\<Rightarrow\>x\<in\><around*|[|-n,n|[>>
    proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>.
  </proof>

  The set of all the half open intervals on <math|\<bbb-R\>> forms a semi
  ring on <math|\<bbb-R\>>

  <\theorem>
    <label|set of right half open intervals is a semi-ring><math|\<cal-I\>>
    is a semi ring on <math|\<bbb-R\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<emptyset\>=<around*|[|0,0|[>\<in\>\<cal-I\>>

      <item>If <math|A,B\<in\>\<cal-I\>> then there exists
      <math|a,b,a<rprime|'>,b<rprime|'>> such that
      <math|a\<leqslant\>b\<wedge\>a<rprime|'>\<leqslant\>b<rprime|'>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>A<big|cap>B>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>a<rprime|'>\<leqslant\>x\<wedge\>x\<less\>b\<wedge\>x\<less\>b<rprime|'>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|a,a<rprime|'>|)>\<leqslant\>x\<wedge\>x\<less\>min<around*|(|b,b<rprime|'>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|max<around*|(|a,a<rprime|'>|)>,min<around*|(|b,b<rprime|'>|)>|[>>>>>
      </eqnarray*>

      proving that <math|A<big|cap>B\<in\>\<cal-I\>>

      <item>Let <math|A,B\<in\>\<cal-I\>> then using <reference|set
      relations> we have

      <\equation>
        <label|eq 15.14.420>A\\B=A\\B<rprime|'> <text|where
        >B<rprime|'>=A<big|cap>B\<subseteq\>A
      </equation>

      As <math|A\<in\>\<cal-I\>> there exists a <math|a,b\<in\>\<bbb-R\>>with
      <math|a\<leqslant\>b> such that <math|A=<around*|[|a,b|[>>, from (2) we
      have also that <math|B<rprime|'>\<in\>\<cal-I\>> and thus there exists
      a <math|c,d\<in\>\<bbb-R\>> with <math|c\<leqslant\>d> such that
      <math|B<rprime|'>=<around*|[|c,d|[>>. We have for <math|c,d> the
      following possibilities to consider\ 

      <\description>
        <item*|<math|c=d>>then <math|A\\B<rprime|'>=A\<in\>\<cal-I\>> proving
        <math|A\\B<rprime|'>\<in\>\<cal-I\>> so if
        <math|C<rsub|1>=B<rprime|'>\<in\>\<cal-I\>> and
        <math|C<rsub|2>=\<emptyset\>\<in\>\<cal-A\>> thne
        <math|A\\B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>C<rsub|i>>

        <item*|<math|c\<less\>d>>assume <math|c\<less\>a> then
        <math|c\<less\>min<around*|(|a,d|)>> and using the density of the
        reals (see <reference|density theorem for the reals>) there exists a
        <math|x> with <math|c\<less\>x\<less\>min<around*|(|a,d|)>> so that
        <math|x\<in\>B<rprime|'>\<wedge\>x\<nin\>A> contradicting
        <math|B<rprime|'>\<subseteq\>A> so we must have
        <math|a\<leqslant\>c>. Likewise if <math|b\<less\>d> then
        <math|max<around*|(|c,b|)>\<less\>d> and we find again a
        <math|x\<in\>\<bbb-R\>> such that
        <math|max<around*|(|c,b|)>\<less\>x\<less\>d> so that
        <math|x\<in\>B<rprime|'>\<wedge\>x\<nin\>A> contradicting
        <math|B<rprime|'>\<subseteq\>A>, proving that <math|d\<leqslant\>b>.
        To summarize we have\ 

        <\equation>
          <label|eq 15.15.420>a\<leqslant\>c\<leqslant\>d\<leqslant\>b
        </equation>

        So we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>A\\B<rprime|'>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,b|[>\<wedge\>x\<in\><around*|[|c,d|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>x\<less\>b\<wedge\>\<neg\><around*|(|c\<leqslant\>x\<wedge\>x\<less\>d|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>x\<less\>b\<wedge\><around*|(|x\<less\>c\<vee\>d\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a\<leqslant\>x\<wedge\>x\<less\>b\<wedge\>x\<less\>c|)>\<vee\><around*|(|a\<leqslant\>x\<wedge\>x\<less\>b\<wedge\>d\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\>>|<cell|<around*|(|a\<leqslant\>x\<wedge\>x\<less\>min<around*|(|b,c|)>|)>\<vee\><around*|(|max<around*|(|a,d|)>\<leqslant\>x\<less\>b|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|eq
          15.15.420>>>>|<cell|<around*|(|a\<leqslant\>x\<less\>c|)>\<vee\><around*|(|d\<leqslant\>x\<less\>b|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a,c|[><big|cup><around*|[|d,b|[>>>>>
        </eqnarray*>

        If <math|x\<in\><around*|[|a,c|[><big|cap><around*|[|d,b|[> > then
        using <reference|eq 15.15.420> <math|a\<leqslant\>x\<less\>c\<leqslant\>d\<leqslant\>x\<less\>b>
        giving <math|x\<less\>x> a contradiction, so we
        have<math|<around*|[|a,c|[><big|cap><around*|[|d,b|[>=\<emptyset\>>
        proving that <math|A\\B<rprime|'>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>C<rsub|i>>
        where <math|C<rsub|1>=<around*|[|a,c|[>\<in\>\<cal-I\>> and
        <math|C<rsub|2>=<around*|[|d,b|[>\<in\>\<cal-I\>>
      </description>

      In all cases we have thus that <math|A\\B\<equallim\><rsub|<text|<reference|eq
      15.14.420>>>A\\B<rprime|'>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>C<rsub|i>>
      where <math|C<rsub|1>,C<rsub|2>\<in\>\<cal-I\>>
    </enumerate>
  </proof>

  Now we can use the fact that a semi ring can be extended to a ring (see
  <reference|semi ring to ring>).

  <\theorem>
    <label|ring on the set of reals><index|<math|\<cal-R\><around*|[|\<cal-I\>|]>>>The
    set <math|\<cal-R\><around*|[|\<cal-I\>|]>=<around*|{|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\|n\<in\>\<bbb-N\><rsub|0>\<wedge\><around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>|}>>
    (the set of finite pairwise disjoint union of half open intervals) is a
    ring (the smallest ring containing <math|\<cal-I\>>).
  </theorem>

  We extend now the concept of a right half open interval to a
  <math|n>-dimensional space.

  <\definition>
    <index|right half open intervals><index|<math|\<cal-I\><rsup|n>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, given a family
    <math|<around*|{|\<cal-I\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> of
    right half open intervals then <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
    [then as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|I<rsub|i>\<subseteq\>\<bbb-R\>> we have by <reference|general
    product of sets and subsets> that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<subseteq\>\<bbb-R\><rsup|n>>]
    is a <with|font-series|bold|right half open rectangle>. The set of right
    half open rectangles is noted as <math|\<cal-R\><rsup|n>> so
    <math|\<cal-R\><rsup|n>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\|n\<in\>\<bbb-N\><rsub|0>
    <text|and >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
    >I<rsub|i>\<in\>\<cal-I\>|}>>. If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|R<rsub|i>=R> then <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>R<rsub|i>>
    is noted as <math|R<rsup|n>>.
  </definition>

  <\remark>
    <label|R^n can be written as a countable union of half open
    rectangles>Given <math|n\<in\>\<bbb-N\><rsub|0>> we have that
    <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>>
  </remark>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<around*|[|-i,i|[>\<subseteq\>\<bbb-R\>> that
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>\<subseteq\>\<bbb-R\><rsup|n>>.
    If now <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
    then as <math|\<bbb-R\>\<equallim\><rsub|<text|<reference|R can be
    written as a countable union of halfopen
    intervals>>><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|[|-j,j|[>>
    we have <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> a <math|k<rsub|i>> such
    that <math|x<rsub|i>\<in\><around*|[|-k<rsub|i>,k<rsub|i>|[>\<subseteq\><around*|[|-m,m|[>>
    where <math|m=max<around*|(|<around*|{|k<rsub|1>,\<ldots\>,k<rsub|n>|}>|)>>,
    hence <math|x\<in\><around*|[|-m,m|[><rsup|n>\<subseteq\><big|cup><rsub|l\<in\>\<bbb-N\><rsub|0>><around*|[|-l,l|[>>
    proving that <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>>.
  </proof>

  As a the finite product of a semi ring is also a semi ring (see
  <reference|product of semi rings is a semi ring>) we have using
  <reference|set of right half open intervals is a semi-ring> the following
  theorem.

  <\theorem>
    <label|the set of products of right half open rectangles is a ring>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<cal-R\><rsup|n>> is a semi
    ring on <math|\<bbb-R\><rsup|n>>
  </theorem>

  Using <reference|semi ring to ring> we can extend <math|\<cal-R\><rsup|n>>
  to a ring.

  <\theorem>
    <label|ring on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>> then the \ set
    <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>=<around*|{|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>R<rsub|i>\|n\<in\>\<bbb-N\><rsub|0>\<wedge\><around*|{|R<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\><rsup|n>|}>>
    (the set of finite disjoint unions of half open rectangles) is a ring on
    <math|\<bbb-R\><rsup|n>>
  </theorem>

  <section|Borel algebras>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space then <math|\<sigma\><around*|[|\<cal-T\>|]>> is called the Borel
    algebra on <math|X> and is noted as <math|\<cal-B\><around*|[|X,\<cal-T\>|]>>
    or <math|\<cal-B\><around*|[|X|]>> if the topology is clear from the
    context.
  </definition>

  As a topology can be specified also by its closed sets so it seems logical
  that the Borel algebra on <math|X> can be generated by the set of closed
  sets in <math|\<cal-T\>>

  <\theorem>
    <label|Borel algebras and closed sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    then <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-C\>|]>>
    where <math|\<cal-C\>=<around*|{|C\<in\>\<cal-P\><around*|(|X|)>\|C<text|
    is closed in >\<cal-T\>|}><text|>>
  </theorem>

  <\proof>
    Take <math|C\<in\>\<cal-C\>> then <math|U=X\\C\<in\>\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>>
    and thus as <math|\<sigma\><around*|[|\<cal-T\>|]>> is a
    <math|\<sigma\>>-algebra we have that
    <math|X\\U\<in\>\<sigma\><around*|[|\<cal-T\>|]>>. Now
    <math|X\\U=X\\<around*|(|X\\C|)>=X<big|cap><around*|(|X<big|cap>C<rsup|c>|)><rsup|c>=X<big|cap><around*|(|X<rsup|c><big|cup>C|)>\<equallim\><rsub|C\<subseteq\>X>C>
    which proves that <math|\<cal-C\>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>>.
    As <math|\<sigma\><around*|[|\<cal-T\>|]>> is a <math|\<sigma\>>-algebra
    containing <math|\<cal-C\>> we have\ 

    <\equation>
      <label|eq 15.16.447>\<sigma\><around*|[|\<cal-C\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>
    </equation>

    For the opposite inclusion, take <math|U\<in\>\<cal-T\>> then
    <math|C=X\\U\<in\>\<cal-C\>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>>
    and thus as <math|\<sigma\><around*|[|\<cal-C\>|]>> is a
    <math|\<sigma\>>-algebra we have that
    <math|X\\C\<in\>\<sigma\><around*|[|\<cal-C\>|]>>. Now
    <math|X\\C=X\\<around*|(|X\\U|)>=U> which proves that
    <math|\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>>. As
    <math|\<sigma\><around*|[|\<cal-C\>|]>> is a <math|\<sigma\>>-algebra
    containing <math|\<cal-T\>> we have\ 

    <\equation>
      \<sigma\><around*|[|\<cal-T\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>
    </equation>
  </proof>

  The following lemmas will be usefull to prove theorems about Borel algebras
  on <math|\<bbb-R\>> and <math|\<bbb-R\><rsup|n>>.

  <\lemma>
    <label|union and sigma algebras>Let <math|X> be a set and
    <math|\<cal-A\>,\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that
    <math|\<forall\>A\<in\>\<cal-A\>> there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>>
    such that <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>> then
    <math|\<sigma\><around*|[|A|]>\<subseteq\>\<sigma\><around*|[|B|]>>
  </lemma>

  <\proof>
    If <math|A\<in\>\<cal-A\>> then there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>>
    such that <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<sigma\><around*|[|\<cal-B\>|]>>
    [as <math|\<sigma\><around*|[|\<cal-B\>|]>> is a
    <math|\<sigma\>>-algebra], which proves that
    <math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>> and thus
    that <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
  </proof>

  <\lemma>
    <label|intersection and sigma algebras>Let <math|X> be a set and
    <math|\<cal-A\>,\<cal-B\>\<subseteq\>\<cal-P\><around*|(|X|)>> such that
    <math|\<forall\>A\<in\>\<cal-A\>> there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>>
    with <math|A=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>> then
    <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
  </lemma>

  <\proof>
    If <math|A\<in\>\<cal-A\>> then there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>>
    such that <math|A=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<sigma\><around*|[|\<cal-B\>|]>>
    [using <reference|alternative definition for a sigma algebra>], which
    proves that <math|\<cal-A\>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
    and thus that <math|\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
  </proof>

  <\corollary>
    <label|Borel basis>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>
    be a topological space and <math|\<cal-B\>\<subseteq\>\<cal-T\>> such
    that <math|\<forall\>U\<in\>\<cal-T\>> there exists a
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> such that
    <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>> then
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-B\>|]>>
  </corollary>

  <\proof>
    Using the above theorem (see <reference|union and sigma algebras>) we
    have that <math|\<sigma\><around*|[|\<cal-T\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>,
    as <math|\<cal-B\>\<subseteq\>\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>>
    a <math|\<sigma\>>-algebra we have <math|\<sigma\><around*|[|\<cal-B\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>>
    proving that <math|\<sigma\><around*|[|\<cal-B\>|]>=\<sigma\><around*|[|\<cal-T\>|]>>.
  </proof>

  The following theorem shows a relation between Borel algebras and
  continuous functions

  <\theorem>
    <label|preimage of continuous function of a Borel set is a Borel set>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-S\>|\<rangle\>>> be toplogical spaces,
    <math|f:X\<rightarrow\>Y> a continuous function then
    <math|\<forall\>B\<in\>\<cal-B\><around*|[|Y,\<cal-S\>|]>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
  </theorem>

  <\proof>
    Define <verbatim|><math|\<cal-A\>=<around*|{|B\<in\>\<cal-P\><around*|(|Y|)>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>|}>>
    then we have\ 

    <\enumerate>
      <item><math|f<rsup|-1><around*|(|Y|)>=X\<Rightarrow\>Y\<in\>\<cal-A\>>

      <item>If <math|A\<in\>\<cal-A\>> then
      <math|f<rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
      and <math|f<rsup|-1><around*|(|Y\\A|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>X\\f<rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
      proving that <math|Y\\A\<in\>\<cal-A\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|f<rsup|-1><around*|(|A<rsub|i>|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
      and thus <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|A<rsub|i>|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
      so <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|A<rsub|i>|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>

    proving that\ 

    <\equation>
      <label|eq 15.18.469>\<cal-A\><text| is a >\<sigma\><text|-algebra>
    </equation>

    Next if <math|U\<in\>\<b-S\>> then <math|f<rsup|-1><around*|(|U|)>\<in\>\<cal-T\>>
    proving that <math|\<cal-S\>\<subseteq\>\<cal-A\>> from which it follows
    that <math|\<cal-B\><around*|[|Y,\<cal-S\>|]>=\<sigma\><around*|[|\<cal-S\>|]>\<subseteq\>\<cal-A\>>
    so that <math|\<forall\>B\<in\>\<cal-B\><around*|[|Y,\<cal-S\>|]>> we
    have <math|f<rsup|-1><around*|(|B|)>>
  </proof>

  A application of the above theorem is the following corollary.

  <\corollary>
    <label|Borel set+x>Let <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>>
    be a normed space with the norm topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> then we have

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> and
      <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      we have that <math|A+x\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      where <math|A+x=<around*|{|a+x\|a\<in\>A|}>=x+A>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>>
      and <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>> we have
      that <math|\<alpha\>\<cdot\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      where <math|\<alpha\>\<cdot\>A=<around*|{|\<alpha\>\<cdot\>a\|a\<in\>A|}>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>Take <math|x\<in\>X> then <math|\<tau\><rsub|x>:X\<rightarrow\>X>
      defined by <math|\<tau\><rsub|x><around*|(|y|)>=y-x> is continuous (see
      <reference|partial sum and product is continuous>). Let
      <math|A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      then <math|>by the previous theorem (see <reference|preimage of
      continuous function of a Borel set is a Borel set>) we have that
      <math|\<lambda\><rsub|x><rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>.
      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\>\<lambda\><rsub|x><rsup|-1><around*|(|A|)>>|<cell|\<Leftrightarrow\>>|<cell|\<lambda\><rsub|x><around*|(|y|)>\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x+y\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>A+x>>>>
      </eqnarray*>

      proving that <math|A+x=\<lambda\><rsub|x><rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>

      <item>Take <math|\<alpha\>\<in\>\<bbb-R\><around*|(|\<bbb-C\>|)>> and
      <math|A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      then we have two cases for <math|\<alpha\>> to consider

      <\description>
        <item*|<math|\<alpha\>=0>>In this case
        <math|\<alpha\>\<cdot\>A=0\<cdot\>A=<around*|{|0|}>> which a closed
        set (see <reference|metric spaces are Hausdorff> in combination with
        <reference|every finite subset of a Hausdorff is closed>) hence
        <math|<around*|{|0|}>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
        (see <reference|Borel algebras and closed sets>)

        <item*|<math|\<alpha\>\<neq\>0>>Take then
        <math|\<mu\><rsub|<frac|1|\<alpha\>>>:X\<rightarrow\>X> defined by
        <math|\<mu\><rsub|<frac|1|\<alpha\>>><around*|(|x|)>=<frac|1|\<alpha\>>\<cdot\>x>
        which is continuous (see <reference|partial sum and product is
        continuous>) so that by the previous theorem (see <reference|preimage
        of continuous function of a Borel set is a Borel set>)
        <math|\<mu\><rsub|<frac|1|\<alpha\>>><rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>.
        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>\<mu\><rsub|<frac|1|\<alpha\>>><rsup|-1><around*|(|A|)>>|<cell|\<Leftrightarrow\>>|<cell|\<mu\><rsub|<frac|1|\<alpha\>>><around*|(|x|)>\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<frac|1|\<alpha\>>\<cdot\>x\<in\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<alpha\>\<cdot\>A>>>>
        </eqnarray*>

        proving that <math|\<alpha\>\<cdot\>A=\<mu\><rsub|<frac|1|\<alpha\>>><rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      </description>
    </enumerate>
  </proof>

  \ <math|><subsection|Borel algebra on <math|\<bbb-R\>>>

  We have already establised that <math|\<cal-I\>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
  is a semi ring on <math|\<bbb-R\>> from which we constructed the ring
  <math|\<cal-R\><around*|[|\<cal-I\>|]>>. Using <reference|sigma algebra of
  ring of a semi ring> we have also that <math|\<sigma\><around*|[|\<cal-I\>|]>=\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-I\>|]>|]>>.
  We used right half open intervals because it is then simple to prove that
  <math|\<cal-I\>> is a semi ring (as the intersection of right half open
  intervals is again a right half open interval) and as we later will see it
  is easy to create a content on the semi-ring <math|\<cal-I\>> and extend it
  to a measure on <math|\<sigma\><around*|[|\<cal-I\>|]>>. We will now give
  alternative ways to define <math|\<sigma\><around*|[|\<cal-I\>|]>> and
  prove also that <math|\<sigma\><around*|[|\<cal-I\>|]>> is equal to
  <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
  where <math|\<cal-T\><rsub|<around*|\|||\|>>> is topology on
  <math|\<bbb-R\>> generated by the norm <math|<around*|\|||\|>>.

  <\theorem>
    <label|sigma algebra [a,b[-\<gtr\>]a,b[><math|\<sigma\><around*|[|\<cal-I\>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
  </theorem>

  <\proof>
    \ Take <math|I\<in\><around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
    then <math|I=<around*|]|a,b|[>>. We prove now that
    <math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>.
    First if <math|x\<in\><around*|[|a,b|[>\<Rightarrow\>a\<leqslant\>x\<less\>b\<Rightarrow\>a-<frac|1|n>\<less\>a\<leqslant\>x\<less\>b\<Rightarrow\>x\<in\><around*|]|a-<frac|1|n>,b|[>>
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> which proves that\ 

    <\equation>
      <label|eq 15.18.448><around*|[|a,b|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>
    </equation>

    For the opposite inclusion take <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>
    then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|x\<in\><around*|]|a-<frac|1|n>,b|[>\<Rightarrow\>a-<frac|1|n>\<less\>x\<less\>b>.
    Assume now that <math|x\<less\>a> then <math|a-x\<gtr\>0> and using
    <reference|consequence of the archimedean property for the reals> there
    exists a <math|n<rsub|0>\<in\>\<bbb-N\><rsub|0>> such that
    <math|a-x\<gtr\><frac|1|n>\<Rightarrow\>a-<frac|1|n>\<gtr\>x\<Rightarrow\>x\<nin\><around*|]|a-<frac|1|n<rsub|0>>,b|[>>
    a contradiction. So we must have that
    <math|a\<leqslant\>x\<less\>b\<Rightarrow\>x\<in\><around*|[|a,b|[>>
    which proves that <math|><math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>\<subseteq\><around*|[|a,b|[>>.
    This together with <reference|eq 15.18.448> gives\ 

    <\equation>
      <label|eq 15.19.448>\<forall\><around*|[|a,b|[>\<in\>\<cal-I\><text| we
      have ><around*|[|a,b|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>
    </equation>

    From the above, the fact that <math|<around*|{|<around*|]|a-<frac|1|n>,b|[>|}>\<subseteq\><around*|{|<around*|]|c,d|[>\|c,d\<in\>\<bbb-R\>\<wedge\>c\<leqslant\>d|}>>
    it follows using <reference|intersection and sigma algebras> that\ 

    <\equation>
      <label|eq 15.20.448>\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation>

    Next given <math|<around*|]|a,b|[>\<in\><around*|{|<around*|]|c,d|[>\|c,d\<in\>\<bbb-R\>\<wedge\>c\<leqslant\>d|}>>
    we prove that <math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>>.
    First <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|x\<in\><around*|[|a+<frac|1|n>,b|[>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x\<less\>b\<Rightarrow\>a\<less\>x\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>
    proving that

    <\equation>
      <label|eq 15.21.448><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>\<subseteq\><around*|]|a,b|[>
    </equation>

    If <math|x\<in\><around*|]|a,b|[>\<Rightarrow\>a\<less\>x\<less\>b> so
    <math|x-a\<gtr\>0> and <math|x\<less\>b>, using the Archimedean property
    of the reals (see <reference|consequence of the archimedean property for
    the reals>) there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x-a\<gtr\><frac|1|n>\<Rightarrow\>x\<gtr\>a+<frac|1|n>> proving
    that <math|x\<in\><around*|[|a+<frac|1|n>,b|[>>. So
    <math|<around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>>.
    Using this together with <reference|eq 15.21.448> gives\ 

    <\equation>
      <label|eq 15.22.448>\<forall\><around*|]|a,b|[>\<in\><around*|{|<around*|]|c,d|[>\|c,d\<in\>\<bbb-R\>\<wedge\>c\<leqslant\>d|}><text|
      we have ><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>=<around*|]|a,b|[>
    </equation>

    Using <reference|union and sigma algebras> we have that
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<leqslant\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\>|]>>
    and using <reference|eq 15.20.448> we have finally\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-I\>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|sigma algebra [a,b[-\<gtr\>[a,b]><math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|\<cal-I\>|]>>
  </theorem>

  <\proof>
    Let <math|<around*|[|a,b|[>\<in\>\<cal-I\>> then we prove that
    <math|<around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>>.
    If <math|x\<in\><around*|[|a,b|[>\<Rightarrow\>a\<leqslant\>x\<less\>b\<Rightarrow\>b-x\<gtr\>0\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>b-x\<gtr\><frac|1|n<rsub|0>>\<gtr\>0\<Rightarrow\>a\<less\>x\<less\>b-<frac|1|n<rsub|0>>\<Rightarrow\>x\<in\><around*|[|a,b-<frac|1|n<rsub|0>>|]>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>>
    proving that\ 

    <\equation>
      <label|eq 15.23.448><around*|[|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>
    </equation>

    If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>>
    then <math|\<exists\>n<rsub|0>\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\><around*|[|a,b-<frac|1|n<rsub|0>>|]>\<Rightarrow\>a\<leqslant\>x\<leqslant\>b-<frac|1|n<rsub|0>>\<less\>b\<Rightarrow\>x\<in\><around*|[|a,b|[>>,
    so <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>\<subseteq\><around*|[|a,b|[>>.
    This together with <reference|eq 15.23.448> proves that\ 

    <\equation>
      \<forall\><around*|[|a,b|[>\<in\>\<cal-I\><text| we have ><label|eq
      15.24.448><around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>
    </equation>

    From the above, the fact that <math|<around*|{|<around*|[|a,b-<frac|1|n>|]>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
    and <reference|union and sigma algebras> it follows that\ 

    <\equation>
      <label|eq 15.25.448>\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation>

    Let <math|<around*|[|a,b|]>\<in\><around*|{|<around*|[|c,d|]>\|c,d\<in\>\<bbb-R\>\<wedge\>x\<leqslant\>d|}>>
    then we prove that <math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>>.
    If <math|x\<in\><around*|[|a,b|]>\<Rightarrow\>a\<leqslant\>x\<leqslant\>b\<less\>b+<frac|1|n>>
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>. So we have\ 

    <\equation>
      <label|eq 15.26.448><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>
    </equation>

    If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|]>>
    then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|a\<leqslant\>x\<less\>b+<frac|1|n>>. Assume now that
    <math|b\<less\>x> then <math|x-b\<gtr\>0\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>\<exists\>n<rsub|0>\<in\>\<bbb-N\><rsub|0>>
    such that <math|x-b\<gtr\><frac|1|n<rsub|0>>\<Rightarrow\>x\<gtr\>b+<frac|1|n<rsub|0>>>
    a contradiction, so we must have <math|a\<leqslant\>x\<leqslant\>b>.
    Hence we have <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>\<subseteq\><around*|[|a,b|]>>
    which together with <reference|eq 15.26.448> gives\ 

    <\equation>
      <label|eq 15.27.448>\<forall\><around*|[|a,b|]>\<in\><around*|{|<around*|[|x,d|]>\|c,d\<in\>\<bbb-R\>\<wedge\>c\<leqslant\>d|}><text|
      we have ><around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>
    </equation>

    From the above, the fact that <math|<around*|{|<around*|[|a,b+<frac|1|n>|[>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\>>
    and <reference|intersection and sigma algebras> it follows that
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\>|]>>
    which together with <reference|eq 15.25.448> proves that\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-I\>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|sigma algebra ]a,b]-\<gtr\>]a,b[><math|\<sigma\><around*|[|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|]>=\<sigma\><around*|[|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|]>>
  </theorem>

  <\proof>
    Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and let
    <math|x\<in\><around*|]|a,b|[>\<Rightarrow\>a\<less\>x\<less\>b\<Rightarrow\>a\<less\>x\<wedge\>0\<less\>b-x\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>\<exists\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>a\<less\>x\<wedge\>0\<less\><frac|1|n>\<less\>b-x\<Rightarrow\>x\<in\><around*|]|a,b-<frac|1|n>|[>\<subseteq\><around*|]|a,b-<frac|1|n>|]>>
    proving that\ 

    <\equation>
      <label|eq 16.29.487><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>
    </equation>

    For the opposite inclusion let <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>>
    then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\><around*|]|a,b-<frac|1|n>|]>\<Rightarrow\>a\<less\>x\<leqslant\>b-<frac|1|n>\<Rightarrow\>a\<less\>x\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>,
    this together with <reference|eq 16.29.487> proves that <math|>

    <\equation>
      <label|eq 16.30.487><around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>
    </equation>

    As <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]><around*|\|||\|>a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    we have proved that <math|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    giving\ 

    <\equation>
      <label|eq 16.31.487>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation>

    Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and let
    <math|x\<in\><around*|]|a,b|]>\<Rightarrow\>a\<less\>x\<leqslant\>b\<Rightarrow\>\<forall\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>a\<less\>x\<less\>b+<frac|1|n>>
    proving that

    <\equation>
      <label|eq 16.32.487><around*|]|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>
    </equation>

    For the opposite inclusion, let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>>
    and assume that <math|x\<nin\><around*|]|a,b|]>> then
    <math|\<neg\><around*|(|a\<less\>x\<wedge\>x\<leqslant\>b|)>\<Rightarrow\>x\<leqslant\>a\<vee\>b\<less\>x\<Rightarrowlim\>a\<leqslant\>a\<vee\>x-b\<gtr\>0\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>\<exists\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>x\<leqslant\>a\<vee\>x-b\<gtr\><frac|1|n>\<gtr\>0\<Rightarrow\>\<exists\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>x\<leqslant\>a\<vee\>b+<frac|1|n>\<less\>x\<Rightarrow\>\<exists\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>x\<nin\><around*|]|a,b+<frac|1|n>|]>>
    contradicting <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>>,
    \ hence <math|x\<in\><around*|]|a,b|]>>. So we have proved that
    <math|<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>\<subseteq\><around*|]|a,b|]>>
    which using <reference|eq 16.32.487> gives\ 

    <\equation>
      <label|eq 16.33.487><around*|]|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>
    </equation>

    As <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    we have proved that <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    and thus that <math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    which together with <reference|eq 16.31.487> gives\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation*>

    which is what we set out to prove.
  </proof>

  <\theorem>
    <label|[a,b[=\<gtr\>[a,@@[><math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
  </theorem>

  <\proof>
    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then
    <math|<around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    and thus\ 

    <\equation>
      <label|eq 16.34.487>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|a\<in\>\<bbb-R\>> then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|[|a,a+n|[>\<subseteq\><around*|[|a,\<infty\>|[>>,
    giving <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,a+n|[>\<subseteq\><around*|[|a,\<infty\>|[>>.
    If <math|x\<in\><around*|[|a,\<infty\>|[>> then <math|a\<leqslant\>x> and
    using the Archimedean property (see <reference|consequence of the
    archimedean property for the reals>) there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x-a\<less\>n\<Rightarrow\>x\<less\>a+n\<Rightarrow\>x\<in\><around*|[|a,a+n|[>>.
    So we have <math|<around*|[|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,a+n|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>,
    hence <math|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<Rightarrow\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    proving using <reference|eq 16.34.487> that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|]a,b]=\<gtr\>]a,@@[><math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
  </theorem>

  <\proof>
    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then
    <math|<around*|]|a,b|]>=<around*|]|a,\<infty\>|[>\\<around*|]|b,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    and thus\ 

    <\equation>
      <label|eq 16.35.487>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|a\<in\>\<bbb-R\>> then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|]|a,a+n|]>\<subseteq\><around*|]|a,\<infty\>|[>>
    giving <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,a+n|[>\<subseteq\><around*|]|a,\<infty\>|[>>.
    If <math|x\<in\><around*|]|a,\<infty\>|[>> then <math|a\<less\>x> and
    using the Archimedean property (see <reference|consequence of the
    archimedean property for the reals>) there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x-a\<less\>n\<Rightarrow\>x\<less\>a+n\<Rightarrow\>x\<in\><around*|]|a,a+n|]>>.
    So we have <math|<around*|]|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,a+n|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>,
    hence <math|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<Rightarrow\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    proving using <reference|eq 16.35.487> that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|]a,b]=]-@@,b]><math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
  </theorem>

  <\proof>
    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then
    <math|<around*|]|a,b|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
    and thus\ 

    <\equation>
      <label|eq 16.36.487>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|a\<in\>\<bbb-R\>> then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|]|a-n,a|]>\<subseteq\><around*|]|-\<infty\>,a|]>>
    giving <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-n,a|]>\<subseteq\><around*|]|-\<infty\>,a|]>>.
    If <math|x\<in\><around*|]|-\<infty\>,a|]>> then <math|x\<leqslant\>a>
    and using the Archimedean property (see <reference|consequence of the
    archimedean property for the reals>) there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|a-x\<less\>n\<Rightarrow\>a-n\<less\>x\<Rightarrow\>x\<in\><around*|]|a-n,a|]>>.
    So we have <math|<around*|]|-\<infty\>,a|]>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-n,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>,
    hence <math|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<Rightarrow\>\<sigma\><around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    proving using <reference|eq 16.36.487> that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  <\theorem>
    <label|[a,b[=]-@@,a[><math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
  </theorem>

  <\proof>
    If <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then
    <math|<around*|[|a,b|[>=<around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    and thus\ 

    <\equation>
      <label|eq 16.37.487>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Let <math|a\<in\>\<bbb-R\>> then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|[|a-n,a|[>\<subseteq\><around*|]|-\<infty\>,a|[>>
    giving <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a-n,a|[>\<subseteq\><around*|]|-\<infty\>,a|[>>.
    If <math|x\<in\><around*|]|-\<infty\>,a|[>> then <math|x\<less\>a> and
    using the Archimedean property (see <reference|consequence of the
    archimedean property for the reals>) there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|a-x\<less\>n\<Rightarrow\>a-n\<less\>x\<Rightarrow\>x\<in\><around*|[|a-n,a|[>>.
    So we have <math|<around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a-n,a|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>,
    hence <math|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<Rightarrow\>\<sigma\><around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    proving using <reference|eq 16.37.487> that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  \;

  Next we introduce te concept of Dyadic intervals that help us to prove that
  <math|\<sigma\><around*|(|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|)>=\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.

  <\definition>
    <label|Dyadic interval><index|Dyadic interval>Let
    <math|n\<in\>\<bbb-N\>,z\<in\>\<bbb-Z\>> t<math|hen the half open
    interval <around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>> is called
    a Dyadic interval of order <math|n>. The set of all Dyadic intervals of
    order n is noted by <math|\<bbb-D\><rsub|n>> so
    <math|\<bbb-D\><rsub|n>=<around*|{|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>\|z\<in\>\<bbb-Z\>|}>>.
    The set of all the Dyadic intervals is noted by <math|\<bbb-D\>> so
    <math|\<bbb-D\>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<bbb-D\><rsub|n>>. Note
    that by definition we have <math|\<bbb-D\>\<subseteq\>\<cal-I\>>
  </definition>

  <\theorem>
    <label|Dyadic intervals is denumerable><math|\<forall\>n\<in\>\<bbb-N\>>
    we have that <math|\<bbb-D\><rsub|n>> is a denumerable set hence
    <math|\<bbb-D\>> is also a denumerable set.
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> define then
    <math|\<beta\>:\<bbb-Z\>\<rightarrow\>\<bbb-D\><rsub|n>> by
    <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>>
    then <math|\<beta\>> is a bijection:

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|x|)>=\<beta\><around*|(|y|)>>
      then <math|<around*|[|<frac|x|2<rsup|n>>,<frac|x+1|2<rsup|n>>|[>=<around*|[|<frac|y|2<rsup|n>>,<frac|y+1|2<rsup|n>>|[>\<Rightarrowlim\><rsub|<text|<reference|sub
      interval>>><frac|x|2<rsup|n>>=<frac|y|2<rsup|n>>\<Rightarrow\>x=y>

      <item*|surjectivity>If <math|I\<in\>\<bbb-D\><rsub|n>> then
      <math|\<exists\>z\<in\>\<bbb-Z\>> so that
      <math|I=<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>=\<beta\><around*|(|z|)>>
    </description>

    As <math|\<bbb-Z\>> is denumerable (see <reference|the integer numbers in
    the reals are denumerable>) we have thus that <math|\<bbb-D\><rsub|n>> is
    denumerable. Using <reference|denumerable union of denumerable sets is
    denumerable> we have then that <math|\<bbb-D\>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<bbb-D\><rsub|i>>.
  </proof>

  We have the following important lemma about Dyadic intervals

  <\lemma>
    <label|property of Dyadic interval of order n>Let
    <math|n,k\<in\>\<bbb-N\><rsub|>>with <math|k\<less\>n> and
    <math|v,z\<in\>\<bbb-Z\>> then we have either
    <math|<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[><big|cap><around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>=\<emptyset\>>
    or <math|<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[>\<subseteq\><around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>
  </lemma>

  <\proof>
    Take <math|I=<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[>>and
    <math|J=<around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>. As
    <math|k\<less\>n> we have <math|0\<less\>l=n-k> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|[|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z|2<rsup|k>>\<cdot\><frac|2<rsup|n-k>|2<rsup|n-k>>,<frac|z\<cdot\>2<rsup|n-k*>+2<rsup|n-k>|2<rsup|k>\<cdot\>2<rsup|n-k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z\<cdot\>2<rsup|n-k>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|n-k**>+2<rsup|n-k>|2<rsup|n>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|[>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 15.36.451>J=<around*|[|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|[>
    </equation>

    If now <math|I<big|cap>J\<neq\>0> then if
    <math|<frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>>
    we have that <math|I<big|cap>J=0> and if
    <math|<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>>
    we have also <math|I<big|cap>J=\<emptyset\>> so we must have
    <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>>
    and <math|<frac|v|2<rsup|n>>\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
    which after muliplication with <math|2<rsup|n>>

    <\equation>
      <label|eq 15.37.451>z\<cdot\>2<rsup|l>\<less\>v+1\<wedge\>v\<less\>z\<cdot\>2<rsup|l>+2<rsup|l>
    </equation>

    Assume now that <math|<frac|v|2<rsup|n>>\<less\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<Rightarrow\>v\<less\>z\<cdot\>2<rsup|l>\<Rightarrowlim\><rsub|l\<gtr\>0\<Rightarrow\>b\<cdot\>2<rsup|l>\<in\>\<bbb-Z\>>v+1\<leqslant\>z\<cdot\>2<rsup|l>\<less\><rsub|<text|<reference|eq
    15.37.451>>>v+1> giving the contradiction <math|v+1\<less\>v+1>, so we
    must have that\ 

    <\equation>
      <label|eq 15.38.451><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>
    </equation>

    Assume that <math|<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>\<Rightarrow\>z\<cdot\>2<rsup|l>+2<rsup|l>\<less\>v+1\<Rightarrowlim\><rsub|l\<gtr\>0\<Rightarrow\>z\<cdot\>2<rsup|l>+2<rsup|l>\<in\>\<bbb-Z\>>z\<cdot\>2<rsup|l>+2<rsup|l>\<leqslant\>v\<Rightarrowlim\><rsub|<text|<reference|eq
    15.37.451>>>v\<less\>v> a contradiction so we must have\ 

    <\equation>
      <label|eq 15.39.451><frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>
    </equation>

    We have then using <reference|eq 15.38.427> and <reference|eq 15.39.451>
    that <math|I=<around*|[|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|[>\<subseteq\><around*|[|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|[>\<equallim\><rsub|<text|<reference|eq
    15.36.451>>>J>. So we have proved that if <math|I<big|cap>J=\<emptyset\>>
    then we must have <math|I\<subseteq\>J> which proves the lemma.
  </proof>

  Dyadic intervals have the following properties

  <\lemma>
    <label|properties of Dyadic intervals>Dyadic intervals have the following
    properties\ 

    <\enumerate>
      <item>If <math|n,k\<in\>\<bbb-N\>> with <math|k\<leqslant\>n> we have
      \ <math|\<forall\>I\<in\>\<bbb-D\><rsub|n>,\<forall\>J\<in\>\<bbb-D\><rsub|k>>
      that either \ <math|I\<subseteq\>J> or <math|I<big|cap>J=\<emptyset\>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><text| and
      >\<forall\>I,J\<in\>\<bbb-D\><rsub|n>> with <math|I\<neq\>J> we have
      <math|I<big|cap>J=\<emptyset\>>

      <item><math|\<bbb-R\>=<big|sqcup><rsub|I\<in\>\<bbb-D\><rsub|n>>I>
      <math|\<forall\>n\<in\>\<bbb-N\>> (a pairwise disjoint union)

      <item><math|\<forall\>n\<in\>\<bbb-N\>> and
      <math|\<forall\>I\<in\>\<bbb-D\><rsub|n>> we have
      <math|l<around*|(|I|)>=2<rsup|-n>>
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

      <item>Let <math|n\<in\>\<bbb-N\>> then trivially
      <math|<big|cup><rsub|I\<in\>\<bbb-D\><rsub|n>>I\<subseteq\>\<bbb-R\>>,
      for the opposite inclusion let <math|x\<in\>\<bbb-R\>> then for
      <math|x\<cdot\>2<rsup|n>> we have by the Archimedean property of the
      reals (see <reference|consequence of the archimedean property for the
      reals>) that there exists a <math|z\<in\>\<bbb-Z\>> such tht
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

  As a example of Dyadic intervals we prove that every open interval in
  <math|\<bbb-R\>> can be written by as a pairwise disjoint denumerable union
  of Dyadic intervals.

  \;

  <\theorem>
    <label|open set as a union of Dyadic intervals>Let
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|\<rangle\>>>
    be the topological space based on the canonical norm
    <math|<around*|\|||\|>> on <math|\<bbb-R\>> there if
    <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> we have
    that <math|\<exists\><around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-D\>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>>
  </theorem>

  <\proof>
    Let <math|U> be a non empty open set in <math|\<bbb-R\>>. Define then\ 

    <\equation>
      <label|eq 15.40.452>\<forall\>n\<in\>\<bbb-N\><text| define
      >\<cal-S\><rsub|n>=<around*|{|I\<in\>\<bbb-D\><rsub|n>\|I\<subseteq\>U|}>\<subseteq\>\<bbb-D\><rsub|n>
    </equation>

    Next we define\ 

    <\equation>
      <label|eq 15.41.452>\<forall\>n\<in\>\<bbb-N\><text| define
      >\<cal-I\><rsub|n>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|0>
      if n=0>>|<row|<cell|<around*|{|I\<in\>\<cal-S\><rsub|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>
      we have \<forall\>J\<in\>\<cal-I\><rsub|i>\<vDash\>I\<nsubseteq\>J|}>\<subseteq\>\<b-S\><rsub|n>\<subseteq\>\<bbb-D\><rsub|n>>>>>>
    </equation>

    Take now\ 

    <\equation>
      <label|eq 15.42.452>\<cal-I\>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<cal-I\><rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>\<bbb-D\><rsub|n>=\<bbb-D\>
    </equation>

    and prove that <math|<big|cup><rsub|I\<in\>\<cal-I\>>I=U>. So let
    <math|x\<in\>U> then as <math|U> is open there exists a
    <math|\<varepsilon\><rsub|x>\<gtr\>0> such that
    <math|x\<in\><around*|]|x-\<varepsilon\><rsub|x>,x+\<varepsilon\><rsub|x>|[>\<subseteq\>U>.
    Find using the Archimedean property of the reals (see
    <reference|consequence of the archimedean property for the reals>) a
    <math|n<rsub|x>\<in\>\<bbb-N\><rsub|o>> such that
    <math|<frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\>> then using
    <reference|properties of Dyadic intervals> (3) there exists a
    <math|I<rsub|x>\<in\>\<bbb-D\><rsub|n<rsub|x>>> so that
    <math|x\<in\>I<rsub|x>>, hence there exists a <math|z\<in\>\<bbb-Z\>>
    such that <math|x\<in\><around*|[|<frac|z|2<rsup|n<rsub|x>>>,<frac|z+1|2<rsup|n<rsub|x>>>|[>\<Rightarrow\><frac|z|2<rsup|n<rsub|x>>>\<leqslant\>x\<less\><frac|z+1|2<rsup|n<rsub|x>>>>.
    If <math|t\<in\><around*|[|<frac|z|2<rsup|n<rsub|x>>>,<frac|z+1|2<rsup|n<rsub|x>>>|[>\<Rightarrow\><frac|z|2<rsup|n<rsub|x>>>\<leqslant\>t\<less\><frac|z+1|2<rsup|n<rsub|x>>>>
    and thus <math|x-t\<less\><frac|z+1|2<rsup|n<rsub|x>>>-<frac|z|2<rsup|n<rsub|x>>>=<frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\><rsub|x>\<Rightarrow\>x-t\<less\>\<varepsilon\><rsub|x>\<Rightarrow\>x-\<varepsilon\><rsub|x>\<less\>t>,
    also <math|t-x\<less\><frac|z+1|2<rsup|n<rsub|x>>>-<frac|z|2<rsup|n<rsub|x>>>=<frac|z|2<rsup|n<rsub|\<varepsilon\>x>>>\<less\>\<varepsilon\><rsub|x>\<Rightarrow\>t-x\<less\>\<varepsilon\><rsub|x>\<Rightarrow\>t\<less\>x+\<varepsilon\><rsub|x>>.
    This proves that <math|x\<in\>I<rsub|x>\<subseteq\><around*|]|x-\<varepsilon\><rsub|x>,x+\<varepsilon\><rsub|x>|[>\<subseteq\>U\<Rightarrow\>I<rsub|x>\<in\>\<cal-S\><rsub|n<rsub|x>>>
    and thus that <math|n<rsub|x>\<in\><around*|{|i\<in\><around*|{|0,\<ldots\>,n<rsub|x>\|\<exists\>I\<in\>\<cal-S\><rsub|i>\|x\<in\>I\<subseteq\>U|}>|}>=\<cal-K\><rsub|x>>
    hence <math|\<cal-K\><rsub|x>\<neq\>\<emptyset\>>. So
    <math|m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)>> exists, then we have
    either\ 

    <\description>
      <item*|<math|m<rsub|x>=0>>then <math|\<exists\>I\<in\>\<cal-S\><rsub|0>=\<cal-I\><rsub|0>\<subseteq\>\<cal-I\>>
      such that <math|x\<in\>I\<subseteq\>U> hence
      <math|x\<in\><big|cup><rsub|I\<in\>\<cal-I\>>I>

      <item*|<math|m<rsub|x>\<gtr\>0>>then
      <math|\<exists\>I\<in\>\<cal-S\><rsub|n>> such that
      <math|x\<in\>I\<subseteq\>U> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>>
      we have <math|\<forall\>J\<in\>\<cal-I\><rsub|i>\<subseteq\>\<cal-S\><rsub|i>>
      that <math|\<neg\><around*|(|x\<in\>J\<subseteq\>U|)>\<Rightarrow\>x\<nin\>J\<vee\>J\<nsubseteq\>U\<Rightarrowlim\><rsub|J\<in\>\<cal-S\><rsub|i>\<Rightarrow\>J\<subseteq\>U>x\<nin\>J\<Rightarrowlim\><rsub|x\<in\>I>I\<subseteq\>J>.
      Hence by the definition <reference|eq 15.41.452> we have that
      <math|I\<in\>\<cal-I\><rsub|m<rsub|x>>\<subseteq\>\<cal-I\>> hence
      <math|x\<in\><big|cup><rsub|I\<in\>\<cal-I\>>I>.
    </description>

    This proves that\ 

    <\equation>
      <label|eq 15.43.455>\<forall\>x\<in\>U there exists a
      I\<in\>\<cal-I\><text| so that >x\<in\>I\<subseteq\>U
    </equation>

    From the above it follows that <math|U\<subseteq\><big|cup><rsub|I\<in\>\<cal-I\>>I>.
    Now <math|\<forall\>I\<in\>\<cal-I\>\<Rightarrow\>\<exists\>n\<in\>\<bbb-N\>>
    such that <math|I\<in\>\<cal-I\><rsub|n>\<subseteq\>\<cal-S\><rsub|n>\<Rightarrow\>I\<subseteq\>U>
    proving that <math|<big|cup><rsub|I\<in\>\<cal-I\>>I\<subseteq\>U>. Hence
    we conclude that\ 

    <\equation>
      <label|eq 15.43.452>U=<big|cup><rsub|I\<in\>\<cal-I\>>I
    </equation>

    Next if <math|I,J\<in\>\<cal-I\>> with <math|I\<neq\>J> then
    <math|\<exists\>n,m\<in\>\<bbb-N\>> such that
    <math|I\<in\>\<cal-I\><rsub|n>> and <math|J\<in\>\<cal-I\><rsub|m>> we
    have then either

    <\description>
      <item*|<math|n=m>>then <math|I,J\<in\>\<cal-I\><rsub|n>\<subseteq\>\<cal-S\><rsub|n>\<subseteq\>\<cal-D\><rsub|n>>
      hence by <reference|properties of Dyadic intervals> (2) we have that
      <math|I<big|cap>J=\<emptyset\>>

      <item*|<math|n\<less\>m>>then <math|n\<in\><around*|{|0,\<ldots\>,m-1|}>>
      and by definition (see <reference|eq 15.41.452>) of
      <math|\<cal-I\><rsub|m>> we have that <math|I\<nsubseteq\>J> hence as
      <math|I\<in\>\<cal-I\><rsub|n>\<subseteq\>\<bbb-D\><rsub|n>>,
      <math|J\<in\>\<cal-I\><rsub|m>\<subseteq\>\<bbb-D\><rsub|m>> and
      <math|n\<less\>m> we have by <reference|properties of Dyadic intervals>
      (1) that <math|I<big|cap>J=\<emptyset\>>

      <item*|<math|m\<less\>n>>then <math|m\<in\><around*|{|0,\<ldots\>,n-1|}>>
      and by definition (see <reference|eq 15.41.452>) of
      <math|\<cal-I\><rsub|n>> we have that <math|J\<nsubseteq\>I> hence as
      <math|I\<in\>\<cal-I\><rsub|n>\<subseteq\>\<bbb-D\><rsub|n>>,
      <math|J\<in\>\<cal-I\><rsub|m>\<subseteq\>\<bbb-D\><rsub|m>> and
      <math|m\<less\>n> we have by <reference|properties of Dyadic intervals>
      (1) that <math|I<big|cap>J=\<emptyset\>>
    </description>

    So <math|\<forall\>I,J\<in\>\<cal-I\>> with <math|I\<neq\>J> we have
    <math|I<big|cap>J=\<emptyset\>> hence\ 

    <\equation>
      <label|eq 15.44.452>U=<big|sqcup><rsub|I\<in\>\<cal-I\>>I
    </equation>

    Finally as by <reference|Dyadic intervals is denumerable> we have that
    <math|\<bbb-D\>> is denumerable we have as
    <math|\<cal-I\>\<subseteq\>\<bbb-D\>> that <math|\<cal-I\>> is either
    finite or denumerable (see <reference|subsets of denumerable sets are
    finite or denumerable>). We prove now by contradiction that
    <math|\<cal-I\>> is not finite and hence must be denumerable. So let
    assume that <math|\<cal-I\>> is finite. As <math|U\<neq\>\<emptyset\> >
    we must have that <math|\<cal-I\>\<neq\>\<emptyset\>> [other wise
    <math|<big|cup><rsub|I\<in\>\<cal-I\>>I=\<emptyset\>>]. Define now
    <math|\<alpha\>:\<bbb-D\>\<rightarrow\>\<bbb-R\>> by
    <math|\<alpha\><around*|(|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>|)>=<frac|z|2<rsup|n>>>
    so that <math|\<alpha\><rsub|\|\<cal-I\>>:\<cal-I\>\<rightarrow\>\<alpha\><around*|(|\<cal-I\>|)>>
    is a surjection hence as <math|\<cal-I\>> is supposed to finite we have
    by <reference|surjection f:A-\<gtr\>B B is finite if A is finite> that
    <math|\<alpha\><around*|(|\<cal-I\>|)>> is finite and not empty (as
    <math|\<cal-I\>> is not empty) so that
    <math|m=min<around*|(|\<alpha\><around*|(|\<cal-I\>|)>|)>> exists. As
    also <math|\<alpha\><around*|(|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>|)>=<frac|z|2<rsup|n>>\<in\><around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>\<subseteq\>U>
    we have that <math|\<alpha\><around*|(|\<alpha\><around*|(|\<cal-I\>|)>|)>\<subseteq\>U>
    hence we conclude that <math|m\<in\>U>. As <math|U> is open there exists
    a <math|\<varepsilon\>\<gtr\>0> such that
    <math|<around*|]|m-\<varepsilon\>,m+\<varepsilon\>|[>\<subseteq\>U>. By
    the density of the reals (see <reference|density theorem for the reals>)
    there exists a <math|x\<in\>\<bbb-Q\>\<subseteq\>\<bbb-R\>> such that
    <math|m-\<varepsilon\>\<less\>x\<less\>m\<Rightarrow\>x\<in\><around*|]|m-\<varepsilon\>,m+\<varepsilon\>|[>\<subseteq\>U>,
    hence using <reference|eq 15.43.455> there exists a
    <math|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>\<subseteq\>\<cal-I\>>
    such that <math|x\<in\><around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>>
    so that <math|\<alpha\><around*|(|<around*|[|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|[>|)>=<frac|z|2<rsup|n>>\<less\>x\<less\>m\<Rightarrow\>min<around*|(|\<cal-I\>|)>\<less\>m=min<around*|(|\<cal-I\>|)>>
    a contradiction. So we conclude that\ 

    <\equation>
      <label|eq 15.46.455>\<cal-I\> is denumerable
    </equation>

    As <math|\<bbb-N\><rsub|0>> is also denumerable there exists a bijection
    <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<cal-I\>> so if we define
    <math|<around*|{|\<cal-I\><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-D\>>
    by <math|I<rsub|i>=\<sigma\><around*|(|i|)>> we have
    <math|U=<big|cup><rsub|i\<in\>\<cal-I\>>I=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>>
    and if <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> we have
    <math|\<sigma\><around*|(|i|)>\<neq\>\<sigma\><around*|(|j|)>\<Rightarrow\>I<rsub|i><big|cap>I<rsub|j>=\<sigma\><around*|(|i|)><big|cap>\<sigma\><around*|(|j|)>=\<emptyset\>>/
    Which finally proves that\ 

    <\equation*>
      U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>
    </equation*>
  </proof>

  We are now ready to show different ways to generate the Borel algebra's on
  <math|\<bbb-R\>>.

  <\theorem>
    <label|Borel algebra on the reals>If <math|\<cal-T\><rsub|<around*|\|||\|>>>
    is the topology defined by the absolute value on the set of real numbers
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|\<sigma\><around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[><around*|\||a\<in\>\<bbb-R\>|\|>|}>|]>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    As we have <math|\<sigma\><around*|[|\<cal-I\>|]>\<equallim\><rsub|<text|<reference|sigma
    algebra [a,b[-\<gtr\>]a,b[>>>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<equallim\><rsub|<text|<reference|sigma
    algebra ]a,b]-\<gtr\>]a,b[>>>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>|\<nobracket\>>>,
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<equallim\><rsub|<text|<reference|[a,b[=\<gtr\>[a,@@[>>>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>,
    <math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<equallim\><rsub|<text|<reference|]a,b]=\<gtr\>]a,@@[>>>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>,
    <math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<equallim\><rsub|<text|<reference|]a,b]=]-@@,b]>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>,
    <math|\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<equallim\><rsub|<text|<reference|[a,b[=]-@@,a[>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    and <math|\<sigma\><around*|[|\<cal-I\>|]>\<equallim\><rsub|<text|<reference|sigma
    algebra [a,b[-\<gtr\>[a,b]>>>\<sigma\><around*|[|<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    we must only prove that <math|\<sigma\><around*|[|\<cal-I\>|]>=\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.
    Now if <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> is a open set there
    exists by the previous theorem (see <reference|open set as a union of
    Dyadic intervals>) there exists a <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-D\>\<subseteq\>\<cal-I\>>
    such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>>. So
    using <reference|union and sigma algebras> we have that

    <\equation>
      <label|eq 15.39.456>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\>|]>.
    </equation>

    For the opposite inclusion we first prove that if
    <math|<around*|[|a,b|[>\<in\>\<cal-I\>> then
    <math|<around*|[|a,b|[>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>.
    First note that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|<around*|[|a,b|[>\<subseteq\><around*|]|a-<frac|1|n>,b|[>> proving
    that <math|<around*|[|a,b|[>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>,
    secondly if <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>
    then <math|x\<less\>b> and <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we
    have <math|a-<frac|1|n>\<less\>x\<Rightarrow\>a\<less\>x+<frac|1|n>> and
    thus using <reference|consequence of the Archimedean property (2)> we
    have <math|x\<less\>b> and <math|a\<leqslant\>x\<Rightarrow\>x\<in\><around*|[|a,b|[>>
    provng that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>\<subseteq\><around*|[|a,b|[>>.
    So <math|\<forall\><around*|[|a,b|[>\<subseteq\>\<cal-I\>> there exists a
    <math|<around*|{|<around*|]|a-<frac|1|n>,b|[>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-T\>>
    (open intervals are open) such that <math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>
    and thus using <reference|intersection and sigma algebras> we have
    <math|\<sigma\><around*|[|\<cal-I\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>>
    and thus using <reference|eq 15.39.456>\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|definition>\<sigma\><around*|[|\<cal-T\><rsub|<around*|\|||\|>>|]>=\<sigma\><around*|[|\<cal-I\>|]>
    </equation*>
  </proof>

  <subsection|Borel algebra on <math|<wide|\<bbb-R\>|\<bar\>>>>

  First we prove that Borel sets in <math|<wide|\<bbb-R\>|\<bar\>>> are Borel
  sets in <math|\<bbb-R\>>

  <\theorem>
    <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>=<around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>|}>>
  </theorem>

  <\proof>
    First if <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|<reference|topology
    on extented reals>>><around*|{|V<big|cap>\<bbb-R\>\|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    then there exists a <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
    such that <math|U=V<big|cap>\<bbb-R\>>, hence
    <math|U\<in\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>,
    proving that\ 

    <\equation>
      <label|eq 16.41.484>\<cal-T\><rsub|<around*|\|||\|>>\<subseteq\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>
    </equation>

    Second we have that <math|<around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>
    is a <math|\<sigma\>>-algebra on <math|\<bbb-R\>> because

    <\enumerate>
      <item><math|<wide|\<bbb-R\>|\<bar\>>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and <math|\<bbb-R\>=<wide|\<bbb-R\>|\<bar\>><big|cap>\<bbb-R\>> hence
      <math|\<bbb-R\>\<in\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>

      <item>If <math|A\<in\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>
      then there exists a <math|A<rprime|'>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      such that <math|A=A<rprime|'><big|cap>\<bbb-R\>.> We have then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<bbb-R\>\\A>|<cell|=>|<cell|\<bbb-R\>\\<around*|(|A<rprime|'><big|cap>\<bbb-R\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-R\><big|cap><around*|(|A<rprime|'><big|cap>\<bbb-R\>|)><rsup|c>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-R\><big|cap><around*|(|A<rprime|'><rsup|c><big|cup>\<bbb-R\><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-R\><big|cap>A<rprime|'><rsup|c>>>|<row|<cell|>|<cell|=>|<cell|<wide|\<bbb-R\>|\<bar\>><big|cap>\<bbb-R\><big|cap>A<rprime|'><rsup|c>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<wide|\<bbb-R\>|\<bar\>>\\A<rprime|'>|)><big|cap>\<bbb-R\>>>>>
      </eqnarray*>

      proving as <math|<wide|\<bbb-R\>|\<bar\>>\\A<rprime|'>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      that <math|\<bbb-R\>\\A\<in\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>.

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>
      then there exists a <math|<around*|{|A<rprime|'><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>=A<rprime|'><rsub|i><big|cap>\<bbb-R\>>. Further
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rprime|'><rsub|i>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rprime|'><rsub|i>|)><big|cap>\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rprime|'><rsub|i><big|cap>\<bbb-R\>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>.
    </enumerate>

    From the fact that <math|<around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>>
    is a <math|\<sigma\>>-algebra on <math|\<bbb-R\>> and <reference|eq
    16.41.484> we conclude that\ 

    <\equation>
      <label|eq 16.42.484>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|>|]>\<subseteq\><around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>
    </equation>

    For the opposite inclusion consider <math|<around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>.
    If <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> then as
    <math|\<cal-T\><rsub|<around*|\|||\|>>\<equallim\><rsub|<text|<reference|topology
    on extented reals>>><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|}>>
    we have that <math|U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
    proving that <math|U\<in\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>.
    Hence we have\ 

    <\equation>
      <label|eq 16.43.484>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<subseteq\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>
    </equation>

    Next we prove that <math|<around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>
    is a <math|\<sigma\>>-algebra on <math|<wide|\<bbb-R\>|\<bar\>>>:

    <\enumerate>
      <item><math|<wide|\<bbb-R\>|\<bar\>><big|cap>\<bbb-R\>=\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      hence <math|<wide|\<bbb-R\>|\<bar\>>\<in\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>

      <item>If <math|A\<in\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>
      then <math|<wide|\<bbb-R\>|\<bar\>>\\A\<in\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and <math|A<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.
      As <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      is a algebra we have then that <math|\<bbb-R\>\\<around*|(|A<big|cap>\<bbb-R\>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      and as <math|\<bbb-R\>\\<around*|(|A<big|cap>\<bbb-R\>|)>=\<bbb-R\><big|cap><around*|(|A<rsup|c><big|cup>\<bbb-R\><rsup|c>|)>=\<bbb-R\><big|cap>A<rsup|c>=\<bbb-R\>\\A>
      we conclude that\ 

      <\equation>
        <label|eq 16.44.484>\<bbb-R\>\\A\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>
      </equation>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<wide|\<bbb-R\>|\<bar\>>\\A|)><big|cap>R>|<cell|=>|<cell|<around*|(|<wide|\<bbb-R\>|\<bar\>><big|cap>A<rsup|c>|)><big|cap>\<bbb-R\>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-R\><big|cap>A<rsup|c>>>|<row|<cell|>|<cell|=>|<cell|\<bbb-R\>\\A>>|<row|<cell|>|<cell|\<in\>>|<cell|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>
        <around*|(|see <reference|eq 16.44.484>|)>>>>>
      </eqnarray*>

      which proves that <math|<wide|\<bbb-R\>|\<bar\>>\\A\<in\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      <math|A<rsub|i><big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.
      So as <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      is a <math|\<sigma\>>-algebra we have that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and further we have <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>\<bbb-R\>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      [as <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      is a <math|\<sigma\>>-algebra]. Which proves that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>
    </enumerate>

    From the fact that <math|<around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>>
    is a <math|\<sigma\>>-algebra together with <reference|eq 16.44.484> we
    conclude that\ 

    <\equation>
      <label|eq 16.45.483>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<wide|\<bbb-R\>|\<bar\>>|]>\<subseteq\><around*|{|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|}>
    </equation>

    So if <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
    then by the above we have that <math|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    or in other words <math|><math|<around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    which by <reference|eq 16.42.484> proves that finally that\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>=<around*|{|B<big|cap>\<bbb-R\>\|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>|}>
    </equation*>
  </proof>

  <\corollary>
    <label|corollary 16.70><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>,\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}>>
  </corollary>

  <\proof>
    If <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
    then by the above theorem we have that
    <math|B<rprime|'>=B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    and as <math|<wide|\<bbb-R\>|\<bar\>>=\<bbb-R\><big|cup><around*|{|-\<infty\>,\<infty\>|}>>
    we have that <math|B=B<rprime|'>\<vee\>B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>\<vee\>B=B=B<rprime|'><big|cup><around*|{|\<infty\>|}>\<vee\>B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>>
    so that\ 

    <\equation>
      <label|eq 16.46.483>\<b-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>,\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}>
    </equation>

    Further as <math|<around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>> and
    <math|<around*|{|-\<infty\>,\<infty\>|}>> are closed in
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> (see <reference|closed
    sets in the extended reals>) we have by <reference|Borel algebras and
    closed sets> that <math|<around*|{|-\<infty\>|}>>,
    <math|<around*|{|\<infty\>|}>> and <math|<around*|{|-\<infty\>,\<infty\>|}>>
    are elements of <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>.
    Hence if <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>,\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}>>
    there exists a <math|B<rprime|'>\<in\>\<cal-B\><around*|{|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|}>>
    such that either <math|B=B<rprime|'>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<vee\>B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<vee\>B=B<rprime|'><big|cup><around*|{|\<infty\>|}>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<vee\>B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>,
    provin that\ 

    <\equation>
      <label|eq 16.47.483>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>,\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|-\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}><big|cup><around*|{|B<big|cup><around*|{|\<infty\>|}><around*|\||B\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>|\<nobracket\>>|}>\<subseteq\>\<b-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
    </equation>

    The theorem is then proved by combining <reference|eq 16.45.483> and
    <reference|eq 16.47.483>.
  </proof>

  The following lemma shows how to express <math|<around*|{|-\<infty\>|}>>
  and <math|<around*|{|\<infty\>|}>> as intersections of intervals of the
  form <math|<around*|[|a,\<infty\>|]>>, <math|<around*|]|a,\<infty\>|]>>,
  <math|<around*|[|-\<infty\>,a|]>>, <math|<around*|[|-\<infty\>,a|[>>

  <\lemma>
    <label|{@@} expression>We have the following identities

    <\enumerate>
      <item><math|<around*|{|\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>\<equallim\><rsub|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,n|[>=<around*|[|n,\<infty\>|]>><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,n|[>|)>>

      <item><math|<around*|{|\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>\<equallim\><rsub|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,n|]>=<around*|]|n,\<infty\>|]>>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-\<infty\>,n|]>|)>>

      <item><math|<around*|{|-\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>\<equallim\><rsub|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-n,\<infty\>|]>=<around*|[|-\<infty\>,-n|[>><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|[|-n,\<infty\>|]>|)>>

      <item><math|<around*|{|-\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|]>\<equallim\><rsub|<wide|\<bbb-R\>|\<bar\>>\\<around*|]|-n,\<infty\>|]>=<around*|[|-\<infty\>,-n|]>><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|]|-n,\<infty\>|]>|)>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>First as <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|\<infty\>\<in\><around*|[|n,\<infty\>|]>> we have\ 

      <\equation*>
        <around*|{|\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>
      </equation*>

      For the opposite inclusion, let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>>
      and assume that <math|x\<neq\>\<infty\>>, then
      <math|x\<less\>\<infty\>> and by <reference|consequence of the
      archimedean property for the reals> there exists
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<less\>n\<Rightarrow\>n\<nleqslant\>x>, so we found a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<nin\><around*|[|n,\<infty\>|]>> contradicting that
      <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>>,
      hence <math|x=\<infty\>> proving that\ 

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>\<subseteq\><around*|{|\<infty\>|}>
      </equation*>

      <item>First as <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|\<infty\>\<in\><around*|]|n,\<infty\>|]>> [as
      <math|n\<less\>\<infty\>\<leqslant\>\<infty\>>] we have\ 

      <\equation*>
        <around*|{|\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>
      </equation*>

      For the opposite inclusion, let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>>
      and assume that <math|x\<neq\>\<infty\>>, then
      <math|x\<less\>\<infty\>> and by <reference|consequence of the
      archimedean property for the reals> there exists
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<less\>n\<Rightarrow\>n\<nless\>x>, so we found a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<nin\><around*|]|n,\<infty\>|]>> contradicting that
      <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>>,
      hence <math|x=\<infty\>> proving that\ 

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|n,\<infty\>|]>\<subseteq\><around*|{|\<infty\>|}>
      </equation*>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then as in the proof of (2)
      and (1) we have <math|-\<infty\>\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>\<Rightarrow\><around*|{|-\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>,
      for the opposite inclusion, let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>
      and assume that <math|x\<neq\>-\<infty\>> then
      <math|-\<infty\>\<less\>x\<Rightarrow\>-x\<less\>\<infty\>> and by
      <reference|consequence of the archimedean property for the reals> there
      exists <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|-x\<less\>n\<Rightarrow\>-n\<less\>x> proving that
      <math|x\<nin\><around*|[|-\<infty\>,-n|[>> contradicting
      <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>,
      hence <math|x=-\<infty\>\<in\><around*|{|-\<infty\>|}>>. So we conclude
      that

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>=<around*|{|-\<infty\>|}>
      </equation*>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then as in the proof of (2)
      and (1) we have <math|-\<infty\>\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>
      so that <math|<around*|{|-\<infty\>|}>\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|]|-n,\<infty\>|]>|)>>
      for the opposite inclusion let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|]>>
      and assume that <math|x\<neq\>-\<infty\>> then
      <math|-\<infty\>\<less\>x\<Rightarrow\>-x\<less\>\<infty\>> and by
      <reference|consequence of the archimedean property for the reals> there
      exists <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|-x\<less\>n\<Rightarrow\>-n\<less\>x> proving that
      <math|x\<nin\><around*|[|-\<infty\>,-n|]>> conradicting
      <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|]>>,
      hence <math|x=-\<infty\>\<in\><around*|{|-\<infty\>|}>>. So we conclude
      that \ 

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<wide|\<bbb-R\>|\<bar\>>\\<around*|]|-n,\<infty\>|]>|)>=<around*|{|-\<infty\>|}>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|Borel algebra on the extended reals>For the Boel sets on
    <math|<wide|\<bbb-R\>|\<bar\>>> we have\ 

    <\enumerate>
      <item><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>

      <item><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>

      <item><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>

      <item><math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Given <math|a\<in\>\<bbb-R\>> we have by <reference|closed sets
      in the extended reals> that <math|<around*|[|a,\<infty\>|]>> is closed
      in <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> hence by
      <reference|Borel algebras and closed sets> we have that
      <math|<around*|[|a,\<infty\>|]>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      proving that <math|><math|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and thus

      <\equation>
        <label|eq 16.50.486>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
      </equation>

      Further if <math|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b> then
      <math|<around*|[|a,b|[>=<around*|[|a,\<infty\>|]>\\<around*|[|b,\<infty\>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
      [as a <math|\<sigma\>>-algebra is a ring and
      <math|<around*|[|a,\<infty\>|]>,<around*|[|b,\<infty\>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>],
      hence we have\ 

      <\equation>
        <label|eq 16.42.483>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>\<equallim\><rsub|<text|<reference|Borel
        algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation>

      Using <reference|{@@} expression> (1) and (3) and the properties of a
      <math|\<sigma\>>-algebra we conclude that

      <\equation>
        <label|eq 16.52.486><around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>,<around*|{|-\<infty\>,\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>.
      </equation>

      Now if <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      then using <reference|corollary 16.70> we have that there exists a
      <math|B<rprime|'>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      such that either <math|B=B<rprime|'>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>> which
      by <reference|eq 16.52.486> means that in all cases
      <math|B\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>.
      This proves that <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
      and thus by <reference|eq 16.50.486> that\ 

      <\equation*>
        \<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation*>

      <item>Given <math|a\<in\>\<bbb-R\>> we have by <reference|sets for
      basis of topology on the extented reals> that
      <math|<around*|]|a,\<infty\>|]>> is open in
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> hence
      <math|<around*|]|a,\<infty\>|]>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      proving that <math|><math|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and thus

      <\equation>
        <label|eq 16.53.486>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
      </equation>

      Further if <math|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b> then
      <math|<around*|]|a,b|]>=<around*|]|a,\<infty\>|]>\\<around*|]|b,\<infty\>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
      [as a <math|\<sigma\>>-algebra is a ring and
      <math|<around*|]|a,\<infty\>|]>,<around*|]|b,\<infty\>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>],
      hence we have

      <\equation>
        <label|eq 16.54.486>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>\<equallim\><rsub|<text|<reference|Borel
        algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation>

      Using <reference|{@@} expression> (2) and (4) and the properties of a
      <math|\<sigma\>>-algebra we conclude that

      <\equation>
        <label|eq 16.55.486><around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>,<around*|{|-\<infty\>,\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>.
      </equation>

      Now if <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      then using <reference|corollary 16.70> we have that there exists a
      <math|B<rprime|'>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      such that either <math|B=B<rprime|'>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>> which
      by <reference|eq 16.54.486> means that in all cases
      <math|B\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>.
      This proves that <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
      and thus by <reference|eq 16.53.486> that\ 

      <\equation*>
        \<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation*>

      <item>Given <math|a\<in\>\<bbb-R\>> we have by <reference|closed sets
      in the extended reals> that <math|<around*|[|-\<infty\>,a|]>> is closed
      in <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> hence by
      <reference|Borel algebras and closed sets> we have that
      <math|<around*|[|-\<infty\>,a|]>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      proving that <math|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and thus\ 

      <\equation>
        <label|eq 16.59.487>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
      </equation>

      Further if <math|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b> then
      <math|<around*|]|a,b|]>=<around*|[|-\<infty\>,b|]>\\<around*|[|-\<infty\>,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
      hence we have\ 

      <\equation>
        <label|eq 16.60.487>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
        algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation>

      Using <reference|{@@} expression> (2) (3) and the properties of
      <math|\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
      we conclude that\ 

      <\equation>
        <label|eq 16.61.487><around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>,<around*|{|-\<infty\>,\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation>

      Now if <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      then using <reference|corollary 16.70> we have that there exists a
      <math|B<rprime|'>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      such that either <math|B=B<rprime|'>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>> which
      by <reference|eq 16.61.487> means that in all cases
      <math|B\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>.
      This proves that <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
      and thus by <reference|eq 16.59.487> that\ 

      <\equation*>
        \<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
      </equation*>

      <item>Given <math|a\<in\>\<bbb-R\>> we have by <reference|sets for
      basis of topology on the extented reals> that
      <math|<around*|[|-\<infty\>,a|[>> is open in
      <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>> hence
      <math|<around*|[|-\<infty\>,a|[>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      proving that <math|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      and thus\ 

      <\equation>
        <label|eq 16.62.487>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
      </equation>

      Further if <math|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b> then
      <math|<around*|[|a,b|[>=<around*|[|-\<infty\>,b|[>\\<around*|[|-\<infty\>,a|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
      hence we have\ 

      <\equation>
        <label|eq 16.63.487>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
        algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>
      </equation>

      Using <reference|{@@} expression> (1) and (3) and the properties of a
      <math|\<sigma\>>-algebra we conclude that\ 

      <\equation>
        <label|eq 16.64.487><around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>,<around*|{|-\<infty\>,\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
      </equation>

      Now if <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>
      then using <reference|corollary 16.70> we have that there exists a
      <math|B<rprime|'>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      such that either <math|B=B<rprime|'>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|\<infty\>|}>>,
      <math|B=B<rprime|'><big|cup><around*|{|-\<infty\>,\<infty\>|}>> which
      by <reference|eq 16.64.487> means that in all cases
      <math|B\<in\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>.
      This proves that <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
      and thus by <reference|eq 16.62.487> that\ 

      <\equation*>
        \<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Borel algebra on <math|\<bbb-R\><rsup|n>>>

  <\theorem>
    <label|first sigma algebra on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>>
  </theorem>

  <\proof>
    Let <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<in\>\<cal-R\><rsup|n>><space|1em>then
    as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|]|a<rsub|i>-<frac|1|n>,b<rsub|i>|[>\<Rightarrowlim\><rsub|<text|<reference|general
    product of sets and subsets>>><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>-<frac|1|n>,b<rsub|i>|[>>
    proving that\ 

    <\equation>
      <label|eq 15.40.457><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>-<frac|1|n>,b<rsub|i>|[>|)>
    </equation>

    Take now <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>-<frac|1|n>,b<rsub|i>|[>|)>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>>
    \ <math|x<rsub|i>\<in\><around*|]|a<rsub|i>-<frac|1|m>,b<rsub|i>|[>\<Rightarrow\>x<rsub|i>\<less\>b<rsub|i>\<wedge\>\<forall\>m\<in\>\<bbb-N\><rsub|0><text|
    that >a<rsub|i>\<less\>x<rsub|i>+<frac|1|m>> so using
    <reference|consequence of the Archimedean property (2)> we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|a<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>\<Rightarrow\>x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>>
    proving that <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>.
    Which prove that <math|<big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>-<frac|1|m>,b<rsub|i>|[>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    and thus by <reference|eq 15.40.457> that\ 

    <\equation>
      \<forall\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<in\>\<cal-R\><rsup|n>\<vDash\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>-<frac|1|m>,b<rsub|i>|[>|)>
    </equation>

    Applying then <reference|union and sigma algebras> proves then that\ 

    <\equation>
      <label|eq 15.42.457>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>
    </equation>

    Next take <math|><math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
    <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> that
    <math|<around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>\<subseteq\><around*|]|a<rsub|i>,b<rsub|i>|[>\<Rightarrowlim\><rsub|<text|<reference|general
    product of sets and subsets>>><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>
    proving that\ 

    <\equation>
      <label|eq 15.43.457><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>
    </equation>

    If now <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>
    then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|x<rsub|i>\<less\>b<rsub|i>> and
    <math|0\<less\>x<rsub|i>-a<rsub|i>\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>\<exists\>m<rsub|i>\<in\>\<bbb-N\><rsub|0>>
    such that <math|0\<less\><frac|1|m<rsub|i>>\<less\>x<rsub|i>-a<rsub|i>>.
    Take now <math|m=max<around*|(|<around*|{|m<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|0\<less\><frac|1|m>\<less\><frac|1|m<rsub|i>>\<less\>x<rsub|i>-a<rsub|i>\<Rightarrowlim\>a<rsub|i>+<frac|1|m>\<less\>x<rsub|i>\<Rightarrow\>a<rsub|i>+<frac|1|m>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>>
    proving that <math|\<exists\>m\<in\>\<bbb-N\><rsub|0>> such that
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>>. So we
    have by that <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>|)>>
    which together with <reference|eq 15.43.457> proves that\ 

    <\equation*>
      \<forall\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\<in\><around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}><text|
      we have ><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|1|m>,b<rsub|i>|[>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>
    </equation*>

    Applying then <reference|union and sigma algebras> proves that
    <math|\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>.
    This together with <reference|eq 15.42.457> gives finally

    <\equation*>
      \<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>
    </equation*>

    \;
  </proof>

  <\theorem>
    <label|second sigma algebra on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>>
  </theorem>

  <\proof>
    Let <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<in\>\<cal-R\><rsup|n>>.
    First <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|<around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|[>>
    proving by <reference|general product of sets and subsets> that
    <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> that
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    which proves that\ 

    <\equation>
      <label|eq 15.44.579><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>
    </equation>

    Next let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>\<leqslant\>x<rsub|i>> and
    <math|x<rsub|i>\<less\>b<rsub|i>\<Rightarrow\>0\<less\>b<rsub|i>-x<rsub|i>\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the archimedean property for the reals>>>\<exists\>m<rsub|i>\<in\>\<bbb-N\><rsub|0>>
    such that <math|0\<less\><frac|1|m<rsub|i>>\<less\>b<rsub|i>-x<rsub|i>>,
    take <math|m=max<around*|(|<around*|{|m<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    then <math|0\<less\><frac|1|m>\<less\><frac|1|m<rsub|i>>\<less\>b<rsub|i>-x<rsub|i>\<Rightarrow\>x<rsub|i>\<less\>b<rsub|i>-<frac|1|m>>.
    So there exists a <math|m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|[>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>>
    proving that <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>>.
    So we have <math|><math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>|)>>.
    This together with <reference|eq 15.44.579> gives\ 

    <\equation>
      <label|eq 15.45.459>\<forall\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<in\>\<cal-R\><rsup|n><text|
      we have ><big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>-<frac|1|m>|]>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>
    </equation>

    Applying then <reference|union and sigma algebras> proves that\ 

    <\equation>
      <label|eq 15.46.459>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>
    </equation>

    Let <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\<in\><around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>>.
    First <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|<around*|[|a<rsub|i>,b<rsub|i>|]>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>\<Rightarrowlim\><rsub|<text|<reference|general
    product of sets and subsets>>>\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>>
    proving that\ 

    <\equation>
      <label|eq 15.47.459><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\<subseteq\><big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>|)>
    </equation>

    If now <math|x\<in\><big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>|)>>
    then <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>>, so
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>\<leqslant\>x<rsub|i>> and
    <math|\<forall\>m\<in\>\<bbb-N\><rsub|0>> we have
    <math|x<rsub|i>\<less\>b<rsub|i>+<frac|1|m>\<Rightarrowlim\><rsub|<text|<reference|consequence
    of the Archimedean property (2)>>>x<rsub|i>\<leqslant\>b<rsub|i>>. So
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>> proving that
    <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>
    and thus that <math|<big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>
    which together with <reference|eq 15.47.459> proves that\ 

    <\equation>
      <label|eq 15.48.459>\<forall\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\<in\><around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}><text|
      we have ><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>=<big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>+<frac|1|m>|[>|)>
    </equation>

    Using <reference|intersection and sigma algebras> gives finally that
    <math|\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
    we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    which together with <reference|eq 15.46.459> proves that

    <\equation*>
      \<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>
    </equation*>
  </proof>

  To prove that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
  we introduce Diadic cubes.\ 

  <\definition>
    <label|Dyadic cubes><index|<math|\<bbb-D\><rsup|N><rsub|n>>>Let
    <math|N\<in\>\<bbb-N\><rsub|0>> and <math|n\<in\>\<bbb-N\>> then
    <math|\<bbb-D\><rsup|N><rsub|n>> is defined by
    <math|\<bbb-D\><rsub|n><rsup|N>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>>\<subseteq\>\<bbb-Z\>|}>>,
    finally \ <math|\<bbb-D\><rsup|N>> is defined by
    <math|\<bbb-D\><rsup|N>=<big|cup><rsub|n\<in\>\<bbb-N\>>\<bbb-D\><rsup|N><rsub|n>>.
  </definition>

  We have then the following simular theorem as for Dyadic intervals.

  <\lemma>
    <label|properties of Dyadic cubes>Let <math|N\<in\>\<bbb-N\><rsub|o>>
    then dyadic cubes have the following properties\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><text| and
      >\<forall\>R,Q\<in\>\<bbb-D\><rsup|N><rsub|n>> with <math|R\<neq\>Q> we
      have <math|R<big|cap>Q=\<emptyset\>>

      <item>If <math|n,k\<in\>\<bbb-N\>> with <math|k\<leqslant\>n> we have
      \ <math|\<forall\>R\<in\>\<bbb-D\><rsup|N><rsub|n>,\<forall\>Q\<in\>\<bbb-D\><rsup|N><rsub|k>>
      that either \ <math|R\<subseteq\>Q> or <math|Q<big|cap>R=\<emptyset\>>

      <item><math|\<bbb-R\><rsup|N>=<big|sqcup><rsub|R\<in\>\<bbb-D\><rsup|N><rsub|n>>R>
      <math|\<forall\>n\<in\>\<bbb-N\>> (a pairwise disjoint union)

      <item><math|\<forall\>n\<in\>\<bbb-N\>> and
      <math|\<forall\>R\<in\>\<bbb-D\><rsup|N><rsub|n>> we have
      <math|v<around*|(|I|)>=2<rsup|-n\<cdot\>N>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|n\<in\>\<bbb-N\>> and
      <math|R\<in\>\<bbb-D\><rsup|N><rsub|n>,Q\<in\>\<bbb-D\><rsub|k><rsup|N>>
      with <math|R\<neq\>Q> then <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>>
      and <math|Q=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>>.
      Then from <math|R\<neq\>Q> it follows that
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,N|}>> such that
      <math|<around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<neq\><around*|[|<frac|w<rsub|i>|2<rsup|n>>,<frac|w<rsub|i>+1|2<rsup|n>>|[>\<Rightarrowlim\><rsub|<text|<reference|properties
      of Dyadic intervals> (2)>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|n>>,<frac|w<rsub|i>+1|2<rsup|n>>|[>=\<emptyset\>>
      from which it follows that <math|R<big|cap>Q=\<emptyset\>>.

      <item>Let <math|n,k\<in\>\<bbb-N\>> and <math|k\<leqslant\>n> and
      <math|R\<in\>\<bbb-D\><rsup|N><rsub|n>>,
      <math|Q\<in\>\<bbb-D\><rsup|N><rsub|k>> so that
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>>,
      <math|Q=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>>
      then we have either\ 

      <\description>
        <item*|<math|k=n>>then if <math|R\<nsubseteq\>Q> we have
        <math|Q\<neq\>R> and thus by (1) it follows that
        <math|R<big|cap>Q=\<emptyset\>>

        <item*|<math|k\<less\>n>>then we have either\ 

        <\description>
          <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,N|}>\<vdash\><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>=\<emptyset\>>>then
          <math|R<big|cap>Q=\<emptyset\>>

          <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>\<vdash\><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[><big|cap><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>>then
          as <math|k\<less\>n> we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>>
          by <reference|property of Dyadic interval of order n> that
          <math|><math|<around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<subseteq\><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>>
          proving by <reference|general product of sets and subsets> that
          <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|[>>
          giving <math|R\<subseteq\>Q>
        </description>
      </description>

      <item>As <math|\<forall\>R\<in\>\<bbb-D\><rsup|N>> we have
      <math|R\<subseteq\>\<bbb-R\><rsup|N>> we have that

      <\equation>
        <label|eq 15.49.460><big|cup><rsub|R\<in\>\<bbb-D\><rsup|N>>R\<subseteq\>\<bbb-R\><rsup|N><rsub|>.
      </equation>

      If <math|x\<in\>\<bbb-R\><rsup|N>> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>> we have
      <math|x<rsub|i>\<in\>\<bbb-R\>\<Rightarrowlim\><rsub|<text|<reference|properties
      of Dyadic intervals> (3)>>\<exists\><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|i>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|i>>>|[>\<in\>\<bbb-D\><rsub|n>>
      such that <math|x<rsub|i>\<in\><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|i>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|i>>>|[>>
      hence we have <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|i>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|i>>>|[>\<in\>\<bbb-D\><rsup|N>>.
      This proves that <math|\<bbb-R\><rsup|N>\<subseteq\><big|cup><rsub|R\<in\>\<bbb-D\><rsup|N>>R>
      and thus using <reference|eq 15.49.460> that\ 

      <\equation*>
        <big|cup><rsub|R\<in\>\<bbb-D\><rsup|N>>R=\<bbb-R\><rsup|N>
      </equation*>

      <item>If <math|R\<in\>\<bbb-D\><rsup|N<rsub|n>>> then we have that
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|N>>,<frac|z<rsub|i>+1|2<rsup|N>>|[>>
      and thus <math|v<around*|(|R|)>=<big|prod><rsub|i=1><rsup|N>l<around*|(|<around*|[|<frac|z<rsub|i>|2<rsup|N>>,<frac|z<rsub|i>+1|2<rsup|N>>|[>|)>=<big|prod><rsub|i=1><rsup|N>2<rsup|-n>=2<rsup|-n\<cdot\>N>>
    </enumerate>
  </proof>

  We use now Dyadic cubes to decompose a open set in <math|\<bbb-R\><rsup|N>>
  as a countable union of Dyadic rectangles.

  <\lemma>
    <label|Borel measure and Dyadic intervals>Let
    <math|N\<in\>\<bbb-N\><rsub|0>>, <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    the topology defined on <math|\<bbb-R\><rsup|N>> by the maximum norm (see
    <reference|topology of R^n>)
  </lemma>

  then if <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>max>>
  is a non empty open set then there exists a denumerable pairwise disjoint
  family <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<bbb-D\><rsup|N>>
  of dyadic cubes such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>>

  <\proof>
    Let <math|U\<neq\>0> be a non-empty open set in <math|\<bbb-R\><rsup|N>>.
    We use the following definitions

    <\equation>
      <label|eq 15.50.461>\<forall\>n\<in\>\<bbb-N\> we define
      \<cal-S\><rsub|n>=<around*|{|D\<in\>\<bbb-D\><rsup|N><rsub|n>\|D\<subseteq\>U|}>\<subseteq\>\<bbb-D\><rsup|N><rsub|n>
    </equation>

    <\equation>
      <label|eq 15.51.461>\<forall\>n\<in\>\<bbb-N\><text| we define
      >\<cal-T\><rsub|n>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|0>
      if n=0>>|<row|<cell|<around*|{|D\<in\>\<cal-S\><rsub|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}><text|
      we have >\<forall\>P\<in\>\<cal-T\><rsub|i><text| that
      >P\<nsubseteq\>D|}> if n\<gtr\>0>>>>><text| so that
      >\<cal-T\><rsub|n>\<subseteq\>\<cal-S\><rsub|n>\<subseteq\>\<bbb-D\><rsup|N><rsub|n>
    </equation>

    <\equation>
      <label|eq 15.52.461>\<cal-T\>=<big|cup><rsub|i\<in\>\<bbb-N\>>\<cal-T\><rsub|i>\<subseteq\>\<bbb-D\><rsup|N>
    </equation>

    The proof is done in different steps

    <\description>
      <item*|<math|U=<big|cup><rsub|D\<in\>\<cal-T\>>D>>As
      <math|\<forall\>D\<in\>\<cal-T\>> we have that there exists a
      <math|i\<in\>\<bbb-N\>> such that <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-S\><rsub|i>\<Rightarrowlim\><rsub|definition
      of \<b-S\><rsub|i>>D\<subseteq\>U> which proves that\ 

      <\equation>
        <label|eq 15.53.461><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
      </equation>

      For the opposite inclusion take <math|x\<in\>U> then as <math|U> is
      open there exists a <math|\<bbb-B\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<varepsilon\>|)>>
      such that <math|x\<in\>\<bbb-B\><rsub|<around*|\<\|\|\>||\<\|\|\>>max><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
      Using <reference|consequence of the archimedean property for the reals>
      there exists a <math|n<rsub|\<varepsilon\>>\<in\>\<bbb-N\><rsub|0>>
      such that <math|0\<less\><frac|1|n<rsub|\<varepsilon\>>>\<less\>\<varepsilon\>>,
      by lemma <reference|properties of Dyadic cubes> (3) there exists a
      <math|D=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|\<varepsilon\>>>>|[>\<in\>\<bbb-D\><rsup|N><rsub|n<rsup|\<varepsilon\>>>>
      such that <math|x\<in\>D>. Hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>>
      we have <math|<frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|\<varepsilon\>>>>>,
      if now <math|z\<in\>D> then we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>> that
      <math|<frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>-<frac|z<rsub|i>+1|2<rsup|n<rsub|\<omega\>>>>\<leqslant\>x<rsub|i>-z<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|\<varepsilon\>>>>-<frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>\<Rightarrow\>-<frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>\<leqslant\>x<rsub|i>-z<rsub|i>\<less\><frac|z<rsub|i>|2<rsup|n<rsub|\<varepsilon\>>>>\<Rightarrow\>-\<varepsilon\>\<leqslant\>x<rsub|i>-z<rsub|i>\<leqslant\>\<varepsilon\>\<Rightarrow\>z\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>
      proving that <math|x\<in\>D\<subseteq\>U> and thus that
      <math|D\<in\>\<cal-S\><rsub|n<rsub|\<varepsilon\>>>>. This proves that
      <math|\<cal-N\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<exists\>D\<in\>\<cal-S\><rsub|n><text|
      such that >x\<in\>D|}>\<neq\>\<emptyset\>>, so if we take
      <math|n=min<around*|(|\<cal-N\>|)>\<in\>\<cal-N\>> then as
      <math|\<cal-N\>\<subseteq\>\<bbb-N\><rsub|0>> we have that
      <math|n\<gtr\>0>. Further by definition there exists a
      <math|E\<in\>\<cal-S\><rsub|n>> such that <math|x\<in\>E> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
      <math|\<forall\>P\<in\>\<cal-S\><rsub|i>> that
      <math|x\<nin\>P\<Rightarrowlim\><rsub|x\<in\>E>P\<nsubseteq\>E> proving
      that <math|E\<in\>\<cal-T\><rsub|n>> and thus\ 

      <\equation>
        <label|eq 15.54.462>U\<subseteq\><big|cup><rsub|E\<in\>\<cal-T\>>E
      </equation>

      Using <reference|eq 15.53.461> together with <reference|eq 15.54.462>
      gives\ 

      <\equation>
        <label|eq 15.55.462>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
      </equation>

      <item*|<math|U=<big|sqcup><rsub|D\<in\>\<cal-T\>>D>>Take
      <math|Q,P\<in\>\<cal-T\>> with <math|Q\<neq\>P> then there exists a
      <math|n,m\<in\>\<bbb-N\>> such that
      <math|Q\<in\>\<cal-T\><rsub|n>\<wedge\>P\<in\>\<cal-T\><rsub|m>\<Rightarrow\>Q\<in\>\<bbb-D\><rsup|N><rsub|n>\<wedge\>P\<in\>\<bbb-D\><rsup|N><rsub|m>>
      then we have either

      <\description>
        <item*|<math|n=m>>then using <reference|properties of Dyadic cubes>
        (2) we have <math|<rsub|<text|>>Q<big|cap>P=\<emptyset\>>

        <item*|<math|n\<less\>m>>then by construction <math|Q\<nsubseteq\>P>
        so using <reference|properties of Dyadic cubes> (2) we have
        <math|Q<big|cap>P=\<emptyset\>>

        <item*|<math|m\<less\>n>>then by construction <math|P\<nsubseteq\>Q>
        so using <reference|properties of Dyadic cubes> (2) we have
        <math|Q<big|cap>P=\<emptyset\>>
      </description>

      <item*|<math|\<cal-T\>> is denumerable>First
      <math|\<beta\><rsub|n>:\<bbb-Z\><rsup|n>\<rightarrow\>\<bbb-D\><rsup|N><rsub|n>>
      is clearly a biection so that as by <reference|finite product of finite
      or denumerable sets> <math|\<bbb-Z\><rsup|n>> is denumerable we have
      that <math|\<bbb-D\><rsub|n><rsup|N>> is denumerable and thus
      <math|\<bbb-D\><rsup|N>=<big|cup><rsub|n\<in\>\<bbb-N\>>\<bbb-D\><rsub|n><rsup|N>>
      is denumerable (see <reference|denumerable union of denumerable sets is
      denumerable>). ble we have that <math|\<bbb-D\><rsub|n><rsup|N>> is
      denumerable and thus <math|\<bbb-D\><rsup|N>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<bbb-D\><rsub|n><rsup|N>>
      is denumerable (see <reference|denumerable union of denumerable sets is
      denumerable>). As <math|\<cal-T\>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<bbb-D\><rsub|n><rsup|N>>
      we have that either <math|\<cal-T\>> is finite or <math|\<cal-T\>> is
      denumerable (see <reference|subsets of denumerable sets are finite or
      denumerable>). Assume now that <math|\<cal-T\>> is finite and derive a
      contradiction, first as <math|U\<neq\>\<emptyset\>> we must have
      <math|\<cal-T\>\<neq\>\<emptyset\>>. Define
      <math|\<alpha\>:\<bbb-D\><rsup|N>\<rightarrow\>\<bbb-R\>> by
      <math|\<alpha\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>|)>\<rightarrow\><frac|z<rsub|1>|2<rsup|n>>>
      then as <math|\<alpha\><rsub|\|\<cal-T\>>:\<cal-T\>\<rightarrow\>\<alpha\><around*|(|\<cal-T\>|)>>
      is a surjection we have that <math|\<alpha\><around*|(|\<cal-T\>|)>> is
      finite and <math|\<alpha\><around*|(|\<cal-T\>|)>\<neq\>\<emptyset\>>
      so <math|a=min<around*|(|\<alpha\><around*|(|\<cal-T\>|)>|)>> exists.
      If now <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|N>|)>\<in\>\<bbb-R\><rsup|N>>
      is such that <math|x<rsub|1>\<less\>a> then
      <math|\<forall\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<in\>\<cal-T\>>
      we have <math|x<rsub|1>\<less\>a\<leqslant\><frac|z<rsub|1>|2<rsup|n>>>
      so <math|x\<nin\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<subseteq\>U\<Rightarrow\>x\<nin\>U>.
      Also as <math|a=min<around*|(|\<alpha\><around*|(|\<cal-T\>|)>|)>>
      there exists a <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<in\>\<cal-T\>>
      such that <math|a=\<alpha\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>|)>=<frac|z<rsub|1>|2<rsup|n>>>.
      Then <math|<around*|(|<frac|z<rsub|1>|2<rsup|n>>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,N|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>\<subseteq\>U>,
      as <math|U> is open there exists then a <math|\<varepsilon\>\<gtr\>0>
      such that <math|<around*|(|<frac|z<rsub|1>|2<rsup|n>>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>|)>\<in\>B<rsub|<around*|\|||\|><rsub|max>><around*|(|<around*|(|<frac|z<rsub|1>|2<rsup|n>>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>|)>,\<varepsilon\>|)>\<subseteq\>U>
      so if we take <math|x=<around*|(|<frac|z<rsub|1>|2<rsup|n>>-<frac|\<varepsilon\>|2>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>-<frac|\<varepsilon\>|2>|)>\<Rightarrow\><around*|\||<around*|(|<frac|z<rsub|1>|2<rsup|n>>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>|)>-<around*|(|<frac|z<rsub|1>|2<rsup|n>>-<frac|\<varepsilon\>|2>,\<ldots\>,<frac|z<rsub|N>|2<rsup|n>>-<frac|\<varepsilon\>|2>|)>|\|><rsub|max>=<frac|\<varepsilon\>|2>\<less\>\<varepsilon\>>
      proving that <math|x\<in\>U> but as also
      <math|x<rsub|1>=<frac|z<rsub|1>|2<rsup|n>>-<frac|\<varepsilon\>|2>\<less\><frac|a<rsub|1>|2<rsup|n>>>
      we have <math|x\<nin\>U> a contradiction.
    </description>

    Using now the fact that <math|\<cal-T\>> is denumerable there exists a
    bijection <math|Q:\<bbb-N\><rsub|0>\<rightarrow\>\<cal-T\>> defining
    <math|<around*|{|Q<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>><space|1em>by
    <math|Q<rsub|i>=Q<around*|(|i|)>>. So we have
    <math|U=<big|cup><rsub|P\<in\>\<cal-T\>>P=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>Q<rsub|i>>.
    If now <math|i,j\<in\>\<bbb-N\><rsub|0>> is such that <math|i\<neq\>j>
    then as <math|Q> is a bijection we have <math|Q<rsub|i>\<neq\>Q<rsub|j>>
    giving <math|Q<rsub|1><big|cap>Q<rsub|2>=\<emptyset\>>.
  </proof>

  <\theorem>
    <label|Borel algebra on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>> the
    topology defined on <math|\<bbb-R\><rsup|N>> by the maximum norm (see
    <reference|topology of R^n>) then

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<equallim\><rsub|definition>\<sigma\><around*|[|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>>>>>
    </eqnarray*>

    <\proof>
      First we have <math|\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>\<equallim\><rsub|<text|<reference|first
      sigma algebra on R^n>>>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<equallim\><rsub|<reference|second
      sigma algebra on R^n>>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|(|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>|)>>.
      Finally <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<equallim\><rsub|<text|<reference|Borel
      measure and Dyadic intervals> and <reference|Borel basis> and
      definition >\<cal-R\><rsup|n>>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>\ 

      \;
    </proof>

    \ 
  </theorem>

  <section|Measures>

  <\definition>
    <label|content on a semi ring><index|content>Let <math|X> be a set,
    <math|\<cal-S\>> a semi ring on <math|X>then
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    <with|font-series|bold|content> if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>For every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
      (finite pairwise disjoint families of sets in <math|\<cal-S\>>) with
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
      we have <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>

    A content is <with|font-series|bold|finite> if
    <math|\<forall\>A\<in\>\<cal-S\>> we have
    <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>
  </definition>

  As a ring is <math|\<cup\>>-stable we have that a content on a ring is
  defined as follows (note that we do not require
  <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-S\>>
  in the definition of a content on a ring).

  <\definition>
    <label|content><index|content>Let <math|X> be a set, <math|\<cal-R\>> a
    ring on <math|X> then <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|content> if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>For every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>
      (finite pairwise disjoint families of sets in <math|\<cal-R\>>) we have
      <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=m><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
      (finite additivity)
    </enumerate>
  </definition>

  The following shows a simpler definition of a content on a ring

  <\theorem>
    <label|alternative definition of a content>Let <math|X> be a set,
    <math|\<cal-R\>> a ring on <math|X> then
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    content if and only if

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item><math|\<forall\>A,B\<in\>\<cal-R\>> with
      <math|A<big|cap>B=\<emptyset\>> we have
      <math|\<mu\><around*|(|A<big|sqcup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This is trivial

      <item*|<math|\<Leftarrow\>>>We prove this by induction so let
      <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|>\|<text|if
      ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><text|
      is a pairwise disjoint family of sets in >\<cal-R\>|}>> then we have\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
        is a pairwise disjoint family of sets in <math|\<cal-R\>> then
        <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>>
        proving that <math|1\<in\>\<cal-S\>>

        <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
        is a pairwise disjoint family of sets in <math|\<cal-R\>> then as
        <math|n\<in\>\<cal-S\>> we have <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>=<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|sqcup>A<rsub|n+1>>
        so that <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>=\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|sqcup>A<rsub|n+1>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>+\<mu\><around*|(|A<rsub|n+1>|)>\<equallim\><rsub|n\<in\>\<cal-S\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>|)>+\<mu\><around*|(|A<rsub|n+1>|)>=<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|A<rsub|i>|)>>
        provin that <math|n+1\<in\>\<cal-S\>>
      </description>
    </description>
  </proof>

  <\definition>
    <label|premeasure><index|premeasure>Let <math|X> be a set,
    <math|\<cal-R\>> a ring on <math|X> then
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    <with|font-series|bold|pre-measure> if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a sequence of pairwise disjoint sets in <math|\<cal-R\>> such that
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>>
      then <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      (<math|\<sigma\>>-additivity)
    </enumerate>
  </definition>

  <\note>
    From the definitions it is clear that a premeasure is also a content.
  </note>

  As we can extend a semi ring <math|\<cal-S\>> to the ring
  <math|\<cal-R\><around*|[|\<cal-S\>|]>> (see <reference|semi ring to ring>)
  it seems logical that a content (pre measure) on <math|a semi ring
  \<cal-S\>> can be extended to a content (pre measure) on
  <math|\<cal-R\><around*|[|\<cal-S\>|]>>. This is indeed true as expressed
  in the following theorem.

  <\theorem>
    <label|extending content (pre measure)>Let <math|X> be a set,
    <math|\<cal-S\>> a semi ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a content
    then there exists a content <math|\<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<nu\><rsub|\|\<cal-S\>>=\<mu\>> (<math|\<nu\>> is a
    extension of <math|\<mu\>>). If there is another content
    <math|\<omega\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<omega\><rsub|\|\<cal-S\>>=\<mu\>> then we have that
    <math|\<omega\>=\<nu\>> (the extension is unique). Also if <math|\<mu\>>
    is a finite content then <math|\<nu\>> is a finite content. Finally
    <math|\<mu\>> is a pre-measure if and only if <math|\<nu\>> is a
    pre-measure.\ 
  </theorem>

  <\notation>
    <label|extented content><index|<math|<wide|\<mu\>|\<bar\>>>>Let <math|X>
    be a set, <math|\<cal-S\>> a semi ring on <math|X> and
    <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>> a content
    then we note the content on <math|\<cal-R\><around*|[|\<cal-S\>|]>> that
    extend the content <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    by <math|<wide|\<mu\>|\<bar\>>>.
  </notation>

  <\proof>
    First we prove uniqueness, so let <math|\<nu\>,\<omega\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    be contents that extends the content <math|\<mu\>:\<cal-S\>\<rightarrow\><around*|[|0,\<infty\>|]>>.
    Let <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> then there exists a
    finite pairwise disjoint family <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of sets in <math|\<cal-S\>> such that
    <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    and thus we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><around*|(|A|)>>|<cell|\<equallim\>>|<cell|\<nu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\>
      is a content>>|<cell|<big|sum><rsub|i=1><rsup|n>\<nu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\><rsub|\|\<cal-S\>>=\<mu\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<omega\><rsub|\|\<cal-S\>>=\<mu\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<omega\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<omega\>
      is a content>>|<cell|\<omega\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<omega\><around*|(|A|)>>>>>
    </eqnarray*>

    proving that <math|\<nu\>=\<omega\>>.\ 

    Next we prove existence, let <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    then there exists a pairwise disjoint family
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of sets in <math|\<cal-S\>> such that
    <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    then if <math|\<nu\>> is a content extension to
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> we must have
    <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<nu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
    so we can use this to define <math|\<nu\>>. However we must then prove
    that this definition is unique. So let
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    be a finite pairwise disjoint family of sets in <math|\<cal-S\>> such
    that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
    then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>|<cell|\<equallim\><rsub|A<rsub|i>=A<rsub|i><big|cap>A\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap>A|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|j><rsub|>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|set
      relations> (4)>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|i><big|cap>B<rsub|j>\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|interchange
      infinite and finite sum>>>>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|j><big|cap>A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|set
      relations> (4) and A_i><big|cap>B<rsub|j>\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j><big|cap>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|B<rsub|j><big|cap><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m>\<mu\><around*|(|B<rsub|j>|)>>>>>
    </eqnarray*>

    So we have that <math|\<nu\>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
    where <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    is wel defined. If <math|A\<in\>\<cal-S\>> then
    <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    where <math|A<rsub|1>=A> so that <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|A|)>>
    proving that <math|\<nu\><rsub|\|\<cal-S\>>=\<mu\>>. The only thing left
    to prove is that <math|\<nu\>> is a content. First
    <math|\<nu\><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>,
    next if <math|A,B\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> with
    <math|A<big|cap>B=\<emptyset\>> then there exists pairwise families of
    sets in <math|\<cal-S\>> such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    and <math|B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
    Define then <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>>
    by <math|C<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> <text|if
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>>>>|<row|<cell|B<rsub|i-n> if
    i\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>>>>> then we have
    <math|A<big|cup>B=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>>
    and <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n+m|}>> with
    <math|i\<neq\>j> we have either\ 

    <\description>
      <item*|<math|i,j\<in\><around*|{|1,\<ldots\>,n|}>>>then
      <math|C<rsub|i>=A<rsub|i>\<wedge\>C<rsub|j>=A<rsub|j>\<Rightarrow\>C<rsub|i><big|cap>C<rsub|j>=A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>

      <item*|<math|i,j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>then
      <math|C<rsub|i>=B<rsub|i-n>\<wedge\>C<rsub|j>=B<rsub|j-n>\<Rightarrowlim\><rsub|i\<neq\>j\<Rightarrow\>i-n\<neq\>j-n>C<rsub|i><big|cap>C<rsub|j>=B<rsub|i-n><big|cap>B<rsub|j-n>=\<emptyset\>>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>j\<in\><around*|{|n+1,\<ldots\>,n+m|}>>>then
      <math|C<rsub|i>=A<rsub|i>\<subseteq\>A\<wedge\>C<rsub|j>=B<rsub|j=n>\<subseteq\>B\<Rightarrow\>C<rsub|i><big|cap>C<rsub|j>\<subseteq\>A<big|cap>B=\<emptyset\>>

      <item*|<math|i\<in\><around*|{|n+1,\<ldots\>,n+m|}>\<wedge\>j\<in\><around*|{|1,\<ldots\>,n|}>>>then
      <math|C<rsub|i>=B<rsub|i-n>\<subseteq\>B\<wedge\>C<rsub|j>=A<rsub|j>\<subseteq\>A\<Rightarrow\>C<rsub|i><big|cap>C<rsub|j>\<subseteq\>B<big|cap>A=\<emptyset\>>
    </description>

    proving that <math|A<big|cup>B=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><around*|(|A<big|sqcup>B|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n+m|}>>C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+m>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|C<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=n+1><rsup|n+m>\<mu\><around*|(|B<rsub|i-n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|B<rsub|n+<around*|(|i-n|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|m>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|A|)>+\<nu\><around*|(|B|)>>>>>
    </eqnarray*>

    Using <reference|alternative definition of a content> we have then that
    <math|\<nu\>> is a content.

    Also if <math|\<mu\>> is finite then if
    <math|A\<in\>\<cal-R\><around*|[|\<cal-S\>|]>> there exists a
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    such that <math|A=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    and thus by definition we have that <math|\<nu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>
    as <math|\<mu\>> is finite.

    If <math|\<nu\>> is a pre measure then we have
    <math|\<mu\><around*|(|\<emptyset\>|)>=\<nu\><around*|(|\<emptyset\>|)>=0>
    and if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
    sequence of pairwise disjoint sets in <math|\<cal-S\>> such that
    <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-S\>>
    such that <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    proving that <math|\<mu\>> is a pre measure.

    If <math|\<mu\>> is a pre measure then we have
    <math|\<nu\><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>.
    If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
    sequence of sets in <math|\<cal-R\><around*|[|\<cal-S\>|]>> with
    <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    then there exists a finite pairwise disjoint family
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    of sets in <math|\<b-S\>> such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
    and also <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> there exists a
    pairwise disjoint family <math|<around*|{|A<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>>
    of sets in <math|\<b-S\>> such that <math|A<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|i,j>>.
    Then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|B<rsub|i>>|<cell|\<equallim\><rsub|B<rsub|i>\<subseteq\>A>>|<cell|B<rsub|i><big|cap>A>>|<row|<cell|>|<cell|=>|<cell|B<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i><big|cap>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i><big|cap><around*|(|<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>>A<rsub|j,k>|\<nobracket\>>|\<nobracket\>>>>|<row|<cell|>|<cell|>|<cell|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|(|<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|i>|}>><around*|(|B<rsub|i><big|cap>A<rsub|j,k>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|union
      of a pairwise disjoint sequence of finite
      unions>>>>|<cell|<big|sqcup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>|)>
      where \<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|(|j,1|)>,\<ldots\>,<around*|(|j,n<rsub|i>|)>|}><text|
      is a bijection>>>>>
    </eqnarray*>

    As <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> we have that
    <math|B<rsub|i><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>\<in\>\<cal-S\>>
    [<math|\<cal-S\>> is a semi ring] and <math|B<rsub|i>\<in\>\<cal-S\>> we
    have by the fact that <math|\<mu\>> is a pre measure that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|B<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i><big|cap>A<rsub|\<sigma\><around*|(|j|)><rsub|1>,\<sigma\><around*|(|j|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|associativity
      of series of extended reals>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|k=1><rsup|n<rsub|j>>\<mu\><around*|(|B<rsub|i><big|cap>A<rsub|j,k>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|B<rsub|i><big|cap>A<rsub|j>=<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,n<rsub|j>|}>><around*|(|B<rsub|i><big|cap>A<rsub|j,k>|)><text|
      + >definition \<nu\>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|B<rsub|i><big|cap>A<rsub|j>|)>>>>>
    </eqnarray*>

    So we have as <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
    where <math|B<rsub|i>\<in\>\<cal-S\>> together wit the definition of
    <math|\<nu\>> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><around*|(|B<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|B<rsub|i><big|cap>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
      sum of denumerable sums>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<nu\><around*|(|B<rsub|i><big|cap>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\>
      is a content>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i><big|cap>A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)><big|cap>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|A<big|cap>A<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|j>|)>>>>>
    </eqnarray*>

    proving that <math|\<nu\>> is indeed a pre measure.
  </proof>

  The next theorem shows some basic properties of a content (and thus also of
  a pre measure) on a ring.

  <\theorem>
    <label|properties of a content>Let <math|X> be a set, <math|\<cal-R\>> a
    ring on <math|X> and <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a content then we have

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-R\>> we have
      <math|\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-R\>\<vdash\>A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>
      (monotonicity)

      <item><math|\<forall\>A,B\<in\>\<cal-R\>\<vdash\>A\<subseteq\>B\<wedge\>\<mu\><around*|(|A|)>\<less\>\<infty\>>
      we have <math|\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>>
      (subtractivity)

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\>>
      is a finite family of sets in <math|\<cal-R\>> then we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>
      (subadditivity)

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      is a sequence of pairwise disjoint sets in <math|\<cal-R\>> such that
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>>
      then <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|A<big|cup>B=A<big|cup><around*|(|B\\A|)>> (see
      <reference|set relations> (1)) and <math|A<big|cap><around*|(|B\\A|)>=\<emptyset\>>
      we have\ 

      <\equation>
        <label|eq 15.9.405>\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      Using <reference|set relations> (2) we have
      <math|B=<around*|(|A<big|cap>B|)><big|cup><around*|(|B\\A|)>> and as
      <math|<around*|(|A<big|cap>B|)><big|cap><around*|(|B\\A|)>=\<emptyset\>>
      we have

      <\equation>
        <label|eq 15.10.405>\<mu\><around*|(|B|)>=\<mu\><around*|(|A<big|cap>B|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      As <math|\<mu\>> is non negative and sum of non negative extended reals
      is always defined we can sum the expressions in <reference|eq 15.9.405>
      and <reference|eq 15.10.405> giving\ 

      <\equation>
        <label|eq 15.11.504>\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      We have now for <math|\<mu\><around*|(|A\\B|)>> either\ 

      <\description>
        <item*|<math|\<mu\><around*|(|B\\A|)>\<less\>\<infty\>>>then from
        <reference|eq 15.11.504> we have <math|\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>

        <item*|<math|\<mu\><around*|(|N\\A|)>=\<infty\>>>then
        <math|\<mu\><around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|<reference|eq
        15.9.405>>>\<infty\>> and <math|\<mu\><around*|(|B|)>\<equallim\><rsub|<text|<reference|eq
        15.10.405>>>\<infty\>> so that <math|\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<infty\>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
      </description>

      so in all cases we have\ 

      <\equation>
        <label|eq 15.12.405>\<mu\><around*|(|A<big|cup>B|)>+\<mu\><around*|(|A<big|cap>B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>
      </equation>

      <item>If <math|A,B\<in\>\<cal-R\>> with
      <math|A\<subseteq\>B\<Rightarrow\>A<big|cup>B=B> that

      <\equation>
        <label|eq 15.13.405>\<mu\><around*|(|B|)>=\<mu\><around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|<reference|eq
        15.9.405>>>\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>
      </equation>

      then for <math|\<mu\><around*|(|B\\A|)>> we must consider the following
      cases

      <\description>
        <item*|<math|\<mu\><around*|(|B\\A|)>=\<infty\>>>then
        <math|\<mu\><around*|(|B|)>=\<infty\>\<geqslant\>\<mu\><around*|(|A|)>>

        <item*|<math|\<mu\><around*|(|B\\A|)>\<less\>\<infty\>>>then for
        <math|\<mu\><around*|(|A|)>> we have either\ 

        <\description>
          <item*|<math|\<mu\><around*|(|A|)>=\<infty\>>>then we have by the
          above that <math|\<mu\><around*|(|B|)>=\<infty\>\<geqslant\>\<mu\><around*|(|A|)>>

          <item*|<math|\<mu\><around*|(|A|)>\<less\>\<infty\>>>then we have
          as <math|0\<leqslant\>\<mu\><around*|(|B\\A|)>> that
          <math|\<mu\><around*|(|B|)>\<geqslant\>\<mu\><around*|(|B|)>-\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|A|)>>
        </description>
      </description>

      so in all cases we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

      <item>As <math|A\<subseteq\>B> we have by <reference|eq 15.13.405> that
      <math|\<mu\><around*|(|B|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B\\A|)>>
      so as <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we have
      <math|\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>=\<mu\><around*|(|B\\A|)>>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      be a finite family of sets then using <reference|union as pairwise
      disjoint union> we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      where <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>|)>>>>>>\<subseteq\>A<rsub|i>>.
      Then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|\<mu\><around*|(|B<rsub|i>|)>\<leq\>\<mu\><around*|(|A<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 15.14.405><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Finally <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)>\<equallim\><rsub|finite
      additivity><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      be a sequence of pairwise disjoint sets in <math|\<cal-R\>> then
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      so that using (2) <math|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      and thus <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
    </enumerate>
  </proof>

  <\lemma>
    <label|pre-measure is denumerable subadditive>Let <math|X> be a set,
    <math|\<cal-R\>> a ring and <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a pre-measure then if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
    is such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>>
    then <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
  </lemma>

  <\proof>
    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
    be such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>>
    then there exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>> and
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    (see <reference|union in algebra as disjoint union>). So
    <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>\<equallim\><rsub|\<sigma\><text|-additivity>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    [using <reference|properties of a content> (2), together with
    <math|B<rsub|i>\<subseteq\>A<rsub|i>> and <reference|sum and order
    relation in the extented reals>].
  </proof>

  <\definition>
    <label|sigma finite content>Let <math|X> be a set, <math|\<cal-R\>> a
    ring on <math|X> then a content <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <with|font-series|bold|finite> if <math|\<forall\>R\<in\>\<cal-R\><text|
    we have >\<mu\><around*|(|R|)>\<less\>\<infty\>>. A content is called
    <math|\<sigma\>>-finite if there exists a
    <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
    such that <math|X=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>> and
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<mu\><around*|(|R<rsub|i>|)>\<less\>\<infty\>>
  </definition>

  In analogy to the notation <math|x<rsub|i>\<uparrow\>x>
  (<math|x<rsub|i>\<downarrow\>x> for a limit of increasing (decreasing)
  sequences (see <reference|notation for limit of increasing/decreasing
  sequences>) we have the following definition

  <\definition>
    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
    sequence of sets then we say that <math|A<rsub|i>\<uparrow\>A> if
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> and
    <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>, likewise
    <math|A<rsub|i>\<downarrow\>A> means that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
    <math|A=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
  </definition>

  The following theorem characterize a pre-measure and gives also a way of
  proving that a content is a pre-measure.

  <\theorem>
    <label|conditions for a pre-measure>Let <math|X> be a set
    <math|\<cal-R\>> a ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a content consider
    then the following statements

    <\enumerate>
      <item><math|\<mu\>> is a pre-measure

      <item>For every sequence <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      satisfying <math|A<rsub|i>\<uparrow\>A> where <math|A\<in\>\<cal-R\>>,
      we have <math|\<mu\><around*|(|A<rsub|i>|)>\<uparrow\>\<mu\><around*|(|A|)>>
      (see <reference|notation for limit of increasing/decreasing sequences>)
      (continuity from below)

      <item>For every sequence <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      satisfying <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|A<rsub|i>\<downarrow\>A>, where <math|A\<in\>\<cal-R\>>, we have
      <math|\<mu\><around*|(|A<rsub|i>|)>\<downarrow\>\<mu\><around*|(|A|)>>
      (see <reference|notation for limit of increasing/decreasing sequences>)
      (continuity from above)

      <item>For every sequence <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      satisfying <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> and
      <math|A<rsub|i>\<downarrow\>\<emptyset\>>, we have
      <math|\<mu\><around*|(|A<rsub|i>|)>\<downarrow\>0> (see
      <reference|notation for limit of increasing/decreasing sequences>)\ 
    </enumerate>

    then we have that <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Rightarrow\>><math|<around*|(|3|)>\<Leftrightarrow\><around*|(|4|)>>.
    Further if <math|\<mu\>> is finite then we have that
    <math|<around*|(|1|)>\<Leftrightarrow\><around*|(|2|)>\<Leftrightarrow\><around*|(|3|)>\<Leftrightarrow\><around*|(|4|)>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|<around*|(|1|)>\<Rightarrow\><around*|(|2|)>>>Given
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> of sets
      in <math|\<cal-R\>> such that <math|A<rsub|i>\<uparrow\>A> where
      <math|A\<in\>\<cal-R\>> define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1> if i\<gtr\>1>>>>>>then as
      <math|\<cal-R\>> is a ring we have <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      that <math|B<rsub|i>\<in\>\<cal-R\>> and
      <math|B<rsub|i>\<subseteq\>A<rsub|i>>. Then if
      <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> we may assume
      that <math|i\<less\>j>, assume that
      <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then
      <math|x\<in\>B<rsub|j>\<wedge\>x\<in\>B<rsub|i>>, so
      <math|x\<in\>A<rsub|i>\<wedge\>x\<in\>A<rsub|j>> as also
      <math|x\<nin\>A<rsub|j-1>\<supseteq\>A<rsub|i>\<Rightarrow\>a\<in\>A<rsub|i>>
      we reach a contradiction. So we have that\ 

      <\equation>
        <around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>> <text|is a
        pairwise disjoint sequence of sets in >\<cal-R\>
      </equation>

      Further given <math|n\<in\>\<bbb-N\><rsub|0>> we have as
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      B<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|n>> that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\>A<rsub|n>>.
      Also if <math|x\<in\>A<rsub|n>> then
      <math|n\<in\>\<cal-I\>=<around*|{|i\<in\><around*|{|1,\<ldots\>n|}>\|x\<in\>A<rsub|i>|}>\<Rightarrow\>\<cal-I\>\<neq\>\<emptyset\>>
      so that <math|j=min<around*|(|\<cal-I\>|)>> exists, we have then two
      cases for <math|j>

      <\description>
        <item*|<math|j=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>

        <item*|<math|1\<less\>j>>then <math|x\<in\>A<rsub|j>> and
        <math|x\<nin\>A<rsub|j-1>> so that
        <math|x\<in\>A<rsub|j>\\A<rsub|j-1>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      </description>

      proving that <math|A<rsub|n>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      and thus

      <\equation>
        <label|eq 15.16.405>\<forall\>n\<in\>\<bbb-N\><rsub|0> <text|we have
        >A<rsub|n>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>
      </equation>

      As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|B<rsub|i>\<subseteq\>A<rsub|i>> we have
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=A>,
      also if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      then there exist a <math|i<rsub|0>> such that
      <math|x\<in\>A<rsub|i<rsub|0>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,i<rsub|0>|}>>B<rsub|i>>
      and thus there exists a <math|j<rsub|0>\<in\><around*|{|1,\<ldots\>,i<rsub|0>|}>>
      such that <math|x\<in\>B<rsub|j<rsub|0>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
      finally proving that\ 

      <\equation>
        <label|eq 15.17.405>A=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
      </equation>

      So as <math|\<mu\>> is a measure and thus <math|\<sigma\>>-additive we
      have <math|\<mu\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
      15.16.405>>><below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>>.
      As also <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> that
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>\<Rightarrowlim\><rsub|<text|<reference|properties
      of a content>>>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i+1>|)>>
      so that <math|<around*|{|\<mu\><around*|(|A<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a increasing sequence. giving finally

      <\equation>
        <label|eq 15.18.405>\<mu\><around*|(|A<rsub|i>|)>\<uparrow\>\<mu\><around*|(|A|)>
      </equation>

      <item*|<math|<around*|(|2|)>\<Rightarrow\><around*|(|1|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
      sequence of pairwise disjoint sets in <math|\<cal-R\>> is such that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>>,
      define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>>
      then we have trivially that <math|A<rsub|i>\<subseteq\>B<rsub|i>> so
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
      If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>> then
      <math|\<exists\>i<rsub|0>\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\>B<rsub|i<rsub|0>>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i<rsub|0>|}>>A<rsub|j>>,
      so there exists a <math|j<rsub|0>\<in\><around*|{|1,\<ldots\>,i<rsub|0>|}>\<subseteq\>\<bbb-N\><rsub|0>>
      with <math|x\<in\>A<rsub|j<rsub|0>>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      and thus

      <\equation>
        <label|eq 15.19.406><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
      </equation>

      As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|i>=B<rsub|i+1>>
      we have that<space|1em>

      <\equation>
        B<rsub|i>\<uparrow\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>
      </equation>

      and thus by (2) that <math|\<mu\><around*|(|B<rsub|i>|)>\<uparrow\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>,
      as <math|\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j>|)>=<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>>
      we have thus that <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      proving (1).

      <item*|<math|<around*|(|2|)>\<Rightarrow\><around*|(|3|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
      sequence of sets in <math|\<cal-R\>> with
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> such that
      <math|A<rsub|i>\<downarrow\>A> where <math|A\<in\>\<Rho\>> then
      \ <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|1>\\A<rsub|i>\<subseteq\>A<rsub|1>\\A<rsub|i+1>> and
      <math|A<rsub|1>\\A=A<rsub|1>\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|1>\\A<rsub|i>|)>>
      proving

      <\equation>
        <label|eq 15.21.406><around*|(|A<rsub|1>\\A<rsub|i>|)>\<uparrow\><around*|(|A<rsub|1>\\A|)>\<Rightarrowlim\><rsub|<around*|(|2|)>>\<mu\>*<around*|(|A<rsub|1>\\A<rsub|i>|)>\<uparrow\>\<mu\><around*|(|A<rsub|1>\\A|)>
      </equation>

      As <math|\<forall\>i\<in\>A<rsub|i>> we have
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> we have by
      theorem <reference|properties of a content> that
      <math|\<mu\><around*|(|A<rsub|1>\\A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>>,
      further from <math|A\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>A<rsub|1>>
      we have using theorem <reference|properties of a content> that
      <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      and using <reference|properties of a content> again we have then
      <math|\<mu\><around*|(|A<rsub|1>\\A|)>=\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A|)>>.
      Applying then <reference|eq 15.21.406> we get
      <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals> and <reference|limit of constant
      extented real>>>\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A|)>>
      which as <math|\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>> proves
      that <math|\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
      As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> we have by<reference|properties
      of a content> that <math|\<mu\><around*|(|A<rsub|i+1>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>>
      which finally proves that\ 

      <\equation>
        <label|eq 15.22.407>\<mu\><around*|(|A<rsub|i>|)>\<downarrow\>\<mu\><around*|(|A|)>
      </equation>

      <item*|<math|<around*|(|3|)>\<Rightarrow\><around*|(|4|)>>>this is
      trivial as <math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item*|<math|<around*|(|4|)>\<Rightarrow\><around*|(|3|)>>>Let
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
      sequence of sets in <math|\<cal-R\>> with
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>> such that
      <math|A<rsub|i>\<downarrow\>A> where <math|A\<in\>\<cal-R\>>. Then
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>\<Rightarrow\>A<rsub|i+1>\\A\<subseteq\>A<rsub|i>\\<rsub|>A>
      which together with <math|\<emptyset\>=A\\A=<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\\A=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i>\\A|)>>
      proves that <math|<around*|(|A<rsub|i>\\A|)>\<downarrow\>\<emptyset\>>.
      By (4) we have then <math|\<mu\><around*|(|A<rsub|i>\\A|)>\<downarrow\>0>
      and thus that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>\\A|)>=0>.
      Now as <math|A=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>A<rsub|1>>
      we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      we have by <reference|properties of a content> that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> that
      <math|\<mu\><around*|(|A<rsub|i>\\A|)>=\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>>
      proving that <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|A|)>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>\\A|)>=0>.
      This together with the fact that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      we have <math|\<mu\><around*|(|A<rsub|i+1>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>>
      proves finally that\ 

      <\equation>
        <label|eq 15.23.407>\<mu\><around*|(|A<rsub|i>|)>\<downarrow\>\<mu\><around*|(|A|)>
      </equation>
    </description>

    For the last part of the theorem we prove that
    <math|<around*|(|4|)>\<Rightarrow\><around*|(|2|)>> under the assumption
    that <math|\<mu\>> is finite. Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    be a sequence of of sets in <math|\<cal-R\>> such that
    <math|A<rsub|i>\<uparrow\>A> where <math|A\<in\>\<cal-R\>>. Then we have
    <math|\<forall\>i\<in\>A<rsub|i>> that
    <math|A\\A<rsub|i+1>\<subseteq\>A\\A<rsub|i>> and also as <math|\<mu\>>
    is finite that <math|\<mu\><around*|(|A\\A<rsub|i>|)>=\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|i>|)>>.
    As <math|\<emptyset\>=A\\A=A\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=A<big|cap><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i><rsup|c>|)>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>A<rsub|i><rsup|c>|)>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A\\A<rsub|i>|)>>
    we have <math|<around*|(|A\\A<rsub|i>|)>\<downarrow\>\<emptyset\>> and
    thus by (4) we have that <math|\<mu\><around*|(|A\\A<rsub|i>|)>\<downarrow\>0>
    so that <math|\<mu\><around*|(|A|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A|)>-\<mu\><around*|(|A<rsub|i>|)>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A\\A<rsub|i>|)>=0>
    proving that <math|\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|i>\<subseteq\>A<rsub|i+1>\<Rightarrow\>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i+1>|)>>
    we have proved that

    <\equation>
      <label|eq 15.24.407>\<mu\><around*|(|A<rsub|i>|)>\<uparrow\>\<mu\><around*|(|A|)>
    </equation>
  </proof>

  The above theorem can be used to prove that a content on a ring can is a
  pre-measure if the ring can be aproximated by a compact class (see
  <reference|countable compact class>). First we need a little lemma used in
  the limiting process.

  <\lemma>
    If <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|<big|sum><rsub|i=1><rsup|n><frac|1|2<rsup|i>>=1-<frac|1|2<rsup|n>>>
  </lemma>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<big|sum><rsub|i=1><rsup|n><frac|1|2<rsup|i>>=1-<frac|1|2<rsup|n>>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>><math|<big|sum><rsub|i=1><rsup|1><frac|1|2<rsup|i>>=<frac|1|2>=1-<frac|1|2<rsup|1>>>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>><math|<big|sum><rsub|i=1><rsup|n+1><frac|1|2<rsup|i>>=<around*|(|<big|sum><rsub|i=1><rsup|n><frac|1|2<rsup|i>>|)>+<frac|1|2<rsup|n+1>>\<equallim\><rsub|n\<in\>\<cal-S\>><around*|(|1-<frac|1|2<rsup|n>>|)>+<frac|1|2<rsup|n+1>>=1+<frac|1-2|2<rsup|n+1>>=1-<frac|1|2<rsup|n+1>>>
      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\theorem>
    <label|condition for pre-measure on a ring>Let <math|X> be a set,
    <math|\<cal-R\>> a ring on <math|X>, <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>>
    a finite content. If there exists a countable class <math|\<cal-K\>> (see
    <reference|countable compact class>) that approximate <math|\<cal-A\>> in
    the following sence, <math|\<forall\>A\<in\>\<cal-R\>> and
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there
    <math|\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-K\>> and
    <math|\<exists\>B<rsub|\<varepsilon\>>\<in\>\<cal-A\>> such that
    <math|B<rsub|\<varepsilon\>>\<subseteq\>K\<varepsilon\>\<subseteq\>A> and
    <math|\<mu\><around*|(|A\\B<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>>,
    then <math|\<mu\>> is a pre-measure.
  </theorem>

  <\proof>
    Suppose that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|A<rsub|i>\<downarrow\>\<emptyset\>> then we must by
    <reference|conditions for a pre-measure> prove that
    <math|\<mu\><around*|(|A<rsub|i>|)>\<downarrow\>0> to prove this theorem.
    So take <math|\<varepsilon\>\<gtr\>0> then by the assumption
    <math|\<exists\><around*|{|K<rsub|n,\<varepsilon\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-K\>>
    and <math|<around*|{|B<rsub|n,\<varepsilon\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|n,\<varepsilon\>>\<subseteq\>K<rsub|n,\<varepsilon\>>\<subseteq\>A<rsub|n>>
    and <math|\<mu\><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>>|)>\<less\><frac|\<varepsilon\>|2<rsup|n>>>.
    So <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>K<rsub|n,\<varepsilon\>>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>=\<emptyset\>>
    and thus by the definition of a compact class (see <reference|countable
    compact class>) there exists a <math|N<rsub|\<varepsilon\>>\<in\>\<bbb-N\><rsub|0>>
    such that <math|<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>K<rsub|n,\<varepsilon\>>=\<emptyset\>>
    giving as <math|><math|<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>B<rsub|n,\<varepsilon\>>\<subseteq\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>K<rsub|n.\<varepsilon\>>>

    <\equation>
      <label|eq 15.32.429>\<exists\>N<rsub|\<varepsilon\>>\<in\>\<bbb-N\><rsub|0><text|
      such that ><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>B<rsub|n,\<varepsilon\>>=<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>K<rsub|n.\<varepsilon\>>=\<emptyset\>
    </equation>

    As <math|<around*|{|A<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> is
    decreasing we have <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>
    that <math|A<rsub|N<rsub|\<varepsilon\>>>\<subseteq\>A<rsub|i>> so that
    <math|A<rsub|N<rsub|\<varepsilon\>>>\<subseteq\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|i>\<subseteq\>A<rsub|N<rsub|\<varepsilon\>>>>
    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<label|eq
      15.33.429>A<rsub|N<rsub|\<varepsilon\>>>=<big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|i><eq-number>>>>>
    </eqnarray*>

    Take <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>A<rsub|i>>
    and assume that <math|x\<nin\><big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>><rsub|>|)>>
    then <math|\<forall\>n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>
    we have <math|x\<nin\>A<rsub|n>\\B<rsub|n,\<varepsilon\>>\<Rightarrowlim\><rsub|x\<in\>A<rsub|n>>x\<in\>B<rsub|n,\<varepsilon\>>>
    so that <math|x\<in\><big|cap><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>>B<rsub|n,\<varepsilon\>>\<equallim\><rsub|<text|<reference|eq
    15.32.429>>>\<emptyset\>> a contradiction, so we must have that
    <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>>|)>>,
    proving using <reference|eq 15.33.429> that\ 

    <\equation>
      <label|eq 15.34.429>A<rsub|N<rsub|\<varepsilon\>>>=<big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>>|)>\<in\>\<cal-R\><text|
      [as <math|\<cal-R\>> is a ring]>
    </equation>

    As by <reference|properties of a content> (2) and (4) <math|\<mu\>> is
    monotone and subadditive we have using the above that
    <math|\<mu\><around*|(|A<rsub|N<rsub|\<varepsilon\>>>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|n\<in\><around*|{|1,\<ldots\>,N<rsub|\<varepsilon\>>|}>><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>>|)>|)>\<leqslant\><big|sum><rsub|i=1><rsup|N<rsub|\<varepsilon\>>>\<mu\><around*|(|A<rsub|n>\\B<rsub|n,\<varepsilon\>>|)>\<leqslant\><big|sum><rsub|n=1><rsup|N<rsub|\<varepsilon\>>><frac|\<varepsilon\>|2<rsup|N<rsub|\<varepsilon\>>>>=\<varepsilon\>\<cdot\><around*|(|1-<frac|1|2<rsup|N<rsub|\<varepsilon\>>>>|)>\<less\>\<varepsilon\>>.
    So we have proved that given <math|\<varepsilon\>\<gtr\>0> there exists a
    <math|N<rsub|\<varepsilon\>>> such that if
    <math|n\<geqslant\>N<rsub|\<varepsilon\>>> then
    <math|<around*|\||\<mu\><around*|(|A<rsub|n>|)>-0|\|>=\<mu\><around*|(|A<rsub|n>|)>\<leqslant\>\<mu\><around*|(|A<rsub|N<rsub|\<varepsilon\>>>|)>\<less\>\<varepsilon\>>
    which proves that <math|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>=0>
    and thus that <math|\<mu\><around*|(|A<rsub|n>|)>\<downarrow\>0>
  </proof>

  We can extend the above theorem to the ring generated by a semi ring and
  the extended content on this ring.

  <\corollary>
    <label|condition for pre-measure on a ring generated by a semi ring>Let
    <math|X> be a set, <math|\<cal-K\>> a compact class such that
    <math|\<forall\><around*|{|K<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-K\><rsub|>>
    we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i>\<in\>\<cal-K\>>,
    <math|\<cal-S\>> a semi ring on <math|X> and
    <math|\<mu\>:X\<rightarrow\><around*|[|0,\<infty\>|]>> a finite content.
    If <math|\<forall\>A\<in\>\<cal-S\>> and
    <math|\<forall\>\<varepsilon\>\<gtr\>0> there
    <math|\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-K\>>,
    <math|\<exists\>B<rsub|\<varepsilon\>>> such that
    <math|B<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A>
    and <math|\<mu\><around*|(|A|)>-\<mu\><around*|(|B<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>>
    then <math|<wide|\<mu\>|\<bar\>>:\<cal-R\><around*|[|\<cal-S\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    (the unique content that extend <math|\<mu\>> to a content on the ring
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> (see <reference|extending content
    (pre measure)>)) is a pre-measure.
  </corollary>

  <\proof>
    Let <math|A\<in\>\<cal-F\><around*|[|\<cal-S\>|]>> and
    <math|\<varepsilon\>\<gtr\>0> then by the definition of
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> there exists a
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
    By the hypothese we have then that there exists
    <math|<around*|{|B<rsub|i,\<varepsilon\>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    and <math|<around*|{|K<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|B<rsub|i,\<varepsilon\>>\<subseteq\>K<rsub|i,\<varepsilon\>>\<subseteq\>A<rsub|i>>
    and <math|\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|B<rsub|i,\<varepsilon\>>|)>\<less\><frac|\<varepsilon\>|2<rsup|n>>>.
    Define then <math|K<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>K<rsub|i,\<varepsilon\>>\<in\>\<cal-K\>>
    (by the hypothese) and <math|B<rsub|\<varepsilon\>>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i,\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>>
    [as <math|\<cal-S\>\<subseteq\>\<cal-R\><around*|[|\<cal-S\>|]>> and
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> is a ring and thus
    <math|\<cup\>>-stable). Then we have\ 

    <\equation>
      <label|eq 15.35.429>B<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>A
      where K<rsub|\<varepsilon\>>\<in\>\<cal-K\><text| and
      >B<rsub|\<varepsilon\>>\<in\>\<cal-R\><around*|[|\<cal-S\>|]>
    </equation>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|A\\B<rsub|\<varepsilon\>>>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j,\<varepsilon\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\B<rsub|j,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|A<rsub|i>\\B<rsub|i,\<varepsilon\>>|)>>>>>
    </eqnarray*>

    So as <math|<wide|\<mu\>|\<bar\>>> is a content on the ring
    <math|\<cal-R\><around*|[|\<cal-S\>|]>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|\<mu\>|\<bar\>><around*|(|A\\B<rsub|\<varepsilon\>>|)>>|<cell|\<leqslant\><rsub|<text|<reference|properties
      of a content> (2)>>>|<cell|<wide|\<mu\>|\<bar\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A\\B<rsub|\<varepsilon\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><wide|\<mu\>|\<bar\>><around*|(|A<rsub|i>\\B<rsub|i,\<varepsilon\>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of a content> (3) and >B<rsub|i,\<varepsilon\>>\<subseteq\>A<rsub|i>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|<wide|\<mu\>|\<bar\>><around*|(|A<rsub|i>|)>-<wide|\<mu\>|\<bar\>><around*|(|B<rsub|i,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<wide|\<mu\>|\<bar\>><text|
      is a extension of >\<mu\>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<mu\><around*|(|A<rsub|i>|)>-\<mu\><around*|(|B<rsub|i,\<varepsilon\>>|)>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<big|sum><rsub|i=1><rsup|n><frac|\<varepsilon\>|2<rsup|n>>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\><around*|(|1-<frac|1|n>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 15.36.429><wide|\<mu\>|\<bar\>><around*|(|A\\B<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>
    </equation>

    Using <reference|eq 15.35.429> and <reference|eq 15.36.429> together with
    <reference|condition for pre-measure on a ring> proves then the theorem.
  </proof>

  <\definition>
    <label|measure><index|measure><index|measure space>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    (see <reference|measurable space>) then a pre-measure
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is called
    a <with|font-series|bold|measure>. The triple
    <math|<around*|\<langle\>|X,A,\<mu\>|\<rangle\>>> where <math|X> is a
    set, <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a pseudo
    measure (thus by definition a measure) is called a
    <with|font-series|bold|measure space>. If
    <math|\<mu\><around*|(|X|)>\<less\>\<infty\>> then <math|\<mu\>> is
    called a finite measure (and from the monotonicity of <math|\<mu\>> we
    have then that <math|\<forall\>A\<in\>\<cal-A\>> we have
    <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>).
  </definition>

  It is easy to prove that the product of a measure and a scalar is again a
  pre-measure as proved in the following lemma.

  <\lemma>
    <label|product of a scalar and a measure is a measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
    <math|<around*|\<langle\>|X,\<cal-A\>,\<alpha\>\<cdot\>\<mu\>|\<rangle\>>>,
    where <math|\<alpha\>\<cdot\>\<mu\><around*|{|\<b-A\>\<rightarrow\><around*|[|0,\<infty\>|]>|\<nobracket\>>>
    is defined by <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>>,
    is a measure space.
  </lemma>

  <\proof>
    First <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|\<emptyset\>|)>=\<alpha\>\<cdot\>\<mu\><around*|(|\<emptyset\>|)>=\<alpha\>\<cdot\>0>
    and secondly if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    is a pairwise distinct family then <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>A<rsub|i>>|)>=\<alpha\>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<alpha\>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A<rsub|i>|)>>
  </proof>

  On normed spaces we have the concept of transaltion invariant measures.

  <\definition>
    <index|translate invariant measure>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space with normed topology <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>
    then a measure <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <with|font-series|bold|translation invariant> if
    <math|\<forall\>x\<in\>X> and <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
    we have that <math|\<mu\><around*|(|A+x|)>=\<mu\><around*|(|A|)>> [Note
    that by <reference|Borel set+x> <math|A+x\<in\>\<cal-B\><around*|[|X,<around*|\<\|\|\>||\<\|\|\>>|]>>
    so the definition makes sense).
  </definition>

  The following theorem shows how given a measure space we can create a
  restricted measure space.

  <\theorem>
    <label|restricted measures>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then\ 

    <\enumerate>
      <item><math|<around*|\<langle\>|X,\<cal-A\>,\<mu\><rsub|<around*|[|A|]>>|\<rangle\>>>
      where <math|A\<in\>\<cal-A\>> and <math|\<mu\><rsub|<around*|[|A|]>>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is defined by <math|\<mu\><rsub|<around*|[|A|]>><around*|(|B|)>=\<mu\><around*|(|A<big|cap>B|)>>
      is a measure space

      <item><math|<around*|\<langle\>|A,\<cal-A\><big|cap>A,\<mu\><rsub|\|\<cal-A\><big|cap>A>|\<rangle\>>>
      where <math|A\<in\>\<cal-A\>> and <math|\<cal-A\><big|cap>A=<around*|{|B<big|cap>A\|B\<in\>\<cal-A\>|}>>
      is a measure space
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First <math|\<mu\><rsub|<around*|[|A|]>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|A<big|cap>\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>,
      second if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a pairwise disjoint family of sets in <math|\<cal-A\>> then
      <math|\<mu\><rsub|<around*|[|A|]>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>A|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>A|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i><big|cap>A|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|<around*|[|A|]>><around*|(|A<rsub|i>|)>>

      <item>Using <reference|restricted algebra> we have that
      <math|\<cal-A\><big|cap>A> is a <math|\<sigma\>>-algebra on <math|A>.
      Next <math|\<mu\><rsub|\|\<cal-A\><big|cap>A><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>
      and finally if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a pairwise disjoint family of sets in <math|\<cal-A\><big|cap>A>
      then <math|\<mu\><rsub|\|\<cal-A\><big|cap>A><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|\|\<cal-A\><big|cap>A><around*|(|A<rsub|i>|)>>.
    </enumerate>
  </proof>

  <\lemma>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space, <math|<around*|{|A<rsub|i>|}><rsub|i
    \<in\>\<bbb-N\><rsub|0>>> a sequence of sets in <math|\<cal-A\>> such
    that there exists a <math|k\<in\>\<bbb-N\><rsub|0>> such that
    <math|A<rsub|n><big|cap>A<rsub|m>=\<emptyset\>> whenever
    <math|k\<leqslant\><around*|\||m-n|\|>> then
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|n>|)>\<leqslant\>k\<cdot\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
  </lemma>

  <\proof>
    Let <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
    [as <math|\<cal-A\>> is a <math|\<sigma\>>-algebra]. Take
    <math|r\<in\><around*|{|1,\<ldots\>,k|}>>
    <math|<around*|{|A<rsub|r+<around*|(|n-1|)>\<cdot\>k>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    then for every <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> we
    have <math|<around*|\||i-j|\|>\<gtr\>0\<Rightarrow\><around*|\||i-j|\|>\<geqslant\>1>
    and thus <math|<around*|\||r+<around*|(|j-1|)>\<cdot\>k-<around*|(|r+<around*|(|j-1|)>\<cdot\>k|)>|\|>=<around*|\||<around*|(|j-i|)>\<cdot\>k|\|>=<around*|\||k|\|>\<cdot\><around*|\||i-j|\|>\<geqslant\>k\<cdot\>1=k>
    proving by the hypothese that <math|<around*|{|A<rsub|r+<around*|(|n-1|)>\<cdot\>k>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    is a pairwise disjoint sequence of sets in <math|\<cal-A\>>. So if
    <math|F<rsub|r>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|r+<around*|(|i-1|)>\<cdot\>k>>
    then we have\ 

    <\equation>
      <label|eq 15.25.407>\<mu\><around*|(|F<rsub|r>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|r+<around*|(|i-1|)>\<cdot\>k>|)>
    </equation>

    Now given <math|x\<in\><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|r+<around*|(|i-1|)>\<cdot\>k>>
    there exists a <math|i<rsub|0>\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|r+<around*|(|i<rsub|0>-1|)>\<cdot\>k>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    proving that <math|F<rsub|r>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|r+<around*|(|i-1|)>\<cdot\>k>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    and\ 

    <\equation>
      <label|eq 15.26.407>\<mu\><around*|(|F<rsub|r>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>
    </equation>

    Using the above we have \ <math|<big|sum><rsub|r=1><rsup|k>\<mu\><around*|(|F<rsub|r>|)>\<leqslant\><big|sum><rsub|r=1><rsup|k>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=k\<cdot\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>,
    so by <reference|eq 15.25.407> we have\ 

    <\equation>
      <label|eq 15.27.411><big|sum><rsub|r=1><rsup|k><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|r+<around*|(|i-1|)>\<cdot\>k><rsub|>|)>|)>\<leqslant\>k\<cdot\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>
    </equation>

    Now <math|\<forall\>r\<in\><around*|{|1,\<ldots\>,k|}>> define
    <math|\<sigma\><rsub|r>:\<bbb-N\><rsub|0>\<rightarrow\>\<sigma\><rsub|r><around*|(|\<bbb-N\><rsub|0>|)>>
    by <math|n\<rightarrow\>\<sigma\><around*|(|n|)>=r+<around*|(|n-1|)>\<cdot\>k>
    then we have <math|\<forall\>n,m\<in\>\<bbb-N\><rsub|0>> with
    <math|r+<around*|(|n-1|)>\<cdot\>k=r+<around*|(|m-1|)>\<cdot\>k> that
    <math|<around*|(|n-1|)>\<cdot\>k=<around*|(|m-1|)>\<cdot\>k\<Rightarrowlim\><rsub|k\<neq\>0>n=m>
    proving that\ 

    <\equation>
      <label|eq 15.28.411>\<forall\>r\<in\><around*|{|1,\<ldots\>,k|}><text|
      we have that >\<sigma\><rsub|i>:\<bbb-N\><rsub|0>\<rightarrow\>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)><text|
      is a bijection>
    </equation>

    Further for every <math|i,j\<in\><around*|{|1,\<ldots\>,k|}>> with
    <math|i\<neq\>j> we may assume without loosing generality that
    <math|i\<less\>j>. Then if <math|k\<in\>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)><big|cap>\<sigma\><rsub|j><around*|(|\<bbb-N\><rsub|0>|)>>,
    there exists <math|n,m\<in\>\<bbb-N\><rsub|0>> such that
    <math|i+<around*|(|n-1|)>\<cdot\>k=j+<around*|(|m-1|)>\<cdot\>k\<Rightarrow\>0\<less\><around*|(|j-i|)>=<around*|(|m-n|)>\<cdot\>k>
    proving as <math|k\<geqslant\>1> that <math|m\<gtr\>n> and thus that
    <math|m-n\<gtr\>0\<Rightarrow\>m-n\<geqslant\>1>, so that
    <math|<around*|(|j-i|)>=<around*|(|m-n|)>\<cdot\>k\<geqslant\>k>. However
    <math|i\<geqslant\>1> and <math|j\<leqslant\>k> so that
    <math|j-i\<leqslant\>k-1> giving the contradiction
    <math|k\<leqslant\>k-1\<less\>k>. So we conclude that

    <\equation>
      <label|eq 15.29\<point\>411>\<forall\>i,j\<in\><around*|{|1,\<ldots\>,k|}>\<vdash\>i\<neq\>j<text|
      we have >\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)><big|cap>\<sigma\><rsub|j><around*|(|\<bbb-N\><rsub|0>|)>=\<emptyset\>
    </equation>

    If <math|i\<in\>\<bbb-N\><rsub|0>> then using division (see
    <reference|division algorithm for natural numbers>) there exists a
    <math|n\<in\>\<bbb-N\>> and <math|r\<in\>\<bbb-N\>> with
    <math|r\<less\>k> such that <math|i=n\<cdot\>k+r> we have then to
    consider the following cases for <math|r>

    <\description>
      <item*|<math|r=0>>then <math|i=n\<cdot\>k> so as <math|i\<geqslant\>1>
      we must have <math|n\<gtr\>0\<Rightarrow\>n\<geqslant\>1> so that
      <math|i=<around*|(|n-1|)>\<cdot\>k+k=\<sigma\><rsub|k><around*|(|n|)>>

      <item*|<math|r\<gtr\>0>>then <math|i=n\<cdot\>k+r=<around*|(|<around*|(|n+1|)>-1|)>\<cdot\>k+r=\<sigma\><rsub|r><around*|(|n+1|)>>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 15.30.411><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>\<sigma\><rsub|i><around*|(|\<bbb-N\><rsub|0>|)>=\<bbb-N\><rsub|0>
    </equation>

    Now <reference|eq 15.28.411>,<reference|eq 15.29\<point\>411> and
    <math|<reference|eq 15.30.411>> are the requirements for the
    associativity of series (see <reference|associativity of inifinite
    series>) proving that <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|k><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|\<sigma\><rsub|i><around*|(|j|)>>|)>|)>=<big|sum><rsub|i=1><rsup|k><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i+<around*|(|j-1|)>\<cdot\>k>|)>|)>\<leqslant\><rsub|<text|<reference|eq
    15.27.411>>>k\<cdot\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
    which proves the lemma.
  </proof>

  <subsection|Extending a pre-measure to a measure on a
  <math|\<sigma\>>-algebra>

  In this section we will find a way to exetend a pre-measure on a ring to a
  measure on the <math|\<sigma\>> algebra generated by this ring. First we
  show a condition for the extended measures to be unique.

  <\theorem>
    <label|uniqueness of measaures>Let <math|X> be a set
    <math|\<cal-F\>\<subseteq\>\<cal-P\><around*|(|X|)>>,
    <math|\<mu\>,\<nu\>> measures on <math|\<sigma\><around*|[|\<cal-F\>|]>>
    such that\ 

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-F\>> we have
      <math|A<big|cap>B\<in\>\<cal-F\>> [<math|\<cal-F\>> is
      <math|\<cap\>>-stable]

      <item><math|\<forall\>A\<in\>\<cal-F\>> we have
      <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>>

      <item><math|\<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-F\>>
      such that <math|A<rsub|i>\<uparrow\>X><space|1em>and
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<mu\><around*|(|A<rsub|i>|)>,\<nu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>>
    </enumerate>

    then <math|\<mu\>=\<nu\>>
  </theorem>

  <\proof>
    For <math|j\<in\>\<bbb-N\><rsub|0>> define\ 

    <\equation>
      <label|eq 15.43.439>\<cal-D\><rsub|j>=<around*|{|A\<in\>\<sigma\><around*|[|\<cal-F\>|]>\|\<mu\><around*|(|A<rsub|j><big|cap>A|)>=\<nu\><around*|(|A<rsub|j><big|cap>A|)>|}>\<subseteq\>\<sigma\><around*|[|\<cal-F\>|]>
    </equation>

    We prove now that <math|\<cal-D\><rsub|j>> is a Dynkin system:

    <\enumerate>
      <item>We have <math|\<mu\><around*|(|X<big|cap>A<rsub|j>|)>=\<mu\><around*|(|A<rsub|j>|)>\<equallim\><rsub|A<rsub|j>\<in\>\<cal-F\>>\<nu\><around*|(|A<rsub|j>|)>=\<nu\><around*|(|X<big|cap>A<rsub|j>|)>>
      proving that <math|X\<in\>\<cal-D\><rsub|j>>

      <item>If <math|A\<in\>\<cal-D\><rsub|j>> then
      <math|<around*|(|X\\A|)><big|cap>A<rsub|j>=X<big|cap>A<rsup|c><big|cap>A<rsub|j>=A<rsub|j><big|cap>A<rsup|c>=A<rsub|j>\\A\<equallim\><rsub|<text|<reference|set
      relations>>>A<rsub|j>\\<around*|(|A<rsub|j><big|cap>A|)>>, as
      <math|\<mu\><around*|(|A<rsub|j><big|cap>A|)>\<leqslant\>\<mu\><around*|(|A<rsub|j>|)>\<less\>\<infty\>>
      and <math|\<nu\><around*|(|A<rsub|j><big|cap>A|)>\<leqslant\>\<nu\><around*|(|A<rsub|j>|)>\<less\>\<infty\>>
      [using <reference|properties of a content>] so we have
      <math|\<mu\><around*|(|<around*|(|X\\A|)><big|cap>A<rsub|j>|)>=\<mu\><around*|(|A<rsub|j>\\<around*|(|A<rsub|j><big|cap>A|)>|)>\<equallim\><rsub|<text|<reference|properties
      of a content> (3)>>\<mu\><around*|(|A<rsub|j>|)>-\<mu\><around*|(|A<rsub|j><big|cap>A|)>\<equallim\><rsub|A\<in\>\<cal-D\><rsub|j>,A<rsub|j>\<in\>\<cal-F\>>\<nu\><around*|(|A<rsub|j>|)>-\<nu\><around*|(|A<rsub|j><big|cap>A|)>=\<nu\><around*|(|A<rsub|j>\\<around*|(|A<rsub|j><big|cap>A|)>|)>=\<nu\><around*|(|<around*|(|X\\A|)><big|cap>A<rsub|j>|)>>
      proving that <math|X\\A\<in\>\<cal-D\><rsub|j>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsub|j>>
      is a pairwise disjoint family of sets then
      <math|\<mu\><around*|(|A<rsub|j><big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|j><big|cap>A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|j><big|cap>A<rsub|i>|)>\<equallim\><rsub|A<rsub|i>\<in\>\<cal-D\><rsub|j>>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|j><big|cap>A<rsub|i>|)>=\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|j><big|cap>A<rsub|i>|)>|)>=\<nu\><around*|(|A<rsub|j><big|cap><big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      proving that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\><rsub|j>>
    </enumerate>

    From the <math|\<cap\>>-stability of <math|\<cal-F\>> it follows from
    <reference|if A is closed under intersection then S(A)=D(A)> that
    <math|\<cal-D\><around*|[|\<cal-F\>|]>=\<sigma\><around*|[|\<cal-F\>|]>>.
    Next if <math|A\<in\>\<cal-F\>> then as <math|\<cal-F\>> is
    <math|\<cap\>>-stable we have that <math|A<rsub|j><big|cap>A<rsub|>\<in\>\<cal-F\>>
    so that <math|\<mu\><around*|(|A<rsub|j><big|cap>A|)>=\<nu\><around*|(|A<rsub|j><big|cap>A|)>>
    proving that <math|A\<in\>\<cal-D\><rsub|j>> and thus that
    <math|\<cal-F\>\<subseteq\>\<cal-D\><rsub|j>>. Using <reference|Dynkin
    system generator> we have then that <math|\<cal-D\><around*|[|\<cal-F\>|]>\<subseteq\>\<cal-D\><rsub|j>\<subseteq\>\<sigma\><around*|[|\<cal-F\>|]>=\<cal-D\><around*|[|\<cal-F\>|]>>
    proving that <math|\<cal-D\><rsub|j>=\<sigma\><around*|[|\<cal-F\>|]>>
    hence using the definition of <math|\<cal-D\><rsub|j>> we have that\ 

    <\equation>
      <label|eq 15.44.440>\<forall\>A\<in\>\<sigma\><around*|[|\<cal-F\>|]>
      we have \<forall\>j\<in\>\<bbb-N\><rsub|0> <text|that
      >\<mu\><around*|(|A<rsub|j><big|cap>A|)>=\<nu\><around*|(|A<rsub|j><big|cap>A|)>
    </equation>

    \ 

    \;

    Now if <math|A\<in\>\<sigma\><around*|[|\<cal-F\>|]>> then as
    <math|A<rsub|i>\<uparrow\>X> we have <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    that <math|A<rsub|i>\<subseteq\>A<rsub|i+1>\<Rightarrow\>A<rsub|i><big|cap>A\<subseteq\>A<rsub|i+1><big|cap>A>
    and <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=X\<Rightarrow\>A=X<big|cap>A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>A|)>>
    proving that\ 

    <\equation>
      <label|eq 15.45.440><around*|(|A<rsub|i><big|cap>A|)>\<uparrow\>A
    </equation>

    Finally we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      15.45.440> together with <reference|conditions for a
      pre-measure>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i><big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      15.44.440>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|A<rsub|i><big|cap>A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      15.45.440> together with <reference|conditions for a
      pre-measure>>>>|<cell|\<nu\><around*|(|A|)>>>>>
    </eqnarray*>

    which proves that <math|\<mu\>=\<nu\>>.
  </proof>

  To prove the existence of a measure that extends a pre-measure on a ring we
  need the definiton of a outer measure.

  <\definition>
    <index|outer measure>Let <math|X> be a set then a set function
    <math|\<mu\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is called a outer measure iff the following is satisfied

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item><math|\<forall\>A,B\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B> we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      we have <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      (<math|\<sigma\>>-subadditivity)
    </enumerate>
  </definition>

  Note that if <math|A,B\<in\>\<cal-P\><around*|(|X|)>> then by defining
  <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
  <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if i=1>>|<row|<cell|B
  if i=2>>|<row|<cell|\<emptyset\>>>>>>> then we have
  <math|\<mu\><around*|(|A<big|cup>B|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,2|}>>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|3,\<ldots\>,\<infty\>|}>>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
  proving that\ 

  <\lemma>
    <label|consequence of definition of outer measure>Let <math|X> be a set
    and <math|\<mu\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|\<forall\>A,B\<in\>\<cal-P\><around*|(|X|)>>
    we have <math|\<mu\><around*|(|A<big|cup>B|)>\<leqslant\>\<mu\><around*|(|A|)>+\<mu\><around*|(|B|)>>
  </lemma>

  Given a outer measure <math|\<mu\>> we define then the concept of a
  <math|\<mu\>>-measurable set as follows\ 

  <\definition>
    <index|<math|\<mu\>>-measurable set><index|<math|X<rsup|<around*|(|\<mu\>|)>>>>Let
    <math|X> be a set, <math|\<mu\>:\<cal-P\><around*|[|X|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|A\<in\>\<cal-P\><around*|[|X|]>> is
    <math|\<mu\>>-measurable iff <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>>
    we have <math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B|)>>.
    We note the set of <math|\<mu\>>-measurable as
    <math|X<rsup|<around*|(|\<mu\>|)>>> so
    <math|X<rsup|<around*|(|\<mu\>|)>>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|A<text|
    is >\<mu\><text|-measurable>|}>=<around*|{|A\<in\>\<cal-P\><around*|(|X|)>\|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B|)>|}>>
  </definition>

  We now shows a equivalent definition of a <math|\<mu\>>-measurable set in
  the following lemma.

  <\lemma>
    <label|alternative definition of a m measurable sets>Let <math|X> be a
    set, <math|\<mu\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|A\<in\>\<cal-P\><around*|[|X|]>> is
    <math|\<mu\>>-measurable if and only if
    <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have
    <math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|B\<in\>\<cal-P\><around*|(|X|)>>
      then by the assumption we have <math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B|)>>,
      also as <math|<around*|(|B<big|cap>A|)><big|cup><around*|(|B\\A|)>=B>
      we have by <reference|consequence of definition of outer measure> that
      <math|\<mu\><around*|(|B|)>\<leqslant\>\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>>
      proving that <math|\<mu\><around*|(|B|)>=\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>>

      <item*|<math|\<Leftarrow\>>>If <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>>
      we have <math|><math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>>
      then <math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B|)>>
      proving that <math|A> is <math|\<mu\>>-measurable.
    </description>

    \;
  </proof>

  The following deep theorem from Carathéodory proves that the set of
  <math|\<mu\>>-measurable sets form a <math|\<sigma\>>-algebra and that
  <math|\<mu\>> restricted to the measurable sets is a measure.

  <\theorem>
    <label|Caratheodory><index|Carathéodory><dueto|Carathéodory>Let <math|X>
    be a set, <math|\<mu\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|X<rsup|<around*|(|\<mu\>|)>>> is a
    <math|\<sigma\>>-algebra and <math|\<mu\><rsub|\|X<rsup|<around*|(|\<mu\>|)>>>:X<rsup|<around*|(|\<mu\>|)>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure on <math|X<rsup|<around*|(|\<mu\>|)>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    so that <math|<around*|\<langle\>|X,X<rsup|<around*|(|\<mu\>|)>>,\<mu\><rsub|\|X<rsup|<around*|(|\<mu\>|)>>>|\<rangle\>>>
    is a measure space.
  </theorem>

  <\proof>
    Using the previous lemma (see <reference|alternative definition of a m
    measurable sets>) we have that\ 

    <\equation>
      <label|eq 15.46.440>A\<in\>X<rsup|<around*|(|\<mu\>|)>>\<Leftrightarrow\>\<forall\>B\<in\>\<cal-P\><around*|(|X|)>\<vDash\>\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>
    </equation>

    We prove now that <math|X<rsup|<around*|(|\<mu\>|)>>> is a algebra

    <\enumerate>
      <item>If <math|B\<in\>\<cal-P\><around*|(|X|)>> then
      <math|\<mu\><around*|(|B<big|cap>X|)>+\<mu\><around*|(|B\\X|)>=\<mu\><around*|(|B|)>+\<mu\><around*|(|\<emptyset\>|)>=\<mu\><around*|(|B|)>>
      proving\ 

      <\equation>
        <label|eq 15.47.440>X\<in\>X<rsup|<around*|(|\<mu\>|)>>
      </equation>

      Also <math|\<mu\><around*|(|B<big|cap>\<emptyset\>|)>+\<mu\><around*|(|B\\\<emptyset\>|)>=\<mu\><around*|(|B|)>>
      proving\ 

      <\equation>
        <label|eq 15.48.440>\<emptyset\>\<in\>X<rsup|<around*|(|\<mu\>|)>>
      </equation>

      <item>Let <math|A\<in\>X<rsup|<around*|(|\<mu\>|)>>> then
      <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|B<big|cap><around*|(|X\\A|)>|)>+\<mu\><around*|(|B\\<around*|(|X\\A|)>|)>>|<cell|=>|<cell|\<mu\><around*|(|B<big|cap>X<big|cap>A<rsup|c>|)>+\<mu\><around*|(|B<big|cap><around*|(|X<big|cap>A|)><rsup|c>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B<big|cap>A<rsup|c>|)>+\<mu\><around*|(|B<big|cap><around*|(|X<rsup|c><big|cup>A<rsup|c<rsup|c>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B\\A|)>+\<mu\><around*|(|<around*|(|B<big|cap>X<rsup|c>|)><big|cup><around*|(|B<big|cap>A|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B\\A|)>+\<mu\><around*|(|B<big|cap>A|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B|)>>>>>
      </eqnarray*>

      proving that

      <\equation>
        <label|eq 15.49.440>\<forall\>A\<in\>X<rsup|<around*|(|\<mu\>|)>><text|
        we have >X\\A\<in\>X<rsup|<around*|(|\<mu\>|)>>
      </equation>

      <item>Let <math|C,D\<in\>X<rsup|<around*|(|\<mu\>|)>>> then
      <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\equation>
        <label|eq 15.50.440>\<mu\><around*|(|B|)>=\<mu\><around*|(|B<big|cap>C|)>+\<mu\><around*|(|B\\C|)>
      </equation>

      Now as <math|B<big|cap>C\<in\>\<cal-P\><around*|(|X|)>> we have as
      <math|D\<in\>X<rsup|<around*|(|\<mu\>|)>>> that\ 

      <\equation>
        <label|eq 15.51.440>\<mu\><around*|(|B<big|cap>C|)>=\<mu\><around*|(|<around*|(|B<big|cap>C|)><big|cap>D|)>+\<mu\><around*|(|<around*|(|B<big|cap>C|)>\\D|)>
      </equation>

      As <math|B\\C> we have as <math|D\<in\>\<cal-P\><around*|(|X|)>> that
      <math|\<mu\><around*|(|B\\C|)>=\<mu\><around*|(|<around*|(|B\\C|)><big|cap>D|)>+\<mu\><around*|(|<around*|(|B\\C|)>\\D|)>=\<mu\><around*|(|B<big|cap>C<rsup|c><big|cap>D|)>+\<mu\><around*|(|B<big|cap>C<rsup|c><big|cap>D<rsup|c>|)>=\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>+\<mu\><around*|(|B<big|cap><around*|(|C<big|cup>D|)><rsup|c>|)>=\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>+\<mu\><around*|(|B\\<around*|(|C<big|cup>D|)>|)>>
      giving\ 

      <\equation>
        <label|eq 15.52.440>\<mu\><around*|(|B\\C|)>=\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>+\<mu\><around*|(|B\\<around*|(|C<big|cup>D|)>|)>
      </equation>

      Substituting <reference|eq 15.51.440>, <reference|eq 15.52.440> in
      <reference|eq 15.50.440> gives <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>>
      that

      <\equation>
        <label|eq 15.53.440>\<mu\><around*|(|B|)>=\<mu\><around*|(|<around*|(|B<big|cap>C|)><big|cap>D|)>+\<mu\><around*|(|<around*|(|B<big|cap>C|)>\\D|)>+\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>+\<mu\><around*|(|B\\<around*|(|C<big|cup>D|)>|)>
      </equation>

      As <math|B<big|cap><around*|(|C<big|cup>D|)>\<in\>\<cal-P\><around*|(|X|)>>
      we can use the above equation to get

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|(|<around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)><big|cap>C|)><big|cap>D|)>+\<mu\><around*|(|<around*|(|<around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)><big|cap>C|)>\\D|)>+\<mu\><around*|(|<around*|(|<around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)><big|cap>D|)>\\C|)>+\<mu\><around*|(|<around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)>\\<around*|(|C<big|cup>D|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B<big|cap>C<big|cap>D|)>+\<mu\><around*|(|<around*|(|B<big|cap>C|)>\\D|)>+\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>+\<mu\><around*|(|\<emptyset\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B<big|cap>C<big|cap>D|)>+\<mu\><around*|(|<around*|(|B<big|cap>C|)>\\D|)>+\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>>>>>
      </eqnarray*>

      proving that <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have\ 

      <\equation>
        <label|eq 15.54.440>\<mu\><around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)>=\<mu\><around*|(|B<big|cap>C<big|cap>D|)>+\<mu\><around*|(|<around*|(|B<big|cap>C|)>\\D|)>+\<mu\><around*|(|<around*|(|B<big|cap>D|)>\\C|)>
      </equation>

      Substituting the above in <reference|eq 15.53.440> proves finally that
      <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have
      <math|\<mu\><around*|(|B|)>=\<mu\><around*|(|B<big|cap><around*|(|C<big|cup>D|)>|)>+\<mu\><around*|(|B\\<around*|(|C<big|cup>D|)>|)>>
      and thus that <math|C<big|cup>D\<in\>X<rsup|<around*|(|\<mu\>|)>>>. So
      we have\ 

      <\equation>
        <label|eq 15.55.440>\<forall\>C,D\<in\>X<rsup|<around*|(|\<mu\>|)>><text|
        we have ><around*|(|C<big|cup>D|)>\<in\>X<rsup|<around*|(|\<mu\>|)>>
      </equation>
    </enumerate>

    From <reference|eq 15.47.440>, <reference|eq 15.48.440>, <reference|eq
    15.49.440> and <reference|eq 15.55.440> it follows that\ 

    <\equation>
      <label|eq 15.56.440>X<rsup|<around*|(|\<mu\>|)>><text| is a algebra>
    </equation>

    We us now a induction argument to prove that if
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
    is a pairwise disjoint family then <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>>
    we have <math|\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>>.
    So let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|<text|if
    ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>><text|
    is s pairwise disjoint family then <math|\<forall\>B\<in\>X<rsup|<around*|(|\<mu\>|)>>>we
    have >\<mu\><around*|(|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Then if
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
      we have <math|\<forall\>B\<in\>X<rsup|<around*|(|\<mu\>|)>>> that
      <math|\<mu\><around*|(|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>A<rsub|i>>|)>|)>=\<mu\><around*|(|B<big|cap>A<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>\<mu\><around*|(|B<big|cap>A<rsub|1>|)>>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
      is a pairwise disjoint family then given
      <math|B\<in\>\<cal-P\><around*|(|X|)>> we have
      <math|A<rsub|n+1><big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>
      and thus

      <\equation>
        <label|eq 15.57.440>B<big|cap>A<rsub|n+1><big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=\<emptyset\>
      </equation>

      and from the above we have using <reference|set relations> that

      <\equation>
        <label|eq 15.58.440><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>\\A<rsub|n+1>=B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>
      </equation>

      and from <reference|eq 15.57.440> we have using <reference|set
      relations> that

      <\equation>
        <label|eq 15.59.440><around*|(|B<big|cap>A<rsub|N+1>|)>\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>
      </equation>

      From the <math|\<cap\>>-stability of the algebra
      <math|X<rsup|<around*|(|\<mu\>|)>>> that
      <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>X<rsup|<around*|(|\<mu\>|)>>>
      so that as <math|A<rsub|n+1>\<in\>X<rsup|<around*|(|\<mu\>|)>>> we have
      <math|\<forall\>B\<in\>X<rsup|<around*|(|\<mu\>|)>>> that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|B<big|cap><around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        15.54.440>>>>|<cell|\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>|)>+\<mu\><around*|(|<around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>\\A<rsub|n+1>|)>+\<mu\><around*|(|<around*|(|B<big|cap>A<rsub|N+1>|)>\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>+\<mu\><around*|(|B<big|cap>A<rsub|n+1>|)>
        <text|(using <reference|eq 15.57.440>,<reference|eq 15.58.440> and
        <reference|eq 15.59.440>)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><around*|(|B<big|cap>A<rsub|n+>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>\<mu\><around*|(|B<big|cap>A<rsub|1>|)>>>>>
      </eqnarray*>

      proving as <math|\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|)>=B<big|cap><around*|(|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>|)>>
      that <math|n+1\<in\>\<cal-S\>>
    </description>

    Induction proves then that <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>>
    and <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
    where <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    is pairwise disjoint that

    <\equation>
      <label|eq 15.60.440>\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|B<big|cap>A<rsub|i>|)>
    </equation>

    We can now prove that <math|X<rsup|<around*|(|\<mu\>|)>>> is a Dynkin
    system, so take a pairwise disjoint family of sets
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
    such that <math|A=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
    Define <math|<around*|{|B<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|n>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    then as <math|X<rsup|<around*|(|\<mu\>|)>>> is <math|\<cap\>>-stable we
    have that <math|<around*|{|B<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>.
    Further <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|n>\<subseteq\>A> so that given
    <math|B\<in\>\<cal-P\><around*|(|X|)>> we have
    <math|B\\A\<subseteq\>B\\B<rsub|n>> so by the definiton of a outer
    measure we have <math|\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B\\B<rsub|n>|)>>
    and thus \ <math|\<mu\><around*|(|B|)>=\<mu\><around*|(|B<big|cap>B<rsub|n>|)>+\<mu\><around*|(|B\\B<rsub|n>|)>=\<mu\><around*|(|B<big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>+\<mu\><around*|(|B\\B<rsub|n>|)>\<equallim\><rsub|<text|<reference|eq
    15.60.440>>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>|)>+\<mu\><around*|(|B\\B<rsub|n>|)>\<geqslant\><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>|)>+\<mu\><around*|(|B\\A|)>>
    so that we obtain\ 

    <\equation>
      <label|eq 15.61.440>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| and
      <math|\<forall\>B\<in\>\<cal-P\><around*|(|X|)>> we have
      >\<mu\><around*|(|B|)>\<geqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><around*|(|B\\A|)>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><around*|(|B\\A|)>>|<cell|=>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>+\<mu\><around*|(|B\\A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sup
      of set and sum>>>>|<cell|sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><around*|(|B\\A|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      15.61.440>>>>|<cell|\<mu\><around*|(|B|)>>>>>
    </eqnarray*>

    proving

    <\equation>
      <label|eq 15.62.440.2><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>+\<mu\><around*|(|B\\<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>\<leqslant\>\<mu\><around*|(|B|)>
    </equation>

    By the definition of a outer measure we have
    <math|\<mu\><around*|(|B<big|cap>A|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|B<big|cap>A<rsub|i>|)>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<big|cap>A<rsub|i>|)>>
    so using the above we have then that \ <math|\<mu\><around*|(|B<big|cap>A|)>+\<mu\><around*|(|B\\A|)>\<leqslant\>\<mu\><around*|(|B|)>>,
    and using <reference|alternative definition of a m measurable sets> we
    have then\ 

    <\equation>
      <label|eq 15.62.440>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>><text|,
      a pairwise disjoint family, we have
      >\<mu\><around*|(|B<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>+\<mu\><around*|(|B\\<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>=\<mu\><around*|(|B|)>
    </equation>

    From the above it follows then that\ 

    <\equation>
      <label|eq 15.63.440>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>><text|,
      a pairwise disjoint family,> we have that
      <big|sqcup><rsub|i\<in\>\<bbb-N\>0>A<rsub|i>\<in\>X<rsup|<around*|(|\<mu\>|)>>
    </equation>

    Using <reference|eq 15.47.440>, <reference|eq 15.49.440> and
    <reference|eq 15.63.440> we have proved that\ 

    <\equation>
      <label|eq 15.64.440>X<rsup|<around*|(|\<mu\>|)>><text| is a Dynkin
      system>
    </equation>

    As by <reference|eq 15.56.440> <math|X<rsup|<around*|(|\<mu\>|)>>> is
    also a algebra and thus by <reference|alternative definition of algebra>
    is <math|\<cap\>>-stable we have from <reference|a Dynkin system closed
    under intersection is a sigma-algebra> that\ 

    <\equation>
      <label|eq 15.65.440>X<rsup|<around*|(|\<mu\>|)>><text| is a
      >\<sigma\><text|-algebra>
    </equation>

    Finally to prove that <math|\<mu\><rsub|\|X<rsup|<around*|(|\<mu\>|)>>>>
    is a measure on <math|X<rsup|<around*|(|\<mu\>|)>>> note that we have

    <\enumerate>
      <item><math|\<mu\><rsub|\|X<rsup|<around*|(|\<mu\>|)>>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X<rsup|<around*|(|\<mu\>|)>>>
      is a pairwise disjoint family then <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>X<rsup|<around*|(|\<mu\>|)>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      and substituting <math|B> in <reference|eq 15.62.440.2> by
      <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>> gives
      <math|><math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>A<rsub|i>|)>+\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\\<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<Rightarrow\><big|sum><rsub|i-1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      as by the definition of a outer measure we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      we conclude that <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>
  </proof>

  As an application of the Carathéodory we show how we can extend a pre
  measure on a ring to a measure on the generated <math|\<sigma\>>-algebra.
  To prove this we must first define a outer measure, this is done in the
  following definition (which also indicates where the name outer measure is
  coming from).

  <\definition>
    Let <math|X> be a set, <math|\<cal-R\>> a ring on <math|X> and
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>> a pre
    measure on <math|\<cal-R\>>, define then given <math|A\<in\>\<cal-R\>>
    define <math|\<cal-U\><around*|(|A|)>=<around*|{|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>\|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|}>>
    then <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by\ 

    <\equation*>
      \<mu\><rsup|\<star\>><around*|(|A|)>=<choice|<tformat|<table|<row|<cell|\<infty\>
      if \<cal-U\><around*|(|A|)>=\<emptyset\>>>|<row|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>|}>|)>
      if <around*|(|A|)>\<neq\>\<emptyset\>>>>>>
    </equation*>
  </definition>

  It turns out that <math|\<mu\><rsup|\<ast\>>> is a outer measure as is
  expressed in the following theorem.

  <\theorem>
    <label|construction a outer measure>Let <math|X> be a set,
    <math|\<cal-R\>> a ring on <math|X>, <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a pre-measure then we have\ 

    <\enumerate>
      <item><math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is a pre-measure

      <item><math|\<forall\>A\<in\>\<cal-R\>> we have that
      <math|\<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>>
      (<math|\<mu\><rsup|\<ast\>>> is a extension of <math|\<mu\>>)

      <item><math|\<cal-R\>\<subseteq\>X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>
      [every set in the ring is <math|\<mu\><rsup|\<ast\>>>-measurable]
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First to prove that <math|\<mu\><rsup|\<ast\>>> is a outer
      measure we must prove:

      <\description>
        <item*|<math|\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0>>Define
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
        <math|A<rsub|i>=\<emptyset\>\<in\>\<cal-R\>> then we have
        <math|\<emptyset\>\<subseteq\>\<emptyset\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
        proving that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|\<emptyset\>|)>\<Rightarrow\>\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>
        proving that <math|\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0>

        <item*|monotonicity>Let <math|A,B\<in\>\<cal-P\><around*|(|X|)>> with
        <math|A\<subseteq\>B> then if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B|)>>
        then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
        and <math|B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<Rightarrowlim\><rsub|A\<subseteq\>B>A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
        proving that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>>
        and thus\ 

        <\equation>
          <label|eq 15.67.441>\<cal-U\><around*|(|B|)>\<subseteq\>\<cal-U\><around*|(|A|)>
        </equation>

        We have now for <math|\<cal-U\><around*|(|B|)>> to cases to consider\ 

        <\description>
          <item*|<math|\<cal-U\><around*|(|A|)>=\<emptyset\>>>then
          <math|\<mu\><rsup|\<ast\>><around*|(|B|)>=\<infty\>> and trivially
          <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>>

          <item*|<math|\<cal-U\><around*|(|A|)>\<neq\>\<emptyset\>>>then from
          <reference|eq 15.67.441> we have that also
          <math|\<cal-U\><around*|(|B|)>\<neq\>\<emptyset\>> and we have that
          <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>|}>|)>\<leqslant\><rsub|<text|<reference|eq
          15.67.441>>>nf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B|)>|}>|)>=\<mu\><rsup|\<ast\>><around*|(|B|)>>
        </description>

        So in all cases we have <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>>

        <item*|<math|\<sigma\>>-subadditivity>Let
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
        then we have either

        <\description>
          <item*|<math|\<exists\>i\<in\>\<bbb-N\><rsub|0>\<vdash\>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>>then
          \ <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>
          and thus <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>

          <item*|<math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vdash\>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>\<neq\>\<infty\>>>then
          <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
          <math|\<cal-U\><around*|(|A<rsub|i>|)>\<neq\>\<emptyset\>>
          [otherwise by definition <math|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>]
          take now <math|\<varepsilon\>\<gtr\>0> then
          <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have by the definition
          of the infimum that <math|\<exists\><around*|{|A<rsub|i,j>|}><rsub|j\<in\>\<bbb-N\><rsub|0>>>
          such that\ 

          <\equation>
            <label|eq 15.68.442><big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i,j>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>\<wedge\>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>
          </equation>

          Now using <reference|union of sequences of sequences of sets> there
          exists a bijection <math|\<sigma\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>
          such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>A<rsub|i,j>|)>\<supseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
          so that <math|<around*|{|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
          and by definition we have then that

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|countable
            sum of countable sums is a countable
            sum>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>A<rsub|i,j>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
            15.68.442>+<reference|sum and order relation in the extented
            reals>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|e|2<rsup|i>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|interchange
            infinite and finite sum>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
            of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2>>>>>
          </eqnarray*>

          As <math|\<varepsilon\>\<gtr\>\<infty\>> is choosen arbitrary we
          have (see <reference|consequence of the Archimedean property (2)>)
          that\ 

          <\equation*>
            \<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
          </equation*>
        </description>
      </description>

      <item>Let <math|A\<in\>\<cal-R\>> and define
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      by <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
      i=1>>|<row|<cell|\<emptyset\> if i\<gtr\>1>>>>>> then we have
      <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proving that <math|\<cal-U\><around*|(|A|)>\<neq\>\<emptyset\>> so that
      <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>B<rsub|i>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>|)>>.
      If now <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>>
      then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      and <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
      Define <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|D<rsub|i>=<choice|<tformat|<table|<row|<cell|B<rsub|1> if
      i=1>>|<row|<cell|B<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>B<rsub|j>
      if i\<gtr\>0|)>>>>>>\<in\>\<cal-R\>> then we have using
      <reference|union as pairwise disjoint union> that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>>.
      So <math|A=A<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>|)>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>D<rsub|i>|)>>
      where as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<big|cap>D<rsub|i>\<in\>\<cal-R\>> (by <reference|ring is
      n-stable> <math|\<cal-R\>> is <math|\<cap\>>-stable) we have that
      <math|\<mu\><around*|(|A|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>D<rsub|i>|)>|)>\<equallim\><rsub|\<mu\>
      is pre measure><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<big|cap>D<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>
      (as <math|A<big|cap>D<rsub|i>\<subseteq\>D<rsub|i>\<subseteq\>B<rsub|i>>)
      proving that\ 

      <\equation*>
        \<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>
        <text|we have >\<mu\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation*>

      and thus that <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>|)>\<leqslant\>\<mu\><around*|(|A|)>>.
      to summarize we have\ 

      <\equation>
        <label|eq 15.69.443>\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation>

      For the opposite ineqaulity if we define
      <math|<around*|{|A<rsub|>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
      i=1>>|<row|<cell|\<emptyset\> if i\<gtr\>1>>>>>> then
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|A|)>>
      and <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A|)>>
      proving together with <reference|eq 15.69.443> that\ 

      <\equation*>
        \<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>
      </equation*>

      <item>Let <math|A\<in\>\<cal-R\>> and take
      <math|B\<in\>\<cal-P\><around*|(|X|)>> then we have either\ 

      <\description>
        <item*|<math|\<mu\><rsup|\<ast\>><around*|(|B|)>=\<infty\>>>so that
        <math|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<star\>><around*|(|B\\A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>>

        <item*|<math|\<mu\><rsup|\<ast\>><around*|(|B|)>\<less\>\<infty\>>>then
        we must have that <math|\<cal-U\><around*|(|B|)>\<neq\>\<emptyset\>>
        so that <math|\<mu\><rsup|\<ast\>><around*|(|B|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B|)>|}>|)>>.
        Hence given <math|\<varepsilon\>\<gtr\>0> there exists a
        <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B|)>>
        such that

        <\equation>
          <label|eq 15.70.444>\<mu\><rsup|\<ast\>><around*|(|B|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|B|)>+\<varepsilon\>\<wedge\>B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
        </equation>

        Now as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|B<rsub|i><big|cap>A\<in\>\<cal-R\>> [as <math|\<cal-R\>> is
        <math|\<cap\>>-stable], <math|B<rsub|i>\\A\<in\>\<cal-R\>> and
        <math|B<rsub|i>=<around*|(|B<rsub|i><big|cap>A|)><big|sqcup><around*|(|B<rsub|i>\\A|)>>
        we have that\ 

        <\equation>
          <label|eq 15.71.444>\<forall\>i\<in\>\<bbb-N\><rsub|0> we have
          \<mu\><around*|(|B<rsub|i>|)>=\<mu\><around*|(|B<rsub|i><big|cap>A|)>+\<mu\><around*|(|B<rsub|i>\\A|)>
        </equation>

        Substituting the above in <reference|eq 15.70.444> gives\ 

        <\equation>
          <label|eq 15.72.444><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i><big|cap>A|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>\\A|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|B|)>+\<varepsilon\>
        </equation>

        As <math|B<big|cap>A\<subseteq\>B> and <math|B\\A\<subseteq\>B> we
        have <math|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>\<less\>\<infty\>>
        and <math|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>\<less\>\<infty\>>
        so that <math|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A=inf|(><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>C<rsub|i>\|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B<big|cap>A|)>|}>>
        and <math|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>=inf<around*|(|<around*|{|<big|sum><rsub|-1><rsup|\<infty\>>C<rsub|i>\|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-U\><around*|(|B\\A|)>|}>|)>>.
        As also <math|B<big|cap>A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)><big|cap>A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i><big|cap>A|)>>
        and <math|B\\A\<subseteq\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>\\A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i>\\A|)>>
        we have <math|\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i><big|cap>A|)>>
        and <math|\<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i><inactive|<hybrid|A>>|)>>.
        Using <reference|eq 15.72.444> we have\ 

        <\equation>
          <label|eq 15.73.444>\<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|B|)>+\<varepsilon\>
        </equation>

        As <math|\<varepsilon\>> is choosen arbitrary we have by
        <reference|consequence of the Archimedean property (2)> that\ 

        <\equation*>
          \<mu\><rsup|\<ast\>><around*|(|B<big|cap>A|)>+\<mu\><rsup|\<ast\>><around*|(|B\\A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|B|)>
        </equation*>

        proving that <math|A> is <math|\<mu\><rsup|\<ast\>>>-measurable.
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|extending pre-measure on a ring to the sigma algebra>Let <math|X>
    be a set, <math|\<cal-R\>> a ring on <math|X> and
    <math|\<mu\>:\<cal-R\>\<rightarrow\><around*|[|0,\<infty\>|]>><space|1em>a
    pre-measure then there exists a <math|<wide|\<mu\>|^>:\<sigma\><around*|[|\<cal-R\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|<wide|\<mu\>|^><rsub|\|\<cal-R\>>=\<mu\>>
    [<math|<wide|\<mu\>|^>> is a extension of <math|\<mu\>> to
    <math|\<sigma\><around*|[|\<cal-R\>|]>>]. If <math|\<mu\>> is
    <math|\<sigma\>>-finite (see <reference|sigma finite content>) then the
    extension is unique.
  </corollary>

  <\proof>
    Using the above theorem (see <reference|construction a outer measure>)
    there exists a outer measure <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<mu\><rsup|\<ast\>><rsub|\|\<cal-R\>>=\<mu\>> and
    <math|\<cal-R\>\<subseteq\>X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>.
    Using the Carathéodory theorem (see <reference|Caratheodory>) we have
    then that <math|X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>> is a
    <math|\<sigma\>>-algebra and <math|\<mu\><rsup|\<ast\>><rsub|\|X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>>
    is a measure on <math|X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>. So we
    must have that <math|\<sigma\><around*|[|\<cal-R\>|]>\<subseteq\>X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>
    and if we define <math|<wide|\<mu\>|^>:\<sigma\><around*|[|\<cal-R\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    by <math|<wide|\<mu\>|^>=\<mu\><rsup|\<ast\>><rsub|\|\<sigma\><around*|[|\<cal-R\>|]>>>
    then we have

    <\enumerate>
      <item><math|<wide|\<mu\>|^><around*|(|\<emptyset\>|)>=\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<sigma\><around*|[|\<cal-R\>|]>>
      is a pairwise disjoint family then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<wide|\<mu\>|^><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<sigma\><around*|[|\<cal-R\>|]>\<subseteq\>X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>>|<cell|<around*|(|\<mu\><rsup|\<ast\>><rsub|\|X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>|)><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><rsub|\|X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<sigma\><around*|[|\<cal-R\>|]>\<subseteq\>X<rsup|<around*|(|\<mu\><rsup|\<ast\>>|)>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><wide|\<mu\>|^><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>

    proving that <math|<wide|\<mu\>|^>> is a pre-measure and hence a measure
    on the <math|\<sigma\>>-algebra <math|\<sigma\><around*|[|\<cal-R\>|]>>.
    As <math|\<forall\>A\<in\>\<cal-R\>> we have
    <math|<wide|\<mu\>|^><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><around*|(|A|)>>
    we have that <math|<wide|\<mu\>|^><rsub|\|\<cal-R\>>=\<mu\>>.

    To prove uniqueness assume that <math|\<nu\>:\<sigma\><around*|[|\<cal-R\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is another measure such that <math|\<nu\><rsub|\|\<cal-R\>>=\<mu\>> then
    we have

    <\enumerate>
      <item><math|\<cal-R\>> is a ring hence <math|\<cap\>>-stable (see
      <reference|ring is n-stable>)

      <item><math|\<forall\>A\<in\>\<cal-R\>> we have
      <math|<wide|\<mu\>|^><around*|(|A|)>=\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>>

      <item>As <math|\<mu\>> is <math|\<sigma\>>-finite there exists a
      <math|<around*|{|X<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      such that <math|X=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>X<rsub|i>>
      and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<mu\><around*|(|X<rsub|i>|)>\<less\>\<infty\>\<Rightarrowlim\><rsub|<around*|(|2|)>>\<nu\><around*|(|X<rsub|i>|)>\<less\>\<infty\>>.
      Take now <math|<around*|{|Y<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|Y<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>X<rsub|i>\<subseteq\>X>
      then <math|X\<nocomma\>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>X<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>Y<rsub|i>\<subseteq\>X\<Rightarrow\>X=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>Y<rsub|i>>
      as also <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|Y<rsub|i>\<subseteq\>X<rsub|i+1><big|cup>Y<rsub|i>=Y<rsub|i+1>>,
      <math|\<nu\><around*|(|Y<rsub|i>|)>\<equallim\><rsub|Y<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>X<rsub|i>\<in\>\<cal-R\>>\<mu\><around*|(|Y<rsub|i>|)>\<leqslant\><rsub|<text|<reference|properties
      of a content>>><big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|X<rsub|i>|)>\<less\>\<infty\>>.
      So we have that <math|Y<rsub|i>\<uparrow\>X> and
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<mu\><around*|(|Y<rsub|i>|)>,\<nu\><around*|(|Y<rsub|i>|)>\<less\>\<infty\>>.
    </enumerate>

    All the requirements of the uniqueness theorem <reference|uniqueness of
    measaures> are thus satisifed so by using this theorem we conclude that
    <math|<wide|\<mu\>|^>=\<nu\>>.
  </proof>

  \;

  \ Applying the above corollary allows us to define the Lebesgue measure on
  the <math|\<sigma\><around*|[|\<cal-I\>|]>> \ <math|\<sigma\>>-algebra on
  <math|\<bbb-R\>> and the Lebesgue measure on the
  <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>> <math|\<sigma\>>-algebra on
  <math|\<bbb-R\><rsup|n>>.

  <subsection|Lebesgue measure on <math|\<bbb-R\>>>

  <subsubsection|Definition of the Lebesgue measure>

  To define a measure on <math|\<bbb-R\>> we first define the length content
  on <math|\<cal-I\>>, the semi ring of intervals, extend this to a content
  on <math|\<cal-R\><around*|[|\<cal-I\>|]>> and finally to a measure on
  <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-I\>|]>|]>>
  the Borel algebra on <math|\<bbb-R\>>

  <\theorem>
    <label|interval is uniquely determined by boundary>Let
    <math|I\<in\>\<cal-I\>> then if <math|I\<neq\>\<emptyset\>> there exists
    a unique <math|a,b\<in\>\<bbb-R\>> such that <math|I=<around*|[|a,b|[>>
  </theorem>

  <\proof>
    Let <math|\<emptyset\>\<neq\>I\<in\>\<cal-I\>> then by the definition of
    <math|\<cal-I\>> (see <reference|semi ring of intervals>) there exists a
    <math|a,b\<in\>\<bbb-R\>> such that <math|I=<around*|[|a,b|[>>. Assume
    now that there exists also <math|a<rprime|'>,b<rprime|'>> with
    <math|I=<around*|[|a<rprime|'>,b<rprime|'>|[>>. As
    <math|I\<neq\>\<emptyset\>> we must have that <math|a\<less\>b> and
    <math|a<rprime|'>\<less\>b<rprime|'>> and thus as
    <math|a\<leqslant\>a\<less\>b> and <math|a\<leqslant\>a<rprime|'>\<less\>b>
    we have <math|a,a<rprime|'>\<in\>I=<around*|[|a,b|[>=<around*|[|a<rprime|'>,b<rprime|'>|[>>
    proving that <math|a\<leqslant\>a<rprime|'>> and
    <math|a<rprime|'>\<leqslant\>a> so that we have\ 

    <\equation>
      <label|eq 15.38.427>a=a<rprime|'>
    </equation>

    If now <math|b\<less\>b<rprime|'>> then by the density of the real
    numbers (see <reference|density theorem for the reals>) there exists a
    <math|x\<in\>\<bbb-R\>> such that <math|b\<less\>x\<less\>b<rprime|'>> so
    that <math|a<rprime|'>=a\<leqslant\>b\<less\>x\<less\>b<rprime|'>>
    proving that <math|x\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>=I=<around*|[|a,b|[>>
    and thus <math|a\<leqslant\>x\<less\>b\<less\>x> a contradiction. In the
    same way we prove that <math|b<rprime|'>\<less\>b> leads to a
    contradiction. So we must have that\ 

    <\equation>
      <label|eq 15.39.427>b=b<rprime|'>
    </equation>
  </proof>

  Motivated by the above theorem we have the following definition

  <\definition>
    <label|length of a interval><index|length of a
    interval><math|l:\<cal-I\>\<rightarrow\><around*|[|0,\<infty\>|]>> is
    defined by <math|l<around*|(|I|)>=<choice|<tformat|<table|<row|<cell|0 if
    I=\<emptyset\>>>|<row|<cell|b-a where I=<around*|[|a,b|[>>>>>>>. Note
    that by the definition we have that <math|l<around*|(|\<cal-I\>|)>\<subseteq\><around*|[|0,\<infty\>|[>>
    (<math|l> is a finite function).
  </definition>

  To prove that <math|l> is a content on the semi ring <math|\<cal-I\>> we
  need the following lemmas to help us sort a finite family of non empty half
  open intervals that are pairwise disjoint. The first lemma shows the
  condition for a half open interval to be non empty.

  <\lemma>
    <label|empty interval>Let <math|<around*|[|a,b|[>\<in\>\<cal-I\>> \ then
    we have <math|<around*|[|a,b|[>\<neq\>\<emptyset\>\<Leftrightarrow\>a\<less\>b\<Leftrightarrow\>a\<in\><around*|[|a,b|[>>
  </lemma>

  <\proof>
    <space|1em>

    <\description>
      <item*|<math|<around*|[|a,b|[>\<neq\>\<emptyset\>\<Rightarrow\>a\<less\>b>>Assume
      that <math|b\<leqslant\>a> then as <math|<around*|[|a,b|[>\<neq\>\<emptyset\>>
      there exists a <math|x\<in\><around*|[|a,b|]>> such that
      <math|a\<leqslant\>x\<less\>b\<Rightarrow\>a\<leqslant\>x\<less\>b\<leqslant\>a\<Rightarrow\>a\<less\>a>
      a contradiction, o we must have <math|a\<less\>b>.

      <item*|<math|a\<less\>b\<Rightarrow\>a\<in\><around*|[|a,b|[>>>As
      <math|a=a\<less\>b> we have <math|a\<in\><around*|[|a,b|[>> by
      definition of a half open interval.

      <item*|<math|a\<in\><around*|[|a,b|[>\<Rightarrow\><around*|[|a,b|[>\<neq\>\<emptyset\>>>This
      is trivial
    </description>
  </proof>

  The next lemma shows when the intersection of two non empty half open
  intervals is non empty.

  <\lemma>
    <label|condition for ordering intervals>Let
    <math|I=<around*|[|a,b|[>\<in\>\<cal-I\>> and
    <math|J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-I\>> such that
    <math|\<emptyset\>\<neq\>I\<neq\>J\<neq\>\<emptyset\>> then we have
    <math|I<big|cap>J=\<emptyset\>> if and only if
    <math|b\<leqslant\>a<rprime|'>> or <math|b<rprime|'>\<leqslant\>a>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>We prove this by contradiction, so assume
      that <math|\<neg\><around*|(|b\<leqslant\>a<rprime|'>\<vee\>b<rprime|'>\<leqslant\>a|)>\<Rightarrow\>a<rprime|'>\<less\>b\<wedge\>a\<less\>b<rprime|'>>
      then we have for <math|a,a<rprime|'>> the following possibilities to
      consider\ 

      <\description>
        <item*|<math|a\<leqslant\>a<rprime|'>>>then
        \ <math|a<rprime|'>\<in\><around*|[|a,b|]>\<wedge\>a<rprime|'>\<in\><rsub|<text|(see
        <reference|empty interval>)>><around*|[|a<rprime|'>,b<rprime|'>|]>\<Rightarrow\><around*|[|a,b|[><big|cap><around*|[|a<rprime|'>,b<rprime|'>|[>\<neq\>\<emptyset\>>
        contradicting <math|I<big|cap>J=\<emptyset\>>

        <item*|<math|a<rprime|'>\<less\>a>>then
        <math|a\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>\<wedge\>a\<in\><rsub|<text|(see
        <reference|empty interval>)>><around*|[|a,b|[>\<Rightarrow\><around*|[|a<rprime|'>,b<rprime|'>|[><big|cap><around*|[|a,b|[>\<neq\>\<emptyset\>>
        contradicting <math|I<big|cap>J=\<emptyset\>>
      </description>

      As in all cases we have a contradiction we must conclude that
      <math|b\<leqslant\>a\<vee\>b<rprime|'>\<leqslant\>a>

      <item*|<math|\<Leftarrow\>>>We prove this by contradiction, so assume
      that <math|x\<in\><around*|[|a,b|[><big|cap><around*|[|a<rprime|'>,b<rprime|'>|[>>
      then we have <math|a\<leqslant\>x\<less\>b\<wedge\>a<rprime|'>\<leqslant\>x\<less\>b<rprime|'>>
      and we must consider the following possibilities:

      <\description>
        <item*|<math|b\<leqslant\>a<rprime|'>>>then
        <math|x\<less\>b\<less\>a<rprime|'>\<leqslant\>x> giving the
        contradiction <math|x\<less\>x>

        <item*|<math|b<rprime|'>\<leqslant\>a>>then
        <math|x\<less\>b<rprime|'>\<leqslant\>a\<less\>x\<less\>b> giving the
        contradiction <math|x\<less\>x>
      </description>

      As in all cases we have a contradiction we must conclude that
      <math|<around*|[|a,b|[><big|cap><around*|[|a<rprime|'>,b<rprime|'>|[>=\<emptyset\>>
    </description>
  </proof>

  The following lemma shows that we have a order relation on a set of
  pairwise disjoint set of half open intervals..

  <\lemma>
    <label|ordering of interval>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|\<cal-C\>\<subseteq\>\<cal-I\>> such that
    <math|\<forall\>I\<in\>\<cal-C\>> we have <math|I\<neq\>\<emptyset\>> and
    <math|\<forall\>I,J\<in\>\<cal-C\>> with <math|I\<neq\>J> we have
    <math|I<big|cap>\<emptyset\>> then if we define
    <math|\<preccurlyeq\>\<subseteq\>\<cal-C\>\<times\>\<cal-C\>> by
    <math|\<cal-I\>\<preccurlyeq\>J> if and only if
    <math|I=<around*|[|a,b|[>\<wedge\>J=<around*|[|a<rprime|'>,b<rprime|'>|[>>
    and <math|a\<leqslant\>a<rprime|'>> we have that
    <math|<around*|\<langle\>|\<cal-C\>,\<preccurlyeq\>|\<rangle\>>> is a
    fully ordered set (see <reference|linear ordered class>)
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|reflexitivity>If <math|I\<in\>\<cal-C\>\<subseteq\>\<cal-I\>>
      then there exists a <math|a,b\<in\>\<bbb-R\>> such that
      <math|a\<less\>b> (see <reference|empty interval>) and as
      <math|a\<leqslant\>a> we have <math|I\<preccurlyeq\>I>

      <item*|antisymmetry>If <math|I=<around*|[|a,b|[>,J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-C\>>
      so that <math|I\<preccurlyeq\>J\<wedge\>J\<preccurlyeq\>I> then \ as
      <math|I\<preccurlyeq\>J\<wedge\>J\<preccurlyeq\>I> we have
      <math|a\<leqslant\>a<rprime|'>\<wedge\>a<rprime|'>\<leqslant\>a>
      proving <math|a=a<rprime|'>>. If now
      <math|I\<neq\>J\<Rightarrow\>I<big|cap>J=\<emptyset\>> we have by the
      previous lemma (see <reference|condition for ordering intervals>)
      \ <math|b\<leqslant\>a<rprime|'>\<vee\>b<rprime|'>\<leqslant\>a\<Rightarrowlim\><rsub|a<rprime|'>=a>b\<leqslant\>a\<leqslant\>b\<Rightarrow\>b=a\<Rightarrow\>I=\<emptyset\>>
      contradicting <math|I\<neq\>\<emptyset\>>. So we must have that
      <math|I=J>.

      <item*|transitivity>If <math|I,J,K\<in\>\<cal-C\>> such that
      <math|I\<preccurlyeq\>J\<wedge\>J\<preccurlyeq\>K> then there exists
      <math|a,b,a<rprime|'>,b<rprime|'>,a<rprime|''>,b<rprime|''>\<in\>\<bbb-R\>>
      such that <math|I=<around*|[|a,b|[>\<wedge\>J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<wedge\>K=<around*|[|a<rprime|''>,b<rprime|''>|[>\<wedge\>a\<less\>b\<wedge\>a<rprime|'>\<less\>b<rprime|'>\<wedge\>a<rprime|''>\<less\>b<rprime|''>\<wedge\>a\<less\>a<rprime|'>\<wedge\>a<rprime|'>\<leqslant\>a<rprime|''>\<Rightarrow\>a\<less\>b\<wedge\>a<rprime|''>\<less\>n<rprime|''>\<wedge\>a\<leqslant\>a<rprime|''>>
      proving that <math|I\<preccurlyeq\>K>

      <item*|fully ordering>If <math|I,J\<in\>\<cal-C\>> then we have that
      <math|I=<around*|[|a,b|[>>, <math|J=<around*|[|a<rprime|'>,b<rprime|'>|[>>
      with <math|a\<less\>b\<wedge\>a<rprime|'>\<less\>b<rprime|'>> then we
      have for <math|a,a<rprime|'>> either\ 

      <\description>
        <item*|<math|a\<leqslant\>a<rprime|'>>>then <math|I\<preccurlyeq\>J>

        <item*|<math|a<rprime|'>\<less\>a>>then
        <math|a<rprime|'>\<leqslant\>a> and thus <math|J\<preccurlyeq\>I>
      </description>
    </description>
  </proof>

  Next we show how we can order a finite disjoint family of pairwise disjoint
  intervals.\ 

  <\lemma>
    <label|ordering of a finite disjoint family of pairwise disjoint
    intervals>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>> and
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|[|a<rsub|j>,b<rsub|j>|[>=\<emptyset\>>
    then there exists a bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    such that \ <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<less\>j> we have <math|b<rsub|\<sigma\><around*|(|i|)>>\<leqslant\>a<rsub|\<sigma\><around*|(|j|)>>>.
  </lemma>

  <\proof>
    Define <math|\<cal-F\>=<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    then we have by the assumptions together with the previous lemma (see
    <reference|ordering of interval>) we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<label|eq
      15.40.428><around*|\<langle\>|\<cal-F\>,\<preccurlyeq\>|\<rangle\>>
      <text|is a fully ordered set><eq-number>>>>>
    </eqnarray*>

    Next if we define <math|\<rho\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<cal-F\>>
    by <math|\<sigma\><around*|(|i|)>=A<rsub|i>> then we have\ 

    <\description>
      <item*|injectitviy>Let <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|\<rho\><around*|(|i|)>=\<rho\><around*|(|j|)>> then <math|i=j>
      [for is <math|i\<neq\>j> we have by assumption that
      <math|\<rho\><around*|(|i|)><big|cap>\<rho\><around*|(|j|)>=<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|[|a<rsub|j>,b<rsub|j>|[>=\<emptyset\>>
      and as <math|<around*|[|a<rsub|i>,b<rsub|i>|[>,<around*|[|a<rsub|j>,b<rsub|j>|[>>
      is not empty we have that <math|\<rho\><around*|(|i|)>=<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\><around*|[|a<rsub|j>,b<rsub|j>|[>=\<rho\><around*|(|j|)>>
      a contradiction).

      <item*|<math|surjectivity>>If <math|I\<in\>\<cal-F\>> then there exists
      a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|I=<around*|[|a<rsub|i>,b<rsub|i>|[>=\<rho\><around*|(|i|)>>
    </description>

    proving that\ 

    <\equation>
      <label|eq 15.41.428>\<rho\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<cal-F\><text|
      defined by >\<rho\><around*|(|i|)>=<around*|[|a<rsub|i>,b<rsub|i>|[><text|
      is a bijection so that >#<around*|(|\<cal-F\>|)>=n
    </equation>

    Using <reference|eq 15.40.428> together with <reference|ordering of a
    finite set> means that there exists a bijection
    <math|\<tau\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<cal-F\>> such
    that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|\<tau\><around*|(|i|)>\<preccurlyeq\>\<tau\><around*|(|i+1|)>> and
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<less\>j> we have <math|\<tau\><around*|(|i|)>\<preccurlyeq\>\<tau\><around*|(|j|)>>.
    Define now the bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    by <math|\<sigma\>=\<rho\><rsup|-1>\<circ\>\<tau\>> then we have that
    <math|<around*|[|a<rsub|\<sigma\><around*|(|i|)>>,b<rsub|\<sigma\><around*|(|i|)>>|[>=\<rho\><around*|(|\<sigma\><around*|(|i|)>|)>=\<tau\><around*|(|i|)>>
    proving that\ 

    <\equation>
      <label|eq 15.42.428>\<exists\>\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<cal-F\><text|
      such that >\<sigma\><text| is a bijection >and
      \<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| with i\<less\>j we
      have ><around*|[|a<rsub|\<sigma\><around*|(|i|)>>,b<rsub|\<sigma\><around*|(|i|)>>|[>\<preccurlyeq\><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>
    </equation>

    Now if <math|<around*|[|a<rsub|i>,b<rsub|j>|[>\<preccurlyeq\><around*|[|a<rsub|j>,b<rsub|j>|[>>
    and <math|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|[|a<rsub|j>,b<rsub|j>|[>=\<emptyset\>>
    then we have <math|a<rsub|i>\<leqslant\>a<rsub|j>> and by
    <reference|condition for ordering intervals>
    <math|b<rsub|j>\<leqslant\>a<rsub|i>\<vee\>b<rsub|i>\<leqslant\>a<rsub|j>>.
    If <math|b<rsub|j>\<leqslant\>a<rsub|i>> then we have
    <math|a<rsub|j>\<less\>b<rsub|j>\<leqslant\>a<rsub|i>\<leqslant\>a<rsub|j>>
    leading to the contradiction <math|a<rsub|j>\<less\>a<rsub|j>> so we must
    have that <math|b<rsub|i>\<leqslant\>a<rsub|j>>. Applying this on
    <reference|eq 15.42.428> gives finally

    <\equation*>
      \<exists\>\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>\<cal-F\><text|
      such that >\<sigma\><text| is a bijection >and
      \<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| with i\<less\>j we
      have >b<rsub|\<sigma\><around*|(|i|)>>\<leqslant\>a<rsub|\<sigma\><around*|(|j|)>>
    </equation*>
  </proof>

  Finally we prove a important result on the union of disjoint non empty
  intervals.

  <\theorem>
    <label|interval as finite union of pairwise disjoint intervals>Let
    <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>>,
    <math|\<emptyset\>\<neq\><around*|[|a,b|[>\<in\>\<cal-I\>> such that
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    then there exists a bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
    such that <math|a<rsub|\<sigma\><around*|(|1|)>>=a\<wedge\>b<rsub|\<sigma\><around*|(|n|)>>=b>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|b<rsub|\<sigma\><around*|(|i|)>>=a<rsub|\<sigma\><around*|(|i+1|)>>>
  </theorem>

  <\proof>
    Using the previous lemma (see <reference|ordering of a finite disjoint
    family of pairwise disjoint intervals>) we have that\ 

    <\equation>
      <label|eq 15.43.428>\<exists\>\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}><text|
      where >\<sigma\><text|-is a bijection such that
      >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| with
      >i\<less\>j<text| we have >b<rsub|\<sigma\><around*|(|i|)>>\<leqslant\>a<rsub|\<sigma\><around*|(|j|)>>
    </equation>

    Further we have\ 

    <\equation>
      <label|eq 15.44.428>\<emptyset\>\<neq\><around*|[|a,b|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|\<sigma\><around*|(|i|)>>,b<rsub|\<sigma\><around*|(|i|)>>|[>
    </equation>

    As <math|\<emptyset\>\<neq\><around*|[|a,b|[>> we have <math|a\<less\>b>.
    Assume now <math|a\<less\>a<rsub|\<sigma\><around*|(|1|)>>> then we have
    <math|a\<less\>min<around*|(|b,a<rsub|\<sigma\><around*|(|1|)>>|)>> so by
    the density of the reals (see <reference|density theorem for the reals>)
    there exists a <math|x> such that <math|a\<less\>x\<less\>min<around*|(|b,a<rsub|\<sigma\><around*|(|1|)>>|)>\<Rightarrow\>x\<in\><around*|[|a,b|[>>
    and <math|x\<less\>a<rsub|\<sigma\><around*|(|1|)>>\<leqslant\>b<rsub|\<sigma\><around*|(|1|)>>\<leqslant\><rsub|<text|<reference|eq
    15.43.428>>>a<rsub|\<sigma\><around*|(|i|)>>> (where
    <math|i\<in\><around*|{|2,\<ldots\>,n|)>>) so that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x\<nin\><around*|[|a<rsub|i>,b<rsub|i>|[>> and thus
    <math|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    contradicting <math|x\<in\><around*|[|a,b|[>>. So we must have that\ 

    <\equation>
      <label|eq 15.45.428>a<rsub|\<sigma\><around*|(|1|)>>\<leqslant\>a
    </equation>

    If now <math|a<rsub|\<sigma\><around*|(|1|)>>\<less\>a> then as
    <math|a<rsub|\<sigma\><around*|(|1|)>>\<less\>b<rsub|\<sigma\><around*|(|1|)>>>
    we have <math|a<rsub|\<sigma\><around*|(|1|)>>\<less\>min<around*|(|a,b<rsub|\<sigma\><around*|(|1|)>>|)>>,
    using the density of the reals (see <reference|density theorem for the
    reals>) we have a <math|x> such that <math|a<rsub|\<sigma\><around*|(|1|)>>\<less\>x\<less\>min<around*|(|a,b<rsub|\<sigma\><around*|(|1|)>>|)>>.
    Then <math|x\<nin\><around*|[|a,b|[>\<wedge\>x\<in\><around*|[|a<rsub|\<sigma\><around*|(|1|)>>,b<rsub|\<sigma\><around*|(|1|)>>|[>\<subseteq\><around*|[|a,b|[>>
    again a contradiction. So we must have
    <math|a\<leqslant\>a<rsub|\<sigma\><around*|(|1|)>>> which together with
    <reference|eq 15.45.428> gives\ 

    <\equation>
      <label|eq 15.46.428>a<rsub|\<sigma\><around*|(|1|)>>=a
    </equation>

    Assume now that <math|b<rsub|\<sigma\><around*|(|n|)>>\<less\>b> then as
    <math|a\<less\>b> we have <math|max*<around*|(|b<rsub|\<sigma\><around*|(|n|)>>,a|)>\<less\>b>
    there exists by the density of the reals (see <reference|density theorem
    for the reals>) that there exists a <math|x> such that
    <math|max<around*|(|b<rsub|\<sigma\><around*|(|n|)>>,a|)>\<less\>x\<less\>b>
    then <math|x\<in\><around*|[|a,b|[>> and
    <math|b<rsub|\<sigma\><around*|(|n|)>>\<less\>x>. As
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>>we have
    <math|b<rsub|i>\<leqslant\>a<rsub|n>\<less\>b<rsub|n>\<less\>x> it
    follows that <math|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    contradicting <math|x\<in\><around*|[|a,b|[>> so we must have

    <\equation>
      <label|eq 15.47.428>b\<leqslant\>b<rsub|\<sigma\><around*|(|n|)>>
    </equation>

    Assume now that <math|b\<less\>b<rsub|\<sigma\><around*|(|n|)>>> then as
    <math|a<rsub|\<sigma\><around*|(|n|)>>\<less\>b<rsub|\<sigma\><around*|(|n|)>>>
    we have <math|max<around*|(|b,a<rsub|\<sigma\><around*|(|n|)>>|)>\<less\>b<rsub|\<sigma\><around*|(|n|)>>>
    and thus by the density of the reals again we have that there exists a
    <math|x> such that <math|max<around*|(|b,a<rsub|\<sigma\><around*|(|n|)>>|)>\<less\>x\<less\>b<rsub|\<sigma\><around*|(|n|)>>>
    so that <math|x\<nin\><around*|[|a<rsub|\<sigma\><around*|(|n|)>>,b<rsub|\<sigma\><around*|(|n|)>>|[>\<subseteq\><around*|[|a,b|[>>
    and <math|x\<nin\><around*|[|a,b|[>> a contradiction. So we must have
    <math|b\<leqslant\>b<rsub|\<sigma\><around*|(|n|)>>> which together with
    <reference|eq 15.47.428> gives\ 

    <\equation>
      <label|eq 15.48.428>b<rsub|\<sigma\><around*|(|n|)>>=b
    </equation>

    For the final part assume that <math|\<exists\>i<rsub|0>\<in\><around*|{|1,\<ldots\>,n-1|}>>
    (which implies that <math|1\<less\>n>) such that
    <math|b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>>
    then by the density of the real numbers there exists a <math|x> such that
    <math|b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>x\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>>.
    If now <math|j\<in\><around*|{|1,\<ldots\>,n|}>> then we have either\ 

    <\description>
      <item*|<math|j=i<rsub|0>>>then <math|x\<nin\><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>>

      <item*|<math|j\<less\>i<rsub|0>>>then
      <math|b<rsub|\<sigma\><around*|(|j|)>>\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>x<rsub|>>
      proving that <math|x\<nin\><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>>

      <item*|<math|i<rsub|0>\<less\>j>>then either\ 

      <\description>
        <item*|<math|i<rsub|0>+1=j>>then <math|x\<nin\><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>>

        <item*|<math|i<rsub|0>+1\<less\>j>>then
        <math|x\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>\<less\>a<rsub|\<sigma\><around*|(|j|)>>>
        proving that <math|x\<nin\><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>>
      </description>
    </description>

    which proves that <math|x\<nin\><big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|\<sigma\><around*|(|j|)>>,b<rsub|\<sigma\><around*|(|j|)>>|[>=<around*|[|a,b|[>>.
    Now for <math|i<rsub|0>> we have either\ 

    <\description>
      <item*|<math|i<rsub|0>=1>>then <math|a=a<rsub|\<sigma\><around*|(|1|)>>\<less\>b<rsub|\<sigma\><around*|(|1|)>>\<less\>x\<less\>a<rsub|\<sigma\><around*|(|2|)>>>
      then for <math|n> we have either

      <\description>
        <item*|<math|n=2>>then <math|a<rsub|\<sigma\><around*|(|2|)>>\<less\>b<rsub|\<sigma\><around*|(|2|)>>=b>
        proving that <math|x\<in\><around*|[|a,b|[>>

        <item*|<math|2\<less\>n>>then <math|a<rsub|\<sigma\><around*|(|2|)>>\<less\>b<rsub|\<sigma\><around*|(|2|)>>\<leqslant\>a<rsub|\<sigma\><around*|(|n|)>>\<less\>b<rsub|\<sigma\><around*|(|n|)>>=b>
        proving that <math|x\<in\><around*|[|a,b|[>>
      </description>

      <item*|<math|i<rsub|0>=n-1>>then we have either for <math|n>

      <\description>
        <item*|<math|n=2>>then <math|i<rsub|0>=1> so that
        <math|a=a<rsub|\<sigma\><around*|(|1|)>>=a<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>x\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>=a<rsub|\<sigma\><around*|(|2|)>>\<less\>b<rsub|\<sigma\><around*|(|2|)>>=b>
        proving that <math|x\<in\><around*|[|a,b|[>>

        <item*|<math|2\<less\>n>>then <math|1\<less\>i<rsub|0>> so that
        <math|a=a<rsub|\<sigma\><around*|(|1|)>>\<less\>b<rsub|\<sigma\><around*|(|1|)>>\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>x\<less\>a<rsub|\<sigma\><rsub|<around*|(|i<rsub|0>+1|)>>>=a<rsub|\<sigma\><around*|(|n|)>>\<less\>b<rsub|\<sigma\>n>=b>
        proving that <math|x\<in\><around*|[|a,b|[>>
      </description>

      <item*|<math|1\<less\>i<rsub|0>\<less\>n-1>>then
      <math|a=a<rsub|\<sigma\><around*|(|1|)>>\<less\>b<rsub|\<sigma\><around*|(|1|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>|)>>\<less\>x\<less\>a<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>\<less\>b<rsub|\<sigma\><around*|(|i<rsub|0>+1|)>>\<leqslant\>a<rsub|\<sigma\><around*|(|n|)>>\<less\>b<rsub|\<sigma\><around*|(|n|)>>=b>
      proving that <math|x\<in\><around*|[|a,b|]>>
    </description>

    So we reach the contradiction that <math|x\<in\><around*|[|a,b|[>\<nni\>x>,
    hence we must have that\ 

    <\equation>
      <label|eq 15.49.428>\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}> we
      have b<rsub|\<sigma\><around*|(|i|)>>=a<rsub|\<sigma\><around*|(|i+1|)>>
    </equation>

    The lemma is then proved by <reference|eq 15.46.428>, <reference|eq
    15.48.428> and <reference|eq 15.49.428>.
  </proof>

  <\lemma>
    <label|sum of lengths of pairwise disjoint non empty intervals>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>,
    <math|\<emptyset\>\<neq\><around*|[|a,b|[>\<in\>\<cal-I\>> such that
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    then <math|l<around*|(|<around*|[|a,b|[>|)>=b-a=<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>
  </lemma>

  <\proof>
    We have fro <math|n> the following cases to consider\ 

    <\description>
      <item*|<math|n=1>>then <math|<around*|[|a,b|[>=<around*|[|a<rsub|1>,b<rsub|1>|[>>
      so that <math|<around*|(|b-a|)>=<around*|(|b<rsub|1>-a<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1><around*|(|b<rsub|i>-a<rsub|i>|)>>

      <item*|<math|1\<less\>n>>Using the previous theorem we have that here
      exists a bijection <math|\<sigma\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>>
      such that <math|a<rsub|\<sigma\><around*|(|1|)>>=a\<wedge\>b<rsub|\<sigma\><around*|(|n|)>>=b>
      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
      <math|b<rsub|\<sigma\><around*|(|i|)>>=a<rsub|\<sigma\><around*|(|i+1|)>>>.
      We have then that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|sum
        of extented reals is indepenent of order the
        reals>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|\<sigma\><around*|(|i|)>>-a<rsub|\<sigma\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n-1><around*|(|b<rsub|\<sigma\><around*|(|i|)>>-a<rsub|\<sigma\><around*|(|i|)>>|)>|)>+b<rsub|\<sigma\><around*|(|n|)>>-a<rsub|\<sigma\><around*|(|n|)>>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n-1><around*|(|a<rsub|\<sigma\><around*|(|i+1|)>>-a<rsub|\<sigma\><around*|(|i|)>>|)>|)>+b-a<rsub|\<sigma\><around*|(|n|)>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of differences>>>>|<cell|a<rsub|\<sigma\><around*|(|n|)>>-a<rsub|\<sigma\><around*|(|1|)>>+b-a<rsub|\<sigma\><around*|(|n|)>>>>|<row|<cell|>|<cell|=>|<cell|b-a>>>>
      </eqnarray*>
    </description>
  </proof>

  Finally we have the theorem we need to prove that <math|l> is a content.

  <\theorem>
    <label|length of union of pairise disjoint interval>Let
    <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>,
    <math|<around*|[|a,b|[>\<in\>\<cal-I\>> such that
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    then <math|l<around*|(|<around*|[|a,b|[>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>
  </theorem>

  <\proof>
    We have either\ 

    <\description>
      <item*|<math|<around*|[|a,b|[>=\<emptyset\>>>then <math|a=b> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|a<rsub|i>=b<rsub|i>> so that <math|l<around*|(|<around*|[|a,b|[>|)>=0=n\<cdot\>0=<big|sum><rsub|i=1><rsup|n>0=<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>

      <item*|<math|<around*|[|a,b|[>\<neq\>\<emptyset\>>>then
      <math|\<cal-E\>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>|}>\<neq\>\<emptyset\>>
      so there exists a <math|m\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|\<tau\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>\<cal-E\>>,
      define then <math|<around*|{|<around*|[|c<rsub|i>,d<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
      by <math|<around*|[|c<rsub|i>,d<rsub|i>|[>=<around*|[|a<rsub|\<tau\><around*|(|i|)>>,b<rsub|\<tau\><around*|(|i|)>>|[>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have
      <math|<around*|[|c<rsub|i>d<rsub|i>|[>\<neq\>\<emptyset\>> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|c<rsub|i>,d<rsub|i>|[>>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|\<tau\><around*|(|i|)>>,b<rsub|\<sigma\><around*|(|i|)>>|[>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\>\<tau\><around*|(|<around*|{|1,\<ldots\>,m|}>|)>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\>\<cal-E\>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\>\<cal-E\>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|a,b|[>>>>>
      </eqnarray*>

      So using <reference|sum of lengths of pairwise disjoint non empty
      intervals> we have that <math|<big|sum><rsub|i=1><rsup|m>d<around*|\<nobracket\>|<rsub|i>-c<rsub|i>|)>=b-a>,
      finally

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<cal-E\>><around*|(|b<rsub|i>-a<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\\<cal-E\>><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>\<cal-E\>><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|b<rsub|\<tau\><around*|(|i|)>>-a<rsub|\<tau\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|d<rsub|i>-c<rsub|i>|)><rsub|>>>|<row|<cell|>|<cell|=>|<cell|b-a>>>>
      </eqnarray*>
    </description>
  </proof>

  <\theorem>
    <math|l:\<cal-I\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a content on
    <math|\<cal-I\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|l<around*|(|\<emptyset\>|)>=0> by definition

      <item>If <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>
      is such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>\<in\>\<cal-I\>>
      then <math|I=<around*|[|a,b|[>> and
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|I<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>>, so applying the
      previous theorem (see <reference|length of union of pairise disjoint
      interval>) we have that <math|l<around*|(|<around*|[|a,b|[>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>>
    </enumerate>
  </proof>

  Now we have proved that <math|l> is a content on the semi ring we can use
  <reference|extending content (pre measure)> to extend <math|l> to a content
  <math|<wide|l|\<bar\>>> on the ring <math|\<cal-R\><around*|[|\<cal-I\>|]>>
  as is expressed in the following theorem.

  <\theorem>
    <math|<wide|l|\<bar\>>:\<cal-R\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a finite content
  </theorem>

  <\proof>
    This is \ proved by <reference|extending content (pre measure)> and the
    fact that <math|l> is finite.
  </proof>

  <math|<wide|l|\<bar\>>> is actually a pre-measure on
  <math|\<cal-R\><around*|[|\<cal-I\>|]>> as is proved in the following
  theorem.

  <\theorem>
    <label|length on R[I] is a pre-measure><math|<wide|l|\<bar\>>:\<cal-R\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a pre-measure on the ring <math|\<cal-R\><around*|[|\<cal-I\>|]>>
  </theorem>

  <\proof>
    We will use the theorem <reference|condition for pre-measure on a ring
    generated by a semi ring> to prove that <math|<wide|l|\<bar\>>> is a
    pre-measure. So define <math|\<cal-K\>=<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\><text|
    with >a\<leqslant\>b|}><big|cup><around*|{|\<emptyset\>|}>> then as every
    closed interval is compact (see <reference|[a,b] is compact>),
    <math|\<emptyset\>> is compact (see <reference|exmpty set is compact>),
    <math|> and every set of compact sets in <math|\<bbb-R\>> (a Hausdorf
    space) is a compact class (see <reference|set of compact sets is a
    countable compact class>) we have\ 

    <\equation>
      <label|eq 15.55.429>\<cal-K\>=<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>
      with a\<leqslant\>b|}> is a compact class
    </equation>

    Take now <math|I\<in\>\<cal-I\>> (which we have proved to be a semi ring)
    and <math|\<varepsilon\>\<gtr\>0> then there exists
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> such that
    <math|I=<around*|[|a,b|[>> we have for <math|I> either

    <\description>
      <item*|<math|I=\<emptyset\>>>then if we take
      <math|K<rsub|\<varepsilon\>>=\<emptyset\>\<in\>\<cal-K\>> and
      <math|I<rsub|\<varepsilon\>>=\<emptyset\>\<in\>\<cal-I\>> we have that
      <math|I<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>I>
      and <math|l<around*|(|I|)>-l<around*|(|I<rsub|\<varepsilon\>>|)>=0\<less\>\<varepsilon\>>

      <item*|<math|I\<neq\>\<emptyset\>>>then <math|a\<less\>b> then if we
      take <math|\<delta\>=min<around*|(|<frac|b-a|4>,<frac|\<varepsilon\>|4>|)>\<gtr\>0>
      then <math|<around*|(|b-\<delta\>|)>-<around*|(|a+\<delta\>|)>=<around*|(|b-a|)>-2\<cdot\>\<delta\>=<around*|(|b-a|)>-<frac|b-a|2>=<frac|<around*|(|b-a|)>|2>\<gtr\>0>
      take then <math|K<rsub|\<varepsilon\>>=<around*|[|a+\<delta\>,b-\<delta\>|]>\<in\>\<cal-K\>>
      and <math|I<rsub|\<varepsilon\>>=<around*|[|a+\<delta\>,b-\<delta\>|[>\<in\>\<cal-I\>>
      then we have <math|l<around*|(|I|)>-l<around*|(|I<rsub|\<varepsilon\>>|)>=l<around*|(|<around*|[|a,b|[>|)>-l<around*|(|<around*|[|a+\<delta\>,b-\<delta\>|[>|)>=b-a-<around*|(|b-\<delta\>-<around*|(|a+\<delta\>|)>|)>=2\<cdot\>\<delta\>=<frac|\<varepsilon\>|2>\<less\>\<varepsilon\>>
      proving that <math|I<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>I>
      and <math|l<around*|(|I|)>-l<around*|(|I<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>>
    </description>

    proving\ 

    <\equation>
      <label|eq 15.56.429>\<exists\>K<rsub|\<varepsilon\>>\<in\>\<cal-K\>,\<exists\>I<rsub|\<varepsilon\>>\<in\>\<cal-I\><text|
      with >I<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>I<text|
      and >l<around*|(|I|)>-l<around*|(|I<rsub|\<varepsilon\>>|)>
    </equation>

    Using <reference|eq 15.55.429> and <reference|eq 15.56.429> we can apply
    theorem <reference|condition for pre-measure on a ring generated by a
    semi ring> proving that <math|<wide|l|\<bar\>>> is a pre-measure.
  </proof>

  <\corollary>
    <label|Lebesgue measure><index|Lebesgue measure>There exists a unique
    measure <math|\<lambda\>:\<sigma\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    on the <math|\<sigma\>>-ring <math|\<sigma\><around*|[|\<cal-I\>|]>> on
    <math|\<bbb-R\>> generated by the semi ring <math|\<cal-I\>> so that
    <math|\<lambda\><rsub|\|\<cal-I\>>=l>. In other words
    <math|<around*|\<langle\>|\<bbb-R\>,\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>,\<lambda\>|\<rangle\>>\<equallim\><rsub|<text|<reference|Borel
    algebra on the reals>>><around*|\<langle\>|\<bbb-R\>,\<sigma\><around*|[|\<cal-I\>|]>,\<lambda\>|\<rangle\>>>
    forms a measure space. We call <math|\<lambda\>> the
    <with|font-series|bold|Lebesgue> measure on <math|\<bbb-R\>>.
  </corollary>

  <\proof>
    By the previous theorem we have that <math|<wide|l|\<bar\>>:\<cal-R\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is pre-measure on the ring <math|\<cal-R\><around*|[|\<cal-I\>|]>>.
    Further if <math|x\<in\>\<bbb-R\>> then by a consequence of the
    Arhimedean property (see <reference|consequence of the archimedean
    property for the reals>) there exists a <math|n\<in\>\<bbb-N\><rsub|0>>
    such that <math|<around*|\||x|\|>\<less\>n\<Rightarrow\>-n\<less\>x\<less\>n\<Rightarrow\>x\<in\><around*|[|-n,n|[>>
    which proves that <math|\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
    where <math|<around*|[|-i,i|[>\<in\>\<cal-I\>\<subseteq\>\<cal-R\><around*|[|\<cal-I\>|]>
    and <wide|l|\<bar\>><around*|(|<around*|[|-i,i|[>|)>=2\<cdot\>i\<less\>\<infty\>>.
    Applying then <reference|extending pre-measure on a ring to the sigma
    algebra> proves that there exists a unique measure
    <math|\<lambda\>:\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-I\>|]>|\<nobracket\>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<lambda\><rsub|\|\<cal-R\><around*|[|\<cal-I\>|]>>=<wide|l|\<bar\>>>.
    As <math|\<cal-I\>\<subseteq\>\<cal-R\><around*|[|\<cal-I\>|]>> we have
    that <math|\<lambda\><rsub|\|\<cal-I\>>\<equallim\><rsub|<text|<reference|restriction
    of restricted function>>><around*|(|\<lambda\><rsub|\<cal-R\><around*|[|\<cal-I\>|]>>|)><rsub|\<cal-I\>>=<wide|l|\<bar\>><rsub|\|\<cal-I\>>=l>.
    Next using <reference|sigma algebra of ring of a semi ring> we have that
    <math|\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-I\>|]>|]>=\<sigma\><around*|[|\<cal-I\>|]>>
    so we have that there exists a unique
    <math|\<lambda\>:\<sigma\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<lambda\><rsub|\|\<cal-I\>>=l>. For uniqueness if there
    exists a measure <math|\<omega\>:\<sigma\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<omega\><rsub|\|\<cal-I\>>=l> then as
    <math|<around*|(|\<omega\><rsub|\|\<cal-R\><around*|[|\<cal-I\>|]>>|)><rsub|\|\<cal-I\>>=\<omega\><rsub|\|\<cal-I\>>=l=<wide|l|\<bar\>><rsub|\|\<cal-I\>>>
    we have by <reference|extending content (pre measure)> that
    <math|\<omega\><rsub|\|\<cal-R\><around*|[|\<cal-I\>|]>>=<wide|l|\<bar\>>=\<lambda\><rsub|\|\<cal-R\><around*|[|\<cal-I\>|]>>>,
    then as <math|\<lambda\>> is a unique extension of
    <math|<wide|l|\<bar\>>> we must have that <math|\<omega\>=\<lambda\>>
    proving uniqueness.
  </proof>

  <subsubsection|Translation invariance of the Lebesgue measure on
  <math|\<bbb-R\>>>

  We set now out to prove that the Lebesgue measure <math|\<lambda\>> is
  translation invariant. For this we use the uniqueness of the extension of a
  content on a ring to a <math|\<sigma\>>-algebra if the content is
  <math|\<sigma\>>-finite (see <reference|extending pre-measure on a ring to
  the sigma algebra>) to prove that <math|\<lambda\><rsub|x>> defined by
  <math|\<lambda\><rsub|x><around*|(|A|)>=\<lambda\><around*|(|A+x|)>> is the
  sames as <math|\<lambda\>>. Hence we must prove that <math|\<lambda\>> and
  <math|\<lambda\><rsub|x>> are extensions of <math|<wide|l|\<bar\>>>, that
  <math|\<lambda\><rsub|x>> is a measure and that <math|\<lambda\>> is
  <math|\<sigma\>>-finite.

  <\definition>
    Define <math|\<lambda\><rsub|x>:\<cal-B\><around*|[|\<bbb-R\>.\<cal-T\><rsub|<around*|\|||\|>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    by <math|\<lambda\><rsub|x><around*|(|A|)>=\<lambda\><around*|(|A+x|)>>
    (this is well defined as <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<Rightarrow\>A+x\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    see <reference|Borel set+x>)
  </definition>

  Some set relations we need in the following lemmas.

  <\lemma>
    <label|union and intersection and sum>Let <math|X> be a group then we
    have <math|\<forall\>x\<in\>X> that

    <\enumerate>
      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>I>> with
      <math|A<rsub|i>\<subseteq\>X> we have
      <math|<big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>+x|)>=<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>+x>

      <item><math|><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>I>>
      with <math|A<rsub|i>\<subseteq\>X> we have
      <math|<big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>+x|)>=<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>+x>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>+x|)>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I\<vdash\>y\<in\>A<rsub|i>+x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I\<vdash\>y-x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y-x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>+x>>>>
      </eqnarray*>

      <item>This follows from\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|y\<in\><big|cap><rsub|i\<in\>I><around*|(|A<rsub|i>+x|)>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I\<vdash\>y\<in\>A<rsub|i>+x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\>I\<vdash\>y-x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y-x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)>+x>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  <\lemma>
    <label|lemma 15.116><math|<wide|l|\<bar\>>:\<cal-R\><around*|[|\<cal-I\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <math|\<sigma\>>-finite content on <math|\<bbb-R\>>
  </lemma>

  <\proof>
    <math|\<bbb-R\>\<equallim\><rsub|<text|<reference|R can be written as a
    countable union of halfopen intervals>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<wide|l|\<bar\>><around*|(|<around*|[|-i,i|[>|)>=l<around*|(|<around*|[|-i,i|[>|)>=2\<cdot\>i\<less\>\<infty\>>
  </proof>

  Further <math|<wide|l|\<bar\>>> is translation invariant.

  <\lemma>
    <label|lemma 15.117><math|\<forall\>A\<in\>\<cal-R\><around*|[|\<cal-I\>|]>>
    and <math|\<forall\>x\<in\>\<bbb-R\>> we have
    <math|A+x\<in\>\<cal-R\><around*|[|\<cal-I\>|]>> and
    <math|<wide|l|\<bar\>><around*|(|A+x|)>=<wide|l|\<bar\>><around*|(|A|)>>
  </lemma>

  <\proof>
    If <math|A\<in\>\<cal-R\><around*|[|\<cal-I\>|]>> then using the
    definition of <math|\<cal-R\><around*|[|\<cal-I\>|]>> (see
    <reference|definition of a R[S]> and <reference|semi ring of intervals>)
    there exists a pairwise disjoint family of half open intervals
    <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>.
    Using <reference|union and intersection and sum> we have then that
    <math|A+x=<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>+x=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>+x|)>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+x,b<rsub|i>+x|[>\<in\>\<cal-R\><around*|[|\<cal-I\>|]>>.
    Further we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|l|\<bar\>><around*|(|A+x|)>>|<cell|=>|<cell|<wide|l|\<bar\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+x,b<rsub|i>+x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><wide|l|\<bar\>><around*|(|<around*|[|a<rsub|i>+x,b<rsub|i>+x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>+x,b<rsub|i>+x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=><rsup|n><wide|l|\<bar\>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|l|\<bar\>><around*|(|<big|sum><rsub|i=1><rsup|n><around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|l|\<bar\>><around*|(|A|)>>>>>
    </eqnarray*>
  </proof>

  \;

  We prove now that <math|\<lambda\><rsub|x>> is a measure

  <\lemma>
    <label|lemma 15.118><math|\<lambda\><rsub|x>:\<cal-B\><around*|[|\<bbb-R\>.\<cal-T\><rsub|<around*|\|||\|>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<lambda\><rsub|x><around*|(|\<emptyset\>|)>=\<lambda\><around*|(|\<emptyset\>+x|)>=\<lambda\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a family of pairwise disjoints set in
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      then (by <reference|union and intersection and sum> (2))
      <math|<around*|{|A<rsub|i>+x|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
      pairwise disjoint family in <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.
      So <math|\<lambda\><rsub|x><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<lambda\><around*|(|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>+x|)>\<equallim\><rsub|<text|<reference|union
      and intersection and sum>>>\<lambda\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i>+x|)>|)>\<equallim\><rsub|\<lambda\><text|
      is a measure>><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><around*|(|A<rsub|i>+x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsub|x><around*|(|A<rsub|i>|)>>
    </enumerate>
  </proof>

  Finally we are ready to prove that <math|\<lambda\>> is translation
  invariant.

  <\theorem>
    <label|lambda is translation invariant><math|\<lambda\>:\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is translation invariant.
  </theorem>

  <\proof>
    Given <math|x\<in\>\<bbb-R\>> we have for every
    <math|A\<in\>\<cal-R\><around*|[|\<cal-I\>|]>> we have that
    <math|\<lambda\><around*|(|A|)>\<equallim\><rsub|\<lambda\> <text|
    extends ><wide|l|\<bar\>><text| on <math|\<cal-R\><around*|[|\<cal-I\>|]>>>><wide|l|\<bar\>><around*|(|A|)>\<equallim\><rsub|<text|<reference|lemma
    15.117>>><wide|l|\<bar\>><around*|(|A+x|)>=\<lambda\><around*|(|A+x|)>=\<lambda\><rsub|x><around*|(|A|)>>.
    So <math|\<lambda\><rsub|x>> and <math|\<lambda\>> are measures on
    <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>=\<sigma\><around*|(|\<cal-R\><around*|[|\<cal-I\>|]>|)>>
    that extends the <math|\<sigma\>>-finite content <math|<wide|l|\<bar\>>>
    on the \ <math|\<cal-R\><around*|[|\<cal-I\>|]>>. So all the conditions
    of the extension and uniqueness theorem <reference|extending pre-measure
    on a ring to the sigma algebra> are fullfilled and we have thus that
    <math|\<lambda\><rsub|x>=\<lambda\>>. Or in other words
    <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    we have <math|\<lambda\><around*|(|A|)>=\<lambda\><rsub|x><around*|(|A|)>=\<lambda\><around*|(|A+x|)>>
    proving the theorem.
  </proof>

  <subsection|Lebesgue measure on <math|\<bbb-R\><rsup|n>>>

  <subsubsection|Definition of the Lebesgue measure on
  <math|\<bbb-R\><rsup|n>>>

  <strong|>To define a measure on <math|\<bbb-R\><rsup|n>> we first define
  the length content on <math|\<cal-R\><rsup|n>>, the semi ring of half open
  rectangle, extend this to a content on <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>
  and finally to a measure on <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
  the Borel algebra on <math|\<bbb-R\>>. So lets first define a volume
  measure on <math|\<cal-R\><rsup|n>>.

  <\lemma>
    Given <math|n\<in\>\<bbb-N\><rsub|0>> and <math|R\<in\>\<cal-R\><rsup|n>>
    then there exists a unique family <math|<around*|{|<around*|(|a<rsub|i>,b<rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>*\<times\>\<bbb-R\>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>> such that
    <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
  </lemma>

  <\proof>
    Existence is proved by the definition of <math|\<cal-R\><rsup|n>> and for
    uniqueness, assume that there exists also a family
    <math|<around*|{|<around*|(|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|)>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    such that <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rprime|'><rsub|i>,b<rsub|i><rprime|'>|[>>
    then by <reference|equality of product of sets> we have that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a<rsub|i><rprime|'>,b<rsub|i><rprime|'>|[>>
    so that using <reference|interval is uniquely determined by boundary> we
    have <math|a<rsub|i>=a<rprime|'><rsub|i>\<wedge\>b<rsub|i>=b<rprime|'><rsub|i>>
  </proof>

  To ensure that the volume is positive we need the following lemma

  <\lemma>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>> a
    family of non negative numbers then we have that
    <math|0\<leqslant\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<less\>\<infty\>>
  </lemma>

  <\proof>
    This is easely proved by induction so let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text| if
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>> is a
    family of non negative numbers then 0\<leqslant\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>x<rsub|i>\<less\>\<infty\>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>><math|0\<leqslant\>x<rsub|1>=<big|prod><rsub|i=1><rsup|1>x<rsub|i>=x<rsub|1>\<less\>0>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>>
      be a family of non negative real numbers then as
      <math|n\<in\>\<cal-S\>> we have <math|\<infty\>\<gtr\><big|prod><rsub|i=1><rsup|n>x<rsub|i>\<geqslant\>0>.
      Now <math|0\<leqslant\><around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>|)>\<cdot\>x<rsub|n+1>=<big|prod><rsub|i=1><rsup|n+1>x<rsub|i>=<around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>|)>\<cdot\>x<rsub|n+1>\<less\>\<infty\>>
      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  Using the above lemma we can then define the volume function

  <\definition>
    <label|volumne content>Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|v<rsup|n>:\<cal-R\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    is defined by <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i>-a<rsub|i>|)>>.
    Further we have that <math|v<rsup|n>> is finite.
  </definition>

  To prove that <math|v> is a content we must first prove finite additivity.
  The strategy is as follows, if a rectangle is a disjoint union of
  rectangles then we prove that the sides of the rectangle is a union of the
  sides of the composing rectangles. These union of sides overlap so we turn
  them in a union of smaller intervals that are pairwise disjoint and take
  then the sum of the rectangles constructed from these smaller intervals.
  First we show that if a rectangle is a union of other rectangles that then
  the sides of this rectangle is the union ot the sides of the composing
  rectangles.

  <\lemma>
    <label|union of rectangles as union of intervals>Let
    <math|n,m\<in\>\<bbb-N\><rsub|0>> and let
    <math|<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>|}><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-R\><rsup|n>>
    such that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>> we have
    <math|\<emptyset\>\<neq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>>
    and <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>=<around*|[|a<rsub|i>,b<rsub|i>|[>>
  </lemma>

  <\proof>
    Take <math|i\<in\><around*|{|1,\<ldots\>,n|}>>. If
    <math|x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>>
    then <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,m|}>> such that
    <math|x\<in\><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>>, as
    <math|<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,k>,b<rsub|j,k>|[>\<neq\>\<emptyset\>>
    we have by <reference|generalized product of empty set is empty> that
    <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
    <math|<around*|[|a<rsub|j,k>,b<rsub|j,k>|[>\<neq\>\<emptyset\>> so there
    exists a <math|x<rsub|k>\<in\><around*|[|a<rsub|j,k>,b<rsub|j,k>|[>>. So
    we have that <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,n|)>\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,k>,b<rsub|j,k>|[>=<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k>,b<rsub|k>|[>\<Rightarrow\>x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[><rsub|>>
    which proves that\ 

    <\equation>
      <label|eq 15.57.430><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|[>
    </equation>

    If <math|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>> then then as
    <math|<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k>,b<rsub|k>|[>\<neq\>\<emptyset\>>
    there exists <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
    a <math|x<rsub|k>\<in\><around*|[|a<rsub|k>,b<rsub|k>|[>> so that
    <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k>,b<rsub|k>|[>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,k>,b<rsub|j,k>|[>|)>\<Rightarrow\>\<exists\>j\<in\><around*|{|1,\<ldots\>,m|}>>
    such that <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|i-1>,x,x<rsub|i+1>,\<ldots\>,x<rsub|n>|)>\<in\><big|prod><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j,k>,b<rsub|j,k>|[>\<Rightarrow\>x\<in\><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>>
    proving that\ 

    <\equation>
      <label|eq 15.58.430><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>
    </equation>

    Using <reference|eq 15.57.430> together with <reference|eq 15.57.430>
    gives <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text| we have
    ><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|j,i>,b<rsub|j,i>|[>=<around*|[|a<rsub|i>,b<rsub|i>|[>>
    proving the lemma.
  </proof>

  Next we show how a family of increasing reals can be used to construct a
  pairwise disjoint family of intervals.

  <\lemma>
    <label|family of reals to intervals>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> and
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|a=a<rsub|1>\<wedge\>a<rsub|n>=b> and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> we have
    <math|a<rsub|i>\<leqslant\>a<rsub|i+1>> then
    <math|<around*|[|a,b|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>>
  </lemma>

  <\proof>
    If <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>>
    then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n-1|}>> such that
    <math|x\<in\><around*|[|a<rsub|i>,a<rsub|i-1>|[>\<Rightarrow\>a<rsub|i>\<leqslant\>x\<less\>a<rsub|i-1>\<equallim\><rsub|a=a<rsub|1>\<leqslant\>a<rsub|i>\<leqslant\>a<rsub|n>=b>a\<leqslant\>x\<less\>b\<Rightarrow\>x\<in\><around*|[|a,b|[>>
    proving that\ 

    <\equation>
      <label|eq 15.59.431><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>\<subseteq\><around*|[|a,b|[>
    </equation>

    Next if <math|x\<in\><around*|[|a,b|[>\<Rightarrow\>a\<leqslant\>x\<less\>b=a<rsub|n>>
    so that <math|\<cal-I\><rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<less\>a<rsub|i>|}>\<neq\>\<emptyset\>>
    [as <math|n\<in\>\<cal-I\><rsub|x>>], hence
    <math|m=min<around*|(|\<cal-I\><rsub|x>|)>> exists. If <math|m=1> then
    <math|a<rsub|1>=a\<leqslant\>x\<less\>a<rsub|1>> a contradiction so we
    must have <math|1\<less\>m> and then <math|1\<leqslant\>m-1\<less\>m\<Rightarrow\>a<rsub|m-1>\<leqslant\>x\<less\>a<rsub|m>\<Rightarrow\>x\<in\><around*|[|a<rsub|m-1>,a<rsub|m>|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n-1|}>><around*|[|a<rsub|i>,a<rsub|i-1>|[>>.
    This proves together with <reference|eq 15.59.431> that\ 

    <\equation>
      <label|eq 15.60.431><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>=<around*|[|a,b|[>
    </equation>

    If now <math|i,j\<in\><around*|{|1,\<ldots\>,n-1|}>> with
    <math|i\<neq\>j> we may assume without loosing generality that
    <math|i\<less\>j> [otherwise interchange <math|i> and <math|j>], so
    <math|i+1\<leqslant\>j> and thus <math|a<rsub|i+1>\<leqslant\>a<rsub|j>>.
    If now <math|x\<in\><around*|[|a<rsub|i>,a<rsub|i+1>|[><big|cap><around*|[|a<rsub|j>,a<rsub|j+1>|[>>
    then <math|x\<less\>a<rsub|i+1>\<leqslant\>a<rsub|j>\<leqslant\>x\<Rightarrow\>x\<less\>x>
    a contradiction so we must have that <math|<around*|[|a<rsub|i>,a<rsub|i+1>|[><big|cap><around*|[|a<rsub|j>,a<rsub|j+1>|[>=\<emptyset\>>
  </proof>

  To prove additivity of the volume function we need a way to turn a
  half-open interval that is the union of half-open intervals in a disjoint
  union of half-open intervals while preserving the endpoints and the union.
  This is done in the following lemma.

  <\lemma>
    <label|partitioning of intervals>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>
    such that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>\<subseteq\>\<cal-I\>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>\<less\>b<rsub|i>> then there exists a
    <math|m\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>> and a bijection
    <math|\<rho\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><big|cup><around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
    such that\ 

    <\enumerate>
      <item><math|\<rho\><around*|(|1|)>=a\<wedge\>\<rho\><around*|(|m|)>=b>

      <item><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,m|}>> with
      <math|i\<less\>j> we have <math|\<rho\><around*|(|i|)>\<less\>\<rho\><around*|(|j|)>>

      <item><math|\<forall\>x,y\<in\><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><big|cup><around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      with <math|x\<less\>y> we have <math|\<rho\><rsup|-1><around*|(|x|)>\<less\>\<rho\><rsup|-1><around*|(|y|)>>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      \ <math|\<rho\><rsup|-1><around*|(|a<rsub|i>|)>\<less\>\<rho\><rsup|-1><around*|(|b<rsub|i>|)>>
      and <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|i\<in\><around*|{|\<rho\><rsup|-1><around*|(|a<rsub|i>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i>|)>-1|}>><around*|[|\<rho\><around*|(|i|)>,\<rho\><around*|(|i+1|)>|[>>

      <item><math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m-1|}>><around*|[|\<rho\><around*|(|i|)>,\<rho\><around*|(|i+1|)>|[>=<around*|[|a,b|[>>
    </enumerate>
  </lemma>

  <\proof>
    Define <math|A=<around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><big|cup><around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>.
    First as by the hypothese we have that
    <math|\<emptyset\>\<neq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    we must have <math|a\<less\>b>. Assume now that <math|a\<in\>A>, then as
    <math|a\<in\><around*|[|a,b|[>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|a\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\<Rightarrowlim\>a<rsub|i>\<leqslant\>a\<less\>b<rsub|i>\<Rightarrowlim\><rsub|a\<nin\>A>a<rsub|i>\<less\>a\<less\>b<rsub|i>,>
    using the density of the reals (see <reference|density theorem for the
    reals>) there exists a <math|t\<in\>\<bbb-R\>> such that
    <math|a<rsub|i>\<less\>t\<less\>a\<less\>b<rsub|i>\<Rightarrow\>t\<nin\><around*|[|a,b|[>\<wedge\>t\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|[|a,b|[>>
    a contradiction. So we must have\ 

    <\equation>
      <label|eq 15.61.431>a\<in\>\<cal-A\>
    </equation>

    Assume now that <math|b\<nin\>A> then as
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|[|a,b|[>\<Rightarrow\>b<rsub|i>\<leqslant\>b\<Rightarrowlim\><rsub|b\<nin\>A>b<rsub|i>\<less\>b\<Rightarrow\>max<around*|(|<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>b\<Rightarrowlim\><rsub|a\<less\>b>max<around*|(|<around*|{|a|}><big|cup>max<around*|(|<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>|)>\<less\>b>
    so by density of the reals again we have
    <math|\<exists\>t\<in\>\<bbb-R\>> such that
    <math|a,max<around*|(|<around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>t\<less\>b>
    proving that <math|t\<in\><around*|[|a,b|[>\<wedge\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>t\<nin\><around*|[|a<rsub|i>,b<rsub|i>|[>\<Rightarrow\>t\<in\><around*|[|a,b|[>\<wedge\>t\<nin\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a,b|[>>
    a contradiction, so we have

    <\equation>
      <label|eq 15.62.431>b\<in\>A
    </equation>

    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|[|a,b|[>\<Rightarrowlim\><rsub|<text|<reference|sub
    interval>>>a\<leqslant\>a<rsub|i>\<less\>b<rsub|i>\<leqslant\>b> so that
    we must have\ 

    <\equation>
      <label|eq 15.63.431>a=min<around*|(|A|)>\<wedge\>b=max<around*|(|A|)>
    </equation>

    As <math|A> is finite <math|#<around*|(|A|)>> is defined and as
    <math|a,b\<in\>A> with <math|a\<less\>b> we have that
    <math|m=#<around*|(|A|)>\<geqslant\>2>. Using the fact that we can order
    finite sets (see <reference|ordering of a finite set>) in the fully
    ordered <math|\<bbb-R\>> there exists a bijection
    <math|\<rho\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>A> such that
    <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,m|}>> with
    <math|i\<less\>j> we have <math|\<rho\><around*|(|i|)>\<less\>\<rho\><around*|(|j|)>>.
    If <math|i\<in\><around*|{|2,\<ldots\>,m-1|}>> we have
    <math|\<rho\><around*|(|1|)>\<less\>\<rho\><around*|(|i|)>\<less\>\<rho\><around*|(|m|)>>
    so that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<rho\><around*|(|1|)>\<leqslant\>\<rho\><around*|(|i|)>\<leqslant\>\<rho\><around*|(|m|)>>
    hence we have\ 

    <\equation>
      <label|eq 15.64.431>\<rho\><around*|(|1|)>=min<around*|(|A|)>\<equallim\><rsub|<text|<reference|eq
      15.63.431>>>a\<wedge\>\<rho\><around*|(|m|)>=max<around*|(|A|)>\<equallim\><rsub|<text|<reference|eq
      15.63.431>>>b <text| and >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>\<vdash\>i\<less\>j<text|
      we have >\<rho\><around*|(|i|)>\<less\>\<rho\><around*|(|j|)>
    </equation>

    proving (1) and (2) of the lemma. For (3) let <math|x,y\<in\>A> such that
    <math|x\<less\>y> then if <math|\<rho\><rsup|-1><around*|(|y|)>\<leqslant\>\<rho\><rsup|-1><around*|(|x|)>>
    we have by <reference|eq 15.64.431> that
    <math|y=\<rho\><around*|(|\<rho\><rsup|-1><around*|(|y|)>|)>\<leqslant\>\<rho\><around*|(|\<rho\><rsup|-1><around*|(|x|)>|)>=x\<less\>y>
    giving the contradiction <math|y\<less\>y>, so we must have

    <\equation>
      <label|eq 15.65.431>\<forall\>x,y\<in\><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><big|cup><around*|{|b<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<vdash\>x\<less\>y<text|
      we have >\<rho\><rsup|-1><around*|(|x|)>\<less\>\<rho\><rsup|-1><around*|(|y|)>
    </equation>

    For (4) let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then by definition
    of <math|A> we have <math|a<rsub|i>,b<rsub|i>\<in\>A> then
    <math|a<rsub|i>\<less\>b<rsub|i>> so by <reference|eq 15.65.431>
    <math|k=\<rho\><rsup|-1><around*|(|a<rsub|i>|)>\<less\>\<rho\><rsup|-1><around*|(|b<rsub|i>|)>=l>.
    Define <math|<around*|{|d<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,l-k+1|}>>>
    by <math|d<rsub|i>=\<rho\><around*|(|k-1+i|)>> then
    <math|d<rsub|1>=\<rho\><around*|(|k-1+1|)>=\<rho\><around*|(|k|)>=\<rho\><around*|(|\<rho\><rsup|-1><around*|(|a<rsub|i>|)>|)>=a<rsub|i>>
    and <math|d<rsub|l-k+1>=\<sigma\><around*|(|k-1+<around*|(|l-k|)>+1|)>=\<rho\><around*|(|l|)>=\<rho\><around*|(|\<rho\><rsup|-1><around*|(|b<rsub|i>|)>|)>=b<rsub|i>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,<around*|(|k-l+1|)>-1|}>=<around*|{|1,\<ldots\>,k-l|}>>
    we have <math|d<rsub|i>=\<rho\><around*|(|k-1+i|)>\<less\>\<rho\><around*|(|k-1+1+1|)>=d<rsub|i+1>>.
    Applying the previous lemma (see <reference|family of reals to
    intervals>) we have then that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,l-k|}>><around*|[|d<rsub|i>,d<rsub|i+1>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,l-k|}>><around*|[|\<rho\><around*|(|k-1+i|)>,\<rho\><around*|(|k+i-1+1|)>|[>=<big|sqcup><rsub|i\<in\><around*|{|k,\<ldots\>,l-1|}>><around*|[|\<rho\><around*|(|i|)>,\<rho\><around*|(|i+1|)>|[>=<big|sqcup><rsub|i\<in\><around*|{|\<rho\><rsup|-1><around*|(|a<rsub|i>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i>|)>-1|}>><around*|[|\<rho\><around*|(|i|)>,\<rho\><around*|(|i+1|)>|[>>
    giving\ 

    <\equation>
      <label|wq 15.66.431>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      <text|we have ><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|i\<in\><around*|{|\<rho\><rsup|-1><around*|(|a<rsub|i>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i>|)>-1|}>><around*|[|\<rho\><around*|(|i|)>,\<rho\><around*|(|i+1|)>|[>
    </equation>

    proving (4) of the lemma. For (5) this follows from <reference|eq
    15.64.431> and the previous lemma (<reference|family of reals to
    intervals>).
  </proof>

  <\lemma>
    <label|union of sub rectangles>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    let <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<less\>b<rsub|i>> and there exists a
    <math|<around*|{|a<rsub|i,j>|}><rsub|j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>>>
    with <math|\<forall\>j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>>
    we have <math|a<rsub|i,j>\<leqslant\>a<rsub|i,j+1>>,
    <math|a<rsub|i,m<rsub|i>>=a<rsub|i>> and
    <math|a<rsub|i,n<rsub|i>>=b<rsub|i>> then
    <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>>
    and <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\>1><rsup|n><around*|(|a<rsub|i,\<rho\><rsub|i>+1>-a<rsub|i,\<rho\><rsub|i>>|)>|)>>
  </lemma>

  <\proof>
    If <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|m<rsub|i>=n<rsub|i>> then we have
    <math|a<rsub|i>=a<rsub|i,m<rsub|i>>=a<rsub|i,n<rsub|i>>=b<rsub|i><rsub|>>
    contradicting <math|a<rsub|i>\<less\>b<rsub|i>> so me must have that
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|m<rsub|i>\<less\>n<rsub|i>> or <math|m<rsub|i>\<leqslant\>n<rsub|i>-1>.
    <math|> <math|>Let <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\<equallim\><rsub|<text|<reference|family
    of reals to intervals>>><big|sqcup><rsub|i\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>|}>><around*|[|a<rsub|i,j>,a<rsub|i,j+1>|[>\<Rightarrow\>\<exists\>\<rho\><rsub|i>\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>>
    such that <math|x<rsub|i>\<in\><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>>.
    So if we take <math|\<rho\>=<around*|(|\<rho\><rsub|1>,\<ldots\>,\<rho\><rsub|n>|)>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>>
    then <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>\<subseteq\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>>
    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<label|eq
      15.67.431><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)><eq-number>>>>>
    </eqnarray*>

    If <math|x\<in\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>>
    then there exists a <math|\<rho\>\<in\><big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>>
    such that <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>>
    so <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|i>\<in\><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>\<subseteq\><around*|[|a<rsub|i>,b<rsub|i>|]>>
    giving that <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>.
    This proves that <math|<big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    which combined with <reference|eq 15.67.431> gives

    <\equation>
      <label|eq 15.68.431><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|cup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>
    </equation>

    If <math|\<rho\>,\<tau\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>>
    with <math|\<rho\>\<neq\>\<tau\>> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|\<rho\><rsub|i>\<neq\>\<tau\><rsub|i>> then if
    <math|x\<in\><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)><big|cap><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<tau\><rsub|i>>,a<rsub|i,\<tau\><rsub|i>+1>|[>|)>>
    so that <math|x<rsub|i>\<in\><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[><big|cap><around*|[|a<rsub|i,\<tau\><rsub|i>>,a<rsub|i,\<tau\><rsub|i>+1>|[>=\<emptyset\>>
    a contradiction so we have that <math|<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)><big|cap><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<tau\><rsub|i>>,a<rsub|i,\<tau\><rsub|i>+1>|[>|)>=\<emptyset\>>
    which together with <reference|eq 15.68.431> gives

    <\equation>
      <label|eq 15.69.431><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,\<rho\><rsub|i>>,a<rsub|i,\<rho\><rsub|i>+1>|[>|)>
    </equation>

    Finally we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>l<around*|(|<big|sqcup><rsub|j\<in\><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|[|a<rsub|i,j>,a<rsub|i,j+1>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|l
      is additive and m<rsub|i>\<leqslant\>n<rsub|i>-1>>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>-1>l<around*|(|<around*|[|a<rsub|i,j>,a<rsub|i,j+1>|[>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|j=m<rsub|i>><rsup|n<rsub|i>><around*|(|a<rsub|i,j+1>-a<rsub|i,j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      product of generalized sums>>>>|<cell|<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|m<rsub|i>,\<ldots\>,n<rsub|i>-1|}>><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|a<rsub|i,\<rho\><rsub|i>+1>-a<rsub|i,\<rho\><rsub|i>>|)>|)>>>>>
    </eqnarray*>

    which proves the last part of the theorem.
  </proof>

  <\lemma>
    <label|additivity of volume>Let <math|n,m\<in\>\<bbb-N\><rsub|0>> and a
    family of pairwise disjoint half open rectangles
    <math|<around*|{|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-R\><rsup|n>>
    with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>
    <math|\<emptyset\>\<neq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>>
    such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    then <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m><around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|i,j>-a<rsub|i,j>|)>|)>>
  </lemma>

  <\proof>
    Using <reference|union of rectangles as union of intervals> we have
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> that

    <\equation>
      <label|eq 15.70.432><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>=<around*|[|a<rsub|j>,b<rsub|j>|[>
    </equation>

    We apply then <reference|partitioning of intervals> on the above to write
    <math|<around*|[|a<rsub|j>,b<rsub|j>|[>> as a pairwise disjoint union of
    intervals. So there exists a <math|m<rsub|j>\<in\>\<bbb-N\><rsub|0>> and
    a bijection <math|\<rho\><rsub|j>:<around*|{|1,\<ldots\>,m<rsub|j>|}>\<rightarrow\><around*|{|a<rsub|i,j>\|i\<in\><around*|{|1,\<ldots\>,m<rsub|j>|}>|}><big|cup><around*|{|b<rsub|i,j>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
    such that\ 

    <\enumerate>
      <item><math|\<rho\><rsub|j><around*|(|1|)>=a<rsub|j>\<wedge\>\<rho\><rsub|j><around*|(|m<rsub|j>|)>=b<rsub|j>>

      <item><math|\<forall\>k,l\<in\><around*|{|1,\<ldots\>,m<rsub|j>|}>>
      with <math|k\<less\>l> we have <math|\<rho\><rsub|j><around*|(|k|)>\<less\>\<rho\><rsub|j><rsub|><around*|(|l|)>>

      <item><math|\<forall\>x,y\<in\><around*|{|a<rsub|i,j>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}><big|cup><around*|{|b<rsub|i,j>\|i\<in\><around*|{|1,\<ldots\>,m|}>|}>>
      with <math|x\<less\>y> we have <math|\<rho\><rsub|j><rsup|-1><around*|(|x|)>\<less\>\<rho\><rsub|j><rsup|-1><around*|(|y|)>>

      <item><math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have
      <math|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>>
      and <math|<big|sqcup><rsub|l\<in\><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i,j>|)>-1|}>><around*|[|\<rho\><rsub|j><around*|(|l|)>,\<rho\><rsub|j><around*|(|l+1|)>|[>=<around*|[|a<rsub|i,j>,b<rsub|i,j>|[>>

      <item><math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m<rsub|j>-1|}>><around*|[|\<rho\><rsub|j><around*|(|i|)>,\<rho\><rsub|j><around*|(|i+1|)>|[>=<around*|[|a<rsub|j>,b<rsub|j>|[>>
    </enumerate>

    (1), (2) and (4) allows us to apply <reference|union of sub rectangles>
    giving\ 

    <\equation>
      <label|eq 15.71.432><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j>,b<rsub|j>|[>=<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<rho\><rsub|j><around*|(|i|)>,\<rho\><rsub|j><around*|(|i+1|)>|[>|)>
    </equation>

    <\equation>
      <label|eq 15.72.432><big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|j>-a<rsub|j>|)>=<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|\<rho\><rsub|j><around*|(|i+1|)>-\<rho\><rsub|j><around*|(|i|)>|)>|)>
    </equation>

    As <math|\<rho\><rsub|j><around*|(|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>|)>=a<rsub|i,j>>,
    <math|\<rho\><rsub|j><around*|(|\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>|)>=b<rsub|i,j>>
    together with (2) and (4) allows us to apply <reference|union of sub
    rectangles> again giving <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>
    that

    <\equation>
      <label|eq 15.73.432><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>=<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i,j>|)>-1|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<rho\><rsub|j><around*|(|i|)>,\<rho\><rsub|j><around*|(|i+1|)>|[>|)>
    </equation>

    <\equation>
      <label|eq 15.74.433><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i,j>-a<rsub|i,j>|)>=<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<ldots\>,\<rho\><rsup|-1><around*|(|b<rsub|i,j>|)>-1|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|\<rho\><rsub|j><around*|(|i+1|)>=\<rho\><rsub|j><around*|(|i|)>|)>|)>
    </equation>

    Next we partition the sum over <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>>
    in <math|<around*|{|1,\<ldots\>,m|}>> sums over
    \ <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|i,j>|)>,\<ldots\>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>>.
    We have to prove the following:

    <\equation>
      <label|eq 15.75.433><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|i,j>|)>,\<ldots\>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>|)>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>
    </equation>

    \ To prove this, note that given <math|i\<in\><around*|{|1,\<ldots\>,m|}>>
    and <math|j\<in\><around*|{|1,\<ldots\>,n|}>> we have that
    <math|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>\<in\><around*|{|1,\<ldots\>,m<rsub|j>|}>>
    and <math|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|i,j>|)>\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>\<Rightarrow\>\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|i,j>|)>\<leqslant\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1>
    so that <math|<around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>\<subseteq\><around*|{|1,\<ldots\>,m<rsub|j>-1|}>>.
    Using <reference|general product of sets and subsets> we have then that
    <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>>
    proving that\ 

    <\equation>
      <label|eq 15.76.434><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>
    </equation>

    For the opposite inclusion let <math|\<tau\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>>,
    as <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have by (2)
    that <math|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<less\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>\<Rightarrow\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<in\><around*|[|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>,\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>|[>>
    and thus tha

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>>|<cell|\<in\>>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>,\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>|[>>>|<row|<cell|>|<cell|\<subseteq\><rsub|<reference|eq
      15.71.432>>>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|j>,b<rsub|j>|[>>>|<row|<cell|>|<cell|\<equallim\><rsub|hypothese
      of the theorem>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>>>>>
    </eqnarray*>

    So we have\ 

    <\equation>
      <label|eq 15.77.435>\<exists\>k\<in\><around*|{|1,\<ldots\>,m|}>\<vdash\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k,j>,b<rsub|k,j>|[>
    </equation>

    Suppose now that <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,n|}>> such
    that <math|b<rsub|k,j>\<less\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>>
    then using <reference|eq 15.77.435> we have
    <math|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<less\>b<rsub|k,j>\<less\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>\<Rightarrowlim\><rsub|<around*|(|3|)>>\<rho\><rsub|j><rsup|-1><around*|(|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>|)>\<less\>\<rho\><rsub|j><rsup|-1><around*|(|b<rsub|k,j>|)>\<less\>\<rho\><rsup|-1><around*|(|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>|)>\<Rightarrow\>\<tau\><rsub|j>\<less\>\<rho\><rsub|j><rsup|-1><around*|(|b<rsub|k,j>|)>\<less\>\<tau\><rsub|j>+1\<Rightarrow\>0\<less\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>-\<tau\><rsub|j>\<less\>1>
    which is impossible for whole numers. So we must have that
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>\<leqslant\>b<rsub|k,J>>
    which together with <reference|eq 15.77.435> yields

    <\equation>
      <label|eq 15.78.435>\<exists\>k\<in\><around*|{|1,\<ldots\>,m|}>
      <text|such that >\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}> we have
      <around*|[|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>,\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>|[>\<subseteq\><around*|[|a<rsub|k,j>,b<rsub|k,j>|[>
    </equation>

    From the above it follows that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|a<rsub|k,j>\<leqslant\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<less\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>\<less\>b<rsub|k,j>\<Rightarrowlim\><rsub|<around*|(|3|)>>\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>\<leqslant\>\<rho\><rsub|j><rsup|-1><around*|(|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>|)>\<less\>\<rho\><rsub|j><rsup|-1><around*|(|\<rho\><rsub|j><around*|(|\<tau\><rsub|j>+1|)>|)>\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>\<Rightarrow\>\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>\<less\>\<tau\><rsub|j>\<less\>\<tau\><rsub|j>+1\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>>
    proving that <math|\<tau\><rsub|j>\<in\><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|k,j>|)>,\<ldots\>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>-1|}>>.
    From this it follows that <math|\<tau\>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|k,j>|)>,\<rho\><rsub|j><rsup|-1><around*|(|b<rsub|k,j>|)>-1|}>>
    which proves that <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>\<subseteq\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|k,j>|)>,\<rho\><rsub|j><rsup|-1><around*|(|b<rsub|k,j>|)>-1|}>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsup|-1><rsub|j><around*|(|a<rsub|k,j>|)>,\<ldots\>\<rho\><rsub|j><rsup|-1><around*|(|b<rsub|k,j>|)>-1|}>|)>>,
    using <reference|eq 15.76.434> we have\ 

    <\equation>
      <label|eq 15.79.435><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>
    </equation>

    To prove finally <reference|eq 15.75.433> we must prove that the above
    union is a pairwise disjoint union. So take
    <math|k,l\<in\><around*|{|1,\<ldots\>,m|}>> with <math|k\<neq\>l> and
    assume that <math|\<exists\>\<tau\>\<in\><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>-1|}>|)><big|cap><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|l,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|l,j>|)>-1|}>|)>>
    then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have that
    <math|\<tau\><rsub|j>\<in\><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>-1|}>\<wedge\>\<tau\><rsub|j>\<in\><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|l,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|l<rsub|k,j>|)>-1|}>\<Rightarrow\><around*|[|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>\<leqslant\>\<tau\><rsub|j>\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>|]>\<wedge\><around*|[|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|l,j>|)>\<leqslant\>\<tau\><rsub|j>\<less\>\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|l,j>|)>|]>\<Rightarrowlim\><rsub|<around*|(|2|)>><around*|[|a<rsub|k,j>\<leqslant\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<less\>b<rsub|k,j>|]>\<wedge\><around*|[|a<rsub|l,j>\<leqslant\>\<rho\><rsub|j><around*|(|\<tau\><rsub|j>|)>\<less\>b<rsub|l,j>|]>>
    proving that <math|\<tau\>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<tau\><rsub|j>\<in\><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k,j>,b<rsub|k,j>|[>|)><big|cap><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|k,j>,b<rsub|k,j>|[>|)>\<equallim\><rsub|hypothese
    of the lemma>\<emptyset\>> leading to a contradiction. So we must have
    that <math|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|k,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|k,j>|)>-1|}>|)><big|cap><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|l,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|l,j>|)>-1|}>|)>=\<emptyset\>>
    which together with <reference|eq 15.79.435> proves <reference|eq
    15.75.433>.

    Finally we are ready to prove the theorem\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      15.72.432>>>>|<cell|<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,m<rsub|j>-1|}>><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|\<rho\><rsub|j><around*|(|i+1|)>-\<rho\><rsub|j><around*|(|i|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|eq
      15.75.433> and <reference|general associativity of general sums
      (generals)>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<rho\><rsub|j><rsup|-1><around*|(|a<rsub|i,j>|)>,\<rho\><rsup|-1><rsub|j><around*|(|b<rsub|i,j>|)>-1|}>><around*|(|\<rho\><rsub|j><around*|(|i+1|)>-\<rho\><rsub|j><around*|(|i|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      15.74.433>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i,j>-a<rsub|i,j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i,j>-a<rsub|i,j>|)>|)>>>>>
    </eqnarray*>
  </proof>

  Now we are ready to prove that the volume function is a content on the semi
  ring <math|\<cal-R\><rsup|n>>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|v<rsup|n>:\<cal-R\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a finite content
  </theorem>

  <\proof>
    First by definition(see <reference|volumne content> we have that
    <math|v<rsup|n><around*|(|\<emptyset\>|)>=v<rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,0|[>|)>=0>.
    Second if <math|R\<in\>\<cal-R\><rsup|n>>,
    <math|m\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|R<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>R>
    such that <math|R=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    then there exists <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\>>
    and <math|<around*|{|<around*|{|<around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|}><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    such that <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>>
    <math|R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>>.
    We have now to possibilities

    <\description>
      <item*|<math|R=\<emptyset\>>>then we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> that
      <math|R<rsub|i>=\<emptyset\>> so that
      <math|0=v<rsup|n><around*|(|R|)>=<big|sum><rsub|i=1><rsup|m>0=<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|R<rsub|i>|)>>

      <item*|<math|R\<neq\>\<emptyset\>>>then there exists a
      <math|i\<in\><around*|{|1,\<ldots\>,m|}>> such that
      <math|R<rsub|i>\<neq\>\<emptyset\>> so that
      <math|I=<around*|{|i\<in\><around*|{|1,\<ldots\>,m|}>\|R<rsub|i>\<neq\>\<emptyset\>|}>=\<emptyset\>>.
      We have then <math|R=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>=<around*|(|<big|sqcup><rsub|i\<in\>I>R<rsub|i>|)><big|cup><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>\\I>R<rsub|i>|)>=<big|sqcup><rsub|i\<in\>I>R<rsub|i>>.
      As <math|I\<subseteq\><around*|{|1,\<ldots\>,m|}>> is finite there
      exists a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,#<around*|(|I|)>|}>\<rightarrow\>I>
      and thus

      <\equation>
        <label|eq 15.80.437>R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,#<around*|(|I|)>|}>>R<rsub|\<beta\><around*|(|i|)>><text|
        and >\<forall\>i\<in\><around*|{|1,\<ldots\>,#<around*|(|I|)>|}><text|
        we have <math|R<rsub|\<beta\><around*|(|i|)>>\<neq\>\<emptyset\>>>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|n><around*|(|R|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        15.80.437> and <reference|additivity of
        volume>>>>|<cell|<big|sum><rsub|i=1><rsup|#<around*|(|I|)>><around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|\<beta\><around*|(|i|)>,j>-a<rsub|\<beta\><around*|(|i|)>,j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|#<around*|(|I|)>>v<rsup|n><around*|(|<around*|[|a<rsub|\<beta\><around*|(|i|)>>,b<rsub|\<beta\><around*|(|i|)>>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|#<around*|(|I|)>>v<rsup|n><around*|(|R<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,#<around*|(|I|)>|}>>v<rsup|n><around*|(|R<rsub|\<beta\><around*|(|i|)>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\>I>v<rsup|n><around*|(|R<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>v<rsup|n><around*|(|R<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>\\I>v<rsup|n><around*|(|R<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1\<ldots\>.,m|}>>v<rsup|n><around*|(|R<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>v<rsup|n><around*|(|R<rsub|i>|)>>>>>
      </eqnarray*>
    </description>

    The above proves that <math|v> is a content.

    Finally if <math|R\<in\>\<cal-R\><rsup|n>> then
    <math|R=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
    where <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,i|}>>\<subseteq\>\<cal-I\>>
    so \ <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|l<around*|(|I<rsub|i>|)>\<less\>\<infty\>> and thus
    <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>l<around*|(|I<rsub|i>|)>\<less\>\<infty\>>
    whcih proves that <math|v<rsup|n>> is finite.
  </proof>

  Next we extend the finite content to a finite pre-measure on
  <math|\<cal-R\><around*|[|\<b-R\><rsup|n>|]>> using <reference|extending
  content (pre measure)> and<reference|condition for pre-measure on a ring
  generated by a semi ring>. But first we need a little lemma

  <\lemma>
    <label|product of numbers with a difference>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|\<varepsilon\>\<gtr\>0> and
    <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
    then <math|\<exists\><around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
    with <math|0\<less\>\<varepsilon\><rsub|i>\<less\>x<rsub|i>> such that
    <math|<big|prod><rsub|i=1><rsup|n>x<rsub|i>\<less\><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+\<varepsilon\>>
  </lemma>

  <\proof>
    We prove this by induction, so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|if
    ><around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|]|0,\<infty\>|[><text|
    then >\<exists\><around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|]|0,\<infty\>|[><text|
    with >0\<less\>\<varepsilon\><rsub|i>\<less\>x<rsub|i><text| such that
    ><big|prod><rsub|i=1><rsup|n>x<rsub|i>\<less\><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+\<varepsilon\>|}>>
    then\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
      then <math|0\<less\>x<rsub|1>\<less\>\<infty\>>, define
      <math|\<varepsilon\><rsub|1>=min<around*|(|<frac|x<rsub|1>|2>,<frac|\<varepsilon\>|2>|)>>
      then <math|0\<less\>\<varepsilon\><rsub|1>\<leqslant\><frac|x<rsub|1>|2>\<less\>x<rsub|1>>
      and <math|<big|prod><rsub|i=1><rsup|1>x<rsub|i>-<big|prod><rsub|i=1><rsup|1><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>=x<rsub|1>-<around*|(|x<rsub|1>-\<varepsilon\><rsub|1>|)>=\<varepsilon\><rsub|1>\<leqslant\><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>><space|1em>so
      that <math|<big|prod><rsub|i=1><rsup|1>x<rsub|i>\<less\><around*|(|<big|prod><rsub|i=1><rsup|1><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+\<varepsilon\>>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Assume
      that <math|<around*|{|x<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\><around*|]|0,\<infty\>|[>>
      then as <math|n\<in\>\<cal-S\>> there exists
      <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      with <math|0\<less\>\<varepsilon\><rsub|i>\<less\>x<rsub|i>> and
      <math|<big|prod><rsub|i=1><rsup|n>x<rsub|i>\<less\><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+<frac|\<varepsilon\>|2\<cdot\>x<rsub|n+1>>>
      so that as <math|0\<less\>x<rsub|n+1>> we have

      <\equation>
        <label|eq 15.81.439>x<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>-x<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Take now <math|\<varepsilon\><rsub|n+1>=min<around*|(|<frac|\<varepsilon\>|4\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>>,<frac|x<rsub|n+1>|2>|)>>
      then <math|0\<less\>\<varepsilon\><rsub|n+1>\<leqslant\><frac|x<rsub|n+1>|2>\<less\>x<rsub|n+1>>
      and <math|\<varepsilon\><rsub|n+1>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>|)>\<leqslant\><frac|\<varepsilon\>|4>\<less\><frac|\<varepsilon\>|2>>.
      Now

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|i=1><rsup|n+1>x<rsub|i>-<big|prod><rsub|i=1><rsup|n+1><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>>|<cell|=>|<cell|x<rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n>x<rsub|i>-<around*|(|x<rsub|n+1>-\<varepsilon\><rsub|n+1>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|x<rsub|n+1>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>-<big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+\<varepsilon\><rsub|n+1>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|x<rsub|n+1>\<cdot\><around*|(|<big|prod><rsub|i=1><rsup|n>x<rsub|i>-<big|prod><rsub|i=1><rsup|n><around*|(|x<rsub|i>-\<varepsilon\><rsub|i>|)>|)>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        15.81.439>>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>.
    </description>
  </proof>

  <\theorem>
    Given <math|n\<in\>\<bbb-N\><rsub|0><wide|<text|
    >v<rsup|n>|\<bar\>>:\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a finite pre-measure
  </theorem>

  <\proof>
    First using <reference|extending content (pre measure)> we have that
    <math|<wide|v<rsup|n>|\<bar\>>> is a finite content on the ring
    <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>.\ 

    Second define <math|\<cal-K\>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>|}><big|cup><around*|{|\<emptyset\>|}>>.
    As every <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]><rsub|>>
    is compact (see <reference|closed rectangles are compact in the norm
    topology>), <math|\<emptyset\>> is compact (see <reference|exmpty set is
    compact>) and every set of compact sets in <math|\<bbb-R\><rsup|n>> (a
    Hausdorf space) is a compact class (see <reference|set of compact sets is
    a countable compact class>) we have\ 

    <\equation>
      <label|eq 15.48.439>\<cal-K\> is a compact class
    </equation>

    \;

    \ Let <math|\<varepsilon\>\<gtr\>0> and <math|R\<in\>\<cal-R\><rsup|n>>
    then we have either

    <\description>
      <item*|<math|R=\<emptyset\>>> then if
      <math|R<rsub|\<varepsilon\>>=\<emptyset\>\<in\>\<cal-R\><rsup|n>>and
      <math|K<rsub|\<varepsilon\>>=\<emptyset\>\<in\>\<cal-K\>> then we have
      <math|R<rsub|\<varepsilon\>>\<subseteq\>K<rsub|\<varepsilon\>>\<subseteq\>R>
      and <math|v<rsup|n><around*|(|R|)>-v<rsup|n><around*|(|R<rsub|\<varepsilon\>>|)>=0\<less\>\<varepsilon\>>

      <item*|<math|R\<neq\>\<emptyset\>>>then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we must have
      <math|a<rsub|i>\<less\>b<rsub|i>\<Rightarrow\>0\<less\>b<rsub|i>-a<rsub|i>>
      so using the previous lemma (see <reference|product of numbers with a
      difference>) there exists a <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      with <math|0\<less\>\<varepsilon\><rsub|i>\<less\><around*|(|b<rsub|i>-a<rsub|i>|)>>
      so that\ 

      <\equation>
        <label|eq 15.83.439><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<less\><around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|<around*|(|b<rsub|i>-a<rsub|i>|)>-\<varepsilon\><rsub|i>|)>|)>+\<varepsilon\>
      </equation>

      As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|0\<less\><frac|\<varepsilon\><rsub|i>|2>\<less\><frac|b<rsub|i>-a<rsub|i>|2>>
      we have that <math|<around*|(|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>|)>-<around*|(|b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|)>=<around*|(|a<rsub|i>-b<rsub|i>|)>+\<varepsilon\><rsub|i>\<less\><around*|(|a<rsub|i>-b<rsub|i>|)>+<around*|(|b<rsub|i>-a<rsub|i>|)>=0>
      proving that <math|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>\<less\>b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>>.
      So <math|K<rsub|\<varepsilon\>>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>,b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|]>\<in\>\<cal-K\>>
      and <math|R<rsub|\<varepsilon\>>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>,b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|[>\<in\>\<cal-R\><rsup|n>>.
      Further using <reference|general product of sets and subsets> we have
      that\ 

      <\equation>
        <label|eq 15.85.439.1>R<rsub|\<varepsilon\>>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>,b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|[>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>,b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|]>=K<rsub|\<varepsilon\>>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>
      </equation>

      Further we have that <math|v<rsup|n><around*|(|R|)>-v<rsup|n><around*|(|R<rsub|\<varepsilon\>>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>-<big|prod><rsub|i=1><rsup|n><around*|(|<around*|(|b<rsub|i>-<frac|\<varepsilon\><rsub|i>|2>|)>-<around*|(|a<rsub|i>+<frac|\<varepsilon\><rsub|i>|2>|)>|)>\<less\><rsub|<text|<reference|eq
      15.83.439>>>\<varepsilon\>>
    </description>

    So in all the cases we have given <math|\<varepsilon\>>\<gtr\>0,
    <math|R\<in\>\<cal-R\><rsup|n>> that there exists a
    <math|K<rsub|\<varepsilon\>>\<in\>\<cal-K\>> and
    <math|R<rsub|\<varepsilon\>>\<in\>\<cal-R\><rsup|n>> such that
    <math|v<rsup|n><around*|(|R|)>-v<rsup|n><around*|(|R<rsub|\<varepsilon\>>|)>\<less\>\<varepsilon\>>.
    Applying <reference|condition for pre-measure on a ring generated by a
    semi ring> proves then that <math|<wide|v<rsup|n>|\<bar\>>> is a
    pre-measure.
  </proof>

  <\corollary>
    <label|Lebesgue measure on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    there exists a unique measure <math|\<phi\><rsup|n>:\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    on the <math|\<sigma\>>-ring <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    on <math|\<bbb-R\><rsup|n>> generated by the semi ring
    <math|\<cal-R\><rsup|n>> so that <math|\<phi\><rsup|n><rsub|\|\<cal-R\><rsup|n>>=v<rsup|n>>.
    In other words <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>,\<phi\><rsup|n>|\<rangle\>>\<equallim\><rsub|<text|<reference|Borel
    algebra on R^n>>><around*|\<langle\>|\<bbb-R\><rsup|n>,\<sigma\><around*|[|\<cal-R\><rsup|n>|]>,\<phi\><rsup|n>|\<rangle\>>>
    forms a measure space. We call <math|\<phi\>> the
    <with|font-series|bold|Lebesgue> measure on <math|\<bbb-R\><rsup|n>>.
  </corollary>

  <\proof>
    By the previous theorem we have that <math|<wide|v<rsup|n>|\<bar\>>:\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is pre-measure on the ring <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>.
    Further if <math|x\<in\>\<bbb-R\><rsup|n>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have (see
    <reference|consequence of the archimedean property for the reals>) that
    there exists a <math|n<rsub|i>\<in\>\<bbb-N\><rsub|0>> such that
    <math|<around*|\||x<rsub|i>|\|>\<less\>n<rsub|i>\<Rightarrow\>-n<rsub|i>\<less\>x<rsub|i>\<less\>n<rsub|i>\<Rightarrow\>x<rsub|i>\<in\><around*|[|-n<rsub|i>,n<rsub|i>|[>\<subseteq\><around*|[|-max<around*|(|<around*|{|n<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>,<around*|{|n<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>,|}>|}>|)>|[>>,
    so <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-n,n|[>|)>>
    which proves that <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-i,i|[>|)>>
    where <math|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-i,i|[>\<in\>\<cal-R\><rsup|n>\<subseteq\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>
    and <wide|v<rsup|n>|\<bar\>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-i,i|[>|)>=<around*|(|2\<cdot\>i|)><rsup|n>\<less\>\<infty\>>.
    Applying then <reference|extending pre-measure on a ring to the sigma
    algebra> proves that there exists a unique measure
    <math|\<phi\><rsup|n>:\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>|\<nobracket\>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<phi\><rsup|n><rsub|\|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>=<wide|v<rsup|n>|\<bar\>>>.
    As <math|\<cal-R\><rsup|n>\<subseteq\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>
    we have that <math|\<phi\><rsup|n><rsub|\|\<cal-R\><rsup|n>>\<equallim\><rsub|<text|<reference|restriction
    of restricted function>>><around*|(|\<phi\><rsup|n><rsub|\|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>|)><rsub|\|\<cal-R\><rsup|n>>=<wide|v<rsup|n>|\<bar\>><rsub|\|\<cal-R\><rsup|n>>=v<rsup|n>>.
    Next using <reference|sigma algebra of ring of a semi ring> we have that
    <math|\<sigma\><around*|[|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    so we have that there exists a unique
    <math|\<phi\><rsup|n>:\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<lambda\><rsub|\|\<cal-R\><rsup|n>>=\<cal-R\><rsup|n>>.
    For uniqueness, if there exists a measure
    <math|\<omega\>:\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    such that <math|\<omega\><rsub|\|\<cal-R\><rsup|n>>=v<rsup|n>> then as
    <math|<around*|(|\<omega\><rsub|\|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>|)><rsub|\|\<cal-R\><rsup|n>>=\<omega\><rsub|\|\<cal-R\><rsup|n>>=v=<wide|v<rsup|n>|\<bar\>><rsub|\|\<cal-R\><rsup|n>>>
    we have by <reference|extending content (pre measure)> that
    <math|\<omega\><rsub|\|\<cal-R\><around*|[|\<cal-I\>|]>>=<wide|v<rsup|n>|\<bar\>>=\<phi\><rsup|n><rsub|\|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>>,
    then as <math|\<phi\><rsup|n>> is a unique extension of
    <math|<wide|v<rsup|n>|\<bar\>>> we must have that
    <math|\<omega\>=\<phi\><rsup|n>> proving uniqueness.
  </proof>

  <subsubsection|Translation invariance of the Lebesgue measure on
  <math|\<bbb-R\><rsup|n>>>

  We use the same strategy as in the proof of the translation interval on
  <math|\<bbb-R\>>

  <\lemma>
    <label|lemma 15.135.472><math|<wide|v<rsup|n>|\<bar\>>:\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is <math|\<sigma\>>-finite
  </lemma>

  <\proof>
    As <math|\<bbb-R\><rsup|n>\<equallim\><rsub|<text|<reference|R^n can be
    written as a countable union of half open
    rectangles>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<wide|v<rsup|n>|\<bar\>><around*|(|<around*|[|-i,i|[><rsup|n>|)>\<equallim\><rsub|<wide|v<rsup|>|\<bar\>><text|
    is a extension of >v<rsup|n>>v<rsup|n><around*|(|<around*|[|-i,i|[><rsup|n>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>2\<cdot\>i=2<rsup|n>\<cdot\>i<rsup|n>\<less\>\<infty\>>
    it follows that <math|<wide|v<rsup|n>|\<bar\>>> is
    <math|\<sigma\>>-finite.
  </proof>

  Further we have that <math|<wide|v<rsup|n>|\<bar\>>> is translation
  invariant.

  <\lemma>
    <label|eq 15.136.472>Given <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|x\<in\>\<bbb-R\><rsup|n>> then we have
    <math|\<forall\>A\<in\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>> that
    <math|A+x\<in\>\<cal-R\><rsup|n>> and
    <math|<wide|v<rsup|n>|\<bar\>><around*|(|A+x|)>=<wide|v<rsup|n>|\<bar\>><around*|(|A|)>>
  </lemma>

  <\proof>
    As <math|A\<in\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>> we have by the
    definition of <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>> and
    <math|\<cal-R\><rsup|n>> that <math|\<exists\><around*|{|R<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    with <math|R<rsub|i>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>\<subseteq\>\<cal-R\><rsup|n>>
    and <math|A=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>>.
    Then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A+x>|<cell|=>|<cell|<around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>R<rsub|i>|)>+x>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|union
      and intersection and sum>>>>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>+x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>+x,b<rsub|i,j>+x|[>|)>>>>>
    </eqnarray*>

    Proving that <math|A+x\<in\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>

    \ Further we have for <math|x=<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>|)>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|v<rsup|n>|\<bar\>><around*|(|A+x|)>>|<cell|=>|<cell|<wide|v<rsup|n>|\<bar\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>+x,b<rsub|i,j>+x|[>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><wide|v<rsup|n>|\<bar\>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>+x,b<rsub|i,j>+x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>+x,b<rsub|i,j>+x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|<big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|i,j>-a<rsub|i,j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m><wide|v<rsup|n>|\<bar\>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|v<rsup|n>|\<bar\>><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i,j>,b<rsub|i,j>|[>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<wide|v<rsup|n>|\<bar\>><around*|(|A|)>>>>>
    </eqnarray*>

    Proving that <math|<wide|v<rsup|n>|\<bar\>>> is translation invariant.
  </proof>

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|x\<in\>\<bbb-R\><rsup|n>> then
    <math|\<phi\><rsub|x><rsup|n>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by <math|\<phi\><rsup|n><rsub|x><around*|(|A|)>=\<phi\><rsup|n><rsub|><around*|(|A+x|)>>
    (which is well defined by <reference|Borel set+x>)
  </definition>

  <\lemma>
    <label|lemma 15.137.472><math|\<phi\><rsup|n><rsub|x>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    is a measure
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<phi\><rsub|x><rsup|n><around*|(|\<emptyset\>|)>=\<phi\><rsup|n><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
      is a pairwise disjoint family of sets then
      <math|\<phi\><rsup|n><rsub|x><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<phi\><rsup|n><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>+x|)>\<equallim\><rsub|<text|<reference|union
      and intersection and sum>>>\<phi\><rsup|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i>+x|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<phi\><rsup|n><around*|(|A<rsub|i>+x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<phi\><rsub|x><rsup|n><around*|(|A<rsub|i>|)>>
    </enumerate>
  </proof>

  <\theorem>
    <label|v^n is translation invariant>Given <math|n\<in\>\<bbb-N\><rsub|0>>
    we have that <math|\<phi\><rsup|n>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is translation invariant so <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    and <math|x\<in\>\<bbb-R\><rsup|n>> we have
    <math|\<phi\><rsup|n><around*|(|A+x|)>=\<phi\><rsup|n><around*|(|A|)>>
  </theorem>

  <\proof>
    Given <math|x\<in\>\<bbb-R\><rsup|n>> we have for every
    <math|A\<in\>\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>> that
    <math|\<phi\><rsup|N><around*|(|A|)>\<equallim\><rsub|\<Phi\><rsup|n><text|
    extends ><wide|v<rsup|n>|\<bar\>><text| on
    <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>>><wide|v<rsup|n>|\<bar\>><around*|(|A|)>\<equallim\><rsub|<text|<reference|lemma
    15.137.472>>><wide|v<rsup|n>|\<bar\>><around*|(|A+x|)>=\<phi\><rsup|n><around*|(|A+x|)>=\<phi\><rsup|n><rsub|x><around*|(|A|)>>.
    So <math|\<phi\><rsub|x>> and <math|\<phi\>> are measures on
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>=\<sigma\><around*|(|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>|)>>
    that extends the <math|\<sigma\>>-finite content
    <math|<wide|v<rsup|n>|\<bar\>>> on the
    \ <math|\<cal-R\><around*|[|\<cal-R\><rsup|n>|]>>. So all the conditions
    of the extension and uniqueness theorem <reference|extending pre-measure
    on a ring to the sigma algebra> are fullfilled and we have thus that
    <math|\<phi\><rsub|x>=\<phi\>>. Or in other words
    <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have <math|\<phi\><rsup|n><around*|(|A|)>=\<phi\><rsup|n><rsub|x><around*|(|A|)>=\<phi\><rsup|n><around*|(|A+x|)>>
    proving the theorem.
  </proof>

  <section|Properties of Borel and Radon measures>

  <subsection|Regularity and Radon measures>

  <\lemma>
    <label|equivalence of measures definitions>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>><space|1em>be
    topological space and <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a finite measure then we have the following equivalences

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>> we
      have that <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      is open>|}>|)>>

      <item><math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>> and
      <math|\<forall\>\<varepsilon\>\<gtr\>0> there <math|\<exists\>U> open,
      <math|F> closed with <math|F\<subseteq\>A\<subseteq\>V> and
      <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Take
      <math|A\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>> and
      <math|\<varepsilon\>\<gtr\>0> then as
      <math|\<mu\><around*|(|A|)>\<equallim\><rsub|<around*|(|1|)>>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>> there exists a <math|F> closed with
      <math|F\<subseteq\>A> such that <math|\<mu\><around*|(|A|)>-<frac|\<varepsilon\>|2>\<less\>\<mu\><around*|(|F|)>\<leqslant\>\<mu\><around*|(|A|)>>
      and as <math|\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      is open>|}>|)>> there exists a <math|U> open with <math|A\<subseteq\>U>
      such that <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>\<less\>\<mu\><around*|(|A|)>+<frac|\<varepsilon\>|2>>.
      As <math|F\<subseteq\>A\<subseteq\>U> we have by monticiy (see
      <reference|properties of a content>) that
      <math|\<mu\><around*|(|F|)>\<leqslant\>\<mu\><around*|(|U|)>>, so
      <math|0\<leqslant\>\<mu\><around*|(|U|)>-\<mu\><around*|(|F|)>\<less\>\<mu\><around*|(|A|)>+<frac|\<varepsilon\>|2>-\<mu\><around*|(|A|)>+<frac|e|2>=\<varepsilon\>>.
      As <math|\<mu\>> is finete we have by <reference|properties of a
      content> that <math|\<mu\><around*|(|U\\F|)>=\<mu\><around*|(|U|)>-\<mu\><around*|(|F|)>\<less\>\<varepsilon\>>

      <item*|<math|2\<Rightarrow\>1>>Take
      <math|A\<in\>\<cal-B\><around*|[|X,\<cal-T\>|]>> and
      <math|\<varepsilon\>\<gtr\>0> then as <math|\<mu\>> is monotone (see
      <reference|properties of a content>) we have that <math|\<forall\>F>
      closed with <math|F\<subseteq\>A> that
      <math|\<mu\><around*|(|F|)>\<leqslant\>\<mu\><around*|(|A|)>> proving
      that\ 

      <\equation>
        <label|eq 15.156.463>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
        is closed|}>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation>

      Assume now that <math|sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>\<less\>\<mu\><around*|(|A|)>> then
      <math|\<varepsilon\>=\<mu\><around*|(|A|)>-sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>\<gtr\>0>. Using (2) there exists a <math|U> open and a
      <math|F> closed with <math|F\<subseteq\>A\<subseteq\>U> such that
      <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>. As
      <math|A\\F\<subseteq\>U\\F> we have then that
      <math|\<mu\><around*|(|A|)>-\<mu\><around*|(|F|)>\<equallim\><rsub|<text|<reference|properties
      of a content>>>\<mu\><around*|(|A\\F|)>\<leqslant\>\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>\<Rightarrow\>\<mu\><around*|(|A|)>\<less\>\<varepsilon\>+\<mu\><around*|(|F|)>\<leqslant\>\<varepsilon\>+sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>=\<mu\><around*|(|A|)>> giving the contradiction
      <math|\<mu\><around*|(|A|)>\<less\>\<mu\><around*|(|A|)>>, so we must
      have that <math|\<mu\><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F
      is closed|}>|)>> which together with <reference|eq 15.156.463> gives

      <\equation>
        <label|eq 15.157.463>\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F<text|
        is closed>|}>|)>
      </equation>

      As <math|\<mu\>> is monotone (see <reference|properties of a content>)
      we have <math|\<forall\>U> open with <math|A\<subseteq\>U> that
      <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>> proving
      that

      <\equation>
        <label|eq 15.158.463>\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
        is open>|}>|)>
      </equation>

      Assume now that <math|\<mu\><around*|(|A|)>\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      is open|}>|)>> then <math|\<varepsilon\>=inf<around*|(|<around*|{|\<mu\><around*|(|V|)>\|A\<subseteq\>V\<wedge\>V
      is open|}>|)>-\<mu\><around*|(|A|)>\<gtr\>0>. Using (2) there exists a
      \ <math|U> and a <math|F> closed with
      <math|F\<subseteq\>A\<subseteq\>U> such that
      <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>. As
      <math|U\\A\<subseteq\>U\\F> we have that
      <math|\<mu\><around*|(|U|)>-\<mu\><around*|(|A|)>=\<mu\><around*|(|U\\A|)>\<leqslant\>\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>\<Rightarrow\>\<mu\><around*|(|U|)>-\<varepsilon\>\<less\>\<mu\><around*|(|A|)>\<Rightarrow\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      is open>|}>|)>-\<varepsilon\>\<less\>\<mu\><around*|(|A|)>\<Rightarrow\>\<mu\><around*|(|A|)>\<less\>\<mu\><around*|(|A|)>>
      a contradiction. So we must have that
      <math|inf<around*|(|<around*|{|\<mu\><around*|(|V|)>\|A\<subseteq\>V\<wedge\>V
      is ope|}>|)>\<leqslant\>\<mu\><around*|(|A|)>> which together with
      <reference|eq 15.158.463> gives\ 

      <\equation>
        <label|eq 15.159.463>\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
        is open>|}>|)>
      </equation>

      (1) is then proved by <reference|eq 15.157.463> and <reference|eq
      15.159.463>
    </description>
  </proof>

  <\lemma>
    <label|property of finite measure on a Borel set>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space with the normed topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> and
    <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a finite measure then <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
    and <math|\<forall\>\<varepsilon\>\<gtr\>0> we have that
    <math|\<exists\>U> open, <math|\<exists\>F> closed such that
    <math|F\<subseteq\>A\<subseteq\>U> and
    <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>\ 
  </lemma>

  <\proof>
    Consider the set\ 

    <\equation>
      <label|eq 15.160.465>\<cal-A\>=<around*|{|A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\|\<forall\>\<varepsilon\>\<gtr\>0
      \ \<exists\>U open,\<exists\>F closed <text|such that
      >F\<subseteq\>A\<subseteq\>U<text| and
      >\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>|}>
    </equation>

    We prove now that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on
    <math|X> so\ 

    <\description>
      <item*|<math|\<emptyset\>\<in\>\<cal-A\>>>As <math|\<emptyset\>> is
      open and closed, <math|\<emptyset\>\<subseteq\>\<emptyset\>\<subseteq\>\<emptyset\>>
      and <math|\<mu\><around*|(|\<emptyset\>\\\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0\<less\>\<varepsilon\>>
      for every <math|\<varepsilon\>\<gtr\>0> we have
      <math|\<emptyset\>\<in\>\<cal-A\>>

      <item*|<math|\<cal-T\>\<in\>\<cal-A\>>>As <math|X> is open and closed,
      <math|X\<subseteq\>X\<subseteq\>X> and
      <math|\<mu\><around*|(|X\\X|)>=\<mu\><around*|(|\<emptyset\>|)>=0\<less\>\<varepsilon\>>
      for every <math|\<varepsilon\>\<gtr\>0> we have <math|X\<in\>\<cal-A\>>

      <item*|<math|A\<in\>\<cal-A\>\<Rightarrow\>X\\A\<in\>\<cal-A\>>>take
      <math|\<varepsilon\>\<gtr\>0> then as <math|A\<in\>\<cal-A\>> we have
      <math|\<exists\>U> open, <math|F> closed so that
      <math|F\<subseteq\>A\<subseteq\>U> and
      <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>> then <math|X\\U>
      is closed, <math|X\\F> is open and <math|X\\U\<subseteq\>X\\A\<subseteq\>X\\F>.
      Also <math|<around*|(|X\\F|)>\\<around*|(|X\\U|)>=X<big|cap>F<rsup|c><big|cap><around*|(|X<big|cap>U<rsup|c>|)>=X<big|cap>F<rsup|c><big|cap><around*|(|X<rsup|c><big|cup>U|)>=X<big|cap>F<rsup|c><big|cap>U=F<rsup|c><big|cap>U=U\\F>
      proving that <math|\<mu\><around*|(|<around*|(|X\<setminus\>F|)>\\<around*|(|X\\U|)>|)>=\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>
      proving that <math|X\\A\<in\>\<cal-A\>>

      <item*|<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>\<Rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>>Take
      <math|\<varepsilon\>\<gtr\>0> then as
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|n>\<in\>\<cal-A\>> we have\ 

      <\equation>
        <label|eq 15.161.465>\<forall\>n\<in\>\<bbb-N\><rsub|0>
        \<exists\>U<rsub|n><text| open, >\<exists\>F<rsub|n><text| closed >
        such that F<rsub|n>\<subseteq\>A<rsub|n>\<subseteq\>U<rsub|n><text|
        and >\<mu\><around*|(|U<rsub|n>\\A<rsub|n>|)>\<less\><frac|\<varepsilon\>|2<rsup|n+1>>
      </equation>

      Define then <math|U=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>> a open
      set and <math|S=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>>
      (which is in general <with|font-series|bold|not> closed). Then we have\ 

      <\equation>
        <label|eq 15.162.465>S\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|n>>A<rsub|n>\<subseteq\>U
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|U\\S|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>U<rsub|n>|)>\\S|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|U<rsub|n>\\S|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|pre-measure
        is denumerable subadditive>>>>|<cell|<big|sum><rsub|n=1><rsup|\<infty\>>\<mu\><around*|(|U<rsub|n>\\S|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|U<rsub|n>\\S\<subseteq\>U<rsub|n>\\F<rsub|n>>>|<cell|<big|sum><rsub|n=1><rsup|\<infty\>>\<mu\><around*|(|U<rsub|n>\\F<rsub|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|n=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<frac|\<varepsilon\>|2>\<cdot\><big|sum><rsub|n=1><rsup|\<infty\>><frac|1|2<rsup|n>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|<frac|\<varepsilon\>|2>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 15.163.465>\<mu\><around*|(|U\\S|)>\<less\><frac|\<varepsilon\>|2>
      </equation>

      If <math|\<cal-S\>> would be closed we are done but unfortunately this
      is not always true, to solve this we find a closed set that
      approximates <math|S>. Given <math|n\<in\>\<bbb-N\><rsub|0>> consider
      the closed set <math|S<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>F<rsub|i>>
      then <math|<around*|{|S<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> is a
      increasing family of sets in <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      such that <math|S=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>S<rsub|n>> or
      said in a different ways <math|S<rsub|n>\<uparrow\>S>. Using
      <reference|conditions for a pre-measure> we have then that
      <math|\<mu\><around*|(|S<rsub|n>|)>\<uparrow\>\<mu\><around*|(|S|)>> or
      <math|\<mu\><around*|(|S|)>=<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|S<rsub|n>|)>>.
      Hence\ 

      <\equation>
        <label|eq 15.164.466>\<exists\>N\<in\>\<bbb-N\><rsub|0>\<vdash\>S<rsub|N>\<subseteq\>S\<wedge\>\<mu\><around*|(|S\\S<rsub|N>|)>\<equallim\><rsub|\<mu\>
        is finite\<wedge\><text|<reference|properties of a content>
        (2)>>\<mu\><around*|(|S|)>-\<mu\><around*|(|S<rsub|N>|)>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|U\\S<rsub|N>>|<cell|\<equallim\><rsub|S\<subseteq\>U<text|
        and <reference|closure of union or
        intersection>>>>|<cell|<around*|(|<around*|(|U\\S|)><big|sqcup>S|)>\\S<rsub|N>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|U\\S|)>\\S<rsub|N>|)><big|sqcup><around*|(|S\\S<rsub|N>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|U<big|cap>S<rsup|c>|)><big|cap>S<rsub|N><rsup|c>|)><big|sqcup><around*|(|S\\S<rsub|N>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|U<big|cap><around*|(|S<big|cup>S<rsub|N>|)><rsup|c>|)><big|sqcup><around*|(|S\\S<rsub|N>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|S<rsub|N>\<subseteq\>S>>|<cell|<around*|(|U<big|cap>S<rsup|c>|)><big|sqcup><around*|(|S\\S<rsub|N>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|U\\S|)><big|sqcup><around*|(|S\\S<rsub|N>|)>>>>>
      </eqnarray*>

      As <math|\<cal-B\><around*|[|X,\<cal-T\>|]>> is a algebra and
      <math|S,S<rsub|N>,U\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
      we have that <math|<around*|(|U\\S|)>,<around*|(|U\\S<rsub|N>|)>,<around*|(|S\\S<rsub|N>|)>>
      so that we have <math|\<mu\><around*|(|U\\S<rsub|N>|)>=\<mu\><around*|(|U\\S|)>+\<mu\><around*|(|S\\S<rsub|N>|)>\<equallim\><rsub|<text|<reference|eq
      15.163.465> and <reference|eq 15.164.466>>><frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>
      proving that\ 

      <\equation*>
        S<rsub|N> is closed,S<rsub|N>\<subseteq\>S\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>\<subseteq\>U
        and \<mu\><around*|(|U\\S<rsub|N>|)>\<less\>\<varepsilon\>
      </equation*>

      So that we have that <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>>
    </description>

    Tos summarize we have\ 

    <\equation>
      <label|eq 15.165.466>\<cal-A\><text| is a >\<sigma\><text|-algebra>
    </equation>

    The next logical step is to prove that
    <math|\<cal-T\>\<subseteq\>\<cal-A\>>. So let
    <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> then we have
    two cases to consider\ 

    <\description>
      <item*|<math|X\\U=\<emptyset\>>>hense
      <math|U=X\<Rightarrow\>U\<in\>\<cal-A\>>

      <item*|<math|X\\U\<neq\>\<emptyset\>>>consider then the distance
      function <math|\<delta\><rsub|X\\U>:X\<rightarrow\>\<bbb-R\>> (see
      <reference|distance functions>) and given
      <math|n\<in\>\<bbb-N\><rsub|0>> define
      <math|F<rsub|n>=\<delta\><rsub|<around*|(|X\\U|)>><rsup|-1><around*|(|<around*|[|<frac|1|n>,\<infty\>|[>|)>>.
      Using the fact that <math|<around*|[|<frac|1|n>,\<infty\>|[>> is closed
      (see <reference|[a,@@[ is closed>) and <math|\<delta\><rsub|X\\U>> is
      contnuous (see <reference|set distance functions are lipschitz>) we
      have that <math|F<rsub|n>> is closed. Further if
      <math|x\<in\>F<rsub|n>> then <math|\<delta\><rsub|X\\U><around*|(|x|)>\<in\><around*|[|<frac|1|n>,\<infty\>|[>>
      so that <math|<frac|1|n+1>\<less\><frac|1|n>\<leqslant\>\<delta\><rsub|X\\U><around*|(|x|)>\<Rightarrow\>x\<in\>F<rsub|n+1>>
      proving that

      <\equation>
        <label|eq 15.166.466><around*|{|F<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>><text|
        is a increasing sequence of closed sets>
      </equation>

      is a increasing sequence of closed sets. Also if
      <math|x\<in\>F<rsub|n>\<Rightarrow\>\<delta\><rsub|X\\U><around*|(|x|)>\<geqslant\><frac|1|n>\<gtr\>0>
      hence <math|x\<nin\>X\\U> [otherwise
      <math|\<delta\><rsub|X\\U><around*|(|x|)>=inf<around*|(|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>X\\U|}>|)>=0>]
      so that <math|x\<in\>U> proving that

      <\equation>
        <label|eq 15.167.466>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
        >F<rsub|n>\<subseteq\>U hence <big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>\<subseteq\>U
      </equation>

      If now <math|x\<in\>U> then there exists <math|\<delta\>\<gtr\>0> such
      that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<delta\>|)>\<subseteq\>U>
      hence <math|\<forall\>y\<in\>X\\U> we have
      <math|y\<nin\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,y|)>\<Rightarrow\><around*|\<\|\|\>|x-y|\<\|\|\>>\<geqslant\>\<delta\>>
      proving that <math|\<delta\><rsub|X\\U><around*|(|x|)>=inf<around*|(|<around*|{|<around*|\<\|\|\>|x-y|\<\|\|\>>\|y\<in\>X\\U|}>|)>\<geqslant\>\<delta\>\<gtr\>0>.
      Using the Archimedean property of the reals (see <reference|consequence
      of the archimedean property for the reals>) there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<delta\><rsub|X\\U><around*|(|x|)>\<geqslant\><frac|1|n>\<gtr\>0>
      and thus that <math|x\<in\>\<delta\><rsub|X\\U><rsup|-1><around*|(|<around*|[|<frac|1|n>,\<infty\>|[>|)>=F<rsub|n>>
      proving that <math|U\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>>.
      This together with <reference|eq 15.167.466> proves that\ 

      <\equation>
        <label|eq 15.168.466>U=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>
      </equation>

      Using <reference|eq 15.166.466> we have that
      <math|<around*|{|U\\F<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> is a
      decreasing sequence of closed sets. Further
      <math|\<emptyset\>=U\\U\<equallim\><rsub|<text|<reference|eq
      15.168.466>>>U\\<around*|(|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>|)>=U<big|cap><around*|(|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n><rsup|c>|)>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|U<big|cap>F<rsub|n><rsup|c>|)>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|(|U\\F<rsub|n>|)>>.
      Applying then continuity from above (see <reference|conditions for a
      pre-measure> (3)) we conclude that <math|0=\<mu\><around*|(|\<emptyset\>|)>=<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|U\\F<rsub|n>|)>>
      hence\ 

      <\equation*>
        \<forall\>\<varepsilon\>\<gtr\>0<text| there
        >\<exists\>N\<in\>N<rsub|0><text| such that
        >\<mu\><around*|(|U\\F<rsub|n>|)>\<less\>\<varepsilon\>\<wedge\>F<rsub|n>\<subseteq\>U\<subseteq\>U
      </equation*>

      which proves that <math|U\<in\>\<cal-A\>>
    </description>

    As <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
    is the smallest <math|\<sigma\>>-algebra covering
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> we have that
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>\<subseteq\>\<cal-A\>>
    which by the definition of <math|\<cal-A\>> (see <reference|eq
    15.160.465>) proves this theorem.
  </proof>

  <\corollary>
    <label|finite measure on a Borel space>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space with topology <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>>,
    <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a finite measure then <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
    we have that <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<subseteq\>A\<wedge\>F<text|
    is closed>|}>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
    is open>|}>|)>>
  </corollary>

  <\proof>
    This follows from the previous two lemmas <reference|equivalence of
    measures definitions> and <reference|property of finite measure on a
    Borel set>.
  </proof>

  Note that we can not apply the above on the Lebesgue measures on the normed
  spaces <math|\<bbb-R\>> and <math|\<bbb-R\><rsup|n>> as these measures are
  not finite. The above shows also that finite Borel measures on a normed
  space can be aproximated by values on the open or closed sets. The
  following corollary is a consequence of this.\ 

  The following remark is needed for the definition of intern regularity\ 

  <\remark>
    <label|in a hausdorf space every compact set is Borel>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorf
    topological space then <math|<around*|{|K\<subseteq\>X\|K is
    compact|}>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>> (hence
    <math|\<cal-B\><around*|[|<around*|{|K\<subseteq\>X\|K is
    compact|}>|]>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>>)
  </remark>

  <\proof>
    Let <math|K> be comact then as <math|\<cal-T\>> is Hausdorf we have by
    <reference|compact subspaces are closed> that <math|K> is closed and thus
    by <reference|Borel algebras and closed sets> Borel.
  </proof>

  <\definition>
    <index|local finite measure><index|inner regularity><index|external
    regularity><index|regular measures><index|Radon measures>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> with
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>\<subseteq\>\<cal-A\>> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a measure
    then we define:

    <\enumerate>
      <item><math|\<mu\>> is <with|font-series|bold|locally finite >if
      <math|\<forall\>x\<in\>X> there exists a <math|U> open such that
      <math|x\<in\>U> and <math|\<mu\><around*|(|U|)>\<less\>\<infty\>>

      <item><math|\<mu\>> is <with|font-series|bold|compact finite> if
      <math|\<mu\><around*|(|K|)>\<less\>\<infty\>> for every compact set

      <item><math|\<mu\>> is <with|font-series|bold|external regular> if
      <math|\<forall\>A\<in\>\<cal-A\>> we have that
      <math|\<mu\>*<around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      <text|is open>|}>|)>>

      <item><math|\<mu\>> is <with|font-series|bold|internal regular> if
      <math|\<forall\>A\<in\>\<cal-A\>> we have that
      <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is closed|}>|)>>

      <item><math|\<mu\>> is <with|font-series|bold|compact internal regular
      >if <math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      is compact>|}>|)>>

      <item><math|\<mu\>> is <with|font-series|bold|regular> if <math|\<mu\>>
      is external and compact internal regular

      <item><math|\<mu\>> is a <with|font-series|bold|Radon measure> if
      <math|\<mu\>> is locally finite and regular
    </enumerate>
  </definition>

  It is easy to prove that the product of a scalar and a measure keeps the
  regularity of the measure as expressed in the following theorem.

  <\theorem>
    <label|regularity and product of a scalar and a measures>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-A\>> a <math|\<sigma\>>-algebra,
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]><text| a
    measure >\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then for the measure
    <math|\<alpha\>\<cdot\>\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>>
    (see <reference|product of a scalar and a measure is a measure>) we have\ 
  </theorem>

  <\enumerate>
    <item>If <math|\<mu\>> is locally finite then
    <math|\<alpha\>\<cdot\>\<mu\>> is locally finite

    <item>If <math|\<mu\>> is compact finite then
    <math|\<alpha\>\<cdot\>\<mu\>> is compact finite

    <item>If <math|\<mu\>> is external regular then
    <math|\<alpha\>\<cdot\>\<mu\>> is external regular

    <item>If <math|\<mu\>> is internal regular then
    <math|\<alpha\>\<cdot\>\<mu\>> is internal regular

    <item>If <math|\<mu\>> is compact internal regular then
    <math|\<alpha\>\<cdot\>\<mu\>> is compact internal regular

    <item>If <math|\<mu\>> is regular then <math|\<alpha\>\<cdot\>\<mu\>> is
    regular

    <item>If <math|\<mu\>> is a Radon measure then
    <math|\<alpha\>\<cdot\>\<mu\>> is a Radon measure
  </enumerate>

  <\proof>
    The proof is tedious but trivially

    <\enumerate>
      <item>If <math|x\<in\>X> then there exists a <math|U> open with
      <math|x\<in\>U> such that <math|\<mu\><around*|(|U|)>\<less\>\<infty\>>
      hence <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|U|)>=\<alpha\>\<cdot\>\<mu\><around*|(|U|)>\<less\>\<infty\>>

      <item>If <math|K> is compact then <math|\<mu\><around*|(|K|)>\<less\>\<infty\>>
      hence <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|K|)>=\<alpha\>\<cdot\>\<mu\><around*|(|K|)>\<less\>\<infty\>>

      <item>Let <math|A\<in\>\<cal-A\>> then
      <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>=\<alpha\>\<cdot\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      is open>|}>|)>\<equallim\><rsub|<text|<reference|-sup A=inf
      -A>>>inf<around*|(|<around*|{|\<alpha\>\<cdot\>\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      is open|}>|)>=inf<around*|(|<around*|{|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      is open|}>|)><rsub|>>

      <item>Let <math|A\<in\>\<cal-A\>> then
      <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>=\<alpha\>\<cdot\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C<text|
      is closed>|}>|)>\<equallim\><rsub|<text|<reference|-sup A=inf
      -A>>>sup<around*|(|<around*|{|\<alpha\>\<cdot\>\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is closed|}>|)>=inf<around*|(|<around*|{|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is closed|}>|)><rsub|>>

      <item>Let <math|A\<in\>\<cal-A\>> then
      <math|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|A|)>=\<alpha\>\<cdot\>\<mu\><around*|(|A|)>=\<alpha\>\<cdot\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C<text|
      is compact>|}>|)>\<equallim\><rsub|<text|<reference|-sup A=inf
      -A>>>sup<around*|(|<around*|{|\<alpha\>\<cdot\>\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is compact|}>|)>=inf<around*|(|<around*|{|<around*|(|\<alpha\>\<cdot\>\<mu\>|)><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is compact|}>|)><rsub|>>

      <item>This follows from (3) and (5)

      <item>This follows from (1) and (6)
    </enumerate>

    \;
  </proof>

  The regularity definitions (2),(3) and (4) tells us how a measure can be
  aproximated by open en compact sets showing a relation between the measure
  and the topology on a set. This is expressed in the following theorem.

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological
    space, <math|\<cal-A\>> a <math|\<sigma\>>-algebra on <math|X> with
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>\<subseteq\>\<cal-A\>> then we
    have that\ 

    <\enumerate>
      <item>If <math|\<mu\>,\<nu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      be external regular measures such that <math|\<forall\>U> open we have
      <math|\<mu\><around*|(|U|)>=\<nu\><around*|(|U|)>> then
      <math|\<mu\>=\<nu\>>

      <item>If <math|\<mu\>,\<nu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      be internal regular measures such that <math|\<forall\>C> closed we
      have <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>> then
      <math|\<mu\>=\<nu\>>

      <item>If <math|\<mu\>,\<nu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
      be compact internal regular measures such that <math|\<forall\>C>
      closed we have <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>> then
      <math|\<mu\>=\<nu\>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      <text|is open>|}>|)>=inf<around*|(|<around*|{|\<nu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      <text|is open>|}>|)>=\<nu\><around*|(|A|)>>

      <item><math|\<forall\>A> we have <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is closed|}>|)>=sup<around*|(|<around*|{|\<nu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is closed|}>|)>=\<nu\><around*|(|A|)>>

      <item><math|\<forall\>A> we have <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is compact|}>|)>=sup<around*|(|<around*|{|\<nu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      is compact|}>|)>=\<nu\><around*|(|A|)>>
    </enumerate>
  </proof>

  Applying the regularity definitions and the above on <reference|finite
  measure on a Borel space> proves the following theorem.

  <\theorem>
    <label|equality for regular measures>Let
    <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>>|\<rangle\>>> be
    a normed space with the norm topology
    <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>> then we have\ 

    <\enumerate>
      <item>Every finite measure <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      is external and internal regular

      <item>If <math|\<mu\>,\<nu\>:\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      are finite measures then we have\ 

      <\enumerate>
        <item>If <math|\<forall\>U> open we have
        <math|\<mu\><around*|(|U|)>=\<nu\><around*|(|U|)>> then
        <math|\<nu\>=\<mu\>>

        <item>If <math|\<forall\>C> closed we have
        <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>> then
        <math|\<mu\>=\<nu\>>
      </enumerate>
    </enumerate>
  </theorem>

  The following theorem shows that , in case of Hausdorf spaces, local
  finiteness implies compact finiteness.

  <\theorem>
    <label|locally finite measure on Hausdorf space>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a Hausdorf
    topological space (note that metric and normed topologies are Hausdorf by
    <reference|metric spaces are Hausdorff>) and
    <math|\<mu\>:\<cal-B\><around*|[|X,\<cal-T\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a locally finite measure then <math|\<mu\>> is compact finite.
  </theorem>

  <\proof>
    Let <math|K> be a compact set then <math|\<forall\>x\<in\>K> there exists
    by local finitness a open set <math|U<rsub|x>> with
    <math|x\<in\>U<rsub|x>> and <math|\<mu\><around*|(|U<rsub|x>|)>\<less\>\<infty\>>,
    hence <math|K\<subseteq\><big|cup><rsub|x\<in\>K>U<rsub|x>>. As <math|K>
    is compact there exists a finite set <math|<around*|{|x<rsub|1>,\<ldots\>,x<rsub|n>|}>>
    such that <math|K\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|x<rsub|i>>>
    and thus <math|\<mu\><around*|(|K|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>U<rsub|x<rsub|i>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|U<rsub|x<rsub|i>>|)>\<less\>\<infty\>>
  </proof>

  The following example will be used many times in the proof of the following
  theorem.

  <\example>
    <label|locally finite measure of closed rectangle is finite>Given
    <math|n\<in\>\<bbb-N\><rsub|0>> and a compact finite
    <math|\<mu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    then for every closed, open, left half open, right half open rectangle
    <math|R> we have <math|\<mu\><around*|(|R|)>\<less\>\<infty\>>. Further
    <math|\<mu\><rsub|<around*|[|R|]>>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    (see <reference|restricted measures> for a definition) is then a finite
    measure.
  </example>

  <\proof>
    The first part follows from the fact that by <reference|closed rectangles
    are compact in the norm topology> the closed rectangle is compact and
    thus <math|\<mu\><around*|(|R|)>\<less\>\<infty\>>. For the second part,
    take <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>>>|]>>
    and <math|R> a closed rectangle then <math|\<mu\><rsub|<around*|[|R|]>><around*|(|B|)>=\<mu\><around*|(|B<big|cap>R|)>\<leqslant\>\<mu\><around*|(|R|)>\<less\>\<infty\>>
    (using the monoticity of <math|\<mu\>> (see <reference|properties of a
    content>)). If <math|R<rprime|'>> is a open, left half open or right half
    open rectangle then <math|R<rprime|'>\<subseteq\><wide|R<rprime|'>|\<bar\>>>
    a closed rectangle so that <math|\<mu\><rsub|<around*|[|R<rprime|'>|]>><around*|(|B|)>=\<mu\><around*|(|B<big|cap>R<rprime|'>|)>\<leqslant\>\<mu\><around*|(|R<rprime|'>|)>\<leqslant\>\<mu\><around*|(|<wide|R<rprime|'>|\<bar\>>|)>\<less\>\<infty\>>.
  </proof>

  The following theorem shows that every Borel locally finite measure on
  <math|\<bbb-R\><rsup|n>> is regular and thus a Radon measure.\ 

  <\theorem>
    <label|condition for a Radon measure>Let <math|n\<in\>\<bbb-N\>>,
    <math|\<mu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a compact finite measure then <math|\<mu\>> is regular and is thus a
    Radon measure. Note that in case of <math|n=0> we equate
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    with <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>.
  </theorem>

  <\proof>
    First we prove external regularity. Let
    <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    then we must consider the following cases:

    <\description>
      <item*|<math|\<mu\><around*|(|A|)>=\<infty\>>>then if <math|U> is open
      with <math|A\<subseteq\>U> so by the monotonicity of <math|\<mu\>>
      \ that <math|\<infty\>=\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>\<Rightarrow\>\<mu\><around*|(|U|)>=\<infty\>>
      hence <math|inf<around*|(|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      is open>|)>=\<infty\>=\<mu\><around*|(|A|)>>

      <item*|<math|\<mu\><around*|(|A|)>\<less\>\<infty\>>>then using the
      montonicity of <math|\<mu\>> (see <reference|properties of a content>)
      we have <math|A\<subseteq\>U\<Rightarrow\>\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>>
      proving

      <\equation>
        <label|eq 15.169.467>\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
        open|}>|)>
      </equation>

      We prove now that <math|\<mu\><around*|(|A|)>\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>> gives a contradiction. Define
      <math|<around*|{|Q<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|Q<rsub|i>=<around*|]|-i,i|[><rsup|n>> [open sets] and consider
      the measure <math|\<mu\><rsub|<around*|[|Q<rsub|i>|]>>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      which is finite by <reference|locally finite measure of closed
      rectangle is finite>. So using <reference|property of finite measure on
      a Borel set> we have that given <math|\<varepsilon\>\<gtr\>0> there
      exists a open <math|U<rsub|i>> and closed set <math|F<rsub|i>> such
      that <math|F<rsub|i>\<subseteq\>A\<subseteq\>U<rsub|i>> and
      <math|\<mu\><rsub|<around*|[|Q<rsub|i>|]>><around*|(|V\\F<rsub|i>|)>\<less\><frac|\<varepsilon\>|2<rsup|i>>\<Rightarrowlim\><rsub|V<rsub|i>\\A\<subseteq\>V<rsub|i>\\F<rsub|i>>\<mu\><rsub|<around*|[|Q<rsub|i>|]>><around*|(|V<rsub|i>\\A|)>\<less\><frac|\<varepsilon\>|2<rsup|i>>>,
      to summarise

      <\equation>
        <label|eq 15.1170.467>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| there
        exists open >V<rsub|i><space|1em>such that
        \ \<mu\><rsub|<around*|[|Q<rsub|i>|]>><around*|(|V<rsub|i>\\A|)>\<less\><frac|\<varepsilon\>|2<rsup|i>>
      </equation>

      Define then the open set <math|V=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|V<rsub|i><big|cap>Q<rsub|i>|)>>.
      If now <math|x\<in\>A> then there exists a
      <math|i\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|]|-i,i|[><rsup|n>=Q<rsub|i>> and thus as
      <math|A\<subseteq\>V<rsub|i>> we have that
      <math|x\<in\>V<rsub|i><big|cap>Q<rsub|i>> proving that
      <math|A\<subseteq\>V>. Also <math|\<mu\><around*|(|V\\A|)>=\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|V<rsub|i><big|cap>Q<rsub|i>|)>\\A|)>\<leqslant\><rsub|<text|<reference|pre-measure
      is denumerable subadditive>>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|<around*|(|V<rsub|i><big|cap>Q<rsub|i>|)>\\A|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|<around*|(|V<rsub|i>\\A|)><big|cap>Q<rsub|i>|)>\<less\><big|sum><rsub|i=1><rsup|n><frac|\<varepsilon\>|2<rsup|i>>\<less\>\<varepsilon\>>
      proving that\ 

      <\equation>
        <label|eq 15.171.467>\<forall\>\<varepsilon\>\<gtr\>0<text| there
        exists a open set <math|V> with >A\<subseteq\>V<text| and
        >\<mu\><around*|(|V\\A|)>\<less\>\<varepsilon\>
      </equation>

      As <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> and we have assumed
      that <math|\<mu\><around*|(|A|)>\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>> we have that <math|\<varepsilon\>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>-\<mu\><around*|(|A|)>\<gtr\>0> so using <reference|eq
      15.171.467> there exists a open set <math|V> with <math|A\<subseteq\>V>
      such that <math|\<mu\><around*|(|V\\A|)>\<less\>\<varepsilon\>\<Rightarrow\>\<mu\><around*|(|V|)>=\<mu\><around*|(|V\\A|)>+\<mu\><around*|(|A|)>\<less\>\<varepsilon\>+\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      open>|}>|)>> leading to the contradiction <math|A\<subseteq\>V open
      >and <math|\<mu\><around*|(|V|)>\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
      open>|}>|)>>. So we must have <math|inf<around*|(|<around*|{|\<mu\><around*|(|V|)>\|A\<subseteq\>V\<wedge\>V
      open|}>|)>\<leqslant\>\<mu\><around*|(|A|)>> which together with
      <reference|eq 15.169.467>

      <\equation>
        <label|eq 15.172.467>\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U<text|
        open>|}>|)>
      </equation>

      proving external regularity.
    </description>

    Second we prove compact internal regularity. Again given
    <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we must consdier two possibilities

    <\description>
      <item*|<math|\<mu\><around*|(|A|)>\<less\>\<infty\>>>Define
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|C<rsub|i>=<around*|[|-i,i|]><rsup|n>> and consider the measures
      <math|\<mu\><rsub|<around*|[|C<rsub|i>|]>>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
      which are finite measures by <reference|locally finite measure of
      closed rectangle is finite>. So given <math|\<varepsilon\>\<gtr\>0> we
      have using <reference|property of finite measure on a Borel set> that
      there exists a open set <math|V<rsub|i>> and a closed set
      <math|F<rsub|i>> such that <math|F<rsub|i>\<subseteq\>A\<subseteq\>V<rsub|>>
      and <math|\<mu\><rsub|<around*|[|C<rsub|i>|]>><around*|(|V<rsub|i>\\F<rsub|i>|)>\<less\><frac|\<varepsilon\>|2<rsup|>>\<Rightarrowlim\><rsub|A\\F<rsub|i>\<subseteq\>V<rsub|i>\\F<rsub|i>>\<mu\><rsub|<around*|[|C<rsub|i>|]>><around*|(|A\\F<rsub|i>|)>\<less\><frac|\<varepsilon\>|2<rsup|i>>>.
      To summerize we have\ 

      <\equation>
        <label|eq 15.173.468>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| there
        exists a closed set >F<rsub|i><text| such that
        >F<rsub|i>\<subseteq\>A<text| and
        >\<mu\><rsub|<around*|[|C<rsub|i>|]>><around*|(|A\\F<rsub|i>|)>\<less\><frac|\<varepsilon\>|2<rsup|>>
      </equation>

      Clearly we have that <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a increasing family of set so that
      <math|<around*|{|A<big|cap>C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is a increasing family of set, further as
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>=\<bbb-R\><rsup|n>>
      we have that <math|A=A<big|cap>\<bbb-R\><rsup|n>=A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>C<rsub|i>|)>>
      proving that <math|<around*|(|A<big|cap>C<rsub|i>|)>\<uparrow\>A>.
      Using <reference|conditions for a pre-measure> (2) we have then that
      <math|\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<big|cap>C<rsub|i>|)>>
      from which it follows that \ 

      <\equation>
        <label|eq 15.174.469>\<exists\>N<rsub|\<varepsilon\>>\<in\>\<bbb-N\><rsub|0><text|
        such that >\<mu\><around*|(|A|)>-\<mu\><around*|(|A<big|cap>C<rsub|N<rsub|\<varepsilon\>>>|)>\<less\><frac|\<varepsilon\>|2>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>-\<mu\><around*|(|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>|)>>|<cell|\<less\>>|<cell|\<mu\><around*|(|A<big|cap>C<rsub|N<rsub|\<varepsilon\>>>|)>-\<mu\><around*|(|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>|)>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsub|<around*|[|C<rsub|N<rsub|\<varepsilon\>>>|]>><around*|(|A|)>-\<mu\><rsub|<around*|[|C<rsub|N<rsub|\<varepsilon\>>>|]>><around*|(|F<rsub|N<rsub|\<varepsilon\>>>|)>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<equallim\><rsub|F<rsub|N<rsub|\<varepsilon\>>>\<subseteq\>A<text|
        and <reference|properties of a content> (3)> and
        \<mu\><around*|(|A|)>\<less\>\<infty\>>>|<cell|\<mu\><rsub|<around*|[|C<rsub|N<rsub|\<varepsilon\>>>|]>><around*|(|A\\F<rsub|N<rsub|\<varepsilon\>>>|)>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        15.173.468>>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>=\<varepsilon\>>>>>
      </eqnarray*>

      As <math|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>>
      is closed and <math|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>\<subseteq\>C<rsub|N<rsub|\<varepsilon\>>>>
      a compact set we have by <reference|closed rectangles are compact in
      the norm topology> that <math|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>>
      is compact and as we also have <math|F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>\<subseteq\>F<rsub|N<rsub|\<varepsilon\>>>\<subseteq\>A>
      we must have by taking <math|K<rsub|\<varepsilon\>>=F<rsub|N<rsub|\<varepsilon\>>><big|cap>C<rsub|N<rsub|\<varepsilon\>>>>

      <\equation>
        <label|eq 15.175.469>\<forall\>\<varepsilon\>\<gtr\>0<text| there
        exists a compact set <math|K<rsub|\<varepsilon\>><text| such that
        >K\<subseteq\>A<text| and >\<mu\><around*|(|A|)>-\<mu\><around*|(|K|)>\<less\>\<varepsilon\>>>
      </equation>

      Assume now that <math|sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      compact>|}>|)>\<less\>\<mu\><around*|(|A|)>> then
      <math|\<mu\><around*|(|A|)>-sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      compact>|}>|)>\<gtr\>0> so by <reference|eq 15.175.469> there exists a
      <math|K<rsub|\<varepsilon\>>> compact
      <math|K<rsub|\<varepsilon\>>\<subseteq\>A> with
      <math|\<mu\><around*|(|A|)>-\<mu\><around*|(|K|)>\<less\>\<mu\><around*|(|A|)>-sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      compact>|}>|)>> hence as <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>
      we have <math|sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      compact>|}>|)>\<less\>\<mu\><around*|(|K|)>> a contradiction. So we
      must have that

      <\equation>
        <label|eq 15.176.469>\<mu\><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
        is compact>|}>|)>
      </equation>

      As we have also for <math|K> compact sets with <math|K\<subseteq\>A>
      that <math|\<mu\><around*|(|K|)>\<leqslant\>\<mu\><around*|(|A|)>>
      proving that <math|sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
      is compact>|}>|)>\<leqslant\>\<mu\><around*|(|A|)>> which together with
      <reference|eq 15.176.469> prove\ 

      <\equation>
        <label|eq 15.177.469>\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K<text|
        is compact>|}>|)>
      </equation>

      <item*|<math|\<mu\><around*|(|A|)>=\<infty\>>>Define now
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|A<rsub|i>=A<big|cap><around*|]|-i,i|[><rsup|n>> then we have that
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is a
      increasing sequence and <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>\<Rightarrow\>A=A<big|cap>\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proving that <math|A<rsub|i>\<uparrow\>A>. So using
      <reference|conditions for a pre-measure> we have that

      <\equation>
        <label|eq 15.178.469>\<infty\>=\<mu\><around*|(|A|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      Now <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|<around*|]|-i,i|[><rsup|n>|)>\<less\><rsub|<text|<reference|locally
      finite measure of closed rectangle is finite>>>\<infty\>>, applying
      then <reference|eq 15.177.469> on <math|A<rsub|i>> gives that
      <math|\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A<rsub|i>\<wedge\>K
      is compact|}>|)>>. Using the definiton of the supremum
      <math|\<exists\>K<rsub|i>\<vdash\>K<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>A\<wedge\>K<rsub|i>>
      is compact so that <math|\<mu\><around*|(|K<rsub|i>|)>\<gtr\>\<mu\><around*|(|A<rsub|i>|)>-1>.
      From this it follows that\ 

      <\equation>
        <label|eq 13.137.81>\<forall\>i\<in\>\<bbb-N\><rsub|0> there exists a
        K<rsub|i> such that K<rsub|i>\<subseteq\>A,K<rsub|i> is compact and
        \<mu\><around*|(|K<rsub|i>|)>\<gtr\>\<mu\><around*|(|A<rsub|i>|)>-1
      </equation>

      If now <math|sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
      is compact|}>|)>\<less\>\<infty\>> then we can find by <reference|eq
      15.178.469> a <math|N\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<mu\><around*|(|A<rsub|N>|)>\<gtr\>sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
      is compact|}>|)>+1>, using <reference|eq 13.137.81> we have then that
      <math|\<mu\><around*|(|K<rsub|N>|)>\<gtr\>sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
      is compact|}>|)>> a contradiction. So we must have that

      <\equation*>
        \<mu\><around*|(|A|)>=\<infty\>=sup<around*|(|<around*|{|\<mu\><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
        is compact|}>|)>
      </equation*>
    </description>
  </proof>

  We prove now that the Lebesgue measures on <math|\<bbb-R\><rsup|n>> and
  <math|\<bbb-R\>> are Radon measures.

  <\lemma>
    <label|Lebesgue measures are local finite>\ 

    <\enumerate>
      <item>The Lebesgue measure in <math|<around*|\<langle\>|\<bbb-R\>,\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>,\<lambda\>|\<rangle\>>>
      is locally finite

      <item>The Lebesgue measure in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>,\<phi\><rsup|n>|\<rangle\>>>
      is locally finite
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\>\<bbb-R\>> then
      <math|x\<in\><around*|]|x-1,x+1|[>> a open set with
      <math|\<lambda\><around*|(|<around*|]|x-1,x+1|[>|)>\<leqslant\>\<lambda\><around*|(|<around*|[|x-1,x+1|[>|)>\<equallim\><rsub|<text|<reference|Lebesgue
      measure>>>l<around*|(|<around*|[|x-1,x+1|[>|)>=2\<less\>\<infty\>>
      proving that <math|\<lambda\>> is locally finite.

      <item>If <math|x=<around*|(|x<rsub|1,>,\<ldots\>,x<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|x<rsub|i>-1,x<rsub|i>+1|[>>
      a open set and <math|\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|x<rsub|i>-1,x<rsub|i>+1|[>|)>\<leqslant\>\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|x<rsub|i>-1,x<rsub|i>+1|[>|)>\<equallim\><rsub|<text|<reference|Lebesgue
      measure on R^n>>>v<rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|x<rsub|i>-1,x<rsub|i>+1|[>|)>=<big|prod><rsub|i=1><rsup|n>2=2\<cdot\>n\<less\>\<infty\>>
      proving that <math|\<lambda\>> is locally finite.
    </enumerate>
  </proof>

  <\theorem>
    <label|Lebesgue measures are Radon measures>\ 

    <\enumerate>
      <item>The Lebesgue measure in <math|<around*|\<langle\>|\<bbb-R\>,\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>,\<lambda\>|\<rangle\>>>
      is a Radon measure

      <item>The Lebesgue measure in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>,\<phi\><rsup|n>|\<rangle\>>>
      is a Radon measure
    </enumerate>
  </theorem>

  <\proof>
    Using the above theorem (see <reference|Lebesgue measures are local
    finite>) we have by <reference|condition for a Radon measure> and the
    fact that local finitness implies compact finite that the Lebesgue
    measures are Radon measures.
  </proof>

  <subsection|Translation invariance and Radon Measures>

  We prove a surprising relation between all translation invariant Radon
  measures on <math|\<bbb-R\>>, <math|\<bbb-R\><rsup|n>> and the Lebesgue
  measures.

  <\theorem>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|\<mu\>:\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a radon measure that is translation invariant then
    <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
    we have <math|\<mu\><around*|(|A|)>=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|A|)>>
    or in other words <math|\<mu\>=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\>>.
  </theorem>

  <\proof>
    First we calculate <math|\<mu\><around*|(|<around*|[|0,1|[>|)>> in terms
    of Dyadic intervals. Given <math|N\<in\>\<bbb-N\>> considert the family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>+1|}>>>
    by <math|a<rsub|i>=<frac|i-1|2<rsup|N>>> then we have <math|a<rsub|1>=0>,
    <math|a<rsub|2<rsup|N>+1>=1> and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>>
    we have <math|<frac|i-1|2<rsup|N>>\<less\><frac|i|2<rsup|N>>=a<rsub|i+1>>.
    Using \ <reference|family of reals to intervals> we have then that
    <math|<around*|[|0,1|[>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>>
    and as <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>> with
    <math|i\<less\>j> we have <math|<around*|[|a<rsub|i>,a<rsub|i+1>|[><big|cap><around*|[|a<rsub|j>,a<rsub|j+1>|[>=<around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[><big|cap><around*|[|<frac|j-1|2<rsup|N>>,<frac|j|2<rsup|N>>|[>\<equallim\><rsub|<frac|i|2<rsup|N>>\<leqslant\><frac|j|2<rsup|N>>>\<emptyset\>>
    we conclude that\ 

    <\equation>
      <label|eq 15.181.473>\<forall\>N\<in\>\<bbb-N\><text| we have
      ><around*|[|0,1|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[>
    </equation>

    Further <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>> we
    have <math|\<mu\><around*|(|<around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[>|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>+<around*|(|<frac|i-1|2<rsup|N>>|)>|[>|)>\<equallim\><rsub|\<mu\><text|
    is translation invarian>>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[>|)>>
    so using <reference|eq 15.181.473> together with the
    <math|\<sigma\>>-addititvity of <math|\<mu\>> gives
    <math|\<mu\><around*|(|<around*|[|0,1|[>|)>=<big|sum><rsub|i=1><rsup|2<rsup|N>>\<mu\><around*|(|<around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[>|)>=<big|sum><rsub|i=1><rsup|2<rsup|N>>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[>|)>=2<rsup|N>\<cdot\>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[>|)>>
    hence we have\ 

    <\equation>
      <label|eq 15.182.473>\<mu\><around*|(|<around*|[|0,1|[>|)>=2<rsup|N>\<cdot\>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|n>>|]>|)>
    </equation>

    Let now <math|I\<in\>\<bbb-D\>> (see <reference|Dyadic interval>) then
    there exists a <math|N\<in\>\<bbb-N\>> such that
    <math|I\<in\>\<bbb-D\><rsub|N>> hence there exists a
    <math|z\<in\>\<bbb-Z\>> such that <math|I=<around*|[|<frac|z-1|2<rsup|N>>,<frac|z|2<rsup|N>>|[>>
    and <math|\<mu\><around*|(|I|)>=\<mu\><around*|(|<around*|[|<frac|z-1|2<rsup|N>>,<frac|z|2<rsup|N>>|[>|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[>+<frac|z-1|2<rsup|N>>|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|]>|)>\<equallim\><rsub|<text|<reference|eq
    15.182.473>>><frac|\<mu\><around*|(|<around*|[|0,1|[>|)>|2<rsup|N>>>
    proving that\ 

    <\equation>
      <label|eq 15.183.473>\<forall\>I\<in\>\<bbb-D\><text| there exists a
      >N\<in\>\<bbb-N\><text| such that >\<mu\><around*|(|I|)>=<frac|\<mu\><around*|(|<around*|[|0,1|[>|)>|2<rsup|N>>
    </equation>

    Now as <math|\<lambda\>> is also a Radon measure and translation
    invariant (see <reference|Lebesgue measures are Radon measures> and
    <reference|lambda is translation invariant>) we have using <reference|eq
    15.183.473> that <math|\<lambda\><around*|(|I|)>=<frac|\<lambda\><around*|(|<around*|[|0,1|[>|)>|2<rsup|N>>=<frac|l<around*|(|<around*|[|0,1|[>|)>|2<rsup|N>>=<frac|1|2<rsup|N>>>
    and applying this to <reference|eq 15.183.473> proves that\ 

    <\equation>
      <label|eq 15.184.473>\<forall\>I\<in\>\<bbb-D\><text| we have
      >\<mu\><around*|(|I|)>=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|I|)>
    </equation>

    Let now <math|U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> be<space|1em>a
    open set then we have two cases to consider\ 

    <\description>
      <item*|<math|U=\<emptyset\>>>then <math|\<mu\><around*|(|U|)>=0=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>0=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|U|)>>

      <item*|<math|U\<neq\>\<emptyset\>>>then using <reference|open set as a
      union of Dyadic intervals> there exists a family
      <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> of Dyadic
      intervals such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>>
      hence we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|U|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        15.184.473>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|I<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\><around*|(|U|)>>>>>
      </eqnarray*>

      Hence <math|\<forall\>U\<in\>\<cal-T\><rsub|<around*|\|||\|>>> we have
      that for the Radon measure (see <reference|regularity and product of a
      scalar and a measures>) <math|\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\>>
      that <math|\<mu\><around*|(|U|)>=<around*|(|\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\>|)><around*|(|U|)>>
      and thus using <reference|equality for regular measures> we must have
      finally\ 

      <\equation*>
        \<mu\>=\<mu\><around*|(|<around*|[|0,1|[>|)>\<cdot\>\<lambda\>
      </equation*>

      proving the theorem
    </description>
  </proof>

  <\theorem>
    <label|Radon measure on R^n and Lebesgue measure>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|\<mu\>:\<cal-B\><around*|(|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a Radon measure that is translation invariant then
    <math|\<forall\>A\<in\>\<cal-B\><around*|(|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|)>>
    we have <math|\<mu\><around*|(|A|)>=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>>
    or in other words <math|\<mu\>=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n>>
  </theorem>

  <\proof>
    First we calculate <math|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>>
    using Dyadic cubes. Given <math|N\<in\>\<bbb-N\>> consider the family
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>+1|}>>>
    by <math|a<rsub|i>=<frac|i-1|2<rsup|N>>> then we have that
    <math|a<rsub|1>=0>, <math|a<rsub|2<rsup|N>+1>=1> and
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>> we have
    <math|a<rsub|i>=<frac|i-1|2<rsup|N>>\<less\><frac|i|2<rsup|N>>=a<rsub|i+1>>.
    Using <reference|family of reals to intervals> we have then that
    <math|<around*|[|0,1|[>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>>
    and as <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>> with
    <math|i\<less\>j> we have <math|<around*|[|a<rsub|i>,a<rsub|i+1>|[><big|cap><around*|[|a<rsub|j>,a<rsub|j+1>|[>=<around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[><big|cap><around*|[|<frac|j-1|2<rsup|N>>,<frac|j|2<rsup|N>>|[>\<equallim\><rsub|<frac|i|2<rsup|N>>\<leqslant\><frac|j|2<rsup|N>>>\<emptyset\>>
    we conclude that\ 

    <\equation>
      <label|eq 15.181.470>\<forall\>N\<in\>\<bbb-N\><rsub|0><text| we have
      ><around*|[|0,1|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|a<rsub|i>,a<rsub|i+1>|[>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|<frac|i-1|2<rsup|N>>,<frac|i|2<rsup|N>>|[>
    </equation>

    So using <reference|union of sub rectangles> we have
    <math|\<forall\>N\<in\>\<bbb-N\>> if we define
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|{|b<rsub|i,j>|}><rsub|j\<in\><around*|{|1,\<ldots\>,2<rsup|N>+1|}>>>
    by <math|b<rsub|i,j>=<frac|j-1|2<rsup|N>>> then we have that
    <math|<around*|[|0,1|[>\<equallim\><rsub|<text|<reference|eq
    15.181.470>>><big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|[|b<rsub|i,j>,b<rsub|i,j+1>|[>>
    so we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|0,1|[><rsup|n>>|<cell|=>|<cell|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,1|[>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|union
      of sub rectangles>>>>|<cell|<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|b<rsub|j,\<rho\><rsub|j>>,b<rsub|j,\<rho\><rsub|j>+1>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sqcup><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,2<rsup|N>|}>><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|\<rho\><rsub|j>-1|2<rsup|N>><rsub|<rsub|i>>,<frac|\<rho\><rsub|j>|2<rsup|N>>|[>|)>>>>>
    </eqnarray*>

    So using the denumerable additivity of a measure we have then\ 

    <\equation>
      <label|eq 15.182.470>\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>=<big|sum><rsub|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,2<rsup|N>|}>>\<mu\><around*|(|<big|prod><rsub|j=<around*|{|1,\<ldots\>,n|}>><around*|[|<frac|\<rho\><rsub|j>-1|2<rsup|N>><rsub|<rsub|i>>,<frac|\<rho\><rsub|j>|2<rsup|N>>|[>|)>
    </equation>

    Now given <math|\<rho\>\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,2<rsup|N>|}>>
    we have that <math|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|\<rho\><rsub|j>-1|2<rsup|N>>,<frac|\<rho\><rsub|j>|2<rsup|N>>|[>|)>+<frac|-<around*|(|\<rho\><rsub|j>-1|)>|2<rsup|N>>=<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|2<rsup|N>>|[>=<around*|[|0,<frac|1|2<rsup|N>>|[>>.
    Using the translation invariance of <math|\<mu\>> we have then that
    <math|\<mu\><around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|\<rho\><rsub|j>-1|2<rsup|N>>,<frac|\<rho\><rsub|j>|2<rsup|N>>|[>|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[><rsup|n>|)>>.
    Which combined with <reference|eq 15.182.470> and the fact that
    <math|#<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|1,\<ldots\>,2<rsup|N>|}>|)>\<equallim\><rsub|<text|<reference|finite
    product of finite or denumerable sets>>>2<rsup|n\<cdot\>N>> together with
    <reference|finite sum of constants in the extented reals> (sum of
    constants) gives

    <\equation>
      <label|eq 15.183.470>\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>=2<rsup|N\<cdot\>n>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[><rsup|n>|)>
    </equation>

    \;

    \ <math|>Let now <math|Q\<in\>\<bbb-D\><rsup|n>> be a Dyadic cube (see
    <reference|Dyadic cubes>) then there exists a <math|N\<in\>\<bbb-N\>>
    such that <math|Q\<in\>\<bbb-D\><rsup|n><rsub|N>> and thus there exits a
    <math|<around*|{|z<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-Z\>>
    such that <math|Q=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|N>>,<frac|z<rsub|i>+1|2<rsup|N>>|[>>
    then <math|Q+<around*|(|-z<rsub|1>,\<ldots\>,-z<rsub|n>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|2<rsup|N>>|[>=<around*|[|0,<frac|1|2<rsup|N>>|[><rsup|n>>
    and as <math|\<mu\>> is translation invariant we have\ 

    <\equation>
      <label|eq 15.184.472>\<forall\>Q\<in\>\<bbb-D\><rsup|n><text| there
      exists >N\<in\>\<bbb-N\><rsub|0><text| such> that
      \<mu\><around*|(|Q|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[><rsup|n>|)>
    </equation>

    As <math|\<phi\><rsup|n>> is by <reference|Lebesgue measures are Radon
    measures> and <reference|v^n is translation invariant> a translation
    invariant measure we have using the above that
    <math|\<phi\><rsup|n><around*|(|Q|)>=\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|2<rsup|N>>|[>|)>=v<rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|2<rsup|N>>|[>|)>=<big|prod><rsub|i=1><rsup|n><frac|1|2<rsup|N>>=<frac|1|2<rsup|N\<cdot\>n>>>
    hence <math|\<mu\><around*|(|Q|)>\<equallim\><rsub|<text|<reference|eq
    15.184.472>>>\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|N>>|[><rsup|n>|)>\<equallim\><rsub|<text|<reference|eq
    15.183.470>>><frac|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>|2<rsup|N\<cdot\>n>>=\<phi\><rsup|n><around*|(|Q|)>\<cdot\>\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>>
    proving that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|>|<cell|<label|eq
      15.185.472>\<forall\>Q\<in\>\<bbb-D\><rsup|n> we have
      \<mu\><around*|(|Q|)>=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n><around*|(|Q|)><eq-number>>>>>
    </eqnarray*>

    Let now <math|U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    then we have either\ 

    <\description>
      <item*|<math|U=\<emptyset\>>>then <math|\<mu\><around*|(|\<emptyset\>|)>=0=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>0=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><around*|(|U|)>>

      <item*|<math|U\<neq\>\<emptyset\>>>then we can using <reference|Borel
      measure and Dyadic intervals> write <math|U>as a pairwise countable
      family of Dyadic cubes hence <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>Q<rsub|i>>
      were <math|Q<rsub|i>\<in\>\<bbb-D\><rsup|n>><space|1em>so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|U|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>Q<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|Q<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        15.185.472>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n><around*|(|Q<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>\<phi\><rsup|n><around*|(|Q<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n><around*|(|U|)>>>>>
      </eqnarray*>
    </description>

    Hence <math|\<forall\>U\<in\>\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    we have that for the Radon measure (see <reference|regularity and product
    of a scalar and a measures>) <math|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n>>
    that <math|\<mu\><around*|(|U|)>=<around*|(|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n>|)><around*|(|U|)>>
    and thus using <reference|equality for regular measures> we must have
    finally\ 

    <\equation*>
      \<mu\>=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n>
    </equation*>

    proving the theorem
  </proof>

  Next we we prove that the image of a Borel set under a homeomorphism is
  again a Borel set, we need this so that
  <math|\<phi\><rsup|n><around*|(|T<around*|(|A|)>|)>> makes sense.

  <\theorem>
    <label|homeomorphism and Borel sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be two
    topological spaces, <math|T:X\<rightarrow\>Y> be a homeomorphism (see
    <reference|homeomorphism>) then <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>>
    we have <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<cal-T\><rsub|Y>|]>>
  </theorem>

  <\proof>
    Consider the set\ 

    <\equation*>
      \<cal-A\>=<around*|{|A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>\|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>|}>
    </equation*>

    and prove that it is a <math|\<sigma\>>-algebra on
    <math|\<cal-T\><rsub|X>>:\ 

    <\enumerate>
      <item>As <math|T> is a bijection and thus surjective we have
      <math|T<around*|(|X|)>=Y\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
      proving that <math|X\<in\>\<cal-A\>>

      <item>If <math|A\<in\>\<cal-A\>> then as <math|T> is injective we have
      that <math|T<around*|(|X\\A|)>\<equallim\><rsub|<text|<reference|injective
      functions preserve set difference>>>T<around*|(|X|)>\\T<around*|(|A|)>=Y\\T<around*|(|A|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
      [as <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
      by the definition of <math|\<cal-A\>>], hence we have
      <math|X\\A\<in\>\<cal-A\>>

      <item>Assume that <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      then <math|T<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>T<around*|(|A<rsub|i>|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
      [for by construction of <math|\<cal-A\>> we have
      <math|T<around*|(|A<rsub|i>|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
      for every <math|i\<in\>\<bbb-N\><rsub|0>>]
    </enumerate>

    Further if <math|U\<in\>\<cal-T\><rsub|X>> then as <math|T> is a
    homeomorphism and thus open we have <math|T<around*|(|A|)>\<in\>\<cal-T\><rsub|Y>\<subseteq\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>
    proving that <math|\<cal-T\><rsub|X>\<subseteq\>\<cal-A\>>. Hence we have
    <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>=\<sigma\><around*|(|\<cal-T\><rsub|X>|)>\<subseteq\>\<cal-A\>>
    proving that <math|\<forall\>A\<in\>\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>>
    we have <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>.
  </proof>

  As a linear isomorphism (see <reference|linear isomorphism>) between
  <math|\<bbb-R\><rsup|n>> and <math|\<bbb-R\><rsup|n>> is automatically a
  homeomorphism (if we use the maximum norm topology) (see <reference|linear
  isomorphism between R^n is a homeomorphism>) we have the following
  corollary.\ 

  <\corollary>
    <label|linear isomrophism on a Borel set>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    be a linear isomorphism then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have <math|T<around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
  </corollary>

  Next we see how the Lebesgue measure behaves under a linear isomorphism

  <\theorem>
    <label|Lebesgue measure of T(A>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> be a linear
    isomorphism then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have <math|\<phi\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<phi\><rsup|n><around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>>
    [Note that by the above corollary we have that
    <math|T<around*|(|A|)>,T<around*|(|<around*|[|0,1|[><rsup|n>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>]
  </theorem>

  <\proof>
    First define

    <\equation*>
      \<mu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      by >\<mu\><around*|(|A|)>=\<phi\><rsup|n><around*|(|T<around*|(|A|)>|)>
    </equation*>

    and prove that <math|\<mu\>> is a Radon measure.

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=\<phi\><rsup|n><around*|(|T<around*|(|\<emptyset\>|)>|)>=\<phi\><rsup|n><around*|(|\<emptyset\>|)>=0>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
      is a pairwise family of sets. If <math|i,j\<in\>\<bbb-N\><rsub|0>> with
      <math|i\<neq\>j> then if <math|x\<in\>T<around*|(|A<rsub|i>|)><big|cap>T<around*|(|A<rsub|j>|)>>
      there exists <math|y\<in\>A<rsub|i>,y<rprime|'>\<in\>A<rsub|j>> such
      that <math|T<around*|(|y|)>=x=T<around*|(|y<rprime|'>|)>\<Rightarrowlim\><rsub|T
      is injective>y=y<rprime|'>> hence <math|y\<in\>A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      a contradiction. So <math|<around*|{|T<around*|(|A<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is pairwise disjoint. Hence <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<phi\><rsup|n><around*|(|T<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>=\<phi\><rsup|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<phi\><rsup|n><around*|(|T<around*|(|A<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>

    Which proves that <math|\<mu\>> is a <math|\<sigma\>>-measure. If
    <math|C\<subseteq\>\<bbb-R\><rsup|n>> is compact then as <math|T> is
    continuous (see <reference|linear mappins between products of the real
    spaces are continuous>) we have by <reference|continuous image of compact
    set> that <math|T<around*|(|C|)>> is compact so that
    <math|\<phi\><around*|(|T<around*|(|C|)>|)>\<less\>\<infty\>> [as
    <math|\<phi\>> is a Radon measure] so that
    <math|\<mu\><around*|(|C|)>=\<phi\><around*|(|T<around*|(|C|)>|)>\<less\>\<infty\>>
    proving that <math|\<mu\>> is compact local and thus by
    <reference|condition for a Radon measure> that <math|\<mu\>> is a Radon
    measure. Finally <math|\<phi\><rsup|n><around*|(|T<around*|(|A|)>|)>=\<mu\>*<around*|(|A|)>\<equallim\><rsub|<text|<reference|Radon
    measure on R^n and Lebesgue measure>>>\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>=\<phi\><rsup|n><around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>>
  </proof>

  <\corollary>
    <label|measure of diagonal operator (begin)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    the canonical basis on <math|\<bbb-R\><rsup|n>> (see <reference|basis of
    F^n>), <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> a linear
    isomorphism such that<space|1em><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<cal-M\><around*|(|T,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>=\<delta\><rsub|i,j>\<cdot\>M<rsub|i,i>\<gtr\>0>
    then we have that <math|\<phi\><rsup|n><around*|(|T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>|)>=det<around*|(|T|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=det<around*|(|L|)>\<cdot\>\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>>
  </corollary>

  <\proof>
    By definition of the matrix of the operator we have
    <math|\<forall\>x\<in\>\<bbb-R\><rsup|n>> that
    <math|T<around*|(|x|)><rsub|i>=<big|sum><rsub|i=1><rsup|n>\<cal-M\><around*|(|T,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>\<cdot\>x<rsub|i>=M<rsub|i,i>\<cdot\>x<rsub|i>>
    hence\ 

    <\equation>
      <label|eq 16.190.476>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>T<around*|(|x|)><rsub|i>=M<rsub|i,i>\<cdot\>x<rsub|i>
    </equation>

    \ If now <math|y\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i.i>\<cdot\>b<rsub|i>|[>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
    <math|M<rsub|i,i>\<cdot\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>M<rsub|i,i>\<cdot\>b<rsub|i>\<Rightarrowlim\><rsub|0\<less\>M<rsub|i,i>>a<rsub|i>\<leqslant\><frac|1|M<rsub|i,i>>\<cdot\>y<rsub|i>\<less\>b<rsub|i>>
    proving that <math|x=<around*|(|<frac|1|M<rsub|11>>\<cdot\>x<rsub|i>,\<ldots\>,<frac|1|M<rsub|n,n>>\<cdot\>y<rsub|n>|)>\<in\><big|prod><rsub|i=1><rsup|n><around*|[|a<rsub|i>,b<rsub|i>|[>>
    and as <math|T<around*|(|x<rsub|>|)><rsub|i>\<equallim\><rsub|<text|<reference|eq
    16.190.476>>>M<rsub|i,i>\<cdot\><frac|1|M<rsub|i,i>>\<cdot\>y<rsub|i>=y<rsub|i>\<Rightarrow\>T<around*|(|x|)>=y>
    we conclude that\ 

    <\equation>
      <label|eq 16.191.476><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i,i>\<cdot\>b<rsub|i>|[>\<subseteq\>T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>
    </equation>

    Further if <math|y\<in\>T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>>
    then there exists a <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
    such that <math|y=T<around*|(|x|)>>. Now
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>\<Rightarrowlim\><rsub|0\<less\>M<rsub|i,i>>M<rsub|i.i>\<cdot\>a<rsub|i>\<leqslant\>M<rsub|i.i>\<cdot\>x<rsub|i>\<less\>M<rsub|i,i>\<cdot\>b<rsub|i>\<Rightarrowlim\><rsub|<text|<reference|eq
    16.190.476>>>M<rsub|i.i>\<cdot\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>M<rsub|i,i>\<cdot\>b<rsub|i>>
    and thus that <math|T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>\<subseteq\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i,i>\<cdot\>b<rsub|i>|[>>.
    Using this together with <reference|eq 16.191.476> gives\ 

    <\equation>
      <label|eq 16.192.476><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i,i>\<cdot\>b<rsub|i>|[>=T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>
    </equation>

    Finally we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<phi\><rsup|n><around*|(|T<around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      16.192.476>>>>|<cell|\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i,i>\<cdot\>b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
      measure on R^n>>>>|<cell|v<rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|M<rsub|i,i>\<cdot\>a<rsub|i>,M<rsub|i,i>\<cdot\>b<rsub|i>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|M<rsub|i,i>\<cdot\>b<rsub|i>-M<rsub|i,i>\<cdot\>a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n>M<rsub|i,i>\<cdot\><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n>M<rsub|i,i>|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|determinant
      of a diagonal matrix>>>>|<cell|det<around*|(|M|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|determinant
      of linear mapping and its determinant is the
      same>>>>|<cell|det<around*|(|L|)>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|det<around*|(|L|)>\<cdot\>\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>>>>>
    </eqnarray*>
  </proof>

  The above above corollary can be extented to all Borel sets using the
  uniques theorem of measures (see <reference|uniqueness of measaures>) as is
  proved in the next corollary.

  <\corollary>
    <label|measure of diagonal transformation>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    the canonical basis on <math|\<bbb-R\><rsup|n>> (see <reference|basis of
    F^n>), <math|T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> a linear
    isomorphism such that<space|1em><math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<cal-M\><around*|(|T,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>=\<delta\><rsub|i,j>\<cdot\>M<rsub|i,i>\<gtr\>0>
    then <math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have <math|\<phi\><rsup|n><around*|(|T<around*|(|B|)>|)>=det<around*|(|T|)>\<cdot\>\<phi\><rsup|n><around*|(|B|)>>
  </corollary>

  <\proof>
    First note that by <reference|Borel algebra on R^n> we have\ 

    <\equation>
      <label|eq 16.193.480>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>=\<sigma\><around*|[|\<cal-R\><rsup|n>|]>,\<cal-R\><rsup|n>=<around*|{|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>>|}>
    </equation>

    \;

    Next we have that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> that
    <math|<around*|[|-i,i|[><rsup|n>\<subseteq\><around*|[|-<around*|(|i+1|)>,<around*|(|i+1|)>|[>>
    and <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-i,i|[>=\<bbb-R\><rsup|n>>
    proving that\ 

    <\equation>
      <label|eq 16.194.480><around*|{|<around*|[|-i,i|[><rsup|n>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-R\><rsup|n><text|
      and ><around*|[|-i,i|[><rsup|n>\<uparrow\>\<bbb-R\><rsup|n>
    </equation>

    \;

    Define <math|\<mu\><rsub|1>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    by <math|\<mu\><rsub|1><around*|(|B|)>=\<phi\><rsup|n><around*|(|T<around*|(|B|)>|)>>
    (well defined by <reference|linear isomrophism on a Borel set>) then\ 

    <\enumerate>
      <item><math|\<mu\><rsub|1><around*|(|\<emptyset\>|)>=\<phi\><rsup|n><around*|(|T<around*|(|\<emptyset\>|)>|)>=\<phi\><rsup|n><around*|(|\<emptyset\>|)>=0>

      <item>Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
      be a pairwise disjoint family of sets then if
      <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> we have as
      <math|T> is a bijection that <math|T<around*|(|B<rsub|i>|)><big|cap>T<around*|(|B<rsub|j>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>>T<around*|(|B<rsub|i><big|cap>B<rsub|j>|)>=T<around*|(|\<emptyset\>|)>=\<emptyset\>>
      hence z<math|<around*|{|T<around*|(|B<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is pairwise disjoint so that <math|\<mu\><rsub|1><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>=\<phi\><rsup|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>T<around*|(|B<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<phi\><rsup|n><around*|(|T<around*|(|B<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><rsub|1><around*|(|B<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 16.195.480>\<mu\><rsub|1>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>
        defined by \<mu\><rsub|1><around*|(|B|)>=\<phi\><rsup|n><around*|(|T<around*|(|B|)>|)>
        is a measure
      </equation>
    </enumerate>

    Using <reference|product of a scalar and a measure is a measure> we have
    also that\ 

    <\equation>
      <label|eq 16.196.480>\<mu\><rsub|2>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<rightarrow\><around*|[|0,\<infty\>|]>
      defined by \<mu\><rsub|2><around*|(|B|)>=det<around*|(|T|)>\<cdot\>\<phi\><rsup|n><around*|(|B|)><style-with|src-compact|all|=d>is
      a measure
    </equation>

    Using the proevious corollary <reference|measure of diagonal operator
    (begin)> we have also that\ 

    <\equation>
      <label|eq 16.197.480>\<forall\>B\<in\>\<cal-R\><rsup|n><text| we have
      that >\<mu\><rsub|1><around*|(|B|)>=\<mu\><rsub|2><around*|(|B|)>
    </equation>

    So requirements for the uniqueness theorem of measures (see
    <reference|uniqueness of measaures>) are satisifed by <reference|eq
    16.193.480>, <reference|eq 16.194.480>, <reference|eq 16.195.480>,
    <reference|eq 16.196.480> and <reference|eq 16.197.480> proving that
    <math|\<mu\><rsub|1>=\<mu\><rsub|2>>. So we conclude that
    <math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have that <math|\<phi\><rsup|n><around*|(|T<around*|(|B|)>|)>=\<mu\><rsub|1><around*|(|B|)>=\<mu\><rsub|2><around*|(|B|)>=det<around*|(|T|)>\<cdot\>\<phi\><rsup|n><around*|(|B|)>>
  </proof>

  <section|Measurable function>

  <\definition>
    Let <math|f:X\<rightarrow\>Y> be a function,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|Y|)>> then
    <math|f<rsup|-1><around*|[|\<cal-A\>|]>=<around*|{|f<rsup|-1><around*|(|A|)>\|A\<in\>\<cal-A\>|}>>
  </definition>

  <\definition>
    <index|measurable function><dueto|Measurable function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measureable spaces
    and <math|f:X\<rightarrow\>Y> then <math|<math|f>> is
    <with|font-series|bold|<math|\<cal-A\>/\<cal-B\>>-measurable> (or
    measurable if it is clear from the context what the
    <math|\<sigma\>>-algebras <math|\<cal-A\>,\<cal-B\>> are) if
    <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. Alternative using the
    previous definition we have that <math|f> is measurable if
    <math|f<rsup|-1><around*|[|\<cal-B\>|]>\<subseteq\>\<cal-A\>>. Note that
    this is a condition of the graph of the function.
  </definition>

  A special case of measurable functions are the Borel functions where the
  image of the function is to a topological space.

  <\definition>
    <index|Borel function><dueto|Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|<around*|\<langle\>|Y,\<cal-T\>|\<rangle\>>> a topological space
    and <math|f:X\<rightarrow\>Y> a function then <math|f> is
    <with|font-series|bold|Borel > <math|f> is
    <math|\<cal-A\>/\<cal-B\><around*|[|X,\<cal-T\>|]>>- measurable.
  </definition>

  Measurable functions allows us to induce a measure on one space based on a
  measure of another space if there exists a measurable mapping between the
  spaces.

  <\theorem>
    <label|image measure><index|<math|f<around*|\<langle\>|\<mu\>|\<rangle\>>>><index|image
    measure>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces,
    <math|f:X\<rightarrow\>Y> so that <math|f> is
    <math|\<cal-A\>/\<cal-B\>>-measurable then for every measure
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> on
    <math|X> we have that <math|f<around*|\<langle\>|\<mu\>|\<rangle\>>:\<cal-B\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|f<around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|B|)>=\<mu\><around*|(|f<rsup|-1><around*|(|B|)>|)>>
    is a measure on <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>>,
    called the <with|font-series|bold|image measure induced by ><math|f>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item><math|f<around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|f<rsup|-1><around*|(|\<emptyset\>|)>|)>=0>

      <item>Give <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>>
      a family of pairwise disjoint set then as
      <math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> we
      have that <math|f<rsup|-1><around*|(|B<rsub|i>|)><big|cap>f<rsup|-1><around*|(|B<rsub|j>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>>f<rsup|-1><around*|(|B<rsub|i><big|cap>B<rsub|j>|)>=f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>>
      proving that <math|<around*|{|f<rsup|-1><around*|(|B<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is pairwise disjoint so that

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|f<rsup|-1><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|image
        (preimage) of union , intersections>>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|f<rsup|-1><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>f<around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|B<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\example>
    <label|translation function is measurable>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>\<bbb-R\><rsup|n>>,
    <math|\<tau\><rsub|x>> the translation defined by
    <math|\<tau\><rsub|x>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    where <math|\<tau\><rsub|x><around*|(|y|)>=y-x> then
    <math|\<tau\><rsub|x>> is <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>/\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>-measurable.
    Further we have that <math|\<tau\><rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=\<phi\><rsup|n>>
  </example>

  <\proof>
    Let <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    then we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>\<tau\><rsub|x><rsup|-1><around*|(|B|)>>|<cell|\<Leftrightarrow\>>|<cell|\<tau\><rsub|x><around*|(|y|)>\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y-x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>x+B>>>>
    </eqnarray*>

    proving as <math|x+B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    (see <reference|Borel set+x>) that <math|\<tau\><rsub|x>> is
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>/\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>-measurable.
    Further we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<tau\><rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|\<tau\><rsub|x><rsup|-1><around*|(|B|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|x+B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|v^n
      is translation invariant>>>>|<cell|\<phi\><rsup|n><around*|(|B|)>>>>>
    </eqnarray*>

    proving that <math|\<tau\><rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=\<phi\><rsup|n>>
  </proof>

  The following theorem shows that to prove measurability of a function we
  only have to check it on the generating sets.

  <\theorem>
    <label|measurable functions and generators>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces
    such that <math|\<sigma\><around*|[|\<cal-B\><rprime|'>|]>=\<cal-B\>>,
    <math|f:X\<rightarrow\>Y> a function then <math|f> is
    <math|\<cal-A\>/\<cal-B\>>-<with|font-series|bold|measurable> if and only
    if <math|\<forall\>B\<in\>\<cal-B\><rprime|'>> we have
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>this is trivial as
      <math|\<cal-B\><rprime|'>\<subseteq\>\<cal-B\>>

      <item*|<math|\<Leftarrow\>>>define <math|\<cal-C\>=<around*|{|B\<in\>\<cal-P\><around*|(|Y|)>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>|}>>
      then we have that <math|\<cal-C\>> is a <math|\<sigma\>>-algebra

      <\description>
        <item*|<math|Y\<in\>\<cal-C\>>>for
        <math|f<rsup|-1><around*|(|Y|)>=X\<in\>\<cal-A\>>

        <item*|<math|B\<in\>\<cal-C\>\<Rightarrow\>Y\\B\<in\>\<cal-C\>>>if
        <math|B\<in\>\<cal-C\>\<Rightarrow\>f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
        so that <math|f<rsup|-1><around*|(|Y\\B|)>\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>X\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>

        <item*|<math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-C\>\<Rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-C\>>>for
        <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|B<rsub|i>|)>\<in\>\<cal-A\>>
      </description>

      As by hypothese we have that <math|\<cal-B\><rprime|'>\<subseteq\>\<cal-C\>>
      it follows that <math|\<cal-B\>=\<sigma\><around*|[|\<cal-B\><rprime|'>|]>\<subseteq\>\<cal-C\>>
      proving that <math|\<forall\>B\<in\>\<cal-B\>> we have
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
    </description>
  </proof>

  If we have Borel spaces then continuity implies measurability.

  <\corollary>
    <label|continuous mappings are measurable>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Y,\<cal-S\>|\<rangle\>>> be two topolgical
    spaces then for every continuous map <math|f:X\<rightarrow\>Y> we have
    that <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\>|]>/\<cal-B\><around*|[|Y,\<cal-S\>|]>>-measurable
    <math|>
  </corollary>

  <\proof>
    If <math|U\<in\>\<cal-S\>> we have by continuity that
    <math|f<rsup|-1><around*|(|U|)>\<in\>\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-T\>|]>=\<cal-B\><around*|[|X,\<cal-T\>|]>>
    which as <math|\<cal-B\><around*|[|Y,\<cal-S\>|]>=\<sigma\><around*|[|\<cal-S\>|]>>
    proves by the previous theorem that <math|f> is measurable.
  </proof>

  <\theorem>
    <label|measure of unitary operator>Let <math|n\<in\>\<bbb-N\><rsub|o>>,
    \ <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> a unitary
    operator (in the canonical inner product see <reference|inner product on
    R^n>) then <math|L> is <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>/\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>-measurable
    and \ <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=\<phi\><rsup|n>>
    (or in other words <math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have that <math|\<phi\><rsup|n><around*|(|B|)>=\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|B|)>|)>>
  </theorem>

  <\proof>
    First let <math|<around*|\<\|\|\>||\<\|\|\>>> be the canonical inner
    product norm on <math|\<bbb-R\><rsup|n>> (see <reference|inner product on
    R^n>) then using <reference|unitary operators are self-adjoint> we have
    that <math|L> is a linear isometry and using <reference|a isometry is a
    homeomorphism> that <math|L> is a homeomorphism, As all norms on
    <math|\<bbb-R\><rsup|n>> are equivalent (see <reference|equivalence of
    norms on product of real numbers>) we conclude that

    <\equation>
      <label|eq 16.193.478>L <text| is a homeomorphism in the topology
      >\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>
    </equation>

    Hence <math|L> is continuous and thus by <reference|continuous mappings
    are measurable>) <math|L> is measurable.\ 

    Second if <math|x\<in\>X> then for <math|y=<around*|(|L|)><rsup|-1><around*|(|x|)>>
    there exists, as <math|\<phi\><rsup|n>> is locally finite, a <math|U>
    open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    such that <math|y\<in\>U> and \ <math|\<phi\><rsup|n><around*|(|U|)>\<less\>\<infty\>>.
    Take <math|V> is <math|L<around*|(|U|)>> which is open (as <math|L> is a
    homeomorphism) and <math|x=L<around*|(|y|)>\<in\>V>, further
    <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|V|)>=\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|V|)>|)>=\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|L<around*|(|U|)>|)>|)>\<phi\><rsup|n><around*|(|U|)>\<less\>\<infty\>>
    proving that <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>> is
    locally finite. Using <reference|locally finite measure on Hausdorf
    space> we have that <math|L<around*|(|<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>|)>>
    is compact finite and using <reference|condition for a Radon measure>
    that\ 

    <\equation>
      <label|eq 16.194.478>L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>
      <text| is a Radon mesasure>
    </equation>

    Third we have for <math|x\<in\>X> and
    <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|x+B|)>>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|x+B|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|unitary
      operators are self-adjoint>>>>|<cell|\<phi\><rsup|n><around*|(|<around*|(|L<rsup|-1>|)><around*|(|x+B|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|<around*|{|<around*|(|L<rsup|-<lprime|`>><around*|(|x+b|)>|)>\|b\<in\>B|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|inverse
      of linear isomorphism is a isomorphism>>>>|<cell|\<phi\><rsup|n><around*|(|<around*|{|<around*|(|L<rsup|-1>|)><around*|(|x|)>+<around*|(|L<rsup|-1>|)><around*|(|b|)>\|b\<in\>B|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|<around*|(|L<rsup|-1>|)><around*|(|x|)>+<around*|(|L<rsup|-1>|)><around*|(|B|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|v^n
      is translation invariant>>>>|<cell|\<phi\><rsup|n><around*|(|<around*|(|L<rsup|-1>|)><around*|(|B|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|B|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>>>>>
    </eqnarray*>

    proving that <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>> is
    translation invariant. We have by <reference|Radon measure on R^n and
    Lebesgue measure> and <reference|eq 16.194.478> that

    <\equation>
      <label|eq 16.195.478>\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<vDash\>L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>=\<kappa\>\<cdot\>\<phi\><rsup|n><around*|(|B|)>*<text|
      where >\<kappa\>=L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|<around*|[|0,1|[><rsup|n>|)>
    </equation>

    Take <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>=<around*|{|x\<in\>X\|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>1|}>>
    which is open in <math|\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>>
    (as all norms are equivalent in <math|\<bbb-R\><rsup|n>>) then we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<less\>1>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|L
      is a isometry>>>|<cell|<around*|\<\|\|\>|L<around*|(|x|)>|\<\|\|\>>\<less\>1>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|L<around*|(|x|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|L<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>>>>
    </eqnarray*>

    proving that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>=L<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>.
    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<phi\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      16.195.478>>>>|<cell|\<kappa\>\<cdot\>\<phi\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>>>>
    </eqnarray*>

    So\ 

    <\equation>
      <label|eq 16.196.478>\<phi\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>=\<kappa\>\<cdot\>\<phi\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>
    </equation>

    Now we have <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|n>|[>\<Rightarrow\>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>0\<less\>x<rsub|i>\<less\><frac|1|n>>
    so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\<\|\|\>|x|\<\|\|\>>>|<cell|=>|<cell|<sqrt|<big|sum><rsub|i=1><rsup|n>x<rsub|i>>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<sqrt|<big|sum><rsub|i=1><rsup|n><frac|1|n>>>>|<row|<cell|>|<cell|=>|<cell|<sqrt|n\<cdot\><frac|1|n>>>>|<row|<cell|>|<cell|=>|<cell|1>>>>
    </eqnarray*>

    proving that <math|><math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|n>|[>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>>
    hence <math|0\<less\><frac|1|n<rsup|n>>=\<phi\><rsup|n><around*|(|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|0,<frac|1|n>|[>|)>\<leqslant\>\<phi\><rsup|n><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|0,1|)>|)>>.
    Using the above together with <reference|eq 16.196.478> proves that
    <math|\<kappa\>=1>. Substituting this in <reference|eq 16.195.478> proves
    finally that <math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>\<vDash\>L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>=\<kappa\>\<cdot\>\<phi\><rsup|n><around*|(|B|)>>
    and thus that <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=\<phi\><rsup|n>>.
  </proof>

  <\corollary>
    <label|measure of image of unitary operator>Let
    <math|n\<in\>\<bbb-N\><rsub|o>>, \ <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    a unitary operator (in the canonical inner product see <reference|inner
    product on R^n>) then <math|\<forall\>B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have that <math|\<phi\><rsup|n><around*|(|B|)>=\<phi\><rsup|n><around*|(|L<around*|(|B|)>|)>>
  </corollary>

  <\proof>
    If <math|L> is a unitary operator then <math|L<rsup|-1>=L<rsup|\<ast\>>>
    is a unitary operator (see <reference|unitary operators are
    self-adjoint>) so using the previous theorem (see <reference|measure of
    unitary operator>) on <math|L<rsup|-1>> gives
    <math|\<forall\>B\<in\>\<cal-B\><around*|(|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|)>>
    we have <math|\<phi\><rsup|n><around*|(|B|)>=\<phi\><rsup|n><around*|(|<around*|(|L<rsup|-1>|)><rsup|-1><around*|(|B|)>|)>=\<phi\><rsup|n><around*|(|L<around*|(|B|)>|)>>.
  </proof>

  <\lemma>
    <label|lemma 16.165>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    be the canonical basis for <math|\<bbb-R\><rsup|n>,>
    <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> be a linear
    isomorphism then there exists two unitary operators
    <math|S,T:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> such that
    <math|L=S\<circ\>D\<circ\>T> and <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>=\<delta\><rsub|i,j>\<cdot\>\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,i>\<gtr\>0>
  </lemma>

  <\proof>
    As <math|<around*|(|L<rsup|\<ast\>>\<circ\>L|)><rsup|\<ast\>>\<equallim\><rsub|<text|<reference|(L1@L2)*=L2*@L1*>>>L<rsup|\<ast\>>\<circ\><around*|(|L<rsup|\<ast\>>|)><rsup|\<ast\>>\<equallim\><rsub|<text|<reference|L**=L>>>L<rsup|\<ast\>>\<circ\>L>
    proving that <math|L<rsup|\<ast\>>\<circ\>L> is self-adjoint. Using
    <reference|diagonalization of a self-adjoint operator> there exists then
    unitary operator <math|U> such that\ 

    <\equation>
      <label|eq 16.197.478>U<rsup|\<ast\>>*\<circ\><around*|(|L<rsup|\<ast\>>\<circ\>L|)>\<circ\>U=D<rprime|'><text|
      and >\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}><text| we have
      >\<cal-M\><around*|(|D<rprime|'>,<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>=\<lambda\><rprime|'><rsub|i>\<cdot\>\<delta\><rsub|i,j>
    </equation>

    Note also that as <math|L,U> are isomorphisms we have that
    <math|ker<around*|(|L\<circ\>U|)>=<around*|{|0|}>> so that\ 

    <\equation>
      <label|eq 16.198.478>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> we
      have that L<around*|(|U<around*|(|e<rsub|i>|)>|)>=<around*|(|L\<circ\>U|)><around*|(|e<rsub|i>|)>\<neq\>0
    </equation>

    Next we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rprime|'><rsub|i>>|<cell|=>|<cell|\<cal-M\><around*|(|D<rprime|'>,<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|matrix
      of a linear mapping>>>>|<cell|<around*|\<langle\>|D<rprime|'><around*|(|e<rsub|i>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<around*|(|U<rsup|\<ast\>>*\<circ\><around*|(|L<rsup|\<ast\>>\<circ\>L|)>\<circ\>U|)><around*|(|e<rsub|i>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|U<rsup|\<ast\>><around*|(|L<rsup|\<ast\>><around*|(|L<around*|(|U<around*|(|e<rsub|i>|)>|)>|)>|)>,e<rsub|i>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|<around*|(|L<rsup|\<ast\>><around*|(|L<around*|(|U<around*|(|e<rsub|i>|)>|)>|)>|)>,U<around*|(|e<rsub|i>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<langle\>|L<around*|(|U<around*|(|e<rsub|i>|)>|)>,L<around*|(|U<around*|(|e<rsub|i>|)>|)>|\<rangle\>>>>|<row|<cell|>|<cell|=>|<cell|<around*|\<\|\|\>|L<around*|(|U<around*|(|e<rsub|i>|)>|)>|\<\|\|\>>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|0
      <text|(strict bigger because of <reference|eq 16.198.478>)>>>>>
    </eqnarray*>

    proving\ 

    <\equation>
      <label|eq 16.199.768>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>\<lambda\><rsub|i><rprime|'>\<gtr\>0
    </equation>

    Define now <math|D\<in\>Hom<around*|(|\<bbb-R\><rsup|n>|)>> by
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|D<around*|(|e<rsub|i>|)>=<sqrt|\<lambda\><rsub|i><rprime|'>>\<cdot\>e<rsub|i>\<gtr\>0>
    and <math|D<rprime|''>> by <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|D<rprime|''><around*|(|e<rsub|i>|)>=<frac|1|<sqrt|\<lambda\><rsub|i><rprime|'>>>>
    then we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|<around*|(|D\<circ\>D<rprime|''>|)><around*|(|e<rsub|i>|)>=D<around*|(|D<rprime|''><around*|(|e<rsub|i>|)>|)>=D<around*|(|<frac|1|<sqrt|\<lambda\><rsub|i><rprime|'>>>\<cdot\>e<rsub|i>|)>=<frac|<sqrt|\<lambda\><rsub|i><rprime|'>>|<sqrt|\<lambda\><rprime|'><rsub|i>>>\<cdot\>e<rsub|i>=e<rsub|i>=D<rprime|''><around*|(|D<around*|(|e<rsub|i>|)>|)>=<around*|(|D<rprime|''>\<circ\>D|)><around*|(|e<rsub|i>|)>>,
    so we have\ 

    <\equation>
      <label|eq 16.200.486>D is a isomorphism and
      \<cal-M\><around*|(|D<rsup|-1>,<around*|{|e<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,j>=<frac|1|<sqrt|\<lambda\><rsub|i>>>\<cdot\>\<delta\><rsub|i,j>
      \<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>
    </equation>

    Now <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<around*|(|L\<circ\>U\<circ\>D<rsup|-1>|)><rsup|\<ast\>>\<circ\><around*|(|L\<circ\>U\<circ\>D<rsup|-1>|)>|)><around*|(|e<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|(L1@L2)*=L2*@L1*>>>>|<cell|<around*|(|<around*|(|D<rsup|-1>|)><rsup|\<star\>>\<circ\>U<rsup|\<ast\>>\<circ\>L<rsup|\<ast\>>\<circ\>L\<circ\>U\<circ\>D<rsup|-1>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|diagonalizable
      operator is self-adjoint>>>>|<cell|<around*|(|D<rsup|-1>\<circ\><around*|(|U<rsup|\<ast\>>\<circ\>L<rsup|\<ast\>>\<circ\>L\<circ\>U|)>\<circ\>D<rsup|-1>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|-1>\<circ\>D<rprime|'>\<circ\>D<rsup|-1>|)><around*|(|e<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|D<rsup|-1><around*|(|D<rprime|'><around*|(|D<rsup|-1><around*|(|e<rsub|i>|)>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|<sqrt|\<lambda\><rprime|'><rsub|i>>>\<cdot\><around*|(|D<rsup|-1><around*|(|D<rprime|'><around*|(|e<rsub|i>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\><rprime|'><rsub|i>|<sqrt|\<lambda\><rprime|'><rsub|i>>>\<cdot\><around*|(|D<rsup|-1><around*|(|e<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|\<lambda\><rprime|'><rsub|i>|\<lambda\><rprime|'><rsub|i>>\<cdot\>e<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|e<rsub|i>>>>>
    </eqnarray*>

    proving that <math|><math|<around*|(|L\<circ\>U\<circ\>D<rsup|-1>|)><rsup|\<ast\>>\<circ\><around*|(|L\<circ\>U\<circ\>D<rsup|-1>|)>=1<rsub|X>>
    hence we have that\ 

    <\equation>
      <label|eq 16.201.468>S=L\<circ\>U\<circ\>D<rsup|-1> <text|is
      self-adjoint>
    </equation>

    Take now <math|T=U<rsup|\<ast\>>> (which is self-adjoint because <math|U>
    is) then

    <\eqnarray*>
      <tformat|<table|<row|<cell|S\<circ\>D\<circ\>T>|<cell|=>|<cell|L\<circ\>U\<circ\>D<rsup|-1>\<circ\>D\<circ\>U<rsup|\<ast\>>>>|<row|<cell|>|<cell|=>|<cell|L\<circ\>U\<circ\>1<rsub|X>\<circ\>U<rsup|\<ast\>>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|L\<circ\>U<rsup|\<ast\>>\<circ\>U>>|<row|<cell|>|<cell|\<equallim\><rsub|U
      <text| is unitary>>>|<cell|L>>>>
    </eqnarray*>

    proving the theorem.
  </proof>

  <\theorem>
    <label|linear isomorphism and measures>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    be a linear isomorphism then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>>|]>>
    we have <math|\<phi\><rsup|n><around*|(|L<around*|(|A|)>|)>=<around*|\||det<around*|(|A|)>|\|>\<cdot\>\<phi\><rsup|n><around*|(|A|)>>
  </theorem>

  <\proof>
    Take the canonical basis <math|<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    then using the above lemma (see <reference|lemma 16.165>) there exists a
    linear operator <math|D> with <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>=\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,i>\<cdot\>\<delta\><rsub|i,j>\<gtr\>0>
    and unitary operators <math|S,T> such that <math|L=S\<circ\>D\<circ\>T>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<phi\><rsup|n><around*|(|L<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>>|<cell|=>|<cell|\<phi\><rsup|n><around*|(|S<around*|(|D<around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|S
      is unitary and <reference|measure of image of unitary
      operator>>>>|<cell|\<phi\><rsup|n><around*|(|D<around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
      of diagonal transformation>>>>|<cell|det<around*|(|D|)>\<cdot\>\<phi\><rsup|n><around*|(|T<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|T
      is unitary and <reference|measure of image of unitary
      operator>>>>|<cell|det<around*|(|D|)>\<cdot\>\<phi\><rsup|n><around*|(|<around*|[|0,1|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|det<around*|(|D|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 16.207.480>\<phi\><rsup|n><around*|(|L<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>=det<around*|(|D|)>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|det<around*|(|L|)>>|<cell|=>|<cell|det<around*|(|S\<circ\>D\<circ\>T|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of a determinant>>>>|<cell|det<around*|(|S|)>\<cdot\>det<around*|(|D|)>\<cdot\>det<around*|(|T|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|determinant
      of unitary operator>>>>|<cell|<around*|(|\<pm\>1|)>\<cdot\>det<around*|(|D|)>\<cdot\><around*|(|\<pm\>1|)>>>|<row|<cell|>|<cell|=>|<cell|\<pm\>det<around*|(|D|)>>>>>
    </eqnarray*>

    proving as <math|det<around*|(|D|)>\<equallim\><rsub|<text|<reference|determinant
    of linear mapping and its determinant is the
    same>>>det\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)>\<equallim\><rsub|<text|<reference|determinant
    of a diagonal matrix>>><big|prod><rsub|i=1><rsup|n>\<cal-M\><around*|(|D,<around*|{|\<varepsilon\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>|)><rsub|i,i>\<gtr\>0>
    that <math|<around*|\||det<around*|(|L|)>|\|>=<around*|\||det<around*|(|D|)>|\|>=det<around*|(|D|)>>.
    Using this together with <reference|eq 16.207.480> proves that\ 

    <\equation>
      <label|eq 16.208.480>\<phi\><rsup|n><around*|(|L<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>=<around*|\||det<around*|(|L|)>|\|>
    </equation>

    Finally as by <reference|Lebesgue measure of T(A>
    <math|\<phi\><rsup|n><around*|(|L<around*|(|A|)>|)>=\<phi\><rsup|n><around*|(|L<around*|(|<around*|[|0,1|[><rsup|n>|)>|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>>
    we have using the above prove that\ 

    <\equation*>
      \<phi\><rsup|n><around*|(|L<around*|(|A|)>|)>=det<around*|(|L|)>\<cdot\>\<phi\><rsup|n><around*|(|A|)>
    </equation*>
  </proof>

  <\corollary>
    <label|image measure of a linear isomorphism>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    een linear isomorphism then <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=<frac|1|det<around*|(|L|)>>\<cdot\>\<phi\><rsup|n>>
  </corollary>

  <\proof>
    Let <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|>|]>>
    then <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>=\<phi\><rsup|n><around*|(|L<rsup|-1><around*|(|B|)>|)>\<equallim\><rsub|L<rsup|-1>
    <text| is a isomorphims and <reference|linear isomorphism and
    measures>>>det<around*|(|L<rsup|-1>|)>\<cdot\>\<phi\><rsup|n><around*|(|B|)>\<equallim\><rsub|<text|<reference|properties
    of a determinant>>><frac|1|det<around*|(|L|)>>\<cdot\>\<phi\><rsup|n><around*|(|B|)>>
    which proves that <math|L<around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=<frac|1|det<around*|(|L|)>>\<cdot\>\<phi\><rsup|n>>
  </proof>

  Just like composition of continuous functions is continuous we have that
  the composition of measurable functions is measurable.

  <\theorem>
    <label|composition of measurab;e functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> and
    <math|<around*|\<langle\>|Z,\<cal-C\>|\<rangle\>>> be measurable spaces,
    <math|f:X\<rightarrow\>Y>,<math|g:Y\<rightarrow\>Z> functions such that
    <math|f> is <math|\<cal-A\>/\<cal-B\>>-measurable function and <math|g>
    is <math|\<cal-B\>/\<cal-C\>>-measurable function then <math|g\<circ\>f>
    is <math|\<cal-A\>/\<cal-C\>>-measurable. Further if
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> is a
    measure on <math|<around*|\<langle\>|A,\<cal-A\>|\<rangle\>>> then
    <math|<around*|(|g\<circ\>f|)><around*|\<langle\>|\<mu\>|\<rangle\>>=g<around*|\<langle\>|f<around*|\<langle\>|\<mu\>|\<rangle\>>|\<rangle\>>>
    is a measure on <math|<around*|\<langle\>|X,\<cal-C\>|\<rangle\>>>.\ 
  </theorem>

  <\proof>
    If <math|C\<in\>\<cal-C\>> then by measurabilty of <math|g> we have that
    <math|g<rsup|-1><around*|(|C|)>\<in\>\<cal-B\>> and thus by measurability
    of <math|f> we have that <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>\<in\>\<cal-A\>>
    so that <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|C|)>=f<rsup|-1><around*|(|g<rsup|-1>*<around*|(|C|)>|)>\<in\>\<cal-A\>>.
    Further if <math|C\<in\>\<cal-C\>> then
    <math|<around*|(|g\<circ\>f|)><around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|C|)>=\<mu\><around*|(|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|C|)>|)>=\<mu\><around*|(|f<rsup|-1><around*|(|g<rsup|-1><around*|(|C|)>|)>|)>=f<around*|\<langle\>|\<mu\>|\<rangle\>><around*|(|g<rsup|-1><around*|(|C|)>|)>=g<around*|\<langle\>|f<around*|\<langle\>|\<mu\>|\<rangle\>>|\<rangle\>><around*|(|C|)>>
    proving that <math|<around*|(|g\<circ\>f|)><around*|\<langle\>|\<mu\>|\<rangle\>>=g<around*|\<langle\>|f<around*|\<langle\>|\<mu\>|\<rangle\>>|\<rangle\>>>.
  </proof>

  <\definition>
    <label|motion>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>> a unitary
    operator, <math|x\<in\>\<bbb-R\><rsup|n>> and
    <math|\<tau\><rsub|x>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    defined by <math|\<tau\><rsub|x><around*|(|y|)>=y-x> (a translation) then
    <math|M<rsub|x>=\<tau\><rsub|x>\<circ\>L> is called a
    <with|font-series|bold|motion>. Given
    <math|A\<subseteq\>\<bbb-R\><rsup|n>> then
    <math|B\<subseteq\>\<bbb-R\><rsup|n>> is
    <with|font-series|bold|congruent> with <math|A> if there exists a
    <math|M<rsub|x>> such that <math|B=M<rsub|x><around*|(|A|)>>.
  </definition>

  The following corollary proves that the Lebesgue measure invariant under
  motions.

  <\corollary>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|M<rsub|x>:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    a motion then <math|M<rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=\<phi\><rsup|n>>.
    Further if <math|B> is congruent with <math|A> then
    <math|\<phi\><rsup|n><around*|(|A|)>=\<phi\><rsup|n><around*|(|B|)>>
    (congruent sets have the same measure).
  </corollary>

  <\proof>
    By definition there exists a <math|x\<in\>\<bbb-R\><rsup|n>> and a
    unitary operator <math|L:\<bbb-R\><rsup|n>\<rightarrow\>\<bbb-R\><rsup|n>>
    such that <math|M<rsub|x>=\<tau\><rsub|x>\<circ\>L>. Now
    <math|M<rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>>=<around*|(|\<tau\><rsub|x>\<circ\>L|)><around*|\<langle\>|\<mu\>|\<rangle\>>\<equallim\><rsub|<text|<reference|composition
    of measurab;e functions>>>\<tau\><rsub|x><around*|\<langle\>|L<around*|\<langle\>|\<mu\>|\<rangle\>>|\<rangle\>>\<equallim\><rsub|L<text|
    is unitary and <reference|measure of unitary
    operator>>>\<tau\><rsub|x><around*|\<langle\>|\<mu\>|\<rangle\>>\<equallim\><rsub|<text|<reference|translation
    function is measurable>>>\<mu\>>. Further if <math|B> is congruent with
    <math|A> then there exists a motion so that
    <math|B=M<rsub|x><around*|(|A|)>> so as <math|M<rsub|x>> is a bijection
    (<math|\<tau\><rsub|x>> and <math|L> are bijections) we have that
    <math|A=M<rsub|x><rsup|-1><around*|(|B|)>> hence
    <math|\<phi\><rsup|n><around*|(|A|)>=\<phi\><rsup|n><around*|(|M<rsub|x><rsup|-1><around*|(|B|)>|)>=M<rsub|x><around*|\<langle\>|\<phi\><rsup|n>|\<rangle\>><around*|(|B|)>\<equallim\><rsub|just
    proved>\<phi\><rsup|n><around*|(|B|)>>.
  </proof>

  <subsection|Measurable real functions>

  We use the following simplified definitions and notations

  <\notation>
    If <math|f,g:X\<rightarrow\>\<bbb-R\><around*|(|or
    <wide|\<bbb-R\>|\<bar\>>|)>> is a function then we have for
    <math|a,b\<in\><wide|\<bbb-R\>|\<bar\>>>

    <\enumerate>
      <item><math|<around*|{|a\<leqslant\>f\<leqslant\>b|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<leqslant\>f<around*|(|x|)>\<leqslant\>b|}>>

      <item><math|<around*|{|a\<less\>f\<leqslant\>b|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<less\>f<around*|(|x|)>\<leqslant\>b|}>>

      <item><math|<around*|{|a\<leqslant\>f\<less\>b|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<leqslant\>f<around*|(|x|)>\<less\>b|}>>

      <item><math|<around*|{|a\<less\>f\<less\>b|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<less\>f<around*|(|x|)>\<less\>b|}>>

      <item><math|<around*|{|a\<leqslant\>f|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<leqslant\>f<around*|(|x|)>|}>>

      <item><math|<around*|{|a\<less\>f|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|a\<leqslant\>f<around*|(|x|)>|}>>

      <item><math|<around*|{|f\<leqslant\>a|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>a|}>>

      <item><math|<around*|{|f\<less\>a|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>a|}>>

      <item><math|<around*|{|f=a|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>=a|}>>

      <item><math|<around*|{|f\<neq\>a|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>a|}>>

      <item><math|<around*|{|f\<less\>g|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>

      <item><math|<around*|{|f\<leqslant\>g|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>

      <item><math|<around*|{|f=g|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>>

      <item><math|<around*|{|f\<neq\>g|}>\<equallim\><rsub|notation><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>>
    </enumerate>
  </notation>

  <\definition>
    If <math|f,g:X\<rightarrow\>\<bbb-R\>> (or
    <math|<wide|\<bbb-R\>|\<bar\>>>) and <math|\<alpha\>\<in\>\<bbb-R\>> (or
    <math|<wide|\<bbb-R\>|\<bar\>>>) then we have

    <\enumerate>
      <item><math|f\<leqslant\>g> if and only <math|\<forall\>x\<in\>X> we
      have <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>

      <item><math|f\<less\>g> if and only if <math|\<forall\>x\<in\>X> we
      have <math|f<around*|(|x|)>\<less\>g<around*|(|x|)>>

      <item><math|\<alpha\>\<leqslant\>f> if and only
      <math|\<forall\>x\<in\>X> we have <math|\<alpha\>\<leqslant\>f<around*|(|x|)>>

      <item><math|\<alpha\>\<less\>f> if and only <math|\<forall\>x\<in\>X>
      we have <math|\<alpha\>\<less\>f<around*|(|x|)>>

      <item><math|f\<leqslant\>\<alpha\>> if and only
      <math|\<forall\>x\<in\>X> we have <math|f<around*|(|x|)>\<leqslant\>\<alpha\>>

      <item><math|f\<less\>\<alpha\>> if and only <math|\<forall\>x\<in\>X>
      we have <math|f<around*|(|x|)>\<less\>\<alpha\>>

      <item><math|f=\<alpha\>> if and only <math|\<forall\>x\<in\>X> we have
      <math|f<around*|(|x|)>=\<alpha\>>\ 
    </enumerate>
  </definition>

  <\definition>
    Let <math|X> be a set, <math|I\<subseteq\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>|}><rsub|i\<in\>I>>
    a family of functions then we have the following definitions

    <\enumerate>
      <item><math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is defined by <math|<around*|(|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>I|}>|)>>

      <item><math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is defined by <math|<around*|(|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>I|}>|)>>

      <item>If <math|I=\<bbb-N\><rsub|0><text| then ><below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is defined by <math|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item>If <math|I=\<bbb-N\><rsub|0><text| then ><below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is defined by <math|<around*|(|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item>If <math|I=\<bbb-N\><rsub|0>> and <math|\<forall\>x\<in\>X> we
      have that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      exists then <math|<below|lim|n-\<less\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is defined by <math|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    </enumerate>
  </definition>

  We study now a special case of measureable functions that have a image in
  <math|\<bbb-R\>> or <math|<wide|\<bbb-R\>|\<bar\>>>\ 

  <\definition>
    <label|real Borel function><index|real Borel function><dueto|Real Borel
    function>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a
    measurable space, <math|f:X\<rightarrow\>\<bbb-R\>> a function then
    <math|f> is real Borel if <math|\<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>-measurable,
    the function <math|f:X\<rightarrow\>\<bbb-R\>> is called a real Borel
    function. We define the set of real Borel graphs by
    <math|\<cal-M\><around*|[|X,\<cal-A\>|]>=<around*|{|f\<subseteq\>X\<times\>\<bbb-R\>\|f
    is Borel|}>=<around*|{|f\<subseteq\>X\<times\>\<bbb-R\>\|f is
    \<cal-A\>/\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]><text|-measurable>|}>>.
  </definition>

  We have the following characterization of real Borel graphs

  <\theorem>
    <label|characterization of real Borel functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then for <math|f:X\<rightarrow\>\<bbb-R\>> we have the following
    equivalences\ 

    <\enumerate>
      <item><math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (<math|f> is a
      real Borel function).

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<less\>f|}>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Leftrightarrow\>2>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|]>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>3>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|[>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>4>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|[|x,\<infty\>|[>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>5>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the reals>>>\<sigma\><around*|[|<around*|{|<around*|]|x,\<infty\>|[>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<less\>f|}>\<in\>\<cal-A\>>
    </description>
  </proof>

  <\definition>
    <label|extented real Borel functions><index|extended real
    function><dueto|Extended Real Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    \ <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> a function then
    <math|f> extended real Borel if <math|f> is
    <math|\<cal-A\>/\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>|]>>-measurable
    (see <reference|topology on extented reals> for the definiton of
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>>). The function
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> is called a extended
    real Borel function. The set of extended real Borel graphs is written as
    <math|<wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> hence
    <math|<wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>=<around*|{|f\<subseteq\>X\<times\><wide|\<bbb-R\>|\<bar\>>\|f
    is Borel|}>>. A function\ 
  </definition>

  The following theorem shows how we can prove if\ 

  <\theorem>
    <label|characterization of extended real Borel functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> then we have the
    following equivalences\ 

    <\enumerate>
      <item><math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (<math|f> is
      Borel)

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<less\>f|}>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Leftrightarrow\>2>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the extended reals>>>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,x|]>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>3>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the extended reals>>>\<sigma\><around*|[|<around*|{|<around*|[|-\<infty\>,x|[>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|[>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>4>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the extended reals>>>\<sigma\><around*|[|<around*|{|<around*|[|x,\<infty\>|]>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|[|x,\<infty\>|]>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item*|<math|1\<Leftrightarrow\>5>>As
      <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>\<equallim\><rsub|<text|<reference|Borel
      algebra on the extended reals>>>\<sigma\><around*|[|<around*|{|<around*|]|x,\<infty\>|]>\|x\<in\>\<bbb-R\>|}>|]>>
      we have that <math|f> is Borel <math|\<Leftrightarrowlim\><rsub|<text|<reference|measurable
      functions and generators>>>\<forall\>x\<in\>\<bbb-R\>\<vDash\>f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>\<in\>\<cal-A\>\<Leftrightarrow\>\<forall\>x\<in\>\<bbb-R\>\<vDash\><around*|{|x\<less\>f|}>\<in\>\<cal-A\>>
    </description>
  </proof>

  The following lemma shows every real Borel graph is a real extended Borel
  graph

  <\corollary>
    <label|real Borel function is real extended Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then <math|\<cal-M\><around*|[|X,\<cal-A\>|]>=<wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>><big|cap><around*|(|X\<times\>\<bbb-R\>|)>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
  </corollary>

  <\proof>
    Let <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> then
    <math|f\<subseteq\>X\<times\>\<bbb-R\>> <reference|characterization of
    real Borel functions> we have that <math|\<forall\>x\<in\>\<bbb-R\>> that
    <math|<around*|{|f\<less\>x|}>\<in\>\<cal-A\>> as
    <math|f\<in\>X\<times\>\<bbb-R\>\<subseteq\>X\<times\><wide|\<bbb-R\>|\<bar\>>>
    we have by <reference|characterization of extended real Borel functions>
    that <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>><big|cap>X\<times\>\<bbb-R\>>.
    If <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>><big|cap><around*|(|X\<times\>\<bbb-R\>|)>>
    then <math|f\<in\>X\<times\>\<bbb-R\>> and by <reference|characterization
    of extended real Borel functions> we have <math|\<forall\>x\<in\>X<text|
    that ><around*|{|f\<less\>x|}>\<in\>\<cal-A\>> so that
    <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
  </proof>

  So if in the rest of this text we have proved a theorem for extended real
  Borel graphs then the theorem is also true for real Borel graphs. The
  opposite is not always true unless <math|f<around*|(|X|)>\<subseteq\>\<bbb-R\>>.

  <subsection|Simple functions>

  <\definition>
    <label|indicator function><index|<math|indicator
    function>><index|<math|\<bbb-1\><rsub|A>>>Let <math|X> be a set and
    <math|A\<subseteq\>X> then <math|\<bbb-1\><rsub|A>:X\<rightarrow\>\<bbb-R\>>
    is defined by <math|\<bbb-1\><rsub|A><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1
    if x\<in\>A>>|<row|<cell|0 if x\<in\>X\\A>>>>>> note that <math|>
  </definition>

  <\lemma>
    <label|1ANB=1A*1B>Let <math|X> be a set and <math|A,B\<subseteq\>X> then
    <math|\<bbb-1\><rsub|A<big|cap>B>=\<bbb-1\><rsub|A>*\<cdot\>\<bbb-1\><rsub|B>>
    and if <math|A<big|cap>B> then <math|\<bbb-1\><rsub|A<big|sqcup>B>=\<bbb-1\><rsub|A>+\<bbb-1\><rsub|B>>
  </lemma>

  <\proof>
    Let <math|x\<in\>X> then if <math|x\<in\>A<big|cap>B> we have
    <math|x\<in\>A\<wedge\>x\<in\>B\<Rightarrow\>\<bbb-1\><rsub|A><around*|(|x|)>\<cdot\>\<bbb-1\><rsub|B><around*|(|x|)>=1\<cdot\>1=1=\<bbb-1\><rsub|A<big|cap>B><around*|(|x|)>>
    and if <math|x\<nin\>A<big|cap>B> then either <math|x\<nin\>A> giving
    <math|><math|\<bbb-1\><rsub|A><around*|(|x|)>\<cdot\>\<bbb-1\><rsub|B><around*|(|x|)>=0\<cdot\>\<bbb-1\><rsub|B><around*|(|x|)>=0=\<bbb-1\><rsub|A<big|cap>B><around*|(|x|)>>
    or <math|x\<nin\>B> giving <math|\<bbb-1\><rsub|A><around*|(|x|)>\<cdot\>\<bbb-1\><rsub|B><around*|(|x|)>=\<bbb-1\><rsub|A><around*|(|x|)>\<cdot\>0=0=\<bbb-1\><rsub|A<big|cap>B><around*|(|x|)>>.
    For the last part if <math|A<big|cap>B=\<emptyset\>> then we have for
    <math|x\<in\>X> the following possibilities to consider

    <\description>
      <item*|<math|x\<in\>A>>then as <math|A<big|cap>B=\<emptyset\>> we have
      <math|x\<nin\>B> so that <math|\<bbb-1\><rsub|A<big|sqcup>B><around*|(|x|)>=1=1+0=\<bbb-1\><rsub|A><around*|(|x|)>+\<bbb-1\><rsub|B><around*|(|x|)>>

      <item*|<math|x\<in\>B>>then as <math|A<big|cap>B=\<emptyset\>> we have
      <math|x\<nin\>A> so that <math|\<bbb-1\><rsub|A<big|sqcup>B><around*|(|x|)>=1=0+1=\<bbb-1\><rsub|A><around*|(|x|)>+\<bbb-1\><rsub|B><around*|(|x|)>>

      <item*|<math|x\<in\>X\\<around*|(|A<big|sqcup>B|)>>>then
      <math|x\<nin\>A,B> so \ <math|\<bbb-1\><rsub|A<big|sqcup>B><around*|(|x|)>=0=0+0=\<bbb-1\><rsub|A><around*|(|x|)>+\<bbb-1\><rsub|B><around*|(|x|)>>
    </description>

    proving that <math|\<bbb-1\><rsub|A<big|sqcup>B>=\<bbb-1\><rsub|A>+\<bbb-1\><rsub|B>>
  </proof>

  <\theorem>
    <label|1A is Borel>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space then given <math|A\<subseteq\>X> we have that
    <math|\<bbb-1\><rsub|A>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    \ if and only if <math|A\<in\>\<cal-A\>>.
  </theorem>

  <\proof>
    \ Let <math|\<alpha\>\<in\>\<bbb-R\>> then for
    <math|<around*|{|\<alpha\>\<less\>\<bbb-1\><rsub|A>|}>> we have the
    following cases to consider\ 

    <\description>
      <item*|<math|1\<leqslant\>\<alpha\>>>then as <math|\<forall\>x\<in\>X>
      we have that <math|\<bbb-1\><rsub|A><around*|(|x|)>\<leqslant\>1> we
      have that <math|<around*|{|\<alpha\>\<less\>\<bbb-1\><rsub|A>|}>=\<emptyset\>>

      <item*|<math|0\<leqslant\>\<alpha\>\<less\>1>>then if <math|x\<in\>A>
      we have <math|\<alpha\>\<less\>1=\<bbb-1\><rsub|A><around*|(|x|)>> and
      if <math|x\<in\>X\\A> we have <math|0\<nless\>0=\<bbb-1\><rsub|A><around*|(|x|)>>
      so that <math|<around*|{|\<alpha\>\<less\>\<bbb-1\><rsub|A>|}>=A>

      <item*|<math|\<alpha\>\<less\>0>>then as <math|\<forall\>x\<in\>X> we
      have <math|\<alpha\>\<less\>0\<leqslant\>\<bbb-1\><rsub|A><around*|(|x|)>>
      we conclude that <math|<around*|{|\<alpha\>\<less\>\<bbb-1\><rsub|A>|}>=X>
    </description>

    to summarize we have that\ 

    <\equation*>
      <around*|{|\<alpha\>\<less\>\<bbb-1\><rsub|A>|}>=<choice|<tformat|<table|<row|<cell|\<emptyset\>
      if 1\<leqslant\>\<alpha\>>>|<row|<cell|A if
      0\<leqslant\>\<alpha\>\<less\>1>>|<row|<cell|X if
      \<alpha\>\<less\>0>>>>>
    </equation*>

    If now <math|\<bbb-1\><rsub|A>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
    then from <reference|characterization of real Borel functions> we must
    have that <math|<around*|{|\<bbb-1\><rsub|A>\<leqslant\>1|}>\<in\>\<cal-A\>>
    and <math|<around*|{|1\<leqslant\>\<bbb-1\><rsub|A>|}>\<in\>\<cal-A\>>
    hence <math|A=<around*|{|\<bbb-1\><rsub|A>=1|}>=<around*|{|\<bbb-1\><rsub|A>\<leqslant\>1|}><big|cap><around*|{|1\<leqslant\>\<bbb-1\><rsub|A>|}>\<in\>\<cal-A\>>.
  </proof>

  <\lemma>
    <label|\<less\>f\<less\>a\<gtr\>>Let <math|X> be a set,
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    a pairwise disjoint family of subsets of <math|X> such that
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X>,
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    then for <math|f:X\<rightarrow\>\<bbb-R\>> \ defined by
    <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>
    we have

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> there exists a unique
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>A<rsub|i>>, <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
      we have <math|x\<nin\>A<rsub|j>> and
      <math|f<around*|(|x|)>=\<lambda\><rsub|i>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\><text| we have
      ><around*|{|\<alpha\>\<less\>f|}>=<big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X> then as <math|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      there exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>A<rsub|i>> and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
      \ so that <math|f<around*|(|x|)>=<big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>><around*|(|x|)>=<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>><around*|(|x|)>=<around*|(|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>><around*|(|x|)>|)>+<big|sum><rsub|k\<in\><around*|{|i|}>>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>><around*|(|x|)>=0+\<lambda\><rsub|i>=\<lambda\><rsub|i>>.\ 

      <item>First if <math|x\<in\><around*|{|\<alpha\>\<less\>f|}>> then
      <math|\<alpha\>\<less\>f<around*|(|x|)>>. Assume now that
      <math|x\<nin\><big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>\<Rightarrow\>\<forall\>k\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>
      we have <math|x\<nin\>A<rsub|k>> then using (1) there exists a
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>A<rsub|i>> and <math|f<around*|(|x|)>=\<lambda\><rsub|i>>,<math|>
      as <math|i\<nin\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}><around*|\||\<alpha\>\<less\>\<lambda\><rsub|j>|\|>|}>>
      we have <math|\<alpha\>\<less\>f<around*|(|x|)>=\<lambda\><rsub|i>\<leqslant\>\<alpha\>>
      yielding the contradiction <math|\<alpha\>\<less\>\<alpha\>>. So we
      must have that <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>>
      proving that\ 

      <\equation>
        <label|eq 16.237.489><around*|{|a\<less\>f|}>\<subseteq\><big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>
      </equation>

      Next if <math|x\<in\><big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>>
      then <math|\<exists\>i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>
      such that <math|x\<in\>A<rsub|i>> and <math|x\<nin\>A<rsub|j>> for
      <math|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>> hence
      <math|f<around*|(|x|)>=\<lambda\><rsub|i>\<gtr\>\<alpha\>> proving that
      <math|x\<in\><around*|{|a\<less\>f|}>> and thus that
      <math|><math|<big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>\<subseteq\><around*|{|a\<less\>f|}>>.
      This together with <reference|eq 16.237.489> gives\ 

      <\equation*>
        <around*|{|a\<less\>f|}>=<big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\corollary>
    <label|simple functions are Borel>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|<around*|{|A<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    a disjoint family of sets in <math|\<cal-A\>> such that
    <math|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
    then for <math|f:X\<rightarrow\>\<bbb-R\>> defined by
    <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
    we have that <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
  </corollary>

  <\proof>
    Let <math|\<alpha\>\<in\>\<bbb-R\>> then by the above lemma (see
    <reference|\<less\>f\<less\>a\<gtr\>>) we have that
    <math|<around*|{|a\<less\>f|}>=<big|sqcup><rsub|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,n|}>\|\<alpha\>\<less\>\<lambda\><rsub|j>|}>>A<rsub|i>\<in\>\<cal-A\>>
    proving that <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>.
  </proof>

  Functions of the above forms are called simple functions as is expressed in
  the following definition.

  <\definition>
    <label|representation of a simple function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|f:X\<rightarrow\>\<bbb-R\>> a function then the graph
    \ <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>:X\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|(|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>
    \ is called a <with|font-series|bold|representation> of <math|f> if
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>,
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X>
    and <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>.
  </definition>

  <\definition>
    <label|simple function><index|simple function><index|<math|\<cal-S\><around*|[|X,\<cal-A\>|]>>><dueto|Simple
    Function>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> and
    <math|f:X\<rightarrow\>\<bbb-R\>> a function then <math|f> is
    <with|font-series|bold|simple> if there exists a a
    <with|font-series|bold|representation>
    <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
    of <math|f>. The set of simple graphs is noted by
    <math|\<cal-S\><around*|[|X,\<cal-A\>|]>> hence
    <math|\<cal-S\><around*|[|X,\<cal-A\>|]>=<around*|{|f\<in\>X\<times\>\<bbb-R\>\|f
    has a representation|}>=<around*|{|f\<in\>X\<times\>\<bbb-R\>\|\<exists\><around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>,\<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
    such that ><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X\<wedge\>\<forall\>x\<in\>X\<vDash\>f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>|}>>
  </definition>

  <\note>
    Every simple function has by definition a representation but the
    representation of a simple function is not unique.
  </note>

  <\note>
    <label|all simple functions are borel>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then from <reference|simple functions are Borel> it follows that all
    simple functions are Borel or <math|\<cal-S\><around*|[|X,\<cal-A\>|]>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>|]>>.
  </note>

  <\theorem>
    <label|characterization of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|f:X\<rightarrow\>\<bbb-R\>> a function then <math|f> is a simple
    function if and only if <math|f\<in\>\<cal-M\><around*|[|X,\<bbb-R\>|]>>
    and <math|f<around*|(|X|)>> is finite.
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f\<in\>\<b-S\><around*|[|X,\<cal-A\>|]>>
      then by the above we have that <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>.
      Further <math|\<forall\>x\<in\>X> we have by
      <reference|\<less\>f\<less\>a\<gtr\>> that
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|f<around*|(|x|)>=\<lambda\><rsub|i>> proving that
      <math|f<around*|(|X|)>\<subseteq\><around*|{|\<lambda\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      and thus that <math|f<around*|(|X|)>> is finite.

      <item*|<math|\<Leftarrow\>>>If <math|f<around*|(|X|)>> is finite then
      <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|f<around*|(|X|)>=<around*|{|\<lambda\><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>>
      then as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|{|\<lambda\><rsub|i>|}>> is closed and thus
      <math|<around*|{|\<lambda\><rsub|i>|}>\<in\>\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|<around*|\|||\|>>|]>>
      so as <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (and thus
      <math|\<cal-A\>/\<cal-B\><around*|[|X,\<cal-T\><rsub|<around*|\|||\|>>|]>>-measurable)
      we have that <math|f<rsup|-1><around*|(|<around*|{|\<lambda\><rsub|i>|}>|)>\<in\>\<cal-A\>>.
      Define then <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      by <math|A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<lambda\><rsub|i>|}>|)>>.
      Let <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with <math|i\<neq\>j>
      and assume that <math|x\<in\>A<rsub|i><big|cap>A<rsub|j>> then we have
      <math|x\<in\>A<rsub|i>=f<rsup|-1><around*|(|<around*|{|i|}>|)>\<wedge\>x\<in\>A<rsub|j>=f<rsup|-1><around*|(|<around*|{|j|}>|)>\<Rightarrow\>f<around*|(|x|)>=\<lambda\><rsub|i>\<neq\>\<lambda\><rsub|j>=f<around*|(|x|)>>
      a contradiction, hence <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      is a pairwise disjoint union of sets in <math|\<cal-A\>>. Further as
      <math|X=f<rsup|-1><around*|(|f<around*|(|X|)>|)>=f<rsup|-1><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|{|\<lambda\><rsub|i>|}>|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>f<rsup|-1><around*|(|<around*|{|\<lambda\><rsub|i>|}>|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
      Proving that\ 

      <\equation>
        <label|eq 16.238.490>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i><text|
        where ><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
      </equation>

      If now <math|x\<in\>X> then by the above there exists a
      <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>A<rsub|i>> and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
      <math|x\<nin\>A<rsub|j>>. Hence <math|<big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>><around*|(|x|)>=<around*|(|<big|sum><rsub|k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>|)>+\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<lambda\><rsub|i>\<equallim\><rsub|x\<in\>A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<lambda\><rsub|i>|}>|)>>f<around*|(|x|)>>
      proving that\ 

      <\equation>
        <label|eq 16.239.490>\<forall\>x\<in\>X<text| we have
        >f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>
      </equation>

      From <reference|eq 16.238.490> and <reference|eq 16.239.490> it follows
      that <math|f> is a simple function.
    </description>
  </proof>

  <\definition>
    Let <math|f:X\<rightarrow\>\<bbb-R\>> be a function then
    <math|f<rsub|+>:X\<rightarrow\>\<bbb-R\>>
    (<math|<wide|\<bbb-R\>|\<bar\>>>) is defined by
    <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>>,
    <math|f<rsub|->:X\<rightarrow\>\<bbb-R\>>
    (<math|<wide|\<bbb-R\>|\<bar\>>>) \ is defined by
    <math|f<rsub|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>> and
    <math|<around*|\||f|\|>:X\<rightarrow\>\<bbb-R\>>
    (<math|<wide|\<bbb-R\>|\<bar\>>>) is defined by
    <math|<around*|\||f|\|><around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>.
    Note that by the definition we have that
    <math|0\<leqslant\>f<rsub|+>,f<rsub|->>.
  </definition>

  <\theorem>
    <label|f=f+-f->Let <math|f,g:X\<rightarrow\>\<bbb-R\>>
    (<math|<wide|\<bbb-R\>|\<bar\>>>) be a function then\ 

    <\enumerate>
      <item>If <math|0\<leqslant\>f> then <math|f<rsub|+>=f> and
      <math|f<rsub|->=0>

      <item><math|f=f<rsub|+>-f<rsub|->> (note that the proof shows that sum
      is always defined even if <math|f<around*|(|x|)>=\<infty\>> or
      <math|f<around*|(|x|)>=-\<infty\>> because then either
      <math|f<rsub|-><around*|(|x|)>=0> or <math|f<rsub|+><around*|(|x|)>=0>)\ 

      <item><math|<around*|\||f|\|>=f<rsub|+>+f<rsub|->>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have that\ 

      <\description>
        <item*|<math|0\<less\>\<alpha\>>><math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+>=\<alpha\>\<cdot\>f<rsub|+>>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|->=\<alpha\>\<cdot\>f<rsub|->>

        <item*|<math|\<alpha\>=0>><math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+>=\<alpha\>\<cdot\>f<rsub|+>=\<bbb-1\><rsub|\<emptyset\>>=\<alpha\>\<cdot\>f<rsub|<rsub|->>=<around*|(|\<alpha\>\<cdot\>f|)><rsub|->>

        <item*|<math|\<alpha\>\<less\>0>><math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+>=-\<alpha\>\<cdot\>f<rsub|->>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|->=-\<alpha\>\<cdot\>f<rsub|+>>
      </description>

      <item>If <math|f\<leqslant\>g> then
      <math|f<rsup|+>\<leqslant\>g<rsup|+>> and
      <math|g<rsup|->\<leqslant\>f<rsup|->>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|0\<leqslant\>f> then <math|\<forall\>x\<in\>X> we have
      <math|0\<leqslant\>f<around*|(|x|)>> so that
      <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>>
      and <math|f<rsub|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=0>

      <item>If <math|x\<in\>\<bbb-R\>> then we have either\ 

      <\description>
        <item*|<math|0\<leqslant\>f<around*|(|x|)>>>so that
        <math|<around*|(|f<rsub|+>-f<rsub|->|)><around*|(|x|)>=f<rsub|+><around*|(|x|)>-f<rsub|-><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>+min<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>+0=f<around*|(|x|)>>

        <item*|<math|f<around*|(|x|)>\<less\>0>>so that
        <math|<around*|(|f<rsub|+>-f<rsub|->|)><around*|(|x|)>=f<rsub|+><around*|(|x|)>+f<rsub|-><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>+min<around*|(|f<around*|(|x|)>,0|)>=0+f<around*|(|x|)>>
      </description>

      proving that <math|f<rsub|+>-f<rsub|->=f>

      <item>If <math|x\<in\>\<bbb-R\>> then we have either

      <\description>
        <item*|<math|0\<leqslant\>f<around*|(|x|)>>>then
        <math|<around*|(|f<rsub|+>+f<rsub|->|)><around*|(|x|)>=f<rsub|+><around*|(|x|)>+f<rsub|-><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>-min<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>+0=<around*|\||f<around*|(|x|)>|\|>>

        <item*|<math|f<around*|(|x|)>\<less\>0>>then
        <math|<around*|(|f<rsub|+>+f<rsub|->|)><around*|(|x|)>=f<rsub|+><around*|(|x|)>+f<rsub|-><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>-min<around*|(|f<around*|(|x|)>,0|)>=0-f<around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
      </description>

      proving that <math|f<rsub|+>+f<rsub|->=f>

      <item>For <math|\<alpha\>> we have either\ 

      <\description>
        <item*|<math|0\<less\>\<alpha\>>>Let <math|x\<in\>X> then we have
        either\ 

        <\description>
          <item*|<math|0\<leqslant\>f<around*|(|x|)>>>then
          <math|0\<leqslant\>\<alpha\>\<cdot\>f<around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>
          so that <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+><around*|(|x|)>=max<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=\<alpha\>\<cdot\>f<around*|(|x|)>=\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>=\<alpha\>\<cdot\>f<rsub|+><around*|(|x|)>>
          and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|-><around*|(|x|)>=-min<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=-\<alpha\>\<cdot\>0=-\<alpha\>\<cdot\>min<around*|(|f<around*|(|x|)>,0|)>=\<alpha\>\<cdot\>f<rsub|-><around*|(|x|)>>

          <item*|<math|f<around*|(|x|)>\<less\>0>>then
          <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>\<less\>0>
          so that <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+><around*|(|x|)>=max<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=\<alpha\>\<cdot\>0=\<alpha\>*\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>=\<alpha\>\<cdot\>f<rsub|+><around*|(|x|)>>
          and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|-><around*|(|x|)>=-min<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<around*|(|x|)>=-\<alpha\>\<cdot\>min<around*|(|f<around*|(|x|)>,0|)>=\<alpha\>\<cdot\>f<rsub|-><around*|(|x|)>>
        </description>

        So in this case we have <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+>=\<alpha\>\<cdot\>f<rsub|+>>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|->=\<alpha\>\<cdot\>f<rsub|->>

        <item*|<math|\<alpha\>=0>>Then <math|\<forall\>x\<in\>X> we have
        <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>=0>
        hence <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+><around*|(|x|)>=max<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=\<alpha\>\<cdot\>f<rsup|+><around*|(|x|)>>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-><around*|(|x|)>=-min<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=\<alpha\>\<cdot\>f<rsup|-><around*|(|x|)>>
        proving as <math|\<bbb-1\><rsub|\<emptyset\>><around*|(|x|)>=0> that
        <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+>=\<alpha\>\<cdot\>f<rsup|+>=\<bbb-1\><rsub|\<emptyset\>>=\<alpha\>\<cdot\>f<rsup|->=<around*|(|\<alpha\>\<cdot\>f|)><rsup|->>

        <item*|<math|\<alpha\>\<less\>0>>Let <math|x\<in\>X> then we have
        either\ 

        <\description>
          <item*|<math|0\<leqslant\>f<around*|(|x|)>>>then
          <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>\<leqslant\>0>
          so that <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+><around*|(|x|)>=max<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=\<alpha\>\<cdot\>min<around*|(|f<around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<rsub|-><around*|(|x|)>>
          and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|-><around*|(|x|)>=-min<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<around*|(|x|)>=-\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<rsub|+><around*|(|x|)>>

          <item*|<math|f<around*|(|x|)>\<less\>0>>then
          <math|0\<leqslant\>\<alpha\>\<cdot\>f<around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>
          so that <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+><around*|(|x|)>=max<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>=\<alpha\>*\<cdot\>min<around*|(|f<around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<rsub|-><around*|(|x|)>>
          and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|-><around*|(|x|)>=-min<around*|(|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>,0|)>=0=-\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>=-\<alpha\>\<cdot\>f<rsub|+><around*|(|x|)>>
        </description>

        So in this case we have <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|+>=-\<alpha\>\<cdot\>f<rsub|->>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsub|->=-\<alpha\>\<cdot\>f<rsub|+>>
      </description>

      <item><math|\<forall\>x\<in\>X> we have the following cases to consider\ 

      <\description>
        <item*|<math|0\<leqslant\>f<around*|(|x|)>>>then
        <math|0\<leqslant\>g<around*|(|x|)>> so that
        <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>=max<around*|(|g<around*|(|x|)>,0|)>=g<rsub|+><around*|(|x|)>>
        and <math|g<rsub|-><around*|(|x|)>=-min<around*|(|g<around*|(|x|)>,0|)>=0=min<around*|(|f<around*|(|x|)>,0|)>=g<rsub|-><around*|(|x|)>>
        proving that\ 

        <\equation>
          <label|eq 16.240.502>f<rsub|+><around*|(|x|)>\<leqslant\>g<rsub|+><around*|(|x|)>\<wedge\>g<rsub|-><around*|(|x|)>\<leqslant\>f<rsub|-><around*|(|x|)>
        </equation>

        <item*|<math|f<around*|(|x|)>\<less\>0>>then for
        <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>> we have either\ 

        <\description>
          <item*|<math|0\<leqslant\>g<around*|(|x|)>>>then
          <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=0\<leqslant\>g<around*|(|x|)>=max<around*|(|g<around*|(|x|)>,0|)>=g<rsub|+><around*|(|x|)>>
          and <math|g<rsub|-><around*|(|x|)>=-min<around*|(|g<around*|(|x|)>,0|)>=0\<leqslant\>-f<around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=f<rsub|-><around*|(|x|)>>
          proving that\ 

          <\equation>
            <label|eq 16.241.502>f<rsub|+><around*|(|x|)>\<leqslant\>g<rsub|+><around*|(|x|)>\<wedge\>g<rsub|-><around*|(|x|)>\<leqslant\>f<rsub|-><around*|(|x|)>
          </equation>

          <item*|<math|g<around*|(|x|)>\<less\>0>>then
          <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=0=max<around*|(|g<around*|(|x|)>,9|)>=g<rsub|+><around*|(|x|)>>
          and <math|g<rsub|-><around*|(|x|)>=-min<around*|(|g<around*|(|x|)>,0|)>=-g<around*|(|x|)>\<leqslant\>-f<around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=f<rsub|-><around*|(|x|)>>
          proving that\ 

          <\equation>
            <label|eq 16.242.502>f<rsub|+><around*|(|x|)>\<leqslant\>g<rsub|+><around*|(|x|)>\<wedge\>g<rsub|-><around*|(|x|)>\<leqslant\>f<rsub|-><around*|(|x|)>
          </equation>
        </description>
      </description>

      From <reference|eq 16.240.502>,<reference|eq 16.241.502> and
      <reference|eq 16.242.502> it follows then that\ 

      <\equation*>
        f<rsub|+>\<leqslant\>g<rsub|+> and g<rsub|->\<leqslant\>f<rsub|->
      </equation*>
    </enumerate>
  </proof>

  <\lemma>
    <label|f+,f- is Borel if f is>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space, <math|f:X\<rightarrow\>\<bbb-R\>>
    (<math|<wide|\<bbb-R\>|\<bar\>>>) be a function so that
    <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (or
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>) then
    <math|f<rsub|+>,f<rsub|->\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (or
    <math|f<rsub|+>,f<rsub|->\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>)
  </lemma>

  <\proof>
    As <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> (or
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>) we have
    \ <math|\<forall\>x\<in\>\<bbb-R\>> that
    <math|<around*|{|f\<less\>x|}>,<around*|{|-x\<less\>f|}>\<in\>\<cal-A\>>.
    For the rest of the proof consideer the following cases:

    <\description>
      <item*|<math|f<rsub|+>>>Given <math|x\<in\>\<bbb-R\>> we have either

      <\description>
        <item*|<math|x\<leqslant\>0>>then if
        <math|y\<in\><around*|{|f<rsub|+>\<less\>x|}>> we have
        <math|0\<leqslant\>f<rsub|+><around*|(|x|)>\<less\>x\<leqslant\>0>
        giving the contradiction <math|0\<less\>0> we conclude that
        <math|<around*|{|f<rsub|+>\<less\>x|}>=\<emptyset\>\<in\>\<cal-A\>>

        <item*|<math|0\<less\>x>>then if <math|y\<in\><around*|{|f\<less\>x|}>>
        we have <math|f<around*|(|y|)>\<less\>x> and <math|0\<less\>x> so
        that <math|f<rsub|+><around*|(|y|)>=max<around*|(|f<around*|(|y|)>,0|)>\<less\>x>
        proving that <math|<around*|{|f\<less\>x|}>\<subseteq\><around*|{|f<rsub|+>\<less\>x|}>>,
        on the other hand if <math|y\<in\><around*|{|f<rsub|+>\<less\>x|}>>
        then <math|max<around*|(|f<around*|(|y|)>,0|)>\<less\>x> so that
        <math|f<around*|(|y|)>\<less\>x> proving
        <math|<around*|{|f<rsub|+>\<less\>x|}>\<subseteq\><around*|{|f\<less\>x|}>>
        proving that <math|<around*|{|f<rsub|+>\<less\>x|}>=<around*|{|f\<less\>x|}>\<in\>\<cal-A\>>
      </description>

      so in all cases we have <math|<around*|{|f<rsub|+>\<less\>x|}>\<in\>\<cal-A\>>
      proving that <math|f<rsub|+>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
      (or <math|f<rsub|+>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>)\ 

      <item*|<math|f<rsub|->>>Given <math|x\<in\>\<bbb-R\>> we have either\ 

      <\description>
        <item*|<math|x\<less\>0>>then if <math|y\<in\><around*|{|f<rsub|->\<less\>x|}>>
        we have as <math|0\<leqslant\>-min<around*|(|f<around*|(|y|)>,0|)>\<less\>x\<less\>0>
        the contradiction <math|0\<less\>0> so we conclude that
        <math|<around*|{|f<rsub|->\<less\>x|}>=\<emptyset\>\<in\>\<cal-A\>>

        <item*|<math|0\<less\>x>>then if <math|y\<in\><around*|{|-x\<less\>f|}>>
        we have <math|-x\<less\>f<around*|(|y|)>> and <math|-x\<less\>0> so
        that <math|-x\<less\>min<around*|(|f<around*|(|y|)>,0|)>\<Rightarrow\>-min<around*|(|f<around*|(|y|)>,0|)>\<less\>x\<Rightarrow\>f<rsub|-><around*|(|x|)>\<less\>x>
        proving that <math|<around*|{|-x\<less\>f|}>\<subseteq\><around*|{|f<rsub|->\<less\>x|}>>.
        On the other hand if <math|y\<in\><around*|{|f<rsub|->\<less\>x|}>>
        then <math|-min<around*|(|f<around*|(|y|)>,0|)>\<less\>x\<Rightarrow\>-x\<less\>min<around*|(|f<around*|(|y|)>,0|)>\<Rightarrow\>-x\<less\>f<around*|(|y|)>\<Rightarrow\>y\<in\><around*|{|-x\<less\>f|}>>
        proving that <math|<around*|{|f<rsub|->\<less\>x|}>\<subseteq\><around*|{|-x\<less\>f|}>>.
        Hence we have <math|<around*|{|f<rsub|->\<less\>x|}>=<around*|{|-x\<less\>f|}>\<in\>\<cal-A\>>
      </description>

      so in all cases we have that <math|<around*|{|f<rsub|->\<less\>x|}>\<in\>\<cal-A\>>
      proving that <math|f<rsub|->\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>>
      (or <math|f<rsub|->\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>)
    </description>
  </proof>

  <\lemma>
    <label|lemma 16.200>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>
    such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>>
    then there exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
    such that for <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    defined by <math|C<rsub|i>=A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
    we have that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>C<rsub|i>=X>
    and <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>\<subseteq\>\<cal-A\>>
  </lemma>

  <\proof>
    Using <reference|product of finite sets is finite> there exists a
    bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>.
    If now <math|i,j\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>> with
    <math|i\<neq\>j> then as <math|\<beta\>> is a bijection we have
    <math|\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>> and thus
    either\ 

    <\description>
      <item*|<math|\<beta\><around*|(|i|)><rsub|1>\<neq\>\<beta\><around*|(|j|)><rsub|1>>>then
      <math|C<rsub|i><big|cap>C<rsub|j>=<around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)><big|cap><around*|(|A<rsub|\<beta\><around*|(|j|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|j|)><rsub|2>>|)>\<subseteq\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>A<rsub|\<beta\><around*|(|j|)><rsub|1>>=\<emptyset\>>

      <item*|<math|\<beta\><around*|(|i|)><rsub|2>\<neq\>\<beta\><around*|(|j|)><rsub|2>>>then
      <math|C<rsub|i><big|cap>C<rsub|j>=<around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)><big|cap><around*|(|A<rsub|\<beta\><around*|(|j|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|j|)><rsub|2>>|)>\<subseteq\>B<rsub|\<beta\><around*|(|i|)><rsub|2>><big|cap>B<rsub|\<beta\><around*|(|j|)><rsub|2>>=\<emptyset\>>
    </description>

    so in all cases we have <math|C<rsub|i><big|cap>C<rsub|j>> proving that\ 

    <\equation>
      <label|eq 16.238.489><around*|{|C<rsub|>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>
      is pairwise disjoint
    </equation>

    As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>> we have
    that <math|C<rsub|i>=A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>\<in\>\<cal-A\>>
    we have that\ 

    <\equation>
      <label|eq 16.239.489><around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>\<subseteq\>\<cal-A\>
    </equation>

    If <math|x\<in\>X> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>A<rsub|i>> and there exists a
    <math|j\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>B<rsub|j>>. As <math|\<beta\>> is a bijection there exists a
    <math|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>> such that
    <math|\<beta\><around*|(|k|)>=<around*|(|i,j|)>>, so
    <math|C<rsub|k>=A<rsub|\<beta\><around*|(|k|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|k|)><rsub|2>>=A<rsub|i><big|cap>B<rsub|j>\<ni\>x>
    proving that <math|X\<subseteq\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>C<rsub|k>>.
    As it is trivial that <math|<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>C<rsub|k>\<subseteq\>X>
    we have proved that <math|X=<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>C<rsub|k>>
    which together with <reference|eq 16.238.489> and <reference|eq
    16.239.489> proves the lemma.
  </proof>

  <\corollary>
    <label|intersection of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> have representations
    <math|f=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>,
    <math|g=<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
    then there exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
    such that <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>
    is a representation of <math|f> and <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>
    is a representation of <math|g>
  </corollary>

  <\proof>
    Using the previous lemma (see <reference|lemma 16.200>) we have that
    <math|>here exist a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
    such that <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>=X>
    and <math|<around*|{|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>\<subseteq\>\<cal-A\>>.
    Take now <math|x\<in\>X> then there exists a unique
    <math|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>> such that
    <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>\<Rightarrowlim\><rsub|<text|<reference|\<less\>f\<less\>a\<gtr\>>
    (1)>><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<equallim\><rsub|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>
    ><text|and <reference|\<less\>f\<less\>a\<gtr\>> (1)>>f<around*|(|x|)>>
    proving that <math|><math|f=<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>,
    likewise we have for <math|x\<in\>X> that \ there exists a unique
    <math|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>> such that
    <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>\<Rightarrowlim\><rsub|<text|<reference|\<less\>f\<less\>a\<gtr\>>
    (1)>><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<equallim\><rsub|x\<in\>B<rsub|\<beta\><around*|(|i|)><rsub|2>
    ><text|and <reference|\<less\>f\<less\>a\<gtr\>> (1)>>g<around*|(|x|)>>
    proving that <math|><math|g=<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>.
  </proof>

  <\corollary>
    <label|non zero simple function><label|non zero simple function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurabe space,
    <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> a simple function so
    that <math|\<forall\>x\<in\>X> we have <math|f<around*|(|x|)>\<neq\>0>
    then there exists a representation <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
    of <math|f> such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|\<lambda\><rsub|i>=0>
  </corollary>

  <\proof>
    As <math|f> is a simple function there exists a representation
    <math|<big|sum><rsub|i=1><rsup|m>\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
    of <math|f>. Define now <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    by <math|\<lambda\><rsub|i>=<choice|<tformat|<table|<row|<cell|\<lambda\><rprime|'><rsub|i>
    if\<lambda\><rprime|'><rsub|i>\<neq\>0>>|<row|<cell|1 if
    \<lambda\><rprime|'><rsub|i>=0>>>>>> then if
    <math|if\<in\><around*|{|1,\<ldots\>,n|}>> we have either\ 

    <\description>
      <item*|<math|A<rsub|i>=\<emptyset\>>>then if <math|\<forall\>x\<in\>X>
      we have <math|\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<lambda\><rprime|'><rsub|i>\<cdot\>0=0=\<lambda\><rsub|i>\<cdot\>0=\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>

      <item*|<math|A<rsub|i>=\<emptyset\>>>then if <math|x\<in\>X> we have
      either\ 

      <\description>
        <item*|<math|x\<in\>A<rsub|i>>>then by
        <reference|\<less\>f\<less\>a\<gtr\>> we have
        <math|0\<neq\>f<around*|(|x|)>=\<lambda\><rprime|'><rsub|i>\<Rightarrow\>\<lambda\><rprime|'><rsub|i>=\<lambda\><rsub|i>>
        hence <math|\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>

        <item*|<math|x\<nin\>A<rsub|i>>>then we have
        <math|\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<lambda\><rprime|'><rsub|i>\<cdot\>0=0=\<lambda\><rsub|i>\<cdot\>0=\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>
      </description>
    </description>

    so <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    <math|\<forall\>x\<in\>X> we have <math|\<lambda\><rprime|'><rsub|i>\<neq\>0>
    and <math|\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>
    hence <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rprime|'><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>>
    proving that <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
    is a representation of <math|f> and the theorem.
  </proof>

  <\theorem>
    <label|properties of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then the following is true for the set of simple functions
    <math|\<cal-S\><around*|[|X,\<cal-A\>|]>>\ 

    <\enumerate>
      <item>Let <math|\<alpha\>\<in\>\<bbb-R\>> then for
      <math|C<rsub|\<alpha\>>:X\<rightarrow\>\<bbb-R\>> defined by
      <math|C<rsub|\<alpha\>><around*|(|x|)>=\<alpha\>> we have
      <math|C<rsub|\<alpha\>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|f+g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> where
      <math|<around*|(|f+g|)><around*|(|x|)>\<equallim\><rsub|definition>f<around*|(|x|)>+g<around*|(|x|)>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|f\<cdot\>g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
      where <math|<around*|(|f\<cdot\>g|)><around*|(|x|)>\<equallim\><rsub|definition>f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|min<around*|(|f,g|)>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
      where <math|<around*|(|min<around*|(|f,g|)>|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|max<around*|(|f,g|)>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
      where <math|<around*|(|max<around*|(|f,g|)>|)><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>>,
      <math|\<forall\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we have that
      <math|\<alpha\>\<cdot\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> where
      <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>

      <item>If <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> such that
      <math|\<forall\>x\<in\>f<around*|(|x|)>\<neq\>0> then for
      <math|<frac|1|f>> defined by <math|<around*|(|<frac|1|f>|)><around*|(|x|)>=<frac|1|f<around*|(|x|)>>>
      we have <math|<frac|1|f>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>

      <item><math|\<forall\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|f<rsub|+>,f<rsub|->\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>

      <item><math|\<forall\>f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> we
      have that <math|<around*|\||f|\|>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    </enumerate>
  </theorem>

  <\proof>
    \;

    <\enumerate>
      <item>Take <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
      defined by <math|A<rsub|1>=X\<in\>\<cal-A\>> and
      <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
      defined by <math|\<lambda\><rsub|1>=\<alpha\>> then
      <math|\<forall\>x\<in\>X> we have <math|<big|sum><rsub|i=1><rsup|1>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>=\<alpha\>=C<rsub|\<alpha\>><around*|(|x|)>>
      proving that <math|C<rsub|\<alpha\>>> is a simple function.

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> and <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|g>. Using <reference|intersection of simple functions> there
      exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      so that <math|f has a representation
      <big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>
      and <math|g> has a representation <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>,
      hence <math|\<forall\>x\<in\>X> we have
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|><around*|(|x|)>|)>+<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|><around*|(|x|)>|)>=<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>+\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>*<around*|(|x|)>>
      proving that <math|f+g=<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>+\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> and <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|g>. Using <reference|intersection of simple functions> there
      exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      so that <math|f has a representation
      <big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>
      and <math|g> has a representation <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>.
      Take <math|x\<in\>X> then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>
      such that <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
      so that by <reference|\<less\>f\<less\>a\<gtr\>>
      <math|<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<equallim\><rsub|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>>\<wedge\>B<rsub|\<beta\><around*|(|i|)><rsub|2>><text|
      with <reference|\<less\>f\<less\>a\<gtr\>>
      (1>><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>>|)><around*|(|x|)>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>><rsub|>|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>|)>>
      proving that <math|f\<cdot\>g=<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> and <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|g>. Using <reference|intersection of simple functions> there
      exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      so that <math|f has a representation
      <big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>
      and <math|g> has a representation <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>.
      Take <math|x\<in\>X> then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>
      such that <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
      so that by <reference|\<less\>f\<less\>a\<gtr\>>
      <math|<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>min<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=min<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<equallim\><rsub|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>>\<wedge\>B<rsub|\<beta\><around*|(|i|)><rsub|2>><text|
      with <reference|\<less\>f\<less\>a\<gtr\>>
      (1>>min<around*|(|<around*|\<nobracket\>|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>>|)><around*|(|x|)>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>><rsub|>|\<nobracket\>><around*|(|x|)>|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> and <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|g>. Using <reference|intersection of simple functions> there
      exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      so that <math|f has a representation
      <big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>
      and <math|g> has a representation <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>.
      Take <math|x\<in\>X> then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>
      such that <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
      so that by <reference|\<less\>f\<less\>a\<gtr\>>
      <math|<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>min<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=min<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<equallim\><rsub|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>>\<wedge\>B<rsub|\<beta\><around*|(|i|)><rsub|2>><text|
      with <reference|\<less\>f\<less\>a\<gtr\>>
      (1>>min<around*|(|<around*|\<nobracket\>|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>>|)><around*|(|x|)>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>><rsub|>|\<nobracket\>><around*|(|x|)>|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      proving that <math|min<around*|(|f,g|)>=><math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>min<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.

      <item>If <math|f,g\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then there
      exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> and <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|g>. Using <reference|intersection of simple functions> there
      exists a <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      so that <math|f has a representation
      <big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>
      and <math|g> has a representation <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><rsub|>>.
      Take <math|x\<in\>X> then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n\<cdot\>m|}>>
      such that <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
      so that by <reference|\<less\>f\<less\>a\<gtr\>>
      <math|<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>max<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>|)><around*|(|x|)>=max<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<equallim\><rsub|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>>\<wedge\>B<rsub|\<beta\><around*|(|i|)><rsub|2>><text|
      with <reference|\<less\>f\<less\>a\<gtr\>>
      (1>>max<around*|(|<around*|\<nobracket\>|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>>|)><around*|(|x|)>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|>>><rsub|>|\<nobracket\>><around*|(|x|)>|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      proving that <math|max<around*|(|f,g|)>=><math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>max<around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.

      <item>If <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>> then by
      <reference|non zero simple function> there exists a representation
      <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      of <math|f> with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we
      have <math|\<lambda\><rsub|i>\<neq\>0>. Take <math|x\<in\>X> then there
      exists a <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|x\<in\>A<rsub|i>>. Using <reference|\<less\>f\<less\>a\<gtr\>>
      (1) we have <math|<around*|(|<big|sum><rsub|i=1><rsup|n><frac|1|\<lambda\><rsub|i>>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>|)><around*|(|x|)>=<frac|1|\<lambda\><rsub|i>>\<equallim\><rsub|<text|<reference|\<less\>f\<less\>a\<gtr\>>
      (1>><frac|1|<around*|(|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|Ai>|)><around*|(|x|)>>>
      proving that <math|<frac|1|f>=<around*|(|<big|sum><rsub|i=1><rsup|n><frac|1|\<lambda\><rsub|i>>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>|)>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>

      <item>This follows from the fact that
      <math|f<rsub|+>=max<around*|(|f,C<rsub|0>|)>>,
      <math|f<rsub|->=min<around*|(|f,C<rsub|0>|)>> together with (1),(4) and
      5

      <item>This follows from the fact that
      <math|f<around*|(|x|)>=f<rsub|+><around*|(|x|)>-f<rsub|i><around*|(|x|)>>
      together with (8), (6) and (2)
    </enumerate>
  </proof>

  \;

  The importance of simple functions follows from the fact that every
  (extended) real Borel function can be written as the point wise limit of
  simple functions as is expressed in the next theorem.

  <\theorem>
    <label|Borel function as limit of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> a function such that
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> then
    there exists a <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    such that\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|f<around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>

      <item><math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|<around*|\||f<rsub|i>|\|>\<leqslant\><around*|\||f|\|><text|>>
    </enumerate>

    If <math|><math|f\<geqslant\>0> then<math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    can be choosen such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we
    have \ <math|0\<leqslant\>f<rsub|i>\<leqslant\>f<rsub|i+1>\<leqslant\>f>
    and thus that <math|f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    (because of (1) and <reference|equivalence of limits on increasing
    (decreasing) sequences of extented reals>) hence
    <math|f=sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>.
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>We first prove the positive case, so assume that
      <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> and
      that <math|\<forall\>x\<in\>X> we have
      <math|0\<leqslant\>f<around*|(|x|)>>. Given
      <math|n\<in\>\<bbb-N\><rsub|0>> define then
      <math|<around*|{|A<rsub|n,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>>
      by <math|A<rsub|n,i>=<choice|<tformat|<table|<row|<cell|<around*|{|<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<less\>i\<cdot\>2<rsup|-n>|}>
      if i\<in\><around*|{|1,\<ldots\>.,n\<cdot\>2<rsup|n>|}>>>|<row|<cell|<around*|{|n\<leqslant\>f|}>
      if j=n\<cdot\>2<rsup|n>+1>>>>>>. If <math|x\<in\>X> define
      <math|I<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>\|<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>|}>>
      then as <math|<around*|(|1-1|)>\<cdot\>2<rsup|x>=0\<leqslant\>f<around*|(|x|)>>
      we have that <math|1\<in\>I<rsub|x>\<Rightarrow\>I<rsub|x>\<neq\>0> and
      as <math|I<rsub|x>> is finite there exists a
      <math|m=max<around*|(|I<rsub|x>|)>>, then we have either\ 

      <\description>
        <item*|<math|m=n\<cdot\>2<rsup|n>+1>>then
        <math|<around*|(|<around*|(|n\<cdot\>2<rsup|n>+1|)>-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>n\<leqslant\>f<around*|(|x|)>\<Rightarrow\>x\<in\>A<rsub|n,n\<cdot\>2<rsup|n+1>+1>>

        <item*|<math|1\<leqslant\>m\<less\>n\<cdot\>2<rsup|n+1>+1>>then
        <math|<around*|(|m-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<less\><around*|(|<around*|(|m-1|)>+1|)>\<cdot\>2<rsup|-n>\<Rightarrow\><around*|(|m-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<less\>m\<cdot\>2<rsup|-n>\<Rightarrow\>x\<in\>A<rsub|n,m>>
      </description>

      Using the above and the fact that <math|A<rsub|n,i>\<subseteq\>X> we
      conclude that\ 

      <\equation>
        <label|eq 16.242.490>X=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>A<rsub|n,i>
      </equation>

      Next as <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> we have using
      <reference|characterization of extended real Borel functions> that
      <math|A<rsub|n,n\<cdot\>2<rsup|n>+1>=<around*|{|n\<leqslant\>f|}>\<in\>\<cal-A\>>
      and also if <math|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>|}>>
      that <math|A<rsub|n,i>=<around*|{|<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f\<less\>i\<cdot\>2<rsup|-n>|}>=<around*|{|<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f|}><big|cap><around*|{|f\<less\>i\<cdot\>2<rsup|-1>|}>\<in\>\<cal-A\>>
      proving that\ 

      <\equation>
        <label|eq 16.243.490><around*|{|A<rsub|n,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>\<subseteq\>\<cal-A\>
      </equation>

      Further if <math|i,j\<in\><around*|{|1,\<ldots\>.,n\<cdot\>2<rsup|n>+1|}>>
      with <math|i\<neq\>j> then we may assume that <math|i\<less\>j>
      [otherwise interchange <math|i> and <math|j>), assume that
      <math|x\<in\>A<rsub|n,i><big|cap>A<rsub|n,j>> then we have either\ 

      <\description>
        <item*|<math|j=n\<cdot\>2<rsup|n>+1>>then as
        <math|x\<in\>A<rsub|n,i>> we have
        <math|f<around*|(|x|)>\<less\>i\<cdot\>2<rsup|-n>\<Rightarrowlim\><rsub|i\<less\>j\<Rightarrow\>i\<leqslant\>j-1>f<around*|(|x|)>\<less\><around*|(|j-1|)>\<cdot\>2<rsup|-n>=n\<cdot\>2<rsup|-n>\<cdot\>2<rsup|n>=n\<leqslant\>f<around*|(|x|)>>
        [as <math|x\<in\>A<rsub|n,j>=A<rsub|n,n\<cdot\>2<rsup|n>+1>\<Rightarrow\>n\<leqslant\>f<around*|(|x|)>>]
        given the contradiction <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>>

        <item*|<math|j\<less\>n\<cdot\>2<rsup|n>+1>>then as
        <math|x\<in\>A<rsub|n,i>> we have
        <math|f<around*|(|x|)>\<less\>i\<cdot\>2<rsup|-n>\<leqslant\><around*|(|j-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>>
        [as <math|x\<in\>A<rsub|n,j>>] giving the contradiction
        <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>>
      </description>

      So we conclude that <math|A<rsub|n,i><big|cap>A<rsub|n,j>=\<emptyset\>>
      which using <reference|eq 16.242.490> means that\ 

      <\equation>
        <label|eq 16.244.490>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>A<rsub|n,i>
      </equation>

      If we then define for <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|\<lambda\><rsub|n,i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>>
      by <math|\<lambda\><rsub|n,i>=<around*|(|i-1|)>\<cdot\>2<rsup|n>> then
      using <reference|eq 16.243.490> and <reference|eq 16.244.490> it
      follows that\ 

      <\equation>
        <label|eq 16.245.490>\<forall\>n\<in\>\<bbb-N\><rsub|0>\<vDash\>f<rsub|n>=<big|sum><rsub|i=1><rsup|n\<cdot\>2<rsup|n>+1>\<lambda\><rsub|n,i>\<cdot\>\<bbb-1\><rsub|A<rsub|n,i>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>
        and\<forall\>n\<in\>\<bbb-N\><rsub|0> we have
        \ 0\<leqslant\>f<rsub|n>
      </equation>

      Now to prove that <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      is increasing so take <math|n\<in\>\<bbb-N\><rsub|0>> then for
      <math|x\<in\>X> there exists by <reference|eq 16.244.490> a
      <math|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>> such that
      <math|x\<in\>A<rsub|n,i>> and a <math|j\<in\><around*|{|1,\<ldots\>,<around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1|}>>
      such that <math|x\<in\>A<rsub|n+1,j>>. Now for <math|i> we have either:

      <\description>
        <item*|<math|i=n\<cdot\>2<rsup|n>+1>>then
        <math|f<rsub|n><around*|(|x|)>=\<lambda\><rsub|n,n\<cdot\>2<rsup|n>+1>=<around*|(|n\<cdot\>2<rsup|n>+1-1|)>\<cdot\>2<rsup|-n>=n>
        and <math|n\<leqslant\>f<around*|(|x|)>>. For <math|j> we must the
        consider the following cases:

        <\description>
          <item*|<math|j=<around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>>then
          <math|f<rsub|n+1><around*|(|x|)>=\<lambda\><rsub|n+1,<around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>=<around*|(|<around*|(|<around*|(|n+1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>+1|)>-1|)>\<cdot\>2<rsup|<around*|(|n+1|)>>=n+1\<gtr\>n=f<rsub|n><around*|(|x|)>>
          proving that in these case we have
          <math|f<rsub|n><around*|(|x|)>\<less\>f<rsub|n+1><around*|(|x|)>>

          <item*|<math|j\<less\><around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>>then
          <math|<around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<leqslant\>f<around*|(|x|)>\<less\>j\<cdot\>2<rsup|-<around*|(|n+1|)>>>.
          Assume now that <math|<around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<less\>n\<Rightarrow\><around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<less\>n\<leqslant\>f<around*|(|x|)>\<less\>j\<cdot\>2<rsup|-<around*|(|n+1|)>>\<Rightarrow\><around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<less\><around*|(|n\<cdot\>2<rsup|n+1>|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<less\>j\<cdot\>2<rsup|-<around*|(|n+1|)>>\<Rightarrow\><around*|(|j-1|)>\<less\>n\<cdot\>2<rsup|n+1>\<less\>j\<Rightarrow\>j\<leqslant\>n\<cdot\>2<rsup|n+1>\<less\>j>
          so we reach the contradiction <math|j\<less\>j>. Hence we must have
          <math|n\<leqslant\><around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>=\<lambda\><rsub|n+1,j>=f<rsub|n+1><around*|(|x|)>>
          proving in this case that <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>
        </description>

        <item*|<math|i\<less\>n\<cdot\>2<rsup|n>+1>>then
        <math|f<rsub|n><around*|(|x|)>=\<lambda\><rsub|n,j>=<around*|(|i-1|)>\<cdot\>2<rsup|-n>>
        and <math|<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<less\>i\<cdot\>2<rsup|n>>
        and for <math|j> we must consider the following cases:\ 

        <\description>
          <item*|<math|j=<around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>>then
          <math|f<rsub|n><around*|(|x|)>=<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<less\><around*|(|<around*|(|n\<cdot\>2<rsup|n>+1|)>-1|)>\<cdot\>2<rsup|-n>=n\<less\>n+1=\<lambda\><rsub|n+1,<around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>=f<rsub|n+1><around*|(|x|)>>
          proving in this case that <math|f<rsub|n><around*|(|x|)>\<less\>f<rsub|n+1><around*|(|x|)>>

          <item*|<math|j\<less\><around*|(|n+1|)>\<cdot\>2<rsup|n+1>+1>>then
          <math|f<rsub|n+1><around*|(|x|)>=\<lambda\><rsub|n+1,j>=<around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>>
          and <math|<around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<leqslant\>f<around*|(|x|)>\<less\>j\<cdot\>2<rsup|-<around*|(|n+1|)>>>.
          Assume now that <math|f<rsub|n+1><around*|(|x|)>\<less\>f<rsub|n><around*|(|x|)>>
          then <math|><math|<around*|(|j-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<less\><around*|(|i-1|)>\<cdot\>2<rsup|-n>=2\<cdot\><around*|(|i-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>\<Rightarrow\><around*|(|j-1|)>\<less\>2\<cdot\><around*|(|i-1|)>\<Rightarrow\>j\<leqslant\>2\<cdot\><around*|(|i-1|)>\<Rightarrow\>f<around*|(|x|)>\<less\>j\<cdot\>2<rsup|-<around*|(|n+1|)>>\<leqslant\>2\<cdot\><around*|(|i-1|)>\<cdot\>2<rsup|-<around*|(|n+1|)>>=<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>>
          leading to the contradiction <math|f<around*|(|x|)>\<less\>f<around*|(|x|)>>.
          This proves that <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>
        </description>
      </description>

      So in all cases we have <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>
      proving that\ 

      <\equation>
        <label|eq 16.246.490>\<forall\>x\<in\>X
        <around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>
        is a increasing sequence
      </equation>

      To prove that <math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
      we must consider for <math|f<around*|(|x|)>> two cases

      <\description>
        <item*|<math|f<around*|(|x|)>=\<infty\>>>Assume that
        <math|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}><big|cap>\<bbb-R\>=<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>>
        is bounded above then there exists a <math|M\<in\>\<bbb-R\>> such
        that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
        <math|f<rsub|n><around*|(|x|)>\<geqslant\>M>. By
        <reference|consequence of the archimedean property for the reals>
        there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
        <math|M\<less\>n>, as <math|n\<less\>\<infty\>=f<around*|(|x|)>> we
        have that <math|x\<in\>A<rsub|n,n\<cdot\>2<rsup|n>+1>> so
        that<math|f<rsub|n><around*|(|x|)>=\<lambda\><rsub|n,n\<cdot\>2<rsup|n>+1>=<around*|(|<around*|(|n\<cdot\>2<rsup|n>+1|)>-1|)>\<cdot\>2<rsup|-n>=n>
        <math|>proving that <math|M\<less\>n=f<rsub|n><around*|(|x|)>>
        contradicting our assumption. Using <reference|condition for supremum
        (infinum) to be infinite> we conclude then that
        <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\>+0|}>|)>=\<infty\>=f<around*|(|x|)>>.

        <item*|<math|f<around*|(|x|)>\<less\>\<infty\>>> First as
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
        <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>>
        such that <math|x\<in\>A<rsub|n,j>> then
        <math|f<rsub|n><around*|(|x|)>=\<lambda\><rsub|n,j>=<around*|(|j-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>>
        (by the definition of <math|A<rsub|n,j>>) proving that\ 

        <\equation>
          <label|eq 16.247.491>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>f<around*|(|x|)>
        </equation>

        Assume now that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<around*|(|x|)>>
        then <math|\<varepsilon\>=f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<gtr\>0>.
        Using <reference|0\<less\>x^n\<less\>e> there exists a
        <math|n<rsub|1>\<in\>\<bbb-N\><rsub|0>> such that
        <math|0\<less\>2<rsup|-n<rsub|1>>\<less\>\<varepsilon\>>. Using the
        Archimedean property (see <reference|consequence of the archimedean
        property for the reals>) and the fact that
        <math|f<around*|(|x|)>\<in\>\<bbb-R\>> there exists a
        <math|n<rsub|2>\<in\>\<bbb-N\>> such that
        <math|f<around*|(|x|)>\<less\>n<rsub|2>>. Take
        <math|n=max<around*|(|n<rsub|1>,n<rsub|2>|)>> then
        <math|f<around*|(|x|)>\<less\>n> and
        <math|0\<less\>2<rsup|-n<rsub|><rsub|>>\<leqslant\>2<rsup|-n<rsub|1>>\<less\>\<varepsilon\>>.
        By <reference|eq 16.244.490> there exists a unique
        <math|i\<in\><around*|{|1,\<ldots\>,n\<cdot\>2<rsup|n>+1|}>> such
        that <math|x\<in\>A<rsub|n,i>>. We can not have that
        <math|i=n\<cdot\>2<rsup|n>+1> because then
        <math|f<rsub|n><around*|(|x|)>=n\<leqslant\>f<around*|(|x|)>>
        contradicting <math|f<around*|(|x|)>\<less\>n>. So
        <math|i\<less\>n\<cdot\>2<rsup|n>+1> but then
        <math|f<rsub|n><around*|(|x|)>=\<lambda\><rsub|n,i>=<around*|(|i-1|)>\<cdot\>2<rsup|-n>\<leqslant\>f<around*|(|x|)>\<less\>i\<cdot\>2<rsup|-n>>.
        Hence <math|f<around*|(|x|)>-f<rsub|n><around*|(|x|)>\<less\>i\<cdot\>2<rsup|-n>-<around*|(|i-1|)>\<cdot\>2<rsup|-n>=2<rsup|-n>\<less\>\<varepsilon\>=f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
        proving that <math|-f<rsub|n><around*|(|x|)>\<less\>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<Rightarrow\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<rsub|n><around*|(|x|)>>
        a contradiction. So we must have that
        <math|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
        which by <reference|eq 16.247.491> means that\ 

        <\equation>
          <label|eq 16.248.491>f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
        </equation>

        Using <reference|equivalence of limits on increasing (decreasing)
        sequences of extented reals> on the above gives finally\ 

        <\equation>
          <label|eq 16.249.491>\<forall\>x\<in\>X<text| we have
          >f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>
        </equation>
      </description>

      For the general case as <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      is such that <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      we have by <reference|f=f+-f-> and <reference|f+,f- is Borel if f is>
      that <math|f=f<rsub|+>-f<rsub|->> where
      <math|f<rsub|+>,f<rsub|->\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
      Using the first part of the theorem there exists
      <math|<around*|{|f<rsub|+,n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>,
      <math|<around*|{|f<rsub|-,n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]><rsub|>>
      such that <math|\<forall\>x\<in\>X> we have
      \ <math|f<rsub|+><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|+,n><around*|(|x|)>>
      and <math|f<rsub|-><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|-,n><around*|(|x|)>>.
      Using <math|<reference|properties of simple functions> we have then
      that <around*|{|f<rsub|+,n>-f<rsub|-,n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]>>.
      Using <reference|properties of the limit in the extented reals> we have
      then that <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|+,n><around*|(|x|)>-f<rsub|-,n><around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|+,n>-f<rsub|-,n>|)><around*|(|x|)>>
      so we have if we define <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
      by <math|f<rsub|n>=f<rsub|+,n>-f<rsub|-,n>> then we have\ 

      <\equation>
        <label|eq 16.250.491>\<forall\>x\<in\>X<text| that
        >f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>,f<rsub|n><around*|(|x|)>=f<rsub|+,n><around*|(|x|)>-f<rsub|-,n><around*|(|x|)>\<wedge\>f<rsub|+><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|+,n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|+,n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<wedge\>f<rsub|-><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|-,n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|-,n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      proving (1).

      <item>Note that as <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>x\<in\>X> we have <math|<around*|\||f<rsub|n><around*|(|x|)><rsub|>|\|>=<around*|\||f<rsub|+,n><around*|(|x|)>-f<rsub|-,n><around*|(|x|)>|\|>\<leqslant\><around*|\||f<rsub|+,n><around*|(|x|)>|\|>+<around*|\||f<rsub|-,n><around*|(|x|)>|\|>=f<rsub|+,n><around*|(|x|)>+f<rsub|-,n><around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|+,n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>+sup<around*|(|<around*|{|f<rsub|-,n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=f<rsub|+><around*|(|x|)>=f<rsub|-><around*|(|x|)>\<equallim\><rsub|<text|<reference|f=f+-f->>><around*|\||f<around*|(|x|)>|\|>>
      proving\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><rsub|0>,\<forall\>x\<in\>X\<vDash\><around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>
      </equation*>
    </enumerate>
  </proof>

  We can use the above theorem to transfer the properties of simple functions
  to real (extended) Borel functions. However to be able to do this we must
  first prove that the limit of real (extended) Borel functions (if defined)
  is again a real (extended) Borel function. This is done in the next
  theorem.

  \;

  <\lemma>
    <label|lemma 16.205>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space, <math|I\<subseteq\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>I>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    \ then we have\ 

    <\enumerate>
      <item><math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item><math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>Let <math|x\<in\>X> and <math|y\<in\><big|cup><rsub|i\<in\>I><around*|{|x\<less\>f<rsub|i>|}>>
        then <math|\<exists\>i\<in\>I> so that
        <math|y\<in\><around*|{|x\<less\>f<rsub|i>|}>\<Rightarrow\>x\<less\>f<rsub|i><around*|(|y|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>=<around*|(|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|y|)>>,
        proving <math|y\<in\><around*|{|x\<less\>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|}>>
        so we have\ 

        <\equation>
          <label|eq 16.251.492><big|cup><rsub|i\<in\>I><around*|{|x\<less\>f<rsub|i>|}>\<subseteq\><around*|{|x\<less\>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|}>
        </equation>

        If <math|y\<in\><around*|{|x\<less\>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|}>\<Rightarrow\>x\<less\><around*|(|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|y|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>>
        hence using the definition of a supremum there exists a
        <math|i\<in\>I> such that <math|x\<less\>f<rsub|i><around*|(|y|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>\<Rightarrow\>y\<in\><around*|{|x\<less\>f<rsub|i>|}>\<subseteq\><big|cup><rsub|i\<in\>I><around*|{|x\<less\>f<rsub|i>|}>.>
        Using this together with <reference|eq 16.251.492> gives
        <math|><math|sup<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>=<big|cup><rsub|i\<in\>I><around*|{|x\<less\>f<rsub|i>|}>\<in\>\<cal-A\>>
        proving that <math|><math|sup<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>>
        is a Borel function.

        <item>Let <math|x\<in\>X> and <math|y\<in\><big|cup><rsub|i\<in\>I><around*|{|f<rsub|i>\<less\>x|}>>
        then <math|\<exists\>i\<in\>I> so that
        <math|y\<in\><around*|{|f<rsub|i>\<less\>x|}>\<Rightarrow\><around*|(|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|y|)>=inf<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>\<leqslant\>f<rsub|i><around*|(|y|)>\<less\>x>,
        proving <math|y\<in\><around*|{|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|}>>
        so we have\ 

        <\equation>
          <label|eq 16.252.492><big|cup><rsub|i\<in\>I><around*|{|f<rsub|i>\<less\>x|}>\<subseteq\><around*|{|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>\<less\>x|}>
        </equation>

        If <math|y\<in\><around*|{|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>\<less\>x|}>\<Rightarrow\><around*|(|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>|)><around*|(|y|)>=inf<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>\<less\>x>
        hence using the definition of a infinum there exists a
        <math|i\<in\>I> such that <math|inf<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>\<leqslant\>f<rsub|i><around*|(|y|)>\<less\>x\<Rightarrow\>y\<in\><around*|{|f<rsub|i>\<less\>x|}>\<subseteq\><big|cup><rsub|i\<in\>I><around*|{|f<rsub|i>\<less\>x|}>.>
        Using this together with <reference|eq 16.252.492> gives
        <math|><math|inf<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>=<big|cup><rsub|i\<in\>I><around*|{|f<rsub|i>\<less\>x|}>\<in\>\<cal-A\>>
        proving that <math|><math|inf<around*|(|<around*|{|f<rsub|i><around*|(|y|)>\|i\<in\>I|}>|)>>
        is a Borel function.
      </enumerate>

      \;
    </proof>
  </lemma>

  <\theorem>
    <label|limit of Borel functions is a Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then

    <\enumerate>
      <item><math|sup<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item><math|inf<around*|(|<around*|{|f<rsub|n>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>For <math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>> we have
      <math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>For <math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|<around*|(|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>> we have
      <math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      \;

      <item>If <math|\<forall\>x\<in\>X> <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      exists then for <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|><math|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      we have <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This follows from the previous lemma (see <reference|lemma
      16.205> (1) by taking <math|I=\<bbb-N\><rsub|0>>

      <item>This follows from the previous lemma (see <reference|lemma
      16.205> (2) by taking <math|I=\<bbb-N\><rsub|0>>

      <item>First note that <math|<around*|\<nobracket\>|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=inf<around*|(|<around*|{|sup<around*|(|<around*|{|f<rsub|j><around*|(|x|)>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|}>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=inf<around*|(|<around*|{|<around*|(|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|}>|)><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<around*|(|inf<around*|(|<around*|{|<around*|(|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>|)><around*|(|x|)>>
      proving that\ 

      <\equation>
        <below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=inf<around*|(|<around*|{|<around*|(|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      Using the previous lemma (see <reference|lemma 16.205> (1)) we have
      that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      function, using the previous lemma (see <reference|lemma 16.205> (2))
      we conclude that <math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=inf<around*|(|<around*|{|<around*|(|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.\ 

      <item>First note that <math|<around*|\<nobracket\>|<around*|(|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|j><around*|(|x|)>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|}>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|<around*|(|inf<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|}>|)><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<around*|(|sup<around*|(|<around*|{|<around*|(|inf<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>|)><around*|(|x|)>>
      proving that\ 

      <\equation>
        <below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=sup<around*|(|<around*|{|<around*|(|inf<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      Using the previous lemma (see <reference|lemma 16.205> (1)) we have
      that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|inf<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>,
      using the previous lemma (see <reference|lemma 16.205> (2)) we conclude
      that <math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=sup<around*|(|<around*|{|<around*|(|sup<around*|(|<around*|{|f<rsub|j>\|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>|}>|)>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.\ 

      <item>If <math|\<forall\>x\<in\>X> <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
      exists then by the definition of a limit in the extended reals we have
      <math|<below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>> and
      <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=<below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>> proving that
      <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>=<below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i>=<below|lim
      sup|i\<rightarrow\>\<infty\>>f<rsub|i>>. Using (3) or (4) proves thus
      (5)
    </enumerate>
  </proof>

  <\corollary>
    <label|properties of Borel functions (sum,product,min,max)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|f,g:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> functions such that
    <math|f,g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> then we
    have that

    <\enumerate>
      <item>If <math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>+g<around*|(|x|)>> is defined then
      <math|f+g:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      then <math|f+g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>For <math|f\<cdot\>g:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      we have <math|f\<cdot\>g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have for
      <math|\<alpha\>\<cdot\>f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      that <math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>If <math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>\<neq\>0> then for
      <math|<frac|1|f>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> defined by
      <math|<around*|(|<frac|1|f>|)><around*|(|x|)>=<frac|1|f<around*|(|x|)>>>
      we have <math|<frac|1|f>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>For <math|max<around*|(|f,g|)>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|max<around*|(|f,g|)><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      we have that <math|max<around*|(|f,g|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>

      <item>For <math|min<around*|(|f,g|)>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      defined by <math|min<around*|(|f,g|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      we have that <math|min<around*|(|f,g|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    </enumerate>
  </corollary>

  <\proof>
    \ As <math|f,g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    \ there exists (see <reference|Borel function as limit of simple
    functions>) two sequences of simple functions (which are Borel by
    <reference|simple functions are Borel>)) so that
    <math|\<forall\>x\<in\>X> we have <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    and <math|g<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>>

    <\enumerate>
      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|f<rsub|n>+g<rsub|n>> are simple functions, hence Borel by
      <reference|simple functions are Borel>. As <math|\<forall\>x\<in\>X> we
      have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n>+g<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n><around*|(|x|)>+g<rsub|n><around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>+<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=<around*|(|f+g|)><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|f+g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.

      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|f<rsub|n>\<cdot\>g<rsub|n>> are simple functions, hence Borel by
      <reference|simple functions are Borel>. Take <math|x\<in\>X> then we
      have the following cases to consider for <math|f<around*|(|x|)>> and
      <math|g<around*|(|x|)>>

      <\description>
        <item*|<math|f<around*|(|x|)>=0>>then using <reference|Borel function
        as limit of simple functions> (2) we have
        <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
        <math|0\<leqslant\><around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>=0\<Rightarrow\><around*|\||f<rsub|n><around*|(|x|)>|\|>=0>
        so that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|f<rsub|n><around*|(|x|)>\<cdot\>g<around*|(|x|)>|)>=0=0\<cdot\>g<around*|(|x|)>=f<around*|(|x|)>\<cdot\>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>>

        <item*|<math|g<around*|(|x|)>=0>><item*|<math|f<around*|(|x|)>=0>>then
        using <reference|Borel function as limit of simple functions> (2) we
        have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
        <math|0\<leqslant\><around*|\||g<rsub|n><around*|(|x|)>|\|>\<leqslant\><around*|\||g<around*|(|x|)>|\|>=0\<Rightarrow\><around*|\||g<rsub|n><around*|(|x|)>|\|>=0>
        so that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|f<rsub|n><around*|(|x|)>\<cdot\>g<around*|(|x|)>|)>=0=f<around*|(|x|)>\<cdot\>0=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>>

        <item*|<math|f<around*|(|x|)>,g<around*|(|x|)>\<neq\>0>>in this case
        we can use <reference|properties of the limit in the extented reals>
        so that <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|f<rsub|n><around*|(|x|)>\<cdot\>g<rsub|n><around*|(|x|)>|)>=<around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>|)>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>>
      </description>

      As <math|\<forall\>x\<in\>X> we have
      <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n>\<cdot\>g<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n><around*|(|x|)>\<cdot\>g<rsub|n><around*|(|x|)>|)>\<equallim\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>|)>\<cdot\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>=<around*|(|f\<cdot\>g|)><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|f\<cdot\>g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.

      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|\<alpha\>\<cdot\>f<rsub|n>> are simple functions, hence Borel by
      <reference|simple functions are Borel>. As <math|\<forall\>x\<in\>X> we
      have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<around*|(|\<alpha\>\<cdot\>f<rsub|n>|)><around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>f<rsub|n><around*|(|x|)>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>><below|\<alpha\>\<cdot\>lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.

      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<frac|1|f<rsub|n>>> are simple functions, hence Borel by
      <reference|simple functions are Borel>. As <math|\<forall\>x\<in\>X> we
      have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<around*|(|<frac|1|f>|)><around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|f<rsub|n><around*|(|x|)>>|)>\<equallim\><rsub|<text|<reference|limit
      of 1/f>>><frac|1|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>=<frac|1|f<around*|(|x|)>>=<frac|1|f><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|<frac|1|f>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.

      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|max<around*|(|f<rsub|n>,g<rsub|n>|)>> are simple functions, hence
      Borel by <reference|simple functions are Borel>. As
      <math|\<forall\>x\<in\>X> we have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|max<around*|(|f<rsub|n>,g<rsub|n>|)>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|max<around*|(|f<rsub|n><around*|(|x|)>,g<rsub|n><around*|(|x|)>|)>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>>max<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>,<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>=<around*|(|max<around*|(|f,g|)>|)><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|max<around*|(|f,g|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.

      <item>Using <reference|properties of simple functions> we have
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|min<around*|(|f<rsub|n>,g<rsub|n>|)>> are simple functions, hence
      Borel by <reference|simple functions are Borel>. As
      <math|\<forall\>x\<in\>X> we have <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|min<around*|(|f<rsub|n>,g<rsub|n>|)>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|min<around*|(|f<rsub|n><around*|(|x|)>,g<rsub|n><around*|(|x|)>|)>|)>\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>>min<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>,<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>=<around*|(|min<around*|(|f,g|)>|)><around*|(|x|)>>
      we conclude using the previous theorem (see <reference|limit of Borel
      functions is a Borel function>) that
      <math|min<around*|(|f,g|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
    </enumerate>
  </proof>

  <\corollary>
    <label|{f\<less\>g}..>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|f:X\<rightarrow\>\<bbb-R\>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> functions such that
    <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>,g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then we have\ 

    <\enumerate>
      <item><math|<around*|{|f\<less\>g|}>\<in\>\<cal-A\>>

      <item><math|<around*|{|f\<leqslant\>g|}>\<in\>\<cal-A\>>

      <item><math|<around*|{|f=g|}>\<in\>\<cal-A\>>

      <item><math|<around*|{|f\<neq\>g|}>\<in\>\<cal-A\>>
    </enumerate>
  </corollary>

  <\proof>
    \ First as <math|f<around*|(|X|)>\<subseteq\>\<bbb-R\>> we have that
    <math|g-f> is well defined and also by <reference|properties of Borel
    functions (sum,product,min,max)> that <math|g-f> is Borel. Next we have

    <\enumerate>
      <item> <math|<around*|{|f\<less\>g|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>=<around*|{|x\<in\>X\|0\<less\><around*|(|g-f|)><around*|(|x|)>\<less\>0|}>=<around*|{|0\<less\><around*|(|g-f|)>\<less\>0|}>\<in\>\<cal-A\>>
      as <math|g-f> is Borel.

      <item><math|<around*|{|f\<leqslant\>g|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>=<around*|{|x\<in\>X\|0\<leqslant\><around*|(|g-f|)><around*|(|x|)>|}>=<around*|{|0\<leqslant\><around*|(|g-f|)>|}>\<in\>\<cal-A\>>
      as <math|g-f> is Borel.

      <item><math|<around*|{|f=g|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}><big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>=<around*|{|f\<leqslant\>g|}><big|cap><around*|{|g\<leqslant\>f|}>\<in\>\<cal-A\>>
      (using 2)

      <item><math|<around*|{|f\<neq\>g|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>=X\\<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>=X\\<around*|{|f=g|}>\<in\>\<cal-A\>>
      (using 3)
    </enumerate>
  </proof>

  <\corollary>
    <label|f is Borel if f+,f- is>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    a function then <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    if and only if <math|f<rsub|+>,f<rsub|->> are real extended Borel
    functions
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>This is already proved (see
      <reference|f+,f- is Borel if f is>)

      <item*|<math|\<Leftarrow\>>>If <math|f<rsub|+>,f<rsub|->> are Borel
      functions then as <math|f<rsub|+>-f<rsub|->> is well defined (see
      <reference|f=f+-f->) and the previous theorem (see
      <reference|properties of Borel functions (sum,product,min,max)> (1) and
      (3)) we have that <math|f=f<rsub|+>-f<rsub|->\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
    </description>
  </proof>

  <\corollary>
    <label|f Borel =\<gtr\> \|f\| is Borel>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> a function with
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> then
    <math|<around*|\||f|\|>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
  </corollary>

  <\proof>
    If <math|f> is Borel then by the previous corollary
    <math|f<rsub|+>,f<rsub|->> are Borel and using the previous theorem (1)
    we have that <math|<around*|\||f|\|>=f<rsub|+>+f<rsub|->\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
  </proof>

  <section|Integration of positive Borel functions>

  <\definition>
    <label|positive simple functions>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space then <math|\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>=<around*|{|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>\|0\<leqslant\>f|}>>
    (the list of positive simple functions)
  </definition>

  First we show how the integral of a positive function can be calculated, to
  start we define the integral of a positive simple function. Once this is
  done we can as every extended real Borel functions is the limit of simple
  functions we can use a limit procedure to calculate the integral of evere
  Borel function. As the integral of a simple function will be based on its
  representation we must show that the integral is independent of the
  representation, this is done in the following lemma.

  <\lemma>
    <label|integral sum of simple function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> a
    <with|font-series|bold|positive >simple function with two representations
    <math|f=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>=<big|sum><rsub|i=1><rsup|m>\<zeta\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>
    <text|where <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>,
    <math|> and <math|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|I>>
    then > <big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
    and the sums are well defined.
  </lemma>

  <\proof>
    First for <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    that either <math|A<rsub|i>=\<emptyset\>\<Rightarrow\>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0\<geqslant\>0>
    or <math|A<rsub|i>\<neq\>\<emptyset\>\<Rightarrow\>\<exists\>x\<in\>A<rsub|i>>
    so that <math|\<lambda\><rsub|i>=f<around*|(|x|)>\<geqslant\>0\<Rightarrow\>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>\<geqslant\>0|)>>,
    likewise <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}>> we have that
    either <math|B<rsub|i>=\<emptyset\>\<Rightarrow\>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>=0\<geqslant\>0>
    or <math|B<rsub|i>\<neq\>\<emptyset\>\<Rightarrow\>\<exists\>x\<in\>B<rsub|i>>
    so that <math|\<zeta\><rsub|i>=f<around*|(|x|)>\<geqslant\>0\<Rightarrow\>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>\<geqslant\>0|)>>.
    So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>,\<forall\>j\<in\><around*|{|1,\<ldots\>,m|}>>
    we have that <math|0\<leqslant\>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>,\<zeta\><rsub|j>\<cdot\>\<mu\><around*|(|B<rsub|j>|)>>
    so that <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>,<big|sum><rsub|i=1><rsup|m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
    are well defined (meaning we never have
    <math|\<infty\>+<around*|(|-\<infty\>|)>> or <math|-\<infty\>+\<infty\>>,
    don't forget hat <math|\<mu\><around*|(|A<rsub|i>|)>,\<mu\><around*|(|B<rsub|i>|)>>
    can be <math|\<infty\>>).\ 

    Next we have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|A<rsub|i>=A<rsub|i><big|cap>X=A<rsub|i><big|cap><around*|(|<big|sqcup><rsub|J\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i>|)>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>><around*|(|A<rsub|i><big|cap>B<rsub|i>|)>>
    and <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>> we have
    <math|B<rsub|k>=B<rsub|k><big|cap>X=B<rsub|k><big|cap><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j>|)>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|k><big|cap>A<rsub|j>|)>.>
    From this it follows that <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|k\<in\><around*|{|1,\<ldots\>,m|}>>A<rsub|i><big|cap>B<rsub|k>|)>=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\><big|sum><rsub|k=1><rsup|m>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|m>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>|)>>
    and <math|<big|sum><rsub|k=1><rsup|m>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|B<rsub|k>|)>=<big|sum><rsub|k=1><rsup|m>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|i=1><rsup|n>A<rsub|i><big|cap>B<rsub|k>|)>=<big|sum><rsub|k=1><rsup|m><around*|(|<big|sum><rsub|i=1><rsup|n>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>|)>\<equallim\><rsub|<text|<reference|sum
    over product of sets>>><big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|m>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>|)>>,
    to summarize:\ 

    <\equation>
      <label|eq 16.255.497><big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|m>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>|)>\<wedge\><big|sum><rsub|i=1><rsup|n><around*|(|<big|sum><rsub|k=1><rsup|m>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>|)>
    </equation>

    Now given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,m|}>> that either
    <math|A<rsub|i><big|cap>B<rsub|k>=\<emptyset\>> then
    <math|\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>=0=\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>>
    and if <math|A<rsub|i><big|cap>B<rsub|k>\<neq\>\<emptyset\>> then
    <math|\<exists\>x\<in\>A<rsub|i><big|cap>B<rsub|k>> and
    <math|\<lambda\><rsub|i>=f<around*|(|x|)>=\<zeta\><rsub|k>\<Rightarrow\>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>=\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>.>
    So that

    <\equation>
      <label|eq 16.256.297>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}> we
      have <big|sum><rsub|k=1><rsup|m>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>=<big|sum><rsub|k=1><rsup|m>\<zeta\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|k>|)>
    </equation>

    Applying <reference|eq 16.256.297> to <reference|eq 16.255.497> proves
    finally <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>\<zeta\><rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
  </proof>

  Thanks to the above theorem the following definition make sense

  <\definition>
    <index|<math|I<rsub|\<mu\>><around*|(|f|)>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a mesure
    space, <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> be a
    positive simple function (so there exists a
    <math|<around*|{|\<lambda\><rsub|i>|}><rsub|\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<vDash\><big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=X>
    such that <math|f=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>)
    then <math|I<rsub|\<mu\>><around*|(|f|)>\<equallim\><rsub|definition><big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>\<in\><around*|[|0,\<infty\>|]>>.
  </definition>

  <math|I<rsub|\<mu\>> has the usual properties you expect from a integral>

  <\theorem>
    <label|properties of the integralof simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have the following properties of <math|I<rsub|\<mu\>>>\ 

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|I<rsub|\<mu\>><around*|(|\<bbb-1\><rsub|A>|)>=\<mu\><around*|(|A|)>>

      <item><math|\<forall\>f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>,
      <math|\<forall\>\<alpha\>\<in\><around*|[|a,\<infty\>|[>> we have
      <math|I<rsub|\<mu\>><around*|(|\<alpha\>\<cdot\>f|)>=\<alpha\>\<cdot\>I<rsub|\<mu\>><around*|(|f|)>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      we have <math|I<rsub|\<mu\>><around*|(|f+g|)>=I<rsub|\<mu\>><around*|(|f|)>+I<rsub|\<mu\>><around*|(|g|)>>

      <item><math|\<forall\>f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      with <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>
      we have <math|I<rsub|\<mu\>><around*|(|f|)>\<leqslant\>I<rsub|\<mu\>><around*|(|g|)>>

      <item><math|I<rsub|\<mu\>><around*|(|C<rsub|0>|)>=0> where
      <math|C<rsub|0>:X\<rightarrow\>\<bbb-R\>> is defined by
      <math|C<rsub|0><around*|(|x|)>=0>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|A\<in\>\<cal-A\>> then
      <math|\<bbb-1\><rsub|A>=<big|sum><rsub|i=1><rsup|1>\<lambda\><rsub|1>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      with <math|A<rsub|1>=A> and <math|\<lambda\><rsub|1>=1> so that
      <math|I<rsub|\<mu\>><around*|(|\<bbb-1\><rsub|A>|)>=<big|sum><rsub|i=1><rsup|1>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=\<mu\><around*|(|A|)>>

      <item>As <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then
      there exists <math|<around*|{|\<lambda\><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      such that <math|f=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>\<Rightarrow\>\<alpha\>\<cdot\>f=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>\<lambda\><rsub|i>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      so that <math|I<rsub|\<mu\>><around*|(|\<alpha\>\<cdot\>f|)>=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>\<lambda\><rsub|i>|)>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=\<alpha\>\<cdot\>I<rsub|\<mu\>><around*|(|f|)>>

      <item>If <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      then there exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>,
      <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|f> and <math|g>. Using <reference|intersection of simple
      functions> we have then that there exists a
      <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      such that <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>,
      <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>
      are representation of <math|f> and <math|g>. So
      <math|\<forall\>x\<in\>X> we have <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>=><math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><around*|(|x|)>>+<math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>+\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>><around*|(|x|)>>
      proving that <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>+\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>
      is a representation for <math|f+g>. So
      <math|I<rsub|\<mu\>><around*|(|f+g|)>=<big|sum><rsub|i=1><rsup|n\<cdot\>m><around*|(|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>+\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>=<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>|)>+<around*|(|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>|)>=I<rsub|\<mu\>><around*|(|f|)>+I<rsub|g><around*|(|g|)>>

      <item>If <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      then there exists representations <math|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>,
      <math|<big|sum><rsub|i=1><rsup|m>\<alpha\><rsub|i>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>>
      of <math|f> and <math|g>. Using <reference|intersection of simple
      functions> we have then that there exists a
      <math|\<beta\>:<around*|{|1,\<ldots\>,n\<cdot\>m|}>\<rightarrow\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>>
      such that <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>,
      <math|<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<bbb-1\><rsub|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>>
      are representation of <math|f> and <math|g>. Now
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have either\ 

      <\description>
        <item*|<math|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>=\<emptyset\>>>then
        <math|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>=\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>0=0=\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>0=\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<Rightarrow\>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<leqslant\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>>

        <item*|<math|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>\<neq\>\<emptyset\>>>then
        there exists a <math|x\<in\>A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>>
        and using <reference|\<less\>f\<less\>a\<gtr\>> we have
        <math|\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>=f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>=\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<Rightarrowlim\><rsub|measure
        is positive>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<leqslant\>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>>
      </description>

      So we have that <math|I<rsub|\<mu\>><around*|(|f|)>=<big|sum><rsub|i=1><rsup|n\<cdot\>m>\<lambda\><rsub|\<beta\><around*|(|i|)><rsub|1>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n\<cdot\>m>\<alpha\><rsub|\<beta\><around*|(|i|)><rsub|2>>\<cdot\>\<mu\><around*|(|A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>>|)>=I<rsub|\<mu\>><around*|(|g|)>>

      <item>As <math|C<rsub|0>=<big|sum><rsub|i=1><rsup|1>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>
      where <math|\<lambda\><rsub|1>=0<rsub|> and X<rsub|1>=X\<in\>\<cal-A\>>
      so that <math|I<rsub|\<mu\>><around*|(|C<rsub|0>|)>=<big|sum><rsub|i=1><rsup|1>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0\<cdot\>\<mu\><around*|(|X|)>=0>
    </enumerate>
  </proof>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space then <math|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>=<around*|{|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>\|0\<leqslant\>f|}>>
    (the set of positive real extended functions).
  </definition>

  We are now ready to define the integral for positive real extended
  functions.

  <\definition>
    <label|u-integral><index|<math|<big|int>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|<big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|I<rsub|\<mu\>><around*|(|g|)>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that g\<leqslant\>f|}>|)>>, we call this the
    <math|><with|font-series|bold|Lebesgue> <with|font-series|bold|integral>
    of <math|f>
  </definition>

  We show now that the <math|\<mu\>>-integral is a extension of
  <math|I<rsub|\<mu\>>>

  <\theorem>
    <label|u-integral extends Iu>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then <math|\<forall\>f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    we have <math|<big|int><rsub|+>f d\<mu\>=I<rsub|\<mu\>><around*|(|f|)>>
  </theorem>

  <\proof>
    If <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then as
    <math|\<forall\>x\<in\>X> we have <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>f\<leqslant\>f>
    so that <math|I<rsub|\<mu\>><around*|(|f|)>\<leqslant\>sup<around*|(|<around*|{|I<rsub|\<mu\>><around*|(|g|)>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that g\<leqslant\>f|}>|)>=<big|int><rsub|+>f d\<mu\>>. On the other
    hand if <math|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> such
    that <math|g\<leqslant\>f\<Rightarrowlim\><rsub|<text|<reference|properties
    of the integralof simple functions>>>I<rsub|\<mu\>><around*|(|g|)>\<leqslant\>I<rsub|f><around*|(|f|)>>
    so that <math|<big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|I<rsub|\<mu\>><around*|(|g|)>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that g\<leqslant\>f|}>|)>\<leqslant\>I<rsub|\<mu\>><around*|(|f|)>>
  </proof>

  <\corollary>
    <label|Lebesgue integral of 0 (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|<big|int><rsub|+>C<rsub|0>d\<mu\>=0>(where
    <math|C<rsub|0>:X\<rightarrow\>\<bbb-R\>> is defined by
    <math|C<rsub|0><around*|(|x|)>=0>)
  </corollary>

  <\proof>
    This follows from the previous theorem and <reference|properties of the
    integralof simple functions>..
  </proof>

  A benefit that the \ <math|\<mu\>>-integral has over the Riemann integral
  is the existance for different convergence theorems. One of them is the
  Beppo Levi theorem that will allows us to define the Lebesgue integral of a
  extended real function as a limit of integrals of simple functions. To
  proof the Beppo Levi theorem we first need the following lemma.

  <\lemma>
    <label|monotonicity of integral>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then <math|\<forall\>f,g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    with <math|f\<leqslant\>g> we have <math|<big|int><rsub|+>f
    d\<mu\>\<leqslant\><big|int><rsub|+>g d\<mu\>>
  </lemma>

  <\proof>
    Let <math|r\<in\><around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>f|}>> then <math|r=I<rsub|\<mu\>><around*|(|h|)>>
    where <math|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> and
    <math|\<forall\>x\<in\>X> we have <math|h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>\<Rightarrow\>h\<leqslant\>g>
    so that <math|r\<in\><around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>g|}>> proving that
    <math|><math|<around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>f|}>\<subseteq\><around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>g|}>>. Hence <math|<big|int><rsub|+>f
    d\<mu\>=sup<around*|(|<around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>f|}>|)>\<leqslant\><rsub|<text|<reference|inclusion
    and sup and inf>>>sup<around*|(|<around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    so that \ h\<leqslant\>g|}>|)>=<big|int><rsub|+>g d\<mu\>>
  </proof>

  <\theorem>
    <label|Beppo Levi><dueto|Beppo Levi>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    such that <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> then
    <math|<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>> (Note that by <reference|limit
    of Borel functions is a Borel function>
    <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    so its <math|\<mu\>>-integral is wel defined).
  </theorem>

  <\proof>
    As <math|\<forall\>x\<in\>X> and <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>>
    we have <math|f<rsub|i><around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)><around*|(|x|)>>
    we have using the \ lemma <reference|monotonicity of integral> that
    <math|<big|int><rsub|+>f<rsub|i> d\<mu\>\<leqslant\><big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    d\<mu\>>. So we have\ 

    <\equation>
      <label|eq 16.257.498>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
      d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      d\<mu\>
    </equation>

    Define <math|f=sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    and take <math|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> such
    that <math|h\<leqslant\>f>. Then given <math|x\<in\>X> and
    <math|\<alpha\>\<in\><around*|]|0,1|[>>we have
    <math|\<alpha\>\<cdot\>h<around*|(|x|)>\<less\>h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    , using the definition of a supremum there exists then a
    <math|N<rsub|x,\<alpha\>>\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<alpha\>\<cdot\>h<around*|(|x|)>\<less\>f<rsub|N<rsub|x,\<alpha\>>><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>,
    as <math|<around*|{|f<rsub|i><around*|(|x|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is by definition increasing we have\ 

    <\equation>
      <label|eq 16.259.498>\<forall\>x\<in\>X\<wedge\>\<forall\>\<alpha\>\<in\><around*|]|0,1|[><text|
      there exists a >N<rsub|x,\<alpha\>>\<in\>\<bbb-N\><rsub|0><text| such
      that >\<forall\>i\<geqslant\>N<rsub|x,a> <text|we have >
      \<alpha\>\<cdot\>h<around*|(|x|)>\<less\>f<rsub|i><around*|(|x|)>
    </equation>

    If we define then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|B<rsub|j>=<around*|{|\<alpha\>\<cdot\>h\<less\>f<rsub|i>|}>\<subseteq\>X>
    then for <math|x\<in\>X> we have by the above that
    <math|\<alpha\>\<cdot\>h<around*|(|x|)>\<less\>f<rsub|N<rsub|x,\<alpha\>>><around*|(|x|)>\<Rightarrow\>x\<in\><around*|{|\<alpha\>\<cdot\>h\<less\>f<rsub|N<rsub|x,\<alpha\>>>|}>>
    hence \ 

    <\equation>
      <label|eq 16.258.498>X=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
    </equation>

    If <math|i\<in\>\<bbb-N\><rsub|0>> then for
    <math|x\<in\>B<rsub|i>\<Rightarrow\>\<alpha\>\<cdot\>h<around*|(|x|)>\<less\>f<rsub|i><around*|(|x|)>\<leqslant\><rsub|>f<rsub|i+1><around*|(|x|)>\<Rightarrow\>x\<in\>B<rsub|i+1>>
    hence using the above we get\ 

    <\equation>
      <label|eq 16.260.498>B<rsub|i>\<uparrow\>X
    </equation>

    Let <math|i\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X> then if
    <math|x\<in\>B<rsub|i>> we have <math|\<alpha\>\<cdot\>\<bbb-1\><rsub|B<rsub|i>*><around*|(|x|)>\<cdot\>h<around*|(|x|)>=\<alpha\>\<cdot\>h<around*|(|x|)>\<less\>f<rsub|i><around*|(|x|)>=\<bbb-1\><rsub|B<rsub|i>><around*|(|x|)>\<cdot\>f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|x|)>>
    and if <math|x\<nin\>B<rsub|i>> then <math|\<alpha\>\<cdot\>\<bbb-1\><rsub|B<rsub|i>><around*|(|x|)>\<cdot\>h<around*|(|x|)>=0\<leqslant\>0=\<bbb-1\><rsub|B<rsub|i>><around*|(|x|)>\<cdot\>f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|x|)>>,
    so we have\ 

    <\equation>
      <label|eq 16.261.498>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
      >\<alpha\>\<cdot\>h\<cdot\>\<bbb-1\><rsub|B<rsub|i>>\<leqslant\>\<bbb-1\><rsub|B<rsub|i>>\<cdot\>f<rsub|i>\<leqslant\>f<rsub|i>
    </equation>

    As <math|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> it has a
    representation <math|h=<big|sum><rsub|i=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<bbb-1\><rsub|A<rsub|i>>>.
    Next <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<alpha\>\<cdot\>h\<cdot\>\<bbb-1\><rsub|B<rsub|i>>=<big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k>>\<cdot\>\<bbb-1\><rsub|B<rsub|i>>\<equallim\><rsub|<text|<reference|1ANB=1A*1B>>><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<bbb-1\><rsub|A<rsub|k><big|cap>B<rsub|i>>>
    so that <math|\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>=I<rsub|\<mu\>><around*|(|\<alpha\>\<cdot\>h\<cdot\>\<bbb-1\><rsub|B<rsub|i>>|)>\<equallim\><rsub|<text|<reference|u-integral
    extends Iu>>><big|int><rsub|+>\<alpha\>\<cdot\>h\<cdot\>\<bbb-1\><rsub|B<rsub|i>>
    d\<mu\>\<leqslant\><big|int><rsub|+>f<rsub|i>
    d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
    d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)><rsub|>> (where we have used
    <reference|eq 16.261.498> together with lemma <reference|monotonicity of
    integral>). So we have\ 

    <\equation>
      <label|eq 16.262.498>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
      >\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
      d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    As <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>> we have that
    <math|A<rsub|k>=A<rsub|k><big|cap>X\<equallim\><rsub|<text|<reference|eq
    16.258.498>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|k><big|cap>B<rsub|i>>
    which together with <reference|eq 16.260.498> gives
    <math|<around*|(|A<rsub|k><big|cap>B<rsub|i>|)>\<uparrow\>A<rsub|k>>. As
    <math|\<mu\>> is a measure we have then using <reference|conditions for a
    pre-measure> (2) that <math|\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>\<uparrow\>\<mu\><around*|(|A<rsub|k>|)>\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>=\<mu\><around*|(|A<rsub|k>|)>>.
    Hence <math|\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|k>|)>=\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|i>\<cdot\><around*|(|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|limit
    of finite sums in the extented reals>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|\<infty\>>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|equivalence
    of limits on increasing (decreasing) sequences of extented
    reals>>>sup<around*|(|<around*|{|\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|\<infty\>>\<lambda\><rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|k><big|cap>B<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><rsub|see<text|
    <reference|eq 16.262.498>>>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>>.
    As <math|\<alpha\>\<cdot\><big|sum><rsub|k=1><rsup|n>\<lambda\><rsub|k>\<cdot\>\<mu\><around*|(|A<rsub|k>|)>=\<alpha\>\<cdot\><big|int><rsub|+>h
    d\<mu\>> we conclude that <math|\<forall\>h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    with <math|h\<leqslant\>f> we have <math|\<alpha\>\<cdot\><big|int><rsub|+>h
    d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
    d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>>. Taking the supremum we have
    then that <math|sup<around*|(|<around*|{|\<alpha\>\<cdot\><big|int><rsub|+>h
    d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]> with
    h\<leqslant\>f|}>|)>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
    d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>>. As
    <math|\<alpha\>\<cdot\><big|int><rsub|+>f
    d\<mu\>=\<alpha\>\<cdot\>sup<around*|(|<around*|{|<around*|{|I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    with h\<leqslant\>f|}>|}>|)>\<equallim\><rsub|0\<less\>\<alpha\><text|
    and <reference|-sup A=inf -A>>>sup<around*|(|<around*|{|<around*|{|\<alpha\>\<cdot\>I<rsub|\<mu\>><around*|(|h|)>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    with h\<leqslant\>f|}>|}>|)>\<equallim\><rsub|<text|<reference|u-integral
    extends Iu>>>sup<around*|(|<around*|{|\<alpha\>\<cdot\><big|int>h
    d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]> with
    h\<leqslant\>f|}>|)>> we conclude that

    <\equation>
      <label|eq 16.263.498>\<forall\>\<alpha\>\<in\><around*|]|0,1|[><text|
      we have >\<alpha\>\<cdot\><big|int><rsub|+>f
      d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
      d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    As we have also <math|<big|int><rsub|+>f
    d\<mu\>=1\<cdot\><big|int><rsub|+>f d\<mu\>=<around*|(|<around*|(|<below|lim|\<alpha\>\<uparrow\>1>
    \<alpha\>|)>\<cdot\><big|int><rsub|+>f
    d\<mu\>|)>\<equallim\><rsub|<text|<reference|left, right limit of sum and
    scalar product>>><below|lim|\<alpha\>\<uparrow\>1><around*|(|\<alpha\>\<cdot\><big|int><rsub|+>f
    d\<mu\>|)>> we have using <reference|eq 16.263.498> and <reference|limit
    for f\<less\>=L or L\<less\>=f> that <math|<big|int><rsub|+>f
    d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
    d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>>. Combining this with
    <reference|eq 16.257.498> proves finally that\ 

    <\equation*>
      <big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|k>
      d\<mu\>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation*>
  </proof>

  <\corollary>
    <label|Beppo Levi consequence (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    and <math|<around*|{|f<rsub|>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>f<rsub|i>\<less\>f<rsub|i+1>>
    and <math|f=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>> then
    <math|<big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>
    d\<mu\>>. Note that by <reference|limit of Borel functions is a Borel
    function> <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
  </corollary>

  <\proof>
    As <math|f=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>> we have that
    <math|\<forall\>x\<in\>X> that <math|f<around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>> so
    using <reference|equivalence of limits on increasing (decreasing)
    sequences of extented reals> we have that
    <math|f<around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    proving that <math|f=sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>.
    Applying the Beppo Levi theorem (see <reference|Beppo Levi>) gives then
    that

    <\equation>
      <label|eq 16.264.499><big|int><rsub|+>f
      d\<mu\>=<below|sup|i\<rightarrow\>\<infty\>><around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
      d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> we have by
    <reference|monotonicity of integral> that
    <math|<big|int><rsub|+>f<rsub|i> d\<mu\>\<leqslant\><big|int><rsub|+>f<rsub|i+1>
    d\<mu\>> hence using <reference|equivalence of limits on increasing
    (decreasing) sequences of extented reals> we have
    <math|sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f
    <rsub|i>d\<mu\>> proving that\ 

    <\equation*>
      <big|int><rsub|+>f d\<mu\>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>
      d\<mu\>
    </equation*>
  </proof>

  <\corollary>
    <label|Beppo Levi consequence (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then there exists a family <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    with <math|f=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>> and
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>f<rsub|i>\<less\>f<rsub|i+1>>
    such that <math|<big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>
    d\<mu\>>
  </corollary>

  <\proof>
    As <math|><math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    there exists by <reference|Borel function as limit of simple functions> a
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    such that <math|f=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>>. Using
    then the previous corollary (see <reference|Beppo Levi consequence (1)>)
    we have <math|<big|int><rsub|+>f d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>
    d\<mu\>>
  </proof>

  We can use the Beppo Levi theorem and its consequences together with the
  limit properties to transfer the properties of the integral of simple
  functions to the Lebesgue integral. As is used in the next theorem.

  <\theorem>
    <label|properties of the Lebesgue integral (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then\ 

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|<big|int><rsub|+>\<bbb-1\><rsub|A> d\<mu\>=\<mu\><around*|(|A|)>>

      <item>For every <math|f,g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      we have\ 

      <\enumerate>
        <item><math|\<forall\>\<alpha\>\<in\><around*|[|0,\<infty\>|[>> we
        have <math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)>
        d\<mu\>=\<alpha\>\<cdot\><big|int><rsub|+>f d\<mu\>>

        <item><math|<big|int><rsub|+><around*|(|f+g|)>
        d\<mu\>=<big|int><rsub|+>f d\<mu\>+<big|int><rsub|+>g d\<mu\>> (note
        as <math|0\<leqslant\>f,g> the sum is always defined)

        <item>If<math|f\<leqslant\>g> then <math|<big|int><rsub|+>f
        d\<mu\>\<leqslant\><big|int><rsub|+>g d\<mu\>>
      </enumerate>
    </enumerate>

    \;

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|\<bbb-1\><rsub|A>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
        we have that <math|<big|int><rsub|+>\<bbb-1\><rsub|A>
        d\<mu\>\<equallim\><rsub|<text|<reference|u-integral extends
        Iu>>>I<rsub|\<mu\>><around*|(|\<bbb-1\><rsub|A>|)>\<equallim\><rsub|<text|<reference|properties
        of the integralof simple functions>>>\<mu\><around*|(|A|)>>

        <item>Using <reference|Beppo Levi consequence (2)> there exists
        <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>,<around*|{|g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
        such that <math|f=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>,g=<below|lim|i\<rightarrow\>\<infty\>>g<rsub|i>,<big|int><rsub|+>f
        d\<mu\>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>
        d\<mu\>> and <math|<big|int><rsub|+>g
        d\<mu\>=<below|lim|i\<rightarrow\>\<infty\>><big|int><rsub|+>g<rsub|i>
        d\<mu\>>. Using this we have

        <\enumerate>
          <item><math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>=<big|int><rsub|+><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>f<rsub|i>|)>|)>d\<mu\>\<equallim\><rsub|<text|<reference|Beppo
          Levi consequence (1)>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f<rsub|i>|)>d\<mu\>|)>\<equallim\><rsub|<text|<reference|u-integral
          extends Iu>>><below|lim|i\<rightarrow\>\<infty\>>I<rsub|\<alpha\>><around*|(|\<alpha\>\<cdot\>f<rsub|i>|)>\<equallim\><rsub|<text|<reference|properties
          of the integralof simple functions>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>I<rsub|\<mu\>><around*|(|f<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|properties
          of the limit in the extented reals>>>\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>>I<rsub|\<mu\>><around*|(|f<rsub|i>|)>\<equallim\><rsub|<text|<reference|u-integral
          extends Iu>>>\<alpha\>\<cdot\><below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>\<equallim\><rsub|<text|<reference|Beppo
          Levi consequence (1)>>>\<alpha\>\<cdot\><big|int><rsub|+>f d\<mu\>>

          <item><math|<big|int><rsub|+><around*|(|f+g|)>d\<mu\>=<big|int><rsub|+><around*|(|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i>+<below|lim|i\<rightarrow\>\<infty\>>g<rsub|i>|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
          of the limit in the extented reals>>><big|int><rsub|+><around*|(|<below|lim|i\<rightarrow\>\<infty\>><around*|(|f<rsub|i>+g<rsub|i>|)>|)>d\<mu\>\<equallim\><rsub|<text|<reference|Beppo
          Levi consequence (1)>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+><around*|(|f<rsub|i>+g<rsub|i>|)>d\<mu\>|)>\<equallim\><rsub|<text|<reference|u-integral
          extends Iu>>><below|lim|i\<rightarrow\>\<infty\>>I<rsub|\<alpha\>><around*|(|f<rsub|i>+g<rsub|i>|)>\<equallim\><rsub|<text|<reference|properties
          of the integralof simple functions>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|I<rsub|\<mu\>><around*|(|f<rsub|i>|)>+I<rsub|\<mu\>><around*|(|g<rsub|i>|)>|)>\<equallim\><rsub|<text|<reference|properties
          of the limit in the extented reals>>><below|lim|i\<rightarrow\>\<infty\>>I<rsub|\<mu\>><around*|(|f<rsub|i>|)>+<below|lim|i\<rightarrow\>\<infty\>>I<rsub|\<mu\>><around*|(|g<rsub|i>|)>\<equallim\><rsub|<text|<reference|u-integral
          extends Iu>>><below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>+<below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>g<rsub|i>d\<mu\>|)>\<equallim\><rsub|<text|<reference|Beppo
          Levi consequence (1)>>><big|int><rsub|+>f
          d\<mu\>+<big|int><rsub|+>g d\<mu\>>

          <item>This is already proved in <reference|monotonicity of
          integral>
        </enumerate>
      </enumerate>
    </proof>
  </theorem>

  <\corollary>
    <label|properties of the Lebesgue integral (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space,<math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    defined by <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
    is a extended real Borel function and
    <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>>
  </corollary>

  <\proof>
    We prove this by induction, so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|if
    ><around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>><text|
    then <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is real extended Borel
    and ><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|n=1> then
      <math|\<forall\>x\<in\>X> we have <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i><around*|(|x|)>=f<rsub|1><around*|(|x|)>>
      proving that <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>> a
      extended real Borel function and <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|1>f<rsub|i>|)>d\<mu\>=<big|int><rsub|+>f<rsub|1>d\<mu\>=<big|sum><rsub|i=1><rsup|1><big|int><rsub|+>f<rsub|i>d\<mu\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+\<cal-S\>>>then
      <math|\<forall\>x\<in\>X> we have <math|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i><around*|(|x|)>=<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>|)>+f<rsub|n+1><around*|(|x|)>>
      proving that <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      (because <math|n\<in\>\<cal-S\>> and <reference|properties of Borel
      functions (sum,product,min,max)>). Also
      <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>|)>d\<mu\>=<big|int><rsub|+><around*|(|<big|sum><rsub|i<rsup|>=1><rsup|n>f<rsub|i>+f<rsub|n+1>|)>\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>><big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>+<big|int><rsub|+>f<rsub|n+1>d\<mu\>\<equallim\><rsub|n\<in\>\<cal-S\>><big|sum><rsub|i=1><rsup|n><big|int><rsub|+>f<rsub|i>d\<mu\>+<big|int><rsub|+>f<rsub|n+1>d\<mu\>=<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>d\<mu\>>
    </description>
  </proof>

  <\corollary>
    <label|integral of inifinite sum of positive functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    defined by <math|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i><around*|(|x|)>>
    is a extended real Borel functions and
    \ <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>|)>d\<mu\>=<big|sum><rsub|i=1><rsup|n><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>>
  </corollary>

  <\proof>
    First <math|\<forall\>x\<in\>X> we have that
    <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<around*|(|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>|)><around*|(|x|)>>
    proving that

    <\equation>
      <label|eq 16.265.500><big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>.
    </equation>

    Using the previous lemma (see <reference|properties of the Lebesgue
    integral (2)>) we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
    <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X.\<cal-A\>|]>|\<bar\>>>.
    Using the fact that <math|n\<in\>\<bbb-N\><rsub|0> we have
    \<forall\>x\<in\>X> that <math|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i><around*|(|x|)>=f<rsub|n+1><around*|(|x|)>+<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>\<geqslant\><big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
    proving that <math|<around*|{|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    is increasing, further <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
    of the Lebesgue integral (2)>>><big|sum><rsub|i=1><rsup|n><big|int><rsub|+>f<rsub|i>d\<mu\>>.
    Using then the Beppo Levi theorem (see <reference|Beppo Levi consequence
    (1)>) we have using <reference|eq 16.265.500> that
    <math|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>> is a extended real
    function and <math|<big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>d\<mu\>|)>\<equallim\><rsub|<text|<reference|eq
    16.265.500>>><big|int><rsub|+><around*|(|<below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>\<equallim\><rsub|<text|<reference|Beppo
    Levi consequence (1)>>><below|lim|n\<rightarrow\>\<infty\>><big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n><big|int><rsub|+>f<rsub|i>d\<mu\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><big|int><rsub|+>f<rsub|i>d\<mu\>>
  </proof>

  We proceed now to prove another well know convergence theorem from Fatou

  <\theorem>
    <label|Fatou><dueto|Fatou>Let Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|<below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i>\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>>
    (see <reference|limit of Borel functions is a Borel function>) and
    <math|<big|int><rsub|+><below|lim inf|i\<Rightarrow\>\<infty\>>f<rsub|i>
    d\<mu\>\<leqslant\><below|lim inf|i\<rightarrow\>\<infty\>><big|int><rsub|+>f<rsub|i>d\<mu\>>
  </theorem>

  <\proof>
    The fact that <math|<below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    follows from <reference|limit of Borel functions is a Borel function>
    (4). Now <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>> we have that
    <math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>\<in\><wide|\<cal-M\><rsup|+><around*|(|X,\<cal-A\>|)>|\<bar\>>>.
    Next <math|\<forall\>x\<in\>X>and <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>>
    we have <math|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>\<Rightarrow\>inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|k+1,\<ldots\>.,\<infty\>|}>|}>|)>>
    hence <math|<around*|{|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|}><rsub|k\<in\>\<bbb-N\><rsub|0>>\<subseteq\><rsub|<text|<reference|lemma
    16.205>>><wide|\<cal-M\><rsup|+><around*|(|X,\<cal-A\>|)>|\<bar\>>> is a
    increasing sequence of extended real Borel functions, so we can apply the
    Beppo Levi theorem. Hence <math|<big|int><rsub|+><below|lim
    inf|i\<rightarrow\>\<infty\>>f<rsub|i>d\<mu\>\<equallim\><rsub|definition><big|int><rsub|+><around*|(|<below|lim|k\<rightarrow\>\<infty\>><around*|(|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>|)>|)>d\<mu\>\<equallim\><rsub|<text|<reference|Beppo
    Levi consequence (1)>>>sup<around*|(|<around*|{|<big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>|}>\|k\<in\>\<bbb-N\><rsub|0>|)>>
    proving that\ 

    <\equation>
      <label|eq 16.266.501><big|int><rsub|+><below|lim
      inf|i\<rightarrow\>\<infty\>>f<rsub|i>d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>|}>\|k\<in\>\<bbb-N\><rsub|0>|)>
    </equation>

    As <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>> we have
    <math|\<forall\>j\<geqslant\>k> that <math|\<forall\>x\<in\>X>
    <math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>f<rsub|j>\<Rightarrow\>inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>f<rsub|j><around*|(|x|)>\<Rightarrowlim\><rsub|<text|<reference|properties
    of the Lebesgue integral (1)> 2(c)>><big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>\<leqslant\><big|int><rsub|+>f<rsub|j>d\<mu\>>.
    Hence we have <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>> that
    <math|<big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>\<leqslant\>inf<around*|(|<around*|{|<big|int><rsub|+>f<rsub|j>d\<mu\>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
    proving that <math|sup<around*|(|<around*|(|<around*|{|<big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>|}>\|k\<in\>\<bbb-N\><rsub|0>|)>|)>\<leqslant\>sup<around*|(|<around*|{|inf<around*|(|<around*|{|<big|int><rsub|+>f<rsub|j>d\<mu\>\|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim
    inf|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>>
    giving

    <\equation>
      <label|eq 16.267.501>sup<around*|(|<around*|(|<around*|{|<big|int><rsub|+>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>d\<mu\>|}>\|k\<in\>\<bbb-N\><rsub|0>|)>|)>\<leqslant\><below|lim
      inf|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>
    </equation>

    Combining \ <reference|eq 16.266.501> with <reference|eq 16.267.501>
    gives finally\ 

    <\equation*>
      <big|int><rsub|+><below|lim inf|i\<rightarrow\>\<infty\>>f<rsub|i>d\<mu\>\<leqslant\><below|lim
      inf|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>f<rsub|i>d\<mu\>|)>
    </equation*>

    proving the theorem.
  </proof>

  <section|Lebesgue integral>

  <subsection|Definition and properties>

  To define the integral on general real Borel functions we make use of the
  fact that we can always write <math|f> as <math|f<rsup|+>-f<rsup|->>.\ 

  <\definition>
    <label|Lebesgue integral of Borel function><index|<math|<big|int>f
    d\<mu\>>>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be
    a measure space then <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> is
    <with|font-series|bold|Lebesgue integrable> if
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>> (<math|f>
    is a extended real Borel function) and \ <math|<big|int><rsub|+>f<rsup|+>
    d\<mu\>\<less\>\<infty\>\<wedge\><big|int><rsub|+>f<rsup|->d\<mu\>\<less\>\<infty\>>.
    The <with|font-series|bold|Lebesgue integral> <math|<big|int>f d\<mu\>>
    is defined by <math|<big|int>f d\<mu\>=<big|int><rsub|+>f<rsup|+>d\<mu\>-<big|int><rsub|->f<rsup|->d\<mu\>>.
    Hence <math|<big|int>f d\<mu\>\<less\>\<infty\>>
  </definition>

  <\note>
    The conditions <math|<big|int><rsub|+>f<rsup|+>d\<mu\>\<less\>\<infty\>\<wedge\><big|int><rsub|+>f<rsup|->d\<mu\>\<less\>\<infty\>>
    is needed so that we never have <math|\<infty\>-\<infty\>> in the
    definition of the integral.
  </note>

  <\definition>
    <index|<math|\<cal-L\><rsup|1><around*|[|X,\<cal-A\>|]>>>Let
    \ <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then the set of all Lebesgue integrable function graphs is noted by
    <wide|<math|\<cal-L\><rsub|\<mu\>><rsup|1>>|\<bar\>> so
    <math|<wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>=<around*|{|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>\|f<text|
    is Lebesgue integrable>|}>>.
  </definition>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure then <math|\<cal-L\><rsup|1><rsub|\<mu\>>=<around*|{|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\|f<around*|(|X|)>\<subseteq\>\<bbb-R\>|}>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
    In other words <math|\<cal-L\><rsup|1><rsub|\<mu\>>> is the set of all
    finite Lebesgue integrable functions.
  </definition>

  <\theorem>
    <label|Lebesgue integral as extension>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    such that <math|<big|int><rsub|+>f d\<mu\>\<less\>\<infty\>> then
    <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> and
    <math|<big|int>f d\<mu\>=<big|int><rsub|+>f d\<mu\>>. Also if
    <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> and
    <math|0\<leqslant\>f> then <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    and <math|<big|int>f d\<mu\>=<big|int><rsub|+>f d\<mu\>>.
  </theorem>

  <\proof>
    As <math|0\<leqslant\>f> we <math|f<rsub|+>=f\<wedge\>f<rsub|->=0=0\<cdot\>\<bbb-1\><rsub|X>>
    [see <reference|f=f+-f-> (1)] hence <math|<big|int><rsub|+>f<rsub|+>d\<mu\>=<big|int><rsub|+>f
    d\<mu\>\<less\>\<infty\>> and <math|<big|int><rsub|+>f<rsub|->d\<mu\>=<big|int>0\<cdot\>\<bbb-1\><rsub|X>d\<mu\>\<equallim\><rsub|<text|<reference|properties
    of the Lebesgue integral (1)>>>0\<cdot\>\<mu\><around*|(|X|)>=0\<less\>\<infty\>>
    proving that <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
    Further <math|<big|int>\<bbb-1\><rsub|A>d\<mu\>=<big|int><rsub|+>f<rsub|+>d\<mu\>-<big|int><rsub|+>f<rsub|->d\<mu\>=<big|int><rsub|+>f
    d\<mu\>-0=<big|int><rsub|+>f d\<mu\>>. For the second part of the theorem
    note that <math|0\<leqslant\>f> and <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    proving that <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>,
    further we have <math|<big|int><rsub|+>f
    d\<mu\>\<equallim\><rsub|0\<leqslant\>f\<Rightarrow\>f=f<rsub|+>><big|int><rsub|+>f<rsub|+>d\<mu\>\<less\>\<infty\>>
    so we can apply the first part of the theorem to get <math|<big|int>f
    d\<mu\>=<big|int><rsub|+>f d\<mu\>>
  </proof>

  <\corollary>
    <label|Lebesgue integral of 0 (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|<big|int>C<rsub|0>d\<mu\>=0>(where
    <math|C<rsub|0>:X\<rightarrow\>\<bbb-R\>> is defined by
    <math|C<rsub|0><around*|(|x|)>=0>)
  </corollary>

  <\proof>
    This follows from the previous theorem and <reference|Lebesgue integral
    of 0 (1)>.
  </proof>

  The following theorem shows conditions for a function to be Lebesgue
  integrable.

  <\theorem>
    <label|conditions for Lebesgue integrability>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then the following are equivalent

    <\enumerate>
      <item><math|f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>

      <item><math|f<rsub|+>,f<rsub|->\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>

      <item><math|<around*|\||f|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>

      <item><math|\<exists\>g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
      such that <math|<around*|\||f|\|>\<leqslant\>g>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Using the definition of Lebesgue
      integrability we have that <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>\<Rightarrowlim\><rsub|<text|<reference|f+,f-
      is Borel if f is>> and 0\<leqslant\>f<rsub|+>,f<rsub|-><rsub|>>f<rsub|+>,f<rsub|->\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      and <math|<big|int><rsub|+>f<rsub|+>d\<mu\>,<big|int><rsub|+>f<rsub|->d\<mu\>\<less\>\<infty\>>.
      Using <reference|Lebesgue integral as extension> we conclude then that
      <math|f<rsub|+>f<rsub|->\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>

      <item*|<math|2\<Rightarrow\>3>>First as
      <math|<around*|\||f|\|>=f<rsub|+>+f<rsub|->> and
      <math|f<rsub|+>,f<rsub|->\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      we have using <math|0\<leqslant\>f<rsub|+>,f<rsub|->> that
      <math|<around*|\||f|\|>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
      Further <math|0\<leqslant\><around*|\||f|\|>> so that
      <math|<around*|\||f|\|><rsub|+>=<around*|\||f|\|>> and
      <math|<around*|\||f|\|><rsub|->=0> so that
      <math|<big|int><rsub|+><around*|\||f|\|><rsub|+>=<big|int><rsub|+><around*|\||f|\|>=<big|int><rsub|+><around*|(|f<rsub|+>+f<rsub|->|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>><big|int><rsub|+>f<rsub|+>d\<mu\>+<big|int><rsub|+>f<rsub|->d\<mu\>\<equallim\><rsub|0\<leqslant\>f<rsub|+>,f<rsub|->><big|int><rsub|+><around*|(|f<rsub|+>|)><rsub|+>d\<mu\>+<big|int><rsub|+><around*|(|f<rsub|->|)><rsub|+>d\<mu\>\<less\>0>
      [as <math|f<rsub|+>,f<rsub|->\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>]\ 

      <item*|<math|3\<Rightarrow\>4>>This is trivial as
      <math|<around*|\||f|\|>\<leqslant\><around*|\||f|\|>>

      <item*|<math|4\<Rightarrow\>1>>As <math|g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>\<subseteq\><wide|\<cal-M\><rsup|><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      and <math|0\<leqslant\><around*|\||f|\|>\<leqslant\>g> we have
      <math|<big|int><rsub|+>g d\<mu\>\<leqslant\><big|int><rsub|+>g<rsub|+>d\<mu\>\<less\>\<infty\>>
      [see <reference|properties of the Lebesgue integral (1)>]. Further
      <math|f<rsub|+>,f<rsub|->\<leqslant\>f<rsub|+>+f<rsub|->=<around*|\||f|\|>\<leqslant\>g>
      so we have that <math|<big|int><rsub|+>f<rsup|+>d\<mu\>\<leqslant\><rsub|<text|<reference|monotonicity
      of integral>>><big|int><rsub|+>g d\<mu\>\<less\>\<infty\>> and
      <math|<big|int><rsub|+>f<rsup|->d\<mu\>\<leqslant\><rsub|<text|<reference|monotonicity
      of integral>>><big|int><rsub|+>g d\<mu\>\<less\>\<infty\>> proving as
      we assume that <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      that <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
    </description>
  </proof>

  We can now extend the properties of the Lebesgue Integral on positive
  extended real Borel functions to the general case.

  \;

  <\theorem>
    <label|Properties of the Lebesgue Integral (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f,g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>,
    <math|\<alpha\>\<in\>\<bbb-R\>> then we have\ 

    <\enumerate>
      <item><math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
      and <math|<big|int>\<alpha\>\<cdot\>f
      d\<mu\>=\<alpha\>\<cdot\><big|int>f d\<mu\>>

      <item>If <math|A\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> then
      <math|\<bbb-1\><rsub|A>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      and <math|<big|int>\<bbb-1\><rsub|A>d\<mu\>=\<mu\><around*|(|A|)>>

      <item><math|f+g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>> and
      <math|<big|int><around*|(|f+g|)>d\<mu\>=<big|int>f d\<mu\>+<big|int>g
      d\<mu\>> (whenever <math|f+g> is defined)

      <item><math|min<around*|(|f,g|)>,max<around*|(|f,g|)>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>

      <item>If <math|f\<leqslant\>g\<Rightarrow\><big|int>f
      d\<mu\>\<leqslant\><big|int>g d\<mu\>>\ 

      <item><math|<around*|\||<big|int>f d\<mu\>|\|>\<leqslant\><big|int><around*|\||f|\|>d\<mu\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>First using <reference|properties of Borel functions
      (sum,product,min,max)> (3) we have that
      <math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
      For <math|\<alpha\>> we must consider two case

      <\description>
        <item*|<math|0\<leqslant\>\<alpha\>>>then<math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|+>d\<mu\>\<equallim\><rsub|<text|<reference|f=f+-f->
        (3)>><big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f<rsub|+>|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|+>d\<mu\>\<less\>\<infty\>>
        and <math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|->d\<mu\>\<equallim\><rsub|<text|<reference|f=f+-f->
        (3)>><big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f<rsup|><rsub|->|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|->d\<mu\>\<less\>\<infty\>>
        proving that

        <\equation*>
          \<alpha\>\<cdot\>f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>
        </equation*>

        and that <math|<big|int><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>=<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|+>d\<mu\>-<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|><rsub|->d\<mu\>=\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|->d\<mu\>-\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|->d\<mu\>=\<alpha\>\<cdot\><around*|(|<big|int><rsub|+>f<rsub|+>
        d\<mu\>-<big|int><rsub|+>f<rsub|->|)>d\<mu\>=\<alpha\>\<cdot\><big|int>f
        d\<mu\>> giving\ 

        <\equation*>
          <big|int><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>=\<alpha\>\<cdot\><big|int>f
          d\<mu\>
        </equation*>

        <item*|<math|\<alpha\>\<less\>0>>then<math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|+>d\<mu\>\<equallim\><rsub|<text|<reference|f=f+-f->
        (3)>><big|int><rsub|+><around*|(|-\<alpha\>\<cdot\>f<rsub|->|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>-\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|->d\<mu\>\<less\>\<infty\>>
        and <math|<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|->d\<mu\>\<equallim\><rsub|<text|<reference|f=f+-f->
        (3)>><big|int><rsub|+><around*|(|-\<alpha\>\<cdot\>f<rsub|+>|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>-\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|+>d\<mu\>\<less\>\<infty\>>
        proving that

        <\equation*>
          \<alpha\>\<cdot\>f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>
        </equation*>

        and that <math|<big|int><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>=<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|+>d\<mu\>-<big|int><rsub|+><around*|(|\<alpha\>\<cdot\>f|)><rsub|->d\<mu\>=-\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|->d\<mu\>-<around*|(|-\<alpha\>\<cdot\><big|int><rsub|+>f<rsub|+>d\<mu\>|)>=\<alpha\>\<cdot\><around*|(|<big|int><rsub|+>f<rsub|+>d\<mu\>-<big|int><rsub|+>f<rsub|->|)>d\<mu\>=\<alpha\>\<cdot\><big|int>f
        d\<mu\>> giving\ 

        <\equation*>
          <big|int><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>=\<alpha\>\<cdot\><big|int>f
          d\<mu\>
        </equation*>
      </description>

      <item>If <math|A\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> then <math|\<cal-A\>>
      then <math|\<bbb-1\><rsub|A>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      (as <math|0\<leqslant\>\<bbb-1\><rsub|A>> and <reference|1A is Borel>)
      and as <math|<big|int><rsub|+><around*|(|\<bbb-1\><rsub|A>|)>d\<mu\>\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>>\<mu\><around*|(|A|)>\<less\>\<infty\>>
      we conclude using <reference|Lebesgue integral as extension> that
      <math|\<bbb-1\><rsub|A>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      and <math|<big|int>\<bbb-1\><rsub|A>d\<mu\>=<big|int><rsub|+>\<bbb-1\><rsub|A>d\<mu\>\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>>\<mu\><around*|(|A|)>>

      <item>First as <math|f,g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
      we have by <reference|conditions for Lebesgue integrability> that
      <math|<around*|\||f|\|>,<around*|\||g|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
      so that <math|<around*|\||f|\|>,<around*|\||g|\|>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>,
      by <reference|properties of Borel functions (sum,product,min,max)> we
      have <math|<around*|\||f|\|>+<around*|\||g|\|>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>\<subseteq\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>><text|>>.
      As <math|\<forall\>x\<in\>X\<vDash\><around*|\||f<around*|(|x|)>+g<around*|(|x|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>+<around*|\||g<around*|(|x|)>|\|>\<Rightarrow\><around*|\||f+g|\|>\<leqslant\><around*|\||f|\|>+<around*|\||g|\|>>
      we have using <reference|conditions for Lebesgue integrability> that
      <math|<around*|\||f+g|\|>\<in\>\<cal-L\><rsup|1><around*|[|X,\<cal-A\>|]>>
      and applying <reference|conditions for Lebesgue integrability> again we
      reach the conclusion

      <\equation*>
        f+g\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>
      </equation*>

      Next as <math|<around*|(|f+g|)><rsub|+>-<around*|(|f+g|)><rsub|->=f+g=<around*|(|f<rsub|+>-f<rsub|->|)>+<around*|(|g<rsub|+>-g<rsub|->|)>\<equallim\><rsub|<text|<reference|(a-b)+(c-d)=(a+c)-(b+d)>>><around*|(|f<rsub|+>+g<rsub|+>|)>-<around*|(|f<rsub|->+g<rsub|->|)>>,
      applying <reference|a-b=c-d=\<gtr\>a+d=c+b> gives
      <math|<around*|(|f+g|)><rsub|+>+<around*|(|f<rsub|->+g<rsub|->|)>=<around*|(|f<rsub|+>+g<rsub|+>|)>+<around*|(|f+g|)><rsub|->>.
      As <math|<around*|(|f+g|)><rsub|+>,<around*|(|f<rsub|->+g<rsub|->|)>,<around*|(|f<rsub|+>+g<rsub|+>|)>,<around*|(|f+g|)><rsub|->\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      (see <reference|properties of Borel functions (sum,product,min,max)>,
      <reference|f Borel =\<gtr\> \|f\| is Borel>) we can use
      <reference|properties of the Lebesgue integral (1)> to give
      <math|<big|int><rsub|+><around*|(|f+g|)><rsub|+>d\<mu\>+<big|int><rsub|+>f<rsub|->d\<mu\>+<big|int><rsub|+>g<rsub|->d\<mu\>=<big|int><rsub|+>f<rsub|+>d\<mu\>+<big|int><rsub|+>g<rsub|+>d\<mu\>+<big|int><around*|(|f+g|)><rsub|+>d\<mu\>>.
      Using the fact that all the integrals are by definition of the
      integrability of <math|f+g,f,g> finite we have then that
      <math|<big|int><rsub|+><around*|(|f+g|)><rsub|+>d\<mu\>-<big|int><rsub|+><around*|(|f+g|)><rsub|->d\<mu\>=<around*|(|<big|int><rsub|+>f<rsub|+>d\<mu\>-<big|int><rsub|+>f<rsub|->d\<mu\>|)>+<around*|(|<big|int><rsub|+>g<rsub|+>d\<mu\>-<big|int><rsub|+>g<rsub|->d\<mu\>|)>>.
      Applying then the definition of the general case of the Lebesgue
      integral gives\ 

      <\equation*>
        <big|int><around*|(|f+g|)>d\<mu\>=<big|int>f d\<mu\>+<big|int>g
        d\<mu\>
      </equation*>

      <item>As <math|\<forall\>x\<in\>X> we have that
      <math|<around*|\||max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>+<around*|\||g<around*|(|x|)>|\|>>
      and <math|<around*|\||min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>|\|>\<leqslant\><around*|\||f<around*|(|x|)>|\|>+<around*|\||g<around*|(|x|)>|\|>>
      we conclude that\ 

      <\equation>
        <label|eq 16.268.502><around*|\||max<around*|(|f,g|)>,min<around*|(|f,g|)>|\|>\<less\><around*|\||f|\|>+<around*|\||g|\|>.
      </equation>

      Using <reference|conditions for Lebesgue integrability> we have that
      <math|<around*|\||f|\|>,<around*|\||g|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>\<Rightarrowlim\><rsub|<around*|(|2|)>><around*|\||f|\|>+<around*|\||g|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>.
      Apply this together with <reference|conditions for Lebesgue
      integrability> on <reference|eq 16.268.502> we conclude that
      <math|<around*|\||max<around*|(|f,g|)>|\|>,<around*|\||min<around*|(|f,g|)>|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>.
      Applying <reference|conditions for Lebesgue integrability> again gives
      then finally\ 

      <\equation*>
        min<around*|(|f,g|)>,max<around*|(|f,g|)>\<in\>\<cal-L\><rsup|1><around*|[|X,\<cal-A\>|]>
      </equation*>

      <item>Using <reference|f=f+-f-> we have that
      <math|f<rsub|+>\<leqslant\>g<rsub|+>> and
      <math|g<rsub|->\<leqslant\>f<rsub|->> so by <reference|properties of
      the Lebesgue integral (1)> we have <math|<big|int><rsub|+>f<rsub|+>d\<mu\>\<leqslant\><big|int><rsub|+>g<rsub|+>d\<mu\>>
      and <math|<big|int><rsub|+>g<rsub|->d\<mu\>\<leqslant\><big|int><rsub|+>f<rsub|->d\<mu\>\<Rightarrow\>-<big|int><rsub|+>f<rsub|->d\<mu\>\<leqslant\>-<big|int><rsub|+>g<rsub|->d\<mu\>>.
      So <math|<big|int>f d\<mu\>=<big|int><rsub|+>f<rsub|+>d\<mu\>-<big|int><rsub|+>f<rsub|->d\<mu\>\<leqslant\><big|int><rsub|+>g<rsub|+>d\<mu\>-<big|int><rsub|+>g<rsub|->d\<mu\>=<big|int>g
      d\<mu\>>

      <item>As <math|\<forall\>x\<in\>X> we have
      <math|f<around*|(|x|)>,-f<around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>
      we have <math|f,-f\<leqslant\><around*|\||f|\|>> so using (4) we have
      <math|<big|int>f d\<mu\>\<less\><big|int><around*|\||f|\|>d\<mu\>> and
      <math|-<big|int>f d\<mu\>\<equallim\><rsub|<around*|(|1|)>><big|int><around*|(|-f|)>d\<mu\>\<leqslant\><big|int><around*|\||f|\|>d\<mu\>>.
      From this it follows that <math|<around*|\||<big|int>f
      d\<mu\>|\|>=max<around*|(|<big|int>f d\<mu\>,-<big|int>f
      d\<mu\>|)>\<leqslant\><big|int><around*|\||f|\|>d\<mu\>>
    </enumerate>
  </proof>

  The following theorem allows us to define the restriction of a Lebesgue
  integral to a measurable subset.

  <\theorem>
    <label|1A.f>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measurable space, <math|f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
    and <math|A\<in\>\<cal-A\>> then <math|\<bbb-1\><rsub|A>\<cdot\>f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
  </theorem>

  <\proof>
    Using <reference|conditions for Lebesgue integrability> we have that
    <math|<around*|\||f|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>\<Rightarrowlim\><rsub|0\<leqslant\><around*|\||f|\|>><around*|\||f|\|>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    as also <math|\<bbb-1\><rsub|A>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    (see <reference|1A is Borel> and the fact that
    <math|0\<leqslant\>\<bbb-1\><rsub|A>>) we have have using
    <reference|properties of Borel functions (sum,product,min,max)> that
    <math|<around*|\||\<bbb-1\><rsub|A>\<cdot\>f|\|>=\<bbb-1\><rsub|A>\<cdot\>f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>\<subseteq\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
  </proof>

  <\definition>
    <index|<math|<big|int><rsub|A>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>> and
    <math|A\<in\>\<cal-A\>> then we define <math|<big|int><rsub|A>f d\<mu\>
    <text|by ><big|int><rsub|A>f d\<mu\>=<big|int>\<bbb-1\><rsub|A>\<cdot\>f
    d\<mu\>>. Note as <math|\<bbb-1\><rsub|X>\<cdot\>f> we have that
    <math|<big|int><rsub|X>f d\<mu\>=<big|int>f d\<mu\>>
  </definition>

  <\theorem>
    <label|Markov inequality><dueto|Markov inequality>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|\<forall\>A\<in\>\<cal-A\>>,
    <math|\<forall\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> and
    <math|c\<gtr\>0> we have <math|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>c|}><big|cap>A|)>\<geqslant\><frac|1|c>\<cdot\><big|int><rsub|A><around*|\||f|\|>d\<mu\>>.
    In case of <math|A=X> this reduces to
    <math|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>x|}>|)>\<geqslant\><frac|1|c>\<cdot\><big|int><around*|\||f|\|>d\<mu\>>
  </theorem>

  <\proof>
    First as <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrowlim\><rsub|<text|<reference|conditions
    for Lebesgue integrability>>><around*|\||f|\|>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    we have by <reference|characterization of extended real Borel functions>
    that <math|><math|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>\<in\>\<cal-A\>>
    so that <math|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>c|}><big|cap>A|)>>
    is well defined. \ Now <math|\<forall\>x\<in\>X> we have either

    <\description>
      <item*|<math|x\<in\><around*|{|<around*|\||f|\|>\<geqslant\>c|}>>>then
      <math|<around*|\||f<around*|(|x|)>|\|>\<geqslant\>c\<Rightarrowlim\><rsub|\<bbb-1\><rsub|<around*|[|<around*|\||f|\|>\<geqslant\>c|]>>=1><around*|\||f<around*|(|x|)>|\|>\<geqslant\>c\<cdot\>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>>

      <item*|<math|x\<nin\><around*|{|<around*|\||f|\|>\<geqslant\>c|}>>>then
      <math|<around*|\||f<around*|(|x|)>|\|>\<geqslant\>0=c\<cdot\>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>>
    </description>

    which proves that\ 

    <\equation>
      <label|eq 16.272.504><around*|\||f|\|>\<geqslant\>c\<cdot\>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>
    </equation>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>c|}><big|cap>A|)>>|<cell|\<equallim\><rsub|<text|<reference|Properties
      of the Lebesgue Integral (2)>>>>|<cell|<big|int>\<bbb-1\><rsub|<around*|\<nobracket\>|<around*|{|<around*|\||f|\|>\<geqslant\>c|}><big|cap>A|)>>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|1ANB=1A*1B>>>>|<cell|<big|int>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>\<cdot\>\<bbb-1\><rsub|A>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|A>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>d\<mu\><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|A><frac|c|c>\<cdot\>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>d\<mu\><rsub|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Properties
      of the Lebesgue Integral (2)>>>>|<cell|<frac|1|c><big|int><rsub|A>c\<cdot\>\<bbb-1\><rsub|<around*|{|<around*|\||f|\|>\<geqslant\>c|}>>d\<mu\><rsub|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      16.272.504> and <reference|Properties of the Lebesgue Integral
      (2)>>>>|<cell|<frac|1|c><big|int><rsub|A><around*|\||f|\|>d\<mu\>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|integral and partition>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    and <math|A,B\<in\>\<cal-A\>> such that <math|A<big|cap>B=\<emptyset\>>
    then <math|<big|int><rsub|A<big|sqcup>B>f d\<mu\>=<big|int><rsub|A>f
    d\<mu\>+<big|int><rsub|B>f d\<mu\>>
  </lemma>

  <\proof>
    Using <reference|1A.f> we have that <math|\<bbb-1\><rsub|A>\<cdot\>f,\<bbb-1\><rsub|B>\<cdot\>f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    so that <math|\<bbb-1\><rsub|A>\<cdot\>f+\<bbb-1\><rsub|B>\<cdot\>f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    (see <reference|Properties of the Lebesgue Integral (2)>]. So we have
    that <math|\<bbb-1\><rsub|A<big|sqcup>B>\<cdot\>f\<equallim\><rsub|<text|<reference|1ANB=1A*1B>>><around*|(|\<bbb-1\><rsub|A>+\<bbb-1\><rsub|B>|)>\<cdot\>f=\<bbb-1\><rsub|A>\<cdot\>f+\<bbb-1\><rsub|B>\<cdot\>f>
    hence <math|<big|int><rsub|A<big|sqcup>B>f
    d\<mu\>=<big|int>\<bbb-1\><rsub|A<big|sqcup>B>\<cdot\>f
    d\<mu\>=<big|int><around*|(|\<bbb-1\><rsub|A>\<cdot\>f+\<bbb-1\><rsub|B>\<cdot\>f|)>d\<mu\>=<big|int>\<bbb-1\><rsub|A>\<cdot\>f
    d\<mu\>+<big|int>\<bbb-1\><rsub|B>\<cdot\>f d\<mu\>=<big|int><rsub|A>f
    d\<mu\>+<big|int><rsub|B>f d\<mu\>>
  </proof>

  <\lemma>
    <index|densitity function of a measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|\<nu\>:\<cal-A\>\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    defined by <math|\<nu\><around*|(|A|)>=<big|int><rsub|A>f d\<mu\>> is a
    measure on <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> making
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> a measure
    space. <math|\<nu\>> is called the measure with density function
    <math|f>.
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|<around*|(|\<bbb-1\><rsub|\<emptyset\>>\<cdot\>f|)><around*|(|x|)>=\<bbb-1\><rsub|\<emptyset\>><around*|(|x|)>\<cdot\>f<around*|(|x|)>=0=\<bbb-1\><rsub|X><around*|(|x|)>>
      proving that <math|\<bbb-1\><rsub|\<emptyset\>>\<cdot\>f=\<bbb-1\><rsub|\<emptyset\>>>
      so that <math|\<nu\><around*|(|\<emptyset\>|)>=<big|int><rsub|\<emptyset\>>f
      d\<mu\>=<big|int>\<bbb-1\><rsub|\<emptyset\>>\<cdot\>f
      d\<mu\>=<big|int>\<bbb-1\><rsub|\<emptyset\>>d\<mu\>=<big|int><rsub|+>\<bbb-1\><rsub|\<emptyset\>>d\<mu\>\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>>\<mu\><around*|(|\<emptyset\>|)>=0>
      giving\ 

      <\equation*>
        \<nu\><around*|(|\<emptyset\>|)>=0
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      such that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=A\<in\>\<cal-A\>>
      [because <math|\<cal-A\>> is a <math|\<sigma\>>-algebra), then by
      <reference|1A.f> and <math|0\<leqslant\>f> we have that
      <math|<around*|{|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
      Further if <math|x\<in\>X\\A> then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      we have <math|x\<nin\>A<rsub|i>> so that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=\<bbb-1\><rsub|A<rsub|i>><around*|(|x|)>\<cdot\>f<around*|(|x|)>=0\<cdot\>f<around*|(|x|)>=0>
      so that <math|\<forall\>k\<in\>\<bbb-N\><rsub|0>> we have that
      <math|<big|sum><rsub|i=1><rsup|k><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=0>
      hence <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f<rsub|i>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>=0=\<bbb-1\><rsub|A><around*|(|x|)>\<cdot\>f<around*|(|x|)>=<around*|(|\<bbb-1\><rsub|A>\<cdot\>f|)><around*|(|x|)>>.
      If <math|x\<in\>A> then <math|\<exists\>i\<in\>\<bbb-N\><rsub|0>> such
      that <math|x\<in\>A<rsub|i>> and <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>\\<around*|{|i|}>>
      we have <math|x\<nin\>A<rsub|j>>. So giving
      <math|k\<in\>\<bbb-N\><rsub|0>> we have if <math|k\<less\>i> that
      <math|<big|sum><rsub|i=1><rsup|k><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=0>
      and if <math|i\<leqslant\>k> that <math|<big|sum><rsub|i=1><rsup|k><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=f<around*|(|x|)>=<around*|(|\<bbb-1\><rsub|A>\<cdot\>f|)><around*|(|x|)>>
      giving that <math|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)><around*|(|x|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f<rsub|i>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>=<around*|(|\<bbb-1\><rsub|A>\<cdot\>f|)><around*|(|x|)>>.
      To summarize we have proved that\ 

      <\equation>
        <label|eq 16.272.502><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)>=\<bbb-1\><rsub|A>\<cdot\>f
      </equation>

      Next <math|\<nu\><around*|(|A|)>=<big|int><rsub|A>f
      d\<mu\>=<big|int>\<bbb-1\><rsub|A>\<cdot\>f
      d\<mu\>=<big|int><rsub|+>\<bbb-1\><rsub|A>\<cdot\>f
      d\<mu\>\<equallim\><rsub|<text|<reference|eq
      16.272.502>>><big|int><rsub|+><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f|)>d\<mu\>\<equallim\><rsub|<text|<reference|integral
      of inifinite sum of positive functions>>><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|int><rsub|+>\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f
      d\<mu\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|int>\<bbb-1\><rsub|A<rsub|i>>\<cdot\>f
      d\<mu\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|i>|)>>
      which finally gives\ 

      <\equation*>
        \<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Lebesgue integral and null sets>

  We introduce now the concept of null sets and examine the behavior of the
  Lebesgue integral on null sets.\ 

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then <math|A\<in\>\<cal-A\>> is a <math|\<mu\>>-null set
    iff <math|\<mu\><around*|(|A|)>=0>. The set of all <math|\<mu\>>-null
    sets is noted by <math|\<cal-N\><rsub|\<mu\>>> so
    <math|\<cal-N\><rsub|\<mu\>>=<around*|{|A\<in\>\<cal-A\>\|\<mu\><around*|(|A|)>=0|}>>
  </definition>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure sace and <math|P<around*|(|x|)>> a statement about <math|x> then
    we say that <math|P> <with|font-series|bold|holds a.e.> iff
    <math|<around*|{|x\<in\>X\|P<around*|(|x|)> is false|}>> is a
    <math|\<mu\>>-null set, in other words
    <math|\<mu\><around*|(|<around*|{|x\<in\>X\|P<around*|(|x|)> is
    false|}>|)>=0> or <math|<around*|{|x\<in\>X\|P<around*|(|x|)> is
    false|}>\<in\>\<cal-N\><rsub|\<mu\>>>.
  </definition>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>, Y a set
    and <math|f,g:X\<rightarrow\>Y> function then <math|f=g> a.e. iff there
    exists a <math|N\<in\>\<cal-N\><rsub|\<mu\>>> such that
    <math|<around*|{|f\<neq\>g|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>\<cal-N\><rsub|\<mu\>>>.
    Note that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>>
    does not have to be measurable. <math|>
  </definition>

  <\note>
    If <math|g:X\<rightarrow\>Y> is defined by <math|g<around*|(|x|)>=y> (so
    <math|g=C<rsub|y>>) then <math|f=y> a.e is the same as saying that
    <math|f=g> a.e.
  </note>

  <\lemma>
    <label|f,g a.e.f+,g+,f-,g- a.e.>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>,
    Y a set and <math|f,g:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> functions
    such that <math|f=g> a.e then <math|f<rsub|+>=g<rsub|+>> a.e. and
    <math|f<rsub|->=g<rsub|->> a.e.
  </lemma>

  <\proof>
    As <math|f,g> a.e. there exists a <math|N\<in\>\<cal-N\>> such that
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>>.
    If <math|x\<in\>X> is such that <math|f<around*|(|x|)>=g<around*|(|x|)>>
    then <math|f<rsub|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=max<around*|(|g<around*|(|x|)>,0|)>=g<rsub|+><around*|(|x|)>>
    and <math|f<rsub|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=-min<around*|(|g<around*|(|x|)>|)>=g<rsub|-><around*|(|x|)>>.
    So if <math|x\<in\><around*|{|x\<in\>X\|f<rsub|+><around*|(|x|)>\<neq\>g<rsub|+><around*|(|x|)>|}>\<Rightarrow\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<Rightarrow\><around*|{|x\<in\>X\|f<rsub|+><around*|(|x|)>\<neq\>g<rsub|+><around*|(|x|)>|}>\<subseteq\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>
    proving that <math|f<rsub|+>=g<rsub|+>> a.e.. In the same way we have if
    <math|x\<in\><around*|{|x\<in\>X\|f<rsub|-><around*|(|x|)>\<neq\>g<rsub|-><around*|(|x|)>|}>\<Rightarrow\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<Rightarrow\><around*|{|x\<in\>X\|f<rsub|-><around*|(|x|)>\<neq\>g<rsub|-><around*|(|x|)>|}>\<subseteq\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>
    proving that <math|f<rsub|->=g<rsub|->> a.e..
  </proof>

  <\theorem>
    <label|Lebesgue integral of positive functions and null set>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    then <math|\<forall\>N\<in\>\<cal-N\><rsub|\<mu\>>> we have
    <math|<big|int><rsub|+>\<bbb-1\><rsub|N>\<cdot\>f d\<mu\>=0>
  </theorem>

  <\proof>
    First <math|\<bbb-1\><rsub|N>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    [see \ <reference|1A is Borel>] so using <reference|properties of Borel
    functions (sum,product,min,max)> (3) we have
    <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>> that
    <math|j\<cdot\>\<bbb-1\><rsub|N>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>,
    as <math|f\<in\>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    we have by <reference|properties of Borel functions
    (sum,product,min,max)> (2) that <math|\<bbb-1\><rsub|N>\<cdot\>f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>.
    Taking the minimum<space|1em>we conclude by <reference|properties of
    Borel functions (sum,product,min,max)> (6) that\ 

    <\equation>
      <label|eq 16.274.505>\<forall\>j\<in\>\<bbb-N\><rsub|0><text| we have
      <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>>
    </equation>

    Second given <math|j\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X> we have
    for \ <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>>
    either\ 

    <\description>
      <item*|<math|j\<cdot\>\<bbb-1\><rsub|N>\<leqslant\>\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>>then
      <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>=j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>\<leqslant\><around*|(|j+1|)>\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>
      giving <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>\<leqslant\>min<around*|(|<around*|(|j+1|)>\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>>

      <item*|<math|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>\<less\>j\<cdot\>\<bbb-1\><rsub|N>>>then
      <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>\<less\><around*|(|j+1|)>\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>>
      giving \ <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>\<leqslant\>min<around*|(|<around*|(|j+1|)>\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>>
    </description>

    So we have

    <\equation>
      <label|eq 16.275.505>\<forall\>j\<in\>\<bbb-N\><rsub|0><text| we have
      >min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>\<leqslant\>min<around*|(|<around*|(|j+1|)>\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>
    </equation>

    Let <math|x\<in\>X> then we have either\ 

    <\description>
      <item*|<math|f<around*|(|x|)>\<less\>\<infty\>>>By the properties of
      the real numbers (see <reference|consequence of the archimedean
      property for the reals>) there exists a <math|n\<in\>\<bbb-N\><rsub|0>>
      so that <math|f<around*|(|x|)>\<less\>n\<Rightarrowlim\><rsub|0\<leqslant\>\<bbb-1\><rsub|N>,f<around*|(|x|)>>\<forall\>n\<leqslant\>j<text|
      we have >\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>\<leqslant\>j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>\<Rightarrow\>min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>.
      Hence <math|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>=sup<around*|(|<around*|{|min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>\|n\<leqslant\>j|}>|)>\<leqslant\>sup<around*|(|<around*|{|min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>>
      (see <reference|inclusion and sup and inf>). Now
      <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>> we have using either
      <math|j\<leqslant\>n> and then by <reference|eq 16.274.505> we have
      <math|min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>\<leqslant\>min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,n\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>
      and if <math|n\<leqslant\>j> and then
      <math|min<around*|(|\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>,j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>|)>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>
      which proves that\ 

      <\equation>
        <label|eq 16.276.505>sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>
      </equation>

      <item*|<math|f<around*|(|x|)>=\<infty\>>>We have now to cases to
      consider for <math|x>

      <\description>
        <item*|<math|x\<in\>N>>then <math|\<bbb-1\><rsub|N><around*|(|x|)>=1>
        and <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>> we have
        <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>=min<around*|(|j,f<around*|(|x|)>|)>=j>
        so that <math|sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|\<bbb-N\><rsub|0>|)>\<equallim\><rsub|<text|<reference|limit
        n>>>\<infty\>>. So we must have <math|sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N>\<cdot\>f<around*|(|x|)>|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=\<infty\>=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>><math|>

        <item*|<math|x\<nin\>N>>then <math|\<bbb-1\><rsub|N><around*|(|x|)>=0>
        so that <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>>
        <math|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>=0>
        hence

        <\equation>
          <label|eq 16.277.505>sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N><around*|(|x|)>,\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=0=\<bbb-1\><rsub|N><around*|(|x|)>\<cdot\>f<around*|(|x|)>
        </equation>
      </description>
    </description>

    From the above two cases we conclude finally that\ 

    <\equation>
      <label|eq 16.278.505>sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=\<bbb-1\><rsub|N>\<cdot\>f
    </equation>

    <reference|eq 16.274.505>, <reference|eq 16.275.505> and <reference|eq
    16.278.505> allows us to use the Beppo Levi theorem (see <reference|Beppo
    Levi>) to prove that <math|<big|int><rsub|+>\<bbb-1\><rsub|N>\<cdot\>f
    d\<mu\>=<big|int><rsub|+>sup<around*|(|<around*|{|min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>\<equallim\><rsub|<text|<reference|Beppo
    Levi>>>sup<around*|(|<around*|{|<big|int><rsub|+>min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>d\<mu\><around*|\||j\<in\>\<bbb-N\><rsub|0>|\|>|}>|)>>
    porving that\ 

    <\equation>
      <label|eq 16.279.505><big|int><rsub|+>\<bbb-1\><rsub|N>\<cdot\>f
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsub|+>min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>d\<mu\><around*|\||j\<in\>\<bbb-N\><rsub|0>|\|>|}>|)>
    </equation>

    Now as <math|0\<leqslant\>min<around*|(|\<bbb-1\><rsub|N>\<cdot\>f,j\<cdot\>\<bbb-1\><rsub|N>|)>\<leqslant\>j\<cdot\>1<rsub|N>>
    we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsub|+>min<around*|(|j\<cdot\>\<bbb-1\><rsub|N>,\<bbb-1\><rsub|N>\<cdot\>f|)>d\<mu\>>|<cell|\<leqslant\><rsub|<text|
      <reference|properties of the Lebesgue integral
      (1)>>>>|<cell|<big|int><rsub|+>j\<cdot\>\<bbb-1\><rsub|N>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of the Lebesgue integral (1)>>>>|<cell|j\<cdot\><big|int><rsub|+>\<bbb-1\><rsub|N>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|j\<cdot\>\<mu\><around*|(|N|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    applying the above on <reference|eq 16.279.505> gives that\ 

    <\equation*>
      <big|int><rsub|+>f d\<mu\>=0
    </equation*>
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> and
    <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> then we have\ 

    <\enumerate>
      <item><math|\<forall\>N\<in\>\<cal-N\><rsub|\<mu\>>> we have
      <math|<big|int><rsub|N>f d\<mu\>=0>

      <item>The following are equivalent\ 

      <\enumerate>
        <item><math|<around*|\||f|\|>=0> a.e\ 

        <item><math|><math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-N\><rsub|\<mu\>>>

        <item><math|<big|int><around*|\||f|\|> d\<mu\>=0>
      </enumerate>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> we
      have by <reference|conditions for Lebesgue integrability> that
      <math|<around*|\||f|\|>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      so we can apply <reference|Lebesgue integral of positive functions and
      null set> to find that <math|<big|int><rsub|+><around*|\||f|\|>d\<mu\>=0\<less\>\<infty\>>,
      using <reference|Lebesgue integral as extension> we have then\ 

      <\equation>
        <label|eq 16.282.504><big|int>\<bbb-1\><rsub|N>\<cdot\><around*|\||f|\|>d\<mu\>=0
      </equation>

      Finally <math|<around*|\||<big|int><rsub|N>f
      d\<mu\>|\|>=<around*|\||<big|int>\<bbb-1\><rsub|N>\<cdot\>f
      d\<mu\>|\|>\<leqslant\><rsub|<text|<reference|Properties of the
      Lebesgue Integral (2)>>><big|int><around*|\||\<bbb-1\><rsub|N>\<cdot\>f|\|>d\<mu\>=<big|int>\<bbb-1\><rsub|N>\<cdot\><around*|\||f|\|>d\<mu\>\<equallim\><rsub|<text|<reference|eq
      16.282.504>>>0> proving that\ 

      <\equation*>
        <big|int><rsub|N><around*|\||f|\|> d\<mu\>=0
      </equation*>

      <item> To prove this note that

      <\description>
        <item*|<math|a\<Rightarrow\>b>>If <math|<around*|\||f|\|>=0> a.e.
        (meaning that for <math|C<rsub|0>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
        defined by <math|C<rsub|0><around*|(|x|)>=0> we have
        <math|<around*|\||f|\|>=C<rsub|0>> a.e.) then there exists a
        <math|N\<in\>\<cal-N\><rsub|\<mu\>>> so that
        <math|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<neq\>C<rsub|0><around*|(|x|)>|}>\<subseteq\>N>.
        As <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>0|}><big|cup><around*|{|0\<less\>f<around*|(|x|)>|}>=<around*|{|0\<less\>f|}><big|cup><around*|{|f\<less\>0|}>\<in\>\<cal-A\>>
        [see <reference|characterization of extended real Borel functions>].
        From <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<equallim\><rsub|f<around*|(|x|)>=0\<Leftrightarrow\><around*|\||f<around*|(|x|)>|\|>=0><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<neq\>0|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>C<rsub|0><around*|(|x|)>|}>\<subseteq\>N>
        so that \ <math|\<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>|)>\<leqslant\>\<mu\><around*|(|N|)>=0>
        we conclude that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-N\><rsub|\<mu\>>>

        <item*|<math|b\<Rightarrow\>a>>If
        <math|<around*|{|x\<in\>X\|f<around*|(|x\<neq\>0|)>|}>\<in\>\<cal-N\>>
        then <math|><math|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<neq\>C<rsub|0><around*|(|x|)><rsub|>|}>=<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<neq\>0|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-N\>>
        proving that <math|f=0> a.e.

        <item*|<math|b\<Rightarrow\>c>>If <math|f=0> a.e then
        <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>C<rsub|0><around*|(|x|)><rsub|>|}>\<in\>\<cal-N\>\<subseteq\>\<cal-A\>>
        hence we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><around*|\||f|\|>
          d\<mu\>>|<cell|=>|<cell|<big|int>\<bbb-1\><rsub|X>\<cdot\><around*|\||f|\|>
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
          and partition>>>>|<cell|<big|int><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f|\|>
          d\<mu\>+<big|int><rsub|X\\<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f|\|>
          d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int>\<bbb-1\><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f
          |\|>d\<mu\>+<big|int>\<bbb-1\><rsub|X\\<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f|\|>
          d\<mu\><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|int>\<bbb-1\><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f
          |\|>d\<mu\>+<big|int>\<bbb-1\><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>=0|}>><around*|\||f|\|>
          d\<mu\><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|int>\<bbb-1\><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f|\|>
          d\<mu\>+<big|int>C<rsub|0> d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
          integral of 0 (2)>>>>|<cell|<big|int>\<bbb-1\><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f
          |\|>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>><around*|\||f
          |\|>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>|)>=0<text|
          and (1)>>>|<cell|0>>>>
        </eqnarray*>

        <item*|<math|c\<Rightarrow\>b>>First
        <math|\<forall\>j\<in\>\<bbb-N\><rsub|0>> we have
        <math|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>|)>=\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}><big|cap>X|)>\<leqslant\><rsub|<text|<reference|Markov
        inequality> (Markov)>>j\<cdot\><big|int><around*|\||f|\|>d\<mu\>=0>
        proving that\ 

        <\equation>
          <label|eq 16.284.504>\<forall\>j\<in\>\<bbb-N\><rsub|0><text| we
          have >\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>|)>=0
        </equation>

        Second given <math|j\<in\>\<bbb-N\><rsub|0>> if
        <math|x\<in\><around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>=<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|j>\<gtr\>0\<Rightarrow\>x\<in\><around*|{|<around*|\||f|\|>\<gtr\>0|}>>
        proving that <math|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>\<subseteq\><around*|{|<around*|\||f|\|>\<gtr\>0|}>>.
        Further if <math|x\<in\><around*|{|<around*|\||f|\|>\<gtr\>0|}>> then
        <math|<around*|\||f<around*|(|x|)>|\|>\<gtr\>0> and using the
        Archimedean theorem (see <reference|consequence of the archimedean
        property for the reals>) there exists a
        <math|j\<in\>\<bbb-N\><rsub|0>> such that
        <math|<around*|\||f<around*|(|x|)>|\|>\<gtr\><frac|1|j>\<gtr\>0>
        proving that <math|x\<in\><around*|{|<around*|\||f|\|>\<gtr\><frac|1|j>|}>>
        so that <math|><math|<around*|{|<around*|\||f|\|>\<gtr\>0|}>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>\<subseteq\><around*|{|<around*|\||f|\|>\<gtr\>0|}>>.
        Hence we have\ 

        <\equation>
          <label|eq 16.285.504><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>=<around*|{|<around*|\||f|\|>\<gtr\>0|}>
        </equation>

        Finally

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>=0|}>|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<gtr\>0|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<gtr\>0|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          16.285.504>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\><frac|1|j>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|properties
          of a content>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<gtr\><frac|1|j>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          16.284.504>>>>|<cell|0>>>>
        </eqnarray*>

        proving that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-N\>>
      </description>
    </enumerate>
  </proof>

  <\corollary>
    <label|a.e. and Lebesgie>Let <math|f,g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
    such that <math|f=g> a.e. then we have\ 

    <\enumerate>
      <item>If <math|0\<leqslant\>f,g> then <math|<big|int><rsub|+>f
      d\<mu\>=<big|int><rsub|+>g> <math|d\<mu\>> [or <math|<big|int>f
      d\<mu\>=<big|int>g d\<mu\>> if <math|<big|int><rsub|+>f
      d\<mu\>\<less\>\<infty\>> or <math|<big|int><rsub|+>g
      d\<mu\>\<less\>\<infty\>>]

      <item>If <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      then <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> and
      <math|<big|int>f d\<mu\>=<big|int>g d\<mu\>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|f=g> a.e then there exists a
      <math|N\<in\>\<cal-N\><rsub|n>> such that
      <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.
      Let <math|x\<in\>X> then we have either\ 

      <\description>
        <item*|<math|x\<in\>N>>then <math|\<bbb-1\><rsub|X\\N><around*|(|x|)>\<cdot\>f<around*|(|x|)>=0=\<bbb-1\><rsub|X\\N><around*|(|x|)>\<cdot\>g<around*|(|x|)>>

        <item*|<math|x\<in\>X\\N>>then <math|x\<nin\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<Rightarrow\>f<around*|(|x|)>=g<around*|(|x|)>\<Rightarrow\>\<bbb-1\><rsub|X><around*|(|x|)>\<cdot\>f<around*|(|x|)>=\<bbb-1\><rsub|X><around*|(|x|)>\<cdot\>f<around*|(|x|)>=\<bbb-1\><rsub|X><around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      </description>

      proving that\ 

      <\equation>
        <label|eq 16.283.505>\<bbb-1\><rsub|N>\<cdot\>f=\<bbb-1\><rsub|N>\<cdot\>g
      </equation>

      As <math|X\\N,N\<in\>\<cal-A\>> we have by <reference|1A is Borel> and
      <math|0\<leqslant\>\<bbb-1\><rsub|N>> that
      <math|\<bbb-1\><rsub|N>,\<bbb-1\><rsub|X\\N>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>,
      further as by assumption <math|f,g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      we have by <reference|properties of the Lebesgue integral (1)> that
      <math|\<bbb-1\><rsub|N>\<cdot\>f,\<bbb-1\><rsub|N>\<cdot\>g,\<bbb-1\><rsub|X\\N>\<cdot\>f,\<bbb-1\><rsub|X\\N>\<cdot\>g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      so <math|<big|int><rsup|+>>is defined on these functions. We have then

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsub|+>f
        d\<mu\>>|<cell|=>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X>\<cdot\>f
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|1ANB=1A*1B>>>>|<cell|<big|int><rsub|+><around*|(|\<bbb-1\><rsub|X\\N>+\<bbb-1\><rsub|N>|)>\<cdot\>f
        d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|+><around*|(|\<bbb-1\><rsub|X\\N>\<cdot\>f
        +\<bbb-1\><rsub|N>\<cdot\>f |)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X\\N>\<cdot\>f
        d\<mu\>+<big|int><rsub|+>\<bbb-1\><rsub|N>\<cdot\>f
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
        integral of positive functions and null
        set>>>>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X\\N>\<cdot\>f
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.283.505>>>>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X\\N>\<cdot\>g
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the Lebesgue integral (1)>>>>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X\\N>\<cdot\>f
        d\<mu\>+<big|int><rsub|+>\<bbb-1\><rsub|N>\<cdot\>f
        d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|+><around*|(|\<bbb-1\><rsub|X\\N>\<cdot\>f
        +\<bbb-1\><rsub|N>\<cdot\>f |)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|1ANB=1A*1B>>>>|<cell|<big|int><rsub|+>\<bbb-1\><rsub|X>\<cdot\>f
        d\<mu\>>>>>
      </eqnarray*>

      proving\ 

      <\equation>
        <label|eq 16.284.505><big|int><rsub|+>f d\<mu\>=<big|int><rsub|+>g
        d\<mu\>
      </equation>

      From the above it follows directly that if <math|<big|int><rsub|+>f
      d\<mu\>\<less\>\<infty\>\<Rightarrow\><big|int><rsub|+>g
      d\<mu\>\<less\>\<infty\>> and if <math|<big|int><rsub|+>g
      d\<mu\>\<less\>\<infty\>> then <math|<big|int><rsub|+>f
      d\<mu\>\<less\>\<infty\>>. Using <reference|Lebesgue integral as
      extension> on the case <math|<big|int><rsub|+>f
      d\<mu\>\<less\>\<infty\>\<vee\><big|int><rsub|+>g d\<mu\>> proves that
      <math|<big|int>f d\<mu\>=<big|int>g d\<mu\>>

      <item>If <math|f,g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      then by definition we have <math|f<rsub|+>,f<rsub|->,g<rsub|+>,g<rsub|->\<in\><wide|\<cal-M\><rsup|1>|\<bar\>><around*|[|X,\<cal-A\>|]>>
      and using <reference|f,g a.e.f+,g+,f-,g- a.e.> that
      <math|f<rsub|+>=g<rsub|+>> a.e. and <math|f<rsub|<rsub|>->=g<rsub|->>
      a.e. Hence we have by (1) that <math|<big|int><rsub|+>f<rsub|+>d\<mu\>=<big|int><rsub|+>g<rsub|+>d\<mu\>>
      and <math|<big|int><rsub|+>f<rsub|->d\<mu\>=<big|int><rsub|+>g<rsub|->d\<mu\>>
      so that <math|<big|int>f d\<mu\>=<big|int><rsub|+>f<rsub|+>d\<mu\>-<big|int><rsub|+>f<rsub|->d\<mu\>=<big|int><rsub|+>g<rsub|+>d\<mu\>-<big|int><rsub|+>g<rsub|->d\<mu\>=<big|int>g
      d\<mu\>>.
    </enumerate>
  </proof>

  <\corollary>
    <label|\|f\|\<less\>=g=\<gtr\>f integrable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then if for <math|f\<in\><wide|\<cal-M\><around*|{|X,\<cal-A\>|}>|\<bar\>>>
    there exists a <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    with <math|0\<leqslant\>g> such that <math|<around*|\||f|\|>\<leqslant\>g>
    a.e. then <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
  </corollary>

  <\proof>
    By definition there exists a <math|N\<in\>\<cal-N\><rsub|\<mu\>>> such
    that <math|\<forall\>x\<in\>X\\N> we have then
    <math|\<forall\>x\<in\>X\\N> we have <math|<around*|\||f<around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>>.
    Define now <math|h:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>> by
    <math|h<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)>
    if x\<in\>X\\N>>|<row|<cell|0 if x\<in\>N>>>>>> then <math|f=h> a.e.
    giving by <reference|f,g a.e.f+,g+,f-,g- a.e.> that
    <math|h<rsub|+>=f<rsub|+>> a.e. and <math|h<rsub|->=f<rsub|->> a.e..
    \ Further <math|\<forall\>x\<in\>X> we have as
    <math|0\<leqslant\>g<around*|(|x|)>> that
    <math|<around*|\||h<around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>\<Rightarrow\><around*|\||h|\|>\<leqslant\>g>
    which with <math|h<rsub|+>,h<rsub|->\<leqslant\>h<rsub|+>+h<rsub|->=<around*|\||h|\|>>
    gives <math|h<rsub|+>,h<rsub|->\<leqslant\>g>. Hence
    <math|<big|int><rsub|+>f<rsub|+>d\<mu\>\<equallim\><rsub|<text|<reference|a.e.
    and Lebesgie>>><big|int><rsub|+>h<rsub|+>d\<mu\>\<leqslant\><rsub|<text|<reference|properties
    of the Lebesgue integral (1)>>><big|int><rsub|+>g
    d\<mu\>\<less\>\<infty\>> [as <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    and <math|<big|int><rsub|+>f<rsub|->d\<mu\>\<equallim\><rsub|<text|<reference|a.e.
    and Lebesgie>>><big|int><rsub|+>h<rsub|+>d\<mu\>\<leqslant\><rsub|<text|<reference|properties
    of the Lebesgue integral (1)>>><big|int><rsub|+>g
    d\<mu\>\<less\>\<infty\>> [as <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>]
    and <math|<big|int><rsub|+>f<rsub|->d\<mu\>\<equallim\><rsub|<text|<reference|a.e.
    and Lebesgie>>><big|int><rsub|+>h<rsub|->d\<mu\>\<leqslant\><rsub|<text|<reference|properties
    of the Lebesgue integral (1)>>><big|int><rsub|+>g
    d\<mu\>\<less\>\<infty\>> [as <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>]
    proving that <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
  </proof>

  <\corollary>
    <label|Lebesgue integrable functions are a.e finite>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|\<forall\>f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    we have that <math|f is finite> a.e.
  </corollary>

  <\proof>
    First using <reference|closed sets in the extended reals> (6) amd (7) we
    have that <math|<around*|{|\<infty\>|}>,<around*|{|-\<infty\>|}>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<bar\>>>\<subseteq\>\<cal-B\><rsub|<wide|\<bbb-R\>|\<bar\>>>>
    we have as <math|f> is Borel that <math|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>=\<infty\>|}><big|cup><around*|{|x\<in\>X\|f<around*|(|x|)>=-\<infty\>|}>=f<rsup|-1><around*|(|<around*|{|\<infty\>|}>|)><big|cup>f<rsup|-1><around*|(|<around*|{|-\<infty\>|}>|)>\<in\>\<cal-A\>>
    so that\ 

    <\equation>
      <label|eq 16.285.505><around*|{|<around*|\||f|\|>=\<infty\>|}>\<in\>\<cal-A\>
    </equation>

    Let <math|n\<in\>\<bbb-N\><rsub|0>> then we have
    <math|\<mu\><around*|(|<around*|\||f|\|>\<geqslant\>n|)>\<leqslant\><rsub|<text|Markov
    <reference|Markov inequality>>><frac|1|n><big|intlim><around*|\||f|\|>d\<mu\>\<less\>\<infty\>>
    [<math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrowlim\><rsub|<text|<reference|conditions
    for Lebesgue integrability>>><around*|\||f|\|>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrowlim\><rsub|def><big|int><around*|\||f|\|>d\<mu\>\<less\>\<infty\>
    >] proving that\ 

    <\equation>
      <label|eq 16.286.505>\<forall\>n\<in\>\<bbb-N\><rsub|0> we have
      \<mu\><around*|(|<around*|\||f|\|>\<geqslant\>n|)>\<in\>\<bbb-R\>\<wedge\>\<mu\><around*|(|<around*|\||f|\|>\<geqslant\>n|)>\<leqslant\><frac|1|n><big|intlim><around*|\||f|\|>d\<mu\>
    </equation>

    If now <math|x\<in\><around*|{|<around*|\||f|\|>=\<infty\>|}>> then
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|<around*|\||f<around*|(|x|)>|\|>=\<infty\>\<geqslant\>n\<Rightarrow\>x\<in\><around*|{|<around*|\||f|\|>\<geqslant\>n|}>>
    proving that <math|<around*|{|<around*|\||f|\|>=\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\>n|}>>.
    For the opposite inclusion suppose that
    <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\>n|}>>
    then if <math|f<around*|(|x|)>\<less\>\<infty\>> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|f<around*|(|x|)>\<less\>n\<less\>\<infty\>> contradicting
    <math|x\<in\><around*|{|<around*|\||f|\|>\<geqslant\>n|}>> hence we
    have<space|4em>

    <\equation>
      <label|eq 16.287.505><around*|{|<around*|\||f|\|>=\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|<around*|\||f|\|>\<geqslant\>n|}>
    </equation>

    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|x\<in\><around*|{|<around*|\||f|\|>\<geqslant\>n+1|}>\<Rightarrow\><around*|\||f<around*|(|x|)>|\|>\<geqslant\>n+1\<geqslant\>n\<Rightarrow\>x\<in\><around*|{|<around*|\||f|\|>\<geqslant\>n|}>>
    proving that\ 

    <\equation>
      <label|eq 16.288.505><around*|{|<around*|\||f|\|>\<geqslant\>n|}>\<downarrow\><around*|{|<around*|\||f|\|>=\<infty\>|}>
    </equation>

    By the above and <reference|eq 16.286.505> the conditions for
    <reference|conditions for a pre-measure> (3) are satisfied so that\ 

    <\equation>
      <label|eq 16.289.505>\<mu\><around*|(|<around*|{|<around*|\||f|\|>=\<infty\>|}>|)>=<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>n|}>|)>
    </equation>

    Next <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|n>\<cdot\><big|int><around*|\||f|\|>d\<mu\>|)>\<equallim\><rsub|<text|<reference|properties
    of the limit in the extented reals> (3>><around*|(|<big|int><around*|\||f|\|>d\<mu\>|)>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><frac|1|n>=0>,
    using this together with <reference|eq 16.286.505> and <reference|eq
    16.289.505> we can apply <reference|properties of the limit in the
    extented reals> (2) we have <math|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|<around*|{|<around*|\||f|\|>\<geqslant\>n|}>|)>\<leqslant\><below|lim|n\<rightarrow\>\<infty\>><around*|(|<frac|1|n>\<cdot\><big|int><around*|\||f|\|>d\<mu\>|)>=0\<Rightarrowlim\><rsub|<text|<reference|eq
    16.289.505>>>\<mu\><around*|(|<around*|\||f|\|>=\<infty\>|)>><math|>. As
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>=\<infty\>\<vee\>f<around*|(|x|)>=-\<infty\>|}>=<around*|{|<around*|\||f|\|>=\<infty\>|}>>
    we conclude that <math|\<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>=\<infty\>\<vee\>f<around*|(|x|)>=-\<infty\>|}>|)>=0>
    or that <math|f is finite> a.e.
  </proof>

  <\corollary>
    <label|Borel function to finite Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then if <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    then there exists a <math|<wide|f|\<bar\>>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>
    such that <math|f=<wide|f|\<bar\>>> a.e. and <math|<big|int>f
    d\<mu\>=<big|int><wide|f|\<bar\>>d\<mu\>>
  </corollary>

  <\proof>
    Given <math|><reference|Lebesgue integrable functions are a.e finite> we
    have that <math|N=<around*|{|x\<in\>X\|f<around*|(|x|)>=\<infty\>\<vee\>f<around*|(|x|)>=-\<infty\>|}>\<in\>\<cal-N\><rsub|\<mu\>>>.
    Hence if we define <math|<wide|f|\<bar\>>:X\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
    by <math|<wide|f|\<bar\>>=\<bbb-1\><rsub|X\\N>\<cdot\>f> so that by
    <reference|Properties of the Lebesgue Integral (2)> we have
    <math|<wide|f|\<bar\>>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
    As <math|\<forall\>x\<in\>X> we have either
    <math|x\<in\>N\<Rightarrow\><wide|f|\<bar\>><around*|(|x|)>=\<bbb-1\><rsub|X\\A><around*|(|x|)>\<cdot\>f<around*|(|x|)>=0\<in\>\<bbb-R\>>
    or <math|x\<in\>X\\N\<Rightarrow\><wide|f|\<bar\>><around*|(|x|)>=\<bbb-1\><rsub|X\\N><around*|(|x|)>\<cdot\>f<around*|(|x|)>=f<around*|(|x|)>\<in\>\<bbb-R\>>
    proving that <math|<wide|f|\<bar\>><around*|(|X|)>\<subseteq\>\<bbb-R\>>
    and thus that <math|<wide|f|\<bar\>>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>.
    Further as <math|\<forall\>x\<in\>X\\N> we have
    <math|<wide|f|\<bar\>><around*|(|x|)>=f<around*|(|x|)>> meaning
    <math|f=<wide|f|\<bar\>>> a.e. and thus by <reference|a.e. and Lebesgie>
    that <math|<big|int>f d\<mu\>=<big|int><wide|f|\<bar\>>d\<mu\>>.
  </proof>

  This corollary shows that every Lebesgue integrable function that is not
  finite can always be replaced with a finite Lebsgue integrable function
  without changing its Lebesgue integral. Hence every theorem about the
  Lebesgue integral for finite Lebesgue integrable can be extended to a
  theorem about the Lebesgue integral of a non finite integrable function. As
  finite Lebesgue integrable functions have much nicer properties (the
  pointwise sum is for example always defined). So from

  \ now on we are dealing with the function space
  <math|\<cal-L\><rsup|1><rsub|\<mu\>>>. As a first result we prove that
  <math|\<cal-L\><rsup|1><rsub|\<mu\>>> forms a vecto space.

  <\theorem>
    <label|vector space of L1m>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then <math|<around*|\<langle\>|\<cal-L\><rsup|1><rsub|\<mu\>>,+,\<cdot\>|\<rangle\>>>
    forms a real vector spacewhere using pointwise addition and pointwise
    multiplication by a real number. Further
    <math|<big|int>:\<cal-L\><rsup|1><rsub|\<mu\>>\<rightarrow\>\<bbb-R\>>
    defined by <math|<big|int><around*|(|f|)>=<big|int>f d\<mu\>> is linear.
  </theorem>

  <\proof>
    Using <reference|vector space of functions to a vector space> and the
    fact that <math|\<bbb-R\>> is a vectorspace we have that
    <math|<around*|\<langle\>|\<bbb-R\><rsup|X>,+,\<cdot\>|\<rangle\>>> is a
    vector space. For <math|\<cal-L\><rsub|\<mu\>><rsup|1>\<subseteq\>\<bbb-R\><rsup|X>>
    we have\ 

    <\enumerate>
      <item><math|\<forall\>f,g\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> we have
      that <math|f,g> are finite so that <math|f+g> is everywhere defined on
      <math|X> and finite. Using <reference|Properties of the Lebesgue
      Integral (2)> we have then that <math|f+g\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item>If f <math|\<alpha\>\<in\>\<bbb-R\>> and
      <math|f\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> then
      <math|\<alpha\>\<cdot\>f> is a finite function and thus by
      <reference|Properties of the Lebesgue Integral (2)> we have that
      <math|\<alpha\>\<cdot\>f\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> and by
      <reference|Lebesgue integral of 0 (2)>

      <item>Using <reference|Lebesgue integral of 0 (2)> we have that
      <math|C<rsub|0>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>
    </enumerate>

    This proves that <math|\<cal-L\><rsup|1><rsub|\<mu\>>> is a subspace of
    the vector space <math|\<bbb-R\><rsup|X>> and thus by <reference|subspace
    of a vector space> that <math|<around*|\<langle\>|\<cal-L\><rsup|1><rsub|\<mu\>>,+,\<cdot\>|\<rangle\>>>
    is a vector space. For the linearity of <math|<big|int>> note that given
    <math|f,g\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> and
    <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> we have
    <math|<big|int><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>=<big|int><around*|(|\<alpha\>\<cdot\>f+\<beta\>\<cdot\>g|)>d\<mu\>\<equallim\><rsub|<text|<reference|Properties
    of the Lebesgue Integral (2)> (3)>><big|int><around*|(|\<alpha\>\<cdot\>f|)>d\<mu\>+<big|int><around*|(|\<beta\>\<cdot\>g|)>d\<mu\>\<equallim\><rsub|<text|<reference|Properties
    of the Lebesgue Integral (2)> (1)>>\<alpha\>\<cdot\><big|int>f
    d\<mu\>+\<beta\>\<cdot\><big|int>g d\<mu\>=\<alpha\>\<cdot\><big|int><around*|(|f|)>+\<beta\>\<cdot\><big|int><around*|(|g|)>>
  </proof>

  <section|Convergence theorems of the Lebesgue integral and their
  consequences>

  <subsection|Convergence theorems>

  <\lemma>
    <label|monotone convergence 1>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space, <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-L\><rsup|1><rsub|\<mu\>>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> then we have
    <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Leftrightarrow\>sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>.
    Further if <math|><math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
    we have <math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>
  </lemma>

  <\proof>
    If <math|x\<in\>X> then <math|f<rsub|1><around*|(|x|)>\<in\>\<bbb-R\>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|f<rsub|1><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|x|)>> and
    <math|f<rsub|i><around*|(|x|)>-f<rsub|1><around*|(|x|)>> is well defined
    with <math|0\<leqslant\>sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>-f<rsub|1><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|sup
    of set and sum>>>sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)><around*|\||\<iota\>\<in\>\<bbb-N\><rsub|0>|\|>|}>|)>-f<rsub|1><around*|(|x|)>>
    we have\ 

    <\equation>
      <label|eq 16.290.508>0\<leqslant\>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>-f<rsub|1>
    </equation>

    also <math|f<rsub|1><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>\<Rightarrow\>0\<leqslant\>f<rsub|i><around*|(|x|)>-f<rsub|1><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>-f<rsub|1><around*|(|x|)>>
    proving that\ 

    <\equation>
      <label|eq 16.291.508><around*|(|f<rsub|i>-f<rsub|0>|)>\<uparrow\>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)><text|
      and >\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>0\<leqslant\>f<rsub|i>-f<rsub|1>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<bar\>>
      <around*|(|see <text|<reference|properties of Borel functions
      (sum,product,min,max)> (1,3)>|)>
    </equation>

    As all the conditions of Beppo Levi (see <reference|Beppo Levi>) are
    satisifed we have

    <\equation>
      <label|eq 16.292.508>sup<around*|(|<around*|{|<big|int><rsub|+><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>
    </equation>

    Further we have by the above and <reference|Lebesgue integral as
    extension> that\ 

    <\equation>
      <label|eq 16.293.508>\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\><big|int><rsub|+><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>=<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>
    </equation>

    Now for the equivalences

    <\description>
      <item*|<math|\<Rightarrow\>>>By assumption we have
      <math|f<rsub|1>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>\<Rightarrowlim\><rsub|<text|<reference|Properties
      of the Lebesgue Integral (2)>>>-f<rsub|1>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>><text|,
      >sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\>|\<bar\>><rsup|1><rsub|m>>
      and as <math|-f<rsub|1>> is finite that
      <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>+<around*|(|-f<rsub|1>|)>>
      is well defined, hence we can use <reference|Properties of the Lebesgue
      Integral (2)> proving that

      <\equation>
        <label|eq 16.294.508>0\<leqslant\>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|eq
        16.290.508>>>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>-f<rsub|1>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
      </equation>

      and\ 

      <\equation>
        <label|eq 16.295.508><big|int><around*|(|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>-f<rsub|1>|)>d\<mu\>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>-<big|int>f<rsub|1>d\<mu\>
      </equation>

      Further we have \ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><around*|(|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>-f<rsub|1>|)>d\<mu\>>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.290.508>>>>|<cell|<big|int>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.294.508> and <reference|Lebesgue integral as
        extension>>>>|<cell|<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.292.508>>>>|<cell|sup<around*|(|<around*|{|<big|int><rsub|+><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.293.508>>>>|<cell|sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>>>>
      </eqnarray*>

      Using the above and substituting it in <reference|eq 16.295.508> gives\ 

      <\equation>
        <label|eq 16.296.508>sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>-<big|int>f<rsub|1>d\<mu\>
      </equation>

      Finally as <math|f<rsub|i>,f<rsub|1>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>
      (a vector space see <reference|vector space of L1m>) we have
      <math|f<rsub|i>=<around*|(|f<rsub|i>-f<rsub|1>|)>+f<rsub|1>> and by the
      linearity of <math|<big|int>> on <math|\<cal-L\><rsup|1><rsub|\<mu\>>>
      (see <reference|vector space of L1m>) it follows that
      <math|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>+<big|int>f<rsub|1>d\<mu\>=<big|int>f<rsub|i>d\<mu\>>.
      Using the fact that <math|f<rsub|1>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrow\><big|int>f<rsub|1>d\<mu\>\<in\>\<bbb-R\>>
      we apply <reference|sup of set and sum> to give
      <math|sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\><around*|\||i\<in\>\<bbb-N\><rsub|0>|\<nobracket\>>|}>|)>+<big|int>f<rsub|1>d\<mu\>=sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>+<big|int>f<rsub|1>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
      which by <reference|eq 16.296.508> proves\ 

      <\equation*>
        sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>\<less\>\<infty\>
      </equation*>

      where the last inequality follows from the fact that
      <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrow\><big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>\<in\>\<bbb-R\>>.

      <item*|<math|\<Leftarrow\>>>First\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>|<cell|\<equallim\><rsub|<text|<reference|vector
        space of L1m>>>>|<cell|sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>+<big|int>f<rsub|1>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<big|int>f<rsub|1>d\<mu\>\<in\>\<bbb-R\><text|
        and <reference|sup of set and sum>>>>|<cell|sup<around*|(|<around*|{|<big|int><around*|(|f<rsub|i>-f<rsub|1>|)>d\<mu\>|}>|)>+<big|int>f<rsub|1>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.292.508>>>>|<cell|<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>+<big|int>f<rsub|1>d\<mu\>>>>>
      </eqnarray*>

      giving as <math|<big|int>f<rsub|1>d\<mu\>\<in\>\<bbb-R\>> that
      <math|<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>-f\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>=sup<around*|(|<around*|{|f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\>|}>|)>-<big|int>f<rsub|1>d\<mu\>\<less\>\<infty\>>
      [as <math|up<around*|(|<around*|{|f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\>|}>|)>\<less\>\<infty\>>
      by the hypothese). So we have <math|<big|int><rsub|+>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>\<less\>\<infty\>>
      and as <math|0\<leqslant\>sup<around*|(|<around*|{|f<rsub|i>-f\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
      we have by <reference|Lebesgue integral as extension> that

      <\equation>
        <label|eq 16.297.508>sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
      </equation>

      As <math|f<rsub|1>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> we have that
      <math|sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>+f<rsub|1>>
      is wel defined so that by <reference|Properties of the Lebesgue
      Integral (2)> (2) we have that <math|sup<around*|(|<around*|{|f<rsub|i>-f<rsub|1>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>+f<rsub|1>\<in\><wide|\<cal-L\><rsup|1><rsub|n>|\<bar\>>\<Rightarrowlim\><rsub|<text|<reference|eq
      16.290.508>>>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    </description>
  </proof>

  We remove now the restriction that <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-L\><rsup|1><rsub|\<mu\>>>
  from the above lemma so that is is valid in the general case where
  <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.\ 

  <\lemma>
    <label|monotone convergence 2>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space, <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> a.e. then we have
    <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Leftrightarrow\>sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>.
    Further if <math|><math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
    we have <math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>
  </lemma>

  <\proof>
    As <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|n>|\<bar\>>>
    there exists by <reference|Lebesgue integrable functions are a.e finite>
    <math|<around*|{|N<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-N\><rsub|\<mu\>>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have if
    <math|x\<in\>X\\N<rsub|i>> then <math|f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>>.
    Further there exists a <math|<around*|{|M<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have if
    <math|x\<in\>X\\M<rsub|i>> then <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>>.
    Take then <math|N=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|N<rsub|i><big|cup>M<rsub|i>|)>|)>>
    then we have <math|N\<in\>\<cal-A\>> and
    <math|\<mu\><around*|(|N|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|N<rsub|i><big|cup>M<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><around*|(|N<rsub|i>|)>+\<mu\><around*|(|M<rsub|i>|)>|)>=0>
    proving that <math|N\<in\>\<cal-N\>>. Define now
    <math|<around*|{|<wide|f<rsub|i>|\<bar\>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    by <math|<wide|f<rsub|i>|\<bar\>>=\<bbb-1\><rsub|X\\N>\<cdot\>f<rsub|i>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    (see <reference|Properties of the Lebesgue Integral (2)>). Now
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have if <math|x\<in\>X>
    \ either\ 

    <\description>
      <item*|<math|x\<in\>N>>then \ <math|<wide|f<rsub|i>|\<bar\>><around*|(|x|)>=0\<leqslant\>0=<wide|f<rsub|i+1>|\<bar\>><around*|(|x|)>\<Rightarrow\><wide|f<rsub|i>|\<bar\>><around*|(|x|)>\<in\>\<bbb-R\>>
      and <math|<wide|f<rsub|i>|\<bar\>><around*|(|x|)>\<leqslant\><wide|f<rsub|i+1>|\<bar\>><around*|(|x|)>>
      <math|>

      <item*|<math|x\<in\>X\\N>>then <math|x\<in\>X\\N<rsub|i>,X\\M<rsub|i>>
      so that <math|<wide|f<rsub|i>|\<bar\>><around*|(|x|)>=f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>>
      and <math|<wide|f<rsub|i>|\<bar\>><around*|(|x|)>=f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>=<wide|f<rsub|i+1><around*|(|x|)>|\<bar\>>>
    </description>

    This proves that\ 

    <\equation>
      <label|eq 16.298.508><around*|{|<wide|f<rsub|i>|\<bar\>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-L\><rsup|1><rsub|\<mu\>>
      <text| and >\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\><wide|f<rsub|i>|\<bar\>>\<leqslant\><wide|f<rsub|i+1>|\<bar\>>
    </equation>

    Further as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have by
    definition <math|<wide|f<rsub|i>|\<bar\>>=f<rsub|i>> a.e. it follows by
    <reference|a.e. and Lebesgie> that <math|<big|int><wide|f<rsub|i>|\<bar\>>
    d\<mu\>=<big|int>f<rsub|i>> hence\ 

    <\equation>
      <label|eq 16.299.508>\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\><big|int><wide|f<rsub|i>|\<bar\>>d\<mu\>=<big|int>f<rsub|i>d\<mu\><text|>
    </equation>

    Further <math|\<forall\>x\<in\>X> we have if <math|x\<in\>X\\N> that
    <math|sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    proving that\ 

    <\equation>
      <label|eq 16.300.508>sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|)><text|
      a.e.>
    </equation>

    We are ready now to prove the equivalence\ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      then as <math|sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      (see <reference|lemma 16.205>) we can use <reference|a.e. and Lebesgie>
      to prove that <math|><math|sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
      This together with <reference|eq 16.298.508> means that we can use the
      previous lemma (see <reference|monotone convergence 1>) to get that
      <math|sup<around*|(|<around*|{|<big|int><wide|f<rsub|i>|\<bar\>>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
      and <math|sup<around*|(|<around*|{|<big|int><wide|f<rsub|i>|\<bar\>>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>.
      From <reference|eq 16.299.508> if follows then that

      <\equation*>
        sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>|}>|)>\<less\>\<infty\>
      </equation*>

      Finally we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.299.508>>>>|<cell|sup<around*|(|<around*|{|<big|int><wide|f<rsub|i>|\<bar\>>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int>sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.300.508> with <reference|a.e. and
        Lebesgie>>>>|<cell|=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>
      </equation*>

      <item*|<math|\<Leftarrow\>>>If <math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
      then by <reference|eq 16.299.508> we have
      <math|sup<around*|(|<around*|{|<big|int><wide|f<rsub|i>|\<bar\>>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>.
      This together with <reference|eq 16.298.508> means that we can use the
      previous lemma (see <reference|monotone convergence 1>) to prove that
      <math|sup<around*|(|<around*|{|<wide|f<rsub|i>|\<bar\>>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
      Then as \ <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      (see <reference|lemma 16.205>) we can use <reference|a.e. and Lebesgie>
      to prove that <math|><math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
    </description>
  </proof>

  We are now ready to state the <with|font-series|bold|monotone convergence>
  theorem.

  <\theorem>
    <label|Monotone Convergence Theorem><dueto|Monotone Convergence>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have then
      <math|f<rsub|i>\<leqslant\>f<rsub|i+1>> a.e. then
      <math|sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      if and only if <math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
      in which case we have <math|sup<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>sup<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>

      <item>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have then
      <math|f<rsub|i+1>\<leqslant\>f<rsub|i>> a.e. then
      <math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      if and only if <math|-\<infty\>\<less\>inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
      in which case we have <math|inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>This is the previous lemma (see <reference|monotone convergence
      2>)

      <item>Define <math|<around*|{|g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|g<rsub|i>=-f<rsub|i>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      then <math|\<forall\>x\<in\>X> and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      we have <math|f<rsub|i+1><around*|(|x|)>\<leqslant\>f<rsub|i><around*|(|x|)>\<Rightarrow\>-f<rsub|i><around*|(|x|)>\<leqslant\>-f<rsub|i+1><around*|(|x|)>\<Rightarrow\>g<rsub|i><around*|(|x|)>\<leqslant\>g<rsub|i+1><around*|(|x|)>>
      so that

      <\equation>
        <label|eq 16.297.507><around*|{|g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
        <text|and >\<forall\>i\<in\>\<bbb-N\><rsub|0>\<vDash\>g<rsub|i>\<leqslant\>g<rsub|i+1>
      </equation>

      As <math|\<forall\>x\<in\>X> we have
      <math|sup<around*|(|<around*|{|g<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|-f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|-sup
      A=inf -A>>>-inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
      giving

      <\equation>
        <label|eq 16.298.507>sup<around*|(|<around*|{|g<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=-inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      Further <math|sup<around*|(|<around*|{|<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|<big|int><around*|(|-g<rsub|i>|)>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|Properties
      of the Lebesgue Integral (2)>>>sup<around*|(|<around*|{|-<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|-sup
      A=inf -A>>>-inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
      giving\ 

      <\equation>
        <label|eq 16.299.507>sup<around*|(|<around*|{|<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>\<Leftrightarrow\>-\<infty\>\<less\>inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      and\ 

      <\equation>
        <label|eq 16.300.507>sup<around*|(|<around*|{|<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=-inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      For the equivalence we have\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
        we have by <math|><reference|eq 16.298.507> and <reference|Properties
        of the Lebesgue Integral (2)> that
        <math|sup<around*|(|<around*|{|g<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
        which together with <reference|eq 16.297.507> satisfies the
        conditions of <math|<around*|(|1|)>> proving that
        <math|sup<around*|(|<around*|{|<big|int><rsub|>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>\<Rightarrowlim\><rsub|<text|<reference|eq
        16.299.507>>>-\<infty\>\<less\>inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
          16.300.507>>>>|<cell|-sup<around*|(|<around*|{|<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|-<big|int>sup<around*|(|<around*|{|g<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          16.298.507>>>>|<cell|-<big|int>-inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Properties
          of the Lebesgue Integral (2)>>>>|<cell|<big|int>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>>>>
        </eqnarray*>

        <item*|<math|\<Leftarrow\>>>If <math|-\<infty\>\<less\>inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
        we have by <reference|eq 16.299.507> that
        <math|sup<around*|(|<around*|{|<big|int>g<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
        so by (1) we have that <math|sup<around*|(|<around*|{|g<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>\<Rightarrowlim\><rsub|<text|<reference|eq
        16.298.507> and <reference|Properties of the Lebesgue Integral
        (2)>>>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>.
        Hence we can apply <math|<around*|(|2|)>\<Rightarrow\>> to find
        <math|inf<around*|(|<around*|{|<big|int>f<rsub|i>d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=<big|int>inf<around*|(|<around*|{|f<rsub|i>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>d\<mu\>>
      </description>
    </enumerate>
  </proof>

  <\theorem>
    <label|Dominated convergence><dueto|Dominated Convergence>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
    be a sequence of functions such that there exists a
    <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> with
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|\||f<rsub|i>|\|>\<leqslant\>g> a.e. then if
    <math|N=<around*|{|x\<in\>X\|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)><text|
    does not exists>|}>\<subseteq\>\<cal-N\>>
    [meaning<math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
    is a.e. defined] we have for <math|f:X\<rightarrow\>\<bbb-R\>> defined by
    <math|f<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>
    if X\\N>>|<row|<cell|0 if x\<in\>N>>>>>>that

    <\enumerate>
      <item><math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>

      <item><math|\<forall\>h\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> such that
      <math|h=f> a.e. we have that <math|><math|<below|lim|i\<rightarrow\>\<infty\>><big|int><around*|\||f<rsub|i>-<below|h|>|\|>d\<mu\>=0>
      [note that as <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|m>|\<bar\>>>
      there exists by <reference|Borel function to finite Borel function>) a
      <math|h=f> a.e.)

      <item><math|\<forall\>h\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> such that
      <math|h=f> a.e. we have <math|<below|lim|i\<rightarrow\>\<infty\>><big|int>f<rsub|i>d\<mu\>=<big|int>h
      d\<mu\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|i>\<leqslant\>g> a.e. there exists a
      <math|<around*|{|N<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      such that <math|\<forall\>x\<in\>X\\N<rsub|i>> we have
      <math|<around*|\||f<rsub|i><around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>>.
      Take <math|N<rsub|1>=N<big|cup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|>>N<rsub|i>|)>>
      then given <math|x\<in\>X> we have either\ 

      <\description>
        <item*|<math|x\<in\>X\\N<rsub|1>>>then
        <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|x\<nin\>N<rsub|i>\<Rightarrow\>x\<in\>X\\N<rsub|i>> and
        <math|<around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>=<around*|\||f<rsub|i><around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>=<around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>g|)><around*|(|x|)>>

        <item*|<math|x\<in\>N<rsub|1>>>then
        <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|<around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>=0\<leqslant\>0=<around*|\<nobracket\>|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>g|)><around*|(|x|)>>
      </description>

      which proves that\ 

      <\equation>
        <label|eq 16.305.511>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        ><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|>\<leqslant\>\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>g
      </equation>

      As we have further that <math|N<rsub|1>=N<big|cup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|>>N<rsub|i>|)>\<in\>\<cal-A\>>
      and <math|\<mu\><around*|(|N<rsub|1>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>|)>\<leqslant\>0+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|N<rsub|i>|)>=0>
      we conclude that\ 

      <\equation>
        <label|eq 16.306.511>N<rsub|1>\<in\>\<cal-N\><rsub|\<mu\>>
      </equation>

      Next we have also <math|\<forall\>x\<in\>X> that either\ 

      <\description>
        <item*|<math|x\<in\>X\\N<rsub|1>>>then
        <math|x\<nin\>N\<Rightarrow\>x\<in\>X\\N> so that
        <math|<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=f<around*|(|x|)>>
        exists, using <reference|limit and absolut value> we have then that
        <math|> \ <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|)><around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=f<around*|(|x|)>=<around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|)><around*|(|x|)>>
        and using <reference|limit and absolut value> that
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>=<around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|\|><around*|(|x|)>>.
        Further using the properties of the limit (see <reference|properties
        of the limit in the extented reals>) together with <reference|eq
        16.305.511> proves that <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>>.

        <item*|<math|x\<in\>N<rsub|1>>>then
        <math|<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|)><around*|(|x|)>=0=<around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|)><around*|(|x|)>>
        and <math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>=0=<around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|\|><around*|(|x|)>>.
        Further using the properties of the limit (see <reference|properties
        of the limit in the extented reals>) together with <reference|eq
        16.305.511> proves that <math|><math|<below|lim|i\<rightarrow\>\<infty\>><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|\|><around*|(|x|)>>
      </description>

      which proves that\ 

      <\equation>
        <label|eq 16.307.511><below|lim|i\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>f<rsub|i>|)>\<equallim\>\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<text|
        and ><below|lim|i\<rightarrow\>\<infty\>><around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>f<rsub|i>|\|>=<around*|\||\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|\|>\<leqslant\>\<bbb-1\><rsub|X\|N<rsub|1>>\<cdot\>g
      </equation>

      Note that because of <reference|eq 16.306.511> and the above we have\ 

      <\equation>
        <label|eq 16.308.511>f=<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f<rsub|i>|)>
        <text|a.e.> and <around*|\||f|\|>\<leqslant\>g <text|a.e.>
      </equation>

      As by <reference|limit of Borel functions is a Borel function> and
      <reference|1A.f> <math|f=<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<bbb-1\><rsub|X\\N<rsub|1>>\<cdot\>f|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<bar\>>>
      we have using the above together with
      <reference|\|f\|\<less\>=g=\<gtr\>f integrable> that\ 

      <\equation>
        <label|eq 16.309.511>f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
      </equation>

      <item>First as <math|h\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>, <math|h>
      is finite so that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|i>-h> is well defined, using <reference|Properties of the
      Lebesgue Integral (2)> (1) and (3) we have that
      <math|f<rsub|i>-h\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>,
      further using <reference|conditions for Lebesgue integrability> we have
      that <math|<around*|\||f<rsub|i>-h|\|>\<in\><wide|\<cal-L\><rsub|\<mu\>><rsup|1>|\<bar\>>>
      so that <math|<big|int><around*|\||h-f<rsub|i>|\|>d\<mu\>> is well
      defined. Next as <math|h=f> a.e. there exists a
      <math|N<rsub|2>\<in\>\<cal-N\><rsub|\<mu\>>> such that
      <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|2>>.
      As <math|<around*|{|<wide|f<rsub|i>|\<bar\>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      we have by <reference|Lebesgue integrable functions are a.e finite>
      that there exists a <math|<around*|{|M<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<forall\>x\<in\>X\\M<rsub|i>> that
      <math|f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>>. Define
      <math|N<rsub|3>=N<rsub|1><big|cup>N<rsub|2><big|cup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>M<rsub|i>|)>>
      \ then we have <math|N<rsub|3>\<in\>\<cal-A\>> and
      <math|\<mu\><around*|(|N<rsub|3>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|M<rsub|i>|)>=0
      > proving that\ 

      <\equation>
        <label|eq 16.310.511>N<rsub|3>\<in\>\<cal-N\><rsub|\<mu\>>
      </equation>

      Let <math|i\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X> then we have
      either\ 

      <\description>
        <item*|<math|x\<in\>X\\N<rsub|3>>>then
        <math|<around*|(|\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)><around*|(|x|)>=<around*|\||f<rsub|i><around*|(|x|)>-h<around*|(|x|)>|\|>\<leqslant\><rsub|<text|<reference|absolute
        value on the extended real properties>>><around*|\||f<rsub|i><around*|(|x|)>|\|>+<around*|\||h<around*|(|x|)>|\|>\<equallim\><rsub|x\<in\>X\\N<rsub|2>><around*|\||f<rsub|i><around*|(|x|)>|\|>+<around*|\||f<around*|(|x|)>|\|>\<leqslant\>2\<cdot\>g<around*|(|x|)>=<around*|(|2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g|)><around*|(|x|)>>
        (using <math|x\<in\>X\\N<rsub|1>> with <reference|eq 16.305.511> and
        <reference|eq 16.307.511>) and as <math|x\<in\>X\\M<rsub|i>> we have
        that <math|f<rsub|i><around*|(|x|)>> is finite which together with
        finiteness of <math|h<around*|(|x|)>> proves that
        <math|0\<leqslant\><around*|(|2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g|)><around*|(|x|)>-<around*|(|\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)><around*|(|x|)>>

        <item*|<math|x\<in\>N<rsub|3>>>then
        <math|><math|<around*|(|2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g|)><around*|(|x|)>-<around*|(|\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)><around*|(|x|)>=0\<geqslant\>0>
      </description>

      proving that\ 

      <\equation>
        <label|eq 16.311.511>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        0>\<leqslant\>2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>
      </equation>

      Further using <math| <text|<reference|Properties of the Lebesgue
      Integral (2)> and <reference|1A.f>>> we have\ 

      <\equation>
        <label|eq 16.312.511>\<forall\>i\<in\>\<bbb-N\><text| that >
        2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
      </equation>

      Now <math|\<forall\>x\<in\>X> we have either\ 

      <\description>
        <item*|<math|x\<in\>X\\N<rsub|3>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)><around*|(|x|)>>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g<around*|(|x|)>-<around*|\||f<rsub|i><around*|(|x|)>-h<around*|(|x|)>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\>X\\N<rsub|3>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g<around*|(|x|)>-<around*|\||f<rsub|i><around*|(|x|)>-f<around*|(|x|)>|\|>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
          xi+x>>, <text|<reference|properties of the limit in the extented
          reals>>>>|<cell|2\<cdot\>g<around*|(|x|)>-<below|lim|i\<rightarrow\>\<infty\>><around*|\||f<rsub|i><around*|(|x|)>-f<around*|(|x|)>|\|>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>>>>|<cell|2\<cdot\>g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\<around*|(|M<big|cup>N|)>>|)><around*|(|x|)>>>>>
        </eqnarray*>

        <item*|<math|x\<in\>N<rsub|3>>>then
        <below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\<around*|(|N<big|cup>M|)>>-\<bbb-1\><rsub|X\\<around*|(|N<big|cup>M|)>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)><around*|(|x|)>=0=<around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\<around*|(|M<big|cup>N|)>>|)><around*|(|x|)>
      </description>

      which proves that\ 

      <\equation>
        <label|eq 16.313.511><below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\<around*|(|N<big|cup>M|)>>-\<bbb-1\><rsub|X\\<around*|(|N<big|cup>M|)>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)>=2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\<around*|(|N<big|cup>M|)>>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int>2\<cdot\>g
        d\<mu\>>|<cell|\<equallim\><rsub|<text|<reference|a.e. and Lebesgie>>
        <text| and <reference|eq 16.310.511>>>>|<cell|<big|int>2\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\>g
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
        integral as extension>>>>|<cell|<big|int><rsub|+>2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        16.313.511>>>>|<cell|<big|int><rsub|+><below|lim|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsub|+><below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)>d\<mu\>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        16.313.511> and Fatou's (<reference|Fatou>)>>>|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>><big|int><rsub|+><around*|(|2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>-\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>|)>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Properties
        of the Lebesgue Integral (2)>>>>|<cell|<below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|<big|int><rsub|+>2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>d\<mu\>-<big|int><rsub|+>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|lim
        sup xn+x>>>>|<cell|<big|int><rsub|+>2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>d\<mu\>+<below|lim
        inf|i\<rightarrow\>\<infty\>><around*|(|-<big|int><rsub|+>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|lim
        inf -xn>>>>|<cell|<big|int><rsub|+>2\<cdot\>g\<cdot\>\<bbb-1\><rsub|X\\N<rsub|3>>d\<mu\>-<below|lim
        sup|i\<rightarrow\>\<infty\>><big|int><rsub|+>\<bbb-1\><rsub|X\\N<rsub|3>>\<cdot\><around*|\||f<rsub|i>-h|\|>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<reference|Lebesgue
        integral as extension>>>|<cell|<big|int><rsub|>2\<cdot\>g
        d\<mu\>-<below|lim sup|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>>>>>
      </eqnarray*>

      which proves (as <math|<big|int><rsub|>2\<cdot\>g
      d\<mu\>\<in\>\<bbb-R\>>) that <math|><math|<below|lim
      sup|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>\<leqslant\>0>
      so that <math|0\<leqslant\><below|lim
      inf|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>\<leqslant\><rsub|<text|<reference|the
      limit inferior is lower then limit superior>>><below|lim
      sup|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>\<leqslant\>0>.
      Hence we have <math|<below|lim inf|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>=<below|lim
      sup|i\<rightarrow\>\<infty\>><big|int><rsub|><around*|\||f<rsub|i>-h|\|>d\<mu\>=0>
      and thus by definition of the limit

      <\equation>
        <label|eq 16.314.511><below|lim|i\<rightarrow\>\<infty\>><below|<big|int><around*|\||f<rsub|i>-h|\|>d\<mu\>=0|>
      </equation>

      <item>As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<big|int>f<rsub|i>d\<mu\>-<big|int>h
        d\<mu\>|\|>>|<cell|\<equallim\><rsub|<text|<reference|Properties of
        the Lebesgue Integral (2)>>>>|<cell|<around*|\||<big|int><around*|(|f<rsub|i>d\<mu\>-h|)>d\<mu\>|\|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<reference|Properties
        of the Lebesgue Integral (2)> <around*|(|6|)>>>|<cell|<big|int><around*|\||f<rsub|i>-h|\|>d\<mu\>>>>>
      </eqnarray*>

      we have by <reference|properties of the limit in the extented reals>
      that <math|0\<leqslant\><below|lim|i\<rightarrow\>\<infty\>><around*|\||<big|int>f<rsub|i>d\<mu\>-<big|int>h
      d\<mu\>|\|>\<leqslant\><below|lim|i\<rightarrow\>\<infty\>><big|int><around*|\||f<rsub|i>-h|\|>d\<mu\>\<equallim\><rsub|<text|<reference|eq
      16.314.511>>>0\<Rightarrow\><below|lim|i\<rightarrow\>\<infty\>><around*|\||<big|int>f<rsub|i>d\<mu\>-<big|int>h
      d\<mu\>|\|>=0>, applying then <reference|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>
      gives\ 

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><big|int>f<rsub|i>d\<mu\>=<big|int>h
        d\<mu\>
      </equation*>
    </enumerate>
  </proof>

  <subsection|Integrals and parameters>

  The following definitions will simplify notations

  <\definition>
    Let <math|X,Y,Z> be sets, <math|f:X\<times\>Y\<rightarrow\>Z> a function
    then

    <\enumerate>
      <item>If <math|x\<in\>X> then <math|f<around*|(|x,.|)>:Y\<rightarrow\>Z>
      is defined by <math|f<around*|(|x,.|)><around*|(|y|)>=f<around*|(|x,y|)>>

      <item>If <math|y\<in\>Y> then <math|f<around*|(|.,y|)>:X\<rightarrow\>Z>
      is defined by <math|f<around*|(|.,y|)><around*|(|x|)>=f<around*|(|x,y|)>>
    </enumerate>
  </definition>

  We use also the follo by <math|>wing notations for the integral\ 

  <\notation>
    Let <math|<around*|\<langle\>|Y,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then we have\ 

    <\enumerate>
      <item>If <math|f:Y\<rightarrow\>\<bbb-R\>> with
      <math|f\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>> then
      <math|<big|int>f<around*|(|x|)>d\<mu\><around*|(|x|)>\<equallim\><rsub|notation><big|int>f
      d\<mu\>>

      <item>Let <math|Y> be a set, <math|f:X\<times\>Y\<rightarrow\><wide|\<bbb-R\>|\<bar\>>>
      a function so that <math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x,.|)>\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      then\ 

      <\enumerate>
        <item><math|<big|int>f<around*|(|x,y|)>d\<mu\><around*|(|y|)>\<equallim\><rsub|notation><big|int>f<around*|(|x,.|)>d\<mu\>>

        <item><math|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>\<of\>X\<rightarrow\>\<bbb-R\>>
        is defined by <math|<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x|)>=<big|int>f<around*|(|x,y|)>d\<mu\><around*|(|y|)>\<equallim\><rsub|<around*|(|a|)>><big|int>f<around*|(|x,.|)>d\<mu\>>
      </enumerate>
    </enumerate>
  </notation>

  Weare now ready to state the <with|font-series|bold|Continuity Lemma>

  <\theorem>
    <label|Continuity Lemma><dueto|Continuity Lemma>Let
    <math|<around*|\<langle\>|Y,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|<around*|\<langle\>|X,d|\<rangle\>>> a metric space,
    <math|U> a open set in <math|X>, <math|x<rsub|0>\<in\>U> and
    <math|f:X\<times\>Y\<rightarrow\>\<bbb-R\>> (a finite function) such that\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x,.|)>\<in\>\<cal-M\><around*|[|Y,\<cal-A\>|]>>

      <item><math|\<forall\>y\<in\>Y> we have that <math|f<around*|(|.,y|)>>
      is continuous at <math|x<rsub|0>>

      <item>There exists a <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      such that <math|\<forall\>x\<in\>X>, <math|y\<in\>Y> we have
      <math|<around*|\||f<around*|(|x,y|)>|\|>\<leqslant\>g<around*|(|y|)>>
    </enumerate>

    then we have that <math|\<forall\>x\<in\>U> that
    <math|f<around*|(|x,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>> [so that
    <math|<big|int>f<around*|(|x,y|)>d\<mu\><around*|(|y|)>> is well defined]
    and <math|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>> is
    continuous at <math|x<rsub|0>>
  </theorem>

  <\proof>
    First if <math|x\<in\>U> then <math|\<forall\>y> we have by (3) that
    <math|<around*|\||f<around*|(|x,.|)>|\|><around*|(|y|)>=<around*|\||f<around*|(|x,y|)>|\|>\<leqslant\>g<around*|(|y|)>>
    proving that <math|<around*|\||f<around*|(|x,.|)>|\|>\<leqslant\>g> and
    thus by <reference|\|f\|\<less\>=g=\<gtr\>f integrable> that\ 

    <\equation>
      <label|eq 16.315.512>\<forall\>x\<in\>X\<vDash\>f<around*|(|x,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>
    </equation>

    We use now use theorem <reference|limit and continuity> to prove the
    continuity of <math|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>> at
    <math|x<rsub|0>>. So let <math|<around*|{|z<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>U>
    such that <math|<below|lim|n\<rightarrow\>\<infty\>>z<rsub|n>=x<rsub|0>>.
    As <math|\<forall\>y\<in\>Y> we have that <math|f<around*|(|.,y|)>> is
    continue at <math|x<rsub|0>> we have, using <reference|limit and
    continuity>, that <math|<below|lim|n\<rightarrow\>\<infty\>>f<around*|(|.,y|)><around*|(|z<rsub|n>|)>=f<around*|(|.,y|)><around*|(|x<rsub|0>|)>\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>>f<around*|(|z<rsub|n>,y|)>=f<around*|(|x<rsub|0>,y|)>\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>>f<around*|(|z<rsub|n>,.|)><around*|(|y|)>=f<around*|(|x<rsub|0>,.|)><around*|(|y|)>>
    proving that\ 

    <\equation>
      <label|eq 16.316.512><below|lim|n\<rightarrow\>\<infty\>>f<around*|(|z<rsub|n>,.|)>=f<around*|(|x<rsub|0>,.|)>
    </equation>

    Further <math|\<forall\>y\<in\>Y> we have that
    <math|<around*|\||f<around*|(|z<rsub|n>,.|)><around*|(|y|)>|\|>=<around*|\||f<around*|(|z<rsub|n>,y|)>|\|>\<leqslant\>g<around*|(|y|)>>
    proving that\ 

    <\equation>
      <label|eq 16.317.512>\<forall\>n\<in\>\<bbb-N\><rsub|0>\<vDash\><around*|\||f<around*|(|z<rsub|n>,.|)>|\|>\<leqslant\>g
    </equation>

    So <reference|eq 16.315.512>,<reference|eq 16.316.512> and <reference|eq
    16.317.512> allows us to use the Dominant Convergence Theorem (see
    <reference|Dominated convergence>) giving
    <math|<below|lim|n\<rightarrow\>\<infty\>><big|int>f<around*|(|z<rsub|n>,.|)>d\<mu\>=<big|int>f<around*|(|x<rsub|0>,.|)>d\<mu\>\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>><big|int>f<around*|(|z<rsub|n>,y|)>d\<mu\><around*|(|y|)>=<big|int>f<around*|(|x<rsub|0>,y|)>d\<mu\><around*|(|y|)>>
    which proves by <reference|limit and continuity> that

    <\equation*>
      <big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)><text| is continuous
      at >x<rsub|0>
    </equation*>
  </proof>

  The following allows us to differentiate under the integral sign in the
  general case of a Banach space

  <\theorem>
    <label|differentiate under the integral sign>Let
    <math|<around*|\<langle\>|Y,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|<around*|\<langle\>|X,<around*|\<\|\|\>||\<\|\|\>><rsub|X>|\<rangle\>>>
    a banach space, <math|U\<subseteq\>X> a open subset in <math|X> and
    <math|f:X\<times\>Y\<rightarrow\>\<bbb-R\>> a function satisfying the
    following conditions:

    <\enumerate>
      <item><math|\<forall\>y\<in\>Y> we have that
      <math|f<around*|(|.,y|)>:X\<rightarrow\>\<bbb-R\>> is differentiable on
      <math|U>

      <item><math|\<forall\>x\<in\>X> we have that for
      <math|f<around*|(|x,.|)>:Y\<rightarrow\>\<bbb-R\>>
      <math|f<around*|(|x,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item>There exists a <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      such that <math|\<forall\>y\<in\>Y> we have
      <math|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|.,y|)><around*|(|x|)>|\<\|\|\>>\|x\<in\>U|}>|)>\<leqslant\>g<around*|(|y|)>>
    </enumerate>

    then we have that <math|\<forall\>x<rsub|0>\<in\>U>

    <\enumerate-alpha>
      <item><math|\<forall\>x\<in\>X> we have for <math|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>:Y\<rightarrow\>\<bbb-R\>>
      defined by <math|><math|y\<rightarrow\><around*|(|D
      f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|)><around*|(|x|)>> that
      <math|><math|D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item><math|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>:U\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x|)>=<big|int>f<around*|(|x,y|)>d\<mu\>*<around*|(|y|)>>
      is differentiable on <math|U> and <math|\<forall\>x<rsub|0>\<in\>U> we
      have for \ <math|D<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>|)>\<in\>L<around*|(|X,\<bbb-R\>|)>>
      (see <reference|differential of a function>) that
      <math|\<forall\>x\<in\>X> <math|<around*|(|D<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>|)>|)><around*|(|x|)>=<big|int>D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>d\<mu\>\<equallim\><rsub|notation><big|int><around*|(|D
      f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)>d\<mu\><around*|(|y|)>>
    </enumerate-alpha>
  </theorem>

  <\proof>
    \ Let <math|x<rsub|0>\<in\>U>

    <\enumerate-alpha>
      <item>Take <math|x\<in\>X> and <math|y\<in\>Y>. As
      <math|x<rsub|0>\<in\>U> then there exists a <math|\<delta\>\<gtr\>0>
      such that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x<rsub|0>,\<delta\>|)>\<subseteq\>U>
      so if <math|<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>> then
      <math|<around*|\<\|\|\>|<around*|(|x<rsub|0>+h|)>-x<rsub|0>|\<\|\|\>>=<around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\>\<Rightarrow\>x<rsub|0>+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x<rsub|0>,\<delta\>|)>\<subseteq\>U\<Rightarrow\>x<rsub|0>+h\<in\>U>
      proving\ 

      <\equation>
        <label|eq 16.318.513>\<exists\>\<delta\>\<gtr\>0<text| such that
        >\<forall\>h\<in\>X<text| with ><around*|\<\|\|\>|h|\<\|\|\>>\<less\>\<delta\><text|
        we have >h\<in\>U<rsub|x<rsub|0>>=<around*|{|x\<in\>X\|x+x<rsub|0>\<in\>U|}>
      </equation>

      Conside now the following cases of <math|x> (where <math|0> is the
      neutral element in <math|X>

      <\description>
        <item*|<math|x\<neq\>0>>Take <math|\<varepsilon\>\<gtr\>0>. Using the
        fact that <math|f<around*|(|.,y|)>> is differentiable at
        <math|x<rsub|0>\<in\>U> (hypothese (1)) we have by
        <reference|alternative definitions of differentiability> (3) that\ 

        <\equation>
          <label|eq 16.319.513>\<exists\>\<delta\><rsub|\<varepsilon\>> such
          that \<forall\>h\<in\>U<rsub|x<rsub|0>> with
          0\<less\><around*|\||h|\|>\<less\>\<delta\><rsub|\<varepsilon\>> we
          have <frac|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,x<rsub|0>|)>-D
          f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h|)>|\|>|<around*|\<\|\|\>|h|\<\|\|\>><rsub|X>>\<less\><frac|\<varepsilon\>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>
        </equation>

        Using the Archimedean property of the reals (see
        <reference|consequence of the archimedean property for the reals>)
        there exists a <math|N<rsub|\<varepsilon\>>\<in\>\<bbb-N\><rsub|0>>
        such that <math|0\<less\><frac|1|N<rsub|\<varepsilon\>>>\<less\>min<around*|(|<frac|\<delta\><rsub|\<varepsilon\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>,<frac|\<delta\>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>|)>>.
        If <math|n\<geqslant\>N<rsub|\<varepsilon\>>> then
        <math|<around*|\<\|\|\>|<frac|1|n>\<cdot\>x|\<\|\|\>><rsub|X>=<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><frac|1|N<rsub|\<varepsilon\>>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<leqslant\><frac|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\>\<delta\><rsub|\<varepsilon\>>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>,<frac|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<cdot\>\<delta\>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>\<less\>\<delta\><rsub|\<varepsilon\>>,\<delta\>>,
        by <reference|eq 16.318.513> it follows that
        <math|<frac|1|n>\<cdot\>x\<in\>U<rsub|x<rsub|0>>> and as
        <math|<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>\<less\>\<delta\><rsub|\<varepsilon\>>>
        we have by <reference|eq 16.319.513> that

        <\equation>
          <label|eq 16.320.513>\<forall\>n\<geqslant\>N<rsub|\<varepsilon\>>\<vDash\><frac|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
          f<around*|(|.,y|)><around*|(|<frac|1|n>\<cdot\>x<rsub|>|)>|\|>|<around*|\<\|\|\>|<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|\<\|\|\>>>\<less\><frac|\<varepsilon\>|<around*|\<\|\|\>|x|\<\|\|\>>+1>
        </equation>

        Now using the linearity of the differential of a function we have
        <math|<frac|<around*|\||<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|<frac|1|n>\<cdot\>x|)>|\|>|\|>|<around*|\<\|\|\>|<frac|1|n>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|\<\|\|\>>>=<frac|1|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>\<cdot\><around*|\||n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>|\|>> hence
        by <reference|eq 16.320.513> we have that
        <math|<around*|\||n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>|\|>\<less\><frac|\<varepsilon\>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>|<around*|\<\|\|\>|x|\<\|\|\>><rsub|X>+1>\<less\>\<varepsilon\>>
        from which it follows that\ 

        <\equation>
          <label|eq 16.321.513><below|lim|n\<rightarrow\>\<infty\>><around*|(|n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
          f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)>=0
        </equation>

        Now\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x|)>-n\<cdot\>f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
          f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>>|<cell|=>|<cell|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x,y|)>-n\<cdot\>f<around*|(|x<rsub|0>,y|)>-<around*|(|D
          f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x,.|)><around*|(|y|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)><around*|(|y|)>-<around*|(|D
          f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x,.|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)>-<around*|(|D
          f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)>|)><around*|(|y|)>>>>>
        </eqnarray*>

        By <reference|eq 16.321.513> we have then that
        <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>\<cdot\>x,.|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)>-<around*|(|D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)>|)><around*|(|x|)>|)><around*|(|y|)>=0>
        or using <reference|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>
        <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>,.|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)>|)><around*|(|y|)>=<around*|(|D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>>,
        as <math|y\<in\>Y> is choosen arbitrary we have\ 

        <\equation>
          <label|eq 16.322.513><below|lim|n\<rightarrow\>\<infty\>><around*|(|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>,.|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)>|)>=D
          f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>
        </equation>

        Using (2) we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
        <math|f<around*|(|x<rsub|0>+<frac|1|n>,.|)>>,
        <math|f<around*|(|x<rsub|0,>.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>
        and by <reference|Properties of the Lebesgue Integral (2)> that
        <math|n\<cdot\>f<around*|(|x<rsub|0>+<frac|1|n>,.|)>-n\<cdot\>f<around*|(|x<rsub|0>,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>|]>>.
        Applying then <reference|limit of Borel functions is a Borel
        function> we conclude that\ 

        <\equation*>
          D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
        </equation*>

        <item*|<math|x=0>>In this case we have <math|\<forall\>y\<in\>Y> that
        <math|<around*|(|D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|0|)>|)><around*|(|y|)>=D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|0|)>\<equallim\>0>
        (differential is linear) so that <math|D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|0|)>=C<rsub|0>>
        proving again that\ 

        <\equation*>
          D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation>
        <label|eq eq 16.323.513>\<forall\>x\<in\>X\<vDash\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
      </equation>

      Next note that as <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      we have by <reference|Properties of the Lebesgue Integral (2)> that
      <math|\<forall\>x\<in\>X> <math|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>,
      further for <math|\<forall\>x\<in\>X>, <math|y\<in\>Y> we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||<around*|(|D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>|\|>>|<cell|=>|<cell|<around*|\||<around*|(|D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|)><around*|(|x|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|\<\|\|\>>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|<around*|\<\|\|\>|D
        f<around*|(|.,y|)><around*|(|z|)>|\<\|\|\>>\|z\<in\>U|}>|)>\<cdot\><around*|\<\|\|\>|x|\<\|\|\>><rsub|X>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|3|)>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>g<around*|(|y|)>>>>>
      </eqnarray*>

      proving that

      <\equation>
        <label|eq 16.324.513>\<forall\>x\<in\>X\<vDash\><around*|\||D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|\|>\<leqslant\><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>
      </equation>

      and thus by <reference|conditions for Lebesgue integrability> we
      conclude that\ 

      <\equation>
        <label|eq 16.325.513>\<forall\>x<rsub|0>\<in\>U,\<forall\>x\<in\>X\<vDash\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>><text|
        and thus ><big|int>D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>d\<mu\><text|
        is well defined>
      </equation>

      <item>Given <math|x<rsub|0>\<in\>U> define\ 

      <\equation*>
        L<around*|(|x<rsub|0>|)>:X\<rightarrow\>\<bbb-R\> by
        x\<rightarrow\><big|int>D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>d\<mu\>
      </equation*>

      First we prove that <math|L<around*|(|x<rsub|0>|)>> is linear, so take
      <math|\<alpha\>,\<beta\>\<in\>\<bbb-R\>> and
      <math|x<rsub|1>,x<rsub|2>\<in\>X> then <math|\<forall\>y\<in\>Y> we
      have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>|)>|)><around*|(|y|)>>|<cell|=>|<cell|D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>D
        f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>|)><around*|(|y|)>+<around*|(|\<beta\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>|)><around*|(|y|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>|)><around*|(|y|)>>>>>
      </eqnarray*>

      giving <math|D f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>|)>=\<alpha\>\<cdot\>D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>> from
      which it follows that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|L<around*|(|x<rsub|0>|)><around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>|)>>|<cell|=>|<cell|<big|int>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|\<alpha\>\<cdot\>x<rsub|1>+\<beta\>\<cdot\>x<rsub|2>|)>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><around*|[|\<alpha\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>|]>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|int>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>d\<mu\>+\<beta\>\<cdot\><big|int>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>L<around*|(|x<rsub|0>|)><around*|(|x<rsub|1>|)>+\<beta\>\<cdot\>L<around*|(|x<rsub|0>|)><around*|(|x<rsub|2>|)>>>>>
      </eqnarray*>

      giving<space|1em>

      <\equation>
        <label|eq 16.326.513>L<around*|(|x<rsub|0>|)> is linear
      </equation>

      Next we prove that <math|L<around*|(|x<rsub|0>|)>> is continuous. Let
      <math|x\<in\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|\||L<around*|(|x<rsub|0>|)><around*|(|x|)>|\|>>|<cell|=>|<cell|<around*|\||<big|int>D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>d\<mu\>|\|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|Properties
        of the Lebesgue Integral (2)>> <around*|(|6|)>>>|<cell|<big|int><around*|\||D
        f<around*|(|.,.|)><around*|(|x<rsub|0>|)>d\<mu\>|\|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|Properties
        of the Lebesgue Integral (2)> (5) with <reference|eq
        16.324.513>>>>|<cell|<big|int><around*|\<\|\|\>|x|\<\|\|\>>\<cdot\>g
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Properties
        of the Lebesgue Integral (2)>> <around*|(|1|)>>>|<cell|<around*|\<\|\|\>|x|\<\|\|\>>\<cdot\><big|int>g
        d\<mu\>>>>>
      </eqnarray*>
    </enumerate-alpha>

    which as <math|L<around*|(|x<rsub|0>|)>> is linear proves that
    <math|L<around*|(|x<rsub|0>|)>>. So we have that\ 

    <\equation>
      <label|eq 16.327.513>L<around*|(|x<rsub|0>|)>\<in\>L<around*|(|X,\<bbb-R\>|)>
    </equation>

    Take <math|y\<in\>Y>. As <math|x<rsub|0>\<in\>U> open there exists a
    <math|\<delta\>\<gtr\>0> such that <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x<rsub|0>,\<delta\>|)>\<subseteq\>U>.
    We use now a alternative definition of the differential of a function
    (see <reference|alternative definitions of differentiability> (4)) to
    prove that <math|L<rsub|0><around*|(|x<rsub|0>|)>> is the differential of
    <math|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>>. \ So let
    <math|<around*|{|h<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>X>
    such that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|0\<less\><around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<in\><around*|(|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x<rsub|0>,\<delta\>|)>|)><rsub|x<rsub|0>>>
    and <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n>=0>. Now
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that <math|x<rsub|0>>,
    <math|x<rsub|0>+h\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x<rsub|0>,\<delta\>|)>>
    and as <math|B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x<rsub|0>,\<delta\>|)>>
    is convex (see <reference|balls are convex>) we have
    <math|\<forall\>\<lambda\>\<in\><around*|[|0,1|]>> that
    <math|x<rsub|0>+\<lambda\>\<cdot\><around*|(|<around*|(|x<rsub|0>+h<rsub|n>|)>-x<rsub|0>|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|X>><around*|(|x<rsub|0>,\<delta\>|)>>.
    Using then the Mean Value Theorem (see <reference|consequence of Mean
    value theorem>) we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+h<rsub|n>|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|\|>>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|<around*|(|x<rsub|0>+h<rsub|n>|)>-x<rsub|0>|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|.,y|)><around*|(|x<rsub|0>+\<lambda\>\<cdot\><around*|(|<around*|(|x<rsub|0>+h<rsub|n>|)>-x<rsub|0>|)>|)>|\<\|\|\>>\<lambda\>\<in\><around*|[|0,1|]>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<cdot\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|.,y|)><around*|(|x|)>|\<\|\|\>>\|x\<in\>U|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|3|)>>>|<cell|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>\<cdot\>g<around*|(|y|)>>>>>
    </eqnarray*>

    giving\ 

    <\equation>
      <label|eq 16.328.513><frac|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<leqslant\>g<around*|(|y|)>
    </equation>

    Further <math|<frac|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
    f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<leqslant\>><math|<frac|<around*|\||f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>+<frac|<around*|\||D
    f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<leqslant\><rsub|<text|<reference|eq
    16.328.513>>>g<around*|(|y|)>+<frac|<around*|\||D
    f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>\<leqslant\><rsub|<text|<reference|eq
    16.324.513>>>2\<cdot\>g<around*|(|y|)>>. So we have if we define\ 

    <\equation>
      <label|eq 16.329.513>f<rsub|n><around*|(|y|)>=<frac|f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
      f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>
    </equation>

    then we have\ 

    <\equation>
      <label|eq 16.330.513><around*|\||f<rsub|n><around*|(|y|)>|\|>\<leqslant\>2\<cdot\>g<around*|(|y|)>
    </equation>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsub|n><around*|(|y|)>>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>+h,y|)>-f<around*|(|x<rsub|0>,y|)>-<around*|(|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|)><around*|(|y|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<frac|f<around*|(|x<rsub|0>+h,.|)><around*|(|y|)>-f<around*|(|x<rsub|0>,.|)><around*|(|y|)>-<around*|(|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|)><around*|(|y|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|f<around*|(|x<rsub|0>+h,.|)>-f<around*|(|x<rsub|0>,.|)><around*|(|y|)>-<around*|(|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|)>|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>><around*|(|y|)>>>>>
    </eqnarray*>

    proving that <math|f<rsub|n>=<frac|<around*|(|f<around*|(|x<rsub|0>+h,.|)>-f<around*|(|x<rsub|0>,.|)><around*|(|y|)>-<around*|(|D
    f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|)><around*|(|y|)>|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>>
    so that by (1),(2) together with <reference|Properties of the Lebesgue
    Integral (2)> we have that\ 

    <\equation>
      <label|eq 16.331.513>f<rsub|n>\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]><rsub|>
    </equation>

    Using now the alternate definitions of differentiability (see
    <reference|alternative definitions of differentiability> (4)) we have
    then that <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|y|)>=<frac|f<around*|(|.,y|)><around*|(|x<rsub|0>+h|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-D
    f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|h<rsub|n>|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0>
    proving that\ 

    <\equation>
      <label|eq 16.332.513><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|y|)>=0=C<rsub|0><around*|(|y|)>\<Rightarrowlim\><rsub|<text|<reference|limxi=x=\<gtr\>\|x-xi\|-\<gtr\>0>>><below|lim|n\<rightarrow\>\<infty\>><around*|\||f<rsub|n><around*|(|y|)>-C<rsub|0><around*|(|y|)>|\|>\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>><around*|\||f<rsub|n>-C<rsub|0>|\|>
    </equation>

    <reference|eq 16.330.513>, <reference|eq 16.331.513> and <reference|eq
    16.332.513> allows to use the Dominant Convergence Theorem (see
    <reference|Dominated convergence>) giving\ 

    <\equation>
      <label|eq 16.333.513><below|lim|n\<rightarrow\>\<infty\>><big|int>f<rsub|n>d\<mu\>=<big|int>C<rsub|0>d\<mu\>=0
    </equation>

    Finally given <math|n\<in\>\<bbb-N\><rsub|0>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|<around*|\||<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>+h<rsub|n>|)>-<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)>-L<around*|(|y<rsub|n>|)><around*|(|h<rsub|n>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>>|<cell|=>|<cell|>>|<row|<cell|<frac|<around*|\||<big|int>f<around*|(|x<rsub|0>+h<rsub|n>,y|)>d\<mu\><around*|(|y|)>-<big|int>f<around*|(|x<rsub|0>,y|)>d\<mu\><around*|(|y|)>-<big|int><around*|(|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>d\<mu\><around*|(|y|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>>|<cell|\<equallim\><rsub|<text|<reference|Properties
      of the Lebesgue Integral (2)>>>>|<cell|>>|<row|<cell|<around*|\||<big|int><frac|f<around*|(|x<rsub|0>+h<rsub|n>,y|)>-f<around*|(|x<rsub|0>,y|)>-<around*|(|D
      f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)><around*|(|y|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>d\<mu\><around*|(|y|)>|\|>>|<cell|=>|<cell|>>|<row|<cell|<around*|\||<big|int><frac|f<around*|(|.,y|)><around*|(|x<rsub|0>+h<rsub|n>|)>-f<around*|(|.,y|)><around*|(|x<rsub|0>|)>-<around*|(|D
      f<around*|(|.,y|)><around*|(|x<rsub|0>|)><around*|(|x|)>|)>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>d\<mu\><around*|(|y|)>|\|>>|<cell|\<equallim\><rsub|<text|<reference|eq
      16.329.513>>>>|<cell|>>|<row|<cell|<around*|\||<big|int>f<rsub|n><around*|(|y|)>d\<mu\><around*|(|y|)>|\|>>|<cell|>|<cell|>>>>
    </eqnarray*>

    \ So using <reference|eq 16.333.513> we have that
    <math|<below|lim|n\<rightarrow\>\<infty\>><frac|<around*|\||<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>+h<rsub|n>|)>-<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)>-L<around*|(|y<rsub|n>|)><around*|(|h<rsub|n>|)>|\|>|<around*|\<\|\|\>|h<rsub|n>|\<\|\|\>><rsub|X>>=0>
    which by <reference|alternative definitions of differentiability> and
    <reference|differentiability and restricted mapping> proves that
    <math|D<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>|)>>
    exists and <math|D<around*|(|<big|int>f<around*|(|.,y|)>d\<mu\><around*|(|y|)>|)><around*|(|x<rsub|0>|)>=L<around*|(|x<rsub|0>|)>=<big|int>D
    f<around*|(|.,.|)><around*|(|x<rsub|0>|)><around*|(|x|)>d\<mu\>>
  </proof>

  <\corollary>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space, <math|a,b\<in\>\<bbb-R\>> and
    <math|f:<around*|]|a,b|[>\<times\>X\<rightarrow\>\<bbb-R\>> be a function
    so that\ 

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have that <math|f<around*|(|.,x|)>>
      has a derivate <math|<around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t|)>>
      <math|\<forall\>t\<in\><around*|]|a,b|[>>

      <item><math|\<forall\>t\<in\><around*|]|a,b|[>> we have that
      <math|f<around*|(|t,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item>There exists a <math|g\<in\><wide|\<cal-L\><rsup|1><rsub|\<mu\>>|\<bar\>>>
      such that <math|\<forall\>x\<in\>X> we have
      <math|sup<around*|(|<around*|{|<around*|\||<around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t|)>|\|>\|t\<in\><around*|]|a,b|[>|}>|)>\<leqslant\>g<around*|(|x|)>>
    </enumerate>

    then <math|\<forall\>t<rsub|0>\<in\><around*|]|a,b|[>> that

    <\enumerate-alpha>
      <item>for <math|f<rprime|'><around*|(|t<rsub|0>,.|)>:X\<rightarrow\>\<bbb-R\>>
      defined by <math|x\<rightarrow\><around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t<rsub|0>|)>>
      we have that <math|f<rprime|'><around*|(|t<rsub|0>,.|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item><math|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>:U\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t|)>=<big|int>f<around*|(|t,x|)>
      d\<mu\><around*|(|x|)>> has a derivate on <math|U> and
      <math|><math|\<forall\>t<rsub|0>\<in\>U> we have
      <math|<around*|(|<big|int>f<around*|(|,x|)>d\<mu\><around*|(|x|)>|)><rprime|'><around*|(|t<rsub|0>|)>><math|=<big|int>f<rprime|'><around*|(|t<rsub|0>,x|)>d\<mu\><around*|(|x|)>>
    </enumerate-alpha>
  </corollary>

  <\proof>
    \ 

    Using <reference|differentias and derivates> on (1) we have
    <math|\<forall\>x\<in\>X> that <math|\<forall\>t\<in\><around*|]|a,b|[>>
    (a open set in <math|\<bbb-R\>>)

    <\equation>
      <label|eq 16.334.514>f<around*|(|.,x|)> is differentiable with D
      f<around*|(|.,x|)><around*|(|t|)>:\<bbb-R\>\<rightarrow\>\<bbb-R\> by
      y\<rightarrow\>y\<cdot\><around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t|)>
    </equation>

    and\ 

    Further <math|\<forall\>x\<in\>X,\<forall\>t\<in\><around*|]|a,b|[>> we
    have for <math|y\<in\>\<bbb-R\>> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||D
      f<around*|(|.,x|)><around*|(|t|)><around*|(|y|)>|\|>>|<cell|=>|<cell|<around*|\||y\<cdot\><around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t|)>|\|>>>|<row|<cell|>|<cell|=>|<cell|<around*|\||y|\|>\<cdot\><around*|\||<around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t|)>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||y|\|>\<cdot\>sup<around*|(|<around*|{|<around*|\||<around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|r|)>|\|>\|r\<in\><around*|]|a,b|[>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|3|)>>>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    which proves that <math|<around*|\<\|\|\>|D
    f<around*|(|.,x|)><around*|(|t|)>|\<\|\|\>>\<leqslant\>g<around*|(|x|)>>
    so that\ 

    <\equation>
      <label|eq 16.335.514>\<forall\>x\<in\>X\<vDash\>sup<around*|(|<around*|{|<around*|\<\|\|\>|D
      f<around*|(|.,x|)><around*|(|t|)>|\<\|\|\>>\|t\<in\><around*|]|a,b|[>|}>|)>\<leqslant\>g<around*|(|x|)>
    </equation>

    So the conditions for the previous theorem (<reference|differentiate
    under the integral sign>) are satisifed by (1), <reference|eq 16.334.514>
    and <reference|eq 16.335.514> giving for
    <math|t<rsub|0>\<in\><around*|]|a,b|[>>\ 

    <\enumerate-roman>
      <item><math|\<forall\>t\<in\>\<bbb-R\>> we have for <math|D
      f<around*|(|.,.|)><around*|(|t<rsub|0>|)><around*|(|t|)>:X\<rightarrow\>\<bbb-R\>>
      defined by <math|><math|x\<rightarrow\><around*|(|D
      f<around*|(|.,x|)><around*|(|t<rsub|0>|)>|)><around*|(|t|)>> that
      <math|><math|D f<around*|(|.,.|)><around*|(|t<rsub|0>|)><around*|(|t|)>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>

      <item><math|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>:<around*|]|a.b|[>\<rightarrow\>\<bbb-R\>>
      defined by <math|<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t|)>=<big|int>f<around*|(|t,x|)>d\<mu\>*<around*|(|x|)>>
      is differentiable on <math|U> and <math|\<forall\>t<rsub|0>\<in\>U> we
      have for \ <math|D<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t<rsub|0>|)>\<in\>L<around*|(|X,\<bbb-R\>|)>>
      (see <reference|differential of a function>) that
      <math|\<forall\>x\<in\>X> <math|<around*|(|D<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t<rsub|0>|)>|)><around*|(|t|)>=<big|int>D
      f<around*|(|.,.|)><around*|(|t<rsub|0>|)><around*|(|t|)>d\<mu\>\<equallim\><rsub|notation><big|int><around*|(|D
      f<around*|(|.,x|)><around*|(|t<rsub|0>|)><around*|(|t|)>|)>d\<mu\><around*|(|x|)>>
    </enumerate-roman>

    Now for the corollary we have\ 

    <\enumerate-alpha>
      <item>Now <math|>using <reference|eq 16.334.514> we have
      <math|\<forall\>x\<in\>X> that <math|<around*|(|D
      f<around*|(|.,.|)><around*|(|t<rsub|0>|)><around*|(|1|)>|)><around*|(|x|)>=D
      f<around*|(|.,x|)><around*|(|t<rsub|0>|)><around*|(|1|)>\<equallim\><rsub|<text|<reference|differentias
      and derivates>>><around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t<rsub|0>|)>=<around*|(|f<around*|(|.,x|)>|)><rprime|'><around*|(|t<rsub|0>|)>=f<rprime|'><around*|(|t<rsub|0>,.|)><around*|(|x|)>><space|1em>proving
      that <math|f'(t<rsub|0>,.)=(D f(.,.)(t<rsub|0>)(1))\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>>
      <math|>(see (i)) so that\ 

      <\equation>
        <label|eq 16.336.513>f'(t<rsub|0>,.)\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>
      </equation>

      <item>From (ii) and <reference|differentias and derivates> we have that
      <math|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>> has a derivate
      with <math|\<forall\>t<rsub|0>\<in\>U>
      <math|<around*|(|<big|int>f<around*|(|,x|)>d\<mu\><around*|(|x|)>|)><rprime|'><around*|(|t<rsub|0>|)>=<around*|(|D<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t<rsub|0>|)>|)><around*|(|1|)>\<equallim\><rsub|<around*|(|ii|)>><big|int>D
      f<around*|(|.,x|)><around*|(|t<rsub|0>|)><around*|(|1|)>d\<mu\><around*|(|x|)>\<equallim\><rsub|<text|<reference|differentias
      and derivates>>><big|int><around*|(|f<rprime|'><around*|(|.,x|)>|)><rprime|'><around*|(|t<rsub|0>|)>d\<mu\>>
      proving that\ 

      <\equation>
        <label|eq 16.337.513><text|<math|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>:U\<rightarrow\>\<bbb-R\>>
        defined by <math|<around*|(|<big|int>f<around*|(|.,x|)>d\<mu\><around*|(|x|)>|)><around*|(|t|)>=<big|int>f<around*|(|t,x|)>
        d\<mu\><around*|(|x|)>> has a derivate on <math|U> and
        <math|><math|\<forall\>t<rsub|0>\<in\>U> we have
        <math|<around*|(|<big|int>f<around*|(|,x|)>d\<mu\><around*|(|x|)>|)><rprime|'><around*|(|t<rsub|0>|)>><math|=<big|int>f<rprime|'><around*|(|t<rsub|0>,x|)>d\<mu\><around*|(|x|)>>>
      </equation>
    </enumerate-alpha>
  </proof>

  <section|The function spaces <math|\<cal-L\><rsup|n><rsub|\<mu\>>> where
  <math|n\<in\><around*|[|1,\<ldots\>,\<infty\>|]>>>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space, <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|\<cal-L\><rsup|p><rsub|\<mu\>>=<around*|{|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\|<around*|\||f|\|><rsup|n>\<in\>\<cal-L\><rsup|1><rsub|\<mu\>>|}>\<equallim\><rsub|<text|<reference|Lebesgue
    integral as extension>>><around*|{|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\|<big|int><rsub|+><around*|\||f|\|><rsup|n>d\<mu\>\<less\>\<infty\>|}>>.
    Note that from the definition we have that
    <math|<big|int><around*|\||f|\|><rsup|n>d\<mu\>> exists and
    <math|<big|int><around*|\||f|\|><rsup|n>d\<mu\>\<less\>\<infty\>>
  </definition>

  <\definition>
    \;
  </definition>

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|14>
    <associate|page-first|567>
    <associate|page-medium|paper>
    <associate|section-nr|7<uninit>>
    <associate|subsection-nr|0>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|1A is Borel|<tuple|16.194|655>>
    <associate|1A.f|<tuple|16.240|674>>
    <associate|1ANB=1A*1B|<tuple|16.193|654>>
    <associate|\<less\>f\<less\>a\<gtr\>|<tuple|16.195|655>>
    <associate|Beppo Levi|<tuple|16.225|668>>
    <associate|Beppo Levi consequence (1)|<tuple|16.226|669>>
    <associate|Beppo Levi consequence (2)|<tuple|16.227|669>>
    <associate|Borel algebra on R^n|<tuple|16.83|601>>
    <associate|Borel algebra on the extended reals|<tuple|16.77|595>>
    <associate|Borel algebra on the reals|<tuple|16.73|592>>
    <associate|Borel algebras and closed sets|<tuple|16.55|585>>
    <associate|Borel basis|<tuple|16.58|586>>
    <associate|Borel function as limit of simple
    functions|<tuple|16.209|660>>
    <associate|Borel function to finite Borel function|<tuple|16.255|679>>
    <associate|Borel measure and Dyadic intervals|<tuple|16.82|600>>
    <associate|Borel set+x|<tuple|16.60|586>>
    <associate|Caratheodory|<tuple|16.109|613>>
    <associate|Continuity Lemma|<tuple|16.263|686>>
    <associate|Dominated convergence|<tuple|16.260|683>>
    <associate|Dyadic cubes|<tuple|16.80|599>>
    <associate|Dyadic interval|<tuple|16.68|590>>
    <associate|Dyadic intervals is denumerable|<tuple|16.69|590>>
    <associate|Dynkin|<tuple|16.35|581>>
    <associate|Dynkin system generator|<tuple|16.42|582>>
    <associate|Fatou|<tuple|16.231|670>>
    <associate|Lebesgue integrable functions are a.e
    finite|<tuple|16.254|679>>
    <associate|Lebesgue integral as extension|<tuple|16.236|671>>
    <associate|Lebesgue integral of 0 (1)|<tuple|16.223|668>>
    <associate|Lebesgue integral of 0 (2)|<tuple|16.237|672>>
    <associate|Lebesgue integral of Borel function|<tuple|16.232|671>>
    <associate|Lebesgue integral of positive functions and null
    set|<tuple|16.250|675>>
    <associate|Lebesgue measure|<tuple|16.125|624>>
    <associate|Lebesgue measure of T(A|<tuple|16.166|645>>
    <associate|Lebesgue measure on R^n|<tuple|16.143|634>>
    <associate|Lebesgue measures are Radon measures|<tuple|16.161|642>>
    <associate|Lebesgue measures are local finite|<tuple|16.160|642>>
    <associate|Markov inequality|<tuple|16.242|674>>
    <associate|Monotone Convergence Theorem|<tuple|16.259|682>>
    <associate|P(X) is a Dynkin system on X|<tuple|16.37|581>>
    <associate|Properties of the Lebesgue Integral (2)|<tuple|16.239|672>>
    <associate|R can be written as a countable union of halfopen
    intervals|<tuple|16.47|584>>
    <associate|R^n can be written as a countable union of half open
    rectangles|<tuple|16.51|585>>
    <associate|Radon measure on R^n and Lebesgue measure|<tuple|16.163|643>>
    <associate|[a,b[=\<gtr\>[a,@@[|<tuple|16.64|589>>
    <associate|[a,b[=]-@@,a[|<tuple|16.67|589>>
    <associate|]a,b]=\<gtr\>]a,@@[|<tuple|16.65|589>>
    <associate|]a,b]=]-@@,b]|<tuple|16.66|589>>
    <associate|a Dynkin system closed under intersection is a
    sigma-algebra|<tuple|16.39|582>>
    <associate|a.e. and Lebesgie|<tuple|16.252|678>>
    <associate|additivity of volume|<tuple|16.139|630>>
    <associate|algebra|<tuple|16.23|575>>
    <associate|all simple functions are borel|<tuple|16.200|656>>
    <associate|alternative definition for a sigma algebra|<tuple|16.14|574>>
    <associate|alternative definition of a Dynkin system|<tuple|16.38|581>>
    <associate|alternative definition of a content|<tuple|16.86|602>>
    <associate|alternative definition of a m measurable
    sets|<tuple|16.108|613>>
    <associate|alternative definition of algebra|<tuple|16.24|575>>
    <associate|auto-1|<tuple|16|569>>
    <associate|auto-10|<tuple|16.18|574>>
    <associate|auto-11|<tuple|16.21|575>>
    <associate|auto-12|<tuple|16.23|575>>
    <associate|auto-13|<tuple|16.26|576>>
    <associate|auto-14|<tuple|16.31|579>>
    <associate|auto-15|<tuple|16.35|581>>
    <associate|auto-16|<tuple|16.41|582>>
    <associate|auto-17|<tuple|16.2.1|583>>
    <associate|auto-18|<tuple|16.44|583>>
    <associate|auto-19|<tuple|16.45|583>>
    <associate|auto-2|<tuple|16.1|569>>
    <associate|auto-20|<tuple|16.49|584>>
    <associate|auto-21|<tuple|16.50|585>>
    <associate|auto-22|<tuple|16.50|585>>
    <associate|auto-23|<tuple|16.3|585>>
    <associate|auto-24|<tuple|16.3.1|587>>
    <associate|auto-25|<tuple|16.68|590>>
    <associate|auto-26|<tuple|16.3.2|593>>
    <associate|auto-27|<tuple|16.3.3|597>>
    <associate|auto-28|<tuple|16.80|599>>
    <associate|auto-29|<tuple|16.4|601>>
    <associate|auto-3|<tuple|16.1|569>>
    <associate|auto-30|<tuple|16.84|601>>
    <associate|auto-31|<tuple|16.85|602>>
    <associate|auto-32|<tuple|16.87|602>>
    <associate|auto-33|<tuple|16.90|602>>
    <associate|auto-34|<tuple|16.99|610>>
    <associate|auto-35|<tuple|16.99|610>>
    <associate|auto-36|<tuple|16.101|610>>
    <associate|auto-37|<tuple|16.4.1|611>>
    <associate|auto-38|<tuple|16.105|612>>
    <associate|auto-39|<tuple|16.107|613>>
    <associate|auto-4|<tuple|16.1|569>>
    <associate|auto-40|<tuple|16.107|613>>
    <associate|auto-41|<tuple|16.109|613>>
    <associate|auto-42|<tuple|16.4.2|619>>
    <associate|auto-43|<tuple|16.4.2.1|619>>
    <associate|auto-44|<tuple|16.114|619>>
    <associate|auto-45|<tuple|16.125|624>>
    <associate|auto-46|<tuple|16.4.2.2|624>>
    <associate|auto-47|<tuple|16.4.3|626>>
    <associate|auto-48|<tuple|16.4.3.1|626>>
    <associate|auto-49|<tuple|16.4.3.2|634>>
    <associate|auto-5|<tuple|16.5|570>>
    <associate|auto-50|<tuple|16.5|635>>
    <associate|auto-51|<tuple|16.5.1|635>>
    <associate|auto-52|<tuple|16.153|638>>
    <associate|auto-53|<tuple|16.153|638>>
    <associate|auto-54|<tuple|16.153|638>>
    <associate|auto-55|<tuple|16.153|638>>
    <associate|auto-56|<tuple|16.153|638>>
    <associate|auto-57|<tuple|16.5.2|642>>
    <associate|auto-58|<tuple|16.6|647>>
    <associate|auto-59|<tuple|16.170|647>>
    <associate|auto-6|<tuple|16.5|570>>
    <associate|auto-60|<tuple|16.171|647>>
    <associate|auto-61|<tuple|16.172|647>>
    <associate|auto-62|<tuple|16.172|647>>
    <associate|auto-63|<tuple|16.6.1|652>>
    <associate|auto-64|<tuple|16.187|653>>
    <associate|auto-65|<tuple|16.189|654>>
    <associate|auto-66|<tuple|16.6.2|654>>
    <associate|auto-67|<tuple|16.192|654>>
    <associate|auto-68|<tuple|16.192|654>>
    <associate|auto-69|<tuple|16.198|656>>
    <associate|auto-7|<tuple|16.2|573>>
    <associate|auto-70|<tuple|16.198|656>>
    <associate|auto-71|<tuple|16.7|666>>
    <associate|auto-72|<tuple|16.218|666>>
    <associate|auto-73|<tuple|16.221|667>>
    <associate|auto-74|<tuple|16.8|671>>
    <associate|auto-75|<tuple|16.8.1|671>>
    <associate|auto-76|<tuple|16.232|671>>
    <associate|auto-77|<tuple|16.234|671>>
    <associate|auto-78|<tuple|16.241|674>>
    <associate|auto-79|<tuple|16.244|674>>
    <associate|auto-8|<tuple|16.11|573>>
    <associate|auto-80|<tuple|16.8.2|675>>
    <associate|auto-81|<tuple|16.9|680>>
    <associate|auto-82|<tuple|16.9.1|680>>
    <associate|auto-83|<tuple|16.9.2|686>>
    <associate|auto-84|<tuple|16.10|691>>
    <associate|auto-9|<tuple|16.12|573>>
    <associate|characterization of extended real Borel
    functions|<tuple|16.190|654>>
    <associate|characterization of real Borel functions|<tuple|16.188|653>>
    <associate|characterization of simple functions|<tuple|16.201|656>>
    <associate|closure of union or intersection|<tuple|16.6|570>>
    <associate|composition of measurab;e functions|<tuple|16.181|652>>
    <associate|condition for a Radon measure|<tuple|16.159|640>>
    <associate|condition for ordering intervals|<tuple|16.116|620>>
    <associate|condition for pre-measure on a ring|<tuple|16.97|609>>
    <associate|condition for pre-measure on a ring generated by a semi
    ring|<tuple|16.98|609>>
    <associate|conditions for Lebesgue integrability|<tuple|16.238|672>>
    <associate|conditions for a pre-measure|<tuple|16.95|607>>
    <associate|consequence of definition of outer measure|<tuple|16.106|613>>
    <associate|construction a outer measure|<tuple|16.111|616>>
    <associate|content|<tuple|16.85|602>>
    <associate|content on a semi ring|<tuple|16.84|601>>
    <associate|continuous mappings are measurable|<tuple|16.175|649>>
    <associate|corollary 16.70|<tuple|16.75|594>>
    <associate|definition of a R[S]|<tuple|16.31|579>>
    <associate|differentiate under the integral sign|<tuple|16.264|686>>
    <associate|distribute intersection over union|<tuple|16.4|569>>
    <associate|empty interval|<tuple|16.115|619>>
    <associate|eq 13.137.81|<tuple|16.208|642>>
    <associate|eq 15.1.402|<tuple|16.8|582>>
    <associate|eq 15.1.416|<tuple|16.3|577>>
    <associate|eq 15.1.417|<tuple|16.1|570>>
    <associate|eq 15.10.405|<tuple|16.86|605>>
    <associate|eq 15.11.504|<tuple|16.87|606>>
    <associate|eq 15.1170.467|<tuple|16.199|640>>
    <associate|eq 15.12.405|<tuple|16.88|606>>
    <associate|eq 15.13.405|<tuple|16.89|606>>
    <associate|eq 15.136.472|<tuple|16.145|634>>
    <associate|eq 15.14.405|<tuple|16.90|606>>
    <associate|eq 15.14.420|<tuple|16.14|584>>
    <associate|eq 15.15.420|<tuple|16.15|584>>
    <associate|eq 15.156.463|<tuple|16.185|636>>
    <associate|eq 15.157.463|<tuple|16.186|636>>
    <associate|eq 15.158.463|<tuple|16.187|636>>
    <associate|eq 15.159.463|<tuple|16.188|636>>
    <associate|eq 15.16.405|<tuple|16.92|607>>
    <associate|eq 15.16.447|<tuple|16.16|585>>
    <associate|eq 15.160.465|<tuple|16.189|636>>
    <associate|eq 15.161.465|<tuple|16.190|636>>
    <associate|eq 15.162.465|<tuple|16.191|637>>
    <associate|eq 15.163.465|<tuple|16.192|637>>
    <associate|eq 15.164.466|<tuple|16.193|637>>
    <associate|eq 15.165.466|<tuple|16.194|637>>
    <associate|eq 15.166.466|<tuple|16.195|638>>
    <associate|eq 15.167.466|<tuple|16.196|638>>
    <associate|eq 15.168.466|<tuple|16.197|638>>
    <associate|eq 15.169.467|<tuple|16.198|640>>
    <associate|eq 15.17.405|<tuple|16.93|607>>
    <associate|eq 15.171.467|<tuple|16.200|641>>
    <associate|eq 15.172.467|<tuple|16.201|641>>
    <associate|eq 15.173.468|<tuple|16.202|641>>
    <associate|eq 15.174.469|<tuple|16.203|641>>
    <associate|eq 15.175.469|<tuple|16.204|641>>
    <associate|eq 15.176.469|<tuple|16.205|641>>
    <associate|eq 15.177.469|<tuple|16.206|641>>
    <associate|eq 15.178.469|<tuple|16.207|642>>
    <associate|eq 15.18.405|<tuple|16.94|607>>
    <associate|eq 15.18.448|<tuple|16.19|587>>
    <associate|eq 15.18.469|<tuple|16.18|586>>
    <associate|eq 15.181.470|<tuple|16.213|643>>
    <associate|eq 15.181.473|<tuple|16.209|642>>
    <associate|eq 15.182.470|<tuple|16.214|644>>
    <associate|eq 15.182.473|<tuple|16.210|643>>
    <associate|eq 15.183.470|<tuple|16.215|644>>
    <associate|eq 15.183.473|<tuple|16.211|643>>
    <associate|eq 15.184.472|<tuple|16.216|644>>
    <associate|eq 15.184.473|<tuple|16.212|643>>
    <associate|eq 15.185.472|<tuple|16.216|644>>
    <associate|eq 15.19.406|<tuple|16.95|607>>
    <associate|eq 15.19.448|<tuple|16.20|587>>
    <associate|eq 15.2.416|<tuple|16.4|578>>
    <associate|eq 15.2.417|<tuple|16.2|570>>
    <associate|eq 15.20.448|<tuple|16.21|587>>
    <associate|eq 15.21.406|<tuple|16.97|608>>
    <associate|eq 15.21.448|<tuple|16.22|587>>
    <associate|eq 15.22.407|<tuple|16.98|608>>
    <associate|eq 15.22.448|<tuple|16.23|587>>
    <associate|eq 15.23.407|<tuple|16.99|608>>
    <associate|eq 15.23.448|<tuple|16.24|587>>
    <associate|eq 15.24.407|<tuple|16.100|608>>
    <associate|eq 15.24.448|<tuple|16.25|587>>
    <associate|eq 15.25.407|<tuple|16.106|611>>
    <associate|eq 15.25.448|<tuple|16.26|588>>
    <associate|eq 15.26.407|<tuple|16.107|611>>
    <associate|eq 15.26.448|<tuple|16.27|588>>
    <associate|eq 15.27.411|<tuple|16.108|611>>
    <associate|eq 15.27.448|<tuple|16.28|588>>
    <associate|eq 15.28.411|<tuple|16.109|611>>
    <associate|eq 15.29\<point\>411|<tuple|16.110|611>>
    <associate|eq 15.3.417|<tuple|16.5|579>>
    <associate|eq 15.30.411|<tuple|16.111|611>>
    <associate|eq 15.32.429|<tuple|16.101|609>>
    <associate|eq 15.33.429|<tuple|16.101|609>>
    <associate|eq 15.34.429|<tuple|16.103|609>>
    <associate|eq 15.35.429|<tuple|16.104|609>>
    <associate|eq 15.36.429|<tuple|16.105|610>>
    <associate|eq 15.36.451|<tuple|16.38|590>>
    <associate|eq 15.37.451|<tuple|16.39|590>>
    <associate|eq 15.38.427|<tuple|16.143|619>>
    <associate|eq 15.38.451|<tuple|16.40|590>>
    <associate|eq 15.39.427|<tuple|16.144|619>>
    <associate|eq 15.39.451|<tuple|16.41|590>>
    <associate|eq 15.39.456|<tuple|16.49|593>>
    <associate|eq 15.4.403|<tuple|16.9|583>>
    <associate|eq 15.40.428|<tuple|16.118|620>>
    <associate|eq 15.40.452|<tuple|16.42|591>>
    <associate|eq 15.40.457|<tuple|16.69|597>>
    <associate|eq 15.41.428|<tuple|16.146|621>>
    <associate|eq 15.41.452|<tuple|16.43|591>>
    <associate|eq 15.42.428|<tuple|16.147|621>>
    <associate|eq 15.42.452|<tuple|16.44|591>>
    <associate|eq 15.42.457|<tuple|16.71|597>>
    <associate|eq 15.43.428|<tuple|16.148|621>>
    <associate|eq 15.43.439|<tuple|16.112|612>>
    <associate|eq 15.43.452|<tuple|16.46|592>>
    <associate|eq 15.43.455|<tuple|16.45|592>>
    <associate|eq 15.43.457|<tuple|16.72|597>>
    <associate|eq 15.44.428|<tuple|16.149|621>>
    <associate|eq 15.44.440|<tuple|16.113|612>>
    <associate|eq 15.44.452|<tuple|16.47|592>>
    <associate|eq 15.44.579|<tuple|16.73|598>>
    <associate|eq 15.45.428|<tuple|16.150|621>>
    <associate|eq 15.45.440|<tuple|16.114|612>>
    <associate|eq 15.45.459|<tuple|16.74|598>>
    <associate|eq 15.46.428|<tuple|16.151|621>>
    <associate|eq 15.46.440|<tuple|16.115|613>>
    <associate|eq 15.46.455|<tuple|16.48|592>>
    <associate|eq 15.46.459|<tuple|16.75|598>>
    <associate|eq 15.47.428|<tuple|16.152|621>>
    <associate|eq 15.47.440|<tuple|16.116|613>>
    <associate|eq 15.47.459|<tuple|16.76|598>>
    <associate|eq 15.48.428|<tuple|16.153|622>>
    <associate|eq 15.48.439|<tuple|16.182|633>>
    <associate|eq 15.48.440|<tuple|16.117|613>>
    <associate|eq 15.48.459|<tuple|16.77|599>>
    <associate|eq 15.49.428|<tuple|16.154|622>>
    <associate|eq 15.49.440|<tuple|16.118|613>>
    <associate|eq 15.49.460|<tuple|16.78|599>>
    <associate|eq 15.5.403|<tuple|16.10|583>>
    <associate|eq 15.50.440|<tuple|16.119|613>>
    <associate|eq 15.50.461|<tuple|16.79|600>>
    <associate|eq 15.51.440|<tuple|16.120|614>>
    <associate|eq 15.51.461|<tuple|16.80|600>>
    <associate|eq 15.52.440|<tuple|16.121|614>>
    <associate|eq 15.52.461|<tuple|16.81|600>>
    <associate|eq 15.53.440|<tuple|16.122|614>>
    <associate|eq 15.53.461|<tuple|16.82|600>>
    <associate|eq 15.54.440|<tuple|16.123|614>>
    <associate|eq 15.54.462|<tuple|16.83|600>>
    <associate|eq 15.55.429|<tuple|16.155|624>>
    <associate|eq 15.55.440|<tuple|16.124|614>>
    <associate|eq 15.55.462|<tuple|16.84|600>>
    <associate|eq 15.56.429|<tuple|16.156|624>>
    <associate|eq 15.56.440|<tuple|16.125|614>>
    <associate|eq 15.57.430|<tuple|16.157|627>>
    <associate|eq 15.57.440|<tuple|16.126|614>>
    <associate|eq 15.58.430|<tuple|16.158|627>>
    <associate|eq 15.58.440|<tuple|16.127|614>>
    <associate|eq 15.59.431|<tuple|16.159|627>>
    <associate|eq 15.59.440|<tuple|16.128|614>>
    <associate|eq 15.6.403|<tuple|16.11|583>>
    <associate|eq 15.6.418|<tuple|16.6|580>>
    <associate|eq 15.60.431|<tuple|16.160|627>>
    <associate|eq 15.60.440|<tuple|16.129|615>>
    <associate|eq 15.61.431|<tuple|16.161|628>>
    <associate|eq 15.61.440|<tuple|16.130|615>>
    <associate|eq 15.62.431|<tuple|16.162|628>>
    <associate|eq 15.62.440|<tuple|16.132|616>>
    <associate|eq 15.62.440.2|<tuple|16.131|615>>
    <associate|eq 15.63.431|<tuple|16.163|628>>
    <associate|eq 15.63.440|<tuple|16.133|616>>
    <associate|eq 15.64.431|<tuple|16.164|628>>
    <associate|eq 15.64.440|<tuple|16.134|616>>
    <associate|eq 15.65.431|<tuple|16.165|628>>
    <associate|eq 15.65.440|<tuple|16.135|616>>
    <associate|eq 15.67.431|<tuple|16.138|629>>
    <associate|eq 15.67.441|<tuple|16.136|616>>
    <associate|eq 15.68.431|<tuple|16.168|629>>
    <associate|eq 15.68.442|<tuple|16.137|617>>
    <associate|eq 15.69.431|<tuple|16.169|629>>
    <associate|eq 15.69.443|<tuple|16.138|617>>
    <associate|eq 15.7.403|<tuple|16.12|583>>
    <associate|eq 15.7.418|<tuple|16.7|580>>
    <associate|eq 15.70.432|<tuple|16.170|630>>
    <associate|eq 15.70.444|<tuple|16.139|618>>
    <associate|eq 15.71.432|<tuple|16.171|630>>
    <associate|eq 15.71.444|<tuple|16.140|618>>
    <associate|eq 15.72.432|<tuple|16.172|630>>
    <associate|eq 15.72.444|<tuple|16.141|618>>
    <associate|eq 15.73.432|<tuple|16.173|630>>
    <associate|eq 15.73.444|<tuple|16.142|618>>
    <associate|eq 15.74.433|<tuple|16.174|630>>
    <associate|eq 15.75.433|<tuple|16.175|630>>
    <associate|eq 15.76.434|<tuple|16.176|630>>
    <associate|eq 15.77.435|<tuple|16.177|631>>
    <associate|eq 15.78.435|<tuple|16.178|631>>
    <associate|eq 15.79.435|<tuple|16.179|631>>
    <associate|eq 15.80.437|<tuple|16.180|632>>
    <associate|eq 15.81.439|<tuple|16.181|633>>
    <associate|eq 15.83.439|<tuple|16.183|633>>
    <associate|eq 15.85.439.1|<tuple|16.184|633>>
    <associate|eq 15.9.405|<tuple|16.85|605>>
    <associate|eq 16.190.476|<tuple|16.218|646>>
    <associate|eq 16.191.476|<tuple|16.219|646>>
    <associate|eq 16.192.476|<tuple|16.220|646>>
    <associate|eq 16.193.478|<tuple|16.226|649>>
    <associate|eq 16.193.480|<tuple|16.221|647>>
    <associate|eq 16.194.478|<tuple|16.227|649>>
    <associate|eq 16.194.480|<tuple|16.222|647>>
    <associate|eq 16.195.478|<tuple|16.228|649>>
    <associate|eq 16.195.480|<tuple|16.223|647>>
    <associate|eq 16.196.478|<tuple|16.229|649>>
    <associate|eq 16.196.480|<tuple|16.224|647>>
    <associate|eq 16.197.478|<tuple|16.230|650>>
    <associate|eq 16.197.480|<tuple|16.225|647>>
    <associate|eq 16.198.478|<tuple|16.231|650>>
    <associate|eq 16.199.768|<tuple|16.232|650>>
    <associate|eq 16.200.486|<tuple|16.233|650>>
    <associate|eq 16.201.468|<tuple|16.234|651>>
    <associate|eq 16.207.480|<tuple|16.235|651>>
    <associate|eq 16.208.480|<tuple|16.236|651>>
    <associate|eq 16.237.489|<tuple|16.237|655>>
    <associate|eq 16.238.489|<tuple|16.243|658>>
    <associate|eq 16.238.490|<tuple|16.238|656>>
    <associate|eq 16.239.489|<tuple|16.244|658>>
    <associate|eq 16.239.490|<tuple|16.239|656>>
    <associate|eq 16.240.502|<tuple|16.240|657>>
    <associate|eq 16.241.502|<tuple|16.241|657>>
    <associate|eq 16.242.490|<tuple|16.245|661>>
    <associate|eq 16.242.502|<tuple|16.242|658>>
    <associate|eq 16.243.490|<tuple|16.246|661>>
    <associate|eq 16.244.490|<tuple|16.247|661>>
    <associate|eq 16.245.490|<tuple|16.248|661>>
    <associate|eq 16.246.490|<tuple|16.249|662>>
    <associate|eq 16.247.491|<tuple|16.250|662>>
    <associate|eq 16.248.491|<tuple|16.251|662>>
    <associate|eq 16.249.491|<tuple|16.252|662>>
    <associate|eq 16.250.491|<tuple|16.253|662>>
    <associate|eq 16.251.492|<tuple|16.254|663>>
    <associate|eq 16.252.492|<tuple|16.255|663>>
    <associate|eq 16.255.497|<tuple|16.258|666>>
    <associate|eq 16.256.297|<tuple|16.259|666>>
    <associate|eq 16.257.498|<tuple|16.260|668>>
    <associate|eq 16.258.498|<tuple|16.262|668>>
    <associate|eq 16.259.498|<tuple|16.261|668>>
    <associate|eq 16.260.498|<tuple|16.263|668>>
    <associate|eq 16.261.498|<tuple|16.264|668>>
    <associate|eq 16.262.498|<tuple|16.265|668>>
    <associate|eq 16.263.498|<tuple|16.266|669>>
    <associate|eq 16.264.499|<tuple|16.267|669>>
    <associate|eq 16.265.500|<tuple|16.268|670>>
    <associate|eq 16.266.501|<tuple|16.269|671>>
    <associate|eq 16.267.501|<tuple|16.270|671>>
    <associate|eq 16.268.502|<tuple|16.271|673>>
    <associate|eq 16.272.502|<tuple|16.273|675>>
    <associate|eq 16.272.504|<tuple|16.272|674>>
    <associate|eq 16.274.505|<tuple|16.274|675>>
    <associate|eq 16.275.505|<tuple|16.275|676>>
    <associate|eq 16.276.505|<tuple|16.276|676>>
    <associate|eq 16.277.505|<tuple|16.277|676>>
    <associate|eq 16.278.505|<tuple|16.278|676>>
    <associate|eq 16.279.505|<tuple|16.279|676>>
    <associate|eq 16.282.504|<tuple|16.280|677>>
    <associate|eq 16.283.505|<tuple|16.283|678>>
    <associate|eq 16.284.504|<tuple|16.281|677>>
    <associate|eq 16.284.505|<tuple|16.284|679>>
    <associate|eq 16.285.504|<tuple|16.282|677>>
    <associate|eq 16.285.505|<tuple|16.285|679>>
    <associate|eq 16.286.505|<tuple|16.286|679>>
    <associate|eq 16.287.505|<tuple|16.287|679>>
    <associate|eq 16.288.505|<tuple|16.288|679>>
    <associate|eq 16.289.505|<tuple|16.289|679>>
    <associate|eq 16.29.487|<tuple|16.29|588>>
    <associate|eq 16.290.508|<tuple|16.290|680>>
    <associate|eq 16.291.508|<tuple|16.291|680>>
    <associate|eq 16.292.508|<tuple|16.292|680>>
    <associate|eq 16.293.508|<tuple|16.293|681>>
    <associate|eq 16.294.508|<tuple|16.294|681>>
    <associate|eq 16.295.508|<tuple|16.295|681>>
    <associate|eq 16.296.508|<tuple|16.296|681>>
    <associate|eq 16.297.507|<tuple|16.301|683>>
    <associate|eq 16.297.508|<tuple|16.297|681>>
    <associate|eq 16.298.507|<tuple|16.302|683>>
    <associate|eq 16.298.508|<tuple|16.298|682>>
    <associate|eq 16.299.507|<tuple|16.303|683>>
    <associate|eq 16.299.508|<tuple|16.299|682>>
    <associate|eq 16.30.487|<tuple|16.30|588>>
    <associate|eq 16.300.507|<tuple|16.304|683>>
    <associate|eq 16.300.508|<tuple|16.300|682>>
    <associate|eq 16.305.511|<tuple|16.305|684>>
    <associate|eq 16.306.511|<tuple|16.306|684>>
    <associate|eq 16.307.511|<tuple|16.307|684>>
    <associate|eq 16.308.511|<tuple|16.308|684>>
    <associate|eq 16.309.511|<tuple|16.309|684>>
    <associate|eq 16.31.487|<tuple|16.31|588>>
    <associate|eq 16.310.511|<tuple|16.310|684>>
    <associate|eq 16.311.511|<tuple|16.311|684>>
    <associate|eq 16.312.511|<tuple|16.312|685>>
    <associate|eq 16.313.511|<tuple|16.313|685>>
    <associate|eq 16.314.511|<tuple|16.314|685>>
    <associate|eq 16.315.512|<tuple|16.315|686>>
    <associate|eq 16.316.512|<tuple|16.316|686>>
    <associate|eq 16.317.512|<tuple|16.317|686>>
    <associate|eq 16.318.513|<tuple|16.318|687>>
    <associate|eq 16.319.513|<tuple|16.319|687>>
    <associate|eq 16.32.487|<tuple|16.32|588>>
    <associate|eq 16.320.513|<tuple|16.320|687>>
    <associate|eq 16.321.513|<tuple|16.321|687>>
    <associate|eq 16.322.513|<tuple|16.322|688>>
    <associate|eq 16.324.513|<tuple|16.324|688>>
    <associate|eq 16.325.513|<tuple|16.325|688>>
    <associate|eq 16.326.513|<tuple|16.326|688>>
    <associate|eq 16.327.513|<tuple|16.327|689>>
    <associate|eq 16.328.513|<tuple|16.328|689>>
    <associate|eq 16.329.513|<tuple|16.329|689>>
    <associate|eq 16.33.487|<tuple|16.33|588>>
    <associate|eq 16.330.513|<tuple|16.330|689>>
    <associate|eq 16.331.513|<tuple|16.331|689>>
    <associate|eq 16.332.513|<tuple|16.332|689>>
    <associate|eq 16.333.513|<tuple|16.333|690>>
    <associate|eq 16.334.514|<tuple|16.334|690>>
    <associate|eq 16.335.514|<tuple|16.335|690>>
    <associate|eq 16.336.513|<tuple|16.336|691>>
    <associate|eq 16.337.513|<tuple|16.337|691>>
    <associate|eq 16.34.487|<tuple|16.34|589>>
    <associate|eq 16.35.487|<tuple|16.35|589>>
    <associate|eq 16.36.487|<tuple|16.36|589>>
    <associate|eq 16.37.487|<tuple|16.37|589>>
    <associate|eq 16.41.484|<tuple|16.50|593>>
    <associate|eq 16.42.483|<tuple|16.58|596>>
    <associate|eq 16.42.484|<tuple|16.51|593>>
    <associate|eq 16.43.484|<tuple|16.52|594>>
    <associate|eq 16.44.484|<tuple|16.53|594>>
    <associate|eq 16.45.483|<tuple|16.54|594>>
    <associate|eq 16.46.483|<tuple|16.55|594>>
    <associate|eq 16.47.483|<tuple|16.56|594>>
    <associate|eq 16.50.486|<tuple|16.57|596>>
    <associate|eq 16.52.486|<tuple|16.59|596>>
    <associate|eq 16.53.486|<tuple|16.60|596>>
    <associate|eq 16.54.486|<tuple|16.61|596>>
    <associate|eq 16.55.486|<tuple|16.62|596>>
    <associate|eq 16.59.487|<tuple|16.63|596>>
    <associate|eq 16.60.487|<tuple|16.64|596>>
    <associate|eq 16.61.487|<tuple|16.65|596>>
    <associate|eq 16.62.487|<tuple|16.66|597>>
    <associate|eq 16.63.487|<tuple|16.67|597>>
    <associate|eq 16.64.487|<tuple|16.68|597>>
    <associate|eq 51.8.403|<tuple|16.13|583>>
    <associate|eq eq 16.323.513|<tuple|16.323|688>>
    <associate|equality for regular measures|<tuple|16.156|640>>
    <associate|equivalence of measures definitions|<tuple|16.149|635>>
    <associate|every sigma algebra is a Dynkin system|<tuple|16.36|581>>
    <associate|extending content (pre measure)|<tuple|16.89|602>>
    <associate|extending pre-measure on a ring to the sigma
    algebra|<tuple|16.112|618>>
    <associate|extented content|<tuple|16.90|602>>
    <associate|extented real Borel functions|<tuple|16.189|654>>
    <associate|f Borel =\<gtr\> \|f\| is Borel|<tuple|16.215|666>>
    <associate|f is Borel if f+,f- is|<tuple|16.214|665>>
    <associate|f+,f- is Borel if f is|<tuple|16.204|658>>
    <associate|f,g a.e.f+,g+,f-,g- a.e.|<tuple|16.249|675>>
    <associate|f=f+-f-|<tuple|16.203|656>>
    <associate|family of reals to intervals|<tuple|16.136|627>>
    <associate|finite measure on a Borel space|<tuple|16.151|638>>
    <associate|first sigma algebra on R^n|<tuple|16.78|597>>
    <associate|homeomorphism and Borel sets|<tuple|16.164|645>>
    <associate|if A is closed under intersection then
    S(A)=D(A)|<tuple|16.43|583>>
    <associate|image measure|<tuple|16.172|647>>
    <associate|image measure of a linear isomorphism|<tuple|16.180|652>>
    <associate|in a hausdorf space every compact set is
    Borel|<tuple|16.152|638>>
    <associate|indicator function|<tuple|16.192|654>>
    <associate|insersection of a family of sigma algebras is a sigma
    algebra|<tuple|16.17|574>>
    <associate|integral and partition|<tuple|16.243|674>>
    <associate|integral of inifinite sum of positive
    functions|<tuple|16.230|670>>
    <associate|integral sum of simple function|<tuple|16.217|666>>
    <associate|intersection and sigma algebras|<tuple|16.57|585>>
    <associate|intersection of a family of Dynkin systems is a Dynkin
    system|<tuple|16.40|582>>
    <associate|intersection of simple functions|<tuple|16.206|659>>
    <associate|interval as finite union of pairwise disjoint
    intervals|<tuple|16.119|621>>
    <associate|interval is uniquely determined by
    boundary|<tuple|16.113|619>>
    <associate|lambda is translation invariant|<tuple|16.131|626>>
    <associate|lemma 15.116|<tuple|16.128|625>>
    <associate|lemma 15.117|<tuple|16.129|625>>
    <associate|lemma 15.118|<tuple|16.130|626>>
    <associate|lemma 15.135.472|<tuple|16.144|634>>
    <associate|lemma 15.137.472|<tuple|16.147|635>>
    <associate|lemma 16.165|<tuple|16.178|650>>
    <associate|lemma 16.200|<tuple|16.205|658>>
    <associate|lemma 16.205|<tuple|16.210|663>>
    <associate|length of a interval|<tuple|16.114|619>>
    <associate|length of union of pairise disjoint
    interval|<tuple|16.121|623>>
    <associate|length on R[I] is a pre-measure|<tuple|16.124|624>>
    <associate|limit of Borel functions is a Borel
    function|<tuple|16.211|663>>
    <associate|linear isomorphism and measures|<tuple|16.179|651>>
    <associate|linear isomrophism on a Borel set|<tuple|16.165|645>>
    <associate|locally finite measure of closed rectangle is
    finite|<tuple|16.158|640>>
    <associate|locally finite measure on Hausdorf space|<tuple|16.157|640>>
    <associate|measurable functions and generators|<tuple|16.174|648>>
    <associate|measurable space|<tuple|16.12|573>>
    <associate|measure|<tuple|16.99|610>>
    <associate|measure of diagonal operator (begin)|<tuple|16.167|646>>
    <associate|measure of diagonal transformation|<tuple|16.168|646>>
    <associate|measure of image of unitary operator|<tuple|16.177|650>>
    <associate|measure of unitary operator|<tuple|16.176|649>>
    <associate|monotone convergence 1|<tuple|16.257|680>>
    <associate|monotone convergence 2|<tuple|16.258|682>>
    <associate|monotonicity of integral|<tuple|16.224|668>>
    <associate|motion|<tuple|16.182|652>>
    <associate|non zero simple function|<tuple|16.207|659>>
    <associate|open set as a union of Dyadic intervals|<tuple|16.72|591>>
    <associate|ordering of a finite disjoint family of pairwise disjoint
    intervals|<tuple|16.118|620>>
    <associate|ordering of interval|<tuple|16.117|620>>
    <associate|pairwise disjoint family|<tuple|16.1|569>>
    <associate|pairwise disjoint union of pairwise disjoint
    unions|<tuple|16.8|572>>
    <associate|partitioning of intervals|<tuple|16.137|628>>
    <associate|positive simple functions|<tuple|16.216|666>>
    <associate|power set is a sigma-algebra|<tuple|16.15|574>>
    <associate|pre-measure is denumerable subadditive|<tuple|16.92|606>>
    <associate|preimage of a ring, semi ring or algebra|<tuple|16.28|576>>
    <associate|preimage of continuous function of a Borel set is a Borel
    set|<tuple|16.59|586>>
    <associate|premeasure|<tuple|16.87|602>>
    <associate|product of a scalar and a measure is a
    measure|<tuple|16.100|610>>
    <associate|product of numbers with a difference|<tuple|16.141|632>>
    <associate|product of semi rings is a semi ring|<tuple|16.30|578>>
    <associate|product of two semi rings|<tuple|16.29|577>>
    <associate|properties of Borel functions
    (sum,product,min,max)|<tuple|16.212|664>>
    <associate|properties of Dyadic cubes|<tuple|16.81|599>>
    <associate|properties of Dyadic intervals|<tuple|16.71|591>>
    <associate|properties of a content|<tuple|16.91|605>>
    <associate|properties of simple functions|<tuple|16.208|659>>
    <associate|properties of the Lebesgue integral (1)|<tuple|16.228|669>>
    <associate|properties of the Lebesgue integral (2)|<tuple|16.229|670>>
    <associate|properties of the integralof simple
    functions|<tuple|16.219|667>>
    <associate|property of Dyadic interval of order n|<tuple|16.70|590>>
    <associate|property of finite measure on a Borel set|<tuple|16.150|636>>
    <associate|real Borel function|<tuple|16.187|653>>
    <associate|real Borel function is real extended Borel
    function|<tuple|16.191|654>>
    <associate|regularity and product of a scalar and a
    measures|<tuple|16.154|639>>
    <associate|representation of a simple function|<tuple|16.197|656>>
    <associate|restricted algebra|<tuple|16.16|574>>
    <associate|restricted measures|<tuple|16.102|610>>
    <associate|right half open interval|<tuple|16.44|583>>
    <associate|ring is n-stable|<tuple|16.22|575>>
    <associate|ring of sets|<tuple|16.21|575>>
    <associate|ring on R^n|<tuple|16.53|585>>
    <associate|ring on the set of reals|<tuple|16.49|584>>
    <associate|second sigma algebra on R^n|<tuple|16.79|598>>
    <associate|semi ring of intervals|<tuple|16.45|583>>
    <associate|semi ring to ring|<tuple|16.32|579>>
    <associate|semi-algebra|<tuple|16.26|576>>
    <associate|set of right half open intervals is a
    semi-ring|<tuple|16.48|584>>
    <associate|set relations|<tuple|16.7|571>>
    <associate|sigma algebra [a,b[-\<gtr\>[a,b]|<tuple|16.62|587>>
    <associate|sigma algebra [a,b[-\<gtr\>]a,b[|<tuple|16.61|587>>
    <associate|sigma algebra ]a,b]-\<gtr\>]a,b[|<tuple|16.63|588>>
    <associate|sigma algebra is a algebra and a ring|<tuple|16.33|581>>
    <associate|sigma algebra of ring of a semi ring|<tuple|16.34|581>>
    <associate|sigma finite content|<tuple|16.93|606>>
    <associate|sigma-algebra|<tuple|16.11|573>>
    <associate|sigma-algebra generator|<tuple|16.19|574>>
    <associate|sigma-algebra generator of sigma-algebra|<tuple|16.20|575>>
    <associate|simple function|<tuple|16.198|656>>
    <associate|simple functions are Borel|<tuple|16.196|655>>
    <associate|sub interval|<tuple|16.46|583>>
    <associate|sum of lengths of pairwise disjoint non empty
    intervals|<tuple|16.120|622>>
    <associate|the set of products of right half open rectangles is a
    ring|<tuple|16.52|585>>
    <associate|translation function is measurable|<tuple|16.173|648>>
    <associate|u-integral|<tuple|16.221|667>>
    <associate|u-integral extends Iu|<tuple|16.222|667>>
    <associate|union and intersection and sum|<tuple|16.127|624>>
    <associate|union and sigma algebras|<tuple|16.56|585>>
    <associate|union as pairwise disjoint union|<tuple|16.2|569>>
    <associate|union in algebra as disjoint union|<tuple|16.25|576>>
    <associate|union of a pairwise disjoint sequence of finite
    unions|<tuple|16.9|572>>
    <associate|union of rectangles as union of intervals|<tuple|16.135|627>>
    <associate|union of sequences of sequences of sets|<tuple|16.3|569>>
    <associate|union of sub rectangles|<tuple|16.138|629>>
    <associate|uniqueness of measaures|<tuple|16.104|612>>
    <associate|v^n is translation invariant|<tuple|16.148|635>>
    <associate|vector space of L1m|<tuple|16.256|680>>
    <associate|volumne content|<tuple|16.134|626>>
    <associate|wq 15.66.431|<tuple|16.166|628>>
    <associate|{@@} expression|<tuple|16.76|595>>
    <associate|{f\<less\>g}..|<tuple|16.213|665>>
    <associate|\|f\|\<less\>=g=\<gtr\>f integrable|<tuple|16.253|679>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|pairwise disjoint family of sets>|<pageref|auto-3>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|sqcup><rsub|i\<in\>I>A<rsub|i>>>|<pageref|auto-4>>

      <tuple|<tuple|<with|font-shape|<quote|right>|<with|mode|<quote|math>|\<cap\>>-stable>>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cup\>>-stable>|<pageref|auto-6>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra>|<pageref|auto-8>>

      <tuple|<tuple|measurable space>|<pageref|auto-9>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>>|<pageref|auto-10>>

      <tuple|<tuple|ring>|<pageref|auto-11>>

      <tuple|<tuple|algebra>|<pageref|auto-12>>

      <tuple|<tuple|semi algebra>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-R\><around*|[|\<cal-S\>|]>>>|<pageref|auto-14>>

      <tuple|<tuple|Dynkin system>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><around*|[|\<cal-A\>|]>>>|<pageref|auto-16>>

      <tuple|<tuple|right half open interval>|<pageref|auto-18>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\>>>|<pageref|auto-19>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-R\><around*|[|\<cal-I\>|]>>>|<pageref|auto-20>>

      <tuple|<tuple|right half open intervals>|<pageref|auto-21>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-I\><rsup|n>>>|<pageref|auto-22>>

      <tuple|<tuple|Dyadic interval>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-D\><rsup|N><rsub|n>>>|<pageref|auto-28>>

      <tuple|<tuple|content>|<pageref|auto-30>>

      <tuple|<tuple|content>|<pageref|auto-31>>

      <tuple|<tuple|premeasure>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<mu\>|\<bar\>>>>|<pageref|auto-33>>

      <tuple|<tuple|measure>|<pageref|auto-34>>

      <tuple|<tuple|measure space>|<pageref|auto-35>>

      <tuple|<tuple|translate invariant measure>|<pageref|auto-36>>

      <tuple|<tuple|outer measure>|<pageref|auto-38>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-measurable
      set>|<pageref|auto-39>>

      <tuple|<tuple|<with|mode|<quote|math>|X<rsup|<around*|(|\<mu\>|)>>>>|<pageref|auto-40>>

      <tuple|<tuple|Carathéodory>|<pageref|auto-41>>

      <tuple|<tuple|length of a interval>|<pageref|auto-44>>

      <tuple|<tuple|Lebesgue measure>|<pageref|auto-45>>

      <tuple|<tuple|local finite measure>|<pageref|auto-52>>

      <tuple|<tuple|inner regularity>|<pageref|auto-53>>

      <tuple|<tuple|external regularity>|<pageref|auto-54>>

      <tuple|<tuple|regular measures>|<pageref|auto-55>>

      <tuple|<tuple|Radon measures>|<pageref|auto-56>>

      <tuple|<tuple|measurable function>|<pageref|auto-59>>

      <tuple|<tuple|Borel function>|<pageref|auto-60>>

      <tuple|<tuple|<with|mode|<quote|math>|f<around*|\<langle\>|\<mu\>|\<rangle\>>>>|<pageref|auto-61>>

      <tuple|<tuple|image measure>|<pageref|auto-62>>

      <tuple|<tuple|real Borel function>|<pageref|auto-64>>

      <tuple|<tuple|extended real function>|<pageref|auto-65>>

      <tuple|<tuple|<with|mode|<quote|math>|indicator
      function>>|<pageref|auto-67>>

      <tuple|<tuple|<with|mode|<quote|math>|\<bbb-1\><rsub|A>>>|<pageref|auto-68>>

      <tuple|<tuple|simple function>|<pageref|auto-69>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-S\><around*|[|X,\<cal-A\>|]>>>|<pageref|auto-70>>

      <tuple|<tuple|<with|mode|<quote|math>|I<rsub|\<mu\>><around*|(|f|)>>>|<pageref|auto-72>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int>f
      d\<mu\>>>|<pageref|auto-73>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int>f
      d\<mu\>>>|<pageref|auto-76>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-L\><rsup|1><around*|[|X,\<cal-A\>|]>>>|<pageref|auto-77>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
      d\<mu\>>>|<pageref|auto-78>>

      <tuple|<tuple|densitity function of a measure>|<pageref|auto-79>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|16<space|2spc>Measure
      theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      16.1<space|2spc>Usefull set relations
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      16.2<space|2spc><with|mode|<quote|math>|\<sigma\>>-algebras
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-7>

      <with|par-left|<quote|1tab>|16.2.1<space|2spc>Ring on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-17>>

      16.3<space|2spc>Borel algebras <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>

      <with|par-left|<quote|1tab>|16.3.1<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-24>>

      <with|par-left|<quote|1tab>|16.3.2<space|2spc>Borel algebra on
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|16.3.3<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      16.4<space|2spc>Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>

      <with|par-left|<quote|1tab>|16.4.1<space|2spc>Extending a pre-measure
      to a measure on a <with|mode|<quote|math>|\<sigma\>>-algebra
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-37>>

      <with|par-left|<quote|1tab>|16.4.2<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      <with|par-left|<quote|2tab>|16.4.2.1<space|2spc>Definition of the
      Lebesgue measure <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-43>>

      <with|par-left|<quote|2tab>|16.4.2.2<space|2spc>Translation invariance
      of the Lebesgue measure on <with|mode|<quote|math>|\<bbb-R\>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>>

      <with|par-left|<quote|1tab>|16.4.3<space|2spc>Lebesgue measure on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|2tab>|16.4.3.1<space|2spc>Definition of the
      Lebesgue measure on <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-48>>

      <with|par-left|<quote|2tab>|16.4.3.2<space|2spc>Translation invariance
      of the Lebesgue measure on <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-49>>

      16.5<space|2spc>Properties of Borel and Radon measures
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-50>

      <with|par-left|<quote|1tab>|16.5.1<space|2spc>Regularity and Radon
      measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-51>>

      <with|par-left|<quote|1tab>|16.5.2<space|2spc>Translation invariance
      and Radon Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      16.6<space|2spc>Measurable function
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>

      <with|par-left|<quote|1tab>|16.6.1<space|2spc>Measurable real functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-63>>

      <with|par-left|<quote|1tab>|16.6.2<space|2spc>Simple functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-66>>

      16.7<space|2spc>Integration of positive Borel functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-71>

      16.8<space|2spc>Lebesgue integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-74>

      <with|par-left|<quote|1tab>|16.8.1<space|2spc>Definition and properties
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-75>>

      <with|par-left|<quote|1tab>|16.8.2<space|2spc>Lebesgue integral and
      null sets <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-80>>

      16.9<space|2spc>Convergence theorems of the Lebesgue integral and their
      consequences <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-81>

      <with|par-left|<quote|1tab>|16.9.1<space|2spc>Convergence theorems
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-82>>

      <with|par-left|<quote|1tab>|16.9.2<space|2spc>Integrals and parameters
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-83>>

      16.10<space|2spc>The function spaces
      <with|mode|<quote|math>|\<cal-L\><rsup|n><rsub|\<mu\>>> where
      <with|mode|<quote|math>|n\<in\><around*|[|1,\<ldots\>,\<infty\>|]>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-84>
    </associate>
  </collection>
</auxiliary>