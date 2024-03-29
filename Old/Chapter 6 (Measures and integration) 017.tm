<TeXmacs|2.1.1>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|17>

  <chapter|Measure Theory>

  <section|Prerequisites>

  We have the following usefull [and trivial] set relations

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
    sets>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be a
    countable family of sets then if we define
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-|}>>
    if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>> then\ 

    <\enumerate>
      <item><math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|B<rsub|i>\<subseteq\>A<rsub|i>>

      <item><math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we have
      <math|B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>

      <item><math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
    </enumerate>

    in other words we have\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>
    </equation*>
  </theorem>

  <\proof>
    Let <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then we may always
    assume that <math|i\<less\>j> [otherwise exchange <math|i> with
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
      <label|eq 18.1.016>\<forall\>i,j\<in\>\<bbb-N\><text| with
      >i\<neq\>j<text| we have >B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>
    </equation>

    As <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|k>
    if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>\<subseteq\><choice|<tformat|<table|<row|<cell|A<rsub|1>
    if i=1>>|<row|<cell|A<rsub|i> if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>\<subseteq\>A<rsub|i>>
    we have that

    <\equation>
      <label|eq 18.2.016>\<forall\>i\<in\>\<bbb-N\><text| we have
      >B<rsub|i>\<subseteq\>A<rsub|i>
    </equation>

    and

    <\equation>
      <label|eq 18.3.016><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
    </equation>

    If <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> then
    <math|\<exists\>i\<in\>\<bbb-N\>> such that <math|x\<in\>A<rsub|i>>,
    hence <math|i\<in\><around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>>,
    so that <math|m=min<around*|(|<around*|{|j\<in\><around*|{|1,\<ldots\>,i|}>\|x\<in\>A<rsub|j>|}>|)>>
    exists. We must the consider the following cases for <math|m>:

    <\description>
      <item*|<math|m=1>>then <math|x\<in\>A<rsub|1>=B<rsub|1>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>

      <item*|<math|1\<less\>m>>then <math|1\<leqslant\>m-1> and
      <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,m-1|}>> we have
      <math|x\<nin\>A<rsub|j>> hence <math|x\<in\>A<rsub|m>\\<big|cup><rsub|k\<in\><around*|{|1,\<ldots\>,m-1|}>>A<rsub|k>=B<rsub|k>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
    </description>

    proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>.
    Combining this with <reference|eq 18.3.016> proves

    <\equation>
      <label|eq 18.4.016><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
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
      <item>If <math|n\<in\>\<bbb-N\>> and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      then <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|n\<in\>\<bbb-N\>> and
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
      <item>Define <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|If
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

      <item>Define <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|If
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

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
      we have <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
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

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<forall\>i\<in\>\<bbb-N\>> we have that
      <math|A<rsub|i>\<subseteq\>X><space|1em>hence
      <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<subseteq\>X> proving
      that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>
  </proof>

  <\definition>
    <label|measurable space><dueto|Measurable Space>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<sigma\>>-alegebra then we call
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

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cup><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate>

      <item><math|\<cal-A\>> satisfies

      <\enumerate>
        <item><math|X\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        we have <math|<big|cup><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
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

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
        we have as <math|\<cal-A\>> is a algebra that
        <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
      </enumerate-alpha>

      <item*|<math|2\<Rightarrow\>3>>Assume that (2) is valid then\ 

      <\enumerate-alpha>
        <item>From (2.a) it follows that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (2.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
        then by (2.b) we have that <math|\<forall\>i\<in\>\<bbb-N\>>
        <math|X\\A<rsub|i>\<in\>\<cal-A\>>, hence we have

        <\equation*>
          X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
          difference>>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\><text|
          [because (2.c)]>
        </equation*>

        Hence\ 

        <\equation*>
          <big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>|)>|)>\<in\>\<cal-A\>
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

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
        then by (3.b) we have that <math|\<forall\>i\<in\>\<bbb-N\>>
        <math|X\\A<rsub|i>\<in\>\<cal-A\>> hence we have

        <\equation*>
          X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<equallim\><big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)><rsub|<text|<reference|distributivity
          of union or intersection>>>\<in\>\<cal-A\><text| because (3.c)]>
        </equation*>

        hence\ 

        <\equation*>
          <big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|(|X\\<around*|(|X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>><around*|(|X\\A<rsub|i>|)>|)>|)>|)>\<in\>\<cal-A\><text|
          [because (3.b]>
        </equation*>
      </enumerate-alpha>

      <item*|<math|4\<Rightarrow\>1>>Assume that (4) is valid then\ 

      <\enumerate-alpha>
        <item>As <math|\<emptyset\>\<in\>\<cal-A\>> we have by (4.b) that
        <math|X=X\\\<emptyset\>\<in\>\<cal-A\>>

        <item>Let <math|A\<in\>\<cal-A\>> then from (4.b) we have that
        <math|X\\A\<in\>\<cal-A\>>

        <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-A\>>
        then from (4.c) we have <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>\<in\>\<cal-A\>>
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
          <math|n\<in\>\<bbb-N\>> and a bijection
          <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I>. Define
          then <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> with
          <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
          if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
          i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>\<in\>\<cal-A\>>
          then <math|<around*|{|B<rsub|i>|}><rsub|\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
          so that by (1.c) <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>.
          Further if <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
          <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, as
          <math|\<beta\>> is a bijection there exists a
          <math|j\<in\><around*|{|1,\<ldots\>,n|}>> with
          <math|i=\<beta\><around*|(|j|)>> so that
          <math|x\<in\>A<rsub|i>=A<rsub|\<beta\><around*|(|j|)>>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j>>,
          proving <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>.
          Also as <math|\<forall\>i\<in\>\<bbb-N\>> we have
          <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|\<beta\><around*|(|i|)>>
          if i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\> if
          i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>\<subseteq\><big|cup><rsub|j\<in\>I>A<rsub|j>>
          it follows that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>
          so that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>.

          <item*|<math|I> is denumerable>then there exists a bijection
          <math|\<beta\>:\<bbb-N\>\<rightarrow\>I>. Define then
          <math|\<forall\>i\<in\>\<bbb-N\>>
          <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<in\>\<cal-A\>> so
          that by (1.c) <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<in\>\<cal-A\>>.
          Further if <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then
          <math|\<exists\>i\<in\>I> such that <math|x\<in\>A<rsub|i>>, as
          <math|\<beta\>> is a bijection there exists a
          <math|j\<in\><around*|{|1,\<ldots\>,n|}>> with
          <math|i=\<beta\><around*|(|j|)>> so that
          <math|x\<in\>A<rsub|i>=A<rsub|\<beta\><around*|(|j|)>>=B<rsub|j>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|j>>,
          proving <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>.
          Also as <math|\<forall\>i\<in\>\<bbb-N\>> we have
          <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>\<subseteq\><big|cup><rsub|j\<in\>I>A<rsub|j>>
          so that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=<big|cup><rsub|j\<in\>\<bbb-N\>>B<rsub|j>\<in\>\<cal-A\>>.
        </description>
      </enumerate-alpha>

      <item*|<math|5\<Rightarrow\>1>>

      <\enumerate-alpha>
        <item>By (5.a) we have that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>By (5.b( we have that <math|\<forall\>A\<in\>\<cal-A\>>
        <math|X\\A\<in\>\<cal-A\>>

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
        then as <math|\<bbb-N\>> is countable we have by (5.c) that
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
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|A<rsub|i>=<choice|<tformat|<table|<row|<cell|A if
    i=1>>|<row|<cell|B if i=2>>|<row|<cell|\<emptyset\> if
    i\<in\>\<bbb-N\><>1,2>>>>>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<big|cup>B>|<cell|=>|<cell|A<rsub|1><big|cup>A<rsub|2><big|cup>\<emptyset\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\><around*|{|1,2|}>>A<rsub|i>|)><big|cup><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>\\<around*|{|1,2|}>>A<rsub|>|)>>>|<row|<cell|>|<cell|\<equallim\><text|<reference|union
      intersection union of families>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>>|<row|<cell|>|<cell|\<in\>>|<cell|\<cal-A\>
      <text|[as <math|\<cal-A\>> is a >\<sigma\><text|-algebra]>>>>>
    </eqnarray*>
  </proof>

  We show now how given a set <math|\<cal-S\>> of subsets of <math|X> it is
  possible togenerate the smallest <math|\<sigma\>>-algebra on <math|X>
  containg <math|\<cal-S\>>. First we need a little lemma.

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

      <item>If <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>
      then <math|\<forall\>\<cal-A\>\<in\>\<Sigma\>>
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>\<Rightarrowlim\><rsub|\<cal-A\><text|
      is a >\<sigma\><text|-algebra>><big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|i>\<subseteq\>\<cal-A\>>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>C<rsub|i>\<in\><big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>>
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
    <label|Borel algebra on R^n>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>
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

  For the Borel algebra on <math|\<bbb-R\>> we have the following alternative
  formulations.

  <\proposition>
    <label|Borel algebras on R>We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\>\|C<text|
      is closed>|}>|]>>|<cell|\<equallim\><rsub|<text|<reference|Borel
      algebra is generated by closed sets>>>>|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>>>
    </eqnarray*>
  </proposition>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> then by <reference|a open set
    in R is a countable union of open finite intervals> there exists a
    countable family <math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>I>>
    with <math|\<forall\>i\<in\>I> <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\>\<wedge\>a<rsub|i>\<leqslant\>b<rsub|i>>
    such that <math|U=<big|cup><rsub|i\<in\>I><around*|]|a<rsub|i>,b<rsub|i>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    [using the fact that <math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    is a <math|\<sigma\>>-algebra and <reference|sigma algebra equivalent
    definitions>]. Hence <math|\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    so that by <reference|generated sigma algebra>\ 

    <\equation>
      <label|eq 18.7.014>\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation>

    Let <math|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b> then if
    <math|x\<in\><around*|]|a,b|[>\<Rightarrow\>a\<less\>x\<less\>b> we have
    by <reference|consequence of the archimedean property for the reals> that
    there exist <math|n\<in\>\<bbb-N\>> such that
    <math|a\<less\>x\<less\>x+<frac|1|n>\<less\>b\<Rightarrow\>x\<less\>b-<frac|1|n>\<less\>b\<Rightarrow\>x\<in\><around*|]|a,b-<frac|1|n>|]>>
    proving that <math|<around*|]|a,b|[>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>>.
    Further as cleary <math|\<forall\>n\<in\>\<bbb-N\>>
    <math|<around*|]|a,b-<frac|1|n>|]>\<subseteq\><around*|]|a,b|[>> it
    follows that\ 

    <\equation>
      <label|eq 18.8.014><around*|]|a,b|[>=<big|cup><rsub|n\<in\>\<bbb-N\>><around*|]|a,b-<frac|1|n>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|x,y|]>\|x,y\<in\>\<bbb-R\>\<wedge\>x\<leqslant\>y|}>|]><text|
      [using <reference|sigma algebra equivalent definitions>]>
    </equation>

    So that <math|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>n|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>
    which using <reference|generated sigma algebra> proves that\ 

    <\equation>
      <label|eq 18.9.014>\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>
    </equation>

    Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|(|\<bbb-R\>\\<around*|]|-\<infty\>,a|]>|)><big|cap><around*|]|-\<infty\>,b|]>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\><around*|(|x\<leqslant\>a|)>\<wedge\>x\<leqslant\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>a\<less\>x\<wedge\>x\<leqslant\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,b|]>>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 18.10.014><around*|]|a,b|]>=<around*|(|\<bbb-R\>\\<around*|]|-\<infty\>.a|]>|)><big|cap><around*|]|-\<infty\>,b|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|]>\|x\<in\>\<bbb-R\>|}>|]>
      <text|[using <reference|sigma algebra equivalent definitions>]>
    </equation>

    So we have that <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,x|]>\|x\<in\>\<bbb-R\>|}>|]>>
    which using <reference|generated sigma algebra> proves that

    <\equation>
      <label|eq 18.11.014>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    \ Let <math|a\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\>\\<around*|]|a,\<infty\>|[>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\><around*|(|a\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>x\<leqslant\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|-\<infty\>,a|]>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.12.014><around*|]|-\<infty\>,a|]>=\<bbb-R\>\\<around*|]|a,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]><text|
      [using <reference|sigma algebra equivalent definitions>]>
    </equation>

    So that <math|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>
    which using <reference|generated sigma algebra> proves that\ 

    <\equation>
      <label|eq 18.10.015>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Finally using <reference|open intervals in R> we have that
    <math|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>=\<cal-B\><around*|[|\<bbb-R\>|]>>
    so that by <reference|generated sigma algebra> we have\ 

    <\equation>
      <label|eq 18.11.015>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\>|]>
    </equation>

    To summarize <reference|eq 18.7.014>,<reference|eq
    18.9.014>,<reference|eq 18.11.014>,<reference|eq 18.10.015> and
    <reference|eq 18.11.015> we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>|<cell|\<subseteq\>>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|\<subseteq\>>|<cell|\<cal-B\><around*|[|\<bbb-R\>|]>>>>>
    </eqnarray*>

    from which the theorem follows.
  </proof>

  To give equivalent definitions of the Borel algebra on
  <math|\<bbb-R\><rsup|n>> we extend the concept of generalized intervals to
  generalized rectangles.

  <\definition>
    Let <math|n\<in\>\<bbb-N\>> and <math|a\<in\>\<bbb-R\><rsup|n>> then we
    define\ 

    <\enumerate>
      <item><math|<around*|]|-\<infty\>,a|]>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<leqslant\>a<rsub|i>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|]>>

      <item><math|<around*|]|-\<infty\>,a|[>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >x<rsub|i>\<less\>a<rsub|i>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|[>>

      <item><math|<around*|[|a,\<infty\>|[>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<leqslant\>x<rsub|i>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,\<infty\>|[>>

      <item><math|<around*|]|a,\<infty\>|[>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have >a<rsub|i>\<less\>x<rsub|i>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,\<infty\>|[>>
    </enumerate>

    Further if <math|a,b\<in\>\<bbb-R\><rsup|n>> with
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i> >then we define\ 

    <\enumerate>
      <item><math|<around*|[|a,b|]>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>>>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>>
      and <math|v<around*|(|<around*|[|a,b|]>|)>=<big|prod><rsub|i=1><rsup|N><around*|(|b<rsub|i>-a<rsub|>|)>>
      <math|>

      <item><math|<around*|[|a,b|[>>=<math|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a\<leqslant\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>>>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>>
      and <math|v<around*|(|<around*|[|a,b|[>|)>=<big|prod><rsub|i=1><rsup|N><around*|(|b<rsub|i>-a<rsub|>|)>>

      <item><math|<around*|]|a,b|]>>=<math|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>>>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|]>>
      and <math|v<around*|(|<around*|[|a,b|[>|)>=<big|prod><rsub|i=1><rsup|N><around*|(|b<rsub|i>-a<rsub|>|)>>

      <item><math|<around*|]|a,b|[>>=<math|<around*|{|x\<in\>\<bbb-R\><rsup|n>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
      we have <math|a\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<less\>b<rsub|i>>>|}>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>>
      and <math|v<around*|(|<around*|[|a,b|[>|)>=<big|prod><rsub|i=1><rsup|N><around*|(|b<rsub|i>-a<rsub|>|)>>
    </enumerate>
  </definition>

  <\lemma>
    <label|generalized rectangles and boundaries>Let <math|n\<in\>\<bbb-N\>>
    then

    <\enumerate>
      <item><math|\<forall\>a,b\<in\>\<bbb-R\><rsup|n>> we have\ 

      <\enumerate>
        <item>If <math|<around*|]|-\<infty\>,a|]>=<around*|]|-\<infty\>,b|]>>
        then <math|a=b>

        <item>If <math|<around*|]|-\<infty\>,a|[>=<around*|]|-\<infty\>,b|[>>
        then <math|a=b>

        <item>If <math|<around*|[|a,\<infty\>|[>=<around*|[|a,\<infty\>|[>>
        then <math|a=b>

        <item>If <math|<around*|]|a,\<infty\>|[>=<around*|]|a,\<infty\>|[>>
        then <math|a=b>
      </enumerate>

      <item><math|\<forall\>a,b,c,d\<in\>\<bbb-R\><rsup|n>> <math|>

      <\enumerate>
        <item>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<leqslant\>b<rsub|i>\<wedge\>c<rsub|i>\<leqslant\>d<rsub|i>>
        and <math|<around*|[|a,b|]>=<around*|[|c,d|]>> then
        <math|a=b\<wedge\>c=d>

        <item>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<less\>b<rsub|i>\<wedge\>c<rsub|i>\<leqslant\>d<rsub|i>>
        and <math|<around*|]|a,b|]>=<around*|]|c,d|]>> then
        <math|a=b\<wedge\>c=d>

        <item>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<less\>b<rsub|i>\<wedge\>c<rsub|i>\<leqslant\>d<rsub|i>>
        and <math|<around*|[|a,b|[>=<around*|[|c,d|[>> then
        <math|a=b\<wedge\>c=d>

        <item>If <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<less\>b<rsub|i>\<wedge\>c<rsub|i>\<leqslant\>d<rsub|i>>
        and <math|<around*|]|a,b|[>=<around*|]|c,d|[>> then
        <math|a=b\<wedge\>c=d>
      </enumerate>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\enumerate>
        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<in\><around*|]|-\<infty\>,a<rsub|i>|]>\<Rightarrow\><around*|]|-\<infty\>,a<rsub|i>|]>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|]>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,b<rsub|i>|]>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|]|-\<infty\>,a<rsub|i>|]>=<around*|]|-\<infty\>,b<rsub|i>|]>>.
        By <reference|generalized intervals and boundaries> it follows that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=b<rsub|i>> or <math|a=b>.

        \ <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>-1\<in\><around*|]|-\<infty\>,a<rsub|i>|[>\<Rightarrow\><around*|]|-\<infty\>,a<rsub|i>|[>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,a<rsub|i>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|-\<infty\>,b<rsub|i>|[>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|]|-\<infty\>,a<rsub|i>|[>=<around*|]|-\<infty\>,b<rsub|i>|[>>.
        By <reference|generalized intervals and boundaries> it follows that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=b<rsub|i>> or <math|a=b>.

        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<in\><around*|[|a<rsub|i>,\<infty\>|[>\<Rightarrow\><around*|[|a<rsub|i>,\<infty\>|[>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,\<infty\>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|b<rsub|i>,\<infty\>|[>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|[|a<rsub|i>,\<infty\>|[>=<around*|[|b<rsub|i>,\<infty\>|[>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=b<rsub|i>> or <math|a=b>.

        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>+1\<in\><around*|]|a<rsub|i>,\<infty\>|[>\<Rightarrow\><around*|]|a<rsub|i>,\<infty\>|[>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,\<infty\>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|b<rsub|i>,\<infty\>|[>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|]|a<rsub|i>,\<infty\>|[>=<around*|]|b<rsub|i>,\<infty\>|[>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=b<rsub|i>> or <math|a=b>.
      </enumerate>

      <item>\ 

      <\enumerate>
        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>\<Rightarrow\><around*|[|a<rsub|i>,b<rsub|i>|]>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|]>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>,d<rsub|i>|]>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|[|a<rsub|i>,b<rsub|i>|]>=<around*|[|c<rsub|i>,d<rsub|i>|]>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=c<rsub|i>> and <math|b<rsub|i>=d<rsub|i>> or
        <math|a=c> and <math|b=d>.

        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|b<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>\<Rightarrow\><around*|]|a<rsub|i>,b<rsub|i>|]>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|]>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|c<rsub|i>,d<rsub|i>|]>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|]|a<rsub|i>,b<rsub|i>|]>=<around*|]|c<rsub|i>,d<rsub|i>|]>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=c<rsub|i>> and <math|b<rsub|i>=d<rsub|i>> or
        <math|a=c> and <math|b=d>.

        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>\<Rightarrow\><around*|[|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|a<rsub|i>,b<rsub|i>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|c<rsub|i>,d<rsub|i>|[>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|c<rsub|i>,d<rsub|i>|[>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=c<rsub|i>> and <math|b<rsub|i>=d<rsub|i>> or
        <math|a=c> and <math|b=d>.

        <item>As <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>+<frac|b<rsub|i>-a<rsub|i>|2>\<in\><around*|[|a<rsub|i>,b<rsub|i>|]>\<Rightarrow\><around*|]|a<rsub|i>,b<rsub|i>|[>\<neq\>\<emptyset\>>
        and <math|<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|a<rsub|i>,b<rsub|i>|[>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|]|c<rsub|i>,d<rsub|i>|[>>
        it follows from <reference|equality of product of sets (1)> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|<around*|]|a<rsub|i>,b<rsub|i>|[>=<around*|]|c<rsub|i>,d<rsub|i>|[>>.
        Using <reference|generalized intervals and boundaries> gives then
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|a<rsub|i>=c<rsub|i>> and <math|b<rsub|i>=d<rsub|i>> or
        <math|a=c> and <math|b=d>.
      </enumerate>
    </enumerate>

    \;
  </proof>

  Define now a special type of generalized rectangles, Dyadic Rectangles

  <\definition>
    Let <math|N\<in\>\<bbb-N\>,n\<in\>\<bbb-N\><rsub|0>> then
    <math|\<bbb-D\><rsup|N><rsub|n>> is defined by
    <math|\<bbb-D\><rsup|N><rsub|n>=<around*|{|<around*|]|<frac|z|2<rsup|n>>,<frac|z|2<rsup|n+1>>|]>\|z\<in\>\<bbb-Z\><rsup|N>|}>>
    and <math|\<bbb-D\><rsup|N>> by <math|\<bbb-D\><rsup|N>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<bbb-D\><rsup|N><rsub|n>>
  </definition>

  We have now the following import lemmas for Dyadic intervals.

  <\lemma>
    <label|dyadic interval property>Let <math|n,k\<in\>\<bbb-N\><rsub|0>>
    with <math|k\<less\>n> and <math|v,z\<in\>\<bbb-Z\>> then we have either
    <math|<around*|]|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|]><big|cap><around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>=\<emptyset\>>
    or <math|<around*|]|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|]>\<subseteq\><around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>
  </lemma>

  <\proof>
    Take <math|I=<around*|]|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|]>>and
    <math|J=<around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>. As
    <math|k\<less\>n> we have <math|0\<less\>l=n-k> and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z|2<rsup|k>>\<cdot\><frac|2<rsup|n-k>|2<rsup|n-k>>,<frac|z\<cdot\>2<rsup|n-k*>+2<rsup|n-k>|2<rsup|k>\<cdot\>2<rsup|n-k>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z\<cdot\>2<rsup|n-k>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|n-k**>+2<rsup|n-k>|2<rsup|n>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|]><eq-number><label|eq
      18,12.014>>>>>
    </eqnarray*>

    Assume now that <math|I<big|cap>J\<neq\>\<emptyset\>> then we have\ 

    <\enumerate>
      <item><math|\<exists\>x\<in\>I<big|cap>J> so that
      <math|<frac|v|2<rsup|n>>\<less\>x\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
      giving after multiplying with <math|2<rsup|n>> that

      <\equation>
        <label|eq 18.13.014>v\<less\>z\<cdot\>2<rsup|l>+2<rsup|l>
      </equation>

      <item>If <frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>|2<rsup|n>>
      we have by <reference|eq 18,12.014> that
      <math|I<big|cap>J=\<emptyset\>> so we must have
      <frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>> or
      <math|z\<cdot\>2<rsup|l>\<less\>v+1>. As <math|l\<gtr\>0> it follows
      that <math|z\<cdot\>2<rsup|l>\<in\>\<bbb-Z\>> so that

      <\equation>
        <label|eq 18.14.014>z\<cdot\>2<rsup|l>\<leqslant\>v
      </equation>

      <item>Assume that <frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>
      then <math|z\<cdot\>2<rsup|l>+2<rsup|l>\<less\>v+1\<Rightarrowlim\><rsub|0\<less\>l\<Rightarrow\>z\<cdot\>2<rsup|l>+2<rsup|l>\<in\>\<bbb-Z\>>z\<cdot\>2<rsup|l>+2<rsup|l>\<leqslant\>v>
      contradicting <reference|eq 18.13.014> so we must have\ 

      <\equation*>
        <frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>
      </equation*>

      which together with <reference|eq 18.14.014> proves <math|>that
      <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>><frac||>>
      or <math|I\<subseteq\>J>\ 
    </enumerate>

    Hence if <math|><math|I<big|cap>J\<neq\>\<emptyset\>> then
    <math|<around*|]|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|]>\<subseteq\><around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>
    proving the lemma.

    \;
  </proof>

  <\lemma>
    <label|Dyadic interval properties 2>Let <math|N\<in\>\<bbb-N\>> then we
    have\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> then
      <math|\<forall\>Q,R\<in\>\<bbb-D\><rsup|N><rsub|n>> with
      <math|R\<neq\>Q> we have <math|R<big|cap>Q=\<emptyset\>>

      <item>If <math|n,k\<in\>\<bbb-N\><rsub|0>> is such that
      <math|k\<leqslant\>n> then we have <math|\<forall\>R\<in\>\<bbb-D\><rsup|N><rsub|n>>
      and <math|\<forall\>Q\<in\>\<bbb-D\><rsup|N><rsub|k>> that either
      <math|R\<subseteq\>Q> or <math|Q<big|cap>R=\<emptyset\>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<bbb-R\><rsup|N>=<big|sqcup><rsub|R\<in\>\<bbb-D\><rsub|n><rsup|N>>R>
      [a pairwise disjoint union]

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>R\<in\>\<bbb-D\><rsub|n><rsup|N>> we have
      <math|v<around*|(|R|)>=2<rsup|-n\<ast\>N>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Take <math|Q,R\<in\>\<bbb-D\><rsup|N><rsub|n> >with
      <math|R\<neq\>Q> then there exists <math|z,w\<in\>\<bbb-Z\><rsup|N>>
      such that <math|z\<neq\>w>, <math|R=<around*|]|<frac|z|2<rsup|n>>,<frac|z+1<rsub|>|2<rsup|n>>|]>>
      and <math|Q=<around*|]|<frac|w|2<rsup|n>>,<frac|w+1|2<rsup|n>>|]>>. As
      <math|v\<neq\>w> there exist a <math|i\<in\><around*|{|1,\<ldots\>,N|}>>
      such that <math|z<rsub|i>\<neq\>w<rsub|i>> and we may always assume
      that <math|z<rsub|i>\<less\>w<rsub|i>> [otherwise interchange <math|z>
      and <math|w>]. So <math|z<rsub|i>+1\<leqslant\>w<rsub|i>> or
      <math|<frac|z<rsub|i>+1|2<rsup|n>>,\<leqslant\><frac|w<rsub|i>|2<rsup|n>>>.
      If now <math|x\<in\>Q<big|cap>R> then
      <math|<frac|z<rsub|i>|2<rsup|n>>\<less\>x<rsub|i>\<leqslant\><frac|z<rsub|i>+1|2<rsup|n>>\<leqslant\><frac|w<rsub|i>|2<rsup|n>>\<less\>x<rsub|i>\<leqslant\><frac|w<rsub|I>+1|2<rsup|N>>>
      leading to the contradiction <math|x<rsub|i>\<less\>x<rsub|i>>. So we
      must have <math|Q<big|cap>R=\<emptyset\>>.

      <item>Let <math|k\<leqslant\>n> and
      <math|R\<in\>\<bbb-D\><rsup|N><rsub|n>>,
      <math|Q\<in\>\<bbb-D\><rsup|N><rsub|k>> then
      <math|\<exists\>z,w\<in\>\<bbb-R\><rsup|N>> with
      <math|R=<around*|]|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|]>> and
      <math|Q=<around*|]|<frac|w|2<rsup|k>>,<frac|w+1|2<rsup|k>>|]>> then we
      have either\ 

      <\description>
        <item*|<math|k=n>>then if <math|R\<nsubseteq\>Q> we must have
        <math|R\<neq\>Q> so that by (1) we have
        <math|Q<big|cap>R=\<emptyset\>>

        <item*|<math|k\<less\>n>>then we have either\ 

        <\description>
          <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,N|}>\<vdash\><around*|]|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|]><big|cap><around*|]|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i+1>|2<rsup|k>>|]>=\<emptyset\>>>then
          if <math|x\<in\>R<big|cap>Q> we have
          <math|<frac|z<rsub|i>|2<rsup|n>>\<less\>x<rsub|i>\<leqslant\><frac|z<rsub|i>+1|2<rsup|n>>>
          and <math|<frac|w<rsub|i>|2<rsup|k>>\<less\>x<rsub|i>\<leqslant\><frac|w<rsub|I>+1|2<rsup|k>>>
          contradicting <math|<around*|]|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|]><big|cap><around*|]|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i+1>|2<rsup|k>>|]>=\<emptyset\>>.
          So we must have in this case that <math|R<big|cap>Q=\<emptyset\>>

          <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>\<vdash\><around*|]|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|]><big|cap><around*|]|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i+1>|2<rsup|k>>|]>\<neq\>\<emptyset\>>>then
          using the previous lemma [see <reference|dyadic interval property>]
          it follows that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>>
          <math|<around*|]|<frac|z<rsub|i>|2<rsup|n>>,<frac|z<rsub|i>+1|2<rsup|n>>|]>\<subseteq\><around*|]|<frac|w<rsub|i>|2<rsup|k>>,<frac|w<rsub|i>+1|2<rsup|k>>|]>>
          proving that <math|R\<subseteq\>Q>
        </description>
      </description>

      which proves (2).

      <item>If <math|x\<in\>\<bbb-R\><rsup|N>> and
      <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>> we have that
      <math|x<rsub|i>\<in\>\<bbb-R\>> and using the Archimedean property of
      the reals [see <reference|consequence of the archimedean property for
      the reals>] there exists a <math|z<rsub|i>\<in\>\<bbb-Z\>> such that
      <math|z<rsub|i>\<less\>x<rsub|i>\<cdot\>2<rsup|n>\<leqslant\>z<rsub|i>+1
      >giving <math|<frac|z<rsub|i>|2<rsup|n>>\<less\>x<rsub|i>\<leqslant\><frac|z<rsub|i>+1|2<rsup|n>>>.
      If we define then <math|z=<around*|(|z<rsub|1>,\<ldots\>,z<rsub|N>|)>\<in\>\<bbb-R\><rsup|N>>
      then <math|x\<in\><around*|]|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|]>\<in\>\<bbb-D\><rsup|N><rsub|n>>
      proving that <math|\<bbb-R\><rsup|N>\<subseteq\><big|cup><rsub|R\<in\>\<bbb-D\><rsup|N><rsub|n>>R>
      which as trivially <math|<big|cup><rsub|R\<in\>\<bbb-D\><rsup|N><rsub|n>>R\<subseteq\>\<bbb-R\><rsup|N>>
      gives\ 

      <\equation*>
        \<bbb-R\><rsup|N>=<big|cup><rsub|R\<in\>\<bbb-D\><rsup|N><rsub|n>>R
      </equation*>

      <item>Let <math|R\<in\>\<bbb-D\><rsup|N><rsub|n>> then there exists a
      <math|z\<in\>\<bbb-Z\><rsup|N>> such that
      <math|R=<around*|]|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|]>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<around*|(|R|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|N><around*|(|<frac|z<rsub|i>+1|2<rsup|n>>-<frac|z<rsub|i>|2<rsup|n>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|N><around*|(|<frac|1|2<rsup|n>>|)>>>|<row|<cell|>|<cell|=>|<cell|2<rsup|-n\<cdot\>N>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\lemma>
    <label|set of Dyadic intervals is denumerable>Let <math|N\<in\>\<bbb-N\>>
    then <math|\<bbb-D\><rsup|N>> is denumerable and
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<bbb-D\><rsup|N><rsub|n>> is denumerable
  </lemma>

  <\proof>
    Let <math|n\<in\>\<bbb-N\>> then as <math|\<bbb-Z\>> is denumerable [see
    <reference|the integer numbers in the reals are denumerable>] we have by
    <reference|finite product of finite or denumerable sets> that
    <math|\<bbb-Z\><rsup|N>> is denumerable. Define now
    <math|\<beta\>:\<bbb-Z\><rsup|n>\<rightarrow\>\<bbb-D\><rsup|N><rsub|n>>
    by <math|\<beta\><around*|(|z|)>=<around*|]|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|]>>
    then <math|\<beta\>> is a bijection.

    <\description>
      <item*|injectivity>If <math|\<beta\><around*|(|z|)>=\<beta\><around*|(|w|)>>
      then <math|<around*|]|<frac|z<rsub|>|2<rsup|n><rsup|>>,<frac|z+1|2<rsup|n>>|]>=\<beta\><around*|(|z|)>=\<beta\><around*|(|w|)>=<around*|]|<frac|w|2<rsup|n>>,<frac|w+1|2<rsup|n>>|]>>.
      Using <reference|generalized rectangles and boundaries> we have then
      that <math|<frac|z|2<rsup|n>>=<frac|w|2<rsup|n>>> proving that
      <math|z=w>.

      <item*|surjectivity>If <math|D\<in\>\<bbb-D\><rsup|N><rsub|n>> then
      <math|\<exists\>z\<in\>\<bbb-Z\><rsup|N>> such that
      <math|D=<around*|]|<frac|z|2<rsup|n>>,<frac|z+1|2<rsup|n>>|]>=\<beta\><around*|(|z|)>>.
    </description>

    As <math|\<bbb-Z\><rsup|N>> is denumerable and <math|\<beta\>> is a
    bijection we have that <math|D<rsub|n><rsup|N>> is denumerable. Finally
    using <reference|denumerable union of denumerable sets is denumerable> we
    have that <math|D<rsup|N>> is denumerable.
  </proof>

  We expres now open sets in <math|\<bbb-R\><rsup|N>> as a disjoint union of
  a sequence of Dyadic rectangles

  <\lemma>
    <label|Open sets in R^N are disjoint union of Dyadic rectang;es>Let
    <math|N\<in\>\<bbb-N\>> and <math|\<cal-T\><rsub|\<bbb-R\><rsup|N>>> the
    canonical topology defined on <math|\<bbb-R\><rsup|N>> [see
    <reference|topology of R^n>] then <math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|N>>>
    with <math|U\<neq\>\<emptyset\>> there exists a pairwise disjoint
    sequence of Dyadic rectangles <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-D\><rsup|N>>
    such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>
  </lemma>

  <\proof>
    Let <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|N>>> be
    a non empty open set in <math|\<bbb-R\><rsup|N>>. Let
    <math|m\<in\>\<bbb-N\>> and define\ 

    <\equation>
      <label|eq 18.15.015>\<cal-S\><rsub|m>=<around*|{|D\<in\>\<bbb-D\><rsup|N><rsub|m>\|D\<subseteq\>U|}>\<subseteq\>\<bbb-D\><rsup|N><rsub|m>
    </equation>

    <\equation>
      <label|eq 18.16.015>\<cal-T\><rsub|m>=<choice|<tformat|<table|<row|<cell|\<cal-S\><rsub|1>
      if m=1>>|<row|<cell|<around*|{|D\<in\>\<cal-S\><rsub|m>\|\<forall\>i\<in\><around*|{|1,\<ldots\>,m-1<text|
      we have >\<forall\>P\<in\>\<cal-T\><rsub|i><text| that
      >P<big|cap>D=\<emptyset\>|}>|}> <text|if
      >m\<gtr\>1>>>>>\<subseteq\>\<cal-S\><rsub|m>
    </equation>

    <\equation>
      <label|eq 18.17.015>\<cal-T\>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-T\><rsub|m>
    </equation>

    Then we have by the above definitions\ 

    <\equation>
      <label|eq 18.18.015>\<forall\>m\<in\>\<bbb-N\><text| that
      >\<cal-T\><rsub|m>\<subseteq\>\<cal-S\><rsub|m>\<subseteq\>\<bbb-D\><rsup|N><rsub|m>\<subseteq\>\<bbb-D\><rsup|N>
    </equation>

    If <math|D\<in\>\<cal-T\>> then <math|\<exists\>i\<in\>\<bbb-N\>> such
    that <math|D\<in\>\<cal-T\><rsub|i>\<subseteq\>\<cal-S\><rsub|i>\<Rightarrowlim\><rsub|<text|<reference|eq
    18.15.015>>>D\<subseteq\>U> which proves that\ 

    <\equation>
      <label|eq 18.19.015><big|cup><rsub|D\<in\>\<cal-T\>>D\<subseteq\>U
    </equation>

    Next we set out to prove the opposite inclusion, so let <math|x\<in\>U>
    then as <math|U> is open there exists a
    <math|\<varepsilon\><rsub|x>\<gtr\>0> such that
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>>*<around*|(|x,\<varepsilon\><rsub|x>|)>>
    [using the maximum norm <math|<around*|\<\|\|\>||\<\|\|\>>> in
    <math|\<bbb-R\><rsup|N>>]. Using <reference|consequence of the
    archimedean property for the reals> there exists a
    <math|n<rsub|x>\<in\>\<bbb-N\>> such that
    <math|0\<less\><frac|1|n<rsub|x>>\<less\>\<varepsilon\>> and by the
    <reference|Dyadic interval properties 2> (3) there exists a
    <math|D=<around*|]|<frac|z|2<rsup|n<rsub|x>>>,<frac|z+1|2<rsup|n<rsub|x>>>|]>\<in\>\<bbb-D\><rsup|N><rsub|n<rsub|x>>>
    such that <math|x\<in\>D>. Hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>>
    we have <math|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<less\>x<rsub|i>\<leqslant\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>>.
    If <math|y\<in\>D> then <math|<frac|z<rsub|i>|2<rsup|n<rsub|x>>>\<less\>y<rsub|i>\<leqslant\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>>
    so that <math|x<rsub|i>-y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|z>>>=<frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\>>
    and <math|y<rsub|i>-x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>=<frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\><rsub|x>>
    proving that <math|<around*|\||x<rsub|i>-y<rsub|i>|\|>\<less\>\<varepsilon\><rsub|x>>
    hence <math|<around*|\<\|\|\>|z-y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,N|}>|}>|)>\<less\>\<varepsilon\><rsub|x>>
    giving <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\><rsub|x>|)>>.
    Hence <math|x\<in\>D\<subseteq\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\><rsub|x>|)>\<subseteq\>U>
    proving that <math|D\<in\>\<cal-S\><rsub|m>>. Define
    <math|\<cal-K\><rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n<rsub|x>|}>\|\<exists\>D\<in\>\<cal-S\><rsub|i><text|
    such that >x\<in\>D|}>> then <math|n<rsub|x>\<in\>\<cal-K\><rsub|x>\<Rightarrow\>\<cal-K\><rsub|x>\<neq\>\<emptyset\>>
    so that <math|m<rsub|x>=min<around*|(|\<cal-K\><rsub|x>|)>> exists.
    Consider now the following cases for <math|m<rsub|x>>.

    <\description>
      <item*|<math|m<rsub|x>=1>>then <math|\<exists\>D\<in\>\<cal-S\><rsub|1>=\<cal-T\><rsub|1>\<subseteq\>\<cal-T\>>
      such that <math|x\<in\>D\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>

      <item*|<math|1\<less\>m<rsub|x>>>then
      <math|\<exists\>D\<in\>\<cal-S\><rsub|m<rsub|x>>> with <math|x\<in\>D>
      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>> we
      have by definition that <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|x\<nin\>R>. Now as <math|i\<less\>m<rsub|x>> we have by
      <reference|Dyadic interval properties 2> (2) that either
      \ <math|D\<subseteq\>R>, but then, as <math|x\<in\>D\<subseteq\>R>, we
      contradict <math|x\<nin\>R>, or <math|D<big|cap>R=\<emptyset\>>. So
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>> we have
      <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|R<big|cap>D=\<emptyset\>> proving that
      <math|D\<in\>\<cal-T\><rsub|m<rsub|x>>\<subseteq\>\<cal-T\>> [see
      <reference|eq 18.16.015>], hence <math|x\<in\>D\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D>
    </description>

    As we have chosen <math|x\<in\>U> arbitrary if follows that
    <math|U\<subseteq\><big|cup><rsub|D\<in\>\<cal-T\>>D> which together with
    <reference|eq 18.19.015> proves that

    <\equation>
      <label|eq 18.20.015>U=<big|cup><rsub|D\<in\>\<cal-T\>>D
    </equation>

    Let <math|D,E\<in\>\<cal-T\>> with <math|D\<neq\>E> then there exists
    <math|k,l\<in\>\<bbb-N\>> such that <math|D\<in\>\<cal-T\><rsub|k>\<subseteq\>\<bbb-D\><rsup|N><rsub|k>>
    and <math|E\<in\>\<cal-T\><rsub|l>\<subseteq\>\<bbb-D\><rsup|N><rsub|l>>.
    For <math|k,l> we have the following possibilities:

    <\description>
      <item*|<math|k=l>>then using <reference|Dyadic interval properties 2>
      we have <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|k\<less\>l>>then using <reference|eq 18.16.015> we have
      <math|D<big|cap>E=\<emptyset\>>

      <item*|<math|l\<less\>k>>then using <reference|eq 18.16.015> we have
      <math|D<big|cap>E=\<emptyset\>>
    </description>

    Hence\ 

    <\equation>
      <label|eq 18.21.015>\<forall\>D,E\<in\>\<cal-T\> with D\<neq\>E
      <text|we have >D<big|cap>E=\<emptyset\>
    </equation>

    Given <math|D\<in\>\<cal-T\>> there exists a <math|m\<in\>\<bbb-N\>> such
    that <math|D\<in\>\<cal-T\><rsub|m>\<subseteq\>\<bbb-D\><rsup|N><rsub|m>>,
    hence <math|\<exists\>z\<in\>\<bbb-Z\>> such that
    <math|D=<around*|]|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|]>> and define
    <math|m<around*|(|D|)>> by <math|m<around*|(|D|)>=<frac|z<rsub|1>+1|2<rsup|m>>>.
    Assume now that <math|\<cal-T\>> is finite, as
    <math|U\<neq\>\<emptyset\>> we must have
    <math|\<cal-T\>\<neq\>\<emptyset\>> [see <reference|eq 18.20.015>] so
    that <math|m=max<around*|(|<around*|{|m<around*|(|D|)>\|D\<in\>\<cal-T\>|}>|)>>
    is well defined. Hence there exists a <math|D\<in\>\<cal-T\>> such that
    <math|D=<around*|]|a,b|]>> where <math|b<rsub|1>=m>. As
    <math|b\<in\>D\<subseteq\>U> there exists a <math|\<varepsilon\>\<gtr\>0>
    such that <math|b\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|b,\<varepsilon\>|)>\<subseteq\>U>.
    Further <math|b+<frac|\<varepsilon\>|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|b,\<varepsilon\>|)>\<subseteq\>U>
    so there exists a <math|R\<subseteq\>\<cal-T\>> such that
    <math|b+<frac|\<varepsilon\>|2>\<in\>R> hence
    <math|b<rsub|1>+<frac|\<varepsilon\>|2>\<less\>m=b<rsub|1>> a
    contradiction. Hence we conclude that\ 

    <\equation>
      <label|eq 18.22.015>\<cal-T\> is infinite
    </equation>

    As <math|\<cal-T\>\<subseteq\>\<bbb-D\><rsup|N>> and
    <math|\<bbb-D\><rsup|N>> is a denumerable set [see <reference|set of
    Dyadic intervals is denumerable>] we have by <reference|subsets of
    denumerable sets are finite or denumerable> that <math|\<cal-T\>> is
    either denumerable or finite, so using <reference|eq 18.22.015> we
    conclude that\ 

    <\equation>
      <label|eq 18.23.015>\<cal-T\><text| is denumerable>
    </equation>

    By denumerabiity there exists a bijection
    <math|\<beta\>:\<bbb-N\>\<rightarrow\>\<cal-T\>>, define
    <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|D<rsub|i>=\<beta\><around*|(|i|)>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>|<cell|\<Leftrightarrow\>>|<cell|\<exists\>D\<in\>\<cal-T\><text|
      with >x\<in\>D>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<beta\>
      is surjective>>|<cell|\<exists\>i\<in\>\<bbb-N\><text| with
      >D=\<beta\><around*|(|i|)>=D<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>>>>>
    </eqnarray*>

    Further if <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then as
    <math|\<beta\>> is injective we have <math|D<rsub|i>=\<beta\><around*|(|i|)>\<neq\>\<beta\><around*|(|j|)>=D<rsub|j>>
    it follows from <reference|eq 18.21.015> that
    <math|D<rsub|i><big|cap>D<rsub|j>=\<emptyset\>>. So finally we have that\ 

    <\equation*>
      \<exists\><around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>D<rsup|N><text|
      such that >U=<big|sqcup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>
    </equation*>
  </proof>

  <\theorem>
    <label|Borel sets in R^n>Let <math|n\<in\>\<bbb-N\>> then
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<cal-B\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>>
  </theorem>

  <\proof>
    Take <math|\<cal-R\>=<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>>. If
    <math|\<emptyset\>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> we have
    <math|\<emptyset\>=<around*|]|<around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>,<around*|(|<wide*|0,\<ldots\>,0|\<wide-underbrace\>><rsub|n>|)>|]><big|cap><around*|]|<around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>,<around*|(|<wide*|1,\<ldots\>,1|\<wide-underbrace\>><rsub|n>|)>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\>|]>>.
    If <math|\<emptyset\>\<neq\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    then by the previous lemma [see<reference|Open sets in R^N are disjoint
    union of Dyadic rectang;es>] there exists a sequence
    <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-D\><rsup|n><rsub|>\<subseteq\>\<cal-R\>>
    such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<sigma\><around*|[|\<cal-R\>|]>>
    proving that <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|\<cal-R\>|]>>.
    Hence we have\ 

    <\equation>
      <label|eq 18.24.015>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>\<subseteq\>\<sigma\><around*|[|\<cal-R\>|]>
    </equation>

    On the other hand if <math|R\<in\>\<cal-R\>> then
    <math|R=<around*|]|a,b|]>> with <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>>. Take <math|n\<in\>\<bbb-N\>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|]|a<rsub|i>,b<rsub|i>|]>\<subseteq\><around*|]|a<rsub|i>,b<rsub|i>+<frac|1|n>|[>>,
    hence\ 

    <\equation>
      <label|eq 18.25.015>R=<around*|]|a,b|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>
    </equation>

    Take <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>>
    and assume that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such
    that <math|b<rsub|i>\<less\>x<rsub|i>> then by the Archimedean property
    of the real numbers [see <reference|consequence of the archimedean
    property for the reals>] there exists a <math|n\<in\>\<bbb-N\><rsub|n>>
    such that <math|b<rsub|i>\<less\>b<rsub|i>+<frac|1|n>\<less\>x<rsub|i>>
    contradicting <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>\<Rightarrow\>x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>+<frac|1|n>|[>>.
    Hence <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|]>> proving that
    <math|x\<in\><around*|]|a,b|]>>. Which using <reference|eq 18.25.015>
    proves that <math|R=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    or that <math|\<cal-R\>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    so that\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-R\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>
    </equation*>

    So using <reference|eq 18.24.015> we have that\ 

    <\equation>
      <label|eq 18.26.015>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|\<cal-R\>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>
    </equation>
  </proof>

  For a alternative definition of <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  take\ 

  <\definition>
    Let <math|n\<in\>\<bbb-N\>>, <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    and <math|a\<in\>\<bbb-R\>> then

    <\enumerate>
      <item><math|<around*|]|a,\<infty\>|[><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>|}>>

      <item><math|<around*|]|-\<infty\>,a|]><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>
    </enumerate>
  </definition>

  <\lemma>
    <label|Borel Algebra in R^n (2)>Let <math|n\<in\>\<bbb-N\>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>>>
    </eqnarray*>
  </lemma>

  <\proof>
    Let <math|a\<in\>\<bbb-R\>> and <math|i\<in\><around*|{|1,\<ldots\>,n|}>>
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>\<bbb-R\><rsup|n>\\<around*|]|-\<infty\>,a|]><rsub|i>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\>\<wedge\>\<neg\><around*|(|x<rsub|i>\<leqslant\>a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n>\<wedge\>a\<less\>x<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,\<infty\>|[><rsub|i>>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 18.27.015>\<bbb-R\><rsup|n>\\<around*|]|-\<infty\>,a|]><rsub|i>=<around*|]|a,\<infty\>|[><rsub|i><text|
      and >\<bbb-R\><rsup|n>\\<around*|]|a,\<infty\>|[><rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|]|-\<infty\>,a|]><rsub|i>
    </equation>

    Further if <math|x\<in\><around*|]|a,\<infty\>|[><rsub|i>> then
    <math|a\<less\>x<rsub|i>> so that <math|\<varepsilon\>=x<rsub|i>-a\<gtr\>0>.
    If now <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<varepsilon\>|)>>
    then <math|max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<less\>\<varepsilon\>>
    or <math|<around*|\||x<rsub|i>-y<rsub|i>|\|>\<less\>\<varepsilon\>> so
    that <math|x<rsub|i>-y<rsub|i>\<less\>\<varepsilon\>=x<rsub|i>-a\<Rightarrow\>-y<rsub|i>\<less\>-a\<Rightarrow\>a\<less\>y<rsub|i>>
    proving <math|y\<in\><around*|]|a,\<infty\>|[><rsub|i>>. Hence
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x|)>\<subseteq\><around*|]|a,\<infty\>|[><rsub|i>>
    or\ 

    <\equation>
      <label|eq 18.28.015><around*|]|a,\<infty\>|[><rsub|i><text| is open and
      by <reference|eq 18.27.015> ><around*|]|-\<infty\>,a|]><rsub|i><text|
      is closed>
    </equation>

    Using the above it follows that <math|<around*|{|<around*|]|-\<infty\>,a|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    and <math|<around*|{|<around*|]|\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>\<subseteq\><around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C
    is closed|}>\<subseteq\>\<sigma\><around*|[|<around*|{|C\<in\>\<bbb-R\><rsup|n>\|C
    is closed|}>|]>\<equallim\><rsub|<text|<reference|Borel algebra is
    generated by closed sets>>>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
    Hence\ 

    <\equation>
      <label|eq 18.29.015>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<wedge\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation>

    Let <math|a\<in\>\<bbb-R\><rsup|n>>, <math|b\<in\>\<bbb-R\><rsup|n>> with
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|]><rsub|i><big|cap><around*|]|a<rsub|i>,\<infty\>|[><rsub|i>|)>>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>x\<in\><around*|]|a<rsub|i>,\<infty\>|[><rsub|i>\<wedge\>x\<in\><around*|]|-\<infty\>,b<rsub|i>|]><rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>\<vDash\>a<rsub|i>\<less\>x<rsub|i>\<wedge\>x<rsub|i>\<leqslant\>b<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,b|]>>>>>
    </eqnarray*>

    proving that

    <\equation>
      <label|eq 18.30.015><around*|]|a,b|]>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|]><rsub|i><big|cap><around*|]|a<rsub|i>,\<infty\>|[><rsub|i>|)>
    </equation>

    Using the properties of a <math|\<sigma\>>-algebra it follows from
    <reference|eq 18.27.015> that <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|<around*|]|-\<infty\>,b<rsub|i>|]><rsub|i><big|cap><around*|]|a<rsub|i>,\<infty\>|[><rsub|i>|)>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>,
    <math|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>.
    So using <reference|eq 18.30.015> it follows that
    <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text| with
    >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>,
    <math|<text|>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>
    or <math|\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>,
    <math|<text|>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>.
    Applying then <reference|Borel sets in R^n> gives\ 

    <\equation>
      <label|eq 18.31.015>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>\<wedge\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Finally combining <reference|eq 18.29.015> and <reference|eq 18.31.015>
    proves\ 

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>\<wedge\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>
    </equation*>
  </proof>

  To summarize we have combining <reference|Borel algebra is generated by
  closed sets>, <reference|Borel sets in R^n> and <reference|Borel Algebra in
  R^n (2)> that

  <\theorem>
    <label|Borel algebra on R^n alternatives>Let <math|n\<in\>\<bbb-N\>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is closed>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>>>
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
      <math|n\<in\>\<bbb-N\>> we have that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|finite subadditive> if
      for all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable additive> if
      for all pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable subadditive> if
      for all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
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

      <item>For every pairwise disjoint <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      we have\ 

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      [or <math|\<mu\>> is countable additive]
    </enumerate>

    A tripple <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> where
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
    Let <math|n\<in\>\<bbb-N\>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>.
    Define now <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
    i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\><text| if
    >i\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>>. If
    <math|k,l\<in\>\<bbb-N\>> with <math|k\<neq\>l> then we have either\ 

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
      of possible empty sets>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
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

  Next we prove that countable additivity implies countable subadditivity.\ 

  <\theorem>
    <label|measure is subadditive>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measurable space then for every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>>
    we have that <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
  </theorem>

  <\proof>
    Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|X<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>
    if i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>> then by the properties of a
    <math|\<sigma\>>-algebra it follows that
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>.
    Further using <reference|writing a countable family of sets as a disjoint
    familly of sets> we have that <math|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>>. So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|sum
      and order relation in the extented reals> and <reference|measure
      properties (1)>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|measure properties (2)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then\ 

    <\enumerate>
      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> we have
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|A<rsub|i+1>\<subseteq\>A<rsub|i>> and
      <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|\<mu\><around*|(|A<rsub|k>|)>\<less\>\<infty\>> we have that
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
      i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1> if
      i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>\<in\>\<cal-A\>>. Let
      <math|i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> then we may always
      assume that <math|i\<less\>j> [otherwise exchange <math|i> and
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
        <label|eq 18.36.016>\<forall\>i.j\<in\>\<bbb-N\> with i\<neq\>j we
        have B<rsub|i><big|cap>B<rsub|j>=\<emptyset\>
      </equation>

      Next if <math|n\<in\>\<bbb-N\>> we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
      <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1>\<subseteq\>A<rsub|1>
      if i=1>>|<row|<cell|A<rsub|i>\\A<rsub|i-1>\<subseteq\>A<rsub|i> if
      i\<in\>\<bbb-N\>\\<around*|{|i|}>>>>>>\<subseteq\>A<rsub|i>\<subseteq\>A<rsub|n>>
      it follows that\ 

      <\equation>
        <label|eq 18.37.016><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\>A<rsub|n>\<wedge\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
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
        <label|eq 18.38.016>\<forall\>n\<in\>\<bbb-N\><text| we have
        >A<rsub|n>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>
      </equation>

      From the above it follows that <math|A<rsub|n>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>>
      which by <reference|eq 18.36.016> and <reference|eq 18.37.016> gives

      <\eqnarray*>
        <tformat|<table|<row|<cell|<label|eq
        18.39.016><big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>|<cell|=>|<cell|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><eq-number>>>>>
      </eqnarray*>

      Finally we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is a measure>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><rsub|>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><text|
        is additive by <reference|countable additivity implies
        additivity>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.38.016>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|n>|)>>>>>
      </eqnarray*>

      proving (1).

      <item>First we consider the case where <math|k=1>. So let
      <math|\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>> then as
      <math|\<forall\>i\<in\>\<bbb-N\>> we have <math|1\<leqslant\>i> it
      follows that <math|A<rsub|i>\<subseteq\>A<rsub|1>\<Rightarrow\>\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      proving that\ 

      <\equation>
        <label|eq 18.40.016>\<forall\>i\<in\>\<bbb-N\><text| we have
        >\<mu\><around*|(|A<rsub|i>|)>\<less\>\<infty\>
      </equation>

      Define now <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|B<rsub|i>=A<rsub|1>\\A<rsub|i>> then we have if
      <math|x\<in\>B<rsub|i>> that <math|x\<in\>A<rsub|1>\<wedge\>x\<nin\>A<rsub|i>\<supseteq\>A<rsub|i+1>\<Rightarrow\>x\<nin\>A<rsub|i+1>>
      proving that <math|x\<in\>B<rsub|i+1>> hence\ 

      <\equation>
        <label|eq 18.41.016>\<forall\>i\<in\>\<bbb-N\><text| we have
        >B<rsub|i>\<subseteq\>B<rsub|i+1>
      </equation>

      So we may use (1) giving

      <\equation>
        <label|eq 18.42.016>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>
      </equation>

      Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|1>\\B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>><around*|(|A<rsub|1>\\<around*|(|A<rsub|1>\\A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Acc=A>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i><eq-number><label|eq
        18.43.016>>>>>
      </eqnarray*>

      As <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|B<rsub|i>=A<rsub|1>\\A<rsub|i>\<subseteq\>A<rsub|1>> we have that
      <math|\<mu\><around*|(|B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>
      and <math|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>\<subseteq\>A<rsub|1>>
      giving <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>\<leqslant\>\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\>>.
      Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.43.016>>>>|<cell|\<mu\><around*|(|A<rsub|1>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
        properties (1)>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.42.016>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|A<rsub|1>|)>-<below|lim|i\<rightarrow\>\<infty\>><around*|(|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        xi+x> and <reference|properties of the limit in the extented
        reals>>>>|<cell|\<mu\><around*|(|A<rsub|1>|)>-\<mu\><around*|(|A<rsub|1>|)>+<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>>>
      </eqnarray*>

      Hence we have\ 

      <\equation>
        <label|eq 18.44.016>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>><text|
        with >\<mu\><around*|(|A<rsub|1>|)>\<less\>\<infty\><infix-and>\<forall\>i\<in\>\<bbb-N\><text|
        >A<rsub|i+1>\<subseteq\>A<rsub|i><text| we have
        >\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>
      </equation>

      We consider the general case <math|1\<less\>k>. Let now
      <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> be such that
      <math|\<forall\>i\<in\>C<rsub|i+1>\<subseteq\>C<rsub|i>> and
      <math|\<exists\>k\<in\>\<bbb-N\>\\<around*|{|1|}>> such that
      <math|\<mu\><around*|(|C<rsub|k>|)>\<less\>\<infty\>>. Define then
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|A<rsub|i>=C<rsub|i+<around*|(|k-1|)>>> then
      <math|\<mu\><around*|(|A<rsub|1>|)>=\<mu\><around*|(|C<rsub|1+<around*|(|k-1|)>>|)>=\<mu\><around*|(|C<rsub|k>|)>\<less\>\<infty\>>
      and <math|\<forall\>i\<in\>\<bbb-N\>> we have
      <math|A<rsub|i+1>=C<rsub|<around*|(|i+<around*|(|k-1|)>|)>+1>\<subseteq\>C<rsub|i+<around*|(|k-1|)>>=A<rsub|i>>.
      Hence using <reference|eq 18.44.016> we have
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i+<around*|(|k-1|)>>|)>\<equallim\><rsub|<text|<reference|limit
      and translation of indexes>>><below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>>
      proving that\ 

      <\equation>
        <label|eq 18.45.016>\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|i>|)>
      </equation>

      Further if <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>> then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have as
      <math|i+<around*|(|k-1|)>\<in\>\<bbb-N\>> that
      <math|x\<in\>C<rsub|i+<around*|(|k-1|)>>=A<rsub|i>> proving that
      <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> hence

      <\equation>
        <label|eq 18.46.016><big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>\<subseteq\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>
      </equation>

      If now <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>> then
      <math|\<forall\>i\<in\>\<bbb-N\>> we have <math|x\<in\>A<rsub|i>>, then
      for <math|j\<in\>\<bbb-N\>> we have either\ 

      <\description>
        <item*|<math|j\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>>then as
        <math|j-<around*|(|k-1|)>\<in\>\<bbb-N\>> we have
        <math|x\<in\>A<rsub|j-<around*|(|k-1|)>>=C<rsub|j-<around*|(|k-1|)>+<around*|(|k-1|)>>=C<rsub|j>>
        [so also <math|x\<in\>C<rsub|k>>]

        <item*|<math|j\<in\><around*|{|1,\<ldots\>,k-1|}>>>then as
        <math|j\<less\>k> we have <math|C<rsub|k>\<subseteq\>C<rsub|j>\<Rightarrowlim\><rsub|x\<in\>C<rsub|k>>x\<in\>C<rsub|j>>
      </description>

      hence <math|x\<in\><big|cap><rsub|j\<in\>\<bbb-N\>>C<rsub|j>>.
      Combining this with <reference|eq 18.46.016> gives
      <math|<big|cap><rsub|i\<in\>\<bbb-N\>>C<rsub|i>=<big|cap><rsub|i\<in\>\<bbb-N\>>A<rsub|i>>.
      Finally using this on <reference|eq 18.45.016> we have\ 

      <\equation*>
        \<mu\><around*|(|<big|cap><rsub|j\<in\>\<bbb-N\>>C<rsub|j>|)>=<below|lim|j\<rightarrow\>\<infty\>>\<mu\><around*|(|C<rsub|j>|)>
      </equation*>

      proving the theorem for the case <math|1\<less\>k>.
    </enumerate>
  </proof>

  We have the following inverse of the above theorem that provides methodes
  to check if set function is a measure.

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

      Using the hypothese we have then that
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

  <subsection|Carathéodory theorem>

  The Carathéodory theorem allows us to generate a <math|\<sigma\>>-algebra
  and a measure on this <math|\<sigma\>>-algebra. First we define the concept
  of a outer measure that has enough properties to use as a basis to generate
  a <math|\<sigma\>>-algebra and mesaure.

  <\definition>
    <label|outer measure>Let <math|X> be a set then
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a <with|font-series|bold|outer measure >if\ 

    <\enumerate>
      <item><math|\<varphi\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|A,B\<in\>\<cal-P\>*<around*|(|X|)>> with
      <math|A\<subseteq\>B> we have <math|\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|B|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then <math|\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
    </enumerate>
  </definition>

  <\lemma>
    <label|outer measure finite subadditivity>Let <math|X> be a set and
    <math|\<varphi\>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0.\<infty\>|]>>
    a ouer measure then <math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,n\<in\>\<bbb-N\>>
    we have <math|\<varphi\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<rsub|i>|)>>
  </lemma>

  <\proof>
    Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|i> if
    i\<in\><around*|{|1,\<ldots\>,n|}>>>|<row|<cell|\<emptyset\>
    if\<in\>\<bbb-N\>\\<around*|{|1,\<ldots\>,n|}>>>>>>> then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|union
      of possible empty sets>>>>|<cell|\<varphi\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
      sum of extented reals written as infinite
      sum>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)><rsub|>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<varphi\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>
  </proof>

  Note that a outer measure is not a measure, it is not defined on a
  <math|\<sigma\>>-algebra of <math|X> but on the set of all subsets of
  <math|X>, further <math|\<varphi\>> is not countable additve but only
  countable subaddtive. To be able to define a <math|s>-algebra we introduce
  the concept of a measurable set.

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
    we have <math|\<varphi\><around*|(|A|)>\<geqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>
  </lemma>

  <\proof>
    Let <math|A\<in\>\<cal-P\><around*|(|X|)>> then as
    <math|A=<around*|(|A<big|cap>B|)><big|cup><around*|(|A\\B|)>> we have by
    <reference|outer measure finite subadditivity> that
    <math|\<varphi\><around*|(|A|)>\<leqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>
    it follows from the assumption <math|\<varphi\><around*|(|A|)>\<geqslant\>\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>
    that <math|\<varphi\>><math|<around*|(|A|)>=\<varphi\><around*|(|A<big|cap>B|)>+\<varphi\><around*|(|A\\B|)>>.
  </proof>

  We are now ready to prove the Carathéodory theorem that shows how we can
  construct a measure space using a outer measure.

  <\theorem>
    <label|Caratheodore><index|Carathéodory theorem><dueto|Carathéodory
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
        \<cal-M\><rsub|\<varphi\>><around*|[|X|]><text| is a algebr>a
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
      that <math|A\<subseteq\>X> was arbitrary choosen proves that\ 

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

  <subsection|The Carathéodory theorem and the set of real numbers>

  First we define the concept of the length of bounded intervals.

  <\definition>
    <label|bounded intervals>We define the following set of bounded
    intervals:\ 

    <\enumerate>
      <item><math|\<cal-I\><rsub|<around*|[||]>>=<around*|{|<around*|[|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
      (the set of closed bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|[||[>>=<around*|{|<around*|[|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
      (the set of right open bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|]||]>>=<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
      (the set of left open bounded intervals)

      <item><math|\<cal-I\><rsub|<around*|]||[>>=<around*|{|<around*|]|a,b|[>\|a,b\<in\>\<bbb-R\>\<wedge\>a\<leqslant\>b|}>>
      (the set of open bounded intervals)

      <item><math|\<cal-I\>=\<cal-I\><rsub|<around*|[||]>><big|cup>\<cal-I\><rsub|<around*|[||[>><big|cup>\<cal-I\><rsub|<around*|]||]>><big|cup>\<cal-I\><rsub|<around*|]||[>>>
      (the set of all bounded intervals)
    </enumerate>
  </definition>

  <\definition>
    The length function <math|l> is defined as follows

    <\equation*>
      l:\<cal-I\>\<rightarrow\><around*|[|0,\<infty\>|[><text| where
      >l<around*|(|I|)>=<choice|<tformat|<table|<row|<cell|b-a if
      I=<around*|[|a,b|]>>>|<row|<cell|b-a if
      I=<around*|[|a,b|[>>>|<row|<cell|b-a if
      I=<around*|]|a,b|]>>>|<row|<cell|b-a if I=<around*|]|a,b|[>>>>>>
    </equation*>
  </definition>

  We must of course prove that the function <math|l> is well defined (as for
  example <math|<around*|]|1,1|[>=<around*|]|2.2|[>> so that a bounded
  interval does not have well defined boundary points.

  <\proof>
    Let <math|I\<in\>\<cal-I\>> then we must consider the following cases for
    <math|I>\ 

    <\description>
      <item*|<math|I=<around*|[|a,b|]>\<wedge\>a\<leqslant\>b>>from
      <reference|generalized intervals and boundaries> it follows that
      <math|a,b> is uniquely determined so that
      <math|l<around*|(|<around*|[|a,b|]>|)>=b-a> is well defined.

      <item*|<math|I=<around*|[|a,b|[>\<wedge\>a\<leqslant\>b>>from
      <reference|generalized intervals and boundaries> it follows that
      <math|a,b> is uniquely determined so that
      <math|l<around*|(|<around*|[|a,b|]>|)>=b-a> is well defined.

      <item*|<math|I=<around*|]|a,b|]>\<wedge\>a\<leqslant\>b>>from
      <reference|generalized intervals and boundaries> it follows that
      <math|a,b> is uniquely determined so that
      <math|l<around*|(|<around*|[|a,b|]>|)>=b-a> is well defined.

      <item*|<math|I=<around*|]|a,b|[>\<wedge\>a\<leqslant\>b>>If
      \ <math|I\<neq\>\<emptyset\>> then using \ <reference|generalized
      intervals and boundaries> it follows that <math|a,b> is uniquely
      determined so that <math|l<around*|(|<around*|[|a,b|]>|)>=b-a> is well
      defined. If <math|I=\<emptyset\>> then if <math|I=<around*|[|c,d|]>>
      with <math|c\<less\>d> there exists by <reference|density theorem for
      the reals> a <math|q\<in\>\<bbb-Q\>> with <math|c\<less\>q\<less\>d>
      giving the contradiction that <math|I=\<emptyset\>> hence <math|c=d> so
      that <math|l<around*|(|<around*|[|c,d|]>|)>=d-c=0> in all cases
    </description>
  </proof>

  <\definition>
    Let <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>> then
    <math|\<cal-C\><rsub|A>=<around*|{|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsub|<around*|]||[>><text|
    and >A\<subseteq\><big|cup><rsub|i\<in\>>I<rsub|i>|}>>
  </definition>

  <\lemma>
    <label|R can be covered by open intervals><math|\<bbb-R\>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|]|-i,i|[>>
  </lemma>

  <\proof>
    Let <math|x\<in\>\<bbb-R\>> then by <reference|consequence of the
    archimedean property for the reals> there exists a
    <math|n\<in\>\<bbb-Z\>> such that <math|n\<leqslant\>x\<less\>n+1>. We
    have then either

    <\description>
      <item*|<math|0\<leqslant\>n>>then as <math|n\<less\>n+1> we have
      <math|-<around*|(|n+1|)>\<less\>-n\<leqslant\>0\<leqslant\>n> so that
      <math|-<around*|(|n+1|)>\<less\>x\<less\>n+1> proving that
      <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|]|-i,i|[>>

      <item*|<math|n\<less\>0>>then then <math|-n=<around*|\||n|\|>\<Rightarrow\>-<around*|(|<around*|\||n|\|>+1|)>=-<around*|\||n|\|>-1\<less\>-<around*|\||n|\|>\<leqslant\>x\<less\>n+1\<leqslant\><around*|\||n+1|\|>\<less\><around*|\||n|\|>+1>
      proving that <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\>><around*|]|-i,i|[>>
    </description>
  </proof>

  <\corollary>
    Let <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>> then
    <math|\<cal-C\><rsub|A>\<neq\>\<emptyset\>>
  </corollary>

  <\proof>
    This trivially follows from <math|A\<subseteq\>\<bbb-R\>\<subseteq\><rsub|<text|<reference|R
    can be covered by open intervals>>><big|cup><rsub|i\<in\>\<bbb-N\>><around*|]|-n,n|[>>
    hence <math|<around*|{|<around*|(|-i,u|)>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A>>
  </proof>

  The above corollary ensures that <math|inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|I<rsub|i><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A>|}>|)>>
  exists and is bigger or equal to <math|0> which leads to the following
  definition.

  <\definition>
    <index|Lebesgue outer measure><dueto|Lebesgue outer
    measure><math|\<lambda\><rsup|\<ast\>>:\<cal-P\><around*|(|\<bbb-R\>|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by <math|\<lambda\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-C\><rsub|A>|)>>.
    \ Note that the sum in the definition can be <math|\<infty\>> [well
    defined in <math|<wide|\<bbb-R\>|\<bar\>>> see <reference|series of
    positive extented reals is increasing>]
  </definition>

  As indicated in the name <math|\<lambda\><rsup|\<ast\>>> is a outer measure
  on <math|\<bbb-R\>> as proved in the next theorem.

  <\theorem>
    <math|\<lambda\><rsup|\<ast\>>> is a outer measure on <math|\<bbb-R\>>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|<big|sum><rsub|i\<in\>\<bbb-N\>><around*|]|i,i|[>=0> and
      <math|\<emptyset\>=<big|cup><rsub|i\<in\>\<bbb-N\>><around*|]|-i,i|[>>
      it follows that <math|0\<leqslant\>\<lambda\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|\<emptyset\>>|}>|)>\<leqslant\><big|sum><rsub|i\<in\>\<bbb-N\>><around*|]|i,i|[>=0>.
      Proving that\ 

      <\equation*>
        \<lambda\><rsup|\<ast\>><around*|(|\<emptyset\>=0|)>
      </equation*>

      <item>If <math|A,B\<in\>\<cal-P\><around*|(|\<bbb-R\>|)>> with
      <math|A\<subseteq\>B> then if <math|x\<in\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|B>|}>>
      we have <math|x=<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>
      with <math|A\<subseteq\>B\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
      so that <math|x\<in\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A>|}>>
      proving that <math|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|B>|}>\<subseteq\><around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A>|}>>.
      Hence \ <math|inf><math|<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A>|}>|)>\<leqslant\>inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>\|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|B>|}>|)>>
      [see <reference|series of positive extented reals is increasing>]
      proving that

      <\equation*>
        \<forall\>A,B\<in\>\<cal-P\><around*|(|\<bbb-R\>|)> <text|with
        >A\<subseteq\>B<text| we have >\<lambda\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<lambda\><rsup|\<ast\>><around*|(|B|)>
      </equation*>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\>|)>>
      then for <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>>
      we have the following cases to consider

      <\description>
        <item*|<math|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>>then
        we have by the definition of <math|\<infty\>> that

        <\equation*>
          \<lambda\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
        </equation*>

        <item*|<math|<big|sum><rsup|\<infty\>><rsub|i=1>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>\<less\>\<infty\>>>Take
        <math|\<varepsilon\>\<gtr\>0> then we have by the definition of the
        infinum that\ 

        <\equation>
          <label|eq 18.63.016>\<forall\>n\<in\>\<bbb-N\>
          \<exists\><around*|{|I<rsub|n,i>|}><rsub|i\<in\>\<bbb-N\>>\<in\>\<cal-C\><rsub|A<rsub|n>><text|
          such that ><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|n,i>|)>\<less\>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|n>|)>+<frac|\<varepsilon\>|2<rsup|n>>
        </equation>

        Using <reference|countable sum of countable sums is a countable sum>
        there exists a bijection <math|\<sigma\>:\<bbb-N\>\<rightarrow\>\<bbb-N\>\<times\>\<bbb-N\>>
        such that <math|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>=<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|<big|sum><rsub|j=1><rsup|\<infty\>>l<around*|(|I<rsub|i,j>|)>|)>>,
        hence using <reference|sum and order relation in the extented reals>
        and <reference|eq 18.63.016> we have that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|n>>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
          of series in the extended reals>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
          of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+\<varepsilon\>>>>>
        </eqnarray*>

        Using <reference|consequence of the Archimedean property (2)> it
        follow then that\ 

        <\equation>
          <label|eq 18.64.016><big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|\<sigma\><around*|(|i|)><rsub|1>,\<sigma\><around*|(|i|)><rsub|2>>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
        </equation>

        Now if <math|x\<in\><big|cup><rsub|i=1><rsup|\<infty\>>A<rsub|i>>
        there exists a <math|i\<in\>\<bbb-N\>> such that
        <math|x\<in\>A<rsub|i>\<subseteq\><big|cup><rsub|j\<in\>\<bbb-N\>>I<rsub|i,j>>
        so that <math|\<exists\>j\<in\>\<bbb-N\>> such that
        <math|x\<in\>I<rsub|i,j>>. As <math|\<sigma\>> is a bijection there
        exists a <math|k\<in\>\<bbb-N\>> such that
        <math|<around*|(|i,j|)>=\<sigma\><around*|(|k|)>> hence
        <math|x\<in\>I<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>>.
        This proves that\ 

        <\equation>
          <label|eq 18.65.016><big|cup><rsub|i=1><rsup|\<infty\>>A<rsub|i>\<subseteq\><big|cup><rsub|k\<ni\>\<bbb-N\>>I<rsub|\<sigma\><around*|(|k|)><rsub|1>,\<sigma\><around*|(|k|)><rsub|2>>
        </equation>

        Combining <reference|eq 18.64.016> and <reference|eq 18.65.016> with
        the definition of <math|\<lambda\><rsup|\<ast\>>> we have finally
        that

        <\equation*>
          \<lambda\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
        </equation*>
      </description>

      So in all cases we have\ 

      <\equation*>
        \<lambda\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>

    (1),(2) and (3) proves finally that <math|\<lambda\><rsup|\<ast\>>> is a
    outer measure.
  </proof>

  Next we show that the Lebesgue outer measure is a extension of the interval
  length and that every Borel set in <math|\<cal-B\><around*|[|\<bbb-R\>|]>>
  is <math|\<lambda\><rsup|\<ast\>>>-measurable. First we need a little
  lemma.

  <\lemma>
    <label|[a,b] coverings>Let <math|n\<in\>\<bbb-N\>>
    <math|<around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
    [the set of bounded open intervals] then if
    <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i>>
    we have <math|l<around*|(|<around*|[|a,b|]>|)>\<less\><big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>>
  </lemma>

  <\proof>
    We proof this by induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\>\|\<forall\><around*|{|I<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-I\><rsub|<around*|]|a,b|[>><text|
    we have if ><around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>I<rsub|i><text|
    then >l<around*|(|<around*|[|a,b|]>|)>\<less\><big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>|}>>.
    Then we have

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>if <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>I<rsub|i>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
      then \ <math|<around*|[|a,b|]>\<subseteq\>I<rsub|1>> and
      <math|I<rsub|1>=<around*|]|a<rsub|1>,b<rsub|1>|[>> so that
      <math|a<rsub|1>\<less\>a\<leqslant\>b\<less\>b<rsub|1>> proving that
      <math|l<around*|(|<around*|[|a,b|]>|)>=b-a\<less\>b<rsub|1>-a<rsub|1>=l<around*|(|I<rsub|1>|)>=<big|sum><rsub|i=1><rsup|1>l<around*|(|I<rsub|i>|)>>.\ 

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>If
      <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>I<rsub|i>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
      then <math|\<exists\>k\<in\><around*|{|1,\<ldots\>,n+1|}>> such that
      <math|b\<in\>I<rsub|k>> where <math|I<rsub|k>=<around*|]|a<rsub|k>,b<rsub|k>|[>>
      or

      <\equation>
        <label|eq 18.66.016.1>a<rsub|k>\<less\>b\<less\>b<rsub|k>.
      </equation>

      We must now consider two cases

      <\description>
        <item*|<math|a<rsub|k>\<less\>a>>Then
        <math|a<rsub|k>\<less\>a\<leqslant\>b\<less\>b<rsub|k>> so that
        <math|l<around*|(|<around*|[|a,b|]>|)>=b-a\<less\>b<rsub|k>-a<rsub|k>=l<around*|(|I<rsub|k>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n+1>l<around*|(|I<rsub|i>|)>>
        proving that <math|n+1\<in\>\<cal-S\>> in this case.

        <item*|<math|a\<leqslant\>a<rsub|k>>>Then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|x\<in\><around*|[|a,b|]>\\<around*|]|a<rsub|k>,b<rsub|k>|[>>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>x\<leqslant\>b\<wedge\>\<neg\><around*|(|x\<in\><around*|]|a<rsub|k>,b<rsub|k>|[>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<leqslant\>x\<wedge\>x\<leqslant\>b\<wedge\><around*|(|x\<leqslant\>a<rsub|k>\<vee\>b<rsub|k>\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|a\<leqslant\>x\<wedge\>x\<leqslant\>b\<wedge\>x\<leqslant\>a<rsub|k>|)>\<vee\><around*|(|a\<leqslant\>x\<wedge\>x\<leqslant\>b\<wedge\>b<rsub|k>\<leqslant\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|b\<less\>b<rsub|k>>>|<cell|a\<leqslant\>x\<wedge\>x\<leqslant\>b\<wedge\>x\<leqslant\>a<rsub|k>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|a<rsub|k>\<less\>b>>|<cell|a\<leqslant\>x\<leqslant\>a<rsub|k>>>>>
        </eqnarray*>

        giving

        <\equation>
          <label|eq 18.66.016><around*|[|a,b|]>\\<around*|]|a<rsub|k>,b<rsub|k>|[>=<around*|[|a,a<rsub|k>|]>
        </equation>

        Define <math|<around*|{|J<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        by <math|J<rsub|i>=<choice|<tformat|<table|<row|<cell|I<rsub|i> if
        i\<in\><around*|{|1,\<ldots\>,k|}>>>|<row|<cell|I<rsub|i+1> if
        i\<in\><around*|{|k+1,\<ldots\>,n|}>>>>>>> then

        <\equation>
          <label|eq 18.67.016><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>J<rsub|i>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>I<rsub|k><text|
          and ><big|sum><rsub|i=1><rsup|k-1>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i=k+1><rsup|n+1>l<around*|(|I<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>l<around*|(|J<rsub|i>|)>
        </equation>

        Further if <math|x\<in\><around*|[|a,a<rsub|k>|]>> then
        <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n+1|}>> so that
        <math|x\<in\>I<rsub|i>>,, using <reference|eq 18.66.016> we must have
        that <math|i\<neq\>k> hence we have using <reference|eq 18.67.016>

        <\equation*>
          <around*|[|a,a<rsub|k>|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>J<rsub|i>
        </equation*>

        As <math|n\<in\>\<cal-S\>> we have that\ 

        <\equation>
          <label|eq 18.68.016>a<rsub|k>-a=l<around*|(|<around*|[|a,a<rsub|k>|]>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>l<around*|(|J<rsub|i>|)>=<big|sum><rsub|i=1><rsup|k-1>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i=k+1><rsup|n+1>l<around*|(|I<rsub|i>|)>
        </equation>

        Next\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|l<around*|(|<around*|[|a,b|]>|)>>|<cell|=>|<cell|b-a>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
          18.66.016.1>>>>|<cell|b<rsub|k>-a>>|<row|<cell|>|<cell|=>|<cell|b<rsub|k>-a<rsub|k>+a<rsub|k>-a>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          18.68.016>>>>|<cell|b<rsub|k>-a<rsub|k>+<big|sum><rsub|i=1><rsup|k-1>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i=k+1><rsup|n+1>l<around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|l<around*|(|I<rsub|k>|)>+<big|sum><rsub|i=1><rsup|k-1>l<around*|(|I<rsub|i>|)>+<big|sum><rsub|i=k+1><rsup|n+1>l<around*|(|I<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1>l<around*|(|I<rsub|i>|)>>>>>
        </eqnarray*>

        So we have proved that <math|n+1\<in\>\<cal-S\>>.
      </description>
    </description>

    Induction concludes the lemma.
  </proof>

  <\theorem>
    If <math|I\<in\>\<cal-I\>> [see <reference|bounded intervals>] then
    <math|l<around*|(|I|)>=\<lambda\><rsup|\<ast\>><around*|(|I|)>>
  </theorem>

  <\proof>
    Let <math|I\<in\>\<cal-I\>> then there exists a <math|a,b\<in\>\<bbb-R\>>
    with <math|a\<leqslant\>b> so that <math|I> is either

    <\description>
      <item*|<math|<around*|[|a,b|]>>>Let <math|\<varepsilon\>\<gtr\>0> then
      if we define <math|<around*|{|J<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>> by
      <math|J<rsub|i>=<choice|<tformat|<table|<row|<cell|<around*|]|a-<frac|\<varepsilon\>|2>,b+<frac|\<varepsilon\>|2>|[>
      if i=1>>|<row|<cell|<around*|]|1,1|[>=\<emptyset\> if
      i\<in\>\<bbb-N\>\\<around*|{|1|}>>>>>>>then we have
      <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>J<rsub|i>>
      so that <math|\<lambda\><rsup|\<ast\>><around*|(|I|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|J<rsub|i>|)>=l<around*|(|<around*|]|a-<frac|\<varepsilon\>|2>,b+<frac|\<varepsilon\>|2>|[>|)>=b-a+\<varepsilon\>=l<around*|(|<around*|[|a,b|]>|)>+\<varepsilon\>>
      which by the definition of the infinum proves that
      <math|\<lambda\><rsup|\<ast\>><around*|(|<around*|[|a,b|]>|)>\<leqslant\>l<around*|(|I|)>>.
      As <math|\<varepsilon\>\<gtr\>0> was chosen arbitrary we have by
      <reference|consequence of the Archimedean property (2)> that\ 

      <\equation>
        <label|eq 18.71.016>\<lambda\><rsup|\<ast\>><around*|(|<around*|[|a,b|]>|)>\<leqslant\>l<around*|(|<around*|[|a,b|]>|)>
      </equation>

      Now for the opposite inequality. Let
      <math|<around*|{|I<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-I\><rsub|<around*|]||[>>>
      such that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\>>I<rsub|i>>
      then as <math|<around*|[|a,b|]>> is compact [see <reference|[a,b] is
      compact>] there exists a finite subset <math|K\<subseteq\>\<bbb-N\>>
      such that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\>K>I<rsub|i>>.
      As we have <math|K\<subseteq\><around*|{|1,\<ldots\>,max<around*|(|K|)>|}>>
      it follows that <math|<around*|[|a,b|]>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,max<around*|(|K|)>|}>>I<rsub|i>>
      so using <reference|[a,b] coverings> it follows that\ 

      <\equation>
        <label|eq 18.72.016>l<around*|(|<around*|[|a,b|]>|)>\<leqslant\><big|sum><rsub|i=1><rsup|max<around*|(|K|)>>l<around*|(|I<rsub|i>|)>
      </equation>

      Futher as <math|<big|sum><rsub|i=1><rsup|max<around*|(|K|)>>l<around*|(|I<rsub|i>|)>\<leqslant\>sup<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|n>l<around*|(|I<rsub|i>|)>\|n\<in\>\<bbb-N\>|}>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>
      it follows from <reference|eq 18.72.016> that
      <math|l<around*|(|I|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>l<around*|(|I<rsub|i>|)>>.
      From the definition of <math|\<lambda\><rsup|\<ast\>>> as a infinum we
      must have <math|l<around*|(|<around*|[|a,b|]>|)>=l<around*|(|<around*|[|a,b|]>|)>\<leqslant\>\<lambda\><rsup|\<ast\>><around*|(|<around*|[|a,b|]>|)>>
      which combined with <reference|eq 18.70.016> gives

      <\equation*>
        l<around*|(|I|)>=l<around*|(|<around*|[|a,b|]>|)>=\<lambda\><rsup|\<ast\>><around*|(|<around*|[|a,b|]>|)>=\<lambda\><rsup|\<ast\>><around*|(|I|)>
      </equation*>

      <item*|<math|<around*|[|a,b|[>>>

      <item*|<math|<around*|]|a,b|]>>>

      <item*|<math|<around*|]|a,b|[>>>
    </description>

    \;
  </proof>

  \;

  \ 

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|763>
    <associate|page-medium|papyrus>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Borel Algebra in R^n (2)|<tuple|18.29|?>>
    <associate|Borel algebra is generated by closed sets|<tuple|18.18|?>>
    <associate|Borel algebra on R|<tuple|18.16|?>>
    <associate|Borel algebra on R^n|<tuple|18.17|?>>
    <associate|Borel algebra on R^n alternatives|<tuple|18.30|?>>
    <associate|Borel algebras on R|<tuple|18.19|?>>
    <associate|Borel sets in R^n|<tuple|18.27|?>>
    <associate|Caratheodore|<tuple|18.42|?>>
    <associate|Dyadic interval properties 2|<tuple|18.24|?>>
    <associate|Open sets in R^N are disjoint union of Dyadic
    rectang;es|<tuple|18.26|?>>
    <associate|R can be covered by open intervals|<tuple|18.46|?>>
    <associate|[a,b] coverings|<tuple|18.50|?>>
    <associate|[a,b] coverning (1)|<tuple|18.51|?>>
    <associate|algebra equivalent definitions|<tuple|18.6|?>>
    <associate|algebra of sets|<tuple|18.5|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|18.3.1|?>>
    <associate|auto-11|<tuple|18.3.2|?>>
    <associate|auto-12|<tuple|Carathéodory theorem|?>>
    <associate|auto-13|<tuple|18.3.3|?>>
    <associate|auto-14|<tuple|Lebesgue outer measure|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-3|<tuple|18.2|?>>
    <associate|auto-4|<tuple|algebra|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-7|<tuple|Borel algebra|?>>
    <associate|auto-8|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>|?>>
    <associate|auto-9|<tuple|18.3|?>>
    <associate|bounded intervals|<tuple|18.43|?>>
    <associate|countable additivity implies additivity|<tuple|18.33|?>>
    <associate|dyadic interval property|<tuple|18.23|?>>
    <associate|eq 18,12.014|<tuple|18.16|?>>
    <associate|eq 18.1.014|<tuple|18.5|?>>
    <associate|eq 18.1.016|<tuple|18.1|?>>
    <associate|eq 18.10.014|<tuple|18.11|?>>
    <associate|eq 18.10.015|<tuple|18.14|?>>
    <associate|eq 18.11.014|<tuple|18.12|?>>
    <associate|eq 18.11.015|<tuple|18.15|?>>
    <associate|eq 18.12.014|<tuple|18.13|?>>
    <associate|eq 18.13.014|<tuple|18.17|?>>
    <associate|eq 18.14.014|<tuple|18.18|?>>
    <associate|eq 18.15.015|<tuple|18.19|?>>
    <associate|eq 18.16.015|<tuple|18.20|?>>
    <associate|eq 18.17.015|<tuple|18.21|?>>
    <associate|eq 18.18.015|<tuple|18.22|?>>
    <associate|eq 18.19.015|<tuple|18.23|?>>
    <associate|eq 18.2.014|<tuple|18.6|?>>
    <associate|eq 18.2.016|<tuple|18.2|?>>
    <associate|eq 18.20.015|<tuple|18.24|?>>
    <associate|eq 18.21.015|<tuple|18.25|?>>
    <associate|eq 18.22.015|<tuple|18.26|?>>
    <associate|eq 18.23.015|<tuple|18.27|?>>
    <associate|eq 18.24.015|<tuple|18.28|?>>
    <associate|eq 18.25.015|<tuple|18.29|?>>
    <associate|eq 18.26.015|<tuple|18.30|?>>
    <associate|eq 18.27.015|<tuple|18.31|?>>
    <associate|eq 18.28.015|<tuple|18.32|?>>
    <associate|eq 18.29.015|<tuple|18.33|?>>
    <associate|eq 18.3.014|<tuple|18.7|?>>
    <associate|eq 18.3.016|<tuple|18.3|?>>
    <associate|eq 18.30.015|<tuple|18.34|?>>
    <associate|eq 18.31.015|<tuple|18.35|?>>
    <associate|eq 18.36.016|<tuple|18.36|?>>
    <associate|eq 18.37.016|<tuple|18.37|?>>
    <associate|eq 18.38.016|<tuple|18.38|?>>
    <associate|eq 18.39.016|<tuple|18.38|?>>
    <associate|eq 18.4.016|<tuple|18.4|?>>
    <associate|eq 18.40.016|<tuple|18.40|?>>
    <associate|eq 18.41.016|<tuple|18.41|?>>
    <associate|eq 18.42.016|<tuple|18.42|?>>
    <associate|eq 18.43.016|<tuple|18.43|?>>
    <associate|eq 18.44.016|<tuple|18.44|?>>
    <associate|eq 18.45.016|<tuple|18.45|?>>
    <associate|eq 18.46.016|<tuple|18.46|?>>
    <associate|eq 18.47.016|<tuple|18.47|?>>
    <associate|eq 18.48.016|<tuple|18.48|?>>
    <associate|eq 18.49.016|<tuple|18.49|?>>
    <associate|eq 18.50.016|<tuple|18.50|?>>
    <associate|eq 18.51.016|<tuple|18.51|?>>
    <associate|eq 18.52.016|<tuple|18.52|?>>
    <associate|eq 18.53.016|<tuple|18.53|?>>
    <associate|eq 18.54.016|<tuple|18.54|?>>
    <associate|eq 18.55.016|<tuple|18.55|?>>
    <associate|eq 18.56.016|<tuple|18.56|?>>
    <associate|eq 18.57.016|<tuple|18.57|?>>
    <associate|eq 18.58.016|<tuple|18.58|?>>
    <associate|eq 18.59.016|<tuple|18.59|?>>
    <associate|eq 18.60.016|<tuple|18.60|?>>
    <associate|eq 18.61.016|<tuple|18.61|?>>
    <associate|eq 18.62.016|<tuple|18.62|?>>
    <associate|eq 18.63.016|<tuple|18.63|?>>
    <associate|eq 18.64.016|<tuple|18.64|?>>
    <associate|eq 18.65.016|<tuple|18.65|?>>
    <associate|eq 18.66.016|<tuple|18.67|?>>
    <associate|eq 18.66.016.1|<tuple|18.66|?>>
    <associate|eq 18.67.016|<tuple|18.68|?>>
    <associate|eq 18.68.016|<tuple|18.69|?>>
    <associate|eq 18.7.014|<tuple|18.8|?>>
    <associate|eq 18.70.016|<tuple|18.70|?>>
    <associate|eq 18.71.016|<tuple|18.70|?>>
    <associate|eq 18.72.016|<tuple|18.71|?>>
    <associate|eq 18.8.014|<tuple|18.9|?>>
    <associate|eq 18.9.014|<tuple|18.10|?>>
    <associate|generalized rectangles and boundaries|<tuple|18.21|?>>
    <associate|generated sigma algebra|<tuple|18.14|?>>
    <associate|intersection of sigma algebras is a sigma
    algebra|<tuple|18.13|?>>
    <associate|measurable set alternative definition|<tuple|18.41|?>>
    <associate|measurable space|<tuple|18.10|?>>
    <associate|measure|<tuple|18.32|?>>
    <associate|measure is subadditive|<tuple|18.35|?>>
    <associate|measure properties (1)|<tuple|18.34|?>>
    <associate|measure properties (2)|<tuple|18.36|?>>
    <associate|measureable set|<tuple|18.40|?>>
    <associate|outer measure|<tuple|18.38|?>>
    <associate|outer measure finite subadditivity|<tuple|18.39|?>>
    <associate|properties of algebras|<tuple|18.7|?>>
    <associate|set of Dyadic intervals is denumerable|<tuple|18.25|?>>
    <associate|set of all subsets is a sigma algebra|<tuple|18.9|?>>
    <associate|sigma algebra|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|sigma algebra equivalent definitions|<tuple|18.11|?>>
    <associate|singleton family union intersection|<tuple|18.1|?>>
    <associate|union intersection union of families|<tuple|18.2|?>>
    <associate|union,intersection and function between and
    indexes|<tuple|18.3|?>>
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

      <tuple|<tuple|Carathéodory theorem>|<pageref|auto-12>>

      <tuple|<tuple|Lebesgue outer measure>|<pageref|auto-14>>
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

      18.3<space|2spc>Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-9>

      <with|par-left|<quote|1tab>|18.3.1<space|2spc>Measure definition and
      properties <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|18.3.2<space|2spc>Carathéodory theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      <with|par-left|<quote|1tab>|18.3.3<space|2spc>The Carathéodory theorem
      and the set of real numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-13>>
    </associate>
  </collection>
</auxiliary>