<TeXmacs|1.99.7>

<style|book>

<\body>
  <\definition>
    Given <math|n\<in\>\<bbb-N\>> we have that <math|n!> is defined
    recursively by <math|n!=<choice|<tformat|<table|<row|<cell|1 if
    n=0>>|<row|<cell|n\<cdot\><around*|(|n-1|)>! if n\<gtr\>1>>>>>>
  </definition>

  <\definition>
    <label|binomial constant><index|binomial
    constant><index|<math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>>Given
    <math|n\<in\>\<bbb-N\>> and <math|k\<in\><around*|{|0,\<ldots\>,n|}>>
    then <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>=<frac|n!|k!\<cdot\><around*|(|n-k|)>!>>
  </definition>

  <\note>
    <label|special cases of the binomial constant>If <math|n\<in\>\<bbb-N\>>
    then <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|0>>>>>|)>=1>
    and <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|n>>>>>|)>=1>
  </note>

  <\proof>
    <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|0>>>>>|)>=<frac|n!|0!\<cdot\><around*|(|n-0|)>!>=<frac|n!|1\<cdot\>n!>=1>
    and <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|n>>>>>|)>=<frac|n!|n!\<cdot\><around*|(|n-n|)>!>=<frac|1|0!>=1>
  </proof>

  <\theorem>
    <label|basic binomial property>If <math|n\<in\>\<bbb-N\><rsub|0>> and
    <math|0\<less\>k\<leqslant\>n> then <math|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>+<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>=<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>>
  </theorem>

  <\proof>
    \ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>+<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>>|<cell|=>|<cell|<frac|n!|k!\<cdot\><around*|(|n-k|)>!>+<frac|n!|<around*|(|k-1|)>!\<cdot\><around*|(|n-<around*|(|k-1|)>|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>|k!\<cdot\><around*|(|n-k|)>!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>>+<frac|n!\<cdot\>k|k\<cdot\><around*|(|k-1|)>!\<cdot\><around*|(|n+1-k|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|n+1-k|)>|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>+<frac|n!\<cdot\>k|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|n!\<cdot\><around*|(|n+1|)>|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|n+1|)>!|k!\<cdot\><around*|(|<around*|(|n+1|)>-k|)>!>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>>>>>
    </eqnarray*>
  </proof>

  <\theorem>
    <label|binomial formula>Let <math|F> be a field,
    <math|n\<in\>\<bbb-N\><rsub|0>>, <math|a,b\<in\>F> then
    <math|<around*|(|a+b|)><rsup|n>=<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|n-k>|)>>
  </theorem>

  <\proof>
    We prove this theorem by mathematical induction so let
    <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|(|a+b|)><rsup|n>=<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n-k|)>>|)>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>><math|<big|sum><rsub|k=0><rsup|1><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|1>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n-k|)>>|)>=<around*|(|<stack|<tformat|<table|<row|<cell|1>>|<row|<cell|0>>>>>|)>\<cdot\>a<rsup|0>\<cdot\>b<rsup|<around*|(|1-0|)>>+<around*|(|<stack|<tformat|<table|<row|<cell|1>>|<row|<cell|1>>>>>|)>\<cdot\>a<rsup|1>\<cdot\>b<rsup|<around*|(|1-1|)>>\<equallim\><rsub|<text|<reference|special
      cases of the binomial constant>>>b+a=<around*|(|a+b|)><rsup|1>> proving
      that <math|1\<in\>\<cal-S\>>.

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|(|a+b|)><rsup|n+1>>|<cell|=>|<cell|<around*|(|a+b|)><rsup|n>\<cdot\><around*|(|a+b|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|(|<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n-k|)>>|)>|)>\<cdot\><around*|(|a+b|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k+1>\<cdot\>b<rsup|<around*|(|n-k|)>>|)>+<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|n-k+1|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k+1>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-<around*|(|k+1|)>|)>>|)>+<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=1><rsup|n+1><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>+<big|sum><rsub|k=0><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|n>>>>>|)>\<cdot\>a<rsup|n+1>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-<around*|(|n+1|)>|)>>+<big|sum><rsub|k=1><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>+<big|sum><rsub|k=1><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>+<around*|(|<stack|<tformat|<table|<row|<cell|0>>|<row|<cell|0>>>>>|)>\<cdot\>a<rsup|0>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-0|)>>>>|<row|<cell|>|<cell|=>|<cell|a<rsup|n+1>\<cdot\>b<rsup|0>+<big|sum><rsub|k=1><rsup|n><around*|(|<around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k-1>>>>>|)>+<around*|(|<stack|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>+a<rsup|0>\<cdot\>b<rsup|n+1>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|basic
        binomial property>>>>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|0>>>>>|)>\<cdot\>a<rsup|n+1>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-<around*|(|n+1|)>|)>>+<big|sum><rsub|k=1><rsup|n><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>+<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|0>>>>>|)>\<cdot\>a<rsup|0>\<cdot\>b<rsup|n+1>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|k=0><rsup|n+1><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|n+1>>|<row|<cell|k>>>>>|)>\<cdot\>a<rsup|k>\<cdot\>b<rsup|<around*|(|<around*|(|n+1|)>-k|)>>|)>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>
    </description>
  </proof>

  The following lemma shows how we can split up a set
  <math|<around*|{|1,\<ldots\>,2\<cdot\>n|}>> in a set of even and odd
  numbers.

  <\lemma>
    <label|divide in even and odd numbers>Let <math|n\<in\>\<bbb-N\><rsub|0>>
    then <math|<around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
    and <math|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|sqcup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
  </lemma>

  <\proof>
    We prove this by induction so let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|{|0,\<ldots\>,2\<cdot\>n|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|1,\<ldots\>,n-1|}>|}>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>then
      <math|<around*|{|0,1,2|}>=<around*|{|0,2|}><big|cup><around*|{|1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0|}>|}>>
      proving that <math|1\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|1,\<ldots\>,2\<cdot\><around*|(|n+1|)>|}>>|<cell|=>|<cell|<around*|{|1,\<ldots\>,2\<cdot\>n|}><big|cup><around*|{|2\<cdot\>n+1,2\<cdot\><around*|(|n+1|)>|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>n+1|}><big|cup><around*|{|2\<cdot\><around*|(|n+1|)>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n+1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n|}>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n+1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}>>>>>
      </eqnarray*>

      proving that <math|n+1\<in\>\<cal-S\>>.\ 
    </description>

    It remains to prove that <math|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>=\<emptyset\>>
    so assume that <math|l\<in\><around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
    then there exists a <math|k\<in\><around*|{|0,\<ldots\>,n|}>> and a
    <math|k<rprime|'>\<in\><around*|{|0,\<ldots\>,n-1|}>> such that
    <math|2\<cdot\>k=l=2\<cdot\>k<rprime|'>+1> which means that a even number
    is equal to a odd number which is not possible (see <reference|even and
    odd numbers>). Hence <math|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>=\<emptyset\>>.\ 

    For the second part let <math|\<cal-S\>=<around*|{|n\<in\>\<bbb-N\><rsub|0>\|<around*|{|0,\<ldots\>,2\<cdot\>n-1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>|}>>
    then we have\ 

    <\description>
      <item*|<math|1\<in\>\<cal-S\>>>then
      <math|<around*|{|0,1|}>=<around*|{|0|}><big|cup><around*|{|1|}>=<around*|{|2\<cdot\>k\|k\<in\><around*|{|0|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0|}>|}>>
      proving that <math|0\<in\>\<cal-S\>>

      <item*|<math|n\<in\>\<cal-S\>\<Rightarrow\>n+1\<in\>\<cal-S\>>>\ 

      <\eqnarray*>
        <tformat|<table|<row|<cell|<around*|{|1,\<ldots\>,2\<cdot\><around*|(|n+1|)>-1|}>>|<cell|=>|<cell|<around*|{|1,\<ldots\>,2\<cdot\>n+1|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|1,\<ldots\>,2\<cdot\>n-1|}><big|cup><around*|{|2\<cdot\>n+1|}><big|cup><around*|{|2\<cdot\>n|}>>>|<row|<cell|>|<cell|\<equallim\><rsub|n\<in\>\<cal-S\>>>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cup><around*|{|2\<cdot\>n+1|}><big|cup><around*|{|2\<cdot\>n|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n|}>|}>>>|<row|<cell|>|<cell|=>|<cell|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}><big|cup><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,<around*|(|n+1|)>-1|}>|}>>>>>
      </eqnarray*>

      \ proving that <math|n+1\<in\>\<cal-S\>>
    </description>

    If <math|l\<in\><around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>>
    then there exists a <math|k\<in\><around*|{|0,\<ldots\>,n-1|}>> and a
    <math|k<rprime|'>\<in\><around*|{|0,\<ldots\>,n-1|}>> such that
    <math|2\<cdot\>k=l=2\<cdot\>k<rprime|'>+1> which means that a even number
    is equal to a odd number which is not possible (see <reference|even and
    odd numbers>). Hence <math|<around*|{|2\<cdot\>k\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}><big|cap><around*|{|2\<cdot\>k+1\|k\<in\><around*|{|0,\<ldots\>,n-1|}>|}>=\<emptyset\>>

    \;
  </proof>

  <\lemma>
    Let <math|n\<in\>\<bbb-N\><rsub|0>> we have for <math|k=2\<cdot\>n> and
    <math|\<zeta\>=<around*|(|1+<frac|i|k>|)><rsup|2>> that
    <math|Re<around*|(|\<zeta\><rsup|k>|)>\<less\>0\<less\>Img<around*|(|\<zeta\><rsup|k>|)>>
  </lemma>

  <\proof>
    We have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|1+<frac|i|k>|)><rsup|2\<cdot\>k>>|<cell|=>|<cell|<around*|(|<frac|i|k>+1|)><rsup|2\<cdot\>k>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l=0><rsup|2\<cdot\>k><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|l>>>>>|)><around*|(|<frac|i|k>|)><rsup|l>\<cdot\>1<rsup|2\<cdot\>k-l>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,2\<cdot\>k|}>><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|l>>>>>|)><around*|(|<frac|i|k>|)><rsup|l>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|divide
      in even and odd numbers>>>>|<cell|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,k|}>|}><big|sqcup><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|0,\<ldots\>,k-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|l>>>>>|)><around*|(|<frac|i|k>|)><rsup|l>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j\|j\<in\><around*|{|0,\<ldots\>,k|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|l>>>>>|)><around*|(|<frac|i|k>|)><rsup|l>|)>|)>+<around*|(|<big|sum><rsub|l\<in\><around*|{|2\<cdot\>j+1\|j\<in\><around*|{|0,\<ldots\>,k-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|l>>>>>|)><around*|(|<frac|i|k>|)><rsup|l>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,k|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>|)>+<around*|(|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,k-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j+1>|)>|)>>>>>
    </eqnarray*>

    Further as <math|k=2\<cdot\>n>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,k|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>>|<cell|\<equallim\><rsub|>>|<cell|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,2\<cdot\>n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|divide
      in even and odd numbers>>>>|<cell|<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l\|l\<in\><around*|{|0,\<ldots\>,n|}>|}><big|sqcup><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l\|l\<in\><around*|{|0,\<ldots\>,n|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>|)>+<around*|(|<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>2\<cdot\>l>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>2\<cdot\>l>|)>|)>+<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l>>>>>|)><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l>|)>|)>+<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+2>>>>>|)><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l+2>|)>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|power
      of i>>>>|<cell|<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>|)>-<around*|(|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+2>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>0>>>>>|)><frac|1|k<rsup|4\<cdot\>0>>+<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>0+2>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>0+2>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+2>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|l\<in\><around*|{|2,\<ldots\>,n|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l>>|)>-<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+2>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l+2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\><around*|(|l+1|)>>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\><around*|(|l+1|)>>>|)>-<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|l\<in\><around*|{|1,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+2>>|)>-<big|sum><rsub|l\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>|)>-<big|sum><rsub|l\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>|)>>>>>
    </eqnarray*>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,k-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j+1>|)>>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|0,\<ldots\>,2\<cdot\>n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j+1>|)>+<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\>j+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l|)>+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l|)>+1>|)>+<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>|)>>>|<row|<cell|>|<cell|=>|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+1>>>>>|)><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l+1>|)>+<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+3>>>>>|)><around*|(|<frac|i|k>|)><rsup|4\<cdot\>l+3>|)>>>|<row|<cell|>|<cell|\<equallim\><rsub|<text|<reference|power
      of i>>>>|<cell|<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+1>>>>>|)>\<cdot\><frac|i|k<rsup|4\<cdot\>l+1>>|)>+<big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+3>>>>>|)>\<cdot\><frac|-i|k<rsup|4\<cdot\>l+3>>|)>>>|<row|<cell|>|<cell|=>|<cell|i\<cdot\><big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+1>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l+1>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4\<cdot\>l+3>>>>>|)>\<cdot\><frac|1|k<rsup|4\<cdot\>l+3>>|)>>>|<row|<cell|>|<cell|=>|<cell|i\<cdot\><big|sum><rsub|l\<in\><around*|{|0,\<ldots\>,n-1|}>><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>-1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>-1>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\><around*|(|2\<cdot\>l+1|)>+1>>|)>>>|<row|<cell|>|<cell|=>|<cell|i\<cdot\><big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j-1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j-1>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+1>>|)>>>>>
    </eqnarray*>

    To summarize we have that\ 

    <\equation>
      <label|eq 1.476>Re<around*|(|<around*|(|1+<frac|i|k>|)><rsup|2\<cdot\>k>|)>=1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>+<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>><rsup|><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>|)>
    </equation>

    <\equation>
      <label|eq 2.746>Img<around*|(|<around*|(|1+<frac|i|k>|)><rsup|2\<cdot\>k>|)>=<big|sum><rsub|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|0,\<ldots\>,n-1|}>|}>><around*|(|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j-1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j-1>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+1>>|)>
    </equation>

    Further we have that as <math|2\<leqslant\>k\<Rightarrow\>4\<leqslant\>2\<cdot\>k>

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|2!\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>\<cdot\><around*|(|2\<cdot\>k-1|)>\<cdot\><around*|(|2\<cdot\>k-2|)>!|2\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|k\<cdot\><around*|(|2\<cdot\>k-1|)>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\>k<rsup|2>-k>>|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|4!\<cdot\><around*|(|2\<cdot\>k-4|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|2\<cdot\>k-2|)>|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-4|)>!\<cdot\><around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|2\<cdot\>k-2|)>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!\<cdot\><around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|2\<cdot\>k-2|)>|4\<cdot\>3\<cdot\>2!\<cdot\><around*|(|2\<cdot\>k-2|)>!>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|2\<cdot\>k-2|)>|12>\<cdot\><around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|<around*|(|2\<cdot\>k-3|)>\<cdot\><around*|(|k-1|)>|6>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|2\<cdot\>k<rsup|2>-2\<cdot\>k-3\<cdot\>k+3|6>>>|<row|<cell|>|<cell|=>|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6>>>>>
    </eqnarray*>

    Hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><around*|[|<frac|1|k<rsup|2>>-<frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6\<cdot\>k<rsup|4>>|]>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>\<cdot\><around*|[|1-<frac|2\<cdot\>k<rsup|2>-5\<cdot\>k+3|6\<cdot\>k<rsup|2>>|]>>>|<row|<cell|>|<cell|=>|<cell|1-<frac|2\<cdot\>k<rsup|2>-k|k<rsup|2>>\<cdot\><around*|[|1-<frac|1|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|]>>>|<row|<cell|>|<cell|=>|<cell|1-<around*|(|2-<frac|1|k<rsup|>>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>>>
    </eqnarray*>

    As <math|0\<less\>2\<leqslant\>k> we have
    <math|<frac|1|k>\<leqslant\><frac|1|2>\<Rightarrow\>-<frac|1|2>\<leqslant\>-<frac|1|k>>
    hence <math|<around*|(|2-<frac|1|k>|)>\<geqslant\><around*|(|2-<frac|1|2>|)>=<frac|3|2>\<Rightarrow\>-<frac|3|2>\<geqslant\><around*|(|2-<frac|1|k>|)>>
    further as <math|2\<leqslant\>k\<Rightarrow\>10\<leqslant\>5\<cdot\>k\<Rightarrow\>0\<less\>7\<leqslant\>5\<cdot\>k-3>
    hence <math|0\<leqslant\><frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>>
    so <math|-<around*|(|2-<frac|1|k>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>\<leqslant\>-<frac|3|2>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>
    form which we have\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|1-<around*|(|2-<frac|1|k<rsup|>>|)>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>|<cell|\<leqslant\>>|<cell|1-<frac|3|2>\<cdot\><around*|(|<frac|2|3>+<frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>|)>>>|<row|<cell|>|<cell|=>|<cell|1-1-<frac|3|2>\<cdot\><frac|5\<cdot\>k-3|6\<cdot\>k<rsup|2>>>>|<row|<cell|>|<cell|=>|<cell|<frac||><frac|5\<cdot\>k-3|4\<cdot\>k<rsup|2>>>>|<row|<cell|>|<cell|\<less\>>|<cell|0>>>>
    </eqnarray*>

    So we have\ 

    <\equation>
      <label|eq 3.476>1-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2>>>>>|)>\<cdot\><frac|1|k<rsup|2>>+<around*|(|<tabular*|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|4>>>>>|)>\<cdot\><frac|1|k<rsup|4>>\<less\>0
    </equation>

    Further for <math|j\<in\><around*|{|2\<cdot\>l+1\|l\<in\><around*|{|1,\<ldots\>,n-1|}>|}>>
    we have <math|1\<leqslant\>j\<leqslant\>2\<cdot\><around*|(|n-1|)>+1=2\<cdot\>n-1=k-1\<less\>k>
    hence

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j+2|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2\<cdot\>j+2>>-<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j|)>!\<cdot\>k<rsup|2\<cdot\>j>>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j|)>!>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\><around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j|)>!>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j|)>!\<cdot\>k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>j|)>!>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j|)>!\<cdot\>k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!>|)>>>|<row|<cell|>|<cell|=>|<cell|<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>>|)>>>>>
    </eqnarray*>

    proving that\ 

    <\equation>
      <label|eq 4.476><around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>=<frac|<around*|(|2\<cdot\>k|)>!|<around*|(|2\<cdot\>j|)>!\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-2|)>!\<cdot\>k<rsup|2\<cdot\>j>>\<cdot\><around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>>|)>
    </equation>

    Now as <math|0\<leqslant\>1\<less\>j\<less\>k> we have

    <\equation>
      <label|eq 5.476>0\<less\><around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>,<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>
    </equation>

    and\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>-<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>>|<cell|=>|<cell|2\<cdot\><around*|[|<around*|(|j+1|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>-<around*|(|k-1|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>|]>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|[|2\<cdot\>j<rsup|2>\<cdot\>k<rsup|2>+j\<cdot\>k<rsup|2>+2\<cdot\>j\<cdot\>k<rsup|2>+k<rsup|2>-<around*|[|2\<cdot\>k<rsup|2>-2\<cdot\>k\<cdot\>j-k-2\<cdot\>k+2\<cdot\>j+1|]>|]>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|[|2\<cdot\>j<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>j\<cdot\>k<rsup|2>+k<rsup|2>-2\<cdot\>k<rsup|2>+2\<cdot\>k\<cdot\>j+k+2\<cdot\>k-2\<cdot\>j-1|]>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|[|2\<cdot\>j<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>j\<cdot\>k<rsup|2>-k<rsup|2>+2\<cdot\>k\<cdot\>j+k+2\<cdot\>k-2\<cdot\>j-1|]>>>|<row|<cell|>|<cell|\<gtr\><rsub|>>|<cell|2\<cdot\><around*|[|2\<cdot\>j<rsup|2>\<cdot\>k<rsup|2>+3\<cdot\>k<rsup|2>-k<rsup|2>+2\<cdot\>k\<cdot\>j+k+2\<cdot\>k-2\<cdot\>j-1|]>>>|<row|<cell|>|<cell|=>|<cell|2\<cdot\><around*|[|2\<cdot\>j<rsup|2>\<cdot\>k<rsup|2>+2\<cdot\>k<rsup|2>+2\<cdot\>k\<cdot\>j+<around*|(|k-1|)>+2\<cdot\><around*|(|k-j|)>|]>>>|<row|<cell|>|<cell|\<gtr\>>|<cell|0>>>>
    </eqnarray*>

    hence using the above, <reference|properties of positive, negative real
    numbers> and <reference|eq 5.476> we have that
    \ <math|<around*|(|<frac|1|<around*|(|2\<cdot\>j+2|)>\<cdot\><around*|(|2\<cdot\>j+1|)>\<cdot\>k<rsup|2>>-<frac|1|<around*|(|2\<cdot\>k-2\<cdot\>j|)>\<cdot\><around*|(|2\<cdot\>k-2\<cdot\>j-1|)>>|)>\<less\>0>
    so that by <reference|eq 4.476> we have\ 

    <\equation>
      <label|eq 6.476><around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+2>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+2>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j>>\<less\>0
    </equation>

    Combining then <reference|eq 3.476> and <reference|eq 6.476> on
    <reference|eq 1.476> proves that

    <\equation>
      <label|eq 7.476>Re<around*|(|<around*|(|1+<frac|i|k>|)><rsup|2\<cdot\>k>|)>\<less\>0
    </equation>

    Now to extmiate the imaginair part note that\ 

    <\eqnarray*>
      <tformat|<table|<row|<cell|<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j-1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j-1>>-<around*|(|<stack|<tformat|<table|<row|<cell|2\<cdot\>k>>|<row|<cell|2\<cdot\>j+1>>>>>|)>\<cdot\><frac|1|k<rsup|2\<cdot\>j+1>>>|<cell|=>|<cell|>>>>
    </eqnarray*>

    \;
  </proof>
</body>

<\references>
  <\collection>
    <associate|auto-1|<tuple|2|?>>
    <associate|auto-2|<tuple|2|?>>
    <associate|basic binomial property|<tuple|4|?>>
    <associate|binomial constant|<tuple|2|?>>
    <associate|binomial formula|<tuple|5|?>>
    <associate|divide in even and odd numbers|<tuple|6|?>>
    <associate|eq 1.476|<tuple|1|?>>
    <associate|eq 2.746|<tuple|2|?>>
    <associate|eq 3.476|<tuple|3|?>>
    <associate|eq 4.476|<tuple|4|?>>
    <associate|eq 5.476|<tuple|5|?>>
    <associate|eq 6.476|<tuple|6|?>>
    <associate|eq 7.476|<tuple|7|?>>
    <associate|special cases of the binomial constant|<tuple|3|?>>
  </collection>
</references>

<\auxiliary>
  <\collection>
    <\associate|idx>
      <tuple|<tuple|binomial constant>|<pageref|auto-1>>

      <tuple|<tuple|<with|mode|<quote|math>|<around*|(|<tformat|<twith|table-valign|C>|<cwith|1|-1|1|-1|cell-halign|c>|<cwith|1|-1|1|1|cell-lsep|0spc>|<cwith|1|-1|-1|-1|cell-rsep|0spc>|<cwith|1|-1|1|-1|cell-bsep|0.5sep>|<cwith|1|-1|1|-1|cell-tsep|0.5sep>|<cwith|1|1|1|-1|cell-tsep|0sep>|<cwith|-1|-1|1|-1|cell-bsep|0sep>|<tformat|<table|<row|<cell|n>>|<row|<cell|k>>>>>|)>>>|<pageref|auto-2>>
    </associate>
  </collection>
</auxiliary>