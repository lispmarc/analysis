<TeXmacs|2.1>

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

  For the Borel algebra on <math|\<bbb-R\>> and <math|\<bbb-R\><rsup|n>> we
  have the following alternative formulations.

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
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|a\<in\>\<bbb-R\><rsup|n>> then we define\ 

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
    <label|generalized rectangles and boundaries>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> then

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
    Let <math|N,n\<in\>\<bbb-N\><rsub|0>> then
    <math|\<bbb-D\><rsup|N><rsub|n>> is defined by
    <math|\<bbb-D\><rsup|N><rsub|n>=<around*|{|<around*|]|<frac|z|2<rsup|n>>,<frac|z|2<rsup|n+1>>|]>\|z\<in\>\<bbb-Z\><rsup|N>|}>>
    and <math|\<bbb-D\><rsup|N>> by <math|\<bbb-D\><rsup|N>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>\<bbb-D\><rsup|N><rsub|n>>
  </definition>

  We have now the following import lemmas for Dyadic rectangles.

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
      <tformat|<table|<row|<cell|J>|<cell|=>|<cell|<around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z|2<rsup|k>>\<cdot\><frac|2<rsup|n-k>|2<rsup|n-k>>,<frac|z\<cdot\>2<rsup|n-k*>+2<rsup|n-k>|2<rsup|k>\<cdot\>2<rsup|n-k>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z\<cdot\>2<rsup|n-k>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|n-k**>+2<rsup|n-k>|2<rsup|n>>|]>>>|<row|<cell|>|<cell|=>|<cell|<around*|]|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|]>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18,12.014>J=<around*|]|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>,<frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>|]>
    </equation>

    Assume now that <math|I<big|cap>J\<neq\>\<emptyset\>> then we have\ 

    <\enumerate>
      <item><math|\<exists\>x\<in\>I<big|cap>J> so that
      <math|<frac|v|2<rsup|n>>\<less\>x\<less\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>>
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
      then <math|z\<cdot\>2<rsup|l>+2<rsup|l>\<less\>v+1\<Rightarrowlim\><rsub|0\<less\>l\<Rightarrow\>\<cdot\>2<rsup|l>+2<rsup|l>\<in\>\<bbb-Z\>>z\<cdot\>2<rsup|l>+2<rsup|l>\<leqslant\>v>
      contradicting <reference|eq 18.13.014> so we must have\ 

      <\equation*>
        <frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>>
      </equation*>

      which together with <reference|eq 18.14.014> proves <math|>that
      <math|<frac|z\<cdot\>2<rsup|l>|2<rsup|n>>\<leqslant\><frac|v|2<rsup|n>>\<less\><frac|v+1|2<rsup|n>>\<leqslant\><frac|z\<cdot\>2<rsup|l>+2<rsup|l>|2<rsup|n>><frac||>>
      or <math|I\<subseteq\>J> [see <reference|eq 18.12.014>]
    </enumerate>

    Hence if <math|><math|I<big|cap>J\<neq\>\<emptyset\>> then
    <math|<around*|]|<frac|v|2<rsup|n>>,<frac|v+1|2<rsup|n>>|]>\<subseteq\><around*|]|<frac|z|2<rsup|k>>,<frac|z+1|2<rsup|k>>|]>>
    proving the lemma.

    \;
  </proof>

  <\lemma>
    <label|Dyadic interval properties 2>Let <math|N\<in\>\<bbb-N\><rsub|0>>
    then we have\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> then
      <math|\<forall\>Q,R\<in\>\<bbb-D\><rsup|N><rsub|n>> with
      <math|R\<neq\>Q> we have <math|R<big|cap>Q=\<emptyset\>>

      <item>If <math|n,k\<in\>\<bbb-N\><rsub|0>> with <math|k\<leqslant\>n>
      we have <math|\<forall\>R\<in\>\<bbb-D\><rsup|N><rsub|n>> and
      <math|\<forall\>Q\<in\>\<bbb-D\><rsup|N><rsub|k>> that either
      <math|R\<subseteq\>Q> or <math|Q<big|cap>R=\<emptyset\>>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|\<bbb-R\><rsup|N>=<big|sqcup><rsub|R\<in\>\<bbb-D\><rsup|N>>R> [a
      pairwise disjoint union]

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
      <math|\<forall\>R\<in\>\<bbb-D\><rsub|n><rsup|N>> we have that
      <math|v<around*|(|R|)>=2<rsup|-n\<ast\>N>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Take <math|Q,R\<in\>\<bbb-D\><rsup|N><rsub|n> >with
      <math|Q\<neq\>R> then there exists <math|z,w\<in\>\<bbb-Z\><rsup|N>>
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

      <item>If <math|x\<in\>\<bbb-R\><rsup|N>> then
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>> we have
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,N|}>> that
      <math|x<rsub|i>\<in\>\<bbb-R\>>, using the Archimedean property of the
      reals [see <reference|consequence of the archimedean property for the
      reals>] there exists a <math|z<rsub|i>\<in\>\<bbb-Z\>> such that
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
      <math|R=<around*|]|<frac|z|2<rsup|n>>,<frac|z+|2<rsup|n>>|]>> so that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|v<around*|(|R|)>>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|N><around*|(|<frac|z<rsub|i>+1|2<rsup|n>>-<frac|z<rsub|i>|2<rsup|n>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|N><around*|(|<frac|1|2<rsup|n>>|)>>>|<row|<cell|>|<cell|=>|<cell|2<rsup|-n\<cdot\>N>>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\lemma>
    <label|set of Dyadic intervals is denumerable>Let
    <math|N\<in\>\<bbb-N\>\\<around*|{|1|}>> then <math|\<bbb-D\><rsup|N>> is
    denumerable and <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
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

    As <math|\<bbb-Z\><rsup|N>> and <math|\<beta\>> is a bijection
    <math|D<rsub|n><rsup|N>> we have that <math|D<rsub|n><rsup|N>> is
    denumerable. Finally using <reference|denumerable union of denumerable
    sets is denumerable> we have that <math|D<rsup|N>> is denumerable.
  </proof>

  We expres now open sets in <math|\<bbb-R\><rsup|N>> as a disjoint union of
  a sequence of Dyadic rectangles

  <\lemma>
    <label|Open sets in R^N are disjoint union of Dyadic rectang;es>Let
    <math|N\<in\>\<bbb-N\>\\<around*|{|1|}>> and
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|N>>> the canonical topology defined
    on <math|\<bbb-R\><rsup|N>> [see <reference|topology of R^n>] then
    <math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|N>>> with
    <math|U\<neq\>\<emptyset\>> there exists a pairwise disjoint sequence of
    Dyadic rectangles <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-D\><rsup|N>>
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
    so that <math|x<rsub|i>-y<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|z>>>=<frac|1|2<rsup|n<rsub|x>>>>
    and <math|y<rsub|i>-x<rsub|i>\<less\><frac|z<rsub|i>+1|2<rsup|n<rsub|x>>>-<frac|z<rsub|i>|2<rsup|n<rsub|x>>>=<frac|1|2<rsup|n<rsub|x>>>\<less\>\<varepsilon\><rsub|x>>
    proving that <math|<around*|\||x<rsub|i>-y<rsub|i>|\|>\<less\>\<varepsilon\><rsub|x>>
    hence <math|<around*|\<\|\|\>|z-y|\<\|\|\>>=max<around*|(|<around*|{|<around*|\||x<rsub|i>-y<rsub|i>|\|>\|i\<in\><around*|{|1,\<ldots\>,N|}>|}>|)>\<less\>\<varepsilon\><rsub|x>>
    or that <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|x,\<varepsilon\><rsub|x>|)>>.
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
      <math|\<exists\>D\<in\>\<cal-S\><rsub|m<rsub|x>>> [hence
      <math|x\<in\>D>] and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rsub|x>-1|}>>
      we have by definition that <math|\<forall\>R\<in\>\<cal-S\><rsub|i>>
      that <math|x\<nin\>R>. Now as <math|i\<less\>m<rsub|x>> we have by
      <reference|Dyadic interval properties 2> (2) that either
      \ <math|D\<subseteq\>R>, but then as <math|x\<in\>D\<subseteq\>R> we
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

    Hence we have\ 

    <\equation>
      <label|eq 18.21.015>\<forall\>D,E\<in\>\<cal-T\> with D\<neq\>E
      <text|we have >D<big|cap>E=\<emptyset\>
    </equation>

    Given <math|D\<in\>\<cal-T\>> there exists a <math|m\<in\>\<bbb-N\>> such
    that <math|D\<in\>\<cal-T\><rsub|m>\<subseteq\>\<bbb-D\><rsup|N><rsub|m>>,
    hence <math|\<exists\>z\<in\>\<bbb-Z\>> such that
    <math|D=<around*|]|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|]>> define
    then <math|m<around*|(|D|)>> by <math|m<around*|(|D|)>=<frac|z+1|2<rsup|m>>>.
    Assume now that <math|\<cal-T\>> is finite. As
    <math|U\<neq\>\<emptyset\>> we must have
    <math|\<cal-T\>\<neq\>\<emptyset\>> [see <reference|eq 18.20.015>] so
    that <math|m=max<around*|(|<around*|{|m<around*|(|D|)>\|D\<in\>\<cal-T\>|}>|)>>
    is well defined. Hence there exists a <math|D\<in\>\<cal-T\>> such that
    <math|D=<around*|]|a,b|]>> where <math|b<rsub|1>=m>. As
    <math|b\<in\>D\<subseteq\>U> there exists a <math|\<varepsilon\>\<gtr\>0>
    such that <math|b\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|b,\<varepsilon\>|)>\<subseteq\>U>.
    Further <math|b+<frac|\<varepsilon\>|2>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>>><around*|(|b,\<varepsilon\>|)>\<subseteq\>U>
    so there exists a <math|R=<around*|]|a<rprime|'>,b<rprime|'>|]>\<subseteq\>\<cal-T\>>
    such that <math|b+<frac|\<varepsilon\>|2>\<in\>R> hence
    <math|b<rsub|1>+<frac|\<varepsilon\>|2>\<less\>m=b<rsub|1>> a
    contradiction. Hence we conclude that\ 

    <\equation>
      <label|eq 18.22.015>\<cal-T\> is infinite
    </equation>

    As <math|\<cal-T\>\<subseteq\>\<bbb-D\><rsup|N>> a denumerable set [see
    <reference|set of Dyadic intervals is denumerable>] we have by
    <reference|subsets of denumerable sets are finite or denumerable> that
    <math|\<cal-T\>> is either denumerable or finite. So using <reference|eq
    18.22.015> we conclude that\ 

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
    <label|Borel sets in R^n>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>
    then <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<cal-B\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>>
  </theorem>

  <\proof>
    If <math|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> then by the previous
    lemma [see<reference|Open sets in R^N are disjoint union of Dyadic
    rectang;es>] there exists a sequence <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<bbb-D\><rsup|n><rsub|>\<subseteq\><around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>> such that
    <math|U=<big|cup><rsub|i\<in\>\<bbb-N\>>D<rsub|i>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>> proving that
    <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>>. Hence we have\ 

    <\equation>
      <label|eq 18.24.015>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>
    </equation>

    On the other hand if <math|R\<in\><around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>> then <math|R=<around*|]|a,b|]>> with
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|a<rsub|i>\<leqslant\>b<rsub|i>>. Take <math|n\<in\>\<bbb-N\>> then
    as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|]|a<rsub|i>,b<rsub|i>|]>\<subseteq\><around*|]|a<rsub|i>,b<rsub|i>+<frac|1|n>|[>>
    proving that <math|<around*|]|a,b|]>\<subseteq\><around*|]|a,b+<frac|1|n>|[>>
    proving that\ 

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
    <math|x<rsub|i>\<in\><around*|]|a<rsub|i>,b<rsub|i>|[>> proving that
    <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b|]>>. Which
    given <reference|eq 18.25.015> proves that
    <math|R=<big|cap><rsub|n\<in\>\<bbb-N\>><around*|]|a,b+<frac|1|n>|[>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    or that <math|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
    with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
    a<rsub|i>\<leqslant\>b<rsub|i>|}>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>>
    so that\ 

    <\equation*>
      \<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>
    </equation*>

    So using <reference|eq 18.24.015> we have that\ 

    <\equation>
      <label|eq 18.26.015>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>
    </equation>
  </proof>

  For a alternative definition of <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  take\ 

  <\definition>
    Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>,
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> and <math|a\<in\>\<bbb-R\>>
    then

    <\enumerate>
      <item><math|<around*|]|a,\<infty\>|[><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>|}>>

      <item><math|<around*|]|-\<infty\>,a|]><rsub|i>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>
    </enumerate>
  </definition>

  <\lemma>
    <label|Borel Algebra in R^n (2)>Let <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>>
    then

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

    proving that\ 

    <\equation>
      <label|eq 18.27.015>\<bbb-R\><rsup|n>\\<around*|]|-\<infty\>,a|]><rsub|i>=<around*|]|a,\<infty\>|[><rsub|i><text|
      and >\<bbb-R\><rsup|n>\\<around*|]|a,\<infty\>|[><rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>><around*|]|-\<infty\>,a|]><rsub|i>
    </equation>

    Further if <math|x\<in\><around*|]|a,\<infty\>|[><rsub|i>> then
    <math|a\<less\>x<rsub|i>> so that <math|\<varepsilon\>=x<rsub|i>-a\<gtr\>0>.
    If now <math|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x|)>>
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

    Using the above it follows that <math|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    and <math|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>\<subseteq\><around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C
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
    Using then <reference|Borel sets in R^n> proves that\ 

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
    <label|Borel algebra on R^n alternatives>Let
    <math|n\<in\>\<bbb-N\>\\<around*|{|1|}>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|C\<subseteq\>\<bbb-R\><rsup|n>\|C<text|
      is closed>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|a,b|]>\|a,b\<in\>\<bbb-R\><rsup|n><text|
      with >\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>\<leqslant\>b<rsub|i>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|-\<infty\>,a|]><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<cal-B\><around*|[|<around*|{|<around*|]|a,\<infty\>|[><rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\<wedge\>a\<in\>\<bbb-R\>|}>|]>>>>>
    </eqnarray*>
  </theorem>

  <section|Measures>

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space [see <reference|measurable space>] and
    <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a function
    then we say that:

    <\enumerate>
      <item><math|\<mu\>> is <with|font-series|bold|finitely additive> if for
      all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>>
      with <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      [finite family of pairwise disjoint sets in <math|\<cal-A\>>] we have
      that

      <\equation*>
        \<mu\><around*|(|<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|finitely subadditive> if
      for all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> we have that

      <\equation*>
        \<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>
      </equation*>

      <item><math|\<mu\>> is <with|font-series|bold|countable additive> if or
      all <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>,
      <math|n\<in\>\<bbb-N\>> such that <math|\<forall\>i,j\<in\>\<bbb-N\>>
      with <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
      [countable family of pairwise disjoint sets in <math|\<cal-A\>>] we
      have that

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

      <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      such that <math|\<forall\>i,j\<in\>\<bbb-N\>> with <math|i\<neq\>j> we
      have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> we have\ 

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

    So we have by countable additivity we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>|<cell|\<equallim\><rsub|<text|<reference|union
      of possible empty sets>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|finite
      sum of extented reals written as infinite
      sum>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>\<mu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>

    proving the note.
  </proof>

  Next we prove that countable additivity implies countable subadditivity.\ 

  \;

  \;

  \;

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|757>
    <associate|page-medium|papyrus>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|Borel Algebra in R^n (2)|<tuple|18.28|?>>
    <associate|Borel algebra is generated by closed sets|<tuple|18.17|?>>
    <associate|Borel algebra on R|<tuple|18.15|?>>
    <associate|Borel algebra on R^n|<tuple|18.16|?>>
    <associate|Borel algebra on R^n alternatives|<tuple|18.29|?>>
    <associate|Borel algebras on R|<tuple|18.18|?>>
    <associate|Borel sets in R^n|<tuple|18.26|?>>
    <associate|Dyadic interval properties 2|<tuple|18.23|?>>
    <associate|Open sets in R^N are disjoint union of Dyadic
    rectang;es|<tuple|18.25|?>>
    <associate|algebra equivalent definitions|<tuple|18.5|?>>
    <associate|algebra of sets|<tuple|18.4|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-3|<tuple|18.2|?>>
    <associate|auto-4|<tuple|algebra|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-7|<tuple|Borel algebra|?>>
    <associate|auto-8|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>|?>>
    <associate|auto-9|<tuple|18.3|?>>
    <associate|countable additivity implies additivity|<tuple|18.32|?>>
    <associate|dyadic interval property|<tuple|18.22|?>>
    <associate|eq 18,12.014|<tuple|18.12|?>>
    <associate|eq 18.1.014|<tuple|18.1|?>>
    <associate|eq 18.10.014|<tuple|18.7|?>>
    <associate|eq 18.10.015|<tuple|18.10|?>>
    <associate|eq 18.11.014|<tuple|18.8|?>>
    <associate|eq 18.11.015|<tuple|18.11|?>>
    <associate|eq 18.12.014|<tuple|18.9|?>>
    <associate|eq 18.13.014|<tuple|18.13|?>>
    <associate|eq 18.14.014|<tuple|18.14|?>>
    <associate|eq 18.15.015|<tuple|18.15|?>>
    <associate|eq 18.16.015|<tuple|18.16|?>>
    <associate|eq 18.17.015|<tuple|18.17|?>>
    <associate|eq 18.18.015|<tuple|18.18|?>>
    <associate|eq 18.19.015|<tuple|18.19|?>>
    <associate|eq 18.2.014|<tuple|18.2|?>>
    <associate|eq 18.20.015|<tuple|18.20|?>>
    <associate|eq 18.21.015|<tuple|18.21|?>>
    <associate|eq 18.22.015|<tuple|18.22|?>>
    <associate|eq 18.23.015|<tuple|18.23|?>>
    <associate|eq 18.24.015|<tuple|18.24|?>>
    <associate|eq 18.25.015|<tuple|18.25|?>>
    <associate|eq 18.26.015|<tuple|18.26|?>>
    <associate|eq 18.27.015|<tuple|18.27|?>>
    <associate|eq 18.28.015|<tuple|18.28|?>>
    <associate|eq 18.29.015|<tuple|18.29|?>>
    <associate|eq 18.3.014|<tuple|18.3|?>>
    <associate|eq 18.30.015|<tuple|18.30|?>>
    <associate|eq 18.31.015|<tuple|18.31|?>>
    <associate|eq 18.32.015|<tuple|18.32|?>>
    <associate|eq 18.7.014|<tuple|18.4|?>>
    <associate|eq 18.8.014|<tuple|18.5|?>>
    <associate|eq 18.9.014|<tuple|18.6|?>>
    <associate|generalized rectangles and boundaries|<tuple|18.20|?>>
    <associate|generated sigma algebra|<tuple|18.13|?>>
    <associate|intersection of sigma algebras is a sigma
    algebra|<tuple|18.12|?>>
    <associate|measurable space|<tuple|18.9|?>>
    <associate|measure|<tuple|18.31|?>>
    <associate|properties of algebras|<tuple|18.6|?>>
    <associate|set of Dyadic intervals is denumerable|<tuple|18.24|?>>
    <associate|set of all subsets is a sigma algebra|<tuple|18.8|?>>
    <associate|sigma algebra|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|sigma algebra equivalent definitions|<tuple|18.10|?>>
    <associate|singleton family union intersection|<tuple|18.1|?>>
    <associate|union intersection union of families|<tuple|18.2|?>>
    <associate|union,intersection and function between and
    indexes|<tuple|18.3|?>>
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
    </associate>
  </collection>
</auxiliary>