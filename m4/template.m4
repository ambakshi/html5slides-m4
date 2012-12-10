m4_define(`Didnt',`Didn&rsquo;t')
m4_define(`didnt',`didn&rsquo;t')
m4_define(`Dont',`Don&rsquo;t')
m4_define(`dont',`don&rsquo;t')
m4_define(`cant',`can&rsquo;t')
m4_define(`Cant',`Can&rsquo;t')
m4_define(`shouldnt',`shouldn&rsquo;t')
m4_define(`Shouldnt',`shouldn&rsquo;t')
m4_define(`wouldnt',`wouldn&rsquo;t')
m4_define(`Wouldnt',`wouldn&rsquo;t')
m4_define(`ARTICLE',`
      <!-- $1 -->
      <article class="$3">
        <h3>$1</h3>
        <ul>
        $2
        </ul>
      </article>')
m4_define(`SLIDE',ARTICLE($1,$2,`smaller'))
m4_define(`LARGE',ARTICLE($1,$2,`'))
m4_define(`POINT',``<li>`$1'</li>'')
m4_define(`IMAGE',`
        $1
        <p>
          <img style="height: $3 scale: $4" src="$2">
        </p>')
m4_define(`TRANSITION',`
      <!-- Transition: $1 -->
      <article>
        <h2>
            $1
        </h2>
        <h3>
            $2
        </h3>
      </article>')
m4_define(`LINK',`<a href="$2">$1</a>')
