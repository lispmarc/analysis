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
    <label|measurable space><dueto|Measurable Space>Let <math|X> be a non
    empty set set and <math|\<cal-A\>> a <math|\<sigma\>>-algebra then we
    call <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> a measurable
    space.
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
      <tformat|<table|<row|<cell|\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>|<cell|\<equallim\><rsub|def>>|<cell|\<sigma\><around*|[|\<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|]>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|Borel
      algebra is generated by closed sets>>>>|<cell|\<sigma\><around*|[|<around*|{|C\|C
      is closed in \<cal-T\><rsub|<wide|\<bbb-R\>|\<wide-bar\>>>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|<around*|]|a,\<infty\>|]>\|a\<in\>\<bbb-R\>|}>|]>>>|<row|<cell|>|<cell|=>|<cell|\<sigma\><around*|[|<around*|{|U\<subseteq\>\<cal-P\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>\|U<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>|}>|]>>>>>
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
      <math|A,B\<in\>\<cal-D\>\<Rightarrow\>A\\B\<in\>\<cal-D\>> hence
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
    is a Dynkin class|}>> then as <math|\<cal-P\><around*|(|X|)>\<in\>\<cal-X\>>
    [see <reference|set of all subsets is a Dynkin class>]
    <math|\<cal-X\>\<neq\>\<emptyset\>>, hence by <reference|intersection of
    a class of Dynkin classes is a Dynkin class> we have that
    <math|\<cal-D\>=<big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>> is a
    Dynkin class. As <math|\<forall\>\<cal-C\>\<in\>\<cal-X\>> we have that
    <math|\<cal-A\>\<subseteq\>\<cal-C\>> it follows that
    <math|\<cal-A\>\<subseteq\><big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>=\<cal-D\>>.
    If <math|\<cal-D\><rprime|'>> is another Dynkin class with
    <math|\<cal-A\>\<subseteq\>\<cal-D\><rprime|'>> then
    <math|\<cal-D\><rprime|'>\<in\>\<cal-X\>> hence
    <math|\<cal-D\>=<big|cap><rsub|\<cal-C\>\<in\>\<cal-X\>>\<cal-C\>\<subseteq\>\<cal-D\><rprime|'>>.
    Finally let <math|\<cal-D\><rprime|''>> be a another Dynkin class with
    <math|\<cal-A\>\<subseteq\>\<cal-D\><rprime|''>> such that fit contains
    every Dynkin class that contains <math|\<cal-A\>> we have that
    <math|\<cal-D\>\<subseteq\>\<cal-D\><rprime|''>> [<math|\<cal-D\>> is a
    Dynkin class containing <math|\<cal-A\>>] and
    <math|\<cal-D\><rprime|''>\<subseteq\>\<cal-D\>>
    [<math|\<cal-D\><rprime|''>> is a Dynkin class containing
    <math|\<cal-A\>>] so that <math|\<cal-D\><rprime|''>=\<cal-D\>> proving
    uniqueness.
  </proof>

  <\definition>
    Let <math|X> be a set then <math|\<cal-A\>\<subseteq\>\<cal-P\><around*|(|X|)>>
    is a <math|\<pi\>>-system on <math|X> if
    <math|\<forall\>A,B\<in\>\<cal-A\>> we have
    <math|A<big|cap>B\<in\>\<cal-A\>>.\ 
  </definition>

  <\note>
    <label|consequence of a pi-system>Let <math|X> be a set and
    <math|\<cal-A\>> a <math|\<pi\>>-system on <math|X> then for
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> where <math|I> is finite
    and non empty we have that <math|<big|cap><rsub|i\<in\>I>A<rsub|i>\<in\>\<cal-A\>>
  </note>

  <\proof>
    This follows from <reference|finite unions and intersections>.
  </proof>

  We prove now that every Dynkin class that is also a <math|\<pi\>>-system is
  a <math|\<sigma\>>-algebra

  <\lemma>
    <label|condition for a Dynkin class to be a sigma algebra>Let <math|X> be
    a set and <math|\<cal-D\>> a Dynkin class on <math|X> that is a
    <math|\<pi\>>-system on <math|X> then <math|\<cal-D\>> is a
    <math|\<sigma\>>-algebra
  </lemma>

  <\proof>
    Let's check the conditions for a <math|\<sigma\>>-algebra [see
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
    it follows that <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>.
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
    it follows, as <math|<around*|{|A<rsub|i><big|cap>C|}><rsub|i\<in\>\<bbb-N\><rsub|0>>>
    is clearly increasing, that <math|<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>|)><big|cap>C\<in\>\<cal-d\><around*|[|\<cal-A\>|]>>.
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
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-C\>|]>> [hence
    <math|\<cal-C\>\<subseteq\>\<cal-A\>>]. If <math|\<mu\>,\<nu\>> are two
    finite measures on <math|\<cal-A\>> such that
    <math|\<mu\><around*|(|X|)>=\<nu\><around*|(|X|)>> and
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
      <math|\<mu\><around*|(|A|)>=\<nu\><around*|(|A|)>,\<mu\><around*|(|B|)>=\<nu\><around*|(|B|)>>
      and

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
      proving that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>A<rsub|i>\<in\>\<cal-D\>>
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
    <math|\<cal-A\>=\<sigma\><around*|[|\<cal-C\>|]>> [hence
    <math|\<cal-C\>\<subseteq\>\<cal-A\>>]. If <math|\<mu\>,\<nu\>> are
    measures on <math|\<cal-A\>> such that <math|\<forall\>C\<in\>\<cal-C\>>
    we have <math|\<mu\><around*|(|C|)>=\<nu\><around*|(|C|)>> and there
    exists a <math|<around*|{|C<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-C\>>
    with <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>C<rsub|i>=X> and
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    \ <math|C<rsub|i>\<subseteq\>C<rsub|i+1>>,
    <math|\<mu\><around*|(|C<rsub|i>|)>\<less\>\<infty\>> then we have that
    <math|\<mu\>=\<nu\>>
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
    and <math|\<nu\><rsub|n><around*|(|A|)>=\<nu\><around*|(|A<big|cap>C<rsub|n>|)>\<leqslant\>\<nu\><around*|(|C<rsub|n>|)>\<less\>\<infty\>>.
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
    is increasing hence we can apply <reference|measure properties (2)>
    giving\ 

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
    spaces spaces, <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\>Y> a
    function then <math|f> [the graph of the function] is
    <with|font-series|bold|<math|\<cal-A\>,\<cal-B\>>-measurable> if
    <math|\<forall\>B\<in\>\<cal-B\>> we have that
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>. The set of
    <with|font-series|medium|<math|\<cal-A\>,\<cal-B\>>>-measurable function
    graphs is noted as <math|\<cal-M\><around*|[|A,\<cal-A\>;Y,\<cal-B\>|]>>,
    so\ 

    <\equation*>
      \<cal-M\><around*|[|A,\<cal-A\>;Y,\<cal-B\>|]>=<around*|{|f\<in\>Y<rsup|X>\|f
      is \<cal-A\>,\<cal-B\><text|-measurable>|}>
    </equation*>

    A function whose graph is <with|font-series|bold|<math|\<cal-A\>,\<cal-B\>>-measurabl>e
    is called a <with|font-series|bold|<math|\<cal-A\>,\<cal-B\>>=measurable>
    function.
  </definition>

  <\note>
    A set can have many <math|\<sigma\>>-algebras defined on it, so the same
    function can at the same time be measurable and not measurable, depending
    on the <math|\<sigma\>>-algebras used.
  </note>

  <\definition>
    <label|Borel function><index|Borel function>Let
    <math|<around*|\<langle\>|X,\<cal-T\><rsub|X>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-T\><rsub|Y>|\<rangle\>>> be a
    topological spaces, <math|f:X\<rightarrow\>Y> a function then <math|f> is
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
    is a measurable space, <math|f:A\<rightarrow\>Y> a function then <math|f>
    is <math|\<cal-A\>,\<sigma\><around*|[|\<cal-B\>|]>>-measurable if and
    only if <math|\<forall\>B\<in\>\<cal-B\>> we have
    <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>.
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
    <math|f:A\<rightarrow\>Y> a <math|\<cal-A\>,\<cal-B\>>-measurable
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
    such that <math|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>B<rsub|i>=A> and
    <math|f:A\<rightarrow\>Y> be such that
    <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> <math|f<rsub|\|B<rsub|i>>> is
    <math|\<cal-A\>,\<cal-B\>>-measurable then <math|f> is
    <math|\<cal-A\>,\<cal-B\>>-measurable.
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
    so that by the above it follows that <math|f<rsup|-1><around*|(|C|)>\<in\>\<cal-A\>>.
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
    <math|<around*|\<langle\>|X,\<cal-A\><rsub|X>|\<rangle\>>,<around*|\<langle\>|Y,\<cal-A\><rsub|Y>|\<rangle\>>>,<math|<around*|\<langle\>|Z,\<cal-A\><rsub|Z>|)>>,
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
    <math|g<rsup|-1><around*|(|A|)>\<in\>\<cal-A\><rsub|Y>> so that
    <math|f<rsup|-1><around*|(|g<rsup|-1><around*|(|A|)>|)>\<in\>\<cal-A\><rsub|X>>.
    Finally <math|<around*|(|g\<circ\>f|)><rsup|-1><around*|(|A|)>\<equallim\><rsub|<text|<reference|inverse
    image of a composition of functions>>>f<rsup|-1><around*|(|g<rsup|-1><around*|(|A|)>|)>\<in\>\<cal-A\><rsub|X>>
    proving the proposition.
  </proof>

  We have two interesting cases of measurable functions, when the image of a
  function consists of real numbers or extended real numbers.

  <\definition>
    <label|measurable extended function space><index|<math|\<cal-A\>>-measurable
    function><index|<math|<wide|\<cal-M\>|\<wide-bar\>><around*|[|X|]>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> then if <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    is <math|\<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<bar\>>|]>>-measurable
    [see <reference|borel algebra on the extended real numbers (2)>] then we
    say that <math|f> is <math|\<cal-A\>>-measurable. The set of
    <math|\<cal-A\>>-measurable function graphs is noted as
    <math|<wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>, so\ 

    <\equation*>
      <wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>=<around*|{|f\<in\><wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|A>\|f
      is \<cal-A\>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]><text|-measurable>|}>=\<cal-M\><around*|[|A,\<cal-A\>;<wide|\<bbb-R\>|\<wide-bar\>>,\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>|]>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsup|A>
    </equation*>

    If <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\>,\<cal-L\>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\>> [or <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>=<around*|\<langle\>|\<bbb-R\><rsup|n>,\<cal-L\><rsup|n>|\<rangle\>>>,
    <math|A\<in\>\<cal-L\><rsup|n>>] the Lebesgue measurable sets on
    <math|\<bbb-R\>>[or <math|\<bbb-R\><rsup|n>>] [see <reference|Lebesgue
    measure space> and <reference|Lebesgue measure space on R^n>] then a
    function <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> [or
    <math|f:A\<rightarrow\><wide|\<bbb-R\><rsup|>|\<wide-bar\>><rsup|n>>] is
    <math|Lebesgue>-measurable if <math|f> is <math|\<cal-L\>>-measurable [or
    <math|f> is<space|1em><math|\<cal-L\><rsup|n>> measurable].
  </definition>

  We have a equivalent definition for real functions

  <\definition>
    <label|measurable function space>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|A\<in\>\<cal-A\>> then if
    <math|f:A\<rightarrow\>\<bbb-R\>> is <math|\<cal-A\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
    [see <reference|Borel algebras on R>] we say that <math|f> is
    <math|\<cal-A\>>-measurable. The set of all <math|\<cal-A\>>-measurable
    function graphs is noted as <math|\<cal-M\><around*|[|A,\<cal-A\>|]>>, so\ 

    <\equation*>
      \<cal-M\><around*|[|A,\<cal-A\>|]>=<around*|{|f\<in\>\<bbb-R\><rsup|A>\|f
      is \<cal-A\>,\<cal-B\><around*|[|\<bbb-R\>|]><text|-measurable>|}>=\<cal-M\><around*|[|A,\<cal-A\>;\<bbb-R\>,\<cal-B\><around*|{|\<bbb-R\>|}>|]>\<subseteq\>\<bbb-R\><rsup|A>
    </equation*>
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
      measurable> to proof that <math|g\<circ\>f> is
      <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable [hence
      Lebesgue measurable]. It is guaranteed that
      <math|\<forall\>A\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>
      <math|g<rsup|-1><around*|(|A|)>\<in\>\<cal-L\>>, which does not
      guarantee that <math|g<rsup|-1><around*|(|A|)>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>>.
      If however <math|g> is not only Lebesgue measureable but also Borel
      measurable then <math|g> is not only
      <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable but also
      <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      so that we can apply <reference|composition of measurable functions is
      measurable> proving that <math|g\<circ\>f> is
      <math|\<cal-L\>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable hence
      Lebesgue measurable. The difference is that we have on <math|\<bbb-R\>>
      different <math|\<sigma\>>-algebras, either <math|\<cal-L\>> or
      <math|\<cal-B\><around*|[|\<cal-A\>|]>>.

      <item>If <math|f,g:\<bbb-R\>\<rightarrow\>\<bbb-R\>> are Borel
      measurable then <math|f,g> are <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      so that we can use <reference|composition of measurable functions is
      measurable> to prove that <math|g\<circ\>f> is
      <math|\<cal-B\><around*|[|\<bbb-R\>|]>,\<cal-B\><around*|[|\<bbb-R\>|]>>-measurable
      and thus Borel measurable.
    </enumerate>
  </note>

  Note that up to now we have to duplicate our statemens between real
  functions and extended real functions. The following proposition allows us
  to significantly reduce the number of proofs and statements for
  measurability of real functions or extended real functions.

  <\proposition>
    <label|real (extended real) measurability>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> snd
    <math|A\<in\>\<cal-A\>> then\ 

    <\enumerate>
      <item>If <math|f\<in\><wide|\<cal-M\>|\<wide-bar\>><around*|[|A,\<cal-A\>|]>>
      is such that <math|f<around*|(|A|)>\<subseteq\>\<bbb-R\>> then
      <math|f\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>

      <item><math|\<cal-M\><around*|[|A,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>If <math|B\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> then as
      <math|B<big|cap>\<bbb-R\>=B> we have by <reference|borel algebra on the
      extended reals (3)> that <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>,
      so as <math|><math|f\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
      it follows that <math|f<rsup|-1><around*|(|B|)>\<in\>\<cal-A\>>, which
      proves that <math|f\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>

      <item>If <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      then by <reference|borel algebra on the extended reals (3)>
      <math|B<big|cap>\<bbb-R\>\<in\>\<cal-B\><around*|[|\<bbb-R\>|]>> and as
      <math|><math|f\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>> we have that
      <math|f<rsup|-1><around*|(|B<big|cap>\<bbb-R\>|)>\<in\>\<cal-A\>>,
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
        <tformat|<table|<row|<cell|<around*|{|f\<less\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|[>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<less\>x|}>>>|<row|<cell|<around*|{|f\<leqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<leqslant\>x|}>>>|<row|<cell|<around*|{|f\<gtr\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>=<around*|{|t\<in\>X\|x\<less\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<geqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|x,\<infty\>|]>|)>=<around*|{|t\<in\>X\|x\<leqslant\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f=x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|{|x|}>|)>=<around*|{|t\<in\>X\|x=f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<leqslant\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f\<less\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f=g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>>>>>
      </eqnarray*>

      <item>If <math|f:X\<rightarrow\>\<bbb-R\>>,
      <math|g:X\<rightarrow\>\<bbb-R\>> then given <math|x\<in\>\<bbb-R\>> we
      define

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|f\<less\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|[>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<less\>x|}>>>|<row|<cell|<around*|{|f\<leqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>=<around*|{|t\<in\>X\|f<around*|(|t|)>\<leqslant\>x|}>>>|<row|<cell|<around*|{|f\<gtr\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>=<around*|{|t\<in\>X\|x\<less\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<geqslant\>x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>=<around*|{|t\<in\>X\|x\<leqslant\>f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f=x|}>>|<cell|\<equallim\><rsub|def>>|<cell|f<rsup|-1><around*|(|<around*|{|x|}>|)>=<around*|{|t\<in\>X\|x=f<around*|(|t|)>|}>>>|<row|<cell|<around*|{|f\<leqslant\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f\<less\>g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>>>|<row|<cell|<around*|{|f=g|}>>|<cell|\<equallim\><rsub|def>>|<cell|<around*|{|x\<in\>X\|f<around*|(|x|)>=g<around*|(|x|)>|}>>>>>
      </eqnarray*>
    </enumerate>
  </definition>

  <\lemma>
    <label|{x\<less\>f} properties>Let <math|X> be a set,
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> \ and
    <math|x\<in\>\<bbb-R\>> then\ 

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
      <reference|x\<less\>y=\<gtr\>x+1/n\<less\>y> we have that there exists
      a <math|n\<in\>\<bbb-N\><rsub|0>> such that
      <math|f<around*|(|t|)>+<frac|1|n>\<less\>x\<Rightarrowlim\><rsub|x\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x-<frac|1|n>>
      a contradiction so we must have <math|x\<leqslant\>f<around*|(|t|)>> or
      <math|t\<in\><around*|{|f\<geqslant\>x|}>>. So
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<subseteq\><around*|{|f\<geqslant\>x|}>>.
      Combining this with <reference|eq 18.306.033> proves\ 

      <\equation*>
        <around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation*>

      <item>

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|{|f\<geqslant\>x|}>>|<cell|=>|<cell|X\\f<rsup|-1><around*|(|<around*|[|x,\<infty\>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\\f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>>|<cell|f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|x,\<infty\>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|f\<less\>x|}>>>>>
      </eqnarray*>

      <item>Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
      <math|t\<in\><around*|{|f\<leqslant\>x|}>> we have that
      <math|f<around*|(|t|)>\<leqslant\>x\<Rightarrowlim\><rsub|x\<in\>\<bbb-R\>>f<around*|(|t|)>\<less\>x+<frac|1|n>>
      or <math|t\<in\><around*|{|f\<less\>x+<frac|1|n>|}>>. So\ 

      <\equation>
        <label|eq 18.307.033><around*|{|f\<leqslant\>x|}>\<subseteq\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>
      </equation>

      Let <math|t\<in\><big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<less\>x+<frac|1|n>|}>>
      then <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
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

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|{|f\<leqslant\>x|}>>|<cell|=>|<cell|X\\f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>|)>\\f<rsup|-1><around*|(|<around*|[|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>>|<cell|f<rsup|-1><around*|(|<wide|\<bbb-R\>|\<wide-bar\>>\\<around*|[|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|]>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|x\<less\>f|}>>>>>
      </eqnarray*>
    </enumerate>
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
  the same with the exception of some details.

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
      archimedean property for the reals> we have that there exists a
      <math|n\<in\>\<bbb-N\><rsub|0><text| such that
      >f<around*|(|t|)>+<frac|1|n>\<less\>x\<Rightarrowlim\>f<around*|(|t|)>\<less\>x-<frac|1|n>>
      a contradiction, so we must have <math|x\<leqslant\>f<around*|(|t|)>>
      or <math|t\<in\><around*|{|f\<geqslant\>x|}>>. Hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<subseteq\><around*|{|f\<geqslant\>x|}>>.
      Combining this with <reference|eq 18.308.033> proves\ 

      <\equation*>
        <around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>
      </equation*>

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|{|f\<geqslant\>x|}>>|<cell|=>|<cell|X\\f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|\<bbb-R\>|)>\\f<rsup|-1><around*|(|<around*|[|x,\<infty\>|[>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>>|<cell|f<rsup|-1><around*|(|\<bbb-R\>\\<around*|[|x,\<infty\>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|f\<less\>x|}>>>>>
      </eqnarray*>

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

      <item>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|X\\<around*|{|f\<leqslant\>x|}>>|<cell|=>|<cell|X\\f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|\<bbb-R\>|)>\\f<rsup|-1><around*|(|<around*|]|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of image and preimage>>>>|<cell|f<rsup|-1><around*|(|\<bbb-R\>\\<around*|]|-\<infty\>,x|]>|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|-1><around*|(|<around*|]|x,\<infty\>|[>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|f\<gtr\>x|}>>>>>
      </eqnarray*>
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
      <math|<around*|{|f\<gtr\>x-<frac|1|n>|}>\<in\>\<cal-A\>> hence
      <math|<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>\<in\>\<cal-A\>>.
      Using <reference|{x\<less\>f} properties (1)>
      <math|<around*|{|f\<geqslant\>x|}>=<big|cap><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|f\<gtr\>x-<frac|1|n>|}>>
      proving that <math|<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>>

      <item*|<math|3\<Rightarrow\>4>>Let <math|x\<in\>\<bbb-R\>> then
      <math|<around*|{|f\<less\>x|}>\<equallim\><rsub|<text|<reference|{x\<less\>f}
      properties (1)>>>A\\<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>> [as
      <math|A,<around*|{|f\<geqslant\>x|}>\<in\>\<cal-A\>> \ together with
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
      <math|<around*|{|f\<leqslant\>x|}>,A\<in\>\<cal-A\>> together with
      <reference|properties of algebras>]
    </description>
  </proof>

  <subsection|Example of measurable functions>

  <\example>
    <label|null function is measurable><math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>,
    <math|<around*|\<langle\>|Y,\<cal-B\>|\<rangle\>>> be measurable spaces
    then <math|\<emptyset\>:\<emptyset\>\<rightarrow\>Y> defined by is
    <math|\<cal-A\>,\<cal-B\>>-measurable.
  </example>

  <\proof>
    Let <math|B\<in\>\<cal-B\>> then as <math|\<emptyset\><rsup|-1><around*|(|B|)>\<equallim\><rsub|<text|<reference|image
    and inverse image>>><around*|{|x\<in\>\<emptyset\>\|\<exists\>y\<in\>Y\<vdash\><around*|(|x,y|)>\<in\>\<emptyset\>|}>=\<emptyset\>\<in\>\<cal-A\>>
  </proof>

  <\example>
    <label|zero function is measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measureable
    space, <math|A\<in\>\<cal-A\>> and \ <math|C<rsub|0>:X\<rightarrow\>\<bbb-R\>>
    defined by <math|C<rsub|0><around*|(|x|)>=0> then <math|C<rsub|0>> is
    <math|\<cal-A\>>-measurable [or <math|C<rsub|0>\<subseteq\>\<cal-M\><around*|[|A.\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>].F
  </example>

  <\proof>
    Take <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    the we have either\ 

    <\description>
      <item*|<math|0\<in\>B>>then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|x\<in\>C<rsub|0><rsup|-1><around*|(|B|)>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>A\<wedge\>C<rsub|0><around*|(|x|)>\<in\>B>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|C<rsub|o><around*|(|x|)>=0\<in\>B>>|<cell|x\<in\>A>>>>
      </eqnarray*>

      proving that <math|C<rsub|0><rsup|-1><around*|(|B|)>=A\<in\>\<cal-A\>>

      <item*|<math|0\<nin\>B>>then if <math|x\<in\>C<rsub|0><rsup|-1><around*|(|B|)>>
      we have <math|0=C<rsub|0><around*|(|x|)>\<in\>B> a contradiction, hence
      <math|C<rsub|0><rsup|-1><around*|(|B|)>=\<emptyset\>\<in\>\<cal-A\>>
    </description>

    As in all case <math|C<rsub|0><rsup|-1><around*|(|B|)>\<in\>\<cal-A\>> it
    follows that <math|C<rsub|0>> is <math|\<cal-A\>>-measurable.

    \;
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
      <math|1\<leqslant\>\<cal-X\><rsub|A><around*|(|t|)>> so we must have
      <math|\<cal-X\><around*|(|t|)>=1> or <math|t\<in\>A> proving that
      <math|<around*|{|x\<leqslant\>\<cal-X\><rsub|A>|}>\<subseteq\>A>.
      Further if <math|t\<in\>A> then <math|\<cal-X\><rsub|A><around*|(|t|)>=1\<geqslant\>1>
      so that <math|A\<subseteq\><around*|{|x\<less\>\<cal-X\><rsub|A>|}>>.
      Hence <math|><math|<around*|{|x\<less\>\<cal-X\><rsub|A>|}>=A\<in\>\<cal-A\>>

      <item*|<math|x\<less\>1>>then if <math|t\<in\><around*|{|x\<less\>\<cal-X\><rsub|A>|}>>
      we have <math|\<cal-X\><rsub|A><around*|(|t|)>\<less\>1> so we must
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
    <label|simple function>Let <math|X> be a non empty set then a function
    <math|f\<of\>X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is a
    <with|font-series|bold|simple function> if <math|f<around*|(|X|)>> is
    finite [is non empty as <math|X> is non empty].
  </definition>

  <\proposition>
    <label|simple function properties (1)>Let <math|X> be a set,
    <math|\<alpha\>\<in\>\<bbb-R\>> and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be simple functions
    then we have\ 

    <\enumerate>
      <item><math|\<alpha\>\<cdot\>f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      is a simple function

      <item><math|>If <math|f<around*|(|X|)>\<subseteq\>\<bbb-R\>> and
      <math|g<around*|(|X|)>\<subseteq\>\<bbb-R\>> then
      <math|f+g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      is a simple function. Note: that the requirement
      <math|f<around*|(|X|)>,g<around*|(|X|)>\<subseteq\>\<bbb-R\>> is needed
      to ensure that the sum is always defined.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>We have to consider two cases for <math|\<alpha\>>

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|X|)>=<around*|{|0|}>>
        which is finite and non empty

        <item*|<math|\<alpha\>\<neq\>0>>as <math|f>is a simple function there
        exists a <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
        <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>f<around*|(|X|)>>.
        Define now <math|\<alpha\><rsub|f>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\><around*|(|\<alpha\>\<cdot\>f|)><around*|(|X|)>>
        by <math|\<alpha\><rsub|f><around*|(|i|)>=\<alpha\>\<cdot\>\<beta\><around*|(|i|)>>.
        If <math|y\<in\><around*|(|\<alpha\>\<cdot\>f|)><around*|(|X|)>> then
        there exists a <math|x\<in\>X> such that
        <math|y=<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>\<Rightarrowlim\><rsub|\<alpha\>\<neq\>0>f<around*|(|x|)>=<frac|y|\<alpha\>>>,
        as <math|f<around*|(|x|)>\<in\>f<around*|(|X|)>> there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|<math|>\<beta\><around*|(|i|)>=f<around*|(|x|)>=<frac|y|\<alpha\>>\<Rightarrow\>y=\<alpha\>\<cdot\>\<beta\><around*|(|i|)>=\<alpha\><rsub|f><around*|(|i|)>>
        proving that <math|\<alpha\><rsub|f> is a surjection.> So using
        <reference|surjection f:A-\<gtr\>B B is finite if A is finite> we
        have that <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|X|)>> is
        finite.
      </description>

      so in all cases <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|X|)>>
      is finite proving that <math|\<alpha\>\<cdot\>f> is a simple function.

      <item>As <math|f> and <math|g> are simple functions we have that
      <math|f<around*|(|X|)>> and <math|g<around*|(|X|)>> are finite. As the
      product of finite sets is finite [see <reference|product of finite sets
      is finite>] we have that

      <\equation*>
        f<around*|(|X|)>\<times\>g<around*|(|X|)><text| is finite>
      </equation*>

      Define now

      <\equation*>
        s:f<around*|(|X|)>\<times\>g<around*|(|Y|)>\<rightarrow\><around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|Y|)>|}><text|
        by >s<around*|(|x,y|)>=x+y
      </equation*>

      Then if <math|z\<in\><around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|Y|)>|}>>
      there exists a <math|x\<in\>f<around*|(|X|)>> and a
      <math|y\<in\>f<around*|(|Y|)>> such that
      <math|z=x+y=s<around*|(|x,y|)>> which proves that <math|s> is
      surjective. Applying then <reference|surjection f:A-\<gtr\>B B is
      finite if A is finite> proves that <math|>

      <\equation*>
        <around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|X|)>|}><text|
        is finite>
      </equation*>

      Let <math|y\<in\><around*|(|f+g|)><around*|(|X|)>> then there exists a
      <math|x\<in\>X> such that <math|y=f<around*|(|x|)>+g<around*|(|x|)>\<in\><around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|X|)>|}>>.
      Hence <math|<around*|(|f+g|)><around*|(|X|)>\<subseteq\><around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|X|)>|}>>
      which, as we have proved that <math|<around*|{|x+y\|<around*|(|x,y|)>\<in\>f<around*|(|X|)>\<times\>g<around*|(|X|)>|}>>
      is finite, proves using <reference|subsets of finite sets are finite>
      that <math|<around*|(|f+g|)><around*|(|X|)>> is finite.. This proves
      that <math|f+g> is a simple function.
    </enumerate>
  </proof>

  <\example>
    <label|simple functions are measurable>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a simple function then <math|f> is <math|\<cal-A\>>-measurable if
    <math|\<forall\>y\<in\>f<around*|(|X|)>> we have that
    <math|<around*|{|f=y|}>=f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>>.
  </example>

  <\proof>
    As <math|f> is a simple function we have that <math|f<around*|(|A|)>> is
    finite. Let <math|B\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
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

      <item*|<math|B<big|cap>f<around*|(|A|)>\<neq\>\<emptyset\>>>then

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

      <item><math|<around*|{|f\<neq\>g|}>\<in\>\<cal-A\>>

      <item>If <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then
      <math|<around*|{|f=x|}>\<in\>\<cal-A\>>
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
      function condition (1)> that <math|<around*|{|f\<less\>q|}>,<around*|{|g\<gtr\>q|}>\<in\>\<cal-A\>\<Rightarrow\><around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>\<in\>\<cal-A\>>
      and <math|Q> is denumerable [see <reference|The rational numbers are
      denumerable>] we have by <reference|sigma algebra equivalent
      definitions> that <math|<big|cup><rsub|q\<in\>\<bbb-Q\>><around*|(|<around*|{|f\<less\>q|}><big|cap><around*|{|g\<gtr\>q|}>|)>\<in\>\<cal-A\>>.
      Hence by <reference|eq 18.312.033> we conclude that\ 

      <\equation*>
        <around*|{|f\<less\>g|}>\<in\>\<cal-A\>
      </equation*>

      <item>We have

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

      <item>We have

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|(|<around*|{|f\<leqslant\>g|}>\\<around*|{|f\<less\>g|}>|)>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<leqslant\>g|}>\<wedge\>t\<nin\><around*|{|f\<less\>g|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<leqslant\>g<around*|(|t|)>\<wedge\>\<neg\><around*|(|f<around*|(|t|)>\<less\>g<around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<leqslant\>g<around*|(|t|)>\<wedge\>g<around*|(|t|)>\<leqslant\>f<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>=g<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f=g|}>>>>>
      </eqnarray*>

      proving that <math|<around*|{|f=g|}>=<around*|{|f\<leqslant\>g|}>\\<around*|{|f\<gtr\>g|}>\<in\>\<cal-A\>>
      [using (1), (2) and <reference|properties of algebras>].

      <item>We have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\>X\\<around*|{|f=g|}>>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>\<neg\><around*|(|f<around*|(|t|)>=g<around*|(|t|)>|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\>X\<wedge\>f<around*|(|t|)>\<neq\>g<around*|(|t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<neq\>g|}>>>>>
      </eqnarray*>

      proving that <math|<around*|{|f\<neq\>g|}>=X\\<around*|{|f=g|}>\<in\>\<cal-A\>>
      [using (3)]

      <item>Let <math|x\<in\><wide|\<bbb-R\>|\<wide-bar\>>> then as
      <math|<around*|{|x|}>> is closed [see <reference|closed sets in the
      extended reals> ], we have by <reference|borel algebra on the extebded
      reals (1)> that <math|<around*|{|x|}>\<in\>\<cal-B\><around*|[|<wide|\<bbb-R\>|\<wide-bar\>>|]>>
      which as <math|f> is <math|\<cal-A\>>-measurable proves that
      <math|<around*|{|f=x|}>=f<rsup|-1><around*|(|<around*|{|x|}>|)>\<in\>\<cal-A\>>.
    </enumerate>
  </proof>

  <\definition>
    Let <math|X> be a set, <math|k\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>>>
    a sequence of function graphs from functions fron <math|X> to
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> then we define

    <\enumerate>
      <item><math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|sup|n>f<rsub|n>|)><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item><math|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|inf|n>f<rsub|n>|)><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>

      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      where <math|<around*|(|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>

      <item>If <math|\<forall\>x\<in\>X> <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
      exists then we define <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>\<of\>X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      by <math|<around*|(|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    </enumerate>
  </definition>

  <\lemma>
    <label|liminf or limsup of functions>Let <math|X> be a set,
    <math|k\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>>
    a sequence of function graphs of func<with|font-shape|italic|tions from
    <math|X> to <math|<wide|\<bbb-R\>|\<wide-bar\>>> <math|>> then

    <\enumerate>
      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>g<rsub|n>>
      where <math|g<rsub|n>=<below|sup|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|l>>

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>h<rsub|n>>
      where <math|h<rsub|n>=<below|inf|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|l>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>X>. If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|g<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|l><around*|(|x|)>\|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|inf<around*|(|<around*|{|sup<around*|(|<around*|{|f<rsub|l><around*|(|x|)>\|l\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|g<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,n|}>>g<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>g<rsub|n>
      </equation*>

      <item>Let <math|x\<in\>X>. If <math|n\<in\>\<bbb-N\><rsub|0>> then
      <math|h<rsub|n><around*|(|x|)>=inf<around*|(|<around*|{|f<rsub|l><around*|(|x|)>\|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>.
      So\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|<below|lim
        inf|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|l><around*|(|x|)>\|l\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|inf<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,n|}>>h<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>g<rsub|n>
      </equation*>
    </enumerate>

    \;
  </proof>

  <\proposition>
    <label|measurable functions properties (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be
    <math|\<cal-A\>>-measurable functions then\ 

    <\enumerate>
      <item><math|f\<vee\>g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|<around*|(|f\<vee\>g|)><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      is <math|\<cal-A\>>-measurable.

      <item><math|f\<wedge\>g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      defined by <math|<around*|(|f\<wedge\>g|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>
      is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>We have Let <math|x\<in\>\<bbb-R\>> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|<around*|(|f\<vee\>g|)>\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|max<around*|(|f<around*|(|t|)>,g<around*|(|t|)>|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<less\>x\<wedge\>g<around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<less\>x|}>\<wedge\>t\<in\><around*|{|g\<less\>x|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|(|<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>|)>>>>>
      </eqnarray*>

      proving that <math|<around*|{|<around*|(|f\<vee\>g|)>\<less\>x|}>=<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>>.
      As by <reference|measurable function condition (1)>
      <math|<around*|{|f\<less\>x|}>,<around*|{|g\<less\>x|}>\<in\>\<cal-A\>>
      it follows that <math|><math|<around*|{|f\<less\>x|}><big|cap><around*|{|g\<less\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> again proves that
      <math|f\<vee\>g> is <math|\<cal-A\>>-measurable.

      <item>We have Let <math|x\<in\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|t\<in\><around*|{|<around*|(|f\<wedge\>g|)>\<gtr\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|min<around*|(|f<around*|(|t|)>,g<around*|(|t|)>|)>\<gtr\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<gtr\>x\<wedge\>g<around*|(|t|)>\<gtr\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\>x|}>\<wedge\>t\<in\><around*|{|g\<gtr\>x|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|(|<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>|)>>>>>
      </eqnarray*>

      proving that <math|<around*|{|<around*|(|f\<wedge\>g|)>\<gtr\>x|}>=<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>>.
      As by <reference|measurable function condition (1)>
      <math|<around*|{|f\<gtr\>x|}>,<around*|{|g\<gtr\>x|}>\<in\>\<cal-A\>>
      it follows that <math|><math|<around*|{|f\<gtr\>x|}><big|cap><around*|{|g\<gtr\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> again proves that
      <math|f\<wedge\>g> is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proof>

  <\definition>
    Let <math|X> be a set, <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|\<emptyset\>\<neq\>I\<subseteq\>\<bbb-N\><rsub|0>> finite,
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>>
    then <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)>> is defined
    by <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\>I|}>|)><around*|(|x|)>=max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>I|}>|)>>
  </definition>

  <\lemma>
    <label|maximum of finite set of functions>Let <math|X> be a set,
    <math|n\<in\><around*|{|2,\<ldots\>,\<infty\>|}>> then if
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>>
    we have\ 

    <\enumerate>
      <item><math|\<forall\>k\<in\><around*|{|1,\<ldots\>n|}><text|
      >max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=max<around*|(|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>,f<rsub|k>|)>>

      <item>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\><rsup|X>>
      then <math|><math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<bbb-R\><rsup|X>>
    </enumerate>
  </lemma>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|x\<in\>A> then if <math|m=max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)><around*|(|x|)>\<equallim\><rsub|def>max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>>
      we have that <math|m\<in\><around*|{|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|}>>
      and <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|f<rsub|i><around*|(|x|)>\<leqslant\>m>. So
      <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|m=f<rsub|i><around*|(|x|)>> and we have two cases to consider:

      <\description>
        <item*|<math|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>>>then
        as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|f<rsub|i><around*|(|x|)>\<leqslant\>m> we have
        <math|m=max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>>
        and <math|f<rsub|k><around*|(|x|)>\<leqslant\>m> so that
        <math|m=max<around*|(|max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>,f<rsub|k><around*|(|x|)>|)>>.
        proving that\ 

        <\equation*>
          max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)><around*|(|x|)>=max<around*|(|max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>,f<rsub|k><around*|(|x|)>|\<nobracket\>>
        </equation*>

        <item*|<math|i=k>>then as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|f<rsub|i><around*|(|x|)>\<leqslant\>m=f<rsub|i><around*|(|x|)>=f<rsub|k><around*|(|x|)>>
        we have <math|max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>\<leqslant\>m>
        so that <math|m=max<around*|(|max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>,f<rsub|k><around*|(|x|)>|)>>,
        proving that\ 

        <\equation*>
          max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)><around*|(|x|)>=max<around*|(|max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>,f<rsub|k><around*|(|x|)>|\<nobracket\>>
        </equation*>
      </description>

      Hence\ 

      <\equation*>
        max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=max<around*|(|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|k|}>|}>|)>,f<rsub|k>|)>
      </equation*>

      <item>Let <math|m=max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>n|}>|}>|)><around*|(|x|)>\<equallim\><rsub|def>max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>n|}>|}>|)>>
      then <math|m\<in\><around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>n|}>|}>>
      such that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> such that
      <math|m=f<rsub|i><around*|(|x|)>\<in\>\<bbb-R\>>.\ 
    </enumerate>
  </proof>

  <\corollary>
    <label|maximum of measurable functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>>, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
    then <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>.
    Further if <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-M\><around*|[|A,\<cal-A\>|]>>
    then <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>.
  </corollary>

  <\proof>
    The first part is proved by induction, let\ 

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
      ><around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>><text|
      then >max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>1|}>>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
      then <math|\<forall\>x\<in\>A> we have

      <\equation*>
        max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)><around*|(|x|)>=max<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,1|}>|}>|)>=max<around*|(|<around*|{|f<rsub|1><around*|(|x|)>|}>|)>=f<rsub|1><around*|(|x|)>
      </equation*>

      proving that <math|><math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=f<rsub|1>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
      so <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n+1|}>>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>.
      As <math|n\<in\>\<cal-S\>> we have that
      <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
      which, as <math|f<rsub|n+1>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>,
      gives using <reference|measurable functions properties (1)> that

      <\equation*>
        max<around*|(|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>,f<rsub|n+1>|)>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>
      </equation*>

      finally using the previous lemma <reference|maximum of finite set of
      functions> we have that

      <\equation*>
        max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>=max<around*|(|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>,f<rsub|n+1>|)>
      </equation*>

      \ proving that <math|n+1\<in\>\<cal-S\>>
    </description>

    Mathematical induction proves then that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
    <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>.\ 

    For the final part if <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>1,\<ldots\>,n>\<subseteq\>\<cal-M\><around*|[|A,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
    then <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|f<rsub|i>\<in\>\<bbb-R\><rsup|X>>, so that by <reference|maximum of
    finite set of functions> <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<bbb-R\><rsup|X>>
    which combined with the first part proves that
    <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>.
  </proof>

  <\proposition>
    <label|measurable functions properties (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|k\<in\>\<bbb-N\><rsub|0>>, <math|A\<in\>\<cal-A\>> and
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>\<subseteq\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
    a sequence of functions that are <math|\<cal-A\>>-measurable then we
    have:

    <\enumerate>
      <item><math|<text| ><below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable [in other words
      <math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>]

      <item><math|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable [in other words
      <math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>].

      <item><math|<below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable [in other words
      <math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>].

      <item><math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable [in other words
      <math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>].

      <item>Let <math|D=<around*|{|x\<in\>A\|<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>=<around*|(|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>|)><around*|(|x|)>|}>> [this is
      the set where by <reference|definition of limit in the extented reals>
      <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>> is defined] then
      <math|D\<in\>\<cal-A\>> and <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>:D\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable [in other words
      <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>\<in\><wide|\<cal-M\><around*|[|D,\<cal-A\>|]>|\<wide-bar\>>>]
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
      <reference|sigma algebra equivalent definitions> proves
      <math|<big|cap><rsub|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>><around*|{|f<rsub|n>\<leqslant\>x|}>\<in\>\<cal-A\>>
      or using <reference|eq 18.314.033> that
      <math|><math|<around*|{|<around*|(|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>\<in\>\<cal-A\>>.
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
      or using <reference|eq 18.316.033> that
      <math|><math|<around*|{|<around*|(|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n>|)>\<leqslant\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> it follows that\ 

      <\equation*>
        <below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item><math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have by <math|<around*|(|1|)>> that
      \ <math|g<rsub|n>=<below|sup|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|l>>
      is <math|\<cal-A\>>-measurable. Using (2) we have then that
      <math|<below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>g<rsub|n>>
      is <math|\<cal-A\>>-measurable. As <math|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>\<equallim\><rsub|<text|<reference|liminf
      or limsup of functions>>><below|inf|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>g<rsub|n>>
      we have proved that\ 

      <\equation*>
        <below|lim sup|n\<rightarrow\>\<infty\>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item><math|\<forall\>n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>> we
      have by <math|<around*|(|2|)>> that
      \ <math|h<rsub|n>=<below|inf|l\<in\><around*|{|n,\<ldots\>,\<infty\>|}>>f<rsub|l>>
      is <math|\<cal-A\>>-measurable. Using (1) we have then that
      <math|<below|sup|n\<in\><around*|{|k,\<ldots\>,\<infty\>|}>>h<rsub|n>>
      is <math|\<cal-A\>>-measurable. As <math|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>\<equallim\><rsub|<text|<reference|liminf
      or limsup of functions>>><below|sup|n\<in\><around*|{|k,\<ldots\>,n|}>>h<rsub|n>>
      we have proved that\ 

      <\equation*>
        <below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n> is
        \<cal-A\><text|-measurable>
      </equation*>

      <item>From (3),(4) it follows that <math|><math|<below|lim
      sup|n\<rightarrow\>\<infty\>>f<rsub|n>> and <math|<below|lim
      inf|n\<rightarrow\>\<infty\>>f<rsub|n>> are
      <math|\<cal-A\>>-measurable, combining this with \ <reference|function
      comparizatons are measurable>, proves that

      <\equation>
        <label|eq 18.317.033>D=<around*|{|<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|lim
        sup|n\<rightarrow\>\<infty\>>f<rsub|n>|}>\<in\>\<cal-A\>
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
    <math|A\<in\>\<cal-A\>>, <math|\<alpha\>\<in\>\<bbb-R\>> and
    <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    <math|\<cal-A\>>-measurable functions then\ 

    <\enumerate>
      <item>If <math|f<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>,g<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>>
      then <math|f+g:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
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
      hence <math|t\<in\><around*|{|f+g\<less\>x|}>>. So
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
        proving by <reference|zero function is measurable> that
        <math|\<alpha\>\<cdot\>f> is <math|\<cal-A\>>-measurable.

        <item*|<math|0\<less\>\<alpha\>>>Let <math|x\<in\>\<bbb-R\>> then

        <\eqnarray*>
          <tformat|<table|<row|<cell|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|\<alpha\>\<cdot\>f<around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f<around*|(|t|)>\<less\><frac|x|\<alpha\>>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<less\><frac|x|\<alpha\>>|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|\<alpha\>\<cdot\>f\<less\>x|}>=<around*|{|f\<less\><frac|x|\<alpha\>>|}>\<in\>\<cal-A\>>
        [as <math|f> is <math|\<cal-A\>>-measurable]. Using
        <reference|measurable function condition (1)> we have then that
        <math|\<alpha\>\<cdot\>f> is <math|\<cal-A\>>-measurable.

        <item*|<math|\<alpha\>\<less\>0>>Let <math|x\<in\>\<bbb-R\>> then\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|t\<in\><around*|{|\<alpha\>\<cdot\>f\<less\>x|}>>|<cell|\<Leftrightarrow\>>|<cell|\<alpha\>\<cdot\>f<around*|(|t|)>\<less\>x>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|f*<around*|(|t|)>\<gtr\><frac|x|t>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|t\<in\><around*|{|f\<gtr\><frac|x|\<alpha\>>|}>>>>>
        </eqnarray*>

        proving that <math|<around*|{|\<alpha\>\<cdot\>f\<less\>x|}>=<around*|{|f\<gtr\><frac|x|\<alpha\>>|}>\<in\>\<cal-A\>>
        [as <math|f> is <math|\<cal-A\>>-measurable]. Using
        <reference|measurable function condition (1)> we have then that
        <math|\<alpha\>\<cdot\>f> is <math|\<cal-A\>>-measurable.
      </description>
    </enumerate>
  </proof>

  Using mathematical induction we have that the finite sum of measurable
  functions is measurable.

  <\corollary>
    <label|finite sum of mesaurable functions is measurable (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,.,n|}>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    a finite set of <math|\<cal-A\>>-measurable functions from <math|X> to
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> with
    <math|f<rsub|i><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>> and
    <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    defined by <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
    then <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> is
    <math|\<cal-A\>>-measurable.
  </corollary>

  <\proof>
    This is trivially proved by induction, so define
    <math|\<cal-S\>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|if
    \ i\<leqslant\>n<text| then ><big|sum><rsub|j=1><rsup|i>f<rsub|j> is
    \<cal-A\><text|-measurable>|}>> then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>This follows from the fact that
      <math|<big|sum><rsub|j=1><rsup|1>f<rsub|j>=f<rsub|1>> and that
      <math|f<rsub|1>> is <math|\<cal-A\>>-measurable.

      <item*|<math|i\<in\>\<cal-S\>\<Rightarrow\>i+1\<in\>\<cal-S\>>>Let
      <math|i\<in\>\<cal-S\>> then if <math|i+1\<leqslant\>n> we have
      <math|<around*|(|<big|sum><rsub|j=1><rsup|i+1>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|j=1><rsup|i+1>f<rsub|j><around*|(|x|)>=f<rsub|i+1><around*|(|x|)>+<big|sum><rsub|j=1><rsup|i>f<rsub|j><around*|(|x|)>>.
      So <math|<big|sum><rsub|j=1><rsup|i+1>f<rsub|j>=f<rsub|i+1>+<big|sum><rsub|j=1><rsup|i>f<rsub|j>>
      which, as <math|i\<in\>\<cal-S\>> is the sum of two
      <math|\<cal-A\>>-measurable functions, is <math|\<cal-A\>>-measurable
      [using <reference|measurable functions properties (3)>]. Hence
      <math|i+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\note>
    In the above proposition and corollary we assume that <math|f,g> are non
    negative. This is essential to make sure that <math|f+g> is well defined.
    If we restrict ourseff to real valued functions we can extend the
    properties that that measurable functions have.
  </note>

  <\proposition>
    <label|measurable functions properties (4)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|\<alpha\>\<in\>\<bbb-R\>>, <math|A\<in\>\<cal-A\>> and
    <math|f:A\<rightarrow\>\<bbb-R\>>. <math|g:A\<rightarrow\>\<bbb-R\>>
    <math|\<cal-A\>>-measurable functions [meaning
    <math|f,g\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>] then we have\ 

    <\enumerate>
      <item><math|f+g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f+g|)><around*|(|x|)>=f<around*|(|x|)>+g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable [in other words
      <math|f+g\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>].

      <item><math|\<alpha\>\<cdot\>f:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=\<alpha\>\<cdot\>f<around*|(|x|)>>
      is a <math|\<cal-A\>>-measurable \ [in other words
      <math|\<alpha\>\<cdot\>f\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>].

      <item><math|f-g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f-g|)><around*|(|x|)>=f<around*|(|x|)>-g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable \ [in other words
      <math|f-g\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>].

      <item><math|f<rsup|2>:X\<rightarrow\>\<bbb-R\>> defined by
      <math|f<rsup|2><around*|(|x|)>=<around*|(|f<around*|(|x|)>|)><rsup|2>>
      is <math|\<cal-A\>>-measurable \ [in other words
      <math|f<rsup|2>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>].

      <item><math|f\<cdot\>g:X\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|f\<cdot\>g|)><around*|(|x|)>=f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>
      is <math|\<cal-A\>>-meaurable [ [in other words
      <math|f\<cdot\>g\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>].

      <item><math|D=<around*|{|x\<in\>A\|g<around*|(|x|)>\<neq\>0|}>\<in\>\<cal-A\>>
      and <math|<frac|f|g>:D\<rightarrow\>\<bbb-R\>> defined by
      <math|<around*|(|<frac|f|g>|)><around*|(|x|)>=<frac|f<around*|(|x|)>|g<around*|(|x|)>>>
      is <math|\<cal-A\>>-measurable [ [in other words
      <math|<frac|f|g>\<in\>\<cal-M\><around*|[|D,\<cal-A\>|]>>].
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>The proof is the same as in the previous proposition. Let
      <math|x\<in\>\<bbb-R\>>. If <math|t\<in\><around*|{|f+g\<less\>x|}>>
      then <math|f<around*|(|t|)>+g<around*|(|t|)>\<less\>x\<Rightarrowlim\>f<around*|(|t|)>\<less\>x-g<around*|(|t|)>>
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
        <item*|<math|\<alpha\>=0>>Then <math|\<forall\>x\<in\>A> we have
        <math|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>=0> which by
        <reference|zero function is measurable> means that
        <math|\<alpha\>\<cdot\>f> is <math|\<cal-A\>>-measurable.

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
        we have <math|f<rsup|2><around*|(|t|)>\<less\>x\<leqslant\>0> which,
        as <math|0\<leqslant\>f<rsup|2><around*|(|x|)>>, is a contradiction.
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
        <tformat|<table|<row|<cell|<around*|(|<frac|1|2>\<cdot\><around*|(|<around*|(|f+g|)><rsup|2>-f<rsup|2>-g<rsup|2>|)>|)><around*|(|x|)>>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|<around*|(|<around*|(|f<around*|(|x|)>+g<around*|(|x|)>|)><rsup|2>-f<rsup|2><around*|(|x|)>|)>-g<rsup|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|1|2>\<cdot\><around*|(|f<rsup|2><around*|(|x|)>+g<rsup|2><around*|(|x|)>+2\<cdot\>f<around*|(|x|)>-f<rsup|2><around*|(|x|)>-g<rsup|2><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>g<around*|(|x|)>>>>>
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

      proving using the measurability of <math|g> together with
      <reference|measurable function condition (1)> that

      <\equation>
        <label|eq 18.323.033>D=<around*|{|x\<in\>\<cal-A\>\|g<around*|(|x|)>\<neq\>0|}>=<around*|{|g\<less\>0|}><big|cup><around*|{|g\<gtr\>0|}>\<in\>\<cal-A\>
      </equation>

      If <math|t\<in\><around*|(|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>|)><big|cup><around*|(|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>|)>>
      then we have either:

      <\description>
        <item*|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>>then
        <math|t\<in\>A\<wedge\>g<around*|(|t|)>\<gtr\>0\<wedge\>f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>>,
        so that <math|t\<in\>A\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x>,
        proving as <math|g<around*|(|t|)>\<neq\>0>, that
        <math|t\<in\><around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>>.

        <item*|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>>>then
        <math|t\<in\>A\<wedge\>g<around*|(|t|)>\<less\>0\<wedge\>f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>>
        so that <math|t\<in\>A\<wedge\><frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x>
        proving as <math|g<around*|(|t|)>\<neq\>0>, that
        \ <math|t\<in\><around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>>.
      </description>

      So we have\ 

      <\equation>
        <label|eq 18.324.036.7><around*|(|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>|)><big|cup><around*|(|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>|)>\<subseteq\><around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>
      </equation>

      For the opposite inclusion, let <math|t\<in\><around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>>
      then <math|g<around*|(|t|)>\<neq\>0> and
      <math|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x> so we must
      consider the following cases fro <math|g<around*|(|t|)>\<neq\>0>:\ 

      <\description>
        <item*|<math|g<around*|(|t|)>\<gtr\>0>>then
        <math|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>> or
        <math|t\<in\><around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>

        <item*|<math|g<around*|(|t|)>\<less\>0>>then
        <math|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>> or
        <math|t\<in\><around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>>
      </description>

      proving that <math|<around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>\<subseteq\><around*|(|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>|)><big|cup><around*|(|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>|)>>.
      So combining this with <reference|eq 18.324.036.7> proves that\ 

      <\equation>
        <label|eq 18.325.036.7><around*|(|<math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>>|)><big|cup><around*|(|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}><big|cap><around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>|)>=<around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>
      </equation>

      Now as <math|g> is <math|\<cal-A\>>-measurable it follows from
      <reference|measurable function condition (1)> that
      <math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<gtr\>0|}>\<in\>\<cal-A\>>,
      <math|<around*|{|t\<in\>A\|g<around*|(|t|)>\<less\>0|}>\<in\>\<cal-A\>>
      . As <math|f,g> are <math|\<cal-A\>>-measurable and <math|x\<cdot\>g>
      is <math|\<cal-A\>>-measurable [using (2)] it follows from
      <reference|function comparizatons are measurable> that
      <math|<around*|{|t\<in\>A\|f<around*|(|t|)>\<gtr\>x\<cdot\>g<around*|(|t|)>|}>>,
      <math|<around*|{|t\<in\>A\|f<around*|(|t|)>\<less\>x\<cdot\>g<around*|(|t|)>|}>\<in\>\<cal-A\>>
      which proves that <math|<around*|{|t\<in\>D\|<frac|f<around*|(|t|)>|g<around*|(|t|)>>\<less\>x|}>\<in\>\<cal-A\>>.
      Using <reference|measurable function condition (1)> we get finallly
      that\ 

      <\equation*>
        <frac|f|g>:D\<rightarrow\>\<bbb-R\> is \<cal-A\><text|-measurable>
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|finite sum of mesaurable functions is measurable (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|n\<in\>\<bbb-N\><rsub|0>> and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,.,n|}>>\<subseteq\>\<cal-M\><around*|[|A,\<cal-A\>|]>>
    a finite set of <math|\<cal-A\>>-measurable function graphs from <math|X>
    to <math|\<bbb-R\>> then <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>:X\<rightarrow\>\<bbb-R\>>
    defined by <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
    is <math|\<cal-A\>>-measurable [in other words
    <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\>\<cal-M\><around*|[|A,\<cal-A\>|]>>
  </corollary>

  <\proof>
    This is trivially proved by induction, so define
    <math|\<cal-S\>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|if
    \ i\<leqslant\>n<text| then ><big|sum><rsub|j=1><rsup|i>f<rsub|j> is
    \<cal-A\><text|-measurable>|}>> then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>This follows from the fact that
      <math|<big|sum><rsub|j=1><rsup|1>f<rsub|j>=f<rsub|1>> and that
      <math|f<rsub|1>> is <math|\<cal-A\>>-measurable.

      <item*|<math|i\<in\>\<cal-S\>\<Rightarrow\>i+1\<in\>\<cal-S\>>>Let
      <math|i\<in\>\<cal-S\>> then if <math|i+1\<leqslant\>n> we have
      <math|<around*|(|<big|sum><rsub|j=1><rsup|i+1>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|j=1><rsup|i+1>f<rsub|j><around*|(|x|)>=f<rsub|i+1><around*|(|x|)>+<big|sum><rsub|j=1><rsup|i>f<rsub|j><around*|(|x|)>>.
      So <math|<big|sum><rsub|j=1><rsup|i+1>f<rsub|j>=f<rsub|i+1>+<big|sum><rsub|j=1><rsup|i>f<rsub|j>>
      which, as <math|i\<in\>\<cal-S\>> is the sum of two
      <math|\<cal-A\>>-measurable functions, is <math|\<cal-A\>>-measurable
      by <reference|measurable functions properties (4)>. Hence
      <math|i+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\definition>
    <label|f+ and f->Let <math|X> be a set and
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a extended real
    valued function then we define\ 

    <\enumerate>
      <item><math|f<rsup|+>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> by
      <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>> [so
      <math|f<rsup|+><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]

      <item><math|f<rsup|->:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> by
      <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>>
      [so <math|f<rsup|-><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]

      <item><math|<around*|\||f|\|>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      by <math|<around*|\||f|\|><around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
      [so <math|<around*|\||f<rsup|>|\|><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>]
    </enumerate>

    <\lemma>
      <label|\|f(x)\| as f+ f->Let <math|X> be a set and
      <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
      <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> extended real
      functions then

      <\enumerate>
        <item><math|<around*|\||f|\|>=f<rsup|+>+f<rsup|->> [note that the sum
        is well defined]

        <item><math|f=f<rsup|+>-f<rsup|->> [note that the difference is welll
        defined]

        <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> then
        <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+>=\<alpha\>\<cdot\>f<rsup|+>>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|->=\<alpha\>\<cdot\>f<rsup|->>

        <item>If <math|\<alpha\>\<in\><around*|]|-\<infty\>,0|]>> then
        <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+>=-\<alpha\>\<cdot\>f<rsup|->>
        and <math|<around*|(|\<alpha\>\<cdot\>f|)><rsup|->=-\<alpha\>\<cdot\>f<rsup|+>>

        <item>If <math|f<around*|(|X|)>\<subseteq\>\<bbb-R\>> and
        <math|g<around*|(|X|)>\<subseteq\>\<bbb-R\>> then we have
        <math|\<forall\>x\<in\>X>

        <\enumerate>
          <item><math|<around*|(|f+g|)><rsup|+><around*|(|x|)>\<leqslant\>f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)>=<around*|(|f<rsup|+>+g<rsup|+>|)><around*|(|x|)>>

          <item><math|<around*|(|f+g|)><rsup|-><around*|(|x|)>\<leqslant\>f<rsup|-><around*|(|x|)>+g<rsup|-><around*|(|x|)>=<around*|(|f<rsup|->+g<rsup|->|)><around*|(|x|)>>
        </enumerate>

        <item><math|\<forall\>x\<in\>X> we have
        <math|f<rsup|+><around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>

        <item><math|\<forall\>x\<in\>X> we have
        <math|f<rsup|-><around*|(|x\<leqslant\><around*|\||f<around*|(|x|)>|\|>|)>>

        <item><math|f<rsup|+>=f\<wedge\>C<rsub|0>>

        <item><math|f<rsup|->=-<around*|(|f\<vee\>C<rsub|0>|)>>
      </enumerate>

      \ 
    </lemma>

    <\proof>
      \ 

      <\enumerate>
        <item>Let <math|x\<in\>X> then for <math|x> we have either\ 

        <\description>
          <item*|<math|f<around*|(|x|)>\<leqslant\>0>>then
          <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=0>
          and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=-f<around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
          so that <math|f<rsup|+><around*|(|x|)>+f<rsup|-><around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>

          <item*|<math|0\<less\>f<around*|(|x|)>>>then
          <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>>
          and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=0>
          so that <math|f<rsup|+><around*|(|x|)>+f<rsup|-><around*|(|x|)>=f<around*|(|x|)>=<around*|\||f<around*|(|x|)>|\|>>
        </description>

        <item>Let <math|x\<in\>X> then for <math|x> we have either\ 

        <\description>
          <item*|<math|f<around*|(|x|)>\<leqslant\>0>>then
          <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=0>
          and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=-f<around*|(|x|)>>
          so that <math|f<around*|(|x|)>=f<rsup|+><around*|(|x|)>-f<rsup|-><around*|(|x|)>>.

          <item*|<math|0\<less\>f<around*|(|x|)>>>then
          <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>>
          and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=0>
          so that <math|f<around*|(|x|)>=f<rsup|+><around*|(|x|)>-f<rsup|-1><around*|(|x|)>>
        </description>

        <item>Let <math|x\<in\>X> then we have either\ 

        <\description>
          <item*|<math|f<around*|(|x|)>\<leqslant\>0>>then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+><around*|(|x|)>>|<cell|=>|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|max<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>

          and\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-1><around*|(|x|)>>|<cell|=>|<cell|-min<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|-f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|-min<around*|(|f<around*|(|x|)>,0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|->*<around*|(|x|)>>>>>
          </eqnarray*>

          <item*|<math|0\<less\>f<around*|(|x|)>>>then

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+><around*|(|x|)>>|<cell|=>|<cell|max<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>

          and\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-><around*|(|x|)>>|<cell|=>|<cell|-min<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|a\<cdot\><around*|(|-min<around*|(|f<around*|(|x|)>,0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<rsup|-><around*|(|x|)>>>>>
          </eqnarray*>
        </description>

        <item>Let <math|x\<in\>X> then for <math|x> we have either

        <\description>
          <item*|<math|f<around*|(|x|)>\<leqslant\>0>>then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|+><around*|(|x|)>>|<cell|=>|<cell|max<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>min<around*|(|f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<rsup|-><around*|(|x|)>>>>>
          </eqnarray*>

          and\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-><around*|(|x|)>>|<cell|=>|<cell|-min<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>

          <item*|<math|0\<less\>f<around*|(|x|)>>>then\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|a\<cdot\>f|)><rsup|+><around*|(|x|)>>|<cell|=>|<cell|max<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>0>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|min<around*|(|f<around*|(|x|)>,0|)>|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<rsup|-><around*|(|x|)>>>>>
          </eqnarray*>

          and\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><rsup|-><around*|(|x|)>>|<cell|=>|<cell|-min<around*|(|\<alpha\>\<cdot\>f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>max<around*|(|f<around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|=>|<cell|-\<alpha\>\<cdot\>f<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>
        </description>

        <item>Let <math|x\<in\>X> then

        <\enumerate>
          <item>As <math|f<around*|(|x|)>\<leqslant\>max<around*|(|f<around*|(|x|)>,0|)>=f<rsup|+><around*|(|x|)>>
          and <math|g<around*|(|x|)>\<leqslant\>max<around*|(|g<around*|(|x|)>,0|)>=g<rsup|+><around*|(|x|)>>
          we have\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|f+g|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>+g<around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>

          which as <math|0\<leqslant\>f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)>>
          proves that <math|><math|max<around*|(|<around*|(|f+g|)><around*|(|x|)>,0|)>\<leqslant\>f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)>>
          so that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|f+g|)><rsup|+><around*|(|x|)>>|<cell|=>|<cell|max<around*|(|<around*|(|f+g|)><around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)>>>>>
          </eqnarray*>

          <item>Then <math|-f<rsup|-><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,0|)>\<leqslant\>f<around*|(|x|)>>
          and <math|-g<rsup|-><around*|(|x|)>=min<around*|(|g<around*|(|x|)>,0|)>\<leqslant\>g<around*|(|x|)>>
          so that\ 

          <\eqnarray*>
            <tformat|<table|<row|<cell|-f<rsup|-><around*|(|x|)>-g<rsup|-><around*|(|x|)>>|<cell|\<leqslant\>>|<cell|f<around*|(|x|)>+g<around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|(|f+g|)><around*|(|x|)>>>>>
          </eqnarray*>

          which as <math|-f<rsup|-><around*|(|x|)>-g<rsup|-><around*|(|x|)>\<leqslant\>0>
          proves that <math|-f<rsup|-><around*|(|x|)>-g<rsup|-><around*|(|x|)>\<leqslant\>min<around*|(|<around*|(|f+g|)><around*|(|x|)>,0|)>>
          so tha

          <\eqnarray*>
            <tformat|<table|<row|<cell|<around*|(|f+g|)><rsup|-><around*|(|x|)>>|<cell|=>|<cell|-min<around*|(|<around*|(|f+g|)><around*|(|x|)>,0|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|f<rsup|-><around*|(|x|)>+g<rsup|-><around*|(|x|)>>>>>
          </eqnarray*>
        </enumerate>

        <item>Let <math|x\<in\>X> then <math|f<around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>
        and <math|0\<leqslant\><around*|\||f<around*|(|x|)>|\|>> so that
        <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>

        <item>Let <math|x\<in\>X> then <math|-f<around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>\<Rightarrow\>-<around*|\||f<around*|(|x|)>|\|>\<leqslant\>f<around*|(|x|)>>
        and <math|-<around*|\||f<around*|(|x|)>|\|>\<leqslant\>0> so that
        <math|min<around*|(|f<around*|(|x|)>,0|)>\<geqslant\>-<around*|\||f<around*|(|x|)>|\|>>.
        Hence <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>

        <item>Let <math|x\<in\>X> then <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=max<around*|(|f<around*|(|x|)>,C<rsub|0><around*|(|x|)>|)>=<around*|(|f\<wedge\>C<rsub|0>|)><around*|(|x|)><rsub|>>

        <item>Let <math|x\<in\>X> then <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=-min<around*|(|f<around*|(|x|)>,C<rsub|0><around*|(|x|)>|)>=<around*|(|-<around*|(|f\<vee\>C<rsub|0>|)>|)><around*|(|x|)>>
      </enumerate>
    </proof>
  </definition>

  <\proposition>
    <label|measurable functions properties (5)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a <math|\<cal-A\>>-measurable function then\ 

    <\enumerate>
      <item><math|f<rsup|+>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      <math|\<cal-A\>>-measurable.

      <item><math|f<rsup|->:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> is
      <math|\<cal-A\>>-measurable.

      <item><math|<around*|\||f|\|>:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
      is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proposition>

  <\proof>
    \ First note that by <reference|zero function is measurable>
    <math|C<rsub|0>\<of\>A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    defined by <math|C<rsub|0><around*|(|x|)>=0> is
    <math|\<cal-A\>>-measurable.

    <\enumerate>
      <item>As <math|f<rsup|+>=f\<wedge\>C<rsub|0>> and <math|f,C<rsub|0>>
      are <math|\<cal-A\>>-measurable it follows from <reference|measurable
      functions properties (1)> that <math|f<rsup|+>> is
      <math|\<cal-A\>>-measurable.

      <item>As <math|f,C<rsub|0>> are <math|\<cal-A\>>-measurable it follows
      from <reference|measurable functions properties (1)> that
      <math|f\<vee\>C<rsub|0>> is <math|\<cal-A\>>-measurbale. Using
      <reference|measurable functions properties (3)> it follows that
      <math|f<rsup|->=-<around*|(|f\<vee\>C<rsub|0>|)>> is
      <math|\<cal-A\>>-measurable.

      <item>As <math|<around*|\||f|\|>\<equallim\><rsub|<text|<reference|\|f(x)\|
      as f+ f->>>f<rsub|+>+f<rsub|->> it follows from (2),(2) and
      <reference|measurable functions properties (4)> that
      <math|<around*|\||f|\|>> is <math|\<cal-A\>>-measurable.
    </enumerate>
  </proof>

  The following theorem will be essential to find a equivalent definition of
  the measure integral.

  <\theorem>
    <label|measurable functions properties (6)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    with <math|f\<in\><wide|\<cal-M\><around*|[|A,\<cal-A\>|]>|\<wide-bar\>>>
    and<space|1em><math|f<around*|(|A|)>\<subseteq\><around*|[|0,\<infty\>|]>>
    [a <math|\<cal-A\>>-measurable non negative extended real valued
    function] then there exists a sequence
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> of
    <with|font-series|bold|<math|\<cal-A\>>-measurable>
    <with|font-series|bold|simple functions> such that
    <math|\<forall\>x\<in\>A>.

    <\enumerate>
      <item><math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>>
      and <math|0\<leqslant\>f<rsub|i><around*|(|x|)>\<less\>\<infty\>>

      <item><math|f<around*|(|x|)>=sup<around*|(|n\<in\>\<bbb-N\><rsub|0>\|f<rsub|n><around*|(|x|)>|)>\<equallim\><rsub|<around*|(|1|)>+<text|<reference|equivalence
      of limits on increasing (decreasing) sequences of extented
      reals>>><below|lim|n\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
      [or in other words <math|f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>=<below|sup|n\<in\><around*|{|1,\<ldots\>,\<infty\>|}>>f<rsub|n>>
    </enumerate>
  </theorem>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and define

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
      <label|eq 18.328.033>\<forall\>k\<in\>I<rsub|n><text| we have that
      >A<rsub|n,k>\<in\>\<cal-A\>
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
    us to define <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<bbb-R\>|\<wide-bar\>><rsup|A>>
    by\ 

    <\equation>
      <label|eq 18.330.033>f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|<frac|k-1|2<rsup|<rsup|n>>>
      if x\<in\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k > where k is the
      unique k such that x\<in\>A<rsub|n,k>>>|<row|<cell|n if
      x\<in\>A\\<big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>>>>>\<less\>\<infty\>
    </equation>

    Using the above definition if is clear that
    <math|f<rsub|n><around*|(|A|)>\<subseteq\><around*|{|n|}><big|cup><around*|(|<big|cup><rsub|k\<in\>I<rsub|n>><around*|{|<frac|k-1|2<rsup|n>>|}>|)>>
    which is finite [see <reference|finite union of finite sets is finite>],
    taking this in account together with <reference|eq 18.328.033> proves\ 

    <\equation>
      <label|eq 18.331.033.1>\<forall\>n\<in\>\<bbb-N\><rsub|0> f<rsub|n> is
      a<with|font-series|medium| simple \<cal-A\><text|-measurable >function>
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
      <item*|<math|l=1>>then <math|<frac|1-1|2<rsup|n>>=0\<leqslant\>f<around*|(|x|)>\<less\><frac|1|2<rsup|n>>\<Rightarrow\>x\<in\>A<rsub|n,1>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>

      <item*|<math|1\<less\>l>>then <math|1\<leqslant\>l-1\<less\>l\<leqslant\>n\<cdot\>2<rsup|n>
      proving that l-1\<in\>I<rsub|n>>, and as
      <math|l-1\<less\>min<around*|(|B<rsub|x>|)>> we must have that
      <math|<frac|l-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n>>\<Rightarrow\>x\<in\>A<rsub|n,l>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|n>>A<rsub|n,k>>
    </description>

    So we have proved that <math|f<rsup|-1><around*|(|<around*|[|0,n|[>|)>\<subseteq\><big|cup><rsub|k\<in\>I<rsub|i>>A<rsub|n,k>>.
    Also for <math|k\<in\>I<rsub|n>> we have that
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

    To summarize

    <\equation>
      <label|eq 18.334.033>\<forall\>x\<in\>A,\<forall\>n\<in\>\<bbb-N\><rsub|0>
      we have f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)><infix-and>f<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|n
      if n\<leqslant\>f<around*|(|x|)>>>|<row|<cell|<frac|k-1|2<rsup|n>> if
      f<around*|(|x|)>\<less\>n where k\<in\>I<rsub|n>>>>>>
    </equation>

    and\ 

    <\equation>
      <label|eq 18.335.033>\<forall\>n\<in\>\<bbb-N\><rsub|0> if x\<in\>A is
      such that f<around*|(|x|)>\<less\>n then \<exists\>k\<in\>I<rsub|n>
      such that f<rsub|n><around*|(|x|)>=<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>
    </equation>

    Let now <math|x\<in\>A> then we must consider the following cases:

    <\description>
      <item*|<math|n+1\<leqslant\>f<around*|(|x|)>>>then
      <math|n,n+1\<leqslant\>f<around*|(|x|)>> and by <reference|eq
      18.334.033> <math|f<rsub|n><around*|(|x|)>=n\<less\>n+1=f<rsub|n+1><around*|(|x|)>>
      so

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
      such that <math|x\<in\>A<rsub|n,k><big|cap>A<rsub|n+1,l>>, hence
      <math|<frac|k-1|2<rsup|n>>\<leqslant\>f<around*|(|x|)>\<less\><frac|k|2<rsup|n>>\<wedge\><frac|l-1|2<rsup|n+1>>\<leqslant\>f<around*|(|x|)>\<less\><frac|l|2<rsup|n+1>>>,.
      From this it follows that <math|<frac|k-1|2<rsup|n>>\<less\><frac|l|2<rsup|n+1>>\<Rightarrow\><frac|2\<cdot\>k-2|2<rsup|n+1>>\<less\><frac|l|2<rsup|n+1>>\<Rightarrow\>2\<cdot\>k-2\<less\>l\<Rightarrow\>2\<cdot\>k-2\<leqslant\>l-1>
      giving <math|<frac|k-1|2<rsup|n>>=<frac|2\<cdot\>k-2|2<rsup|n+1>>\<leqslant\><frac|l-1|2<rsup|n+1>>>.
      Using <reference|eq 18.330.033> we have that
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

    Assume now that <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<around*|(|x|)>>
    [so that <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<in\><around*|[|0,\<infty\>|[>>).
    \ For <math|f<around*|(|x|)>> we have either:

    <\description>
      <item*|<math|f<around*|(|x|)>=\<infty\>>>then as
      <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>\<infty\>>
      we have by <reference|consequence of the archimedean property for the
      reals> that <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|><math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n\<less\>\<infty\>=f<around*|(|x|)>>.
      Using <reference|eq 18.334.033> we have that
      <math|f<rsub|n><around*|(|x|)>=n>, so
      \ <math|sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>n=f<rsub|n><around*|(|x|)>>
      a contradiction.

      <item*|<math|f<around*|(|x|)>\<less\>\<infty\>>>Take
      <math|\<delta\>=f<around*|(|x|)>-sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<gtr\>0>,
      using <reference|properties of positive, negative real numbers> there
      exists a <math|n<rsub|1>\<in\>\<bbb-N\><rsub|0>> such that
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

  <\corollary>
    <label|measurable function as a limit of simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space
    and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> a
    <math|\<cal-A\>>-measurable function then there exists a sequence
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> of
    <with|font-series|bold|<math|\<cal-A\>>-measurable>
    <with|font-series|bold|simple functions> <math|between >X and
    <math|<wide|\<bbb-R\>|\<wide-bar\>>> such that

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|n><around*|(|X|)>\<subseteq\>\<bbb-R\>>

      <item><math|\<forall\>x\<in\>X f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>>
      [or in other words <math|f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>]
    </enumerate>
  </corollary>

  <\proof>
    Using <reference|\|f(x)\| as f+ f-> we have <math|f=f<rsup|+>-f<rsup|->>
    [where the difference is well defined] and as <math|f> is
    <math|\<cal-A\>>-measurable it follows from <reference|measurable
    functions properties (5)> that <math|f<rsup|+>> and <math|f<rsup|-1>> are
    <math|\<cal-A\>>-measurable. Using the fact that
    <math|f<rsup|+>,f<rsup|->> are non negative we can apply the previous
    theorem <reference|measurable functions properties (6)> to find two
    sequences of <math|\<cal-A\>>-measurable simple functions
    <math|<around*|{|f<rsup|+><rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>,
    <math|<around*|{|f<rsup|-><rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    with <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X>,
    <math|f<rsup|+><rsub|n><around*|(|x|)>\<in\>\<bbb-R\>>,
    <math|f<rsup|-><rsub|n><around*|(|x|)>\<in\>\<bbb-R\>>,
    <math|f<rsup|+><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsup|+><rsub|n><around*|(|x|)>>
    and <math|f<rsup|-><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsup|-><rsub|n><around*|(|x|)>>.
    Define now <math|<around*|(|f<rsub|n>|)><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    by <math|f<rsub|n>=f<rsup|+><rsub|n>-f<rsup|-><rsub|n>> \ then by
    <reference|simple function properties (1)> and <reference|measurable
    functions properties (3)> \ it follows that <math|f<rsub|n>> is a
    <math|\<cal-A\>>-measurable simple function. \ As
    <math|\<forall\>x\<in\>X> <math|f<rsup|+><around*|(|x|)>-f<rsup|-><around*|(|x|)>>
    is well defined and <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|f<rsup|+><rsub|n><around*|(|x|)>-f<rsup|-><rsub|n><around*|(|x|)>>
    is well defined [difference of real numbers] \ we have
    using<reference|properties of the limit in the extented reals> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsup|+><rsub|n><around*|(|x|)>+<around*|(|-1\<cdot\>f<rsup|-><rsub|n><around*|(|x|)>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
      of the limit in the extented reals>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>f<rsup|+><rsub|n><around*|(|x|)>+<around*|(|-1|)>\<cdot\><below|lim|n\<rightarrow\>\<infty\>>f<rsup|-><rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|+><around*|(|x|)>+<around*|(|-1|)>\<cdot\>f<rsup|-><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<rsup|+><around*|(|x|)>-f<rsup|-><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<rsup|+>-f<rsup|->|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>>>
    </eqnarray*>

    So there exists a sequence of real simple functions
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>> such that
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>
  </proof>

  <subsection|Properties that hold everywhere>

  Using the concept of <math|\<mu\>>-negligible sets [see
  <reference|negligibility>] we can introduce the concept of almost
  everywhere predicates and complete measures.

  <\definition>
    <label|almost complete><index|almost everyware>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|P<around*|(|x|)>> a predicate then
    <math|P<around*|(|x|)>> is <with|font-series|bold|<math|\<mu\>>-a.e.
    true> if <math|<around*|{|x\<in\>X\|\<neg\><around*|(|P<around*|(|x|)>|)><text|>|}>\<in\>\<cal-N\><rsub|\<mu\>>>
    [see <reference|negligibility>]. In other words <math|P<around*|(|x|)>>
    is <with|font-series|bold|<math|\<mu\>>-a.e. true> if there exists a
    <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> such that
    <math|<around*|{|x\<in\>X\|\<neg\>P<around*|(|x|)>|}>\<subseteq\>N>.
  </definition>

  Using the above we can define the following

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> then\ 

    <\enumerate>
      <item><math|f=g> <with|font-series|bold|<math|\<mu\>>-a.e>. if there
      exists a <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0>
      such that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.

      <item><math|f\<geqslant\>g> <with|font-series|bold|<math|\<mu\>>-a.e>.
      if there exists a <math|N\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N|)>=0> such
      that<math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>g<around*|(|x|)>|}>\<subseteq\>N>.

      <item>Let <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      a sequence of functions from <math|X> to
      <math|<wide|\<bbb-R\>|\<wide-bar\>>> then
      <math|<around*|{|f<rsub|n><rsub|>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
      converges <with|font-series|bold|<math|\<mu\>>-a.e>. to <math|f> if
      there exists a <math|N\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N|)>=0> such that
      <math|<around*|{|x\<in\>X<mid|\|><around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>
      does not converges to f<around*|(|x|)>|}>\<subseteq\>N>.
    </enumerate>
  </definition>

  <\proposition>
    <label|almost everywhere equality and characteristic function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>\<comma\>\<mu\>|\<rangle\>>> be a
    measure space, <math|A\<subseteq\>X> such that
    <math|\<exists\>N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> so
    that <math|A\<subseteq\>N> and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>.
    If we define <math|\<cal-X\><rsub|X\\A>\<cdot\>f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    by <math|><math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>=\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<around*|(|x|)>>
    [see <reference|characteristics function> for a definition of
    <math|\<cal-X\><rsub|X\\A>>] then we have that

    <\equation*>
      \<cal-X\><rsub|X\\A>\<cdot\>f=f<space|1em> \<mu\><text|-a.e.>
    </equation*>
  </proposition>

  <\proof>
    Let <math|x\<in\><around*|{|x\<in\>X\|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>\<neq\>f<around*|(|x|)>|}>>
    then <math|x\<in\>X> and <math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>\<neq\>f<around*|(|x|)>>.
    Assume that <math|x\<nin\>A> then <math|x\<in\>X\\A> and
    <math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>=\<cal-X\><rsub|X\\A><around*|(|x|)>*\<cdot\>f<around*|(|x|)>=1\<cdot\>f<around*|(|x|)>=f<around*|(|x|)>>
    contradicting <math|><math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>\<neq\>f<around*|(|x|)>>,
    so we must have that <math|x\<in\>A>. Hence
    <math|<around*|{|x\<in\>X\|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>\<neq\>f<around*|(|x|)>|}>\<subseteq\>A\<subseteq\>N>
    proving that\ 

    <\equation*>
      \<cal-X\><rsub|X\\A>\<cdot\>f=f<space|1em>\<mu\><text|-a.e.>
    </equation*>

    \;
  </proof>

  <\proposition>
    <label|almost everywhere properties>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|h:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|k:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>\ 

    <\enumerate>
      <item>If <math|f=g> <math|\<mu\>>-a.e. and <math|g=h>
      <math|\<mu\>>-a.e. then <math|f=h> <math|\<mu\>>-a.e.

      <item>If <math|f\<leqslant\>g> <math|\<mu\>>-a.e. and
      <math|g\<leqslant\>h> <math|\<mu\>>-a.e. then <math|f\<leqslant\>h>
      <math|\<mu\>>-a.e..

      <item>If <math|f\<leqslant\>g> <math|\<mu\>>-a.e. and
      <math|g\<leqslant\>f> <math|\<mu\>>-a.e. then <math|f=g>
      <math|\<mu\>>-a.e..

      <item>If <math|\<alpha\>\<in\>\<bbb-R\>\\<around*|{|0|}>> then if
      <math|f=g> <math|\<mu\>>-a.e. then <math|\<alpha\>\<cdot\>f=\<alpha\>\<cdot\>g>
      <math|\<mu\>>-a.e..

      <item>If <math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>+g<around*|(|x|)>> and
      <math|h<around*|(|x|)>+k<around*|(|x|)>> is well defined and in
      addition <math|f=h> <math|\<mu\>>-a.e. and <math|g=k>
      <math|\<mu\>>-a.e. then <math|f+g=h+k> <math|\<mu\>>-a.e.
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f=g> <math|\<mu\>>-a.e. and <math|g=h>
      <math|\<mu\>>-a.e. <math|>there exists
      <math|N<rsub|1>,N<rsub|2>\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N<rsub|1>|)>=0=\<mu\><around*|(|N<rsub|2>|)>>
      such that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N<rsub|1>>
      and <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|2>>.
      Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>>
      then <math|f<around*|(|x|)>\<neq\>g<around*|(|x|)>\<vee\>g<around*|(|x|)>\<neq\>h<around*|(|x|)>>
      [for if <math|f<around*|(|x|)>=g<around*|(|x|)>\<wedge\>g<around*|(|x|)>=h<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>=h<around*|(|x|)>>]
      so that <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}><big|cup><around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|1><big|cup>N<rsub|2>>.
      As <math|\<mu\><around*|(|N<rsub|1><big|cup>N<rsub|2>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0>
      it follows that <math|f=h> <math|\<mu\>>-a.e..

      <item>As <math|f\<leqslant\>g> <math|\<mu\>>-a.e. and
      <math|g\<leqslant\>h> <math|\<mu\>>-a.e. <math|>there exists
      <math|N<rsub|1>,N<rsub|2>\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N<rsub|1>|)>=0=\<mu\><around*|(|N<rsub|2>|)>>
      such that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>|}>\<subseteq\>N<rsub|1>>
      and <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<nleqslant\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|2>>.
      Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>h<around*|(|x|)>|}>>
      then <math|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>\<vee\>g<around*|(|x|)>\<nleqslant\>h<around*|(|x|)>>
      [for if <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>\<wedge\>g<around*|(|x|)>\<leqslant\>h<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>\<leqslant\>h<around*|(|x|)>>]
      so that <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>|}><big|cup><around*|{|x\<in\>X\|g<around*|(|x|)>\<nleqslant\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|1><big|cup>N<rsub|2>>.
      As <math|\<mu\><around*|(|N<rsub|1><big|cup>N<rsub|2>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0>
      it follows that <math|f\<leqslant\>h> <math|\<mu\>>-a.e..<math|>

      <item>As <math|f\<leqslant\>g> <math|\<mu\>>-a.e. and
      <math|g\<leqslant\>f> <math|\<mu\>>-a.e. <math|>there exists
      <math|N<rsub|1>,N<rsub|2>\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N<rsub|1>|)>=0=\<mu\><around*|(|N<rsub|2>|)>
      >such that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>|}>\<subseteq\>N<rsub|1>>
      and <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<nleqslant\>f<around*|(|x|)>|}>\<subseteq\>N<rsub|2>>.
      Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>>
      then <math|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>\<vee\>g<around*|(|x|)>\<nleqslant\>f<around*|(|x|)>>
      [for if <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>\<wedge\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>=g<around*|(|x|)>>]
      so that <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<nleqslant\>g<around*|(|x|)>|}><big|cup><around*|{|x\<in\>X\|g<around*|(|x|)>\<nleqslant\>f<around*|(|x|)>|}>\<subseteq\>N<rsub|1><big|cup>N<rsub|2>>.
      As <math|\<mu\><around*|(|N<rsub|1><big|cup>N<rsub|2>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0>
      it follows that <math|f=h> <math|\<mu\>>-a.e..<math|>

      <item>As <math|f=g> <math|\<mu\>>-a.e. there exists a
      <math|N\<in\>\<cal-A\>> with <math|\<mu\><around*|(|N|)>=0> such that
      <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.
      Let now <math|x\<in\><around*|{|x\<in\>X\|\<alpha\>\<cdot\>f<around*|(|x|)>\<neq\>\<alpha\>\<cdot\>g<around*|(|x|)>|}>>
      then <math|\<alpha\>\<cdot\>f<around*|(|x|)>\<neq\>\<alpha\>\<cdot\>g<around*|(|x|)>\<Rightarrowlim\><rsub|\<alpha\>\<neq\>0>f<around*|(|x|)>\<neq\>g<around*|(|x|)>>
      proving that <math|><math|<around*|{|x\<in\>X\|\<alpha\>\<cdot\>f<around*|(|x|)>\<neq\>\<alpha\>\<cdot\>g<around*|(|x|)>|}>\<subseteq\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.
      So <math|\<alpha\>\<cdot\>f\<neq\>\<alpha\>\<cdot\>g>.

      <item>As As <math|f=h> <math|\<mu\>>-a.e. and <math|g=k>
      <math|\<mu\>>-a.e. <math|>there exists
      <math|N<rsub|1>,N<rsub|2>\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N<rsub|1>|)>=0=\<mu\><around*|(|N<rsub|2>|)>>
      such that <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\>N<rsub|1>>
      and <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>k<around*|(|x|)>|}>\<subseteq\>N<rsub|2>>.
      Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>+g<around*|(|x|)>\<neq\>h<around*|(|x|)>+k<around*|(|x|)>|}>>
      then <math|f<around*|(|x|)>\<neq\>h<around*|(|x|)>\<vee\>g<around*|(|x|)>\<neq\>k<around*|(|x|)>>
      [for if <math|f<around*|(|x|)>=h<around*|(|x|)>\<wedge\>g<around*|(|x|)>=k<around*|(|x|)>\<Rightarrow\>f<around*|(|x|)>+g<around*|(|x|)>=h<around*|(|x|)>+k<around*|(|x|)>>]
      so that <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>h<around*|(|x|)>|}><big|cup><around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>k<around*|(|x|)>|}>\<subseteq\>N<rsub|1><big|cup>N<rsub|2>>.
      As <math|\<mu\><around*|(|N<rsub|1><big|cup>N<rsub|2>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0>
      it follows that <math|f+g=h+k> <math|\<mu\>>-a.e..<math|>
    </enumerate>
  </proof>

  <\proposition>
    <label|f=g almost everywhere property>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    <with|font-series|bold|complete> measure space [see <reference|complete
    measures>] and let <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    a <math|\<cal-A\>>-measurable function and
    <math|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|f<around*|(|x|)>=g<around*|(|x|)>> <math|\<mu\>>-a.e. then
    <math|g<around*|(|x|)>> is <math|\<cal-A\>>-measurable.\ 
  </proposition>

  <\proof>
    As <math|f=g> <math|\<mu\>>-a.e. there exists a <math|N\<in\>\<cal-A\>>
    with <math|\<mu\><around*|(|N|)>=0> and
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N>.
    So\ 

    <\equation>
      <label|eq 18.339.036.10>x\<in\>X\\N\<Rightarrow\>f<around*|(|x|)>=g<around*|(|x|)>
    </equation>

    . Let <math|t\<in\>\<bbb-R\>> then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|x\<in\><around*|{|g\<leqslant\>t|}>>|<cell|\<Leftrightarrow\>>|<cell|x\<in\>X\<wedge\>g<around*|(|x|)>\<leqslant\>t>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\\N\<vee\>x\<in\>N|)>\<wedge\>g<around*|(|x|)>\<leqslant\>t>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|<around*|(|x\<in\>X\\N\<wedge\>g<around*|(|x|)>\<leqslant\>t|)>\<vee\><around*|(|x\<in\>N\<wedge\>g<around*|(|x|)>\<leqslant\>t|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|<text|<reference|eq
      18.339.036.10>>>>|<cell|<around*|(|x\<in\>X\\N\<wedge\>f<around*|(|x|)>\<leqslant\>t|)><big|cup><around*|(|x\<in\>N\<wedge\>g<around*|(|x|)>\<leqslant\>t|)>>>|<row|<cell|>|<cell|\<Leftrightarrowlim\><rsub|X\\N,N\<subseteq\>X>>|<cell|<around*|(|x\<in\>X\\N\<wedge\>x\<in\>X\<wedge\>f<around*|(|x|)>\<leqslant\>t|)><big|cup><around*|(|x\<in\>N\<wedge\>x\<in\>X\<wedge\>g<around*|(|x|)>\<leqslant\>t|)>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|X\\N|)><big|cap><around*|{|f\<leqslant\>t|}>\<wedge\>x\<in\>N<big|cap><around*|{|g\<leqslant\>t|}>>>|<row|<cell|>|<cell|\<Leftrightarrow\>>|<cell|x\<in\><around*|(|X\\N<big|cap><around*|{|f\<leqslant\>t|}>|)><big|cup><around*|(|N<big|cap><around*|{|g\<leqslant\>t|}>|)><eq-number><label|eq
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
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> a complete
    measure space, <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    be a sequence of <math|\<cal-A\>>-measurable function graphs from
    <math|X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>,
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|<around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    converges <math|\<mu\>>-a.e. to <math|f> then <math|f> is
    <math|\<cal-A\>>-measurable.
  </corollary>

  <\proof>
    Take <math|B=<around*|{|x\<in\>X\|<around*|{|f<rsub|n><around*|(|x|)><rsub|n\<in\>\<bbb-N\><rsub|0>>
    does not converges to f<around*|(|x|)>|}>|}>.> As
    <math|<around*|{|f<rsub|n><around*|(|x|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    converges <math|\<mu\>>-a.e. to <math|f> \ there exists a
    <math|N\<in\>\<cal-A\>> with <math|B\<subseteq\>N> and
    <math|\<mu\><around*|(|N|)>=\<emptyset\>>. If <math|x\<in\>X\\B> then
    <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>\<equallim\><rsub|<text|<reference|definition
    of limit in the extented reals>>><below|lim
    inf|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>> so we have that
    <math|f=<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>>
    <math|\<mu\>>-a.e.. As by <reference|measurable functions properties (2)>
    <math|<below|lim inf|n\<rightarrow\>\<infty\>>f<rsub|n>> is
    <math|\<cal-A\>>-measurable [given that
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> <math|f<rsub|n> > is
    <math|\<cal-A\>>-measurable] we have using the previous proposition
    <reference|f=g almost everywhere property> that\ 

    <\equation*>
      f is \<cal-A\><text|-measurable>
    </equation*>
  </proof>

  The following lemma show another way of representing a simple function that
  will be usefull to define the integral on a simple function.\ 

  <\lemma>
    <label|simple function as a finite sum>Let <math|X> be a set and
    <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be a simple
    function then there exists a <math|n\<in\>\<bbb-N\><rsub|0>> and a
    bijection <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>f<around*|(|X|)>>
    such that for <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    defined by <math|A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>>
    we have\ 

    <\enumerate>
      <item><math|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      [<math|X> is the pairwise disjoint union of <math|A<rsub|i>>'s]

      <item><math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<beta\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>
      [or in other words <math|f=<big|sum><rsub|i=1><rsup|n>\<beta\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>].
    </enumerate>
  </lemma>

  <\proof>
    \ As <math|f> is a simple function we have by definition that
    <math|f<around*|(|X|)>> is finite and non empty, so there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
    <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>f<around*|(|X|)>>.
    Define now <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    by <math|f<rsup|-1><around*|(|\<beta\><around*|(|i|)>|)>> then as
    <math|A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>\<subseteq\>X>
    we have <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>\<subseteq\>X>.
    Now if <math|x\<in\>X> then <math|f<around*|(|x|)>\<in\>f<around*|(|X|)>>
    so that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|f<around*|(|x|)>=\<beta\><around*|(|i|)>\<Rightarrow\>x\<in\>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>=A<rsub|i>>
    proving that <math|X\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>.
    Hence we have\ 

    <\equation>
      <label|eq 18.341.034>X=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
    </equation>

    Further if <math|i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> then if <math|x\<in\>A<rsub|i><big|cap>A<rsub|j>> we
    have <math|x\<in\>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>\<wedge\>x\<in\>f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|j|)>|}>|)>>
    or <math|\<beta\><around*|(|i|)>=f<around*|(|x|)>=\<beta\><around*|(|j|)>\<Rightarrowlim\><rsub|\<beta\><text|
    is a bijection>>i=j> a contradiction. So we must have that that
    <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>> which using <reference|eq
    18.341.034> proves\ 

    <\equation>
      <label|eq 18.342.034>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
    </equation>

    If now <math|x\<in\>X> then by the above there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>A<rsub|i>\<Rightarrow\>f<around*|(|x|)>=\<beta\><around*|(|i|)>>
    and <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
    <math|x\<nin\>A<rsub|j>>. So\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|\<beta\><around*|(|i|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<in\>A<rsub|i>>>|<cell|\<beta\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<nin\>A<rsub|j>
      if j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>>|<cell|\<beta\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>\<beta\><around*|(|j|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>\<beta\><around*|(|j|)>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>>>>>
    </eqnarray*>

    proving the lemma.
  </proof>

  <\lemma>
    <label|simple function properties>Let <math|X> be a set,
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-P\><around*|(|X|)>>
    such that <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have
    <math|A<rsub|i>\<subseteq\>B<rsub|i>> and
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
    then if we define

    <\eqnarray*>
      <tformat|<table|<row|<cell|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>|<cell|by>|<cell|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>
      <text|[where <math|\<cal-X\><rsub|A<rsub|i>>> is the characteristics
      function [see <reference|characteristics
      function>]]>>>|<row|<cell|g:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>|<cell|by>|<cell|g<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>
      <text|[where <math|\<cal-X\><rsub|B<rsub|i>>> is the characteristics
      function [see <reference|characteristics function>]]>>>>>
    </eqnarray*>

    we have

    <\enumerate>
      <item><math|\<forall\>x\<in\>X> we have
      <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>

      <item><math|\<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>|)>>
      we have <math|f<around*|(|x|)>=g<around*|(|x|)>>
    </enumerate>
  </lemma>

  <\proof>
    First given <math|x\<in\>X> define\ 

    <\equation*>
      A<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>A<rsub|i>|}><text|
      and >B<rsub|x>=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|x\<in\>B<rsub|i>|}>
    </equation*>

    If <math|i\<in\>A<rsub|x>> we have by definition that
    <math|x\<in\>A<rsub|i>>, hence as <math|A<rsub|i>\<subseteq\>B<rsub|i>>
    we have <math|x\<in\>B<rsub|i>\<Rightarrow\>i\<in\>B<rsub|x>> proving
    that\ 

    <\equation>
      <label|eq 18.343.0.34>A<rsub|x>\<subseteq\>B<rsub|x>
    </equation>

    Next we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\A<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\>A<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|0+<big|sum><rsub|i\<in\>A<rsub|x>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|\<leqslant\><rsub|A<rsub|x>\<subseteq\>B<rsub|x>>>|<cell|<big|sum><rsub|i\<in\>B<rsub|x>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\B<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\>B<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    proving\ 

    <\equation>
      <label|eq 18.44.034>\<forall\>x\<in\>X<text| we have
      >f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>
    </equation>

    This concludes part (1) of the lemma. For part (2) assume that
    <math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>|)>>
    so that <math|x\<nin\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>>.
    Let <math|j\<in\>B<rsub|x>> we have by definition
    <math|x\<in\>B<rsub|j>>, if <math|x\<nin\>A<rsub|j>> then
    <math|x\<in\>B<rsub|j>\\A<rsub|j>> contradicting
    <math|><math|x\<nin\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>>,
    so we must have that <math|x\<in\>A<rsub|j>> or <math|j\<in\>A<rsub|x>>,
    which proves that <math|B<rsub|x>\<subseteq\>A<rsub|x>>. Combining this
    with <reference|eq 18.343.0.34> proves that\ 

    <\equation>
      <label|eq 18.345.034>\<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>|)><text|
      we have >A<rsub|x>=B<rsub|x>
    </equation>

    Hence for <math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>|)>>

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\A<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\>A<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>A<rsub|x>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|A<rsub|x>=B<rsub|x>>>|<cell|<big|sum><rsub|i\<in\>B<rsub|x>>\<alpha\><rsub|i>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\B<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\>B<rsub|x>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<alpha\><rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
    </eqnarray*>

    proving\ 

    <\equation*>
      <label|eq 18.345.034>\<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\A<rsub|i>|)>|)><text|
      we have >f<around*|(|x|)>=g<around*|(|x|)>
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

        <item><math|g=h> <math|\<mu\>>-a.e.
      </enumerate>

      <item><math|f> is <math|\<cal-A\><rsub|\<mu\>>>-measurable
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>Let <math|x\<in\>\<bbb-R\>> then as
      <math|g> is <math|\<cal-A\>>-measurable we have by
      <reference|measurable function condition (1)> that
      <math|<around*|{|g\<leqslant\>x|}>\<in\>\<cal-A\>>, further as by
      <reference|completion of a measure space>
      <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>> we have that
      <math|<around*|{|g\<leqslant\>x|}>\<in\>\<cal-A\><rsub|\<mu\>>>. So
      using <reference|measurable function condition (1)> we have that\ 

      <\equation>
        <label|eq 18.346.033>g is \<cal-A\><rsub|\<mu\>><text|-measurable>
      </equation>

      Take <math|B=<around*|\<langle\>|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|\<rangle\>>>
      then by (1.c) there exists a <math|N\<in\>\<cal-A\>> with
      <math|\<mu\><around*|(|N|)>=0> and <math|B\<subseteq\>N>. Using
      <reference|completion of a measure space> we have that
      <math|\<cal-A\>\<subseteq\>\<cal-A\><rsub|\<mu\>>> and
      <math|<around*|(|<wide|\<mu\>|\<wide-bar\>>|)><rsub|\|\<cal-A\>>=\<mu\>>
      so that

      <\equation>
        <label|eq 18.347.033>N\<in\>\<cal-A\><rsub|\<mu\>><infix-and><wide|\<mu\>|\<wide-bar\>><around*|(|N|)>=\<mu\><around*|(|N|)>=0
      </equation>

      If <math|x\<in\>X\\N\<subseteq\>X\\B> then
      <math|g<around*|(|x|)>=h<around*|(|x|)>\<Rightarrowlim\><rsub|1.b>g<around*|(|x|)>=f<around*|(|x|)>>,
      so if <math|x\<in\>X> is such that <math|f<around*|(|x|)>\<neq\>g<around*|(|x|)>>
      then <math|x\<nin\>X\\N\<Rightarrow\>x\<in\>X\\<around*|(|X\\N|)>=N> so\ 

      <\equation>
        <label|eq 18.348.034><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>\<subseteq\>N
      </equation>

      Combining <reference|eq 18.347.033>, <reference|eq 18.348.034> proves
      that <math|f=g> <math|<wide|\<mu\>|\<wide-bar\>>>-almost everwhere. As
      <math|g> is <math|\<cal-A\><rsub|\<mu\>>>-measurable [see <reference|eq
      18.346.033>] we can apply <reference|f=g almost everywhere property>
      proving that\ 

      <\equation*>
        f is \<cal-A\><rsub|\<mu\>><text|-measurable>
      </equation*>

      <item*|<math|2\<Rightarrow\>1>>We prove this in three steps, first we
      prove the proposition for non negative real simple functions then for
      simple functions and finally the general case.\ 

      <\enumerate>
        <item>Let <math|s:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be a
        real non negative <math|\<cal-A\><rsub|\<mu\>>>-measurable simple
        function. Using <reference|simple function as a finite sum> there
        exists a <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
        <math|\<alpha\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>s<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>
        such that, if we define <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
        by <math|A<rsub|i>=s<rsup|-1><around*|(|<around*|{|\<alpha\><around*|(|i|)>|}>|)>,<rsup|>>
        it follows

        <\equation>
          <label|eq 18.349.034>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i><text|
          and >\<forall\>x\<in\>X we have
          s<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<alpha\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>
        </equation>

        As <math|s> is <math|\<cal-A\><rsub|\<mu\>>>-measurable we have by
        <reference|simple functions are measurable> that
        <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
        <math|A<rsub|i>\<in\>\<cal-A\><rsub|\<mu\>>> which using the
        definition of <math|\<cal-A\><rsub|\<mu\>>> [see
        <reference|completion of a measure>] gives

        <\equation>
          <label|eq 18.350.0.34>\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}><text|
          there exists >C<rsub|i>,B<rsub|i>\<in\>\<cal-A\> <text|such that
          >C<rsub|i>\<subseteq\>A<rsub|i>\<subseteq\>B<rsub|i><text| and
          >\<mu\><around*|(|B<rsub|i>\\C<rsub|i>|)>=0
        </equation>

        Define now <math|g=<big|sum><rsub|i=1><rsup|n>\<alpha\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>
        and <math|h=<big|sum><rsub|i=1><rsup|n>\<alpha\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|B<rsub|i>>>
        then by <reference|measurable functions properties (3)>,
        <reference|finite sum of mesaurable functions is measurable (1)> and
        <reference|characteristic function is measurable> we have that\ 

        <\equation>
          <label|eq 18.351.034>g,h \ are \<cal-A\><text|-measurable>
        </equation>

        Using the previous lemma <reference|simple function properties> and
        <reference|eq 18.350.0.34> it follows that

        <\equation>
          <label|eq 18.352.034>\<forall\>x\<in\>X <text|we have
          >g<around*|(|x|)>\<leqslant\>s<around*|(|x|)>\<leqslant\>h<around*|(|x|)>
        </equation>

        Using the previous lemma <reference|simple function properties> and
        <reference|eq 18.350.0.34> again we find that
        <math|\<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\C<rsub|i>|)>|)>
        <text| \ >g<around*|(|x|)>=h<around*|(|x|)>>. So if <math|x\<in\>X>
        is such that <math|g<around*|(|x|)>\<neq\>h<around*|(|x|)>> we must
        have that <math|x\<nin\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\C<rsub|i>|)>|)>>
        or <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\C<rsub|i>|)>>.
        As <math|\<mu\><around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>><around*|(|B<rsub|i>\\C<rsub|i>|)><rsub|>|)>\<leqslant\><rsub|<text|<reference|measure
        is subadditive>>><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|B<rsub|i>\\C<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
        18.350.0.34>>>0> we conclude that

        <\equation>
          <label|eq 18.353.034>g=h<text| >\<mu\><text|-a.e.>
        </equation>

        <item>Let <math|s:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be a
        a real valued <math|\<cal-A\><rsub|\<mu\>>>-measurable function [not
        neccesary non negative] then using <reference|\|f(x)\| as f+ f-> we
        have that <math|s=s<rsup|+>-s<rsup|->>. As
        <math|s<rsup|+><around*|(|X|)>=<around*|{|max<around*|(|s<around*|(|x|)>,0|)>\|x\<in\>X|}>\<subseteq\>s<around*|(|X|)><big|cup><around*|{|0|}>>
        a finite set in <math|\<bbb-R\>> and
        <math|s<rsup|-><around*|(|X|)>=<around*|{|-min<around*|(|s<around*|(|x|)>,0|)>\|x\<in\>X|}>\<subseteq\><around*|{|-y\|y\<in\>s<around*|(|X|)>|}><big|cup><around*|{|0|}>>
        a finite set in <math|\<bbb-R\>>, it follows that <math|s<rsup|+>>
        and <math|s<rsup|->> are simple functions. Further using
        <reference|measurable functions properties (5)> and the
        <math|\<cal-A\><rsub|\<mu\>>>-measurability of <math|s> we have that
        <math|s<rsup|+>>, <math|s<rsup|->>are
        <math|\<cal-A\><rsub|\<mu\>>>-measurable. So we can use (1)
        [<reference|eq 18.351.034>,<reference|eq 18.352.034>,<reference|eq
        18.353.034>] to find <math|\<cal-A\>>-measurable function
        <math|g<rsup|+>,g<rsup|->,h<rsup|+>,h<rsup|->> such that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|>|<cell|\<forall\>x\<in\>X<text|
          >g<rsup|+><around*|(|x|)>\<leqslant\>s<rsup|+><around*|(|x|)>\<leqslant\>h<rsup|+><around*|(|x|)><infix-and>g<rsup|-><around*|(|x|)>\<leqslant\>s<rsup|-><around*|(|x|)>\<leqslant\>h<rsup|-><around*|(|x|)>>|<cell|<eq-number><label|eq
          18.354.034>>>|<row|<cell|>|<cell|h<rsup|+>=g<rsup|+>
          \<mu\><text|-a.e. and> h<rsup|<rsup|->>=g<rsup|->
          \<mu\><text|-a.e.>>|<cell|<eq-number><label|eq 18.355.034>>>>>
        </eqnarray*>

        Let <math|x\<in\>X> then we have (taking in account that all the
        terms in the sum are finite)\ 

        <\equation>
          <label|eq 18.356.034>g<rsup|+><around*|(|x|)>-h<rsup|-><around*|(|x|)>\<leqslant\>s<rsup|+><around*|(|x|)>-s<rsup|-><around*|(|x|)>\<leqslant\>h<rsup|+><around*|(|x|)>-g<rsup|-><around*|(|x|)>
        </equation>

        If we define <math|g=g<rsup|+>-h<rsup|->> and
        <math|h=h<rsup|+>-g<rsup|->> then using <reference|measurable
        functions properties (4)> and the above we have that

        <\equation>
          <label|eq 18.357.034>g,h<text| are >\<cal-A\><text|-measurable and
          >\<forall\>x\<in\>X<text| >g<around*|(|x|)>\<leqslant\>s<around*|(|x|)>\<leqslant\>h<around*|(|x|)>
        </equation>

        Further as <math|h<rsup|+>=g<rsup|+> \<mu\><text|-a-e. and>
        h<rsup|<rsup|->>=g<rsup|-> \<mu\><text|-a.e.>> we have by
        <reference|almost everywhere properties> and <reference|eq
        18.355.034> that <math|g<rsup|+>-h<rsup|->=h<rsup|+>-g<rsup|->>
        <math|\<mu\>>-a.e. proving that\ 

        <\equation>
          <label|eq 18.358.034>g=h<text| holds >\<mu\><text|-a.e.>
        </equation>

        <item>Now for the general case. Let
        <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> be a
        <math|\<cal-A\><rsub|\<mu\>>>-measurable function. Using
        <reference|measurable function as a limit of simple functions> there
        exists a sequence <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
        of <math|\<cal-A\><rsub|\<mu\>>>-measurable real valued simple
        functions such that\ 

        <\equation>
          <label|eq 18.359.034>\<forall\>x\<in\>X
          f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>
        </equation>

        Let <math|n\<in\>\<bbb-N\><rsub|0>> then using <reference|eq
        18.357.034> and <reference|eq 18.358.034> there exists a
        <math|\<cal-A\>>-measurable functions <math|g<rsub|n>,h<rsub|n>> such
        that\ 

        <\equation>
          <label|eq 18.360.034>\<forall\>x\<in\>X
          g<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n><around*|(|x|)>\<leqslant\>h<rsub|n><around*|(|x|)><text|
          and >g<rsub|n>=h<rsub|n> \<mu\><text|-a.e.>
        </equation>

        Define now <math|g> and <math|h> as <math|g=<below|lim
        sup|n\<rightarrow\>\<infty\>> g<rsub|n>> and <math|h=<below|lim
        inf|n\<rightarrow\>\<infty\>> h<rsub|n>> then using
        <reference|measurable functions properties (2)>\ 

        <\equation>
          <label|eq 18.361.034>g,h are \<cal-A\><text|-measurable>
        </equation>

        Let <math|x\<in\>X> then we have\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|g<around*|(|x|)>>|<cell|=>|<cell|<below|lim
          sup|n\<rightarrow\>\<infty\>> g<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          18.360.034> and <reference|lim inf and lim sup
          inequality>>>>|<cell|<below|lim sup|n\<rightarrow\>\<infty\>>
          f<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.359.034> def of lim>>>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.359.034> def of lim>>>|<cell|<below|lim
          inf|n\<rightarrow\>\<infty\>> f<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          18.360.034> and <reference|lim inf and lim sup
          inequality>>>>|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
          h<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|h<around*|(|x|)>>>>>
        </eqnarray*>

        proving that\ 

        <\equation>
          <label|eq 18.362.034>\<forall\>x\<in\>X
          g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>h<around*|(|x|)>
        </equation>

        Let <math|n\<in\>\<bbb-N\><rsub|0>> then as
        <math|g<rsub|n>=h<rsub|n>> is <math|\<mu\>>-almost anywhere there
        exists s <math|N<rsub|n>\<in\>\<cal-A\>> with
        <math|\<mu\><around*|(|N<rsub|n>|)>=0> such that
        <math|A<rsub|n>=<around*|{|x\<in\>X\|g<rsub|n><around*|(|x|)>\<neq\>h<rsub|n><around*|(|x|)>|}>\<subseteq\>N<rsub|n>>.
        Let <math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>|)>=<big|cap><rsub|i\<in\>\<bbb-N\><rsub|0>><around*|(|X\\N<rsub|i>|)>>
        then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we have
        <math|x\<in\>X\\N<rsub|i>> proving that
        <math|g<rsub|i><around*|(|x|)>=h<rsub|i><around*|(|x|)>> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|h<around*|(|x|)>>|<cell|=>|<cell|<below|lim
          inf|n\<rightarrow\>\<infty\>> h<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
          inf|n\<rightarrow\>\<infty\>> g<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|the
          limit inferior is lower then limit superior>>>>|<cell|<below|lim
          sup|n\<rightarrow\>\<infty\>> g<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|g<around*|(|x|)>>>>>
        </eqnarray*>

        which as by <reference|eq 18.362.034>
        <math|g<around*|(|x|)>\<leqslant\>h<around*|(|x|)>> proves that
        <math|h<around*|(|x|)>=g<around*|(|x|)>>. Hence\ 

        <\equation*>
          \<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>|)><text|
          we have >h<around*|(|x|)>=g<around*|(|x|)>
        </equation*>

        So if <math|x\<in\><around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>>
        we must have that <math|x\<nin\>X\\<around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>|)>>
        or <math|x\<in\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>>
        proving that <math|<around*|{|x\<in\>X\|g<around*|(|x|)>\<neq\>h<around*|(|x|)>|}>\<subseteq\><big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>>
        which as <math|\<mu\><around*|(|<big|cup><rsub|i\<in\>\<bbb-N\><rsub|0>>N<rsub|i>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|N<rsub|i>|)>=0>
        proves that:

        <\equation>
          <label|eq 18.363.034>g=h<space|1em>\<mu\><text|-a.e.>
        </equation>

        \;
      </enumerate>

      Finally <math|<around*|(|1\<Rightarrow\>2|)>> is proved by
      <reference|eq 18.361.034>, <reference|eq 18.362.034> and <reference|eq
      18.363.034>.
    </description>
  </proof>

  <section|The measure integral>

  We are now ready to define the measure integral on measurable functions. We
  do this in three steps, first we define the integral on real valued non
  negative simple functions, then on non negative extended real measurable
  functions and finally on real valued measurable functions.

  <subsection|Integral of simple functions>

  Recap the definition of a simple function [see <reference|simple
  function>], we define now the set of measurable simple functions on a
  measurable space as follows:

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable
    space then the set of measurable simple real valued functions
    <math|\<cal-S\><around*|[|X,\<cal-A\>|]>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    is defined as\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-S\><around*|[|X,\<cal-A\>|]>>|<cell|=>|<cell|<around*|{|f\<in\>\<bbb-R\><rsup|X>\|f
      <text|is a simple function and <math|\<cal-A\>>-measureble>|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
      function> and <reference|simple functions are
      measurable>>>>|<cell|<around*|{|f\<in\>\<bbb-R\><rsup|X>\|f<around*|(|X|)><text|
      is finite and >\<forall\>y\<in\>f<around*|(|X|)>
      f<rsup|-1><around*|(|y|)>\<in\>\<cal-A\>|}>>>>>
    </eqnarray*>

    Further the set of non negative rela valued simple functions is noted as
    <math|\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>|<cell|=>|<cell|<around*|{|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>\|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>|}>>>>>
    </eqnarray*>
  </definition>

  <\proposition>
    <label|set of simple functions>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable space and <math|f\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>>
    then there exists a <math|n\<in\>\<bbb-N\><rsub|0>> and families
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<bbb-R\>>
    such that <math|\<forall\>i,j\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|i\<neq\>j> we have <math|A<rsub|i><big|cap>A<rsub|j>=\<emptyset\>>
    and\ 

    <\equation*>
      f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>
    </equation*>

    Further if in addition <math|f\<in\>\<cal-S\><rsup|+><around*|[|X.\<cal-A\>|]>>
    then <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
  </proposition>

  <\proof>
    Using <reference|simple function as a finite sum> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> and a bijection
    <math|\<beta\>:<around*|{|1,\<ldots\>,n|}>\<rightarrow\>f<around*|(|X|)>>
    such that for <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    defined by <math|A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>>
    we have\ 

    <\enumerate>
      <item><math|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      [<math|X> is the pairwise disjoint union of <math|A<rsub|i>>'s]

      <item><math|\<forall\>x\<in\>X> we have that
      <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>\<beta\><around*|(|i|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>
    </enumerate>

    Define <math|<around*|{|a<rsub|i><rsub|>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    by <math|a<rsub|i>=\<beta\><around*|(|i|)>> then by (1) we have
    <math|\<forall\>x\<in\>X> that <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>
    proving that\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>
    </equation*>

    Using <reference|simple functions are measurable> we have
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> that
    <math|A<rsub|i>=f<rsup|-1><around*|(|<around*|{|\<beta\><around*|(|i|)>|}>|)>\<in\>\<cal-A\>>
    so that\ 

    <\equation*>
      <around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>
    </equation*>

    Finally if <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> we
    have that <math|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>,
    so if <math|i\<in\>\<bbb-N\><rsub|0>> then
    <math|a<rsub|i>=\<beta\><around*|(|i|)>\<in\>f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|[>>
    proving that\ 

    <\equation*>
      <around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>
    </equation*>
  </proof>

  We have also the opposite of the previous proposition.

  <\proposition>
    <label|simple function condition (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    a pairwise disjoint family and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    then for <math|f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    we have\ 

    <\enumerate>
      <item>If <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then
      <math|\<forall\>x\<in\>A<rsub|i>> we have
      <math|f<around*|(|x|)>=a<rsub|i>>

      <item><math|\<forall\>x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>
      we have <math|f<around*|(|x|)>=0>

      <item><math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then if
      <math|x\<in\>A<rsub|i><text| we have that
      >\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=1> and
      <math|\<forall\>j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>
      <math|x\<nin\>A<rsub|j>\<Rightarrow\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>=0>.
      Hence\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>>a<rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|i|}>>a<rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>+<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,n|}>\\<around*|{|i|}>>a<rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|j>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|i>+0>>|<row|<cell|>|<cell|=>|<cell|a<rsub|i>>>>>
      </eqnarray*>

      <item>If <math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>
      |)>> then \ <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
      <math|x\<nin\>A<rsub|i>\<Rightarrow\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=0>
      so that <math|f<around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>0=0>.

      <item>Let <math|x\<in\>X> then we have either
      <math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>
      giving <math|f<around*|(|x|)>=0> or
      <math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>
      so that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>> with
      <math|x\<in\>A<rsub|i>\<Rightarrowlim\><rsub|<around*|(|1|)>>f<around*|(|x|)>=a<rsub|i>>.
      Hence <math|f<around*|(|X|)>\<subseteq\><around*|{|a<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}><big|cup><around*|{|0|}>>
      a finite set proving that\ 

      <\equation>
        <label|eq 18.364.35.2>f is a simple
        function<infix-and>f<around*|(|X|)>\<subseteq\><around*|[|0,\<ldots\>,\<infty\>|[>
      </equation>

      Let <math|y\<in\>f<around*|(|X|)>>. For <math|y> we have then either\ 

      <\description>
        <item*|<math|y=0>>Define <math|J=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|a<rsub|i>=0|}>>.
        Let <math|x\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>=f<rsup|-1><around*|(|<around*|{|0|}>|)>>
        then we have either\ 

        <\description>
          <item*|<math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>then
          there exists a <math|i\<in\>A<rsub|i>> such that
          <math|0=f<around*|(|x|)>\<equallim\><rsub|<around*|(|1|)>>a<rsub|i>>
          hence <math|i\<in\>J> proving that
          <math|x\<in\><big|cup><rsub|i\<in\>J>A<rsub|i>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>>

          <item*|<math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>then
          <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>>
        </description>

        proving

        <\equation>
          <label|eq 18.365.036.11>f<rsup|-1><around*|(|<around*|{|y|}>|)>\<subseteq\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>
        </equation>

        For the opposite inclusing let <math|x\<in\><around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>>
        then either\ 

        <\description>
          <item*|<math|x\<in\><big|cup><rsub|i\<in\>J>A>>then
          <math|\<exists\>i\<in\>J> such that <math|x\<in\>A<rsub|i>> so that
          <math|f<around*|(|x|)>\<equallim\><rsub|<around*|(|1|)>>a<rsub|i>=0>
          or <math|x\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>

          <item*|<math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>then
          using (2) we have <math|f<around*|(|x|)>=0> or
          <math|x\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>
        </description>

        which proves that <math|<around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>\<subseteq\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>.
        Combining this with <reference|eq 18.365.036.11> proves that
        <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>=<around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>>.
        As <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        we have that <math|<around*|(|<big|cup><rsub|i\<in\>J>A<rsub|i>|)><big|cup><around*|(|X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>|)>\<in\>\<cal-A\>>,
        hence\ 

        <\equation*>
          f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-A\>
        </equation*>

        <item*|<math|y\<neq\>0>>Let <math|K=<around*|{|i\<in\>J\|a<rsub|i>=y|}>>
        and define <math|B=<big|cup><rsub|i\<in\>K>A<rsub|i>> \ then as
        <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
        we have that

        <\equation>
          <label|eq 18.366.035.1>B\<in\>\<cal-A\>
        </equation>

        \ If <math|x\<in\>B> then there exists a <math|i\<in\>K> such that
        <math|x\<in\>A<rsub|i>> hence <math|f<around*|(|x|)>\<equallim\><rsub|<around*|(|1|)>>a<rsub|i>\<equallim\><rsub|i\<in\>K>y>
        proving that\ 

        <\equation>
          <label|eq 18.367.035.1>B\<subseteq\>f<rsup|-1><around*|(|<around*|{|y|}>|)>
        </equation>

        For the opposite inclusion let <math|x\<in\>f<rsup|-1><around*|(|<around*|{|y|}>|)>>
        then <math|f<around*|(|x|)>=y>. Assume that <math|x\<nin\>B> then
        either\ 

        <\description>
          <item*|<math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>>>so
          that <math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}>\\K> such
          that <math|x\<in\>A<rsub|i><rsub|>> hence
          <math|f<around*|(|x|)>=a<rsub|i>\<neq\>y> a contradiction.

          <item*|<math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>A<rsub|i>|)>>>
          then <math|f<around*|(|x|)>=0\<neq\>y> a contradiction.
        </description>

        As in all cases we reach a contradiction it follows that
        <math|x\<in\>B> proving that <math|f<rsup|-1><around*|(|<around*|{|y|}>|)>\<subseteq\>B>
        which combined with <reference|eq 18.367.035.1> proves\ 

        <\equation*>
          f<rsup|-1><around*|(|<around*|{|y|}>|)>=B\<in\><rsub|<text|<reference|eq
          18.366.035.1>>>\<cal-A\>
        </equation*>
      </description>

      So its proved that\ 

      <\equation>
        <label|eq 18.369.035.1>\<forall\>y\<in\>f<around*|(|X|)> <text| we
        have >f<rsup|-1><around*|(|<around*|{|y|}>|)>\<in\>\<cal-S\>
      </equation>

      As <math|f> is a simple real valued non negative function [see
      <reference|eq 18.364.35.2>], <math|\<cal-A\>>-measurable [see
      <reference|eq 18.369.035.1> and <reference|simple functions are
      measurable>] it follows that\ 

      <\equation*>
        f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      </equation*>
    </enumerate>
  </proof>

  <\example>
    <label|constant simple function>Let <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>>
    be a measurable function, <math|a\<in\><around*|[|0,\<infty\>|[>> and
    <math|C<rsub|a>\<in\>\<bbb-R\><rsup|X>> defined by
    <math|C<rsub|a><rsub|><around*|(|x|)>=a> then
    <math|C<rsub|a>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>.
  </example>

  <\proof>
    Define <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
    by <math|a<rsub|i>=a> and <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
    by <math|A<rsub|i>=X> then as <math|X\<in\>\<cal-A\>> we have by the
    previous proposition [see <reference|simple function condition (2)>] that
    <math|<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>.
    Finally if <math|x\<in\>X> then <math|<around*|(|<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=a=C<rsub|a><around*|(|x|)>>
    proving that <math|C<rsub|a>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>.
  </proof>

  <\proposition>
    <label|simple functions integral (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>.
    Assume that <math|\<exists\>n,m\<in\>\<bbb-N\><rsub|0>>, pairwise
    disjoint families of measurable sets <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>\<subseteq\>\<cal-A\>>
    and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
    such that

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>=f=<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>
    </equation*>

    then\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>
    </equation*>

    <\note>
      The condition that <math|f\<in\>S<rsup|+><around*|[|X,\<cal-A\>|]>> is
      needed because this ensures that <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>,<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>>
      are non negative so that <math|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>
      and <math|<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>
      are well defined [as <math|\<mu\><around*|(|A<rsub|i>|)>,\<mu\><around*|(|B<rsub|i>|)>>
      can be <math|\<infty\>>].
    </note>
  </proposition>

  <\proof>
    First define <math|I=<around*|{|i\<in\><around*|{|i,\<ldots\>,n|}>\|A<rsub|i>\<neq\>\<emptyset\>\<wedge\>a<rsub|i>\<neq\>0|}>>
    and <math|J=<around*|{|i\<in\><around*|{|1,\<ldots\>,m|}>\|B<rsub|i>\<neq\>\<emptyset\>\<wedge\>b<rsub|i>\<neq\>0|}>>
    then we have for <math|x\<in\>X> that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>>>
    </eqnarray*>

    \ and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>|)><around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>J>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>\\J>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>J>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>J>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.364.035><big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>=f=<big|sum><rsub|i\<in\>J>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>>
    </equation>

    Let <math|x\<in\><big|cup><rsub|i\<in\>I>A<rsub|i>> then there exists a
    <math|i\<in\>I> such that <math|x\<in\>A<rsub|i>> and as
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>I>> is pairwise disjoint we
    have that <math|f<around*|(|x|)>=<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>\<equallim\><rsub|<text|<reference|simple
    function condition (2)>>>a<rsub|i>\<neq\>0>. Assume that
    <math|x\<nin\><big|cup><rsub|i\<in\>J>B<rsub|i>> then we have
    <math|f<around*|(|x|)>=0> a contradiction so we must have that
    <math|x\<in\><big|cup><rsub|i\<in\>I>B<rsub|i>>. This proves that
    <math|<big|cup><rsub|i\<in\>I>A<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>J>B<rsub|i>>.
    In a simular way we have that <math|<big|cup><rsub|i\<in\>J>B<rsub|i>\<subseteq\><big|cup><rsub|i\<in\>I>A<rsub|i>>.
    Hence we have\ 

    <\equation>
      <label|eq 18.365.035><big|sqcup><rsub|i\<in\>I>A<rsub|i>=<big|sqcup><rsub|i\<in\>J>B<rsub|i>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then

    <\equation>
      <label|eq 18.366.035>A<rsub|i>=A<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\>I>A<rsub|j>|)>\<equallim\><rsub|<text|<reference|eq
      18.365.035>>>A<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\>J>B<rsub|j>|)>=<big|sqcup><rsub|j\<in\>J><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>
    </equation>

    Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> then\ 

    <\equation>
      <label|eq 18.367.035>B<rsub|i>=B<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\>I>B<rsub|j>|)>\<equallim\><rsub|<text|<reference|eq
      18.365.035>>>B<rsub|i><big|cap><around*|(|<big|sqcup><rsub|j\<in\>I>A<rsub|j>|)>=<big|sqcup><rsub|j\<in\>I><around*|(|A<rsub|j><big|cap>B<rsub|i>|)>
    </equation>

    Define <math|K=<around*|{|<around*|(|i,j|)>\<in\><around*|{|1,\<ldots\>,n|}>\<times\><around*|{|1,\<ldots\>,m|}>\|A<rsub|i><big|cap>B<rsub|j>\<neq\>\<emptyset\>|}>>.
    Then if <math|<around*|(|i,j|)>\<in\>K> we have
    <math|A<rsub|i><big|cap>B<rsub|j>\<neq\>\<emptyset\>> hencet
    <math|\<exists\>x\<in\>A<rsub|i><big|cap>B<rsub|j>>, So

    <\equation*>
      a<rsub|i>\<equallim\><rsub|<text|<reference|simple function condition
      (2)>>\<wedge\>x\<in\>A<rsub|i>><big|sum><rsub|j\<in\>I>a<rsub|j>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>=f<around*|(|x|)>=<big|sum><rsub|j\<in\>I>b<rsub|j>\<cdot\>\<cal-X\><rsub|B<rsub|j>><around*|(|x|)>\<equallim\><rsub|<text|<reference|simple
      function condition (2)>>\<wedge\>x\<in\>B<rsub|j>>b<rsub|j>
    </equation*>

    proving that

    <\equation>
      <label|eq 18.368.035>\<forall\><around*|(|i,j|)>\<in\>K we have
      a<rsub|i>=b<rsub|j>
    </equation>

    Now\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>+<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\I>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\>>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.366.035>>>>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|j\<in\>J><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\><around*|(|<big|sum><rsub|j\<in\>J>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I><around*|(|<big|sum><rsub|j\<in\>J>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|(|I\<times\>J|)>\\K>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>+<big|sum><rsub|<around*|(|i,j|)>\<in\>K>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|i,j|)>\<in\><around*|(|I\<times\>J|)>\\K\<Rightarrow\>A<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>K>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.368.035>>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>K>b<rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|i,j|)>\<in\><around*|(|I\<times\>J|)>\\K\<Rightarrow\>A<rsub|i><big|cap>B<rsub|j>=\<emptyset\>>>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\><around*|(|I\<times\>J|)>\\K>b<rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>+<big|sum><rsub|<around*|(|i,j|)>\<in\>K>b<rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|<around*|(|i,j|)>\<in\>I\<times\>J>b<rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|sum
      over product of sets>>>>|<cell|<big|sum><rsub|j\<in\>J><around*|(|<big|sum><rsub|i\<in\>I>b<rsub|j>\<cdot\>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J>b<rsub|j>\<cdot\><around*|(|<big|sum><rsub|i\<in\>I>\<mu\><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J>b<rsub|j>\<cdot\>\<mu\><around*|(|<big|sqcup><rsub|i\<in\>I>A<rsub|i><big|cap>B<rsub|j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.367.035>>>>|<cell|<big|sum><rsub|j\<in\>J>b<rsub|j>\<cdot\>\<mu\><around*|(|B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\>J>b<rsub|j>\<cdot\>\<mu\><around*|(|B<rsub|j>|)>+<big|sum><rsub|j\<in\><around*|{|1,\<ldots\>,m|}>\\J>b<rsub|j>\<cdot\>\<mu\><around*|(|B<rsub|j>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j=1><rsup|m>b<rsub|j>\<cdot\>\<mu\><around*|(|B<rsub|j>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>
    </equation*>
  </proof>

  The two above propositions <reference|set of simple functions> and
  <reference|simple functions integral (1)> ensures that the following
  definition is well defined (existence and uniqueness).\ 

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space then the integral <math|<big|int><rsup|S>:\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>\<rightarrow\><around*|[|0,\<infty\>|]>>
    is defined by <math|f\<rightarrow\><big|int><rsup|S>f d\<mu\>> where

    <\equation*>
      <big|int><rsup|\<cal-S\>>f d\<mu\>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>
    </equation*>

    where <math|n\<in\>\<bbb-N\><rsub|0>,<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    pairwise disjoint and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that\ 

    <\equation*>
      f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>
    </equation*>
  </definition>

  To compare two simple functions we need the following lemma.

  <\lemma>
    <label|simple function condition (3)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measure space and
    <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then there
    exists a <math|n\<in\>\<bbb-N\><rsub|0>>,
    <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
    of pairwise disjoint measurable sets and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>,
    <math|<around*|{|g<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>|<cell|>>|<row|<cell|>|<cell|f=<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>|<cell|>>|<row|<cell|>|<cell|g=<big|sum><rsub|i=1><rsup|n>g<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>|<cell|>>>>
    </eqnarray*>
  </lemma>

  <\proof>
    As <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> we have
    using <reference|set of simple functions> the existance of two pairwsise
    disjoint measurable sets <math|<around*|{|A<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|B<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>\<subseteq\>\<cal-A\>>
    and two families of non negative numbers
    <math|<around*|{|a<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>\<subseteq\><around*|[|0,\<infty\>|[>>,
    <math|<around*|{|b<rprime|'><rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    such that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n<rprime|'>>a<rsub|i><rprime|'>\<cdot\>\<cal-X\><rsub|A<rprime|'><rsub|i>>>>|<row|<cell|g>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m<rprime|'>>b<rsub|i><rprime|'>\<cdot\>\<cal-X\><rsub|B<rprime|'><rsub|i>>>>>>
    </eqnarray*>

    Define now <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,m<rprime|'>+1|}>>\<subseteq\>\<cal-A\>>
    and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>>\<subseteq\><around*|[|0,\<infty\>|[>>,
    <math|<around*|{|b<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
    as follows:

    <\eqnarray*>
      <tformat|<table|<row|<cell|A<rsub|i>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|X\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>A<rprime|'><rsub|i><text|
      if >i=n<rprime|'>+1>>|<row|<cell|A<rprime|'><rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>>>>>>>|<row|<cell|B<rsub|i>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|X\\<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>B<rprime|'><rsub|i><text|
      if >i=m<rprime|'>+1>>|<row|<cell|B<rprime|'><rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>>>>>>>|<row|<cell|a<rsub|i>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0<text|
      if >i=n<rprime|'>+1>>|<row|<cell|a<rprime|'><rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>>>>>>>|<row|<cell|b<rsub|i>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|0
      <text|if >i=m<rprime|'>+1>>|<row|<cell|b<rprime|'><rsub|i><text| if
      >i\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>>>>>>>>>
    </eqnarray*>

    then clearly <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>>>,
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,m<rprime|'>+1|}>>>
    are pairwise disjoint and\ 

    <\equation>
      <label|eq 18.375.035.3>X=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>>A<rsub|i>=<big|sqcup><rsub|i\<in\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>>B<rsub|i>
    </equation>

    From the above we have then that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}><text|
      >A<rsub|i>>|<cell|=>|<cell|A<rsub|i><big|cap>X=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>><around*|(|A<rsub|i><big|cap>B<rsub|j>|)><eq-number><label|eq
      18.376.035.3>>>|<row|<cell|\<forall\>i\<in\><around*|{|1,\<ldots\>,m<rprime|'>+1|}><text|
      B_i>>|<cell|=>|<cell|B<rsub|i><big|cap>X=<big|sqcup><rsub|j\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>><around*|(|A<rsub|j><big|cap>B<rsub|i>|)><eq-number><label|eq
      18.377.035.3>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      X=<big|sqcup><rsub|i=1><rsup|n<rprime|'>+1><around*|(|<big|sqcup><rsub|j=1><rsup|m<rprime|'>+1><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>|)>=<big|sqcup><rsub|i=1><rsup|m<rprime|'>+1><around*|(|<big|sqcup><rsub|j=1><rsup|n<rprime|'>+1><around*|(|A<rsub|j><big|cap>B<rsub|i>|)>|)>
    </equation>

    <label|eq 18.378.035.3>Using <reference|product of finite sets is finite>
    we have that <math|<around*|{|1,\<ldots\>,n<rprime|'>+1|}>\<times\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>>
    is finite and there exists a bijection

    <\equation*>
      \<beta\>:<around*|{|1,\<ldots\>,<around*|(|n<rprime|'>+1|)>\<cdot\><around*|(|m<rprime|'>+1|)>|}>\<rightarrow\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>\<cdot\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>
    </equation*>

    Using the above bijection take <math|n=<around*|(|n<rprime|'>+1|)>\<cdot\><around*|(|m<rprime|'>+1|)>>
    and define <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>,
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    and <math|<around*|{|g<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>n|}>>>
    by\ 

    <\equation*>
      C<rsub|i>=A<rsub|\<beta\><around*|(|i|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|i|)><rsub|2>><text|,
      >f<rsub|i>=a<rsub|\<beta\><around*|(|i|)><rsub|1>><text|,
      >g<rsub|i>=b<rsub|\<beta\><around*|(|i|)><rsub|2>>
    </equation*>

    Take <math|x\<in\>X> then by <reference|eq 18.378.035.3> there exists a
    <math|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>> such that
    <math|x\<in\><big|sqcup><rsup|m<rprime|'>+1><rsub|j=1><around*|(|A<rsub|i><big|cap>B<rsub|j>|)>>,
    hence there exists a <math|j\<in\><around*|{|1,\<ldots\>,m<rprime|'>+1|}>>
    such that <math|x\<in\>A<rsub|i><big|cap>B<rsub|j>>. As <math|\<beta\>>
    is a bijection there exists a <math|k\<in\><around*|{|1,\<ldots\>,n|}>>
    such that <math|\<beta\><around*|(|k|)>=<around*|(|i,j|)>>, hence
    <math|x\<in\>A<rsub|\<beta\><around*|(|k|)><rsub|1>,\<beta\><around*|(|k|)><rsub|2>>=C<rsub|k>>.
    This proves that <math|X\<subseteq\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>>
    which as trivially <math|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>\<subseteq\>X>
    proves that

    <\equation>
      <label|eq 18.379.035.3>X=<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>C<rsub|i>.
    </equation>

    Further if <math|k,l\<in\><around*|{|1,\<ldots\>,n|}>> with
    <math|k\<neq\>l> then as <math|\<beta\>> is a bijection we have that
    <math|\<beta\><around*|(|k|)>\<neq\>\<beta\><around*|(|l|)>>. If now
    <math|x\<in\>C<rsub|k><big|cap>C<rsub|l>> then
    <math|x\<in\><around*|(|A<rsub|\<beta\><around*|(|k|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|k|)><rsub|2>>|)><big|cap><around*|(|A<rsub|\<beta\><around*|(|l|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|l|)><rsub|2>>|)>>
    so that <math|x\<in\>A<rsub|\<beta\><around*|(|k|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|l|)><rsub|2>>\<wedge\>x\<in\>A<rsub|\<beta\><around*|(|l|)><rsub|1>><big|cap>B<rsub|\<beta\><around*|(|l|)><rsub|2>>>,
    as <math|><math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>+1|}>>>,
    <math|<around*|{|B<rsub|i>|}><rsub|i\<in\><around*|{|1\<ldots\>,m<rprime|'>+1|}>>>
    are pairwise disjoint we have that <math|\<beta\><around*|(|k|)><rsub|1>=\<beta\><around*|(|l|)><rsub|1>\<wedge\>\<beta\><around*|(|k|)><rsub|2>=\<beta\><around*|(|l|)><rsub|2>>,
    leading to the contradiction <math|\<beta\><around*|(|k|)>=\<beta\><around*|(|l|)>>.
    Hence we have that\ 

    <\equation>
      <label|eq 18.380.035.3><around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\><text|
      is pairwise disjoint>
    </equation>

    Let <math|x\<in\>X> then by <reference|eq 18.379.035.3> there exists a
    <math|k\<in\><around*|{|1,\<ldots\>,n|}>> such that
    <math|x\<in\>C<rsub|k>> and take <math|\<beta\><around*|(|k|)>=<around*|(|i,j|)>>,
    then <math|C<rsub|k>=A<rsub|i><big|cap>B<rsub|j>>. For <math|i> we must
    consider the following cases:

    <\description>
      <item*|<math|i=n<rprime|'>+1>>then <math|x\<in\>A<rsub|n<rprime|'>+1>=X\\<around*|(|<big|cup><rsub|r\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>A<rprime|'><rsub|i>|)>>
      and using <reference|simple function condition (2)>
      <math|f<around*|(|x|)>=0>. Further using <reference|simple function
      condition (2)> again, it follow from <math|x\<in\>C<rsub|k>> that
      <math|<around*|(|<big|sum><rsub|r=1><rsup|n>f<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=f<rsub|k>=a<rsub|\<beta\><around*|(|k|)><rsub|1>>=a<rsub|n<rprime|'>+1>=0>
      proving that\ 

      <\equation*>
        <around*|(|<big|sum><rsub|r=1><rsup|n>f<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=f<around*|(|x|)>
      </equation*>

      <item*|<math|i\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>>then
      <math|x\<in\>A<rsub|i>>, so using <reference|simple function condition
      (2)> we have <math|f<around*|(|x|)>=a<rprime|'><rsub|i>> and
      <math|><math|<around*|(|<big|sum><rsub|r=1><rsup|n>f<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>\<equallim\><rsub|x\<in\>C<rsub|k>>f<rsub|k>=a<rsub|\<beta\><around*|(|k|)><rsub|1>>=a<rsub|i>=a<rprime|'><rsub|i>>,
      Hence\ 

      <\equation*>
        <around*|(|<big|sum><rsub|r=1><rsup|n>f<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=f<around*|(|x|)>
      </equation*>
    </description>

    So we conclude that\ 

    <\equation>
      <label|eq 18.381.035.3>f=<big|sum><rsub|r=1><rsup|n>f<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>
    </equation>

    For <math|j> we must consider the following cases:

    <\description>
      <item*|<math|j=m<rprime|'>+1>>then <math|x\<in\>B<rsub|m<rprime|'>+1>=X\\<around*|(|<big|cup><rsub|r\<in\><around*|{|1,\<ldots\>,n<rprime|'>|}>>B<rprime|'><rsub|i>|)>>
      so that using <reference|simple function condition (2)>
      <math|g<around*|(|x|)>=0>. Further using <reference|simple function
      condition (2)> again it, follow from <math|x\<in\>C<rsub|k>> that
      <math|<around*|(|<big|sum><rsub|r=1><rsup|n>g<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=g<rsub|k>=b<rsub|\<beta\><around*|(|k|)><rsub|2>>=b<rsub|m<rprime|'>+1>=0>
      proving that\ 

      <\equation*>
        <around*|(|<big|sum><rsub|r=1><rsup|n>g<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=g<around*|(|x|)>
      </equation*>

      <item*|<math|j\<in\><around*|{|1,\<ldots\>,m<rprime|'>|}>>>then
      <math|x\<in\>B<rsub|i>> so using <reference|simple function condition
      (2)> we have <math|g<around*|(|x|)>=b<rprime|'><rsub|j>> and
      <math|><math|<around*|(|<big|sum><rsub|r=1><rsup|n>g<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>\<equallim\><rsub|k\<in\>C<rsub|k>>g<rsub|k>=b<rsub|\<beta\><around*|(|k|)><rsub|2>>=b<rsub|j>=b<rprime|'><rsub|j>>,
      Hence\ 

      <\equation*>
        <around*|(|<big|sum><rsub|r=1><rsup|n>g<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>|)><around*|(|x|)>=g<around*|(|x|)>
      </equation*>
    </description>

    So we conclude that\ 

    <\equation>
      <label|eq 18.382.035.3>g=<big|sum><rsub|r=1><rsup|n>g<rsub|r>\<cdot\>\<cal-X\><rsub|C<rsub|r>>
    </equation>

    The lemma is then proved by <reference|eq 18.379.035.3>, <reference|eq
    18.380.035.3>, <reference|eq 18.381.035.3> and <reference|eq
    18.382.035.3>.
  </proof>

  The integral of non negative real valued simple functions has the following
  properties.

  <\proposition>
    <label|simple functions integral properties (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we have\ 

    <\enumerate>
      <item>If <math|\<alpha\>\<in\><around*|[|0,\<infty\>|[>> and
      <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then
      <math|\<alpha\>\<cdot\>f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      and \ <math|<big|int><rsup|\<cal-S\>><around*|(|\<alpha\>\<cdot\>f|)>
      d\<mu\>=\<alpha\>\<cdot\><big|int><rsup|\<cal-S\>>f d\<mu\>>

      <item>If <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      then\ 

      <\enumerate>
        <item><math|f+g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> and
        <math|<big|int><rsup|\<cal-S\>><around*|(|f+g|)>d\<mu\>=<big|int><rsup|\<cal-S\>>f
        d\<mu\>+<big|int><rsup|\<cal-S\>>g d\<mu\>>

        <item>if <math|\<forall\>x\<in\>X>
        <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>> then
        <math|<big|int><rsup|\<cal-S\>>f d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>g
        d\<mu\>>

        <item><math|f\<wedge\>g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>,
        <math|<big|int><rsup|\<cal-S\>><around*|(|f\<wedge\>g|)>
        d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f d\<mu\>> and
        <math|<big|int><rsup|\<cal-S\>><around*|(|f\<wedge\>g|)>
        d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>g d\<mu\>>
      </enumerate>

      <item>If <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> is
      such that <math|f=0> <math|\<mu\>>-a.e. then <math|<big|int><rsup|S>f
      d\<mu\>=0>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f\<in\>\<cal-S\><rsup|+><around*|(|X,\<cal-A\>|)>> there
      exists by <reference|set of simple functions> a
      <math|n\<in\>\<bbb-N\><rsub|0>>, a pairwise disjoint family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      and a <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
      such that <math|f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>.
      Then \ <math|<around*|{|\<alpha\>\<cdot\>a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
      and <math|\<forall\>x\<in\>X> we have

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>a<rsub|i>|)>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>a<rsub|i>|)>\<cdot\>\<cal-X\><rsub|A<rsub|i><rsub|>>|)><around*|(|x|)>>>>>
      </eqnarray*>

      proving that

      <\equation*>
        \<alpha\>\<cdot\>f=<big|sum><rsub|i=1><rsup|n><around*|(|\<alpha\>\<cdot\>a<rsub|i>|)>\<cdot\>\<cal-X\><rsub|A<rsub|i><text|>>
      </equation*>

      Using <reference|simple function condition (2)> it follows then that\ 

      <\equation*>
        \<alpha\>\<cdot\>f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      </equation*>

      Finally we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsup|\<cal-S\>>\<alpha\>\<cdot\>f
        d\<mu\>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>*<around*|(|\<alpha\>\<cdot\>a<rsub|i>|)>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|a\<cdot\><big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|int><rsup|\<cal-S\>>f
        d\<mu\>>>>>
      </eqnarray*>

      <item>As <math|f,g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> we
      have, using the previous lemma [see <reference|simple function
      condition (3)>], that there exists a pairwise disjoint family of
      measurable sets <math|<around*|{|C<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      and families of non negative numbers
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>,
      <math|<around*|{|g<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
      such that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|>|<cell|X=<big|sqcup><rsub|i=1><rsup|n>C<rsub|i>>|<cell|>>|<row|<cell|>|<cell|f=<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>|<cell|>>|<row|<cell|>|<cell|g=<big|sum><rsub|i=1><rsup|n>g<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>|<cell|>>>>
      </eqnarray*>

      <\enumerate>
        <item>Consider now <math|<around*|{|f<rsub|i>+g<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|]>>
        then using <reference|simple function condition (2)> we have that\ 

        <\equation>
          <big|sum><rsub|i=1><rsup|n><around*|(|f<rsub|i>+g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
        </equation>

        Further if <math|x\<in\>X> then there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|x\<in\>C<rsub|k>>. Hence\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><around*|(|f<rsub|i>+g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>|)><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>>|<cell|f<rsub|i>+g<rsub|i>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|i>>|)><around*|(|x|)>+<around*|(|<big|sum><rsub|i=1><rsup|n>g<rsub|i>\<cdot\>\<cal-X\><rsub|C<rsub|I>>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>+g<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<around*|(|f+g|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that

        <\equation>
          <label|eq 18.384.035.3>f+g=<big|sum><rsub|i=1><rsup|n><around*|(|f<rsub|i>+g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>\<in\>\<cal-S\><around*|[|X,\<cal-A\>|]>
        </equation>

        Finally we have that

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><rsup|\<cal-S\>><around*|(|f+g|)>d\<mu\>>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.384.035.3>>>>|<cell|<big|sum><rsub|i=1><rsup|n><around*|(|f<rsub|i>+g<rsub|i>|)>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>+<big|sum><rsub|i=1><rsup|n>g<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsup|\<cal-S\>>f
          d\<mu\>+<big|int><rsup|\<cal-S\>>g d\<mu\>>>>>
        </eqnarray*>

        <item>Assume that <math|\<forall\>x\<in\>X> we have that
        <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>. Define
        <math|I=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|C<rsub|i>\<neq\>\<emptyset\>|}>>
        then <math|\<forall\>i\<in\>I> there exists a <math|x\<in\>C<rsub|i>>
        so that

        <\equation>
          <label|eq 18.385.035>f<rsub|i>\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>f<around*|(|x|)>\<leqslant\>g*<around*|(|x|)>\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>g<rsub|i>.
        </equation>

        Next

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><rsup|\<cal-S\>>f
          d\<mu\>>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\I>f<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>+<big|sum><rsub|i\<in\>I>f<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|0+<big|sum><rsub|i\<in\>I>f<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|\<leqslant\><rsub|<text|<reference|eq
          18.385.035>>>>|<cell|<big|sum><rsub|i\<in\>I>g<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>g<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>+0>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\I>g<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>+<big|sum><rsub|i\<in\>I>g<rsub|i>\<cdot\>\<mu\><around*|(|C<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsup|\<cal-S\>>g
          d\<mu\>>>>>
        </eqnarray*>

        <item>Take <math|<around*|{|max<around*|(|f<rsub|i>,g<rsub|i>|)>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><around*|[|0,\<infty\>|[>>
        then using <reference|simple function condition (2)> we have that\ 

        <\equation>
          <label|eq 18.386.035.4><big|sum><rsub|i=1><rsup|n>min<around*|(|f<rsub|i>,g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
        </equation>

        Let <math|x\<in\>X> then there exists a
        <math|i\<in\><around*|{|1,\<ldots\>,n|}>> such that
        <math|x\<in\>C<rsub|i>> so that\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<around*|(|f\<wedge\>g|)><around*|(|x|)>>|<cell|=>|<cell|min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>>|<cell|min<around*|(|f<rsub|i>,g<rsub|i>|)><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
          function condition (2)>>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n>min<around*|(|f<rsub|i>,g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>|)><around*|(|x|)>>>>>
        </eqnarray*>

        proving that <math|f\<wedge\>g=<big|sum><rsub|i=1><rsup|n>min<around*|(|f<rsub|i>,g<rsub|i>|)>\<cdot\>\<cal-X\><rsub|C<rsub|i>>>
        which by <reference|eq 18.386.035.4> proves that\ 

        <\equation*>
          f\<wedge\>g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
        </equation*>

        Further as <math|\<forall\>x\<in\>X> we have that
        <math|min<around*|(|f<around*|(|x|)>,g<around*|(|x|)>|)>\<leqslant\>f<around*|(|x|)>,g<around*|(|x|)>>
        we have by (b) that\ 

        <\equation*>
          <big|int><rsup|\<cal-S\>><around*|(|f\<wedge\>g|)>
          d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f d\<mu\><text| and
          ><big|int><rsup|\<cal-S\>><around*|(|f\<wedge\>g|)>
          d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>g d\<mu\>
        </equation*>
      </enumerate>

      <item>As <math|f=0> <math|\<mu\>>-a.e. we have

      <\equation*>
        \<exists\>N\<in\>\<cal-A\><text| with >\<mu\><around*|(|N|)>=0<text|
        such that ><around*|{|x\<in\>X\|0\<neq\>f<around*|(|x|)>|}>\<subseteq\>N
      </equation*>

      As <math|f\<in\>\<cal-S\><rsup|+><around*|(|X,\<cal-A\>|)>> there
      exists by <reference|set of simple functions> a
      <math|n\<in\>\<bbb-N\><rsub|0>>, a pairwise disjoint family
      <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-A\>>
      and a <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><around*|[|0,\<infty\>|[>>
      such that <math|f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>.
      Let <math|i\<in\><around*|{|1,\<ldots\>,n|}>> then we have for
      <math|a<rsub|i>> either:

      <\description>
        <item*|<math|a<rsub|i>=0>>Then <math|a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0>

        <item*|<math|0\<less\>a<rsub|i>>>Then if <math|x\<in\>A<rsub|i>> we
        have <math|f<around*|(|x|)>\<equallim\><rsub|<text|<reference|simple
        function condition (2)>>>a<rsub|i>\<gtr\>0> so that
        <math|x\<in\><around*|{|x\<in\>X\|0\<neq\>f<around*|(|x|)>|}>\<subseteq\>N>
        proving that <math|A<rsub|i>\<subseteq\>N> hence
        <math|\<mu\><around*|(|A<rsub|i>|)>\<leqslant\>\<mu\><around*|(|N|)>=0>
        proving that <math|a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0>
      </description>

      So <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have that
      <math|a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0> proving that\ 

      <\equation*>
        <big|int><rsup|\<cal-S\>>f d\<mu\>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0
      </equation*>
    </enumerate>
  </proof>

  <\corollary>
    <label|maximum of non negative real valued simple functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> a measure
    space, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    then\ 

    <\equation*>
      max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation*>
  </corollary>

  <\proof>
    We proof this by induction so let

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
      ><around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text|
      then >max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>|}>
    </equation*>

    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>If <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      then <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>=f<rsub|1>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n+1|}>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      then as <math|n\<in\>\<cal-S\>> we have
      <math|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<in\>\<cal-S\>>
      so that

      <\equation*>
        max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>\<equallim\><rsub|<text|<reference|maximum
        of finite set of functions>>>max<around*|(|max<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>,f<rsub|n+1>|)>\<in\>\<cal-S\><rsup|<rsub|>><around*|[|X,\<cal-A\>|]>
      </equation*>

      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  <\proposition>
    <label|simple function integral properties (4)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    such that <math|\<forall\>x\<in\>X>\ 

    <\equation*>
      \<forall\>i\<in\>\<bbb-N\><rsub|0><text|
      >f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i+1><around*|(|x|)>
    </equation*>

    <\equation*>
      f<around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>
    </equation*>

    then\ 

    <\equation*>
      <big|int><rsup|\<cal-S\>>f \ d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|i
      > d\<mu\>
    </equation*>
  </proposition>

  <\proof>
    Let <math|x\<in\>X> then <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>> we
    have <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|i<rsub|+1>><around*|(|x|)>>
    so that by the previous proposition <reference|simple functions integral
    properties (1)> it follows that <math|<big|int><rsup|\<cal-S\>>f<rsub|i>d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f<rsub|i+1>d\<mu\>>.
    Hence

    <\equation>
      <label|eq 18.386.035>\<forall\>x\<in\>X
      <around*|{|f<rsub|i><around*|(|x|)>|}><rsub|i\<in\>\<bbb-N\><rsub|n>>
      and <around*|{|<big|int><rsup|\<cal-S\>>f<rsub|i>
      d\<mu\>|}><rsub|i\<in\>\<bbb-N\><rsub|0>><text| are increasing
      sequences>
    </equation>

    Applying then <reference|equivalence of limits on increasing (decreasing)
    sequences of extented reals> on the above we have that\ 

    <\equation>
      <label|eq 18.67.035><below|<below|lim|i\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|i>
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|i>
      d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<geqslant\>0|>
    </equation>

    and

    <\equation>
      <label|eq 18.388.035>\<forall\>x\<in\>X<text| we have
      >f<around*|(|x|)>=<below|lim|i\<rightarrow\>\<infty\>>f<rsub|i><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    From the above we have given <math|x\<in\>X> that
    \ <math|\<forall\>i\<in\>\<bbb-N\><rsub|0>>
    \ <math|f<rsub|i><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>, so using
    <reference|simple functions integral properties (1)> it follows that
    <math|<big|int><rsup|\<cal-S\>>f<rsub|i>
    d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f d\<mu\>>, hence
    <math|sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|i>
    d\<mu\>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|int><rsup|\<cal-S\>>f
    d\<mu\>>. Combining this with <reference|eq 18.67.035> gives\ 

    <\equation>
      <label|eq 18.389.035>0\<leqslant\><below|lim|i\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|i>
      d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f d\<mu\>
    </equation>

    For the oppositve inequality, let <math|\<varepsilon\>\<in\>\<bbb-R\>> be
    such that <math|0\<less\>\<varepsilon\>\<less\>1> so that
    <math|0\<less\>1-\<varepsilon\>>. As <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    there exists by <reference|set of simple functions> a
    <math|n\<in\>\<bbb-N\><rsub|0>,> a pairwise disjoint family of measurable
    sets <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    and a family of non negative real numbers
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>
    so that <math|f=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>.
    Then we have two cases to consider for
    <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>>:

    <\description>
      <item*|<math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>
      a<rsub|i>=0>>then <math|<big|int><rsup|\<cal-S\>>f
      d\<mu\>=<big|sum><rsub|i=1><rsup|n>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>=0>
      so that using <reference|eq 18.389.035> we have
      <math|><math|<below|lim|i\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|i>
      d\<mu\>=0> giving

      <\equation*>
        <below|lim|i\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|i>
        d\<mu\>=<big|int><rsup|\<cal-S\>>f d\<mu\>=0
      </equation*>

      <item*|<math|\<exists\>i\<in\><around*|{|1,\<ldots\>,n|}> <text|with
      >a<rsub|i>\<neq\>0>>then <math|I=<around*|{|i\<in\><around*|{|1,\<ldots\>,n|}>\|a<rsub|i>\<neq\>0|}>\<neq\>\<emptyset\>>
      and as it is finite we have a <math|m\<in\>\<bbb-N\><rsub|0>> and a
      bijection <math|\<beta\>:<around*|{|1,\<ldots\>,m|}>\<rightarrow\>I>.
      Let <math|x\<in\>X> then\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>\\I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>+<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i\<in\>I>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|generalized
        sums and bijections>>>>|<cell|<big|sum><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>a<rsub|\<beta\><around*|(|i|)>>\<cdot\>\<cal-X\><rsub|A<rsub|\<beta\><around*|(|i|)>>><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|m>a<rsub|\<beta\><around*|(|i|)>>\<cdot\>\<cal-X\><rsub|A<rsub|\<beta\><around*|(|i|)>>><around*|(|x|)>>>>>
      </eqnarray*>

      proving if we define <math|b<rsub|i>=a<rsub|\<beta\><around*|(|i|)>>>
      and <math|B<rsub|i>=A<rsub|\<beta\><around*|(|i|)>>> that

      <\equation>
        <label|eq 18.390.035>f=<big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i>><text|
        and >\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
        >b<rsub|i>\<gtr\>0
      </equation>

      Take <math|\<varepsilon\>\<in\>\<bbb-R\>> such that
      <math|0\<less\>\<varepsilon\>\<less\>1> so that
      <math|0\<less\>1-\<varepsilon\>>. Let
      <math|i\<in\><around*|{|1,\<ldots\>,m|}>> and define
      <math|<around*|{|B<rsub|i,j>|}><rsub|j\<in\>\<bbb-N\><rsub|0>><text| by
      >>

      <\equation>
        <label|eq 18.391.035>B<rsub|i,j>=<around*|{|x\<in\>B<rsub|i>\|f<rsub|j><around*|(|x|)>\<geqslant\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>|}>=B<rsub|i><big|cap><around*|{|f<rsub|j>\<geqslant\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>|}>\<in\>\<cal-A\>
        <text|[by <reference|measurable function condition (2)>]>
      </equation>

      Next if <math|x\<in\>B<rsub|i>> then
      <math|sup<around*|(|<around*|{|f<rsub|j><around*|(|x|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|eq
      18.388.035>>>f<around*|(|x|)>\<equallim\><rsub|<text|<reference|simple
      function condition (2)>,<reference|eq
      18.390.035>>>b<rsub|i>\<gtr\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>>
      [as <math|0\<less\>b<rsub|i>\<wedge\>0\<less\>1-\<varepsilon\>\<less\>1>],
      hence using the definition of a supremum there exists a
      <math|k\<in\>\<bbb-N\><rsub|0>> such that
      <math|f<rsub|k><around*|(|x|)>\<gtr\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>>
      or <math|x\<in\>B<rsub|i,k>\<Rightarrow\>B<rsub|i>\<subseteq\><big|sqcup><rsub|k\<in\>\<bbb-N\><rsub|0>>B<rsub|i,k>>.
      This together with the fact that <math|B<rsub|i,k>\<subseteq\>B<rsub|i>>
      gives\ 

      <\equation>
        <label|eq 18.392.035>\<forall\>i\<in\><around*|{|1,\<ldots\>,m|}><text|
        we have that >B<rsub|i>=<big|sqcup><rsub|k\<in\>\<bbb-N\><rsub|0>>B<rsub|i,k>
      </equation>

      Let <math|i\<in\><around*|{|1,\<ldots\>,m|}>> and
      <math|k\<in\>\<bbb-N\><rsub|0>> then if <math|x\<in\>B<rsub|i,k>> we
      have that

      <\equation*>
        f<rsub|k><around*|(|x|)>\<geqslant\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<Rightarrowlim\><rsub|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>
        is increasing>f<rsub|k+1><around*|(|x|)>\<geqslant\><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>
      </equation*>

      proving that <math|x\<in\>B<rsub|i,k+1>>, hence

      <\equation>
        <label|eq 18.393.035>\<forall\>k\<in\>\<bbb-N\><rsub|0><text|
        >B<rsub|i,k>\<subseteq\>B<rsub|i,k+1>
      </equation>

      The conclusion <reference|eq 18.393.035> allows us to use
      <reference|measure properties (2)> (1) giving

      <\equation>
        <label|eq 18.394.035>\<mu\><around*|(|B<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
        18.392.035>>>\<mu\><around*|(|<big|sqcup><rsub|k\<in\>\<bbb-N\><rsub|0>>B<rsub|i,k>|)>\<equallim\><rsub|<text|<reference|measure
        properties (2)>>><below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|i,k>|)>=sup<around*|(|<around*|{|\<mu\><around*|(|B<rsub|i,k>|)>\|k\<in\>\<bbb-N\><rsub|0>|}>|)>
      </equation>

      Given <math|k\<in\>\<bbb-N\><rsub|0>> define <math|g<rsub|k>> by\ 

      <\equation>
        <label|eq 18.395.035>g<rsub|k>=<big|sum><rsub|i=1><rsup|m><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<cdot\>\<cal-X\><rsub|B<rsub|i,k>>
      </equation>

      Using <reference|simple function condition (2)> together with the fact
      that <math|B<rsub|i,k>\<in\>\<cal-A\>> [see <reference|eq 18.391.035>]
      proves \ 

      <\equation>
        <label|eq 18.396.035><around*|{|g<rsub|k>|}><rsub|k\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      </equation>

      Further if <math|x\<in\>X> and <math|k\<in\>\<bbb-N\><rsub|0>> then
      either:

      <\description>
        <item*|<math|x\<in\><big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i,k>>>Then
        there exists a <math|i\<in\><around*|{|1,\<ldots\>,m|}>> such that
        <math|x\<in\>B<rsub|i,k>> so that
        <math|<around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<less\>f<rsub|k><around*|(|x|)>>,
        which as <math|g<rsub|k><around*|(|x|)>\<equallim\><rsub|<text|<reference|eq
        18.395.035>.<reference|simple function condition
        (2)>>><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>> proves\ 

        <\equation*>
          g<rsub|k><around*|(|x|)>\<less\>f<rsub|k><around*|(|x|)>
        </equation*>

        Further as <math|B<rsub|i,k>\<subseteq\>B<rsub|i,k+1>> we have
        <math|x\<in\>B<rsub|i,k+1>\<Rightarrowlim\><rsub|<text|<reference|eq
        18.395.035>.<reference|simple function condition
        (2)>>>g<rsub|k+1><around*|(|x|)>=<around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>=g<rsub|k><around*|(|x|)>>
        hence\ 

        <\equation*>
          g<rsub|k><around*|(|x|)>\<leqslant\>g<rsub|k+1><around*|(|x|)>
        </equation*>

        <item*|<math|x\<in\>X\\<around*|(|<big|cup><rsub|i\<in\><around*|{|1,\<ldots\>,m|}>>B<rsub|i,k>|)>>>then

        <\equation*>
          g<rsub|k><around*|(|x|)>\<equallim\><rsub|<text|<reference|eq
          18.395.035>.<reference|simple function condition
          (2)>>>0\<leqslant\>f<rsub|k><around*|(|x|)>
        </equation*>

        and

        <\equation*>
          g<rsub|k><around*|(|x|)>=0\<leqslant\>g<rsub|k+1><around*|(|x|)>
        </equation*>
      </description>

      \ So we have

      <\equation>
        <label|eq 18.397.035>\<forall\>x\<in\>X,\<forall\>k\<in\>\<bbb-N\><rsub|0><text|
        >g<rsub|k><around*|(|x|)>\<leqslant\>f<rsub|k><around*|(|x|)><text|
        and >g<rsub|k><around*|(|x|)>\<leqslant\>g<rsub|k+1><around*|(|x|)>
      </equation>

      Using the above we have by <reference|equivalence of limits on
      increasing (decreasing) sequences of extented reals> that
      <math|<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>g<rsub|<rsub|k>>
      d\<mu\>> exists. Let's calculate this limit

      <\eqnarray*>
        <tformat|<table|<row|<cell|<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>g<rsub|<rsub|k>>
        d\<mu\>>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim|k\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|m><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|k,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|limit
        of finite sums in the extented reals>>>>|<cell|<big|sum><rsub|i=1><rsup|m><below|lim|k\<rightarrow\>\<infty\>><around*|(|<around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|k,i>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<cdot\><below|lim|k\<rightarrow\>\<infty\>>\<mu\><around*|(|B<rsub|k,i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.394.035>>>>|<cell|<big|sum><rsub|i=1><rsup|m><around*|(|1-\<varepsilon\>|)>\<cdot\>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|1-\<varepsilon\>|)>\<cdot\><big|sum><rsub|i=1><rsup|m>b<rsub|i>\<cdot\>\<mu\><around*|(|B<rsub|i>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.390.035>>>>|<cell|<around*|(|1-\<varepsilon\>|)>\<cdot\><big|int><rsup|\<cal-S\>>f
        d\<mu\><eq-number><label|eq 18.398.035>>>>>
      </eqnarray*>

      By <reference|eq 18.397.035> we have using <reference|simple functions
      integral properties (1)> that <math|<big|int><rsup|\<cal-S\>>g<rsub|k>
      d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f<rsub|k>d\<mu\>>, applying
      then <reference|properties of the limit in the extented reals> gives
      <math|<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>g<rsub|k>
      d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
      d\<mu\>>, combining this with the above [see <reference|eq 18.398.035>]
      gives\ 

      <\equation>
        <label|eq 18.399.035.10><around*|(|1-\<varepsilon\>|)>\<cdot\><big|int><rsup|\<cal-S\>>f
        d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
        d\<mu\>
      </equation>

      For <math|<big|int><rsup|S>f d\<mu\>> we must now consider the
      following cases:\ 

      <\description>
        <item*|<math|<big|int><rsup|S>f d\<mu\>=\<infty\>>>then as
        <math|0\<less\>1-\<varepsilon\>> we have that
        <math|><math|<around*|(|1-\<varepsilon\>|)>\<cdot\><big|int><rsup|\<cal-S\>>f
        d\<mu\>=\<infty\>> so that by <reference|eq 18.399.035.10> we have
        that <math|<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|S>f<rsub|k>d\<mu\>=\<infty\>>
        proving that\ 

        <\equation*>
          <big|int><rsup|\<cal-S\>>f d\<mu\>=<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
          d\<mu\>\<Rightarrow\><big|int><rsup|\<cal-S\>>f
          d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
          d\<mu\>
        </equation*>

        <item*|<math|<big|int><rsup|S>f d\<mu\>\<less\>\<infty\>>>then by
        <reference|eq 18.389.035> we have that
        <math|<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
        d\<mu\>\<less\>\<infty\>>. So using <reference|eq 18.399.035>
        \ <math|<big|int><rsup|S>f d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|S>f<rsub|k>
        d\<mu\>+\<varepsilon\>\<cdot\><big|int><rsup|S>f d\<mu\>> which as
        <math|0\<less\>\<varepsilon\>\<less\>1> is choosen arbitrary provers
        by \ <reference|consequence of the Archimedean property (2)> that\ 

        <\equation*>
          <big|int><rsup|\<cal-S\>>f d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
          d\<mu\>
        </equation*>
      </description>

      So in all case we have <math|<big|int><rsup|\<cal-S\>>f
      d\<mu\>\<leqslant\><below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
      d\<mu\>>, the opposite inequality of <reference|eq 18.389.035>. Hence\ 

      <\equation*>
        <big|int><rsup|\<cal-S\>>f d\<mu\>=<below|lim|k\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|k>
        d\<mu\>
      </equation*>
    </description>

    \;
  </proof>

  <subsection|Integral of non negative functions>

  We extend now the integral on non negative simple function to non negative
  measurable functions.

  <\definition>
    <label|measurable positive functions><index|<math|\<cal-M\><rsup|+><around*|[|X,A|]>>><index|<math|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then we define <math|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>>
    and <math|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    as follows:

    <\equation*>
      \<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>=<around*|{|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\|f<around*|(|x|)>\<subseteq\><around*|[|0,\<infty\>|[>|}>\<subseteq\>\<cal-M\><around*|[|X,\<cal-A\>|]>
      <text|[see <reference|measurable function space>]>
    </equation*>

    <\equation*>
      <wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>=<around*|{|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>\|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>|}>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>
      <text|[see <reference|measurable extended function space>]>
    </equation*>
  </definition>

  <\note>
    Using <reference|real (extended real) measurability> we have
    <math|\<cal-M\><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    proving that <math|><math|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
  </note>

  <\definition>
    <label|integral of positive measurable
    functions><index|<math|<big|int><rsup|+>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and \ <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    [in other words <math|f> is a non negative <math|\<cal-A\>>-measurable
    function]. Then <math|<big|int><rsup|+>:<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>\<rightarrow\><around*|[|0,\<infty\>|]>
    > is defiined by <math|f\<rightarrow\><big|int><rsup|+>f d\<mu\>> where

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+>f
      d\<mu\>>|<cell|=>|<cell|sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>g
      d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>>>>>
    </eqnarray*>
  </definition>

  If <math|A\<in\>\<cal-A\>> then we defined <math|<big|int><rsub|A><rsup|+>f
  d\<mu\>> by\ 

  <\equation*>
    <big|int><rsup|+><rsub|A>f d\<mu\>=<big|int><rsup|+><around*|(|f\<cdot\>\<cal-X\><rsub|A>|)>d\<mu\>
  </equation*>

  <\proof>
    Of course we must prove that <math|<around*|{|<big|int><rsup|\<cal-S\>>g
    d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
    >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>>
    is not empty to make this definition valid. Using <reference|constant
    simple function> we have that <math|C<rsub|0>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    and <math|C<rsub|0><around*|(|x|)>=0\<leqslant\>f<around*|(|x|)>> proving
    that <math|<around*|{|<big|int><rsup|\<cal-S\>>g
    d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
    >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>\<neq\>\<emptyset\>>
  </proof>

  <\note>
    Note that in the definition of <math|<big|int><rsup|+>> we don't use the
    fact that <math|f> must be <math|\<cal-A\>>-measurable. Actual the
    definition works for every non negative function. However the requirement
    that <math|f> is <math|\<cal-A\>>-measurable gives us nice limit
    properties to the integral.
  </note>

  We show now that <math|<big|int><rsup|+>> is indeed a extension of
  <math|<big|int><rsup|\<cal-S\>>>

  <\proposition>
    <label|simple function integral extension>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measurable
    space and <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> then\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<big|int><rsup|\<cal-S\>>f d\<mu\>
    </equation*>
  </proposition>

  <\proof>
    As <math|f\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> and
    <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
    we have that <math|<big|int><rsup|\<cal-S\>>f
    d\<mu\>\<in\><around*|{|<big|int><rsup|\<cal-S\>>g
    \ d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
    >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>>
    so that

    <\equation*>
      <big|int><rsup|\<cal-S\>>f d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>g
      d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>=<big|int><rsup|+>f
      d\<mu\>
    </equation*>

    For the opposite inequality, if <math|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    with <math|\<forall\>x\<in\>X> <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
    then by <reference|simple functions integral properties (1)> we have that
    <math|<big|int><rsup|\<cal-S\>>g d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f
    d\<mu\>> so that

    <\equation*>
      <big|int><rsup|+>f d\<mu\>\<equallim\><rsub|def>sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>g
      d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>\<leqslant\><big|int><rsup|+>f
      d\<mu\>.
    </equation*>

    Combining the two above inequalities proves\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<big|int><rsup|\<cal-S\>>f d\<mu\>
    </equation*>
  </proof>

  <\example>
    <label|integral of the null function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then for <math|C<rsub|0>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    defined by <math|C<rsub|0><around*|(|x|)>=0> we have that
    <math|<big|int><rsup|+>C<rsub|0> d\<mu\>>=0
  </example>

  <\proof>
    Let <math|x\<in\>X> then take <math|<around*|{|A<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
    and <math|<around*|{|a<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>>
    defined by <math|A<rsub|1>=X> and <math|a<rsub|1>=0> then
    <math|<around*|(|<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>|)><around*|(|x|)>=a<rsub|1>\<cdot\>\<cal-X\><rsub|A<rsub|1>><around*|(|x|)>=0\<cdot\>1=0=C<rsub|0><around*|(|x|)>>
    proving that

    <\equation*>
      C<rsub|0>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation*>

    Hence\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+>C<rsub|0>
      d\<mu\>>|<cell|\<equallim\><rsub|<text|<reference|simple function
      integral extension>>>>|<cell|<big|int><rsup|S>C<rsub|0>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<mu\><around*|(|A<rsub|i>|)>>>|<row|<cell|>|<cell|=>|<cell|a<rsub|1>\<cdot\>\<mu\><around*|(|A<rsub|1>|)>>>|<row|<cell|>|<cell|=>|<cell|0\<cdot\>\<mu\><around*|(|X|)>>>|<row|<cell|>|<cell|=>|<cell|0>>>>
    </eqnarray*>
  </proof>

  <\example>
    <label|integral of everywhere zero function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measiure
    space and <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that <math|f=0> <math|\<mu\>>-a.e. then <math|<big|int>f d\<mu\>=0>
  </example>

  <\proof>
    As <math|f=0> <math|\<mu\>>-a.e. there exists a <math|N\<in\>\<cal-A\>>
    with <math|\<mu\><around*|(|N|)>=0> such that
    <math|<around*|{|x\<in\>X\|0\<less\>f<around*|(|x|)>|}>\<subseteq\>N>.
    Let now <math|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>> be such
    that <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>> then if
    <math|x\<in\><around*|{|x\<in\>X\|0\<less\>g<around*|(|x|)>|}>> we have
    <math|0\<less\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>> so that
    <math|x\<in\><around*|{|x\<in\>X\|0\<less\>f<around*|(|x|)>|}>\<subseteq\>N>.
    Hence we have that <math|<around*|{|x\<in\>X\|0\<less\>g<around*|(|x|)>|}>\<subseteq\>N>
    proving that <math|g=0> <math|\<mu\>>-a.e.. Applying then
    <reference|simple functions integral properties (1)> proves that
    <math|<big|int><rsup|+>g d\<mu\>=0>. So

    <\equation*>
      <around*|{|<big|int>g d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text|
      with >\<forall\>x\<in\>X g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>=<around*|{|0|}>
    </equation*>

    which finally gives\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=sup<around*|(|<big|int>g
      d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| with
      >\<forall\>x\<in\>X g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|)>=0
    </equation*>
  </proof>

  Next we show that <math|<big|int><rsup|+>>has the same properties as
  <math|<big|int><rsup|S>>

  <\theorem>
    <label|integral of positive functions properties (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and let <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    [a non negative <math|\<cal-A\>>-measurable function] and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    such that <math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    and <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
    <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>> so
    then <math|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|S>f<rsub|n>
    d\<mu\>> exists and

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|S>f<rsub|n>
      d\<mu\>\<equallim\><rsub|<text|<reference|simple function integral
      extension>>><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>
    </equation*>
  </theorem>

  <\proof>
    As <math|\<forall\>x\<in\>X> we have that
    <math|\<forall\>n\<in\>f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>
    it follows from <reference|equivalence of limits on increasing
    (decreasing) sequences of extented reals> that
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    exists and\ 

    <\equation>
      <label|eq 18.399.035>\<forall\>x\<in\>X <text|we have
      >sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>
    </equation>

    Using <reference|simple functions integral properties (1)> it follows
    that <math|<big|int><rsup|\<cal-S\>>f<rsub|n>
    d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f<rsub|n+1>d\<mu\>>, so that
    by <reference|equivalence of limits on increasing (decreasing) sequences
    of extented reals> we have that <math|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
    d\<mu\>> exists and

    <\equation>
      <label|eq 18.400.035><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    From <reference|eq 18.399.035> it follows that <math|\<forall\>x\<in\>X>
    we have <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> so that

    <\equation*>
      <big|int><rsup|\<cal-S\>>f<rsub|n> d\<mu\>\<leqslant\>sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>g
      \ d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>\<equallim\><rsub|<text|def>><big|int><rsup|+>f
      d\<mu\>
    </equation*>

    proving that <math|sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
    d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|int><rsup|+>f
    d\<mu\>>. Combining this with <reference|eq 18.400.035> proves\ 

    <\equation>
      <label|eq 18.401.035><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\<leqslant\><big|int><rsup|+>f d\<mu\>
    </equation>

    For the opposite inclusion let <math|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    be such that <math|\<forall\>x\<in\>X>
    <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>>. Then using
    <reference|simple functions integral properties (1)> we have that\ 

    <\equation>
      <label|eq 18.403.35><around*|{|g\<wedge\>f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text|
      and >\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      ><big|int><rsup|\<cal-S\>><around*|(|g\<wedge\>f<rsub|n>|)>
      d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f<rsub|n> d\<mu\>
    </equation>

    Let <math|x\<in\>X> then given <math|n\<in\>\<bbb-N\><rsub|0>> we have

    <\equation>
      <label|eq 18.404.035><around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=min<around*|(|g<around*|(|x|)>,f<rsub|n><around*|(|x|)>|)>\<leqslant\>min<around*|(|g<around*|(|x|)>,f<rsub|n+1><around*|(|x|)>|)>=<around*|(|g\<wedge\>f<rsub|n+1>|)><around*|(|x|)>
    </equation>

    so using <reference|equivalence of limits on increasing (decreasing)
    sequences of extented reals> it follows that
    <math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>>
    exists and

    <\equation>
      <label|eq 18.405.35><below|lim|n\<rightarrow\>\<infty\>><around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation>

    As <math|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=min<around*|(|g<around*|(|x|)>,f<rsub|n>*x|)>\<leqslant\>g<around*|(|x|)>>
    we have that\ 

    <\equation>
      <label|eq 18.406.035>sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>g<around*|(|x|)>
    </equation>

    As <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>> we have for
    <math|g<around*|(|x|)>> either\ 

    <\description>
      <item*|<math|g<around*|(|x|)>=f<around*|(|x|)>>>then
      <math|g<around*|(|x|)>=f<around*|(|x|)>\<equallim\><rsub|<text|<reference|eq
      18.399.035>>>sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
      so that <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> we have
      <math|f<rsub|n><around*|(|x|)>\<leqslant\>g<around*|(|x|)>>, or
      <math|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=min<around*|(|g<around*|(|x|)>,f<rsub|n><around*|(|x|)>|)>=f<rsub|n><around*|(|x|)>>
      proving that\ 

      <\equation*>
        sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\<of\>n\<in\>\<bbb-N\><rsub|0>|}>|)>\<equallim\><rsub|<text|<reference|eq
        18.399.035>>>f<around*|(|x|)>=g<around*|(|x|)>
      </equation*>

      <item*|<math|g<around*|(|x|)>\<less\>f<around*|(|x|)>>>then
      <math|\<exists\>n\<in\>\<bbb-N\><rsub|0>> such that
      <math|g<around*|(|x|)>\<less\>f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>,
      hence <math|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=min<around*|(|f<around*|(|x|)>,f<rsub|n><around*|(|x|)>|)>=g<around*|(|x|)>>
      so that <math|g<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
      which by <reference|eq 18.406.035> proves that\ 

      <\equation*>
        sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=g<around*|(|x|)>
      </equation*>
    </description>

    So in all cases we have <math|sup<around*|(|<around*|{|<around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=g<around*|(|x|)>>
    which by <reference|eq 18.405.35> proves that\ 

    <\equation>
      <label|eq 18.407.035><text|><below|lim|n\<rightarrow\>\<infty\>><around*|(|g\<wedge\>f<rsub|n>|)><around*|(|x|)>=g<around*|(|x|)>
    </equation>

    Using <reference|eq 18.403.35>,<reference|eq 18.404.035> and
    <reference|eq 18.407.035> we have by <reference|simple function integral
    properties (4)> that

    <\equation>
      <label|eq 18.408.035><big|int><rsup|\<cal-S\>>g<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>><around*|(|g\<wedge\>f<rsub|n>|)>
      d\<mu\>
    </equation>

    Note that by <reference|eq 18.403.35>
    <math|<big|int><rsup|\<cal-S\>><around*|(|g\<wedge\>f<rsub|n>|)>
    d\<mu\>\<leqslant\><big|int><rsup|\<cal-S\>>f<rsub|n> d\<mu\>>, so that
    using the properties of the limit [see <reference|properties of the limit
    in the extented reals> we have that <math|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>><around*|(|g\<exterior\>f<rsub|n>|)>
    d\<mu\>\<leqslant\><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
    d\<mu\>>. Combining this with <reference|eq 18.408.035> gives
    <math|<big|int><rsup|\<cal-S\>>g d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>><around*|(|g\<exterior\>f<rsub|n>|)>
    d\<mu\>\<leqslant\><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
    d\<mu\>>. So

    <\equation*>
      <big|int><rsup|+>f d\<mu\>\<equallim\><rsub|def>sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>g
      d\<mu\>\|g\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| with
      >\<forall\>x\<in\>X\<vDash\>g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>\<leqslant\><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>
    </equation*>

    which combined with <reference|eq 18.401.035> proves finally\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.400.035>>>sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation*>

    \;
  </proof>

  In the following corollary we make use of the requirement of measurability
  to give a alternative definition of <math|<big|int><rsup|+>>.

  <\corollary>
    <label|integral of positive functions (1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>> such that
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>> then
    there exists a sequence <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>,
    with <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>> and
    <math|\<forall\>x\<in\>X> <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>,
    such that\ 

    <\equation*>
      \<forall\>x\<in\>X<text| we have >f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>
    </equation*>

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation*>
  </corollary>

  <\proof>
    As <math|f> is <math|\<cal-A\>>-measurable and non negative we can use
    <reference|measurable functions properties (6)> to find a sequence
    <math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    such that <math|\<forall\>x\<in\>X> we have
    <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>> and

    <\equation*>
      f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>.
    </equation*>

    Using then the previous theorem [see <reference|integral of positive
    functions properties (1)>] we have that\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>
    </equation*>

    \;
  </proof>

  The above corollary let's us to easely transfer the properties of the
  integral of simple functions to properties of the integral of non negative
  measurable functions. <reference|simple functions integral properties (1)>

  <\proposition>
    <label|integral of positive function properties (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f,g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then we have\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\><around*|[|0,\<infty\>|[>> we have
      <math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      and <math|<big|int><rsup|+>\<alpha\>\<cdot\>f
      d\<mu\>=\<alpha\>\<cdot\><big|int><rsup|+>f d\<mu\>>

      <item><math|f+g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      and <math|<big|int><rsup|+><around*|(|f+g |)>d\<mu\>=<big|int><rsup|+>f
      d\<mu\>+<big|int><rsup|+>g d\<mu\>>

      <item>If <math|\<forall\>x\<in\>X> we have
      <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>> then
      <math|<big|int><rsup|+>f d\<mu\>\<leqslant\><big|int><rsup|+>g d\<mu\>>
    </enumerate>
  </proposition>

  <\proof>
    First using the previous corollary [see <reference|integral of positive
    functions (1)> there exists <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>,<around*|{|g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    of increasing simple functions so that

    <\equation>
      <label|eq 18.409.035>f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><text|,
      >g=<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><text|,
      ><big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
      d\<mu\><text| and ><big|int><rsup|+>g
      d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>g<rsub|n>
      d\<mu\>
    </equation>

    then we have:

    <\enumerate>
      <item>Using <reference|measurable functions properties (3)> and the
      fact that <math|0\<leqslant\>\<alpha\>> it follows that
      <math|\<alpha\>\<cdot\>f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>.
      Further using <reference|simple functions integral properties (1)> and
      the fact that <math|0\<leqslant\>\<alpha\>> we have that

      <\equation*>
        <around*|{|\<alpha\>\<cdot\>f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      </equation*>

      Given <math|x\<in\>X> we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>

      <\equation*>
        \<alpha\>\<cdot\>f<rsub|n><around*|(|x|)>\<leqslant\>\<alpha\>\<cdot\>f<rsub|n+1><around*|(|x|)>
      </equation*>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<alpha\>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|\<alpha\>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>f<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\>f<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      Hence using <reference|integral of positive functions properties (1)>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)>
        d\<mu\>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>><around*|(|\<alpha\>\<cdot\>f<rsub|n>|)>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
        functions integral properties (1)>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<alpha\>\<cdot\><big|int><rsup|\<cal-S\>>f<rsub|n>
        d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|\<alpha\>\<cdot\><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|\<cal-S\>>f<rsub|n>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.409.035>>>>|<cell|\<alpha\>\<cdot\><big|int><rsup|\<cal-S\>>f
        d\<mu\>>>>>
      </eqnarray*>

      <item>Using \ <reference|measurable functions properties (3)> we have
      that <math|f+g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>.
      Further using <reference|simple functions integral properties (1)> we
      have that

      <\equation*>
        <around*|{|f<rsub|i>+g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      </equation*>

      Given <math|x\<in\>X> we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f<rsub|n>+g<rsub|n>|)><around*|(|x|)>>|<cell|=>|<cell|f<rsub|n><around*|(|x|)>+g<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|f<rsub|n+1><around*|(|x|)>+g<rsub|n+1><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<rsub|n+1>+g<rsub|n+1>|)><around*|(|x|)>>>>>
      </eqnarray*>

      Further

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f+g|)><around*|(|x|)>>|<cell|=>|<cell|f<around*|(|x|)>+g<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>+<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|f<rsub|n>+g<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      Hence using <reference|integral of positive functions properties (1)>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|f+g|)>
        d\<mu\>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|f<rsub|n>+g<rsub|n>|)>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
        functions integral properties (1)>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|int><rsup|+>f<rsub|n>
        d\<mu\>+<big|int><rsup|+>g<rsub|n>
        d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|properties
        of the limit in the extented reals>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
        d\<mu\>+<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>g<rsub|n>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
        18.409.035>>>>|<cell|<big|int><rsup|+>f d\<mu\>+<big|int><rsup|+>g
        d\<mu\>>>>>
      </eqnarray*>

      <item>Assume that <math|\<forall\>x\<in\>X>
      <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>. Let
      <math|s\<in\><around*|{|<big|int><rsup|\<cal-S\>>h
      d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>>
      then there exists a <math|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
      with <math|\<forall\>x\<in\>X> <math|h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>
      such that <math|s=<big|int><rsup|\<cal-S\>>h d\<mu\>>, which proves
      that <math|s\<in\><around*|{|<big|int><rsup|\<cal-S\>>h
      d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
      >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>
      or\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|<big|int><rsup|\<cal-S\>>h
        d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
        >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>>|<cell|\<subseteq\>>|<cell|>>|<row|<cell|<around*|{|<big|int><rsup|\<cal-S\>>h
        d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
        >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>>|<cell|>|<cell|>>>>
      </eqnarray*>

      hence using <reference|inclusion and sup and inf>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsup|+>f
        d\<mu\>>|<cell|=>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>h
        d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
        >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>f<around*|(|x|)>|}>|)>>|<cell|\<leqslant\>>|<cell|>>|<row|<cell|sup<around*|(|<around*|{|<big|int><rsup|\<cal-S\>>h
        d\<mu\>\|h\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text| and
        >\<forall\>x\<in\>X we have h<around*|(|x|)>\<leqslant\>g<around*|(|x|)>|}>|)>>|<cell|=>|<cell|>>|<row|<cell|<big|int><rsup|+>g
        d\<mu\>>|<cell|>|<cell|>>>>
      </eqnarray*>
    </enumerate>
  </proof>

  <\corollary>
    <label|integral of sum non negative positive functions>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then if we define <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>> by
    <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>>
    we have\ 

    <\equation*>
      <big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>
    </equation*>

    and

    <\equation*>
      <big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>
      d\<mu\>=<big|sum><rsub|i=1><rsup|n><big|int><rsup|+>f<rsub|i> d\<mu\>
    </equation*>
  </corollary>

  <\proof>
    This is trivially proved by induction. So let\ 

    <\equation*>
      \<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<text|If
      ><around*|{|f<rsub|i>|}><rsub|i\<in\>n>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>><text|
      then ><big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>><text|
      and ><big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>
      d\<mu\>=<big|sum><rsub|i=1><rsup|n><big|int><rsup|+>f<rsub|i>
      d\<mu\>|}>
    </equation*>

    then we have:

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>Let <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      then <math|<big|sum><rsub|i=1><rsup|1>f<rsub|i>=f<rsub|1>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      and <math|<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>
      d\<mu\>=<big|int><rsup|+>f<rsub|1> d\<mu\>=<big|sum><rsub|i=1><rsup|1><big|int><rsup|+>f<rsub|i>
      d\<mu\>> proving that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>Let
      <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,1|}>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      then as <math|n\<in\>\<cal-S\>> we have that
      <math|<big|sum><rsub|i=1><rsup|n>f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
      hence

      <\equation*>
        <big|sum><rsub|i=1><rsup|n+1>f<rsub|i>=<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>><text|<space|1em>[using
        <reference|integral of positive function properties (2)>(2)]>
      </equation*>

      Further we have\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n+1>f<rsub|i>|)>
        d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>+f<rsub|n+1>|)>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
        of positive function properties (2)>(2)>>>|<cell|<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>
        d\<mu\>+<big|int><rsup|+>f<rsub|n+1>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|i=1><rsup|n><big|int><rsup|+>f<rsub|i>
        d\<mu\>|)>+<big|int><rsup|+>f<rsub|n+1>
        d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|n+1><big|int><rsup|+>f<rsub|i>d\<mu\>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>.
    </description>
  </proof>

  <subsection|Integral of integrable functions>

  Now we can define the integral on functions that can have positive or
  negative values. First note that if <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
  then by <reference|measurable functions properties (5)> we have that
  <math|f<rsup|+>,f<rsup|->> are <math|\<cal-A\>>-measurable which as
  <math|f<rsup|+><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>\<wedge\>f<rsup|-><around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>
  [see <reference|f+ and f->] proves that
  <math|f<rsup|+>,f<rsup|->\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>.
  This allows for the following definition.

  <\definition>
    <label|integrable functions><index|integrable functions on a measure
    space><index|<math|<big|int><rsub|A>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space then <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>> is
    <with|font-series|bold|<math|\<mu\>>-integrable> if
    \ <math|f\<in\><wide|\<cal-M\><rsup|><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    and \ <math|<big|int><rsup|+>f<rsup|+> d\<mu\>> and
    <math|<big|int><rsup|+>f<rsup|-> d\<mu\>> is a real number [so that
    <math|<big|int><rsup|+>f<rsup|+>d\<mu\>-<big|int><rsup|+>f<rsup|->d\<mu\>>
    is wel defined]. The integral <math|<big|int>f d\<mu\>> is then defined
    by\ 

    <\equation*>
      <big|int>f d\<mu\>\<equallim\><rsub|def><big|int><rsup|+>f<rsup|+>d\<mu\>-<big|int><rsup|->f<rsup|->d\<mu\>\<in\>\<bbb-R\>
    </equation*>

    The set of all <math|\<mu\>>-integrable function graphs is noted as
    <math|\<cal-L\><rsup|1><around*|[|X,\<cal-A\>,\<mu\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>>
    or <math|<wide|\<cal-L\><rsup|1>|\<wide-bar\>>> so\ 

    <\equation*>
      <wide|\<cal-L\><rsup|1>|\<wide-bar\>>=\<cal-L\><rsup|1><around*|[|X.\<cal-A\>,\<mu\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>=<around*|{|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>\|<big|int><rsup|+>f<rsup|+>
      d\<mu\>\<in\>\<bbb-R\>\<vee\><big|int><rsup|+>f<rsup|->
      d\<mu\>\<in\>\<bbb-R\>|}>
    </equation*>

    <\equation*>
      \;
    </equation*>

    We have a similar set of real valued <math|\<mu\>>-integrable functions
    <math|\<cal-L\><rsup|1><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-R\>|]>> and
    <math|\<cal-L\><rsup|1>> defined by\ 

    <\equation*>
      \<cal-L\><rsup|1>=\<cal-L\><rsup|1><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-R\>|]>=<around*|{|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\|<big|int><rsup|+>f<rsup|+>
      d\<mu\>\<in\>\<bbb-R\>\<vee\><big|int><rsup|+>f<rsup|->
      d\<mu\>\<in\>\<bbb-R\>|}>
    </equation*>
  </definition>

  <\note>
    As <math|\<cal-M\><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    [see <reference|real (extended real) measurability>] we have that <math|>

    <\equation*>
      \<cal-L\><rsup|1>=\<cal-L\><rsup|1><around*|[|X,\<cal-A\>,\<mu\>,\<bbb-R\>|]>\<subseteq\>\<cal-L\><rsup|1><around*|[|X.\<cal-A\>,\<mu\>,<wide|\<bbb-R\>|\<wide-bar\>>|]>\<subseteq\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>
    </equation*>
  </note>

  <\note>
    In contrast to <math|<big|int><rsup|+>f d\<mu\>> which can be
    <math|\<infty\>> we have that <math|<big|int>f d\<mu\>> is always a real
    number.
  </note>

  The above defines integrability on functions on <math|X>, if <math|A> is a
  measurable set of a measure space we can define integrability on this set
  as follows.

  <\definition>
    <label|integrability of function with domain X on
    A><index|<math|<big|int><rsub|A>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> <math|>be a
    measure space, <math|A\<in\>\<cal-A\>> and
    <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>> then <math|f> is
    <with|font-series|bold|<math|\<mu\>>-integrable>
    <with|font-series|bold|on <math|A>> if
    <with|font-series|bold|<math|f\<cdot\>\<cal-X\><rsub|A>> is
    <math|\<mu\>>-integrable> and <math|<big|int><rsub|A>f d\<mu\>> is
    defined by\ 

    <\equation*>
      <big|int><rsub|A>f d\<mu\>=<big|int>f\<cdot\>\<cal-X\><rsub|A> d\<mu\>
    </equation*>
  </definition>

  <\definition>
    <index|<math|f<rsub|X\<rightarrow\>A>>>Let <math|X> be a set,
    <math|A\<subseteq\>X> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    be a function then <math|f<rsub|A\<rightarrow\>X>:X\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    is defined by\ 

    <\equation*>
      f<rsub|A\<rightarrow\>X><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|f<around*|(|x|)>
      if x\<in\>A>>|<row|<cell|0 if x\<in\>X\\A>>>>>
    </equation*>
  </definition>

  <\note>
    Using the above definition it is trivial to see that
    <math|<around*|(|f<rsub|A\<rightarrow\>X>|)><rsub|\|A>=f>
  </note>

  The above definition allows us to define <math|\<mu\>>-integrability and
  the integral on on functions with domain a measurable set of a measure
  space.

  <\definition>
    <label|integrability of function with domain
    A><index|<math|<big|int><rsub|A>f d\<mu\>>>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|A\<in\>\<cal-A\>> and <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|A>>
    then <with|font-series|bold|<math|f> is <math|\<mu\>>-integrable on
    A<math| >> if \ <math|f<rsub|A\<rightarrow\>X>> is
    <with|font-series|bold|<math|\<mu\>>-integrable>. Further the integral of
    <math|f> over <math|A> is defined as the integral of
    <math|f<rsub|X\<rightarrow\>A>> over <math|A>, hence

    <\equation*>
      <big|int><rsub|A>f d\<mu\>=<big|int><rsub|A>f<rsub|X\<rightarrow\>A>
      d\<mu\>
    </equation*>

    If <math|\<mu\><around*|(|X\\A|)>=0> then we note
    <math|<big|int><rsub|A>f d\<mu\>> as <math|<big|int>f d\<mu\>> so

    <\equation*>
      <text|If >\<mu\><around*|(|X\\A|)>=0<text| then ><big|int>f
      d\<mu\>=<big|int><rsub|A>f<rsub|X\<rightarrow\>A> d\<mu\>
    </equation*>
  </definition>

  In the above definition <math|f> is <math|\<mu\>>-integrable if
  <math|f<rsub|X\<rightarrow\>A>> is <math|\<cal-A\>>-measurable and
  <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|+>
  d\<mu\>> and <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|->
  d\<mu\>> are finite. We can reduce this to the condition that <math|f> must
  be <math|\<cal-A\>>-measurable and and <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|+>
  d\<mu\>> and <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|->
  d\<mu\>> is finite using the following proposition.

  <\proposition>
    <label|measurability of extension of a function>Let
    <math|<around*|\<langle\>|X,\<cal-A\>|\<rangle\>>> be a measurable space,
    <math|A\<in\>\<cal-A\>> and <math|f:A\<rightarrow\><wide|\<bbb-R\>|\<wide-bar\>>>
    be a <math|\<cal-A\>>-measurable function then
    <math|f<rsub|A\<rightarrow\>X>> is <math|\<cal-A\>>-measurable [or
    <math|f<rsub|A\<rightarrow\>X>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>].
  </proposition>

  <\proof>
    We use <reference|measurable function condition (1)> to prove this. Let
    <math|a\<in\>\<bbb-R\>> then we have as <math|f> is
    <math|\<cal-A\>>-measurable that\ 

    <\equation>
      <label|eq 18.410.35.1><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}>=<around*|{|f\<gtr\>a|}>\<in\>\<cal-A\>
    </equation>

    For <math|a> we have either\ 

    <\description>
      <item*|<math|a\<geqslant\>0>>Let <math|x\<in\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>>
      then we can not have <math|x\<in\>X\\A> [for then
      <math|f<rsub|A\<rightarrow\>X><around*|(|x|)>=0\<leqslant\>a\<Rightarrow\>f<rsub|A\<rightarrow\>X><around*|(|x|)>\<ngtr\>a>]
      hence <math|x\<in\>A>, so that <math|f<around*|(|x|)>=f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a>
      proving <math|x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}>>.
      Further if <math|x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}>>
      then <math|x\<in\>A> and <math|f<around*|(|x|)>\<gtr\>a> so that
      <math|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<equallim\><rsub|x\<in\>A>f<around*|(|x|)>\<gtr\>a>
      proving that <math|x\<in\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>>.
      Hence <math|<around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>=<around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}>\<in\>\<cal-A\>>
      which proves that\ 

      <\equation*>
        <around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>\<in\>\<cal-A\>
      </equation*>

      <\equation*>
        \;
      </equation*>

      <item*|<math|a\<less\>0>>Let <math|x\<in\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>>
      then <math|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a> and for
      <math|x\<in\>X> we have either\ 

      <\description>
        <item*|<math|x\<in\>A>>Then <math|f<around*|(|x|)>=f<rsub|A\<rightarrow\>x><around*|(|x|)>\<gtr\>0>
        proving that <math|x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}>>
        so that

        <\equation*>
          x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>
        </equation*>

        <item*|<math|x\<in\>X\\A>>Then \ 

        <\equation*>
          x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>
        </equation*>
      </description>

      From this we condlude that\ 

      <\equation>
        <label|eq 18.410.035><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>\<subseteq\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>
      </equation>

      If <math|x\<in\><around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>>
      then either\ 

      <\description>
        <item*|<math|x\<in\>X\\A>><math|f<rsub|A\<rightarrow\>X><around*|(|x|)>=0\<gtr\>a>
        proving that\ 

        <\equation*>
          x\<in\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>
        </equation*>

        <item*|<math|x\<in\>A>>then <math|f<rsub|A\<rightarrow\>X><around*|(|x|)>=f<around*|(|x|)>\<gtr\>a>
        proving that\ 

        <\equation*>
          x\<in\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>
        </equation*>
      </description>

      Hence we conclude that <math|><math|<around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>\<subseteq\><around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>>
      which together with <reference|eq 18.410.035> proves that
      <math|<around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>=<around*|{|x\<in\>A\|f<around*|(|x|)>\<gtr\>a|}><big|cup><around*|(|X\\A|)>\<in\>\<cal-A\>>
      [by <reference|eq 18.410.35.1>]. Hence\ 

      <\equation*>
        <around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>\<in\>\<cal-A\>
      </equation*>
    </description>

    As in all cases we have <math|<around*|{|f<rsub|A\<rightarrow\>X>\<gtr\>a|}>=<around*|{|x\<in\>X\|f<rsub|A\<rightarrow\>X><around*|(|x|)>\<gtr\>a|}>\<in\>\<cal-A\>>
    we conclude that <math|f<rsub|X\<rightarrow\>A>> is
    <math|\<cal-A\>>-measurable.
  </proof>

  Using the above proposition we can simplify the conditon of a function
  graph with domain a measurabe set [see <reference|integrability of function
  with domain A>] as follows.\ 

  <\proposition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space, <math|A\<in\>\<cal-A\>> then
    <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|A>> is
    <math|\<mu\>>-measurable if <math|f> is <math|\<cal-A\>>-measurable
    and<math|> <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|+>d\<mu\>>,
    <math|<big|int><rsup|+><around*|(|f<rsub|A\<rightarrow\>X>|)><rsup|->d\<mu\>>
    are finite.
  </proposition>

  <\proof>
    See <reference|integrability of function with domain A> and
    <reference|measurability of extension of a function>
  </proof>

  Next we show that for a function defined on a measure space the integral
  over the measure space is the same as the integral.

  <\proposition>
    <label|integrability where X is A>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>> then the
    following are equivalent\ 

    <\enumerate>
      <item><math|f> is <math|\<mu\>>-integrable

      <item><math|f> is <math|\<mu\>>-integrable on <math|X> [using the
      definition <reference|integrability of function with domain X on A>]

      <item><math|f> is <math|\<mu\>>-integrable on <math|X> [using the
      defintion <reference|integrability of function with domain A>]
    </enumerate>

    further we have that\ 

    <\equation*>
      <big|int>f d\<mu\>=<big|int><rsub|X>f d\<mu\><text| [using the
      definition <reference|integrability of function with domain X on A>]>
    </equation*>

    <\equation*>
      <big|int>f d\<mu\>=<big|int><rsub|X>f d\<mu\><text| [using the
      definition <reference|integrability of function with domain A>]>
    </equation*>
  </proposition>

  <\proof>
    \ First note that given <math|x\<in\>X> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<around*|(|x|)>>|<cell|=>|<cell|<choice|<tformat|<table|<row|<cell|f<around*|(|x|)>
      if x\<in\>X>>|<row|<cell|0 if x\<in\>X\\X=\<emptyset\>>>>>>>>|<row|<cell|>|<cell|=>|<cell|f<rsub|X\<rightarrow\>X><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>\<cdot\>\<cal-X\><rsub|X><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.412.035>f=f<rsub|X\<rightarrow\>X>=f\<cdot\>\<cal-X\><rsub|X>
    </equation>

    The rest of the proof is then trivial:\ 

    <\description>
      <item*|<math|1\<Rightarrow\>2>>As <math|f> is <math|\<mu\>>-integrable
      we have that <math|f> is <math|\<cal-A\>>-measurable and
      <math|<big|int><rsup|+>f<rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+>f<rsup|->d\<mu\>> are finite. Hence using
      <reference|eq 18.412.035> \ <math|f\<cdot\>\<cal-X\><rsub|X>> is
      <math|\<cal-A\>>-measurable and <math|<big|int><rsup|+><around*|(|f\<cdot\>\<cal-X\><rsub|X>|)><rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+><around*|(|f\<cdot\>\<cal-X\><rsub|X>|)><rsup|->d\<mu\>>
      are finite, proving that <math|f> is <math|\<mu\>>-integrable on
      <math|X> [using the definition <reference|integrability of function
      with domain X on A>]

      <item*|<math|2\<Rightarrow\>3>>If <math|f\<cdot\>\<cal-X\><rsub|X>> is
      <math|\<cal-A\>>-measurable and <math|<big|int><rsup|+><around*|(|f\<cdot\>\<cal-X\><rsub|X>|)><rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+><around*|(|f\<cdot\>\<cal-X\><rsub|X>|)><rsup|->d\<mu\>>
      are finite then using <reference|eq 18.412.035> we have that
      <math|f<rsub|X\<rightarrow\>X>> is <math|\<cal-A\>>-measurable and
      <math|<big|int><rsup|+><around*|(|f<rsub|X\<rightarrow\>X>|)><rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+><around*|(|f<rsub|X\<rightarrow\>X>|)><rsup|->d\<mu\>>
      are finite. So <math|f> is <math|\<mu\>>-integrable on <math|X> [using
      the defintion <reference|integrability of function with domain A>]

      <item*|<math|3\<Rightarrow\>1>>If <math|f<rsub|X\<rightarrow\>X>> is
      <math|\<cal-A\>>-measurable and <math|<big|int><rsup|+><around*|(|f<rsub|X\<rightarrow\>X>|)><rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+><around*|(|f<rsub|X\<rightarrow\>X>|)><rsup|->d\<mu\>>
      are finite then using <reference|eq 18.412.035> we have that <math|f>
      is <math|\<cal-A\>>-measurable <math|<big|int><rsup|+>f<rsup|+>d\<mu\>>,
      <math|<big|int><rsup|+>f<rsup|->d\<mu\>> are finite. So <math|f> is
      <math|\<mu\>>-integrable.
    </description>

    Finally we have\ 

    <\equation*>
      <big|int>f d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.412.035>>><big|int>f\<cdot\>\<cal-X\><rsub|X>d\<mu\>=<big|int><rsub|X>f
      d\<mu\><text| [using the definition <reference|integrability of
      function with domain X on A>]>
    </equation*>

    <\equation*>
      <big|int>f d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.412.035>>><big|int>f\<cdot\>\<cal-X\><rsub|X>
      d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.412.035>>><big|int>f<rsub|X\<rightarrow\>X>\<cdot\>\<cal-X\><rsub|X>
      d\<mu\>=<big|int><rsub|X>f<rsub|X\<rightarrow\>X>d\<mu\>=<big|int><rsub|X>f
      d\<mu\><text| [using the definition <reference|integrability of
      function with domain A>]>
    </equation*>

    \;
  </proof>

  \;

  The following proposition shows that <math|<big|int>> is a extension of
  <math|<big|int><rsup|+>>

  <\proposition>
    <label|integrability of non negative functions (2)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space <math|f\<in\><wide|\<bbb-R\>|\<wide-bar\>><rsup|X>> with
    <math|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>> then
    <math|f> <math|\<mu\>>-integrable [see <reference|integrable functions>]
    iff <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    and <math|<big|int><rsup|+>f d\<mu\>> is finite. Further if <math|f> is
    <math|\<mu\>>-integrable then <math|<big|int>f d\<mu\>=<big|int><rsup|+>f
    d\<mu\>\<less\>\<infty\>>
  </proposition>

  <\proof>
    First note that as <math|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>
    we have <math|\<forall\>x\<in\>X> that
    <math|f<rsup|+><around*|(|x|)>=max<around*|(|f<around*|(|x|)>,0|)>=f<around*|(|x|)>>
    and <math|f<rsup|-><around*|(|x|)>=-min<around*|(|f<around*|(|x|)>,0|)>=0>
    proving that\ 

    <\equation>
      <label|eq 18.413.035>f<rsup|+>=f\<wedge\>f<rsup|->=C<rsub|0>
    </equation>

    If <math|f> is <math|\<mu\>>-integrable then <math|f> is
    <math|\<cal-A\>>-measurable hence, as
    <math|f<around*|(|X|)>\<subseteq\><around*|[|0,\<infty\>|]>>, it follows
    that <math|f\<in\>\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>>. Further
    <math|<big|int><rsup|+>f<rsup|+>d\<mu\>> and
    <math|<big|int><rsup|+>f<rsup|-> d\<mu\>> must be finite, from which
    using <reference|eq 18.413.035> it follows that <math|<big|int><rsup|+>f
    d\<mu\>> is finite. On the other hand if
    <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then <math|f> is <math|\<cal-A\>>-mesurable and if
    <math|<big|int><rsup|+>f d\<mu\>\<less\>\<infty\>> we have by
    <reference|eq 18.413.035> that <math|<big|int><rsup|+>f<rsup|+>
    d\<mu\>\<less\>\<infty\>> and <math|<big|int><rsup|+>f<rsup|->d\<mu\>=<big|int><rsup|+>C<rsub|0>d\<mu\>\<equallim\><rsub|<text|<reference|integral
    of the null function>>>0\<less\>\<infty\>>, proving that <math|f> is
    <math|\<mu\>>-integrable. Finally if <math|f> is <math|\<mu\>>-integrable
    then\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int>f
      d\<mu\>>|<cell|\<equallim\><rsub|def>>|<cell|<big|int><rsup|+>f<rsup|+>
      d\<mu\>-<big|int><rsup|+>f<rsup|-> d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
      18.413.035>>>>|<cell|<big|int><rsup|+>f
      d\<mu\>-<big|int><rsup|+>C<rsub|0> d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
      of the null function>>>>|<cell|<big|int><rsup|+>f
      d\<mu\>-0>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsup|+>f d\<mu\>>>>>
    </eqnarray*>
  </proof>

  <\proposition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that <math|f=0> <math|\<mu\>>-almast everywhere then <math|f> is
    <math|\<mu\>>-integrable and <math|<big|int>f d\<mu\>=0>
  </proposition>

  <\proof>
    As <math|f=0> <math|\<mu\>>-a.e. we have\ 

    <\equation*>
      \<exists\>N\<in\>\<cal-A\><text| with >\<mu\><around*|(|N|)>=0<text|
      such that ><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\>N
    </equation*>

    If <math|x\<in\><around*|{|x\<in\>X\|f<rsup|+><around*|(|x|)>\<neq\>0|}>>
    then <math|max<around*|(|f<around*|(|x|)>,0|)>\<neq\>0> so that
    <math|f<around*|(|x|)>\<neq\>0> proving that
    <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\>N>.
    Hence <math|<around*|{|x\<in\>X\|f<rsup|+><around*|(|x|)>\<neq\>0|}>\<subseteq\>N>
    proving that <math|f<rsup|+>=0> <math|\<mu\>>-a.e.. From
    <reference|integral of everywhere zero function> we have that\ 

    <\equation>
      <label|eq 18.428.035><big|int><rsup|+>f<rsup|+>
      d\<mu\>=0\<less\>\<infty\>
    </equation>

    If <math|x\<in\><around*|{|x\<in\>X\|f<rsup|-><around*|(|x|)>\<neq\>0|}>>
    then <math|-min<around*|(|f<around*|(|x|)>,0|)>\<neq\>0> so that
    <math|f<around*|(|x|)>\<neq\>0> proving that
    <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\>N>.
    Hence <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\>N>
    or <math|f<rsup|->=0> <math|\<mu\>>-a.e.. From <reference|integral of
    everywhere zero function> we have that

    <\equation>
      <label|eq 18.429.035><big|int><rsup|+>f<rsup|->
      d\<mu\>=0\<less\>\<infty\>
    </equation>

    Finally <reference|eq 18.428.035> and <reference|eq 18.429.035> it
    follows that\ 

    <\equation*>
      f<text| is >\<mu\><text|-integrable and ><big|int>f
      d\<mu\>=<big|int><rsup|+>f<rsup|+> d\<mu\>-<big|int><rsup|+>f<rsup|->d\<mu\>=0-0=0
    </equation*>
  </proof>

  <subsection|Properties of the integral>

  <\lemma>
    <label|integral difference>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and let <math|f<rsub|1>,g<rsub|1>,f<rsub|2>,g<rsub|2>>
    be non negative real valued <math|\<mu\>>-integrable functions [see
    <reference|integrable functions>] such that
    <math|f<rsub|1>-f<rsub|2>=g<rsub|1>-g<rsub|2>> then

    <\equation*>
      <big|int><rsup|+>f<rsub|1>d\<mu\>-<big|int><rsup|+>f<rsub|2>d\<mu\>=<big|int>f<rsub|1>
      d\<mu\>-<big|int>f<rsub|2 >d\<mu\>=<big|int>g<rsub|1>
      d\<mu\>-<big|int>g<rsub|2> d\<mu\>=<big|int><rsup|+>g<rsub|1>
      d\<mu\>-<big|int><rsup|+>g<rsub|2> d\<mu\>
    </equation*>
  </lemma>

  <\proof>
    Let <math|x\<in\>X> then from <math|f<rsub|1>-f<rsub|2>=g<rsub|1>-g<rsub|2>>
    we have

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|f<rsub|1>-f<rsub|2>|)><around*|(|x|)>=<around*|(|g<rsub|1>-g<rsub|2>|)><around*|(|x|)>>|<cell|\<Rightarrow\>>|<cell|f<rsub|1><around*|(|x|)>-f<rsub|2><around*|(|x|)>=g<rsub|1><around*|(|x|)>-g<rsub|2><around*|(|x|)>>>|<row|<cell|>|<cell|\<Rightarrowlim\><rsub|f<rsub|1><around*|(|x|)>,f<rsub|2><around*|(|x|)>,g<rsub|1><around*|(|x|)>,g<rsub|2><around*|(|x|)>\<in\>\<bbb-R\>>>|<cell|f<rsub|1><around*|(|x|)>+g<rsub|2><around*|(|x|)>=f<rsub|2><around*|(|x|)>+g<rsub|1><around*|(|x|)>>>|<row|<cell|>|<cell|\<Rightarrow\>>|<cell|<around*|(|f<rsub|1>+g<rsub|2>|)><around*|(|x|)>=<around*|(|f<rsub|2>+g<rsub|1>|)><around*|(|x|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 18.414.035>f<rsub|1>+g<rsub|2>=f<rsub|2>+g<rsub|1>
    </equation>

    As <math|f<rsub|1>,f<rsub|2>,g<rsub|1>,g<rsub|1>> are
    <math|\<mu\>>-integrable and non negative we have by the above
    proposition [see <reference|integrability of non negative functions (2)>]
    that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|f<rsub|1>,g<rsub|1>,f<rsub|2>,g<rsub|2>>|<cell|\<in\>>|<cell|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>>|<row|<cell|<big|int>f<rsub|1>
      d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+>f<rsub|1>
      d\<mu\>\<less\>\<infty\>>>|<row|<cell|<big|int>f<rsub|2>
      d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+>f<rsub|2>
      d\<mu\>\<less\>\<infty\>>>|<row|<cell|<big|int>g<rsub|1>
      d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+>g<rsub|1>
      d\<mu\>\<less\>\<infty\>>>|<row|<cell|<big|int>g<rsub|2>
      d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+>g<rsub|2>
      d\<mu\>\<less\>\<infty\>>>>>
    </eqnarray*>

    Using <reference|integral of positive function properties (2)> we have
    that

    <\equation*>
      <big|int><rsup|+>f<rsub|1>d\<mu\>+<big|int><rsup|+>g<rsub|2>
      d\<mu\>\<equallim\><rsub|<text|<reference|integral of positive function
      properties (2)>>><big|int><rsup|+><around*|(|f<rsub|1>+g<rsub|2>|)>
      d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.414.035>>><big|int><rsup|+><around*|(|f<rsub|2>+g<rsub|1>|)>
      d\<mu\>\<equallim\><rsub|<text|<reference|integral of positive function
      properties (2)>>><big|int><rsup|+>f<rsub|2>d\<mu\>+<big|int><rsup|+>g<rsub|1>d\<mu\>
    </equation*>

    So we have that

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+>f<rsub|1>
      d\<mu\>-<big|int><rsup|+>f<rsub|2> d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+>g<rsub|1>d\<mu\>-<big|int><rsup|+>g<rsub|2>
      d\<mu\>>>>>
    </eqnarray*>

    which combined with <reference|integrability of non negative functions
    (2)> proves that

    <\equation*>
      <tabular|<tformat|<table|<row|<cell|<big|int><rsup|>f<rsub|1>
      d\<mu\>-<big|int><rsup|>f<rsub|2> d\<mu\>>|<cell|=>|<cell|<big|int><rsup|>g<rsub|1>d\<mu\>-<big|int><rsup|>g<rsub|2>
      d\<mu\>>>>>>
    </equation*>
  </proof>

  <\proposition>
    <label|integral properties (10)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and let <math|f,g\<in\>\<cal-L\><rsup|1>> [real valued
    <math|\<mu\>>-integrable functions] then\ 

    <\enumerate>
      <item><math|\<forall\>\<alpha\>\<in\>\<bbb-R\>> we have that
      <math|\<alpha\>\<cdot\>f> is <math|\<mu\>>-integrable and
      <math|<big|int><around*|(|\<alpha\>\<cdot\>f|)>
      d\<mu\>=\<alpha\>\<cdot\><big|int>f d\<mu\>>

      <item><math|f+g> is <math|\<mu\>>-inegrable and
      <math|<big|int><around*|(|f+g|)> d\<mu\>=<big|int>f d\<mu\>+<big|int>g
      d\<mu\>>

      <item>If <math|\<forall\>x\<in\>X<space|1em>f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>
      holds then <math|<big|int>f d\<mu\>\<leqslant\><big|int>g d\<mu\>>
    </enumerate>
  </proposition>

  <\proof>
    \ 

    <\enumerate>
      <item>As <math|f> is <math|\<mu\>>-integrable we have that
      <math|f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>> and
      <math|<big|int><rsup|+>f d\<mu\>><space|1em>is finite. Using
      <reference|measurable functions properties (3)> we have that\ 

      <\equation>
        <label|eq 18.415.035>\<alpha\>\<cdot\>f\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
      </equation>

      Consider the following cases for <math|\<alpha\>>\ 

      <\description>
        <item*|<math|\<alpha\>=0>>then <math|\<alpha\>\<cdot\>f=0> and non
        negative and <math|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)>
        d\<mu\>=<big|int><rsup|+>C<rsub|0>
        d\<mu\>\<equallim\><rsub|<text|<reference|integral of the null
        function>>>0\<less\>\<infty\>> so using <reference|integrability of
        non negative functions (2)> we have that
        <math|<big|int><around*|(|\<alpha\>\<cdot\>f|)>
        d\<mu\>=<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)>
        d\<mu\>=0=0\<cdot\><big|int>f d\<mu\>\<alpha\>=\<alpha\>\<cdot\><big|int>f
        d\<mu\>>.

        <item*|<math|0\<less\>\<alpha\>>>then we have that

        <\equation>
          <around*|(|\<alpha\>\<cdot\>f|)><rsup|+>\<equallim\><rsub|<text|<reference|\|f(x)\|
          as f+ f->>>\<alpha\>\<cdot\>f<rsup|+><text| and
          ><around*|(|\<alpha\>\<cdot\>f|)><rsup|->\<equallim\><rsub|<text|<reference|\|f(x)\|
          as f+ f->>>\<alpha\>\<cdot\>f<rsup|->
        </equation>

        <label|eq 18.416.035>so

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|+>
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f<rsup|+>|)>
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
          of positive function properties
          (2)>>>>|<cell|\<alpha\>\<cdot\><big|int><rsup|+>f<rsup|+>
          d\<mu\>\<less\>\<infty\><eq-number><label|eq
          18.417.035>>>|<row|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|->
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f<rsup|->|)>
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
          of positive function properties
          (2)>>>>|<cell|\<alpha\>\<cdot\><big|int><rsup|+>f<rsup|->
          d\<mu\>\<less\>\<infty\><eq-number><label|eq 18.418.035>>>>>
        </eqnarray*>

        Using <reference|eq 18.415.035>, <reference|eq 18.417.035> and
        <reference|eq 18.410.035> we have that\ 

        <\equation*>
          \<alpha\>\<cdot\>f<text| is >\<mu\><text|-integrable>
        </equation*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><around*|(|\<alpha\>\<cdot\>f|)>
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|+>
          d\<mu\>+<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|->
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.417.035>, <reference|eq 18.418.035>>>>|<cell|\<alpha\>\<cdot\><big|int><rsup|+>f<rsup|+>
          d\<mu\>+\<alpha\>\<cdot\><big|int><rsup|+>f<rsup|->
          d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><around*|(|<big|int><rsup|+>f
          <rsup|+>d\<mu\>+<big|int><rsup|+>f<rsup|->
          d\<mu\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|int>f
          d\<mu\>>>>>
        </eqnarray*>

        <item*|<math|\<alpha\>\<less\>0>>then we have that\ 

        <\equation>
          <around*|(|\<alpha\>\<cdot\>f|)><rsup|+>\<equallim\><rsub|<text|<reference|\|f(x)\|
          as f+ f->>>-\<alpha\>\<cdot\>f<rsup|-><text| and
          ><around*|(|\<alpha\>\<cdot\>f|)><rsup|->\<equallim\><rsub|<text|<reference|\|f(x)\|
          as f+ f->>>-\<alpha\>\<cdot\>f<rsup|+>
        </equation>

        <label|eq 18.419.035>so

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|+>
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|-\<alpha\>|)>\<cdot\>f<rsup|->
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
          of positive function properties
          (2)>>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><big|int><rsup|+>f<rsup|->
          d\<mu\>\<less\>\<infty\><eq-number><label|eq
          18.420.035>>>|<row|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|->
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|-\<alpha\>|)>\<cdot\>f<rsup|+>
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
          of positive function properties
          (2)>>>>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><big|int><rsup|+>f<rsup|+>
          d\<mu\>\<less\>\<infty\><eq-number><label|eq 18.421.035>>>>>
        </eqnarray*>

        Using <reference|eq 18.415.035>, <reference|eq 18.420.035> and
        <reference|eq 18.421.035> we have that\ 

        <\equation*>
          \<alpha\>\<cdot\>f<text| is >\<mu\><text|-integrable>
        </equation*>

        and\ 

        <\eqnarray*>
          <tformat|<table|<row|<cell|<big|int><around*|(|\<alpha\>\<cdot\>f|)>
          d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|+>
          d\<mu\>-<big|int><rsup|+><around*|(|\<alpha\>\<cdot\>f|)><rsup|->
          d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|eq
          18.420.035>,<reference|eq 18.421.035>>>>|<cell|*<around*|(|-\<alpha\>|)>\<cdot\><big|int><rsup|+>*f<rsup|->d\<mu\>-<around*|(|-\<alpha\>|)>\<cdot\><big|int><rsup|+>f<rsup|+>
          d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|-\<alpha\>|)>\<cdot\><around*|(|<big|int><rsup|+>f<rsup|->d\<mu\>-<big|int><rsup|+>f<rsup|+>d\<mu\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\>*<around*|(|<big|int><rsup|+>f<rsup|+>d\<mu\>-<big|int><rsup|->f<rsup|->d\<mu\>|)>>>|<row|<cell|>|<cell|=>|<cell|\<alpha\>\<cdot\><big|int>f
          d\<mu\>>>>>
        </eqnarray*>
      </description>

      <item>As <math|f,g> are <math|\<mu\>>-integrable we have that\ 

      <\equation>
        f,g\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<Rightarrowlim\><rsub|<text|<reference|measurable
        functions properties (3)>>>f+g\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
      </equation>

      <label|eq 18.422.035>

      <\equation>
        <big|int><rsup|+>f<rsup|+>d\<mu\>\<less\>\<infty\>\<wedge\><big|int><rsup|+>f<rsup|->d\<mu\>\<less\>\<infty\>\<wedge\><big|int><rsup|+>g<rsup|+>d\<mu\>\<less\>\<infty\>\<wedge\><big|int><rsup|+>g<rsup|->d\<mu\>\<less\>\<infty\>
      </equation>

      <label|eq 18.423.035>Further as we have by <reference|\|f(x)\| as f+
      f-> that <math|\<forall\>x\<in\>X>

      <\equation*>
        <around*|(|f+g|)><rsup|+><around*|(|x|)>\<leqslant\>f<rsup|+><around*|(|x|)>+g<rsup|+><around*|(|x|)><text|
        and ><around*|(|f+g|)><rsup|->\<leqslant\>f<rsup|-><around*|(|x|)>+g<rsup|-><around*|(|x|)>
      </equation*>

      which using <reference|integral of positive function properties (2)>
      proves that

      <\equation*>
        <big|int><rsup|+><around*|(|f+g|)><rsup|+>d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|f<rsup|+>+g<rsup|+>|)>d\<mu\>=<big|int><rsup|+>f<rsup|+>+<big|int><rsup|+>g<rsup|+>d\<mu\>\<less\>\<infty\>
      </equation*>

      <\equation*>
        <big|int><rsup|+><around*|(|f+g|)><rsup|->d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|f<rsup|->+g<rsup|->|)>d\<mu\>=<big|int><rsup|+>f<rsup|->d\<mu\>+<big|int><rsup|+>g<rsup|->d\<mu\>\<less\>\<infty\>
      </equation*>

      The above together with <reference|eq 18.422.035> proves that\ 

      <\equation*>
        f+g<text| is >\<mu\><text|-integrable>
      </equation*>

      Next we have that\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|f+g|)><rsup|+>-<around*|(|f+g|)><rsup|->>|<cell|\<equallim\><rsub|<text|<reference|\|f(x)\|
        as f+ f->>>>|<cell|f+g>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|\|f(x)\|
        as f+ f->>>>|<cell|<around*|(|f<rsup|+>-f<rsup|->|)>+<around*|(|g<rsup|+>-g<rsup|->|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|f<rsup|+>+g<rsup|+>|)>-<around*|(|f<rsup|->+g<rsup|->|)><eq-number><label|eq
        18.424.035>>>>>
      </eqnarray*>

      Finally\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int><around*|(|f+g|)>
        d\<mu\>>|<cell|\<equallim\><rsub|def>>|<cell|<big|int><rsup|+><around*|(|f+g|)><rsup|+>
        d\<mu\>-<big|int><rsup|+><around*|(|f+g|)><rsup|->d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
        difference> and <reference|eq 18.424.035>>>>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>+g<rsup|+>|)>d\<mu\>-<big|int><rsup|+><around*|(|f<rsup|->+g<rsup|->|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsup|+>f<rsup|+>
        d\<mu\>+<big|int><rsup|+>g<rsup|+> d\<mu\>-<big|int><rsup|+>f<rsup|->
        d\<mu\>-<big|int><rsup|+>g<rsup|->
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|integrals are
        real>>>|<cell|<around*|(|<big|int><rsup|+>f<rsup|+>
        d\<mu\>-<big|int><rsup|+>f<rsup|->
        d\<mu\>|)>+<around*|(|<big|int><rsup|+>g<rsup|+>
        d\<mu\>-<big|int><rsup|+>g<rsup|->
        d\<mu\>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|int>f
        d\<mu\>+<big|int>g d\<mu\>>>>>
      </eqnarray*>

      <item>If <math|\<forall\>x\<in\>X> <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>>
      we have <math|0\<leqslant\>g<around*|(|x|)>-f<around*|(|x|)>=<around*|(|g-f|)><around*|(|x|)>>
      hence <math|g-f> is non negative, further using (1),(2) we have that
      <math|f-g> is <math|\<mu\>>-integrable. From <reference|integrability
      of non negative functions (2)> we have that\ 

      <\equation>
        <label|eq 18.425.035>0\<leqslant\><big|int><rsup|+><around*|(|g-f|)>
        d\<mu\>=<big|int><around*|(|g-f|)> d\<mu\>
      </equation>

      Further\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<big|int>g d\<mu\>-<big|int>f
        d\<mu\>>|<cell|\<equallim\><rsub|<around*|(|1|)>>>|<cell|<big|int>g
        d\<mu\>+<big|int><around*|(|-f|)>
        d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<around*|(|2|)>>>|<cell|<big|int><around*|(|g-f|)>
        d\<mu\>>>|<row|<cell|>|<cell|\<geqslant\><rsub|<text|<reference|eq
        18.425.035>>>>|<cell|0>>>>
      </eqnarray*>

      proving that\ 

      <\equation*>
        <big|int>f d\<mu\>\<leqslant\><big|int>g d\<mu\>
      </equation*>
    </enumerate>
  </proof>

  <\proposition>
    <label|integral properties (11)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then <math|f> is <math|\<mu\>>-integrable if and only if
    <math|<around*|\||f|\|>> is <math|\<mu\>>-integrable. If <math|f> or
    <math|<around*|\||f|\|>> is <math|\<mu\>>-integrable then
    <math|<around*|\||<big|int>f d\<mu\>|\|>\<leqslant\><big|int><around*|\||f|\|>
    d\<mu\>>
  </proposition>

  <\proof>
    \ First we prove the equivalence:

    <\description>
      <item*|<math|\<Rightarrow\>>>If <math|f> is <math|\<mu\>>-integrable
      then <math|<big|int><rsup|+>f<rsup|+>d\<mu\>\<less\>\<infty\>> and
      <math|<big|int><rsup|+>f<rsup|-> d\<mu\>\<less\>\<infty\>> so that by
      <reference|integrability of non negative functions (2)>
      <math|f<rsup|+><infix-and>f<rsup|->> are <math|\<mu\>>-integrable with
      <math|<big|int><rsup|+>f<rsup|+>d\<mu\>=<big|int>f<rsup|+> d\<mu\>> and
      <math|<big|int><rsup|+>f<rsup|->d\<mu\>=<big|int>f<rsup|->d\<mu\>>. As
      <math|<around*|\||f|\|>\<equallim\><rsub|<text|<reference|\|f(x)\| as
      f+ f->>>f<rsup|+>+f<rsup|->> it follows from <reference|integral
      properties (10)> that <math|<around*|\||f|\|>> is
      <math|\<mu\>>-integrable.\ 

      <item*|<math|\<Leftarrow\>>>Assume that <math|<around*|\||f|\|>> is
      <math|\<mu\>>-integrable then as <math|<around*|\||f|\|>> is non
      negative we have by <reference|integrability of non negative functions
      (2)> that <math|<big|int><rsup|+><around*|\||f|\|>d\<mu\>\<less\>\<infty\>>.
      If <math|x\<in\>X> then by <reference|\|f(x)\| as f+ f-> we have
      <math|f<rsup|+><around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>
      and <math|f<rsup|-><around*|(|x|)>\<leqslant\><around*|\||f<around*|(|x|)>|\|>>,
      so using <reference|integral of positive function properties (2)> we
      have that <math|<big|int><rsup|+>f<rsup|+>d\<mu\>\<leqslant\><big|int><rsup|+><around*|\||f|\|>d\<mu\>\<less\>0>
      and <math|<big|int><rsup|+>f<rsup|->d\<mu\>\<leqslant\><big|int><rsup|+><around*|\||f|\|>d\<mu\>\<less\>\<infty\>>,
      proving that <math|f> is <math|\<mu\>>-integrable.\ 
    </description>

    Finally\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|\||<big|int>f
      d\<mu\>|\|>>|<cell|=>|<cell|<around*|\||<big|int><rsup|+>f<rsup|+>d\<mu\>-<big|int><rsup|+>f<rsup|->d\<mu\>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<around*|\||<big|int><rsup|+>f<rsup|+>d\<mu\>|\|>+<around*|\||<big|int><rsup|+>f<rsup|->d\<mu\>|\|>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<big|int><rsup|+>f<rsup|+>d\<mu\>+<big|int><rsup|+>f<rsup|->d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
      of positive function properties (2)>>>>|<cell|<big|int><rsup|+><around*|(|f<rsup|+>+f<rsup|->|)>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><rsup|+><around*|\||f|\|>d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|
      <reference|integrability of non negative functions
      (2)>>>>|<cell|<big|int><around*|\||f|\|> d\<mu\>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|integral properties (11.1)>Let
    <math|<around*|\<langle\>|X,\<cal-A\>.\<mu\>|\<rangle\>>> be a measure
    space and let <math|f,g\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that <math|f<around*|(|x|)>=g<around*|(|x|)>> <math|\<mu\>>-a.e.
    then\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<big|int><rsup|+>g d\<mu\>
    </equation*>
  </lemma>

  <\proof>
    Define\ 

    <\equation*>
      H=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>=<around*|{|f\<neq\>g|}>
    </equation*>

    \ As <math|f,g> are <math|\<cal-A\>>-measurable we have by
    <reference|function comparizatons are measurable> that
    <math|H\<in\>\<cal-A\>>, further as <math|f=g> <math|\<mu\>>-always
    everywhere there exists a <math|N\<in\>\<cal-A\>> with
    <math|\<mu\><around*|(|N|)>=0> such that <math|H\<subseteq\>N>, hence
    <math|\<mu\><around*|(|H|)>\<leqslant\>\<mu\><around*|(|N|)>=0>. To
    summarize\ 

    <\equation>
      <label|eq 18.430.036.1>H\<in\>\<cal-A\><text| and
      >\<mu\><around*|(|H|)>=0
    </equation>

    Define the non negative function <math|h:X\<rightarrow\><around*|[|0,\<infty\>|]>>
    by\ 

    <\equation*>
      h<around*|(|x|)>=<choice|<tformat|<table|<row|<cell|\<infty\> if
      x\<in\>H>>|<row|<cell|0 if x\<in\>X\\H>>>>>
    </equation*>

    Let <math|a\<in\>\<bbb-R\>> then we have either

    <\description>
      <item*|<math|0\<leqslant\>a>>Then if
      <math|x\<in\><around*|{|h\<gtr\>a|}>> we have
      <math|h<around*|(|x|)>\<gtr\>a\<geqslant\>0> so that <math|x\<in\>H>
      [otherwise <math|h<around*|(|x|)>=0\<ngtr\>0>] so that
      <math|<around*|{|h\<gtr\>a|}>\<subseteq\>A>. If <math|x\<in\>H> then
      <math|h<around*|(|x|)>=\<infty\>\<gtr\>a> so that
      <math|H\<subseteq\><around*|{|h\<gtr\>a|}>>. So we have that

      <\equation>
        <around|{|h\<gtr\>a|}>=H\<in\>\<cal-A\>
      </equation>

      <item*|<math|a\<less\>0>>Then if <math|x\<in\>X> we have either
      <math|x\<in\>H> so that <math|h<around*|(|x|)>=\<infty\>\<gtr\>a> or
      <math|x\<in\>X\\H> giving <math|h<around*|(|x|)>=0\<gtr\>a.> Hence
      <math|X\<subseteq\><around*|{|h\<gtr\>a|}>\<subseteq\>X> proving\ 

      <\equation*>
        <around*|{|h\<gtr\>a|}>=X\<in\>\<cal-A\>
      </equation*>
    </description>

    As in all cases we have <math|<around*|{|h\<gtr\>a|}>\<in\>\<cal-A\>> it
    follows that\ 

    <\equation>
      h<text| is <math|\<cal-A\><text|-measurable>>>
    </equation>

    Let <math|n\<in\>\<bbb-N\><rsub|0>> and define
    <math|h<rsub|n>=n\<cdot\>\<cal-X\><rsub|H>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    where <math|a<rsub|1>=n>, <math|A<rsub|1>=H> then\ 

    <\equation>
      <label|eq 18.432.036>h<rsub|n>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
      <text|and ><big|int><rsup|S>h<rsub|n>d\<mu\>=n\<cdot\>\<mu\><around*|(|H|)>\<equallim\><rsub|<text|<reference|eq
      18.430.036.1>>>0
    </equation>

    Futher given <math|n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X> we have\ 

    <\equation>
      <label|eq 18.433.036>h<rsub|n><around*|(|x|)>=<choice|<tformat|<table|<row|<cell|n
      if x\<in\>H>>|<row|<cell|0 if x\<in\>X\\H>>>>>\<leqslant\><choice|<tformat|<table|<row|<cell|n+1
      if x\<in\>H>>|<row|<cell|0 if x\<in\>X\\H>>>>>=h<rsub|n+1><around*|(|x|)>
    </equation>

    Let <math|x\<in\>X> then we have either\ 

    <\description>
      <item*|<math|x\<in\>H>>then <math|<below|lim|n\<rightarrowlim\>\<infty\>>h<rsub|n><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>n\<equallim\><rsub|<text|<reference|limit
      n to infinite>>>\<infty\>=h<around*|(|x|)>>

      <item*|<math|x\<in\>X\\H>>then <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>0=0=h<around*|(|x|)>>
    </description>

    proving that <math|<below|lim|n\<rightarrow\>\<infty\>>h<rsub|n><around*|(|x|)>=h<around*|(|x|)>>,
    which together with <reference|eq 18.432.036> and <reference|eq
    18.433.036> allows us to use proposition <reference|integral of positive
    functions properties (1)> to get that

    <\equation>
      <label|eq 18.434.036><big|int><rsup|+>h
      d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|S>h<rsub|n>d\<mu\>\<equallim\><rsub|<text|<reference|eq
      18.432.036>>><below|lim|n\<rightarrow\>\<infty\>>0=0
    </equation>

    Further if <math|x\<in\>X> then we have either

    <\description>
      <item*|<math|x\<in\>H>>then <math|f<around*|(|x|)>\<leqslant\>\<infty\>=g<around*|(|x|)>+\<infty\>=g<around*|(|x|)>+h<around*|(|x|)>>
      and <math|g<around*|(|x|)>\<leqslant\>\<infty\>=f<around*|(|x|)>+\<infty\>=f<around*|(|x|)>+h<around*|(|x|)>>

      <item*|<math|x\<in\>X\\H>>then <math|f<around*|(|x|)>=g<around*|(|x|)>+0=g<around*|(|x|)>+h<around*|(|x|)>>
      and <math|g<around*|(|x|)>=f<around*|(|x|)>+0=f<around*|(|x|)>+h<around*|(|x|)>>
    </description>

    which proves that in all cases <math|f<around*|(|x|)>\<leqslant\>g<around*|(|x|)>+h<around*|(|x|)>>
    and <math|g<around*|(|x|)>\<leqslant\>f<around*|(|x|)>+h<around*|(|x|)>>.
    So using <reference|integral of positive function properties (2)> we have
    that <math|<big|int><rsup|+>f d\<mu\>\<leqslant\><big|int><rsup|+>g
    d\<mu\>+<big|int><rsup|+>h d\<mu\>\<equallim\><rsub|<text|<reference|eq
    18.434.036>>><big|int><rsup|+>g d\<mu\>> and <math|<big|int><rsup|+>g
    d\<mu\>\<leqslant\><big|int><rsup|+>f d\<mu\>+<big|int><rsup|+>h
    d\<mu\>\<equallim\><rsub|<text|<reference|eq
    18.434.036>>><big|int><rsup|+>f<space|1em>d\<mu\>>. Hence we have that

    <\equation>
      <label|eq 18.436.036><big|int><rsup|+>g d\<mu\>=<big|int><rsup|+>f
      d\<mu\>
    </equation>
  </proof>

  <\proposition>
    <label|integral properties (12)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and let <math|f,g\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that <math|f<around*|(|x|)>=g<around*|(|x|)>> <math|\<mu\>>-a.e.. If
    <math|f> is <math|\<mu\>>-integrable then <math|g> is
    <math|\<mu\>>-integrable and <math|<big|int>f d\<mu\>=<big|int>g d\<mu\>>
  </proposition>

  <\proof>
    Define\ 

    <\equation*>
      H=<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>g<around*|(|x|)>|}>=<around*|{|f\<neq\>g|}>
    </equation*>

    As <math|f,g> are <math|\<cal-A\>>-measurable we have by
    <reference|function comparizatons are measurable> that
    <math|H\<in\>\<cal-A\>>, further as <math|f=g> <math|\<mu\>>-always
    everywhere there exists a <math|N\<in\>\<cal-A\>> with
    <math|\<mu\><around*|(|N|)>=0> such that <math|H\<subseteq\>N>, hence
    <math|\<mu\><around*|(|H|)>\<leqslant\>\<mu\><around*|(|N|)>=0>. To
    summarize\ 

    <\equation>
      <label|eq 18.437.036.1>H\<in\>\<cal-A\><text| and
      >\<mu\><around*|(|H|)>=0
    </equation>

    As <math|f,g> are <math|\<cal-A\>>-measurable we have by
    <reference|measurable functions properties (5)> that
    <math|f<rsup|+>,f<rsup|->,g<rsup|+>,h<rsup|+>> are
    <math|\<cal-A\>>-measurable. Let <math|x\<in\>X> then

    <\equation*>
      if f<rsup|+><around*|(|x|)>\<neq\>g<rsup|+><around*|(|x|)>\<Rightarrow\>max<around*|(|f<around*|(|x|)>,0|)>\<neq\>max<around*|(|g<around*|(|x|)>,0|)>\<Rightarrow\>f<around*|(|x|)>\<neq\>g<around*|(|x|)>
    </equation*>

    <\equation*>
      if f<rsup|-><around*|(|x|)>=g<rsup|-><around*|(|x|)>\<Rightarrow\>min<around*|(|f<around*|(|x|)>,0|)>\<neq\>min<around*|(|g<around*|(|x|)>,0|)>\<Rightarrow\>f<around*|(|x|)>\<neq\>g<around*|(|x|)>
    </equation*>

    proving that <math|<around*|{|x\<in\>X\|f<rsup|+><around*|(|x|)>\<neq\>g<rsup|+><around*|(|x|)>|}>\<subseteq\>H>
    and <math|<around*|{|x\<in\>X\|f<rsup|-><around*|(|x|)>\<neq\>g<rsup|-><around*|(|x|)>|}>\<subseteq\>H>
    which as by <reference|eq 18.437.036.1> <math|\<mu\><around*|(|H|)>=0>
    proves that\ 

    <\equation*>
      f<rsup|+>=g<rsup|+><text| >\<mu\><text|-a.e. and
      >f<rsup|->=g<rsup|-><text| >\<mu\><text|-a.e.>
    </equation*>

    Using then <reference|integral properties (11.1)> we have [taking in
    account also that <math|f> is <math|\<mu\>>-integrable]

    <\equation*>
      <big|int><rsup|+>g<rsup|+> d\<mu\>\<equallim\><rsub|<text|<reference|integral
      properties (11.1)>>><big|int><rsup|+>f<rsup|+>d\<mu\>\<less\>\<infty\><text|
      and ><big|int><rsup|+>g<rsup|-> d\<mu\>\<equallim\><rsub|<text|<reference|integral
      properties (11.1)>>><big|int>f<rsup|->d\<mu\>\<less\>\<infty\>
    </equation*>

    So we have that\ 

    <\equation*>
      g<text| is >\<mu\><text|-integrable and ><big|int>f
      d\<mu\>=<big|int><rsup|+>f<rsup|+>d\<mu\>-<big|int><rsup|+>f<rsup|->d\<mu\>=<big|int><rsup|+>g<rsup|+>d\<mu\>-<big|int><rsup|+>g<rsup|->d\<mu\>=<big|int>g
      d\<mu\>
    </equation*>
  </proof>

  <\proposition>
    <label|integral properties (14)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measurable space, <math|t\<in\><around*|]|0,\<infty\>|[>> and
    <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    [a non negative measurable extended real values function] then for
    <math|A<rsub|t>=<around*|{|f\<geqslant\>t|}>\<equallim\><rsub|def><around*|{|x\<in\>X\|f<around*|(|x|)>\<geqslant\>t|}>>
    we have\ 

    <\equation*>
      \<mu\><around*|(|A<rsub|t>|)>\<leqslant\><frac|1|t>\<cdot\><big|int><rsup|+><rsup|><rsub|A<rsub|t>>f
      d\<mu\>\<leqslant\><frac|1|t>\<cdot\><big|int><rsup|+>f d\<mu\>
    </equation*>
  </proposition>

  <\proof>
    Consider the function <math|t\<cdot\>\<cal-X\><rsub|A<rsub|i>>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<cdot\>\<cal-X\><rsub|A<rsub|i>>>
    where <math|a<rsub|1>=t> and <math|A<rsub|1>=A<rsub|t>> then as
    <math|A<rsub|t>=<around*|{|f\<geqslant\>t|}>\<in\>\<cal-A\>> [as <math|f>
    is <math|\<cal-A\>>-measurable] we have that\ 

    <\equation>
      <label|eq 18.438.036>t\<cdot\>\<cal-X\><rsub|A<rsub|t>>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]><text|
      and <math|<big|int><rsup|+><around*|(|t\<cdot\>\<cal-X\><rsub|A<rsub|i>>|)>d\<mu\>=<big|sum><rsub|i=1><rsup|1>a<rsub|i>\<mu\><around*|(|A<rsub|i>|)>=t\<cdot\>\<mu\><around*|(|A<rsub|t>|)>\<less\>\<infty\><rsup|>>>
    </equation>

    Let <math|x\<in\>X> then either\ 

    <\description>
      <item*|<math|x\<in\>A<rsub|t>>>then
      <math|0\<less\>t\<leqslant\>f<around*|(|x|)>> so that
      <math|0\<leqslant\>t\<cdot\>\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<cdot\>\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
      [as <math|\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>=1>]

      <item*|<math|x\<in\>X\\A<rsub|t>>>then
      <math|\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>=0> so that trivially
      <math|0\<leqslant\>t\<cdot\>\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>\<leqslant\>f<around*|(|x|)>\<cdot\>\<cal-X\><rsub|A<rsub|t>><around*|(|x|)>\<leqslant\>f<around*|(|x|)>>
    </description>

    proving that <math|0\<leqslant\>t\<cdot\>\<cal-X\><rsub|A<rsub|t>>\<leqslant\>f<around*|(|x|)>\<cdot\>\<cal-X\><rsub|A<rsub|t>>\<leqslant\>f<around*|(|x|)>>
    so that by <reference|integral of positive function properties (2)>

    <\equation*>
      t\<cdot\>\<mu\><around*|(|A<rsub|i>|)>\<equallim\><rsub|<text|<reference|eq
      18.438.036>>><big|int><rsup|+><around*|(|t\<cdot\>\<cal-X\><rsub|A<rsub|t>>|)>
      d\<mu\>\<leqslant\><big|int><rsup|+>\<cal-X\><rsub|A<rsub|t>>\<cdot\>f
      d\<mu\>\<leqslant\><big|int><rsup|+>f d\<mu\>
    </equation*>

    proving that\ 

    <\equation*>
      \<mu\><around*|(|A<rsub|i>|)>\<leqslant\><frac|1|t>\<cdot\><big|int><rsup|+><rsub|A<rsub|t>>f
      d\<mu\>\<leqslant\><frac|1|t>\<cdot\><big|int><rsup|+>f d\<mu\>
    </equation*>
  </proof>

  For the next corollary we introduce the concept of <math|\<sigma\>>-finite
  sets\ 

  <\definition>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> then
    <math|A\<subseteq\>X> is <with|font-series|bold|<math|\<sigma\>>-finite
    under <math|\<mu\>>> if there exists a sequence
    <math|<around*|{|A<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-A\>>
    with <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    <math|\<mu\><around*|(|A<rsub|n>|)>=0> such that
    <math|A=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>>
  </definition>

  <\corollary>
    <label|integral properties (15>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and let <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
    [<math|f> is a extended real valued <math|\<mu\>>-integrable function]
    then <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>> is
    <math|\<sigma\>>-finite under <math|\<mu\>>
  </corollary>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> and define\ 

    <\equation>
      <label|eq 18.439.036>A<rsub|n>=<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>
    </equation>

    As <math|f> is <math|\<mu\>>-integrable [implying that
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>] we
    have by <reference|integral properties (11)> that
    <around*|\||<math|f>|\|> is <math|\<mu\>>-integrable so that
    <math|<big|int><rsup|+><around*|\||f|\|> d\<mu\>\<less\>\<infty\>>.
    Combining this with <reference|integral properties (14)> gives

    <\equation*>
      <label|eq 18.439.036>\<mu\><around*|(|A<rsub|n>|)>\<leqslant\>n\<cdot\><big|int><rsup|+><around*|\||f|\|>
      d\<mu\>\<less\>\<infty\>
    </equation*>

    Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>> then
    <math|0\<less\><around*|\||f<around*|(|x|)>|\|>> so that by
    <reference|x\<less\>y=\<gtr\>x+1/n\<less\>y> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|0\<less\><frac|1|n>\<less\><around*|\||f<around*|(|x|)>|\|>>
    proving that <math|x\<in\>A<rsub|n>>. Hence
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>>.
    On the other side if <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>>
    there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\>A<rsub|n>>, hence <math|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>\<gtr\>0>
    giving <math|f<around*|(|x|)>\<neq\>0> which proves that
    <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>\<subseteq\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>>,
    So\ 

    <\equation*>
      <around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>>A<rsub|n>
    </equation*>
  </proof>

  <\corollary>
    <label|integral properties (16)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space, <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    [hence by <reference|measurable functions properties (5)>
    <math|<around*|\||f|\|>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>]
    such that <math|<big|int><rsup|><around*|\||f|\|> d\<mu\>=0> then
    <math|f<around*|(|x|)>=0> <math|\<mu\>>-a.e..
  </corollary>

  <\proof>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> then using <reference|integral
    properties (14)> we have that\ 

    <\equation>
      <label|eq 18.440.036>\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>|)>\<leqslant\>n\<cdot\><big|int><rsup|+><around*|\||f|\|>
      d\<mu\>\<equallim\><rsub|<text|<reference|integrability of non negative
      functions (2)>>>n\<cdot\><big|int><around*|\||f|\|> d\<mu\>=0
    </equation>

    Let <math|x\<in\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>> then
    <math|0\<less\><around*|\||f<around*|(|x|)>|\|>> so that by
    <reference|x\<less\>y=\<gtr\>x+1/n\<less\>y> there exists a
    <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|0\<less\><frac|1|n>\<less\><around*|\||f<around*|(|x|)>|\|>>
    proving that <math|x\<in\>A<rsub|n>>. Hence
    <math|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>\<subseteq\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>>.
    On the other hand if <math|x\<in\><big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>>
    there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that
    <math|x\<in\><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>>,
    hence <math|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>\<gtr\>0>
    giving <math|f<around*|(|x|)>\<neq\>0> which proves that
    <math|<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>\<subseteq\><around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>>,
    So\ 

    <\equation*>
      <around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>=<big|cup><rsub|n\<in\>\<bbb-N\><rsub|0>><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>\<in\>\<cal-A\>
    </equation*>

    Finally

    <\equation*>
      \<mu\><around*|(|<around*|{|x\<in\>X\|f<around*|(|x|)>\<neq\>0|}>|)>=\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>|)>\<leqslant\><big|sum><rsub|i=1><rsup|\<infty\>>\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\><frac|1|n>|}>|)>=0
    </equation*>

    which proves that\ 

    <\equation*>
      f=0<text| >\<mu\><text|-a.e.>
    </equation*>
  </proof>

  <\corollary>
    <label|integral properties (17)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and let <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
    [<math|f> is a extended real valued \ <math|\<mu\>>-integrable function]
    such that <math|\<forall\>A\<in\>\<cal-A\>> we have
    <math|<big|int><rsub|A>f d\<mu\>\<geqslant\>0> then <math|f\<geqslant\>0>
    holds <math|\<mu\>>-a.e..
  </corollary>

  <\proof>
    Let <math|A=<around*|{|x\<in\>X\|0\<nleqslant\>f<around*|(|x|)>|}>=<around*|{|x\<in\>X\|f<around*|(|x|)>\<less\>0|}>=<around*|{|f\<less\>0|}>\<in\>\<cal-A\>>,
    If <math|x\<in\>X> then we have either\ 

    <\description>
      <item*|<math|x\<in\>A>>Then <math|f<around*|(|x|)>\<less\>0> and
      <math|\<cal-X\><rsub|A><around*|(|x|)>=1> so that
      <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>=f<around*|(|x|)>\<less\>0>
      hence

      <\equation*>
        <around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+><around*|(|x|)>=max<around*|(|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>,0|)>=0
      </equation*>

      <item*|<math|x\<in\>X\\A>>Then <math|\<cal-X\><rsub|A><around*|(|x|)>=0>
      so that <math|max<around*|(|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>,0|)>=max<around*|(|0,0|)>=0>
      hence

      <\equation*>
        <around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+><around*|(|x|)>=max<around*|(|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>,0|)>=0
      </equation*>
    </description>

    which proves that <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+>=C<rsub|0>>
    so that by <reference|integral of the null function>

    <\equation>
      <label|eq 18.441.036><big|int><rsup|+><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+>
      d\<mu\>=0
    </equation>

    So\ 

    <\equation*>
      0\<leqslant\><big|int><rsub|A>f d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)>
      d\<mu\>=<big|int><rsup|+><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)>
      <rsup|+>d\<mu\>-<big|int><rsup|+><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|->d\<mu\>=-<big|int><rsup|+><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|->d\<mu\>\<leqslant\>0
    </equation*>

    proving that\ 

    <\equation>
      <label|eq 18.442.036><big|int><rsup|+><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|->
      d\<mu\>=0
    </equation>

    Applying <reference|integrability of non negative functions (2)> on
    <reference|eq 18.441.036> and <reference|eq 18.442.036> it follows that

    <\equation*>
      <big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+>d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f<rsup|->|)>
      d\<mu\>=0
    </equation*>

    so

    <\equation*>
      <big|int><around*|\||\<cal-X\><rsub|A>\<cdot\>f|\|>
      d\<mu\>\<equallim\><rsub|<text|<reference|\|f(x)\| as f+
      f->>><big|int><around*|(|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+>+<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|->|)>\<equallim\><rsub|<text|<reference|integral
      properties (10)>>><big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|+>d\<mu\>+<big|int><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><rsup|->d\<mu\>=0
    </equation*>

    Using the above with the previous corollary <reference|integral
    properties (16)> proves that <math|\<cal-X\><rsub|A>\<cdot\>f=0>
    <math|\<mu\>>-a.e.. Hence there exists a <math|N\<in\>\<cal-N\>> with
    <math|\<mu\><around*|(|N|)>=0> such that
    <math|<around*|{|x\<in\>X\|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>\<neq\>0|}>\<subseteq\>N>.
    If <math|x\<in\>A> then <math|f<around*|(|x|)>\<less\>0> and
    <math|\<cal-X\><rsub|A><around*|(|x|)>=1> proving that
    <math|<around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>\<less\>0\<Rightarrow\><around*|(|\<cal-X\><rsub|A>\<cdot\>f|)><around*|(|x|)>\<neq\>0>
    hence <math|x\<in\>N> giving <math|A\<subseteq\>N>. Hence as
    <math|A=<around*|{|x\<in\>X\|0\<nleqslant\>f<around*|(|x|)>|}>> we have\ 

    <\equation*>
      f\<geqslant\>0 <text|holds >\<mu\><text|-a.e.>
    </equation*>
  </proof>

  <\corollary>
    <label|integral properties (18)>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>>
    be a measure space and <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
    [<math|f> is a extended real valued \ <math|\<mu\>>-integrable function]
    then <math|\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>|)>=0>
    so that \ <math|<around*|\||f|\|>\<less\>\<infty\>> <math|\<mu\>>-a.e..
  </corollary>

  <\proof>
    As <math|f> is <math|\<mu\>>-integrable we have by <reference|integral
    properties (11)> that <math|<around*|\||f|\|>> is
    <math|\<mu\>>-integrable, using <reference|integral properties (14)> we
    have that

    <\equation>
      <label|eq 18.443.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\>n|}>|)>\<leqslant\><frac|1|n>\<cdot\><big|int><rsup|+><around*|\||f|\|>
      d\<mu\>\<equallim\><rsub|<text|<reference|integrability of non negative
      functions (2)>>><frac|1|n>\<cdot\><big|int><around*|\||f|\|> d\<mu\>
    </equation>

    Let <math|n\<in\>\<bbb-N\><rsub|0>> then if
    <math|x\<in\><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>>
    then <math|<around*|\||f<around*|(|x|)>|\|>=\<infty\>\<gtr\>n> so that
    <math|><math|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>\<subseteq\><around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\>n|}>>,
    as <math|<around*|{|x\<in\>X\|f<around*|(|x|)>=\<infty\>|}>=<around*|{|f=\<infty\>|}>\<in\>\<cal-A\>>
    [see <reference|function comparizatons are measurable>], we have\ 

    <\equation*>
      \<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>|)>\<leqslant\>\<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>\<geqslant\>n|}>|)>\<leqslant\><frac|1|n>\<cdot\><big|int><around*|\||f|\|>
      d\<mu\>
    </equation*>

    As <math|n> is choosen arbitrary and <math|<big|int><around*|\||f|\|>
    d\<mu\>\<less\>\<infty\>> we have by <reference|consequence of the
    Archimedean property (2)> that

    <\equation*>
      \<mu\><around*|(|<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>|)>=0
    </equation*>

    proving that\ 

    <\equation*>
      <around*|\||f|\|>\<less\>\<infty\><text| >\<mu\><text|-a.e.>
    </equation*>
  </proof>

  <\corollary>
    Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a
    measure space and <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>> if and only if
    there exists a <math|g\<in\>\<cal-L\><rsup|1>> such that
    <math|f<around*|(|x|)>=g<around*|(|x|)>> <math|\<mu\>>-a.e..

    In other words a <math|\<cal-A\>>-measurable extended real valued
    function is <math|\<mu\>>-integrable if there exists a ral valued
    <math|\<mu\>>-integrable function that is equal to <math|f> almost
    everywhere.
  </corollary>

  <\proof>
    \ 

    <\description>
      <item*|<math|\<Leftarrow\>>>Assume the there exists a function
      <math|g\<in\>\<cal-L\><rsup|1>> such that
      <math|f<around*|(|x|)>=g<around*|(|x|)>> <math|\<mu\>>-a.e., then as
      <math|\<cal-L\><rsup|1>\<subseteq\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
      we have by <reference|integral properties (12)> that <math|f> is
      <math|\<mu\>>-integrable.\ 

      <item*|<math|\<Rightarrow\>>>Suppose that
      <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>> then we must create
      a <math|g> that is real valued, <math|\<mu\>>-integrable and
      <math|\<mu\>>-a.e. to <math|f>. To do this define the set <math|A> of
      all elements of <math|X> where <math|f<around*|(|x|)>> is either
      <math|+\<infty\>> or <math|-\<infty\>>.

      <\equation*>
        A=<around*|{|x\<in\>X\|<around*|\||f<around*|(|x|)>|\|>=\<infty\>|}>=<around*|{|x=\<infty\>|}><text|>
      </equation*>

      then as <math|f> is <math|\<cal-A\>>-measurable [because
      <math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>] we have by
      <reference|function comparizatons are measurable> that
      <math|A\<in\>\<cal-A\>> and thus also <math|X\\A\<in\>\<cal-A\>>.
      Furthermore using <reference|integral properties (18)> we have that
      <math|\<mu\><around*|(|A|)>=0>. To summarize

      <\equation>
        <label|eq 18.444.036>A\<in\>\<cal-A\>\<wedge\>X\\A\<in\>\<cal-A\>\<wedge\>\<mu\><around*|(|A|)>=0
      </equation>

      Define now <math|g=\<cal-X\><rsub|X\\A>\<cdot\>f> then as
      <math|\<cal-X\><rsub|X\\A>> is <math|\<cal-A\>>-measurable [see
      <reference|characteristic function is measurable>] and <math|f> is
      <math|\<cal-A\>>-measurable it follows from <reference|measurable
      functions properties (4)> that\ 

      <\equation>
        <label|eq 18.445.036>g=\<cal-X\><rsub|X\\A>\<cdot\>f<text| is
        >\<cal-A\><text|=measurable>
      </equation>

      Further if <math|x\<in\>X> then either <math|x\<in\>A> giving
      <math|g<around*|(|x|)>\<equallim\><rsub|x\<nin\>X\\A>0\<in\>\<bbb-R\>>
      or <math|x\<in\>X\\A> so that <math|g<around*|(|x|)>=f<around*|(|x|)>\<in\>\<bbb-R\>>
      proving together with <reference|eq 18.445.036> that\ 

      <\equation>
        <label|eq 18.446.036>g\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>
      </equation>

      Further using <reference|almost everywhere equality and characteristic
      function>, <reference|eq 18.444.036> we have that\ 

      <\equation>
        <label|eq 18.447.036>f=g<text| >\<mu\><text|-always measurable>
      </equation>

      Finally using the above, <math|g\<in\>\<cal-M\><around*|[|X,\<cal-A\>|]>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-a\>|]>|\<wide-bar\>>>
      [see <reference|eq 18.446.036>] and <math|f> is
      <math|\<mu\>>-integrable allows us to use corollary <reference|integral
      properties (12)> to prove that <math|g> is <math|\<mu\>>-integrable or
      together with <reference|eq 18.446.036> that

      <\equation*>
        g\<in\>\<cal-L\><rsup|1>
      </equation*>
    </description>
  </proof>

  <subsection|Limit theorems for integrable functions>

  <\lemma>
    <label|lemma for almost everywhere monotone convergence theorem>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    so that for <math|x\<in\>X>

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0><space|1em>f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>>

      <item><math|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>
    </enumerate>

    then\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>
    </equation*>
  </lemma>

  <\proof>
    Let <math|x\<in\>X> then from (1) we have by <reference|equivalence of
    limits on increasing (decreasing) sequences of extented reals> that
    <math|f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
    so that\ 

    <\equation>
      <label|eq 18.448.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >f<rsub|n><around*|(|x|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    From (2) and the above we have using <reference|integral of positive
    function properties (2)> that\ 

    <\equation>
      <label|eq 18.449.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      ><big|int><rsup|+>f<rsub|n> d\<mu\>\<leqslant\><big|int><rsup|+>f<rsub|n+1>
      d\<mu\>\<leqslant\><big|int><rsup|+>f d\<mu\>
    </equation>

    Using the above together with <reference|equivalence of limits on
    increasing (decreasing) sequences of extented reals> gives that
    <math|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
    d\<mu\>> exists and\ 

    <\equation>
      <label|eq 18.450.036><below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>=sup<around*|(|<around*|{|<big|int><rsup|+>f<rsub|n>
      d\<mu\>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\><big|int><rsup|+>f
      d\<mu\>
    </equation>

    For the reverse inequality take <math|n\<in\>\<bbb-N\><rsub|0>> then
    using <reference|measurable functions properties (6)> there exists a
    sequence <math|<around*|{|g<rsub|n,i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    such that for <math|x\<in\>X> we have\ 

    <\equation>
      <label|eq 18.451.036>\<forall\>i\<in\>\<bbb-N\><rsub|0><text|><space|1em>g<rsub|n,i><around*|(|x|)>\<leqslant\>g<rsub|n,i+1><around*|(|x|)><text|,
      ><below|lim|i\<rightarrow\>\<infty\>>g<rsub|n,i><around*|(|x|)>=sup<around*|(|<around*|{|g<rsub|n,i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>=f<rsub|n><around*|(|x|)>
    </equation>

    Define now <math|<around*|{|h<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>>
    by\ 

    <\equation>
      <label|eq 18.452.036>h<rsub|n>=max<around*|(|<around*|{|g<rsub|i,n>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>
    </equation>

    then by <math|<text|<reference|maximum of non negative real valued simple
    functions>>> we have that\ 

    <\equation>
      <label|eq 18.453.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text| we have
      >h<rsub|n>\<in\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>
    </equation>

    Let <math|x\<in\>X> and <math|n\<in\>\<bbb-N\><rsub|0>> then
    <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>> we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|g<rsub|i,n><around*|(|x|)>>|<cell|\<leqslant\>>|<cell|g<rsub|i,n+1><around*|(|x|)>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|max*<around*|(|<around*|{|g<rsub|i,n+1><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|max*<around*|(|<around*|{|g<rsub|i,n+1>\|i\<in\><around*|{|1,\<ldots\>,n+1|}>|}>|)><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|h<rsub|n+1><around*|(|x|)>>>>>
    </eqnarray*>

    so that\ 

    <\equation>
      <label|eq 18.454.036>h<rsub|n><around*|(|x|)>=max<around*|(|<around*|{|g<rsub|i,n>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>h<rsub|n+1><around*|(|x|)>
    </equation>

    Further as <math|\<forall\>i\<in\><around*|{|1,\<ldots\>,n|}>>
    <math|g<rsub|i,n><around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|g<rsub|i,j><around*|(|x|)>\|j\<in\>\<bbb-N\><rsub|0>|}>|)>=f<rsub|i><around*|(|x|)>\<leqslant\>f<rsub|n><around*|(|x|)>>
    so that

    <\equation>
      <label|eq 18.455.036>h<rsub|n><around*|(|x|)>=max<around*|(|<around*|{|g<rsub|i,n><around*|(|x|)>\|i\<in\><around*|{|1,\<ldots\>,n|}>|}>|)>\<leqslant\>f<rsub|n><around*|(|x|)>
    </equation>

    So for <math|n\<in\>\<bbb-N\><rsub|0>> we have
    <math|h<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n><around*|(|x|)>\<leqslant\><rsub|<text|<reference|eq
    18.448.036>>>f<around*|(|x|)>>, giving
    <math|sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>f<around*|(|x|)>>
    which using <reference|eq 18.454.036> and <reference|equivalence of
    limits on increasing (decreasing) sequences of extented reals> proves
    that\ 

    <\equation>
      <label|eq 18.456.036><below|lim|n\<rightarrow\>\<infty\>>h<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<leqslant\>f<around*|(|x|)>
    </equation>

    Assume that <math|sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<around*|(|x|)>>
    then as <math|f<around*|(|x|)>=sup<around*|(|<around*|{|f<rsub|n><around*|(|x|)>\|x\<in\>\<bbb-N\><rsub|>|}>|)>>
    there exists a <math|n\<in\>\<bbb-N\><rsub|0>> such that\ 

    <\equation*>
      sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>f<rsub|n><around*|(|x|)>
    </equation*>

    further as <math|f<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|g<rsub|n,i><around*|(|x|)>\|i\<in\>\<bbb-N\><rsub|0>|}>|)>>
    there exists a <math|k\<in\>\<bbb-N\><rsub|0>> such that

    <\equation*>
      sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>g<rsub|n,k><around*|(|x|)>\<leqslant\>g<rsub|n,max<around*|(|n,k|)>><around*|(|x|)>
    </equation*>

    which as

    <\equation*>
      g<rsub|n,max<around*|(|n,k|)>><around*|(|x|)>\<leqslant\>max<around*|(|<around*|{|g<rsub|<rsub|i,max<around*|(|n,k|)>>>\|i\<in\><around*|{|1,\<ldots\>,max<around*|(|n,k|)>|}>|}>|)>=h<rsub|n,max<around*|(|n,k|)>><around*|(|x|)>
    </equation*>

    leads to the contradiction <math|sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>\<less\>h<rsub|n,max<around*|(|n,k|)>><around*|(|x|)>>.
    So the assumption must be wrong, giving<math|>
    <math|f<around*|(|x|)>\<leqslant\>sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>
    which combined with <reference|eq 18.456.036> proves that\ 

    <\equation>
      <label|eq 18.457.036><below|lim|n\<rightarrow\>\<infty\>>h<rsub|n><around*|(|x|)>=sup<around*|(|<around*|{|h<rsub|n><around*|(|x|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>=f<around*|(|x|)>
    </equation>

    Next as <math|<around*|{|h<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\>\<cal-S\><rsup|+><around*|[|X,\<cal-A\>|]>>
    [see <reference|eq 18.453.036>] we have using <reference|eq 18.454.036>
    and <reference|eq 18.457.036> that by <reference|integral of positive
    functions (1)>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+>f
      d\<mu\>>|<cell|\<equallim\><rsub|<text|<reference|integral of positive
      functions (1)>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|S>h<rsub|n>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|simple
      function integral extension>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>h<rsub|n>
      d\<mu\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\><text| [>h<rsub|n><around*|(|x|)><text| see <reference|eq
      18.455.036>><infix-and><reference|integral of positive function
      properties (2)><text|]>>>>>
    </eqnarray*>

    which together with <reference|eq 18.450.036> proves that\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>
    </equation*>

    \;
  </proof>

  We release now slithly the conditions for the above lemma giving the
  Monotone Convergence Theorem.

  <\theorem>
    <label|monotone convergence theorem><dueto|Monotone Convergence
    Theorem>Let <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be
    a measure space, <math|n\<in\>\<bbb-N\><rsub|0>,>
    <math|f\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\><around*|{|1,\<ldots\>,n|}>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that\ 

    <\enumerate>
      <item><math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
      <math|f<rsub|n>\<leqslant\>f<rsub|n+1>>

      <item><math|f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>>
    </enumerate>

    <math|\<mu\>>-a.e. then we have\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>
    </equation*>
  </theorem>

  <\proof>
    Using the assumption there exists a <math|N\<in\>\<cal-A\>> with
    <math|\<mu\><around*|(|N|)>> such that

    <\equation*>
      A=<around*|{|x\<in\>X\|\<neg\><around*|(|<around*|(|\<forall\>n\<in\>\<bbb-N\><rsub|0>
      f<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n+1><around*|(|x|)>|)>\<wedge\><around*|(|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>|)>|)>|}>\<subseteq\>N
    </equation*>

    Then if <math|x\<in\>X> we have either

    <\description>
      <item*|<math|x\<in\>X\\A>>then

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><rsub|0><text| >
        <around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>=\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<rsub|n><around*|(|x|)>\<leqslant\>\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<rsub|n+1><around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n+1>|)><around*|(|x|)>*
      </equation*>

      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<cal-X\><rsub|<rsub|A>>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>

      <item*|<math|x\<in\>A>>then\ 

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><rsub|0><text| >
        <around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>=0\<cdot\>f<rsub|n><around*|(|x|)>=0\<leqslant\>0\<cdot\>f<rsub|n+1><around*|(|x|)>=\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<rsub|n+1><around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n+1>|)><around*|(|x|)>
      </equation*>

      and\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|0\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|0>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|0\<cdot\>f<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\A><around*|(|x|)>\<cdot\>f<rsub|n><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)><around*|(|x|)>>>>>
      </eqnarray*>
    </description>

    Hence giving <math|x\<in\>X> we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    that <math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n+1>|)><around*|(|x|)>>
    and <math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><around*|(|x|)>=<below|lim|n\<rightarrowlim\>\<infty\>><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)><around*|(|x|)>>
    which allows us to apply the previous lemma <reference|lemma for almost
    everywhere monotone convergence theorem> giving\ 

    <\equation>
      <label|eq 18.458.036><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)>
      d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)>
      d\<mu\>
    </equation>

    Using <reference|almost everywhere equality and characteristic function>
    it follows that\ 

    <\equation*>
      f=<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)><text| >\<mu\><text|-a.e.>
    </equation*>

    and

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      ><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)>=f<rsub|n><text|
      >\<mu\><text|-a.e.>
    </equation*>

    From this it follows that\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>\<equallim\><rsub|<text|<reference|integral
      properties (11.1)>>><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f|)>
      d\<mu\><text| and >\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      ><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)>
      d\<mu\>=<big|int><rsup|+>f<rsub|n> d\<mu\>
    </equation*>

    which substituted in <reference|eq 18.458.036> proves finally that\ 

    <\equation*>
      <big|int><rsup|+>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
      d\<mu\>
    </equation*>
  </proof>

  <\corollary>
    <label|Beppo Levi's Theorem><dueto|Beppo Levi's Theorem>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space, <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then for <math|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>> defined by
    <math|<around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i><around*|(|x|)>>
    [see <reference|series of positive extented reals is increasing>] we have\ 

    <\equation*>
      <big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>|)>
      d\<mu\>=<big|sum><rsub|i=1><rsup|\<infty\>><big|int><rsup|+>f<rsub|i>
      d\<mu\>
    </equation*>
  </corollary>

  <\proof>
    \ Given <math|x\<in\>X> we have that\ 

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      ><big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>\<leqslant\><big|sum><rsub|i=1><rsup|n+1>f<rsub|i><around*|(|x|)>\<wedge\><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>|)><around*|(|x|)>=<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i><around*|(|x|)>\<equallim\><rsub|<text|<reference|series
      of positive extented reals is increasing>>><below|lim|n\<rightarrow\>\<infty\>><big|sum><rsub|i=1><rsup|n>f<rsub|i><around*|(|x|)>
    </equation*>

    allowing us to apply the Monotone Convergence Theorem [see
    <reference|monotone convergence theorem>] so that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|\<infty\>>f<rsub|i>|)>
      d\<mu\>>|<cell|\<equallim\><rsub|def>>|<cell|<big|int><rsup|+><around*|(|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>|)>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|monotone
      convergence theorem>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+><around*|(|<big|sum><rsub|i=1><rsup|n>f<rsub|i>|)>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|integral
      of sum non negative positive functions>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<big|sum><rsub|i=1><rsup|n><big|int><rsup|+>f<rsub|i>
      d\<mu\>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|i=1><rsup|\<infty\>><big|int><rsup|+>f<rsub|i
      > d\<mu\>>>>>
    </eqnarray*>
  </proof>

  <\lemma>
    <label|Fatou's Lemma><dueto|Fatou's lemma>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space and <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    then

    <\equation*>
      <big|int><rsup|+><around*|(|<below|lim inf|n\<rightarrow\>\<infty\>>
      f<rsub|i>|)> d\<mu\>\<leqslant\><below|lim
      inf|n\<rightarrow\>\<infty\>> <big|int><rsup|+>f<rsub|i> d\<mu\>
    </equation*>
  </lemma>

  <\note>
    Using <reference|measurable functions properties (2)> we have that
    <math|<below|lim inf|n\<rightarrow\>\<infty\>>
    f<rsub|i>\<in\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    so that <math|<big|int><rsup|+><around*|(|<below|lim
    inf|n\<rightarrow\>\<infty\>> f<rsub|i>|)> d\<mu\>> is defined.
  </note>

  <\note>
    We can not assume that <math|<below|lim |n\<rightarrow\>\<infty\>>
    <big|int><rsup|+>f<rsub|i> d\<mu\>> <math|>exists which is the reason
    <math|<below|lim inf|n\<rightarrow\>\<infty\>> <big|int><rsup|+>f<rsub|i>
    d\<mu\>> is used.
  </note>

  <\proof>
    Define <math|<around*|{|g<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>> by
    <math|g<rsub|n>=inf<around*|(|<around*|{|f<rsub|i>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>
    then using <reference|measurable functions properties (2)> we have that\ 

    <\equation>
      <label|eq 18.459.036><around*|{|g<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>
    </equation>

    Let <math|x\<in\>X> then <math|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n+1,\<ldots\>,\<infty\>|}>|}>\<subseteq\><around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>>
    so that by <reference|inclusion and sup and inf> we have
    <math|inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\<leqslant\>f<rsub|n><around*|(|x|)>>
    and <math|inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>\<infty\>|}>|}>|)>\<leqslant\>inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n+1,\<ldots\>\<infty\>|}>|}>|)>>
    which gives\ 

    <\equation>
      <label|eq 18.460.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      >g<rsub|n><around*|(|x|)>\<leqslant\>f<rsub|n><around*|(|x|)><text| and
      >g<rsub|n><around*|(|x|)>\<leqslant\>g<rsub|n+1><around*|(|x|)>\ 
    </equation>

    So we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n><around*|(|x|)>>|<cell|\<equallim\><rsub|<text|<reference|equivalence
      of limits on increasing (decreasing) sequences of extented
      reals>>>>|<cell|sup<around*|(|<around*|{|g<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>>>|<row|<cell|>|<cell|=>|<cell|sup<around*|(|<around*|{|inf<around*|(|<around*|{|f<rsub|i><around*|(|x|)>\|i\<in\><around*|{|n,\<ldots\>,\<infty\>|}>|}>|)>\|n\<in\>\<bbb-N\><rsub|0>|}>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> f<rsub|i><around*|(|x|)>>>>>
    </eqnarray*>

    We can apply the Monotone Convergence Theorem [see <reference|monotone
    convergence theorem>] we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><rsup|+><around*|(|<below|lim
      inf|n\<rightarrow\>\<infty\>> f<rsub|i>|)>
      d\<mu\>>|<cell|=>|<cell|<big|int><rsup|+><around*|(|<below|lim|n\<rightarrow\>\<infty\>>g<rsub|n>|)>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|monotone
      convergence theorem>>>>|<cell|<below|lim|n\<rightarrow\>\<infty\>><big|int><rsup|+>g<rsub|n>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|def>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>><big|int><rsup|+>g<rsub|n>
      d\<mu\><eq-number><label|eq 18.461.036>>>>>
    </eqnarray*>

    Using <reference|eq 18.460.036> and <reference|integral of positive
    function properties (2)> we have <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>
    that <math|<big|int><rsup|+>g<rsub|n>
    d\<mu\>\<leqslant\><big|int><rsup|+>f<rsub|n> d\<mu\>> allowing us to use
    <reference|lim inf and lim sup inequality> giving <math|<below|lim
    inf|n\<rightarrow\>\<infty\>><big|int><rsup|+>g<rsub|n>
    d\<mu\>\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n>
    d\<mu\>>. Substituting in <reference|eq 18.461.036> gives finally

    <\equation*>
      <big|int><rsup|+><around*|(|<below|lim inf|n\<rightarrow\>\<infty\>>
      f<rsub|i>|)> d\<mu\>\<leqslant\><below|lim
      inf|n\<rightarrow\>\<infty\>><big|int><rsup|+>f<rsub|n> d\<mu\>
    </equation*>
  </proof>

  TODO

  <\theorem>
    <label|Lebesgue's Dominated Convergence Theorem>Let
    <math|<around*|\<langle\>|X,\<cal-A\>,\<mu\>|\<rangle\>>> be a measure
    space , let <math|g\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>> a non
    negative extended real valued <math|\<mu\>>-integrable function],
    <math|f\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>> and
    <math|<around*|{|f<rsub|i>|}><rsub|i\<in\>\<bbb-N\><rsub|0>>\<subseteq\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    such that

    <\equation*>
      f=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n>
    </equation*>

    and

    <\equation*>
      \<forall\>n\<in\>\<bbb-N\><rsub|0> <around*|\||f<rsub|n>|\|>\<leqslant\>g
    </equation*>

    holds <math|\<mu\>>-a.e. then\ 

    <\enumerate>
      <item><math|f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>

      <item><math|<around*|{|f<rsub|n>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>

      <item><math|<big|int>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int>f<rsub|n>
      d\<mu\>>
    </enumerate>
  </theorem>

  <\proof>
    As <math|g\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>> is non negative we
    have by <reference|integrability of non negative functions (2)> we have
    that\ 

    <\equation>
      <label|eq 18.463.036><big|int>g d\<mu\>=<big|int><rsup|+>g
      d\<mu\>\<less\>\<infty\>
    </equation>

    Using <reference|integral properties (18)> we have that
    <math|g=<around*|\||g|\|>\<less\>\<infty\>> <math|\<mu\>>-a.e. so there
    exists a <math|N<rsub|1>\<in\>\<cal-A\>> with
    <math|\<mu\><around*|(|N<rsub|1>|)>=0> such that

    <\equation*>
      A=<around*|{|x\<in\>X\|g<around*|(|x|)>=\<infty\>|}>\<subseteq\>N<rsub|1>
    </equation*>

    Further using the hypothese, there exists <math|N<rsub|2>\<in\>\<cal-A\>>
    with <math|\<mu\><around*|(|N<rsub|2>|)>=0> such that

    <\equation*>
      B=<around*|{|x\<in\>X\|\<neg\><around*|(|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>\<wedge\>\<forall\>n\<in\>\<bbb-N\><rsub|0>
      <around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>|)>|}>\<subseteq\>N<rsub|2>
    </equation*>

    Take <math|N=N<rsub|1><big|cup>N<rsub|2>\<in\>\<cal-A\>> then
    <math|\<mu\><around*|(|N<rsub|1><big|cup>N<rsub|2>|)>\<leqslant\>\<mu\><around*|(|N<rsub|1>|)>+\<mu\><around*|(|N<rsub|2>|)>=0+0=0>
    and\ 

    <\equation>
      <label|eq 18.463.036.1><around*|{|x\<in\>X\|g<around*|(|x|)>=\<infty\>|}><big|cup><around*|{|x\<in\>X\|\<neg\><around*|(|f<around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>\<wedge\>\<forall\>n\<in\>\<bbb-N\><rsub|0>
      <around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\>g<around*|(|x|)>|)>|}>\<subseteq\>N
    </equation>

    Using <reference|almost everywhere equality and characteristic function>
    on <math|N> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|f=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      \<mu\><text|-a.e.>>|<cell|>>|<row|<cell|>|<cell|g=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>
      \<mu\><text|-a.e.>>|<cell|>>|<row|<cell|>|<cell|\<forall\>n\<in\>\<bbb-N\><rsub|0>
      <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>=f<rsub|n>
      \<mu\><text|-a.e.>>|<cell|>>>>
    </eqnarray*>

    As <math|N\<in\>\<cal-A\>> so that \ <math|X\\N\<in\>\<cal-A\>> it
    follows by <reference|characteristic function is measurable> that
    <math|\<cal-X\><rsub|X\\N>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>
    so that by applying <reference|measurable functions properties (4)> we
    have\ 

    <\equation>
      <label|eq 18.464.036><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>\<wedge\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>\<wedge\>\<forall\>n\<in\>\<bbb-N\><rsub|0>
      <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>\<in\><wide|\<cal-M\><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>
    </equation>

    If <math|x\<in\>X> the we have either\ 

    <\description>
      <item*|<math|x\<in\>N>>then we have
      <math|\<cal-X\><rsub|X\\N><around*|(|x|)>=0> so that

      <\equation*>
        \<forall\>n\<in\>\<bbb-N\><rsub|0><text| that
        ><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>=<around*|\||<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|\|>=<around*|\||\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>f<rsub|n><around*|(|x|)>|\|>=0\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>
      </equation*>

      and

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>=\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>f<around*|(|x|)>=0=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>f<rsub|n><around*|(|x|)>|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>
      </equation*>

      and

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>=\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>g<around*|(|x|)>=0\<less\>\<infty\>
      </equation*>

      <item*|<math|x\<in\>X\\N>>then as <math|A,B\<subseteq\>N> we have
      <math|x\<nin\>B> and <math|x\<nin\>A> so that
      <math|\<forall\>n\<in\>\<bbb-N\><rsub|0>>

      <\equation*>
        <around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>=<around*|\||<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|\|>=<around*|\||f<rsub|n><around*|(|x|)>|\|>\<leqslant\><rsub|x\<nin\>B>g<around*|(|x|)>=\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>g<around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>
      </equation*>

      and

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>f<around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|f<around*|(|x|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|x\<nin\>B>>|<cell|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>f<around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>>>>
      </eqnarray*>

      and

      <\equation*>
        <around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>=\<cal-X\><rsub|X\\N><around*|(|x|)>\<cdot\>g<around*|(|x|)>=g<around*|(|x|)>\<less\>\<infty\>
      </equation*>
    </description>

    So we have for <math|x\<in\>X> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|>|<cell|\<forall\>n\<in\>\<bbb-N\><rsub|0>
      <around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>\<less\>\<infty\>>|<cell|>>|<row|<cell|>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>|<cell|<eq-number><label|eq
      18.465.036>>>>>
    </eqnarray*>

    From <reference|eq 18.464.036> we have that\ 

    Using the fact that <math|g> ia <math|\<mu\>>-integrable,
    <math|g\<cdot\>\<cal-X\><rsub|N>> is real valued and
    <math|g=\<cal-X\><rsub|X\\N>\<cdot\>g<text|<space|1em>>
    \<mu\><text|-a.e.>> we have by <reference|integral properties (12)> that

    <\equation>
      <label|eq 18.466.036><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>\<in\>\<cal-L\><rsup|1>\<wedge\><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g
      |)>d\<mu\>\<equallim\><rsub|<text|<reference|integrability of non
      negative functions (2)>>><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>
      d\<mu\>\<equallim\><rsub|<text|<reference|integral properties
      (12)>>><big|int>g d\<mu\>\<equallim\><rsub|<text|<reference|integrability
      of non negative functions (2)>>><big|int><rsup|+>g
      d\<mu\>\<less\>\<infty\>
    </equation>

    \;

    From <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    we have by <reference|integral of positive function properties (2)> that
    <math|<big|int><rsup|+><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|>
    d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\A>\<cdot\>g|)>
    d\<mu\>>. Using <reference|eq 18.466.036> we have then that
    <math|<big|int><rsup|+><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|>
    d\<mu\>\<less\>\<infty\>> which using <reference|integrability of non
    negative functions (2)> proves that <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|>\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>.
    Using <reference|eq 18.464.036> and <reference|integral properties (11)>
    it follows that <math|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
    and combining this with <reference|eq 18.464.036> and <reference|integral
    properties (12)> and the fact that <math|<around*|(|\<cal-X\><rsub|X\\A>\<cdot\>f<rsub|n>|)><around*|(|x|)>\<leqslant\><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>\<less\>\<infty\>>
    [see <reference|eq 18.466.036>

    <\equation>
      <label|eq 18.467.036>\<forall\>n\<in\>\<bbb-N\><rsub|0><text|
      <math|f<rsub|n>\<in\>\<cal-L\><rsup|1>> and ><big|int>f<rsub|n>
      d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>
    </equation>

    From <math|><math|<below|lim|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>=<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>
    we have by <reference|limit and absolut value> that
    <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>=<below|lim|n\<rightarrow\>\<infty\>><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>>.
    As <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    it follows by <reference|properties of the limit in the extented reals>
    that <math|<below|lim|n\<rightarrow\>\<infty\>><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>,
    hence

    <\equation>
      <label|eq 18.468.036><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)><around*|(|x|)>\<less\>\<infty\>
    </equation>

    So using <reference|eq 18.464.036> and <reference|integral of positive
    function properties (2)> we have that
    <math|<big|int><rsup|+><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>
    d\<mu\>\<leqslant\><big|int><rsup|+><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g
    |)>d\<mu\>\<less\>\<infty\>> which using <reference|integrability of non
    negative functions (2)> proves that <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|>\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>.
    Using <reference|eq 18.464.036> and <reference|integral properties (11)>
    givest <math|\<cal-X\><rsub|X\\N>\<cdot\>f\<in\><wide|\<cal-L\><rsup|1>|\<wide-bar\>>>
    and finally by \ <reference|eq 18.464.036> and <reference|integral
    properties (12)> and the fact that <math|\<cal-X\><rsub|X\\N>\<cdot\>f<around*|(|x|)>\<leqslant\><around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f|\|><around*|(|x|)>\<less\>\<infty\>>

    <\equation>
      <label|eq 18.469.036>f\<in\>\<cal-L\><rsup|1><infix-and><big|int>f
      d\<mu\>=<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)> d\<mu\>
    </equation>

    Given <math|n\<in\>\<bbb-N\><rsub|0>> and <math|x\<in\>X> then from
    <math|<around*|\||\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|\|><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    we have <math|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    and <math|-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>>
    so that <math|0\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>
    and <math|0\<leqslant\><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>,
    proving that

    <\equation>
      <label|eq 18.470.036><around*|{|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>><text|,
      ><around*|{|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>><text|
      are non negative>
    </equation>

    Further combining <reference|eq 18.466.036>, <reference|eq 18.467.036> we
    have by r<reference|integral properties (10)> that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<label|eq
      18.471.036><around*|{|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-L\><rsup|1><text|
      and ><around*|{|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|}><rsub|n\<in\>\<bbb-N\><rsub|0>>\<in\>\<cal-L\><rsup|1>>|<cell|>|<cell|<eq-number>>>>>
    </eqnarray*>

    Further using <reference|limit of constant extented real> and
    <reference|properties of the limit in the extented reals> we have that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>><around*|(|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)><around*|(|x|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> <around*|(|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)><around*|(|x|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|)>>>|<row|<cell|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)><around*|(|x|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)><around*|(|x|)>>|<cell|=>|<cell|<below|lim|n\<rightarrow\>\<infty\>>
      <around*|(|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)><around*|(|x|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      inf |n\<rightarrow\>\<infty\>><around*|(|<around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)><around*|(|x|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)><around*|(|x|)>|)><eq-number><label|eq
      18.472.036>>>>>
    </eqnarray*>

    So we can use <reference|eq 18.470.036>, <reference|eq 18.471.036> and
    <reference|eq 18.472.036> to apply Fatou's lemma [see <reference|Fatou's
    Lemma>] in the following

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>
      d\<mu\>+<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      d\<mu\>>|<cell|=>|<cell|<big|int><around*|(|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>|)>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><around*|\<nobracket\>|<below|lim
      inf|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|)>d\<mu\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>><big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>+<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> <around*|(|<big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>+<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|liminf
      and limsup properties for sum product>>>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> <big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>+<below|lim inf|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|liminf
      and limsup of a constant>>>>|<cell|<big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>+<below|lim inf|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>>>>>
    </eqnarray*>

    As the integrals are finite for <math|\<mu\>>-integrable functions we
    have that\ 

    <\equation>
      <label|eq 18.473.036><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      d\<mu\>\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)> d\<mu\>
    </equation>

    further using Fatou's lemma again we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>
      d\<mu\>-<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      d\<mu\>>|<cell|=>|<cell|<big|int><around*|(|<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>g|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>|)>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<big|int><around*|\<nobracket\>|<below|lim
      inf|n\<rightarrow\>\<infty\>><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>|)>d\<mu\>>>|<row|<cell|>|<cell|\<leqslant\>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>><big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>-<around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>>>|<row|<cell|>|<cell|=>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> <around*|(|<big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>-<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|liminf
      and limsup properties for sum product>>>>|<cell|<below|lim
      inf|n\<rightarrow\>\<infty\>> <big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>+<below|lim inf|n\<rightarrow\>\<infty\>>-<around*|(|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|lim
      inf -xn>>>>|<cell|<below|lim inf|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)> d\<mu\>-<below|lim
      sup|n\<rightarrow\>\<infty\>> <around*|(|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|liminf
      and limsup of a constant>>>>|<cell|<big|int><around*|(|\<cal-X\><rsub|X\|N>\<cdot\>g|)>
      d\<mu\>-<below|lim sup|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>>>>>
    </eqnarray*>

    As the integrals are finite we have that <math|<below|lim
    sup|n\<rightarrow\>\<infty\>> <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
    d\<mu\>\<leqslant\><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
    d\<mu\>> combing this with <reference|eq 18.473.036> gives\ 

    <\equation*>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      d\<mu\>\<leqslant\><below|lim inf|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>\<leqslant\><below|lim sup|n\<rightarrow\>\<infty\>>
      <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
      d\<mu\>\<leqslant\><big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
      d\<mu\>
    </equation*>

    proving that <math|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)>
    d\<mu\>> exists and that <math|<big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f|)>
    d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>>
    <big|int><around*|(|\<cal-X\><rsub|X\\N>\<cdot\>f<rsub|n>|)> d\<mu\>>.
    Using then <reference|eq 18.467.036> and <reference|eq 18.469.036> we
    have that\ 

    <\equation*>
      <big|int>f d\<mu\>=<below|lim|n\<rightarrow\>\<infty\>><big|int>f<rsub|n>
      d\<mu\>
    </equation*>
  </proof>

  <subsection|Integral of complex functions>

  Using the defintion of the complex numbers [see <reference|complex
  numbers>] we see that as a set <math|\<bbb-C\>> is defined as
  <math|\<bbb-R\>\<times\>\<bbb-R\>=\<bbb-R\><rsup|2>>. Further as all the
  norms on <math|\<bbb-C\>> are equivalent [see <reference|norms in R and C
  are equivalent>] and generate the same topology, so the topology based on
  the maximum norm <math|\<cal-T\><rsub|\<bbb-R\><rsup|2>>> is also the
  canonical topology <math|\<cal-T\><rsub|\<bbb-C\>>> on <math|\<bbb-C\>>
  based on the the complex norm <math|<around*|\||z|\|>=<sqrt|Re<around*|(|z|)><rsup|2>+Img<around*|(|z|)><rsup|2>>>
  [see <reference|norm on the complex numbers>, <reference|Re,Img>]. Hence we
  have\ 

  <\definition>
    The measurable space for the complex numbers iis defined by \ as
    <math|<around*|\<langle\>|\<bbb-C\>,\<cal-B\><around*|[|\<bbb-C\>|]>|\<rangle\>>>
    <math|>where <math|\<bbb-C\>=\<bbb-R\><rsup|2><infix-and>\<cal-B\><around*|[|\<bbb-C\>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-C\>>|]>=\<sigma\><around*|[|\<cal-T\><rsub|\<bbb-R\><rsup|2>>|]>=\<cal-B\><around*|[|\<bbb-R\><rsup|2>|]>>
  </definition>

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

  \;

  \;
</body>

<\initial>
  <\collection>
    <associate|chapter-nr|18>
    <associate|page-first|749>
    <associate|page-medium|papyrus>
    <associate|section-nr|1>
    <associate|subsection-nr|3>
  </collection>
</initial>

<\references>
  <\collection>
    <associate|(A except B) interect C|<tuple|18.2|?>>
    <associate|A except B is (X except B) intersect A |<tuple|18.1|?>>
    <associate|Beppo Levi's Theorem|<tuple|18.236|?>>
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
    <associate|Fatou's Lemma|<tuple|18.237|?>>
    <associate|Lebesgue measurability is transalation
    invariant|<tuple|18.98|?>>
    <associate|Lebesgue measurable sets alternatives|<tuple|18.88|?>>
    <associate|Lebesgue measure is regular|<tuple|18.121|?>>
    <associate|Lebesgue measure is translation invariant|<tuple|18.99|?>>
    <associate|Lebesgue measure space|<tuple|18.81|?>>
    <associate|Lebesgue measure space on R^n|<tuple|18.86|?>>
    <associate|Lebesgue measure spaces are complete|<tuple|18.108|?>>
    <associate|Lebesgue space and compact sets|<tuple|18.92|?>>
    <associate|Lebesgue's Dominated Convergence Theorem|<tuple|18.240|?>>
    <associate|Lower half spaces|<tuple|18.55|?>>
    <associate|R can be covered by open intervals|<tuple|18.78|?>>
    <associate|R^n is a unin of rectangles|<tuple|18.82|?>>
    <associate|[0,1[ as a union of Dyadic intervals|<tuple|18.101|?>>
    <associate|[0,1[^n as a union of half open rectangles|<tuple|18.102|?>>
    <associate|algebra equivalent definitions|<tuple|18.9|?>>
    <associate|algebra of sets|<tuple|18.8|?>>
    <associate|almost complete|<tuple|18.179|?>>
    <associate|almost everywhere equality and characteristic
    function|<tuple|18.181|?>>
    <associate|almost everywhere properties|<tuple|18.182|?>>
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
    <associate|auto-22|<tuple|Carath�odory theorem|?>>
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
    <associate|auto-56|<tuple|18.6|?>>
    <associate|auto-57|<tuple|18.6.1|?>>
    <associate|auto-58|<tuple|18.6.2|?>>
    <associate|auto-59|<tuple|<with|mode|<quote|math>|\<cal-M\><rsup|+><around*|[|X,A|]>>|?>>
    <associate|auto-6|<tuple|<with|mode|<quote|math>|\<sigma\><around*|[|\<cal-A\>|]>>|?>>
    <associate|auto-60|<tuple|<with|mode|<quote|math>|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>|?>>
    <associate|auto-61|<tuple|<with|mode|<quote|math>|<big|int><rsup|+>f
    d\<mu\>>|?>>
    <associate|auto-62|<tuple|18.6.3|?>>
    <associate|auto-63|<tuple|integrable functions on a measure space|?>>
    <associate|auto-64|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
    d\<mu\>>|?>>
    <associate|auto-65|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
    d\<mu\>>|?>>
    <associate|auto-66|<tuple|<with|mode|<quote|math>|f<rsub|X\<rightarrow\>A>>|?>>
    <associate|auto-67|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
    d\<mu\>>|?>>
    <associate|auto-68|<tuple|18.6.4|?>>
    <associate|auto-69|<tuple|18.6.5|?>>
    <associate|auto-7|<tuple|Borel algebra|?>>
    <associate|auto-70|<tuple|18.6.6|?>>
    <associate|auto-8|<tuple|\<cal-B\><around*|[|X,\<cal-T\>|]>|?>>
    <associate|auto-9|<tuple|18.2.1|?>>
    <associate|borel algebra on the extebded reals (1)|<tuple|18.30|?>>
    <associate|borel algebra on the extended real numbers
    (2)|<tuple|18.31|?>>
    <associate|borel algebra on the extended reals (3)|<tuple|18.32|?>>
    <associate|boundaries of a rectangle are unique|<tuple|18.39|?>>
    <associate|bounded intervals|<tuple|18.22|?>>
    <associate|characteristic function is measurable|<tuple|18.157|?>>
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
    <associate|constant simple function|<tuple|18.191|?>>
    <associate|continuous functions are measurable (4)|<tuple|18.156|?>>
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
    <associate|eq 18.324.036.7|<tuple|18.324|?>>
    <associate|eq 18.325.033|<tuple|18.326|?>>
    <associate|eq 18.325.036.7|<tuple|18.325|?>>
    <associate|eq 18.326.033|<tuple|18.327|?>>
    <associate|eq 18.327.033|<tuple|18.328|?>>
    <associate|eq 18.328.033|<tuple|18.329|?>>
    <associate|eq 18.329.033|<tuple|18.330|?>>
    <associate|eq 18.33.021|<tuple|18.38|?>>
    <associate|eq 18.330.033|<tuple|18.331|?>>
    <associate|eq 18.331.033.1|<tuple|18.332|?>>
    <associate|eq 18.333.033|<tuple|18.333|?>>
    <associate|eq 18.334.033|<tuple|18.334|?>>
    <associate|eq 18.335.033|<tuple|18.335|?>>
    <associate|eq 18.336.033|<tuple|18.336|?>>
    <associate|eq 18.337.033|<tuple|18.337|?>>
    <associate|eq 18.338.033|<tuple|18.338|?>>
    <associate|eq 18.339.036.10|<tuple|18.339|?>>
    <associate|eq 18.34.021|<tuple|18.39|?>>
    <associate|eq 18.340.033|<tuple|18.340|?>>
    <associate|eq 18.341.034|<tuple|18.341|?>>
    <associate|eq 18.342.034|<tuple|18.342|?>>
    <associate|eq 18.343.0.34|<tuple|18.343|?>>
    <associate|eq 18.345.034|<tuple|18.345|?>>
    <associate|eq 18.346.033|<tuple|18.346|?>>
    <associate|eq 18.347.033|<tuple|18.347|?>>
    <associate|eq 18.348.034|<tuple|18.348|?>>
    <associate|eq 18.349.034|<tuple|18.349|?>>
    <associate|eq 18.35.021|<tuple|18.40|?>>
    <associate|eq 18.350.0.34|<tuple|18.350|?>>
    <associate|eq 18.351.034|<tuple|18.351|?>>
    <associate|eq 18.352.034|<tuple|18.352|?>>
    <associate|eq 18.353.034|<tuple|18.353|?>>
    <associate|eq 18.354.034|<tuple|18.354|?>>
    <associate|eq 18.355.034|<tuple|18.355|?>>
    <associate|eq 18.356.034|<tuple|18.356|?>>
    <associate|eq 18.357.034|<tuple|18.357|?>>
    <associate|eq 18.358.034|<tuple|18.358|?>>
    <associate|eq 18.359.034|<tuple|18.359|?>>
    <associate|eq 18.36.016|<tuple|18.85|?>>
    <associate|eq 18.36.021|<tuple|18.41|?>>
    <associate|eq 18.360.034|<tuple|18.360|?>>
    <associate|eq 18.361.034|<tuple|18.361|?>>
    <associate|eq 18.362.034|<tuple|18.362|?>>
    <associate|eq 18.363.034|<tuple|18.363|?>>
    <associate|eq 18.364.035|<tuple|18.369|?>>
    <associate|eq 18.364.35.2|<tuple|18.364|?>>
    <associate|eq 18.365.035|<tuple|18.370|?>>
    <associate|eq 18.365.036.11|<tuple|18.365|?>>
    <associate|eq 18.366.035|<tuple|18.371|?>>
    <associate|eq 18.366.035.1|<tuple|18.366|?>>
    <associate|eq 18.367.035|<tuple|18.372|?>>
    <associate|eq 18.367.035.1|<tuple|18.367|?>>
    <associate|eq 18.368.035|<tuple|18.373|?>>
    <associate|eq 18.369.035.1|<tuple|18.368|?>>
    <associate|eq 18.37.016|<tuple|18.86|?>>
    <associate|eq 18.37.021|<tuple|18.42|?>>
    <associate|eq 18.375.035.3|<tuple|18.374|?>>
    <associate|eq 18.376.035.3|<tuple|18.375|?>>
    <associate|eq 18.377.035.3|<tuple|18.376|?>>
    <associate|eq 18.378.035.3|<tuple|18.377|?>>
    <associate|eq 18.379.035.3|<tuple|18.378|?>>
    <associate|eq 18.38.016|<tuple|18.87|?>>
    <associate|eq 18.38.021|<tuple|18.43|?>>
    <associate|eq 18.380.035.3|<tuple|18.379|?>>
    <associate|eq 18.381.035.3|<tuple|18.380|?>>
    <associate|eq 18.382.035.3|<tuple|18.381|?>>
    <associate|eq 18.384.035.3|<tuple|18.383|?>>
    <associate|eq 18.385.035|<tuple|18.384|?>>
    <associate|eq 18.386.035|<tuple|18.386|?>>
    <associate|eq 18.386.035.4|<tuple|18.385|?>>
    <associate|eq 18.388.035|<tuple|18.388|?>>
    <associate|eq 18.389.035|<tuple|18.389|?>>
    <associate|eq 18.39.016|<tuple|18.87|?>>
    <associate|eq 18.39.022|<tuple|18.61|?>>
    <associate|eq 18.390.035|<tuple|18.390|?>>
    <associate|eq 18.391.035|<tuple|18.391|?>>
    <associate|eq 18.392.035|<tuple|18.392|?>>
    <associate|eq 18.393.035|<tuple|18.393|?>>
    <associate|eq 18.394.035|<tuple|18.394|?>>
    <associate|eq 18.395.035|<tuple|18.395|?>>
    <associate|eq 18.396.035|<tuple|18.396|?>>
    <associate|eq 18.397.035|<tuple|18.397|?>>
    <associate|eq 18.398.035|<tuple|18.398|?>>
    <associate|eq 18.399.035|<tuple|18.400|?>>
    <associate|eq 18.399.035.10|<tuple|18.399|?>>
    <associate|eq 18.4.016|<tuple|18.7|?>>
    <associate|eq 18.40.016|<tuple|18.89|?>>
    <associate|eq 18.40.022|<tuple|18.62|?>>
    <associate|eq 18.400.035|<tuple|18.401|?>>
    <associate|eq 18.401.035|<tuple|18.402|?>>
    <associate|eq 18.403.35|<tuple|18.403|?>>
    <associate|eq 18.404.035|<tuple|18.404|?>>
    <associate|eq 18.405.35|<tuple|18.405|?>>
    <associate|eq 18.406.035|<tuple|18.406|?>>
    <associate|eq 18.407.035|<tuple|18.407|?>>
    <associate|eq 18.408.035|<tuple|18.408|?>>
    <associate|eq 18.409.035|<tuple|18.409|?>>
    <associate|eq 18.41.016|<tuple|18.90|?>>
    <associate|eq 18.41.022|<tuple|18.63|?>>
    <associate|eq 18.410.035|<tuple|18.411|?>>
    <associate|eq 18.410.35.1|<tuple|18.410|?>>
    <associate|eq 18.412.035|<tuple|18.412|?>>
    <associate|eq 18.413.035|<tuple|18.413|?>>
    <associate|eq 18.414.035|<tuple|18.416|?>>
    <associate|eq 18.415.035|<tuple|18.417|?>>
    <associate|eq 18.416.035|<tuple|18.418|?>>
    <associate|eq 18.417.035|<tuple|18.419|?>>
    <associate|eq 18.418.035|<tuple|18.420|?>>
    <associate|eq 18.419.035|<tuple|18.421|?>>
    <associate|eq 18.42.016|<tuple|18.91|?>>
    <associate|eq 18.42.022|<tuple|18.64|?>>
    <associate|eq 18.420.035|<tuple|18.422|?>>
    <associate|eq 18.421.035|<tuple|18.423|?>>
    <associate|eq 18.422.035|<tuple|18.424|?>>
    <associate|eq 18.423.035|<tuple|18.425|?>>
    <associate|eq 18.424.035|<tuple|18.426|?>>
    <associate|eq 18.425.035|<tuple|18.427|?>>
    <associate|eq 18.428.035|<tuple|18.414|?>>
    <associate|eq 18.429.035|<tuple|18.415|?>>
    <associate|eq 18.43.016|<tuple|18.92|?>>
    <associate|eq 18.43.022|<tuple|18.65|?>>
    <associate|eq 18.430.036.1|<tuple|18.428|?>>
    <associate|eq 18.432.036|<tuple|18.431|?>>
    <associate|eq 18.433.036|<tuple|18.432|?>>
    <associate|eq 18.434.036|<tuple|18.433|?>>
    <associate|eq 18.436.036|<tuple|18.434|?>>
    <associate|eq 18.437.036.1|<tuple|18.435|?>>
    <associate|eq 18.438.036|<tuple|18.436|?>>
    <associate|eq 18.439.036|<tuple|18.437|?>>
    <associate|eq 18.44.016|<tuple|18.93|?>>
    <associate|eq 18.44.022|<tuple|18.66|?>>
    <associate|eq 18.44.033|<tuple|18.44|?>>
    <associate|eq 18.44.034|<tuple|18.344|?>>
    <associate|eq 18.440.036|<tuple|18.438|?>>
    <associate|eq 18.441.036|<tuple|18.439|?>>
    <associate|eq 18.442.036|<tuple|18.440|?>>
    <associate|eq 18.443.036|<tuple|18.441|?>>
    <associate|eq 18.444.036|<tuple|18.442|?>>
    <associate|eq 18.445.036|<tuple|18.443|?>>
    <associate|eq 18.446.036|<tuple|18.444|?>>
    <associate|eq 18.447.036|<tuple|18.445|?>>
    <associate|eq 18.448.036|<tuple|18.446|?>>
    <associate|eq 18.449.036|<tuple|18.447|?>>
    <associate|eq 18.45.016|<tuple|18.94|?>>
    <associate|eq 18.45.022|<tuple|18.67|?>>
    <associate|eq 18.45.033|<tuple|18.45|?>>
    <associate|eq 18.450.036|<tuple|18.448|?>>
    <associate|eq 18.451.036|<tuple|18.449|?>>
    <associate|eq 18.452.036|<tuple|18.450|?>>
    <associate|eq 18.453.036|<tuple|18.451|?>>
    <associate|eq 18.454.036|<tuple|18.452|?>>
    <associate|eq 18.455.036|<tuple|18.453|?>>
    <associate|eq 18.456.036|<tuple|18.454|?>>
    <associate|eq 18.457.036|<tuple|18.455|?>>
    <associate|eq 18.458.036|<tuple|18.456|?>>
    <associate|eq 18.459.036|<tuple|18.457|?>>
    <associate|eq 18.46.016|<tuple|18.95|?>>
    <associate|eq 18.46.022|<tuple|18.68|?>>
    <associate|eq 18.46.033|<tuple|18.46|?>>
    <associate|eq 18.460.036|<tuple|18.458|?>>
    <associate|eq 18.461.036|<tuple|18.459|?>>
    <associate|eq 18.463.036|<tuple|18.460|?>>
    <associate|eq 18.463.036.1|<tuple|18.461|?>>
    <associate|eq 18.464.036|<tuple|18.462|?>>
    <associate|eq 18.465.036|<tuple|18.463|?>>
    <associate|eq 18.466.036|<tuple|18.464|?>>
    <associate|eq 18.467.036|<tuple|18.465|?>>
    <associate|eq 18.468.036|<tuple|18.466|?>>
    <associate|eq 18.469.036|<tuple|18.467|?>>
    <associate|eq 18.47.016|<tuple|18.96|?>>
    <associate|eq 18.47.022|<tuple|18.69|?>>
    <associate|eq 18.47.033|<tuple|18.47|?>>
    <associate|eq 18.470.036|<tuple|18.468|?>>
    <associate|eq 18.471.036|<tuple|18.468|?>>
    <associate|eq 18.472.036|<tuple|18.470|?>>
    <associate|eq 18.473.036|<tuple|18.471|?>>
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
    <associate|eq 18.67.035|<tuple|18.387|?>>
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
    <associate|f+ and f-|<tuple|18.174|?>>
    <associate|f=g almost everywhere property|<tuple|18.183|?>>
    <associate|finite sum of mesaurable functions is measurable
    (1)|<tuple|18.170|?>>
    <associate|finite sum of mesaurable functions is measurable
    (2)|<tuple|18.173|?>>
    <associate|finite unions and intersections|<tuple|18.7|?>>
    <associate|function comparizatons are measurable|<tuple|18.161|?>>
    <associate|generated sigma algebra|<tuple|18.17|?>>
    <associate|half open rectangle as intersection of open
    sets|<tuple|18.51|?>>
    <associate|half spaces are Lebesgue measurable in R^n|<tuple|18.87|?>>
    <associate|induced outer inner measure|<tuple|18.114|?>>
    <associate|induced outer measure is a outer measure|<tuple|18.116|?>>
    <associate|inner/outer regularity|<tuple|18.118|?>>
    <associate|integrability of function with domain A|<tuple|18.216|?>>
    <associate|integrability of function with domain X on A|<tuple|18.213|?>>
    <associate|integrability of non negative functions (2)|<tuple|18.220|?>>
    <associate|integrability where X is A|<tuple|18.219|?>>
    <associate|integrable functions|<tuple|18.210|?>>
    <associate|integral difference|<tuple|18.222|?>>
    <associate|integral of everywhere zero function|<tuple|18.205|?>>
    <associate|integral of positive function properties (2)|<tuple|18.208|?>>
    <associate|integral of positive functions (1)|<tuple|18.207|?>>
    <associate|integral of positive functions properties
    (1)|<tuple|18.206|?>>
    <associate|integral of positive measurable functions|<tuple|18.201|?>>
    <associate|integral of sum non negative positive
    functions|<tuple|18.209|?>>
    <associate|integral of the null function|<tuple|18.204|?>>
    <associate|integral properties (10)|<tuple|18.223|?>>
    <associate|integral properties (11)|<tuple|18.224|?>>
    <associate|integral properties (11.1)|<tuple|18.225|?>>
    <associate|integral properties (12)|<tuple|18.226|?>>
    <associate|integral properties (14)|<tuple|18.227|?>>
    <associate|integral properties (15|<tuple|18.229|?>>
    <associate|integral properties (16)|<tuple|18.230|?>>
    <associate|integral properties (17)|<tuple|18.231|?>>
    <associate|integral properties (18)|<tuple|18.232|?>>
    <associate|intersection of a class of Dynkin classes is a Dynkin
    class|<tuple|18.129|?>>
    <associate|intersection of sigma algebras is a sigma
    algebra|<tuple|18.16|?>>
    <associate|interval identities|<tuple|18.25|?>>
    <associate|lemma 18.28 set relations|<tuple|18.28|?>>
    <associate|lemma for almost everywhere monotone convergence
    theorem|<tuple|18.234|?>>
    <associate|length of interval is increasing|<tuple|18.42|?>>
    <associate|liminf or limsup of functions|<tuple|18.163|?>>
    <associate|lower half open spaces|<tuple|18.53|?>>
    <associate|lower half open spaces are open|<tuple|18.54|?>>
    <associate|maximum of finite set of functions|<tuple|18.166|?>>
    <associate|maximum of measurable functions|<tuple|18.167|?>>
    <associate|maximum of non negative real valued simple
    functions|<tuple|18.197|?>>
    <associate|measurability of extension of a function|<tuple|18.217|?>>
    <associate|measurable extended function space|<tuple|18.145|?>>
    <associate|measurable function|<tuple|18.137|?>>
    <associate|measurable function and limit|<tuple|18.184|?>>
    <associate|measurable function and restriction|<tuple|18.141|?>>
    <associate|measurable function as a limit of simple
    functions|<tuple|18.178|?>>
    <associate|measurable function condition (1)|<tuple|18.151|?>>
    <associate|measurable function condition (2)|<tuple|18.153|?>>
    <associate|measurable function condition and restricted
    functions|<tuple|18.142|?>>
    <associate|measurable function space|<tuple|18.146|?>>
    <associate|measurable functions and generated algebra|<tuple|18.140|?>>
    <associate|measurable functions properties (1)|<tuple|18.164|?>>
    <associate|measurable functions properties (2)|<tuple|18.168|?>>
    <associate|measurable functions properties (3)|<tuple|18.169|?>>
    <associate|measurable functions properties (4)|<tuple|18.172|?>>
    <associate|measurable functions properties (5)|<tuple|18.176|?>>
    <associate|measurable functions properties (6)|<tuple|18.177|?>>
    <associate|measurable positive functions|<tuple|18.199|?>>
    <associate|measurable set alternative definition|<tuple|18.73|?>>
    <associate|measurable sets and null sets|<tuple|18.74|?>>
    <associate|measurable space|<tuple|18.13|?>>
    <associate|measure|<tuple|18.61|?>>
    <associate|measure is subadditive|<tuple|18.66|?>>
    <associate|measure properties (1)|<tuple|18.64|?>>
    <associate|measure properties (2)|<tuple|18.67|?>>
    <associate|measure regularity lemma|<tuple|18.122|?>>
    <associate|measureable set|<tuple|18.72|?>>
    <associate|monotone convergence theorem|<tuple|18.235|?>>
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
    <associate|set of simple functions|<tuple|18.189|?>>
    <associate|sigma algebra|<tuple|<with|mode|<quote|math>|\<sigma\>>-algebra|?>>
    <associate|sigma algebra equivalent definitions|<tuple|18.14|?>>
    <associate|sigma algebras are Dynkin classes|<tuple|18.127|?>>
    <associate|simple function|<tuple|18.158|?>>
    <associate|simple function as a finite sum|<tuple|18.185|?>>
    <associate|simple function condition (2)|<tuple|18.190|?>>
    <associate|simple function condition (3)|<tuple|18.195|?>>
    <associate|simple function integral extension|<tuple|18.203|?>>
    <associate|simple function integral properties (4)|<tuple|18.198|?>>
    <associate|simple function properties|<tuple|18.186|?>>
    <associate|simple function properties (1)|<tuple|18.159|?>>
    <associate|simple functions are measurable|<tuple|18.160|?>>
    <associate|simple functions integral (1)|<tuple|18.192|?>>
    <associate|simple functions integral properties (1)|<tuple|18.196|?>>
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
    <associate|zero function is measurable|<tuple|18.155|?>>
    <associate|{x\<less\>f} properties|<tuple|18.150|?>>
    <associate|{x\<less\>f} properties (1)|<tuple|18.152|?>>
    <associate|\|f(x)\| as f+ f-|<tuple|18.175|?>>
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

      <tuple|<tuple|Carath�odory theorem>|<pageref|auto-22>>

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

      <tuple|<tuple|<with|mode|<quote|math>|\<cal-M\><rsup|+><around*|[|X,A|]>>>|<pageref|auto-59>>

      <tuple|<tuple|<with|mode|<quote|math>|<wide|\<cal-M\><rsup|+><around*|[|X,\<cal-A\>|]>|\<wide-bar\>>>>|<pageref|auto-60>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsup|+>f
      d\<mu\>>>|<pageref|auto-61>>

      <tuple|<tuple|integrable functions on a measure
      space>|<pageref|auto-63>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
      d\<mu\>>>|<pageref|auto-64>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
      d\<mu\>>>|<pageref|auto-65>>

      <tuple|<tuple|<with|mode|<quote|math>|f<rsub|X\<rightarrow\>A>>>|<pageref|auto-66>>

      <tuple|<tuple|<with|mode|<quote|math>|<big|int><rsub|A>f
      d\<mu\>>>|<pageref|auto-67>>
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

      <with|par-left|<quote|1tab>|18.3.2<space|2spc>Carath�odory theorem
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-21>>

      <with|par-left|<quote|1tab>|18.3.3<space|2spc>The Carath�odory theorem
      and the set of real numbers <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-23>>

      <with|par-left|<quote|1tab>|18.3.4<space|2spc>The Carath�odory theorem
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

      18.6<space|2spc>The measure integral
      <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-56>

      <with|par-left|<quote|1tab>|18.6.1<space|2spc>Integral of simple
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-57>>

      <with|par-left|<quote|1tab>|18.6.2<space|2spc>Integral of non negative
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-58>>

      <with|par-left|<quote|1tab>|18.6.3<space|2spc>Integral of integrable
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-62>>

      <with|par-left|<quote|1tab>|18.6.4<space|2spc>Properties of the
      integral <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-68>>

      <with|par-left|<quote|1tab>|18.6.5<space|2spc>Limit theorems for
      integrable functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-69>>

      <with|par-left|<quote|1tab>|18.6.6<space|2spc>Integral of complex
      functions <datoms|<macro|x|<repeat|<arg|x>|<with|font-series|medium|<with|font-size|1|<space|0.2fn>.<space|0.2fn>>>>>|<htab|5mm>>
      <no-break><pageref|auto-70>>
    </associate>
  </collection>
</auxiliary>