<TeXmacs|2.1.1>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|17>

  <chapter|Measure Theory>

  <section|Prerequisites>

  We have the following useful [and trivial] set relations

  <\proposition>
    <label|singleton family union intersection>Let <math|I=<around*|{|i|}>>
    and <math|<around*|{|A<rsub|j>|}><rsub|j\<in\>I>> a family of sets then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|j\<in\>I>A<rsub|j>=A<rsub|i>>

      <item><math|<big|cap><rsub|j\<in\>I>A<rsub|j>=A<rsub|i>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|x\<in\><big|cup><rsub|j\<in\>I>A<rsub|j>\<Leftrightarrow\>\<exists\>j\<in\><around*|{|i|}>\<vdash\>x\<in\>A<rsub|j>\<Leftrightarrowlim\><rsub|I=<around*|{|i|}>\<Rightarrow\>i=j>x\<in\>A<rsub|i>>
      it follows that <math|<big|cup><rsub|j\<in\>I>A<rsub|j>=A<rsub|i>>

      <item>As <math|x\<in\><big|cap><rsub|j\<in\>I>A<rsub|j>\<Leftrightarrow\>\<forall\>j\<in\><around*|{|i|}>\<vdash\>x\<in\>A<rsub|j>\<Leftrightarrowlim\><rsub|I=<around*|{|i|}>\<Rightarrow\>i=j>x\<in\>A<rsub|i>>
      it follows that <math|<big|cap><rsub|j\<in\>I>A<rsub|j>=A<rsub|i>>
    </enumerate>
  </proof>

  <\proposition>
    <label|union intersection union of families>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> a family of sets and let
    <math|I=K<big|cup>L> then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\>K>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>L>A<rsub|i>|)>>

      <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\>L>A<rsub|i>|)>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I\<vdash\>x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<exists\>i\<in\>K\<vdash\>x\<in\>A<rsub|i>|)>\<vee\><around*|(|\<exists\>i\<in\>L\<vdash\>x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>L>A<rsub|i>|)>>>>>
      </eqnarray*>

      proving that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>L>A<rsub|i>|)>>.

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>i\<in\>I\<vdash\>x\<in\>A<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<exists\>i\<in\>K\<vdash\>x\<in\>A<rsub|i>|)>\<wedge\><around*|(|\<exists\>i\<in\>L\<vdash\>x\<in\>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cap><rsub|i\<in\>L>A<rsub|i>|)>>>>>
      </eqnarray*>

      proving that <math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<around*|(|<big|cap><rsub|i\<in\>I>A<rsub|i>|)><big|cap><around*|(|<big|cap><rsub|i\<in\>L>A<rsub|i>|)>>.
    </enumerate>
  </proof>

  <\proposition>
    <label|union,intersection and function between and indexes>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> be a family of sets and
    <math|f:J\<rightarrow\>I> a surjection then\ 

    <\enumerate>
      <item><math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>>

      <item><math|<big|cap><rsub|i\<in\>I>A<rsub|i>=<big|cap><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>. And as
      <math|f> is a surjection there exists a <math|j\<in\>J> such that
      <math|i=f<around*|(|j|)>> hence <math|x\<in\>A<rsub|f<around*|(|j|)>>\<subseteq\><big|cup><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>>
      proving that\ 

      <\equation*>
        <big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>
      </equation*>

      Further if <math|x\<in\><big|cup><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>>
      then there exists a <math|j\<in\>J> such that
      <math|x\<in\>A<rsub|f<around*|(|j|)>>>, as
      <math|f<around*|(|j|)>\<in\>I> it follows that
      <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> proving that\ 

      <\equation*>
        <big|cup><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>
      </equation*>

      <item>If <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> then
      <math|\<forall\>i\<in\>I> we have <math|x\<in\>A<rsub|i>> then if
      <math|j\<in\>J> <math|f<around*|(|j|)>\<in\>I> so that
      <math|x\<in\>A<rsub|f<around*|(|j|)>>> proving that
      <math|x\<in\><big|cap><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>>, hence\ 

      <\equation*>
        <big|cap><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cap><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>
      </equation*>

      If <math|x\<in\><big|cap><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>> then
      <math|\<forall\>j\<in\>J> we have that
      <math|x\<in\>A<rsub|f<around*|(|j|)>>>, then if <math|i\<in\>I> there
      exists a <math|k\<in\>J> such that <math|i=f<around*|(|k|)>> so that
      <math|x\<in\>A<rsub|f<around*|(|k|)>>=A<rsub|i>> proving that
      <math|x\<in\><big|cap><rsub|i\<in\>I>A<rsub|i>> hence

      <\equation*>
        <big|cap><rsub|j\<in\>J>A<rsub|f<around*|(|j|)>>\<subseteq\><big|cap><rsub|i\<in\>I>A<rsub|i>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|writing a countable family of sets as a disjoint familly of
    sets>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be
    a countable family of sets then if we define
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-|}>>
    if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>> then\ 

    <\enumerate>
      <item><math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|B<rsub|i>\<subseteq\>A<rsub|i>>

      <item><math|\<forall\>i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j>
      we have <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>

      <item><math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    </enumerate>

    in other words we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> then we may
    always assume that <math|i\<less\>j> [otherwise exchange <math|i> with
    <math|j>]. If now <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then we have
    the following cases to consider:\ 

    <\description>
      <item*|<math|i=1>>then <math|x\<in\>B<rsub|1>=A<rsub|1>> and
      <math|x\<in\>B<rsub|j>=A<rsub|j>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>>
      so that <math|\<forall\>k\<in\><around*|{|1,\<ldots\>,j-1|}>> we have
      <math|x\<nin\>A<rsub|k>> giving as <math|1\<less\>j\<Rightarrow\>i\<leqslant\>j-1>
      that <math|x\<nin\>A<rsub|1>> a contradiction.

      <item*|<math|1\<less\>i>>then <math|x\<in\>B<rsub|i>=A<rsub|i>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|k>>
      so that <math|x\<in\>A<rsub|i>>, as <math|i\<less\>j> we have
      <math|i\<leqslant\>j-1> hence <math|x\<in\><big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|i>>
      contradicting <math|x\<in\>A<rsub|j>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,j-1|}>>A<rsub|k>>.
    </description>

    Hence\ 

    <\equation>
      <label|eq 18.1.016>\<forall\>i,j\<in\>\<bbb-N\><rsub|0><text| with
      >i\<neq\>j<text| we have >B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>
    </equation>

    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|k>
    if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>\<subseteq\><choice|<tformat|<table|<row|<cell|A<rsub|1>
    if i=1>>|<row|<cell|A<rsub|i> if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>\<subseteq\>A<rsub|i>>
    we have that

    <\equation>
      <label|eq 18.2.016>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
      >B<rsub|i>\<subseteq\>A<rsub|i>
    </equation>

    and

    <\equation>
      <label|eq 18.3.016><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
    </equation>

    If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>> then
    <math|\<exists\>i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|i>>, hence <math|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>>,
    so that <math|m=min<around*|(|<around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>|)>>
    exists. We must the consider the following cases for <math|m>:

    <\description>
      <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>

      <item*|<math|1\<less\>m>>then <math|1\<leqslant\>m-1> and
      <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m-1|}>> we have
      <math|x\<nin\>A<rsub|j>> hence <math|x\<in\>A<rsub|m>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|k>=B<rsub|k>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    </description>

    proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
    Combining this with <reference|eq 18.3.016> proves

    <\equation>
      <label|eq 18.4.016><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
    </equation>

    The theorem is then proved by <reference|eq 18.1.016>, <reference|eq
    18.2.016> and <reference|eq 18.4.016>.
  </proof>

  <section|Algebras and <math|\<sigma\>>-algebras>

  <\definition>
    <label|algebra of sets><index|algebra><dueto|Algebra>Let <math|X> be a
    set and <math|\<cal-A\>\<in\>\<cal-P\><around*|(|X|)>> a collection of
    subsets of <math|X> then <math|\<cal-A\>> is a algebra on <math|X> if

    <\enumerate>
      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have that
      <math|X\\A\<in\>\<cal-A\>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have that
      <math|A<big|cup>B\<in\>\<cal-A\>>
    </enumerate>
  </definition>

  Note that we have the following equivalent definition of a algebra

  <\proposition>
    <label|algebra equivalent definitions>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have that
    the following are equivalent

    <\enumerate>
      <item><math|\<cal-A\>> is a algebra

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A<big|cup>B\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A<big|cap>B\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have
        <math|A<big|cup>B\<in\>\<cal-A\>>
      </enumerate>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Assume that <math|\<cal-A\>> is a
      algebra then\ 

      <\enumerate-alpha>
        <item><math|X\<in\>\<cal-A\>\<Rightarrowlim\><rsub|\<cal-A\> <text|is
        a algebra>>\<emptyset\>=X\\X\<in\>\<cal-A\>> proving that
        <math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have as <math|\<cal-A\>>
        is a algebra that <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\>A,B\<in\>\<cal-A\>> we have as <math|\<cal-A\>>
        is a algebra that <math|A<big|cup>B\<in\>\<cal-A\>>
      </enumerate-alpha>

      <item*|<math|2\<Rightarrow\>3>>Assume that (2) is valid then\ 

      <\enumerate-alpha>
        <item>From (2.a) it follows that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (2.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|A,B\<in\>\<cal-A\>> then by (2.b) we have that
        <math|X\\A,X\\B\<in\>\<cal-A\>> hence we have

        <\equation*>
          X\\<around*|(|A<big|cap>B|)>\<equallim\><rsub|<text|<reference|distributivity
          of union or intersection>>><around*|(|X\\A|)><big|cup><around*|(|X\\B|)>\<in\>\<cal-A\><text|
          [because (2.c)]>
        </equation*>

        Hence\ 

        <\equation*>
          A<big|cap>B\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|A<big|cap>B|)>|)>|)>\<in\>\<cal-A\>
          <text| [because (2.b]>
        </equation*>
      </enumerate-alpha>

      <item*|<math|3\<Rightarrow\>4>>Assume that <math|<around*|(|3|)>> is
      valid then\ 

      <\enumerate-alpha>
        <item>From (3.a) if follows that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (2.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|A,B\<in\>\<cal-A\>> then by (3.b) we have that
        <math|X\\A>,<math|X\\B\<in\>\<cal-A\>> hence we have\ 

        <\equation*>
          X\\<around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|<reference|distributivity
          of union or intersection>>><around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-A\><text|
          because (3.c)]>
        </equation*>

        hence\ 

        <\equation*>
          A<big|cup>B\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|A<big|cup>B|)>|)>|)><text|
          [because (3.b]>
        </equation*>
      </enumerate-alpha>

      <item*|<math|4\<Rightarrow\>1>>Assume that (4) is valid then\ 

      <\enumerate-alpha>
        <item>Then as <math|\<emptyset\>\<in\>\<cal-A\>> we have by (4.b)
        that <math|X=X\\\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (4.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|A,B\<in\>\<cal-A\>> then from (4.c) we have
        <math|A<big|cup>B\<in\>\<cal-A\>>
      </enumerate-alpha>

      which proves that <math|\<cal-A\>> is a algebra.
    </description>
  </proof>

  Using induction we can prove that a algebra is stable under finite unions
  and intersections.

  <\proposition>
    <label|properties of algebras>Let <math|X> be a set and <math|\<cal-A\>>
    a algebra on <math|X> then we have\ 

    <\enumerate>
      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|n\<in\>\<bbb-N\><rsub|0>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|I> is a finite set and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> then
      <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|I> is a finite non empty set and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> then
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
      then <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<equallim\><rsub|<text|<reference|singleton
        family union intersection>>>A<rsub|1>\<in\>\<cal-A\>>

        <item*|<math|n\<in\>\<cal-A\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
        then\ 

        <\equation*>
          <big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>\<equallim\><rsub|<text|<reference|union
          intersection union of families>,<reference|singleton family union
          intersection>>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cup>A<rsub|n+1>\<in\>\<cal-A\><text|
          [because <math|n\<in\>\<b-S\>> and <math|\<cal-A\>> is a algebra]>
        </equation*>

        proving that <math|n+1\<in\>\<cal-S\>>.
      </description>

      <item>Define <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|If
      <around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>
      then <big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        then <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<equallim\><rsub|<text|<reference|singleton
        family union intersection>>>A<rsub|1>\<in\>\<cal-A\>>

        <item*|<math|n\<in\>\<cal-A\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-A\>>
        then\ 

        <\equation*>
          <big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|i>\<equallim\><rsub|<text|<reference|union
          intersection union of families>,<reference|singleton family union
          intersection>>><around*|(|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)><big|cap>A<rsub|n+1>\<in\>\<cal-A\><text|
          [<math|n\<in\>\<b-S\>> and <math|\<cal-A\>> is a algebra]>
        </equation*>

        proving that <math|n+1\<in\>\<cal-S\>>.
      </description>

      <item>If <math|I> is finite then either <math|I=\<emptyset\>> in which
      case we have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=\<emptyset\>\<in\>\<cal-A\>>
      or there exists a bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>.
      Then <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<equallim\><rsub|<text|<reference|union,intersection
      and function between and indexes>>><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|j|)>>\<in\><rsub|<around*|(|1|)>>\<cal-A\>>.

      <item>If <math|I> is finite and non empty then exists a bijection
      <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>. Hence
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<equallim\><rsub|<text|<reference|union,intersection
      and function between and indexes>>><big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<beta\><around*|(|j|)>>\<in\><rsub|<around*|(|1|)>>\<cal-A\>>.
    </enumerate>
  </proof>

  <\definition>
    <index|<math|\<sigma\>>-algebra><label|sigma
    algebra><dueto|<math|\<sigma\>>-algebra>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then
    <math|\<cal-A\>> is a sigma algebra [noted as <math|\<sigma\>>-algebra]
    on <math|X> if\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-A\>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|X\\A\<in\>\<cal-A\>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      we have <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
    </enumerate>
  </definition>

  <\example>
    <label|set of all subsets is a sigma algebra>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a <math|\<sigma\>>-algebra on <math|X>
  </example>

  <\proof>
    This trivial but lets write this out

    <\enumerate>
      <item>As <math|X\<subseteq\>X> we have
      <math|X\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|A\<in\>\<cal-P\><around*|(|X|)>> then
      <math|X\\A\<subseteq\>X> proving that
      <math|X\\A\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have that
      <math|A<rsub|i>\<subseteq\>X><space|1em>hence
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>X>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  <\definition>
    <label|measurable space><dueto|Measurable Space>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<sigma\>>-algebra then we call
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> a measurable space.
  </definition>

  Just like for algebras we have the following equivalent definitions.

  <\proposition>
    <label|sigma algebra equivalent definitions>Let <math|X> be a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have that
    the following are equivalent

    <\enumerate>
      <item><math|\<cal-A\>> is a <math|\<sigma\>>-algebra

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
        with <math|I> countable we have <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Assume that <math|\<cal-A\>> is a
      algebra then\ 

      <\enumerate-alpha>
        <item><math|X\<in\>\<cal-A\>\<Rightarrowlim\><rsub|\<cal-A\> <text|is
        a algebra>>\<emptyset\>=X\\X\<in\>\<cal-A\>> proving that
        <math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have as <math|\<cal-A\>>
        is a algebra that <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
        we have as <math|\<cal-A\>> is a algebra that
        <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate-alpha>

      <item*|<math|2\<Rightarrow\>3>>Assume that (2) is valid then\ 

      <\enumerate-alpha>
        <item>From (2.a) it follows that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (2.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
        then by (2.b) we have that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        <math|X\\A<rsub|i>\<in\>\<cal-A\>>, hence we have

        <\equation*>
          X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
          difference>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\><text|
          [because (2.c)]>
        </equation*>

        Hence\ 

        <\equation*>
          <big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>|)>|)>\<in\>\<cal-A\>
          <text| [because (2.b]>
        </equation*>
      </enumerate-alpha>

      <item*|<math|3\<Rightarrow\>4>>Assume that <math|<around*|(|3|)>> is
      valid then

      <\enumerate-alpha>
        <item>From (3.a) if follows that <math|\<emptyset\>\<in\>\<cal-A\>>
        hence <math|X=X\\\<emptyset\>\<in\>\<cal-A\>> by (3.b)

        <item>Let <math|A\<in\>\<cal-A\>> then from (3.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
        then by (3.b) we have that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        <math|X\\A<rsub|i>\<in\>\<cal-A\>> hence we have

        <\equation*>
          X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<equallim\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)><rsub|<text|<reference|distributivity
          of union or intersection>>>\<in\>\<cal-A\><text| because (3.c)]>
        </equation*>

        hence\ 

        <\equation*>
          <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\A<rsub|i>|)>|)>|)>|)>\<in\>\<cal-A\><text|
          [because (3.b]>
        </equation*>
      </enumerate-alpha>

      <item*|<math|4\<Rightarrow\>1>>Assume that (4) is valid then\ 

      <\enumerate-alpha>
        <item>As <math|\<emptyset\>\<in\>\<cal-A\>> we have by (4.b) that
        <math|X=X\\\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (4.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-A\>>
        then from (4.c) we have <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate-alpha>

      which proves that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra.

      <item*|<math|1\<Rightarrow\>5>>Assume that <math|<around*|(|1|)>> is
      valid then\ 

      <\enumerate-alpha>
        <item>By (1.a) we have that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>By (1.b( we have that <math|\<forall\>A\<in\>\<cal-A\>>
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
        with <math|I> countable then we have either\ 

        <\description>
          <item*|<math|I=\<emptyset\>>>then
          <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<equallim\><rsub|<text|<reference|union
          and intersection of emptyset>>>\<emptyset\>\<in\>\<cal-A\>>

          <item*|<math|I> is finite>then there exists a
          <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
          <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>. Define
          then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
          with <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
          if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
          i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1,\<ldots\>,n|}>>>>>>\<in\>\<cal-A\>>
          then <math|<around*|{|B<rsub|i>|}><rsub|\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
          so that by (1.c) <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-A\>>.
          Further if <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
          <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, as
          <math|\<beta\>> is a bijection there exists a
          <math|j\<in\><around*|{|1,\<ldots\>,n|}>> with
          <math|i=\<beta\><around*|(|j|)>> so that
          <math|x\<in\>A<rsub|i>=A<rsub|\<beta\><around*|(|j|)>>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j>>,
          proving <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
          Also as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
          <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
          if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
          i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1,\<ldots\>,n|}>>>>>>\<subseteq\><big|cup><rsub|j\<in\>I>A<rsub|j>>
          it follows that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
          so that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-A\>>.

          <item*|<math|I> is denumerable>then there exists a bijection
          <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>I>. Define then
          <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
          <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>> so
          that by (1.c) <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-A\>>.
          Further if <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
          <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, as
          <math|\<beta\>> is a bijection there exists a
          <math|j\<in\><around*|{|1,\<ldots\>,n|}>> with
          <math|i=\<beta\><around*|(|j|)>> so that
          <math|x\<in\>A<rsub|i>=A<rsub|\<beta\><around*|(|j|)>>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j>>,
          proving <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>.
          Also as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
          <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|j\<in\>I>A<rsub|j>>
          so that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>B<rsub|j>\<in\>\<cal-A\>>.
        </description>
      </enumerate-alpha>

      <item*|<math|5\<Rightarrow\>1>>

      <\enumerate-alpha>
        <item>By (5.a) we have that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>By (5.b( we have that <math|\<forall\>A\<in\>\<cal-A\>>
        <math|X\\A\<in\>\<cal-A\>>

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
        then as <math|\<bbb-N\><rsub|0>> is countable we have by (5.c) that
        <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>.\ 
      </enumerate-alpha>
    </description>
  </proof>

  Note that a <math|\<sigma\>>-algebra is a special case of a algebra as
  expressed in the following proposition.

  <\proposition>
    Let <math|X> be a set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    a <math|\<sigma\>>-algebra then <math|\<cal-A\>> is a algebra.
  </proposition>

  <\proof>
    Let <math|A,B\<in\>\<cal-A\>> define then
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
    i=1>>|<row|<cell|B if i=2>>|<row|<cell|\<emptyset\> if
    i\<in\>\<bbb-N\><rsub|0><>1,2>>>>>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<big|cup>B>|<cell|=>|<cell|A<rsub|1><big|cup>A<rsub|2><big|cup>\<emptyset\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1,2|}>>A<rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><text|<reference|union
      intersection union of families>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<cal-A\>
      <text|[as <math|\<cal-A\>> is a >\<sigma\><text|-algebra]>>>>>
    </eqnarray*>
  </proof>

  We show now how given a set <math|\<cal-S\>> of subsets of <math|X> it is
  possible to generate the smallest <math|\<sigma\>>-algebra on <math|X>
  containing <math|\<cal-S\>>. First we need a little lemma.

  <\lemma>
    <label|intersection of sigma algebras is a sigma algebra>Let <math|X> be
    a set, <math|\<Sigma\>> a set of <math|\<sigma\>>-algebras on <math|X>
    then <math|<big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>> is a
    <math|\<sigma\>>-algebra on <math|X>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>\<cal-A\>\<in\>\<Sigma\>> <math|\<cal-A\>> is
      a <math|\<sigma\>>-algebra on <math|X> we have <math|X\<in\>\<cal-A\>>
      hence <math|X\<in\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>

      <item>If <math|C\<in\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>
      then <math|\<forall\>\<cal-A\>\<in\>\<Sigma\>>
      <math|C\<in\>\<cal-A\>\<Rightarrowlim\><rsub|\<cal-A\> <text|is a
      >\<sigma\><text|-algebra on >X>X\\C\<in\>\<cal-A\>> proving that
      <math|X\\C\<in\><big|cap><rsub|\<cal-A\>\<in\>>\<cal-A\>>

      <item>If <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>
      then <math|\<forall\>\<cal-A\>\<in\>\<Sigma\>>
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>\<Rightarrowlim\><rsub|\<cal-A\><text|
      is a >\<sigma\><text|-algebra>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>\<subseteq\>\<cal-A\>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>\<in\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>
    </enumerate>
  </proof>

  <\theorem>
    <label|generated sigma algebra><index|<math|\<sigma\><around*|[|\<cal-A\>|]>>>Let
    <math|X> be a set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then there exists a <with|font-series|bold|unique>
    <math|\<sigma\>>-algebra <math|\<cal-X\>> on <math|X> with
    <math|\<cal-A\>\<subseteq\>\<cal-X\>> such that if <math|\<cal-B\>> is
    another <math|\<sigma\>>-algebra on <math|X> with
    <math|\<cal-A\>\<subseteq\>\<cal-B\>> then
    <math|\<cal-X\>\<subseteq\>\<cal-B\>>. We call this unique smallest
    <math|\<sigma\>>-algebra containing <math|\<cal-A\>> the
    <math|\<sigma\>>-algebra generated by <math|\<cal-A\>> and note it as
    <math|\<sigma\><around*|[|\<cal-A\>|]>>. <math|>
  </theorem>

  <\proof>
    Define <math|\<Sigma\>> as <math|\<Sigma\>=<around*|{|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>\|\<cal-C\><text|
    is a >\<sigma\><text|-algebra and >\<cal-A\>\<subseteq\>\<cal-C\>|}>>
    then using the previous lemma [see <reference|intersection of sigma
    algebras is a sigma algebra>] we have that

    <\equation>
      <label|eq 18.1.014>\<cal-X\>=<big|cap><rsub|\<cal-C\>\<in\>\<Sigma\>>\<cal-C\><text|
      is a >\<sigma\><text|-algebra>
    </equation>

    Further as <math|\<forall\>\<cal-C\>\<in\>\<Sigma\>> we have by
    definition that <math|\<cal-A\>\<subseteq\>\<cal-C\>> it follows that\ 

    <\equation>
      <label|eq 18.2.014>\<cal-A\>\<subseteq\><big|cap><rsub|\<cal-C\>\<in\>\<Sigma\>>\<cal-C\>=\<cal-X\>
    </equation>

    Next if <math|\<cal-B\>> is a <math|\<sigma\>>-algebra with
    <math|\<cal-A\>\<subseteq\>\<cal-B\>> then by definition
    <math|\<cal-B\>\<in\>\<Sigma\>> hence\ 

    <\equation>
      <label|eq 18.3.014>\<cal-X\>=<big|cap><rsub|\<cal-C\>\<in\>\<Sigma\>>\<cal-C\>\<subseteq\>\<cal-B\>
    </equation>

    Finally if there is another <math|\<sigma\>>-algebra <math|\<cal-R\>>
    such that <math|\<cal-A\>\<subseteq\>\<cal-R\>> and for every
    <math|\<sigma\>>-algebra <math|\<cal-B\>> with
    <math|\<cal-A\>\<subset\>\<cal-B\>> we have
    <math|\<cal-R\>\<subseteq\>\<cal-B\>> then by <reference|eq 18.1.014> and
    <reference|eq 18.2.014> we have that <math|\<cal-R\>\<subseteq\>\<cal-X\>>,
    further using <reference|eq 18.3.014> we have that
    <math|\<cal-X\>\<subseteq\>\<cal-R\>>. Hence we have that
    <math|\<cal-X\>=\<cal-R\>> proving the uniqueness of <math|\<cal-X\>>,
  </proof>

  We introduce now a import set of <math|\<sigma\>>-algebras the Borel
  algebras.

  <\definition>
    <index|Borel algebra><math|<index|\<cal-B\><around*|[|X,\<cal-T\>|]>>><dueto|Borel
    algebra>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    topological space then the <math|\<sigma\>>-algebra generated by the
    topology <math|\<cal-T\>> is called a <with|font-series|bold|Borel
    algebra> and noted by <math|\<cal-B\><around*|[|X,\<cal-T\>|]>> where
    <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-T\>|]>>.
  </definition>

  <\example>
    <label|Borel algebra on R>Let <math|<around*|\<langle\>|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|\<rangle\>>>
    be the topological space where <math|\<cal-T\><rsub|\<bbb-R\>>> is the
    generated by the absolute value norm [see <reference|topology of real
    complex numbers>] then <math|\<cal-B\><around*|[|\<bbb-R\>,\<cal-T\><rsub|\<bbb-R\>>|]>>
    is noted as <math|\<cal-B\><around*|[|\<bbb-R\>|]>>.
  </example>

  <\example>
    <label|Borel algebra on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>
    and <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|\<rangle\>>>
    be the topological space where <math|\<cal-T\><rsub|\<bbb-R\>>> is
    generated by the maximum norm <math|<around*|\<\|\|\>|x|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
    [see <reference|topology of R^n>] then
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    is noted as <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
  </example>

  <\theorem>
    <label|Borel algebra is generated by closed sets>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological space
    and let <math|\<cal-C\>=<around*|{|C\<subseteq\>X\|C <text|is closed>|}>>
    then <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-C\>|]>>
  </theorem>

  <\proof>
    First if <math|C\<in\>\<cal-C\>> then there exists a
    <math|U\<in\>\<cal-T\>> such that <math|C=X\\U\<in\>\<sigma\><around*|[|\<cal-T\>|]>=\<cal-B\><around*|[|X,\<cal-T\>|]>>
    proving that <math|\<b-C\>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>>
    giving\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-C\>|]>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>
    </equation*>

    On the other hand we have if <math|U\<in\>\<cal-T\>> then
    <math|X\\U\<in\>\<cal-C\>> so that <math|U=X\\<around*|(|X\\U|)>\<in\>\<sigma\><around*|[|\<cal-C\>|]>>
    proving that <math|\<cal-T\>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>>
    giving as <math|\<cal-B\><around*|[|X,\<cal-T\>|]>=\<sigma\><around*|[|\<cal-T\>|]>>
    that\ 

    <\equation*>
      \<cal-B\><around*|[|X,\<cal-T\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-C\>|]>
    </equation*>
  </proof>

  <subsection|Borel algebra on <math|\<bbb-R\>>>

  First let's the concept of intervals in <math|\<bbb-R\>>

  <\definition>
    <label|bounded intervals>We define the following set of bounded intervals
    [see <reference|generalized intervals and intervals> and
    <reference|generalized intervals condition>]:\ 

    <\enumerate>
      <item><math|\<cal-I\><rsub|<around*|[||]>>=<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|[|a,b|]>\<neq\>\<emptyset\>|}>>
      (the set of non empty closed bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|[||[>>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|[|a,b|[>\<neq\>\<emptyset\>|}>>
      (the set of non empty right open bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|]||]>>=<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|]|a,b|]>\<neq\>\<emptyset\>|}>>
      (the set of non empty left open bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|]||[>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\><around*|]|a,b|[>\<neq\>\<emptyset\>|}>>
      (the set of non empty open bounded intervals)

      <item><math|\<cal-I\>=\<cal-I\><rsub|<around*|[||]>><big|cup>\<cal-I\><rsub|<around*|[||[>><big|cup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>><big|cup><around*|{|\<emptyset\>|}>>
      (the set of all non empty bounded intervals)
    </enumerate>
  </definition>

  <\note>
    If <math|b\<less\>a> then <math|<around*|[|a,b|]>=<around*|[|a,b|[>=<around*|]|a,b|]>=<around*|]|a,b|[>=\<emptyset\>>
    and if <math|a=b> then <math|<around*|[|a,b|[>=<around*|]|a,b|]>=<around*|]|a,b|[>=\<emptyset\>>.
    These intervals are well defined but not part of
    <math|\<cal-I\><rsub|<around*|[||]>>.\<cal-I\><rsub|<around*|[||[>>,\<cal-I\><rsub|<around*|]||]>>>
    and <math|\<cal-I\><rsub|<around*|]||[>>>.
  </note>

  <\lemma>
    <label|open,half open and bounded intervals are
    different><math|\<cal-I\><rsub|<around*|[||]>>,\<cal-I\><rsub|<around*|[||[>>,\<cal-I\><rsub|<around*|]||]>>,\<cal-I\><rsub|<around*|]||[>>>
    are pairwise disjoint
  </lemma>

  <\proof>
    \ We have to check the following intersections to prove this (taking in
    account commutativity)

    <\description>
      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>>
      then <math|I=<around*|[|a,b|]>=<around*|[|c,d|[>>. As
      <math|<around*|[|a,b|]>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> that
      <math|a\<leqslant\>b> so that <math|b\<in\><around*|[|a,b|]>=<around*|[|c,d|[>>
      hence <math|c\<leqslant\>b\<less\>d>. Using <reference|consequence of
      the archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<leqslant\>b\<less\>x\<less\>d>
      proving that <math|x\<in\><around*|[|c,d|[>=<around*|[|a,b|]>\<Rightarrow\>x\<leqslant\>b\<Rightarrow\>b\<less\>b>
      a contradiction. Hence <math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|[||[>>=\<emptyset\>>

      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>>
      then <math|I=<around*|[|a,b|]>=<around*|]|c,d|]>>. As
      <math|<around*|[|a,b|]>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> that
      <math|a\<leqslant\>b> so that <math|a\<in\><around*|[|a,b|]>=<around*|]|c,d|]>>
      hence <math|c\<less\>a\<leqslant\>d>. Using <reference|consequence of
      the archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>x\<less\>a\<leqslant\>d>
      proving that <math|x\<in\><around*|]|c,d|]>=<around*|[|a,b|]>> hence
      <math|a\<leqslant\>x\<Rightarrow\>a\<less\>a> a contradiction. Hence
      <math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||]>>>\ 

      <item*|<math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|I=<around*|[|a,b|]>=<around*|]|c,d|[>>. As
      <math|<around*|[|a,b|]>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> that
      <math|a\<leqslant\>b> so that <math|b\<in\><around*|[|a,b|]>=<around*|]|c,d|[>>
      hence <math|c\<less\>b\<less\>d>. Using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>b\<less\>x\<less\>d>
      so that <math|x\<in\><around*|]|c,d|[>=<around*|[|a,b|]>> hence
      <math|x\<leqslant\>b\<Rightarrow\>b\<less\>b> a contradiction. Hence
      <math|\<cal-I\><rsub|<around*|[||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<emptyset\>>.

      <item*|<math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||]>>>
      then <math|I=<around*|[|a,b|[>=<around*|]|c,d|]>>. As
      <math|<around*|[|a,b|[>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> <math|a\<less\>b> so
      that <math|a\<in\><around*|[|a,b|[>=<around*|]|c,d|]>> hence
      <math|c\<less\>a\<leqslant\>d>. Using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>x\<less\>a\<leqslant\>d>
      proving that <math|x\<in\><around*|]|c,d|]>=<around*|[|a,b|[>> hence
      <math|a\<leqslant\>x\<Rightarrow\>a\<less\>a> a contradiction. Hence
      <math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<emptyset\>>.

      <item*|<math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|I=<around*|[|a,b|[>=<around*|]|c,d|[>>. As
      <math|<around*|[|a,b|[>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> that <math|a\<less\>b>
      so that <math|a\<in\><around*|[|a,b|[>=<around*|]|c,d|[>> hence
      <math|c\<less\>a\<less\>d>. Using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>x\<less\>a\<less\>d>
      proving that <math|x\<in\><around*|]|c,d|[>=<around*|[|a,b|[>> hence
      <math|a\<leqslant\>x\<Rightarrow\>a\<less\>a> a contradiction. Hence
      <math|\<cal-I\><rsub|<around*|[||[>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<emptyset\>>.

      <item*|<math|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>>If
      <math|I\<in\>\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>>
      then <math|I=<around*|]|a,b|]>=<around*|]|c,d|[>>. As
      <math|<around*|]|a,b|]>\<neq\>\<emptyset\>> we have by
      <reference|condition for interval to be empty> that <math|a\<less\>b>
      hence <math|b\<in\><around*|]|a,b|]>=<around*|]|c,d|[>> hence
      <math|c\<less\>b\<less\>d>. Using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|x\<in\>\<bbb-R\>> such that <math|c\<less\>b\<less\>x\<less\>d>
      proving that <math|x\<in\><around*|]|c,d|[>=<around*|]|a,b|]>> giving
      <math|x\<less\>b\<Rightarrow\>b\<less\>b> a contradiction. Hence
      <math|\<cal-I\><rsub|<around*|]||]>><big|cap>\<cal-I\><rsub|<around*|]||[>>=\<emptyset\>>.
    </description>
  </proof>

  Next we have some basic equalities for intervals\ 

  <\lemma>
    <label|interval identities>Let <math|a,b\<in\>\<bbb-R\>> the we have\ 

    <\enumerate>
      <item><math|<around*|]|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>>

      <item><math|<around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|]>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|[|a,b+<frac|1|n>|[>>

      <item><math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>

      <item><math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a+<frac|1|n>|[>>

      <item><math|<around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>>

      <item><math|<around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>>

      <item><math|<around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>>

      <item><math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>>

      <item><math|<around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a-<frac|1|n>|]>>

      <item><math|<around*|]|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,\<infty\>|[>>

      <item><math|<around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>>

      <item><math|<around*|]|a,b|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<leqslant\>b> and as
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|b\<less\>b+<frac|1|n>>
      we have <math|a\<less\>x\<less\>b+<frac|1|n>> so it follows that
      <math|x\<in\><around*|]|a,b+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.8.020><around*|]|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|x\<in\><around*|]|a,b+<frac|1|n>|[>> or
      <math|a\<less\>x\<less\>b+<frac|1|n>> which by <reference|consequence
      of the Archimedean property (2)> proves that
      <math|a\<less\>x\<leqslant\>b> hence <math|x\<in\><around*|]|a,b|]>>.
      So it follows that <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>\<subseteq\><around*|]|a,b|]>>
      which by <reference|eq 18.8.020> proves that\ 

      <\equation*>
        <around*|]|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b> and as
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>a> it follows that
      <math|x\<in\><around*|]|a-<frac|1|n>,b|[>>. Hence\ 

      <\equation>
        <label|eq 18.9.020><around*|[|a,b|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>x\<less\>b\<Rightarrow\>a\<less\>x+<frac|1|n>\<wedge\>x\<less\>b>
      which by <reference|consequence of the Archimedean property (2)> proves
      that <math|a\<leqslant\>x\<less\>b> hence
      <math|x\<in\><around*|[|a,b|[>>. So
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>\<subseteq\><around*|[|a,b|[>>
      which by <reference|eq 18.9.020>\ 

      <\equation*>
        <around*|[|a,b|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<less\>b> and as
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>a\<Rightarrow\>x\<in\><around*|]|a-<frac|1|n>,b|]>>.
      Hence

      <\equation>
        <label|eq 18.10.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|]>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|]>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> then
      <math|a-<frac|1|n>\<less\>x\<leqslant\>b> or
      <math|a\<less\>x+<frac|1|n>> which by <reference|consequence of the
      Archimedean property (2)> proves that <math|a\<leqslant\>x> giving
      <math|x\<in\><around*|[|a,b|]>>. So we have
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|]>\<subseteq\><around*|[|a,b|]>>
      which combined with <reference|eq 18.10.021> gives

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<leqslant\>b> then
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a\<leqslant\>x\<leqslant\>b\<less\>b+<frac|1|n>>.. Which proves
      that\ 

      <\equation>
        <label|eq 18.11.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>
      </equation>

      If <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a\<leqslant\>x\<less\>b+<frac|1|n>>. Using by
      <reference|consequence of the Archimedean property (2)> we have
      <math|x\<leqslant\>b> proving that <math|x\<in\><around*|[|a,b|]>>.
      Hence <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>\<subseteq\><around*|[|a,b|]>>
      which combined with <reference|eq 18.11.021> gives\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|]>> then
      <math|a\<leqslant\>x\<leqslant\>b> and as
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>x\<less\>b+<frac|1|n>> it follows that
      <math|x\<in\><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.12.021><around*|[|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>x\<wedge\>x\<less\>b+<frac|1|n>\<Rightarrow\>a\<less\>x+<frac|1|n>\<wedge\>x\<less\>b+<frac|1|n>>.
      Using <reference|consequence of the Archimedean property (2)> we have
      <math|a\<leqslant\>x\<wedge\>x\<leqslant\>b> or
      <math|x\<in\><around*|[|a,b|]>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>\<subseteq\><around*|[|a,b|]>>
      which together with <reference|eq 18.12.021> proves\ 

      <\equation*>
        <around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|]>> then
      <math|x\<leqslant\>a> and as <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      we have <math|x\<less\>a+<frac|1|n>> it follows that
      <math|x\<in\><around*|]|-\<infty\>,a+<frac|1|n>|[>>. Hence\ 

      <\equation>
        <label|eq 18.13.021><around*|]|-\<infty\>,a|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a+<frac|1|n>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a+<frac|1|n>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|x\<less\>a+<frac|1|n>> which by <reference|consequence of the
      Archimedean property (2)> gives <math|x\<leqslant\>a> or
      <math|x\<in\><around*|]|-\<infty\>,a|]>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<subseteq\><around*|]|-\<infty\>,a|]>>
      which together with <reference|eq 18.13.021>

      <\equation*>
        <big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a+<frac|1|n>|[>=<around*|]|-\<infty\>,a|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,\<infty\>|[>> then
      <math|a\<leqslant\>x> so that <math|\<forall\>n\<in\>\<bbb-N\><rsub|9>>
      we have <math|a-<frac|1|n>\<less\>x> giving
      <math|x\<in\><around*|]|a-<frac|1|n>,\<infty\>|[>> proving that\ 

      <\equation>
        <label|eq 18.14.021><around*|[|a,\<infty\>|[>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|a-<frac|1|n>\<less\>x\<Rightarrow\>a\<less\>x+<frac|1|n>> which
      by <reference|consequence of the Archimedean property (2)> proves that
      <math|x\<in\><around*|[|a,\<infty\>|[>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>\<subseteq\><around*|[|a,\<infty\>|]>>
      which together with <reference|eq 18.14.021> <math|>proves that

      <\equation*>
        <around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<leqslant\>b> and using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>a+<frac|1|n>\<less\>x\<leqslant\>b> proving that
      <math|x\<in\><around*|[|a+<frac|1|n>,b|]>>. Hence\ 

      <\equation>
        <label|eq 18.15.021><around*|]|a,b|]>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>
      </equation>

      Let <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>>
      there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,b|]>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x\<leqslant\>b>.
      Hence <math|x\<in\><around*|]|a,b|]>> proving that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>\<subseteq\><around*|]|a,b|]>>
      which by <reference|eq 18.15.021> gives

      <\equation*>
        <around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<less\>b> and using <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<leqslant\>x\<less\>x+<frac|1|n>\<less\>b\<Rightarrow\>a\<leqslant\>x\<wedge\>x\<less\>b-<frac|1|n>>
      proving that <math|x\<in\><around*|[|a,b-<frac|1|n>|]>>. So\ 

      <\equation>
        <label|eq 18.16.021><around*|\<nobracket\>|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|[|a,b-<frac|1|n>|]>\<Rightarrow\>a\<leqslant\>x\<leqslant\>b-<frac|1|n>\<less\>b>
      proving that <math|x\<in\><around*|[|a,b|[>>. Hence
      <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>\<subseteq\><around*|[|a,b|[>>
      which combined with <reference|eq 18.16.021> gives\ 

      <\equation*>
        <around*|[|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using \ <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>x\<less\>x+<frac|1|n>\<less\>b> hence
      <math|a\<less\>x\<less\>b-<frac|1|n>> proving that
      <math|x\<in\><around*|]|a,b-<frac|1|n>|]>>. So\ 

      <\equation>
        <label|eq 18.17.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>x\<leqslant\>b-<frac|1|n>\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>
      proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>\<subseteq\><around*|]|a,b|[>>.
      Combining this with <reference|eq 18.17.021> gives\ 

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using \ <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>a+<frac|1|n>\<less\>x\<less\>b> proving that
      <math|x\<in\><around*|[|a+<frac|1|n>,b|[>>. Hence\ 

      <\equation>
        <label|eq 18.18.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[><rsub|>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>a+<frac|1|n>\<less\>x\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b|[>>
      proving that <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|[>\<subseteq\><around*|]|a,b|[>>.
      Combining this with <reference|eq 18.18.021> gives\ 

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|[>> then
      <math|a\<less\>x\<less\>b> and using <reference|consequence of the
      archimedean property for the reals> there exists
      <math|n<rsub|1>,n<rsub|2>\<in\>\<bbb-N\><rsub|0>> such that
      <math|a\<less\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>x+<frac|1|n<rsub|2>>\<less\>b\<Rightarrow\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>b-<frac|1|n<rsub|2>>>.
      Take <math|m=max<around*|(|n<rsub|1>,n<rsub|2>|)>> then
      <math|<frac|1|m>\<leqslant\><frac|1|n<rsub|1>>,<frac|1|n<rsub|2>>> so
      that <math|a+<frac|1|m>\<leqslant\>a+<frac|1|n<rsub|1>>\<less\>x\<less\>b-<frac|1|n<rsub|2>>\<leqslant\>b-<frac|1|m>>
      proving that <math|x\<in\><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>>.
      Hence\ 

      <\equation>
        <label|eq 18.19.021><around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x\<less\>b-<frac|1|n>\<less\>b>
      proving that <math|a\<less\>x\<less\>b> or
      <math|x\<in\><around*|]|a,b|[>>. So
      <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b-<frac|1|n>|]>\<subseteq\><around*|]|a,b|[>>
      which together with <reference|eq 18.19.021> gives

      <\equation*>
        <around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|m>,b-<frac|1|m>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|-\<infty\>,a|[>> then
      <math|x\<less\>a> and using <reference|consequence of the archimedean
      property for the reals> there exists a <math|n\<in\>\<bbb-N\><rsub|0>>
      such that <math|x+<frac|1|n>\<less\>a\<Rightarrow\>x\<less\>a-<frac|1|n>\<Rightarrow\>x\<in\><around*|]|-\<infty\>,a-<frac|1|n>|]>>
      proving that\ 

      <\equation>
        <label|eq 18.20.021><around*|]|-\<infty\>,a|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a-<frac|1|n>|]>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a-<frac|1|n>|]>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|]|-\<infty\>,a-<frac|1|n>|]>\<Rightarrow\>x\<leqslant\>a-<frac|1|n>\<less\>a>
      giving <math|x\<in\><around*|]|-\<infty\>,a|[>> and proving that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a|]>\<subseteq\><around*|]|-\<infty\>,a|[>>.
      Using this together with <reference|eq 18.20.021> proves

      <\equation*>
        <around*|]|-\<infty\>,a|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a-<frac|1|n>|]>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,\<infty\>|[>> then
      <math|a\<less\>x> and using <reference|consequence of the archimedean
      property for the reals> there exists a <math|n\<in\>\<bbb-N\><rsub|0>>
      such that <math|a+<frac|1|n>\<less\>x\<Rightarrow\>x\<in\><around*|[|a+<frac|1|n>,\<infty\>|[>>.
      Hence\ 

      <\equation>
        <label|eq 18.21.021><around*|]|a,\<infty\>|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,\<infty\>|[>
      </equation>

      If <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,\<infty\>|[>>
      then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\><around*|[|a+<frac|1|n>,\<infty\>|[>\<Rightarrow\>a\<less\>a+<frac|1|n>\<leqslant\>x>
      hence <math|x\<in\><around*|]|a,\<infty\>|[>>. This proves that
      <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,\<infty\>|[>\<subseteq\><around*|]|a,\<infty\>|[>>,
      combining this with <reference|eq 18.21.021> gives\ 

      <\equation*>
        <around*|]|a,\<infty\>|[>=<big|cup><rsub|n\<in\>\<bbb-N\>+0><around*|[|a+<frac|1|n>,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|[|a,b|[>> then
      <math|a\<leqslant\>x\<wedge\>x\<less\>b\<Rightarrow\>a\<leqslant\>x\<wedge\>\<neg\><around*|(|b\<leqslant\>x|)>>
      so that <math|x\<in\><around*|[|a,\<infty\>|[>> and
      <math|x\<nin\><around*|[|b,\<infty\>|[>> proving that\ 

      <\equation>
        <label|eq 18.22.021><around*|[|a,b|[>\<subseteq\><around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>
      </equation>

      If <math|x\<in\><around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>>
      then <math|a\<leqslant\>x\<wedge\>\<neg\><around*|(|b\<leqslant\>x|)>>
      or <math|a\<leqslant\>x*> and <math|x\<less\>b> proving that
      <math|<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>\<subseteq\><around*|[|a,b|[>>.
      Combining this with <reference|eq 18.22.021> proves that

      <\equation*>
        <around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>
      </equation*>

      <item>Let <math|x\<in\><around*|]|a,b|]>> then
      <math|a\<less\>x\<wedge\>x\<leqslant\>b> then
      <math|\<neg\><around*|(|x\<leqslant\>a|)>\<wedge\>x\<leqslant\>b> so
      that <math|x\<nin\><around*|]|-\<infty\>,a|]>\<wedge\>x\<in\><around*|]|-\<infty\>,b|]>>
      proving that <math|x\<in\><around*|]|-\<infty\>,b|[>\\<around*|]|-\<infty\>,a|]>>.
      For the opposite inclusion let <math|x\<in\><around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>>
      then <math|x\<leqslant\>b> and <math|\<neg\><around*|(|x\<leqslant\>a|)>>
      proving that <math|x\<leqslant\>b> and <math|a\<less\>x> or
      <math|x\<in\><around*|]|a,b|]>>. Hence\ 

      <\equation*>
        <around*|]|a,b|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\proposition>
    <label|Borel algebras on R>We have the following equivalent definitions
    for <math|\<cal-B\><around*|[|\<bbb-R\>|]>>\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\>\|C
      is closed|}>|]>>>>>
    </eqnarray*>
  </proposition>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then there exist a countable
    family <math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>I>>
    with <math|\<forall\>i\<in\>I> <math|\<emptyset\>\<neq\><around*|]|a<rsub|i>,b<rsub|i>|[>>
    such that <math|U=<big|cup><rsub|i\<in\>I><around*|]|a<rsub|i>,b<rsub|i>|[>>
    [see <reference|a open set in R is a countable union of open finite
    intervals>]. As <math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>I>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
    we have using <reference|sigma algebra equivalent definitions> that
    <math|<big|cup><rsub|\<in\>I><around*|]|a<rsub|i>,b<rsub|i>|[>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>
    proving that <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>.
    Hence using <reference|generated sigma algebra> we have\ 

    <\equation>
      <label|eq 18.23.021>\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>
    </equation>

    If <math|<around*|]|a,b|[>\<in\>\<cal-I\><rsub|<around*|]||[>>> then
    using the previous lemma [see <reference|interval identities>] we have
    <math|<around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>>.
    For <math|n\<in\>\<bbb-N\><rsub|0>> we have
    <math|<choice|<tformat|<table|<row|<cell|<around*|]|a,b-<frac|1|n>|]>=\<emptyset\>\<in\>\<cal-I\><rsub|<around*|]||]>>>>|<row|<cell|\<emptyset\>\<neq\><around*|]|a,b-<frac|1|n>|]>\<in\>\<cal-I\><rsub|<around*|]||]>>>>>>>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>
    so that <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a,b-<frac|1|n>|]>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>.
    Hence <math|\<cal-I\><rsub|<around*|]||[>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>
    which by <reference|generated sigma algebra> proves

    <\equation>
      <label|eq 18.24.021>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>
    </equation>

    If <math|<around*|]|a,b|]>\<in\>\<cal-I\><rsub|<around*|]||]>>> then
    using the previous lemma [see <reference|interval identities>] we have
    <math|<around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>>.
    For \ <math|n\<in\>\<bbb-N\><rsub|0>> we have
    <math|<choice|<tformat|<table|<row|<cell|<around*|[|a+<frac|1|n>,b|]>=\<emptyset\>\<in\>\<cal-I\><rsub|<around*|]||]>>>>|<row|<cell|\<emptyset\>\<neq\><around*|[|a+<frac|1|n>,b|]>\<in\>\<cal-I\><rsub|<around*|]||]>>>>>>>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>
    so that <math|<around*|]|a,b|]>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a+<frac|1|n>,b|]>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>.
    Hence <math|\<cal-I\><rsub|<around*|]||]>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>
    which by <reference|generated sigma algebra> proves that

    <\equation>
      <label|eq 18.25.020>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<around*|[||]>><rsub|>|]>
    </equation>

    Now if <math|<around*|[|a,b|]>\<in\>\<cal-I\><rsub|<around*|[||]>>> [so
    that <math|a\<leqslant\>b>] then by the previous lemma [see
    <reference|interval identities>]] we have that
    <math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>>.
    As <math|\<forall\>\<in\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<emptyset\>\<neq\><around*|[|a,b+<frac|1|n>|[>\<in\>\<cal-I\><rsub|<around*|[||[>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>
    it follows that <math|<around*|[|a,b|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>.
    So <math|\<cal-I\><rsub|<around*|[||]>>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|\<nobracket\>>>
    and using <reference|generated sigma algebra> we have

    <\equation>
      <label|eq 18.26.021>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>
    </equation>

    If <math|<around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>> [so that
    <math|a\<less\>b>] then by the previous lemma [see <reference|interval
    identities>] <math|<around*|[|a.b|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>>.
    Now as <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
    <math|<around*|]|a-<frac|1|n>,b|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
    [see <reference|topology of real complex numbers>] giving
    <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,b|[>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>.
    So <math|\<cal-I\><rsub|<around*|[||[>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
    proving by <reference|generated sigma algebra> that\ 

    <\equation>
      <label|eq 18.27.021>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Next combining <reference|eq 18.23.021>, <reference|eq 18.24.021>,
    <reference|eq 18.25.020>, <reference|eq 18.26.021> and
    <math|<reference|eq 18.27.021>> proves

    <\equation>
      <label|eq 18.28.021>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>=\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Next if <math|<around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>> then
    using <reference|interval identities> we have that
    <math|<around*|[|a,b|[>=<around*|[|a,\<infty\>|[>\\<around*|[|b,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    So <math|\<cal-I\><rsub|<around*|[||[>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    giving by <reference|generated sigma algebra> \ 

    <\equation>
      <label|eq 18.29.021>\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<reference|eq
      18.28.021>>>\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    If <math|<around*|[|a,\<infty\>|[>\<in\><around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>>
    then using <reference|interval identities> we have that
    <math|<around*|[|a,\<infty\>|[>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    So <math|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    giving by <reference|generated sigma algebra> that\ 

    <\equation>
      <label|eq 18.30.021>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Next if <math|<around*|]|a,\<infty\>|[>\<in\><around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>>
    then by <reference|open intervals in R> <math|<around*|]|a.\<infty\>|[>>
    is open so that <math|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>.
    Hence using <reference|generated sigma algebra> we have

    <\equation>
      <label|eq 18.31.021>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Combining <reference|eq 18.29.021>, <reference|eq 18.30.021> and
    <reference|eq 18.31.021> gives

    <\equation>
      <label|eq 18.32.021>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Next if <math|<around*|]|-\<infty\>,a|[>\<in\><around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>>
    then by <reference|interval identities> we have that
    <math|<around*|]|-\<infty\>,a|[>=\<bbb-R\>\\<around*|[|a,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    So using <reference|generated sigma algebra> we have that

    <\equation>
      <label|eq 18.33.021>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    If <math|<around*|]|b,a|]>\<in\>\<cal-I\><rsub|<around*|]||]>>> then by
    <reference|interval identities> we have that
    <math|<around*|]|b,a|]>=<around*|]|-\<infty\>,b|]>\\<around*|]|-\<infty\>,a|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|\<cal-I\><rsub|<around*|]||]>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>.
    So by <reference|generated sigma algebra> again we have\ 

    <\equation>
      <label|eq 18.34.021>\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|<text|<reference|eq
      18.28.021>>>\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Now if <math|<around*|]|-\<infty\>,a|]>\<in\><around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>>
    then by <reference|interval identities>
    <math|<around*|]|-\<infty\>,a|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|-\<infty\>,a+<frac|1|n>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    proving that <math|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>.
    By <reference|generated sigma algebra> we have then\ 

    <\equation>
      <label|eq 18.35.021>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    If <math|<around*|]|-\<infty\>,a|[>\<in\><around*|{|<around*|]|-\<infty\>,a|[>\|a|}>>
    then by <reference|open intervals in R> <math|<around*|]|-\<infty\>,a|[>>
    is open so that <math|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>,
    hence using <reference|generated sigma algebra> we have that\ 

    <\equation>
      <label|eq 18.36.021>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Combining <reference|eq 18.34.021>, <reference|eq 18.35.021> and
    <reference|eq 18.36.021> gives then\ 

    <\equation>
      <label|eq 18.37.021>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    Next using <reference|Borel algebra is generated by closed sets> we have\ 

    <\equation>
      <label|eq 18.38.021>\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>=\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\>\|C
      is closed|}>|]>
    </equation>

    Summarizing <reference|eq 18.28.021>, <reference|eq 18.32.021>,
    <reference|eq 18.37.021> and <reference|eq 18.38.021> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|]||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||]>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-I\><rsub|<around*|[||[>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|[|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\>\|C
      is closed|}>|]>>>>>
    </eqnarray*>
  </proof>

  <subsection|Borel algebra on <math|\<bbb-R\><rsup|n>>>

  We extend first the concept of generalized intervals on
  <math|\<bbb-R\><rsup|n>>. First we define <math|\<leqslant\>> on
  <math|\<bbb-R\><rsup|n>> (note that this is not a order relation, we use
  this only to have a simpler definition of intervals.

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> [see <reference|strict positive
    natural numbers>] and <math|a,b\<in\>\<bbb-R\><rsup|n>> then we say that\ 

    <\enumerate>
      <item><math|a\<leqslant\>b> iff <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|a<rsub|i>\<leqslant\>b<rsub|i>>

      <item><math|a\<less\>b> iff <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|a<rsub|i>\<less\>b<rsub|i>>
    </enumerate>
  </definition>

  Next we can define intervals on <math|\<bbb-R\><rsup|n>>

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|a,b\<in\>\<bbb-R\><rsup|n>>
    such that <math|a\<leqslant\>b> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|a,b|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x\<wedge\>x\<leqslant\>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|<around*|[|a,b|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x\<wedge\>x\<less\>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|<around*|]|a,b|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x\<wedge\>x\<leqslant\>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|]>>>|<row|<cell|<around*|]|a,b|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x\<wedge\>x\<less\>b|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|<around*|]|-\<infty\>,a|]>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<leqslant\>a|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<leqslant\>a<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|]>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|]>>>|<row|<cell|<around*|]|-\<infty\>,a|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x\<less\>a|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<less\>a<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|[>>>|<row|<cell|<around*|[|a,\<infty\>|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|[|a<rsub|i>,\<infty\>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,\<infty\>|[>>>|<row|<cell|<around*|]|a,\<infty\>|[>>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<in\><around*|]|a<rsub|i>,\<infty\>|[>|}>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i\<less\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,\<infty\>|[>>>>>
    </eqnarray*>
  </definition>

  <\proposition>
    <label|empty rectaangles>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> then we have\ 

    <\enumerate>
      <item><math|<around*|[|a,b|[>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>

      <item><math|<around*|]|a,b|]>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>

      <item><math|<around*|]|a,b|[>=\<emptyset\>\<Leftrightarrow\>\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      such that <math|a<rsub|i>=b<rsub|i>>>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|[|a,b|[>=\<emptyset\>>
        then by <reference|conventions for product of sets>
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by <reference|consequence of
        the archimedean property for the reals> there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>>
        contradicting <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>.
        So we must have <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>> we have
        <math|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>a<rsub|i>> leading to
        the contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|]|a,b|]>=\<emptyset\>>
        then by <reference|conventions for product of sets>
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by <reference|consequence of
        the archimedean property for the reals> there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>>
        contradicting <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>.
        So we must have <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>> we have
        <math|a<rsub|i>\<less\>x\<wedge\>x\<leqslant\>a<rsub|i>> leading to
        the contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|[|a<rsub|i>,b<rsub|i>|]>=\<emptyset\>>
      </description>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|<around*|]|a,b|[>=\<emptyset\>>
        then by <reference|conventions for product of sets>
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>. If
        <math|a<rsub|i>\<less\>b<rsub|i>> then by <reference|consequence of
        the archimedean property for the reals> there exists a
        <math|x\<in\>\<bbb-R\>> such that
        <math|a<rsub|i>\<less\>x\<less\>b<rsub|i>\<Rightarrow\>x\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>>
        contradicting <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>.
        So we must have <math|a<rsub|i>=b<rsub|i>>.

        <item*|<math|\<Leftarrow\>>>If <math|a<rsub|i>=b<rsub|i>> then if
        <math|x\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>> we have
        <math|a<rsub|i>\<less\>x\<wedge\>x\<less\>a<rsub|i>> leading to the
        contradiction <math|a<rsub|i>\<less\>a<rsub|i>> so
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=\<emptyset\>>
      </description>
    </enumerate>
  </proof>

  Using the intervals in <math|\<bbb-R\><rsup|n>> we can define the following
  set of halp-open rectangles

  <\definition>
    <index|<math|\<cal-R\><rsup|n>>>Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    we define <math|\<cal-R\><rsup|n>> by
    <math|\<cal-R\><rsup|n>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\><rsup|n>\<wedge\>a\<leqslant\>b|}>>
  </definition>

  The following proposition allows us to define unique begin and endpoint for
  elements of <math|\<cal-R\><rsup|n>>.

  <\theorem>
    <label|boundaries of a rectangle are unique>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|\<emptyset\>\<neq\>R\<in\>\<cal-R\><rsup|n>>
    then there exists unique <math|a\<comma\>b\<in\>\<bbb-R\><rsup|n>> such
    that <math|R=<around*|[|a,b|[>>
  </theorem>

  <\proof>
    If <math|I\<in\>\<cal-R\><rsup|n>> then there exists by definition of
    <math|\<cal-R\><rsup|n>> a <math|a,b\<in\>\<bbb-R\><rsup|n>> such that
    <math|I=<around*|[|a,b|[>>. Assume that there also exists a
    <math|a<rprime|'>,b<rprime|'>\<in\>\<bbb-R\><rsup|n>> such that
    <math|R=<around*|[|a<rprime|'>,b<rprime|'>|[>>. Using <reference|equality
    of product of sets (1)> and the fact that <math|R\<neq\>\<emptyset\>> we
    must have then that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    we have that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>>.
    As <math|R\<neq\>\<emptyset\>> we have by <reference|empty rectaangles>
    that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>> so that
    using <reference|generalized intervals and boundaries>
    <math|a<rsub|i>=a<rprime|'><rsub|i>\<wedge\>b<rsub|i>=b<rprime|'><rsub|i>>.
    Hence <math|a=a<rprime|'>\<wedge\>b=b<rprime|'>> proving uniqueness.
  </proof>

  The above theorem allows us to define the boundaries of elements of
  <math|\<cal-R\>> and the volume of these elements.

  <\definition>
    <label|volume of a rectangle>Let <math|n\<in\>\<bbb-N\><rsub|0>> then we
    define:

    <\enumerate>
      <item><math|begin:\<cal-R\><rsup|n>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\><rsup|n>>
      by <math|begin<around*|(|I|)>=a> where <math|I=<around*|[|a,b|[>>

      <item><math|end:\<cal-R\><rsup|n>\\<around*|{|\<emptyset\>|}>\<rightarrow\>\<bbb-R\><rsup|n>>
      by <math|begin<around*|(|I|)>=b> where <math|I=<around*|[|a,b|[>>

      <item><math|v<rsup|n>:\<cal-R\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|[>>
      by <math|v<rsup|n><around*|(|I|)>=<choice|<tformat|<table|<row|<cell|0
      if I=\<emptyset\>>>|<row|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>
      where I=<around*|[|a,b|[>>>>>>>
    </enumerate>
  </definition>

  <\note>
    <label|volume in R^n>If <math|R\<in\>\<cal-R\><rsup|n>> then there exists
    a <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> such that
    <math|R=<around*|[|a,b|[>> and <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>
  </note>

  <\proof>
    If <math|R\<in\>\<cal-R\><rsup|n>> then by definition
    <math|R=<around*|[|a,b|[>> where <math|a,b\<in\>\<bbb-R\><rsup|n>> and
    <math|a\<leqslant\>b>. We have now two cases to check for <math|R>:\ 

    <\description>
      <item*|<math|R=\<emptyset\>>>Then if
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|a<rsub|i>\<less\>b<rsub|i>> we have that
      <math|a<rsub|i>\<less\><frac|a<rsub|i>+b<rsub|i>|2>\<less\>b<rsub|i>>
      so that <math|<around*|(|<frac|a<rsub|1+b<rsub|1>>|2>,\<ldots\>,<frac|a<rsub|n>+b<rsub|n>|2>|)>\<in\><around*|[|a,b|[>=R>
      contradicting <math|R=\<emptyset\>>. So
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|b<rsub|i>\<less\>a<rsub|i>> which as
      <math|a\<leqslant\>b\<Rightarrow\>a<rsub|i>\<leqslant\>b<rsub|i>> means
      that <math|a<rsub|i>=b<rsub|i>> thence
      <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>=0=v<rsup|n><around*|(|R|)>>

      <item*|<math|R\<neq\>\<emptyset\>>>then by definition
      <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>
    </description>
  </proof>

  <\lemma>
    <label|length of interval is increasing>Let <math|a,b,c,d\<in\>\<bbb-R\>>
    with <math|a\<less\>b> then if <math|<around*|[|a,b|[>\<subseteq\><around*|[|c,d|[>>
    we have <math|c\<leqslant\>a\<less\>b\<leqslant\>d>
  </lemma>

  <\proof>
    As <math|a\<less\>b> we have that <math|\<delta\><rsub|1>=<frac|b-a|2>\<gtr\>0>.\ 

    Assume that <math|a\<less\>c> then<nbsp><math|\<delta\><rsub|2>=<frac|c-a|2>\<gtr\>0>.
    Take <math|\<delta\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|2>|)>\<gtr\>0>
    then <math|a\<less\>a+\<delta\>\<leqslant\>a+\<delta\><rsub|1>=a+<frac|b-a|2>=<frac|a+b|2>\<less\><frac|b+b|2>=b>
    proving that <math|a+\<delta\>\<in\><around*|]|a,b|[>>. Further
    <math|a+\<delta\>\<less\>a+\<delta\><rsub|2>=a+<frac|c-a|2>=<frac|a+c|2>\<less\><frac|c+c|2>=c>
    proving that <math|a+\<delta\>\<nin\><around*|[|c,d|[>> contradicting
    <math|a+\<delta\>\<in\><around*|]|a,b|[>\<subseteq\><around*|[|c,d|[>>.
    Hence we have\ 

    <\equation*>
      c\<leqslant\>a
    </equation*>

    \;

    Assume that <math|d\<less\>b> then <math|\<delta\><rsub|3>=<frac|b-d|2>\<gtr\>0>
    take <math|\<gamma\>=min<around*|(|\<delta\><rsub|1>,\<delta\><rsub|3>|)>\<gtr\>0>
    then for <math|b\<gtr\>b-\<gamma\>\<gtr\>b-\<delta\><rsub|1>=b-<frac|b-a|2>=<frac|b+a|2>\<gtr\><frac|a+a|2>=a>
    proving that <math|b-\<gamma\>\<in\><around*|]|a,b|[>>. Further
    <math|b-\<gamma\>\<gtr\>b-\<delta\><rsub|3>=b-<frac|b-d|2>=<frac|b+d|2>\<gtr\><frac|d+d|2>=d>
    proving that <math|b-\<gamma\>\<nin\><around*|[|c,d|[>> contradicting
    <math|b-\<gamma\>\<in\><around*|]|a,b|[>\<subset\><around*|[|c,d|[>>.
    Hence we have

    <\equation*>
      b\<leqslant\>d
    </equation*>
  </proof>

  <\proof>
    If <math|<around*|[|a,b|[>\<subseteq\><around*|[|c,d|[>> then as
    <math|<around*|]|a,b|[>\<subseteq\><around*|[|a,b|[>\<subseteq\><around*|[|c,d|[>>
    we have using <reference|length of interval is increasing (1)> that
    <math|c\<leqslant\>a\<less\>b\<leqslant\>d>
  </proof>

  <\lemma>
    <label|volume is increasing>Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
    <math|R,Q\<in\>\<cal-R\><rsup|n>> with <math|R\<subseteq\>Q> we have
    <math|v<rsup|n><around*|(|R|)>\<leqslant\>v<rsup|n><around*|(|Q|)>>
  </lemma>

  <\proof>
    For <math|R> we have to consider the following cases to consider:

    <\description>
      <item*|<math|R=\<emptyset\>>>then <math|v<rsup|n><around*|(|R|)>=0\<leqslant\>v<rsup|n><around*|(|Q|)>>

      <item*|<math|R\<neq\>\<emptyset\>>>then there exists a <math|x\<in\>R>.
      Further as <math|R,Q\<in\>\<cal-R\><rsup|n>> there exists
      <math|a,b,c,d\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> and
      <math|c\<leqslant\>d> such that <math|R=<around*|[|a,b|[>> and
      <math|Q=<around*|[|c,d|[>>. As <math|x\<in\>R> we have that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>>. Assume that
      <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|<around*|[|a<rsub|j>,b<rsub|j>|[>\<nsubseteq\><around*|[|c<rsub|j>,d<rsub|j>|[>>
      then there exists a <math|r\<in\><around*|[|a<rsub|j>,b<rsub|j>|[>>
      such that <math|r\<nin\><around*|[|c<rsub|j>,d<rsub|j>|[>>. Define
      <math|y\<in\>\<bbb-R\><rsup|n>> by <math|y<rsub|i>=<choice|<tformat|<table|<row|<cell|x<rsub|i>
      if i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|j|}>>>|<row|<cell|r
      if j=i>>>>>> then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|y<rsub|i>\<in\><around*|[|a<rsub|j>,b<rsub|j>|[>> so that
      <math|y\<in\>R\<Rightarrowlim\><rsub|R\<subseteq\>Q>y\<in\>Q>. Hence
      <math|r=y<rsub|j>\<in\><around*|[|c<rsub|j>,d<rsub|j>|[>> a
      contradiction. So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      we have <math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|[|c<rsub|i>,d<rsub|i>|[>>
      or <math|a<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>> and using
      <reference|length of interval is increasing> that
      <math|c<rsub|i>\<leqslant\>a<rsub|i>\<less\>b<rsub|i>\<leqslant\>d<rsub|i>>.
      From which it follows that <math|0\<less\>b<rsub|i>-a<rsub|i>\<leqslant\>d<rsub|i>-c<rsub|i>>
      and finaly that <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<leqslant\><big|prod><rsub|i=1><rsup|n><around*|(|d<rsub|i>-c<rsub|i>|)>=v<rsup|n><around*|(|Q|)>>.
    </description>
  </proof>

  Now to prove that the Borel algebra on <math|\<bbb-R\><rsup|n>> can be
  generated from <math|\<cal-R\><rsup|n>> we must be able to write every open
  set in <math|\<bbb-R\><rsup|n>> as a denumerable union of rectangles in
  <math|\<bbb-R\><rsup|n>>. To be able to do this we construct a denumberable
  subset of <math|\<cal-R\><rsup|n>>, the set of Dyadic cubes.

  <\definition>
    <label|Dyadic cubes><index|Dyadic cubes><index|<math|\<cal-D\><rsup|n><rsub|m>>><index|<math|\<cal-D\><rsup|n>>><dueto|Dyadic
    Cubes>Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|m\<in\>\<bbb-N\>> and
    <math|z\<in\>\<bbb-Z\><rsup|n>> then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\<in\>\<cal-R\><rsup|n>>
    is called a Dyadic cube of order <math|m>. The set of Dyadic cubes of
    order <math|m> is noted as <math|\<cal-D\><rsup|n><rsub|m>>. So
    <math|\<cal-D\><rsup|n><rsub|m>=<around*|{|<around*|[|<frac|z<rsub|>|2<rsup|m>>.<frac|z+1|2<rsup|m>>|[>\|z\<in\>\<bbb-Z\><rsup|n>|}>>.
    The set of all Dyadic cubes noted by <math|\<cal-D\><rsup|n>> hence
    <math|\<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsub|m><rsup|n>>.
  </definition>

  <\note>
    As <math|<frac|z|2<rsup|m>>\<less\><frac|z+1|2<rsup|m>>> we have
    <math|<frac|z|2<rsup|m>>\<in\><around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|]>>
    proving that Dyadic cubes are always non empty.
  </note>

  <\lemma>
    <label|Dyadic interval basic property>Let <math|k,l\<in\>\<bbb-N\>> with
    <math|k\<leqslant\>l> and <math|r,q\<in\>\<bbb-Z\>> then we have:

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<nsubseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>>>
    </eqnarray*>

    \ either <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>
    or <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>
    but not both.
  </lemma>

  <\proof>
    Take <math|I=<around*|[|<frac|q|2<rsup|l>>,<frac|q+1|2<rsup|l>>|[>> and
    <math|J=<around*|[|<frac|r|2<rsup|k>>,<frac|r+1|2<rsup|k>>|[>>. As
    <math|k\<leqslant\>l> we have <math|0\<leqslant\>l-k=n>, next

    <\eqnarray*>
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|[|<frac|r|2<rsup|k>>,<frac|r+1|2<rsup|k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r|2<rsup|k>>\<cdot\><frac|2<rsup|l-k>|2<rsup|l-k>>,<frac|r+1|2<rsup|k>>\<cdot\><frac|2<rsup|l-k>|2<rsup|l-k>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r\<cdot\>2<rsup|l-k>|2<rsup|l>>,<frac|r\<cdot\>2<rsup|l-k>+2<rsup|l-k>|2<rsup|l>>|[>>>|<row|<cell|>|<cell|=>|<cell|<around*|[|<frac|r\<cdot\>2<rsup|n>|2<rsup|l>>,<frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>|[><eq-number><label|eq
      18.39.022>>>>>
    </eqnarray*>

    Assume that <math|I<big|cap>J\<neq\>\<emptyset\>> so that
    <math|\<exists\>x\<in\>I<big|cap>J> giving\ 

    <\equation>
      <label|eq 18.40.022><frac|q|2<rsup|l>>\<leqslant\>x\<less\><frac|q+1|2<rsup|l>>\<wedge\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    If now <math|<frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>>
    then <math|x\<less\><frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x>
    giving the contradiction <math|x\<less\>x> so we must have\ 

    <\equation>
      <label|eq 18.41.022><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<less\><frac|q+1|2<rsup|l>>
    </equation>

    Further if <math|<frac|r\<cdot\>2<rsup|<rsup|n>>+2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>>
    then <math|x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>\<leqslant\>x>
    giving the contradiction <math|x\<less\>x> again so we must have that\ 

    <\equation>
      <label|eq 18.42.022><frac|q|2<rsup|l>>\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    Multplying <reference|eq 18.41.022> and <reference|eq 18.42.022> by
    <math|2<rsup|l>> gives <math|r\<cdot\>2<rsup|n>\<less\>q+1\<wedge\>q\<less\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    As <math|r\<cdot\>2<rsup|n>,q+1,r\<cdot\>2<rsup|n>+2<rsup|n>\<in\>\<bbb-Z\>>
    we have by <reference|n\<less\>m=\<gtr\>n+1\<less\>=m> that
    <math|r\<cdot\>2<rsup|n>+1\<leqslant\>q+1\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>\<Rightarrow\>r\<cdot\>2<rsup|n>\<leqslant\>q\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    Dividing by <math|2<rsup|n>> gives:

    <\equation>
      <label|eq 18.43.022><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>q\<wedge\><frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
    </equation>

    Next if <math|x\<in\>I> then <math|<frac|q|2<rsup|l>>\<leqslant\>x\<less\><frac|q+1|2<rsup|l>>\<Rightarrowlim\><rsub|<text|<reference|eq
    18.43.022>>><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\>x\<less\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>>
    proving using <reference|eq 18.39.022> that <math|x\<in\>J>. Hence we
    have\ 

    <\equation*>
      <text|If >I<big|cap>J\<neq\>\<emptyset\><text| then >I\<subseteq\>J
    </equation*>

    Finally if <math|I<big|cap>J=\<emptyset\>> then if <math|I\<subseteq\>J>
    we have <math|\<emptyset\>=I<big|cap>J=I> a contradiction as
    <math|<frac|q|2<rsup|l>>\<in\>I>. Hence we have either
    <math|I<big|cap>J=\<emptyset\>> or <math|I\<subseteq\>J> but not both.\ 
  </proof>

  <\lemma>
    <label|Dyadic cube properties>Let <math|n\<in\>\<bbb-N\><rsub|0>> then we
    have\ 

    <\enumerate>
      <item><math|\<forall\>m\<in\>\<bbb-N\>> and
      <math|\<forall\>R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with
      <math|R\<neq\>Q> we have <math|R<big|cap>Q=\<emptyset\>>

      <item>If <math|k,l\<in\>\<bbb-N\>> with <math|k\<leqslant\>l> then if
      <math|R\<in\>\<cal-D\><rsub|l><rsup|n>> and
      <math|Q\<in\>\<cal-D\><rsup|n><rsub|k>> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|R<big|cap>Q\<neq\>\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|R\<subseteq\>Q>>|<row|<cell|R<big|cap>Q=\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|R\<subseteq\>Q>>>>
      </eqnarray*>

      <item><math|\<forall\>m\<in\>\<bbb-N\>> we have
      <math|\<bbb-R\><rsup|n>=<big|sqcup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>
      [a pairwise disjoint union]

      <item><math|\<forall\>m\<in\>\<bbb-N\>> and
      <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|m>> we have
      <math|v<rsup|n><around*|(|R|)>=2<rsup|-n\<cdot\>m>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|m\<in\>\<bbb-N\>> and
      <math|R,Q\<in\>\<cal-D\><rsup|n><rsub|m>> with <math|R\<neq\>Q> then
      <math|R=<around*|[|<frac|r|2<rsup|m>>,<frac|r+1|2<rsup|m>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[>>
      and <math|Q=<around*|[|<frac|q|2<rsup|m>>,<frac|q+1|2<rsup|m>>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|q<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>>,
      where <math|r,w\<in\>\<bbb-Z\><rsup|n>>. As <math|R\<neq\>Q> there
      exists a <math|i\<in\>\<bbb-N\><rsub|1>> such that
      <math|<around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[>\<neq\><around*|[|<frac|q<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>>,
      Hence we must have that <math|r<rsub|i>\<neq\>q<rsub|i>> and we can
      assume that <math|r<rsub|i>\<less\>q<rsub|i>\<Rightarrow\>r<rsub|i>+1\<leqslant\>q<rsub|i>>
      or <math|<frac|r<rsub|i>+1|2<rsup|m>>\<leqslant\><frac|q<rsub|i>|2<rsup|m>>>.
      Assume that <math|x\<in\><around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|q<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>>
      then <math|x\<leqslant\><frac|r<rsub|i>+1|2<rsup|m>>\<leqslant\><frac|q<rsub|i>|2<rsup|m>>\<less\>x>
      leading tho the contradiction <math|x\<less\>x><math|>. So we must have
      that <math|><math|<around*|[|<frac|r<rsub|i>|2<rsup|m>>,<frac|r<rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|q<rsub|i>|2<rsup|m>>,<frac|q<rsub|i>+1|2<rsup|m>>|[>=\<emptyset\>>
      from which we have [see <reference|conventions for product of sets>]

      <\equation*>
        R<big|cap>Q=\<emptyset\>
      </equation*>

      <item>Let <math|k,l\<in\>\<bbb-N\>> with <math|k\<leqslant\>l> and
      <math|R\<in\>\<cal-D\><rsup|n><rsub|l>>,
      <math|Q\<in\>\<cal-D\><rsup|n><rsub|k>> then there exists a
      <math|r,q\<in\>\<bbb-Z\><rsup|n>> with
      <math|R=<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>> and
      <math|Q=<around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>. Assume
      <math|R\<nsubseteq\>Q> then we have either\ 

      <\description>
        <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\><around*|[|<frac|r<rsub|i>|2<rsup|l>>,<frac|r<rsub|i>+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q<rsub|i>|2<rsup|k>>,<frac|q<rsub|i>+1|2<rsup|k>>|[>=\<emptyset\>>>then
        using <reference|conventions for product of sets> we have
        <math|R<big|cap>Q=\<emptyset\>>

        <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\><around*|[|<frac|r<rsub|i>|2<rsup|l>>,<frac|r<rsub|i>+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q<rsub|i>|2<rsup|k>>,<frac|q<rsub|i>+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>>then
        using <reference|Dyadic interval basic property> we have
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
        <math|<around*|[|<frac|r<rsub|i>|2<rsup|l>>,<frac|r<rsub|i>+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q<rsub|i>|2<rsup|k>>,<frac|q<rsub|i>+1|2<rsup|k>>|[>>.
        Hence using <reference|conventions for product of sets> again it
        follows that <math|R\<subseteq\>Q> contradicting
        <math|R\<nsubseteq\>Q>. So this case does not apply.
      </description>

      So we conclude that if <math|R\<nsubseteq\>Q> then
      <math|R<big|cap>Q=\<emptyset\>> or using contraposition we have\ 

      <\equation*>
        <text|If >R<big|cap>Q\<neq\>\<emptyset\><text| then >R\<subseteq\>Q
      </equation*>

      On the other hand if <math|R<big|cap>Q=\<emptyset\>> and
      <math|R\<subseteq\>Q> then <math|\<emptyset\>\<neq\>R=R<big|cap>Q=\<emptyset\>>
      a contradiction, so

      <\equation*>
        <text|If >R<big|cap>Q=\<emptyset\><text| then >R\<nsubseteq\>Q
      </equation*>

      <item>Let <math|m\<in\>\<bbb-N\>> and <math|x\<in\>\<bbb-R\><rsup|n>>
      then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
      <math|x<rsub|i>\<in\>\<bbb-R\>>. Using <reference|consequence of the
      archimedean property for the reals> (2) there exists a
      <math|z<rsub|i>\<in\>\<bbb-Z\>> such that
      <math|z<rsub|i>\<leqslant\>x<rsub|i>\<cdot\>2<rsup|m>\<less\>z<rsub|i>+1>
      or <math|<frac|z<rsub|i>|2<rsup|m>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|m>>>.
      So if take <math|z=<around*|(|z<rsub|1>,\<ldots\>,z<rsub|m>|)>> then
      <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|m>>,<frac|z<rsub|i>+1|2<rsup|m>>|[>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\<in\>\<cal-D\><rsup|n><rsub|m>>
      proving that <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R>.
      As <math|\<forall\>R\<in\>\<cal-D\><rsup|n><rsub|m>> we have
      <math|R\<subseteq\>\<bbb-R\><rsup|n>> we have

      <\equation*>
        \<bbb-R\><rsup|n>=<big|cup><rsub|R\<in\>\<cal-D\><rsup|n><rsub|m>>R
      </equation*>

      Using (1) we have if <math|D,D<rprime|'>\<in\>\<cal-D\><rsup|n><rsub|m>>
      with <math|D\<neq\>D<rprime|'>> that
      <math|D<big|cap>D<rprime|'>=\<emptyset\>> so that\ 

      <\equation*>
        \<bbb-R\><rsup|n>=<big|sqcup><rsub|D\<in\>\<cal-D\><rsup|n><rsub|m>>D
      </equation*>

      <item>If <math|R\<in\>\<cal-R\><rsup|n><rsub|m>> then
      <math|\<exists\>z\<in\>\<bbb-Z\><rsup|n>> such that
      <math|R=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|[>>
      so that\ 

      <\equation*>
        v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|<frac|z<rsub|i>+1-z<rsub|i>|2<rsup|m>>|)>=<big|prod><rsub|i=1><rsup|n><frac|1|2<rsup|m>>=<frac|1|2<rsup|n\<cdot\>m>>
      </equation*>

      <\equation*>
        \;
      </equation*>
    </enumerate>
  </proof>

  One of the raisons that we introduce the Dyadic cubes as a subset of
  <math|\<cal-R\><rsup|n>> is that <math|\<cal-D\><rsup|n><rsub|m>> is a
  denumerable set in contrast with <math|\<cal-R\><rsup|n>> which we need
  giving the defition of a <math|\<sigma\>>-algebra. This is proved in the
  next lemma.

  <\lemma>
    <label|the set of Dyadic cubes is denumerable>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>\ 

    <\enumerate>
      <item><math|\<forall\>m\<in\>\<bbb-N\>>
      <math|\<cal-D\><rsup|n><rsub|m>> is denumerable\ 

      <item><math|\<cal-D\><rsup|n>> is denumerable
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|m\<in\>\<bbb-N\>> then as <math|\<bbb-Z\>> is
      denumerable [see <reference|the integer numbers in the reals are
      denumerable>] we have by <reference|finite product of finite or
      denumerable sets> that <math|\<bbb-Z\><rsup|n>> is alos denumerable.
      Define now <math|\<beta\>:\<bbb-Z\><rsup|n>\<rightarrow\>\<cal-D\><rsup|n><rsub|m>>
      by <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>
      then <math|\<beta\>> is a bijection.

      <\description>
        <item*|injectivity>If <math|\<beta\><around*|(|z|)>-\<beta\><around*|(|w|)>>
        then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<around*|[|<frac|w|2<rsup|m>>,<frac|w+1|2<rsup|m>>|[>>.
        Using the fact that a Dyadic cube is not empty together with
        <reference|boundaries of a rectangle are unique> gives
        <math|<frac|z|2<rsup|m>>=<frac|w|2<rsup|m>>> proving that <math|z=w>.

        <item*|surjectivity>This follows from the defintion of
        <math|\<cal-D\><rsup|n><rsub|m>>
      </description>

      So <math|\<cal-D\><rsup|n><rsub|m>> is denumerable.

      <item>Using <reference|denumerable union of denumerable sets is
      denumerable> it follows that <math|\<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsup|n><rsub|m>>
      is denumerable
    </enumerate>
  </proof>

  We are now finally ready to prove that every open set in
  <math|\<bbb-R\><rsup|n>> can be written as a countable union of pairwise
  disjoint Dyadic cubes.

  <\lemma>
    <label|every open set in R^n is a countable union of dyadic cubes>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    the canonical topology on <math|\<bbb-R\><rsup|n>> [see
    <smart-ref|topology of R^n>] then <math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    with <math|U\<neq\>\<emptyset\>> we have that there exists a pairwise
    disjoint family <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\><rsup|n>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>
  </lemma>

  <\proof>
    Let <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> be
    a non empty open set in <math|\<bbb-R\><rsup|n>>. Given
    <math|m\<in\>\<bbb-N\>> define

    <\equation>
      <label|eq 18.44.022>\<cal-S\><rsub|m>=<around*|{|D\<in\>\<cal-D\><rsup|n><rsub|m>\|D\<subseteq\>U|}>\<subseteq\>\<cal-D\><rsup|n><rsub|m>
    </equation>

    and recursively

    <\equation>
      <label|eq 18.45.022>\<cal-T\><rsub|m>=<choice|<tformat|<table|<row|<cell|S<rsub|0>
      if m=0>>|<row|<cell|<around*|{|D\<in\>\<cal-S\><rsub|m>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,m-1|}><text|
      we have >\<forall\>P\<in\>\<cal-T\><rsub|i><text| that
      >P<big|cap>D=\<emptyset\>|}> if m\<gtr\>0>>>>>
    </equation>

    Using the above defintions we have then that

    <\equation>
      <label|eq 18.46.022>\<cal-T\><rsub|m>\<subseteq\>\<cal-S\><rsub|m>\<subseteq\>\<cal-D\><rsup|n><rsub|m>\<subseteq\>\<cal-D\><rsup|n>
    </equation>

    Finally we define\ 

    <\equation>
      <label|eq 18.47.022>\<cal-T\>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-T\><rsub|m>
    </equation>

    If <math|D\<in\>\<cal-T\>> then <math|\<exists\>i\<in\>\<bbb-N\>> such
    that <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-S\><rsub|i>> proving
    by <reference|eq 18.44.022> that <math|D\<subseteq\>U> hence\ 

    <\equation>
      <label|eq 18.48.022><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
    </equation>

    For the opposite inclusion take <math|x\<in\>U> then as <math|U> is open
    there exists a <math|\<varepsilon\>\<gtr\>0> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    Using the Archimedean property [see <reference|consequence of the
    archimedean property for the reals>] there exists a
    <math|n<rsub|x>\<in\>\<bbb-N\><rsub|0>> such that
    <math|0\<less\><frac|1|n<rsub|x>>\<less\>\<varepsilon\>>. Using
    <reference|Dyadic cube properties> (3) there exists a
    <math|D<rsub|x>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>,<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>|[>\<in\>\<cal-D\><rsup|n><rsub|n<rsub|x>>>
    such that <math|x\<in\>D<rsub|x>> proving that\ 

    <\equation>
      <label|eq 18.49.022>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have ><frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>
    </equation>

    If also <math|y\<in\>D<rsub|x>> then\ 

    <\equation>
      <label|eq 18.50.022>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have ><frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<leqslant\>y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>
    </equation>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|y<rsub|i>-x<rsub|i>>|<cell|\<less\>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-x<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<varepsilon\>>>|<row|<cell|x<rsub|i>-y<rsub|i>>|<cell|\<less\>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-y<rsub|i>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2<rsup|n<rsub|x>>>>>|<row|<cell|>|<cell|\<less\>\<varepsilon\>>|<cell|>>>>
    </eqnarray*>

    proving that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|\||y<rsub|i>-x<rsub|i>|\|>\<less\>0>. Hence
    <math|<around*|\<\|\|\>|x-y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||y<rsub|i>-x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>>
    proving that <math|D<rsub|x>\<subseteq\>B<rsub|\<\|\|\>><around*|(|x,\<varepsilon\>|)>\<subseteq\>U>.
    Hence\ 

    <\equation>
      <label|eq 18.51.022>x\<in\>D<rsub|x>\<in\>\<cal-S\><rsub|n<rsub|x>>
    </equation>

    Define now

    <\equation>
      <label|eq 18.52.022>\<cal-K\><rsub|x>=<around*|{|i\<in\><around*|{|0,\<ldots\>,n<rsub|x>|}>\|\<exists\>D\<in\>\<cal-S\><rsub|i>\<vdash\>x\<in\>D|}>
    </equation>

    then by <reference|eq 18.51.022> we have that
    <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>> so that
    <math|\<cal-K\><rsub|x>\<neq\>\<emptyset\>>. Hence\ 

    <\equation>
      <label|eq 18.53.022>m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)><text|
      exists>
    </equation>

    We must now consider two cases for <math|m<rsub|x>>:

    <\description>
      <item*|<math|m<rsub|x>=0>>then <math|\<exists\>D\<in\>\<cal-S\><rsub|0>\<equallim\><rsub|<text|<reference|eq
      18.45.022>>>\<cal-T\><rsub|0>\<subseteq\>\<cal-T\>> so that
      <math|x\<in\>D>

      <item*|<math|0\<less\>m<rsub|x>>>then
      <math|\<exists\>D\<in\>\<cal-S\><rsub|m<rsub|x>>\<subseteq\>\<cal-D\><rsup|n><rsub|m<rsub|x>>>
      such that <math|x\<in\>D> and <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>>
      we have <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|x\<nin\>R>. Let <math|i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>>
      and assume that <math|\<exists\>R\<in\>\<cal-S\><rsub|i>\<subseteq\>\<cal-D\><rsup|n><rsub|i>>
      such that <math|R<big|cap>D\<neq\>\<emptyset\>> then by
      <reference|Dyadic cube properties> (2) we have <math|D\<subseteq\>R>.
      But then as <math|x\<in\>D> we reach the contradition
      <math|x\<in\>R\<wedge\>x\<nin\>R>. Hence
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>> we have
      <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|R<big|cap>D=\<emptyset\>>. So by the definition <reference|eq
      18.45.022> it follows that <math|D\<in\>\<cal-T\><rsub|m<rsub|x>>\<subseteq\>\<cal-T\>>.
      Hence <math|\<exists\>D\<in\>\<cal-T\>> such that <math|x\<in\>D>.
    </description>

    So in all cases there exists a <math|D\<in\>\<cal-T\>> with
    <math|x\<in\>D> proving that <math|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>
    which as <math|x\<in\>U> was choosen arbitrary gives that
    <math|U\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>. Combining this
    with <reference|eq 18.48.022> proves\ 

    <\equation>
      <label|eq 18.54.022>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Now let <math|D,E\<in\>\<cal-T\>> with <math|D\<neq\>E> then there exists
    <math|k,l\<in\>\<bbb-N\>> such that <math|D\<in\>\<cal-T\><rsub|k>\<subseteq\>\<cal-D\><rsup|n><rsub|k>>
    and <math|E\<in\>\<cal-T\><rsub|l>\<subseteq\>\<cal-D\><rsup|n><rsub|l>>.
    For <math|k,l> we have the following cases to consider:

    <\description>
      <item*|<math|k=l>>then using <reference|Dyadic cube properties> (1) we
      have <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|k\<less\>l>>then using <reference|eq 18.45.022> we have
      <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|l\<less\>k>>then using <reference|eq 18.45.022> we have
      <math|D<big|cap>E=\<emptyset\>>
    </description>

    Combining the above with <reference|eq 18.54.022> gives\ 

    <\equation>
      <label|eq 18.55.022>U=<big|sqcup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Assume now that <math|\<cal-T\>> is finite. As
    <math|U\<neq\>\<emptyset\>> we must have that
    <math|\<cal-T\>\<neq\>\<emptyset\>> so that by the finiteness of
    <math|\<cal-T\>><space|1em><math|m=min<around*|(|<around*|(|begin<around*|(|D|)>|)><rsub|1>\|D\<in\>\<cal-T\>|)>>
    is defined. Hence there exists a <math|R=<around*|[|a,b|[>\<in\>\<cal-T\>>
    such that <math|a<rsub|1>=m>. As <math|a\<in\>R\<subseteq\>U> a open set
    there exists a <math|\<varepsilon\>\<gtr\>0> such that
    <math|a\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>.
    Given that <math|a-<frac|\<varepsilon\>|2>\<cdot\>e<rsub|1>\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|a,\<varepsilon\>|)>\<subseteq\>U>
    [where <math|<around*|(|e<rsub|1>|)><rsub|i>=<choice|<tformat|<table|<row|<cell|1
    if i=1>>|<row|<cell|0 if i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>>so that
    <math|a-<around*|(|a-<frac|\<varepsilon\>|2>\<cdot\>e<rsub|1>|)>=<choice|<tformat|<table|<row|<cell|<frac|1|2>\<cdot\>\<varepsilon\>
    if i=1>>|<row|<cell|0 if i\<in\><around*|{|2,\<ldots\>,n|}>>>>>>>], there
    exists a <math|D=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-T\>>
    such that <math|a-<frac|\<varepsilon\>|2>\<cdot\>e<rsub|1>\<in\>D>. But
    then <math|a<rprime|'><rsub|1>=<around*|(|begin<around*|(|D|)>|)><rsub|1>\<leqslant\>a<rsub|1>-<frac|\<varepsilon\>|2>\<less\>a<rsub|1>=m>
    contradicting <math|m\<leqslant\>min<around*|(|<around*|(|begin<around*|(|D|)>|)><rsub|1>\|D\<in\>\<cal-T\>|)>\<leqslant\>a<rprime|'><rsub|1>\<less\>m>,
    So we must have that\ 

    <\equation>
      <label|eq 18.56.022>\<cal-T\><text| is infinite>
    </equation>

    As <math|\<cal-T\>\<subseteq\>\<cal-D\><rsup|n>> is a denumerable set
    [see <reference|the set of Dyadic cubes is denumerable>] it follows from
    the above and <smart-ref|subsets of denumerable sets are finite or
    denumerable> it follows that\ 

    <\equation>
      <label|eq 18.57.022>\<cal-T\><text| is denumerable>
    </equation>

    Hence there exist a bijection <math|\<beta\>:\<bbb-R\>\<rightarrow\>\<cal-T\>>.
    Define <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|D<rsub|i>=\<beta\><around*|(|i|)>> then we have using
    <smart-ref|reindexing of a family>

    <\equation*>
      U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
    </equation*>

    proving the lemma.
  </proof>

  <\lemma>
    <label|half open rectangle as intersection of open sets>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<forall\>R\<in\>\<cal-R\><rsup|n>>
    with <math|R\<neq\>\<emptyset\>> there exists a seqeunce
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    of open ets such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
  </lemma>

  <\proof>
    As <math|R\<in\>\<cal-R\><rsup|n>> there exusts a
    <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> such that
    <math|R=<around*|[|a,b|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>.
    Define then <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|U<rsub|i>=<big|prod><rsub|ij\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|i>|[>>.
    As \ <math|<around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>\<in\>\<cal-T\><rsub|\<bbb-R\>>>
    and <math|T<rsub|\<bbb-R\><rsup|n>>> is the product topology based on
    <math|\<cal-T\><rsub|\<bbb-R\>>> [see <reference|topology of R^n>] it
    follows that <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>.
    Let <math|i\<in\>\<bbb-N\>> and <math|x\<in\>\<bbb-R\>> then we have
    <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|x<rsub|j>\<in\><around*|[|a<rsub|j>,b<rsub|j>|[>\<Rightarrow\>a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>\<Rightarrow\>a<rsub|j>-<frac|1|i>\<less\>a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>>,
    proving using <reference|conventions for product of sets> that
    <math|R\<subseteq\>U<rsub|i>>. Hence we have\ 

    <\equation>
      <label|eq 18.58.022>R\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation>

    For the opposite inequality let <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
    then <math|\<forall\>i\<in\>\<bbb-N\>> we have <math|x\<in\>U<rsub|i>> so
    that <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x<rsub|j>\<in\><around*|]|a<rsub|j>-<frac|1|i>,b<rsub|j>|[>\<Rightarrow\>a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>\<less\>b<rsub|j>>.
    Assume that <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x<rsub|j>\<less\>a<rsub|j>> then using <smart-ref|consequence of
    the archimedean property for the reals> there exists a
    <math|i\<in\>\<bbb-N\>> such that <math|x<rsub|j>\<less\>x<rsub|j>+<frac|1|i>\<less\>a<rsub|j>\<Rightarrow\>x<rsub|j>\<less\>a<rsub|j>-<frac|1|i>>
    contradicting the fact that <math|a<rsub|j>-<frac|1|i>\<less\>x<rsub|j>>.
    Hence <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|a<rsub|j>\<leqslant\>x<rsub|j>\<less\>b<rsub|j>> proving that
    <math|x\<in\>R> so that <math|<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>\<subseteq\>R>.
    This together with <reference|eq 18.58.022> proves

    <\equation*>
      R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>
    </equation*>
  </proof>

  We are finally ready to proved a alternative definition for
  <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.

  <\theorem>
    <label|Borel algebra on R^n (1)>Let <math|n\<in\>\<bbb-N\><rsub|n>> then
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>|<cell|=>|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text|
      [where >\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]><text|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Borel
      algebra is generated by closed sets>>>>|<cell|\<cal-S\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is closed in >\<cal-T\><rsub|\<bbb-R\><rsup|n>>|}>|]>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then we have either:

    <\description>
      <item*|<math|U=\<emptyset\>>>then <math|U\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>

      <item*|<math|U\<neq\>\<emptyset\>>>then using <reference|every open set
      in R^n is a countable union of dyadic cubes> there exists a
      <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
      such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>> which as
      <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>> is a
      <math|\<sigma\>>-algebra provees that
      <math|U\<in\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>
    </description>

    which proves that <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>.
    Hence we have\ 

    <\equation>
      <label|eq 18.59.022>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\><rsup|n>|]>
    </equation>

    For the opposite inclusion let <math|R\<in\>\<cal-R\><rsup|n>> then by
    the previous lemma [see <reference|half open rectangle as intersection of
    open sets>] there exists a <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>. As
    <math|\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>> is a
    <math|\<sigma\>>-algebra it follows that
    <math|R\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>> we
    have that <math|\<cal-R\><rsup|n>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>.
    Hence <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    which by <reference|eq 18.59.022> proves that\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>
    </equation*>
  </proof>

  <\definition>
    <label|lower half open spaces><index|lower half open
    space><index|<math|<around*|]|-\<infty\>,a|[><rsub|i>>>Let
    <math|n\<in\>\<bbb-N\>> then given <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|a\<in\>\<bbb-R\>> <math|<around*|]|-\<infty\>,a|[><rsub|i>> is
    defined by <math|<around*|]|-\<infty\>,a|[><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<less\>a|}>>.
    The set <math|<around*|]|-\<infty\>,a|[><rsub|i>> is called a loawer half
    open space. The set of all lower half open spaces is noted by
    <math|\<cal-H\><rsup|n>> so <math|\<cal-H\><rsup|n>=<around*|{|<around*|]|-\<infty\>,a|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>>
  </definition>

  We prove now that <math|\<cal-H\><rsup|n>> is a collection of open sets.

  <\lemma>
    <label|lower half open spaces are open>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<forall\>H\<in\>\<cal-H\><rsup|n>>
    we have that <math|H\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> [the
    canonical topology on <math|\<bbb-R\><rsup|n>>]
  </lemma>

  <\proof>
    Let <math|H\<in\>\<cal-H\><rsup|n>> then there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and a <math|a\<in\>\<bbb-R\>>
    such that <math|H=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<less\>a|}>>.
    Take <math|x\<in\>H> then <math|x<rsub|i>\<less\>a> so that
    <math|\<varepsilon\>=a-x<rsub|i>\<gtr\>0>. Let
    <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<varepsilon\>|)>>
    then <math|y<rsub|i>-x<rsub|i>\<less\><around*|\||y<rsub|i>-x<rsub|i>|\|>\<leqslant\>max<around*|(|<around*|{|<around*|\||y<rsub|i>-x<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>=a-x<rsub|i>>
    proving that <math|y<rsub|i>\<less\>a>. Hence
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<varepsilon\>|)>\<subseteq\>H>
    which proves that <math|H> is open.
  </proof>

  <\definition>
    <label|Lower half spaces><index|Lower half spaces>Let
    <math|n\<in\>\<bbb-N\><rsup|n>> then given
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|a\<in\>\<bbb-R\>> we
    define <math|<around*|]|-\<infty\>,a|]><rsub|i>> as
    <math|<around*|]|-\<infty\>,a|]>=<around*|{|x\<in\>\<bbb-R\>\|x<rsub|i>\<leqslant\>a|}>>.
    The set of half spaces <math|\<cal-H\><rsup|n>> is defined as
    <math|\<cal-H\><rsup|n>=<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>\<wedge\>i\<in\>\<bbb-N\><rsub|1>|}>>
  </definition>

  Next we show that every non empty set in <math|\<cal-R\><rsup|n>> can be
  written as a finite intersection of sets in
  <math|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>.\ 

  <\lemma>
    <label|rectangle and half open sets>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    and <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> then
    <math|<around*|[|a,b|[>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[><rsub|i>|)>>
  </lemma>

  <\proof>
    Let <math|x\<in\><around*|[|a,b|[>> then if
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
    <math|a<rsub|i>\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>>
    or <math|\<neg\><around*|(|x<rsub|i>\<less\>a<rsub|i>|)>\<wedge\>x<rsub|i>\<less\>b<rsub|i>>,
    hence <math|x\<in\><around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\<wedge\>x\<nin\><around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>>.
    So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x\<in\><around*|]|-\<infty\>,b<rsub|i>|[>\\<around*|]|-\<infty\>,a<rsub|i>|[><rsub|i>>
    proving that\ 

    <\equation>
      <label|eq 18.60.023><around*|[|a,b|[>\<subseteq\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[>|)>
    </equation>

    For the opposite inclusion let <math|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[>|)>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|x\<in\><around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[><rsub|i>>
    hence <math|x<rsub|i>\<less\>b<rsub|i>\<wedge\>\<neg\><around*|(|x<rsub|i>\<less\>a<rsub|i>|)>\<Rightarrow\>x<rsub|i>\<less\>b<rsub|i>\<wedge\>a<rsub|i>\<leqslant\>x<rsub|i>>
    proving that <math|x\<in\><around*|[|a,b|[>>. So
    <math|><math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[>|)>\<subseteq\><around*|[|a,b|[>>
    which together with <reference|eq 18.60.023> proves

    <\equation*>
      <around*|[|a,b|[>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[>|)>
    </equation*>
  </proof>

  <\lemma>
    <label|Borel algebra on R^n (2)>let <math|n\<in\>\<bbb-N\><rsub|0>> then
    we have that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>
  </lemma>

  <\proof>
    If <math|H\<in\>\<cal-H\><rsup|n>> then <math|H> is open [see
    <reference|lower half open spaces are open>], so that
    <math|H\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>\<equallim\><rsub|<text|<reference|Borel
    algebra on R^n (1)>>>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>. Hence
    <math|\<cal-H\><rsup|n>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    giving

    <\equation>
      <label|eq 18.61.023>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation>

    Let <math|R\<in\>\<cal-R\><rsup|n>> then
    <math|\<exists\>a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b>
    such that <math|R=<around*|[|a,b|[>>, using the previous lemma [see
    <reference|rectangle and half open sets>] we have then that
    <math|R=<around*|[|a,b|[>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|[><rsub|i>\\<around*|]|-\<infty\>,a<rsub|i>|[><rsub|i>|)>\<in\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>.
    So <math|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>
    which as <math|\<sigma\><around*|[|\<cal-R\><rsup|>|]>\<equallim\><rsub|<text|<reference|Borel
    algebra on R^n (1)>>>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> proves
    that <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>.
    Combining this with <reference|eq 18.61.023> gives

    <\equation*>
      \<sigma\><around*|[|\<cal-H\><rsup|n>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>
  </proof>

  We can summarize the above equivalences of the Borel algebra on
  <math|\<bbb-R\><rsup|n>> [see <reference|Borel algebra on R^n (1)> and
  <reference|Borel algebra on R^n (2)>] in the following theorem.

  <\theorem>
    <label|Borel algebra on R^n equivalences><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is closed in >\<cal-T\><rsub|\<bbb-R\><rsup|n>>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>>>>
    </eqnarray*>
  </theorem>

  <section|Measures>

  <subsection|Measure definition and properties>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space [see <reference|measurable space>] and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a function
    then we say that:

    <\enumerate>
      <item><math|\<mu\>> is <with|font-series|bold|finite additive> if for
      all pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\><rsub|0>> we have that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|finite sub additive> if
      for all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\><rsub|0>> we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable additive> if
      for all pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\><rsub|0>> we have that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable sub additive>
      if for all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>
  </definition>

  <\definition>
    <label|measure>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be
    a measurable space and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a function then we say that <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|measure> if and only if\ 

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>For every pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      we have\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      [or <math|\<mu\>> is countable additive]
    </enumerate>

    A triple <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> where
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> is a measurable space
    and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    <with|font-series|bold|measure> is called a
    <with|font-series|bold|measure space>.
  </definition>

  <\note>
    <label|countable additivity implies additivity>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measurable
    space then if <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is countable additive then <math|\<mu\>> is additive.
  </note>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>.
    Define now <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    by <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
    i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\><text| if
    >i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1,\<ldots\>,n|}>>>>>>>. If
    <math|k,l\<in\>\<bbb-N\><rsub|0>> with <math|k\<neq\>l> then we have
    either\ 

    <\description>
      <item*|<math|k,l\<in\><around*|{|1,\<ldots\>,n|}>>>then
      <math|B<rsub|k><big|cap>B<rsub|l>=A<rsub|k><big|cap>A<rsub|l>=\<emptyset\>>

      <item*|<math|k\<nin\><around*|{|1,\<ldots\>,n|}>>>then
      <math|B<rsub|k><big|cap>B<rsub|l>=\<emptyset\><big|cap>B<rsub|l>=\<emptyset\>>

      <item*|<math|l\<nin\><around*|{|1,\<ldots\>,n|}>>>then
      <math|B<rsub|k><big|cap>B<rsub|l>=B<rsub|k><big|cap>\<emptyset\>=\<emptyset\>>
    </description>

    So we have by countable additivity that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|union
      of possible empty sets>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
      sum of extented reals written as infinite
      sum>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>

    proving the note.
  </proof>

  <\theorem>
    <label|measure properties (1)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then

    <\enumerate>
      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<subseteq\>B> we
      have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

      <item><math|\<forall\>A,B\<in\>\<cal-A\>> with <math|A\<subseteq\>B>
      and <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> we have
      <math|\<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>>
    </enumerate>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|A<big|cap><around*|(|B\\A|)>=\<emptyset\>> and
        <math|B=A<big|cup><around*|(|B\\A|)>> it follows by the above [see
        <reference|countable additivity implies additivity>] that

        <\equation*>
          \<mu\><around*|(|B\\A|)>+\<mu\><around*|(|A|)>=\<mu\><around*|(|B|)>
        </equation*>

        further as <math|0\<leqslant\>\<mu\><around*|(|B\\A|)>> we have by
        <reference|0\<less\>=y then z=x+y=\<gtr\>z\<less\>=y> that
        <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>>

        <item>If in addition to <math|<around*|(|1|)>>
        <math|\<mu\><around*|(|A|)>> is finite it follows from
        <reference|x+z=y+z=\<gtr\>x=y> that\ 

        <\equation*>
          \<mu\><around*|(|B\\A|)>=\<mu\><around*|(|B|)>-\<mu\><around*|(|A|)>
        </equation*>
      </enumerate>
    </proof>
  </theorem>

  Next we prove that countable additivity implies countable sub additivity.\ 

  <\theorem>
    <label|measure is subadditive>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measurable space then for every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    we have that <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
  </theorem>

  <\proof>
    Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|X<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>
    if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>> then by the properties
    of a <math|\<sigma\>>-algebra it follows that
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>.
    Further using <reference|writing a countable family of sets as a disjoint
    familly of sets> we have that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>>. So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|sum
      and order relation in the extented reals> and <reference|measure
      properties (1)>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|measure properties (2)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then\ 

    <\enumerate>
      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> we have that
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1> if
      i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>\<in\>\<cal-A\>>. Let
      <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> then we may
      always assume that <math|i\<less\>j> [otherwise exchange <math|i> and
      <math|j>]. If <math|x\<in\>B<rsub|i><big|cap>B<rsub|j>> then we have
      either

      <\description>
        <item*|<math|i=1>>then <math|x\<in\>B<rsub|1>=A<rsub|1>> and
        <math|x\<in\>B<rsub|j>=A<rsub|j>\\A<rsub|j-1>\<Rightarrow\>x\<nin\>A<rsub|j-1>>.
        As <math|i\<less\>j\<Rightarrow\>1\<leqslant\>j-1> we have that
        <math|A<rsub|1>\<subseteq\>A<rsub|j-1>> so that we reach the
        contradiction that <math|x\<in\>A<rsub|1>> and
        <math|x\<nin\>A<rsub|1>>.

        <item*|<math|1\<less\>i>>then <math|i\<less\>j\<Rightarrow\>i\<leqslant\>j-1>
        so that <math|A<rsub|i>\<subseteq\>A<rsub|j-1>>. Now as
        <math|x\<in\>B<rsub|i>=A<rsub|i>\\A<rsub|i-1>> we have that
        <math|x\<in\>A<rsub|i>\<subseteq\>A<rsub|j-1>> which contradict that
        <math|x\<in\>B<rsub|j>=A<rsub|j>\\A<rsub|j-1>>.
      </description>

      so we conclude that\ 

      <\equation>
        <label|eq 18.36.016>\<forall\>i.j\<in\>\<bbb-N\><rsub|0> with
        i\<neq\>j we have B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>
      </equation>

      Next if <math|n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1>\<subseteq\>A<rsub|1>
      if i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1>\<subseteq\>A<rsub|i> if
      i\<in\>\<bbb-N\><rsub|0>\\<around*|{|i|}>>>>>>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|n>>
      it follows that\ 

      <\equation>
        <label|eq 18.37.016><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\>A<rsub|n>\<wedge\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
      </equation>

      Further if <math|x\<in\>A<rsub|n>> then
      <math|n\<in\><around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}>>
      so that <math|m=min<around*|(|<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}>|)>>
      exists. We have now two cases to consider for <math|m>:

      <\description>
        <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>

        <item*|<math|1\<less\>m>>then <math|x\<nin\>A<rsub|m-1>> and
        <math|x\<in\>A<rsub|m>> so that <math|x\<in\>A<rsub|m>\\A<rsub|m-1>=B<rsub|m>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      </description>

      proving that <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>>
      which by <reference|eq 18.37.016> gives\ 

      <\equation>
        <label|eq 18.38.016>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
        >A<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>
      </equation>

      From the above it follows that <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
      which by <reference|eq 18.36.016> and <reference|eq 18.37.016> gives

      <\eqnarray*>
        <tformat|<table|<row|<cell|<label|eq
        18.39.016><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i><eq-number>>>>>
      </eqnarray*>

      Next we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is a measure>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><rsub|>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is additive by <reference|countable additivity implies
        additivity>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.38.016>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>>>>>
      </eqnarray*>

      proving (1). Finally as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we
      have <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> it follows that
      <math|\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i+1>|)>>.
      Applying then <reference|equivalence of limits on increasing
      (decreasing) sequences of extented reals> gives\ 

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation*>

      <item>First we consider the case where <math|k=1>. So let
      <math|\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>> then as
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have <math|1\<leqslant\>i>
      it follows that <math|A<rsub|i>\<subseteq\>A<rsub|1>\<Rightarrow\>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      proving that\ 

      <\equation>
        <label|eq 18.40.016>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        >\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>
      </equation>

      Define now <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|B<rsub|i>=A<rsub|1>\\A<rsub|i>> then we have if
      <math|x\<in\>B<rsub|i>> that <math|x\<in\>A<rsub|1>\<wedge\>x\<nin\>A<rsub|i>\<supseteq\>A<rsub|i+1>\<Rightarrow\>x\<nin\>A<rsub|i+1>>
      proving that <math|x\<in\>B<rsub|i+1>> hence\ 

      <\equation>
        <label|eq 18.41.016>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        >B<rsub|i>\<subseteq\>B<rsub|i+1>
      </equation>

      So we may use (1) giving

      <\equation>
        <label|eq 18.42.016>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|1>\\B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|1>\\<around*|(|A<rsub|1>\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Acc=A>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i><eq-number><label|eq
        18.43.016>>>>>
      </eqnarray*>

      As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|B<rsub|i>=A<rsub|1>\\A<rsub|i>\<subseteq\>A<rsub|1>> we have that
      <math|\<mu\><around*|(|B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      and <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\>A<rsub|1>>
      giving <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>.
      Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.43.016>>>>|<cell|\<mu\><around*|(|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
        properties (1)>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.42.016>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        xi+x> and <reference|properties of the limit in the extented
        reals>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|1>|)>+<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      Hence we have\ 

      <\equation>
        <label|eq 18.44.016>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text|
        with >\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\><infix-and>\<forall\>i\<in\>\<bbb-N\><rsub|0><text|
        >A<rsub|i+1>\<subseteq\>A<rsub|i><text| we have
        >\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      We consider the general case <math|1\<less\>k>. Let now
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be such
      that <math|\<forall\>i\<in\>C<rsub|i+1>\<subseteq\>C<rsub|i>> and
      <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>> such that
      <math|\<mu\><around*|(|C<rsub|k>|)>\<less\>\<infty\>>. Define then
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|A<rsub|i>=C<rsub|i+<around*|(|k-1|)>>> then
      <math|\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|C<rsub|1+<around*|(|k-1|)>>|)>=\<mu\><around*|(|C<rsub|k>|)>\<less\>\<infty\>>
      and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i+1>=C<rsub|<around*|(|i+<around*|(|k-1|)>|)>+1>\<subseteq\>C<rsub|i+<around*|(|k-1|)>>=A<rsub|i>>.
      Hence using <reference|eq 18.44.016> we have
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i+<around*|(|k-1|)>>|)>\<equallim\><rsub|<text|<reference|limit
      and translation of indexes>>><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.45.016>\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>
      </equation>

      Further if <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have as
      <math|i+<around*|(|k-1|)>\<in\>\<bbb-N\><rsub|0>> that
      <math|x\<in\>C<rsub|i+<around*|(|k-1|)>>=A<rsub|i>> proving that
      <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>> hence

      <\equation>
        <label|eq 18.46.016><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
      </equation>

      If now <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|x\<in\>A<rsub|i>>, then for <math|j\<in\>\<bbb-N\><rsub|0>> we
      have either\ 

      <\description>
        <item*|<math|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>then as
        <math|j-<around*|(|k-1|)>\<in\>\<bbb-N\><rsub|0>> we have
        <math|x\<in\>A<rsub|j-<around*|(|k-1|)>>=C<rsub|j-<around*|(|k-1|)>+<around*|(|k-1|)>>=C<rsub|j>>
        [so also <math|x\<in\>C<rsub|k>>]

        <item*|<math|j\<in\><around*|{|1,\<ldots\>,k-1|}>>>then as
        <math|j\<less\>k> we have <math|C<rsub|k>\<subseteq\>C<rsub|j>\<Rightarrowlim\><rsub|x\<in\>C<rsub|k>>x\<in\>C<rsub|j>>
      </description>

      hence <math|x\<in\><big|cap><rsub|j\<in\>\<bbb-N\><rsub|0>>C<rsub|j>>.
      Combining this with <reference|eq 18.46.016> gives
      <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
      Finally using this on <reference|eq 18.45.016> we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|j\<in\>\<bbb-N\><rsub|0>>C<rsub|j>|)>=<below|lim|j\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|j>|)>
      </equation*>

      proving the theorem for the case <math|1\<less\>k>.
    </enumerate>

    \;
  </proof>

  We have the following inverse of the above theorem that provides methods to
  check if set function is a measure.

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    be such that

    <\enumerate>
      <item><math|\<mu\><around*|(|\<emptyset\>|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      is such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> we
      have <math|i\<neq\>j> <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      then <math|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>.
    </enumerate>

    \ then we have\ 

    <\enumerate>
      <item><math|\<mu\>> is a measure if for every family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.

      <item><math|\<mu\>> is a measure if for every
      family<math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=\<emptyset\>> we have
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>.
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that <math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we
      have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> and define
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>.
      Then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n+1|}>>A<rsub|j>=B<rsub|i+1>>.
      Further if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then
      <math|\<exists\>i\<in\>\<bbb-N\>> such that
      <math|x\<in\>B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>>
      so that <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,i|}>> with
      <math|x\<in\>A<rsub|j>> proving that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      Also as <math|A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>=B<rsub|i>>
      we have that <math|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><rsub|>>
      hence\ 

      <\equation>
        <label|eq 18.47.016><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.47.016>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|assumption>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|finite
        additivity>>|<cell|<below|lim|i\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|i>\<mu\><around*|(|A<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|j>|)>>>>>
      </eqnarray*>

      proving that <math|\<mu\>> is countable additive and thus that
      <math|\<mu\>> is a measure.

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      be such that <math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j>
      we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> and define
      <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>>A<rsub|j>>.
      Then <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|B<rsub|i+1>=<big|cup><rsub|j\<in\><around*|{|i+1,\<ldots\>,\<infty\>|}>>A<rsub|j>\<subseteq\><rsub|<text|<reference|family
      of classes properties (2)>>><big|cup><rsub|j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>>A<rsub|j>=B<rsub|i>>.
      Further if <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>> then
      given <math|i\<in\>\<bbb-N\>> we have that
      <math|x\<in\>B<rsub|i>\<Rightarrow\>\<exists\>j\<in\><around*|{|i,\<ldots\>,\<infty\>|}>>
      such that <math|x\<in\>A<rsub|j>> but then
      <math|\<forall\>k\<in\><around*|{|j+1,\<ldots\>,\<infty\>|}>>
      <math|k\<neq\>j> so that <math|x\<nin\>A<rsub|k>> hence
      <math|x\<nin\>B<rsub|j+1>> contradicting that
      <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>. To summarize
      we have\ 

      <\equation*>
        \<forall\>i\<in\>\<bbb-N\> that B<rsub|i+1>\<subseteq\>B<rsub|i><text|
        and ><big|cap><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=\<emptyset\>
      </equation*>

      Using the hypotheses we have then that
      <math|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>=0>
      or using <reference|limit xi+x>

      <\equation>
        <label|eq 18.48.016><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i+1>|)>=0
      </equation>

      Let <math|k\<in\>\<bbb-N\>>. If <math|x\<in\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>A<rsub|i>|)>>
      then <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,k|}>> and
      <math|\<exists\>j\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>> such that
      <math|x\<in\>A<rsub|i>\<wedge\>x\<in\>A<rsub|j>\<Rightarrow\>x\<in\>A<rsub|i><big|cap>A<rsub|j>>.
      As <math|i\<leqslant\>k\<less\>k+1\<leqslant\>j> we have
      <math|i\<neq\>j> giving the contradiction
      <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>. Hence\ 

      <\equation>
        <label|eq 18.49.016><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>|)><big|cap><around*|(|<big|cup><rsub|i\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>A<rsub|i>|)>=\<emptyset\><text|>
      </equation>

      and

      \ 

      <\equation>
        <label|eq 18.50.016><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<equallim\><rsub|<text|<reference|family
        of classes properties (2)>>><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>A<rsub|i><rsub|>|)>
      </equation>

      So as <math|\<mu\>> is finite additive we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>|)>+\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|k+1,\<ldots\>,\<infty\>|}>>A<rsub|i><rsub|>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,k|}>>A<rsub|i>|)>+\<mu\><around*|(|B<rsub|k+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|k>\<mu\><around*|(|A<rsub|i>|)>|)>+\<mu\><around*|(|B<rsub|k+1>|)><eq-number><label|eq
        18.51.016>>>>>
      </eqnarray*>

      So that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.48.016>>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>|)>+<below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|k+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|k>\<mu\><around*|(|A<rsub|i>|)>|)>+<below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|k+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|k>\<mu\><around*|(|A<rsub|i>|)>+\<mu\><around*|(|B<rsub|k+1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.51.016>>>>|<cell|<below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        of constant extented real>>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <subsection|Carath�odory theorem>

  The Carath�odory theorem allows us to generate a <math|\<sigma\>>-algebra
  and a measure on this <math|\<sigma\>>-algebra. First we define the concept
  of a outer measure that has enough properties to use as a basis to generate
  a <math|\<sigma\>>-algebra and measure.

  <\definition>
    <label|outer measure>Let <math|X> be a set then
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|outer measure >if\ 

    <\enumerate>
      <item><math|\<varphi\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|A,B\<in\>\<cal-P\>*<around*|(|X|)>> with
      <math|A\<subseteq\>B> we have <math|\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|B|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      <dueto|semi-additivity>
    </enumerate>
  </definition>

  <\lemma>
    <label|outer measure finite subadditivity>Let <math|X> be a set and
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0.\<infty\>|]>>
    a outer measure then <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,n\<in\>\<bbb-N\><rsub|0>>
    we have <math|\<varphi\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<rsub|i>|)>>
  </lemma>

  <\proof>
    Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
    i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\>
    if\<in\>\<bbb-N\><rsub|0>\\<around*|{|1,\<ldots\>,n|}>>>>>>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|union
      of possible empty sets>>>>|<cell|\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
      sum of extented reals written as infinite
      sum>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  We shown now a way of generating a outer measure based on semi-additive
  functions

  <\theorem>
    <label|outermeasure construction>Let <math|X> be a set,
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> such that\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-A\>>

      <item><math|\<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      such that <math|X\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>

      <item><math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|A\<in\>\<cal-A\>> then
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      with <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      we have <math|\<mu\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>

    then if we define\ 

    <\equation*>
      \<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]><text|
      by >\<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\><text|
      such that >A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>|)>
    </equation*>

    we have that\ 

    <\itemize-dot>
      <item><math|\<varphi\>> is a outer measure

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|\<varphi\><around*|(|A|)>=\<mu\><around*|(|A|)>>
    </itemize-dot>
  </theorem>

  <\proof>
    First we must prove that <math|\<varphi\>> is well defined. Define

    <\equation>
      <label|eq 18.52.018>\<forall\>A\<in\>\<cal-P\><around*|(|X|)><text|
      >\<cal-C\><rsub|A>=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
      such that >A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|}>
    </equation>

    Given <math|A\<in\>\<cal-P\><around*|(|X|)>> there exists using (2) a
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
    such that <math|X\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>
    which as <math|A\<subseteq\>X> proves that
    <math|\<cal-C\><rsub|A>\<neq\>\<emptyset\>> so that by <reference|every
    non empty set in the extented reals has a limit>
    <math|inf<around*|(|\<cal-C\><rsub|A>|)>> exists and as <math|0> is a
    lower bound for <math|\<cal-C\><rsub|A>> we have\ 

    <\equation>
      <label|eq 18.53.018>\<forall\>A\<in\>\<cal-A\><text|
      >\<varphi\><around*|(|A|)>=inf<around*|(|\<cal-C\><rsub|A>|)><text|
      exists><infix-and>\<varphi\><around*|(|A|)>\<in\><around*|[|0,\<infty\>|]>
    </equation>

    Next we check the conditions for a outer measure:\ 

    <\enumerate-roman>
      <item>Define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|A<rsub|i>=\<emptyset\>> then by (1)
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      and clearly <math|\<emptyset\>\<subseteq\>\<emptyset\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>,
      further <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|\<emptyset\>|)>=0>.
      So <math|0\<in\>\<cal-C\><rsub|\<emptyset\>>> hence
      <math|0\<leqslant\>inf<around*|(|\<cal-C\><rsub|\<emptyset\>>|)>\<leqslant\>0>
      proving that\ 

      <\equation>
        <label|eq 18.54.018>\<varphi\><around*|(|\<emptyset\>|)>
      </equation>

      <item>Let <math|A,B\<subseteq\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>B> then if <math|x\<in\>\<cal-C\><rsub|B>> there
      exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      such that <math|B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
      such that <math|x=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>
      then as <math|A\<subseteq\>B> we have
      <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
      so that <math|\<cal-C\><rsub|B>\<subseteq\>\<cal-C\><rsub|A>>. Using
      <reference|inclusion and sup and inf> we have that
      <math|inf<around*|(|\<cal-C\><rsub|A>|)>\<leqslant\>inf<around*|(|\<cal-C\><rsub|B>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.55.018>\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|B|)><text|
        if >A\<subseteq\>B
      </equation>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      and note <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>.
      Take <math|\<varepsilon\>\<gtr\>0> and <math|n\<in\>\<bbb-N\><rsub|0>>
      then as <math|\<varphi\><around*|(|A<rsub|n>|)>=inf<around*|(|\<cal-C\><rsub|A<rsub|n>>|)>>
      there exists a <math|<around*|{|I<rsub|n,i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      such that\ 

      <\equation>
        <label|eq 18.56.018>\<varphi\><around*|(|A<rsub|n>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|n,i>|)>\<less\>\<varphi\><around*|(|A<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>><text|
        and >A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|n,i>
      </equation>

      As <math|\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>> is denumerable
      (see <reference|product of enumerable sets is enumerable>) there exists
      a bijection <math|\<beta\>:\<bbb-N\><rsub|0>\<rightarrow\>\<bbb-N\><rsub|0>\<times\>\<bbb-N\><rsub|0>>.
      If now <math|x\<in\>A> then <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>>
      such that <math|x\<in\>A<rsub|n>>, as
      <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|n,i>>
      there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such that
      <math|x\<in\>I<rsub|n,i>>. As <math|\<beta\>> is surjective there
      exists then a <math|k\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<beta\><around*|(|k|)>=<around*|(|n,i|)>> hence
      <math|x\<in\>I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>\<subseteq\><big|cup><rsub|k\<in\>\<bbb-N\>>I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>>
      proving that\ 

      <\equation>
        <label|eq 18.57.018>A\<subseteq\><big|cup><rsub|k\<in\>\<bbb-N\><rsub|0>>I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>
      </equation>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A|)>>|<cell|=>|<cell|inf<around*|(|\<cal-C\><rsub|A>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>\|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\><text|
        such that >A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.57.018>>>>|<cell|<big|sum><rsub|k\<in\>\<bbb-N\>><rsup|\<infty\>>\<mu\><around*|(|I<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|countable
        sum of countable sums is a countable
        sum>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>\<mu\><around*|(|I<rsub|i,j>|)><rsub|>|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        18.56.018>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<varphi\><around*|(|A<rsub|i>|)>+<frac|1|2<rsup|i>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
        of series in the extended reals>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><frac|<frac|1|2>|1-<frac|1|2>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>+\<varepsilon\>>>>>
      </eqnarray*>

      As <math|\<varepsilon\>> is chosen arbitrary we have using
      <reference|consequence of the Archimedean property (2)> that\ 

      <\equation>
        <label|eq 18.58.018>\<varphi\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<rsub|i>|)>
      </equation>

      Using <reference|eq 18.54.018>, <reference|eq 18.55.018> and
      <reference|eq 18.58.018> it follows that\ 

      <\equation>
        <label|eq 18.59.018>\<varphi\><text| is a outer measure on <math|X>>
      </equation>

      Now for the last part of the theorem. Let <math|A\<in\>\<cal-A\>> and
      define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
      i=1>>|<row|<cell|\<emptyset\> if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>>
      then by (1) <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      and <math|A\<subseteq\>A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|9>>A<rsub|i>>
      so that <math|\<mu\><around*|(|A|)>\<equallim\><rsub|<around*|(|3|)>>\<mu\><around*|(|A|)>+<big|sum><rsub|i=2><rsup|\<infty\>>\<mu\><around*|(|\<emptyset\>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<in\>\<cal-C\><rsub|A>>.
      Hence we have\ 

      <\equation>
        <label|eq 18.60.018>\<varphi\><around*|(|A|)>=inf<around*|(|\<cal-C\><rsub|A>|)>\<leqslant\>\<mu\><around*|(|A|)>
      </equation>

      Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      such that <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      we have by (4) that <math|\<mu\><around*|(|A|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>\<in\>\<cal-C\><rsub|A>>
      so that <math|\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|\<cal-C\><rsub|A>|)>=\<varphi\><around*|(|A|)>>
      proving by <reference|eq 18.60.018> that\ 

      <\equation*>
        \<forall\>A\<in\>\<cal-A\><text| we have
        >\<mu\><around*|(|A|)>=\<varphi\><around*|(|A|)>
      </equation*>
    </enumerate-roman>
  </proof>

  \;

  Note that a outer measure is not a measure, it is not defined on a
  <math|\<sigma\>>-algebra of <math|X> but on the set of all subsets of
  <math|X>, further <math|\<varphi\>> is not countable additive but only
  countable sub additive. To be able to define a <math|s>-algebra we
  introduce the concept of a measurable set.

  <\definition>
    <label|measureable set>Let <math|X> be a set and
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|B\<in\>\<cal-P\><around*|(|X|)>> is
    <math|\<varphi\>>-<with|font-series|bold|measurable> if
    <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> we have
    <math|\<varphi\><around*|(|A|)>=\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>.
    The set of all <math|\<varphi\>>-measurable sets is noted as
    <math|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>. So
    <math|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>=<around*|{|B\<in\>\<cal-P\><around*|(|X|)>\|B<text|
    is >\<varphi\><text|-measurable>|}>>
  </definition>

  <\lemma>
    <label|measurable set alternative definition>Let <math|X> be a set and
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then <math|B\<in\>\<cal-P\><around*|(|X|)>> is
    <math|\<varphi\>>-measurable if <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>>
    we have <math|\<varphi\><around*|(|A|)>\<geqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>.
  </lemma>

  <\proof>
    Let <math|A\<in\>\<cal-P\><around*|(|X|)>> then as
    <math|A=<around*|(|A<big|cap>B|)><big|cup><around*|(|A\\B|)>> we have by
    <reference|outer measure finite subadditivity> that
    <math|\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>
    it follows from the assumption <math|\<varphi\><around*|(|A|)>\<geqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>
    that <math|\<varphi\>><math|<around*|(|A|)>=\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>.
  </proof>

  <\proposition>
    <label|measurable sets and null sets>Let <math|X> be a set,
    <math|\<varphi\>> a outer measure on <math|X> and <math|B\<subseteq\>X>
    then

    <\enumerate>
      <item>If <math|\<varphi\><around*|(|B|)>=0> then
      <math|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>

      <item>If <math|\<varphi\><around*|(|X\\B|)>> then
      <math|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|A\<in\>X> then as <math|A<big|cap>B\<subseteq\>B> we
      have <math|\<varphi\><around*|(|A<big|cap>B|)>\<leqslant\>\<varphi\><around*|(|B|)>=0>
      proving that <math|\<varphi\><around*|(|A<big|cap>B|)>=0>. Further as
      <math|A\\B\<subseteq\>A> we have <math|\<varphi\><around*|(|A\\B|)>\<leqslant\>\<varphi\><around*|(|A|)>>.
      Hence <math|\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>=0+\<varphi\><around*|(|A\\B|)>\<leqslant\>\<varphi\><around*|(|A|)>>
      which by <reference|measurable set alternative definition> proves that
      <math|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>

      <item>Let <math|A\<in\>X> then as <math|A\\B\<subseteq\>X\\B> we have
      <math|\<varphi\><around*|(|A\\B|)>\<leqslant\>\<varphi\><around*|(|X\\B|)>=0>
      proving that <math|\<varphi\><around*|(|A\\B|)>=0>. Further as
      <math|A<big|cap>B\<subseteq\>A> we have
      <math|\<varphi\>*<around*|(|A<big|cap>B|)>\<leqslant\>\<varphi\><around*|(|A|)>>.
      Hence <math|\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>=\<varphi\><around*|(|A\\B|)>+0\<leqslant\>\<varphi\><around*|(|A|)>>
      which by <reference|measurable set alternative definition> proves that
      <math|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
    </enumerate>
  </proof>

  We are now ready to prove the Carath�odory theorem that shows how we can
  construct a measure space using a outer measure.

  <\theorem>
    <label|Caratheodore><index|Carath�odory theorem><dueto|Carath�odory
    theorem>Let <math|X> be a set, <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    a outer measure then\ 

    <\enumerate>
      <item><math|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>> is a
      <math|\<sigma\>>-algebra on <math|X>

      <item><math|\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>>
      is a <math|\<sigma\>>-measure\ 
    </enumerate>

    hence <math|<around*|\<langle\>|X,\<cal-M\><rsub|\<varphi\>><around*|[|X|]>,\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>|\<rangle\>>>
    is a measure space.
  </theorem>

  <\proof>
    <space|1em>

    <\enumerate>
      <item>Let <math|A\<subseteq\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|\<emptyset\><big|cap>B|)>+\<varphi\><around*|(|A\\\<emptyset\>|)>>|<cell|=>|<cell|\<varphi\><around*|(|\<emptyset\>|)>+\<varphi\><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|0+\<varphi\><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|A|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.52.016>\<emptyset\>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
      </equation>

      If <math|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A<big|cap><around*|(|X\\B|)>|)>+\<varphi\><around*|(|A\\<around*|(|X\\B|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|10|)>>>|<cell|\<varphi\><around*|(|A<big|cap><around*|(|X\\B|)>|)>+\<varphi\><around*|(|A<big|cap>B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|9|)>>>|<cell|\<varphi\><around*|(|<around*|(|A<big|cap>X|)>\\B|)>+\<varphi\><around*|(|A<big|cap>B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|A\<subseteq\>X>>|<cell|\<varphi\><around*|(|A\\B|)>+\<varphi\><around*|(|A<big|cap>B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>>|<cell|\<varphi\><around*|(|A|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.53.016>\<forall\>B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]><text|
        we have >X\\B\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
      </equation>

      Let <math|B<rsub|1>,B<rsub|2>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
      and <math|A\<subseteq\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A<big|cap><around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|(|A<big|cap><around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)><big|cap>B<rsub|1>|)>+\<varphi\><around*|(|<around*|(|A<big|cap><around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>\\B<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\>*<around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|<around*|(|A<big|cap><around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>\\B<rsub|1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|9|)>>>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A<big|cap><around*|(|<around*|(|B<rsub|1><big|cup>B<rsub|2>|)>\\B<rsub|1>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|8|)>>>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A<big|cap><around*|(|<around*|(|B<rsub|1>\\B<rsub|1>|)><big|cup><around*|(|B<rsub|2>\\B<rsub|1>|)>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A<big|cap><around*|(|B<rsub|2>\\B<rsub|1>|)>|)><eq-number><label|eq
        18.54.016>>>>>
      </eqnarray*>

      Next

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A<big|cap><around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>+\<varphi\><around*|(|A\\<around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.54.016>>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A<big|cap><around*|(|B<rsub|2>\\B<rsub|1>|)>|)>+\<varphi\><around*|(|A\\<around*|(|B<rsub|1><big|cup>B<rsub|2>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|4|)>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A<big|cap><around*|(|B<rsub|2>\\B<rsub|1>|)>|)>+\<varphi\><around*|(|<around*|(|A\\B<rsub|1>|)>\\B<rsub|2>|)>>|<cell|\<equallim\><rsub|<text|<reference|distributivity
        of union or intersection>> <around*|(|9|)>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|<around*|(|A\\B<rsub|1>|)><big|cap>B<rsub|2>|)>+\<varphi\><around*|(|<around*|(|A\\B<rsub|1>|)>\\B<rsub|1>|)>>|<cell|\<equallim\><rsub|B<rsub|1>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A\\B<rsub|1>|)>>|<cell|=>|<cell|>>|<row|<cell|\<varphi\><around*|(|A|)>>|<cell|>|<cell|>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.55.016>\<forall\>B<rsub|1>,B<rsub|2>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
        <text| we have >B<rsub|1><big|cup>B<rsub|2>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
      </equation>

      Hence using <reference|eq 18.52.016>, <reference|eq 18.53.016> and
      <reference|eq 18.55.016> on <reference|algebra equivalent definitions>
      it follows that\ 

      <\equation*>
        \<cal-M\><rsub|\<varphi\>><around*|[|X|]><text| is a algebra>a
      </equation*>

      Next we show by induction that <math|<text|\<forall\>><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
      pairwise disjoint and <math|A\<subseteq\>X> we have
      <math|\<forall\>n\<in\>\<bbb-N\>> that

      <\equation>
        \ <label|eq 18.56.016>\<varphi\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A<rsup|>\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>
      </equation>

      <\proof>
        Let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<varphi\><around*|(|A|)>=<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A<rsup|>\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>|}>>
        then we have\ 

        <\description>
          <item*|<math|1\<in\>\<cal-S\>>>As
          <math|B<rsub|1>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>> we
          have

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<varphi\><around*|(|A|)>>|<cell|=>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|1>|)>+\<varphi\><around*|(|A\\B<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|1>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|1>B<rsub|i>|)>>>>>
          </eqnarray*>

          proving that <math|1\<in\>\<cal-S\>>

          <item*|<math|n\<in\>S\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
          <math|x\<in\>A<big|cap>B<rsub|n+1>> then <math|x\<in\>A> and
          <math|x\<in\>B<rsub|n+1>\<Rightarrowlim\>x\<nin\>B<rsub|i>
          \<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<Rightarrow\>x\<nin\><big|sqcup><rsub|i=1><rsup|n>B<rsub|i>>
          which proves that <math|x\<in\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|cap>B<rsub|n+1>>.
          Hence <math|A<big|cap>B<rsub|n+1>\<subseteq\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|cap>B<rsub|n+1>>.
          As also <math|<around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|cap>B<rsub|n+1>\<subseteq\>A<big|cap>B<rsub|n+1>>
          it follows that\ 

          <\equation>
            <label|eq 18.57.016><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|cap>B<rsub|n+1>=A<big|cap>B<rsub|n+1>
          </equation>

          As <math|B<rsub|n+1>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
          we have

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|cap>B<rsub|n+1>|)>+\<varphi\><around*|(|<around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>\\B<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
            18.57.016>>>>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|n+1>|)>+\<varphi\><around*|(|<around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>\\B<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|distributivity
            of union or intersection>> <around*|(|4|)>>>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|n+1>|)>+\<varphi\><around*|(|A\\<around*|(|<around*|(|<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)><big|sqcup>B<rsub|n+1>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|A<big|cap>B<rsub|n+1>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n+1>B<rsub|i>|)><eq-number><label|eq
            18.58.016>>>>>
          </eqnarray*>

          Finally

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<varphi\><around*|(|A|)>>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A<rsup|>\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
            18.58.016>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A<big|cap>B<rsub|n+1>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n+1>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsup|n+1><rsub|i=1>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n+1>B<rsub|i>|)>>>>>
          </eqnarray*>

          which proves that <math|n+1\<in\>\<cal-S\>>.
        </description>

        Mathematical induction proves then <reference|eq 18.56.016>
      </proof>

      Using the fact that <math|\<forall\>n\<in\>\<bbb-N\>>
      <math|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\>A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>>
      it follows that <math|\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<leqslant\>\<varphi\><around*|(|A\\<big|cup><rsub|i=1><rsup|n>B<rsub|i>|)>>
      hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i=1><rsup|n>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.56.016>>>>|<cell|\<varphi\><around*|(|A|)><eq-number><label|eq
        18.59.016>>>>>
      </eqnarray*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)><rsub|>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        xi+x>>>>|<cell|<below|lim<rsub|n\<rightarrow\>\<infty\>>|><around*|(|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|properties
        of the limit in the extented reals>>,<reference|eq
        18.59.016>>>|<cell|\<varphi\><around*|(|A|)><eq-number><label|eq
        18.60.016>>>>>
      </eqnarray*>

      As <math|A<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
      distributive laws>>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|A<big|cap>B<rsub|i>|)>>
      we have by the definition of a outer measure [see <reference|outer
      measure>] that <math|\<varphi\><around*|(|A<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>>
      so that by <reference|eq 18.60.016>\ 

      <\equation>
        <label|eq 18.61.016>\<varphi\><around*|(|A<big|cap><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<leqslant\>\<varphi\><around*|(|A|)>
      </equation>

      which by <reference|measurable set alternative definition> and the fact
      that <math|A\<subseteq\>X> was arbitrary chosen proves that\ 

      <\equation>
        <label|eq 18.62.016>\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
        <text|pairwise disjoint> we have that
        <big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>
      </equation>

      Combining the above with the fact that we have proven that
      <math|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>> is a algebra we have\ 

      <\equation*>
        \<cal-M\><rsub|\<varphi\>><around*|[|X|]> <text|is a
        >\<sigma\><text|-algebra on >X
      </equation*>

      <item>Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
      pairwise disjoint then for <math|A=<big|sqcup><rsub|i=1><rsup|\<infty\>>B<rsub|i>>
      we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|B<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)><big|cap>B<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)><big|cap>B<rsub|i>|)>+\<varphi\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|A<big|cap>B<rsub|i>|)>+\<varphi\><around*|(|A\\<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.60.016>>>>|<cell|\<varphi\><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>>>
      </eqnarray*>

      Applying this with the semi-additivity of a outer measure [see
      <reference|outer measure>] and the fact that
      <math|\<varphi\><around*|(|\<emptyset\>|)>> we have that\ 

      <\equation*>
        \<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|A|]>>:\<cal-M\><rsub|\<varphi\>><around*|[|X|]>\<rightarrow\><around*|[|0,\<infty\>|]><text|
        is a >\<sigma\><text|-measure>
      </equation*>
    </enumerate>
  </proof>

  <subsection|The Carath�odory theorem and the set of real numbers>

  First we define the concept of the length of bounded intervals [see
  <reference|bounded intervals>]

  <\definition>
    The length function <math|l:\<cal-I\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined as follows [see also <reference|bounded intervals>]

    <\equation*>
      l:\<cal-I\>\<rightarrow\><around*|[|0,\<infty\>|]><text| where
      >l<around*|(|I|)>=<choice|<tformat|<table|<row|<cell|0 if
      I=\<emptyset\>>>|<row|<cell|b-a<text| if
      >I=<around*|[|a,b|]>\<in\>\<cal-I\><rsub|<around*|[||]>>>>|<row|<cell|b-a
      <text|if >I=<around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>>>|<row|<cell|b-a
      <text|if >I=<around*|]|a,b|]>\<in\>\<cal-I\><rsub|<around*|]||]>>>>|<row|<cell|b-a
      <text|if >I=<around*|]|a,b|[>\<in\>\<cal-I\><rsub|<around*|]||[>><rsub|>>>>>>
    </equation*>
  </definition>

  We must of course prove that the function <math|l> is well defined and is
  not dependent on the boundary points.\ 

  <\proof>
    Let <math|I\<in\>\<cal-I\>> then we have either\ 

    <\description>
      <item*|<math|I=\<emptyset\>>>then <math|l<around*|(|\<emptyset\>|)>=0>\ 

      <item*|<math|I\<neq\>\<emptyset\>>>then we have either as
      <math|\<cal-I\><rsub|<around*|[||]>>,\<cal-I\><rsub|<around*|[||[>>,\<cal-I\><rsub|<around*|]||]>>>
      and <math|\<cal-I\><rsub|<around*|]||[>>> are pairwise disjoint [see
      <reference|open,half open and bounded intervals are different>] we have
      for <math|I> either of the following exclusive cases to consider:

      <\description>
        <item*|<math|I\<in\>\<cal-I\><rsub|<around*|[||]>>>>If
        <math|I=<around*|[|a,b|]>=<around*|[|c,d|]>> then by
        <reference|generalized intervals and boundaries>
        <math|a=c\<wedge\>b=d> hence <math|b-a=d-c>

        <item*|<math|I\<in\>\<cal-I\><rsub|<around*|[||[>>>>If
        <math|I=<around*|[|a,b|[>=<around*|[|c,d|[>> then by
        <reference|generalized intervals and boundaries>
        <math|a=c\<wedge\>b=d> hence <math|b-a=d-c>

        <item*|<math|I\<in\>\<cal-I\><rsub|<around*|]||]>>>>If
        <math|I=<around*|]|a,b|]>=<around*|]|c,d|]>> then by
        <reference|generalized intervals and boundaries>
        <math|a=c\<wedge\>b=d> hence <math|b-a=d-c>

        <item*|<math|I\<in\>\<cal-I\><rsub|<around*|]||[>>>>If
        <math|I=<around*|]|a,b|[>=<around*|]|c,d|[>> then by
        <reference|generalized intervals and boundaries>
        <math|a=c\<wedge\>b=d> hence <math|b-a=d-c>
      </description>
    </description>

    so <math|l> is well defined on <math|\<cal-I\><rsub|<around*|[||]>><big|sqcup>\<cal-I\><rsub|<around*|[||[>><big|sqcup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>><big|cup><around*|{|\<emptyset\>|}>>
  </proof>

  <\definition>
    Let <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>> then
    <math|\<cal-C\><rsub|A>=<around*|{|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsub|<around*|]||[>><text|
    and >A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>|}>>
  </definition>

  <\lemma>
    <label|R can be covered by open intervals><math|\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
  </lemma>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> then by <reference|consequence of the
    archimedean property for the reals> there exists a
    <math|n\<in\>\<bbb-Z\>> such that <math|n\<leqslant\>x\<less\>n+1>. We
    have then either

    <\description>
      <item*|<math|0\<less\>n>>then as <math|n\<less\>n+1> we have
      <math|-<around*|(|n+1|)>\<less\>-n\<leqslant\>0\<leqslant\>n> so that
      <math|-<around*|(|n+1|)>\<less\>x\<less\>n+1> proving that
      <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>

      <item*|<math|n\<less\>0>>then then <math|-n=<around*|\||n|\|>\<Rightarrow\>-<around*|(|<around*|\||n|\|>+1|)>=-<around*|\||n|\|>-1\<less\>-<around*|\||n|\|>\<leqslant\>x\<less\>n+1\<leqslant\><around*|\||n+1|\|>\<less\><around*|\||n|\|>+1>
      proving that <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
    </description>
  </proof>

  Now to be able to use theorem <reference|outermeasure construction> we
  prove the following lemma:\ 

  <\lemma>
    <label|semi additivity of the length in the reals>If
    <math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}>>
    and <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}><with|font-series|bold|>>
    is such that <math|I\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>>
    then

    <\equation*>
      l<around*|(|I|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>
    </equation*>
  </lemma>

  <\proof>
    We have the following cases to consider for <math|I>

    <\description>
      <item*|<math|I=\<emptyset\>>>then trivially
      <math|l<around*|(|I|)>=l<around*|(|\<emptyset\>|)>=0\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>

      <item*|<math|I\<neq\>\<emptyset\>>>then
      <math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such that
      <math|I=<around*|[|a,b|[>>. Further for every
      <math|i\<in\>\<bbb-N\><rsub|0>> there exists a
      <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>> with
      <math|I<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>> [note: if
      <math|I<rsub|i>=\<emptyset\>> we can take
      <math|a<rsub|i>=b<rsub|i>=1>]. Define now
      <math|\<forall\>x\<in\><around*|[|a,b|]>>

      <\equation>
        <label|eq 18.74.018><around*|{|I<rsub|i><rsup|x>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text|
        by> I<rsup|x><rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|[|a<rsub|i>,min<around*|(|x,b<rsub|i>|)>|[>
        <text|if >x\<in\>I<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>>>|<row|<cell|\<emptyset\>
        if x\<nin\>I<rsub|i>>>>>>
      </equation>

      and use this to define the following set

      <\equation>
        <label|eq 18.75.018>A=<around*|{|x\<in\>\<bbb-R\>\|x\<in\><around*|[|a,b|]>\<wedge\>x-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>|}>\<subseteq\><around*|[|a,b|]>
      </equation>

      As <math|a\<in\><around*|[|a,b|]>> and
      <math|a-a=0\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>>
      it follows that <math|a\<in\>A\<Rightarrow\>A\<neq\>\<emptyset\>>,
      further <math|A\<subseteq\><around*|[|a,b|]>> and is thus bounded above
      by <math|b>, so we have using <reference|the reals are conditional
      complete> that\ 

      <\equation>
        <label|eq 18.76.018>c=sup<around*|(|A\<in\>\<bbb-R\>|)> <text|exists
        and >a\<leqslant\>c\<leqslant\>b
      </equation>

      Define <math|B=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>>
      then given <math|x\<in\>A> we have that
      <math|x-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\<in\>B>
      so that <math|x-a\<leqslant\>sup<around*|(|B|)>> [note that
      <math|A\<neq\>\<emptyset\>\<Rightarrow\>B\<neq\>\<emptyset\>> so that
      by <reference|every non empty set in the extented reals has a limit>
      <math|sup<around*|(|B|)>> exists (although it can be infinite)]. As
      <math|a\<in\>\<bbb-R\>> we have by <reference|x+z=y+z=\<gtr\>x=y> that
      <math|x\<leqslant\>sup<around*|(|B|)>+a>. Hence
      <math|c=sup<around*|(|A|)>\<leqslant\>sup<around*|(|B|)>+a> or using
      <reference|x+z=y+z=\<gtr\>x=y> \ 

      <\equation>
        <label|eq 18.77.018>c-a\<leqslant\>sup<around*|(|B|)>=sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>|)>
      </equation>

      Let <math|x\<in\>A> and <math|i\<in\>\<bbb-N\><rsub|0>> then we have
      for <math|I<rsup|x><rsub|i>> either:

      <\description>
        <item*|<math|x\<nin\>I<rsub|i>>>then
        <math|I<rsup|x><rsub|i>=\<emptyset\>> so that
        <math|l<around*|(|I<rsub|i><rsup|x>|)>=l<around*|(|\<emptyset\>|)>=0\<leqslant\>l<around*|(|I<rsup|c><rsub|i>|)>>

        <item*|<math|x\<in\>I<rsub|i>>>then
        <math|a<rsub|i>\<leqslant\>x\<less\>b<rsub|i>>, as
        <math|x\<leqslant\>sup<around*|(|A|)>=c> we have that
        <math|a<rsub|i>\<leqslant\>min<around*|(|x,b<rsub|i>|)>\<leqslant\>min<around*|(|c,b<rsub|i>|)>\<leqslant\>b<rsub|i>>.
        It follows that <math|l<around*|(|I<rsub|i><rsup|x>|)>=min<around*|(|x,b<rsub|i>|)>-a<rsub|i>\<leqslant\>min<around*|(|c,b<rsub|i>|)>-a<rsub|i>=l<around*|(|I<rsup|c><rsub|i>|)>>.
      </description>

      So in all cases we have <math|l<around*|(|I<rsup|x><rsub|i>|)>\<leqslant\>l<around*|(|I<rsup|c><rsub|i>|)>>
      giving <math|<big|sum><rsup|\<infty\>><rsub|i=1>l<around*|(|I<rsup|x><rsub|i>|)>\<leqslant\><rsub|><big|sum><rsub|i=1>l<around*|(|I<rsup|c><rsub|i>|)>>
      [see <reference|sum and order relation in the extented reals>]. Taking
      in account <reference|eq 18.77.018> we have then that

      <\equation>
        <label|eq 18.78.018>c-a\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|x><rsub|i>|)>\|x\<in\>A|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>
      </equation>

      which as <math|c\<in\><around*|[|a,b|]> <around*|[|see <reference|eq
      18.76.018>|]>> proves that\ 

      <\equation>
        <label|eq 18.79.018>c\<in\>A
      </equation>

      Assume now that <math|c\<less\>b> then
      <math|c\<in\><around*|[|a,b|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
      so that <math|\<exists\>k\<in\>\<bbb-N\><rsub|0>> such that
      <math|c\<in\>I<rsub|k>\<Rightarrow\>I<rsub|k>\<neq\>\<emptyset\>\<Rightarrow\>c\<in\><around*|[|a<rsub|k>,b<rsub|k>|[>>
      giving\ 

      <\equation>
        <label|eq 18.80.018>c\<less\>min<around*|(|b,b<rsub|k>|)>=m
      </equation>

      Given <math|i\<in\>\<bbb-N\><rsub|0>> we have either\ 

      <\description>
        <item*|<math|c\<nin\>I<rsub|i>>>then
        <math|l<around*|(|I<rsup|c><rsub|i>|)>=l<around*|(|\<emptyset\>|)>=0\<leqslant\>l<around*|(|I<rsub|i><rsup|c>|)>>

        <item*|<math|c\<in\>I<rsub|i>>>then
        <math|l<around*|(|I<rsup|c><rsub|i>|)>=min<around*|(|b<rsub|i>,c|)>-a<rsub|i>\<leqslant\>min<around*|(|b<rsub|i>,m|)>-a<rsub|i>=l<around*|(|I<rsup|m><rsub|i>|)>>
      </description>

      so that we have

      <\equation>
        <label|eq 18.81.018>\<forall\>i\<in\>\<bbb-N\><rsub|0><text| we have
        >l<around*|(|I<rsup|c><rsub|i>|)>\<leqslant\>l<around*|(|I<rsup|m><rsub|i>|)>
      </equation>

      Further <math|l<around*|(|I<rsup|m><rsub|k>|)>\<equallim\><rsub|I<rsub|k>\<neq\>\<emptyset\>>min<around*|(|m,b<rsub|k>|)>-a<rsub|k>\<equallim\><rsub|<text|<reference|eq
      18.80.018>>\<Rightarrow\>m\<leqslant\>b<rsub|k>>m-a<rsub|k>> and
      <math|l<around*|(|I<rsup|c><rsub|k>|)>\<equallim\><rsub|I<rsub|k>\<neq\>\<emptyset\>>min<around*|(|c,b<rsub|k>|)>-a<rsub|k>\<equallim\><rsub|<text|<reference|eq
      18.80.018>>\<Rightarrow\>c\<leqslant\>b<rsub|k>>c-a<rsub|k>> giving\ 

      <\equation>
        <label|eq 18.82.018>l<around*|(|I<rsup|m><rsub|k>|)>=l<around*|(|I<rsup|c><rsub|k>|)>+m-c
      </equation>

      Define now <math|<around*|{|c<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|c<rsub|i>=<choice|<tformat|<table|<row|<cell|m-c if
      i=k>>|<row|<cell|0 if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|k|}>>>>>>>
      then

      <\equation>
        <label|eq 18.83.018>\<forall\>i\<in\>\<bbb-N\><rsub|0> <text| we have
        >l<around*|(|I<rsup|c><rsub|i>|)>+c<rsub|i>=<choice|<tformat|<table|<row|<cell|l<around*|(|I<rsup|c><rsub|k>|)>+m-c\<equallim\><rsub|<text|<reference|eq
        18.82.018>>>l<around*|(|I<rsup|m><rsub|k>|)> if
        i=k>>|<row|<cell|l<around*|(|I<rsup|c><rsub|i>|)>\<leqslant\><rsub|<text|<reference|eq
        18.81.018>>>l<around*|(|I<rsup|m><rsub|i>|)> if
        i\<in\>\<bbb-N\><rsub|0>\\<around*|{|k|}>>>>>>\<leqslant\>l<around*|(|I<rsup|m><rsub|i>|)>
      </equation>

      So

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>+m-c>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>c<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|l<around*|(|I<rsup|c><rsub|i>|)>+c<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.83.018>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>>>>>
      </eqnarray*>

      As <math|m-c\<in\>\<bbb-R\>> we have that
      <math|><math|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>+c-m>
      which using <reference|eq 18.78.018> gives
      <math|c-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>+c-m>
      proving that\ 

      <\equation>
        <label|eq 18.84.018>m-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|m><rsub|i>|)>
      </equation>

      From <math|c\<in\><around*|[|a<rsub|k>,b<rsub|k>|[>> and
      <math|a\<leqslant\>c> [see <reference|eq 18.76.018>] we have
      <math|a\<less\>b<rsub|k>\<leqslant\>min<around*|(|b<rsub|k>,b|)>\<equallim\><rsub|<text|<reference|eq
      18.80.018>>>m=min<around*|(|b<rsub|k>,b|)>\<leqslant\>b> it follows
      that <math|m\<in\><around*|[|a,b|]>>. Combining this with <reference|eq
      18.84.018> and the definition of <math|A> [see <reference|eq
      18.75.018>] it follows that <math|m\<in\>A>. Hence
      <math|m\<leqslant\>sup<around*|(|A|)>=c> contradicting
      <math|c\<less\>m> [see <reference|eq 18.80.018>]. So the assumption
      that <math|c\<less\>b> is wrong so that <math|b\<leqslant\>c> which
      using <reference|eq 18.76.018> proves that\ 

      <\equation>
        <label|eq 18.85.018>c=b
      </equation>

      From <reference|eq 18.79.018> and the definition of <math|A> we have
      that <math|c-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|c><rsub|i>|)>\<Rightarrowlim\><rsub|<text|<reference|eq
      18.85.018>>>b-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|b><rsub|i>|)>>
      proving\ 

      <\equation>
        <label|eq 18.86.018>b-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsup|b><rsub|i>|)>
      </equation>

      Finally if <math|i\<in\>\<bbb-N\><rsub|0>> then we have either\ 

      <\description>
        <item*|<math|b\<nin\>I<rsub|i>>>then
        <math|l<around*|(|I<rsub|i><rsup|b>|)>=\<emptyset\>\<leqslant\>l<around*|(|I<rsub|i>|)>>

        <item*|<math|b\<in\>I<rsub|i>>>then
        <math|a<rsub|i>\<leqslant\>b\<less\>b<rsub|i>> then
        <math|l<around*|(|I<rsup|b><rsub|i>|)>=min<around*|(|b,b<rsub|i>|)>-a<rsub|i>\<leqslant\>b<rsub|i>-a<rsub|i>=l<around*|(|I<rsub|i>|)>>
      </description>

      So in all cases w have that <math|l<around*|(|I<rsup|b><rsub|i>|)>\<leqslant\>l<around*|(|I<rsub|i>|)>>
      which using <reference|eq 18.86.018> and <reference|sum and order
      relation in the extented reals> proves

      <\equation*>
        b-a\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>
      </equation*>
    </description>
  </proof>

  We are finally able to define the outer measure on <math|\<bbb-R\>>

  <\corollary>
    <label|outer measure on R><math|\<varphi\>:\<cal-P\><around*|(|\<bbb-R\>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    defined by <math|\<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}>|}>|)>>
    is a outer measure and <math|\<forall\>I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}>>
    we have that <math|\<varphi\><around*|(|I|)>=l<around*|(|I|)>>
  </corollary>

  <\proof>
    This follows from <reference|R can be covered by open intervals>,
    <reference|semi additivity of the length in the reals> and
    <reference|outermeasure construction>.
  </proof>

  We can now use the Carath�odory method to define a measure space on
  <math|\<bbb-R\>> that is a extension of
  <math|\<cal-B\><around*|[|\<bbb-R\>|]>> [the Borel sets on
  <math|\<bbb-R\>>] and <math|l> the length of intervals on <math|\<bbb-R\>>.

  <\theorem>
    <label|Lebesgue measure space><index|Lebesgue measurable
    space><index|Lebesgue measure><index|Lebesgue measurable
    set><dueto|Lebesgue Measure Space>Define

    <\equation*>
      \<varphi\>:\<cal-P\><around*|(|\<bbb-R\>|)>\<rightarrow\><around*|[|0,\<infty\>|]>
      by \<varphi\><around*|(|A|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}>|}>|)>
    </equation*>

    <\equation*>
      \<cal-L\>=<around*|{|L\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>\|\<forall\>A\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>
      \<varphi\><around*|(|A|)>=\<varphi\><around*|(|A<big|cap>L|)>+\<varphi\><around*|(|A\\L|)>|}>=<around*|{|L\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>\|L
      is \<varphi\><text|-measurable>|}>=\<cal-M\><rsub|\<varphi\>><around*|[|\<bbb-R\>|]>
    </equation*>

    <\equation*>
      \<lambda\>:\<cal-L\>\<rightarrow\><around*|[|0,\<infty\>|]> defined by
      \<lambda\><around*|(|L|)>=\<varphi\><around*|(|L|)>=\<varphi\><rsub|\|\<cal-L\>>
    </equation*>

    then <math|<around*|\<langle\>|\<bbb-R\>,\<cal-L\>,\<lambda\>|\<rangle\>>>
    is a measure space. Further we have <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<subseteq\>\<cal-L\>>
    and <math|\<forall\>I\<in\>\<cal-I\>>
    <math|\<lambda\><around*|(|I|)>=l<around*|(|I|)>> where
    <math|\<cal-I\><rsub|<around*|[||]>><big|cup>\<cal-I\><rsub|<around*|[||[>><big|cup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>><big|cup><around*|{|\<emptyset\>|}>>.
  </theorem>

  <\proof>
    <dueto|>Using <reference|Caratheodore> and the above corollary [see
    <reference|outer measure on R>] we have that\ 

    <\equation>
      <label|eq 18.108.021><around*|\<langle\>|\<bbb-R\>,\<cal-L\>,\<lambda\>|\<rangle\>><text|
      is a measure space>
    </equation>

    Next we must prove that <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<subseteq\>\<cal-L\>>,
    to do this we make use of the fact that
    <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>|]>>
    [see <reference|Borel algebras on R>]. Let
    <math|<around*|]|-\<infty\>,c|[>\<in\><around*|{|<around*|]|-\<infty\>,a|[>\|a\<in\>\<bbb-R\>|}>>.
    Take <math|A\<subseteq\>\<bbb-R\>> then we have for <math|\<varphi\>> the
    following cases to consider:\ 

    <\description>
      <item*|<math|\<varphi\><around*|(|A|)>=\<infty\>>>Then
      <math|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|A\\<around*|]|-\<infty\>,c|[>|)>\<leqslant\>\<varphi\><around*|(|A|)>>

      <item*|<math|\<varphi\><around*|(|A|)>\<in\>\<bbb-R\>>>Let
      <math|\<varepsilon\>\<gtr\>0> then by the definition of
      <math|\<varphi\>> as a infinum there exists a
      <math|<around*|{|<around*|[|a<rsub|i>,b<rsub|i>|[><rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>
      with <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|[>>
      such that\ 

      <\equation>
        <label|eq 18.109.021><big|sum><rsub|i=1><rsup|\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>\<less\>\<varphi\><around*|(|A|)>+\<varepsilon\>
      </equation>

      Take <math|i\<in\>\<bbb-N\><rsub|0>> then we have either\ 

      <\description>
        <item*|<math|b<rsub|i>\<leqslant\>c>>In this cases we have for every
        <math|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>>
        <math|x\<less\>b<rsub|i>\<leqslant\>c> proving that
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|]|-\<infty\>,c|[>>
        so that <math|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>=<around*|[|a<rsub|i>,b<rsub|i>|[>>
        and <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>=\<emptyset\>>.
        Using then <reference|outer measure finite subadditivity> we have

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+0>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>>>>>
        </eqnarray*>

        proving

        <\equation*>
          \<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>
        </equation*>

        <\equation*>
          \;
        </equation*>

        <item*|<math|c\<less\>b<rsub|i>>>Then we have for <math|a<rsub|i>>
        either\ 

        <\description>
          <item*|<math|a<rsub|i>\<leqslant\>c>>then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>>|<cell|\<Leftrightarrow\>>|<cell|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>b<rsub|i><rsup|>\<wedge\>x\<less\>c>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|c\<less\>b<rsub|i>>>|<cell|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>c>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a<rsub|i>,c|[>>>>>
          </eqnarray*>

          proving that <math|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>=<around*|[|a<rsub|i>,c|[>>
          [or <math|\<emptyset\>> if <math|a<rsub|i>=c>] Hence

          <\equation>
            <label|eq 18.111.021>\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>=\<varphi\><around*|(|<around*|[|a<rsub|i>,c|[>|)>\<equallim\><rsub|<text|<reference|outer
            measure on R>>>l<around*|(|<around*|[|a<rsub|i>,c|[>|)>=c-a<rsub|i>
          </equation>

          Further\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>>|<cell|\<Leftrightarrow\>>|<cell|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>b<rsub|i>\<wedge\>\<neg\><around*|(|x\<less\>c|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>b<rsub|i>\<wedge\>c\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|a<rsub|i>\<leqslant\>c>>|<cell|x\<less\>b<rsub|i>\<wedge\>c\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|c,b<rsub|i>|[>>>>>
          </eqnarray*>

          proving that <math|><math|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>=<around*|[|c,b<rsub|i>|[>>.
          Hence\ 

          <\equation>
            <label|eq 18.112.021.1>\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>=\<varphi\><around*|(|<around*|[|c,b<rsub|i>|[>|)>\<equallim\><rsub|<text|<reference|outer
            measure on R>>>l<around*|(|<around*|[|c,b<rsub|i>|[>|)>=b<rsub|i>-c
          </equation>

          Next

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>|<cell|\<equallim\><rsub|<text|<reference|outer
            measure on R>>>>|<cell|b<rsub|i>-a<rsub|i>>>|<row|<cell|>|<cell|=>|<cell|b<rsub|i>-c+c-a<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
            18.111.021> and <reference|eq
            18.112.021.1>>>>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>>>>>
          </eqnarray*>

          proving

          <\equation*>
            \<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>
          </equation*>

          <item*|<math|c\<leqslant\>a<rsub|i>>>If
          <math|x\<in\><around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>>
          then <math|a<rsub|i>\<leqslant\>x\<wedge\>x\<less\>b<rsub|i>\<wedge\>x\<less\>c\<leqslant\>a<rsub|i>>
          giving the contradiction <math|a<rsub|i>\<less\>a<rsub|i>>. Hence
          <math|><math|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>=\<emptyset\>>
          so that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>=<around*|[|a<rsub|i>,b<rsub|i>|[>>.
          So\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>+0>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>>>>>
          </eqnarray*>

          proving again\ 

          <\equation*>
            \<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>
          </equation*>
        </description>
      </description>

      So in all cases we have\ 

      <\equation>
        <label|eq 18.112.021>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>\<equallim\><rsub|<text|<reference|outer
        measure on R>>>\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>=\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>
      </equation>

      Next as <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|[>>
      we have that

      <\eqnarray*>
        <tformat|<table|<row|<cell|A\\<around*|]|-\<infty\>,c|[>>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|[>|)>\\<around*|]|-\<infty\>,c|[>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)><eq-number><label|eq
        18.113.021>>>>>
      </eqnarray*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<big|cap><around*|]|-\<infty\>,c|[>>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rsub|i>,b<rsub|i>|[>|)><big|cap><around*|]|-\<infty\>,c|[>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        distributive laws>>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)><eq-number><label|eq
        18.114.021>>>>>
      </eqnarray*>

      Next using <reference|outer measure>,<reference|eq 18.113.021> and
      <reference|eq 18.114.021> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|A\\<around*|]|-\<infty\>,c|[>|)>>|<cell|\<leqslant\><rsub|<text|
        <reference|outer measure>,<reference|eq 18.113.021> and <reference|eq
        18.114.021>>>>|<cell|>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>|)>+\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>|)>>|<cell|\<leqslant\><rsub|<text|<reference|outer
        measure>>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+<big|sum><rsub|i=1><rsup|\<infty\>>\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>>|<cell|\<equallim\><rsub|<text|<reference|sum
        of series in the extended reals>>>>|<cell|>>|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[><big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>\\<around*|]|-\<infty\>,c|[>|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.112.021>>>>|<cell|<subtable|<tformat|<table|<row|<cell|>>>>>>>|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>>|<cell|\<less\><rsub|<text|<reference|eq
        18.109.021>>>>|<cell|>>|<row|<cell|\<varphi\><around*|(|A|)>+\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>

      This proves by <reference|consequence of the Archimedean property (2)>
      that <math|\<varphi\><around*|(|A<big|cap><around*|]|-\<infty\>,c|[>|)>+\<varphi\><around*|(|A\\<around*|]|-\<infty\>,c|[>|)>\<leqslant\>\<varphi\><around*|(|A|)>>,
      hence by <reference|measurable set alternative definition> we have that
      <math|<around*|]|-\<infty\>,c|[>> is <math|\<varphi\>-measurable>.
      Hence <math|<around*|{|<around*|]|-\<infty\>,c|[>\|c\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-L\>>.
      Using <reference|generated sigma algebra> it follows that
      <math|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,c|[>\|c\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-L\>>.
      Finally by <reference|Borel algebras on R> it follows that\ 

      <\equation>
        <label|eq 18.115.021>\<cal-B\><around*|[|\<bbb-R\>|]>\<subseteq\>\<cal-L\>
      </equation>
    </description>

    Next we have to prove that <math|\<forall\>I\<in\>\<cal-I\>> we have
    <math|l<around*|(|I|)>=\<varphi\><around*|(|I|)>>. Let
    <math|I\<in\>\<cal-I\>> then we have either:

    <\description>
      <item*|<math|I\<in\>\<cal-I\><rsub|<around*|[||[>><big|cup><around*|{|\<emptyset\>|}>>>Then
      <math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> such
      that <math|I=<around*|[|a,b|[>>. Hence\ 

      <\equation>
        <label|eq 18.116.021>\<varphi\><around*|(|I|)>=\<varphi\><around*|(|<around*|[|a,b|[>|)>\<equallim\><rsub|<text|<reference|outer
        measure on R>>>l<around*|(|I|)>=l<around*|(|<around*|[|a,b|[>|)>=b-a
      </equation>

      <item*|<math|I\<in\>\<cal-I\><rsub|<around*|[||]>>>>Then
      <math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> such
      that <math|I=<around*|[|a,b|]>>. As
      <math|<around*|[|a,b|]>\<supseteq\><around*|[|a,b|[>\<in\>\<cal-I\><rsub|<around*|[||[>>>
      we have that\ 

      <\equation>
        <label|eq 18.117.021>l<around*|(|I|)>=b-a=l<around*|(|<around*|[|a,b|[>|)>\<equallim\><rsub|<text|<reference|eq
        18.116.021>>>\<varphi\><around*|(|<around*|[|a,b|[>|)>\<leqslant\>\<varphi\><around*|(|<around*|[|a,b|]>|)>
      </equation>

      For the opposite inequality, let <math|\<varepsilon\>\<gtr\>0> and
      define <math|<around*|{|J<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|J<rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|[|a-<frac|\<varepsilon\>|4>,b+<frac|\<varepsilon\>|4>|[>
      if i=1>>|<row|<cell|<around*|[|0,<frac|\<varepsilon\>|2<rsup|i>>|[> if
      i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>> then we have
      <math|<around*|[|a,b|]>\<subseteq\><around*|[|a-<frac|\<varepsilon\>|4>,b+<frac|\<varepsilon\>|4>|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>J<rsub|i>>
      and <math|<around*|{|J<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|[|a,b|]>|)>>|<cell|=>|<cell|inf<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-I\><rsub|<around*|[||[>>\<wedge\><around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>I<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|l<around*|(|J<rsub|1>|)>+<big|sum><rsub|i=2><rsup|\<infty\>>l<around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|b+<frac|\<varepsilon\>|4>-<around*|(|a-<frac|\<varepsilon\>|4>|)>+<big|sum><rsub|i=2><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|=>|<cell|b-a+<frac|\<varepsilon\>|2>+<big|sum><rsub|i=2><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|=>|<cell|b-a+<big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|b-a+<frac|\<varepsilon\>|2>>|<row|<cell|>|<cell|\<less\>>|<cell|b-a+\<varepsilon\>>>|<row|<cell|>|<cell|=>|<cell|l<around*|(|<around*|[|a,b|]>|)>+\<varepsilon\>>>>>
      </eqnarray*>

      As <math|\<varepsilon\>\<gtr\>0> was chosen arbitrary it follows from
      <reference|consequence of the Archimedean property (2)> that
      <math|\<varphi\><around*|(|<around*|[|a,b|]>|)>\<leqslant\>l<around*|(|<around*|[|a,b|]>|)>>
      which combined with <reference|eq 18.117.021> proves

      <\equation>
        <label|eq 18.118.021>\<varphi\><around*|(|I|)>=\<varphi\><around*|(|<around*|[|a,b|]>|)>=l<around*|(|<around*|[|a,b|]>|)>=l<around*|(|I|)>
      </equation>

      <item*|<math|I\<in\>\<cal-I\><rsub|<around*|]|a,b|]>>>>Then
      <math|\<exists\>a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such that
      <math|I=<around*|]|a,b|]>>. As <math|<around*|]|a,b|]>\<subseteq\><around*|[|a,b|]>>
      we have\ 

      <\equation>
        <label|eq 18.119.021>\<varphi\><around*|(|<around*|]|a,b|]>|)>\<leqslant\>\<varphi\><around*|(|<around*|[|a,b|]>|)>
      </equation>

      Take <math|\<varepsilon\>> such that
      <math|0\<less\>\<varepsilon\>\<less\>b-a> then
      <math|a\<less\>a+\<varepsilon\>\<less\>a+<around*|(|b-a|)>=b>. Hence if
      <math|a\<leqslant\>x\<leqslant\>b> then either
      <math|a\<leqslant\>x\<leqslant\>a+\<varepsilon\>> or
      <math|a+\<varepsilon\>\<less\>x\<leqslant\>b> or
      <math|<around*|[|a,b|]>=<around*|[|a,a+\<varepsilon\>|]><big|cup><around*|]|a+\<varepsilon\>,b|]>>.
      So that

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|[|a,b|]>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|[|a,a+\<varepsilon\>|]><big|cup><around*|]|a+\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|outer
        measure finite subadditivity>>>>|<cell|\<varphi\><around*|(|<around*|[|a,a+\<varepsilon\>|]>|)>+\<varphi\><around*|(|<around*|]|a+\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.118.021>>>>|<cell|l<around*|(|<around*|[|a,a+\<varepsilon\>|]>|)>+\<varphi\><around*|(|<around*|]|a+\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|=>|<cell|a+\<varepsilon\>-a+\<varphi\><around*|(|<around*|]|a+\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>+\<varphi\><around*|(|<around*|]|a+\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|outer
        measure>>>>|<cell|\<varepsilon\>+\<varphi\><around*|(|<around*|]|a,b|]>|)>>>>>
      </eqnarray*>

      Using <reference|consequence of the Archimedean property (2)> we have
      then that <math|\<varphi\><around*|(|<around*|[|a,b|]>|)>\<leqslant\>\<varphi\><around*|(|<around*|]|a,b|]>|)>>
      which combined with <reference|eq 18.119.021> proves that
      <math|\<varphi\><around*|(|<around*|]|a,b|]>|)>=\<varphi\><around*|(|<around*|[|a,b|]>|)>\<equallim\><rsub|<text|<reference|eq
      18.118.021>>>l<around*|(|<around*|[|a,b|]>|)>=b-a=l<around*|(|<around*|[|a,b|[>|)>>.
      So we have

      <\equation>
        <label|eq 18.120.021>\<varphi\><around*|(|I|)>=\<varphi\><around*|(|<around*|]|a,b|]>|)>=l<around*|(|<around*|]|a,b|]>|)>=b-a=l<around*|(|I|)>
      </equation>

      <item*|<math|I\<in\>\<cal-I\><rsub|<around*|]||[>>>>Then there exists a
      <math|a,b\<in\>\<bbb-R\>> with <math|a\<less\>b> such that
      <math|I=<around*|]|a,b|[>>. As <math|<around*|]|a,b|[>\<subseteq\><around*|]|a,b|]>>
      we have

      <\equation>
        <label|eq 18.121.021>\<varphi\><around*|(|<around*|]|a,b|[>|)>\<subseteq\>\<varphi\><around*|(|<around*|]|a,b|]>|)>
      </equation>

      Take <math|\<varepsilon\>> such that
      <math|0\<less\>\<varepsilon\>\<less\>b-a> then
      <math|a=b-<around*|(|b-a|)>\<less\>b-\<varepsilon\>\<less\>b> so that
      <math|<around*|]|a,b|]>=<around*|]|a,b-\<varepsilon\>|[><big|cup><around*|[|b-\<varepsilon\>,b|]>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<varphi\><around*|(|<around*|]|a,b|]>|)>>|<cell|=>|<cell|\<varphi\><around*|(|<around*|]|a,b-\<varepsilon\>|[><big|cup><around*|[|b-\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|<around*|]|a,b-\<varepsilon\>|[>|)>+\<varphi\><around*|(|<around*|[|b-\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.118.021>>>>|<cell|\<varphi\><around*|(|<around*|]|a,b-\<varepsilon\>|[>|)>+l<around*|(|<around*|[|b-\<varepsilon\>,b|]>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|]|a,b-\<varepsilon\>|[>|)>+b-<around*|(|b-\<varepsilon\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><around*|(|<around*|]|a,b-\<varepsilon\>|[>|)>+\<varepsilon\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<varphi\><around*|(|<around*|]|a,b|[>|)>+\<varepsilon\>>>>>
      </eqnarray*>

      Using <reference|consequence of the Archimedean property (2)> we have
      then that <math|\<varphi\><around*|(|<around*|]|a,b|]>|)>\<leqslant\>\<varphi\><around*|(|<around*|]|a,b|[>|)>>
      which together with <reference|eq 18.121.021> proves that
      <math|\<varphi\><around*|(|<around*|]|a,b|[>|)>=\<varphi\><around*|(|<around*|]|a,b|]>|)>\<equallim\><rsub|<text|<reference|eq
      18.120.021>>>b-a=l<around*|(|<around*|]|a,b|[>|)>> proving that\ 

      <\equation>
        <label|eq 18.122.021>\<varphi\><around*|(|I|)>=\<varphi\><around*|(|<around*|]|a,b|[>|)>=l<around*|(|<around*|]|a,b|[>|)>=l<around*|(|I|)>
      </equation>
    </description>

    Using all the cases above we conclude that\ 

    <\equation>
      <label|eq 18.123.021>\<forall\>I\<in\>\<cal-I\>=\<cal-I\><rsub|<around*|[||[>><big|cup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>><big|cup>\<cal-I\><rsub|<around*|[||]>><big|cup><around*|{|\<emptyset\>|}><text|
      we have >\<varphi\><around*|(|I|)>=l<around*|(|I|)>
    </equation>

    The theorem is then proved by <reference|eq 18.108.021>, <reference|eq
    18.115.021> and <reference|eq 18.123.021>.
  </proof>

  <subsection|The Carath�odory theorem and <math|\<bbb-R\><rsup|n>>>

  Just as in the real case we use theorem <reference|outermeasure
  construction> to define a outer measure on <math|\<bbb-R\><rsup|n>>. first
  we must prove that <math|\<bbb-R\><rsup|n>> can be covered by sets in
  <math|\<cal-R\><rsup|n>>.

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>\<bbb-R\>> we define
    <math|<around*|(|x|)>\<in\>\<bbb-R\><rsup|n>> by
    <math|<around*|(|x|)><rsub|i>=x> <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>,
    in other words <math|<around*|(|x|)>=<wide*|<around*|(|x,\<ldots\>,x|)>|\<wide-underbrace\>><rsub|n>>.
  </definition>

  <\lemma>
    <label|R^n is a unin of rectangles>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>>
  </lemma>

  <\proof>
    First as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>\<subseteq\>\<bbb-R\><rsup|n>>
    we have trivially that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>\<subseteq\>\<bbb-R\><rsup|n>>.
    For the opposite inclusion let <math|x\<in\>\<bbb-R\><rsup|n>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<rsub|i>\<in\>\<bbb-R\>\<equallim\><rsub|<text|<reference|R can be
    covered by open intervals>>><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|[|-j,j|[>>
    so there exists <math|j<rsub|i>\<in\>\<bbb-N\><rsub|0>> such that
    <math|-j<rsub|i>\<leqslant\>x<rsub|i>\<less\>j<rsub|i>>. Take
    <math|k=max<around*|(|<around*|{|j<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<bbb-N\><rsub|0>>
    then we have that <math|-k\<leqslant\>-j<rsub|i>\<less\>x<rsub|j>\<less\>j<rsub|i>\<leqslant\>k>
    proving that <math|x\<in\><around*|[|<around*|(|-k|)>,<around*|(|k|)>|[>>.
    Hence <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>>
  </proof>

  Next we have to prove that the volume is semi-additive on
  <math|\<cal-R\><rsup|n>>.

  <\lemma>
    <label|volume is subadditive>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|R,<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
    such that \ <math|R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>
    then <math|v<rsup|n><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>>
    [see <reference|volume of a rectangle>]
  </lemma>

  <\proof>
    First if <math|R=\<emptyset\>> then <math|v<rsup|n><around*|(|R|)>=0\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>>
    which proves the theorem in this case. So we must only prove the case for\ 

    <\equation>
      <label|eq 18.127.025>R\<neq\>\<emptyset\>
    </equation>

    We prove this by induction so define\ 

    <\equation>
      <label|eq 18.128.025>\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\>R\<in\>\<cal-R\><rsup|n>,<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n><text|
      with >R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i><text| we
      have >v<rsup|n><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>v<rsup|n><around*|(|R<rsub|i>|)>|}>
    </equation>

    then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>As <math|R,<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-R\><rsup|1>>
      there exists <math|a,b\<in\>\<cal-R\><rsup|1>> and
      <math|<around*|{|a<rsup|i>|}><rsub|i\<in\>\<bbb-N\>>,<around*|{|b<rsup|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|1>>
      such that <math|R=<around*|[|a,b|[>> and
      <math|R<rsub|i>=<around*|[|a<rsup|i>,b<rsup|i>|[>>. Let
      <math|x\<in\><around*|[|a<rsub|1>,b<rsub|1>|[>> then
      \ <math|<around*|(|<wide*|x,\<ldots\>,x|\<wide-underbrace\>><rsub|1>|)>\<in\><around*|[|a,b|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|[|a<rsup|i>,b<rsup|i>|[>>
      so that <math|\<exists\>k\<in\>\<bbb-N\>> such that
      <math|<around*|(|<wide*|x,\<ldots\>,x|\<wide-underbrace\>><rsub|1>|)>\<in\><around*|[|a<rsup|k>,b<rsup|k>|[>\<Rightarrow\>x\<in\><around*|[|<around*|(|a<rsup|k>|)><rsub|1>,<around*|(|b<rsup|k>|)><rsub|1>|[>>
      proving that

      <\equation>
        <label|eq 18.129.025><around*|[|a<rsub|1>,b<rsub|1>|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|[|<around*|(|a<rsup|i>|)><rsub|1>,<around*|(|b<rsup|i>|)><rsub|1>|[>
      </equation>

      Using <reference|semi additivity of the length in the reals> we have\ 

      <\equation>
        <label|eq 18.130.025>b<rsub|1>-a<rsub|1>=l<around*|(|<around*|[|a<rsub|1>,b<rsub|1>|[>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|<around*|[|<around*|(|a<rsup|i>|)><rsub|1>,<around*|(|b<rsup|i>|)><rsub|1>|[>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<around*|(|b<rsup|i>|)><rsub|1>-<around*|(|a<rsup|i>|)><rsub|1>|)>
      </equation>

      Finally\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|1><around*|(|R|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|1><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|b<rsub|1>-a<rsub|1>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.130.025>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<around*|(|b<rsup|i>|)><rsub|1>-<around*|(|a<rsup|i>|)><rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|prod><rsub|j=1><rsup|1><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i><rsup|>|)><rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|1><around*|(|<around*|[|b<rsup|i>,a<rsup|i>|[>|)>>>>>
      </eqnarray*>

      proving that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|R\<in\>\<cal-R\><rsup|n+1>>, <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n+1>>
      such that <math|R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>.
      then <math|R=<around*|[|a,b|[>> <math|a,b\<in\>\<bbb-R\><rsup|n+1>>
      with <math|a\<leqslant\>b> and <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|R<rsub|i>=<around*|[|a<rsup|i>,b<rsup|i>|[>>,
      <math|a<rsup|i>,b<rsup|i>\<in\>\<bbb-R\><rsup|n+1>> with
      <math|a<rsub|i>\<leqslant\>b<rsub|i>>. Further as
      <math|R\<neq\>\<emptyset\>> we must have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|a<rsub|i>\<less\>b<rsub|i>> so that
      <math|0\<less\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>.
      Define now <math|V> by

      <\equation>
        <label|eq 18.131.025>V=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<gtr\>0
      </equation>

      then

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|R|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n+1><around*|(|b<rsub|i>-a<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>|)>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.131.025>>>>|<cell|V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)><eq-number><label|eq
        18.132.025>>>>>
      </eqnarray*>

      Given <math|i\<in\>\<bbb-N\>>, <math|r\<in\>\<bbb-R\>> define
      <math|a<rsup|i,r>,b<rsup|i,r>\<in\>\<bbb-R\><rsup|n+1>> by\ 

      <\equation>
        <label|eq 18.133.025><around*|(|a<rsup|i,r>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|<around*|(|a<rsup|i>|)><rsub|j>
        if j\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|min<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,r|)>
        if j=n+1>>>>>,<around*|(|b<rsup|i,r>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|>|<cell|<around*|(|b<rsup|i>|)><rsub|j>
        if j\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|>|<cell|min<around*|(|<around*|(|b<rsup|i>|)><rsub|n+1>,r|)>
        if j=n+1>>>>>
      </equation>

      Then <math|<around*|(|a<rsup|i>|)><rsub|j>=<choice|<tformat|<table|<row|<cell|<around*|(|a<rsup|i>|)><rsub|j>
      if j\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|min<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,r|)>
      if j=n+1>>>>>\<leqslant\><rsub|a<rsup|i>\<leqslant\>b<rsup|i>><choice|<tformat|<table|<row|<cell|<around*|(|b<rsup|i>|)><rsub|j>
      if j\<in\><around*|{|1,\<ldots\>,n|}><rsub|>>>|<row|<cell|min<around*|(|<around*|(|b<rsup|i>|)><rsub|n+1>,r|)>>>>>>=<around*|(|b<rsup|i,r><rsub|j>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.134.025>a<rsup|i,r>\<leqslant\>b<rsup|i,r>
      </equation>

      Now for

      <\equation>
        <label|eq 18.135.025>H<rsup|i,r>=<around*|{|x\<in\>R<rsub|i>\|x<rsub|n+1>\<less\>r|}>\<subseteq\>R<rsub|i>
      </equation>

      we have either:\ 

      <\description>
        <item*|<math|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>r>>\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\>H<rsup|i,r>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>R<rsub|i>\<wedge\>x<rsub|n+1>\<less\>r>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n+1|}>
          <around*|(|a<rsup|i>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i>|)><rsub|j>|)>\<wedge\>x<rsub|n+1>\<less\>r>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
          <around*|(|a<rsup|i>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i>|)>|)>\<wedge\><around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>x<rsub|n+1>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>\<wedge\>x<rsub|n+1>\<less\>r>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>r>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
          <around*|(|a<rsup|i>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i>|)>|)>\<wedge\>min<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,r|)>\<leqslant\>x<rsub|n+1>\<less\>min<around*|(|<around*|(|b<rsup|i>|)><rsub|n+1>,r|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n+1|}>
          <around*|(|a<rsup|i,r>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i,r>|)><rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a<rsup|i,r>,b<rsup|i,r>|[>>>>>
        </eqnarray*>

        proving that\ 

        <\equation*>
          H<rsup|i,r>=<around*|[|b<rsup|i,r>,a<rsup|i,r>|[>
        </equation*>

        <item*|<math|r\<less\><around*|(|a<rsup|i>|)><rsub|n+1>>>If
        <math|x\<in\>H<rsup|i,r>> then <math|r\<less\><around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>x<rsub|n+1>\<less\>r>
        a contradiction so that <math|H<rsup|i,r>=\<emptyset\>>. If
        <math|x\<in\><around*|[|a<rsup|i,r>,b<rsup|i,r>|[>> then
        <math|r=min<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,r|)>\<leqslant\>x<rsub|n+1>\<less\>min<around*|(|<around*|(|b<rsup|i,r>|)><rsub|n+1>,r|)>\<equallim\>r>
        a contradiction so that <math|<around*|[|a<rsup|i,r>,b<rsup|i,r>|[>=\<emptyset\>>
        hence\ 

        <\equation*>
          H<rsup|i,r>=<around*|[|b<rsup|i,r>,a<rsup|i,r>|[>
        </equation*>
      </description>

      So in all cases we have <math|H<rsup|i,r>=<around*|[|<around*|(|a<rsup|i,r>|)><rsub|n+1>,<around*|(|b<rsup|i,r>|)><rsub|n+1>|[>>
      and as <math|a<rsup|i,r>\<leqslant\>b<rsup|i,r>> [see <reference|eq
      18.134.025>] we have that <math|H<rsup|i,r>\<in\>\<cal-R\><rsup|n+1>>.
      To summarize\ 

      <\equation>
        <label|eq 18.136.025>\<forall\>i\<in\>\<bbb-N\>,r\<in\>\<bbb-R\><text|
        we have >H<rsup|i,r>=<around*|[|a<rsup|i,r>,b<rsup|i,r>|[>\<in\>\<cal-R\><rsup|n+1>
      </equation>

      Next if <math|r,s\<in\>\<bbb-R\>> with <math|r\<leqslant\>s> then if
      <math|x\<in\>H<rsup|i,r>> we have <math|x\<in\>R<rsub|i>> and
      <math|x<rsub|n+1>\<less\>r\<leqslant\>s> so that
      <math|x\<in\>H<rsup|i,s>> proving that
      <math|H<rsup|i,r>\<subseteq\>H<rsup|i,s>>. Applying <reference|volume
      is increasing> gives\ 

      <\equation>
        <label|eq 18.137.025>\<forall\>r,s\<in\>\<bbb-R\><text| with
        >r\<leqslant\>s<infix-and>\<forall\>i\<in\>\<bbb-N\> we have
        v<rsup|n+1><around*|(|H<rsup|i,r>|)>\<leqslant\>v<rsup|n+1><around*|(|H<rsup|i,s>|)>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|H<rsup|i,r>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.136.025>>>>|<cell|v<rsup|n+1><around*|(|<around*|[|b<rsup|i,r>,a<rsup|i,r>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|j=1><rsup|n+1><around*|(|<around*|(|b<rsup|i,r>|)><rsub|j>-<around*|(|a<rsup|i,r>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|b<rsup|i,r>|)><rsub|n+1>-<around*|(|a<rsup|i,r>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i,r>|)><rsub|j>-<around*|(|a<rsup|i,r>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|b<rsup|i,r>|)><rsub|n+1>-<around*|(|a<rsup|i,r>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)><eq-number><label|eq
        18.138.025>>>>>
      </eqnarray*>

      Let <math|\<varepsilon\>\<gtr\>0> and define\ 

      <\equation>
        <label|eq 18.139.025>A<rsub|\<varepsilon\>>=<around*|{|x\<in\><around*|[|a<rsub|n+1>,b<rsub|n+1>|]>\|V\<cdot\><around*|(|x-a<rsub|n+1>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,x>|)>|}>\<subseteq\><around*|[|a<rsub|n+1>,b<rsub|n+1>|]>
      </equation>

      As <math|a<rsub|n+1>\<in\><around*|[|a<rsub|n+1>,b<rsub|n+1>|]>> and
      <math|V\<cdot\><around*|(|a<rsub|n+1>-a<rsub|n+1>|)>=0\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,a<rsub|n+1>>|)>>
      it follows that <math|a<rsub|n+1>\<in\>A<rsub|\<varepsilon\>>> hence
      <math|\<emptyset\>\<neq\>A<rsub|\<varepsilon\>>\<subseteq\><around*|[|a<rsub|n+1>,b<rsub|n+1>|]>>.
      Using the conditional completeness of the real numbers [see
      <reference|the reals are conditional complete>] we have that\ 

      <\equation>
        <label|eq 18.140.025>\<gamma\>=sup<around*|(|A<rsub|\<varepsilon\>>|)>
        exists and a<rsub|n+1>\<leqslant\>\<gamma\>\<leqslant\>b<rsub|n+1>
      </equation>

      For <math|x\<in\>A<rsub|\<varepsilon\>>> we have now the following\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|x-a<rsub|n+1>|)>>|<cell|\<leqslant\><rsub|def
        A<rsub|\<varepsilon\>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,x>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|x\<leqslant\>\<lambda\><infix-and><text|<reference|eq
        18.137.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)><eq-number><label|eq
        18.141.025>>>>>
      </eqnarray*>

      Next\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|\<gamma\>-a<rsub|n+1>|)>>|<cell|=>|<cell|V\<cdot\><around*|(|sup<around*|(|A<rsub|\<varepsilon\>>|)>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sup
        of set and sum>>>>|<cell|V\<cdot\><around*|(|sup<around*|(|<around*|{|x-a<rsub|n+1>\|x\<in\>A<rsub|\<varepsilon\>>|}>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sup
        of set and sum>><infix-and>0\<less\>V>>|<cell|sup<around*|(|<around*|{|V\<cdot\><around*|(|x-a<rsub|n+1>|)>\|x\<in\>A<rsub|\<varepsilon\>>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.141.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)><eq-number><label|eq
        18.142.025>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.143.025>\<gamma\>\<in\>A<rsub|\<varepsilon\>>
      </equation>

      From <reference|eq 18.140.025> we have that
      <math|a<rsub|n+1>\<leqslant\>\<gamma\>\<leqslant\>b<rsub|n+1>>, we show
      now by contradiction that <math|\<gamma\>=b<rsub|n+1>>. So assume that
      <math|\<gamma\>\<less\>b<rsub|n+1>>. Then\ 

      <\equation>
        <label|eq 18.144.025>\<gamma\>\<in\><around*|[|a<rsub|n+1>,b<rsub|n+1>|[>
      </equation>

      Define now\ 

      <\equation>
        <label|eq 18.145.025>J=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|(|x,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R|}><text|
        and >\<forall\>i\<in\>\<bbb-N\> J<rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R<rsub|i>|}>
      </equation>

      Define using <math|a,b\<in\>\<bbb-R\><rsup|n+1>>
      <math|a<rprime|'>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>,b<rprime|'>=<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      then as <math|a\<leqslant\>b> <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|<around*|(|a<rprime|'>|)><rsub|j>=a<rsub|j>\<leqslant\>b<rsub|j>=<around*|(|b<rprime|'>|)><rsub|j>>
      proving <math|a<rprime|'>\<leqslant\>b<rprime|'>>. Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|[|a<rprime|'>,b<rprime|'>|[>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        a<rsub|j>=<around*|(|a<rprime|'>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rprime|'>|)><rsub|j>=b<rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|eq
        18.144.025>>>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        a<rsub|j>=<around*|(|a<rprime|'>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rprime|'>|)><rsub|j>=b<rsub|j>|)>\<wedge\>a<rsub|n+1>\<leqslant\>\<gamma\>\<less\>b<rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|j>,\<gamma\>|)>\<in\>R>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>J>>>>
      </eqnarray*>

      As <math|a<rprime|'>\<leqslant\>b<rprime|'>> we have also
      <math|J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-R\><rsup|n>>
      and <math|v<rsup|n><around*|(|J|)>=<big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rprime|'>|)><rsub|j>-<around*|(|a<rprime|'>|)><rsub|j>|)>=<big|prod><rsub|j=1><rsup|n><around*|(|b<rsub|j>-a<rsub|j>\<equallim\><rsub|<text|<reference|eq
      18.131.025>>>V|\<nobracket\>>>. Summarizing the abovfe we have\ 

      <\equation>
        <label|eq 18.146.025>J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-R\><rsup|n><text|
        and >v<rsup|n><around*|(|J|)>=V
      </equation>

      Further for <math|i\<in\>\<bbb-N\>> define
      <math|<wide|a<rsup|i>|\<bar\>>,<wide|b<rsup|i>|\<bar\>>\<in\>\<bbb-R\><rsup|n>>
      by <math|<around*|(|<wide|a<rsup|i>|\<bar\>>|)><rsub|j>=<around*|(|a<rsup|i>|)><rsub|j>>
      and <math|<around*|(|<wide|b<rsup|i>|\<bar\>>|)><rsub|j>=<around*|(|b<rsup|i>|)><rsub|j>>.
      Then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we havc
      <math|<around*|(|<wide|a<rsup|i>|\<bar\>>|)><rsub|j>=<around*|(|a<rsup|i>|)><rsub|j>\<leqslant\><around*|(|b<rsup|i>|)><rsub|j>=<around*|(|<wide|b<rsup|i>|\<bar\>><rsub|j>|)>>
      proving that

      <\equation>
        <label|eq 18.147.025><wide|a<rsup|i>|\<bar\>>\<leqslant\><wide|b<rsup|i>|\<bar\>>
      </equation>

      \ If <math|J<rsub|i>\<neq\>\<emptyset\>> then
      <math|\<exists\>x\<in\>\<bbb-R\><rsup|n>> such that
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R<rsub|i>>
      hence <math|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>.
      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>J<rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        <around*|(|a<rsup|i>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i>|)><rsub|j><text|
        and ><around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        <around*|(|a<rsup|i>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|b<rsup|i>|)><rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
        <around*|(|<wide|a<rsup|i>|\<bar\>>|)><rsub|j>\<leqslant\>x<rsub|j>\<less\><around*|(|<wide|b<rsup|i>|\<bar\>>|)><rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|<wide|a<rsup|i>|\<bar\>>,<wide|b<rsup|i>|\<bar\>>|[>>>>>
      </eqnarray*>

      which proves that <math|J<rsub|i>=<around*|[|<wide|a<rsup|i>|\<bar\>>,<wide|b<rsup|i>|\<bar\>>|[>>.
      As <math|<wide|a<rsup|i>|\<bar\>>\<leqslant\><wide|b<rsup|i>|\<bar\>>>
      [see <reference|eq 18.147.025>] we have
      <math|J<rsub|i>\<in\>\<cal-R\><rsup|n>> and
      <math|v<rsup|n><around*|(|J<rsub|i>|)>=<big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|<wide|b<rsup|n>|\<bar\>>|)><rsub|j>-<around*|(|<wide|a<rsup|i>|\<bar\>>|)><rsub|j>|)>=<big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>=<around*|(|a<rsup|i>|)><rsub|j>|)>>.
      To summarize we have:

      <\equation>
        <label|eq 18.148.025>If J<rsub|i>=\<emptyset\>\<Rightarrow\>J<rsub|i>\<in\>\<cal-R\><rsup|n><text|
        and if >J<rsub|i>\<neq\>\<emptyset\><text| we have
        >J<rsub|i>=<around*|[|<wide|a<rsup|i>|\<bar\>>,<wide|b<rsup|i>|\<bar\>>|[>\<in\>\<cal-R\><rsup|n><text|,
        <math|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>
        and >v<rsup|n><around*|(|J<rsub|i>|)>=<big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>
      </equation>

      If <math|x\<in\>J> then <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>
      so that <math|\<exists\>\<in\>\<bbb-N\>> such that
      <math|<around*|(|x<rsub|1>,\<ldots\>,x<rsub|n>,\<gamma\>|)>\<in\>R<rsub|i>>
      proving that <math|x\<in\>J<rsub|i>>. So\ 

      <\equation>
        <label|eq 18.149.025>J\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>J<rsub|i>
      </equation>

      As <math|n\<in\>\<cal-S\>> [the induction hypothesis] we have by
      <reference|eq 18.146.025>,<reference|eq 18.148.025> and <reference|eq
      18.149.025> that\ 

      <\equation>
        <label|eq 18.150.025>V\<equallim\><rsub|<text|<reference|eq
        18.146.025>>>v<rsup|n><around*|(|J|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|J<rsub|i>|)>\<equallim\><rsub|<text|<reference|series
        of positive extented reals is increasing>>>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>\|m\<in\>\<bbb-N\>|}>|)>
      </equation>

      As <math|\<varepsilon\>\<gtr\>0> we have
      <math|<frac|1|1+\<varepsilon\>>\<less\>1> so that by multiplying with
      <math|0\<less\>V> it follows that <math|<frac|V|1+\<varepsilon\>>\<less\>V\<leqslant\><rsub|<text|<reference|eq
      18.150.025>>>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>\|m\<in\>\<bbb-N\>|}>|)>>.
      Using the definition of a supremum we have then that
      <math|<frac|V|1+\<varepsilon\>>\<less\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>>
      giving

      <\equation>
        <label|eq 18.151.025>\<exists\>m\<in\>\<bbb-N\><text| such that
        >V\<less\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)><rsup|>
      </equation>

      Define now\ 

      <\equation>
        <label|eq 18.152.025>\<chi\>=min<around*|(|<around*|{|b<rsub|n+1>|}><big|cup><around*|{|<around*|(|b<rsup|i>|)><rsub|n+1>\|i\<in\><around*|{|1,\<ldots\>,m|}>\<wedge\>J<rsub|i>\<neq\>\<emptyset\>|}>|)>
      </equation>

      As we have assumed that <math|\<gamma\>\<less\>b<rsub|n+1>> and by
      <reference|eq 18.148.025> <math|\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>
      if <math|J<rsub|i>\<neq\>\<emptyset\>> it follows that\ 

      <\equation>
        <label|eq 18.153.025>a<rsub|n+1>\<leqslant\><rsub|<text|<reference|eq
        18.144.025>>>\<gamma\>\<less\>\<chi\>\<leqslant\>b<rsub|n+1><text|
        [note that >\<gamma\>\<less\>\<chi\><text| will be crucial further in
        the proof]>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then for
      <math|i\<in\><around*|{|1,\<ldots\>,m|}>> we have for <math|J<rsub|i>>
      either

      <\description>
        <item*|<math|J<rsub|i>=\<emptyset\>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>>|<cell|=>|<cell|v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+0>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          18.137.025>,<reference|eq 18.153.025>>>>|<cell|v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>>>>>
        </eqnarray*>

        <item*|<math|J<rsub|i>\<neq\>\<emptyset\>>>then
        <math|><math|<around*|(|a<rsup|i>|)><rsub|n+1>\<leqslant\>\<gamma\>\<less\><around*|(|b<rsup|i>|)><rsub|n+1>>
        [see <reference|eq 18.148.025>] and <math|\<gamma\>\<less\>\<chi\>>
        [see <reference|eq 18.153.025>] so that
        <math|<around*|(|a<rsup|i>|)><rsub|n+1>\<less\>\<chi\>>. From this it
        follows that\ 

        <\equation>
          <label|eq 18.154.025><around*|(|a<rsup|i,\<chi\>>|)><rsub|n+1>=min*<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,\<chi\>|)>=<around*|(|a<rsup|i>|)><rsub|n+1>=min<around*|(|<around*|(|a<rsup|i>|)><rsub|n+1>,\<gamma\>|)>=<around*|(|a<rsup|i,\<gamma\>>|)><rsub|n+1>
        </equation>

        <\equation>
          <label|eq 18.155.025><around*|(|b<rsup|i,\<chi\>>|)><rsub|n+1>=min<around*|(|<around*|(|b<rsup|i>|)><rsub|n+1>,\<chi\>|)>\<equallim\><rsub|<text|<reference|eq
          18.152.025>>>\<chi\>
        </equation>

        <\equation>
          <label|eq 18.156.025><around*|(|b<rsup|i,\<gamma\>>|)><rsub|n+1>=min<around*|(|<around*|(|b<rsup|i>|)><rsub|n+1>,\<gamma\>|)>=\<gamma\>
        </equation>

        Next

        <\eqnarray*>
          <tformat|<table|<row|<cell|v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.138.025>>>>|<cell|<around*|(|<around*|(|b<rsup|i,\<chi\>>|)><rsub|n+1>-<around*|(|a<rsup|i,\<chi\>>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.154.025>,<reference|eq 18.155.025>>>>|<cell|<around*|(|\<chi\>-<around*|(|a<rsup|i>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<chi\>-\<gamma\>+\<gamma\>-<around*|(|a<rsup|i>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<chi\>-\<gamma\>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>+<around*|(|\<gamma\>-<around*|(|a<rsup|i>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.148.025>>>>|<cell|<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>+<around*|(|\<gamma\>-<around*|(|a<rsup|i>|)><rsub|n+1>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|><reference|eq
          18.154.025>>>|<cell|<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>+<around*|(|<around*|(|b<rsup|i,\<gamma\>>|)><rsub|j>-<around*|(|a<rsup|i,\<gamma\>>|)>|)>\<cdot\><big|prod><rsub|j=1><rsup|n><around*|(|<around*|(|b<rsup|i>|)><rsub|j>-<around*|(|a<rsup|i>|)><rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.138.025>>>>|<cell|<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>+v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>>>>>
        </eqnarray*>
      </description>

      So in all cases we have\ 

      <\equation>
        <label|eq 18.157.025>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}> we
        have v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>\<leqslant\>v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>
      </equation>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|V\<cdot\><around*|(|\<chi\>-a<rsub|n+1>|)>>|<cell|=>|<cell|V\<cdot\><around*|(|\<chi\>-\<gamma\>+\<gamma\>-a<rsub|n+1>|)>>>|<row|<cell|>|<cell|=>|<cell|V\<cdot\><around*|(|\<gamma\>-a<rsub|n+1>|)>+V\<cdot\><around*|(|\<chi\>-\<gamma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.142.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+V\<cdot\><around*|(|\<chi\>-\<gamma\>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.151.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><around*|(|\<chi\>-\<gamma\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><around*|(|<big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n><around*|(|J<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m><around*|(|v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|\<chi\>-\<gamma\>|)>\<cdot\>v<rsup|n><around*|(|J<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.157.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<gamma\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.137.025>,<reference|eq 18.153.025>>>>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=m+1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>+<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,\<chi\>>|)>>>>>
      </eqnarray*>

      which using <reference|eq 18.153.025> and the definition of
      <math|A<rsub|\<varepsilon\>>> proves that
      <math|\<chi\>\<in\>A<rsub|e>>. So <math|\<chi\>\<leqslant\>sup<around*|(|A<rsub|\<varepsilon\>>|)>=\<gamma\>\<less\>\<chi\>>
      [see <reference|eq 18.153.025>] giving the contradiction
      <math|\<chi\>\<less\>\<chi\>>. Hence the assumption
      <math|\<gamma\>\<less\>b<rsub|n+1>> is wrong giving
      <math|b<rsub|n+1>\<leqslant\>\<gamma\>\<leqslant\><rsub|<text|<reference|eq
      18.140.025>>>b<rsub|n+1>> proving that\ 

      <\equation>
        <label|eq 18.158.025>b<rsub|n+1>=\<gamma\>\<in\>A<rsub|\<varepsilon\>>
      </equation>

      Using the definition of <math|A<rsub|\<varepsilon\>>> we have that
      <math|V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|H<rsup|i,b<rsub|n+1>>|)>>.
      As <math|H<rsup|i,b<rsub|<rsub|n+1>>>\<subseteq\>R<rsub|i>> [see
      <reference|eq 18.135.025>] we have using <reference|volume is
      increasing> that

      <\equation>
        <label|eq 18.159.025>V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i>|)>
      </equation>

      As <math|v<rsup|n+1><around*|(|R|)>=V\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>
      [see <reference|eq 18.132.025>] we have that
      <math|v<rsup|n+1><around*|(|R|)>\<leqslant\><around*|(|1+\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i>|)>>.
      Given that <math|\<varepsilon\>\<gtr\>0> was choosen arbitrary we have
      by <reference|consequence of the Archimedean property (2)> that\ 

      <\equation*>
        v<rsup|n+1><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n+1><around*|(|R<rsub|i>|)>
      </equation*>

      which proves that <math|n+1\<in\>\<cal-S\>>.
    </description>
  </proof>

  We can now define a outer measure based on the volume of half open
  intervals

  <\definition>
    <label|outer measure definition on rectangles><index|<math|\<varphi\><rsup|n>>>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<varphi\><rsup|n>:\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by\ 

    <\equation*>
      \<varphi\><rsup|n><around*|(|R|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n><text|
      such that >R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>|}>|)>
    </equation*>
  </definition>

  <\theorem>
    <label|outer measure on rectangles>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|\<varphi\><rsup|n>\<of\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a outer measure. Further <math|\<forall\>A\<in\>\<cal-R\><rsup|n>> we
    have that <math|v<rsup|n><around*|(|A|)>=\<varphi\><rsup|n><around*|(|A|)>>
  </theorem>

  <\proof>
    We use <reference|outermeasure construction> to prove this. Let's first
    check the conditions for the thereom.

    <\enumerate>
      <item><math|\<emptyset\>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|i,i|[>\<in\>\<cal-R\><rsup|n>>

      <item>Using <reference|R^n is a unin of rectangles> there exists a
      <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
      such that <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>>

      <item><math|v<rsup|n><around*|(|\<emptyset\>|)>=0> by definition

      <item>Using <reference|volume is subadditive> we have
      <math|\<forall\>R\<in\>\<cal-R\><rsup|n>>,
      <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
      with <math|R\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>R<rsub|i>> that
      <math|v<rsup|n><around*|(|R|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>>
    </enumerate>

    Applying then theorem <reference|outermeasure construction> proves this
    theorem.
  </proof>

  Applying the above on the Carath�odory theorem (see
  <reference|Caratheodore>,<reference|measureable set> and
  <reference|measurable set alternative definition>) allows us to define a
  <math|\<sigma\>>-algebra and measure on <math|\<bbb-R\><rsup|n>>

  <\definition>
    <label|Lebesgue measure space on R^n>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
    is a measure space where\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-L\><rsup|n>>|<cell|=>|<cell|\<cal-M\><rsub|\<varphi\><rsup|n>><around*|[|\<bbb-R\><rsup|n>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|B\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>\|\<forall\>A\<in\>\<cal-P\><rsup|n><around*|(|\<bbb-R\><rsup|n>|)><text|
      we have >\<varphi\><rsup|n><around*|(|A|)>=\<varphi\><rsup|n><around*|(|A<big|cap>B|)>+\<varphi\><rsup|n><around*|(|A\\B|)>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|B\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>\|\<forall\>A\<in\>\<cal-P\><rsup|n><around*|(|\<bbb-R\><rsup|n>|)><text|
      we have >\<varphi\><rsup|n><around*|(|A|)>\<geqslant\>\<varphi\><rsup|n><around*|(|A<big|cap>B|)>+\<varphi\><rsup|n><around*|(|A\\B|)>|}>>>>>
    </eqnarray*>

    and

    <\equation*>
      \<lambda\><rsup|n>=<around*|(|\<varphi\><rsup|n>|)><rsub|\|\<cal-L\><rsup|n>>:\<cal-L\><rsup|n>\<rightarrow\><around*|[|0,\<infty\>|]>
    </equation*>

    If <math|A\<in\>\<cal-L\><rsup|n>> then we set that <math|A> is Lebesgue
    measurable on <math|\<bbb-R\><rsup|n>>.
  </definition>

  Just as with the real numbers we proceed now to prove that the Borel
  algebra defined by the open sets in <math|\<bbb-R\><rsup|n>> is included in
  <math|\<cal-L\><rsup|n>>. To do this we first prove that half spaces are
  Lebesgue measurable in <math|\<bbb-R\><rsup|n>>.

  <\lemma>
    <label|half spaces are Lebesgue measurable in R^n>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|x\<in\>\<bbb-R\>> then <math|<around*|]|-\<infty\>,x|[><rsub|i>>
    defined by <math|<around*|]|-\<infty\>,x|[><rsub|i>=<around*|{|y\<in\>\<bbb-R\><rsup|n>\|y<rsub|i>\<less\>x|}>>
    [<reference|lower half open spaces>] is Lebesgue measurable on
    <math|\<bbb-R\><rsup|n>> or in other words
    <math|<around*|]|-\<infty\>,x|[><rsub|i>\<in\>\<cal-L\><rsup|n>>.
  </lemma>

  <\proof>
    First we prove that

    <\equation>
      <label|eq 18.160.025>\<forall\>R\<in\>\<cal-R\><rsup|n><text| we have
      >\<varphi\><rsup|n><around*|(|R|)>=\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>
    </equation>

    <\proof>
      Consider the following exclusive cases for <math|R> and
      <math|<around*|]|-\<infty\>,x|[><rsub|i>>\ 

      <\description>
        <item*|<math|R\<subseteq\><around*|]|-\<infty\>,x|[><rsub|i>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|=>|<cell|\<varphi\><rsup|n><around*|(|R|)>+\<varphi\><rsup|n><around*|(|\<emptyset\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure> and <reference|outer measure on
          rectangles>>>>|<cell|\<varphi\><rsup|n><around*|(|R|)>+0>>|<row|<cell|>|<cell|=>|<cell|\<varphi\><rsup|n><around*|(|R|)>>>>>
        </eqnarray*>

        <item*|<math|R\<nsubseteq\><around*|]|-\<infty\>,x|[><rsub|i>\<wedge\>R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>=\<emptyset\>>>then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|=>|<cell|\<varphi\><rsup|n><around*|(|\<emptyset\>|)>+\<varphi\><rsup|n><around*|(|R|)>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure> and <reference|outer measure on
          rectangles>>>>|<cell|v<rsup|n><around*|(|R|)>>>>>
        </eqnarray*>

        <item*|<math|R\<nsubseteq\><around*|]|-\<infty\>,x|[><rsub|i>\<wedge\>R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>\<neq\>\<emptyset\>>>then
        <math|R\<neq\>\<emptyset\>> so there exists
        <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<less\>b> such that
        <math|R=<around*|[|a,b|[>>. Consider now the following cases for
        <math|x>:

        <\description>
          <item*|<math|b<rsub|i>\<leqslant\>x>>let <math|y\<in\>R> then
          <math|a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<leqslant\>x>
          so that <math|y\<in\><around*|]|-\<infty\>,x|[><rsub|i>> proving
          that <math|R\<subseteq\><around*|]|-\<infty\>,x|[><rsub|i>> which
          contradicts the assumption <math|R\<nsubseteq\><around*|]|-\<infty\>,x|[><rsub|i>>.
          So we must have <math|x\<less\>b<rsub|i>>

          <item*|<math|x\<leqslant\>a<rsub|i>>>as
          <math|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>\<neq\>\<emptyset\>>
          there exists a <math|y\<in\>R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>>
          so that <math|a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<wedge\>y<rsub|i>\<less\>x<rsub|i>\<leqslant\>a<rsub|i>>
          giving the contradiction <math|a<rsub|i>\<less\>a<rsub|i>>. So we
          must have <math|a<rsub|i>\<less\>x>.
        </description>

        From the above we conclude that\ 

        <\equation>
          <label|eq 18.161.025>a<rsub|i>\<less\>x\<less\>b<rsub|i>
        </equation>

        Next define <math|<wide|b|\<bar\>>> by
        <math|<around*|(|<wide|b|\<bar\>>|)><rsub|k>=<choice|<tformat|<table|<row|<cell|x
        if k=i>>|<row|<cell|b<rsub|k> if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>
        then using <reference|eq 18.161.025> together with <math|a\<less\>b>
        we have that

        <\equation>
          <label|eq 18.162.025>a\<less\><wide|b|\<bar\>>
        </equation>

        <\eqnarray*>
          <tformat|<table|<row|<cell|y\<in\>R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}><text|
          we have >a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>|)>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<wedge\>y<rsub|i>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|x\<less\>b<rsub|j>>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}><text|
          we have >a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>|)>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
          we have a<rsub|j>\<leqslant\>y<rsub|j>\<less\><around*|(|<wide|b|\<bar\>>|)><rsub|j><text|
          >>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|a,<wide|b|\<bar\>>|[>>>>>
        </eqnarray*>

        Hence we have that <math|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>=<around*|[|a,<wide|b|\<bar\>>|[>\<in\>\<cal-R\><rsup|n>>
        [using <reference|eq 18.162.025>] so that
        <math|v<rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>>
        exists and

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure on R>>>>|<cell|v<rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|(|<wide|b|\<bar\>>|)><rsub|j>-a<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|x-a<rsub|i>|)><eq-number><label|eq
          18.163.025>>>>>
        </eqnarray*>

        Further we have if we define <math|<wide|a|\<bar\>>> by
        <math|<around*|(|<wide|a|\<bar\>>|)><rsub|k>=<choice|<tformat|<table|<row|<cell|x
        if k=i>>|<row|<cell|a<rsub|k> if k\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>>>>>
        then using <reference|eq 18.161.025> and <math|a\<less\>b> we have
        that\ 

        <\equation>
          <label|eq 18.164.025><wide|a|\<bar\>>\<less\>b
        </equation>

        and

        <\eqnarray*>
          <tformat|<table|<row|<cell|y\<in\>R\\<around*|]|-\<infty\>,x|[><rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>|)>\<wedge\>a<rsub|i>\<leqslant\>y<rsub|i>\<less\>b<rsub|i>\<wedge\>x\<leqslant\>y<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|a<rsub|i>\<less\>x>>|<cell|<around*|(|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>
          a<rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>|)>\<wedge\>x\<leqslant\>y<rsub|i>\<less\>b<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>
          <around*|(|<wide|a|\<bar\>>|)><rsub|j>\<leqslant\>y<rsub|j>\<less\>b<rsub|j>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\><around*|[|<wide|a|\<bar\>>,b|[>>>>>
        </eqnarray*>

        So we have that <math|R\\<around*|]|-\<infty\>,x|[><rsub|i>=<around*|[|<wide|a|\<bar\>>,b|[>\<in\>\<cal-R\><rsup|n>>
        [using <reference|eq 18.164.025>] hence
        <math|v<rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>
        exists and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure on rectangles>>>>|<cell|v<rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rsub|i>-<around*|(|<wide|a|\<bar\>>|)><rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|b<rsub|i>-x|)><eq-number><label|eq
          18.165.025>>>>>
        </eqnarray*>

        Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.163.025> and <reference|eq 18.165.025>>>>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|x-a<rsub|i>|)>+<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)>\<cdot\><around*|(|b<rsub|i>-x|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)><around*|(|x-a<rsub|i>+b<rsub|i>-x|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>><around*|(|b<rsub|j>-a<rsub|j>|)>|)><around*|(|b<rsub|i>-a<rsub|>|)>>|<cell|=>|<cell|>>|<row|<cell|v<rsup|n><around*|(|R|)>>|<cell|\<equallim\><rsub|<text|<reference|outer
          measure on rectangles>>>>|<cell|>>|<row|<cell|\<varphi\><rsup|n><around*|(|R|)>>|<cell|>|<cell|>>>>
        </eqnarray*>
      </description>

      So in all cases we have <math|\<varphi\><rsup|n><around*|(|R<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R\\<around*|]|-\<infty\>,x|[><rsub|i>|)>=\<varphi\><rsup|n><around*|(|R|)>>
      which proves <reference|eq 18.160.025>\ 
    </proof>

    We are now ready to prove that <math|<around*|]|-\<infty\>,x|[><rsub|i>>
    is Lebesgue measurable. Let <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>>
    and take <math|\<varepsilon\>\<gtr\>0> then from the definition of
    <math|\<varphi\><rsup|n>> and the infinum there exists a
    <math|<around*|{|R<rsub|j>|}><rsub|j\<in\>\<bbb-N\>>\<subseteq\>\<cal-R\><rsup|n>>
    with <math|R\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|j>> such
    that\ 

    <\equation>
      <label|eq 18.166.025>\<varphi\><rsup|n><around*|(|A|)>\<leqslant\><big|sum><rsub|j=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|j>|)>\<less\>\<varphi\><rsup|n><around*|(|A|)>+\<varepsilon\>
    </equation>

    As\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<big|cap><around*|]|-\<infty\>,x|[><rsub|i>>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|j>|)><big|cap><around*|]|-\<infty\>,x|[><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      distributive laws>>>>|<cell|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>>>>>
    </eqnarray*>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|A\\<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|\<subseteq\>>|<cell|<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>>R<rsub|j>|)>\\<around*|]|-\<infty\>,x|[><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|generalized
      difference>>>>|<cell|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j>\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>>>>
    </eqnarray*>

    \ we have [see <reference|outer measure>] that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|A<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|A\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>|<cell|\<leqslant\>>|<cell|\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j><big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>|)>+\<varphi\><rsup|n><around*|(|<big|cup><rsub|j\<in\>\<bbb-N\>><around*|(|R<rsub|j>\\<around*|]|-\<infty\>,x|[><rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|outer
      measure>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j>\\<around*|]|-\<infty\>,x|[><rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<smart-ref|sum
      of series in the extended reals>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>><around*|(|\<varphi\><rsup|n><around*|(|R<rsub|j><big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|R<rsub|j>\\<around*|]|-\<infty\>,x|[><rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.160.025>>>>|<cell|<big|sum><rsub|j=1><rsup|\<infty\>>\<varphi\><rsup|n><around*|(|R<rsub|j>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.166.025>>>>|<cell|\<varphi\><rsup|n><around*|(|A|)>+\<varepsilon\>>>>>
    </eqnarray*>

    which as <math|\<varepsilon\>> was choosen arbitrary proves by
    <reference|consequence of the Archimedean property (2)> \ that\ 

    <\equation*>
      \<varphi\><rsup|n><around*|(|A<big|cap><around*|]|-\<infty\>,x|[><rsub|i>|)>+\<varphi\><rsup|n><around*|(|A\\<around*|]|-\<infty\>,x|[><rsub|i>|)>\<leqslant\>\<varphi\><rsup|n><around*|(|A|)>
    </equation*>

    Applying <reference|Lebesgue measure space on R^n> proves then that\ 

    <\equation*>
      <around*|]|-\<infty\>,x|[><rsub|i>\<in\>\<cal-L\><rsup|n>
    </equation*>
  </proof>

  <\lemma>
    <label|Lebesgue measurable sets alternatives>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|[>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\|C<text|
      is closed >in \<cal-T\><rsub|\<bbb-R\><rsup|n>>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-R\><rsup|n>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-L\><rsup|n>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<forall\>R\<in\>\<cal-R\><rsup|n><text| we
      have >v<rsup|n><around*|(|R|)>>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|R|)>>>>>
    </eqnarray*>

    and\ 

    <\equation*>
      \<forall\>R\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]> we have
      \<varphi\><rsup|n><around*|(|R|)>=\<lambda\><rsup|n><around*|(|R|)>
    </equation*>
  </lemma>

  <\proof>
    Using <reference|half spaces are Lebesgue measurable in R^n> and the
    definition <math|\<cal-H\><rsup|n>> [see <reference|lower half open
    spaces>] <math|>we have that <math|\<cal-H\><rsup|n>\<subseteq\>\<cal-L\><rsup|n>>
    hence <math|\<sigma\><around*|[|\<cal-H\><rsup|n>|]>\<subseteq\>\<cal-L\><rsup|n>>.
    Using <reference|Borel algebra on R^n equivalences> the first part of the
    theorem is proved. The rest of the theorem follows from
    <reference|Lebesgue measure space on R^n> and <reference|outer measure on
    rectangles>.
  </proof>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and <math|a,b\<in\>\<bbb-R\><rsup|n>>
    with <math|a\<leqslant\>b> and <math|\<varepsilon\>\<gtr\>0> then there
    exists a <math|a<rprime|'>\<in\>\<bbb-R\><rsup|n>> such that
    <math|<around*|[|a,b|[>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[>>
    and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rprime|'><rsub|i>-a<rsub|i><rprime|'>|)>\<leqslant\>v<rsup|n><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>>
  </lemma>

  <\proof>
    First if <math|<around*|[|a,b|[>=\<emptyset\>> define then
    <math|a<rprime|'>,b<rprime|'>> by \ <math|a<rprime|'><rsub|i>=0,b<rsub|i><rprime|'>=<around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>>.
    Then <math|a<rprime|'>\<less\>b<rprime|'>>,
    <math|<around*|[|a,b|[>=\<emptyset\>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[>>
    and <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>=<around*|(|<around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>|)><rsup|n>\<equallim\><rsub|<text|<reference|properties
    of general power>>><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>> which
    proves the theorem for the case <math|<around*|[|a,b|[>=\<emptyset\>>. So
    we are left with the case where <math|<around*|[|a,b|[>\<neq\>\<emptyset\>>.
    In this case we must have <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    that <math|a<rsub|i>\<less\>b<rsub|i>> [otherwise
    <math|<around*|[|a,b|[>=\<emptyset\>>].\ 

    We prove the theorem by induction so let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|\<forall\>\<varepsilon\>\<gtr\>0,\<forall\>a,b\<in\>\<bbb-R\><rsup|n>
    with a\<less\>b there exists a<rprime|'>,b<rprime|'>\<in\>\<bbb-R\><rsup|n>
    with <around*|[|a,b|[>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[><infix-and><big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>\<leqslant\>v<rsup|n><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>|}>>
    then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Let <math|a,b\<in\>\<bbb-R\><rsup|1>>
      with <math|a\<less\>b> and <math|\<varepsilon\>\<gtr\>0> and take
      <math|a<rprime|'>=a-\<varepsilon\>,b<rprime|'>=b> then
      <math|<around*|[|a,b|[>\<subseteq\><around*|]|a-\<varepsilon\>,b|[>=<around*|]|a<rprime|'>,b<rprime|'>|[>>
      and <math|<big|prod><rsub|i=1><rsup|1><around*|(|b<rprime|'><rsub|1>-a<rprime|'><rsub|1>|)>=b<rprime|'>-a<rprime|'>=b-<around*|(|a-\<varepsilon\>|)>=<around*|(|b-a|)>+\<varepsilon\>>
      which proves that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
      <math|a=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n+1>|)>,<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n+1>|)>\<in\>\<bbb-R\><rsup|n+1>>
      with <math|a\<less\>b> then <math|<wide|a|\<bar\>>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>,<wide|b|\<bar\>>=<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      with <math|<wide|a|\<bar\>>\<less\><wide|b|\<bar\>>>. Take
      <math|\<varepsilon\>\<gtr\>0>. As <math|n\<in\>\<cal-S\>> there exists
      a <math|<wide|a|\<bar\>><rprime|'>=<around*|(|a<rprime|'><rsub|1>,\<ldots\>,a<rprime|'><rsub|n>|)>,<wide|b|\<bar\>><rprime|'>=<around*|(|b;<rsub|1>,\<ldots\>,b<rprime|'><rsub|n>|)>>
      with <math|<below|<wide|a|\<bar\>><rprime|'>\<less\><wide|b<rprime|'>|\<bar\>>|>>
      such that <math|<around*|[|<wide|a|\<bar\>>,<wide|b|\<bar\>>|[>\<subseteq\><around*|]|<wide|a|\<bar\>><rprime|'>,<wide|b|\<bar\>><rprime|'>|[>>
      and <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>\<less\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>+<frac|\<varepsilon\>|4\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>>.
      </description>

    \;
  </proof>

  The Lebesgue measurable sets have the following properties.

  <\proposition>
    <label|alternative formule for lebesgue measure (1)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|A\<in\>\<cal-L\><rsup|n>>
    [<math|A> is a Lebsegue measurable set] then

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>=inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U
      open in \<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>
    </equation*>

    Note: As <math|\<bbb-R\><rsup|n>> is open and
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<cal-L\><rsup|n>> we
    have that <math|inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U
    open in \<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>>
    is well defined.
  </proposition>

  <\proof>
    First for all <math|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> with
    <math|A\<subseteq\>U> we have <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|U|)>>
    so that <math|\<lambda\><rsup|n><around*|(|A|)>> is a lower bound of
    <math|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>>
    hence\ 

    <\equation>
      <label|eq 18.167.027>\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>
    </equation>

    Now for the inverse inequality, consider the following possible cases for
    <math|\<lambda\><around*|(|A|)>>

    <\description>
      <item*|<math|\<lambda\><around*|(|A|)>=\<infty\>>>then trivially\ 

      <\equation*>
        inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<infty\>=\<lambda\><around*|(|A|)>
      </equation*>

      <item*|<math|\<lambda\><around*|(|A|)>\<less\>\<infty\>>>Let
      <math|\<varepsilon\>\<gtr\>0> then as
      <math|\<lambda\><rsup|n><around*|(|A|)>\<equallim\><rsub|<text|<reference|Lebesgue
      measure space on R^n>,<reference|outer measure definition on
      rectangles>>>inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\><rsup|n>\<wedge\>A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>|}>|)>>
      there exists a <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\><rsup|n>>
      with <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>>
      and <math|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>+<frac|\<varepsilon\>|2>>.
      TODO CORRECT THIS. As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|R<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>> where
      <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\><rsup|n>> with
      <math|a<rsub|i>\<leqslant\>b<rsub|i>> we can define
      <math|S<rsub|i>=<around*|]|a<rsub|i>-<frac|\<varepsilon\>|2<rsup|i+1>>,b<rsub|i>|[>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>.
      Then we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|S<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|b<rsub|i>-<around*|(|a<rsub|i>-<frac|\<varepsilon\>|2<rsup|i+1>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|i+1>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>+<frac|\<omega\>|2>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>+<frac|1|2>\<cdot\>\<varepsilon\>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<lambda\><rsup|n><around*|(|A|)>+<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<lambda\><rsup|n><around*|(|A|)>+\<varepsilon\>>>>>
      </eqnarray*>

      As <math|\<varepsilon\>\<gtr\>0> was choosen aribitrary we have by
      <reference|consequence of the Archimedean property (2)> that
      <math|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|S<rsub|i>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>>.
      As <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
      so that <math|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|S<rsub|i>|)>\<in\><around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>>
      we have\ 

      <\equation*>
        inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<lambda\><around*|(|A|)>
      </equation*>
    </description>

    Hence in all cases we have <math|inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<lambda\><around*|(|A|)>>
    wich combined with <reference|eq 18.167.027> proves that\ 

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>
    </equation*>
  </proof>

  <\proposition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and <math|A\<in\>\<cal-L\><rsup|n>>
    [<math|A> is a Lebsegue measurable set] then

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>:K\<subseteq\>A\<wedge\>K
      is compact in \<cal-T\><rsub|\<bbb-R\>>|}>|)>
    </equation*>

    Note: As compact spaces are closed in <math|\<bbb-R\><rsup|n>> [see
    <reference|compact subspaces are closed> and <reference|metric spaces are
    Hausdorff>] we have by <reference|Lebesgue measurable sets alternatives>
    that every compact sets is Lebesgue measurable, also <math|\<emptyset\>>
    is a compact set with <math|\<emptyset\>\<subseteq\>A>. So
    <math|sup<around*|(|<around*|{|\<lambda\><around*|(|K|)>:K\<subseteq\>A\<wedge\>K
    is compact in \<cal-T\><rsub|\<bbb-R\>>|}>|)>> is well defined.
  </proposition>

  <\proof>
    First if <math|K> is compact with <math|K\<subseteq\>A> then we have
    <math|\<lambda\><rsup|n><around*|(|K|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)><rsup|>>
    so that\ 

    <\equation>
      <label|eq 18.168.027>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A<text|
      and >K compact|}>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    For the opposite inequality we prove this first for the bounded case. So
    assume that <math|A> is bounded then [see <reference|bound sets in a
    normed space>] there exists a <math|M\<in\>\<bbb-R\>> such that
    <math|\<forall\>a\<in\>A> we have <math|<around*|\<\|\|\>|a|\<\|\|\>><rsub|max>\<leqslant\>M>.
    Hence

    <\equation>
      <label|eq 18.169.027>A\<subseteq\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>
    </equation>

    From <math|<reference|closed balls are closed>> it follows that
    <math|><math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>>
    is closed and as it is bounded it follows from <math|<reference|compact
    subsets of the reals>> that <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>>
    is compact. Hence if we take <math|<wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>=C>
    then\ 

    <\equation>
      <label|eq 18.170.027>A\<subseteq\>C<text| where >C<text| is compact
      closed and bounded>
    </equation>

    Further if <math|y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>>
    then <math|<around*|\<\|\|\>|y|\<\|\|\>><rsub|max>\<leqslant\>M> or
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|0\<leqslant\><around*|\||y<rsub|i>|\|>\<leqslant\>M\<less\>M+1\<Rightarrow\>-<around*|(|M+1|)>\<less\>y<rsub|i>\<less\>M+1>
    or <math|y\<in\><big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-<around*|(|M+1|)>,<around*|(|M+1|)>|[>>.
    So <math|A\<subseteq\>C\<subseteq\><big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-<around*|(|M+1|)>,<around*|(|M+1|)>|[>>
    or <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|C|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-<around*|(|M+1|)>,<around*|(|M+1|)>|[>|)>=v<rsup|n><around*|(|<big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-<around*|(|M+1|)>,<around*|(|M+1|)>|[>|)>=<big|sqcap><rsub|i=1><rsup|n><around*|(|2\<cdot\><around*|(|M+1|)>|)>\<less\>\<infty\>>
    proving that

    <\equation>
      <label|eq 18.171.027>\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|C|)>\<less\>\<infty\>
    </equation>

    As <math|C> is closed we have that <math|C\<in\>\<cal-L\><rsup|n>> [see
    \ <reference|Borel algebra on R^n equivalences>] and as also
    <math|A\<in\>\<cal-L\><rsup|n>> it follows that
    <math|C\\A\<in\>\<cal-L\><rsup|n>>. Take <math|\<varepsilon\>\<gtr\>0>
    then by <reference|alternative formule for lebesgue measure (1)> we have\ 

    <\equation>
      <label|eq 18.172.027>\<exists\>U<text| open >with
      C\\A\<subseteq\>U<text| such that >\<lambda\><rsup|n><around*|(|U|)>\<less\>\<lambda\><rsup|n><around*|(|C\\A|)>+\<varepsilon\>
    </equation>

    As <math|U> is open we have that <math|L=C\\U> is closed and as
    <math|L\<subseteq\>C> [a compact set], we have by <reference|compactness
    and closed sets> that

    <\equation>
      <label|eq 18.173.027>L=C\\U<text| is compact> <around*|[|and thus also
      closed hence L\<in\>\<cal-L\><rsup|n>|]>
    </equation>

    Further as <math|C\<subseteq\><around*|(|C\\U|)><big|cup>U=L<big|cup>U it
    follows <around*|[|see |\<nobracket\>>><reference|measure is
    subadditive>] that\ 

    <\equation>
      <label|eq 18.174.027>\<lambda\><rsup|n><around*|(|C|)>\<leqslant\>\<lambda\><rsup|n><around*|(|L|)>+\<lambda\><rsup|n><around*|(|U|)>
    </equation>

    Now as <math|A\<subseteq\>C> [see <reference|eq 18.170.027>] and
    <math|\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\>> [see
    <reference|eq 18.171.027>] we have by <reference|measure properties (1)>
    that

    <\equation>
      <label|eq 18.175.027>\<lambda\><rsup|n><around*|(|C\\A|)>=\<lambda\><rsup|n><around*|(|C|)>-\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    Next\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsup|n><around*|(|C|)>>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.174.027>>>>|<cell|\<lambda\><rsup|n><around*|(|L|)>+\<lambda\><rsup|n><around*|(|U|)><text|>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
      18.172.027>>>>|<cell|\<lambda\><rsup|n><around*|(|L|)>+\<lambda\><rsup|n><around*|(|C\\A|)>+\<varepsilon\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.175.027>>>>|<cell|\<lambda\><rsup|n><around*|(|L|)>+\<lambda\><rsup|n><around*|(|C|)>-\<lambda\><rsup|n><around*|(|A|)>+\<varepsilon\>>>>>
    </eqnarray*>

    which as <math|\<lambda\><rsup|n><around*|(|C|)>,\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\>>
    proves using <reference|x+z=y+z=\<gtr\>x=y> that
    <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|L|)>+\<varepsilon\>>.
    As <math|\<varepsilon\>\<gtr\>0> was choosen arbitrary it follows from
    <reference|consequence of the Archimedean property (2)> that\ 

    <\equation>
      <label|eq 18.176.027>\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|L|)>
    </equation>

    Further if <math|x\<in\>L=C\\U> then <math|x\<in\>C\<wedge\>x\<nin\>U>,
    if <math|x\<nin\>A> then <math|x\<in\>C\\A\<subseteq\><rsub|<text|<reference|eq
    18.172.027>>>U> contradicting <math|x\<nin\>U> hence we must have
    <math|x\<in\>A>. So <math|L\<subseteq\>A> and as <math|L> is compact [see
    <reference|eq 18.173.027>] we have that
    <math|\<lambda\><rsup|n><around*|(|L|)>\<in\><around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
    compact|}>> proving that <math|><math|\<lambda\><rsup|n><around*|(|L|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
    compact|}>|)>>. Using <reference|eq 18.176.027> we have then that
    <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
    compact|}>|)>>. Combining this with <reference|eq 18.168.027> proves

    <\equation>
      <label|eq 18.177.027>If A\<in\>\<cal-L\><rsup|n> is bounded then
      \<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>:K\<subseteq\>A\<wedge\>K
      is compact|}>|)>
    </equation>

    Next consider the case where <math|A\<in\>\<cal-L\><rsup|n>> is not
    neccesarely bounded. Then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|=>|<cell|A<big|cap>\<bbb-R\><rsup|n>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|R^n
      is a unin of rectangles>>>>|<cell|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
      <text| where >A<rsub|i>=A<big|cap><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>\<in\>\<cal-L\><rsup|n>>>>>
    </eqnarray*>

    If <math|x\<in\>A<rsub|i>> then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|-i\<leqslant\>x<rsub|j>\<less\>i> so that
    <math|<around*|\||x<rsub|j>|\|>\<leqslant\>i>, hence
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>\<leqslant\>i> which proves
    that <math|A<rsub|i>> is bounded. Further
    <math|A<rsub|i>=A<big|cap><around*|[|<around*|(|-i|)>,<around*|(|i|)>|[>\<subseteq\>A<big|cap><around*|[|<around*|(|-<around*|(|i+1|)>|)>,<around*|(|i+1|)>|[>=A<rsub|i+1>>
    To summarise\ 

    <\equation>
      <label|eq 18.17.027>If A\<in\>\<cal-L\><rsup|n> then
      \<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|n>
      with A<rsub|i>\<subseteq\>A<rsub|i+1>\<wedge\>A<rsub|i> is bounded \ so
      that A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
    </equation>

    Using <reference|measure properties (2)> on the above gives

    <\equation>
      <label|eq 18.179.027>\<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    Assume now that <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>>
    then by the above there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such
    that <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A<rsub|i>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>>.
    As <math|A<rsub|i>\<in\>\<cal-L\><rsup|n>> is bounded we have by
    <reference|eq 18.177.027> that <math|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A<rsub|i>|}>|)>>. So there exists a compact
    set <math|L> with <math|L\<subseteq\>A<rsub|i>> such that
    <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|L|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A<rsub|i>|)>.>
    As <math|A<rsub|i>\<subset\>A> we have <math|L\<subseteq\>A> and reach
    the contraction <math|><math|\<lambda\><rsup|n><around*|(|L|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|L|)>>
    Hence the assumption <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>>
    is wrong proving that <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>>. So by <reference|eq 18.168.027> we
    have\ 

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>
    </equation*>

    in the general case.
  </proof>

  <subsection|<math|Negligibity,Completeness<infix-and>Regularity>>

  <\definition>
    <label|negligibility><index|<math|\<mu\>>-negligible>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|S\<subseteq\>X> is <math|\<mu\>>-negligible iff there
    exists a <math|A\<in\>\<cal-A\>> with <math|\<mu\><around*|(|A|)>> such
    that <math|S\<subseteq\>A>. The set of all <math|\<mu\>>-negligible sets
    is noted as <math|\<cal-N\><rsub|\<mu\>>> so
    <math|\<cal-N\><rsub|\<mu\>>=<around*|{|S\<in\>\<cal-P\><around*|(|X|)>\|\<exists\>A\<in\>\<cal-A\><text|
    such that> S\<subseteq\>A|}>>.
  </definition>

  <\lemma>
    <label|negligible set properties>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then we have\ 

    <\enumerate>
      <item><math|\<emptyset\>\<in\>\<cal-N\><rsub|\<mu\>>>

      <item>If <math|S\<in\>\<cal-N\><rsub|\<mu\>>> then if
      <math|T\<subseteq\>S> we have <math|T\<in\>\<cal-N\><rsub|\<mu\>>>

      <item>If <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      then <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>This is trivial as <math|\<emptyset\>\<subseteq\>\<emptyset\>>
      and <math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>As <math|S> is <math|\<mu\>>-negligible there exists a
      <math|A\<in\>\<cal-A\>> with <math|\<mu\><around*|(|S|)>=0> such that
      <math|S\<subseteq\>A> which as <math|T\<subseteq\>S\<Rightarrow\>T\<subseteq\>A>
      proves that <math|T> is <math|\<mu\>>-negligible.

      <item>As <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      ther exists a <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|S<rsub|i>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>=0>. Further using
      <reference|measure is subadditive> we have that
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>
      which as <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proves that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>>.
    </enumerate>
  </proof>

  Using the concept of <math|\<mu\>>-negligable we can introduce the concept
  of almost everywhere predicates and complete measures.

  <\definition>
    <label|almost complete><index|almost everyware>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|P<around*|(|x|)>> a predicate then <math|P> is
    <with|font-series|bold|almost everywhere true> if
    <math|<around*|{|x\<in\>X\|P<around*|(|x|)><text| is
    false>|}>\<in\>\<cal-N\><rsub|\<mu\>>>. In other words the set where the
    predicate does not hold is <math|\<mu\>>-negligible.
  </definition>

  <\definition>
    <label|complete measures><index|complete measures>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    spave then <math|\<mu\>> is <with|font-series|bold|complete> if every
    <math|\<mu\>>-negligible set is in <math|\<cal-A\>>. In other words
    <math|\<mu\>> is <with|font-series|bold|complete> if
    <math|\<cal-N\><rsub|\<mu\>>\<subseteq\>\<cal-A\>>. If in
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> <math|\<mu\>>
    is <with|font-series|bold|complete> then
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> is called a
    <with|font-series|bold|complete measure space>.
  </definition>

  <\proposition>
    Let <math|X> be a set and <math|\<varphi\>> a outer measure on <math|X>
    then <math|<around*|\<langle\>|X,\<cal-M\><rsub|\<varphi\>><around*|[|X|]>,\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>|\<rangle\>>>
    [see <reference|Caratheodore>] is is a complete measure space.
  </proposition>

  <\proof>
    If <math|S\<in\>\<cal-N\><rsub|\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>>>
    then <math|\<exists\>A\<in\>\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>
    with <math|\<varphi\><around*|(|A|)>=\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>><around*|(|A|)>=0>
    and <math|S\<subseteq\>A>. Hence <math|\<varphi\><around*|(|S|)>\<leqslant\>\<varphi\><around*|(|A|)>>
    so that <math|\<varphi\><around*|(|S|)>=0>. Applying then
    <reference|measurable sets and null sets> proves that
    <math|S\<in\>N<rsub|\<varphi\><rsub|\|\<cal-M\><rsub|\<varphi\>><around*|[|X|]>>>>.
  </proof>

  Using the defiition of Lebesgue measure spaces [see <reference|Lebesgue
  measure space> and <reference|Lebesgue measure space on R^n>] we have then
  that

  <\corollary>
    <label|Lebesgue measure spaces are complete><math|<around*|\<langle\>|\<bbb-R\>,\<cal-L\>,\<lambda\>|\<rangle\>>>
    and <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>,
    <math|n\<in\>\<bbb-N\><rsub|0>> are complete measure spaces.
  </corollary>

  We proceed now to show how to extend a measure space to a complete measure
  space.\ 

  <\lemma>
    <label|completion lemma>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space, <math|A\<subseteq\>X> and <math|E,F\<in\>\<cal-A\>>
    such that <math|E\<subseteq\>A\<subseteq\>F> and
    <math|\<mu\><around*|(|F\\E|)>=0> then\ 

    <\equation*>
      \<mu\><around*|(|F|)>=\<mu\><around*|(|E|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\><text|
      and> B\<subseteq\>A|}>|)>
    </equation*>
  </lemma>

  <\proof>
    As <math|E\<subseteq\>F> we have that
    <math|F=<around*|(|F\\E|)><big|sqcup>E> [see <reference|distributivity of
    union or intersection>] hence <math|\<mu\><around*|(|F|)>=\<mu\><around*|(|F\\E|)>+\<mu\><around*|(|E|)>=0+\<mu\><around*|(|E|)>>
    giving\ 

    <\equation>
      <label|eq 18.167.026>\<mu\><around*|(|E|)>=\<mu\><around*|(|F|)>
    </equation>

    Further if <math|B\<in\>\<cal-A\>> with <math|B\<subseteq\>A> then
    <math|B\<subseteq\>F> then <math|\<mu\><around*|(|B|)>\<leqslant\>\<mu\><around*|(|F|)>=\<mu\><around*|(|E|)>>
    hence <math|sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>\<leqslant\>\<mu\><around*|(|E|)>>.
    As also <math|E\<in\>\<cal-A\>> and <math|E\<subseteq\>A> we have
    <math|\<mu\><around*|(|E|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>>.
    So we have\ 

    <\equation*>
      \<mu\><around*|(|E|)>=\<mu\><around*|(|F|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>
    </equation*>
  </proof>

  <\definition>
    <index|<math|A<rsub|\<mu\>>>>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>><space|1em>such
    that a measure then <math|\<cal-A\><rsub|\<mu\>>> is defined by
    <math|\<cal-A\><rsub|\<mu\>>=<around*|{|A\<subseteq\>X\|\<exists\>E,F\<in\>\<cal-A\><text|
    such that >E\<subseteq\>A\<subseteq\>F<text| and
    >\<mu\>*<around*|(|F\\E|)>=0|}>>. The set <math|\<cal-A\><rsub|\<mu\>>>
    is called the completion of <math|\<cal-A\>> under <math|\<mu\>>. Further
    we define\ 

    <\equation*>
      <wide|\<mu\>|\<bar\>>:\<cal-A\><rsub|\<mu\>>\<rightarrow\><around*|[|0,\<infty\>|]>
      by <wide|\<mu\>|\<bar\>><around*|(|A|)>=\<mu\><around*|(|E|)>=\<mu\><around*|(|F|)>
      <text|where <math|E,F\<in\>\<cal-A\>>,
      <math|\<mu\><around*|(|F\\E|)>=0> and >E\<subseteq\>A\<subseteq\>F
    </equation*>

    We must of crouse prove that this definition is independent of the choice
    of <math|E>,F
  </definition>

  <\proof>
    Let <math|E<rprime|'>,F<rprime|'>\<in\>\<cal-A\>> be another pair of sets
    with <math|E<rprime|'>\<subseteq\>A\<subseteq\>F<rprime|'>> and
    <math|\<mu\><around*|(|F<rprime|'>\\E<rprime|'>|)>=0> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|E<rprime|'>|)>>|<cell|\<equallim\><rsub|<text|<reference|completion
      lemma>>>>|<cell|\<mu\><around*|(|F<rprime|'>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|completion
      lemma>>>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|completion
      lemma>>>>|<cell|\<mu\><around*|(|F|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|completion
      lemma>>>>|<cell|\<mu\><around*|(|E|)>>>>>
    </eqnarray*>
  </proof>

  <\proposition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then <math|\<cal-A\><rsub|\<mu\>>> is a
    <math|\<sigma\>>-algebra on <math|X> with
    <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>>. Further
    <math|<wide|\<mu\>|\<bar\>>:\<cal-A\><rsub|\<mu\>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure with <math|<around*|(|<wide|\<mu\>|\<bar\>>|)><rsub|\|\<cal-A\>>=\<mu\>>
    and finally <math|<around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<wide|\<mu\>|\<bar\>>|\<rangle\>>>
    is complete.
  </proposition>

  <\proof>
    If <math|A\<in\>\<cal-A\>> then <math|A\<subseteq\>A\<subseteq\>A> and
    <math|\<mu\><around*|(|A\\A|)>=\<mu\><around*|(|\<emptyset\>|)>=0> so
    that <math|A\<in\>\<cal-A\><rsub|\<mu\>>>, hence

    <\equation>
      <label|eq 18.168.026>\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>
    </equation>

    As <math|\<emptyset\>\<in\>\<cal-A\>> we have by <reference|eq
    18.168.026> that\ 

    <\equation>
      <label|eq 18.169.026>\<emptyset\>\<in\>\<cal-A\><rsub|\<mu\>>
    </equation>

    If <math|A\<in\>\<cal-A\><rsub|\<mu\>>> then there exists
    <math|E,F\<in\>\<cal-A\>> such that <math|E\<subseteq\>A\<subseteq\>F>
    amd <math|\<mu\><around*|(|F\\E|)>=\<emptyset\>>. Using
    <reference|distributivity of union or intersection> it follows that
    <math|X\\F\<subseteq\>X\\A\<subseteq\>X\\E> where as <math|\<cal-A\>> is
    a <math|\<sigma\>>-algebra we have that <math|X\\E,X\\F\<in\>\<cal-A\>>.
    Further\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|(|X\\E|)>\\<around*|(|X\\F|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\\E\<wedge\>x\<nin\>X\\F>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>E|)>\<wedge\>\<neg\><around*|(|x\<in\>X\<wedge\>x\<nin\>F|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>E|)>\<wedge\><around*|(|x\<nin\>X\<vee\>x\<in\>F|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>E\<wedge\>x\<nin\>X|)>\<vee\><around*|(|x\<in\>X\<wedge\>x\<nin\>E\<wedge\>x\<in\>F|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\>x\<nin\>E\<wedge\>x\<in\>F>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|F\<subseteq\>X>>|<cell|x\<nin\>E\<wedge\>x\<in\>F>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|F\\E>>>>
    </eqnarray*>

    Hence <math|><math|<around*|(|X\\E|)>\\<around*|(|X\\F|)>=F\\E> giving
    <math|\<mu\><around*|(|<around*|(|X\\E|)>\\<around*|(|X\\F|)>|)>=\<mu\><around*|(|F\\E|)>=0>.
    So we conclude that\ 

    <\equation>
      <label|eq 18.170.026>\<forall\>A\<in\>\<cal-A\><rsub|\<mu\>><text| we
      have >X\\A\<in\>\<cal-A\><rsub|\<mu\>>
    </equation>

    Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\><rsub|\<mu\>>>
    then there exists <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>,<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|o>>
    <math|E<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>F<rsub|i>> and
    <math|\<mu\><around*|(|F<rsub|i>\\E<rsub|i>|)>=0 .> Then we have

    <\equation>
      <label|eq 18.171.026><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>E<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>
    </equation>

    where <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>E<rsub|i>,<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>\<in\>\<cal-A\>>.
    Further if <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>>
    then <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>> and
    <math|x\<nin\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>> hence
    <math|\<exists\>i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>F<rsub|i>> and <math|x\<nin\><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|j>\<Rightarrow\>x\<nin\>E<rsub|i>>
    hence <math|x\<in\>F<rsub|i>\\E<rsub|i>>, proving that
    <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|F<rsub|i>-E<rsub|i>|)>>.
    So

    <\equation>
      <label|eq 18.172.026>\<mu\><around*|(|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|F<rsub|i>\\E<rsub|i>|)>|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\><rsub|0>>\<mu\><around*|(|F<rsub|i>\\E<rsub|i>|)>=0.
    </equation>

    So we conclude that\ 

    <\equation>
      <label|eq 18.173.026>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\><rsub|\<mu\>><text|
      we have ><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-A\><rsub|0>
    </equation>

    From <reference|eq 18.169.026>, <reference|eq 18.170.026> and
    <reference|eq 18.173.026> it follows that\ 

    <\equation>
      <label|eq 18.174.026>\<cal-A\><rsub|\<mu\>> <text|is a
      >\<sigma\><text|-algebra>
    </equation>

    Now as <math|\<emptyset\>\<in\>\<cal-A\>> and
    <math|\<emptyset\>\<subseteq\>\<emptyset\>\<subseteq\>\<emptyset\>> we
    have that <math|<wide|\<mu\>|\<bar\>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>
    proving that

    <\equation>
      <label|eq 18.175.026><wide|\<mu\>|\<bar\>><around*|(|\<emptyset\>|)>=0
    </equation>

    If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\><rsub|\<mu\>>>
    is a pairwise disjoint family of sets in <math|\<cal-A\><rsub|\<mu\>>>
    then there exists <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>,<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|o>>
    <math|E<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>F<rsub|i>> and
    <math|\<mu\><around*|(|F<rsub|i>\\E<rsub|i>|)>=0 .> Furthermore if
    <math|i,j\<in\>\<bbb-N\><rsub|0>> with <math|i\<neq\>j> then
    <math|E<rsub|i><big|cap>E<rsub|j>\<subseteq\>A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
    hence <math|<around*|{|E<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is
    pairwise disjoint, So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<wide|\<mu\>|\<bar\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.171.026>,<reference|eq 18.172.026>>>>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\>
      is a measure>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|E<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><wide|\<mu\>|\<bar\>><around*|(|E<rsub|i>|)>>>>>
    </eqnarray*>

    The above together with <reference|eq 18.175.026> proves that
    <math|<wide|\<mu\>|\<bar\>>> is a measure, hence\ 

    <\equation>
      <label|eq 18.176.026><around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<wide|\<mu\>|\<bar\>>|\<rangle\>>
      is a measure space
    </equation>

    If <math|A\<in\>\<cal-A\>> then as <math|A\<subseteq\>A\<subseteq\>A> and
    <math|\<mu\><around*|(|A\\A|)>=\<mu\><around*|(|\<emptyset\>|)>=0> we
    have that <math|<wide|\<mu\>|\<bar\>><around*|(|A|)>=\<mu\><around*|(|A|)>>
    proving that\ 

    <\equation>
      <label|eq 18.177.026><around*|(|<wide|\<mu\>|\<bar\>>|)><rsub|\|\<cal-A\>>=\<mu\>
    </equation>

    Let <math|A\<subseteq\>X> such that <math|\<exists\>B\<in\>\<cal-A\><rsub|\<mu\>>>
    with <math|A\<subseteq\>B> and <math|<wide|\<mu\>|\<bar\>><around*|(|B|)>=0>
    then there exists a <math|E,F\<in\>\<cal-A\>> with
    <math|E\<subseteq\>B\<subseteq\>F> and <math|\<mu\><around*|(|F\\E|)>=0>
    such that <math|<wide|\<mu\>|\<bar\>><around*|(|B|)>=\<mu\><around*|(|F|)>=0>.
    Next as <math|\<emptyset\>\<subseteq\>A\<subseteq\>B\<subseteq\>F> and
    <math|\<mu\><around*|(|F\\\<emptyset\>|)>=\<mu\><around*|(|F|)>=0> it
    follows that <math|A\<in\>\<cal-A\><rsub|\<mu\>>>. Hence

    <\equation*>
      <around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<wide|\<mu\>|\<bar\>>|\<rangle\>>
      is complete
    </equation*>
  </proof>

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|767>
    <associate|page-medium|papyrus>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Borel algebra is generated by closed sets|<tuple|18.18|?>>
    <associate|Borel algebra on R|<tuple|18.16|?>>
    <associate|Borel algebra on R^n|<tuple|18.17|?>>
    <associate|Borel algebra on R^n (1)|<tuple|18.40|?>>
    <associate|Borel algebra on R^n (2)|<tuple|18.45|?>>
    <associate|Borel algebra on R^n equivalences|<tuple|18.46|?>>
    <associate|Borel algebras on R|<tuple|18.23|?>>
    <associate|Caratheodore|<tuple|18.60|?>>
    <associate|Dyadic cube properties|<tuple|18.36|?>>
    <associate|Dyadic cubes|<tuple|18.33|?>>
    <associate|Dyadic interval basic property|<tuple|18.35|?>>
    <associate|Lebesgue measurable sets alternatives|<tuple|18.74|?>>
    <associate|Lebesgue measure space|<tuple|18.66|?>>
    <associate|Lebesgue measure space on R^n|<tuple|18.72|?>>
    <associate|Lebesgue measure spaces are complete|<tuple|18.83|?>>
    <associate|Lower half spaces|<tuple|18.43|?>>
    <associate|R can be covered by open intervals|<tuple|18.63|?>>
    <associate|R^n is a unin of rectangles|<tuple|18.68|?>>
    <associate|]a,b[ subset of [a',b'[=\<gtr\>a\<less\>a' and
    b\<less\>=b'|<tuple|18.21|?>>
    <associate|algebra equivalent definitions|<tuple|18.6|?>>
    <associate|algebra of sets|<tuple|18.5|?>>
    <associate|almost complete|<tuple|18.80|?>>
    <associate|alternative formule for lebesgue measure (1)|<tuple|18.76|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|18.2.2|?>>
    <associate|auto-11|<tuple|<with|mode|<quote|math>|\<cal-R\><rsup|n>>|?>>
    <associate|auto-12|<tuple|Dyadic cubes|?>>
    <associate|auto-13|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>|?>>
    <associate|auto-15|<tuple|lower half open space|?>>
    <associate|auto-16|<tuple|<with|mode|<quote|math>|<around*|]|-\<infty\>,a|[><rsub|i>>|?>>
    <associate|auto-17|<tuple|Lower half spaces|?>>
    <associate|auto-18|<tuple|18.3|?>>
    <associate|auto-19|<tuple|18.3.1|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-20|<tuple|18.3.2|?>>
    <associate|auto-21|<tuple|Carath�odory theorem|?>>
    <associate|auto-22|<tuple|18.3.3|?>>
    <associate|auto-23|<tuple|Lebesgue measurable space|?>>
    <associate|auto-24|<tuple|Lebesgue measure|?>>
    <associate|auto-25|<tuple|Lebesgue measurable set|?>>
    <associate|auto-26|<tuple|18.3.4|?>>
    <associate|auto-27|<tuple|<with|mode|<quote|math>|\<varphi\><rsup|n>>|?>>
    <associate|auto-28|<tuple|18.3.5|?>>
    <associate|auto-29|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible|?>>
    <associate|auto-3|<tuple|18.2|?>>
    <associate|auto-30|<tuple|almost everyware|?>>
    <associate|auto-31|<tuple|complete measures|?>>
    <associate|auto-32|<tuple|<with|mode|<quote|math>|A<rsub|\<mu\>>>|?>>
    <associate|auto-4|<tuple|algebra|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-7|<tuple|Borel algebra|?>>
    <associate|auto-8|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>|?>>
    <associate|auto-9|<tuple|18.2.1|?>>
    <associate|boundaries of a rectangle are unique|<tuple|18.28|?>>
    <associate|bounded intervals|<tuple|18.19|?>>
    <associate|complete measures|<tuple|18.81|?>>
    <associate|completion lemma|<tuple|18.84|?>>
    <associate|countable additivity implies additivity|<tuple|18.49|?>>
    <associate|empty rectaangles|<tuple|18.26|?>>
    <associate|eq 18.1.014|<tuple|18.5|?>>
    <associate|eq 18.1.016|<tuple|18.1|?>>
    <associate|eq 18.10.021|<tuple|18.10|?>>
    <associate|eq 18.108.021|<tuple|18.111|?>>
    <associate|eq 18.109.021|<tuple|18.112|?>>
    <associate|eq 18.11.021|<tuple|18.11|?>>
    <associate|eq 18.111.021|<tuple|18.113|?>>
    <associate|eq 18.112.021|<tuple|18.115|?>>
    <associate|eq 18.112.021.1|<tuple|18.114|?>>
    <associate|eq 18.113.021|<tuple|18.116|?>>
    <associate|eq 18.114.021|<tuple|18.117|?>>
    <associate|eq 18.115.021|<tuple|18.118|?>>
    <associate|eq 18.116.021|<tuple|18.119|?>>
    <associate|eq 18.117.021|<tuple|18.120|?>>
    <associate|eq 18.118.021|<tuple|18.121|?>>
    <associate|eq 18.119.021|<tuple|18.122|?>>
    <associate|eq 18.12.021|<tuple|18.12|?>>
    <associate|eq 18.120.021|<tuple|18.123|?>>
    <associate|eq 18.121.021|<tuple|18.124|?>>
    <associate|eq 18.122.021|<tuple|18.125|?>>
    <associate|eq 18.123.021|<tuple|18.126|?>>
    <associate|eq 18.127.025|<tuple|18.127|?>>
    <associate|eq 18.128.025|<tuple|18.128|?>>
    <associate|eq 18.129.025|<tuple|18.129|?>>
    <associate|eq 18.13.021|<tuple|18.13|?>>
    <associate|eq 18.130.025|<tuple|18.130|?>>
    <associate|eq 18.131.025|<tuple|18.131|?>>
    <associate|eq 18.132.025|<tuple|18.132|?>>
    <associate|eq 18.133.025|<tuple|18.133|?>>
    <associate|eq 18.134.025|<tuple|18.134|?>>
    <associate|eq 18.135.025|<tuple|18.135|?>>
    <associate|eq 18.136.025|<tuple|18.136|?>>
    <associate|eq 18.137.025|<tuple|18.137|?>>
    <associate|eq 18.138.025|<tuple|18.138|?>>
    <associate|eq 18.139.025|<tuple|18.139|?>>
    <associate|eq 18.14.021|<tuple|18.14|?>>
    <associate|eq 18.140.025|<tuple|18.140|?>>
    <associate|eq 18.141.025|<tuple|18.141|?>>
    <associate|eq 18.142.025|<tuple|18.142|?>>
    <associate|eq 18.143.025|<tuple|18.143|?>>
    <associate|eq 18.144.025|<tuple|18.144|?>>
    <associate|eq 18.145.025|<tuple|18.145|?>>
    <associate|eq 18.146.025|<tuple|18.146|?>>
    <associate|eq 18.147.025|<tuple|18.147|?>>
    <associate|eq 18.148.025|<tuple|18.148|?>>
    <associate|eq 18.149.025|<tuple|18.149|?>>
    <associate|eq 18.15.021|<tuple|18.15|?>>
    <associate|eq 18.150.025|<tuple|18.150|?>>
    <associate|eq 18.151.025|<tuple|18.151|?>>
    <associate|eq 18.152.025|<tuple|18.152|?>>
    <associate|eq 18.153.025|<tuple|18.153|?>>
    <associate|eq 18.154.025|<tuple|18.154|?>>
    <associate|eq 18.155.025|<tuple|18.155|?>>
    <associate|eq 18.156.025|<tuple|18.156|?>>
    <associate|eq 18.157.025|<tuple|18.157|?>>
    <associate|eq 18.158.025|<tuple|18.158|?>>
    <associate|eq 18.159.025|<tuple|18.159|?>>
    <associate|eq 18.16.021|<tuple|18.16|?>>
    <associate|eq 18.160.025|<tuple|18.160|?>>
    <associate|eq 18.161.025|<tuple|18.161|?>>
    <associate|eq 18.162.025|<tuple|18.162|?>>
    <associate|eq 18.163.025|<tuple|18.163|?>>
    <associate|eq 18.164.025|<tuple|18.164|?>>
    <associate|eq 18.165.025|<tuple|18.165|?>>
    <associate|eq 18.166.025|<tuple|18.166|?>>
    <associate|eq 18.167.026|<tuple|18.180|?>>
    <associate|eq 18.167.027|<tuple|18.167|?>>
    <associate|eq 18.168.026|<tuple|18.181|?>>
    <associate|eq 18.168.027|<tuple|18.168|?>>
    <associate|eq 18.169.026|<tuple|18.182|?>>
    <associate|eq 18.169.027|<tuple|18.169|?>>
    <associate|eq 18.17.021|<tuple|18.17|?>>
    <associate|eq 18.17.027|<tuple|18.178|?>>
    <associate|eq 18.170.026|<tuple|18.183|?>>
    <associate|eq 18.170.027|<tuple|18.170|?>>
    <associate|eq 18.171.026|<tuple|18.184|?>>
    <associate|eq 18.171.027|<tuple|18.171|?>>
    <associate|eq 18.172.026|<tuple|18.185|?>>
    <associate|eq 18.172.027|<tuple|18.172|?>>
    <associate|eq 18.173.026|<tuple|18.186|?>>
    <associate|eq 18.173.027|<tuple|18.173|?>>
    <associate|eq 18.174.026|<tuple|18.187|?>>
    <associate|eq 18.174.027|<tuple|18.174|?>>
    <associate|eq 18.175.026|<tuple|18.188|?>>
    <associate|eq 18.175.027|<tuple|18.175|?>>
    <associate|eq 18.176.026|<tuple|18.189|?>>
    <associate|eq 18.176.027|<tuple|18.176|?>>
    <associate|eq 18.177.026|<tuple|18.190|?>>
    <associate|eq 18.177.027|<tuple|18.177|?>>
    <associate|eq 18.179.027|<tuple|18.179|?>>
    <associate|eq 18.18.021|<tuple|18.18|?>>
    <associate|eq 18.19.021|<tuple|18.19|?>>
    <associate|eq 18.2.014|<tuple|18.6|?>>
    <associate|eq 18.2.016|<tuple|18.2|?>>
    <associate|eq 18.20.021|<tuple|18.20|?>>
    <associate|eq 18.21.021|<tuple|18.21|?>>
    <associate|eq 18.22.021|<tuple|18.22|?>>
    <associate|eq 18.23.021|<tuple|18.23|?>>
    <associate|eq 18.24.021|<tuple|18.24|?>>
    <associate|eq 18.25.020|<tuple|18.25|?>>
    <associate|eq 18.26.021|<tuple|18.26|?>>
    <associate|eq 18.27.021|<tuple|18.27|?>>
    <associate|eq 18.28.021|<tuple|18.28|?>>
    <associate|eq 18.29.021|<tuple|18.29|?>>
    <associate|eq 18.3.014|<tuple|18.7|?>>
    <associate|eq 18.3.016|<tuple|18.3|?>>
    <associate|eq 18.30.021|<tuple|18.30|?>>
    <associate|eq 18.31.021|<tuple|18.31|?>>
    <associate|eq 18.32.021|<tuple|18.32|?>>
    <associate|eq 18.33.021|<tuple|18.33|?>>
    <associate|eq 18.34.021|<tuple|18.34|?>>
    <associate|eq 18.35.021|<tuple|18.35|?>>
    <associate|eq 18.36.016|<tuple|18.62|?>>
    <associate|eq 18.36.021|<tuple|18.36|?>>
    <associate|eq 18.37.016|<tuple|18.63|?>>
    <associate|eq 18.37.021|<tuple|18.37|?>>
    <associate|eq 18.38.016|<tuple|18.64|?>>
    <associate|eq 18.38.021|<tuple|18.38|?>>
    <associate|eq 18.39.016|<tuple|18.64|?>>
    <associate|eq 18.39.022|<tuple|18.39|?>>
    <associate|eq 18.4.016|<tuple|18.4|?>>
    <associate|eq 18.40.016|<tuple|18.66|?>>
    <associate|eq 18.40.022|<tuple|18.40|?>>
    <associate|eq 18.41.016|<tuple|18.67|?>>
    <associate|eq 18.41.022|<tuple|18.41|?>>
    <associate|eq 18.42.016|<tuple|18.68|?>>
    <associate|eq 18.42.022|<tuple|18.42|?>>
    <associate|eq 18.43.016|<tuple|18.69|?>>
    <associate|eq 18.43.022|<tuple|18.43|?>>
    <associate|eq 18.44.016|<tuple|18.70|?>>
    <associate|eq 18.44.022|<tuple|18.44|?>>
    <associate|eq 18.45.016|<tuple|18.71|?>>
    <associate|eq 18.45.022|<tuple|18.45|?>>
    <associate|eq 18.46.016|<tuple|18.72|?>>
    <associate|eq 18.46.022|<tuple|18.46|?>>
    <associate|eq 18.47.016|<tuple|18.73|?>>
    <associate|eq 18.47.022|<tuple|18.47|?>>
    <associate|eq 18.48.016|<tuple|18.74|?>>
    <associate|eq 18.48.022|<tuple|18.48|?>>
    <associate|eq 18.49.016|<tuple|18.75|?>>
    <associate|eq 18.49.022|<tuple|18.49|?>>
    <associate|eq 18.50.016|<tuple|18.76|?>>
    <associate|eq 18.50.022|<tuple|18.50|?>>
    <associate|eq 18.51.016|<tuple|18.77|?>>
    <associate|eq 18.51.022|<tuple|18.51|?>>
    <associate|eq 18.52.016|<tuple|18.87|?>>
    <associate|eq 18.52.018|<tuple|18.78|?>>
    <associate|eq 18.52.022|<tuple|18.52|?>>
    <associate|eq 18.53.016|<tuple|18.88|?>>
    <associate|eq 18.53.018|<tuple|18.79|?>>
    <associate|eq 18.53.022|<tuple|18.53|?>>
    <associate|eq 18.54.016|<tuple|18.89|?>>
    <associate|eq 18.54.018|<tuple|18.80|?>>
    <associate|eq 18.54.022|<tuple|18.54|?>>
    <associate|eq 18.55.016|<tuple|18.90|?>>
    <associate|eq 18.55.018|<tuple|18.81|?>>
    <associate|eq 18.55.022|<tuple|18.55|?>>
    <associate|eq 18.56.016|<tuple|18.91|?>>
    <associate|eq 18.56.018|<tuple|18.82|?>>
    <associate|eq 18.56.022|<tuple|18.56|?>>
    <associate|eq 18.57.016|<tuple|18.92|?>>
    <associate|eq 18.57.018|<tuple|18.83|?>>
    <associate|eq 18.57.022|<tuple|18.57|?>>
    <associate|eq 18.58.016|<tuple|18.93|?>>
    <associate|eq 18.58.018|<tuple|18.84|?>>
    <associate|eq 18.58.022|<tuple|18.58|?>>
    <associate|eq 18.59.016|<tuple|18.94|?>>
    <associate|eq 18.59.018|<tuple|18.85|?>>
    <associate|eq 18.59.022|<tuple|18.59|?>>
    <associate|eq 18.60.016|<tuple|18.95|?>>
    <associate|eq 18.60.018|<tuple|18.86|?>>
    <associate|eq 18.60.023|<tuple|18.60|?>>
    <associate|eq 18.61.016|<tuple|18.96|?>>
    <associate|eq 18.61.023|<tuple|18.61|?>>
    <associate|eq 18.62.016|<tuple|18.97|?>>
    <associate|eq 18.74.018|<tuple|18.98|?>>
    <associate|eq 18.75.018|<tuple|18.99|?>>
    <associate|eq 18.76.018|<tuple|18.100|?>>
    <associate|eq 18.77.018|<tuple|18.101|?>>
    <associate|eq 18.78.018|<tuple|18.102|?>>
    <associate|eq 18.79.018|<tuple|18.103|?>>
    <associate|eq 18.8.020|<tuple|18.8|?>>
    <associate|eq 18.80.018|<tuple|18.104|?>>
    <associate|eq 18.81.018|<tuple|18.105|?>>
    <associate|eq 18.82.018|<tuple|18.106|?>>
    <associate|eq 18.83.018|<tuple|18.107|?>>
    <associate|eq 18.84.018|<tuple|18.108|?>>
    <associate|eq 18.85.018|<tuple|18.109|?>>
    <associate|eq 18.86.018|<tuple|18.110|?>>
    <associate|eq 18.9.020|<tuple|18.9|?>>
    <associate|every open set in R^n is a countable union of dyadic
    cubes|<tuple|18.38|?>>
    <associate|generated sigma algebra|<tuple|18.14|?>>
    <associate|half open rectangle as intersection of open
    sets|<tuple|18.39|?>>
    <associate|half spaces are Lebesgue measurable in R^n|<tuple|18.73|?>>
    <associate|intersection of sigma algebras is a sigma
    algebra|<tuple|18.13|?>>
    <associate|interval identities|<tuple|18.22|?>>
    <associate|length of interval is increasing|<tuple|18.31|?>>
    <associate|length of interval is increasing (1)|<tuple|18.31|?>>
    <associate|lower half open spaces|<tuple|18.41|?>>
    <associate|lower half open spaces are open|<tuple|18.42|?>>
    <associate|measurable set alternative definition|<tuple|18.58|?>>
    <associate|measurable sets and null sets|<tuple|18.59|?>>
    <associate|measurable space|<tuple|18.10|?>>
    <associate|measure|<tuple|18.48|?>>
    <associate|measure is subadditive|<tuple|18.51|?>>
    <associate|measure properties (1)|<tuple|18.50|?>>
    <associate|measure properties (2)|<tuple|18.52|?>>
    <associate|measureable set|<tuple|18.57|?>>
    <associate|negligibility|<tuple|18.78|?>>
    <associate|negligible set properties|<tuple|18.79|?>>
    <associate|open,half open and bounded intervals are
    different|<tuple|18.21|?>>
    <associate|outer measure|<tuple|18.54|?>>
    <associate|outer measure definition on rectangles|<tuple|18.70|?>>
    <associate|outer measure finite subadditivity|<tuple|18.55|?>>
    <associate|outer measure on R|<tuple|18.65|?>>
    <associate|outer measure on rectangles|<tuple|18.71|?>>
    <associate|outermeasure construction|<tuple|18.56|?>>
    <associate|properties of algebras|<tuple|18.7|?>>
    <associate|rectangle and half open sets|<tuple|18.44|?>>
    <associate|semi additivity of the length in the reals|<tuple|18.64|?>>
    <associate|set of all subsets is a sigma algebra|<tuple|18.9|?>>
    <associate|sigma algebra|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|sigma algebra equivalent definitions|<tuple|18.11|?>>
    <associate|singleton family union intersection|<tuple|18.1|?>>
    <associate|the set of Dyadic cubes is denumerable|<tuple|18.37|?>>
    <associate|union intersection union of families|<tuple|18.2|?>>
    <associate|union,intersection and function between and
    indexes|<tuple|18.3|?>>
    <associate|volume in R^n|<tuple|18.30|?>>
    <associate|volume is increasing|<tuple|18.32|?>>
    <associate|volume is increasing (1)|<tuple|18.33|?>>
    <associate|volume is subadditive|<tuple|18.69|?>>
    <associate|volume of a rectangle|<tuple|18.29|?>>
    <associate|writing a countable family of sets as a disjoint familly of
    sets|<tuple|18.4|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|algebra>|<pageref|auto-4>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra>|<pageref|auto-5>>

      <tuple|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>>|<pageref|auto-6>>

      <tuple|<tuple|Borel algebra>|<pageref|auto-7>>

      <tuple|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>>|<pageref|auto-8>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-R\><rsup|n>>>|<pageref|auto-11>>

      <tuple|<tuple|Dyadic cubes>|<pageref|auto-12>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>>|<pageref|auto-14>>

      <tuple|<tuple|lower half open space>|<pageref|auto-15>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|]|-\<infty\>,a|[><rsub|i>>>|<pageref|auto-16>>

      <tuple|<tuple|Lower half spaces>|<pageref|auto-17>>

      <tuple|<tuple|Carath�odory theorem>|<pageref|auto-21>>

      <tuple|<tuple|Lebesgue measurable space>|<pageref|auto-23>>

      <tuple|<tuple|Lebesgue measure>|<pageref|auto-24>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-25>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varphi\><rsup|n>>>|<pageref|auto-27>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible>|<pageref|auto-29>>

      <tuple|<tuple|almost everyware>|<pageref|auto-30>>

      <tuple|<tuple|complete measures>|<pageref|auto-31>>

      <tuple|<tuple|<with|mode|<quote|math>|A<rsub|\<mu\>>>>|<pageref|auto-32>>
    </associate>
    <\associate|toc>
      <vspace*|1fn><with|font-series|<quote|bold>|math-font-series|<quote|bold>|18<space|2spc>Measure
      Theory> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-1><vspace|0.5fn>

      18.1<space|2spc>Prerequisites <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-2>

      18.2<space|2spc>Algebras and <with|mode|<quote|math>|\<sigma\>>-algebras
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-3>

      <with|par-left|<quote|1tab>|18.2.1<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\>> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>>

      <with|par-left|<quote|1tab>|18.2.2<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      18.3<space|2spc>Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-18>

      <with|par-left|<quote|1tab>|18.3.1<space|2spc>Measure definition and
      properties <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>>

      <with|par-left|<quote|1tab>|18.3.2<space|2spc>Carath�odory theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|18.3.3<space|2spc>The Carath�odory theorem
      and the set of real numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-22>>

      <with|par-left|<quote|1tab>|18.3.4<space|2spc>The Carath�odory theorem
      and <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-26>>

      <with|par-left|<quote|1tab>|18.3.5<space|2spc><with|mode|<quote|math>|Negligibity,Completeness<syntax|<with|mode|<quote|text>|
      and >|\<wedge\>>Regularity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-28>>
    </associate>
  </collection>
</auxiliary>