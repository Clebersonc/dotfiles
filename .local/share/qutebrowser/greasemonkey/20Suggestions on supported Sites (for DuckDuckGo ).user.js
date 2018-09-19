// ==UserScript==
// @name !Bang Suggestions on supported Sites (for DuckDuckGo )
// @namespace Violentmonkey Scripts
// @match *://*/*
// @description:en Shows !Bangs in the bottom left corner (hover "!")
// @grant none
// @version 1.1
// @description Shows !Bangs in the bottom left corner (hover "!")
// ==/UserScript==

if (window.top != window.self)  //don't run on frames or iframes
    return;



// https://duckduckgo.com/bang.v234.js
var bangs = 
;

/* json format:
    "sc": "Google",
    "r": 12903, //ranking (I should sort by this, but don't)
    "a": [],
    "d": "translate.google.com", //domain
    "s": "Google Translate", //Site Name
    "u": "https://translate.google.com/#auto/en/{{{s}}}", ///actual search string
    "p": "gt-english",
    "c": "Online Services",
    "t": "gt"
*/

var currentHost = window.location.hostname;
var results = [];

for(var i = 0; i < bangs.length; i++) {
    var bang = bangs[i];
    if (bang.d == currentHost){
      results.push(bang);
    }
}

if (results.length > 0 ){
  var htmlPre = "<style>#bangsuggestions *{color: black !important; list-style: none !important; list-style-type: none !important;}#bangsuggestions{color:black; max-height: calc(100vh - 25px); max-width: calc(100vw - 25px); overflow: auto; position:fixed; right:5px; bottom:5px; z-index: 999999; padding:8px; opacity:0.75; background-color: #f5a339; border-radius:8px; }#bangsuggestions:hover{opacity:1}#bangsuggestions ul{padding:0; margin:0; margin-top:-3px;display:none;}#bangsuggestions:hover ul{display:block;}#bangsuggestions .bang{font-weight:bold}#bangsuggestions ul{}#bangsuggestions .ex{font-weight:bold; margin:auto; text-align:center;} #bangsuggestions .bng{display:none}#bangsuggestions:hover .bng{display:inline}</style><div id='bangsuggestions'><div class='ex'>.<span class='bng'>Bangs:</span></div><ul>";
  var htmlList = "";
  var htmlPost = "</ul></div>";
  
 
  
  results.sort(function(a, b) {
    return parseFloat(b.r)-parseFloat(a.r);
 });

  

  for(var i = 0; i < results.length; i++) {
    var bang = results[i];
    htmlList += "<li><span class='bang'>!"+bang.t+"</span> <span class='name'>"+bang.s+"</span></li>"
  }

  var div = document.createElement('div');
  div.innerHTML = htmlPre+htmlList+htmlPost;
  document.body.appendChild(div);
}
