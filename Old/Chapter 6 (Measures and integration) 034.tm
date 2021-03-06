<TeXmacs|2.1.1>

<project|Book.tm>

<style|<tuple|book|preview-ref|smart-ref>>

<\body>
  <assign|chapter-nr|17>

  <chapter|Measure Theory>

  <section|Prerequisites>

  We have the following useful [and maybe trivial] set relations

  <\proposition>
    <label|A except B is (X except B) intersect A >Let <math|A,B,X> be sets
    with <math|A,B\<subseteq\>X> then <math|A\\B=<around*|(|X\\B|)><big|cap>A>
  </proposition>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\>A\\B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>x\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|A\<subseteq\>X>>|<cell|x\<in\>A\<wedge\>x\<in\>X\<wedge\>x\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>X\\B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|X\\B|)><big|cap>A>>>>
    </eqnarray*>

    \;
  </proof>

  <\proposition>
    <label|(A except B) interect C>Let <math|A,B,C> be sets then
    <math|<around*|(|A\\B|)><big|cap>C=<around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>>
  </proposition>

  <\proof>
    \ If <math|x\<in\><around*|(|A\\B|)><big|cap>C> then
    <math|x\<in\>A\<wedge\>x\<nin\>B\<wedge\>x\<in\>C> so that
    <math|x\<in\><around*|(|A<big|cap>C|)>> and
    <math|x\<nin\>B\<Rightarrow\>x\<nin\>B<big|cap>C> proving that\ 

    <\equation*>
      <around*|(|A\\B|)><big|cap>C\<subseteq\><around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>
    </equation*>

    Further for the opposite inclusion

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>>|<cell|\<Rightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>C\<wedge\>x\<nin\><around*|(|B<big|cap>C|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x\<in\>A\<wedge\>x\<in\>C|)>\<wedge\>\<neg\><around*|(|x\<in\>B<big|cap>C|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x\<in\>A\<wedge\>x\<in\>C|)><around*|(|x\<nin\>B\<vee\>x\<nin\>C|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|x\<in\>A\<wedge\>x\<in\>C\<nin\>B|)>\<vee\><around*|(|x\<in\>A\<wedge\>x\<in\>C\<wedge\>x\<nin\>C|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\>A\<wedge\>x\<in\>C\<nin\>B>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|x\<in\><around*|(|A\\B|)><big|cap>C>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>\<subseteq\><around*|(|A\\B|)><big|cap>C
    </equation*>

    \;
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

  <\proposition>
    <label|union of union of sets (1)>Let
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be a
    sequence of sets then if we define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    by <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>
    then <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>\<subseteq\>B<rsub|i+1>>
  </proposition>

  <\proof>
    First if <math|i\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>B<rsub|i>>
    there exists a <math|j\<in\><around*|{|1,\<ldots\>,i|}>> such that
    <math|x\<in\>A<rsub|j>\<subseteq\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|j>=B<rsub|i+1>>
    proving that\ 

    <\equation>
      <label|eq 18.1.033>\<forall\>i\<in\>\<bbb-N\><rsub|0>
      B<rsub|i>\<subseteq\>B<rsub|i+1>
    </equation>

    Second if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    then <math|\<exists\>i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|i>>. So as <math|i\<in\><around*|{|1,\<ldots\>,i|}>>
    we have that <math|x\<in\><big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|i>=B<rsub|i>>
    which proves that <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>,
    or

    <\equation>
      <label|eq 18.2.033><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>
    </equation>

    Third if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    then <math|\<exists\>i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>,
    so there exists a <math|j\<in\><around*|{|1,\<ldots\>,i|}>\<subseteq\>\<bbb-N\><rsub|0>>
    with <math|x\<in\>A<rsub|j>>, proving that
    <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>. Hence\ 

    <\equation>
      <label|eq 18.3.033><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
    </equation>

    The theorem is then proved by <reference|eq 18.1.033>,<reference|eq
    18.2.033> and <reference|eq 18.3.033>.

    \;
  </proof>

  <\theorem>
    <label|writing a countable family of sets as a disjoint familly of
    sets>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> be
    a countable family of sets then if we define
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|A<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-|}>>A<rsub|j>
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

  For a finite family of sets we have the following

  <\proposition>
    <label|finite unions and intersections>Let <math|X> be a set abd
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> then we have\ 

    <\enumerate>
      <item>If <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cap>B\<in\>\<cal-A\>> then if
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> with
      <math|I> finite and non empty it follows that
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>.

      <item>If <math|\<forall\>A,B\<in\>\<cal-A\>> we have
      <math|A<big|cup>B\<in\>\<cal-A\>> then if
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> with
      <math|I> finite and not empty it follows that
      <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|I> is finite and non empty there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|\<varphi\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> then using
      <reference|union,intersection and function between and indexes> we have

      <\equation>
        <label|eq 18.5.033><big|cap><rsub|i\<in\>I>A<rsub|i>=<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|\<varphi\><around*|(|i|)>>
      </equation>

      The rest is proved by induction so let
      <math|\<cal-S\>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|if i\<leqslant\>n
      then <big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|\<varphi\><around*|(|j|)>>\<in\>\<cal-A\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>As
        <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>
        we have that <math|i\<in\>\<cal-S\>>

        <item*|<math|i\<in\>\<cal-S\>\<Rightarrow\>i+1\<in\>\<cal-S\>>>If
        <math|i+1\<leqslant\>n\<Rightarrow\>i\<less\>n> then we have
        <math|A<rsub|i+1>,<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>\<in\>\<cal-S\>>
        so that <math|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|j>=<around*|(|<big|cap><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j>|)><big|cap>A<rsub|i+1>\<in\>\<cal-A\>>
        proving that <math|i+1\<in\>\<cal-A\>>.
      </description>

      Mathematical induction and the fact that <math|n\<leqslant\>n> proves
      then that <math|<big|cap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A\<in\>\<cal-A\>>,
      combining this with <reference|eq 18.5.033> proves (1),

      <item>As <math|I> is finite and non empty there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|\<varphi\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>I> \ then
      using <reference|union,intersection and function between and indexes>
      we have\ 

      <\equation>
        <label|eq 18.6.033><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=<big|cup><rsub|i\<in\>I>A<rsub|i>
      </equation>

      The rest is proved by induction so let
      <math|\<cal-S\>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|if i\<leqslant\>n
      then <big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|\<varphi\><around*|(|j|)>>\<in\>\<cal-A\>|}>>
      then\ 

      <\description>
        <item*|<math|1\<in\>\<cal-S\>>>As
        <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>=A<rsub|1>\<in\>\<cal-A\>>
        we have that <math|i\<in\>\<cal-S\>>

        <item*|<math|i\<in\>\<cal-S\>\<Rightarrow\>i+1\<in\>\<cal-S\>>>If
        <math|i+1\<leqslant\>n\<Rightarrow\>i\<less\>n> then we have
        <math|A<rsub|i+1>,<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>\<in\>\<cal-S\>>
        so that <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>A<rsub|j>=<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|j>|)><big|cup>A<rsub|i+1>\<in\>\<cal-A\>>
        proving that <math|i+1\<in\>\<cal-A\>>.
      </description>

      Mathematical induction and the fact that <math|n\<leqslant\>n> proves
      then that <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A\<in\>\<cal-A\>>,
      combining this with <reference|eq 18.6.033> proves (2),
    </enumerate>

    \;
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
      <item>If <math|I> is a finite set and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> then
      <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|I> is a finite non empty set and
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>> then
      <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>

      <item>If <math|A,B\<in\>\<cal-A\>> then <math|A\\B\<in\>\<cal-A\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|I> is finite then either <math|I=\<emptyset\>> in which
      case we have that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>=\<emptyset\>\<in\>\<cal-A\>>
      or using <reference|finite unions and intersections> we have that
      <math|<big|cup><rsub|i\<in\>I>A<rsub|i>.>

      <item>This follows from <reference|finite unions and intersections>.

      <item>If <math|A,B\<in\>\<cal-A\>> then <math|X\\B\<in\>\<cal-A\>> so
      that <math|A<big|cap><around*|(|X\\B|)>\<in\>\<cal-A\>>, further
      <math|A<big|cap><around*|(|X\\B|)>\<equallim\><rsub|<text|<reference|distributivity
      of union or intersection>>><around*|(|A<big|cap>X|)>\\B=A\\B> proving
      that <math|A\\B\<in\>\<cal-A\>>
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

      <item><math|\<cal-A\>> satisfies\ 

      <\enumerate>
        <item><math|\<emptyset\>\<in\>\<cal-A\>>

        <item><math|\<forall\>A\<in\>\<cal-A\>> we have
        <math|X\\A\<in\>\<cal-A\>>

        <item><math|\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
        with <math|I> countable we have <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
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

      <item*|<math|5\<Rightarrow\>6>>

      <\enumerate-alpha>
        <item>By (5.a) we have that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>By (5.b( we have that <math|\<forall\>A\<in\>\<cal-A\>>
        <math|X\\A\<in\>\<cal-A\>>

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
        then <math|\<forall\>i\<in\>I> we have
        <math|X\\A<rsub|i>\<in\>\<cal-A\>> so that by (5.c)
        <math|<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>.
        Further as <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>>X\\<around*|(|X\\<big|cap><rsub|i\<in\>I>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
        difference>>>X\\<around*|(|<big|cup><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>>
        \ which by (5.b) proves that <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>.
      </enumerate-alpha>

      <item*|<math|6\<Rightarrow\>5>>

      <\enumerate-alpha>
        <item>By (6.a) we have that <math|\<emptyset\>\<in\>\<cal-A\>>

        <item>By (6.b( we have that <math|\<forall\>A\<in\>\<cal-A\>>
        <math|X\\A\<in\>\<cal-A\>>

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-A\>>
        then <math|\<forall\>i\<in\>I> we have
        <math|X\\A<rsub|i>\<in\>\<cal-A\>> so that by (6.b)
        <math|<big|cap><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>\<in\>\<cal-A\>>.
        Further as <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<equallim\><rsub|<text|<reference|Acc=A>>>X\\<around*|(|X\\<big|cup><rsub|i\<in\>I>A<rsub|i>|)>\<equallim\><rsub|<text|<reference|generalized
        difference>>>X\\<around*|(|<big|cap><rsub|i\<in\>I><around*|(|X\\A<rsub|i>|)>|)>\<in\>\<cal-A\>>
        \ which by (5.b) proves that <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>.
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
    a set, <math|\<Sigma\>> a non empty set of <math|\<sigma\>>-algebras on
    <math|X> then <math|<big|cap><rsub|\<cal-A\>\<in\>\<Sigma\>>\<cal-A\>> is
    a <math|\<sigma\>>-algebra on <math|X>
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

  <subsection|Borel algebra on <math|<wide|\<bbb-R\>|\<wide-bar\>>>>

  <\notation>
    Consider the topology on the extented real numbers
    <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> [see
    <reference|topology on extented reals>] then the Borel algebra on
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> is defined
    <math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
    and noted as <math|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
  </notation>

  We formulate now some alternative definitions of the Borel algebra on
  <math|<wide|\<bbb-R\>|\<wide-bar\>>>. First we need the following set
  relations.

  <\lemma>
    <label|lemma 18.28 set relations>\ 

    <\enumerate>
      <item><math|\<forall\>a\<in\>\<bbb-R\>> we have
      <math|<around*|[|a,\<infty\>|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>>

      <item><math|<around*|{|\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>>

      <item><math|<around*|{|-\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
      <math|x\<in\><around*|[|a,\<infty\>|]>>
      <math|a\<leqslant\>x\<leqslant\>\<infty\>\<Rightarrow\>a-<frac|1|n>\<less\>a\<leqslant\>x>
      proving <math|<around*|[|a,\<infty\>|]>\<subseteq\><around*|]|a-<frac|1|n>,\<infty\>|]>>.
      Hence\ 

      <\equation>
        <label|eq 18.44.033><around*|[|a,\<infty\>|]>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>
      </equation>

      Take <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|x\<in\><around*|]|a-<frac|1|n>,\<infty\>|]>>. Assume that
      <math|x\<less\>a> then using <reference|consequence of the archimedean
      property for the reals> there exists a <math|n\<in\>\<bbb-N\><rsub|0>>
      such that <math|x+<frac|1|n>\<less\>a\<Rightarrow\>x\<less\>a-<frac|1|n>>,
      hence <math|x\<nin\><around*|]|a-<frac|1|n>,\<infty\>|]>> a
      contradiction. So we must have that <math|a\<leqslant\>x> and as always
      <math|x\<leqslant\>\<infty\>> we have
      <math|x\<in\><around*|[|a,\<infty\>|]>>. So
      <math|><math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>\<subseteq\><around*|[|a,\<infty\>|]>>
      which combined with <reference|eq 18.44.033> gives

      <\equation*>
        <around*|[|a,\<infty\>|]>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>
      </equation*>

      <item>As <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|n\<less\>\<infty\>\<leqslant\>\<infty\>> it follows that
      <math|\<infty\>\<in\><big|cap><rsub|N\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>>,
      hence\ 

      <\equation>
        <label|eq 18.45.033><around*|{|\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|n\<less\>x\<leqslant\>\<infty\>>, Assume that
      <math|x\<neq\>\<infty\>> then <math|x\<less\>\<infty\>> and as
      <math|-\<infty\>\<less\>n\<less\>x> we have also that
      <math|x\<neq\>-\<infty\>> hence <math|x\<in\>\<bbb-R\>>, then using
      <reference|consequence of the archimedean property for the reals> there
      exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|x\<less\>n> a
      contradiction. So we must have that <math|x=\<infty\>> which proves
      that <math|><math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>\<subseteq\><around*|{|\<infty\>|}>>
      and combining this with <reference|eq 18.45.033> gives\ 

      <\equation*>
        <around*|{|\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>
      </equation*>

      <item>As <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|-\<infty\>\<leqslant\>-\<infty\>\<less\>-n> it follows that
      <math|-\<infty\>\<in\><around*|[|-\<infty\>,n|[>>, hence\ 

      <\equation>
        <label|eq 18.46.033><around*|{|-\<infty\>|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>
      </equation>

      Let <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|-\<infty\>\<leqslant\>x\<less\>-n>, Assume that
      <math|x\<neq\>-\<infty\>> then <math|-\<infty\>\<less\>x> and as
      <math|x\<less\>-n\<less\>\<infty\>> we have also
      <math|x\<neq\>\<infty\>> hence <math|x\<in\>\<bbb-R\>>. Using
      <reference|consequence of the archimedean property for the reals> there
      exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that <math|-x\<less\>n>
      or <math|-n\<less\>x> a contradiction. So we must have that
      <math|x=-\<infty\>> which proves that
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,n|]>\<subseteq\><around*|{|-\<infty\>|}>>,
      combining this with <reference|eq 18.46.033> gives\ 

      <\equation*>
        <around|{|-\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|]>
      </equation*>

      \;
    </enumerate>
  </proof>

  <\corollary>
    <label|corollary 18.29>For <math|\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
    we have the following

    <\enumerate>
      <item><math|\<forall\>a\<in\>\<bbb-R\>> we have that
      <math|<around*|[|a,\<infty\>|]>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>

      <item><math|\<forall\>a\<in\>\<bbb-R\>> we have that
      <math|<around*|[|-\<infty\>,a|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>

      <item><math|\<forall\>a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> we
      have that <math|<around*|]|a,b|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>

      <item><math|\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\>>> we have that
      <math|U\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>

      <item><math|<around*|{|\<infty\>|}>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>

      <item><math|<around*|{|-\<infty\>|}>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
    </enumerate>
  </corollary>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|a\<in\>\<bbb-R\>> then
      <math|<around*|{|<around*|]|a-<frac|1|n>,\<infty\>|]>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>,
      hence <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>.
      As <math|<around*|[|a,\<infty\>|]>\<equallim\><rsub|<text|<reference|lemma
      18.28 set relations>>><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|a-<frac|1|n>,\<infty\>|]>>
      we have that\ 

      <\equation*>
        <around*|[|a,\<infty\>|]>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>

      <item>Let <math|a\<in\>\<bbb-R\>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|a,\<infty\>|]>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|-\<infty\>,\<infty\>|]>\<wedge\>x\<nin\><around*|[|a,\<infty\>|]>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|-\<infty\>\<leqslant\>x\<wedge\>x\<leqslant\>\<infty\>|)>\<wedge\>\<neg\><around*|(|a\<leqslant\>x\<leqslant\>\<infty\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|-\<infty\>\<leqslant\>x\<wedge\>x\<leqslant\>\<infty\>|)>\<wedge\><around*|(|x\<less\>a\<vee\>\<infty\>\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-\<infty\>\<leqslant\>x\<wedge\>x\<leqslant\>\<infty\>\<wedge\>x\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|-\<infty\>\<leqslant\>x\<wedge\>x\<less\>a>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|-\<infty\>,a|[>>>>>
      </eqnarray*>

      proving that <math|<around*|[|-\<infty\>,a|[>=<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|a,\<infty\>|]>>
      which as by (1) <math|<around*|[|a,\<infty\>|]>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
      proves\ 

      <\equation*>
        <around*|[|-\<infty\>,a|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>

      <item>Let <math|a,b\<in\>\<bbb-R\>> with <math|a\<leqslant\>b> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|]|a,\<infty\>|]><big|cap><around*|[|-\<infty\>,b|[>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,\<infty\>|]>*\<wedge\>x\<in\><around*|[|-\<infty\>,b|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>x\<wedge\>x\<leqslant\>\<infty\>\<wedge\>-\<infty\>\<leqslant\>x\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|a\<less\>x\<wedge\>x\<less\>b>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|]|a,b|[>>>>>
      </eqnarray*>

      proving that <math|<around*|]|a,b|[>=<around*|]|a,\<infty\>|]><big|cap><around*|[|-\<infty\>,b|[>>.
      As <math|><math|<around*|]|a,\<infty\>|]>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
      and by (2) <math|<around*|[|-\<infty\>,b|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
      we have that <math|><math|<around*|]|a,\<infty\>|]><big|cap><around*|[|-\<infty\>,b|[>\<in\>\<sigma\><around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>>.
      So\ 

      <\equation*>
        <around*|]|a,b|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>

      <item>Let <math|U> be a open set in <math|\<bbb-R\>> then there exists
      a sequence <math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a<rsub|i>,b<rsub|i>|]>>
      [see <reference|a open set in R is a countable union of open finite
      intervals>]. As by (3) we have that
      <math|><math|<around*|{|<around*|]|a<rsub|i>,b<rsub|i>|[>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>
      [which is a <math|\<sigma\>>-algebra] it follows that
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a<rsub|i>,b<rsub|i>|[>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>.
      So\ 

      <\equation*>
        U\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>

      <item>Using <reference|lemma 18.28 set relations> we have that
      <math|<around*|{|\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|]|n,\<infty\>|]>>
      which, as <math|<around*|{|<around*|]|n,\<infty\>|]>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>,
      \ proves that\ 

      <\equation*>
        <around*|{|\<infty\>|}>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>

      <item>Using <reference|lemma 18.28 set relations> we have that
      <math|<around*|{|-\<infty\>|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|[|-\<infty\>,-n|[>>
      which, as by (2) <math|<around*|{|<around*|[|-\<infty\>,-n|[>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>>,
      proves that\ 

      <\equation*>
        <around*|{|-\<infty\>|}>\<in\>\<sigma\><around*|(|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|)>
      </equation*>
    </enumerate>
  </proof>

  We can now find equivalent definitions of the Borel algebra's on the
  extended real numbers.

  <\lemma>
    <label|borel algebra on the extebded reals
    (1)><math|><math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>=\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
  </lemma>

  <\proof>
    Let <math|I\<in\><around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>>
    then there exists a <math|a\<in\>\<bbb-R\>> such that
    <math|I=<around*|]|a,\<infty\>|]>>, using <reference|sets for basis of
    topology on the extented reals> and <reference|gnerating basis vor the
    extended reals> \ we have that <math|I\<in\>\<cal-B\><rsub|\<infty\>>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
    So <math|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>.
    Hence

    <\equation>
      <label|eq 18.47.033>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>
    </equation>

    Let <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> then by
    <reference|topology on the extended reals properties> we have that
    <math|U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>>. From
    <math|<wide|\<bbb-R\>|\<wide-bar\>>=\<bbb-R\><big|cup><around*|{|-\<infty\>|}><big|cup><around*|{|\<infty\>|}>>
    it follows that

    <\equation>
      <label|eq 18.48.033.1>U=U<big|cap><wide|\<bbb-R\>|\<wide-bar\>>=<around*|(|U<big|cap>\<bbb-R\>|)><big|cup><around*|(|U<big|cap><around*|{|-\<infty\>|}>|)><big|cup><around*|(|U<big|cap><around*|{|\<infty\>|}>|)>
    </equation>

    Now as <math|U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>> we have
    by <reference|corollary 18.29> that

    <\equation>
      <label|eq 18.49.033.1>U<big|cap>\<bbb-R\>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Also <math|U<big|cap><around*|{|-\<infty\>|}>> is either
    <math|\<emptyset\>> or <math|<around*|{|-\<infty\>|}>> and as by
    <reference|corollary 18.29> <math|<around*|{|-\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
    we have that\ 

    <\equation>
      <label|eq 18.50.033.1>U<big|cap><around*|{|-\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    Finally <math|U<big|cap><around*|{|\<infty\>|}>> is either
    <math|\<emptyset\>> or <math|<around*|{|\<infty\>|}>> and as by
    <reference|corollary 18.29> <math|<around*|{|\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
    it follows that\ 

    <\equation>
      <label|eq 18.51.033.1>U<big|cap><around*|{|\<infty\>|}>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>
    </equation>

    From <reference|eq 18.48.033.1>,<reference|eq 18.49.033.1>,<reference|eq
    18.50.033.1> and <reference|eq 18.51.033.1> it follows that
    <math|U\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>.
    Hence <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>
    [a sigma algebra] so that <math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>\<subseteq\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>,
    combining this with <reference|eq 18.47.033> gives

    <\equation>
      <label|eq 18.48.033>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>=\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>
    </equation>
  </proof>

  <\lemma>
    <label|borel algebra on the extended real numbers
    (2)><math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>=<around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
    where <math|\<cal-B\><around*|[|\<bbb-R\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
  </lemma>

  <\proof>
    First we prove that

    <\equation>
      <label|eq 18.53.033.2><around*|{|U\<in\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}><text|
      is a >\<sigma\><text|-algebra> on <wide|\<bbb-R\>|\<wide-bar\>>
    </equation>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|<wide|\<bbb-R\>|\<wide-bar\>><big|cap>\<bbb-R\>=\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
        it follows that <math|<wide|\<bbb-R\>|\<wide-bar\>>\<in\><around*|{|U\<in\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>

        <item>Let <math|U\<in\><around*|{|U\<in\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
        then <math|<around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\\U|)><big|cap>\<bbb-R\>\<equallim\><rsub|<text|<reference|(A
        except B) interect C>>><around*|(|<wide|\<bbb-R\>|\<wide-bar\>><big|cap>\<bbb-R\>|)>\\<around*|(|\<bbb-R\><big|cap>U|)>=\<bbb-R\>\\<around*|(|\<bbb-R\><big|cap>U|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
        [as <math|\<cal-B\><around*|[|\<bbb-R\>|]>> is a
        <math|\<sigma\>>-algebra and <math|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>].

        <item>Let <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|{|U\<in\>\<cal-P\><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
        then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
        <math|U<rsub|i><big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>,
        further <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>|)><big|cap>\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|U<rsub|i><big|cap>\<bbb-R\>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>.
      </enumerate>
    </proof>

    Take <math|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>> then by
    <reference|topology on the extended reals properties> we have that
    <math|U<big|cap>\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>\<equallim\><rsub|def>\<cal-B\><around*|[|\<bbb-R\>|]>>
    hence <math|U\<in\><around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>.
    This proves that <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<subseteq\><around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
    and as <math|<around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
    is a <math|\<sigma\>>-algebra we have

    <\equation>
      <label|eq 18.54.033.2>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>\<subseteq\><around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>
    </equation>

    Now for the opposite inclusion. Define

    <\equation>
      <label|eq 18.54.033.1>\<cal-S\>=<around*|{|U<big|cap>\<bbb-R\>\<of\>U\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>|}>\<subseteq\>\<bbb-R\>
    </equation>

    then as <math|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>
    > we have that

    <\equation>
      <label|eq 18.55.033.1>\<cal-S\>\<supseteq\><around*|{|U<big|cap>\<bbb-R\>\|U\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>\<equallim\><rsub|<text|<reference|topology
      on the extended reals properties>>>\<cal-T\><rsub|\<bbb-R\>>
    </equation>

    Further as <math|\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
    [see <reference|topology on the extended reals properties>] we have for
    <math|U\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
    that <math|U<big|cap>\<bbb-R\>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
    so that\ 

    <\equation>
      <label|eq 18.56.033.1>\<cal-S\>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>
    </equation>

    Further we prove that\ 

    <\equation>
      <label|eq 18.57.033.1>S is a \<sigma\><text|-algebra on >\<bbb-R\>
    </equation>

    <\proof>
      \ 

      <\enumerate>
        <item>As <math|\<bbb-R\>=\<bbb-R\><big|cap>\<bbb-R\> <text| and
        >\<bbb-R\>\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
        we have that <math|\<bbb-R\>\<in\>\<cal-S\>>

        <item>If <math|A\<in\>\<cal-S\>> then
        <math|\<exists\>V\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
        such that <math|A=V<big|cap>\<bbb-R\>>. Then
        <math|\<bbb-R\>\\A=\<bbb-R\>\\<around*|(|V<big|cap>\<bbb-R\>|)>=<around*|(|\<bbb-R\>\\V|)><big|cup><around*|(|\<bbb-R\>\\\<bbb-R\>|)>=\<bbb-R\>\\V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        [as <math|\<bbb-R\>,V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>],
        further <math|<around*|(|\<bbb-R\>\\A|)><big|cap>\<bbb-R\>=\<bbb-R\>\\A>.
        So <math|\<bbb-R\>\\A\<in\>\<cal-S\>>.

        <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\>>
        then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> then exists a
        <math|V<rsub|i>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
        such that <math|A<rsub|i>=V<rsub|i><big|cap>\<bbb-R\>>. Then
        <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|V<rsub|i><big|cap>\<bbb-R\>|)>=<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>|)><big|cap>\<bbb-R\>>
        where <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>V<rsub|i>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>.
        So <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-S\>>
      </enumerate>
    </proof>

    Combining the above [<reference|eq 18.57.033.1>] with <reference|eq
    18.55.033.1> gives <math|\<sigma\><around*|(|\<cal-T\><rsub|\<bbb-R\>>|)>\<subseteq\>\<cal-S\>>.
    Using then <reference|eq 18.56.033.1> together with the fact that
    <math|\<cal-B\><around*|[|\<bbb-R\>|]>\<equallim\><rsub|def>\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\>>|]>>
    result in\ 

    <\equation>
      <label|eq 18.58.033.1>\<cal-B\><around*|[|\<bbb-R\>|]>\<subseteq\>\<cal-S\>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>
    </equation>

    Take <math|A\<in\><around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>>
    then <math|A=A<big|cap><wide|\<bbb-R\>|\<bar\>>=A<big|cap><around*|(|\<bbb-R\><big|cup><around*|{|-\<infty\>|}>,<around*|{|\<infty\>|}>|)>>
    giving\ 

    <\equation>
      <label|eq 18.59.033.1>A=<around*|(|A<big|cap>\<bbb-R\>|)><big|cap><around*|(|A<big|cap><around*|{|-\<infty\>|}>|)><big|cap><around*|(|A<big|cap><around*|{|\<infty\>|}>|)>
    </equation>

    where\ 

    <\enumerate>
      <item><math|A<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>\<Rightarrowlim\><rsub|<text|<reference|eq
      18.58.033.1>>>A<big|cap>\<bbb-R\>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>

      <item><math|A<big|cap><around*|{|-\<infty\>|}>> is either
      <math|\<emptyset\>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      or <math|<around*|{|-\<infty\>|}>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
      [as <math|-\<infty\>> is closed by <reference|closed sets in the
      extended reals> and closed sets are part of
      <math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
      by <reference|Borel algebras on R>]\ 

      <item><math|A<big|cap><around*|{|-\<infty\>|}>> is either
      <math|\<emptyset\>\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      or <math|<around*|{|\<infty\>|}>\<in\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
      [as <math|\<infty\>> is closed by <reference|closed sets in the
      extended reals> and closed sets are part of
      <math|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
      by <reference|Borel algebras on R>]
    </enumerate>

    From the above we conclude that <math|<around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>\<subseteq\>\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>
    which combined with <reference|eq 18.54.033.2> proves that

    <\equation*>
      \<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>=<around*|{|U\<in\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>
    </equation*>
  </proof>

  To summarize the two previous lemma's we have

  <\theorem>
    <label|borel algebra on the extended reals (3)>The following equivalences
    for the Borel algebra on <math|<wide|\<bbb-R\>|\<wide-bar\>>> exists

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>|<cell|\<equallim\><rsub|def>>|<cell|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|U\<subseteq\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>|]>>>>>
    </eqnarray*>
  </theorem>

  <\proof>
    Use <reference|borel algebra on the extebded reals (1)> and
    <reference|borel algebra on the extended real numbers (2)>.
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

  Another simplifying notation is a overloading of the plus operator

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>,x\<in\>\<bbb-R\><rsup|n>> and
    <math|y\<in\>\<bbb-R\>> then <math|x+y\<in\>\<bbb-R\><rsup|n>> is defined
    by <math|<around*|(|x+y|)><rsub|i>=x<rsub|i>+y> for all
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>>.
  </definition>

  To simplify notation further we have the following definitions.

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and <math|a,b\<in\>\<bbb-R\>> then we
    define the following sets

    <\enumerate>
      <item><math|<around*|[|a,b|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>\<leqslant\>b|}>>

      <item><math|<around*|[|a,b|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>\<less\>b|}>>

      <item><math|<around*|]|a,b|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>\<leqslant\>b|}>>

      <item><math|<around*|]|a,b|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>\<less\>b|}>>

      <item><math|<around*|]|-\<infty\>,a|]><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<leqslant\>a|}>>

      <item><math|<around*|]|-\<infty\>,a|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|x<rsub|i>\<less\>a|}>>

      <item><math|<around*|[|a,\<infty\>|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<leqslant\>x<rsub|i>|}>>

      <item><math|<around*|]|a,\<infty\>|[><rsup|n>=<around*|{|x\<in\>\<bbb-R\><rsup|n>\|a\<less\>x<rsub|i>|}>>
    </enumerate>
  </definition>

  Using the intervals in <math|\<bbb-R\><rsup|n>> we can define the following
  set of half-open rectangles

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
  <math|\<cal-R\><rsup|n>> and the volume of these elements.

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
      and finally that <math|v<rsup|n><around*|(|R|)>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>\<leqslant\><big|prod><rsub|i=1><rsup|n><around*|(|d<rsub|i>-c<rsub|i>|)>=v<rsup|n><around*|(|Q|)>>.
    </description>
  </proof>

  Now to prove that the Borel algebra on <math|\<bbb-R\><rsup|n>> can be
  generated from <math|\<cal-R\><rsup|n>> we must be able to write every open
  set in <math|\<bbb-R\><rsup|n>> as a denumerable union of rectangles in
  <math|\<bbb-R\><rsup|n>>. To be able to do this we construct a denumerable
  subset of <math|\<cal-I\><rsub|<around*|[||[>><infix-and>\<cal-R\><rsup|n>>
  called Dyadic intervals and Dyadic cubes\n

  <\definition>
    <label|Dyadic intervals><dueto|Dyadic intervals>Let
    <math|m\<in\>\<bbb-N\>> then we define <math|\<cal-D\><rsub|m>> by

    <\equation*>
      \<cal-D\><rsub|m>=<around*|{|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\|z\<in\>\<bbb-Z\>|}>
    </equation*>

    the union of all <math|\<cal-D\><rsub|m>> is noted as <math|\<cal-D\>> so\ 

    <\equation*>
      \<cal-D\>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsub|m>
    </equation*>

    and called the set of Dyadic intervals. Dyadic intervals have the
    following properties
  </definition>

  <\proposition>
    <label|Dyadic interval basic property>Let <math|k,l\<in\>\<bbb-N\>> with
    <math|k\<leqslant\>l> then for any <math|<around*|[|<frac|r|2<rsup|l>*>,<frac|r+1|2<rsup|l>>|[>\<in\>\<cal-D\><rsub|l>
    <text|and > <around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>\<in\>\<cal-D\><rsub|k>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>\<neq\>\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>|<row|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>|<cell|\<Rightarrow\>>|<cell|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[>\<nsubseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>>>>
    </eqnarray*>

    or in other words. We have either <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r+1|2<rsup|l>>|[><big|cap><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>=\<emptyset\>>
    or <math|<around*|[|<frac|r|2<rsup|l>>,<frac|r|2<rsup|l>>|[>\<subseteq\><around*|[|<frac|q|2<rsup|k>>,<frac|q+1|2<rsup|k>>|[>>
    but not both.
  </proposition>

  <\proof>
    Take <math|I=<around*|[|<frac|q|2<rsup|l>>,<frac|q+1|2<rsup|l>>|[>> and
    <math|J=<around*|[|<frac|r|2<rsup|k>>,<frac|r+1|2<rsup|k>>|[>>. As
    <math|k\<leqslant\>l> we have <math|0\<leqslant\>l-k=n>. Next

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

    Multiplying <reference|eq 18.41.022> and <reference|eq 18.42.022> by
    <math|2<rsup|l>> gives <math|r\<cdot\>2<rsup|n>\<less\>q+1\<wedge\>q\<less\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    As <math|r\<cdot\>2<rsup|n>,q+1,r\<cdot\>2<rsup|n>+2<rsup|n>\<in\>\<bbb-Z\>>
    we have by <reference|n\<less\>m=\<gtr\>n+1\<less\>=m> that
    <math|r\<cdot\>2<rsup|n>+1\<leqslant\>q+1\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>\<Rightarrow\>r\<cdot\>2<rsup|n>\<leqslant\>q\<wedge\>q+1\<leqslant\>r\<cdot\>2<rsup|n>+2<rsup|n>>.
    Dividing by <math|2<rsup|l>> gives:

    <\equation>
      <label|eq 18.43.022><frac|r\<cdot\>2<rsup|n>|2<rsup|l>>\<leqslant\><frac|q|2<rsup|l>>\<wedge\><frac|q+1|2<rsup|l>>\<leqslant\><frac|r\<cdot\>2<rsup|n>+2<rsup|n>|2<rsup|l>>
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

  <\definition>
    <label|Dyadic cubes><index|Dyadic cubes><index|<math|\<cal-D\><rsup|n><rsub|m>>><index|<math|\<cal-D\><rsup|n>>><dueto|Dyadic
    Cubes>Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|m\<in\>\<bbb-N\>> and
    <math|z\<in\>\<bbb-Z\><rsup|n>> then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>\<in\>\<cal-R\><rsup|n>>
    is called a Dyadic cube of order <math|m>. The set of Dyadic cubes of
    order <math|m> is noted as <math|\<cal-D\><rsup|n><rsub|m>>. So
    <math|\<cal-D\><rsup|n><rsub|m>=<around*|{|<around*|[|<frac|z<rsub|>|2<rsup|m>>.<frac|z+1|2<rsup|m>>|[>\|z\<in\>\<bbb-Z\><rsup|n>|}>>.
    The set of all Dyadic cubes noted by <math|\<cal-D\><rsup|n>> hence
    <math|\<cal-D\><rsup|n>=<big|cup><rsub|m\<in\>\<bbb-N\>>\<cal-D\><rsub|m><rsup|n>\<subseteq\>\<cal-R\><rsup|n>>.SS
  </definition>

  <\note>
    As <math|<frac|z|2<rsup|m>>\<less\><frac|z+1|2<rsup|m>>> we have
    <math|<frac|z|2<rsup|m>>\<in\><around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|]>>
    proving that Dyadic cubes are always non empty.
  </note>

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
      <math|v<rsup|n><around*|(|R|)>=2<rsup|-n\<cdot\>m>\<less\>1>
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
      <math|R<big|cap>Q=\<emptyset\>> or using contra position we have\ 

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

  One of the reasons that we introduce the Dyadic cubes as a subset of
  <math|\<cal-R\><rsup|n>> is that <math|\<cal-D\><rsup|n><rsub|m>> is a
  denumerable set in contrast with <math|\<cal-R\><rsup|n>> which we need
  giving the definition of a <math|\<sigma\>>-algebra. This is proved in the
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
      denumerable sets> that <math|\<bbb-Z\><rsup|n>> is also denumerable.
      Define now <math|\<beta\>:\<bbb-Z\><rsup|n>\<rightarrow\>\<cal-D\><rsup|n><rsub|m>>
      by <math|\<beta\><around*|(|z|)>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>>
      then <math|\<beta\>> is a bijection.

      <\description>
        <item*|injectivity>If <math|\<beta\><around*|(|z|)>-\<beta\><around*|(|w|)>>
        then <math|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>=<around*|[|<frac|w|2<rsup|m>>,<frac|w+1|2<rsup|m>>|[>>.
        Using the fact that a Dyadic cube is not empty together with
        <reference|boundaries of a rectangle are unique> gives
        <math|<frac|z|2<rsup|m>>=<frac|w|2<rsup|m>>> proving that <math|z=w>.

        <item*|surjectivity>This follows from the definition of
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
    disjoint family <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-D\><rsup|n>\<subseteq\>\<cal-R\><rsup|n>>
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

    Using the above definitions we have then that

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
      But then as <math|x\<in\>D> we reach the contradiction
      <math|x\<in\>R\<wedge\>x\<nin\>R>. Hence
      <math|\<forall\>i\<in\><around*|{|0,\<ldots\>,m<rsub|x>-1|}>> we have
      <math|\<forall\>R\<in\>\<cal-S\><rsub|i>> that
      <math|R<big|cap>D=\<emptyset\>>. So by the definition <reference|eq
      18.45.022> it follows that <math|D\<in\>\<cal-T\><rsub|m<rsub|x>>\<subseteq\>\<cal-T\>>.
      Hence <math|\<exists\>D\<in\>\<cal-T\>> such that <math|x\<in\>D>.
    </description>

    So in all cases there exists a <math|D\<in\>\<cal-T\>> with
    <math|x\<in\>D> proving that <math|x\<in\><big|cup><rsub|D\<in\>\<cal-T\>>D>
    which as <math|x\<in\>U> was chosen arbitrary gives that
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
    with <math|R\<neq\>\<emptyset\>> there exists a sequence
    <math|<around*|{|U<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
    of open sets such that <math|R=<big|cap><rsub|i\<in\>\<bbb-N\>>U<rsub|i>>
  </lemma>

  <\proof>
    As <math|R\<in\>\<cal-R\><rsup|n>> there exists a
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
      <math|\<sigma\>>-algebra proves that
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
    The set <math|<around*|]|-\<infty\>,a|[><rsub|i>> is called a lower half
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

  The following relation between open and closed sets will be usefull later

  <\proposition>
    <label|open/closed sets relation>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    consider the canonical topological space
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-T\><rsub|\<bbb-R\><rsup|n>>|\<rangle\>>>
    based on the maximum norm then we have

    <\enumerate>
      <item>If <math|F> is a closed set then
      <math|\<exists\><around*|{|U<rsub|i><rsub|>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      of open sets such that <math|F=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>>

      <item>Ig <math|U> is a open set then
      <math|\<exists\><around*|(|F<rsub|i>|)><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      of closed sets such that <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|F> be closed. Given <math|x\<in\>F> define the open set
      <math|U<rsub|n,x>> by <math|U<rsub|n,c>=B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,<frac|1|n>|)>>
      and define then the open set <math|U<rsub|n>=<big|cup><rsub|x\<in\>F>U<rsub|n,x>>,
      then trivially we have that <math|F\<subseteq\>U<rsub|n>>. Hence\ 

      <\equation>
        <label|eq 18.62.032>F\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>U<rsub|n>
      </equation>

      Assume that <math|x\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>U<rsub|n>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|x\<in\>U<rsub|n>=<big|cup><rsub|y\<in\>F>U<rsub|n,y>> so that
      there exists a <math|f<rsub|n>\<in\>F> such that
      <math|x\<in\>U<rsub|n,f<rsub|n>>> or
      <math|<around*|\<\|\|\>|x=f<rsub|n>|\<\|\|\>><rsub|max>\<less\><frac|1|n>>.
      Hence if we take <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>F>
      then if <math|\<varepsilon\>\<gtr\>0> we have [see
      <reference|consequence of the archimedean property for the reals>] that
      there exists a <math|M\<in\>\<bbb-N\><rsub|0>> such that
      <math|<frac|1|M>\<less\>\<varepsilon\>>. So if <math|n\<geqslant\>M>
      then <math|<around*|\<\|\|\>|x-f<rsub|n>|\<\|\|\>><rsub|max>\<leqslant\><frac|1|M>\<less\>\<varepsilon\>>
      which proves that <math|<below|lim|n\<gtr\>\<infty\>>f<rsub|n>=x>.
      Hence usiing <reference|closed sets and limits> we have that
      <math|x\<in\>F> which proves that <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>U<rsub|n>\<subseteq\>F>,
      combine this with <reference|eq 18.62.032> gives

      <\equation*>
        F=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>U<rsub|n>
      </equation*>

      <\equation*>
        \;
      </equation*>

      <item>Let <math|U> be a open set then <math|X\\U> is closed and using
      (1) there exists a family <math|<around*|{|U<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      of open sets such that <math|X\\U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|U>|<cell|\<equallim\><rsub|<text|<reference|Acc=A>>>>|<cell|X\\<around*|(|X\\U|)>>>|<row|<cell|>|<cell|=>|<cell|X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        deMorgan's Laws>>>>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\U<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>
        where F<rsub|i>=X\\U<rsub|i> are closed sets>>>>
      </eqnarray*>
    </enumerate>
  </proof>

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
    is a <with|font-series|bold|measure> on <math|\<cal-A\>> if and only if\ 

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

  <\proposition>
    <label|restriction of measure space to a sub sigma algebra>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and let <math|\<cal-B\>> be a <math|\<sigma\>>-algebra on <math|X>
    such that <math|\<cal-B\>\<subseteq\>\<cal-A\>> then
    <math|<around*|\<langle\>|X,\<cal-B\>,\<mu\><rsub|\|\<cal-B\>>|\<rangle\>>>
    is a measure space
  </proposition>

  <\proof>
    As <math|\<cal-B\>> is already a <math|\<sigma\>>-algebra on <math|X> we
    only have to proof that <math|\<mu\><rsub|\|\<cal-B\>>> is a measure on
    <math|\<cal-B\>>.\ 

    <\enumerate>
      <item>As <math|\<emptyset\>\<in\>\<cal-B\>\<subseteq\>\<cal-A\>> we
      have <math|\<mu\><rsub|\|\<cal-B\>><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>If <math|><math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\>\<subseteq\>\<cal-A\>>
      is a pairwise disjoint family then <math|\<mu\><rsub|\|\<cal-B\>><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|\|><around*|(|A<rsub|i>|)>>
    </enumerate>
  </proof>

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

  Next we prove that countable additivity implies countable sub additivity.

  <\lemma>
    <label|replace countable untion of sets by disjoint union of sets>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    then if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    then there exists a pairwise disjoint
    \ <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|B<rsub|i>\<subseteq\>A<rsub|i>> and
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
  </lemma>

  <\proof>
    Define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|B<rsub|i>=<choice|<tformat|<table|<row|<cell|A<rsub|1> if
    i=1>>|<row|<cell|X<rsub|i>\\<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i-1|}>>A<rsub|j>
    if i\<in\>\<bbb-N\><rsub|0>\\<around*|{|1|}>>>>>>> then by the properties
    of a <math|\<sigma\>>-algebra it follows that
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>.
    Also using <reference|writing a countable family of sets as a disjoint
    familly of sets> we have that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|B<rsub|i>\<subseteq\>A<rsub|i>>.
  </proof>

  <\theorem>
    <label|measure is subadditive>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space then for every <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    we have that <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>.
  </theorem>

  <\proof>
    Using <reference|replace countable untion of sets by disjoint union of
    sets> there exists <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    and <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
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
      <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      [or as <math|\<mu\><around*|(|A<rsub|i+1>|)>\<leqslant\>\<mu\><around*|(|A<rsub|i>|)>>
      we have by <reference|equivalence of limits on increasing (decreasing)
      sequences of extented reals> that <math|\<mu\><around*|(|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|\<nobracket\>>>]
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
      Using <reference|union of union of sets (1)> we have\ 

      <\equation>
        <label|eq 18.47.016><big|sqcup><rsub|i\<in\>\<bbb-N\>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\>>B<rsub|i><infix-and>\<forall\>i\<in\>\<bbb-N\><rsub|0>
        B<rsub|i>\<subseteq\>B<rsub|i+1>
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

  <subsection|Carath?odory theorem>

  The Carath?odory theorem allows us to generate a <math|\<sigma\>>-algebra
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

  We are now ready to prove the Carath?odory theorem that shows how we can
  construct a measure space using a outer measure.

  <\theorem>
    <label|Caratheodore><index|Carath?odory theorem><dueto|Carath?odory
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

  <subsection|The Carath?odory theorem and the set of real numbers>

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
    <label|R can be covered by open intervals><math|\<bbb-R\>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]>>
  </lemma>

  <\proof>
    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|<around*|]|-i,i|[>\<subseteq\><around*|[|-i,i|[>\<subseteq\>\<bbb-R\>>
    it follows that\ 

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i.,i|[>\<subseteq\>\<bbb-R\>
    </equation*>

    Let <math|x\<in\>\<bbb-R\>> then by <reference|consequence of the
    archimedean property for the reals> there exists a
    <math|n\<in\>\<bbb-Z\>> such that <math|n\<leqslant\>x\<less\>n+1>. We
    have then either

    <\description>
      <item*|<math|0\<less\>n>>then as <math|n\<less\>n+1> we have
      <math|-<around*|(|n+1|)>\<less\>-n\<leqslant\>0\<leqslant\>n> so that
      <math|-<around*|(|n+1|)>\<less\>x\<less\>n+1> proving that
      <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>>

      <item*|<math|n\<less\>0>>then then <math|-n=<around*|\||n|\|>\<Rightarrow\>-<around*|(|<around*|\||n|\|>+1|)>=-<around*|\||n|\|>-1\<less\>-<around*|\||n|\|>\<leqslant\>x\<less\>n+1\<leqslant\><around*|\||n+1|\|>\<less\><around*|\||n|\|>+1>
      proving that <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>>
    </description>

    So we have\ 

    <\equation*>
      \<bbb-R\>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]>
    </equation*>

    \;
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

  We can now use the Carath?odory method to define a measure space on
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

  <subsection|The Carath?odory theorem and <math|\<bbb-R\><rsup|n>>>

  Just as in the real case we use theorem <reference|outermeasure
  construction> to define a outer measure on <math|\<bbb-R\><rsup|n>>. first
  we must prove that <math|\<bbb-R\><rsup|n>> can be covered by sets in
  <math|\<cal-R\><rsup|n>>.

  <\lemma>
    <label|R^n is a unin of rectangles>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|\<bbb-R\><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]>>
  </lemma>

  <\proof>
    First as <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|<around*|]|-i,i|[><rsup|n>\<subseteq\><around*|]|-i,i|]><rsup|n>\<subseteq\>\<bbb-R\><rsup|n>>
    we have trivially that

    <\equation*>
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]>\<subseteq\>\<bbb-R\><rsup|n>.
    </equation*>

    For the opposite inclusion let <math|x\<in\>\<bbb-R\><rsup|n>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<rsub|i>\<in\>\<bbb-R\>\<equallim\><rsub|<text|<reference|R can be
    covered by open intervals>>><big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>><around*|[|-j,j|[>>
    so there exists <math|j<rsub|i>\<in\>\<bbb-N\><rsub|0>> such that
    <math|-j<rsub|i>\<less\>x<rsub|i>\<less\>j<rsub|i>>. Take
    <math|k=max<around*|(|<around*|{|j<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<bbb-N\><rsub|0>>
    then we have that <math|-k\<leqslant\>-j<rsub|i>\<less\>x<rsub|j>\<less\>j<rsub|i>\<leqslant\>k>
    proving that <math|x\<in\><around*|]|-k,k|[><rsup|n>>. Hence

    <\equation*>
      \<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]>
    </equation*>
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
      18.131.025>>>V|\<nobracket\>>>. Summarizing the above we have\ 

      <\equation>
        <label|eq 18.146.025>J=<around*|[|a<rprime|'>,b<rprime|'>|[>\<in\>\<cal-R\><rsup|n><text|
        and >v<rsup|n><around*|(|J|)>=V
      </equation>

      Further for <math|i\<in\>\<bbb-N\>> define
      <math|<wide|a<rsup|i>|\<bar\>>,<wide|b<rsup|i>|\<bar\>>\<in\>\<bbb-R\><rsup|n>>
      by <math|<around*|(|<wide|a<rsup|i>|\<bar\>>|)><rsub|j>=<around*|(|a<rsup|i>|)><rsub|j>>
      and <math|<around*|(|<wide|b<rsup|i>|\<bar\>>|)><rsub|j>=<around*|(|b<rsup|i>|)><rsub|j>>.
      Then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>> we have
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
      Given that <math|\<varepsilon\>\<gtr\>0> was chosen arbitrary we have
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
      \<varphi\><rsup|n><around*|(|R|)>=inf<around*|(|<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\><rsup|n><text|
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
    check the conditions for the theorem.

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

  Applying the above on the Carath?odory theorem (see
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

    which as <math|\<varepsilon\>> was chosen arbitrary proves by
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

  <\corollary>
    <label|Borel measure space>Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|Rr<rsup|n>|]>>|\<rangle\>>>
    is a measure space
  </corollary>

  <\proof>
    This follows trivially from <reference|restriction of measure space to a
    sub sigma algebra> and the above (see <reference|Lebesgue measurable sets
    alternatives>)
  </proof>

  <subsection|Properties of <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
  and <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>>

  <\lemma>
    <label|aproximate halfopen by open>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b> and
    <math|\<varepsilon\>\<gtr\>0> then there exists a
    <math|a<rprime|'>,b<rprime|'>\<in\>\<bbb-R\><rsup|n>> such that
    <math|<around*|[|a,b|[>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[>>
    and <math|v<rsup|n><around*|(|<around*|[|a<rprime|'>,b<rprime|'>|[>|)>=<big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|b<rprime|'><rsub|i>-a<rsub|i><rprime|'>|)>\<leqslant\>v<rsup|n><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>>
  </lemma>

  <\proof>
    First if <math|<around*|[|a,b|[>=\<emptyset\>> define
    <math|a<rprime|'>,b<rprime|'>> by \ <math|a<rprime|'><rsub|i>=0,b<rsub|i><rprime|'>=<around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>>.
    Then <math|a<rprime|'>\<less\>b<rprime|'>>,
    <math|<around*|[|a,b|[>=\<emptyset\>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[>>
    and <math|<big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>=<big|prod><rsub|i=1><rsup|n><around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>=<around*|(|<around*|(|<frac|\<varepsilon\>|2>|)><rsup|<frac|1|n>>|)><rsup|n>\<equallim\><rsub|<text|<reference|properties
    of general power>>><frac|\<varepsilon\>|2>\<less\>\<varepsilon\>=0+\<varepsilon\>=v<rsup|n><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>>
    which proves the theorem for the case
    <math|<around*|[|a,b|[>=\<emptyset\>>. So we are left with the case where
    <math|<around*|[|a,b|[>\<neq\>\<emptyset\>>. In this case we must have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|a<rsub|i>\<less\>b<rsub|i>> [otherwise
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
      and <math|<big|prod><rsub|i=1><rsup|1><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>=b<rprime|'>-a<rprime|'>=b-<around*|(|a-\<varepsilon\>|)>=<around*|(|b-a|)>+\<varepsilon\>=v<rsup|1><around*|(|<around*|[|a,b|[>|)>+\<varepsilon\>>
      which proves that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Take
      <math|a=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n+1>|)>,<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n+1>|)>\<in\>\<bbb-R\><rsup|n+1>>
      with <math|a\<less\>b> then <math|<wide|a|\<bar\>>=<around*|(|a<rsub|1>,\<ldots\>,a<rsub|n>|)>,<wide|b|\<bar\>>=<around*|(|b<rsub|1>,\<ldots\>,b<rsub|n>|)>\<in\>\<bbb-R\><rsup|n>>
      with <math|<wide|a|\<bar\>>\<less\><wide|b|\<bar\>>>. Take
      <math|\<varepsilon\>\<gtr\>0>. As <math|n\<in\>\<cal-S\>> there exists
      a <math|<wide|a|\<bar\>><rprime|'>=<around*|(|a<rprime|'><rsub|1>,\<ldots\>,a<rprime|'><rsub|n>|)>,<wide|b|\<bar\>><rprime|'>=<around*|(|b;<rsub|1>,\<ldots\>,b<rprime|'><rsub|n>|)>>
      with <math|<below|<wide|a|\<bar\>><rprime|'>\<less\><wide|b<rprime|'>|\<bar\>>|>>
      such that <math|<around*|[|<wide|a|\<bar\>>,<wide|b|\<bar\>>|[>\<subseteq\><around*|]|<wide|a|\<bar\>><rprime|'>,<wide|b|\<bar\>><rprime|'>|[>>
      and for

      <\equation>
        <label|eq 18.167.028>\<delta\><rsub|1>=min<around*|(|<frac|\<varepsilon\>|3\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>>,1|)>
      </equation>

      we have\ 

      <\equation>
        <label|eq 18.168.028><big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>\<leqslant\>v<rsup|n><around*|(|<around*|[|<wide|a|\<bar\>>,<wide|b|\<bar\>>|[>|)>+\<delta\><rsub|1>=<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>+\<delta\><rsub|1>
      </equation>

      Take

      <\equation>
        <label|eq 18.169.028>\<delta\><rsub|2>=min<around*|(|<frac|\<varepsilon\>|3>,<frac|\<varepsilon\>|3\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>>|)>
      </equation>

      and define <math|a<rprime|'><rsub|n+1>=a<rsub|n+1>-\<delta\><rsub|2>,b<rprime|'><rsub|n+1>=b<rsub|n+1>>
      and <math|a<rprime|'>=<around*|(|a<rprime|'><rsub|1>,\<ldots\>,a<rprime|'><rsub|n+1>|)>,b<rprime|'>=<around*|(|b<rprime|'><rsub|1>,\<ldots\>,b<rprime|'><rsub|n+1>|)>>.
      If <math|x\<in\><around*|[|a,b|[>> we have for
      <math|i\<in\><around*|{|1,\<ldots\>,n+1|}>> either

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>>><math|x<rsub|i>\<in\><around*|[|a<rsub|i>,b<rsub|i>|[>=<around*|[|<wide|a|\<bar\>><rsub|i>,<wide|b|\<bar\>><rsub|i>|[>\<Rightarrowlim\><rsub|<around*|[|<wide|<wide|a|\<bar\>>|\<bar\>>,<wide|b|\<bar\>>|[>\<subseteq\><around*|]|<wide|a|\<bar\>><rprime|'>,<wide|b|\<bar\>><rprime|'>|[>>x<rsub|i>\<in\><around*|]|<wide|a|\<bar\>><rprime|'><rsub|i>,<wide|b|\<bar\>><rprime|'><rsub|i>|[>=<around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>>

        <item*|<math|i=n+1>><math|x<rsub|i>=x<rsub|n+1>\<in\><around*|[|a<rsub|n+1>,b<rsub|n+1>|[>\<Rightarrow\>x<rsub|n+1>\<in\><around*|]|a<rsub|n+1>-\<delta\><rsub|2>,b<rsub|n+1>|[>=<around*|]|a<rprime|'><rsub|n+1>,b<rprime|'><rsub|n+1>|[>>
      </description>

      which proves\ 

      <\equation>
        <label|eq 18.170.028><around*|[|a,b|[>\<subseteq\><around*|]|a<rprime|'>,b<rprime|'>|[>
      </equation>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|prod><rsub|i=1><rsup|n+1><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rprime|'><rsub|i>-a<rprime|'><rsub|i>|)>|)>\<cdot\><around*|(|b<rprime|'><rsub|n+1>-a<rprime|'><rsub|n+1>|)>>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.168.028>>>>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>+\<delta\><rsub|1>|)>\<cdot\><around*|(|b<rprime|'><rsub|n+1>-a<rprime|'><rsub|n+1>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>+\<delta\><rsub|1>|)>\<cdot\><around*|(|<around*|(|b<rsub|n+1>-a<rsub|n+1>|)>+\<delta\><rsub|2>|)>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>|)>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>+\<delta\><rsub|2>\<cdot\><big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>+\<delta\><rsub|1>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>+\<delta\><rsub|1>\<cdot\>\<delta\><rsub|2>>|<cell|\<less\><rsub|<text|<reference|eq
        18.167.028>,<reference|eq 18.169.028>>>>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>|)>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>+<frac|\<varepsilon\>|3>>|<cell|=>|<cell|>>|<row|<cell|<around*|(|<big|prod><rsub|i=1><rsup|n><around*|(|b<rsub|i>-a<rsub|i>|)>|)>\<cdot\><around*|(|b<rsub|n+1>-a<rsub|n+1>|)>+\<varepsilon\>>|<cell|>|<cell|>>>>
      </eqnarray*>

      which together with <reference|eq 18.170.028> proves that
      <math|n+1\<in\>\<cal-S\><rsub|n>>
    </description>
  </proof>

  <\proposition>
    <label|alternative formule for lebesgue measure (1)>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|A\<in\>\<cal-L\><rsup|n>>
    [<math|A> is a Lebesgue measurable set] then

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
      and

      <\equation>
        <label|eq 18.172.028><big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>+<frac|\<varepsilon\>|2>
      </equation>

      As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|R<rsub|i>=<around*|[|a<rsub|i>,b<rsub|i>|[>> where
      <math|a<rsub|i>,b<rsub|i>\<in\>\<bbb-R\><rsup|n>> with
      <math|a<rsub|i>\<leqslant\>b<rsub|i>> we can use <reference|aproximate
      halfopen by open> to find <math|<around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
      such that <math|<around*|[|a<rsub|i>,b<rsub|i>|[>\<subseteq\><around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|>|[>>
      and <math|v<rsup|n><around*|(|<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>|)>\<leqslant\>v<rsup|n><around*|(|<around*|[|a<rsub|i>,b<rsub|i>|[>|)>+<frac|\<varepsilon\>|2<rsup|i+1>>=v<rsup|n><around*|(|R<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i+1>>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>|)>>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|v<rsup|n><around*|(|R<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i+1>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>+<big|sum><rsub|i=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|i+1>>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>+<frac|\<varepsilon\>|2>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>+<frac|1|2>\<cdot\>\<varepsilon\>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
        18.172.028>>>>|<cell|\<lambda\><rsup|n><around*|(|A|)>+<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|\<less\>>|<cell|\<lambda\><rsup|n><around*|(|A|)>+\<varepsilon\><eq-number><label|eq
        18.173list>>>>>
      </eqnarray*>

      Take <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>>
      then <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>=U>
      giving

      <\equation>
        <label|eq 18.174.028>\<lambda\><rsup|n><around*|(|U|)>\<in\><around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>
      </equation>

      As <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>>
      we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<lambda\><rsup|n><around*|(|U|)>>|<cell|\<leqslant\>>|<cell|\<lambda\><rsup|n><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|measure
        is subadditive>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|n><around*|(|<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
        measurable sets alternatives>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|<around*|[|a<rprime|'><rsub|i>,b<rprime|'><rsub|i>|[>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
        18.173list>>>>|<cell|\<lambda\><rsup|n><around*|(|A|)>+\<varepsilon\><eq-number><label|eq
        18.175.028>>>>>
      </eqnarray*>

      From <reference|eq 18.174.028> and <reference|eq 18.175.028> it follows
      that \ <math|inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>+\<varepsilon\>>
      which as <math|\<varepsilon\>> was arbitrary chosen that

      <\equation*>
        inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>
      </equation*>

      <\equation*>
        \;
      </equation*>
    </description>

    Hence in all cases we have <math|inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>>
    which combined with <reference|eq 18.167.027> proves that\ 

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>
    </equation*>
  </proof>

  <\proposition>
    <label|Lebesgue space and compact sets>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|A\<in\>\<cal-L\><rsup|n>>
    [<math|A> is a Lebesgue measurable set] then

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>:K\<subseteq\>A\<wedge\>K
      is compact in \<cal-T\><rsub|\<bbb-R\>>|}>|)>
    </equation*>

    Note: As compact spaces are closed in <math|\<bbb-R\><rsup|n>> [see
    <reference|compact subspaces are closed> and <reference|metric spaces are
    Hausdorff>] we have by <reference|Lebesgue measurable sets alternatives>
    that every compact sets is Lebesgue measurable, also <math|\<emptyset\>>
    is a compact set with <math|\<emptyset\>\<subseteq\>A> so that
    <math|<around*|{|\<lambda\><rsup|n><around*|(|K|)>:K\<subseteq\>A\<wedge\>K
    is compact in \<cal-T\><rsub|\<bbb-R\>>|}>\<neq\>\<emptyset\>>. Hence
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

    Further if <math|y\<in\><wide|B|\<bar\>><rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|0,M|)>=C>
    then <math|<around*|\<\|\|\>|y|\<\|\|\>><rsub|max>\<leqslant\>M> or
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|0\<leqslant\><around*|\||y<rsub|i>|\|>\<leqslant\>M\<less\>M+1\<Rightarrow\>-<around*|(|M+1|)>\<less\>y<rsub|i>\<less\>M+1>
    or <math|y\<in\><around*|[|-<around*|(|M+1|)>,M+1|[><rsup|n>>. So
    <math|A\<subseteq\>C\<subseteq\><around*|[|-<around*|(|M+1|)>,M+1|[><rsup|n>>
    or <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|C|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|[|-<around*|(|M+1|)>,M+1|[><rsup|n>|)>=v<rsup|n><around*|(|<big|sqcap><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|-<around*|(|M+1|)>,M+1|[>|)>=<big|sqcap><rsub|i=1><rsup|n><around*|(|2\<cdot\><around*|(|M+1|)>|)>\<less\>\<infty\>>
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
      <label|eq 18.173.027>L=C\\U<text| is compact,closed><infix-and>
      L\<in\>\<cal-L\><rsup|n>
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
    As <math|\<varepsilon\>\<gtr\>0> was chosen arbitrary it follows from
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

    \;

    Next for the general case, consider the case where
    <math|A\<in\>\<cal-L\><rsup|n>> is not necessarily bounded. Then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|=>|<cell|A<big|cap>\<bbb-R\><rsup|n>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|R^n
      is a unin of rectangles>>>>|<cell|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap><around*|[|-i,i|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
      <text| where >A<rsub|i>=A<big|cap><around*|[|-i,i|[><rsup|n>\<in\>\<cal-L\><rsup|n>>>>>
    </eqnarray*>

    If <math|x\<in\>A<rsub|i>> then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    we have <math|-i\<leqslant\>x<rsub|j>\<less\>i> so that
    <math|<around*|\||x<rsub|j>|\|>\<leqslant\>i>, hence
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>\<leqslant\>i> which proves
    that <math|A<rsub|i>> is bounded. Further
    <math|A<rsub|i>=A<big|cap><around*|[|-i,i|[><rsup|n>\<subseteq\>A<big|cap><around*|[|-<around*|(|i+1|)>,i+1|[><rsup|n>=A<rsub|i+1>>
    To summarize\ 

    <\equation>
      <label|eq 18.186.030.1>If A\<in\>\<cal-L\><rsup|n> then
      \<exists\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-L\><rsup|n>
      with A<rsub|i>\<subseteq\>A<rsub|i+1>\<wedge\>A<rsub|i> is bounded \ so
      that A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
    </equation>

    Using <reference|measure properties (2)> on the above gives

    <\equation>
      <label|eq 18.187.030.1>\<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    Assume now that <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>\<equallim\><rsub|<text|<reference|eq
    18.187.030.1>>>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>.
    Then there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such that

    <\equation*>
      sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A<rsub|i>|)>
    </equation*>

    As <math|A<rsub|i>\<in\>\<cal-L\><rsup|n>> is bounded [see <reference|eq
    18.186.030.1>] we have by <reference|eq 18.177.027> that
    <math|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A<rsub|i>|}>|)>> giving using the above that

    <\equation*>
      sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A<rsub|i>|}>|)>=\<lambda\><rsup|n><around*|(|A<rsub|i>|)>
    </equation*>

    So there exists a compact set <math|L> with <math|L\<subseteq\>A<rsub|i>>
    such that

    <\equation*>
      sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|L|)>
    </equation*>

    As <math|A<rsub|i>\<subset\>A> we have <math|L\<subseteq\>A> so that
    <math|L\<in\><around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>> and reach the contraction <math|>

    <\equation*>
      \<lambda\><rsup|n><around*|(|L|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|L|)>
    </equation*>

    Hence the assumption <math|sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>>
    is wrong proving that <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
    compact\<wedge\>K\<subseteq\>A|}>|)>>. So taking in account <reference|eq
    18.168.027> we have\ 

    <\equation*>
      \<lambda\><rsup|n><around*|(|A|)>=sup<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|K|)>\|K
      compact\<wedge\>K\<subseteq\>A|}>|)>
    </equation*>

    in the general case.
  </proof>

  As a example of a application of the above propositions we prove that the
  Lebesgue measure on <math|\<bbb-R\><rsup|n>> can be seen as a extension of
  any measures on <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.

  <\proposition>
    <label|uniqueness of the Lebesgue measure>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>. If <math|\<mu\>> is a measure on
    <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> such that
    <math|\<forall\>R\<in\>\<cal-D\><rsup|n>> [see <reference|Dyadic cubes>]
    we have <math|v<rsup|n><around*|(|R|)>=\<mu\><around*|(|R|)>> then
    <math|\<mu\>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>
    [or <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
    have <math|\<mu\><around*|(|A|)>=\<lambda\><rsup|n><around*|(|A|)>>]
  </proposition>

  <\proof>
    Let <math|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> be a open set then by
    <reference|every open set in R^n is a countable union of dyadic cubes>
    there exists a pairwise disjoint family
    <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsup|n>>
    of half open rectangles such that <math|U=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>>.
    So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|U|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Lebesgue
      measurable sets alternatives>>>>|<cell|<big|sum><rsub|i=1><rsup|n>\<lambda\><rsup|n><around*|(|D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|U|)>>>>>
    </eqnarray*>

    proving\ 

    <\equation>
      <label|eq 18.190.028>\<forall\>U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>><text|
      we have >\<mu\><around*|(|U|)>=\<lambda\><rsup|n><around*|(|U|)>
    </equation>

    Let <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\>\<cal-L\><rsup|n>>
    then if <math|U\<in\>\<cal-T\><rsub|\<bbb-R\>>> such that
    <math|A\<subseteq\>U> then we have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>\<equallim\><rsub|<text|<reference|eq
    18.190.028>>>\<lambda\><rsup|n><around*|(|U|)>> proving that
    <math|\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|U\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<wedge\>A\<subseteq\>U|}>|)>\<equallim\><rsub|<text|<reference|alternative
    formule for lebesgue measure (1)>>>\<lambda\><rsup|n><around*|(|A|)>>. So
    we have\ 

    <\equation>
      <label|eq 18.191.028>\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
      \<mu\><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    Now to replace this inequality by a equality. Let
    <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> be such that
    <math|\<exists\>a,b\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b>
    such that <math|A\<subseteq\><around*|]|a,b|[>>. Then as
    <math|\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>=<big|prod><rsub|i=1><rsup|\<infty\>><around*|(|b<rsub|i>-a<rsub|i>|)>\<less\>\<infty\>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<around*|]|a,b|[>|)>>|<cell|\<leqslant\>>|<cell|\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>\<less\>\<infty\>>>|<row|<cell|\<mu\><around*|(|A|)>>|<cell|\<leqslant\><rsub|<reference|eq
      18.191.028>>>|<cell|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>\<less\>\<infty\>>>|<row|<cell|\<mu\><around*|(|<around*|]|a,b|[>\\A|)>>|<cell|\<leqslant\><rsub|<reference|eq
      18.191.028>>>|<cell|\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>\\A|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>\<less\>\<infty\>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.192.028>\<mu\><around*|(|<around*|]|a,b|[>|)>,\<mu\><around*|(|A|)>,\<mu\><around*|(|<around*|]|a,b|[>\\A|)>,\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>,\<lambda\><rsup|n><around*|(|A|)>,\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>\\A|)>\<less\>\<infty\>
    </equation>

    Further we have as <math|A\<equallim\><rsub|A\<subseteq\><around*|]|a,b|[>><around*|(|<around*|]|a,b|[>\\A|)><big|sqcup>A>
    that\ 

    <\equation*>
      \<mu\><around*|(|<around*|]|a,b|[>|)>=\<mu\><around*|(|<around*|]|a,b|[>\\A|)>+\<mu\><around*|(|A|)>\<leqslant\><rsub|<text|<reference|eq
      18.191.028>>>\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>\\A|)>+\<lambda\><rsup|n><around*|(|A|)>=\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>|)>\<equallim\><rsub|<text|<reference|eq
      18.190.028>>>\<mu\><around*|(|<around*|]|a,b|[>|)>
    </equation*>

    so that

    <\equation>
      <label|eq 18.193.028>\<mu\><around*|(|<around*|]|a,b|[>\\A|)>+\<mu\><around*|(|A|)>=\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>\\A|)>+\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    If now <math|\<mu\><around*|(|A|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>>
    then <math|\<mu\><around*|(|<around*|]|a,b|[>\\A|)>+\<mu\><around*|(|A|)>\<less\>\<mu\><around*|(|<around*|[|a,b|[>\\A|)>+\<lambda\><rsup|n><around*|(|A|)>\<leqslant\><rsub|<text|<reference|eq
    18.191.028>>>\<lambda\><rsup|n><around*|(|<around*|]|a,b|[>\\A|)>+\<lambda\><rsup|n><around*|(|A|)>>
    contradicting <reference|eq 18.193.028>. Hence
    <math|\<lambda\><rsup|n><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A|)>>
    which combined with <reference|eq 18.191.028> proves
    <math|\<lambda\><rsup|n><around*|(|A|)>=\<mu\><around*|(|A|)>>. To
    summarize\ 

    <\equation>
      <label|eq 18.194.028>\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
      such that \<exists\>a,b\<in\>\<bbb-R\><rsup|n> with
      a\<leqslant\>b<infix-and>A\<subseteq\><around*|]|a,b|[> then
      \<mu\><around*|(|A|)>=\<lambda\><rsup|n><around*|(|A|)>
    </equation>

    Now for the general case let <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    then

    <\eqnarray*>
      <tformat|<table|<row|<cell|A>|<cell|=>|<cell|A<big|cap>\<bbb-R\><rsup|n>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|]|-i,i|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap><around*|]|-i,i|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>
      were A<rsub|i>=A<big|cap><around*|]|-i,i|[><rsup|n>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<wedge\>A<rsub|i>\<subseteq\><around*|]|-i,i|[><rsup|n>>>>>
    </eqnarray*>

    Using <reference|replace countable untion of sets by disjoint union of
    sets> there exists a <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    such that <math|A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>>
    with <math|B<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\><around*|]|-i,i|[><rsup|n>>.
    Hence we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.194.028>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|n><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|A|)>>>>>
    </eqnarray*>

    So <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
    have <math|\<mu\><around*|(|A|)>=\<lambda\><rsup|n><around*|(|A|)>>
    proving that\ 

    <\equation*>
      \<mu\>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    </equation*>
  </proof>

  <\definition>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>, <math|A\<subseteq\>\<bbb-R\><rsup|n>>
    and <math|a\<in\>\<bbb-R\><rsup|n>> then
    <math|A+a=<around*|{|y+a\|a\<in\>\<bbb-R\><rsup|n>|}>>
  </definition>

  <\proposition>
    <label|translation properties>Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|a\<in\>\<bbb-R\><rsup|n>> then\ 

    <\enumerate>
      <item>If <math|A\<subseteq\>\<bbb-R\><rsup|n>> then <math|x\<in\>A+a>
      if and only if <math|x-a\<in\>A>

      <item>If <math|A\<subseteq\>\<bbb-R\><rsup|n>> then
      <math|<around*|(|A+a|)>+<around*|(|-a|)>=A>

      <item>If <math|A,B\<subseteq\>\<bbb-R\><rsup|n>> then
      <math|A\<subseteq\>B\<Leftrightarrow\>A+a\<subseteq\>B+a> <math|>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>>
      and <math|<big|cup><rsub|i\<in\>I>A<rsub|i>> then
      <math|<around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>+a\<subseteq\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>+a|)>>

      <item>If <math|A,B\<subseteq\>\<bbb-R\><rsup|n>> then
      <math|<around*|(|A+a|)><big|cap>B=<around*|(|A<big|cap><around*|(|B+<around*|(|-a|)>|)>|)>+a>

      <item>If <math|A,B\<in\>\<bbb-R\><rsup|n>> then
      <math|<around*|(|A+a|)>\\B=<around*|(|A\\<around*|(|B+<around*|(|-a|)>|)>|)>+a>

      <item>If <math|a,b,c\<in\>\<bbb-R\><rsup|n>> with <math|a\<leqslant\>b>
      then <math|<around*|[|a,b|[>+c=<around*|[|a+c,b+c|[>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<in\>A+y> then
        <math|\<exists\>y\<in\>A> such that <math|x=y+a> hence
        <math|x-a=y\<in\>A>

        <item*|<math|\<Leftarrow\>>>If <math|x-a\<in\>A> then
        <math|x=<around*|(|x-a|)>+a\<in\>A+x>
      </description>

      <item>If <math|x\<in\><around*|(|A+a|)>+<around*|(|-a|)>> then
      <math|\<exists\>y\<in\>A+a> such that <math|x=y+<around*|(|-a|)>>. As
      <math|y\<in\>A+a> there exists a <math|z\<in\>A> such that
      <math|y=z+a>. Hence <math|x=<around*|(|z+a|)>+<around*|(|-a|)>=z\<in\>A>.
      Further if <math|x\<in\>A> then <math|x+a\<in\>A+a> hence
      <math|x=<around*|(|x+a|)>+<around*|(|-a|)>\<in\><around*|(|A+a|)>+<around*|(|-a|)>>

      <item>\ 

      <\description>
        <item*|<math|\<Rightarrow\>>>If <math|x\<in\>A+a> then there exists a
        <math|y\<in\>A\<subseteq\>B> such that <math|x=y+a> which as
        <math|y\<in\>B> proves that <math|x\<in\>B+a> proving that
        <math|A+a\<subseteq\>B+a>

        <item*|<math|\<Leftarrow\>>>If <math|A\<equallim\><rsub|<around*|(|2|)>><around*|(|A+a|)>+<around*|(|-a|)>\<subseteq\><rsub|><around*|(|B+a|)>+<around*|(|-a|)>\<equallim\><rsub|<around*|(|2|)>>B>
      </description>

      <item>If <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>I>A<rsub|i>|)>+a>
      then there exists a <math|y\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>>
      such that <math|x=y+a>. So there exists a <math|i\<in\>I> such that
      <math|y\<in\>A<rsub|i>> hence <math|x\<in\>A<rsub|i>+a> proving that
      <math|x\<in\><big|cup><rsub|i\<in\>I><around*|(|A<rsub|i>+a|)>>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|A+a|)><big|cap>B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A+a\<wedge\>x\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|<around*|(|x-a|)>\<in\>A\<wedge\><around*|(|x-a|)>-<around*|(|-a|)>\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|<around*|(|x-a|)>\<in\>A\<wedge\><around*|(|x-a|)>\<in\>B+<around*|(|-a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x-a|)>\<in\>A<big|cap><around*|(|B+<around*|(|-a|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|x\<in\><around*|(|A<big|cap><around*|(|B+<around*|(|-a|)>|)>|)>+a>>>>
      </eqnarray*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|A+a|)>\\B>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A+a\<wedge\>x\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|x-a\<in\>A\<wedge\><around*|(|x-a|)>+a\<nin\>B>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x-a|)>\<in\>A\<wedge\><around*|(|x-a|)>\<nin\><around*|(|B+<around*|(|-a|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x-a|)>\<in\><around*|(|A<big|cap><around*|(|B+<around*|(|-a|)>|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|A<big|cap><around*|(|B+<around*|(|-a|)>|)>|)>>>>>
      </eqnarray*>

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|[|a,b|[>+c>|<cell|\<Leftrightarrowlim\><rsub|<around*|(|1|)>>>|<cell|x-c\<in\><around*|[|a,b|[>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        a<rsub|i>\<leqslant\>x<rsub|i>-c<rsub|i>\<less\>b<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
        a<rsub|i>+c<rsub|i>\<leqslant\>x<rsub|i>\<less\>b<rsub|i>+c<rsub|i>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|[|a+c,b+c|[>>>>>
      </eqnarray*>
    </enumerate>

    \;
  </proof>

  We proceed now to prove that <math|\<varphi\><rsup|n>> is translation
  invariant. First we prove this for <math|v<rsup|n>> and half open
  rectangles.

  <\lemma>
    <label|volume is translation invariant>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|R\<in\>\<cal-R\><rsup|n>> and
    <math|a\<in\>\<bbb-R\><rsup|n>> then <math|v<rsup|n><around*|(|R|)>=v<rsup|n><around*|(|R+a|)>>
  </lemma>

  <\proof>
    Let <math|R\<in\>\<cal-R\><rsup|n>> then
    <math|\<exists\>c,d\<in\>\<bbb-R\><rsup|n>> with <math|c\<leqslant\>d>
    such that <math|R=<around*|[|c,d|[>>. Then we have
    <math|R+a\<equallim\><rsub|<text|<reference|translation
    properties>>><around*|[|c+a,d+a|[>> hence
    <math|v<rsup|n><around*|(|R+a|)>> exists and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|v<rsup|n><around*|(|R+a|)>>|<cell|=>|<cell|v<rsup|n><around*|(|<around*|[|c+a,d+a|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|d<rsub|i>+a<rsub|i>-c<rsub|i>-a<rsub|i><rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|d<rsub|i>-c<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|v<rsup|n><around*|(|R|)>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|outer measure is translation invariant>Let
    <math|n\<in\>\<bbb-N\><rsub|0>>, then
    <math|\<forall\>A\<subseteq\>\<bbb-R\><rsup|n>> and
    <math|\<forall\>a\<in\>\<bbb-R\><rsup|n>> we have
    <math|\<varphi\><rsup|n><around*|(|A|)>=\<varphi\><rsup|n><around*|(|A+a|)>>
  </lemma>

  <\proof>
    Given <math|A\<subseteq\>\<bbb-R\><rsup|n>> define
    <math|\<cal-C\><rsub|A>> by <math|C<rsub|A>=<around*|{|<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>\|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\><rsup|n><text|
    such that >A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>|}>>
    then if <math|x\<in\>C<rsub|A>> there exists a
    <math|<around*|{|R<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\><rsup|n>>
    with <math|A\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>R<rsub|i>>
    such that <math|x=<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>|)>>.
    Using <reference|volume is translation invariant> we have that
    <math|x=<big|sum><rsub|i=1><rsup|\<infty\>>v<rsup|n><around*|(|R<rsub|i>+a|)>>,
    further by <reference|translation properties> we have
    \ <math|A+a\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|R<rsub|i>+a|)>>
    hence <math|x\<in\>\<cal-C\><rsub|<around*|(|A+a|)>>>. So\ 

    <\equation>
      <label|eq 18.188.028>\<forall\>A\<subseteq\>\<bbb-R\><rsup|n>,\<forall\>a\<in\>\<bbb-R\><rsup|n><text|
      we have >\<cal-C\><rsub|A>\<subseteq\>\<cal-C\><rsub|<around*|(|A+a|)>>
    </equation>

    Next we have <math|\<cal-C\><rsub|A+a>\<subseteq\><rsub|<text|<reference|eq
    18.188.028>>>\<cal-C\><rsub|<around*|(|A+a|)>+<around*|(|-a|)>>\<equallim\><rsub|<text|<reference|translation
    properties>>>\<cal-C\><rsub|A>>. Using <reference|eq 18.188.028> again we
    conclude that <math|\<cal-C\><rsub|A>=\<cal-C\><rsub|a+a>> hence we have
    that\ 

    <\equation*>
      \<varphi\><rsup|n><around*|(|A|)>=inf<around*|(|\<cal-C\><rsub|A>|)>\<equallim\>inf<around*|(|\<cal-C\><rsub|A+a>|)>=\<varphi\><rsup|n><around*|(|A+a|)>
    </equation*>
  </proof>

  Next we prove that every Lebesgue measurable set is translation invariant.

  <\lemma>
    <label|Lebesgue measurability is transalation invariant>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<forall\>a\<in\>\<bbb-R\><rsup|n>>
    and <math|A\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>> then
    <math|A\<in\>\<cal-L\><rsup|n>> if and only of
    <math|A+a\<in\>\<cal-L\><rsup|n>>
  </lemma>

  <\proof>
    Take <math|a\<in\>\<bbb-R\><rsup|n>>. Assume that
    <math|A\<in\>\<cal-L\><rsup|n>> then

    <\equation>
      <label|eq 18.189.028>\<forall\>B\<subseteq\>\<bbb-R\><rsup|n><text| we
      have >\<varphi\><rsup|n><around*|(|B|)>=\<varphi\><rsup|n><around*|(|B<big|cap>A|)>+\<varphi\><rsup|n><around*|(|B\\A|)>
    </equation>

    Hence for <math|B\<subseteq\>\<bbb-R\><rsup|n>> we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<varphi\><rsup|n><around*|(|B<big|cap><around*|(|A+a|)>|)>+\<varphi\><rsup|n><around*|(|B\\<around*|(|A+a|)>|)>>|<cell|\<equallim\><rsub|<text|<reference|outer
      measure is translation invariant>>>>|<cell|\<varphi\><rsup|n><around*|(|<around*|(|B<big|cap><around*|(|A+a|)>|)>+<around*|(|-a|)>|)>+\<varphi\><rsup|n><around*|(|<around*|(|B\\<around*|(|A+a|)>|)>+<around*|(|-a|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|translation
      properties>>>>|<cell|\<varphi\><rsup|n><around*|(|<around*|(|B+<around*|(|-a|)>|)><big|cap>A|)>+\<varphi\><rsup|n><around*|(|<around*|(|B+<around*|(|-a|)>|)>\\A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.189.028>>>>|<cell|\<varphi\><rsup|n><around*|(|B|)>>>>>
    </eqnarray*>

    which proves that <math|A+a\<in\>\<cal-L\><rsup|n>>. If on the other hand
    <math|A+a\<in\>\<cal-L\><rsup|n>> then
    <math|<around*|(|A+a|)>+<around*|(|-a|)>\<in\>\<cal-L\><rsup|n>> which by
    <reference|translation properties> proves that
    <math|A\<in\>\<cal-L\><rsup|n>>.
  </proof>

  To summarize <reference|outer measure is translation invariant> and
  <reference|Lebesgue measurability is transalation invariant> we have the
  following theorem.

  <\theorem>
    <label|Lebesgue measure is translation invariant>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then given
    <math|a\<in\>\<bbb-R\><rsup|n>> we have

    <\enumerate>
      <item><math|A\<in\>\<cal-L\><rsup|n>> if and only if
      <math|A+a\<in\>\<cal-L\><rsup|n>>

      <item><math|\<forall\>A\<in\>\<cal-P\><around*|(|\<bbb-R\><rsup|n>|)>>
      we have <math|\<varphi\><rsup|n><around*|(|A+a|)>=\<varphi\><rsup|n><around*|(|A|)>>
      which as <math|\<lambda\><rsup|n>=<around*|(|\<varphi\><rsup|n>|)><rsub|\|\<cal-L\><rsup|n>>>
      means that <math|\<forall\>A\<in\>\<cal-L\><rsup|n>>
      <math|\<lambda\><rsup|n><around*|(|A+a|)>=\<lambda\><rsup|n><around*|(|A|)>>
    </enumerate>
  </theorem>

  <\proof>
    See \ <reference|outer measure is translation invariant> and
    <reference|Lebesgue measurability is transalation invariant>.
  </proof>

  We prove now that every set in <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  is translation invariant.

  <\lemma>
    <label|Borel sets in R^n are transaltion invariant>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    we have that <math|A+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  </lemma>

  <\proof>
    First given <math|a\<in\>\<bbb-R\><rsup|n>> we will prove that
    <math|\<cal-S\><rsub|a>=<around*|{|A\<in\>\<cal-P\><around*|[|\<bbb-R\><rsup|n>|]>\|A+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|}>>
    is a <math|\<sigma\>>-algebra.\ 

    <\enumerate>
      <item>As <math|\<bbb-R\><rsup|n>+a=\<bbb-R\><rsup|n>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      [<math|\<bbb-R\><rsup|n>> is a vector space] we have that
      <math|\<bbb-R\><rsup|n>\<in\>\<cal-S\><rsub|a>>

      <item>Let <math|A\<in\>\<cal-S\><rsub|a>> then
      <math|A+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>. Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|\<bbb-R\><rsup|n>\\A|)>+a>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|translation
        properties>>>>|<cell|<around*|(|x-a|)>\<in\>\<bbb-R\><rsup|n>\\A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x-a|)>\<in\>\<bbb-R\><rsup|n>\<wedge\><around*|(|x-a|)>\<nin\>A>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|\<bbb-R\><rsup|n>
        is a vector space>>|<cell|x\<in\>\<bbb-R\><rsup|n>\<wedge\><around*|(|x-a|)>\<nin\>A>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n>\<wedge\>x\<nin\><around*|(|A+a|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>\<bbb-R\><rsup|n>\\<around*|(|A+a|)>>>>>
      </eqnarray*>

      proving that <math|<around*|(|\<bbb-R\><rsup|n>\\A|)>+a=<around*|(|\<bbb-R\><rsup|n>\\<around*|(|A+a|)>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>,
      hence <math|<around*|(|\<bbb-R\><rsup|n>\\A|)>\<in\>\<cal-S\><rsub|a>>.

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsub|a>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>. hence

      <\equation*>
        <around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>+a\<equallim\><rsub|<text|<reference|translation
        properties>>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i>+a|)>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
      </equation*>

      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-S\><rsub|a>>
    </enumerate>

    Hence\ 

    <\equation>
      <label|eq 18.195.028>\<forall\>a\<in\>\<bbb-R\><rsup|n><text| we have
      that <math|\<cal-S\><rsub|a>> is a >\<sigma\><text|-algebra>
    </equation>

    Take now <math|U\<in\>\<cal-T\><rsub|Rr<rsup|n>>> then given
    <math|x\<in\>U+a> we have that <math|<around*|(|x-a|)>\<in\>U> and as
    <math|U> is open there exists a <math|\<delta\>\<gtr\>0> such that
    <math|<around*|(|x-a|)>\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|<around*|(|x-a|)>,\<delta\>|)>\<subseteq\>U>
    or

    <\equation>
      <label|eq 18.196.028>x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|<around*|(|x-a|)>,\<delta\>|)>+a\<subseteq\><rsub|<text|<reference|translation
      properties>>>U+a
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|x-y|\<\|\|\>><rsub|max>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|\<\|\|\>|<around*|(|x-a|)>-<around*|(|y-a|)>|\<\|\|\>><rsub|max>\<less\>\<delta\>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y-a\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x-a,\<delta\>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|y\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x-a,\<delta\>|)>+a>>>>
    </eqnarray*>

    combining the above with <reference|eq 18.196.028> gives
    <math|x\<in\>B<rsub|<around*|\<\|\|\>||\<\|\|\>><rsub|max>><around*|(|x,\<delta\>|)>\<subseteq\>U+a>
    proving that <math|U+a\<in\>\<cal-T\><rsub|\<bbb-R\>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
    Hence we have that <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<cal-S\><rsub|a>>
    As <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|(|\<cal-T\><rsub|\<bbb-R\><rsup|n>>|)>>
    is the smallest <math|\<sigma\>>-algebra covering
    <math|\<cal-T\><rsub|\<bbb-R\>>> we have that
    <math|\<cal-B\><around*|(|\<bbb-R\><rsup|n>|)>\<subseteq\>\<cal-S\><rsub|a>>
    or <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
    have <math|A+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>. Hence\ 

    <\equation*>
      \<forall\>a\<in\>\<bbb-R\><rsup|n><infix-and>\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
      we have A+a\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation*>
  </proof>

  Next we will show that translation invariant measures on
  <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> are identical to the
  Lebesgue measure multiplied by a strict positive constant. First we prove
  how <math|<around*|[|0,1|[>> can be written as a disjoint union of Dyadic
  intervals and <math|<around*|[|0,1|[><rsup|n>> as a disjoint union of
  Dyadic cubes

  <\lemma>
    <label|[0,1[ as a union of Dyadic intervals>Let <math|m\<in\>\<bbb-N\>>
    then <math|<around*|[|0,1|[>=<big|sqcup><rsub|i\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>>
  </lemma>

  <\proof>
    First if <math|i\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>> then
    <math|0\<leqslant\><frac|i|2<rsup|m>>\<less\><frac|i+1|2<rsup|m>>\<leqslant\><frac|<around*|(|2<rsup|m>-1|)>+1|2<rsup|m>>=1>
    proving that <math|<around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>\<subseteq\><around*|[|0,1|[>>.
    Hence\ 

    <\equation>
      <label|eq 18.197.029><big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>\<subseteq\><around*|[|0,1|[>
    </equation>

    If <math|x\<in\><around*|[|0,1|[>> then <math|0\<leqslant\>x\<less\>1>.
    So <math|0\<leqslant\>2<rsup|m>\<cdot\>x> we have using
    <reference|consequence of the archimedean property for the reals> that
    there exists a <math|n\<in\>\<bbb-N\>> such that
    <math|n\<leqslant\>2<rsup|m>\<cdot\>x\<less\>n+1>. After division by
    <math|2<rsup|m>\<gtr\>0> we have

    <\equation*>
      <frac|n|2<rsup|m>>\<leqslant\>x\<less\><frac|n+1|2<rsup|m>>
    </equation*>

    If <math|2<rsup|m>-1\<less\>n> then <math|2<rsup|m>\<less\>n+1> or
    <math|1\<less\><frac|n+1|2<rsup|m>>\<less\>x> contradicting
    <math|x\<less\>1>, hence <math|n\<in\><around*|{|1,\<ldots\>,2<rsup|m>-1|}>>
    proving that <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>>.
    So <math|<around*|[|0,1|[>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>>
    which together with <reference|eq 18.197.029> gives

    <\equation>
      <label|eq 18.198.029><around*|[|0,1|[>=<big|cup><rsub|i\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>
    </equation>

    Finally if <math|i,j\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>> with
    <math|i\<neq\>j> then we can assume that <math|i\<less\>j> [otherwise
    interchange <math|i> and <math|j>] so that <math|i+1\<leqslant\>j>. Then
    if <math|x\<in\><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[><big|cap><around*|[|<frac|j|2<rsup|m>>,<frac|j+1|2<rsup|m>>|[>>
    we have <math|<frac|i|2<rsup|m>>\<leqslant\>x\<less\><frac|i+1|2<rsup|m>>\<leqslant\><frac|j|2<rsup|m>>\<leqslant\>x\<less\><frac|j+1|2<rsup|m>>>
    giving the contradiction <math|x\<less\>x>. Hence
    <math|><math|<around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[><big|cap><around*|[|<frac|j|2<rsup|m>>,<frac|j+1|2<rsup|m>>|[>=\<emptyset\>>
    or using <reference|eq 18.198.029>

    <\equation*>
      <around*|[|0,1|[>=<big|sqcup><rsub|i\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|i|2<rsup|m>>,<frac|i+1|2<rsup|m>>|[>
    </equation*>
  </proof>

  <\lemma>
    <label|[0,1[^n as a union of half open rectangles>Let
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|m\<in\>\<bbb-N\>> then
    <math|<around*|[|0,1|[>=<big|sqcup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>>
  </lemma>

  <\proof>
    If <math|x\<in\><big|cup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>>
    then <math|\<exists\>\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|\<rho\><rsub|i>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>> and
    <math|x<rsub|i>\<in\><around*|[|<frac|\<rho\><rsub|i>|2<rsup|m>>,<frac|\<rho\><rsub|i>+1|2<rsup|m>>|[>>,
    applying then <reference|[0,1[ as a union of Dyadic intervals> gives
    <math|x<rsub|i>=<around*|[|0,1|[>>. From this it follows that\ 

    <\equation>
      <label|eq 18.199.029><big|cup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>\<subseteq\><around*|[|0,1|[><rsup|n>
    </equation>

    If <math|x\<in\><around*|[|0,1|[><rsup|n>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|x<rsub|i>\<in\><around*|[|0,1|[>\<equallim\><rsub|<text|<reference|[0,1[
    as a union of Dyadic intervals>>><big|sqcup><rsub|j\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>><around*|[|<frac|j|2<rsup|m>>,<frac|j+1|2<rsup|m>>|[>>
    so there exists a <math|\<rho\><rsub|i>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>>
    such that <math|x<rsub|i>\<in\><around*|[|<frac|\<rho\><rsub|i>|2<rsup|m>>,<frac|\<rho\><rsub|i>+1|2<rsup|m>>|[>>.
    If we define <math|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>>
    by <math|\<rho\>=<around*|(|\<rho\><rsub|1>,\<ldots\>,\<rho\><rsub|n>|)>>
    then <math|x\<in\><big|prod><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|[|<frac|\<rho\><rsub|i>|2<rsup|m>>,<frac|\<rho\><rsub|i>+1|2<rsup|m>>|[>=<around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>>
    proving that <math|<around*|[|0,1|[><rsup|n>\<subseteq\><big|cup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>>.
    Combining this with <reference|eq 18.199.029> proves that\ 

    <\equation>
      <label|eq 18.200.029><around*|[|0,1|[>=<big|cup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>
    </equation>

    Finally if <math|\<exists\>\<rho\>,\<sigma\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>>
    with <math|\<rho\>\<neq\>\<sigma\>> then
    <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|\<rho\><rsub|i>\<neq\>\<sigma\><rsub|i>>. If now
    <math|x\<in\><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|\<sigma\>|2<rsup|m>>,<frac|\<sigma\>+1|2<rsup|m>>|[>>
    then <math|x<rsub|i>\<in\><around*|[|<frac|\<rho\><rsub|i>|2<rsup|m>>,<frac|\<rho\><rsub|i>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|\<sigma\><rsub|i>|2<rsup|m>>,<frac|\<sigma\><rsub|i>+1|2<rsup|m>>|[>\<equallim\><rsub|\<rho\><rsub|i>\<neq\>\<sigma\><rsub|i>\<wedge\><text|<reference|[0,1[
    as a union of Dyadic intervals>>>\<emptyset\>> leading to a
    contradiction. So we must have that <math|<around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[><big|cap><around*|[|<frac|\<sigma\>|2<rsup|m>>,<frac|\<sigma\>+1|2<rsup|m>>|[>=\<emptyset\>>
    proving finally that

    <\equation*>
      <around*|[|0,1|[><rsup|n>=<big|sqcup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>
    </equation*>

    \;
  </proof>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then and
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,\<mu\>|\<rangle\>>>
    be a measure space such that\ 

    <\enumerate>
      <item><math|\<mu\>> is non zero [<math|\<exists\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      such that <math|0\<less\>\<mu\><around*|(|A|)>>]

      <item>If <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> is
      bounded then <math|\<mu\><around*|(|A|)>\<less\>\<infty\>>

      <item>If <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> and
      <math|a\<in\>\<bbb-R\><rsup|n>> then
      <math|\<mu\><around*|(|A+a|)>=\<mu\><around*|(|A|)>> [note that this
      make sense because of <reference|Borel sets in R^n are transaltion
      invariant>]\ 
    </enumerate>

    then for <math|c=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>>we have
    that <math|0\<less\>c> and <math|\<mu\>=c\<cdot\><around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>
    [or <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
    have <math|\<mu\><around*|(|A|)>=c\<cdot\>\<lambda\><rsup|n><around*|(|A|)>>]
  </lemma>

  <\proof>
    First if <math|m\<in\>\<bbb-N\>> and <math|z\<in\>\<bbb-Z\>> we have

    <\equation>
      <label|eq 18.201.029><around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[><rsup|n>=<around*|[|<frac|z|2<rsup|m>>+0,<frac|z|2<rsup|m>>+<around*|(|<frac|1|2<rsup|m>>|)>|[><rsup|n>\<equallim\><rsub|<text|<reference|translation
      properties>>><around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>+<around*|(|<wide*|<frac|z|2<rsup|m>>,\<ldots\>,<frac|z|2<rsup|m>>|\<wide-underbrace\>><rsub|n>|)>
    </equation>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[><rsup|n>|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>+<around*|(|<wide*|<frac|1|2<rsup|m>>,\<ldots\>,<frac|1|2<rsup|m>>|\<wide-underbrace\>><rsub|n>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|3|)>,<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[><rsup|n>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>|<cell|\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)><eq-number><label|eq
      18.197.028>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<around*|(|<frac|1|2<rsup|m>>|)>\<less\><around*|(|1|)>>>|<cell|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)><eq-number><label|eq
      18.198.028>>>>>
    </eqnarray*>

    As <math|\<bbb-R\><rsup|n>> is open we have by <reference|every open set
    in R^n is a countable union of dyadic cubes> that there exists a
    <math|<around*|{|D<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsup|m>>
    such that <math|\<bbb-R\><rsup|n>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>>.
    Let <math|i\<in\>\<bbb-N\><rsub|0>> then
    <math|\<exists\>m<rsub|i>\<in\>\<bbb-N\>> and <math|z<rsub|i>> such that
    <math|D<rsub|i>=<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[><rsup|n>\<equallim\><rsub|<text|<reference|eq
    18.201.029>>><around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>+<around*|(|<wide*|<frac|z|2<rsup|m>>,\<ldots\>,<frac|z|2<rsup|m>>|\<wide-underbrace\>><rsub|n>|)>>
    so that <math|\<mu\><around*|(|D<rsub|i>|)>=\<mu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>+<around*|(|<wide*|<frac|z|2<rsup|m>>,\<ldots\>,<frac|z|2<rsup|m>>|\<wide-underbrace\>><rsub|n>|)>|)>\<leqslant\><rsub|<text|<reference|eq
    18.198.028>>>\<mu\><around*|(|<around*|[|0,1|[>|)>>. Hence if
    <math|\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>=0> we have
    <math|\<mu\><around*|(|D<rsub|i>|)>=0> then
    <math|\<mu\><around*|(|\<bbb-R\><rsup|n>|)>\<leqslant\>\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>D<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|D<rsub|i>|)>=0>
    or for every <math|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> we
    have <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|\<bbb-R\><rsup|n>|)>=0>
    contradicting the fact that <math|\<mu\>> is non zero. So we have

    <\equation>
      c=\<mu\><around*|(|<around*|[|0,1|[><rsup|n>|)>\<gtr\>0
    </equation>

    Define now\ 

    <\equation*>
      \<nu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>
      by \<nu\><around*|(|A|)>=<frac|1|c>\<cdot\>\<mu\><around*|(|A|)>
    </equation*>

    then we have <math|\<nu\><around*|(|\<emptyset\>|)>=<frac|1|c>\<cdot\>\<mu\><around*|(|\<emptyset\>|)>=0>
    and if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    is pairwise disjoint then

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|=>|<cell|<frac|1|c>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|c>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><frac|1|c>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|i>|)>>>>>
    </eqnarray*>

    Further if <math|A\<in\>\<b-B\><around*|[|\<bbb-R\><rsup|n>|]>>,
    <math|a\<in\>\<bbb-R\><rsup|n>> then <math|\<nu\><around*|(|A+\<varepsilon\>|)>=<frac|1|c>\<cdot\>\<mu\><around*|(|A+a|)>=<frac|1|c>\<cdot\>\<mu\><around*|(|A|)>>.
    To summarize we have that

    \;

    <\equation>
      <label|eq 18.204.029>\<nu\>:\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<rightarrow\><around*|[|0,\<infty\>|]>
      is a translation invariant measure on
      \<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation>

    Next we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1>|<cell|=>|<cell|<frac|1|c>\<cdot\>c>>|<row|<cell|>|<cell|=>|<cell|<frac|1|c>\<cdot\>\<mu\><around*|(|<around*|[|0,1|[>|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|<around*|[|0,c|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|[0,1[^n
      as a union of half open rectangles>>>>|<cell|\<nu\><around*|(|<big|sqcup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>>\<nu\><around*|(|<around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.197.028>>>>|<cell|<big|sum><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}>>\<nu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>>>|<row|<cell|>|<cell|=>|<cell|#<around*|(|<around*|{|0,\<ldots\>,2<rsup|m>-1|}>|)>\<cdot\>\<nu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.206.029>\<nu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>=<frac|1|#<around*|(|<around*|{|0,\<ldots\>,2<rsup|m>-1|}>|)>>
    </equation>

    Likewise\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1>|<cell|=>|<cell|<big|prod><rsub|i=1><rsup|n><around*|(|1-0|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|<around*|[|0,1|[><rsup|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|[0,1[^n
      as a union of half open rectangles>>>>|<cell|\<lambda\><rsup|n><around*|(|<big|sqcup><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>>\<lambda\><rsup|n><around*|(|<around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>>\<lambda\><rsup|n><around*|(|<around*|[|<frac|\<rho\>|2<rsup|m>>,<frac|\<rho\>+1|2<rsup|m>>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|\<rho\>\<in\><around*|{|0,\<ldots\>,2<rsup|m>-1|}><rsup|n>><around*|(|<frac|1|2<rsup|m>>|)>>>|<row|<cell|>|<cell|=>|<cell|#<around*|(|<around*|{|0,\<ldots\>,2<rsup|m>-1|}>|)>\<cdot\><frac|1|2<rsup|m>>>>|<row|<cell|>|<cell|=>|<cell|#<around*|(|<around*|{|0,\<ldots\>,2<rsup|m>-1|}>|)>\<cdot\>\<lambda\><rsup|n><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|]><rsup|n>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.207.029>\<lambda\><rsup|n><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>=<frac|1|#<around*|(|<around*|{|0,\<ldots\>,2<rsup|m>-1|}>|)>>
    </equation>

    Finally If <math|D\<in\>\<cal-D\><rsup|n>> then there exists a
    <math|z\<in\>\<bbb-Z\><rsup|n>>, <math|m\<in\>\<bbb-N\>><space|1em>so
    that <math|D=<around*|[|<frac|z|2<rsup|m>><rsup|>,<frac|z+1|2<rsup|m>>|[>>
    then we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<nu\><around*|(|D|)>>|<cell|=>|<cell|\<nu\><around*|(|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.197.028>>>>|<cell|\<nu\><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.206.029>>,<reference|eq 18.207.029>>>|<cell|\<lambda\><rsup|n><around*|(|<around*|[|0,<frac|1|2<rsup|m>>|[><rsup|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|><reference|Lebesgue
      measure is translation invariant>>>|<cell|\<lambda\><rsup|n><around*|(|<around*|[|<frac|z|2<rsup|m>>,<frac|z+1|2<rsup|m>>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|D|)>>>>>
    </eqnarray*>

    So <math|\<forall\>D\<in\>\<cal-D\><rsup|n>> we have
    <math|\<nu\><around*|(|D|)>=\<lambda\><rsup|n><around*|(|D|)>>. Applying
    <reference|uniqueness of the Lebesgue measure> proves then that
    <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    \ \<nu\><around*|(|A|)>=\<lambda\><rsup|n><around*|(|A|)>> or

    <\equation*>
      \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text| >
      \<mu\><around*|(|A|)>=c\<cdot\>\<lambda\><rsup|n><around*|(|A|)>
    </equation*>
  </proof>

  <subsection|<math|Negligibity,Completeness<infix-and>Regularity>>

  <\definition>
    <label|negligibility><index|<math|\<mu\>>-negligible><dueto|<math|\<mu\>>-negligible
    set>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then <math|S\<subseteq\>X> is <math|\<mu\>>-negligible iff
    there exists a <math|A\<in\>\<cal-A\>> with <math|\<mu\><around*|(|A|)>>
    such that <math|S\<subseteq\>A>. The set of all <math|\<mu\>>-negligible
    sets is noted as <math|\<cal-N\><rsub|\<mu\>>> so
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
      and <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>This is trivial as <math|\<emptyset\>\<subseteq\>\<emptyset\>>
      and <math|\<mu\><around*|(|\<emptyset\>|)>=0>

      <item>As <math|S> is <math|\<mu\>>-negligible there exists a
      <math|A\<in\>\<cal-A\>> with <math|\<mu\><around*|(|A|)>=0> such that
      <math|S\<subseteq\>A> which as <math|T\<subseteq\>S\<Rightarrow\>T\<subseteq\>A>
      proves that <math|T> is <math|\<mu\>>-negligible.

      <item>As <math|<around*|{|S<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-N\><rsub|\<mu\>>>
      there exists a <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\>>\<subseteq\>\<cal-A\>>
      with <math|\<forall\>i\<in\>\<bbb-N\>>
      <math|S<rsub|i>\<subseteq\>A<rsub|i>> and
      <math|\<mu\><around*|(|A<rsub|i>|)>=0>. Further using
      <reference|measure is subadditive> we have that
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=0>
      which as <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
      proves that

      <\equation*>
        <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>
      </equation*>

      Finally as <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<subseteq\>S<rsub|0>>
      it follows from (2) that <math|<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>S<rsub|i>\<in\>\<cal-N\><rsub|\<mu\>>>
    </enumerate>
  </proof>

  <\definition>
    <label|complete measures><index|complete measures>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|\<mu\>> is <with|font-series|bold|complete> if every
    <math|\<mu\>>-negligible set is in <math|\<cal-A\>>. In other words
    <math|\<mu\>> is <with|font-series|bold|complete> if
    <math|\<cal-N\><rsub|\<mu\>>\<subseteq\>\<cal-A\>>. If the measure
    of<math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> is
    <with|font-series|bold|complete> then
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

  Using the definition of Lebesgue measure spaces [see <reference|Lebesgue
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
    <math|B\<subseteq\>F> so <math|\<mu\><around*|(|B|)>\<leqslant\>\<mu\><around*|(|F|)>=\<mu\><around*|(|E|)>>
    hence <math|sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>\<leqslant\>\<mu\><around*|(|E|)>>.
    As also <math|E\<in\>\<cal-A\>> and <math|E\<subseteq\>A> we have
    <math|\<mu\><around*|(|E|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>>.
    So we have\ 

    <\equation*>
      \<mu\><around*|(|F|)>=\<mu\><around*|(|E|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<in\>\<cal-A\>\<wedge\>B\<subseteq\>A|}>|)>
    </equation*>
  </proof>

  <\definition>
    <label|completion of a measure><index|<math|A<rsub|\<mu\>>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|\<mu\>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> a
    measure then <math|\<cal-A\><rsub|\<mu\>>> is defined by
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

    We must of course prove that this definition is independent of the choice
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
    <label|completion of a measure space><index|completion of a measure
    space>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then <math|\<cal-A\><rsub|\<mu\>>> is a
    <math|\<sigma\>>-algebra on <math|X> with
    <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>>. Further
    <math|<wide|\<mu\>|\<bar\>>:\<cal-A\><rsub|\<mu\>>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is a measure with <math|<around*|(|<wide|\<mu\>|\<bar\>>|)><rsub|\|\<cal-A\>>=\<mu\>>
    and finally <math|<around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<wide|\<mu\>|\<bar\>>|\<rangle\>>>
    is complete. We call <math|<around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<below|\<mu\>|>|\<rangle\>>>
    the <with|font-series|bold|completion> of
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>.
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
    and <math|\<mu\><around*|(|F\\E|)>=\<emptyset\>>. Using
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
    so that <math|x\<in\>F<rsub|i>\\E<rsub|i>>, proving that
    <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|F<rsub|i>\\E<rsub|i>|)>>.
    Hence\ 

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
    <math|E\<subseteq\>B\<subseteq\>F> and <math|\<mu\><around*|(|F\\E|)>=0>,
    hence <math|\<mu\><around*|(|F|)>=<wide|\<mu\>|\<bar\>><around*|(|B|)>=0>.
    Next as <math|\<emptyset\>\<subseteq\>A\<subseteq\>B\<subseteq\>F> and
    <math|\<mu\><around*|(|F\\\<emptyset\>|)>=\<mu\><around*|(|F|)>=0> it
    follows that <math|A\<in\>\<cal-A\><rsub|\<mu\>>>. Hence

    <\equation*>
      <around*|\<langle\>|X,\<cal-A\><rsub|\<mu\>>,<wide|\<mu\>|\<bar\>>|\<rangle\>>
      is complete
    </equation*>
  </proof>

  We will prove now that <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
  is the completion of <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>.
  First we need a little lemma.

  <\lemma>
    <label|completion of Borelset label>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    and <math|A\<in\>\<cal-L\><rsup|n>> [so <math|A> is Lebesgue measurable]
    then there exists <math|E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    [so <math|E,F> are Borel sets] such that
    <math|E\<subseteq\>A\<subseteq\>F> and
    <math|\<lambda\><rsup|n><around*|(|F\\E|)>=0>.
  </lemma>

  <\proof>
    First we prove the lemma for the finite case. So let
    <math|A\<in\>\<cal-L\><rsup|n>> be such that
    <math|\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\>>. Take
    <math|m\<in\>\<bbb-N\><rsub|0>>. As <math|\<lambda\><rsup|n><around*|(|A|)>\<equallim\><rsub|<text|<reference|Lebesgue
    space and compact sets>>>sup<around*|(|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
    is compact|)>\<less\>\<infty\>>, hence
    <math|\<lambda\><rsup|n><around*|(|A|)>-<frac|1|2\<cdot\>m>\<less\>sup<around*|(|\<lambda\><rsup|n><around*|(|K|)>\|K\<subseteq\>A\<wedge\>K
    is compact|)>>, there exists a compact set <math|K<rsub|m>> such that

    <\equation>
      <label|eq 18.219.030>K<rsub|m>\<subseteq\>A<infix-and>\<lambda\><rsup|n><around*|(|A|)>-<frac|1|2\<cdot\>m>\<less\>\<lambda\><rsup|n><around*|(|K<rsub|m>|)>
    </equation>

    Further as <math|\<lambda\><rsup|n><around*|(|A|)>\<equallim\><rsub|<text|<reference|alternative
    formule for lebesgue measure (1)>>>inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>\<less\>\<infty\>>, hence <math|><math|inf<around*|(|<around*|{|\<lambda\><rsup|n><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>+<frac|1|2\<cdot\>m>>,
    there exists a <math|U<rsub|m>> open such that

    <\equation>
      <label|eq 18.220.030>A\<subseteq\>U<rsub|m><infix-and>\<lambda\><rsup|n><around*|(|U<rsub|m>|)>\<less\>\<lambda\><rsup|n><around*|(|A|)>+<frac|1|2\<cdot\>m>
    </equation>

    Define now <math|E=<big|cup><rsub|m\<in\>\<bbb-N\><rsub|0>>K<rsub|m>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    [compact sets are closed by <reference|compact subspaces are closed>] and
    <math|F=<big|cap><rsub|m\<in\>\<bbb-N\><rsub|0>>U<rsub|m>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>.
    Then using <reference|eq 18.219.030>,<reference|eq 18.220.030> it follows
    that

    <\equation>
      <label|eq 18.221.030.1>E\<subseteq\>A\<subseteq\>F
    </equation>

    Further given <math|m\<in\>\<bbb-N\><rsub|0>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsup|n><around*|(|F\\E|)>>|<cell|\<leqslant\><rsub|F\<subseteq\>U<rsub|m>>>|<cell|\<lambda\><rsup|n><around*|(|U<rsub|m>\\E|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|K<rsub|m>\<subseteq\>E>>|<cell|\<lambda\><rsup|n><around*|(|U<rsub|m>\\K<rsub|m>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<lambda\><rsup|n><around*|(|K<rsub|m>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\><text|
      and <reference|measure properties (1)>>>>|<cell|\<lambda\><rsup|n><around*|(|U<rsub|m>|)>-\<lambda\><rsup|n><around*|(|K<rsub|m>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<lambda\><rsup|n><around*|(|K<rsub|m>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\><text|>>>|<cell|\<lambda\><rsup|n><around*|(|U<rsub|m>|)>-\<lambda\><rsup|n><around*|(|A|)>+\<lambda\><rsup|n><around*|(|A|)>-\<lambda\><rsup|n><around*|(|K<rsub|m>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.219.030>,<reference|eq 18.220.030> and
      <math|\<lambda\><rsup|n><around*|(|K<rsub|m>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\>>
      >>>|<cell|<frac|1|2\<cdot\>m>+<frac|1|2\<cdot\>m>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|m>>>>>
    </eqnarray*>

    As <math|m> was chosen arbitrary we have by <reference|consequence of the
    Archimedean property (2)> that <math|\<lambda\><rsup|n><around*|(|F\\E|)>\<leqslant\>0>
    hence we have (taking <reference|eq 18.221.030.1> in account) that

    <\equation>
      <label|eq 18.222.030>If A\<in\>\<cal-L\><rsup|n> with
      \<lambda\><rsup|n><around*|(|A|)>\<less\>\<infty\> then
      \<exists\>E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]> such that
      E\<subseteq\>A\<subseteq\>F<infix-and>\<lambda\><rsup|n><around*|(|F\\E|)>=0
    </equation>

    Next we prove the general case. Let <math|A\<in\>\<cal-L\><rsup|n>> then
    as <math|\<bbb-R\><rsup|n>\<equallim\><rsub|<text|<reference|R^n is a
    unin of rectangles>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>>
    we have <math|A=A<big|cap>\<bbb-R\><rsup|n>=A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|[>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap><around*|[|-i,i|[>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>>
    where <math|A<rsub|i>=A<big|cap><around*|[|-i,i|[>\<in\>\<cal-L\><rsup|n>>.
    As <math|\<lambda\><rsup|n><around*|(|A<rsub|i>|)>\<leqslant\>\<lambda\><rsup|n><around*|(|<around*|[|-i,i|[>|)>=v<rsup|n><around*|(|<around*|[|-i,i|[>|)>\<less\>\<infty\>>
    we have by <reference|eq 18.222.030> the existence of
    <math|E<rsub|i>,F<rsub|i>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    with <math|E<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>F<rsub|i>> and
    <math|\<lambda\><rsup|n><around*|(|F<rsub|i>\\E<rsub|i>|)>=0>. Take
    <math|E=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>E<rsub|i>> and
    <math|F=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>> then

    <\equation>
      <label|eq 18.223.030>E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<wedge\>E\<subseteq\>A\<subseteq\>F
    </equation>

    Further

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsup|n><around*|(|F\\E|)>>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      difference>>>>|<cell|\<lambda\><rsup|n><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|F<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|j>|)>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|n><around*|(|F<rsub|i>\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>E<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<lambda\><rsup|n><around*|(|F<rsub|i>\\E<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.224.030>\<lambda\><rsup|n><around*|(|F\\E|)>=0
    </equation>

    The lemma is then proved by <reference|eq 18.223.030> and <reference|eq
    18.224.030>
  </proof>

  <\theorem>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
    is the completion of <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>
  </theorem>

  <\proof>
    Take <math|\<mu\>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>
    then using <reference|completion of a measure space> we have that

    <\equation*>
      \<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<subseteq\><around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\|\<mu\>>\<equallim\><rsub|def><around*|{|A\<subseteq\>X\|\<exists\>E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]><text|
      such that >E\<subseteq\>A\<subseteq\>F<text| and
      >\<mu\>*<around*|(|F\\E|)>=0|}>
    </equation*>

    If <math|A\<in\>\<cal-L\><rsup|n>> then by <reference|completion of
    Borelset label> there exists <math|E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    with <math|E\<subseteq\>A\<subseteq\>F> and
    <math|0=\<lambda\><rsup|n><around*|(|F\\E|)>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>><around*|(|F\\E|)>=\<mu\><around*|(|F\\E|)>>
    proving that <math|A\<in\><around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\<mu\>>>.
    So

    <\equation>
      <label|eq 18.225.030>\<cal-L\><rsup|n>\<subseteq\><around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\<mu\>>
    </equation>

    For the opposite inclusion let <math|A\<in\><around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\|\<mu\>>>
    then there exists a <math|E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    with <math|E\<subseteq\>A\<subseteq\>F> and
    <math|\<mu\><around*|(|F\\E|)>=0>. Hence <math|>
    <math|\<lambda\><rsup|n><around*|(|A\\E|)>\<leqslant\><rsub|A\<subseteq\>F>\<lambda\><rsup|n><around*|(|F\\E|)>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>><around*|(|F\\E|)>=\<mu\><around*|(|F\\E|)>=0>,
    as <math|\<lambda\><rsup|n>> is complete [see <reference|Lebesgue measure
    spaces are complete>], it follows that
    <math|A\\E\<in\>\<cal-L\><rsup|n>>. As <math|E\<subseteq\>A> we have
    <math|A=E<big|cup><around*|(|A\\E|)>\<in\>\<cal-L\><rsup|n>>. This proves
    <math|><math|<around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\|\<mu\>>\<subseteq\>\<cal-L\><rsup|n>>
    which together with <reference|eq 18.225.030> proves\ 

    <\equation>
      <label|eq 18.226.030>\<cal-L\><rsup|n>=<around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\|\<mu\>>
    </equation>

    Next we prove that <math|\<lambda\><rsup|n>=<wide|\<mu\>|\<bar\>>>. Take
    <math|A\<in\>\<cal-L\><rsup|n>> then there exists
    <math|E,F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>> with
    <math|E\<subseteq\>A\<subseteq\>F> and <math|\<mu\><around*|(|F\\E|)>=0>.
    So <math|0=\<mu\><around*|(|F\\E|)>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>><around*|(|F\\E|)>=\<lambda\><rsup|n><around*|(|F\\E|)>>
    proving\ 

    <\equation>
      <label|eq 18.228.030.1>\<lambda\><rsup|n><around*|(|F\\E|)>=0
    </equation>

    \ Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<lambda\><rsup|n><around*|(|A|)>>|<cell|\<equallim\><rsub|E\<subseteq\>A>>|<cell|\<lambda\><rsup|n><around*|(|<around*|(|A\\E|)><big|sqcup>E|)>>>|<row|<cell|>|<cell|=>|<cell|\<lambda\><rsup|n><around*|(|A\\E|)>+\<lambda\><rsup|n><around*|(|E|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<lambda\><rsup|n><around*|(|F\\E|)>+\<lambda\><rsup|n><around*|(|E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.228.030.1>>>>|<cell|\<lambda\><rsup|n><around*|(|E|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>><around*|(|E|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><around*|(|E|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<wide|\<mu\>|\<bar\>><around*|(|E|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.227.030>\<lambda\><rsup|n>=<wide|\<mu\>|\<bar\>>
    </equation>

    Using <reference|eq 18.226.030>,<reference|eq 18.227.030> and the
    definition of <math|\<mu\>=<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>
    proves that <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\><rsup|n>,<around*|(|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|)><rsub|\|\<lambda\><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>>,<wide|<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<bar\>>|\<rangle\>>>
    or in other words <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
    is the completion of <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>.
  </proof>

  <\definition>
    <label|induced outer inner measure><index|outer measure
    induced><index|inner measure induced><index|<math|\<mu\><rsup|\<ast\>>>><index|<math|\<mu\><rsub|\<ast\>>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then the induced <with|font-series|bold|outer measure>
    <math|\<mu\><rsup|\<ast\>>> and induced <with|font-series|bold|inner
    measure> <math|\<mu\><rsub|\<ast\>>> are defined by\ 

    <\equation*>
      \<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>
      where \<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B<infix-and>B\<in\>\<cal-A\>|}>|)>
    </equation*>

    <\equation*>
      \<mu\><rsub|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>
      where \<mu\><rsub|\<ast\>><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<subseteq\>A<infix-and>B\<in\>\<cal-A\>|}>|)>
    </equation*>
  </definition>

  <\note>
    As <math|\<emptyset\>,X\<in\>\<cal-A\>> and
    <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>>
    \ <math|\<emptyset\>\<subseteq\>A\<subseteq\>X> we have
    <math|<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B<infix-and>B\<in\>\<cal-A\>|}>\<neq\>\<emptyset\>\<neq\><around*|{|\<mu\><around*|(|B|)>\|B\<subseteq\>A<infix-and>B\<in\>\<cal-A\>|}>>
    so that the above infinums and supremums are well defined.
  </note>

  <\theorem>
    <label|induced outer measure is a outer measure>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item><math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>> we have
      <math|\<mu\><rsub|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>>

      <item><math|\<forall\>A\<in\>\<cal-A\>> we have
      <math|\<mu\><rsub|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>>

      <item><math|\<mu\><rsup|\<ast\>>> is a outer measure on <math|X> [see
      <reference|outer measure>]
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|A\<in\>\<cal-P\><around*|(|X|)>> and take
      <math|B\<in\>\<cal-A\>> such that <math|A\<subseteq\>B> then for every
      <math|B<rprime|'>\<in\>\<cal-A\>> with <math|B<rprime|'>\<subseteq\>A>
      we have <math|B<rprime|'>\<subseteq\>B> so that
      <math|\<mu\><around*|(|B<rprime|'>|)>\<leqslant\>\<mu\><around*|(|B|)>>,
      hence <math|\<mu\><rsub|\<ast\>><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B<rprime|'>|)>\|B<rprime|'>\<subseteq\>A\<wedge\>B<rprime|'>\<in\>\<cal-A\>|}>|)>\<leqslant\>\<mu\><around*|(|B|)>>.
      As this is true for every <math|B\<in\>\<cal-A\>> with
      <math|A\<subseteq\>B> it follows that
      <math|\<mu\><rsub|\<ast\>><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|B<rprime|'>|)>\|A\<subseteq\>B<rprime|'>\<wedge\>B<rprime|'>\<in\>\<cal-A\>|}>|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>>.
      Proving that\ 

      <\equation*>
        \<mu\><rsub|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>
      </equation*>

      <item>Let <math|A\<in\>\<cal-A\>> then for every
      <math|B\<in\>\<cal-A\>> with <math|A\<subseteq\>B> we have
      <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|B|)>> so that
      <math|\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>>.
      Further <math|\<forall\>B\<in\>\<cal-A\>> with <math|B\<subseteq\>A> we
      have <math|\<mu\><around*|(|B|)>\<leqslant\>\<mu\><around*|(|A|)>> do
      that <math|\<mu\><rsub|\<ast\>><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<subseteq\>A\<wedge\>B\<in\>\<cal-A\>|}>|)>\<leqslant\>\<mu\><around*|(|A|)>>.

      <item>First as <math|\<emptyset\>\<in\>\<cal-A\>> and
      <math|\<emptyset\>\<subseteq\>\<emptyset\>> we have that
      <math|\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|\<emptyset\>\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>\<leqslant\>\<mu\><around*|(|\<emptyset\>|)>=0>
      proving that\ 

      <\equation>
        <label|eq 18.230.030>\<mu\><rsup|\<ast\>><around*|(|\<emptyset\>|)>=0
      </equation>

      Second let <math|A,C\<in\>\<cal-P\><around*|(|X|)>> with
      <math|A\<subseteq\>C> then if <math|\<lambda\>\<in\><around*|{|\<mu\><around*|(|B|)>\|C\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>>
      there exists a <math|B\<in\>\<cal-A\>> such that <math|C\<subseteq\>B>
      and <math|\<lambda\>=\<mu\><around*|(|B|)>>. As <math|A\<subseteq\>C>
      we have <math|A\<subseteq\>B> hence
      <math|\<lambda\>=\<mu\><around*|(|B|)>\<in\><around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>>
      proving that <math|<around*|{|\<mu\><around*|(|B|)>\|C\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>\<subseteq\><around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>>.
      Hence using <reference|inclusion and sup and inf> we have
      <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>\<leqslant\><around*|{|\<mu\><around*|(|B|)>\|C\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>=\<mu\><rsup|\<ast\>><around*|(|C|)>>.
      So\ 

      <\equation>
        <label|eq 18.231.030>\<forall\>A,C\<in\>\<cal-P\><around*|(|X|)> with
        A\<subseteq\>C we have \<mu\><rsup|\<ast\>><around*|(|A|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|C|)>
      </equation>

      Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      then we must consider for <math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i>|)>>
      two cases\ 

      <\description>
        <item*|<math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=\<infty\>>>Then
        trivially <math|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<star\>><around*|(|A<rsub|i>|)>>

        <item*|<math|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>\<less\>\<infty\>>>Ten
        <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>\<less\>\<infty\>>.
        Choose <math|\<varepsilon\>\<gtr\>0> then
        <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have for
        <math|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A<rsub|i>\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>>
        that <math|inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A<rsub|i>\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>>,
        <math|>so there exists a <math|B<rsub|i>\<in\>\<cal-A\>> with
        <math|A\<subseteq\>B<rsub|i>> such that
        <math|\<mu\><around*|(|B<rsub|i>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>>.
        Then

        <\equation>
          <label|eq 18.232.030><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-A\>
        </equation>

        giving

        <\eqnarray*>
          <tformat|<table|<row|<cell|\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>|<cell|\<leqslant\>>|<cell|inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i\<in\>1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><around*|(|\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+<frac|\<varepsilon\>|2<rsup|i>>|)>>>|<row|<cell|>|<cell|>|<cell|>>|<row|<cell|>|<cell|\<less\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+\<varepsilon\>\<cdot\><big|sum><rsub|i=1><rsup|\<infty\>><frac|1|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
          of a convergent serie>>>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>+\<varepsilon\>>>>>
        </eqnarray*>

        As <math|\<varepsilon\>> was chosen arbitrary we have [see
        <reference|consequence of the Archimedean property (2)>] that\ 

        <\equation>
          <label|eq 18.233.030>\<mu\><rsup|\<ast\>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsup|\<ast\>><around*|(|A<rsub|i>|)>
        </equation>
      </description>

      From <reference|eq 18.230.030>,<reference|eq 18.231.030> and
      <reference|eq 18.233.030> it follows that\ 

      <\equation*>
        \<mu\><rsup|\<ast\>> is a outer measure on X
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and let <math|A\<subseteq\>X> with
    <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<infty\>> then
    <math|A\<in\>\<cal-A\><rsub|\<mu\>>> if and only if
    <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><rsub|\<ast\>><around*|(|A|)>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>Let <math|A\<in\>\<cal-A\><rsub|\<mu\>>>
      then there exists <math|E,F\<in\>\<cal-A\>> with
      <math|E\<subseteq\>A\<subseteq\>F> and
      <math|\<mu\><around*|(|F\\E|)>=0>. Then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|E|)>>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<subseteq\>A\<wedge\>B\<in\>\<cal-A\>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|\<mu\><rsub|\<ast\>><around*|(|A|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|\|<reference|induced
        outer measure is a outer measure>>>|<cell|\<mu\><rsup|\<ast\>><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<mu\><around*|(|F|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|completion
        lemma>>>>|<cell|\<mu\><around*|(|E|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        \<mu\><rsub|\<ast\>><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>
      </equation*>

      <item*|<math|\<Leftarrow\>>>Let <math|A\<subseteq\>X> such that
      <math|\<mu\><rsub|\<ast\>><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<infty\>>.
      So given <math|n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|2\<cdot\>n>>
      and <math|\<mu\><rsup|\<ast\>><around*|(|A|)>-<frac|1|2\<cdot\>n>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>=\<mu\><rsub|\<ast\>><around*|(|A|)>>.
      As <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|B|)>\|A\<subseteq\>B\<wedge\>B\<in\>\<cal-A\>|}>|)>>
      and <math|\<mu\><rsub|\<ast\>><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B|)>\|B\<subseteq\>A\<wedge\>B\<in\>\<cal-A\>|}>|)>>.
      There exists <math|E<rsub|n>,F<rsub|n>\<in\>\<cal-A\>> such that\ 

      <\equation>
        <label|eq 18.234.031>A\<subseteq\>F<rsub|n>\<wedge\>\<mu\><around*|(|F<rsub|n>|)>\<less\>\<mu\><rsup|\<ast\>><around*|(|A|)>+<frac|1|2\<cdot\>n>
      </equation>

      <\equation>
        <label|eq 18.235.031>E<rsub|n>\<subseteq\>A\<wedge\>\<mu\><rsup|\<ast\>><around*|(|A|)>-<frac|1|2\<cdot\>n>\<less\>\<mu\><around*|(|E<rsub|n>|)>
      </equation>

      Take <math|E=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>E<rsub|n>\<in\>\<cal-A\>>,
      <math|F=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>>F<rsub|n>> then\ 

      <\equation>
        <label|eq 18.235.031.1>E\<subseteq\>A\<subseteq\>F
      </equation>

      Given <math|n\<in\>\<bbb-N\><rsub|0>> then we have
      <math|\<mu\><around*|(|E<rsub|n>|)>\<leqslant\><rsub|<text|<reference|induced
      outer measure is a outer measure>>>\<mu\><rsup|\<ast\>><around*|(|E<rsub|n>|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<infty\>>
      proving that\ 

      <\equation>
        <label|eq 18.236.031>\<mu\><around*|(|E<rsub|n>|)>\<less\>\<infty\>
      </equation>

      Further we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|F\\E|)>>|<cell|\<leqslant\><rsub|F\<subseteq\>F<rsub|n>>>|<cell|\<mu\><around*|(|F<rsub|n>\\E|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|E<rsub|n>\<subseteq\>E>>|<cell|\<mu\><around*|(|F<rsub|n>\\E<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><around*|(|E<rsub|n>|)>\<less\>\<infty\>\<wedge\><reference|measure
        properties (1)>><rsub|>>|<cell|\<mu\><around*|(|F<rsub|n>|)>-\<mu\><around*|(|E<rsub|n>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<mu\><rsup|\<ast\>><around*|(|A|)>\<less\>\<infty\>>>|<cell|\<mu\><around*|(|F<rsub|n>|)>-\<mu\><rsup|\<ast\>><around*|(|A|)>+\<mu\><rsup|\<ast\>><around*|(|A|)>-\<mu\><around*|(|E<rsub|n>|)>>>|<row|<cell|>|<cell|\<less\><rsub|<reference|eq
        18.234.031>,<reference|eq 18.235.031>>>|<cell|<frac|1|2\<cdot\>n>+<frac|1|2\<cdot\>n>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|n>>>>>
      </eqnarray*>

      As <math|n> was chosen aribitrary we have [see <reference|consequence
      of the Archimedean property (2)>] that
      <math|\<mu\><around*|(|F\\E|)>\<leqslant\>0> giving\ 

      <\equation>
        <label|eq 18.237.031>\<mu\><around*|(|F\\E|)>=0
      </equation>

      Using <reference|eq 18.235.031.1>, <reference|eq 18.237.031> and the
      fact that <math|E,F\<in\>\<cal-A\>> we have that\ 

      <\equation*>
        A\<in\>\<cal-A\><rsub|\<mu\>>
      </equation*>
    </description>
  </proof>

  We introduce now the concept of regularity.

  <\definition>
    <label|inner/outer regularity><index|inner regular sets><index|outer
    regular sets>Let <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a
    topological space and <math|<around*|\<langle\>|X,\<cal-A\>\<comma\>\<mu\>|\<rangle\>>>
    a measure space then

    <\enumerate>
      <item><math|A\<in\>\<cal-A\>> is <with|font-series|bold|inner regular>
      if <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<in\>\<cal-A\>\<wedge\>F
      is compact\<wedge\>F\<subseteq\>A|}>|)>>

      <item><math|A\<in\>\<cal-A\>> is <with|font-series|bold|outer regular>
      if <math|\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U\<in\>\<cal-A\>\<wedge\>U\<in\>\<cal-T\>\<wedge\>A\<subseteq\>U|}>|)>>\ 

      <item><math|><math|A\<in\>\<cal-A\>> is <with|font-series|bold|regular>
      if it is <with|font-series|bold|inner >and
      <with|font-series|bold|outer> regular

      <item><math|\<mu\>> is <with|font-series|bold|inner regular > if
      <math|\<forall\>A\<in\>\<cal-A\>> we have that <math|A> is
      <with|font-series|bold|inner regular>

      <item><math|\<mu\>> is <with|font-series|bold|outer regular > if
      <math|\<forall\>A\<in\>\<cal-A\>> we have that <math|A> is
      <with|font-series|bold|outer regular>

      <item><math|\<mu\>> is <with|font-series|bold|regular > if
      <math|\<mu\>> is <with|font-series|bold|inner> and
      <with|font-series|bold|outer> regular
    </enumerate>
  </definition>

  <\note>
    The condition <math|F\<in\>\<cal-A\>> in (1) is needed to ensure that
    <math|\<mu\><around*|(|F|)>> is defined. Likely the condition
    <math|U\<in\>\<cal-A\>> in (2) is needed to ensure that
    <math|\<mu\><around*|(|U|)>> exists.
  </note>

  <\note>
    Some books say that <math|\<mu\>> is inner regular if
    <math|\<forall\>A\<in\>\<cal-T\>> we have that <math|A> is inner reguar,
    which is a weaker condition then (5). Also some authors assume that
    <math|\<mu\>> must be finite to be regular.
  </note>

  <\proposition>
    <label|Lebesgue measure is regular>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then the Lebesgue measure in <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|b>|]>>|\<rangle\>>>
    is regular
  </proposition>

  <\proof>
    This follows from <reference|Lebesgue space and compact sets> and
    <reference|alternative formule for lebesgue measure (1)>.
  </proof>

  We show now that finite measures on <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
  are regular. First we prove a preliminary lemma.

  <\lemma>
    <label|measure regularity lemma>Let <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>|\<rangle\>>>
    the measurable space defined in <reference|Borel algebra on R^n>] and
    <math|\<mu\>> a measure on <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    such that <math|\<forall\>A\<in\>\<cal-B\><around*|{|\<bbb-R\><rsup|n>|}>>
    we have <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> [<math|\<mu\>> is a
    finite measure] then <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    we have that

    <\enumerate>
      <item><math|\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
      open<infix-and>A\<subseteq\>U|}>|)>>

      <item><math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
      closed<infix-and>C\<subseteq\>A|}>|)>>
    </enumerate>
  </lemma>

  <\note>
    As open and closed sets are in <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    [see <reference|Borel algebra on R^n equivalences>],
    <math|\<emptyset\>\<subseteq\>A> and <math|A\<subseteq\>X> the above
    definitions makes sense.
  </note>

  <\proof>
    Let <math|\<cal-R\>> be the set of Borel sets that satisfies (1) and (2),
    more specific

    <\equation*>
      \<cal-R\>=<around*|{|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
      open\<wedge\>A\<subseteq\>U|}>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
      closed\<wedge\>F\<subseteq\>A|}>|)>=\<mu\><around*|(|A|)>|}>
    </equation*>

    First we prove that <math|\<cal-R\>> contains all the open sets. Let
    <math|V> be a open set then using <reference|open/closed sets relation>
    there exists s sequence <math|<around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    of closed sets such that <math|V=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>>.
    Define <math|<around*|{|F<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|F<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>G<rsub|j>>
    then as <math|F<rsub|i>> is a finite union of closed sets,
    <math|F<rsub|i>> is closed, also trivially
    <math|F<rsub|i>\<subseteq\>F<rsub|i+1>>. Further as
    <math|G<rsub|i>\<subseteq\>F<rsub|i>> we have
    <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>>
    and if <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>>
    there exists a <math|i\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>F<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>G<rsub|j>>,
    hence <math|\<exists\>j\<in\><around*|{|1,\<ldots\>,i|}>> such that
    <math|x\<in\>G<rsub|j>> proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>>.
    So <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>>.
    To summarize we have\ 

    <\equation>
      <label|eq 18.239.032>V=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>
      with \<forall\>i\<in\>\<bbb-N\><rsub|0> we have
      F<rsub|i>\<subseteq\>F<rsub|i+1><infix-and>F<rsub|i> is closed hence
      F<rsub|i>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
    </equation>

    So

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|V|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.239.032>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
      properties (2)>>>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|F<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)><eq-number><label|eq
      18.240.032>>>>>
    </eqnarray*>

    If <math|F> is closed and <math|F\<subseteq\>V> then
    <math|\<mu\><around*|(|F|)>\<leqslant\>\<mu\><around*|(|V|)>> so that

    <\equation>
      <label|eq 18.241.032>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
      closed<infix-and> F\<subseteq\>V|}>|)>\<leqslant\>\<mu\><around*|(|V|)>
    </equation>

    As <math|F<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>=V>
    and <math|F<rsub|i>> is closed we have that
    <math|\<mu\><around*|(|F<rsub|i>|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
    closed\<wedge\>F\<subseteq\>V|}>|)>> so that\ 

    <\equation>
      <label|eq 18.242.032>sup<around*|(|<around*|{|\<mu\><around*|(|F<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
      close\<wedge\>F\<subseteq\>V|}>|)>
    </equation>

    So we have that <math|\<mu\><around*|(|V|)>\<equallim\><rsub|<text|<reference|eq
    18.240.032>>>sup<around*|(|<around*|{|\<mu\><around*|(|F<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><rsub|<text|<reference|eq
    18.242.032>>>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
    close\<wedge\>F\<subseteq\>V|}>|)>\<leqslant\><rsub|<text|<reference|eq
    18.241.032>>>\<mu\><around*|(|V|)>> which proves that\ 

    <\equation>
      <label|eq 18.243.032>\<mu\><around*|(|V|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
      close\<wedge\>F\<subseteq\>V|}>|)>
    </equation>

    Further as <math|V> is open and <math|V\<subseteq\>V> we have that
    <math|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
    open\<wedge\>V\<subseteq\>U|}>|)>\<leqslant\>\<mu\><around*|(|V|)>>,
    Further if <math|U> is open such that <math|V\<subseteq\>U> then
    <math|\<mu\><around*|(|V|)>\<leqslant\>\<mu\><around*|(|U|)>> hence
    <math|\<mu\><around*|(|V|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|V|)>\|U
    open\<wedge\>V\<subseteq\>U|}>|)>> proving that

    <\equation>
      <label|eq 18.244.032>\<mu\><around*|(|V|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
      open\<wedge\>V\<subseteq\>U|}>|)>
    </equation>

    From <reference|eq 18.242.032> and <reference|eq 18.244.032> and the
    definition of <math|\<cal-R\>> it follows that <math|V\<in\>\<cal-R\>>
    proving as <math|V> was chosen arbitrary

    <\equation>
      <label|eq 18.245.032>\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<cal-R\>
    </equation>

    Define now\ 

    <\equation*>
      \<cal-S\>=<around*|{|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\|\<forall\>\<varepsilon\>\<gtr\>0<space|1em>\<exists\>U,F
      where U is open,F closed,F\<subseteq\>A\<subseteq\>U<infix-and>\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>|}>
    </equation*>

    and prove that <math|\<cal-R\>=\<cal-S\>>.\ 

    Let <math|A\<in\>\<cal-R\>> and <math|\<varepsilon\>\<gtr\>0>. As
    <math|\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
    closed\<wedge\>F\<subseteq\>A|}>|)>> there exists a <math|F> closed with
    <math|F\<subseteq\>A> such that\ 

    <\equation>
      <label|eq 18.246.032>\<mu\><around*|(|A|)>-<frac|\<varepsilon\>|2>\<less\>\<mu\><around*|(|F|)>
    </equation>

    Further as <math|\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
    open\<wedge\>A\<subseteq\>U|}>|)>> there exists a <math|U> open with
    <math|A\<subseteq\>U> such that\ 

    <\equation>
      <label|eq 18.247.032>\<mu\><around*|(|U|)>\<less\>\<mu\><around*|(|A|)>+<frac|\<varepsilon\>|2>
    </equation>

    Now as <math|\<mu\>> is finite we have by <reference|measure properties
    (1)> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|U\\F|)>>|<cell|=>|<cell|\<mu\><around*|(|U|)>-\<mu\><around*|(|F|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      18.247.032>>>>|<cell|\<mu\><around*|(|A|)>+<frac|\<varepsilon\>|2>-\<mu\><around*|(|F|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      18.246.032>>>>|<cell|<frac|\<varepsilon\>|2>+<frac|\<varepsilon\>|2>>>|<row|<cell|>|<cell|=>|<cell|\<varepsilon\>>>>>
    </eqnarray*>

    hence we we have

    <\equation>
      <label|eq 18.248.032>\<cal-R\>\<subseteq\>\<cal-S\>
    </equation>

    For the opposite inclusion. Let <math|A\<in\>\<cal-S\>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    then if <math|C> is closed with <math|C\<subseteq\>A><space|1em>we have
    <math|\<mu\><around*|(|C|)>\<leqslant\>\<mu\><around*|(|A|)>> so that
    <math|sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
    closed|}>|)>\<leqslant\>\<mu\><around*|(|A|)>>. Further if <math|U> is
    open with <math|A\<subseteq\>U> then <math|\<mu\><around*|(|A|)>\<leqslant\>\<mu\><around*|(|U|)>>
    so that <math|\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    closed|}>|)>>. To summarize we have\ 

    <\equation>
      <label|eq 18.249.032>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      closed|}>|)>\<leqslant\>\<mu\><around*|(|A|)>\<leqslant\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>
    </equation>

    Assume now that <math|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>\<gtr\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
    closed|}>|)>> then <math|0\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>-sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
    closed|}>|)>=\<varepsilon\>>. As <math|A\<in\>\<cal-S\>> there exists a
    open <math|U>, closed <math|C> so that\ 

    <\equation>
      <label|eq 18.250.032>C\<subseteq\>A\<subseteq\>U<infix-and>\<mu\><around*|(|U\\C|)>\<less\>\<varepsilon\><infix-or>as
      \<mu\> is finite \<mu\><around*|(|U|)>\<less\>\<mu\><around*|(|C|)>+\<varepsilon\>
    </equation>

    So

    <\eqnarray*>
      <tformat|<table|<row|<cell|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>>|<cell|\<leqslant\>>|<cell|\<mu\><around*|(|U|)>>>|<row|<cell|>|<cell|\<less\><rsub|<text|<reference|eq
      18.250.032>>>>|<cell|\<mu\><around*|(|C|)>+\<varepsilon\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      closed|}>|)>+\<varepsilon\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      closed|}>|)>+inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>-sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
      closed|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
      open|}>|)>>>>>
    </eqnarray*>

    giving the contradiction <math|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>\<less\>inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>>. Hence <math|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
    closed|}>|)>> which together with <reference|eq 18.249.032> proves that
    <math|sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C\<subseteq\>A\<wedge\>C
    closed|}>|)>=\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|A\<subseteq\>U\<wedge\>U
    open|}>|)>>. So <math|A\<in\>\<cal-R\>> proving
    <math|\<cal-S\>\<subseteq\>\<cal-R\>> which together with <reference|eq
    18.248.032> gives <math|\<cal-S\>=\<cal-R\>> or using the definition of
    <math|\<cal-S\>>.

    <\equation>
      <label|eq 18.251.032>\<cal-R\>=<around*|{|A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<forall\>\|\<varepsilon\>\<gtr\>0
      <space|1em>\<exists\>U,F where U open,F
      closed,F\<subseteq\>A\<subseteq\>U\<wedge\>\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>|}>
    </equation>

    We are now ready to prove that <math|\<cal-R\>> is a
    <math|\<sigma\>>-algebra:

    <\enumerate>
      <item>As <math|\<emptyset\>> is open we have that
      <math|\<emptyset\>\<in\>\<cal-T\><rsub|\<bbb-R\><rsup|n>>> and as
      <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<cal-R\>> [see
      <reference|eq 18.245.032>] it follows that

      <\equation>
        <label|eq 18.252.032>\<emptyset\>\<in\>\<cal-R\>
      </equation>

      <item>Let <math|A\<in\>\<cal-R\>> and take
      <math|\<varepsilon\>>\<gtr\>0. Using <reference|eq 18.251.032> there
      exists a open <math|U>, a closed <math|F> such that
      <math|F\<subseteq\>A\<subseteq\>U> and
      <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>>. Taking the
      complement we have

      <\equation>
        <label|eq 18.253.032>X\<setminus\>U is closed,X\\F is
        open<infix-and>X\\U\<subseteq\>X\\A\<subseteq\>X\\F
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\><around*|(|X\\F|)>\\<around*|(|X\\U|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\\F\<wedge\>\<neg\><around*|(|x\<in\>X\\U|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>F|)>\<wedge\>\<neg\><around*|(|x\<in\>X\<wedge\>x\<nin\>U|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>F|)>\<wedge\><around*|(|x\<nin\>X\<vee\>x\<in\>U|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\<wedge\>x\<nin\>F\<wedge\>x\<nin\>X|)>\<vee\><around*|(|x\<in\>X\<wedge\>x\<nin\>F\<wedge\>x\<in\>U|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\>x\<nin\>F\<wedge\>x\<in\>U>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|U\<subseteq\>X>>|<cell|x\<in\>U\<wedge\>x\<nin\>F>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>U\\F>>>>
      </eqnarray*>

      proving that <math|<around*|(|X\\F|)>\\<around*|(|X\\U|)>=U\\F>. Hence

      <\equation>
        <label|eq 18.254.032>\<mu\><around*|(|<around*|(|X\\F|)>\\<around*|(|X\\U|)>|)>=\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>
      </equation>

      Using <reference|eq 18.254.032>, <reference|eq 18.253.032> in
      <reference|eq 18.251.032> proves that <math|X\\A\<in\>\<cal-R\>> so\ 

      <\equation>
        <label|eq 18.255.032>\<forall\>A\<in\>\<cal-R\> we have
        X\\A\<in\>\<cal-R\>
      </equation>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-R\>>
      and take <math|\<varepsilon\>>\<gtr\>0 then using <reference|eq
      18.251.032> we have that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      there exists a open <math|U<rsub|i>> and a closed <math|F<rsub|i>> with
      <math|F<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>U<rsub|i>> such that
      <math|\<mu\>*<around*|(|U<rsub|i>\\F<rsub|i>|)>\<less\><frac|\<varepsilon\>|2<rsup|i>>>.
      Define <math|U=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>> and
      <math|F=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>> then
      <math|U> is open [note that <math|F> does not have to be closed].
      Further <math|F=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>=U>
      hence\ 

      <\equation>
        <label|eq 18.256.032>F\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>U
        where U is open
      </equation>

      Next

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|U\\F|)>>|<cell|=>|<cell|\<mu\><around*|(|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>U<rsub|i>|)>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        difference>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|U<rsub|i>\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|U<rsub|i>\\F<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|U<rsub|i>\\F<rsub|i>|)>>>|<row|<cell|>|<cell|\<less\>>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><frac|\<varepsilon\>|2<rsup|i>>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|exaple
        of a convergent serie>>>>|<cell|\<varepsilon\>>>>>
      </eqnarray*>

      giving\ 

      <\equation>
        <label|eq 18.257.032>\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>
      </equation>

      Unfortunately we can not yet apply <reference|eq 18.251.032> as
      <math|F=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>> does not
      have to be closed. However if <math|i\<in\>\<bbb-N\><rsub|0>> then
      <math|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>F<rsub|j>> is
      closed [as it is a finite union amd using <reference|closed set
      properties>]. Define the familly <math|<around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      by <math|G<rsub|i>=U\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>F<rsub|j>|)>\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
      then <math|G<rsub|i>=U\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>F<rsub|j>|)>\<supseteq\>U\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i+1|}>>F<rsub|j>|)>=G<rsub|i+1>>.
      Also <math|G<rsub|i>=U\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>F<rsub|j>|)>\<supseteq\>U\\<around*|(|<big|cup><rsub|j\<in\>\<bbb-N\><rsub|0>>F<rsub|j>|)>>
      so that

      <\equation*>
        <label|eq 18.258.032.1><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>\<supseteq\>U\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>
      </equation*>

      Further if <math|x\<in\><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>>
      then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|x\<in\>G<rsub|i>=U\\<around*|(|<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>F<rsub|j>|)>>
      so that <math|x\<in\>U\<wedge\>x\<nin\>F<rsub|i>\<Rightarrow\>x\<nin\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>>
      giving <math|x\<in\>U\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|n>>F<rsub|i>|)>>
      proving that

      <\equation*>
        <label|eq 18.259.032.1><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>\<subseteq\>U\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>
      </equation*>

      To summarize we have

      <\equation*>
        <around*|{|G<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>B<around*|[|\<bbb-R\><rsup|<rsup|n>>|]>,
        \<forall\>i\<in\>\<bbb-N\><rsub|0>
        G<rsub|i+1>\<subseteq\>G<rsub|i><infix-and><big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>>G<rsub|i>=U\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>|)>=U\\F
      </equation*>

      which together with the fact that <math|\<mu\>> is finite allows us to
      apply <reference|measure properties (2)> so that\ 

      <\equation*>
        \<mu\><around*|(|U\\F|)>=inf<around*|(|<around*|{|\<mu\><around*|(|G<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation*>

      As <math|\<mu\><around*|(|U\\F|)>\<less\>\<varepsilon\>> [see
      <reference|eq 18.257.032>] there exists a
      <math|m\<in\>\<bbb-N\><rsub|0>> such that
      <math|\<mu\><around*|(|G<rsub|m>|)>\<less\>\<varepsilon\>> or
      <math|\<mu\><around*|(|U\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>F<rsub|i>|)>|)>\<less\>\<varepsilon\>>.
      Hence if we take <math|C=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>F<rsub|i>><space|1em>[a
      closed set by <reference|closed set properties>] then
      <math|C\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>\<subseteq\><rsub|<text|<reference|eq
      18.256.032>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>U>
      and <math|\<mu\><around*|(|U\\C|)>\<less\>\<varepsilon\>>, so by
      <reference|eq 18.251.032> it follows that

      <\equation>
        <label|eq 18.258.032><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-R\>
      </equation>

      From <reference|eq 18.252.032>, <reference|eq 18.255.032> and the above
      [<reference|eq 18.258.032>] it follows that <math|\<cal-R\>> is a
      <math|\<sigma\>>-algebra which by <reference|eq 18.245.032> contains
      <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>> hence
      <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>=\<sigma\><around*|[|\<cal-T\><rsub|R<rsup|n>>|]>\<subseteq\>\<cal-R\>>.
      Or using the definition of <math|\<cal-R\>> i follows that\ 

      <\equation*>
        \<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>
        \<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
        closed<infix-and>F\<subseteq\>A|}>|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
        open A\<subseteq\>U|}>|)>
      </equation*>

      proving the lemma.
    </enumerate>
  </proof>

  We use the above lemma to prove the following theorem

  <\theorem>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,\<mu\>|\<rangle\>>>
    the measurable space defined in <reference|Borel algebra on R^n>] and
    <math|\<mu\>> a measure on <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    such that <math|\<forall\>A\<in\>\<cal-B\><around*|{|\<bbb-R\><rsup|n>|}>>
    we have <math|\<mu\><around*|(|A|)>\<less\>\<infty\>> then <math|\<mu\>>
    is regular [see <reference|inner/outer regularity>] or in other words\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>>|<cell|=>|<cell|inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<wedge\>U\<in\>\<cal-T\>\<wedge\>A\<subseteq\>U|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F\<in\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>\<wedge\>F
      is compact\<wedge\>F\<subseteq\>A|}>|)>>>>>
    </eqnarray*>
  </theorem>

  <\note>
    As <math|\<cal-T\><rsub|\<bbb-R\><rsup|n>>\<subseteq\>\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    and compact sets are closed [see <reference|compact subspaces are
    closed>] and thus elements of <math|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>
    [see <reference|Borel algebra on R^n equivalences>] we must only prove
    that\ 

    <\equation*>
      \<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
      open\<wedge\>A\<subseteq\>U|}>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
      compact\<wedge\>C\<subseteq\>A|}>|)>
    </equation*>
  </note>

  <\proof>
    Using <reference|measure regularity lemma> we have that\ 

    <\equation>
      <label|eq 18.259.032>\<mu\><around*|(|A|)>=inf<around*|(|<around*|{|\<mu\><around*|(|U|)>\|U
      open\<wedge\>A\<subseteq\>U|}>|)>
    </equation>

    proving the first part. For the second part, note that if <math|C> is
    compact with <math|C\<subseteq\>A> then
    <math|\<mu\><around*|(|C|)>\<leqslant\>\<mu\><around*|(|A|)>> proving
    that \ 

    <\equation>
      <label|eq 18.260.032>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
      compact\<wedge\>C\<subseteq\>A|}>|)>\<leqslant\>\<mu\><around*|(|A|)>
    </equation>

    Now for the opposite inclusion take <math|\<varepsilon\>\<gtr\>0> then,
    as <math|\<mu\><around*|(|A|)>\<equallim\><rsub|<text|<reference|measure
    regularity lemma>>>sup<around*|(|<around*|{|\<mu\><around*|(|F|)>\|F
    closed\<wedge\>F\<subseteq\>A|}>|)>>, there exists a closed set <math|F>
    with <math|F\<subseteq\>A> and

    <\equation>
      <label|eq 18.261.032>\<mu\><around*|(|A|)>-\<varepsilon\>\<less\>\<mu\><around*|(|F|)>
    </equation>

    Now as <math|F=\<bbb-R\><rsup|n><big|cap>F\<equallim\><rsub|<text|<reference|R^n
    is a unin of rectangles>>><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|[|-i,i|]><rsup|n>|)><big|cap>A=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|<around*|[|-i,i|]><rsup|n><big|cap>F|)>=<big|cup><rsub|i\<in\>\<bbb-N\>>F<rsub|i>>
    where <math|F<rsub|i>=<around*|[|-i,i|]><rsup|n><big|cap>F>. If
    <math|x\<in\>F<rsub|i>> then <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|<around*|\||x<rsub|j>|\|>\<less\>i> giving
    <math|<around*|\<\|\|\>|x|\<\|\|\>><rsub|max>\<leqslant\>i> proving that
    <math|F<rsub|i>> is bounded. As <math|F<rsub|i>> is also closed [union of
    two closed sets] we have by the Heine-Borel theorem [see
    <reference|compact subsets of the reals>].that <math|F<rsub|i>> is
    compact. Further <math|F<rsub|i>=<around*|[|-i,i|]><rsup|n><big|cap>F\<subseteq\><around*|[|-<around*|(|i+1|)>,i+1|]><rsup|n><big|cap>F=F<rsub|i+1>>.
    To summarize\ 

    <\equation*>
      \<exists\><around*|{|F<rsub|i>|}><rsub|i\<in\>N<rsub|0>> with
      \<forall\>i\<in\>\<bbb-N\><rsub|0> F<rsub|i> is
      compact<infix-and>F<rsub|i>\<subseteq\>F<rsub|i+1> such that
      F=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>F<rsub|i>
    </equation*>

    Using the above on the properties of a measure [see <reference|measure
    properties (2)>] we have that\ 

    <\equation>
      <label|eq 18.262.032>\<mu\><around*|(|F|)>=sup<around*|(|<around*|{|\<mu\><around*|(|F<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    As by <reference|eq 18.261.032> and <reference|eq 18.262.032> we have
    that <math|\<mu\><around*|(|A|)>-\<varepsilon\>\<less\>sup<around*|(|<around*|{|\<mu\><around*|(|F<rsub|i>|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>,
    it follows that <math|\<exists\>m\<in\>\<bbb-N\><rsub|0>> such that
    <math|\<mu\><around*|(|A|)>-\<varepsilon\>\<less\>\<mu\><around*|(|F<rsub|m>|)>>.
    As <math|F<rsub|m>\<subseteq\>F> and <math|F> is closed we have that
    <math|\<mu\><around*|(|F<rsub|m>|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
    is compact\<wedge\>C\<subseteq\>A|}>|)>>. Hence
    <math|\<mu\><around*|(|A|)>-\<varepsilon\>\<less\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
    is compact\<wedge\>C\<subseteq\>A|}>|)>>, as <math|\<varepsilon\>> was
    chosen arbitrary, we have by <reference|consequence of the Archimedean
    property (2)> that <math|\<mu\><around*|(|A|)>\<leqslant\>sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
    is compact\<wedge\>C\<subseteq\>A|}>|)>>. Combining this with
    <reference|eq 18.260.032> proves\ 

    <\equation>
      <label|eq 18.263.032>\<mu\><around*|(|A|)>=sup<around*|(|<around*|{|\<mu\><around*|(|C|)>\|C
      is compact\<wedge\>C\<subseteq\>A|}>|)>
    </equation>

    The theorem is then proved by <reference|eq 18.259.032> and <reference|eq
    18.263.032>.
  </proof>

  <section|Measurable functions>

  <subsection|Dynkin Classes>

  This section describes a technique that is often useful for verifying the
  equality of measures and measurable functions.

  <\definition>
    <label|Dunkin class><index|Dynkin class><index|<verbatim|D>>Let <math|X>
    be a set then <math|\<cal-D\>\<subseteq\>\<cal-P\><around*|(|X|)>> is a
    <with|font-series|bold|Dynkin class> on <math|X> if\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-D\>>

      <item><math|\<forall\>A,B\<in\>\<cal-D\>> with <math|B\<subseteq\>A> we
      have <math|A\\B\<subseteq\>\<cal-D\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>>
      is such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> then
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
    </enumerate>
  </definition>

  <\example>
    <label|sigma algebras are Dynkin classes>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    [meaning that <math|\<cal-A\>> is a <math|\<sigma\>>-algebra on <math|X>]
    then <math|\<cal-A\>> is a Dynkin class on <math|X>
  </example>

  <\proof>
    This follows from the definition of a <math|\<sigma\>>-algebra.
  </proof>

  <\example>
    <label|set of all subsets is a Dynkin class>Let <math|X> be a set then
    <math|\<cal-P\><around*|(|X|)>> is a Dynkin class on <math|X>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item><math|X\<in\>\<cal-P\><around*|(|X|)>> as <math|X\<subseteq\>X>

      <item>If <math|A,B\<in\>\<cal-P\><around*|(|X|)>> then
      <math|A\\B\<subseteq\>A\<subseteq\>X> so that
      <math|A\\B\<in\>\<cal-P\><around*|(|X|)>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-P\><around*|(|X|)>>
      with <math|\<forall\>i\<in\>A<rsub|i>\<subseteq\>A<rsub|i+1>> then
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>\<subseteq\>X> hence
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<subseteq\>X>
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-P\><around*|(|X|)>>
    </enumerate>

    \ 
  </proof>

  <\lemma>
    <label|intersection of a class of Dynkin classes is a Dynkin class>Let
    <math|X> be a set and <math|\<cal-X\>> a non empty set of Dynkin classes
    on <math|X> then <math|<big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
    is a Dynkin class on <math|X>.
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|\<forall\>\<cal-D\>\<in\>\<cal-X\>> we have that
      <math|X\<in\>\<cal-D\>> it follows that
      <math|X\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>

      <item>Let <math|A,B\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
      then <math|\<forall\>\<cal-D\>\<in\>\<cal-X\>> we have that
      <math|A,B\<in\>\<cal-D\>\<Rightarrow\>A\\B\<in\>\<b-cal-D\>> hence
      <math|A\\B\<in\>\<cal-X\>>

      <item>Let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
      with <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|A<rsub|i>\<subseteq\>A<rsub|i+1>> then given
      <math|i\<in\>\<bbb-N\><rsub|0>> we have
      <math|A<rsub|i>\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
      so that given a <math|\<cal-D\>\<in\>\<cal-X\>> we have
      <math|A<rsub|i>\<in\>\<cal-D\>> proving that
      <math|\<forall\>\<cal-D\>\<in\>\<cal-X\>> we have
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>\<Rightarrow\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
      hence <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\><big|cap><rsub|\<cal-D\>\<in\>\<cal-X\>>\<cal-D\>>
    </enumerate>
  </proof>

  Just as in the case of <math|\<sigma\>>-algebras [see <reference|generated
  sigma algebra>] we can find the smallest Dynkin class covering a collection
  of subsets of a given set.

  <\theorem>
    <label|Dynkin class generated><index|<math|\<cal-d\><around*|(|\<cal-A\>|)>>>Let
    <math|X> be a set and <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    then there exists a <with|font-series|bold|unique> Dynkin class
    <math|\<cal-D\>> on <math|X>such that
    <math|\<cal-A\>\<subseteq\>\<cal-D\>> and for every Dynkin class
    <math|\<cal-D\><rprime|'>> on <math|X> with
    <math|\<cal-A\>\<subseteq\>\<cal-D\><rprime|'>> we have that
    <math|\<cal-D\>\<subseteq\>\<cal-D\><rprime|'>>. this unique Dynkin class
    is noted as <math|\<cal-d\><around*|[|\<cal-A\>|]>> and is called the
    <with|font-series|bold|Dynkin class generated by <math|\<cal-A\>>>.\ 
  </theorem>

  <\proof>
    Define <math|\<cal-X\>=<around*|{|\<cal-C\>\<subseteq\>\<cal-P\><around*|(|X|)>\|\<cal-A\>\<subseteq\>\<cal-C\><infix-and>\<cal-C\>
    is a Dynkin class|}>> then by <reference|intersection of a class of
    Dynkin classes is a Dynkin class> we have that
    <math|\<cal-D\>=<big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>> is a
    Dynkin class. As <math|\<forall\>\<cal-C\>\<in\>\<cal-X\>> we have that
    <math|\<cal-A\>\<subseteq\>\<cal-C\>> it follows that
    <math|\<cal-A\>\<subseteq\><big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>=\<cal-D\>>.
    Finally if <math|\<cal-D\><rprime|'>> is another Dynkin class with
    <math|\<cal-A\>\<subseteq\>\<cal-D\><rprime|'>> then
    <math|\<cal-D\><rprime|'>\<in\>\<cal-X\>> hence
    <math|\<cal-D\>=<big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>\<subseteq\>\<cal-D\><rprime|'>>.
  </proof>

  <\definition>
    Let <math|X> be a set then <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <math|\<pi\>>-system on <math|X> if
    <math|\<forall\>A,B\<in\>\<cal-A\>> we have
    <math|A<big|cap>B\<in\>\<cal-A\>>.\ 
  </definition>

  <\note>
    <label|consequence of a pi-system>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<pi\>>-system on <math|X> then if
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> with <math|I> finite and
    non empty we have that <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
  </note>

  <\proof>
    This follows from <reference|finite unions and intersections>.
  </proof>

  We prove now that every Dynkin class that is a <math|\<pi\>>-system is a
  <math|\<sigma\>>-algebra

  <\lemma>
    <label|condition for a Dynkin class to be a sigma algebra>Let <math|X> be
    a set and <math|\<cal-D\>> a Dynkin class on <math|X> that is a
    <math|\<pi\>>-system on <math|X> then <math|\<cal-D\>> is a
    <math|\<sigma\>>-algebra
  </lemma>

  <\proof>
    Le's check the conditions to be a <math|\<sigma\>>-algebra [see
    <reference|sigma algebra>]\ 

    <\enumerate>
      <item><math|X\<in\>\<cal-D\>> by definition of a Dynkin class on
      <math|X>

      <item>Let <math|A\<in\>\<cal-D\>> then as <math|X\<in\>\<cal-D\>> and
      <math|A\<subseteq\>X> we have by the definition of a Dynkin class that
      <math|X\\A\<in\>\<cal-D\>>

      <item>First if <math|A,B\<in\>\<cal-D\>> \ then by (2)
      <math|<around*|(|X\\A|)>,<around*|(|X\\B|)>\<in\>\<cal-D\>> so, as
      <math|\<cal-D\>> is a <math|\<pi\>>-system, we have that
      <math|X\\<around*|(|A<big|cup>B|)>\<equallim\><rsub|<text|<reference|distributivity
      of union or intersection>>><around*|(|X\\A|)><big|cap><around*|(|X\\B|)>\<in\>\<cal-D\>>.
      Further as <math|A<big|cup>B\<equallim\><rsub|<text|<reference|Acc=A>>>X\\<around*|(|X\\<around*|(|A<big|cup>B|)>|)>\<in\>\<cal-D\>>
      we have proved that <math|\<forall\>A,B\<in\>\<cal-D\>>
      <math|A<big|cup>B\<in\>\<cal-D\>>. Applying then <reference|finite
      unions and intersections> gives\ 

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>I>\<subseteq\>\<cal-D\>
        where I is finite non empty we have that
        <big|cup><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-D\>
      </equation*>

      Next let <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>>
      define <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
      <math|B<rsub|i>=<big|cup><rsub|j\<in\><around*|{|1,\<ldots\>,i|}>>A<rsub|j>>.
      Then using <reference|union of union of sets (1)> we have that
      <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|B<rsub|i>\<subseteq\>B<rsub|i+1>> and
      <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-D\>>
      [as <math|\<cal-D\>> is a Dynkin system on <math|X>]. So we have that

      <\equation*>
        \<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>
        we have <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>
      </equation*>
    </enumerate>
  </proof>

  <\theorem>
    <label|Dynkin classes and sigma algebra>Let <math|X> a set and
    <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>> a
    <math|\<pi\>>-system then <math|\<cal-d\><around*|[|\<cal-A\>|]>=\<sigma\><around*|[|\<cal-A\>|]>>
    or in other words the generated sigma algebra is equal to the generated
    Dynkin class.
  </theorem>

  <\proof>
    First we prove that <math|\<cal-d\><around*|[|\<cal-A\>|]>> is itself a
    <math|\<pi\>>-system because we can then apply the previous lemma
    <reference|condition for a Dynkin class to be a sigma algebra>. For this
    define

    <\equation>
      <label|eq 18.266.033>\<cal-D\><rsub|1>=<around*|{|A\<in\>\<cal-d\><around*|[|\<cal-A\>|]>\|\<forall\>C\<in\>\<cal-A\>
      we have A<big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>|}>
    </equation>

    If <math|A\<in\>\<cal-A\>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>>
    then, as <math|\<cal-A\>> is a <math|\<pi\>>-system, we have that
    <math|\<forall\>C\<in\>\<cal-A\>> that
    <math|A<big|cap>C\<in\>\<cal-A\>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>>
    which proves that <math|A\<in\>\<cal-D\><rsub|1>>. Hence

    <\equation>
      <label|eq 18.267.033>\<cal-A\>\<subseteq\>\<cal-D\><rsub|1>
    </equation>

    As <math|X\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> and
    <math|\<forall\>C\<in\>\<cal-A\>> we have
    <math|X<big|cap>C=C\<in\>\<cal-A\>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>>
    which proves that\ 

    <\equation>
      <label|eq 18.268.033>X\<in\>\<cal-D\><rsub|1>
    </equation>

    If <math|A,B\<in\>\<cal-D\><rsub|1>> with <math|B\<subseteq\>A> then
    <math|\<forall\>C\<in\>\<cal-A\>> <math|<around*|(|A<big|cap>C|)>,<around*|(|B<big|cap>C|)>\<in\>\<cal-D\><rsub|1>>,
    further using <reference|(A except B) interect C>, we have
    <math|<around*|(|A\\B|)><big|cap>C=<around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>>
    which, as <math|\<cal-d\><around*|(|\<cal-A\>|)>> is a Dynkin system and
    <math|B<big|cap>C\<subseteq\>A<big|cap>C> so that
    <math|<around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>,
    proves that <math|A\\B\<in\>\<cal-D\><rsub|1>>. Hence we have

    <\equation>
      <label|eq 18.269.033>\<forall\>A,B\<in\>\<cal-D\><rsub|1> then
      A\\B\<in\>\<cal-D\><rsub|1>
    </equation>

    Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsub|1>>
    is a increasing sequence of sets in <math|\<cal-D\><rsub|1>> and
    <math|C\<in\>\<cal-A\>> then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we
    have <math|A<rsub|i><big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> so
    that <math|<around*|{|A<rsub|i><big|cap>C|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is a increasing seqeunce of sets in <math|\<cal-d\><around*|[|\<cal-A\>|]>>.
    So <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C|)>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>.
    As <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C\<equallim\><rsub|<text|<reference|generalized
    distributive laws>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C|)>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>,
    it follows that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>.
    So we have

    <\equation>
      <label|eq 18.270.033>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsub|1>
      with \<forall\>i\<in\>\<bbb-N\><rsub|0>
      A<rsub|i>\<subseteq\>A<rsub|i+1> \ we have
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\><rsub|1>
    </equation>

    From <reference|eq 18.267.033>, <reference|eq 18.268.033>, <reference|eq
    18.269.033> and <reference|eq 18.270.033> it follows that
    <math|\<cal-D\><rsub|1>> is a Dynkin class containing <math|\<cal-A\>>
    hence we have that

    <\equation>
      <label|eq 18.271.033>\<cal-d\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|1>
    </equation>

    Next define

    <\equation>
      <label|eq 18.272.033>\<cal-D\><rsub|2>=<around*|{|A\<in\>\<cal-d\><around*|[|\<cal-A\>|]>\|\<forall\>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>
      we have A<big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>|}>
    </equation>

    If <math|A\<in\>\<cal-A\>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>>
    and <math|C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>\<Rightarrowlim\><rsub|<text|<reference|eq
    18.271.033>>>C\<in\>\<cal-D\><rsub|1>> then using the definition of
    <math|\<cal-D\><rsub|1>> we have <math|A<big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>
    which proves that <math|A\<in\>\<cal-D\><rsub|2>>. Hence\ 

    <\equation>
      <label|eq 18.273.033>\<cal-A\>\<subseteq\>\<cal-D\><rsub|2>
    </equation>

    Further as <math|X\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> and
    <math|\<forall\>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>
    <math|X<big|cap>C=C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> it follows
    that\ 

    <\equation>
      <label|eq 18.274.033>X\<in\>\<cal-D\><rsub|2>
    </equation>

    If <math|A,B\<in\>\<cal-D\><rsub|2>> with <math|B\<subseteq\>A> and
    <math|C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> then
    <math|B<big|cap>C\<subseteq\>A<big|cap>C> and by definition
    <math|A<big|cap>C,B<big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>, so
    as <math|<around*|(|A\\B|)><big|cap>C\<equallim\><rsub|<text|<reference|(A
    except B) interect C>>><around*|(|A<big|cap>C|)>\\<around*|(|B<big|cap>C|)>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>
    it follows that\ 

    <\equation>
      <label|eq 18.278.033>\<forall\>A,B\<in\>\<cal-D\><rsub|2> we have
      A\\B\<in\>\<cal-D\><rsub|2>
    </equation>

    Further if <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsub|2>>
    is increasing and <math|C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> then
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
    <math|A<rsub|i><big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>, as
    <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C\<equallim\><rsub|<text|<reference|generalized
    distributive laws>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C|)>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>
    it follows that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>.
    So we have

    <\equation>
      <label|eq 18.276.033>\<forall\><around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\><rsub|2>
      with \<forall\>i\<in\>\<bbb-N\><rsub|0>
      A<rsub|i>\<subseteq\>A<rsub|i+1> \ we have
      <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\><rsub|2>
    </equation>

    Using <reference|eq 18.273.033>, <reference|eq 18.274.033>, <reference|eq
    18.278.033> and <reference|eq 18.276.033> we have that
    <math|\<cal-D\><rsub|2>> is a Dynkin system containing <math|\<cal-A\>>
    so that

    <\equation>
      <label|eq 18.277.033>\<cal-d\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-D\><rsub|2>
    </equation>

    If <math|A,B\<in\>\<cal-d\><around*|[|\<cal-A\>|]>> then by the above
    <math|A\<in\>\<cal-D\><rsub|2><infix-and>still
    B\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>, so that using the definition of
    <math|\<cal-D\><rsub|2>> it follows that
    <math|A<big|cap>B\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>. Hence the
    Dynkin system <math|\<cal-d\><around*|[|\<cal-A\>|]>> is a
    <math|\<pi\>>-system. Next we can apply <reference|condition for a Dynkin
    class to be a sigma algebra> proving that
    <math|\<cal-d\><around*|[|\<cal-A\>|]>> is a <math|\<sigma\>>-algebra
    which as <math|\<cal-A\>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>>
    gives\ 

    <\equation>
      <label|eq 18.281.033>\<sigma\><around*|[|\<cal-A\>|]>\<subseteq\>\<cal-d\><around*|[|\<cal-A\>|]>
    </equation>

    Finally as every <math|\<sigma\>>-algebra is a Dynkin system [see
    <reference|sigma algebras are Dynkin classes>] we have that
    <math|\<sigma\><around*|[|\<cal-A\>|]>> is a Dynkin class containing
    <math|\<cal-A\>> which proves that <math|\<cal-d\><around*|[|\<cal-A\>|]>\<subseteq\>\<sigma\><around*|[|\<cal-A\>|]>>,
    combining this with <reference|eq 18.281.033> gives\ 

    <\equation*>
      \<sigma\><around*|[|\<cal-A\>|]>=\<cal-d\><around*|[|\<cal-A\>|]>
    </equation*>
  </proof>

  <\corollary>
    <label|Dynkin class and uniqueness of measures>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|\<cal-C\>> a <math|\<pi\>>-system on <math|X> such that
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-C\>|]>>. If
    <math|\<mu\>,\<nu\>> are two finite measures on <math|\<cal-A\>> such
    that <math|\<mu\><around*|(|X|)>=\<nu\><around*|(|X|)>> and
    <math|\<forall\>C\<in\>\<cal-C\>> <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>>
    then <math|\<mu\>=\<nu\>>
  </corollary>

  <\proof>
    Define <math|\<cal-D\>=<around*|{|A\<in\>\<cal-A\>\|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>|}>>
    then\ 

    <\equation>
      <label|eq 18.282.033>\<cal-C\>\<subseteq\>\<cal-D\>
    </equation>

    Further we can easely proof that <math|\<cal-D\>> is a Dynkin system

    <\enumerate>
      <item>By assumption <math|\<mu\><around*|(|X|)>=\<nu\><around*|(|X|)>>
      proving that <math|X\<in\>\<cal-D\>>

      <item>If <math|A,B\<in\>\<cal-D\>> with <math|B\<subseteq\>A> then
      <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|B|)>> and

      <\eqnarray*>
        <tformat|<table|<row|<cell|\<mu\><around*|(|A\\B|)>>|<cell|\<equallim\><rsub|\<mu\>
        is finite<infix-and><text|<reference|measure properties
        (1)>>>>|<cell|\<mu\><around*|(|A|)>-\<mu\><around*|(|B|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|A|)>-\<nu\><around*|(|B|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|\<nu\>
        \ is \ finite<infix-and><text|<reference|measure properties
        (1)>>>>|<cell|\<nu\><around*|(|A\\B|)>>>>>
      </eqnarray*>

      proving that <math|A\\B\<in\>\<cal-D\>>

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-D\>>
      is increasing then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
      that <math|\<mu\><around*|(|A<rsub|i>|)>=\<nu\><around*|(|A<rsub|i>|)>>.
      As <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> is
      increasing we have by <reference|measure properties (2)> that
      <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<rsub|i>|)>=<below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|A<rsub|i>|)>=\<nu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>>
      prving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
    </enumerate>

    As <math|\<cal-C\>\<subseteq\>\<cal-D\>> [A Dynkin system] we have that
    <math|\<cal-d\><around*|[|\<cal-C\>|]>\<subseteq\>\<cal-D\>>. Further as
    <math|\<cal-C\>> is a <math|\<pi\>>-system we have by the previous
    theorem [see <reference|Dynkin classes and sigma algebra>] that
    <math|\<sigma\><around*|[|\<cal-C\>|]>=\<cal-d\><around*|[|A|]>> proving
    that <math|\<cal-A\>=\<sigma\><around*|[|\<cal-C\>|]>\<subseteq\>\<cal-D\>>.
    Hence we have <math|\<forall\>A\<in\>\<cal-A\>> that
    <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>> which finally proves
    that\ 

    <\equation*>
      \<mu\>=\<nu\>
    </equation*>
  </proof>

  The above corollary works only for finite measuresand is not very usefull
  as most interestinge measures are not finite, this is corrected in the
  following corollary.

  <\corollary>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space, <math|\<cal-C\>> a <math|\<pi\>>-system on <math|X> such that
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-A\>|]>>. If
    <math|\<mu\>,\<nu\>> are measures on <math|\<cal-A\>> such that
    <math|\<forall\>C\<in\>\<cal-C\>> we have
    <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>> and there exists a
    <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-C\>>
    with <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>=X> and
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    \ <math|C<rsub|i>\<subseteq\>C<rsub|i+1>>,
    <math|\<mu\><around*|(|C<rsub|i>|)>\<less\>\<infty\>> then we have that
    <math|\<mu\>=\<beta\>>
  </corollary>

  <\proof>
    For each <math|n\<in\>\<bbb-N\><rsub|0>> define
    <math|\<mu\><rsub|n>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>> by
    <math|\<mu\><rsub|n><around*|(|A|)>=\<mu\><around*|(|A<big|cap>C<rsub|n>|)>>
    and <math|\<nu\><rsub|n>:\<cal-A\>\<rightarrow\><around*|[|0,\<infty\>|]>>
    by <math|\<nu\><rsub|n><around*|(|A|)>=\<nu\><around*|(|A<big|cap>C<rsub|n>|)>>.
    Then we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that\ 

    <\enumerate>
      <item><math|\<mu\><rsub|n><around*|(|\<emptyset\>|)>=\<mu\><around*|(|\<emptyset\><big|cap>C<rsub|n>|)>=\<mu\><around*|(|\<emptyset\>|)>=0>
      and <math|\<nu\><rsub|n><around*|(|\<emptyset\>|)>=\<nu\><around*|(|\<emptyset\><big|cap>C<rsub|n>|)>=\<nu\><around*|(|\<emptyset\>|)>=0>\ 

      <item>If <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
      is a pairwise disjoint sequence of sets in <math|\<cal-A\>> then
      <math|<around*|{|A<rsub|i><big|cap>C<rsub|n>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
      is also a pariwise disjoint sequence of sets in <math|\<cal-A\>>. So

      <\equation*>
        \<mu\><rsub|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<mu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C<rsub|n>|)>=\<mu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|A<rsub|i><big|cap>C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><rsub|n><around*|(|A<rsub|i>|)>
      </equation*>

      and\ 

      <\equation*>
        \<nu\><rsub|n><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)>=\<nu\><around*|(|<around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C<rsub|n>|)>=\<nu\><around*|(|<big|sqcup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C<rsub|i>|)>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><around*|(|A<rsub|i><big|cap>C<rsub|i>|)>=<big|sum><rsub|i=1><rsup|\<infty\>>\<nu\><rsub|n><around*|(|A<rsub|i>|)>
      </equation*>
    </enumerate>

    From <math|<around*|(|1|)><infix-and><around*|(|2|)>> it follows that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<mu\><rsub|n>,\<nu\><rsub|n>> are measures on <math|\<cal-A\>>.
    Further for <math|n\<in\>\<bbb-N\><rsub|0>> and <math|A\<in\>\<cal-A\>>
    we have that <math|\<mu\><rsub|n><around*|(|A|)>=\<mu\><around*|(|A<big|cap>C<rsub|n>|)>\<leqslant\>\<mu\><around*|(|C<rsub|n>|)>\<less\>\<infty\>>
    and <math|\<nu\><rsub|n><around*|(|A<rsub|n>|)>=\<nu\><around*|(|A<big|cap>C<rsub|n>|)>\<leqslant\>\<nu\><around*|(|C<rsub|n>|)>\<less\>\<infty\>>.
    Hence we have that\ 

    <\equation>
      <label|eq 18.283.033>\<forall\>n\<in\>\<bbb-N\><rsub|0>
      \<mu\><rsub|n>,\<nu\><rsub|n> are finite measures on \<cal-A\>
    </equation>

    Using then the previous corollary <reference|Dynkin class and uniqueness
    of measures> we have that\ 

    <\equation>
      <label|eq 18.284.033>\<forall\>n\<in\>\<bbb-N\><rsub|0>
      \<mu\><rsub|n>=\<nu\><rsub|n>
    </equation>

    Finally if <math|A\<in\>\<cal-A\>> then
    <math|A=A<big|cap>X=A<big|cap><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>|)>=<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<rsub|i><big|cap>C<rsub|i>|)>>
    where <math|<around*|{|A<big|cap>C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    isincreasing hence we can apply <reference|measure properties (2)> giving\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<mu\><around*|(|A|)>>|<cell|=>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>C<rsub|i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
      properties (2)>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><around*|(|A<big|cap>C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<mu\><rsub|i><around*|(|A|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.284.033>>>>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<nu\><rsub|i><around*|(|A|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|i\<rightarrow\>\<infty\>>\<nu\><around*|(|A<big|cap>C<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|measure
      properties (2)>>>>|<cell|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|A<big|cap>C<rsub|i>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<nu\><around*|(|A|)>>>>>
    </eqnarray*>

    which proves that\ 

    <\equation*>
      \<mu\>=v
    </equation*>
  </proof>

  <section|Measurable functions>

  <subsection|Measurable functions>

  <\definition>
    <label|measurable function><index|measurable function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be two measurable
    spaces spaces, <math|A\<in\>\<cal-A\>> then a function
    <math|f:A\<rightarrow\>Y> is <with|font-series|bold|<math|\<cal-A\>,\<cal-B\>>-measurable>
    if <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. The set of
    <with|font-series|medium|<math|\<cal-A\>,\<cal-B\>>>-measurable functions
    is noted as <math|\<cal-M\><around*|[|A,\<cal-A\>;Y,\<cal-B\>|]>>, so\ 

    <\equation*>
      \<cal-M\><around*|[|A,\<cal-A\>;Y,\<cal-B\>|]>=<around*|{|f\<in\>Y<rsup|A>\|f
      is \<cal-A\>,\<cal-B\><text|-measurable>|}>
    </equation*>
  </definition>

  <\note>
    A set can have many <math|\<sigma\>>-algebras defined on it,so the same
    function can be at the same time be measurable and not measurable,
    depending on the <math|\<sigma\>>-algebras used.
  </note>

  <\definition>
    <label|Borel function><index|Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be a
    topological spaces then <math|f:X\<rightarrow\>Y> is
    <with|font-series|bold|Borel measurable> if <math|f> is
    <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>,\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>-measurable
    where <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>=\<sigma\><around*|[|\<cal-T\><rsub|X>|]>>
    and <math|\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>=\<sigma\><around*|[|\<cal-T\><rsub|Y>|]>>
  </definition>

  In case of generated <math|\<sigma\>>-algebras we have a easier way of
  checking that a function is measurable as is shown in the next theorem.

  <\theorem>
    <label|measurable functions and generated algebra>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>>, <math|Y> a set and
    <math|\<cal-B\>\<subseteq\>\<cal-P\><around*|(|Y|)>> so that
    <math|<around*|\<langle\>|Y,\<sigma\><around*|[|\<cal-B\>|]>|\<rangle\>>>
    is a measurable space then <math|f:A\<rightarrow\>Y> is
    <math|\<cal-A\>,\<sigma\><around*|[|\<cal-B\>|]>>-measurable if and only
    if <math|\<forall\>B\<in\>\<cal-B\>> we have
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is
      <math|\<cal-A\>,\<sigma\><around*|[|\<cal-B\>|]>>-measurable then if
      <math|B\<in\>\<cal-B\>> we have as <math|\<cal-B\>\<subseteq\>\<sigma\><around*|[|\<cal-B\>|]>>
      that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>

      <item*|<math|\<Leftarrow\>>>Assume that
      <math|\<forall\>B\<in\>\<cal-B\>> we have that
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. Define now
      <math|\<cal-H\>=<around*|{|B\<in\>\<cal-P\><around*|[|Y|]>\|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>|}>>
      then by the assumption we have that\ 

      <\equation>
        <label|eq 18.293.033>\<cal-B\>\<subseteq\>\<cal-H\>
      </equation>

      As <math|f<rsup|-1><around*|(|Y|)>=A\<in\>\<cal-A\>> we have

      <\equation>
        <label|eq 18.294.033>Y\<in\>\<cal-H\>
      </equation>

      If <math|B\<in\>\<cal-H\>> then <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
      and <math|f<rsup|-1><around*|(|Y\\B|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>A\\f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
      [as <math|\<cal-A\>> is a sigma algebra and <math|A\<in\>\<cal-A\>>]
      giving\ 

      <\equation>
        <label|eq 18.295.033>\<forall\>B\<in\>\<cal-H\> we have
        Y\\B\<in\>\<cal-H\>
      </equation>

      Let <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-H\>>
      then as <math|f<rsup|-1><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>f<rsup|-1><around*|(|A<rsub|i>|)>\<in\>\<cal-A\>>
      [as <math|\<cal-A\>> is a sigma algebra] proving\ 

      <\equation>
        <label|eq 18.296.033>\<forall\><around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-H\>
        we have <big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>\<in\>\<cal-A\>
      </equation>

      From <reference|eq 18.294.033>, <reference|eq 18.295.033> and
      <reference|eq 18.296.033> it follows that <math|\<cal-H\>> is a
      <math|\<sigma\>>-algebra on <math|Y> that by <reference|eq 18.293.033>
      contains <math|\<cal-B\>>. Hence <math|\<sigma\><around*|[|\<cal-B\>|]>\<subseteq\>\<cal-H\>>
      which means that <math|\<forall\>B\<in\>\<sigma\><around*|(|\<cal-B\>|)>>
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>> proving that <math|f>
      is a <math|\<cal-A\>,\<sigma\><around*|[|\<cal-B\>|]>>-measurable
      function.
    </description>
  </proof>

  <\proposition>
    <label|measurable function and restriction>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces,
    <math|A,B\<in\>\<cal-A\>> with <math|B\<subseteq\>A> and
    <math|f:X\<rightarrow\>Y> a <math|\<cal-A\>,\<cal-B\>>-measurable
    function then <math|f<rsub|\|B>:B\<rightarrow\>Y> is
    <math|\<cal-A\>,\<cal-B\>>-measurable
  </proposition>

  <\proof>
    Let <math|C\<in\>\<cal-B\>> then <math|<around*|(|f<rsub|\|B>|)><rsup|-1><around*|(|C|)>\<equallim\><rsub|<text|<reference|inverse
    image of a restricted function>>>B<big|cap>f<rsup|-1><around*|(|C|)>\<in\>\<cal-A\>>
    [as <math|B\<in\>\<cal-A\>> and <math|f<rsup|-1><around*|(|C|)>\<in\>\<cal-A\>>
    as <math|f=\<cal-A\>,\<cal-B\>>-measurable]
  </proof>

  <\proposition>
    <label|measurable function condition and restricted functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces,
    <math|A\<in\>\<cal-A\>>, <math|<around*|{|B<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    such that <math|<big|cup>B<rsub|i>=A> and <math|f:A\<rightarrow\>Y> be
    such that <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    <math|f<rsub|\|B<rsub|i>>> is <math|\<cal-A\>,\<cal-B\>>-measurable then
    <math|f> is <verbatim|A,B>-measurable.
  </proposition>

  <\proof>
    Let <math|C\<in\>\<cal-B\>> then

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsup|-1><around*|(|C|)>>|<cell|=>|<cell|A<big|cap>f<rsup|-1><around*|(|C|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>|)><big|cap>f<rsup|-1><around*|(|C|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
      distributive laws>>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|B<rsub|i><big|cap>f<rsup|-1><around*|(|C|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|inverse
      image of a restricted function>>>>|<cell|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|f<rsub|\|B<rsub|i>>|)><rsup|-1><around*|(|C|)>>>>>
    </eqnarray*>

    As <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> <math|f<rsub|\|B<rsub|i>>>
    is <math|\<cal-A\>,\<cal-B\>>-measurable, we have that
    <math|<around*|(|f<rsub|\|B<rsub|i>>|)><rsup|-1><around*|(|C|)>\<in\>\<cal-A\>>
    so that by the above we have that <math|f<rsup|-1><around*|(|C|)>\<in\>\<cal-A\>>.
  </proof>

  <\proposition>
    Let <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> and
    <math|f:X\<rightarrow\>Y> a continuous function then <math|f> is
    <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>,\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>-measurable.
    In other words continuous functions are Borel measurable.
  </proposition>

  <\proof>
    If <math|U\<in\>\<cal-T\><rsub|Y>> then as <math|f> is continuous
    <math|>we have <math|f<rsup|-1><around*|(|U|)>\<in\>\<cal-T\><rsub|X>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>>
    which using <reference|measurable functions and generated algebra> proves
    that <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\><rsub|X>|]>,\<cal-B\><around*|[|Y,\<cal-T\><rsub|Y>|]>>-measurable.
  </proof>

  <\proposition>
    <label|composition of measurable functions is measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,\<cal-A\><rsub|Y>|\<rangle\>>>,<math|<around*|\<langle\>|Z,\<cal-T\><rsub|Z>|)>>,
    measurable spaces, <math|A\<in\>\<cal-A\><rsub|X>>,
    <math|f:A\<rightarrow\>Y> a <math|\<cal-A\><rsub|X>,\<cal-A\><rsub|Y>>-measurable
    function, <math|B\<in\>\<cal-A\><rsub|Y>> such that
    <math|f<around*|(|A|)>\<subseteq\>B> and <math|g:B\<rightarrow\>Z> a
    <math|\<cal-A\><rsub|Y>,\<cal-A\><rsub|Z>>-measurable function then
    <math|g\<circ\>f> is a <math|\<cal-A\><rsub|X>,\<cal-A\><rsub|Z>>
    measurable function.
  </proposition>

  <\proof>
    Take <math|A\<in\>\<cal-A\><rsub|Z>> then
    <math|f<rsup|-1><around*|(|A|)>\<in\>\<cal-A\><rsub|Y>> so that
    <math|g<rsup|-1><around*|(|f<rsup|-1><around*|(|A|)>|)>\<in\>\<cal-A\><rsub|X>>.
    Finally <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|A|)>\<equallim\><rsub|<text|<reference|inverse
    image of a composition of functions>>>f<rsup|-1><around*|(|g<rsup|-1><around*|(|A|)>|)>\<in\>\<cal-A\><rsub|X>>
    proving the proposition.
  </proof>

  We have two interesting cases of measurable functions, when the codomain of
  a function is <math|\<bbb-R\>> or <math|<wide|\<bbb-R\>|\<wide-bar\>>.>

  <\definition>
    <index|<math|\<cal-A\>>-measurable function><index|<math|<wide|\<cal-M\>|\<wide-bar\>><around*|[|X|]>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> then if <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    is <math|\<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>|]>>-measurable
    [see <reference|borel algebra on the extended real numbers (2)>] then we
    say that <math|f> is <math|\<cal-A\>>-measurable. The set of
    <math|\<cal-A\>>-measurable functions is noted as
    <math|=<wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>, so\ 

    <\equation*>
      <wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>=<around*|{|f\<in\><wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|A>\|f
      is \<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]><text|-measurable>|}>=\<cal-M\><around*|[|A,\<cal-A\>;<wide|\<bbb-R\>|\<wide-bar\>>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>|]>
    </equation*>

    If <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<cal-L\>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\>> [or <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\><rsup|n>>] the Lebesgue measurable sets on
    <math|\<bbb-R\>>[or <math|\<bbb-R\><rsup|n>>] [see <reference|Lebesgue
    measure space> and <reference|Lebesgue measure space on R^n>] then a
    function <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> [or
    <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>] is
    <math|Lebesgue>-measurable if <math|f> is <math|\<cal-L\>>-measurable [or
    <math|f> is<space|1em><math|\<cal-L\><rsup|n>> measurable].
  </definition>

  We have a equivalent definition for real functions.

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space and <math|A\<in\>\<cal-A\>> then if
    <math|f:A\<rightarrow\>\<bbb-R\>> is <math|\<cal-A\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
    [see <reference|Borel algebras on R>] we say that <math|f> is
    <math|\<cal-A\>>-measurable. The set of all <math|\<cal-A\>>-measurable
    functions is noted as <math|\<cal-M\><around*|[|A,\<cal-A\>|]>>, so\ 

    <\equation*>
      \<cal-M\><around*|[|A,\<cal-A\>|]>=<around*|{|f\<in\>\<bbb-R\><rsup|A>\|f
      is \<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]><text|-measurable>|}>=\<cal-M\><around*|[|A,\<cal-A\>;\<bbb-R\>,\<cal-B\><around*|{|\<bbb-R\>|}>|]>
    </equation*>

    If <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<cal-L\>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\>> [or <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\><rsup|n>>] the Lebesgue measurable sets on
    <math|\<bbb-R\>>[or <math|\<bbb-R\><rsup|n>> [see <reference|Lebesgue
    measure space> and <reference|Lebesgue measure space on R^n>] then a
    function <math|f:A\<rightarrow\>\<bbb-R\>> is <math|Lebesgue>-measurable
    if <math|f> is <math|\<cal-L\>>-measurable [or <math|f>
    is<space|1em><math|\<cal-L\><rsup|n>> measurable].
  </definition>

  <\note>
    Altough we have proved that the composition of measurable functions is
    measurable, this does not hold for Lebessgue measurable function. Notice
    the following differences for the composition of measurable functions.

    <\enumerate>
      <item>If <math|<around*|\<langle\>|X,\<cal-A\><rsub|X>|\<rangle\>>>,<math|<around*|\<langle\>|Y,\<cal-A\><rsub|Y>|\<rangle\>>>
      and <math|<around*|\<langle\>|Z,\<cal-A\><rsub|Z>|\<rangle\>>> are
      measurable sets then if <math|f:X\<rightarrow\>Y> is
      <math|\<cal-A\><rsub|X>,\<cal-A\><rsub|Y>>-measurable and
      <math|g:Y\<rightarrow\>Z> is <math|\<cal-A\><rsub|Y>,\<cal-A\><rsub|Z>>
      then <math|g\<circ\>f> is <math|\<cal-A\><rsub|X>,\<cal-A\><rsub|Z>>
      measurable [see <reference|composition of measurable functions is
      measurable>]

      <item>If <math|f,g:\<bbb-R\>\<rightarrow\>\<bbb-R\>> are Lebesgue
      measurable then <math|f> is <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      and <math|g> <math|>is <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable.
      As <math|g> is not <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      we can not use <reference|composition of measurable functions is
      measurable>. It is guaranteed that <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
      <math|g<rsup|-1><around*|(|A|)>\<in\>\<cal-L\>>, which does not
      guarantee that <math|g<rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>.
      If however <math|g> is not only Lebesgue measuable but also Borel
      measurable then <math|g> is not only
      <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable but also
      <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      so that we can apply <reference|composition of measurable functions is
      measurable> proving that <math|g\<circ\>f> is
      <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable hence
      Lebesgue measurable. The difference is that we have on <math|\<bbb-R\>>
      difference <math|\<sigma\>>-algebras, either <math|\<cal-L\>> or
      <math|\<cal-B\><around*|[|\<cal-A\>|]>>.

      <item>If <math|f,g:\<bbb-R\>\<rightarrow\>\<bbb-R\>> are Borel
      measurable then <math|f,g> are <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      so that we can use <reference|composition of measurable functions is
      measurable> to prove that <math|g\<circ\>f> is
      <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      and thus Borel measurable.
    </enumerate>
  </note>

  Note that up to know we have to duplicate our statemens between real
  functions and extended real functions. The following proposition allows us
  to significantly reduce the number of proofs and statements for
  measurability of real functions or extended real functions.

  <\proposition>
    <label|real (extended real) measurability>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> then\ 

    <\enumerate>
      <item>If <math|<around*|(|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|)>\<in\><wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>
      is such that <math|f<around*|(|A|)>\<subseteq\>\<bbb-R\>> [so that
      <math|f:X\<rightarrow\>\<bbb-R\>> is a function] then
      <math|<around*|(|f:X\<rightarrow\>\<bbb-R\>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>

      <item>If <math|<around*|(|f:A\<rightarrow\>\<bbb-R\>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>
      then <math|<around*|(|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|)>\<in\><wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>
      [in a sense we can write this as <math|\<cal-M\><around*|[|A,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> then as
      <math|B<big|cap>\<bbb-R\>=B> we have by <reference|borel algebra on the
      extended reals (3)> that <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>,
      so as <math|><math|<around*|(|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|)>\<in\><wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>
      it follows that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>, which
      proves that <math|<around*|(|f:A\<rightarrow\>\<bbb-R\>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>

      <item>If <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      then by <reference|borel algebra on the extended reals (3)>
      <math|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> and as
      <math|><math|<around*|(|f:A\<rightarrow\>\<bbb-R\>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>
      we have that <math|f<rsup|-1><around*|(|B<big|cap>\<bbb-R\>|)>\<in\>\<cal-A\>>,
      further <math|f<rsup|-1><around*|(|B<big|cap>\<bbb-R\>|)>\<equallim\><rsub|<text|<reference|image
      (preimage) of union , intersections>>>f<rsup|-1><around*|(|B|)><big|cap>f<rsup|-1><around*|(|\<bbb-R\>|)>=f<rsup|-1><around*|(|B|)><big|cap>A=f<rsup|-1><around*|(|B|)>>.
      So that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>> which proves
      that <math|<around*|(|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|)>\<in\><wide|\<cal-M\>|\<wide-bar\>><around*|[|\<bbb-R\>|]>>.
    </enumerate>
  </proof>

  The following definition will be used to find a alternative condition for a
  (extended) real function to be <math|\<cal-A\>>-measurable.

  <\definition>
    Let <math|X> be a set then we define

    <\enumerate>
      <item>If <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,<math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      then given <math|x\<in\>\<bbb-R\>> we define\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|f\<less\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|[>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<less\>x|}>>>|<row|<cell|<around*|{|f\<leqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<leqslant\>x|}>>>|<row|<cell|<around*|{|f\<gtr\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>=<around*|{|t\<in\>X\|x\<less\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<geqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|x,\<infty\>|]>|)>=<around*|{|t\<in\>X\|x\<leqslant\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f=x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|{|x|}>|)>=<around*|{|t\<in\>X\|x=f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<leqslant\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f\<less\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f=g|}>>|<cell|\<equallim\>-def>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>>>>>
      </eqnarray*>

      <item>If <math|f:X\<rightarrow\>\<bbb-R\>>,
      <math|g:X\<rightarrow\>\<bbb-R\>> then given <math|x\<in\>\<bbb-R\>> we
      define

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|f\<less\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|[>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<less\>x|}>>>|<row|<cell|<around*|{|f\<leqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<leqslant\>x|}>>>|<row|<cell|<around*|{|f\<gtr\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>=<around*|{|t\<in\>X\|x\<less\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<geqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>=<around*|{|t\<in\>X\|x\<leqslant\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f=x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|{|x|}>|)>=<around*|{|t\<in\>X\|x=f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<leqslant\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f\<less\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f=g|}>>|<cell|\<equallim\>-def>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>>>>>
      </eqnarray*>
    </enumerate>
  </definition>

  <\lemma>
    <label|{x\<less\>f} properties>Let <math|X> be a set,
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> \ and
    <math|x\<in\>X> then\ 

    <\enumerate>
      <item><math|<around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>

      <item><math|X\\<around*|{|f\<geqslant\>x|}>=<around*|{|f\<less\>x|}>>

      <item><math|<around*|{|f\<leqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>

      <item><math|X\\<around*|{|f\<leqslant\>x|}>=<around*|{|f\<gtr\>x|}>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|n\<in\>\<bbb-N\>> then if
      <math|t\<in\><around*|{|f\<geqslant\>x|}>> we have that
      <math|x\<leqslant\>f<around*|(|t|)>\<Rightarrowlim\><rsub|x\<in\>\<bbb-R\>>x-<frac|1|n>\<less\>f<around*|(|t|)>\<Rightarrow\>t\<in\><around*|{|x-<frac|1|n>\<less\>f|}>>
      proving\ 

      <\equation>
        <label|eq 18.306.033><around*|{|f\<geqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation>

      If <math|t\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|x-<frac|1|n>\<less\>f<around*|(|t|)>>. Assume that
      <math|f<around*|(|t|)>\<less\>x> then by
      <reference|x\<less\>y=\<gtr\>x+1/n\<less\>y> we have that
      <math|f<around*|(|t|)>+<frac|1|n>\<less\>x\<Rightarrowlim\><rsub|x\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x-<frac|1|n>>
      a contradiction so we must have <math|x\<leqslant\>f<around*|(|t|)>> or
      <math|t\<in\><around*|{|f\<geqslant\>|}>>. So
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<subseteq\><around*|{|f\<geqslant\>x|}>>.
      Combining this with <reference|eq 18.306.033> proves\ 

      <\equation*>
        <around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation*>

      <item><math|X\\<around*|{|f\<geqslant\>x|}>=X\\f<rsup|-1><around*|(|<around*|[|x,\<infty\>|]>|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>|)>f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|[>|)>=<around*|{|f\<less\>x|}>>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
      <math|t\<in\><around*|{|f\<leqslant\>x|}>> we have that
      <math|f<around*|(|t|)>\<leqslant\>x\<Rightarrowlim\><rsub|x\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x+<frac|1|n>>
      or <math|t\<in\><around*|{|f\<less\>x+<frac|1|n>|}>>. So\ 

      <\equation>
        <label|eq 18.307.033><around*|{|f\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>
      </equation>

      Let <math|t\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|f<around*|(|t|)>\<less\>x+<frac|1|n>>. Assume that
      <math|f<around*|(|t|)>\<gtr\>x> then by
      <reference|x\<less\>y=\<gtr\>x+1/n\<less\>y> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x+<frac|1|n>\<less\>f<around*|(|t|)>> a contradiction hence
      <math|f<around*|(|t|)>\<leqslant\>x> or
      <math|t\<in\><around*|{|f\<leqslant\>x|}>>. Combining this with
      <reference|eq 18.307.033> proves that\ 

      <\equation*>
        <around*|{|f\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>
      </equation*>

      <item><math|X\\<around*|{|f\<leqslant\>x|}>=X\\f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>|)>=f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>=<around*|{|x\<less\>f|}>>

      \;
    </enumerate>

    \;
  </proof>

  <\theorem>
    <label|measurable function condition (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable set,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    then we have the following equivalences:

    <\enumerate>
      <item>f is <math|\<cal-A\>>-measurable

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<gtr\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Take <math|x\<in\>\<bbb-R\>> then
      <math|<around*|]|x,\<infty\>|]>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>\<equallim\><rsub|<text|<reference|borel
      algebra on the extended reals (3)>>>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      we have as <math|f> is <math|\<cal-A\>>-measurable that
      <math|<around*|{|f\<gtr\>x|}>=f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>\<in\>\<cal-A\>>

      <item*|<math|2\<Rightarrow\>1>>As <math|\<forall\>x\<in\>\<bbb-R\>> we
      have <math|f<rsup|-1><around*|(|<around*|]|a,\<infty\>|]>|)>=<around*|{|f\<gtr\>x|}>\<in\>\<cal-A\>>,
      it follows from <reference|measurable functions and generated algebra>
      and <math|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>=\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      that <math|f> is <math|\<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>-measurable
      or in other words <math|f> is <math|\<cal-A\>>-measurable.

      <item*|<math|2\<Rightarrow\>3>>Let <math|x\<in\>\<bbb-R\>> then using
      (2) we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<around*|{|f\<gtr\>x-<frac|1|n>|}>\<in\>\<cal-A\>> hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<in\>\<cal-A\>>.
      Using <reference|{x\<less\>f} properties>
      \ <math|<around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>
      proving that <math|<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>.

      <item*|<math|3\<Rightarrow\>4>>Let <math|x\<in\>\<bbb-R\>> then
      <math|<around*|{|f\<less\>x|}>\<equallim\><rsub|<text|<reference|{x\<less\>f}
      properties>>>A\\<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>> [as
      <math|A,<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>, together with
      <reference|properties of algebras>]\ 

      <item*|<math|4\<Rightarrow\>5>>Let <math|x\<in\>\<bbb-R\>> then by (4)
      we have that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<around*|{|f\<less\>x+<frac|1|n>|}>\<in\>\<cal-A\>> hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>\<in\>\<cal-A\>>.
      Using <reference|{x\<less\>f} properties>
      <math|<around*|{|f\<leqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>
      proving that <math|<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item*|<math|5\<Rightarrow\>1>>Let <math|x\<in\>\<bbb-R\>> then
      <math|<around*|{|x\<less\>f|}>\<equallim\><rsub|<text|<reference|{x\<less\>f}
      properties>>>A\\<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>> [as
      <math|A\<in\>\<cal-A\>> together with <reference|properties of
      algebras>]
    </description>
  </proof>

  We have a simular result for real functions and the proofs are essentially
  the same with the execption of some details.

  <\lemma>
    <label|{x\<less\>f} properties (1)>Let <math|X> be a set,
    <math|f:X\<rightarrow\>\<bbb-R\>> \ and <math|x\<in\>X> then\ 

    <\enumerate>
      <item><math|<around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>

      <item><math|X\\<around*|{|f\<geqslant\>x|}>=<around*|{|f\<less\>x|}>>

      <item><math|<around*|{|f\<leqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>

      <item><math|X\\<around*|{|f\<leqslant\>x|}>=<around*|{|f\<gtr\>x|}>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|n\<in\>\<bbb-N\>> then if
      <math|t\<in\><around*|{|f\<geqslant\>x|}>> we have that
      <math|x\<leqslant\>f<around*|(|t|)>\<Rightarrowlim\>x-<frac|1|n>\<less\>f<around*|(|t|)>\<Rightarrow\>t\<in\><around*|{|f\<gtr\>x-<frac|1|n>|}>>
      proving\ 

      <\equation>
        <label|eq 18.308.033><around*|{|f\<geqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation>

      If <math|t\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|x-<frac|1|n>\<less\>f<around*|(|t|)>>. Assume that
      <math|f<around*|(|t|)>\<less\>x> then by <reference|consequence of the
      archimedean property for the reals> we have that
      <math|f<around*|(|t|)>+<frac|1|n>\<less\>x\<Rightarrowlim\>f<around*|(|t|)>\<less\>x-<frac|1|n>>
      a contradiction so we must have <math|x\<leqslant\>f<around*|(|t|)>> or
      <math|t\<in\><around*|{|f\<geqslant\>x|}>>. So
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<subseteq\><around*|{|f\<geqslant\>x|}>>.
      Combining this with <reference|eq 18.308.033> proves\ 

      <\equation*>
        <around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation*>

      <item><math|X\\<around*|{|f\<geqslant\>x|}>=X\\f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|\<bbb-R\>\\<around*|[|x,\<infty\>|[>|)>=f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|[>|)>=<around*|{|f\<less\>x|}>>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
      <math|t\<in\><around*|{|f\<leqslant\>x|}>> we have that
      <math|f<around*|(|t|)>\<leqslant\>x\<Rightarrowlim\>f<around*|(|t|)>\<less\>x+<frac|1|n>>
      or <math|t\<in\><around*|{|f\<less\>x+<frac|1|n>|}>>. So\ 

      <\equation>
        <label|eq 18.309.033><around*|{|f\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>
      </equation>

      Let <math|t\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have that
      <math|f<around*|(|t|)>\<less\>x+<frac|1|n>>. Assume that
      <math|x\<less\>f<around*|(|t|)>> then by <reference|consequence of the
      archimedean property for the reals> there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|x+<frac|1|n>\<less\>f<around*|(|t|)>> a contradiction hence
      <math|f<around*|(|t|)>\<leqslant\>x> or
      <math|t\<in\><around*|{|f\<leqslant\>x|}>>. Combining this with
      <reference|eq 18.309.033> proves that\ 

      <\equation*>
        <around*|{|f\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>
      </equation*>

      <item><math|X\\<around*|{|f\<leqslant\>x|}>=X\\f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>\<equallim\><rsub|<text|<reference|properties
      of image and preimage>>>f<rsup|-1><around*|(|\<bbb-R\>\\<around*|]|-\<infty\>,x|]>|)>=f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>=<around*|{|f\<gtr\>x|}>>

      \;
    </enumerate>
  </proof>

  <\theorem>
    <label|measurable function condition (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable set,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\>\<bbb-R\>> then we
    have the following equivalences:

    <\enumerate>
      <item>f is <math|\<cal-A\>>-measurable

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<gtr\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<less\>x|}>\<in\>\<cal-A\>>

      <item><math|\<forall\>x\<in\>\<bbb-R\>> we have
      <math|<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>
    </enumerate>
  </theorem>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Take <math|x\<in\>\<bbb-R\>> then
      <math|<around*|]|x,\<infty\>|[>\<in\>\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<equallim\><rsub|<text|<reference|Borel
      algebras on R>>>\<cal-B\><around*|[|\<bbb-R\>|]>> we have as <math|f>
      is <math|\<cal-A\>>-measurable that
      <math|<around*|{|f\<gtr\>x|}>=f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>\<in\>\<cal-A\>>

      <item*|<math|2\<Rightarrow\>1>>As <math|\<forall\>x\<in\>\<bbb-R\>> we
      have <math|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>=<around*|{|f\<gtr\>x|}>\<in\>\<cal-A\>>,
      it follows from <reference|measurable functions and generated algebra>
      and <math|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|[>\|a\<in\>\<bbb-R\>|}>|]>\<equallim\><rsub|<text|<reference|Borel
      algebras on R>>>\<cal-B\><around*|[|\<bbb-R\>|]>> that <math|f> is
      <math|\<cal-A\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable or in
      other words <math|f> is <math|\<cal-A\>>-measurable.

      <item*|<math|2\<Rightarrow\>3>>Let <math|x\<in\>\<bbb-R\>> then using
      (2) we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<around*|{|x-<frac|1|n>\<less\>f|}>\<in\>\<cal-A\>> hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x-<frac|1|n>\<less\>f|}>\<in\>\<cal-A\>>.
      Using <reference|{x\<less\>f} properties (1)>
      <math|<around*|{|x\<leqslant\>f|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x-<frac|1|n>\<less\>f|}>>
      proving that <math|<around*|{|x\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item*|<math|3\<Rightarrow\>4>>Let <math|x\<in\>\<bbb-R\>> then
      <math|<around*|{|f\<less\>x|}>\<equallim\><rsub|<text|<reference|{x\<less\>f}
      properties (1)>>>A\\<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>> [as
      <math|A,<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>, \ together with
      <reference|properties of algebras>]\ 

      <item*|<math|4\<Rightarrow\>5>>Let <math|x\<in\>\<bbb-R\>> then by (4)
      we have that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> that
      <math|<around*|{|f\<less\>x+<frac|1|n>|}>\<in\>\<cal-A\>> hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>\<in\>\<cal-A\>>.
      Using <reference|{x\<less\>f} properties (1)>
      <math|<around*|{|f\<leqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>
      proving that <math|<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>>

      <item*|<math|5\<Rightarrow\>1>>Let <math|x\<in\>\<bbb-R\>> then
      <math|<around*|{|f\<gtr\>x|}>\<equallim\><rsub|<text|<reference|{x\<less\>f}
      properties (1)>>>A\\<around*|{|f\<leqslant\>x|}>\<in\>\<cal-A\>> [as
      <math|A\<in\>\<cal-A\>> together with <reference|properties of
      algebras>]
    </description>
  </proof>

  <subsection|Example of measurable functions>

  <\example>
    <label|null function is measurable><math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces
    then <math|\<emptyset\>:\<emptyset\>\<rightarrow\>Y> is
    <math|\<cal-A\>,\<cal-B\>>-measurable.
  </example>

  <\proof>
    Let <math|B\<in\>\<cal-B\>> then as <math|\<emptyset\><rsup|-1><around*|(|B|)>\<equallim\><rsub|<text|<reference|image
    and inverse image>>><around*|{|x\<in\>\<emptyset\>\|\<exists\>y\<in\>Y\<vdash\><around*|(|x,y|)>\<in\>\<emptyset\>|}>=\<emptyset\>\<in\>\<cal-A\>>
  </proof>

  <\example>
    <label|continuous functions are measurable (4)>Let
    <math|<around*|\<langle\>|X,\<cal-T\>|\<rangle\>>> be a topological set,
    <math|U> a open set then\ 

    <\enumerate>
      <item>If <math|f:U\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      contiuous [using the subspace topolgy
      <math|\<cal-T\><rsub|U>=<around*|{|V<big|cap>U\|V\<in\>\<cal-T\>|}>>
      [see \ <reference|subspace topology>]] \ then <math|f> is Borel
      measurable [more specific <math|f> is
      <math|\<cal-B\><around*|[|X,\<cal-T\>|]>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>-measurable].

      <item>If <math|f:U\<rightarrow\>\<bbb-R\>> is continuous \ [using the
      subspace topolgy <math|\<cal-T\><rsub|U>=<around*|{|V<big|cap>U\|V\<in\>\<cal-T\>|}>>
      [see <reference|subspace topology>]] \ then <math|f> is Borel
      measurable [more specific <math|f> is
      <math|\<cal-B\><around*|[|X,\<cal-T\>|]>,\<cal-T\><rsub|\<bbb-R\>>>-measurable].
    </enumerate>
  </example>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|V\<in\>\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>
      then by continuity we have that <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|U>>,
      so there exists a <math|W\<in\>\<cal-T\>> such that
      <math|f<rsup|-1><around*|(|V|)>=W<big|cap>U\<in\>\<cal-T\>> [as
      <math|U,W\<in\>\<cal-T\>>], hence <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>>.
      Finally using <reference|measurable functions and generated algebra> it
      follow that <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\>|]>,\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>>-measurable.

      <item>Let <math|V\<in\>\<cal-T\><rsub|\<bbb-R\>>> then by continuity we
      have that <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\><rsub|U>>, so
      there exists a <math|W\<in\>\<cal-T\>> such that
      <math|f<rsup|-1><around*|(|V|)>=W<big|cap>U\<in\>\<cal-T\>> [as
      <math|U,W\<in\>\<cal-T\>>] hence <math|f<rsup|-1><around*|(|V|)>\<in\>\<cal-T\>\<subseteq\>\<cal-B\><around*|[|X,\<cal-T\>|]>>.
      Finally using <reference|measurable functions and generated algebra> it
      follow that <math|f> is <math|\<cal-B\><around*|[|X,\<cal-T\>|]>,\<cal-T\><rsub|\<bbb-R\>>>-measurable.
    </enumerate>
  </proof>

  <\example>
    <label|characteristic function is measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> then\ 

    <\enumerate>
      <item><math|\<cal-X\><rsub|A>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|\<cal-X\><rsub|A><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1
      if x\<in\>A>>|<row|<cell|0 if x\<in\>X\\A>>>>>> [the characteristic
      function [see <reference|characteristics function>]] is Borel
      measurable.

      <item><math|\<cal-X\><rsub|A>:X\<rightarrow\>\<bbb-R\>> defined by
      <math|\<cal-X\><rsub|A><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|1
      if x\<in\>A>>|<row|<cell|0 if x\<in\>X\\A>>>>>> [the characteristic
      function [see <reference|characteristics function>]] is Borel
      measurable.
    </enumerate>
  </example>

  <\proof>
    \ The proof is the same for the two cases. Let <math|x\<in\>\<bbb-R\>>
    then we must consider two cases:

    <\description>
      <item*|<math|1\<leqslant\>x>>then if
      <math|t\<in\><around*|{|x\<less\>\<cal-X\><rsub|A>|}>> we have
      <math|1\<leqslant\>\<cal-X\><rsub|A><around*|(|t|)>> and we must have
      <math|\<cal-X\><around*|(|t|)>=1> or <math|t\<in\>A> proving that
      <math|<around*|{|x\<leqslant\>\<cal-X\><rsub|A>|}>\<subseteq\>A>.
      Further if <math|t\<in\>A> then <math|\<cal-X\><rsub|A><around*|(|t|)>=1\<geqslant\>1>
      so that <math|A\<subseteq\><around*|{|x\<less\>\<cal-X\><rsub|A>|}>>.
      Hence <math|><math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>=A\<in\>\<cal-A\>>

      <item*|<math|x\<less\>1>>then if <math|t\<in\><around*|{|x\<less\>\<cal-X\><rsub|A>|}>>
      we have <math|\<cal-X\><rsub|A><around*|(|t|)>\<less\>1> and we must
      have <math|\<cal-X\><around*|(|t|)>=0> or <math|t\<in\>X\\A> proving
      that <math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>\<subseteq\>X\\A>.
      Further if <math|t\<in\>X\\A> then <math|\<cal-X\><rsub|A><around*|(|t|)>=0\<less\>1>
      so that <math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>\<subseteq\>X\\A>.
      Hence <math|><math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>=X\\A\<in\>\<cal-A\>>.
    </description>

    As in all cases <math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>\<in\>\<cal-A\>>
    we have by <reference|measurable function condition (1)> (for (1)) [or
    <reference|measurable function condition (2)> for (2)].
  </proof>

  <\definition>
    <label|simple function>Let <math|X> be a set then a function
    <math|f\<of\>X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is a
    <with|font-series|bold|simple function> if <math|f<around*|(|X|)>> is
    finite and not empty.
  </definition>

  <\example>
    <label|simple functions are measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a simple
    function then <math|f> is <math|\<cal-A\>>-measurable if
    <math|\<forall\>y\<in\>f<around*|(|X|)>> we have that
    <math|<around*|{|f=y|}>=f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>>
  </example>

  <\proof>
    As <math|f> is a simple function we have that <math|f<around*|(|A|)>> is
    finite and not empty.. Let <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    then <math|f<rsup|-1><around*|(|B<big|cap>f<around*|(|A|)>|)>\<equallim\><rsub|<text|<reference|image
    (preimage) of union , intersections>>>f<rsup|-1><around*|(|B|)><big|cap>f<rsup|-1><around*|(|f<around*|(|A|)>|)>=f<rsup|-1><around*|(|B|)><big|cap>A=f<rsup|-1><around*|(|B|)>>
    proving that\ 

    <\equation>
      <label|eq 18.310.033>f<rsup|-1><around*|(|B<big|cap>f<around*|(|A|)>|)>=f<rsup|-1><around*|(|B|)>
    </equation>

    As <math|f<around*|(|A|)>> is finite we have that
    <math|B<big|cap>f<around*|(|A|)>> is finite, so we have either\ 

    <\description>
      <item*|<math|B<big|cap>f<around*|(|A|)>=\<emptyset\>>>then
      <math|f<rsup|-1><around*|(|B|)>\<equallim\><rsub|<text|<reference|eq
      18.310.033>>>f<rsup|-1><around*|(|B<big|cap>f<around*|(|A|)>|)>=f<rsup|-1><around*|(|\<emptyset\>|)>=\<emptyset\>\<in\>\<cal-A\>>

      <item*|<math|B<big|cap>f<around*|(|A|)>\<neq\>\<emptyset\>>>then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<rsup|-1><around*|(|B|)>>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.310.033>>>>|<cell|f<rsup|-1><around*|(|B<big|cap>f<around*|(|A|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<big|cup><rsub|y\<in\>B<big|cap>f<around*|(|A|)>><around*|{|y|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|cup><rsub|y\<in\>B<big|cap>f<around*|(|A|)>>f<rsup|-1><around*|(|<around*|{|y|}>|)>>>>>
      </eqnarray*>

      which as <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>>
      and <math|B<big|cap>f<around*|(|A|)>> is finite proves by
      <reference|properties of algebras> that
      <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
    </description>

    So in all cases we have that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>
    proving that <math|f> is <math|\<cal-A\>>-measurable.
  </proof>

  <subsection|Properties of measurable functions>

  <\proposition>
    <label|function comparizatons are measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and let <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    and <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be
    <math|\<cal-A\>>-measurable functions then\ 

    <\enumerate>
      <item><math|<around*|{|f\<less\>g|}>\<in\>\<cal-A\>>

      <item><math|<around*|{|f\<leqslant\>f|}>\<in\>\<cal-A\>>

      <item><math|<around*|{|f=g|}>\<in\>\<cal-A\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|t\<in\><around*|{|f\<less\>q|}>> then
      <math|f<around*|(|t|)>\<less\>g<around*|(|t|)>>. Using the density of
      the rational numbers in the extended real numbers [see
      <reference|density of the extented reals>] there exists a
      <math|q\<in\>\<bbb-Q\>> such that <math|f<around*|(|t|)>\<less\>q\<less\>g<around*|(|t|)>>
      or <math|t\<in\><around*|{|f\<less\>q|}>\<wedge\>t\<in\><around*|{|g\<gtr\>q|}>>.
      So we have\ 

      <\equation>
        <label|eq 18.311.033><around*|{|f\<less\>g|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>
      </equation>

      If <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>>
      then <math|\<exists\>q\<in\>\<bbb-Q\>> such that
      <math|t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>\<Rightarrow\>f<around*|(|t|)>\<less\>q\<less\>g<around*|(|t|)>\<Rightarrow\>f<around*|(|t|)>\<less\>g<around*|(|t|)>\<Rightarrow\>t\<in\><around*|{|f\<less\>g|}>>.
      So we have <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>\<subseteq\><around*|{|f\<less\>g|}>>.
      Combining this with <reference|eq 18.311.033> we have\ 

      <\equation>
        <label|eq 18.312.033><around*|{|f\<less\>g|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>
      </equation>

      As <math|\<forall\>q\<in\>\<bbb-Q\>> we have by <reference|measurable
      function condition (1)> that <math|<around*|{|f\<less\>q|}>,<around*|{|g\<gtr\>q|}>\<in\>\<cal-A\>=<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>\<in\>\<cal-A\>>,
      <math|Q> is denumerable [see <reference|The rational numbers are
      denumerable>] we have by <reference|sigma algebra equivalent
      definitions> that <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>\<in\>\<cal-A\>>.
      Hence by <reference|eq 18.312.033> we conclude that\ 

      <\equation*>
        <around*|{|f\<less\>g|}>\<in\>\<cal-A\>
      </equation*>

      <item>Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|(|X\\<around*|{|g\<less\>f|}>|)>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>\<neg\><around*|(|g<around*|(|t|)>\<less\>f<around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<leqslant\>g<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<leqslant\>g|}>>>>>
      </eqnarray*>

      proving that <math|X\\<around*|{|g\<less\>f|}>=<around*|{|f\<leqslant\>g|}>>.
      Using <math|<around*|(|1|)>> we have
      <math|<around*|{|g\<less\>f|}>\<in\>\<cal-A\>> hence
      <math|X\\<around*|{|g\<less\>f|}>\<in\>\<cal-A\>> which proves that

      <\equation*>
        <around*|{|f\<leqslant\>g|}>\<in\>\<cal-A\>
      </equation*>

      <item>Now\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|(|<around*|{|f\<leqslant\>g|}>\\<around*|{|f\<less\>g|}>|)>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<leqslant\>g|}>\<wedge\>t\<nin\><around*|{|f\<less\>g|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<leqslant\>g<around*|(|t|)>\<wedge\>\<neg\><around*|(|f<around*|(|t|)>\<less\>g<around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<leqslant\>g<around*|(|t|)>\<wedge\>g<around*|(|t|)>\<leqslant\>f<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>=g<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f=g|}>>>>>
      </eqnarray*>

      proving that <math|<around*|{|f=g|}>=<around*|{|f\<leqslant\>g|}>\\<around*|{|f\<gtr\>g|}>\<in\>\<cal-A\>>
      [using (1), (2) and <reference|properties of algebras>].
    </enumerate>
  </proof>

  <\definition>
    Let <math|X> be a set and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> then\ 

    <\enumerate>
      <item><math|f\<wedge\>g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is defined by <math|<around*|(|f\<wedge\>g|)><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>

      <item><math|f\<vee\>g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      defined by <math|<around*|(|f\<vee\>g|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
    </enumerate>
  </definition>

  <\definition>
    Let <math|X> be a set, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    a sequence of functions then we define

    <\enumerate>
      <item><math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:X-<wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|sup|n>f<rsub|n>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item><math|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:X-<wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|inf|n>f<rsub|n>|)><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\>=\<bbb-R\>>
      where <math|<around*|(|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\>=\<bbb-R\>>
      where <math|<around*|(|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item>If <math|\<forall\>x\<in\>X> <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      exists then we define <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>\<of\>\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      by <math|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    </enumerate>
  </definition>

  <\lemma>
    <label|liminf or limsup of functions>Let <math|X> be a set,
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    a sequence of functions then

    <\enumerate>
      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|inf|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>g<rsub|n>>
      where <math|g<rsub|n>=<below|sup|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>>

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|sup|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>h<rsub|n>>
      where <math|h<rsub|n>=<below|inf|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X>. If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|g<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|k><around*|(|x|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|f<rsub|k><around*|(|x|)>\|k\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|g<rsub|n><around*|(|x|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|inf|n\<in\><around*|{|1,\<ldots\>,n|}>>g<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|inf|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>g<rsub|n>
      </equation*>

      <item>Let <math|x\<in\>X>. If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|h<rsub|n><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|k><around*|(|x|)>\|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|k><around*|(|x|)>\|k\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|inf|n\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|sup|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>g<rsub|n>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\proposition>
    <label|measurable functions properties (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|A\<in\>\<cal-A\>> be a measurable space and
    <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be
    <math|\<cal-A\>>-measurable functions then\ 

    <\enumerate>
      <item><math|f\<wedge\>g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.

      <item><math|f\<vee\>g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      <math|\<cal-A\>>-measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>We have Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|<around*|(|f\<wedge\>g|)>\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|f<around*|(|t|)>,g<around*|(|t|)>|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<less\>x\<wedge\>g<around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<less\>x|}>\<wedge\>t\<in\><around*|{|g\<less\>x|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|(|<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>|)>>>>>
      </eqnarray*>

      proving that <math|<around*|{|<around*|(|f\<wedge\>g|)>\<less\>x|}>=<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>>.
      As by <reference|measurable function condition (1)>
      <math|<around*|{|f\<less\>x|}>,<around*|{|g\<less\>x|}>\<in\>\<cal-A\>>
      it follows that <math|><math|<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> again proves that
      <math|f\<wedge\>g> is <math|\<cal-A\>>-measurable.

      <item>We have Let <math|x\<in\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|<around*|(|f\<vee\>g|)>\<gtr\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|min<around*|(|f<around*|(|t|)>,g<around*|(|t|)>|)>\<gtr\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<gtr\>x\<wedge\>g<around*|(|t|)>\<gtr\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>x|}>\<wedge\>t\<in\><around*|{|g\<gtr\>x|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|(|<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>|)>>>>>
      </eqnarray*>

      proving that <math|<around*|{|<around*|(|f\<wedge\>g|)>\<gtr\>x|}>=<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>>.
      As by <reference|measurable function condition (1)>
      <math|<around*|{|f\<gtr\>x|}>,<around*|{|g\<gtr\>x|}>\<in\>\<cal-A\>>
      it follows that <math|><math|<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> again proves that
      <math|f\<vee\>g> is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proof>

  <\proposition>
    <label|measurable functions properties (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|<around*|{|f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    a sequence of functions that are <math|\<cal-A\>>-measurable then we
    have:

    <\enumerate>
      <item>If <math|k\<in\>\<bbb-N\><rsub|0 ><text| then
      ><below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.

      <item>If <math|k\<in\>\<bbb-N\><rsub|0><text| then
      ><below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.

      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable

      <item><math|D=<around*|{|x\<in\>A\|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>|}>\<in\>\<cal-A\>>
      [this is the set where by <reference|definition of limit in the
      extented reals> <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>> is
      defined] and <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>:D\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>>. If
      <math|t\<in\><around*|{|<around*|(|<below|sup|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>>
      then <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|t|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>.
      So <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|f<rsub|n><around*|(|t|)>\<leqslant\>x\<Rightarrow\>t\<in\><around*|{|f<rsub|n>\<leqslant\>x|}>>.
      Hence\ 

      <\equation>
        <label|eq 18.133.033><around*|{|<around*|(|<below|sup|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>
      </equation>

      If <math|t\<in\><big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>>
      we have <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      that <math|t\<in\><around*|{|f<rsub|n>\<leqslant\>x|}>\<Rightarrow\>f<rsub|n><around*|(|t|)>\<leqslant\>x>.
      Assume that <math|x\<less\>sup<around*|(|<around*|{|f<rsub|n><around*|(|t|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>
      then there exists a <math|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>
      such that <math|x\<less\>f<rsub|n><around*|(|t|)>> leading to the
      contradiction <math|x\<less\>x>. Hence
      <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|t|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>\<leqslant\>x>
      or <math|t\<in\><around*|{|<around*|(|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>>
      proving <math|<big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>\<subseteq\>><math|<around*|{|<around*|(|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>>.
      Combining this with <reference|eq 18.133.033> gives\ 

      <\equation>
        <label|eq 18.314.033><around*|{|<around*|(|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>=<big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>
      </equation>

      As <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,n|}>> <math|f<rsub|n>>
      is <math|\<cal-A\>>-measurable, hence
      <math|<around*|{|f<rsub|n>\<leqslant\>x|}>\<in\>\<cal-A\>>, applying
      then <reference|sigma algebra equivalent definitions> proves
      <math|<big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>\<in\>\<cal-A\>>
      or using <reference|eq 18.314.033> that
      <math|><math|<around*|{|<around*|(|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>>.
      Using <reference|measurable function condition (1)> it follows that\ 

      <\equation*>
        <below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item>Let <math|x\<in\>\<bbb-R\>>. If
      <math|t\<in\><around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<less\>x|}>>
      then <math|inf<around*|(|<around*|{|f<rsub|n><around*|(|t|)>\|n\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>\<less\>x>.
      So <math|\<exists\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
      that <math|f<rsub|n><around*|(|t|)>\<less\>x\<Rightarrow\>t\<in\><around*|{|f<rsub|n>\<less\>x|}>>.
      Hence\ 

      <\equation>
        <label|eq 18.315.033><around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<less\>x|}>\<subseteq\><big|cup><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<less\>x|}>
      </equation>

      If <math|t\<in\><big|cup><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<less\>x|}>>
      then <math|\<exists\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> such
      that <math|t\<in\><around*|{|f<rsub|n>\<less\>x|}>\<Rightarrow\>f<rsub|n><around*|(|t|)>\<less\>x>,
      hence <math|inf<around*|(|<around*|{|f<rsub|n><around*|(|t|)>\|n\<in\><around*|{|k,\<ldots\>,n|}>|}>|)>\<leqslant\>f<rsub|n><around*|(|t|)>\<less\>x>,
      proving that <math|t\<in\><around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<less\>x|}>>.
      So <math|<big|cup><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<less\>x|}>\<subseteq\><around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<less\>x|}>>
      which by <reference|eq 18.315.033> gives

      <\equation>
        <label|eq 18.316.033><around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<less\>x|}>=<big|cup><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<less\>x|}>
      </equation>

      As <math|\<forall\>n\<in\><around*|{|k,\<ldots\>,n|}>> <math|f<rsub|n>>
      is <math|\<cal-A\>>-measurable, hence
      <math|<around*|{|f<rsub|n>\<less\>x|}>\<in\>\<cal-A\>>, applying then
      <reference|sigma algebra equivalent definitions> proves
      <math|<big|cup><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<less\>x|}>\<in\>\<cal-A\>>
      or using <reference|eq 18.314.033> that
      <math|><math|<around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>>.
      Using <reference|measurable function condition (1)> it follows that\ 

      <\equation*>
        <below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have by
      <math|<around*|(|1|)>> that \ <math|g<rsub|n>=<below|sup|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>>
      is <math|\<cal-A\>>-measurable. Using (2) we have then that
      <math|<below|inf|n\<in\><around*|{|1,\<ldots\>,n|}>>g<rsub|n>> is
      <math|\<cal-A\>>-measurable. As <math|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>\<equallim\><rsub|<text|<reference|liminf
      or limsup of functions>>><below|inf|n\<in\><around*|{|1,\<ldots\>,n|}>>g<rsub|n>>
      we have proved that\ 

      <\equation*>
        <below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have by
      <math|<around*|(|2|)>> that \ <math|h<rsub|n>=<below|inf|k\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|n>>
      is <math|\<cal-A\>>-measurable. Using (1) we have then that
      <math|<below|sup|n\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|n>> is
      <math|\<cal-A\>>-measurable. As <math|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>\<equallim\><rsub|<text|<reference|liminf
      or limsup of functions>>><below|sup|n\<in\><around*|{|1,\<ldots\>,n|}>>h<rsub|n>>
      we have proved that\ 

      <\equation*>
        <below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item>As by (3),(4) <math|><math|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>> and <math|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>> are
      <math|\<cal-A\>>-measurable. Further
      <math|D=<around*|{|x\<in\>A\|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>|}>=<around*|{|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|}>\<in\>\<cal-A\>> [see
      <reference|function comparizatons are measurable>] proving that\ 

      <\equation>
        <label|eq 18.317.033>D\<in\>\<cal-A\>
      </equation>

      Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\>D<big|cap><around*|{|<around*|(|<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)>\<leqslant\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>D\<wedge\><around*|(|<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|t|)>\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|t\<in\>D\<Rightarrow\><below|lim|n\<rightarrow\>\<infty\>>f<rsub|m><around*|(|t|)>=<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|t|)>>>|<cell|t\<in\>D\<wedge\><around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|t|)>\<leqslant\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)>\<leqslant\>x|}>>>>>
      </eqnarray*>

      which proves that <math|><math|<around*|{|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)>\<leqslant\>x|}>=D<big|cap><around*|{|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)>\<leqslant\>x|}>\<in\>\<cal-A\>>
      [as <math|D\<in\>\<cal-A\>> and <math|<around*|{|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)>\<leqslant\>x|}>\<in\>\<cal-A\>>
      [see <reference|measurable function condition (1)>]]. Finally using
      <reference|measurable function condition (1)> it follows that

      <\equation*>
        <below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>:D\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>
        is \<cal-A\><text|-measurable>
      </equation*>
    </enumerate>
  </proof>

  <\proposition>
    <label|measurable functions properties (3)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>>, <math|\<alpha\>\<in\>\<bbb-R\><rsub|+>> and
    <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    <math|\<cal-A\>>-measurable functions such that
    <math|f<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>> and
    <math|g<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>> then\ 

    <\enumerate>
      <item><math|f+g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> defined
      by <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      is <math|\<cal-A\>>-measurable\ 

      <item><math|\<alpha\>\<cdot\>f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      is <math|\<cal-A\>>-measurable
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>>. If
      <math|t\<in\><around*|{|f+g\<less\>x|}>> then
      <math|f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<Rightarrowlim\><rsub|0\<leqslant\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<Rightarrow\>g<around*|(|t|)>\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>
      and using <reference|density of the extented reals> there exists a
      <math|q\<in\>\<bbb-Q\>> such that <math|f<around*|(|t|)>\<less\>q\<less\>x-g<around*|(|t|)>\<Rightarrow\>f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>>.
      Hence\ 

      <\equation>
        <label|eq 18.318.033><around*|{|f+g\<less\>x|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
      </equation>

      Further if <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>>
      there exists a <math|q\<in\>\<bbb-Q\>> such that
      <math|t\<in\><around*|{|f\<less\>q|}>\<wedge\>t\<in\><around*|{|g\<less\>x-q|}>>
      or <math|f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrowlim\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>q+x-q=x>,
      hence <math|t\<in\><around*|{|f+g|}>\<less\>x>. So
      <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<subseteq\><around*|{|f+g\<less\>x|}>>
      which using <reference|eq 18.318.033> proves that\ 

      <\equation>
        <label|eq 18.319.033><around*|{|f+g\<less\>x|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
      </equation>

      As <math|f,g> are <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>>,
      further, as <math|\<bbb-Q\>> is denumerable [see <reference|The
      rational numbers are denumerable>], we can use <reference|sigma algebra
      equivalent definitions> to conclude that
      <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<in\>\<cal-A\>>.
      Hence using <reference|measurable function condition (1)> it follows
      that\ 

      <\equation*>
        f+g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item>We have two cases to consider for <math|\<alpha\>>:

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<forall\>x\<in\>A>
        <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|A|)>=<around*|{|0|}>>
        proving that <math|\<alpha\>\<cdot\>f> is a simple function and thus
        <math|\<cal-A\>>-measurable [see <reference|simple functions are
        measurable>]

        <item*|<math|0\<less\>\<alpha\>>>Let <math|x\<in\>\<bbb-R\>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|\<alpha\>\<cdot\>f<around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<less\><frac|x|\<alpha\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<less\><frac|x|\<alpha\>>|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|\<alpha\>\<cdot\>f\<less\>x|}>=<around*|{|f\<less\><frac|x|\<alpha\>>|}>\<in\>\<cal-A\>>
        [as <math|f> is <math|\<cal-A\>>-measurable]. Using
        <reference|measurable function condition (1)> we have then that
        <math|f>is <math|\<cal-A\>>-measurable.
      </description>
    </enumerate>
  </proof>

  <\proposition>
    <label|measurable functions properties (4)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|\<alpha\>\<in\>\<bbb-R\>>, <math|A\<in\>\<cal-A\>> and
    <math|f:A\<rightarrow\>\<bbb-R\>>. <math|g:A\<rightarrow\>\<bbb-R\>>
    <math|\<cal-A\>>-measurable functions then we have\ 

    <\enumerate>
      <item><math|f+g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable.

      <item><math|\<alpha\>\<cdot\>f:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      is a <math|\<cal-A\>>-measurable.

      <item><math|f-g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f-g|)><around*|(|x|)>=f<around*|(|x|)>-g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable.

      <item><math|f<rsup|2>:X\<rightarrow\>\<bbb-R\>> defined by
      <math|f<rsup|2><around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|2>>
      is <math|\<cal-A\>>-measurable.

      <item><math|f\<cdot\>g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable.

      <item><math|D=<around*|{|x\<in\>A\|g<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-A\>>
      and <math|<frac|f|g>:D\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|<frac|f|g>|)><around*|(|x|)>=<frac|f<around*|(|x|)>|g<around*|(|x|)>>>
      is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>>. If
      <math|t\<in\><around*|{|f+g\<less\>x|}>> then
      <math|f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<Rightarrowlim\>f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>
      and using <reference|density theorem for the reals> there exists a
      <math|q\<in\>\<bbb-Q\>> such that <math|f<around*|(|t|)>\<less\>q\<less\>x-g<around*|(|t|)>\<Rightarrow\>f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrow\>t\<in\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>>.
      Hence\ 

      <\equation>
        <label|eq 18.320.033><around*|{|f+g\<less\>x|}>\<subseteq\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
      </equation>

      Further if <math|t\<in\><big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>>
      there exists a <math|q\<in\>\<bbb-Q\>> such that
      <math|t\<in\><around*|{|f\<less\>q|}>\<wedge\>t\<in\><around*|{|g\<less\>x-q|}>>
      or <math|f<around*|(|t|)>\<less\>q\<wedge\>g<around*|(|t|)>\<less\>x-q\<Rightarrowlim\>f<around*|(|t|)>+g<around*|(|t|)>\<less\>q+x-q=x>,
      hence <math|t\<in\><around*|{|f+g|}>\<less\>x>. So
      <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<subseteq\><around*|{|f+g\<less\>x|}>>
      which using <reference|eq 18.320.033> proves that\ 

      <\equation>
        <label|eq 18.321.033><around*|{|f+g\<less\>x|}>=<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>
      </equation>

      As <math|f,g> are <math|\<cal-A\>>-measurable we have that
      <math|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>\<in\>\<cal-A\>>,
      further, as <math|\<bbb-Q\>> is denumerable [see <reference|The
      rational numbers are denumerable>], we can use <reference|sigma algebra
      equivalent definitions> to conclude that
      <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<less\>x-q|}>|)>\<in\>\<cal-A\>>.
      Hence using <reference|measurable function condition (1)> it follows
      that\ 

      <\equation*>
        f+g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item>We have to consider the following cases for
      <math|\<alpha\>\<in\>\<bbb-R\>:>

      <\description>
        <item*|<math|\<alpha\>=0>>take <math|x\<in\>\<bbb-R\>> then we have
        either :\ 

        <\description>
          <item*|<math|x\<leqslant\>0>>Then
          \ <math|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>\<Rightarrow\>0=0.f<around*|(|t|)>\<less\>x\<less\>0>
          leading to the contradiction <math|0\<less\>0>. Hence
          <math|<around*|{|\<alpha\>\<cdot\>f\<less\>x|}>=\<emptyset\>\<in\>\<cal-A\>>

          <item*|<math|0\<less\>x>>Then <math|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>\<Leftrightarrow\>0=0.f<around*|(|t|)>\<less\>x>
          proving that <math|<around*|{|\<alpha\>\<cdot\>f\<less\>x|}>=A\<in\>\<cal-A\>>
        </description>

        As in both cases <math|<around*|{|a\<cdot\>f\<less\>x|}>\<in\>\<cal-A\>>
        we have by <reference|measurable function condition (1)> that
        <math|a\<cdot\>f> is <math|\<cal-A\>>-measurable.

        <item*|<math|0\<less\>\<alpha\>>>Let <math|x\<in\>\<bbb-R\>> then
        <math|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>\<Leftrightarrowlim\><rsub|0\<less\>\<alpha\>>\<alpha\>\<cdot\>f<around*|(|t|)>\<less\>x\<Leftrightarrowlim\><rsub|\<alpha\>\<neq\>0>f<around*|(|t|)>\<less\><frac|x|\<alpha\>>\<Leftrightarrow\>t\<in\><around*|{|f\<less\><frac|x|\<alpha\>>|}>>
        proving that <math|<around*|{|a\<cdot\>f\<less\>x|}>=<around*|{|f\<less\><frac|x|\<alpha\>>|}>\<in\>\<cal-A\>>
        [as <math|f> is <math|\<cal-A\>>-measurable and <reference|measurable
        function condition (1)>]. Hence using <reference|measurable function
        condition (1)> it follows that <math|\<alpha\>\<cdot\>f> is
        <math|\<cal-A\>>-measurable.

        <item*|<math|\<alpha\>\<gtr\>0>>Let <math|x\<in\>\<bbb-R\>> then
        <math|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>\<Leftrightarrow\>\<alpha\>\<cdot\>f<around*|(|t|)>\<less\>x\<Leftrightarrowlim\><rsub|\<alpha\>\<less\>0><rsub|>f<around*|(|t|)>\<gtr\><frac|x|\<alpha\>>\<Leftrightarrow\>t\<in\><around*|{|f\<gtr\><frac|x|\<alpha\>>|}>>
        proving that <math|<around*|{|a\<cdot\>f\<less\>x|}>=<around*|{|f\<gtr\><frac|x|\<alpha\>>|}>\<in\>\<cal-A\>>
        [as <math|f> is <math|\<cal-A\>>-measurable and <reference|measurable
        function condition (1)>]. Hence using <reference|measurable function
        condition (1)> it follows that <math|\<alpha\>\<cdot\>f> is
        <math|\<cal-A\>>-measurable.
      </description>

      <item>Let <math|x\<in\>X> then <math|<around*|(|f-g|)><around*|(|x|)>=f<around*|(|x|)>-g<around*|(|x|)>=f<around*|(|x|)>+<around*|(|-1|)>\<cdot\>g<around*|(|x|)>=f<around*|(|x|)>+<around*|(|<around*|(|-1|)>\<cdot\>g|)><around*|(|x|)>=<around*|(|f+<around*|(|-1|)>\<cdot\>g|)><around*|(|x|)>>
      which proves that <math|f+<around*|(|-1|)>\<cdot\>g>. Using (2) we have
      that <math|<around*|(|-1|)>\<cdot\>g> is <math|\<cal-A\>>-measurable.
      So applying (1) proves then that <math|f-g=f+<around*|(|-1\<cdot\>g|)>>
      is <math|\<cal-A\>>-measurable.

      <item>Let <math|x\<in\>\<bbb-R\>> then we have two cases to consider:

      <\description>
        <item*|<math|x\<leqslant\>0>>If <math|t\<in\><around*|{|f<rsup|2>\<less\>x|}>>
        we have <math|f<rsup|2><around*|(|t|)>\<less\>x\<leqslant\>0> which a
        <math|0\<leqslant\>f<rsup|2><around*|(|x|)>> is a contradiction.
        Hence <math|<around*|{|f<rsup|2>\<less\>x|}>=\<emptyset\>\<in\>\<cal-A\>>

        <item*|<math|0\<less\>x>>Then

        <\eqnarray*>
          <tformat|<table|<row|<cell|t\<in\><around*|{|f<rsup|2>\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|f<rsup|2><around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|square
          root properties (1)>>>>|<cell|-<sqrt|x>\<less\>f<around*|(|t|)>\<less\><sqrt|x>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>-<sqrt|x>|}>\<wedge\>t\<in\><around*|{|f\<less\><sqrt|x>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>-<sqrt|x>|}><big|cap><around*|{|f\<less\><sqrt|x>|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|f<rsup|2>\<less\>x|}>=<around*|{|f\<gtr\>-<sqrt|x>|}><big|cap><around*|{|f\<less\><sqrt|x>|}>>.
        As <math|f> is <math|\<cal-A\>>-measurable it follows from
        <reference|measurable function condition (1)> that
        <math|><math|<around*|{|f\<gtr\>-<sqrt|x>|}>,<around*|{|f\<less\><sqrt|x>|}>\<in\>\<cal-A\>>,
        Hence <math|<around*|{|f<rsup|2>\<less\>x|}>\<in\>\<cal-A\>>.
      </description>

      As in all the cases <math|<around*|{|f<rsup|2>\<less\>x|}>\<in\>\<cal-A\>>
      it follows using <reference|measurable function condition (1)> again
      that <math|f<rsup|2>> is <math|\<cal-A\>>-measurable

      <item>As <math|f,g> are <math|\<cal-A\>>-measurable we have by (1) that
      <math|f+g> is <math|\<cal-A\>>-measurable, Applying (4) we have that
      <math|f<rsup|2>>, <math|g<rsup|2>> amd <math|<around*|(|f+g|)><rsup|2>>
      are <math|\<cal-A\>>-measurable. Using (3) twice we have that
      <math|<around*|(|<around*|(|f+g|)><rsup|2>-f<rsup|2>|)>-g<rsup|2>> is
      <math|\<cal-A\>> measurable, by (2) we have then that\ 

      <\equation>
        <label|eq 18.322.033><frac|1|2>\<cdot\><around*|(|<around*|(|<around*|(|f+g|)><rsup|2>-f<rsup|2>|)>-g<rsup|2>|)>
        is \<cal-A\><text|-measurable>
      </equation>

      Finally if <math|x\<in\>A>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<frac|1|2>\<cdot\><around*|(|<around*|(|<around*|(|<around*|(|f+g|)><rsup|2>-f<rsup|2>|)>-g<rsup|2>|)><around*|(|x|)>|)>>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|<around*|(|<around*|(|f<around*|(|x|)>+g<around*|(|x|)>|)><rsup|2>-f<rsup|2><around*|(|x|)>|)>-g<rsup|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|f<rsup|2><around*|(|x|)>+g<rsup|2><around*|(|x|)>+2\<cdot\>f<around*|(|x|)>-f<rsup|2><around*|(||)>-g<rsup|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>>>
      </eqnarray*>

      proving that <math|f\<cdot\>g=<frac|1|2>\<cdot\><around*|(|<around*|(|<around*|(|f+g|)><rsup|2>-f<rsup|2>|)>-g<rsup|2>|)>>
      and by <reference|eq 18.322.033> that\ 

      <\equation*>
        f\<cdot\>g is \<cal-A\><text|-measurable>
      </equation*>

      <item>Let <math|D=<around*|{|x\<in\>A\|g<around*|(|x|)>\<neq\>0|}>>
      then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|x\<in\>A\|g<around*|(|x|)>\<neq\>0|}>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>A\<wedge\>g<around*|(|t|)>\<neq\>0>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>A\<wedge\><around*|(|g<around*|(|t|)>\<less\>0\<vee\>g<around*|(|t|)>\<gtr\>0|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|t\<less\>A\<wedge\>g<around*|(|t|)>\<less\>0|)>\<vee\><around*|(|t\<in\>A\<wedge\>g<around*|(|t|)>\<gtr\>0|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|g\<less\>0|}>\<vee\>t\<in\><around*|{|g\<gtr\>0|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|g\<less\>0|}><big|cup><around*|{|g\<gtr\>0|}>>>>>
      </eqnarray*>

      From the measurability of <math|g> together with <reference|measurable
      function condition (1)> it follows that

      <\equation>
        <label|eq 18.323.033>D=<around*|{|x\<in\>\<cal-A\>\|g<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-A\>
      </equation>

      Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|<frac|f|g>\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>D\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>D\<wedge\><around*|(|g<around*|(|t|)>\<less\>0\<wedge\>g<around*|(|t\<gtr\>9|)>|)>\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|t\<in\>D\<wedge\>g<around*|(|t|)>\<less\>0\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|)>\<vee\><around*|(|t\<in\>D\<wedge\>g<around*|(|t|)>\<gtr\>0\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|t\<in\>D\<wedge\>g<around*|(|t|)>\<less\>0\<wedge\>f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|)>\<vee\><around*|(|t\<in\>D\<wedge\>g<around*|(|t|)>\<gtr\>0\<wedge\>f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>x\<cdot\>g|}>\<vee\>t\<in\><around*|{|f\<less\>x\<cdot\>g|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>x\<cdot\>g|}><big|cup><around*|{|f\<less\>x\<cdot\>g|}>>>>>
      </eqnarray*>

      proving that\ 

      <\equation>
        <label|eq 18.324.033><around*|{|<frac|f|g>\<less\>x|}>=<around*|{|f\<gtr\>x\<cdot\>g|}><big|cup><around*|{|f\<less\>x\<cdot\>g|}>
      </equation>

      As <math|f,g> are <math|\<cal-A\>>-measurable and <math|x\<cdot\>f>,
      <math|x\<cdot\>g> [using (2)] it follows from <reference|function
      comparizatons are measurable> that <math|<around*|{|f\<gtr\>x\<cdot\>g|}>>,
      <math|<around*|{|f\<less\>x\<cdot\>g|}>\<in\>\<cal-A\>> which proves
      that <math|<around*|{|<frac|f|g>\<less\>x|}>\<in\>\<cal-A\>>. Using
      <reference|measurable function condition (1)> we get finallly that\ 

      <\equation*>
        <frac|f|g>:D\<rightarrow\>\<bbb-R\> is \<cal-A\><text|-measurable>
      </equation*>
    </enumerate>
  </proof>

  <\definition>
    Let <math|X> be a set and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a extended rea; function then we define\ 

    <\enumerate>
      <item><math|f<rsup|+>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> by
      <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>> [so
      <math|f<rsup|+><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]

      <item><math|f<rsup|->:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> by
      <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>>
      [so <math|f<rsup|-><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]

      <item><math|<around*|\||f|\|>:X\<gtr\><wide|\<bbb-R\>|\<wide-bar\>>> by
      <math|<around*|\||f|\|><around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
      [so <math|f<rsup|-><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]
    </enumerate>

    <\lemma>
      <label|\|f(x)\| as f+ f->Let <math|X> be a set and
      <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a extended rea;
      function then <math|<around*|\||f|\|>=f<rsup|+>+f<rsup|->>
    </lemma>

    <\proof>
      Let <math|x\<in\>X> then we have either\ 

      <\description>
        <item*|<math|f<around*|(|x|)>\<leqslant\>0>>then
        <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=0>
        and <math|f<rsup|-1><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=-f<around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
        so that <math|f<rsup|+><around*|(|x|)>+f<rsup|-><around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>

        <item*|<math|0\<less\>f<around*|(|x|)>>>then
        <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>>
        and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=0>
        so that <math|f<rsup|+><around*|(|x|)>+f<rsup|-><around*|(|x|)>=f<around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
      </description>
    </proof>
  </definition>

  <\proposition>
    <label|measurable functions properties (5)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a <math|\<cal-A\>>-measurable function then\ 

    <\enumerate>
      <item><math|C<rsub|0>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|C<rsub|0><around*|(|x|)>=0> is
      <math|\<cal-A\>>-measurable

      <item><math|f<rsup|+>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      <math|\<cal-A\>>-measurable.

      <item><math|f<rsup|->:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      <math|\<cal-A\>>-measurable.

      <item><math|<around*|\||f|\|>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>\<bbb-R\>> then we have either :\ 

      <\description>
        <item*|<math|x\<leqslant\>0>>Then
        <math|t\<in\><around*|{|C<rsub|0>\<less\>x|}>\<Rightarrow\>0=C<rsub|0><around*|(|t|)>\<less\>x\<less\>0>
        leading to the contradiction <math|0\<less\>0>. Hence
        <math|<around*|{|C<rsub|0><around*|(|t|)>\<less\>x|}>=\<emptyset\>\<in\>\<cal-A\>>

        <item*|<math|0\<less\>x>>Then <math|t\<in\><around*|{|C<rsub|0><around*|(|t|)>\<less\>x|}>\<Leftrightarrow\>0=C<rsub|0><around*|(|t|)>\<less\>x>
        proving that <math|<around*|{|C<rsub|0>\<less\>x|}>=A\<in\>\<cal-A\>>
      </description>

      as in all cases <math|<around*|(|C<rsub|0>\<less\>x|)>\<in\>\<cal-A\>>
      it follows that\ 

      <\equation*>
        C<rsub|0> is \<cal-A\><text|-measurable>
      </equation*>

      <item>As <math|f<rsup|+>=f\<wedge\>C<rsub|0>> and <math|f,C<rsub|0>>
      are <math|\<cal-A\>>-measurable it follows from <reference|measurable
      functions properties (1)> that <math|f<rsup|+>> is
      <math|\<cal-A\>>-measurable.

      <item>As <math|f<rsup|->=f\<vee\>C<rsub|0>> and <math|f,C<rsub|0>> are
      <math|\<cal-A\>>-measurable it follows from <reference|measurable
      functions properties (1)> that <math|f<rsup|->> is
      <math|\<cal-A\>>-measurable

      <item>As <math|<around*|\||f|\|>\<equallim\><rsub|<text|<reference|\|f(x)\|
      as f+ f->>>f<rsub|+>+f<rsub|i>> it follows from (1),(2) and
      <reference|measurable functions properties (4)> that
      <math|<around*|\||f|\|>> is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proof>

  The following theorm will be essential to define the measure integral.

  <\theorem>
    <label|measurable functions properties (6)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a <math|\<cal-A\>>-measurable function such that
    <math|f<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>> then there
    exists a sequence <math|<around*|{|f<rsub|i>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    of <with|font-series|bold|simple functions> such that
    <math|\<forall\>x\<in\>A>

    <\enumerate>
      <item><math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>>
      and <math|0\<leqslant\>f<rsub|i><around*|(|x|)>\<less\>\<infty\>>

      <item><math|f<around*|(|x|)>=sup<around*|(|n\<in\>\<bbb-N\><rsub|0>\|f<rsub|n><around*|(|x|)>|)>\<equallim\><rsub|<around*|(|1|)>+<text|<reference|equivalence
      of limits on increasing (decreasing) sequences of extented
      reals>>><below|lim|n\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>>.\ 

    <\equation>
      <label|eq 18.325.033>I<rsub|n>=<around*|{|i\<in\>\<bbb-N\><rsub|0>\|i\<leqslant\>n\<cdot\>2<rsup|n>|}>=<around*|{|1,2,\<ldots\>,n\<cdot\>2<rsup|n>|}>
    </equation>

    Define for <math|k\<in\>I<rsub|n>>

    <\equation>
      <label|eq 18.326.033>A<rsub|n,k>=<around*|{|x\<in\>A\|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>|}>=f<rsup|-1><around*|(|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>|)>
    </equation>

    Now

    <\eqnarray*>
      <tformat|<table|<row|<cell|t\<in\>A<rsub|n,k>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>A\<wedge\><frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|t|)>\<less\><frac|k|2<rsup|n>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|t\<in\>A\<wedge\><frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|t|)>|)>\<wedge\><around*|(|t\<in\>\<cal-A\>\<wedge\>f<around*|(|t|)>\<less\><frac|k|2<rsup|n>>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}>\<wedge\>t\<in\><around*|{|f\<less\><frac|k|2<rsup|n>>|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}><big|cap><around*|{|f\<less\><frac|k|2<rsup|n>>|}>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.327.033>A<rsub|n,k>=<around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}><big|cap><around*|{|f\<less\><frac|k|2<rsup|n>>|}>
    </equation>

    As <math|f> is <math|\<cal-A\>>-measurable we have by
    <reference|measurable function condition (1)> that
    <math|<around*|{|f\<geqslant\><frac|k-1|2<rsup|n>>|}>,<around*|{|f\<less\><frac|k|2<rsup|n>>|}>\<in\>\<cal-A\>>,
    so it follows that\ 

    <\equation>
      <label|eq 18.328.033>\<forall\>k\<in\><around*|{|i\<cdot\>2<rsup|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>\<vDash\>A<rsub|n,k>\<in\>\<cal-A\>
    </equation>

    Let <math|l,k\<in\>I<rsub|n>> with <math|l\<less\>k\<Rightarrow\>l+1\<leqslant\>k\<Rightarrow\>l\<leqslant\>k-1>,
    assume that <math|t\<in\>A<rsub|n,l><big|cap>A<rsub|n,k>> then
    <math|<frac|l-1|2<rsup|n>>\<leqslant\>f<around*|(|t|)>\<less\><frac|l|2<rsup|n>>\<leqslant\><frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|t|)>\<less\><frac|k|2<rsup|n>>>
    giving the contradiction <math|f<around*|(|t|)>\<less\>f<around*|(|t|)>>,
    hence we must have that <math|A<rsub|n,l><big|cap>A<rsub|n,k>=\<emptyset\>>.
    So\ 

    <\equation>
      <label|eq 18.329.033>\<forall\>l,k\<in\>I<rsub|n> with l\<neq\>k we
      have A<rsub|n,k><big|cap>A<rsub|n,l>=\<emptyset\>
    </equation>

    If <math|x\<in\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>> then there
    exists a <math|k\<in\>I<rsub|n>> such that <math|x\<in\>A<rsub|n,k>> and
    this <math|k> is unique because of <reference|eq 18.329.033>. This allows
    us to define <math|<around*|{|f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    by\ 

    <\equation>
      <label|eq 18.330.033>f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|k-1|2<rsup|<rsup|n>>>
      if x\<in\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k > where k is the
      unique k such that x\<in\>A<rsub|n,k>>>|<row|<cell|n if
      x\<in\>A\\<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>>>>>\<less\>\<infty\>
    </equation>

    Using the above definition if is clear that
    <math|f<rsub|n><around*|(|A|)>\<subseteq\><around*|{|n|}><big|cup><rsub|k\<in\>I<rsub|n>><around*|{|<frac|k-1|2<rsup|n>>|}>>
    which is finite [see <reference|finite union of finite sets is finite>],
    taking this in account together with <reference|eq 18.328.033> proves\ 

    <\equation>
      <label|eq 18.331.033.1>\<forall\>n\<in\>\<bbb-N\><rsub|0> f<rsub|n> is
      a<with|font-series|medium| simple function>
    </equation>

    Let <math|n\<in\>\<bbb-N\><rsub|0>> and take <math|k\<in\>I<rsub|n>> and
    <math|l\<in\>I<rsub|n+1>> such that <math|A<rsub|n,k><big|cap>A<rsub|n+1,l>\<neq\>\<emptyset\>>.
    Then there exists <math|x\<in\>A> such that
    <math|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>
    and <math|<frac|l-1|2<rsup|n+1>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n+1>>>.
    So we have then

    <\eqnarray*>
      <tformat|<table|<row|<cell|<frac|k-1|2<rsup|n>>\<less\><frac|l|2<rsup|n+1>>\<wedge\><frac|l-1|2<rsup|n+1>>\<less\><frac|k|2<rsup|n>>>|<cell|\<Rightarrow\>>|<cell|<frac|2\<cdot\>k-2|2<rsup|n+1>>\<less\><frac|l|2<rsup|n+1>>\<wedge\><frac|l-1|2<rsup|n+1>>\<less\><frac|2\<cdot\>k|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|2\<cdot\>k-2\<less\>l\<wedge\>l-1\<less\>2\<cdot\>k>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|2\<cdot\>k-1\<leqslant\>l\<wedge\>l\<less\>2\<cdot\>k>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|l=2\<cdot\>k-1<eq-number><label|eq
      18.331.033>>>>>
    </eqnarray*>

    Next

    <\eqnarray*>
      <tformat|<table|<row|<cell|y\<in\>A<rsub|n+1,l>>|<cell|\<Rightarrow\>>|<cell|<frac|l-1|2<rsup|n+1>>\<leqslant\>f<around*|(|y|)>\<less\><frac|l|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|<text|<reference|eq
      18.331.033>>>>|<cell|<frac|2\<cdot\>k-2|2<rsup|n+1>>\<leqslant\>f<around*|(|y|)>\<less\><frac|2\<cdot\>k-1|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|y|)>\<less\><frac|2\<cdot\>k-1|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|y|)>\<less\><frac|2\<cdot\>k|2<rsup|n+1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|y|)>\<less\><frac|k|2<rsup|n1>>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|y\<in\>A<rsub|n,k>>>>>
    </eqnarray*>

    So we have

    <\equation>
      <label|eq 18.332.033>\<forall\>n\<in\>\<bbb-N\><rsub|0> if
      k\<in\>I<rsub|n>,l\<in\>I<rsub|n+1><infix-and>A<rsub|n,k><big|cap>A<rsub|n+1,l>\<neq\>\<emptyset\>
      then A<rsub|n+1,l>\<subseteq\>A<rsub|n,k>
    </equation>

    Let <math|n\<in\>\<bbb-N\><rsub|0>>, and
    <math|x\<in\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<Rightarrow\>0\<leqslant\>f<around*|(|x|)>\<less\>n>.
    Define <math|B<rsub|x>=<around*|{|k\<in\>I<rsub|n>\|f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>|}>\<subseteq\>I<rsub|n>>
    a finite set. As <math|n\<cdot\>2<rsup|n>\<in\>I<rsub|n>> and
    <math|f<around*|(|x|)>\<less\>n=<frac|n\<cdot\>2<rsup|n>|2<rsup|n>>> we
    have that <math|n\<cdot\>2<rsup|n>\<in\>B<rsub|x>> proving that
    <math|B<rsub|x>\<neq\>\<emptyset\>>, so
    <math|l=min<around*|(|B<rsub|x>|)>> exists. We have to consider two cases
    for <math|l>:

    <\description>
      <item*|<math|l=1>>then <math|<frac|l-1|2<rsup|n>>=0\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n>>\<Rightarrow\>x\<in\>A<rsub|n,1>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>

      <item*|<math|1\<less\>l>>then <math|1\<leqslant\>l-1\<less\>l\<leqslant\>n\<cdot\>2<rsup|n>
      proving that l-1\<in\>I<rsub|n>>, and as
      <math|l-1\<less\>min<around*|(|B<rsub|x>|)>> we must have that
      <math|<frac|l-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n>>\<Rightarrow\>x\<in\>A<rsub|n,l>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
    </description>

    So we have proved that <math|f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|i>>A<rsub|n,k>>,
    also for <math|k\<in\>I<rsub|n>> we have that
    <math|A<rsub|n,k>=f<rsup|-1><around*|(|<around*|[|<frac|k-1|2<rsup|n>>,<frac|k|2<rsup|n>>|[>|)>\<subseteq\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>>,
    hence\ 

    <\equation>
      <label|eq 18.333.033>\<forall\>n\<in\>\<bbb-N\><rsub|0> we have
      f<rsup|-1><around*|(|<around*|[|0,n|[>|)>=<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>
    </equation>

    Let <math|x\<in\>A> and <math|n\<in\>\<bbb-N\>> then either:

    <\description>
      <item*|<math|n\<leqslant\>f<around*|(|x|)>>>then
      <math|x\<nin\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<equallim\><rsub|<text|<reference|eq
      18.333.033>>><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>\<Rightarrow\>x\<in\>A\\<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>,
      so using <reference|eq 18.330.033> we have that
      <math|f<rsub|n><around*|(|x|)>=n\<leqslant\>f<around*|(|x|)>>

      <item*|<math|0\<leqslant\>f<around*|(|x|)>\<less\>n>>then
      <math|x\<in\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<equallim\><rsub|<text|<reference|eq
      18.333.033>>><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>, so there
      exists a unique <math|k\<in\>I<rsub|k>> such that
      <math|x\<in\>A<rsub|n,k>>, using <reference|eq 18.330.033> it follows
      that <math|f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>
    </description>

    To suummarize

    <\equation>
      <label|eq 18.334.033>\<forall\>x\<in\>A,\<forall\>n\<in\>\<bbb-N\><rsub|0>
      we have f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)><infix-and>f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|n
      if n\<leqslant\>f<around*|(|x|)>>>|<row|<cell|<frac|k-1|2<rsup|n>> if
      f<around*|(|x|)>\<less\>n where k\<in\>I<rsub|n>>>>>>
    </equation>

    and\ 

    <\equation>
      <label|eq 18.335.033>\<forall\>n\<in\>\<bbb-N\><rsub|0> if x\<in\>A is
      such that f<around*|(|x|)>\<leqslant\>n then \<exists\>k\<in\>I<rsub|n>
      such that f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>
    </equation>

    Let now <math|x\<in\>A> then we must consider the following cases for
    <math|f<around*|(|x|)>>:

    <\description>
      <item*|<math|n+1\<leqslant\>f<around*|(|x|)>>>then by <reference|eq
      18.334.033> <math|f<rsub|n><around*|(|x|)>=n\<less\>n+1=f<rsub|n+1><around*|(|x|)>>\ 

      <\equation*>
        f<rsub|n><around*|(|x|)>\<less\>f<rsub|n+1><around*|(|x|)>
      </equation*>

      <item*|<math|n\<leqslant\>f<around*|(|x|)>\<less\>n+1>>then by
      <reference|eq 18.334.033>,<reference|eq 18.335.033>
      <math|n=f<rsub|n><around*|(|x|)>> and
      <math|\<exists\>k\<in\>I<rsub|n+1>> with
      <math|f<rsub|n+1><around*|(|x|)>=<frac|k-1|2<rsup|n+1>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n+1>>>.
      <math|> As <math|n\<leqslant\>f<around*|(|x|)>> we have that
      <math|n\<less\><frac|k|2<rsup|n+1>>\<Rightarrow\>n\<cdot\>2<rsup|n+1>\<less\>k\<Rightarrow\>n\<cdot\>2<rsup|n+1>\<leqslant\>k-1\<Rightarrow\>n\<leqslant\><frac|k-1|2<rsup|n+1>>=f<rsub|n+1><around*|(|x|)>>
      proving that

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
      </equation*>

      <item*|<math|0\<leqslant\>f<around*|(|x|)>\<less\>n>>then
      <math|x\<in\>f<rsup|-1><around*|(|<around*|[|0,n|[>|)>,x\<in\>f<rsup|-1><around*|(|<around*|[|0,n+1|[>|)>>,
      so using <reference|eq 18.333.033> <math|\<exists\>k\<in\>I<rsub|n>,l\<in\>I<rsub|n+1>>
      such that <math|f<around*|(|x|)>\<in\>A<rsub|n,k><big|cap>A<rsub|n+1,l>>.
      Applying then <reference|eq 18.332.033> we have
      <math|A<rsub|n+1,l>\<subseteq\>A<rsub|n,k>> proving that
      <math|<frac|l-1|2<rsup|n+1>>\<leqslant\><frac|k-1|2<rsup|n>>>. Using
      <reference|eq 18.330.033> we have that
      <math|f<rsub|n+1><around*|(|x|)>=<frac|l-1|2<rsup|n+1>>,f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>>
      proving that\ 

      <\equation*>
        f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>
      </equation*>
    </description>

    So\ 

    <\equation>
      <label|eq 18.336.033>\<forall\>x\<in\>A we have
      \<forall\>n\<in\>\<bbb-N\><rsub|0> that
      f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)><infix-and>0\<leqslant\>f<rsub|n><around*|(|x|)>\<less\>\<infty\>
    </equation>

    Let <math|x\<in\>A>. Using <reference|eq 18.334.033> it follows that

    <\equation>
      <label|eq 18.337.033>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    Assume now that <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<around*|(|x|)>>.
    For <math|f<around*|(|x|)>> we have either:

    <\description>
      <item*|<math|f<around*|(|x|)>=\<infty\>>>then as
      <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
      we have by <reference|consequence of the archimedean property for the
      reals> that <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n\<less\>\<infty\>=f<around*|(|x|)>>.
      Using <reference|eq 18.334.033> we have then that
      <math|f<rsub|n><around*|(|x|)>=n>, so
      \ <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n=f<rsub|n><around*|(|x|)>>
      a contradiction.

      <item*|<math|f<around*|(|x|)>\<less\>\<infty\>>>Take
      <math|\<delta\>=f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<gtr\>0>,
      using <reference|properties of positive, negative real numbers> there
      exists a <math|n1\<in\>\<bbb-N\><rsub|0>> such that
      <math|<frac|1|2<rsup|n<rsub|1>>>\<less\>\<delta\>>, using
      <reference|consequence of the archimedean property for the reals> there
      exists a <math|n<rsub|2>\<in\>\<bbb-N\><rsub|0>> such that
      <math|f<around*|(|x|)>\<less\>n<rsub|2>>. Take
      <math|n=max<around*|(|n<rsub|1>,n<rsub|2>|)>> then
      <math|f<around*|(|x|)>\<less\>n> so that by <reference|eq 18.335.033>
      there exists a <math|k\<in\>I<rsub|n>> such that
      <math|f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|<rsup|n>>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>>.
      then <math|f<around*|(|x|)>-f<rsub|n><around*|(|x|)>\<less\><frac|k|2<rsup|n>>-<frac|k-1|2<rsup|n>>=<frac|1|2<rsup|n>>\<leqslant\><frac|1|2<rsup|n<rsub|1>>>\<less\>\<delta\>=f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>,
      so that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<rsub|n><around*|(|x|)>>
      a contradiction.\ 
    </description>

    As we have in all cases a contradiction we must have that
    <math|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
    which combined with <reference|eq 18.337.033> proves that\ 

    <\equation>
      <label|eq 18.338.033>f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    The theorem is now proved by <reference|eq 18.331.033.1>,<reference|eq
    18.336.033> and <reference|eq 18.338.033>.
  </proof>

  <subsection|Properties that hold everywhere>

  Using the concept of <math|\<mu\>>-negligible sets [see
  <reference|negligibility>] we can introduce the concept of almost
  everywhere predicates and complete measures.

  <\definition>
    <label|almost complete><index|almost everyware>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|P<around*|(|x|)>> a predicate then <math|P> is
    <with|font-series|bold|<math|\<mu\>>-almost everywhere true> if
    <math|<around*|{|x\<in\>X\|P<around*|(|x|)><text| is
    false>|}>\<in\>\<cal-N\><rsub|\<mu\>>>. A property holds almost
    everywhere if the set where the predicate does not hold is
    <math|\<mu\>>-negligible.
  </definition>

  Using the above we can define the following

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> then\ 

    <\enumerate>
      <item><math|f=g> <math|\<mu\>>-almost everywhere if
      <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>>
      is <math|\<mu\>>-negligible.

      <item><math|f\<geqslant\>g> <math|\<mu\>>-almost everywhere if
      <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>
      is <math|\<mu\>>-negligible.

      <item>Let <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      a sequence of functions from <math|X> to
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> then
      <math|<around*|{|f<rsub|n><rsub|>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      converges <math|\<mu\>>-almost everywhere to <math|f> if
      <math|<around*|{|x\<in\>X<mid|\|><around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>
      does not converges to f<around*|(|x|)>|}>> is <math|\<mu\>>-negligible.
    </enumerate>
  </definition>

  <\proposition>
    <label|f=g almost everywhere property>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a complete
    measure space [see <reference|complete measures>] and let
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a
    <math|\<cal-A\>>-measurable function and
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|f=g> <math|\<mu\>>-almost everywhere then <math|g> is
    <math|\<cal-A\>>-measurable.\ 
  </proposition>

  <\proof>
    As <math|f=g> <math|\<mu\>>-almost everywhere there exists a
    <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> and
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.
    So\ 

    <\equation*>
      x\<in\>X\\N\<Rightarrow\>f<around*|(|x|)>=g<around*|(|x|)>
    </equation*>

    . Let <math|t\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|{|g\<leqslant\>t|}>>|<cell|=>|<cell|<around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>>>|<row|<cell|>|<cell|=>|<cell|X<big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\N|)><big|cup>N|)><big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\N|)><big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>|)><big|cup><around*|(|N<big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\N|)><big|cap><around*|{|x\<in\>X<around*|\||f<around*|(|x|)>\<leqslant\>t|\<nobracket\>>|}>|)><big|cup><around*|(|N<big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\N|)><big|cap><around*|{|f\<leqslant\>t|}>|)><big|cup><around*|(|N<big|cap><around*|{|x\<in\>X\|g<around*|(|x|)>\<leqslant\>t|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<around*|(|X\\N|)><big|cap><around*|{|f\<leqslant\>t|}>|)><big|cup><around*|(|N<big|cap><around*|{|g\<leqslant\>t|}>|)><eq-number><label|eq
      18.340.033>>>>>
    </eqnarray*>

    As <math|><math|N<big|cap><around*|{|g\<leqslant\>t|}>\<subseteq\>N>,
    <math|\<mu\><around*|(|N|)>=\<emptyset\>> and <math|\<mu\>> is complete
    [see <reference|complete measures> for a definition] we have
    <math|N<big|cap><around*|{|g\<leqslant\>t|}>\<in\>\<cal-A\>>. As <math|f>
    is <math|\<mu\>>-measurable we have by <reference|measurable function
    condition (1)> that <math|<around*|{|f\<leqslant\>t|}>\<in\>\<cal-A\>,>also
    as <math|N\<in\>\<cal-A\>\<Rightarrow\>X\\N\<in\>\<cal-A\>>,
    <math|<around*|(|<around*|(|X\\N|)><big|cap><around*|{|f\<leqslant\>t|}>|)>\<in\>\<cal-A\>>.
    So using <reference|eq 18.340.033> we have that
    <math|<around*|{|g\<leqslant\>t|}>\<in\>\<cal-A\>> which by
    <reference|measurable function condition (1)> proves that\ 

    <\equation*>
      g is \<cal-A\><text|-measurable>
    </equation*>
  </proof>

  <\corollary>
    <label|measurable function and limit>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> is a complete
    measure space, let <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    be a sequence of <math|\<cal-A\>>-measurable functions from
    <math|X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> converges
    <math|\<mu\>>-almost everywhere to <math|f> then <math|f> is
    <math|\<cal-A\>>-measurable.
  </corollary>

  <\proof>
    Take <math|B=<around*|{|x\<in\>X\|<around*|{|f<rsub|n><around*|(|x|)><rsub|n\<in\>\<bbb-N\><rsub|0>>
    does not converges to f<around*|(|x|)>|}>|}>. >As
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> converges
    <math|\<mu\>>-almost everywhere to <math|f> we have that there exists a
    <math|N\<in\>\<cal-A\>> with <math|B\<subseteq\>N> and
    <math|\<mu\><around*|(|N|)>=\<emptyset\>>. If <math|x\<in\>X\\B> then
    <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>\<equallim\><rsub|<text|<reference|definition
    of limit in the extented reals>>><below|lim
    inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>> so we have that
    <math|f=<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>>
    <math|\<mu\>>-almost everywhere. As by <reference|measurable functions
    properties (2)> <math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>>
    is <math|\<cal-A\>>-measurable [given that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f<rsub|n> > is
    <math|\<cal-A\>>-measurable] we have using the previous property
    <reference|f=g almost everywhere property> that\ 

    <\equation*>
      f is \<cal-A\><text|-measurable>
    </equation*>
  </proof>

  <\proposition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space, <math|\<cal-A\><rsub|\<mu\>>> the completion of
    <math|\<cal-A\>> under <math|\<mu\>> [see <reference|completion of a
    measure>,<reference|completion of a measure space>] and
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a function then the
    following are equivalent

    <\enumerate>
      <item><math|\<exists\>g,h:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      such that

      <\enumerate>
        <item><math|g,h> are <math|\<cal-A\>>-measurable

        <item><math|\<forall\>x\<in\>X> <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>h<around*|(|x|)>>

        <item><math|g=h> <math|\<mu\>>-almost everywhere
      </enumerate>

      <item><math|f> is <math|\<cal-A\><rsub|\<mu\>>>-measurable
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|x\<in\>\<bbb-R\>> thenas
      <math|g> is <math|\<cal-A\>>-measurable we have by
      <reference|measurable function condition (1)> that
      <math|<around*|{|g\<leqslant\>x|}>\<in\>\<cal-A\>>, as by
      <reference|completion of a measure space>
      <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>> we have that
      <math|<around*|{|g\<leqslant\>x|}>\<in\>\<cal-A\><rsub|\<mu\>>>. So
      using <reference|measurable function condition (1)> we have that\ 

      <\equation>
        <label|eq 18.341.033>g is \<cal-A\><rsub|\<mu\>><text|-measurable>
      </equation>

      Take <math|B=<around*|\<langle\>|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|\<rangle\>>>
      then by (1.c) there exists a <math|N\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N|)>=0> and <math|B\<subseteq\>N>. Using
      <reference|completion of a measure space> we have that
      <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>> and
      <math|<around*|(|<wide|\<mu\>|\<wide-bar\>>|)><rsub|\|\<cal-A\>>=\<mu\>>
      so that

      <\equation>
        <label|eq 18.342.033>N\<in\>\<cal-A\><rsub|\<mu\>><infix-and><wide|\<mu\>|\<wide-bar\>><around*|(|N|)>=\<mu\><around*|(|N|)>=0
      </equation>

      If <math|x\<in\>X\\N> then <math|g<around*|(|x|)>=h<around*|(|x|)>\<Rightarrowlim\><rsub|1.b>g<around*|(|x|)>=f<around*|(|x|)>>,
      so if <math|x\<in\>X> is such that <math|f<around*|(|x|)>\<neq\>g<around*|(|x|)>>
      then <math|x\<nin\>X\\N\<Rightarrow\>x\<in\>X\\<around*|(|X\\N|)>=N> so\ 

      <\equation>
        <label|eq 18.343.033><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N
      </equation>

      Combining <reference|eq 18.342.033>,<reference|eq 18.343.033> proves
      that <math|f=g> <math|<wide|\<mu\>|\<wide-bar\>>>-almost everwhere. So
      as <math|g> is <math|\<cal-A\><rsub|\<mu\>>>-measurable [see
      <reference|eq 18.341.033>] we can apply <reference|f=g almost
      everywhere property> proving that\ 

      <\equation*>
        f is \<cal-A\><rsub|\<mu\>><text|-measurable>
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>Let <math|s:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      be a <math|\<cal-A\><rsub|\<mu\>>>-measurable simple function with
      <math|s<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>. As
      <math|s<around*|(|X|)>> is finite non empty there exists a
      <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
      <math|\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>s<around*|(|X|)>>.
      Given <math|i\<in\><around*|{|1,\<ldots\>,n|}>> define
      <math|A<rsub|i>=s<rsup|-1><around*|(|<around*|{|\<alpha\><around*|(|i|)>|}>|)>>.
      As <math|s> is <math|\<cal-A\><rsub|\<mu\>>> measurable we have by
      <reference|simple functions are measurable> that
      <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|A<rsub|i>\<in\>\<cal-A\><rsub|\<mu\>>>. As
      <math|X=s<rsup|-1><around*|(|s<around*|(|X|)>|)>=s<rsup|-1><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>s<rsup|-1><around*|(|<around*|{|\<alpha\><around*|(|i|)>|}>|)>|)>=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      we have that\ 

      <\equation>
        <label|eq 18.344.033>X=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
      </equation>

      \ Using the definition of <math|\<cal-A\><rsub|\<mu\>>> [see
      <reference|completion of a measure> there exists
      <math|C<rsub|i>,B<rsub|i>\<in\>\<cal-A\>> such that
      <math|C<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>B<rsub|i>> and
      <math|\<mu\><around*|(|B<rsub|i>\\C<rsub|i>|)>=0>. Define now
      <math|g=<big|sum><rsub|i=1><rsup|n>\<alpha\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>
      and <math|h=<big|sum><rsub|i=1><rsup|n>\<alpha\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>.
      Take <math|x\<in\>X> then we have either:

      <\description>
        <item*|<math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>>then\ 

        <item*|<math|x\<nin\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>>
      </description>
    </description>
  </proof>

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \;

  \ 

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
    <associate|(A except B) interect C|<tuple|18.2|?>>
    <associate|A except B is (X except B) intersect A |<tuple|18.1|?>>
    <associate|Borel algebra is generated by closed sets|<tuple|18.21|?>>
    <associate|Borel algebra on R|<tuple|18.19|?>>
    <associate|Borel algebra on R^n|<tuple|18.20|?>>
    <associate|Borel algebra on R^n (1)|<tuple|18.52|?>>
    <associate|Borel algebra on R^n (2)|<tuple|18.57|?>>
    <associate|Borel algebra on R^n equivalences|<tuple|18.58|?>>
    <associate|Borel algebras on R|<tuple|18.26|?>>
    <associate|Borel function|<tuple|18.139|?>>
    <associate|Borel measure space|<tuple|18.89|?>>
    <associate|Borel sets in R^n are transaltion invariant|<tuple|18.100|?>>
    <associate|Caratheodore|<tuple|18.75|?>>
    <associate|Dunkin class|<tuple|18.126|?>>
    <associate|Dyadic cube properties|<tuple|18.48|?>>
    <associate|Dyadic cubes|<tuple|18.46|?>>
    <associate|Dyadic interval basic property|<tuple|18.45|?>>
    <associate|Dyadic intervals|<tuple|18.44|?>>
    <associate|Dynkin class and uniqueness of measures|<tuple|18.135|?>>
    <associate|Dynkin class generated|<tuple|18.130|?>>
    <associate|Dynkin classes and sigma algebra|<tuple|18.134|?>>
    <associate|Lebesgue measurability is transalation
    invariant|<tuple|18.98|?>>
    <associate|Lebesgue measurable sets alternatives|<tuple|18.88|?>>
    <associate|Lebesgue measure is regular|<tuple|18.121|?>>
    <associate|Lebesgue measure is translation invariant|<tuple|18.99|?>>
    <associate|Lebesgue measure space|<tuple|18.81|?>>
    <associate|Lebesgue measure space on R^n|<tuple|18.86|?>>
    <associate|Lebesgue measure spaces are complete|<tuple|18.108|?>>
    <associate|Lebesgue space and compact sets|<tuple|18.92|?>>
    <associate|Lower half spaces|<tuple|18.55|?>>
    <associate|R can be covered by open intervals|<tuple|18.78|?>>
    <associate|R^n is a unin of rectangles|<tuple|18.82|?>>
    <associate|[0,1[ as a union of Dyadic intervals|<tuple|18.101|?>>
    <associate|[0,1[^n as a union of half open rectangles|<tuple|18.102|?>>
    <associate|algebra equivalent definitions|<tuple|18.9|?>>
    <associate|algebra of sets|<tuple|18.8|?>>
    <associate|almost complete|<tuple|18.171|?>>
    <associate|alternative formule for lebesgue measure (1)|<tuple|18.91|?>>
    <associate|aproximate halfopen by open|<tuple|18.90|?>>
    <associate|auto-1|<tuple|18|?>>
    <associate|auto-10|<tuple|18.2.2|?>>
    <associate|auto-11|<tuple|18.2.3|?>>
    <associate|auto-12|<tuple|<with|mode|<quote|math>|\<cal-R\><rsup|n>>|?>>
    <associate|auto-13|<tuple|Dyadic cubes|?>>
    <associate|auto-14|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>|?>>
    <associate|auto-15|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>|?>>
    <associate|auto-16|<tuple|lower half open space|?>>
    <associate|auto-17|<tuple|<with|mode|<quote|math>|<around*|]|-\<infty\>,a|[><rsub|i>>|?>>
    <associate|auto-18|<tuple|Lower half spaces|?>>
    <associate|auto-19|<tuple|18.3|?>>
    <associate|auto-2|<tuple|18.1|?>>
    <associate|auto-20|<tuple|18.3.1|?>>
    <associate|auto-21|<tuple|18.3.2|?>>
    <associate|auto-22|<tuple|Carath?odory theorem|?>>
    <associate|auto-23|<tuple|18.3.3|?>>
    <associate|auto-24|<tuple|Lebesgue measurable space|?>>
    <associate|auto-25|<tuple|Lebesgue measure|?>>
    <associate|auto-26|<tuple|Lebesgue measurable set|?>>
    <associate|auto-27|<tuple|18.3.4|?>>
    <associate|auto-28|<tuple|<with|mode|<quote|math>|\<varphi\><rsup|n>>|?>>
    <associate|auto-29|<tuple|18.3.5|?>>
    <associate|auto-3|<tuple|18.2|?>>
    <associate|auto-30|<tuple|18.3.6|?>>
    <associate|auto-31|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible|?>>
    <associate|auto-32|<tuple|complete measures|?>>
    <associate|auto-33|<tuple|<with|mode|<quote|math>|A<rsub|\<mu\>>>|?>>
    <associate|auto-34|<tuple|completion of a measure space|?>>
    <associate|auto-35|<tuple|outer measure induced|?>>
    <associate|auto-36|<tuple|inner measure induced|?>>
    <associate|auto-37|<tuple|<with|mode|<quote|math>|\<mu\><rsup|\<ast\>>>|?>>
    <associate|auto-38|<tuple|<with|mode|<quote|math>|\<mu\><rsub|\<ast\>>>|?>>
    <associate|auto-39|<tuple|inner regular sets|?>>
    <associate|auto-4|<tuple|algebra|?>>
    <associate|auto-40|<tuple|outer regular sets|?>>
    <associate|auto-41|<tuple|18.4|?>>
    <associate|auto-42|<tuple|18.4.1|?>>
    <associate|auto-43|<tuple|Dynkin class|?>>
    <associate|auto-44|<tuple|<with|font-family|<quote|tt>|language|<quote|verbatim>|D>|?>>
    <associate|auto-45|<tuple|<with|mode|<quote|math>|\<cal-d\><around*|(|\<cal-A\>|)>>|?>>
    <associate|auto-46|<tuple|18.5|?>>
    <associate|auto-47|<tuple|18.5.1|?>>
    <associate|auto-48|<tuple|measurable function|?>>
    <associate|auto-49|<tuple|Borel function|?>>
    <associate|auto-5|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|auto-50|<tuple|<with|mode|<quote|math>|\<cal-A\>>-measurable
    function|?>>
    <associate|auto-51|<tuple|<with|mode|<quote|math>|<wide|\<cal-M\>|\<wide-bar\>><around*|[|X|]>>|?>>
    <associate|auto-52|<tuple|18.5.2|?>>
    <associate|auto-53|<tuple|18.5.3|?>>
    <associate|auto-54|<tuple|18.5.4|?>>
    <associate|auto-55|<tuple|almost everyware|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-7|<tuple|Borel algebra|?>>
    <associate|auto-8|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>|?>>
    <associate|auto-9|<tuple|18.2.1|?>>
    <associate|borel algebra on the extebded reals (1)|<tuple|18.30|?>>
    <associate|borel algebra on the extended real numbers
    (2)|<tuple|18.31|?>>
    <associate|borel algebra on the extended reals (3)|<tuple|18.32|?>>
    <associate|boundaries of a rectangle are unique|<tuple|18.39|?>>
    <associate|bounded intervals|<tuple|18.22|?>>
    <associate|characteristic function is measurable|<tuple|18.156|?>>
    <associate|complete measures|<tuple|18.106|?>>
    <associate|completion lemma|<tuple|18.109|?>>
    <associate|completion of Borelset label|<tuple|18.112|?>>
    <associate|completion of a measure|<tuple|18.110|?>>
    <associate|completion of a measure space|<tuple|18.111|?>>
    <associate|composition of measurable functions is
    measurable|<tuple|18.144|?>>
    <associate|condition for a Dynkin class to be a sigma
    algebra|<tuple|18.133|?>>
    <associate|consequence of a pi-system|<tuple|18.132|?>>
    <associate|continuous functions are measurable (4)|<tuple|18.155|?>>
    <associate|corollary 18.29|<tuple|18.29|?>>
    <associate|countable additivity implies additivity|<tuple|18.63|?>>
    <associate|empty rectaangles|<tuple|18.35|?>>
    <associate|eq 18.1.014|<tuple|18.10|?>>
    <associate|eq 18.1.016|<tuple|18.4|?>>
    <associate|eq 18.1.033|<tuple|18.1|?>>
    <associate|eq 18.10.021|<tuple|18.15|?>>
    <associate|eq 18.108.021|<tuple|18.134|?>>
    <associate|eq 18.109.021|<tuple|18.135|?>>
    <associate|eq 18.11.021|<tuple|18.16|?>>
    <associate|eq 18.111.021|<tuple|18.136|?>>
    <associate|eq 18.112.021|<tuple|18.138|?>>
    <associate|eq 18.112.021.1|<tuple|18.137|?>>
    <associate|eq 18.113.021|<tuple|18.139|?>>
    <associate|eq 18.114.021|<tuple|18.140|?>>
    <associate|eq 18.115.021|<tuple|18.141|?>>
    <associate|eq 18.116.021|<tuple|18.142|?>>
    <associate|eq 18.117.021|<tuple|18.143|?>>
    <associate|eq 18.118.021|<tuple|18.144|?>>
    <associate|eq 18.119.021|<tuple|18.145|?>>
    <associate|eq 18.12.021|<tuple|18.17|?>>
    <associate|eq 18.120.021|<tuple|18.146|?>>
    <associate|eq 18.121.021|<tuple|18.147|?>>
    <associate|eq 18.122.021|<tuple|18.148|?>>
    <associate|eq 18.123.021|<tuple|18.149|?>>
    <associate|eq 18.127.025|<tuple|18.150|?>>
    <associate|eq 18.128.025|<tuple|18.151|?>>
    <associate|eq 18.129.025|<tuple|18.152|?>>
    <associate|eq 18.13.021|<tuple|18.18|?>>
    <associate|eq 18.130.025|<tuple|18.153|?>>
    <associate|eq 18.131.025|<tuple|18.154|?>>
    <associate|eq 18.132.025|<tuple|18.155|?>>
    <associate|eq 18.133.025|<tuple|18.156|?>>
    <associate|eq 18.133.033|<tuple|18.313|?>>
    <associate|eq 18.134.025|<tuple|18.157|?>>
    <associate|eq 18.135.025|<tuple|18.158|?>>
    <associate|eq 18.136.025|<tuple|18.159|?>>
    <associate|eq 18.137.025|<tuple|18.160|?>>
    <associate|eq 18.138.025|<tuple|18.161|?>>
    <associate|eq 18.139.025|<tuple|18.162|?>>
    <associate|eq 18.14.021|<tuple|18.19|?>>
    <associate|eq 18.140.025|<tuple|18.163|?>>
    <associate|eq 18.141.025|<tuple|18.164|?>>
    <associate|eq 18.142.025|<tuple|18.165|?>>
    <associate|eq 18.143.025|<tuple|18.166|?>>
    <associate|eq 18.144.025|<tuple|18.167|?>>
    <associate|eq 18.145.025|<tuple|18.168|?>>
    <associate|eq 18.146.025|<tuple|18.169|?>>
    <associate|eq 18.147.025|<tuple|18.170|?>>
    <associate|eq 18.148.025|<tuple|18.171|?>>
    <associate|eq 18.149.025|<tuple|18.172|?>>
    <associate|eq 18.15.021|<tuple|18.20|?>>
    <associate|eq 18.150.025|<tuple|18.173|?>>
    <associate|eq 18.151.025|<tuple|18.174|?>>
    <associate|eq 18.152.025|<tuple|18.175|?>>
    <associate|eq 18.153.025|<tuple|18.176|?>>
    <associate|eq 18.154.025|<tuple|18.177|?>>
    <associate|eq 18.155.025|<tuple|18.178|?>>
    <associate|eq 18.156.025|<tuple|18.179|?>>
    <associate|eq 18.157.025|<tuple|18.180|?>>
    <associate|eq 18.158.025|<tuple|18.181|?>>
    <associate|eq 18.159.025|<tuple|18.182|?>>
    <associate|eq 18.16.021|<tuple|18.21|?>>
    <associate|eq 18.160.025|<tuple|18.183|?>>
    <associate|eq 18.161.025|<tuple|18.184|?>>
    <associate|eq 18.162.025|<tuple|18.185|?>>
    <associate|eq 18.163.025|<tuple|18.186|?>>
    <associate|eq 18.164.025|<tuple|18.187|?>>
    <associate|eq 18.165.025|<tuple|18.188|?>>
    <associate|eq 18.166.025|<tuple|18.189|?>>
    <associate|eq 18.167.026|<tuple|18.231|?>>
    <associate|eq 18.167.027|<tuple|18.194|?>>
    <associate|eq 18.167.028|<tuple|18.190|?>>
    <associate|eq 18.168.026|<tuple|18.232|?>>
    <associate|eq 18.168.027|<tuple|18.199|?>>
    <associate|eq 18.168.028|<tuple|18.191|?>>
    <associate|eq 18.169.026|<tuple|18.233|?>>
    <associate|eq 18.169.027|<tuple|18.200|?>>
    <associate|eq 18.169.028|<tuple|18.192|?>>
    <associate|eq 18.17.021|<tuple|18.22|?>>
    <associate|eq 18.170.026|<tuple|18.234|?>>
    <associate|eq 18.170.027|<tuple|18.201|?>>
    <associate|eq 18.170.028|<tuple|18.193|?>>
    <associate|eq 18.171.026|<tuple|18.235|?>>
    <associate|eq 18.171.027|<tuple|18.202|?>>
    <associate|eq 18.172.026|<tuple|18.236|?>>
    <associate|eq 18.172.027|<tuple|18.203|?>>
    <associate|eq 18.172.028|<tuple|18.195|?>>
    <associate|eq 18.173.026|<tuple|18.237|?>>
    <associate|eq 18.173.027|<tuple|18.204|?>>
    <associate|eq 18.173list|<tuple|18.196|?>>
    <associate|eq 18.174.026|<tuple|18.238|?>>
    <associate|eq 18.174.027|<tuple|18.205|?>>
    <associate|eq 18.174.028|<tuple|18.197|?>>
    <associate|eq 18.175.026|<tuple|18.239|?>>
    <associate|eq 18.175.027|<tuple|18.206|?>>
    <associate|eq 18.175.028|<tuple|18.198|?>>
    <associate|eq 18.176.026|<tuple|18.240|?>>
    <associate|eq 18.176.027|<tuple|18.207|?>>
    <associate|eq 18.177.026|<tuple|18.241|?>>
    <associate|eq 18.177.027|<tuple|18.208|?>>
    <associate|eq 18.18.021|<tuple|18.23|?>>
    <associate|eq 18.186.030.1|<tuple|18.209|?>>
    <associate|eq 18.187.030.1|<tuple|18.210|?>>
    <associate|eq 18.188.028|<tuple|18.216|?>>
    <associate|eq 18.189.028|<tuple|18.217|?>>
    <associate|eq 18.19.021|<tuple|18.24|?>>
    <associate|eq 18.190.028|<tuple|18.211|?>>
    <associate|eq 18.191.028|<tuple|18.212|?>>
    <associate|eq 18.192.028|<tuple|18.213|?>>
    <associate|eq 18.193.028|<tuple|18.214|?>>
    <associate|eq 18.194.028|<tuple|18.215|?>>
    <associate|eq 18.195.028|<tuple|18.218|?>>
    <associate|eq 18.196.028|<tuple|18.219|?>>
    <associate|eq 18.197.028|<tuple|18.225|?>>
    <associate|eq 18.197.029|<tuple|18.220|?>>
    <associate|eq 18.198.028|<tuple|18.226|?>>
    <associate|eq 18.198.029|<tuple|18.221|?>>
    <associate|eq 18.199.029|<tuple|18.222|?>>
    <associate|eq 18.2.014|<tuple|18.11|?>>
    <associate|eq 18.2.016|<tuple|18.5|?>>
    <associate|eq 18.2.033|<tuple|18.2|?>>
    <associate|eq 18.20.021|<tuple|18.25|?>>
    <associate|eq 18.200.029|<tuple|18.223|?>>
    <associate|eq 18.201.029|<tuple|18.224|?>>
    <associate|eq 18.204.029|<tuple|18.228|?>>
    <associate|eq 18.206.029|<tuple|18.229|?>>
    <associate|eq 18.207.029|<tuple|18.230|?>>
    <associate|eq 18.21.021|<tuple|18.26|?>>
    <associate|eq 18.219.030|<tuple|18.242|?>>
    <associate|eq 18.22.021|<tuple|18.27|?>>
    <associate|eq 18.220.030|<tuple|18.243|?>>
    <associate|eq 18.221.030.1|<tuple|18.244|?>>
    <associate|eq 18.222.030|<tuple|18.245|?>>
    <associate|eq 18.223.030|<tuple|18.246|?>>
    <associate|eq 18.224.030|<tuple|18.247|?>>
    <associate|eq 18.225.030|<tuple|18.248|?>>
    <associate|eq 18.226.030|<tuple|18.249|?>>
    <associate|eq 18.227.030|<tuple|18.251|?>>
    <associate|eq 18.228.030.1|<tuple|18.250|?>>
    <associate|eq 18.23.021|<tuple|18.28|?>>
    <associate|eq 18.230.030|<tuple|18.252|?>>
    <associate|eq 18.231.030|<tuple|18.253|?>>
    <associate|eq 18.232.030|<tuple|18.254|?>>
    <associate|eq 18.233.030|<tuple|18.255|?>>
    <associate|eq 18.234.031|<tuple|18.256|?>>
    <associate|eq 18.235.031|<tuple|18.257|?>>
    <associate|eq 18.235.031.1|<tuple|18.258|?>>
    <associate|eq 18.236.031|<tuple|18.259|?>>
    <associate|eq 18.237.031|<tuple|18.260|?>>
    <associate|eq 18.239.032|<tuple|18.261|?>>
    <associate|eq 18.24.021|<tuple|18.29|?>>
    <associate|eq 18.240.032|<tuple|18.262|?>>
    <associate|eq 18.241.032|<tuple|18.263|?>>
    <associate|eq 18.242.032|<tuple|18.264|?>>
    <associate|eq 18.243.032|<tuple|18.265|?>>
    <associate|eq 18.244.032|<tuple|18.266|?>>
    <associate|eq 18.245.032|<tuple|18.267|?>>
    <associate|eq 18.246.032|<tuple|18.268|?>>
    <associate|eq 18.247.032|<tuple|18.269|?>>
    <associate|eq 18.248.032|<tuple|18.270|?>>
    <associate|eq 18.249.032|<tuple|18.271|?>>
    <associate|eq 18.25.020|<tuple|18.30|?>>
    <associate|eq 18.250.032|<tuple|18.272|?>>
    <associate|eq 18.251.032|<tuple|18.273|?>>
    <associate|eq 18.252.032|<tuple|18.274|?>>
    <associate|eq 18.253.032|<tuple|18.275|?>>
    <associate|eq 18.254.032|<tuple|18.276|?>>
    <associate|eq 18.255.032|<tuple|18.277|?>>
    <associate|eq 18.256.032|<tuple|18.278|?>>
    <associate|eq 18.257.032|<tuple|18.279|?>>
    <associate|eq 18.258.032|<tuple|18.280|?>>
    <associate|eq 18.258.032.1|<tuple|18.279|?>>
    <associate|eq 18.259.032|<tuple|18.281|?>>
    <associate|eq 18.259.032.1|<tuple|18.279|?>>
    <associate|eq 18.26.021|<tuple|18.31|?>>
    <associate|eq 18.260.032|<tuple|18.282|?>>
    <associate|eq 18.261.032|<tuple|18.283|?>>
    <associate|eq 18.262.032|<tuple|18.284|?>>
    <associate|eq 18.263.032|<tuple|18.285|?>>
    <associate|eq 18.266.033|<tuple|18.286|?>>
    <associate|eq 18.267.033|<tuple|18.287|?>>
    <associate|eq 18.268.033|<tuple|18.288|?>>
    <associate|eq 18.269.033|<tuple|18.289|?>>
    <associate|eq 18.27.021|<tuple|18.32|?>>
    <associate|eq 18.270.033|<tuple|18.290|?>>
    <associate|eq 18.271.033|<tuple|18.291|?>>
    <associate|eq 18.272.033|<tuple|18.292|?>>
    <associate|eq 18.273.033|<tuple|18.293|?>>
    <associate|eq 18.274.033|<tuple|18.294|?>>
    <associate|eq 18.276.033|<tuple|18.296|?>>
    <associate|eq 18.277.033|<tuple|18.297|?>>
    <associate|eq 18.278.033|<tuple|18.295|?>>
    <associate|eq 18.28.021|<tuple|18.33|?>>
    <associate|eq 18.281.033|<tuple|18.298|?>>
    <associate|eq 18.282.033|<tuple|18.299|?>>
    <associate|eq 18.283.033|<tuple|18.300|?>>
    <associate|eq 18.284.033|<tuple|18.301|?>>
    <associate|eq 18.29.021|<tuple|18.34|?>>
    <associate|eq 18.293.033|<tuple|18.302|?>>
    <associate|eq 18.294.033|<tuple|18.303|?>>
    <associate|eq 18.295.033|<tuple|18.304|?>>
    <associate|eq 18.296.033|<tuple|18.305|?>>
    <associate|eq 18.3.014|<tuple|18.12|?>>
    <associate|eq 18.3.016|<tuple|18.6|?>>
    <associate|eq 18.3.033|<tuple|18.3|?>>
    <associate|eq 18.30.021|<tuple|18.35|?>>
    <associate|eq 18.306.033|<tuple|18.306|?>>
    <associate|eq 18.307.033|<tuple|18.307|?>>
    <associate|eq 18.308.033|<tuple|18.308|?>>
    <associate|eq 18.309.033|<tuple|18.309|?>>
    <associate|eq 18.31.021|<tuple|18.36|?>>
    <associate|eq 18.310.033|<tuple|18.310|?>>
    <associate|eq 18.311.033|<tuple|18.311|?>>
    <associate|eq 18.312.033|<tuple|18.312|?>>
    <associate|eq 18.314.033|<tuple|18.314|?>>
    <associate|eq 18.315.033|<tuple|18.315|?>>
    <associate|eq 18.316.033|<tuple|18.316|?>>
    <associate|eq 18.317.033|<tuple|18.317|?>>
    <associate|eq 18.318.033|<tuple|18.318|?>>
    <associate|eq 18.319.033|<tuple|18.319|?>>
    <associate|eq 18.32.021|<tuple|18.37|?>>
    <associate|eq 18.320.033|<tuple|18.320|?>>
    <associate|eq 18.321.033|<tuple|18.321|?>>
    <associate|eq 18.322.033|<tuple|18.322|?>>
    <associate|eq 18.323.033|<tuple|18.323|?>>
    <associate|eq 18.324.033|<tuple|18.324|?>>
    <associate|eq 18.325.033|<tuple|18.325|?>>
    <associate|eq 18.326.033|<tuple|18.326|?>>
    <associate|eq 18.327.033|<tuple|18.327|?>>
    <associate|eq 18.328.033|<tuple|18.328|?>>
    <associate|eq 18.329.033|<tuple|18.329|?>>
    <associate|eq 18.33.021|<tuple|18.38|?>>
    <associate|eq 18.330.033|<tuple|18.330|?>>
    <associate|eq 18.331.033|<tuple|18.332|?>>
    <associate|eq 18.331.033.1|<tuple|18.331|?>>
    <associate|eq 18.332.033|<tuple|18.333|?>>
    <associate|eq 18.333.033|<tuple|18.334|?>>
    <associate|eq 18.334.033|<tuple|18.335|?>>
    <associate|eq 18.335.033|<tuple|18.336|?>>
    <associate|eq 18.336.033|<tuple|18.337|?>>
    <associate|eq 18.337.033|<tuple|18.338|?>>
    <associate|eq 18.338.033|<tuple|18.339|?>>
    <associate|eq 18.34.021|<tuple|18.39|?>>
    <associate|eq 18.340.033|<tuple|18.340|?>>
    <associate|eq 18.341.033|<tuple|18.341|?>>
    <associate|eq 18.342.033|<tuple|18.342|?>>
    <associate|eq 18.343.033|<tuple|18.343|?>>
    <associate|eq 18.344.033|<tuple|18.344|?>>
    <associate|eq 18.35.021|<tuple|18.40|?>>
    <associate|eq 18.36.016|<tuple|18.85|?>>
    <associate|eq 18.36.021|<tuple|18.41|?>>
    <associate|eq 18.37.016|<tuple|18.86|?>>
    <associate|eq 18.37.021|<tuple|18.42|?>>
    <associate|eq 18.38.016|<tuple|18.87|?>>
    <associate|eq 18.38.021|<tuple|18.43|?>>
    <associate|eq 18.39.016|<tuple|18.87|?>>
    <associate|eq 18.39.022|<tuple|18.61|?>>
    <associate|eq 18.4.016|<tuple|18.7|?>>
    <associate|eq 18.40.016|<tuple|18.89|?>>
    <associate|eq 18.40.022|<tuple|18.62|?>>
    <associate|eq 18.41.016|<tuple|18.90|?>>
    <associate|eq 18.41.022|<tuple|18.63|?>>
    <associate|eq 18.42.016|<tuple|18.91|?>>
    <associate|eq 18.42.022|<tuple|18.64|?>>
    <associate|eq 18.43.016|<tuple|18.92|?>>
    <associate|eq 18.43.022|<tuple|18.65|?>>
    <associate|eq 18.44.016|<tuple|18.93|?>>
    <associate|eq 18.44.022|<tuple|18.66|?>>
    <associate|eq 18.44.033|<tuple|18.44|?>>
    <associate|eq 18.45.016|<tuple|18.94|?>>
    <associate|eq 18.45.022|<tuple|18.67|?>>
    <associate|eq 18.45.033|<tuple|18.45|?>>
    <associate|eq 18.46.016|<tuple|18.95|?>>
    <associate|eq 18.46.022|<tuple|18.68|?>>
    <associate|eq 18.46.033|<tuple|18.46|?>>
    <associate|eq 18.47.016|<tuple|18.96|?>>
    <associate|eq 18.47.022|<tuple|18.69|?>>
    <associate|eq 18.47.033|<tuple|18.47|?>>
    <associate|eq 18.48.016|<tuple|18.97|?>>
    <associate|eq 18.48.022|<tuple|18.70|?>>
    <associate|eq 18.48.033|<tuple|18.52|?>>
    <associate|eq 18.48.033.1|<tuple|18.48|?>>
    <associate|eq 18.49.016|<tuple|18.98|?>>
    <associate|eq 18.49.022|<tuple|18.71|?>>
    <associate|eq 18.49.033.1|<tuple|18.49|?>>
    <associate|eq 18.5.033|<tuple|18.8|?>>
    <associate|eq 18.50.016|<tuple|18.99|?>>
    <associate|eq 18.50.022|<tuple|18.72|?>>
    <associate|eq 18.50.033.1|<tuple|18.50|?>>
    <associate|eq 18.51.016|<tuple|18.100|?>>
    <associate|eq 18.51.022|<tuple|18.73|?>>
    <associate|eq 18.51.033.1|<tuple|18.51|?>>
    <associate|eq 18.52.016|<tuple|18.110|?>>
    <associate|eq 18.52.018|<tuple|18.101|?>>
    <associate|eq 18.52.022|<tuple|18.74|?>>
    <associate|eq 18.53.016|<tuple|18.111|?>>
    <associate|eq 18.53.018|<tuple|18.102|?>>
    <associate|eq 18.53.022|<tuple|18.75|?>>
    <associate|eq 18.53.033.2|<tuple|18.53|?>>
    <associate|eq 18.54.016|<tuple|18.112|?>>
    <associate|eq 18.54.018|<tuple|18.103|?>>
    <associate|eq 18.54.022|<tuple|18.76|?>>
    <associate|eq 18.54.033.1|<tuple|18.55|?>>
    <associate|eq 18.54.033.2|<tuple|18.54|?>>
    <associate|eq 18.55.016|<tuple|18.113|?>>
    <associate|eq 18.55.018|<tuple|18.104|?>>
    <associate|eq 18.55.022|<tuple|18.77|?>>
    <associate|eq 18.55.033.1|<tuple|18.56|?>>
    <associate|eq 18.56.016|<tuple|18.114|?>>
    <associate|eq 18.56.018|<tuple|18.105|?>>
    <associate|eq 18.56.022|<tuple|18.78|?>>
    <associate|eq 18.56.033.1|<tuple|18.57|?>>
    <associate|eq 18.57.016|<tuple|18.115|?>>
    <associate|eq 18.57.018|<tuple|18.106|?>>
    <associate|eq 18.57.022|<tuple|18.79|?>>
    <associate|eq 18.57.033.1|<tuple|18.58|?>>
    <associate|eq 18.58.016|<tuple|18.116|?>>
    <associate|eq 18.58.018|<tuple|18.107|?>>
    <associate|eq 18.58.022|<tuple|18.80|?>>
    <associate|eq 18.58.033.1|<tuple|18.59|?>>
    <associate|eq 18.59.016|<tuple|18.117|?>>
    <associate|eq 18.59.018|<tuple|18.108|?>>
    <associate|eq 18.59.022|<tuple|18.81|?>>
    <associate|eq 18.59.033.1|<tuple|18.60|?>>
    <associate|eq 18.6.033|<tuple|18.9|?>>
    <associate|eq 18.60.016|<tuple|18.118|?>>
    <associate|eq 18.60.018|<tuple|18.109|?>>
    <associate|eq 18.60.023|<tuple|18.82|?>>
    <associate|eq 18.61.016|<tuple|18.119|?>>
    <associate|eq 18.61.023|<tuple|18.83|?>>
    <associate|eq 18.62.016|<tuple|18.120|?>>
    <associate|eq 18.62.032|<tuple|18.84|?>>
    <associate|eq 18.74.018|<tuple|18.121|?>>
    <associate|eq 18.75.018|<tuple|18.122|?>>
    <associate|eq 18.76.018|<tuple|18.123|?>>
    <associate|eq 18.77.018|<tuple|18.124|?>>
    <associate|eq 18.78.018|<tuple|18.125|?>>
    <associate|eq 18.79.018|<tuple|18.126|?>>
    <associate|eq 18.8.020|<tuple|18.13|?>>
    <associate|eq 18.80.018|<tuple|18.127|?>>
    <associate|eq 18.81.018|<tuple|18.128|?>>
    <associate|eq 18.82.018|<tuple|18.129|?>>
    <associate|eq 18.83.018|<tuple|18.130|?>>
    <associate|eq 18.84.018|<tuple|18.131|?>>
    <associate|eq 18.85.018|<tuple|18.132|?>>
    <associate|eq 18.86.018|<tuple|18.133|?>>
    <associate|eq 18.9.020|<tuple|18.14|?>>
    <associate|every open set in R^n is a countable union of dyadic
    cubes|<tuple|18.50|?>>
    <associate|f=g almost everywhere property|<tuple|18.173|?>>
    <associate|finite unions and intersections|<tuple|18.7|?>>
    <associate|function comparizatons are measurable|<tuple|18.159|?>>
    <associate|generated sigma algebra|<tuple|18.17|?>>
    <associate|half open rectangle as intersection of open
    sets|<tuple|18.51|?>>
    <associate|half spaces are Lebesgue measurable in R^n|<tuple|18.87|?>>
    <associate|induced outer inner measure|<tuple|18.114|?>>
    <associate|induced outer measure is a outer measure|<tuple|18.116|?>>
    <associate|inner/outer regularity|<tuple|18.118|?>>
    <associate|intersection of a class of Dynkin classes is a Dynkin
    class|<tuple|18.129|?>>
    <associate|intersection of sigma algebras is a sigma
    algebra|<tuple|18.16|?>>
    <associate|interval identities|<tuple|18.25|?>>
    <associate|lemma 18.28 set relations|<tuple|18.28|?>>
    <associate|length of interval is increasing|<tuple|18.42|?>>
    <associate|liminf or limsup of functions|<tuple|18.162|?>>
    <associate|lower half open spaces|<tuple|18.53|?>>
    <associate|lower half open spaces are open|<tuple|18.54|?>>
    <associate|measurable function|<tuple|18.137|?>>
    <associate|measurable function and limit|<tuple|18.174|?>>
    <associate|measurable function and restriction|<tuple|18.141|?>>
    <associate|measurable function condition (1)|<tuple|18.151|?>>
    <associate|measurable function condition (2)|<tuple|18.153|?>>
    <associate|measurable function condition and restricted
    functions|<tuple|18.142|?>>
    <associate|measurable functions and generated algebra|<tuple|18.140|?>>
    <associate|measurable functions properties (1)|<tuple|18.163|?>>
    <associate|measurable functions properties (2)|<tuple|18.164|?>>
    <associate|measurable functions properties (3)|<tuple|18.165|?>>
    <associate|measurable functions properties (4)|<tuple|18.166|?>>
    <associate|measurable functions properties (5)|<tuple|18.169|?>>
    <associate|measurable functions properties (6)|<tuple|18.170|?>>
    <associate|measurable set alternative definition|<tuple|18.73|?>>
    <associate|measurable sets and null sets|<tuple|18.74|?>>
    <associate|measurable space|<tuple|18.13|?>>
    <associate|measure|<tuple|18.61|?>>
    <associate|measure is subadditive|<tuple|18.66|?>>
    <associate|measure properties (1)|<tuple|18.64|?>>
    <associate|measure properties (2)|<tuple|18.67|?>>
    <associate|measure regularity lemma|<tuple|18.122|?>>
    <associate|measureable set|<tuple|18.72|?>>
    <associate|negligibility|<tuple|18.104|?>>
    <associate|negligible set properties|<tuple|18.105|?>>
    <associate|null function is measurable|<tuple|18.154|?>>
    <associate|open,half open and bounded intervals are
    different|<tuple|18.24|?>>
    <associate|open/closed sets relation|<tuple|18.59|?>>
    <associate|outer measure|<tuple|18.69|?>>
    <associate|outer measure definition on rectangles|<tuple|18.84|?>>
    <associate|outer measure finite subadditivity|<tuple|18.70|?>>
    <associate|outer measure is translation invariant|<tuple|18.97|?>>
    <associate|outer measure on R|<tuple|18.80|?>>
    <associate|outer measure on rectangles|<tuple|18.85|?>>
    <associate|outermeasure construction|<tuple|18.71|?>>
    <associate|properties of algebras|<tuple|18.10|?>>
    <associate|real (extended real) measurability|<tuple|18.148|?>>
    <associate|rectangle and half open sets|<tuple|18.56|?>>
    <associate|replace countable untion of sets by disjoint union of
    sets|<tuple|18.65|?>>
    <associate|restriction of measure space to a sub sigma
    algebra|<tuple|18.62|?>>
    <associate|semi additivity of the length in the reals|<tuple|18.79|?>>
    <associate|set of all subsets is a Dynkin class|<tuple|18.128|?>>
    <associate|set of all subsets is a sigma algebra|<tuple|18.12|?>>
    <associate|sigma algebra|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|sigma algebra equivalent definitions|<tuple|18.14|?>>
    <associate|sigma algebras are Dynkin classes|<tuple|18.127|?>>
    <associate|simple function|<tuple|18.157|?>>
    <associate|simple functions are measurable|<tuple|18.158|?>>
    <associate|the set of Dyadic cubes is denumerable|<tuple|18.49|?>>
    <associate|translation properties|<tuple|18.95|?>>
    <associate|union intersection union of families|<tuple|18.3|?>>
    <associate|union of union of sets (1)|<tuple|18.5|?>>
    <associate|union,intersection and function between and
    indexes|<tuple|18.4|?>>
    <associate|uniqueness of the Lebesgue measure|<tuple|18.93|?>>
    <associate|volume in R^n|<tuple|18.41|?>>
    <associate|volume is increasing|<tuple|18.43|?>>
    <associate|volume is subadditive|<tuple|18.83|?>>
    <associate|volume is translation invariant|<tuple|18.96|?>>
    <associate|volume of a rectangle|<tuple|18.40|?>>
    <associate|writing a countable family of sets as a disjoint familly of
    sets|<tuple|18.6|?>>
    <associate|{x\<less\>f} properties|<tuple|18.150|?>>
    <associate|{x\<less\>f} properties (1)|<tuple|18.152|?>>
    <associate|\|f(x)\| as f+ f-|<tuple|18.168|?>>
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

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-R\><rsup|n>>>|<pageref|auto-12>>

      <tuple|<tuple|Dyadic cubes>|<pageref|auto-13>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n><rsub|m>>>|<pageref|auto-14>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-D\><rsup|n>>>|<pageref|auto-15>>

      <tuple|<tuple|lower half open space>|<pageref|auto-16>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|]|-\<infty\>,a|[><rsub|i>>>|<pageref|auto-17>>

      <tuple|<tuple|Lower half spaces>|<pageref|auto-18>>

      <tuple|<tuple|Carath?odory theorem>|<pageref|auto-22>>

      <tuple|<tuple|Lebesgue measurable space>|<pageref|auto-24>>

      <tuple|<tuple|Lebesgue measure>|<pageref|auto-25>>

      <tuple|<tuple|Lebesgue measurable set>|<pageref|auto-26>>

      <tuple|<tuple|<with|mode|<quote|math>|\<varphi\><rsup|n>>>|<pageref|auto-28>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\>>-negligible>|<pageref|auto-31>>

      <tuple|<tuple|complete measures>|<pageref|auto-32>>

      <tuple|<tuple|<with|mode|<quote|math>|A<rsub|\<mu\>>>>|<pageref|auto-33>>

      <tuple|<tuple|completion of a measure space>|<pageref|auto-34>>

      <tuple|<tuple|outer measure induced>|<pageref|auto-35>>

      <tuple|<tuple|inner measure induced>|<pageref|auto-36>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\><rsup|\<ast\>>>>|<pageref|auto-37>>

      <tuple|<tuple|<with|mode|<quote|math>|\<mu\><rsub|\<ast\>>>>|<pageref|auto-38>>

      <tuple|<tuple|inner regular sets>|<pageref|auto-39>>

      <tuple|<tuple|outer regular sets>|<pageref|auto-40>>

      <tuple|<tuple|Dynkin class>|<pageref|auto-43>>

      <tuple|<tuple|<with|font-family|<quote|tt>|language|<quote|verbatim>|D>>|<pageref|auto-44>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-d\><around*|(|\<cal-A\>|)>>>|<pageref|auto-45>>

      <tuple|<tuple|measurable function>|<pageref|auto-48>>

      <tuple|<tuple|Borel function>|<pageref|auto-49>>

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-A\>>-measurable
      function>|<pageref|auto-50>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<cal-M\>|\<wide-bar\>><around*|[|X|]>>>|<pageref|auto-51>>

      <tuple|<tuple|almost everyware>|<pageref|auto-55>>
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
      <with|mode|<quote|math>|<wide|\<bbb-R\>|\<wide-bar\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-10>>

      <with|par-left|<quote|1tab>|18.2.3<space|2spc>Borel algebra on
      <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-11>>

      18.3<space|2spc>Measures <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-19>

      <with|par-left|<quote|1tab>|18.3.1<space|2spc>Measure definition and
      properties <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-20>>

      <with|par-left|<quote|1tab>|18.3.2<space|2spc>Carath?odory theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|18.3.3<space|2spc>The Carath?odory theorem
      and the set of real numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|18.3.4<space|2spc>The Carath?odory theorem
      and <with|mode|<quote|math>|\<bbb-R\><rsup|n>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-27>>

      <with|par-left|<quote|1tab>|18.3.5<space|2spc>Properties of
      <with|mode|<quote|math>|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>,\<lambda\><rsup|n>|\<rangle\>>>
      and <with|mode|<quote|math>|<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>,<around*|(|\<lambda\><rsup|n>|)><rsub|\|\<cal-B\><around*|[|\<bbb-R\><rsup|n>|]>>|\<rangle\>>>
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-29>>

      <with|par-left|<quote|1tab>|18.3.6<space|2spc><with|mode|<quote|math>|Negligibity,Completeness<syntax|<with|mode|<quote|text>|
      and >|\<wedge\>>Regularity> <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-30>>

      18.4<space|2spc>Measurable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-41>

      <with|par-left|<quote|1tab>|18.4.1<space|2spc>Dynkin Classes
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-42>>

      18.5<space|2spc>Measurable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-46>

      <with|par-left|<quote|1tab>|18.5.1<space|2spc>Measurable functions
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-47>>

      <with|par-left|<quote|1tab>|18.5.2<space|2spc>Example of measurable
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-52>>

      <with|par-left|<quote|1tab>|18.5.3<space|2spc>Properties of measurable
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-53>>

      <with|par-left|<quote|1tab>|18.5.4<space|2spc>Properties that hold
      everywhere <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-54>>
    </associate>
  </collection>
</auxiliary>