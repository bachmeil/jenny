#!/bin/bash

cat << _EOF_
  <!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <title>$(echo $POST_TITLE)</title>
      <link href="https://fonts.googleapis.com/css?family=Source+Serif+Pro&display=swap" rel="stylesheet">
      <link href="data:image/x-icon;base64,AAABAAEAEBAQAAEABAAoAQAAFgAAACgAAAAQAAAAIAAAAAEABAAAAAAAgAAAAAAAAAAAAAAAEAAAAAAAAAAAAAAANjY2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARERERAAAAAAAAAAAAAAAAEQEBEQAAAAAAAAAAAAAAABEREREAAAAAAAAAAAAAAAARAREBAAAAAAAAAAAAAAAAEREBEQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAD//wAA//8AAP//AADwDwAA//8AAPKPAAD//wAA8A8AAP//AADyLwAA//8AAPCPAAD//wAA//8AAP//AAD//wAA" rel="icon" type="image/x-icon">
<script src="https://polyfill.io/v3/polyfill.min.js?features=es6"></script>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
      <style>
        html { -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; }
        body {
          background-color: white;
          color: #444;
          font-size: 22px;
          padding: 1em;
          font-family: "Source Serif Pro", 'Roboto', sans-serif;
          line-height: 1.5em;
          max-width: 760px; 
          margin: auto;
        }
        @media (min-width: 736px) { body { font-size: 22px } }
        article { padding: 0; margin: 1em 0; }
        article a { color: #b58900; }
        article img { max-width: 100% }
        article blockquote { border-left: 2px solid #CCC; }
        article blockquote,
        article pre { background-color: #f4f4f4; margin: 0; padding: 1em; border-radius: 7px; border: 2px solid #DDD; }
        article pre,
        article code { font-family: 'Ubuntu Mono, "Fira Mono", monospace'; font-size: 22px; color: #333; }
        article pre { word-break: break-all; white-space: pre-wrap; }
        article code::first-line { line-height: 0 }
        article blockquote :first-of-type { margin-top: 0; }
        article blockquote :last-of-type { margin-bottom: 0; }
        article hr { border: 0; border-bottom: 3px solid #CCC; }
        .heading { text-transform: uppercase; line-height: 1.6em; }
        .heading a { text-decoration: none; }
        .heading .title { color: #222; display: inline-block; margin: 0 0 1em; font-weight:bold; font-family: sans;  }
        .heading .title:hover { text-decoration: underline; }
        .heading .stamp { color: #999; }
        .heading .stamp,
        .home { display: inline-block; width: 5.66em; text-align:left; margin-right: 6.5em; }
        .home { text-decoration: none; margin-bottom: 1.5em; text-align: left;  color: #cb4b16; } .home:hover { color: #dc322f; }
        .contents { display: inline-block; vertical-align: top; max-width: 760px; }
        .contents :first-child { margin-top: 0; }
        h1, h2, h3, h4, h5, h6 { font-size: 1em; font-weight: normal; text-transform: uppercase; margin: 2em 0 1em; }
        ol, ul { padding-left: 1em; }
        ul.fn-list { list-style: none; padding: 2em 0 0; margin-top: 2.5em; font-size: .9em; }
        .fn-handle, .fn-text { display: table-cell; }
        .fn-handle { padding-right: 1ch; }
        .fnref { line-height: 0 }
        .tags { margin-top: 2.5em; padding-top: 1.5em; font-size: .9em; border-top: 2px solid #EEE; }
      </style>
    </head>
    <body>
			<div class="heading">
				<a href="$(echo $POST_URL)"></a><br>		
			</div>
			<div class="contents">
				<article>
					<div class="heading"><h1 class="title">$(echo $POST_TITLE)</h1></div>
					$(echo "$POST_CONTENTS")
					<span class="stamp">Last Update: $(echo $POST_DATE_FULL)</span>
					<div class="tags">$(for i in $TAGS; do echo "<a href=\"/tag/$i\">$i</a>"; done;)</div>
					<a href="../index.html" class="home">← Back</a>
				</article>
			<div>
    </body>
  </html>
_EOF_
