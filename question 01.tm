<TeXmacs|1.99.15>

<style|generic>

<\body>
  I'm trying to prove exercise 113Y(b) of Measure Theory from Fremlin (see
  https://www1.essex.ac.uk/maths/people/fremlin/chap11.pdf page 39).\ 

  Given a measure space <math|<around*|(|X,<big|sum>,\<mu\>|)>> and
  <math|D\<subseteq\>X> prove that <math|<big|sum><rsub|D>=<around*|{|E<big|cap>D\|E\<in\><big|sum>|}>>
  is a <math|\<sigma\>>-algebra of subsets of <math|D> and that
  <math|\<mu\><rsub|D>> defined by <math|\<mu\><rsub|D><around*|(|A|)>=inf<around*|{|\<mu\><around*|(|E|)>\|E\<in\><big|sum>,A\<subseteq\>E|}>>
  is a measure on <math|<big|sum><rsub|D>>. I have already proved that
  <math|\<Sigma\><rsub|D>> is a <math|\<sigma\>>-algebra and that
  <math|\<mu\><rsup|\<ast\>>:\<cal-P\><around*|(|X|)>\<rightarrow\><around*|[|0,\<infty\>|]>>
  defined by <math|\<mu\><rsup|\<ast\>><around*|(|A|)>=inf<around*|{|\<mu\><around*|(|E|)>\|E\<in\><big|sum>,A\<subseteq\>E|}>>
  is a outer-measure such that <math|\<forall\>A\<in\>\<cal-P\><around*|(|X|)>>
  there exists a <math|E\<in\><big|sum>> with
  <math|\<mu\><around*|(|A|)>=\<mu\><rsup|\<ast\>><around*|(|A|)>> (exercise
  113Y(a)). I want then to apply the Caratheodory theorem for the rest of the
  proof and must then show that <math|<big|sum><rsub|D>\<subseteq\><around*|{|E\<subseteq\>X\|\<forall\>A\<subseteq\>X
  we have \<mu\><rsup|\<ast\>><around*|(|A<big|cap>E|)>+\<mu\><rsup|\<ast\>><around*|(|A\\E|)>\<leqslant\>\<mu\><rsup|\<ast\>><around*|(|A|)>|}>>
  but fails to do so. Also is this the correct way to solve the exercise?

  Any help in the last part is appreciated\ 

  \;

  \;
</body>

<initial|<\collection>
</collection>>