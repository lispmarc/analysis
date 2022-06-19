<TeXmacs|1.99.18>

<style|book>

<\body>
  Question 1.

  \;

  In the definition 122H functions in <math|U> must satisify

  <\enumerate-roman>
    <item>the domain of <math|f> is a coneglible subset of <math|X> and
    <math|f<around*|(|x|)>\<in\><around*|[|0,\<infty\>|[>> for each
    <math|x\<in\>dom f>

    <item>there is a non-decreasing sequence of
    <math|<around*|\<langle\>|f<rsub|n>|)><rsub|n\<in\>\<bbb-N\>>> of
    non-negative simple functions such that
    <math|sup<rsub|n\<in\>\<bbb-N\>><big|int>f<rsub|n>\<less\>\<infty\>> and
    <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>
    for almost every <math|x\<in\>X>
  </enumerate-roman>

  My question is this: Is condition <math|<around*|(|i|)>> realy needed? For
  if <math|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>>
  for almost every <math|x\<in\>X> we have that <math|<around*|{|x\<in\>dom
  f\|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>>
  is conegligible and as clearly <math|<around*|{|x\<in\>dom
  f\|<below|lim|n\<rightarrow\>\<infty\>>f<rsub|n><around*|(|x|)>=f<around*|(|x|)>|}>\<subseteq\>dom
  f> it follows from the properties of conegligible sets tat <math|dom f> is
  also conegligible, so there is no need for (i) Is there a fault in
  reasoning here?\ 

  \;

  Question1.\ 

  \;

  In the proof of 122R Corollary (c)<space|1em>

  \;

  The function <math|g=2<rsup|-k>\<cdot\>\<cal-X\><rsup|F<rsub|k>>> is
  constructed based on <math|F<rsub|k>=<around*|{|x\<in\>E<rprime|'>\|f<around*|(|x|)>\<geqslant\>2<rsup|-k>|}>>
  where <math|\<mu\>F<rsub|k>\<gtr\>0>, this is then used further to reason
  that <math|g\<leqslant\><rsub|a.e.>f> so that
  <math|0\<less\>2<rsup|-k>\<mu\>F<rsub|k>=<big|int>g\<leqslant\>f>. However
  I think that to be able to do this we must have that <math|g> is a simple
  function, which means that we also must prove that
  <math|\<mu\>F<rsub|k>\<less\>\<infty\>>. If
  <math|0\<leqslant\>f<around*|(|x|)>> <math|\<forall\>x\<in\>dom f> I think
  we can use 122J (a)(<math|\<beta\>>) to do this but we have that
  <math|0\<leqslant\><rsub|a.e.>f> and I fail to prove this in the more
  general case.
</body>

<\initial>
  <\collection>
    <associate|page-medium|paper>
  </collection>
</initial>