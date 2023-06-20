# TESTES DE API COM ROBOT FRAMEWORK

Utilizando como base o site: https://serverest.dev/
<br/>
Realizando a automação das api's
<br/>
<strong> OBS: não foi possivel automatizar as api's do tipo DELETE E PUT, pois os id's retornados são valores aleatorios e seria necessario uma conferencia em uma base de dados.
<br/>
![image](https://github.com/Marina-Gajego/testesAPI/assets/83456621/ade5d5a8-8170-4344-af63-04506805e2c8)
<br/>
<br/>
<strong>Log API CADASTRO
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Expires" content="-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta content="Robot Framework 6.1 (Python 3.11.4 on win32)" name="Generator">
<link rel="icon" type="image/x-icon" href="data:image/x-icon;base64,AAABAAEAEBAAAAEAIABoBAAAFgAAACgAAAAQAAAAIAAAAAEAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKcAAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAAqAAAAAAAAAAAAAAAAAAAALIAAAD/AAAA4AAAANwAAADcAAAA3AAAANwAAADcAAAA3AAAANwAAADcAAAA4AAAAP8AAACxAAAAAAAAAKYAAAD/AAAAuwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAC/AAAA/wAAAKkAAAD6AAAAzAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN8AAAD/AAAA+gAAAMMAAAAAAAAAAgAAAGsAAABrAAAAawAAAGsAAABrAAAAawAAAGsAAABrAAAADAAAAAAAAADaAAAA/wAAAPoAAADDAAAAAAAAAIsAAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAANEAAAAAAAAA2gAAAP8AAAD6AAAAwwAAAAAAAAAAAAAAMgAAADIAAAAyAAAAMgAAADIAAAAyAAAAMgAAADIAAAAFAAAAAAAAANoAAAD/AAAA+gAAAMMAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADaAAAA/wAAAPoAAADDAAAAAAAAADwAAAB8AAAAAAAAAGAAAABcAAAAAAAAAH8AAABKAAAAAAAAAAAAAAAAAAAA2gAAAP8AAAD6AAAAwwAAAAAAAADCAAAA/wAAACkAAADqAAAA4QAAAAAAAAD7AAAA/wAAALAAAAAGAAAAAAAAANoAAAD/AAAA+gAAAMMAAAAAAAAAIwAAAP4AAAD/AAAA/wAAAGAAAAAAAAAAAAAAAMkAAAD/AAAAigAAAAAAAADaAAAA/wAAAPoAAADDAAAAAAAAAAAAAAAIAAAAcAAAABkAAAAAAAAAAAAAAAAAAAAAAAAAEgAAAAAAAAAAAAAA2gAAAP8AAAD7AAAAywAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAN4AAAD/AAAAqwAAAP8AAACvAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAALIAAAD/AAAAsgAAAAAAAAC5AAAA/wAAAMoAAADAAAAAwAAAAMAAAADAAAAAwAAAAMAAAADAAAAAwAAAAMkAAAD/AAAAvAAAAAAAAAAAAAAAAAAAAKwAAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAA/wAAAP8AAAD/AAAArQAAAAAAAAAAwAMAAIABAAAf+AAAP/wAAD/8AAAgBAAAP/wAAD/8AAA//AAAJIwAADHEAAA//AAAP/wAAB/4AACAAQAAwAMAAA==">
<style media="all" type="text/css">
/* Generic and misc styles */
body {
    font-family: Helvetica, sans-serif;
    font-size: 0.8em;
    color: black;
    padding: 6px;
    background: white;
}
table {
    table-layout: fixed;
    word-wrap: break-word;
    empty-cells: show;
    font-size: 1em;
}
th, td {
    vertical-align: top;
}
br {
    mso-data-placement: same-cell; /* maintain line breaks in Excel */
}
hr {
    background: #ccc;
    height: 1px;
    border: 0;
}
a, a:link, a:visited {
    text-decoration: none;
    color: #15c;
}
a > img {
    border: 1px solid #15c !important;
}
a:hover, a:active {
    text-decoration: underline;
    color: #61c;
}
.parent-name {
    font-size: 0.7em;
    letter-spacing: -0.07em;
}
.message {
    white-space: pre-wrap;
}
/* Headers */
#header {
    width: 65em;
    height: 3em;
    margin: 6px 0;
}
h1 {
    float: left;
    margin: 0 0 0.5em 0;
    width: 75%;
}
h2 {
    clear: left;
}
#generated {
    float: right;
    text-align: right;
    font-size: 0.9em;
    white-space: nowrap;
}
/* Documentation headers */
.doc > h2 {
    font-size: 1.2em;
}
.doc > h3 {
    font-size: 1.1em;
}
.doc > h4 {
    font-size: 1.0em;
}
/* Status text colors -- !important allows using them in links */
.fail {
    color: #ce3e01 !important;
    font-weight: bold;
}
.pass {
    color: #098a09 !important;
}
.skip {
    color: #927201 !important;
    font-weight: bold;
}
.label {
    padding: 2px 5px;
    font-size: 0.75em;
    letter-spacing: 1px;
    white-space: nowrap;
    color: black;
    background-color: #ddd;
    border-radius: 3px;
}
.label.debug, .label.trace, .label.error, .label.keyword {
    letter-spacing: 0;
}
.label.pass, .label.fail, .label.error, .label.skip, .label.warn {
    font-weight: bold;
}
.label.pass {
    background-color: #97bd61;
    color: #000 !important;
}
.label.fail, .label.error {
    background-color: #ce3e01;
    color: #fff !important;
}
.label.skip, .label.warn {
    background-color: #fed84f;
    color: #000 !important;
}
/* Top right header */
#top-right-header {
    position: fixed;
    top: 0;
    right: 0;
    z-index: 1000;
    width: 12em;
    text-align: center;
}
#report-or-log-link a {
    display: block;
    background: black;
    color: white;
    text-decoration: none;
    font-weight: bold;
    letter-spacing: 0.1em;
    padding: 0.3em 0;
    border-bottom-left-radius: 4px;
}
#report-or-log-link a:hover {
    color: #ddd;
}
#log-level-selector {
    padding: 0.3em 0;
    font-size: 0.9em;
    border-bottom-left-radius: 4px;
    background: #ddd;
}
/* Statistics table */
.statistics {
    width: 65em;
    border-collapse: collapse;
    empty-cells: show;
    margin-bottom: 1em;
}
.statistics tr:hover {
    background: #f4f4f4;
    cursor: pointer;
}
.statistics th, .statistics td {
    border: 1px solid #ccc;
    padding: 0.1em 0.3em;
}
.statistics th {
    background-color: #ddd;
    padding: 0.2em 0.3em;
}
.statistics td {
    vertical-align: middle;
}
.stats-col-stat {
    width: 4.5em;
    text-align: center;
}
.stats-col-elapsed {
    width: 5.5em;
    text-align: center;
}
.stats-col-graph {
    width: 9em;
}
th.stats-col-graph:hover {
    cursor: default;
}
.stat-name {
    float: left;
}
.stat-name a, .stat-name span {
    font-weight: bold;
}
.tag-links {
    font-size: 0.9em;
    float: right;
    margin-top: 0.05em;
}
.tag-links span {
    margin-left: 0.2em;
}
/* Statistics graph */
.graph, .empty-graph {
    border: 1px solid #ccc;
    width: auto;
    height: 7px;
    padding: 0;
    background: #aaa;
}
.empty-graph {
    background: #eee;
}
.pass-bar, .fail-bar, .skip-bar {
    float: left;
    height: 100%;
}
.fail-bar {
    background: #ce3e01;
}
.pass-bar {
    background: #97bd61;
}
.skip-bar {
    background: #fed84f;
}
/* Tablesorter - adapted from provided Blue Skin */
.tablesorter-header {
    background-image: url(data:image/gif;base64,R0lGODlhCwAJAIAAAH9/fwAAACH5BAEAAAEALAAAAAALAAkAAAIRjAOnBr3cnIr0WUjTrC9e9BQAOw==);
    background-repeat: no-repeat;
    background-position: center right;
    cursor: pointer;
}
.tablesorter-header:hover {
    background-color: #ccc;
}
.tablesorter-headerAsc {
    background-image: url(data:image/gif;base64,R0lGODlhCwAJAKEAAAAAAH9/fwAAAAAAACH5BAEAAAIALAAAAAALAAkAAAIUlBWnFr3cnIr0WQOyBmvzp13CpxQAOw==);
    background-color: #ccc !important;
}
.tablesorter-headerDesc {
    background-image: url(data:image/gif;base64,R0lGODlhCwAJAKEAAAAAAH9/fwAAAAAAACH5BAEAAAIALAAAAAALAAkAAAIUlAWnBr3cnIr0WROyDmvzp13CpxQAOw==);
    background-color: #ccc !important;
}
.sorter-false {
    background-image: none;
    cursor: default;
}
.sorter-false:hover {
    background-color: #ddd;
}
</style>
<style media="all" type="text/css">
/* Icons are from Open Iconic <https://useiconic.com/open/>.
   Licensed under the MIT License. */
/* Containers */
.suite, .test, #errors {
    border: 1px solid #ccc;
    padding: 0.3em 0.2em;
    margin: 0.2em 0;
}
.test {
    border-style: dashed;
}
#errors, .messages {
    width: 100%;
    border-spacing: 0;
}
.children {
    display: none;
    margin-left: 1.4em;
}
.suite, .test, .keyword {
    margin-left: -0.2em;
}
#s1, .suite > .children > .keyword {
    margin-left: 0;
}
/* Suite, test and kw headers */
.element-header {
    border: 1px solid transparent;
    border-radius: 2px;
    position: relative;
}
.element-header:hover {
    cursor: pointer;
    background-color: #eee;
    border-color: #ccc;
}
.element-header-toggle {
    position: absolute;
    left: 3px;
    top: 5px;
    background-repeat: no-repeat;
    background-position: center;
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAQAAABKxSfDAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfeCR0JChSkZz20AAAAGklEQVQI12NgQAKMDKzInP8IDhOqMk4G7AAANQwBE427PYUAAAAASUVORK5CYII=);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik0wIDB2Mmg4di0yaC04eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAzKSIgLz4KPC9zdmc+), none;
    height: 10px;
    width: 10px;
    background-size: 6px 6px;
    border: 1px solid #ccc;
    border-radius: 2px;
}
.closed > .element-header-toggle {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAYAAAAGCAQAAABKxSfDAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfeCR0JCDHdVYtxAAAAM0lEQVQI103MMQqAMBQFwVHyITaB3P+W1sKzSBC3mW6hRFw0pUB5DvF1bu9FN0RM3X/wAk98CUnvFTakAAAAAElFTkSuQmCC);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik0zIDB2M2gtM3YyaDN2M2gydi0zaDN2LTJoLTN2LTNoLTJ6IiAvPgo8L3N2Zz4=), none;
}
.element-header:hover > .element-header-toggle {
    background-color: #ccc;
}
.element-header-right:hover ~ .element-header-toggle {
    background-color: transparent;
}
.element-header-left {
    padding: 3px 80px 3px 20px;
}
.element-header-right {
    position: absolute;
    right: 0;
    top: 0;
    padding: 3px;
    cursor: default;
}
.element-header .label {
    margin-right: 0.5em;
}
.name {
    font-weight: bold;
}
.elapsed {
    float: right;
    color: #666;
    padding-left: 1em;
}
.link {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAAHlJREFUGJVtzrEJwmAQBtCn6ASuIKTIBhY2gmghBiJYB1udwk10B8FJbKMBcQFbtbkfJHrVwfu+4/idJR64Y9H7E3higj5O3S8Y44ApLnjhnXCNGhV2yNGggDJwiC02gavUbpDFvscRo4QdXOMKDHBufz3HLYKzNn4AbSkV3fncGQYAAAAASUVORK5CYII=);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik01Ljg4LjAzYy0uMTguMDEtLjM2LjAzLS41My4wOS0uMjcuMS0uNTMuMjUtLjc1LjQ3YS41LjUgMCAxIDAgLjY5LjY5Yy4xMS0uMTEuMjQtLjE3LjM4LS4yMi4zNS0uMTIuNzgtLjA3IDEuMDYuMjIuMzkuMzkuMzkgMS4wNCAwIDEuNDRsLTEuNSAxLjVjLS40NC40NC0uOC40OC0xLjA2LjQ3LS4yNi0uMDEtLjQxLS4xMy0uNDEtLjEzYS41LjUgMCAxIDAtLjUuODhzLjM0LjIyLjg0LjI1Yy41LjAzIDEuMi0uMTYgMS44MS0uNzhsMS41LTEuNWMuNzgtLjc4Ljc4LTIuMDQgMC0yLjgxLS4yOC0uMjgtLjYxLS40NS0uOTctLjUzLS4xOC0uMDQtLjM4LS4wNC0uNTYtLjAzem0tMiAyLjMxYy0uNS0uMDItMS4xOS4xNS0xLjc4Ljc1bC0xLjUgMS41Yy0uNzguNzgtLjc4IDIuMDQgMCAyLjgxLjU2LjU2IDEuMzYuNzIgMi4wNi40Ny4yNy0uMS41My0uMjUuNzUtLjQ3YS41LjUgMCAxIDAtLjY5LS42OWMtLjExLjExLS4yNC4xNy0uMzguMjItLjM1LjEyLS43OC4wNy0xLjA2LS4yMi0uMzktLjM5LS4zOS0xLjA0IDAtMS40NGwxLjUtMS41Yy40LS40Ljc1LS40NSAxLjAzLS40NC4yOC4wMS40Ny4wOS40Ny4wOWEuNS41IDAgMSAwIC40NC0uODhzLS4zNC0uMi0uODQtLjIyeiIKICAvPgo8L3N2Zz4=), none;
}
.expand {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAADtJREFUGJVjYCACKDAwMByA0ljFDjAwMPxnYGB4ABVQgLL/Q+VQBB6gseGmIivCkERXhFUSWRFOSawAAEl7E3uv1iMcAAAAAElFTkSuQmCC);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik0xLjUgMGwtMS41IDEuNSA0IDQgNC00LTEuNS0xLjUtMi41IDIuNS0yLjUtMi41eiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMCAxKSIgLz4KPC9zdmc+), none;
}
.collapse {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAgAAAAICAYAAADED76LAAAABHNCSVQICAgIfAhkiAAAAAlwSFlzAAALEwAACxMBAJqcGAAAAC5JREFUGJVjYCARNEAxTsn/UIyhCFkSQxG6ThQ+C5IpjWhG1yNb4YDFTdjEMAEACi8Q++9Y9TAAAAAASUVORK5CYII=);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik00IDBsLTQgNCAxLjUgMS41IDIuNS0yLjUgMi41IDIuNSAxLjUtMS41LTQtNHoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDAgMSkiIC8+Cjwvc3ZnPg==), none;
}
.expand, .collapse, .link {
    float: left;
    display: block;
    visibility: hidden;
    margin: 0 4px;
    height: 14px;
    width: 14px;
    background-size: 8px 8px;
    background-repeat: no-repeat;
    background-position: center;
    border: 1px solid #ccc;
    border-radius: 2px;
}
.link {
    background-size: 10px 10px;
}
.element-header:hover a {
    visibility: visible;
}
.expand:hover, .collapse:hover, .link:hover {
    background-color: #ccc;
}
/* Messages and errors */
.messages .time, .messages .message {
    font-family: monospace;
    font-size: 1.1em;
}
#errors .message {
    font-family: monospace;
    font-size: 1.2em;
}
.message-row {
    height: 20px;
}
.time {
    width: 7.5em;
}
.error-time {
    width: 11em;
    font-size: 0.9em;
    white-space: nowrap;
}
.level {
    width: 5em;
    text-align: center;
}
.select-message {
    width: 24px;
}
.select-message > div {
    float: right;
    margin-right: 2px;
    height: 16px;
    width: 16px;
    background-size: 12px 12px;
    background-repeat: no-repeat;
    background-position: center;
}
.message-row:hover .select-message div {
    background-image: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAwAAAAMCAQAAAD8fJRsAAAAAmJLR0QA/4ePzL8AAAAJcEhZcwAACxMAAAsTAQCanBgAAAAHdElNRQfeCR0MOzhWKZQOAAAASUlEQVQY032PsRHAIAwDX9BkicD+W8UMEqegAQJWKZ/+3sLZJhFGQEZzNaIa4ibh66En867VNaIeoP5WppNuIGoAlOm3g5VC1AdYeQv1BZPRSgAAAABJRU5ErkJggg==);
    background-image: url(data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSI4IiBoZWlnaHQ9IjgiIHZpZXdCb3g9IjAgMCA4IDgiPgogIDxwYXRoIGQ9Ik0wIDB2MWg4di0xaC04em0wIDJ2MWg2di0xaC02em0wIDJ2MWg4di0xaC04em0wIDJ2MWg2di0xaC02eiIgLz4KPC9zdmc+), none;
    border: 1px solid #ccc;
    border-radius: 2px;
}
.select-message:hover div {
    background-color: #ccc;
    cursor: pointer;
}
/* Message tables - these MUST NOT be combined together because otherwise
   dynamically altering them based on visible log level is not possible. */
.trace-message {
    display: table;
}
.debug-message {
    display: table;
}
/* Metadata */
.metadata {
    width: 100%;
    border-spacing: 0.2em;
}
.metadata th {
    width: 12em;
    vertical-align: top;
    text-align: left;
}
.metadata td {
    vertical-align: top;
}
.keyword-metadata {
    font-size: 0.9em;
}
/* Custom styles for statistics */
#total-stats tr:hover, #tag-stats tr:hover {
    cursor: default;
}
</style>
<style media="print" type="text/css">
body {
    background: white !important;
    padding: 0;
    font-size: 8pt;
}
a:link, a:visited {
    color: black;
}
#header {
    width: auto;
}
.details, .statistics {
    width: 100%;
}
#generated-ago, #top-right-header, #normal-selector, #search-buttons,
.folding-button, .expand, .hidden, .details-col-toggle {
    display: none;
}
.element-header-text, .children {
    margin: 0;
}
#test-details {
    border-collapse: collapse;
    background: white;
}
#test-details th, #test-details td {
    border: 1px solid #ccc;
}
.details-col-header {
    padding: 0;
}
#print-selector {
    display: table-cell;
}
.tablesorter-header {
    background-image: none;
    background: #ddd !important;
}
</style>
<style media="all" type="text/css">
#javascript-disabled {
    width: 600px;
    margin: 100px auto 0 auto;
    padding: 20px;
    color: black;
    border: 1px solid #ccc;
    background: #eee;
}
#javascript-disabled h1 {
    width: 100%;
    float: none;
}
#javascript-disabled ul {
    font-size: 1.2em;
}
#javascript-disabled li {
    margin: 0.5em 0;
}
#javascript-disabled b {
    font-style: italic;
}
</style>
<style media="all" type="text/css">
.doc > * {
    margin: 0.7em 1em 0.1em 1em;
    padding: 0;
}
.doc > p, .doc > h1, .doc > h2, .doc > h3, .doc > h4 {
    margin: 0.7em 0 0.1em 0;
}
.doc > *:first-child {
    margin-top: 0.1em;
}
.doc table {
    border: 1px solid #ccc;
    background: transparent;
    border-collapse: collapse;
    empty-cells: show;
    font-size: 0.9em;
}
.doc table th, .doc table td {
    border: 1px solid #ccc;
    background: transparent;
    padding: 0.1em 0.3em;
    height: 1.2em;
}
.doc table th {
    text-align: center;
    letter-spacing: 0.1em;
}
.doc pre {
    font-size: 1.1em;
    letter-spacing: 0.05em;
    background: #f4f4f4;
}
.doc code {
    padding: 0 0.2em;
    letter-spacing: 0.05em;
    background: #eee;
}
.doc li {
    list-style-position: inside;
    list-style-type: square;
}
.doc img {
    border: 1px solid #ccc;
}
.doc hr {
    background: #ccc;
    height: 1px;
    border: 0;
}
</style>
<script type="text/javascript">
var LEVELS = {TRACE: 0, DEBUG: 1, INFO: 2, WARN: 3, FAIL: 4, NONE: 5};
function toggleSuite(suiteId) {
    toggleElement(suiteId, ['keyword', 'suite', 'test']);
}
function toggleTest(testId) {
    toggleElement(testId, ['keyword']);
    var test = window.testdata.findLoaded(testId);
    if (test.status == "FAIL" || test.status == "SKIP")
        expandFailed(test);
}
function toggleKeyword(kwId) {
    toggleElement(kwId, ['keyword']);
}
function toggleElement(elementId, childrenNames) {
    var element = $('#' + elementId);
    var children = element.children('.children');
    children.toggle(100, '', function () {
        element.children('.element-header').toggleClass('closed');
    });
    populateChildren(elementId, children, childrenNames);
}
function populateChildren(elementId, childElement, childrenNames) {
    if (!childElement.hasClass('populated')) {
        var element = window.testdata.findLoaded(elementId);
        var callback = drawCallback(element, childElement, childrenNames);
        element.callWhenChildrenReady(callback);
        childElement.addClass('populated');
    }
}
function drawCallback(element, childElement, childrenNames) {
    return function () {
        util.map(childrenNames, function (childName) {
            var children = element[childName + 's']();
            util.map(children, function (child) {
                $.tmpl(child.template, child).appendTo(childElement);
            });
        });
    }
}
function expandSuite(suite) {
    if (suite.status == "FAIL")
        expandFailed(suite);
    else
        expandElement(suite);
}
function expandElement(item, retryCount) {
    retryCount = typeof retryCount !== 'undefined' ? retryCount : 3;
    var element = $('#' + item.id);
    var children = element.children('.children');
    // .css is faster than .show and .show w/ callback is terribly slow
    children.css({'display': 'block'});
    // in rare cases on large logs concurrent expanding fails => retry
    if (children.css('display') != 'block' && retryCount > 0) {
        console.debug('expandElement '+item.id+' failed! planning retry...');
        setTimeout(function() { expandElement(item, retryCount-1); }, 0);
        return;
    }
    populateChildren(item.id, children, item.childrenNames);
    element.children('.element-header').removeClass('closed');
}
function expandElementWithId(elementid) {
    expandElement(window.testdata.findLoaded(elementid));
}
function expandElementsWithIds(ids) {
    util.map(ids, expandElementWithId);
}
function loadAndExpandElementIds(ids) {
    for (var i in ids) {
        window.testdata.ensureLoaded(ids[i], expandElementsWithIds);
    }
}
function expandFailed(element) {
    if (element.status == "FAIL" || (element.type == "test" && element.status == "SKIP")) {
        window.elementsToExpand = [element];
        window.expandDecider = function (e) {
            return e.status == "FAIL";
        };
        expandRecursively();
    }
}
function expandAll(elementId) {
    window.elementsToExpand = [window.testdata.findLoaded(elementId)];
    window.expandDecider = function () { return true; };
    expandRecursively();
}
function expandRecursively() {
    if (!window.elementsToExpand.length)
        return;
    var element = window.elementsToExpand.pop();
    if (!element || elementHiddenByUser(element.id)) {
        window.elementsToExpand = [];
        return;
    }
    expandElement(element);
    element.callWhenChildrenReady(function () {
        var children = element.children();
        for (var i = children.length-1; i >= 0; i--) {
            var child = children[i];
            if (child.type != 'message' && window.expandDecider(child))
                window.elementsToExpand.push(child);
        }
        if (window.elementsToExpand.length)
            setTimeout(expandRecursively, 0);
    });
}
function elementHiddenByUser(id) {
    var element = $('#' + id);
    return !element.is(":visible");
}
function collapseAll(id) {
    var element = $('#' + id);
    element.find('.children').css({'display': 'none'});
    element.find('.element-header').addClass('closed');
}
function logLevelSelected(level) {
    var anchors = getViewAnchorElements();
    setMessageVisibility(level);
    scrollToShortestVisibleAnchorElement(anchors);
}
function getViewAnchorElements() {
    var elem1 = $(document.elementFromPoint(100, 0));
    var elem2 = $(document.elementFromPoint(100, 20));
    return [elem1, elem2];
}
function scrollToShortestVisibleAnchorElement(anchors) {
    anchors = util.map(anchors, closestVisibleParent);
    var shortest = anchors[0];
    for (var i = 1; i < anchors.length; i++)
        if (shortest.height() > anchors[i].height())
            shortest = anchors[i];
    shortest.get()[0].scrollIntoView(true);
}
function setMessageVisibility(level) {
    level = parseInt(level);
    changeClassDisplay(".trace-message", level <= LEVELS.TRACE);
    changeClassDisplay(".debug-message", level <= LEVELS.DEBUG);
    changeClassDisplay(".info-message", level <= LEVELS.INFO);
}
function closestVisibleParent(elem) {
    while (!elem.is(":visible"))
        elem = elem.parent();
    return elem;
}
function changeClassDisplay(clazz, visible) {
    var styles = document.styleSheets;
    for (var i = 0; i < styles.length; i++) {
        var rules = getRules(styles[i]);
        if (rules === null)
            continue;
        for (var j = 0; j < rules.length; j++)
            if (rules[j].selectorText === clazz)
                rules[j].style.display = visible ? "table" : "none";
    }
}
function getRules(style) {
    // With Chrome external CSS files seem to have only null roles and with
    // Firefox accessing rules can result to security error.
    // Neither of these are a problem on with generated logs.
    try {
        return style.cssRules || style.rules;
    } catch (e) {
        return null;
    }
}
function selectMessage(parentId) {
    var element = $('#' + parentId).find('.message').get(0);
    selectText(element);
}
function selectText(element) {
    // Based on http://stackoverflow.com/questions/985272
    var range, selection;
    if (document.body.createTextRange) {  // IE 8
        range = document.body.createTextRange();
        range.moveToElementText(element);
        range.select();
    } else if (window.getSelection) {  // Others
        selection = window.getSelection();
        range = document.createRange();
        range.selectNodeContents(element);
        selection.removeAllRanges();
        selection.addRange(range);
    }
}
function LogLevelController(minLevel, defaultLevel) {
    minLevel = LEVELS[minLevel];
    defaultLevel = LEVELS[defaultLevel];
    function showLogLevelSelector() {
        return minLevel < LEVELS.INFO;
    }
    function defaultLogLevel() {
        if (minLevel > defaultLevel)
            return minLevel;
        return defaultLevel;
    }
    function showTrace() {
        return minLevel == LEVELS.TRACE;
    }
    return {
        showLogLevelSelector: showLogLevelSelector,
        defaultLogLevel: defaultLogLevel,
        showTrace: showTrace
    };
}
</script>
<script type="text/javascript">
/*! jQuery v3.5.1 | (c) JS Foundation and other contributors | jquery.org/license */
!function(e,t){"use strict";"object"==typeof module&&"object"==typeof module.exports?module.exports=e.document?t(e,!0):function(e){if(!e.document)throw new Error("jQuery requires a window with a document");return t(e)}:t(e)}("undefined"!=typeof window?window:this,function(C,e){"use strict";var t=[],r=Object.getPrototypeOf,s=t.slice,g=t.flat?function(e){return t.flat.call(e)}:function(e){return t.concat.apply([],e)},u=t.push,i=t.indexOf,n={},o=n.toString,v=n.hasOwnProperty,a=v.toString,l=a.call(Object),y={},m=function(e){return"function"==typeof e&&"number"!=typeof e.nodeType},x=function(e){return null!=e&&e===e.window},E=C.document,c={type:!0,src:!0,nonce:!0,noModule:!0};function b(e,t,n){var r,i,o=(n=n||E).createElement("script");if(o.text=e,t)for(r in c)(i=t[r]||t.getAttribute&&t.getAttribute(r))&&o.setAttribute(r,i);n.head.appendChild(o).parentNode.removeChild(o)}function w(e){return null==e?e+"":"object"==typeof e||"function"==typeof e?n[o.call(e)]||"object":typeof e}var f="3.5.1",S=function(e,t){return new S.fn.init(e,t)};function p(e){var t=!!e&&"length"in e&&e.length,n=w(e);return!m(e)&&!x(e)&&("array"===n||0===t||"number"==typeof t&&0<t&&t-1 in e)}S.fn=S.prototype={jquery:f,constructor:S,length:0,toArray:function(){return s.call(this)},get:function(e){return null==e?s.call(this):e<0?this[e+this.length]:this[e]},pushStack:function(e){var t=S.merge(this.constructor(),e);return t.prevObject=this,t},each:function(e){return S.each(this,e)},map:function(n){return this.pushStack(S.map(this,function(e,t){return n.call(e,t,e)}))},slice:function(){return this.pushStack(s.apply(this,arguments))},first:function(){return this.eq(0)},last:function(){return this.eq(-1)},even:function(){return this.pushStack(S.grep(this,function(e,t){return(t+1)%2}))},odd:function(){return this.pushStack(S.grep(this,function(e,t){return t%2}))},eq:function(e){var t=this.length,n=+e+(e<0?t:0);return this.pushStack(0<=n&&n<t?[this[n]]:[])},end:function(){return this.prevObject||this.constructor()},push:u,sort:t.sort,splice:t.splice},S.extend=S.fn.extend=function(){var e,t,n,r,i,o,a=arguments[0]||{},s=1,u=arguments.length,l=!1;for("boolean"==typeof a&&(l=a,a=arguments[s]||{},s++),"object"==typeof a||m(a)||(a={}),s===u&&(a=this,s--);s<u;s++)if(null!=(e=arguments[s]))for(t in e)r=e[t],"__proto__"!==t&&a!==r&&(l&&r&&(S.isPlainObject(r)||(i=Array.isArray(r)))?(n=a[t],o=i&&!Array.isArray(n)?[]:i||S.isPlainObject(n)?n:{},i=!1,a[t]=S.extend(l,o,r)):void 0!==r&&(a[t]=r));return a},S.extend({expando:"jQuery"+(f+Math.random()).replace(/\D/g,""),isReady:!0,error:function(e){throw new Error(e)},noop:function(){},isPlainObject:function(e){var t,n;return!(!e||"[object Object]"!==o.call(e))&&(!(t=r(e))||"function"==typeof(n=v.call(t,"constructor")&&t.constructor)&&a.call(n)===l)},isEmptyObject:function(e){var t;for(t in e)return!1;return!0},globalEval:function(e,t,n){b(e,{nonce:t&&t.nonce},n)},each:function(e,t){var n,r=0;if(p(e)){for(n=e.length;r<n;r++)if(!1===t.call(e[r],r,e[r]))break}else for(r in e)if(!1===t.call(e[r],r,e[r]))break;return e},makeArray:function(e,t){var n=t||[];return null!=e&&(p(Object(e))?S.merge(n,"string"==typeof e?[e]:e):u.call(n,e)),n},inArray:function(e,t,n){return null==t?-1:i.call(t,e,n)},merge:function(e,t){for(var n=+t.length,r=0,i=e.length;r<n;r++)e[i++]=t[r];return e.length=i,e},grep:function(e,t,n){for(var r=[],i=0,o=e.length,a=!n;i<o;i++)!t(e[i],i)!==a&&r.push(e[i]);return r},map:function(e,t,n){var r,i,o=0,a=[];if(p(e))for(r=e.length;o<r;o++)null!=(i=t(e[o],o,n))&&a.push(i);else for(o in e)null!=(i=t(e[o],o,n))&&a.push(i);return g(a)},guid:1,support:y}),"function"==typeof Symbol&&(S.fn[Symbol.iterator]=t[Symbol.iterator]),S.each("Boolean Number String Function Array Date RegExp Object Error Symbol".split(" "),function(e,t){n["[object "+t+"]"]=t.toLowerCase()});var d=function(n){var e,d,b,o,i,h,f,g,w,u,l,T,C,a,E,v,s,c,y,S="sizzle"+1*new Date,p=n.document,k=0,r=0,m=ue(),x=ue(),A=ue(),N=ue(),D=function(e,t){return e===t&&(l=!0),0},j={}.hasOwnProperty,t=[],q=t.pop,L=t.push,H=t.push,O=t.slice,P=function(e,t){for(var n=0,r=e.length;n<r;n++)if(e[n]===t)return n;return-1},R="checked|selected|async|autofocus|autoplay|controls|defer|disabled|hidden|ismap|loop|multiple|open|readonly|required|scoped",M="[\\x20\\t\\r\\n\\f]",I="(?:\\\\[\\da-fA-F]{1,6}"+M+"?|\\\\[^\\r\\n\\f]|[\\w-]|[^\0-\\x7f])+",W="\\["+M+"*("+I+")(?:"+M+"*([*^$|!~]?=)"+M+"*(?:'((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\"|("+I+"))|)"+M+"*\\]",F=":("+I+")(?:\\((('((?:\\\\.|[^\\\\'])*)'|\"((?:\\\\.|[^\\\\\"])*)\")|((?:\\\\.|[^\\\\()[\\]]|"+W+")*)|.*)\\)|)",B=new RegExp(M+"+","g"),$=new RegExp("^"+M+"+|((?:^|[^\\\\])(?:\\\\.)*)"+M+"+$","g"),_=new RegExp("^"+M+"*,"+M+"*"),z=new RegExp("^"+M+"*([>+~]|"+M+")"+M+"*"),U=new RegExp(M+"|>"),X=new RegExp(F),V=new RegExp("^"+I+"$"),G={ID:new RegExp("^#("+I+")"),CLASS:new RegExp("^\\.("+I+")"),TAG:new RegExp("^("+I+"|[*])"),ATTR:new RegExp("^"+W),PSEUDO:new RegExp("^"+F),CHILD:new RegExp("^:(only|first|last|nth|nth-last)-(child|of-type)(?:\\("+M+"*(even|odd|(([+-]|)(\\d*)n|)"+M+"*(?:([+-]|)"+M+"*(\\d+)|))"+M+"*\\)|)","i"),bool:new RegExp("^(?:"+R+")$","i"),needsContext:new RegExp("^"+M+"*[>+~]|:(even|odd|eq|gt|lt|nth|first|last)(?:\\("+M+"*((?:-\\d)?\\d*)"+M+"*\\)|)(?=[^-]|$)","i")},Y=/HTML$/i,Q=/^(?:input|select|textarea|button)$/i,J=/^h\d$/i,K=/^[^{]+\{\s*\[native \w/,Z=/^(?:#([\w-]+)|(\w+)|\.([\w-]+))$/,ee=/[+~]/,te=new RegExp("\\\\[\\da-fA-F]{1,6}"+M+"?|\\\\([^\\r\\n\\f])","g"),ne=function(e,t){var n="0x"+e.slice(1)-65536;return t||(n<0?String.fromCharCode(n+65536):String.fromCharCode(n>>10|55296,1023&n|56320))},re=/([\0-\x1f\x7f]|^-?\d)|^-$|[^\0-\x1f\x7f-\uFFFF\w-]/g,ie=function(e,t){return t?"\0"===e?"\ufffd":e.slice(0,-1)+"\\"+e.charCodeAt(e.length-1).toString(16)+" ":"\\"+e},oe=function(){T()},ae=be(function(e){return!0===e.disabled&&"fieldset"===e.nodeName.toLowerCase()},{dir:"parentNode",next:"legend"});try{H.apply(t=O.call(p.childNodes),p.childNodes),t[p.childNodes.length].nodeType}catch(e){H={apply:t.length?function(e,t){L.apply(e,O.call(t))}:function(e,t){var n=e.length,r=0;while(e[n++]=t[r++]);e.length=n-1}}}function se(t,e,n,r){var i,o,a,s,u,l,c,f=e&&e.ownerDocument,p=e?e.nodeType:9;if(n=n||[],"string"!=typeof t||!t||1!==p&&9!==p&&11!==p)return n;if(!r&&(T(e),e=e||C,E)){if(11!==p&&(u=Z.exec(t)))if(i=u[1]){if(9===p){if(!(a=e.getElementById(i)))return n;if(a.id===i)return n.push(a),n}else if(f&&(a=f.getElementById(i))&&y(e,a)&&a.id===i)return n.push(a),n}else{if(u[2])return H.apply(n,e.getElementsByTagName(t)),n;if((i=u[3])&&d.getElementsByClassName&&e.getElementsByClassName)return H.apply(n,e.getElementsByClassName(i)),n}if(d.qsa&&!N[t+" "]&&(!v||!v.test(t))&&(1!==p||"object"!==e.nodeName.toLowerCase())){if(c=t,f=e,1===p&&(U.test(t)||z.test(t))){(f=ee.test(t)&&ye(e.parentNode)||e)===e&&d.scope||((s=e.getAttribute("id"))?s=s.replace(re,ie):e.setAttribute("id",s=S)),o=(l=h(t)).length;while(o--)l[o]=(s?"#"+s:":scope")+" "+xe(l[o]);c=l.join(",")}try{return H.apply(n,f.querySelectorAll(c)),n}catch(e){N(t,!0)}finally{s===S&&e.removeAttribute("id")}}}return g(t.replace($,"$1"),e,n,r)}function ue(){var r=[];return function e(t,n){return r.push(t+" ")>b.cacheLength&&delete e[r.shift()],e[t+" "]=n}}function le(e){return e[S]=!0,e}function ce(e){var t=C.createElement("fieldset");try{return!!e(t)}catch(e){return!1}finally{t.parentNode&&t.parentNode.removeChild(t),t=null}}function fe(e,t){var n=e.split("|"),r=n.length;while(r--)b.attrHandle[n[r]]=t}function pe(e,t){var n=t&&e,r=n&&1===e.nodeType&&1===t.nodeType&&e.sourceIndex-t.sourceIndex;if(r)return r;if(n)while(n=n.nextSibling)if(n===t)return-1;return e?1:-1}function de(t){return function(e){return"input"===e.nodeName.toLowerCase()&&e.type===t}}function he(n){return function(e){var t=e.nodeName.toLowerCase();return("input"===t||"button"===t)&&e.type===n}}function ge(t){return function(e){return"form"in e?e.parentNode&&!1===e.disabled?"label"in e?"label"in e.parentNode?e.parentNode.disabled===t:e.disabled===t:e.isDisabled===t||e.isDisabled!==!t&&ae(e)===t:e.disabled===t:"label"in e&&e.disabled===t}}function ve(a){return le(function(o){return o=+o,le(function(e,t){var n,r=a([],e.length,o),i=r.length;while(i--)e[n=r[i]]&&(e[n]=!(t[n]=e[n]))})})}function ye(e){return e&&"undefined"!=typeof e.getElementsByTagName&&e}for(e in d=se.support={},i=se.isXML=function(e){var t=e.namespaceURI,n=(e.ownerDocument||e).documentElement;return!Y.test(t||n&&n.nodeName||"HTML")},T=se.setDocument=function(e){var t,n,r=e?e.ownerDocument||e:p;return r!=C&&9===r.nodeType&&r.documentElement&&(a=(C=r).documentElement,E=!i(C),p!=C&&(n=C.defaultView)&&n.top!==n&&(n.addEventListener?n.addEventListener("unload",oe,!1):n.attachEvent&&n.attachEvent("onunload",oe)),d.scope=ce(function(e){return a.appendChild(e).appendChild(C.createElement("div")),"undefined"!=typeof e.querySelectorAll&&!e.querySelectorAll(":scope fieldset div").length}),d.attributes=ce(function(e){return e.className="i",!e.getAttribute("className")}),d.getElementsByTagName=ce(function(e){return e.appendChild(C.createComment("")),!e.getElementsByTagName("*").length}),d.getElementsByClassName=K.test(C.getElementsByClassName),d.getById=ce(function(e){return a.appendChild(e).id=S,!C.getElementsByName||!C.getElementsByName(S).length}),d.getById?(b.filter.ID=function(e){var t=e.replace(te,ne);return function(e){return e.getAttribute("id")===t}},b.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&E){var n=t.getElementById(e);return n?[n]:[]}}):(b.filter.ID=function(e){var n=e.replace(te,ne);return function(e){var t="undefined"!=typeof e.getAttributeNode&&e.getAttributeNode("id");return t&&t.value===n}},b.find.ID=function(e,t){if("undefined"!=typeof t.getElementById&&E){var n,r,i,o=t.getElementById(e);if(o){if((n=o.getAttributeNode("id"))&&n.value===e)return[o];i=t.getElementsByName(e),r=0;while(o=i[r++])if((n=o.getAttributeNode("id"))&&n.value===e)return[o]}return[]}}),b.find.TAG=d.getElementsByTagName?function(e,t){return"undefined"!=typeof t.getElementsByTagName?t.getElementsByTagName(e):d.qsa?t.querySelectorAll(e):void 0}:function(e,t){var n,r=[],i=0,o=t.getElementsByTagName(e);if("*"===e){while(n=o[i++])1===n.nodeType&&r.push(n);return r}return o},b.find.CLASS=d.getElementsByClassName&&function(e,t){if("undefined"!=typeof t.getElementsByClassName&&E)return t.getElementsByClassName(e)},s=[],v=[],(d.qsa=K.test(C.querySelectorAll))&&(ce(function(e){var t;a.appendChild(e).innerHTML="<a id='"+S+"'></a><select id='"+S+"-\r\\' msallowcapture=''><option selected=''></option></select>",e.querySelectorAll("[msallowcapture^='']").length&&v.push("[*^$]="+M+"*(?:''|\"\")"),e.querySelectorAll("[selected]").length||v.push("\\["+M+"*(?:value|"+R+")"),e.querySelectorAll("[id~="+S+"-]").length||v.push("~="),(t=C.createElement("input")).setAttribute("name",""),e.appendChild(t),e.querySelectorAll("[name='']").length||v.push("\\["+M+"*name"+M+"*="+M+"*(?:''|\"\")"),e.querySelectorAll(":checked").length||v.push(":checked"),e.querySelectorAll("a#"+S+"+*").length||v.push(".#.+[+~]"),e.querySelectorAll("\\\f"),v.push("[\\r\\n\\f]")}),ce(function(e){e.innerHTML="<a href='' disabled='disabled'></a><select disabled='disabled'><option/></select>";var t=C.createElement("input");t.setAttribute("type","hidden"),e.appendChild(t).setAttribute("name","D"),e.querySelectorAll("[name=d]").length&&v.push("name"+M+"*[*^$|!~]?="),2!==e.querySelectorAll(":enabled").length&&v.push(":enabled",":disabled"),a.appendChild(e).disabled=!0,2!==e.querySelectorAll(":disabled").length&&v.push(":enabled",":disabled"),e.querySelectorAll("*,:x"),v.push(",.*:")})),(d.matchesSelector=K.test(c=a.matches||a.webkitMatchesSelector||a.mozMatchesSelector||a.oMatchesSelector||a.msMatchesSelector))&&ce(function(e){d.disconnectedMatch=c.call(e,"*"),c.call(e,"[s!='']:x"),s.push("!=",F)}),v=v.length&&new RegExp(v.join("|")),s=s.length&&new RegExp(s.join("|")),t=K.test(a.compareDocumentPosition),y=t||K.test(a.contains)?function(e,t){var n=9===e.nodeType?e.documentElement:e,r=t&&t.parentNode;return e===r||!(!r||1!==r.nodeType||!(n.contains?n.contains(r):e.compareDocumentPosition&&16&e.compareDocumentPosition(r)))}:function(e,t){if(t)while(t=t.parentNode)if(t===e)return!0;return!1},D=t?function(e,t){if(e===t)return l=!0,0;var n=!e.compareDocumentPosition-!t.compareDocumentPosition;return n||(1&(n=(e.ownerDocument||e)==(t.ownerDocument||t)?e.compareDocumentPosition(t):1)||!d.sortDetached&&t.compareDocumentPosition(e)===n?e==C||e.ownerDocument==p&&y(p,e)?-1:t==C||t.ownerDocument==p&&y(p,t)?1:u?P(u,e)-P(u,t):0:4&n?-1:1)}:function(e,t){if(e===t)return l=!0,0;var n,r=0,i=e.parentNode,o=t.parentNode,a=[e],s=[t];if(!i||!o)return e==C?-1:t==C?1:i?-1:o?1:u?P(u,e)-P(u,t):0;if(i===o)return pe(e,t);n=e;while(n=n.parentNode)a.unshift(n);n=t;while(n=n.parentNode)s.unshift(n);while(a[r]===s[r])r++;return r?pe(a[r],s[r]):a[r]==p?-1:s[r]==p?1:0}),C},se.matches=function(e,t){return se(e,null,null,t)},se.matchesSelector=function(e,t){if(T(e),d.matchesSelector&&E&&!N[t+" "]&&(!s||!s.test(t))&&(!v||!v.test(t)))try{var n=c.call(e,t);if(n||d.disconnectedMatch||e.document&&11!==e.document.nodeType)return n}catch(e){N(t,!0)}return 0<se(t,C,null,[e]).length},se.contains=function(e,t){return(e.ownerDocument||e)!=C&&T(e),y(e,t)},se.attr=function(e,t){(e.ownerDocument||e)!=C&&T(e);var n=b.attrHandle[t.toLowerCase()],r=n&&j.call(b.attrHandle,t.toLowerCase())?n(e,t,!E):void 0;return void 0!==r?r:d.attributes||!E?e.getAttribute(t):(r=e.getAttributeNode(t))&&r.specified?r.value:null},se.escape=function(e){return(e+"").replace(re,ie)},se.error=function(e){throw new Error("Syntax error, unrecognized expression: "+e)},se.uniqueSort=function(e){var t,n=[],r=0,i=0;if(l=!d.detectDuplicates,u=!d.sortStable&&e.slice(0),e.sort(D),l){while(t=e[i++])t===e[i]&&(r=n.push(i));while(r--)e.splice(n[r],1)}return u=null,e},o=se.getText=function(e){var t,n="",r=0,i=e.nodeType;if(i){if(1===i||9===i||11===i){if("string"==typeof e.textContent)return e.textContent;for(e=e.firstChild;e;e=e.nextSibling)n+=o(e)}else if(3===i||4===i)return e.nodeValue}else while(t=e[r++])n+=o(t);return n},(b=se.selectors={cacheLength:50,createPseudo:le,match:G,attrHandle:{},find:{},relative:{">":{dir:"parentNode",first:!0}," ":{dir:"parentNode"},"+":{dir:"previousSibling",first:!0},"~":{dir:"previousSibling"}},preFilter:{ATTR:function(e){return e[1]=e[1].replace(te,ne),e[3]=(e[3]||e[4]||e[5]||"").replace(te,ne),"~="===e[2]&&(e[3]=" "+e[3]+" "),e.slice(0,4)},CHILD:function(e){return e[1]=e[1].toLowerCase(),"nth"===e[1].slice(0,3)?(e[3]||se.error(e[0]),e[4]=+(e[4]?e[5]+(e[6]||1):2*("even"===e[3]||"odd"===e[3])),e[5]=+(e[7]+e[8]||"odd"===e[3])):e[3]&&se.error(e[0]),e},PSEUDO:function(e){var t,n=!e[6]&&e[2];return G.CHILD.test(e[0])?null:(e[3]?e[2]=e[4]||e[5]||"":n&&X.test(n)&&(t=h(n,!0))&&(t=n.indexOf(")",n.length-t)-n.length)&&(e[0]=e[0].slice(0,t),e[2]=n.slice(0,t)),e.slice(0,3))}},filter:{TAG:function(e){var t=e.replace(te,ne).toLowerCase();return"*"===e?function(){return!0}:function(e){return e.nodeName&&e.nodeName.toLowerCase()===t}},CLASS:function(e){var t=m[e+" "];return t||(t=new RegExp("(^|"+M+")"+e+"("+M+"|$)"))&&m(e,function(e){return t.test("string"==typeof e.className&&e.className||"undefined"!=typeof e.getAttribute&&e.getAttribute("class")||"")})},ATTR:function(n,r,i){return function(e){var t=se.attr(e,n);return null==t?"!="===r:!r||(t+="","="===r?t===i:"!="===r?t!==i:"^="===r?i&&0===t.indexOf(i):"*="===r?i&&-1<t.indexOf(i):"$="===r?i&&t.slice(-i.length)===i:"~="===r?-1<(" "+t.replace(B," ")+" ").indexOf(i):"|="===r&&(t===i||t.slice(0,i.length+1)===i+"-"))}},CHILD:function(h,e,t,g,v){var y="nth"!==h.slice(0,3),m="last"!==h.slice(-4),x="of-type"===e;return 1===g&&0===v?function(e){return!!e.parentNode}:function(e,t,n){var r,i,o,a,s,u,l=y!==m?"nextSibling":"previousSibling",c=e.parentNode,f=x&&e.nodeName.toLowerCase(),p=!n&&!x,d=!1;if(c){if(y){while(l){a=e;while(a=a[l])if(x?a.nodeName.toLowerCase()===f:1===a.nodeType)return!1;u=l="only"===h&&!u&&"nextSibling"}return!0}if(u=[m?c.firstChild:c.lastChild],m&&p){d=(s=(r=(i=(o=(a=c)[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]||[])[0]===k&&r[1])&&r[2],a=s&&c.childNodes[s];while(a=++s&&a&&a[l]||(d=s=0)||u.pop())if(1===a.nodeType&&++d&&a===e){i[h]=[k,s,d];break}}else if(p&&(d=s=(r=(i=(o=(a=e)[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]||[])[0]===k&&r[1]),!1===d)while(a=++s&&a&&a[l]||(d=s=0)||u.pop())if((x?a.nodeName.toLowerCase()===f:1===a.nodeType)&&++d&&(p&&((i=(o=a[S]||(a[S]={}))[a.uniqueID]||(o[a.uniqueID]={}))[h]=[k,d]),a===e))break;return(d-=v)===g||d%g==0&&0<=d/g}}},PSEUDO:function(e,o){var t,a=b.pseudos[e]||b.setFilters[e.toLowerCase()]||se.error("unsupported pseudo: "+e);return a[S]?a(o):1<a.length?(t=[e,e,"",o],b.setFilters.hasOwnProperty(e.toLowerCase())?le(function(e,t){var n,r=a(e,o),i=r.length;while(i--)e[n=P(e,r[i])]=!(t[n]=r[i])}):function(e){return a(e,0,t)}):a}},pseudos:{not:le(function(e){var r=[],i=[],s=f(e.replace($,"$1"));return s[S]?le(function(e,t,n,r){var i,o=s(e,null,r,[]),a=e.length;while(a--)(i=o[a])&&(e[a]=!(t[a]=i))}):function(e,t,n){return r[0]=e,s(r,null,n,i),r[0]=null,!i.pop()}}),has:le(function(t){return function(e){return 0<se(t,e).length}}),contains:le(function(t){return t=t.replace(te,ne),function(e){return-1<(e.textContent||o(e)).indexOf(t)}}),lang:le(function(n){return V.test(n||"")||se.error("unsupported lang: "+n),n=n.replace(te,ne).toLowerCase(),function(e){var t;do{if(t=E?e.lang:e.getAttribute("xml:lang")||e.getAttribute("lang"))return(t=t.toLowerCase())===n||0===t.indexOf(n+"-")}while((e=e.parentNode)&&1===e.nodeType);return!1}}),target:function(e){var t=n.location&&n.location.hash;return t&&t.slice(1)===e.id},root:function(e){return e===a},focus:function(e){return e===C.activeElement&&(!C.hasFocus||C.hasFocus())&&!!(e.type||e.href||~e.tabIndex)},enabled:ge(!1),disabled:ge(!0),checked:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&!!e.checked||"option"===t&&!!e.selected},selected:function(e){return e.parentNode&&e.parentNode.selectedIndex,!0===e.selected},empty:function(e){for(e=e.firstChild;e;e=e.nextSibling)if(e.nodeType<6)return!1;return!0},parent:function(e){return!b.pseudos.empty(e)},header:function(e){return J.test(e.nodeName)},input:function(e){return Q.test(e.nodeName)},button:function(e){var t=e.nodeName.toLowerCase();return"input"===t&&"button"===e.type||"button"===t},text:function(e){var t;return"input"===e.nodeName.toLowerCase()&&"text"===e.type&&(null==(t=e.getAttribute("type"))||"text"===t.toLowerCase())},first:ve(function(){return[0]}),last:ve(function(e,t){return[t-1]}),eq:ve(function(e,t,n){return[n<0?n+t:n]}),even:ve(function(e,t){for(var n=0;n<t;n+=2)e.push(n);return e}),odd:ve(function(e,t){for(var n=1;n<t;n+=2)e.push(n);return e}),lt:ve(function(e,t,n){for(var r=n<0?n+t:t<n?t:n;0<=--r;)e.push(r);return e}),gt:ve(function(e,t,n){for(var r=n<0?n+t:n;++r<t;)e.push(r);return e})}}).pseudos.nth=b.pseudos.eq,{radio:!0,checkbox:!0,file:!0,password:!0,image:!0})b.pseudos[e]=de(e);for(e in{submit:!0,reset:!0})b.pseudos[e]=he(e);function me(){}function xe(e){for(var t=0,n=e.length,r="";t<n;t++)r+=e[t].value;return r}function be(s,e,t){var u=e.dir,l=e.next,c=l||u,f=t&&"parentNode"===c,p=r++;return e.first?function(e,t,n){while(e=e[u])if(1===e.nodeType||f)return s(e,t,n);return!1}:function(e,t,n){var r,i,o,a=[k,p];if(n){while(e=e[u])if((1===e.nodeType||f)&&s(e,t,n))return!0}else while(e=e[u])if(1===e.nodeType||f)if(i=(o=e[S]||(e[S]={}))[e.uniqueID]||(o[e.uniqueID]={}),l&&l===e.nodeName.toLowerCase())e=e[u]||e;else{if((r=i[c])&&r[0]===k&&r[1]===p)return a[2]=r[2];if((i[c]=a)[2]=s(e,t,n))return!0}return!1}}function we(i){return 1<i.length?function(e,t,n){var r=i.length;while(r--)if(!i[r](e,t,n))return!1;return!0}:i[0]}function Te(e,t,n,r,i){for(var o,a=[],s=0,u=e.length,l=null!=t;s<u;s++)(o=e[s])&&(n&&!n(o,r,i)||(a.push(o),l&&t.push(s)));return a}function Ce(d,h,g,v,y,e){return v&&!v[S]&&(v=Ce(v)),y&&!y[S]&&(y=Ce(y,e)),le(function(e,t,n,r){var i,o,a,s=[],u=[],l=t.length,c=e||function(e,t,n){for(var r=0,i=t.length;r<i;r++)se(e,t[r],n);return n}(h||"*",n.nodeType?[n]:n,[]),f=!d||!e&&h?c:Te(c,s,d,n,r),p=g?y||(e?d:l||v)?[]:t:f;if(g&&g(f,p,n,r),v){i=Te(p,u),v(i,[],n,r),o=i.length;while(o--)(a=i[o])&&(p[u[o]]=!(f[u[o]]=a))}if(e){if(y||d){if(y){i=[],o=p.length;while(o--)(a=p[o])&&i.push(f[o]=a);y(null,p=[],i,r)}o=p.length;while(o--)(a=p[o])&&-1<(i=y?P(e,a):s[o])&&(e[i]=!(t[i]=a))}}else p=Te(p===t?p.splice(l,p.length):p),y?y(null,t,p,r):H.apply(t,p)})}function Ee(e){for(var i,t,n,r=e.length,o=b.relative[e[0].type],a=o||b.relative[" "],s=o?1:0,u=be(function(e){return e===i},a,!0),l=be(function(e){return-1<P(i,e)},a,!0),c=[function(e,t,n){var r=!o&&(n||t!==w)||((i=t).nodeType?u(e,t,n):l(e,t,n));return i=null,r}];s<r;s++)if(t=b.relative[e[s].type])c=[be(we(c),t)];else{if((t=b.filter[e[s].type].apply(null,e[s].matches))[S]){for(n=++s;n<r;n++)if(b.relative[e[n].type])break;return Ce(1<s&&we(c),1<s&&xe(e.slice(0,s-1).concat({value:" "===e[s-2].type?"*":""})).replace($,"$1"),t,s<n&&Ee(e.slice(s,n)),n<r&&Ee(e=e.slice(n)),n<r&&xe(e))}c.push(t)}return we(c)}return me.prototype=b.filters=b.pseudos,b.setFilters=new me,h=se.tokenize=function(e,t){var n,r,i,o,a,s,u,l=x[e+" "];if(l)return t?0:l.slice(0);a=e,s=[],u=b.preFilter;while(a){for(o in n&&!(r=_.exec(a))||(r&&(a=a.slice(r[0].length)||a),s.push(i=[])),n=!1,(r=z.exec(a))&&(n=r.shift(),i.push({value:n,type:r[0].replace($," ")}),a=a.slice(n.length)),b.filter)!(r=G[o].exec(a))||u[o]&&!(r=u[o](r))||(n=r.shift(),i.push({value:n,type:o,matches:r}),a=a.slice(n.length));if(!n)break}return t?a.length:a?se.error(e):x(e,s).slice(0)},f=se.compile=function(e,t){var n,v,y,m,x,r,i=[],o=[],a=A[e+" "];if(!a){t||(t=h(e)),n=t.length;while(n--)(a=Ee(t[n]))[S]?i.push(a):o.push(a);(a=A(e,(v=o,m=0<(y=i).length,x=0<v.length,r=function(e,t,n,r,i){var o,a,s,u=0,l="0",c=e&&[],f=[],p=w,d=e||x&&b.find.TAG("*",i),h=k+=null==p?1:Math.random()||.1,g=d.length;for(i&&(w=t==C||t||i);l!==g&&null!=(o=d[l]);l++){if(x&&o){a=0,t||o.ownerDocument==C||(T(o),n=!E);while(s=v[a++])if(s(o,t||C,n)){r.push(o);break}i&&(k=h)}m&&((o=!s&&o)&&u--,e&&c.push(o))}if(u+=l,m&&l!==u){a=0;while(s=y[a++])s(c,f,t,n);if(e){if(0<u)while(l--)c[l]||f[l]||(f[l]=q.call(r));f=Te(f)}H.apply(r,f),i&&!e&&0<f.length&&1<u+y.length&&se.uniqueSort(r)}return i&&(k=h,w=p),c},m?le(r):r))).selector=e}return a},g=se.select=function(e,t,n,r){var i,o,a,s,u,l="function"==typeof e&&e,c=!r&&h(e=l.selector||e);if(n=n||[],1===c.length){if(2<(o=c[0]=c[0].slice(0)).length&&"ID"===(a=o[0]).type&&9===t.nodeType&&E&&b.relative[o[1].type]){if(!(t=(b.find.ID(a.matches[0].replace(te,ne),t)||[])[0]))return n;l&&(t=t.parentNode),e=e.slice(o.shift().value.length)}i=G.needsContext.test(e)?0:o.length;while(i--){if(a=o[i],b.relative[s=a.type])break;if((u=b.find[s])&&(r=u(a.matches[0].replace(te,ne),ee.test(o[0].type)&&ye(t.parentNode)||t))){if(o.splice(i,1),!(e=r.length&&xe(o)))return H.apply(n,r),n;break}}}return(l||f(e,c))(r,t,!E,n,!t||ee.test(e)&&ye(t.parentNode)||t),n},d.sortStable=S.split("").sort(D).join("")===S,d.detectDuplicates=!!l,T(),d.sortDetached=ce(function(e){return 1&e.compareDocumentPosition(C.createElement("fieldset"))}),ce(function(e){return e.innerHTML="<a href='#'></a>","#"===e.firstChild.getAttribute("href")})||fe("type|href|height|width",function(e,t,n){if(!n)return e.getAttribute(t,"type"===t.toLowerCase()?1:2)}),d.attributes&&ce(function(e){return e.innerHTML="<input/>",e.firstChild.setAttribute("value",""),""===e.firstChild.getAttribute("value")})||fe("value",function(e,t,n){if(!n&&"input"===e.nodeName.toLowerCase())return e.defaultValue}),ce(function(e){return null==e.getAttribute("disabled")})||fe(R,function(e,t,n){var r;if(!n)return!0===e[t]?t.toLowerCase():(r=e.getAttributeNode(t))&&r.specified?r.value:null}),se}(C);S.find=d,S.expr=d.selectors,S.expr[":"]=S.expr.pseudos,S.uniqueSort=S.unique=d.uniqueSort,S.text=d.getText,S.isXMLDoc=d.isXML,S.contains=d.contains,S.escapeSelector=d.escape;var h=function(e,t,n){var r=[],i=void 0!==n;while((e=e[t])&&9!==e.nodeType)if(1===e.nodeType){if(i&&S(e).is(n))break;r.push(e)}return r},T=function(e,t){for(var n=[];e;e=e.nextSibling)1===e.nodeType&&e!==t&&n.push(e);return n},k=S.expr.match.needsContext;function A(e,t){return e.nodeName&&e.nodeName.toLowerCase()===t.toLowerCase()}var N=/^<([a-z][^\/\0>:\x20\t\r\n\f]*)[\x20\t\r\n\f]*\/?>(?:<\/\1>|)$/i;function D(e,n,r){return m(n)?S.grep(e,function(e,t){return!!n.call(e,t,e)!==r}):n.nodeType?S.grep(e,function(e){return e===n!==r}):"string"!=typeof n?S.grep(e,function(e){return-1<i.call(n,e)!==r}):S.filter(n,e,r)}S.filter=function(e,t,n){var r=t[0];return n&&(e=":not("+e+")"),1===t.length&&1===r.nodeType?S.find.matchesSelector(r,e)?[r]:[]:S.find.matches(e,S.grep(t,function(e){return 1===e.nodeType}))},S.fn.extend({find:function(e){var t,n,r=this.length,i=this;if("string"!=typeof e)return this.pushStack(S(e).filter(function(){for(t=0;t<r;t++)if(S.contains(i[t],this))return!0}));for(n=this.pushStack([]),t=0;t<r;t++)S.find(e,i[t],n);return 1<r?S.uniqueSort(n):n},filter:function(e){return this.pushStack(D(this,e||[],!1))},not:function(e){return this.pushStack(D(this,e||[],!0))},is:function(e){return!!D(this,"string"==typeof e&&k.test(e)?S(e):e||[],!1).length}});var j,q=/^(?:\s*(<[\w\W]+>)[^>]*|#([\w-]+))$/;(S.fn.init=function(e,t,n){var r,i;if(!e)return this;if(n=n||j,"string"==typeof e){if(!(r="<"===e[0]&&">"===e[e.length-1]&&3<=e.length?[null,e,null]:q.exec(e))||!r[1]&&t)return!t||t.jquery?(t||n).find(e):this.constructor(t).find(e);if(r[1]){if(t=t instanceof S?t[0]:t,S.merge(this,S.parseHTML(r[1],t&&t.nodeType?t.ownerDocument||t:E,!0)),N.test(r[1])&&S.isPlainObject(t))for(r in t)m(this[r])?this[r](t[r]):this.attr(r,t[r]);return this}return(i=E.getElementById(r[2]))&&(this[0]=i,this.length=1),this}return e.nodeType?(this[0]=e,this.length=1,this):m(e)?void 0!==n.ready?n.ready(e):e(S):S.makeArray(e,this)}).prototype=S.fn,j=S(E);var L=/^(?:parents|prev(?:Until|All))/,H={children:!0,contents:!0,next:!0,prev:!0};function O(e,t){while((e=e[t])&&1!==e.nodeType);return e}S.fn.extend({has:function(e){var t=S(e,this),n=t.length;return this.filter(function(){for(var e=0;e<n;e++)if(S.contains(this,t[e]))return!0})},closest:function(e,t){var n,r=0,i=this.length,o=[],a="string"!=typeof e&&S(e);if(!k.test(e))for(;r<i;r++)for(n=this[r];n&&n!==t;n=n.parentNode)if(n.nodeType<11&&(a?-1<a.index(n):1===n.nodeType&&S.find.matchesSelector(n,e))){o.push(n);break}return this.pushStack(1<o.length?S.uniqueSort(o):o)},index:function(e){return e?"string"==typeof e?i.call(S(e),this[0]):i.call(this,e.jquery?e[0]:e):this[0]&&this[0].parentNode?this.first().prevAll().length:-1},add:function(e,t){return this.pushStack(S.uniqueSort(S.merge(this.get(),S(e,t))))},addBack:function(e){return this.add(null==e?this.prevObject:this.prevObject.filter(e))}}),S.each({parent:function(e){var t=e.parentNode;return t&&11!==t.nodeType?t:null},parents:function(e){return h(e,"parentNode")},parentsUntil:function(e,t,n){return h(e,"parentNode",n)},next:function(e){return O(e,"nextSibling")},prev:function(e){return O(e,"previousSibling")},nextAll:function(e){return h(e,"nextSibling")},prevAll:function(e){return h(e,"previousSibling")},nextUntil:function(e,t,n){return h(e,"nextSibling",n)},prevUntil:function(e,t,n){return h(e,"previousSibling",n)},siblings:function(e){return T((e.parentNode||{}).firstChild,e)},children:function(e){return T(e.firstChild)},contents:function(e){return null!=e.contentDocument&&r(e.contentDocument)?e.contentDocument:(A(e,"template")&&(e=e.content||e),S.merge([],e.childNodes))}},function(r,i){S.fn[r]=function(e,t){var n=S.map(this,i,e);return"Until"!==r.slice(-5)&&(t=e),t&&"string"==typeof t&&(n=S.filter(t,n)),1<this.length&&(H[r]||S.uniqueSort(n),L.test(r)&&n.reverse()),this.pushStack(n)}});var P=/[^\x20\t\r\n\f]+/g;function R(e){return e}function M(e){throw e}function I(e,t,n,r){var i;try{e&&m(i=e.promise)?i.call(e).done(t).fail(n):e&&m(i=e.then)?i.call(e,t,n):t.apply(void 0,[e].slice(r))}catch(e){n.apply(void 0,[e])}}S.Callbacks=function(r){var e,n;r="string"==typeof r?(e=r,n={},S.each(e.match(P)||[],function(e,t){n[t]=!0}),n):S.extend({},r);var i,t,o,a,s=[],u=[],l=-1,c=function(){for(a=a||r.once,o=i=!0;u.length;l=-1){t=u.shift();while(++l<s.length)!1===s[l].apply(t[0],t[1])&&r.stopOnFalse&&(l=s.length,t=!1)}r.memory||(t=!1),i=!1,a&&(s=t?[]:"")},f={add:function(){return s&&(t&&!i&&(l=s.length-1,u.push(t)),function n(e){S.each(e,function(e,t){m(t)?r.unique&&f.has(t)||s.push(t):t&&t.length&&"string"!==w(t)&&n(t)})}(arguments),t&&!i&&c()),this},remove:function(){return S.each(arguments,function(e,t){var n;while(-1<(n=S.inArray(t,s,n)))s.splice(n,1),n<=l&&l--}),this},has:function(e){return e?-1<S.inArray(e,s):0<s.length},empty:function(){return s&&(s=[]),this},disable:function(){return a=u=[],s=t="",this},disabled:function(){return!s},lock:function(){return a=u=[],t||i||(s=t=""),this},locked:function(){return!!a},fireWith:function(e,t){return a||(t=[e,(t=t||[]).slice?t.slice():t],u.push(t),i||c()),this},fire:function(){return f.fireWith(this,arguments),this},fired:function(){return!!o}};return f},S.extend({Deferred:function(e){var o=[["notify","progress",S.Callbacks("memory"),S.Callbacks("memory"),2],["resolve","done",S.Callbacks("once memory"),S.Callbacks("once memory"),0,"resolved"],["reject","fail",S.Callbacks("once memory"),S.Callbacks("once memory"),1,"rejected"]],i="pending",a={state:function(){return i},always:function(){return s.done(arguments).fail(arguments),this},"catch":function(e){return a.then(null,e)},pipe:function(){var i=arguments;return S.Deferred(function(r){S.each(o,function(e,t){var n=m(i[t[4]])&&i[t[4]];s[t[1]](function(){var e=n&&n.apply(this,arguments);e&&m(e.promise)?e.promise().progress(r.notify).done(r.resolve).fail(r.reject):r[t[0]+"With"](this,n?[e]:arguments)})}),i=null}).promise()},then:function(t,n,r){var u=0;function l(i,o,a,s){return function(){var n=this,r=arguments,e=function(){var e,t;if(!(i<u)){if((e=a.apply(n,r))===o.promise())throw new TypeError("Thenable self-resolution");t=e&&("object"==typeof e||"function"==typeof e)&&e.then,m(t)?s?t.call(e,l(u,o,R,s),l(u,o,M,s)):(u++,t.call(e,l(u,o,R,s),l(u,o,M,s),l(u,o,R,o.notifyWith))):(a!==R&&(n=void 0,r=[e]),(s||o.resolveWith)(n,r))}},t=s?e:function(){try{e()}catch(e){S.Deferred.exceptionHook&&S.Deferred.exceptionHook(e,t.stackTrace),u<=i+1&&(a!==M&&(n=void 0,r=[e]),o.rejectWith(n,r))}};i?t():(S.Deferred.getStackHook&&(t.stackTrace=S.Deferred.getStackHook()),C.setTimeout(t))}}return S.Deferred(function(e){o[0][3].add(l(0,e,m(r)?r:R,e.notifyWith)),o[1][3].add(l(0,e,m(t)?t:R)),o[2][3].add(l(0,e,m(n)?n:M))}).promise()},promise:function(e){return null!=e?S.extend(e,a):a}},s={};return S.each(o,function(e,t){var n=t[2],r=t[5];a[t[1]]=n.add,r&&n.add(function(){i=r},o[3-e][2].disable,o[3-e][3].disable,o[0][2].lock,o[0][3].lock),n.add(t[3].fire),s[t[0]]=function(){return s[t[0]+"With"](this===s?void 0:this,arguments),this},s[t[0]+"With"]=n.fireWith}),a.promise(s),e&&e.call(s,s),s},when:function(e){var n=arguments.length,t=n,r=Array(t),i=s.call(arguments),o=S.Deferred(),a=function(t){return function(e){r[t]=this,i[t]=1<arguments.length?s.call(arguments):e,--n||o.resolveWith(r,i)}};if(n<=1&&(I(e,o.done(a(t)).resolve,o.reject,!n),"pending"===o.state()||m(i[t]&&i[t].then)))return o.then();while(t--)I(i[t],a(t),o.reject);return o.promise()}});var W=/^(Eval|Internal|Range|Reference|Syntax|Type|URI)Error$/;S.Deferred.exceptionHook=function(e,t){C.console&&C.console.warn&&e&&W.test(e.name)&&C.console.warn("jQuery.Deferred exception: "+e.message,e.stack,t)},S.readyException=function(e){C.setTimeout(function(){throw e})};var F=S.Deferred();function B(){E.removeEventListener("DOMContentLoaded",B),C.removeEventListener("load",B),S.ready()}S.fn.ready=function(e){return F.then(e)["catch"](function(e){S.readyException(e)}),this},S.extend({isReady:!1,readyWait:1,ready:function(e){(!0===e?--S.readyWait:S.isReady)||(S.isReady=!0)!==e&&0<--S.readyWait||F.resolveWith(E,[S])}}),S.ready.then=F.then,"complete"===E.readyState||"loading"!==E.readyState&&!E.documentElement.doScroll?C.setTimeout(S.ready):(E.addEventListener("DOMContentLoaded",B),C.addEventListener("load",B));var $=function(e,t,n,r,i,o,a){var s=0,u=e.length,l=null==n;if("object"===w(n))for(s in i=!0,n)$(e,t,s,n[s],!0,o,a);else if(void 0!==r&&(i=!0,m(r)||(a=!0),l&&(a?(t.call(e,r),t=null):(l=t,t=function(e,t,n){return l.call(S(e),n)})),t))for(;s<u;s++)t(e[s],n,a?r:r.call(e[s],s,t(e[s],n)));return i?e:l?t.call(e):u?t(e[0],n):o},_=/^-ms-/,z=/-([a-z])/g;function U(e,t){return t.toUpperCase()}function X(e){return e.replace(_,"ms-").replace(z,U)}var V=function(e){return 1===e.nodeType||9===e.nodeType||!+e.nodeType};function G(){this.expando=S.expando+G.uid++}G.uid=1,G.prototype={cache:function(e){var t=e[this.expando];return t||(t={},V(e)&&(e.nodeType?e[this.expando]=t:Object.defineProperty(e,this.expando,{value:t,configurable:!0}))),t},set:function(e,t,n){var r,i=this.cache(e);if("string"==typeof t)i[X(t)]=n;else for(r in t)i[X(r)]=t[r];return i},get:function(e,t){return void 0===t?this.cache(e):e[this.expando]&&e[this.expando][X(t)]},access:function(e,t,n){return void 0===t||t&&"string"==typeof t&&void 0===n?this.get(e,t):(this.set(e,t,n),void 0!==n?n:t)},remove:function(e,t){var n,r=e[this.expando];if(void 0!==r){if(void 0!==t){n=(t=Array.isArray(t)?t.map(X):(t=X(t))in r?[t]:t.match(P)||[]).length;while(n--)delete r[t[n]]}(void 0===t||S.isEmptyObject(r))&&(e.nodeType?e[this.expando]=void 0:delete e[this.expando])}},hasData:function(e){var t=e[this.expando];return void 0!==t&&!S.isEmptyObject(t)}};var Y=new G,Q=new G,J=/^(?:\{[\w\W]*\}|\[[\w\W]*\])$/,K=/[A-Z]/g;function Z(e,t,n){var r,i;if(void 0===n&&1===e.nodeType)if(r="data-"+t.replace(K,"-$&").toLowerCase(),"string"==typeof(n=e.getAttribute(r))){try{n="true"===(i=n)||"false"!==i&&("null"===i?null:i===+i+""?+i:J.test(i)?JSON.parse(i):i)}catch(e){}Q.set(e,t,n)}else n=void 0;return n}S.extend({hasData:function(e){return Q.hasData(e)||Y.hasData(e)},data:function(e,t,n){return Q.access(e,t,n)},removeData:function(e,t){Q.remove(e,t)},_data:function(e,t,n){return Y.access(e,t,n)},_removeData:function(e,t){Y.remove(e,t)}}),S.fn.extend({data:function(n,e){var t,r,i,o=this[0],a=o&&o.attributes;if(void 0===n){if(this.length&&(i=Q.get(o),1===o.nodeType&&!Y.get(o,"hasDataAttrs"))){t=a.length;while(t--)a[t]&&0===(r=a[t].name).indexOf("data-")&&(r=X(r.slice(5)),Z(o,r,i[r]));Y.set(o,"hasDataAttrs",!0)}return i}return"object"==typeof n?this.each(function(){Q.set(this,n)}):$(this,function(e){var t;if(o&&void 0===e)return void 0!==(t=Q.get(o,n))?t:void 0!==(t=Z(o,n))?t:void 0;this.each(function(){Q.set(this,n,e)})},null,e,1<arguments.length,null,!0)},removeData:function(e){return this.each(function(){Q.remove(this,e)})}}),S.extend({queue:function(e,t,n){var r;if(e)return t=(t||"fx")+"queue",r=Y.get(e,t),n&&(!r||Array.isArray(n)?r=Y.access(e,t,S.makeArray(n)):r.push(n)),r||[]},dequeue:function(e,t){t=t||"fx";var n=S.queue(e,t),r=n.length,i=n.shift(),o=S._queueHooks(e,t);"inprogress"===i&&(i=n.shift(),r--),i&&("fx"===t&&n.unshift("inprogress"),delete o.stop,i.call(e,function(){S.dequeue(e,t)},o)),!r&&o&&o.empty.fire()},_queueHooks:function(e,t){var n=t+"queueHooks";return Y.get(e,n)||Y.access(e,n,{empty:S.Callbacks("once memory").add(function(){Y.remove(e,[t+"queue",n])})})}}),S.fn.extend({queue:function(t,n){var e=2;return"string"!=typeof t&&(n=t,t="fx",e--),arguments.length<e?S.queue(this[0],t):void 0===n?this:this.each(function(){var e=S.queue(this,t,n);S._queueHooks(this,t),"fx"===t&&"inprogress"!==e[0]&&S.dequeue(this,t)})},dequeue:function(e){return this.each(function(){S.dequeue(this,e)})},clearQueue:function(e){return this.queue(e||"fx",[])},promise:function(e,t){var n,r=1,i=S.Deferred(),o=this,a=this.length,s=function(){--r||i.resolveWith(o,[o])};"string"!=typeof e&&(t=e,e=void 0),e=e||"fx";while(a--)(n=Y.get(o[a],e+"queueHooks"))&&n.empty&&(r++,n.empty.add(s));return s(),i.promise(t)}});var ee=/[+-]?(?:\d*\.|)\d+(?:[eE][+-]?\d+|)/.source,te=new RegExp("^(?:([+-])=|)("+ee+")([a-z%]*)$","i"),ne=["Top","Right","Bottom","Left"],re=E.documentElement,ie=function(e){return S.contains(e.ownerDocument,e)},oe={composed:!0};re.getRootNode&&(ie=function(e){return S.contains(e.ownerDocument,e)||e.getRootNode(oe)===e.ownerDocument});var ae=function(e,t){return"none"===(e=t||e).style.display||""===e.style.display&&ie(e)&&"none"===S.css(e,"display")};function se(e,t,n,r){var i,o,a=20,s=r?function(){return r.cur()}:function(){return S.css(e,t,"")},u=s(),l=n&&n[3]||(S.cssNumber[t]?"":"px"),c=e.nodeType&&(S.cssNumber[t]||"px"!==l&&+u)&&te.exec(S.css(e,t));if(c&&c[3]!==l){u/=2,l=l||c[3],c=+u||1;while(a--)S.style(e,t,c+l),(1-o)*(1-(o=s()/u||.5))<=0&&(a=0),c/=o;c*=2,S.style(e,t,c+l),n=n||[]}return n&&(c=+c||+u||0,i=n[1]?c+(n[1]+1)*n[2]:+n[2],r&&(r.unit=l,r.start=c,r.end=i)),i}var ue={};function le(e,t){for(var n,r,i,o,a,s,u,l=[],c=0,f=e.length;c<f;c++)(r=e[c]).style&&(n=r.style.display,t?("none"===n&&(l[c]=Y.get(r,"display")||null,l[c]||(r.style.display="")),""===r.style.display&&ae(r)&&(l[c]=(u=a=o=void 0,a=(i=r).ownerDocument,s=i.nodeName,(u=ue[s])||(o=a.body.appendChild(a.createElement(s)),u=S.css(o,"display"),o.parentNode.removeChild(o),"none"===u&&(u="block"),ue[s]=u)))):"none"!==n&&(l[c]="none",Y.set(r,"display",n)));for(c=0;c<f;c++)null!=l[c]&&(e[c].style.display=l[c]);return e}S.fn.extend({show:function(){return le(this,!0)},hide:function(){return le(this)},toggle:function(e){return"boolean"==typeof e?e?this.show():this.hide():this.each(function(){ae(this)?S(this).show():S(this).hide()})}});var ce,fe,pe=/^(?:checkbox|radio)$/i,de=/<([a-z][^\/\0>\x20\t\r\n\f]*)/i,he=/^$|^module$|\/(?:java|ecma)script/i;ce=E.createDocumentFragment().appendChild(E.createElement("div")),(fe=E.createElement("input")).setAttribute("type","radio"),fe.setAttribute("checked","checked"),fe.setAttribute("name","t"),ce.appendChild(fe),y.checkClone=ce.cloneNode(!0).cloneNode(!0).lastChild.checked,ce.innerHTML="<textarea>x</textarea>",y.noCloneChecked=!!ce.cloneNode(!0).lastChild.defaultValue,ce.innerHTML="<option></option>",y.option=!!ce.lastChild;var ge={thead:[1,"<table>","</table>"],col:[2,"<table><colgroup>","</colgroup></table>"],tr:[2,"<table><tbody>","</tbody></table>"],td:[3,"<table><tbody><tr>","</tr></tbody></table>"],_default:[0,"",""]};function ve(e,t){var n;return n="undefined"!=typeof e.getElementsByTagName?e.getElementsByTagName(t||"*"):"undefined"!=typeof e.querySelectorAll?e.querySelectorAll(t||"*"):[],void 0===t||t&&A(e,t)?S.merge([e],n):n}function ye(e,t){for(var n=0,r=e.length;n<r;n++)Y.set(e[n],"globalEval",!t||Y.get(t[n],"globalEval"))}ge.tbody=ge.tfoot=ge.colgroup=ge.caption=ge.thead,ge.th=ge.td,y.option||(ge.optgroup=ge.option=[1,"<select multiple='multiple'>","</select>"]);var me=/<|&#?\w+;/;function xe(e,t,n,r,i){for(var o,a,s,u,l,c,f=t.createDocumentFragment(),p=[],d=0,h=e.length;d<h;d++)if((o=e[d])||0===o)if("object"===w(o))S.merge(p,o.nodeType?[o]:o);else if(me.test(o)){a=a||f.appendChild(t.createElement("div")),s=(de.exec(o)||["",""])[1].toLowerCase(),u=ge[s]||ge._default,a.innerHTML=u[1]+S.htmlPrefilter(o)+u[2],c=u[0];while(c--)a=a.lastChild;S.merge(p,a.childNodes),(a=f.firstChild).textContent=""}else p.push(t.createTextNode(o));f.textContent="",d=0;while(o=p[d++])if(r&&-1<S.inArray(o,r))i&&i.push(o);else if(l=ie(o),a=ve(f.appendChild(o),"script"),l&&ye(a),n){c=0;while(o=a[c++])he.test(o.type||"")&&n.push(o)}return f}var be=/^key/,we=/^(?:mouse|pointer|contextmenu|drag|drop)|click/,Te=/^([^.]*)(?:\.(.+)|)/;function Ce(){return!0}function Ee(){return!1}function Se(e,t){return e===function(){try{return E.activeElement}catch(e){}}()==("focus"===t)}function ke(e,t,n,r,i,o){var a,s;if("object"==typeof t){for(s in"string"!=typeof n&&(r=r||n,n=void 0),t)ke(e,s,n,r,t[s],o);return e}if(null==r&&null==i?(i=n,r=n=void 0):null==i&&("string"==typeof n?(i=r,r=void 0):(i=r,r=n,n=void 0)),!1===i)i=Ee;else if(!i)return e;return 1===o&&(a=i,(i=function(e){return S().off(e),a.apply(this,arguments)}).guid=a.guid||(a.guid=S.guid++)),e.each(function(){S.event.add(this,t,i,r,n)})}function Ae(e,i,o){o?(Y.set(e,i,!1),S.event.add(e,i,{namespace:!1,handler:function(e){var t,n,r=Y.get(this,i);if(1&e.isTrigger&&this[i]){if(r.length)(S.event.special[i]||{}).delegateType&&e.stopPropagation();else if(r=s.call(arguments),Y.set(this,i,r),t=o(this,i),this[i](),r!==(n=Y.get(this,i))||t?Y.set(this,i,!1):n={},r!==n)return e.stopImmediatePropagation(),e.preventDefault(),n.value}else r.length&&(Y.set(this,i,{value:S.event.trigger(S.extend(r[0],S.Event.prototype),r.slice(1),this)}),e.stopImmediatePropagation())}})):void 0===Y.get(e,i)&&S.event.add(e,i,Ce)}S.event={global:{},add:function(t,e,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,v=Y.get(t);if(V(t)){n.handler&&(n=(o=n).handler,i=o.selector),i&&S.find.matchesSelector(re,i),n.guid||(n.guid=S.guid++),(u=v.events)||(u=v.events=Object.create(null)),(a=v.handle)||(a=v.handle=function(e){return"undefined"!=typeof S&&S.event.triggered!==e.type?S.event.dispatch.apply(t,arguments):void 0}),l=(e=(e||"").match(P)||[""]).length;while(l--)d=g=(s=Te.exec(e[l])||[])[1],h=(s[2]||"").split(".").sort(),d&&(f=S.event.special[d]||{},d=(i?f.delegateType:f.bindType)||d,f=S.event.special[d]||{},c=S.extend({type:d,origType:g,data:r,handler:n,guid:n.guid,selector:i,needsContext:i&&S.expr.match.needsContext.test(i),namespace:h.join(".")},o),(p=u[d])||((p=u[d]=[]).delegateCount=0,f.setup&&!1!==f.setup.call(t,r,h,a)||t.addEventListener&&t.addEventListener(d,a)),f.add&&(f.add.call(t,c),c.handler.guid||(c.handler.guid=n.guid)),i?p.splice(p.delegateCount++,0,c):p.push(c),S.event.global[d]=!0)}},remove:function(e,t,n,r,i){var o,a,s,u,l,c,f,p,d,h,g,v=Y.hasData(e)&&Y.get(e);if(v&&(u=v.events)){l=(t=(t||"").match(P)||[""]).length;while(l--)if(d=g=(s=Te.exec(t[l])||[])[1],h=(s[2]||"").split(".").sort(),d){f=S.event.special[d]||{},p=u[d=(r?f.delegateType:f.bindType)||d]||[],s=s[2]&&new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"),a=o=p.length;while(o--)c=p[o],!i&&g!==c.origType||n&&n.guid!==c.guid||s&&!s.test(c.namespace)||r&&r!==c.selector&&("**"!==r||!c.selector)||(p.splice(o,1),c.selector&&p.delegateCount--,f.remove&&f.remove.call(e,c));a&&!p.length&&(f.teardown&&!1!==f.teardown.call(e,h,v.handle)||S.removeEvent(e,d,v.handle),delete u[d])}else for(d in u)S.event.remove(e,d+t[l],n,r,!0);S.isEmptyObject(u)&&Y.remove(e,"handle events")}},dispatch:function(e){var t,n,r,i,o,a,s=new Array(arguments.length),u=S.event.fix(e),l=(Y.get(this,"events")||Object.create(null))[u.type]||[],c=S.event.special[u.type]||{};for(s[0]=u,t=1;t<arguments.length;t++)s[t]=arguments[t];if(u.delegateTarget=this,!c.preDispatch||!1!==c.preDispatch.call(this,u)){a=S.event.handlers.call(this,u,l),t=0;while((i=a[t++])&&!u.isPropagationStopped()){u.currentTarget=i.elem,n=0;while((o=i.handlers[n++])&&!u.isImmediatePropagationStopped())u.rnamespace&&!1!==o.namespace&&!u.rnamespace.test(o.namespace)||(u.handleObj=o,u.data=o.data,void 0!==(r=((S.event.special[o.origType]||{}).handle||o.handler).apply(i.elem,s))&&!1===(u.result=r)&&(u.preventDefault(),u.stopPropagation()))}return c.postDispatch&&c.postDispatch.call(this,u),u.result}},handlers:function(e,t){var n,r,i,o,a,s=[],u=t.delegateCount,l=e.target;if(u&&l.nodeType&&!("click"===e.type&&1<=e.button))for(;l!==this;l=l.parentNode||this)if(1===l.nodeType&&("click"!==e.type||!0!==l.disabled)){for(o=[],a={},n=0;n<u;n++)void 0===a[i=(r=t[n]).selector+" "]&&(a[i]=r.needsContext?-1<S(i,this).index(l):S.find(i,this,null,[l]).length),a[i]&&o.push(r);o.length&&s.push({elem:l,handlers:o})}return l=this,u<t.length&&s.push({elem:l,handlers:t.slice(u)}),s},addProp:function(t,e){Object.defineProperty(S.Event.prototype,t,{enumerable:!0,configurable:!0,get:m(e)?function(){if(this.originalEvent)return e(this.originalEvent)}:function(){if(this.originalEvent)return this.originalEvent[t]},set:function(e){Object.defineProperty(this,t,{enumerable:!0,configurable:!0,writable:!0,value:e})}})},fix:function(e){return e[S.expando]?e:new S.Event(e)},special:{load:{noBubble:!0},click:{setup:function(e){var t=this||e;return pe.test(t.type)&&t.click&&A(t,"input")&&Ae(t,"click",Ce),!1},trigger:function(e){var t=this||e;return pe.test(t.type)&&t.click&&A(t,"input")&&Ae(t,"click"),!0},_default:function(e){var t=e.target;return pe.test(t.type)&&t.click&&A(t,"input")&&Y.get(t,"click")||A(t,"a")}},beforeunload:{postDispatch:function(e){void 0!==e.result&&e.originalEvent&&(e.originalEvent.returnValue=e.result)}}}},S.removeEvent=function(e,t,n){e.removeEventListener&&e.removeEventListener(t,n)},S.Event=function(e,t){if(!(this instanceof S.Event))return new S.Event(e,t);e&&e.type?(this.originalEvent=e,this.type=e.type,this.isDefaultPrevented=e.defaultPrevented||void 0===e.defaultPrevented&&!1===e.returnValue?Ce:Ee,this.target=e.target&&3===e.target.nodeType?e.target.parentNode:e.target,this.currentTarget=e.currentTarget,this.relatedTarget=e.relatedTarget):this.type=e,t&&S.extend(this,t),this.timeStamp=e&&e.timeStamp||Date.now(),this[S.expando]=!0},S.Event.prototype={constructor:S.Event,isDefaultPrevented:Ee,isPropagationStopped:Ee,isImmediatePropagationStopped:Ee,isSimulated:!1,preventDefault:function(){var e=this.originalEvent;this.isDefaultPrevented=Ce,e&&!this.isSimulated&&e.preventDefault()},stopPropagation:function(){var e=this.originalEvent;this.isPropagationStopped=Ce,e&&!this.isSimulated&&e.stopPropagation()},stopImmediatePropagation:function(){var e=this.originalEvent;this.isImmediatePropagationStopped=Ce,e&&!this.isSimulated&&e.stopImmediatePropagation(),this.stopPropagation()}},S.each({altKey:!0,bubbles:!0,cancelable:!0,changedTouches:!0,ctrlKey:!0,detail:!0,eventPhase:!0,metaKey:!0,pageX:!0,pageY:!0,shiftKey:!0,view:!0,"char":!0,code:!0,charCode:!0,key:!0,keyCode:!0,button:!0,buttons:!0,clientX:!0,clientY:!0,offsetX:!0,offsetY:!0,pointerId:!0,pointerType:!0,screenX:!0,screenY:!0,targetTouches:!0,toElement:!0,touches:!0,which:function(e){var t=e.button;return null==e.which&&be.test(e.type)?null!=e.charCode?e.charCode:e.keyCode:!e.which&&void 0!==t&&we.test(e.type)?1&t?1:2&t?3:4&t?2:0:e.which}},S.event.addProp),S.each({focus:"focusin",blur:"focusout"},function(e,t){S.event.special[e]={setup:function(){return Ae(this,e,Se),!1},trigger:function(){return Ae(this,e),!0},delegateType:t}}),S.each({mouseenter:"mouseover",mouseleave:"mouseout",pointerenter:"pointerover",pointerleave:"pointerout"},function(e,i){S.event.special[e]={delegateType:i,bindType:i,handle:function(e){var t,n=e.relatedTarget,r=e.handleObj;return n&&(n===this||S.contains(this,n))||(e.type=r.origType,t=r.handler.apply(this,arguments),e.type=i),t}}}),S.fn.extend({on:function(e,t,n,r){return ke(this,e,t,n,r)},one:function(e,t,n,r){return ke(this,e,t,n,r,1)},off:function(e,t,n){var r,i;if(e&&e.preventDefault&&e.handleObj)return r=e.handleObj,S(e.delegateTarget).off(r.namespace?r.origType+"."+r.namespace:r.origType,r.selector,r.handler),this;if("object"==typeof e){for(i in e)this.off(i,t,e[i]);return this}return!1!==t&&"function"!=typeof t||(n=t,t=void 0),!1===n&&(n=Ee),this.each(function(){S.event.remove(this,e,n,t)})}});var Ne=/<script|<style|<link/i,De=/checked\s*(?:[^=]|=\s*.checked.)/i,je=/^\s*<!(?:\[CDATA\[|--)|(?:\]\]|--)>\s*$/g;function qe(e,t){return A(e,"table")&&A(11!==t.nodeType?t:t.firstChild,"tr")&&S(e).children("tbody")[0]||e}function Le(e){return e.type=(null!==e.getAttribute("type"))+"/"+e.type,e}function He(e){return"true/"===(e.type||"").slice(0,5)?e.type=e.type.slice(5):e.removeAttribute("type"),e}function Oe(e,t){var n,r,i,o,a,s;if(1===t.nodeType){if(Y.hasData(e)&&(s=Y.get(e).events))for(i in Y.remove(t,"handle events"),s)for(n=0,r=s[i].length;n<r;n++)S.event.add(t,i,s[i][n]);Q.hasData(e)&&(o=Q.access(e),a=S.extend({},o),Q.set(t,a))}}function Pe(n,r,i,o){r=g(r);var e,t,a,s,u,l,c=0,f=n.length,p=f-1,d=r[0],h=m(d);if(h||1<f&&"string"==typeof d&&!y.checkClone&&De.test(d))return n.each(function(e){var t=n.eq(e);h&&(r[0]=d.call(this,e,t.html())),Pe(t,r,i,o)});if(f&&(t=(e=xe(r,n[0].ownerDocument,!1,n,o)).firstChild,1===e.childNodes.length&&(e=t),t||o)){for(s=(a=S.map(ve(e,"script"),Le)).length;c<f;c++)u=e,c!==p&&(u=S.clone(u,!0,!0),s&&S.merge(a,ve(u,"script"))),i.call(n[c],u,c);if(s)for(l=a[a.length-1].ownerDocument,S.map(a,He),c=0;c<s;c++)u=a[c],he.test(u.type||"")&&!Y.access(u,"globalEval")&&S.contains(l,u)&&(u.src&&"module"!==(u.type||"").toLowerCase()?S._evalUrl&&!u.noModule&&S._evalUrl(u.src,{nonce:u.nonce||u.getAttribute("nonce")},l):b(u.textContent.replace(je,""),u,l))}return n}function Re(e,t,n){for(var r,i=t?S.filter(t,e):e,o=0;null!=(r=i[o]);o++)n||1!==r.nodeType||S.cleanData(ve(r)),r.parentNode&&(n&&ie(r)&&ye(ve(r,"script")),r.parentNode.removeChild(r));return e}S.extend({htmlPrefilter:function(e){return e},clone:function(e,t,n){var r,i,o,a,s,u,l,c=e.cloneNode(!0),f=ie(e);if(!(y.noCloneChecked||1!==e.nodeType&&11!==e.nodeType||S.isXMLDoc(e)))for(a=ve(c),r=0,i=(o=ve(e)).length;r<i;r++)s=o[r],u=a[r],void 0,"input"===(l=u.nodeName.toLowerCase())&&pe.test(s.type)?u.checked=s.checked:"input"!==l&&"textarea"!==l||(u.defaultValue=s.defaultValue);if(t)if(n)for(o=o||ve(e),a=a||ve(c),r=0,i=o.length;r<i;r++)Oe(o[r],a[r]);else Oe(e,c);return 0<(a=ve(c,"script")).length&&ye(a,!f&&ve(e,"script")),c},cleanData:function(e){for(var t,n,r,i=S.event.special,o=0;void 0!==(n=e[o]);o++)if(V(n)){if(t=n[Y.expando]){if(t.events)for(r in t.events)i[r]?S.event.remove(n,r):S.removeEvent(n,r,t.handle);n[Y.expando]=void 0}n[Q.expando]&&(n[Q.expando]=void 0)}}}),S.fn.extend({detach:function(e){return Re(this,e,!0)},remove:function(e){return Re(this,e)},text:function(e){return $(this,function(e){return void 0===e?S.text(this):this.empty().each(function(){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||(this.textContent=e)})},null,e,arguments.length)},append:function(){return Pe(this,arguments,function(e){1!==this.nodeType&&11!==this.nodeType&&9!==this.nodeType||qe(this,e).appendChild(e)})},prepend:function(){return Pe(this,arguments,function(e){if(1===this.nodeType||11===this.nodeType||9===this.nodeType){var t=qe(this,e);t.insertBefore(e,t.firstChild)}})},before:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this)})},after:function(){return Pe(this,arguments,function(e){this.parentNode&&this.parentNode.insertBefore(e,this.nextSibling)})},empty:function(){for(var e,t=0;null!=(e=this[t]);t++)1===e.nodeType&&(S.cleanData(ve(e,!1)),e.textContent="");return this},clone:function(e,t){return e=null!=e&&e,t=null==t?e:t,this.map(function(){return S.clone(this,e,t)})},html:function(e){return $(this,function(e){var t=this[0]||{},n=0,r=this.length;if(void 0===e&&1===t.nodeType)return t.innerHTML;if("string"==typeof e&&!Ne.test(e)&&!ge[(de.exec(e)||["",""])[1].toLowerCase()]){e=S.htmlPrefilter(e);try{for(;n<r;n++)1===(t=this[n]||{}).nodeType&&(S.cleanData(ve(t,!1)),t.innerHTML=e);t=0}catch(e){}}t&&this.empty().append(e)},null,e,arguments.length)},replaceWith:function(){var n=[];return Pe(this,arguments,function(e){var t=this.parentNode;S.inArray(this,n)<0&&(S.cleanData(ve(this)),t&&t.replaceChild(e,this))},n)}}),S.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(e,a){S.fn[e]=function(e){for(var t,n=[],r=S(e),i=r.length-1,o=0;o<=i;o++)t=o===i?this:this.clone(!0),S(r[o])[a](t),u.apply(n,t.get());return this.pushStack(n)}});var Me=new RegExp("^("+ee+")(?!px)[a-z%]+$","i"),Ie=function(e){var t=e.ownerDocument.defaultView;return t&&t.opener||(t=C),t.getComputedStyle(e)},We=function(e,t,n){var r,i,o={};for(i in t)o[i]=e.style[i],e.style[i]=t[i];for(i in r=n.call(e),t)e.style[i]=o[i];return r},Fe=new RegExp(ne.join("|"),"i");function Be(e,t,n){var r,i,o,a,s=e.style;return(n=n||Ie(e))&&(""!==(a=n.getPropertyValue(t)||n[t])||ie(e)||(a=S.style(e,t)),!y.pixelBoxStyles()&&Me.test(a)&&Fe.test(t)&&(r=s.width,i=s.minWidth,o=s.maxWidth,s.minWidth=s.maxWidth=s.width=a,a=n.width,s.width=r,s.minWidth=i,s.maxWidth=o)),void 0!==a?a+"":a}function $e(e,t){return{get:function(){if(!e())return(this.get=t).apply(this,arguments);delete this.get}}}!function(){function e(){if(l){u.style.cssText="position:absolute;left:-11111px;width:60px;margin-top:1px;padding:0;border:0",l.style.cssText="position:relative;display:block;box-sizing:border-box;overflow:scroll;margin:auto;border:1px;padding:1px;width:60%;top:1%",re.appendChild(u).appendChild(l);var e=C.getComputedStyle(l);n="1%"!==e.top,s=12===t(e.marginLeft),l.style.right="60%",o=36===t(e.right),r=36===t(e.width),l.style.position="absolute",i=12===t(l.offsetWidth/3),re.removeChild(u),l=null}}function t(e){return Math.round(parseFloat(e))}var n,r,i,o,a,s,u=E.createElement("div"),l=E.createElement("div");l.style&&(l.style.backgroundClip="content-box",l.cloneNode(!0).style.backgroundClip="",y.clearCloneStyle="content-box"===l.style.backgroundClip,S.extend(y,{boxSizingReliable:function(){return e(),r},pixelBoxStyles:function(){return e(),o},pixelPosition:function(){return e(),n},reliableMarginLeft:function(){return e(),s},scrollboxSize:function(){return e(),i},reliableTrDimensions:function(){var e,t,n,r;return null==a&&(e=E.createElement("table"),t=E.createElement("tr"),n=E.createElement("div"),e.style.cssText="position:absolute;left:-11111px",t.style.height="1px",n.style.height="9px",re.appendChild(e).appendChild(t).appendChild(n),r=C.getComputedStyle(t),a=3<parseInt(r.height),re.removeChild(e)),a}}))}();var _e=["Webkit","Moz","ms"],ze=E.createElement("div").style,Ue={};function Xe(e){var t=S.cssProps[e]||Ue[e];return t||(e in ze?e:Ue[e]=function(e){var t=e[0].toUpperCase()+e.slice(1),n=_e.length;while(n--)if((e=_e[n]+t)in ze)return e}(e)||e)}var Ve=/^(none|table(?!-c[ea]).+)/,Ge=/^--/,Ye={position:"absolute",visibility:"hidden",display:"block"},Qe={letterSpacing:"0",fontWeight:"400"};function Je(e,t,n){var r=te.exec(t);return r?Math.max(0,r[2]-(n||0))+(r[3]||"px"):t}function Ke(e,t,n,r,i,o){var a="width"===t?1:0,s=0,u=0;if(n===(r?"border":"content"))return 0;for(;a<4;a+=2)"margin"===n&&(u+=S.css(e,n+ne[a],!0,i)),r?("content"===n&&(u-=S.css(e,"padding"+ne[a],!0,i)),"margin"!==n&&(u-=S.css(e,"border"+ne[a]+"Width",!0,i))):(u+=S.css(e,"padding"+ne[a],!0,i),"padding"!==n?u+=S.css(e,"border"+ne[a]+"Width",!0,i):s+=S.css(e,"border"+ne[a]+"Width",!0,i));return!r&&0<=o&&(u+=Math.max(0,Math.ceil(e["offset"+t[0].toUpperCase()+t.slice(1)]-o-u-s-.5))||0),u}function Ze(e,t,n){var r=Ie(e),i=(!y.boxSizingReliable()||n)&&"border-box"===S.css(e,"boxSizing",!1,r),o=i,a=Be(e,t,r),s="offset"+t[0].toUpperCase()+t.slice(1);if(Me.test(a)){if(!n)return a;a="auto"}return(!y.boxSizingReliable()&&i||!y.reliableTrDimensions()&&A(e,"tr")||"auto"===a||!parseFloat(a)&&"inline"===S.css(e,"display",!1,r))&&e.getClientRects().length&&(i="border-box"===S.css(e,"boxSizing",!1,r),(o=s in e)&&(a=e[s])),(a=parseFloat(a)||0)+Ke(e,t,n||(i?"border":"content"),o,r,a)+"px"}function et(e,t,n,r,i){return new et.prototype.init(e,t,n,r,i)}S.extend({cssHooks:{opacity:{get:function(e,t){if(t){var n=Be(e,"opacity");return""===n?"1":n}}}},cssNumber:{animationIterationCount:!0,columnCount:!0,fillOpacity:!0,flexGrow:!0,flexShrink:!0,fontWeight:!0,gridArea:!0,gridColumn:!0,gridColumnEnd:!0,gridColumnStart:!0,gridRow:!0,gridRowEnd:!0,gridRowStart:!0,lineHeight:!0,opacity:!0,order:!0,orphans:!0,widows:!0,zIndex:!0,zoom:!0},cssProps:{},style:function(e,t,n,r){if(e&&3!==e.nodeType&&8!==e.nodeType&&e.style){var i,o,a,s=X(t),u=Ge.test(t),l=e.style;if(u||(t=Xe(s)),a=S.cssHooks[t]||S.cssHooks[s],void 0===n)return a&&"get"in a&&void 0!==(i=a.get(e,!1,r))?i:l[t];"string"===(o=typeof n)&&(i=te.exec(n))&&i[1]&&(n=se(e,t,i),o="number"),null!=n&&n==n&&("number"!==o||u||(n+=i&&i[3]||(S.cssNumber[s]?"":"px")),y.clearCloneStyle||""!==n||0!==t.indexOf("background")||(l[t]="inherit"),a&&"set"in a&&void 0===(n=a.set(e,n,r))||(u?l.setProperty(t,n):l[t]=n))}},css:function(e,t,n,r){var i,o,a,s=X(t);return Ge.test(t)||(t=Xe(s)),(a=S.cssHooks[t]||S.cssHooks[s])&&"get"in a&&(i=a.get(e,!0,n)),void 0===i&&(i=Be(e,t,r)),"normal"===i&&t in Qe&&(i=Qe[t]),""===n||n?(o=parseFloat(i),!0===n||isFinite(o)?o||0:i):i}}),S.each(["height","width"],function(e,u){S.cssHooks[u]={get:function(e,t,n){if(t)return!Ve.test(S.css(e,"display"))||e.getClientRects().length&&e.getBoundingClientRect().width?Ze(e,u,n):We(e,Ye,function(){return Ze(e,u,n)})},set:function(e,t,n){var r,i=Ie(e),o=!y.scrollboxSize()&&"absolute"===i.position,a=(o||n)&&"border-box"===S.css(e,"boxSizing",!1,i),s=n?Ke(e,u,n,a,i):0;return a&&o&&(s-=Math.ceil(e["offset"+u[0].toUpperCase()+u.slice(1)]-parseFloat(i[u])-Ke(e,u,"border",!1,i)-.5)),s&&(r=te.exec(t))&&"px"!==(r[3]||"px")&&(e.style[u]=t,t=S.css(e,u)),Je(0,t,s)}}}),S.cssHooks.marginLeft=$e(y.reliableMarginLeft,function(e,t){if(t)return(parseFloat(Be(e,"marginLeft"))||e.getBoundingClientRect().left-We(e,{marginLeft:0},function(){return e.getBoundingClientRect().left}))+"px"}),S.each({margin:"",padding:"",border:"Width"},function(i,o){S.cssHooks[i+o]={expand:function(e){for(var t=0,n={},r="string"==typeof e?e.split(" "):[e];t<4;t++)n[i+ne[t]+o]=r[t]||r[t-2]||r[0];return n}},"margin"!==i&&(S.cssHooks[i+o].set=Je)}),S.fn.extend({css:function(e,t){return $(this,function(e,t,n){var r,i,o={},a=0;if(Array.isArray(t)){for(r=Ie(e),i=t.length;a<i;a++)o[t[a]]=S.css(e,t[a],!1,r);return o}return void 0!==n?S.style(e,t,n):S.css(e,t)},e,t,1<arguments.length)}}),((S.Tween=et).prototype={constructor:et,init:function(e,t,n,r,i,o){this.elem=e,this.prop=n,this.easing=i||S.easing._default,this.options=t,this.start=this.now=this.cur(),this.end=r,this.unit=o||(S.cssNumber[n]?"":"px")},cur:function(){var e=et.propHooks[this.prop];return e&&e.get?e.get(this):et.propHooks._default.get(this)},run:function(e){var t,n=et.propHooks[this.prop];return this.options.duration?this.pos=t=S.easing[this.easing](e,this.options.duration*e,0,1,this.options.duration):this.pos=t=e,this.now=(this.end-this.start)*t+this.start,this.options.step&&this.options.step.call(this.elem,this.now,this),n&&n.set?n.set(this):et.propHooks._default.set(this),this}}).init.prototype=et.prototype,(et.propHooks={_default:{get:function(e){var t;return 1!==e.elem.nodeType||null!=e.elem[e.prop]&&null==e.elem.style[e.prop]?e.elem[e.prop]:(t=S.css(e.elem,e.prop,""))&&"auto"!==t?t:0},set:function(e){S.fx.step[e.prop]?S.fx.step[e.prop](e):1!==e.elem.nodeType||!S.cssHooks[e.prop]&&null==e.elem.style[Xe(e.prop)]?e.elem[e.prop]=e.now:S.style(e.elem,e.prop,e.now+e.unit)}}}).scrollTop=et.propHooks.scrollLeft={set:function(e){e.elem.nodeType&&e.elem.parentNode&&(e.elem[e.prop]=e.now)}},S.easing={linear:function(e){return e},swing:function(e){return.5-Math.cos(e*Math.PI)/2},_default:"swing"},S.fx=et.prototype.init,S.fx.step={};var tt,nt,rt,it,ot=/^(?:toggle|show|hide)$/,at=/queueHooks$/;function st(){nt&&(!1===E.hidden&&C.requestAnimationFrame?C.requestAnimationFrame(st):C.setTimeout(st,S.fx.interval),S.fx.tick())}function ut(){return C.setTimeout(function(){tt=void 0}),tt=Date.now()}function lt(e,t){var n,r=0,i={height:e};for(t=t?1:0;r<4;r+=2-t)i["margin"+(n=ne[r])]=i["padding"+n]=e;return t&&(i.opacity=i.width=e),i}function ct(e,t,n){for(var r,i=(ft.tweeners[t]||[]).concat(ft.tweeners["*"]),o=0,a=i.length;o<a;o++)if(r=i[o].call(n,t,e))return r}function ft(o,e,t){var n,a,r=0,i=ft.prefilters.length,s=S.Deferred().always(function(){delete u.elem}),u=function(){if(a)return!1;for(var e=tt||ut(),t=Math.max(0,l.startTime+l.duration-e),n=1-(t/l.duration||0),r=0,i=l.tweens.length;r<i;r++)l.tweens[r].run(n);return s.notifyWith(o,[l,n,t]),n<1&&i?t:(i||s.notifyWith(o,[l,1,0]),s.resolveWith(o,[l]),!1)},l=s.promise({elem:o,props:S.extend({},e),opts:S.extend(!0,{specialEasing:{},easing:S.easing._default},t),originalProperties:e,originalOptions:t,startTime:tt||ut(),duration:t.duration,tweens:[],createTween:function(e,t){var n=S.Tween(o,l.opts,e,t,l.opts.specialEasing[e]||l.opts.easing);return l.tweens.push(n),n},stop:function(e){var t=0,n=e?l.tweens.length:0;if(a)return this;for(a=!0;t<n;t++)l.tweens[t].run(1);return e?(s.notifyWith(o,[l,1,0]),s.resolveWith(o,[l,e])):s.rejectWith(o,[l,e]),this}}),c=l.props;for(!function(e,t){var n,r,i,o,a;for(n in e)if(i=t[r=X(n)],o=e[n],Array.isArray(o)&&(i=o[1],o=e[n]=o[0]),n!==r&&(e[r]=o,delete e[n]),(a=S.cssHooks[r])&&"expand"in a)for(n in o=a.expand(o),delete e[r],o)n in e||(e[n]=o[n],t[n]=i);else t[r]=i}(c,l.opts.specialEasing);r<i;r++)if(n=ft.prefilters[r].call(l,o,c,l.opts))return m(n.stop)&&(S._queueHooks(l.elem,l.opts.queue).stop=n.stop.bind(n)),n;return S.map(c,ct,l),m(l.opts.start)&&l.opts.start.call(o,l),l.progress(l.opts.progress).done(l.opts.done,l.opts.complete).fail(l.opts.fail).always(l.opts.always),S.fx.timer(S.extend(u,{elem:o,anim:l,queue:l.opts.queue})),l}S.Animation=S.extend(ft,{tweeners:{"*":[function(e,t){var n=this.createTween(e,t);return se(n.elem,e,te.exec(t),n),n}]},tweener:function(e,t){m(e)?(t=e,e=["*"]):e=e.match(P);for(var n,r=0,i=e.length;r<i;r++)n=e[r],ft.tweeners[n]=ft.tweeners[n]||[],ft.tweeners[n].unshift(t)},prefilters:[function(e,t,n){var r,i,o,a,s,u,l,c,f="width"in t||"height"in t,p=this,d={},h=e.style,g=e.nodeType&&ae(e),v=Y.get(e,"fxshow");for(r in n.queue||(null==(a=S._queueHooks(e,"fx")).unqueued&&(a.unqueued=0,s=a.empty.fire,a.empty.fire=function(){a.unqueued||s()}),a.unqueued++,p.always(function(){p.always(function(){a.unqueued--,S.queue(e,"fx").length||a.empty.fire()})})),t)if(i=t[r],ot.test(i)){if(delete t[r],o=o||"toggle"===i,i===(g?"hide":"show")){if("show"!==i||!v||void 0===v[r])continue;g=!0}d[r]=v&&v[r]||S.style(e,r)}if((u=!S.isEmptyObject(t))||!S.isEmptyObject(d))for(r in f&&1===e.nodeType&&(n.overflow=[h.overflow,h.overflowX,h.overflowY],null==(l=v&&v.display)&&(l=Y.get(e,"display")),"none"===(c=S.css(e,"display"))&&(l?c=l:(le([e],!0),l=e.style.display||l,c=S.css(e,"display"),le([e]))),("inline"===c||"inline-block"===c&&null!=l)&&"none"===S.css(e,"float")&&(u||(p.done(function(){h.display=l}),null==l&&(c=h.display,l="none"===c?"":c)),h.display="inline-block")),n.overflow&&(h.overflow="hidden",p.always(function(){h.overflow=n.overflow[0],h.overflowX=n.overflow[1],h.overflowY=n.overflow[2]})),u=!1,d)u||(v?"hidden"in v&&(g=v.hidden):v=Y.access(e,"fxshow",{display:l}),o&&(v.hidden=!g),g&&le([e],!0),p.done(function(){for(r in g||le([e]),Y.remove(e,"fxshow"),d)S.style(e,r,d[r])})),u=ct(g?v[r]:0,r,p),r in v||(v[r]=u.start,g&&(u.end=u.start,u.start=0))}],prefilter:function(e,t){t?ft.prefilters.unshift(e):ft.prefilters.push(e)}}),S.speed=function(e,t,n){var r=e&&"object"==typeof e?S.extend({},e):{complete:n||!n&&t||m(e)&&e,duration:e,easing:n&&t||t&&!m(t)&&t};return S.fx.off?r.duration=0:"number"!=typeof r.duration&&(r.duration in S.fx.speeds?r.duration=S.fx.speeds[r.duration]:r.duration=S.fx.speeds._default),null!=r.queue&&!0!==r.queue||(r.queue="fx"),r.old=r.complete,r.complete=function(){m(r.old)&&r.old.call(this),r.queue&&S.dequeue(this,r.queue)},r},S.fn.extend({fadeTo:function(e,t,n,r){return this.filter(ae).css("opacity",0).show().end().animate({opacity:t},e,n,r)},animate:function(t,e,n,r){var i=S.isEmptyObject(t),o=S.speed(e,n,r),a=function(){var e=ft(this,S.extend({},t),o);(i||Y.get(this,"finish"))&&e.stop(!0)};return a.finish=a,i||!1===o.queue?this.each(a):this.queue(o.queue,a)},stop:function(i,e,o){var a=function(e){var t=e.stop;delete e.stop,t(o)};return"string"!=typeof i&&(o=e,e=i,i=void 0),e&&this.queue(i||"fx",[]),this.each(function(){var e=!0,t=null!=i&&i+"queueHooks",n=S.timers,r=Y.get(this);if(t)r[t]&&r[t].stop&&a(r[t]);else for(t in r)r[t]&&r[t].stop&&at.test(t)&&a(r[t]);for(t=n.length;t--;)n[t].elem!==this||null!=i&&n[t].queue!==i||(n[t].anim.stop(o),e=!1,n.splice(t,1));!e&&o||S.dequeue(this,i)})},finish:function(a){return!1!==a&&(a=a||"fx"),this.each(function(){var e,t=Y.get(this),n=t[a+"queue"],r=t[a+"queueHooks"],i=S.timers,o=n?n.length:0;for(t.finish=!0,S.queue(this,a,[]),r&&r.stop&&r.stop.call(this,!0),e=i.length;e--;)i[e].elem===this&&i[e].queue===a&&(i[e].anim.stop(!0),i.splice(e,1));for(e=0;e<o;e++)n[e]&&n[e].finish&&n[e].finish.call(this);delete t.finish})}}),S.each(["toggle","show","hide"],function(e,r){var i=S.fn[r];S.fn[r]=function(e,t,n){return null==e||"boolean"==typeof e?i.apply(this,arguments):this.animate(lt(r,!0),e,t,n)}}),S.each({slideDown:lt("show"),slideUp:lt("hide"),slideToggle:lt("toggle"),fadeIn:{opacity:"show"},fadeOut:{opacity:"hide"},fadeToggle:{opacity:"toggle"}},function(e,r){S.fn[e]=function(e,t,n){return this.animate(r,e,t,n)}}),S.timers=[],S.fx.tick=function(){var e,t=0,n=S.timers;for(tt=Date.now();t<n.length;t++)(e=n[t])()||n[t]!==e||n.splice(t--,1);n.length||S.fx.stop(),tt=void 0},S.fx.timer=function(e){S.timers.push(e),S.fx.start()},S.fx.interval=13,S.fx.start=function(){nt||(nt=!0,st())},S.fx.stop=function(){nt=null},S.fx.speeds={slow:600,fast:200,_default:400},S.fn.delay=function(r,e){return r=S.fx&&S.fx.speeds[r]||r,e=e||"fx",this.queue(e,function(e,t){var n=C.setTimeout(e,r);t.stop=function(){C.clearTimeout(n)}})},rt=E.createElement("input"),it=E.createElement("select").appendChild(E.createElement("option")),rt.type="checkbox",y.checkOn=""!==rt.value,y.optSelected=it.selected,(rt=E.createElement("input")).value="t",rt.type="radio",y.radioValue="t"===rt.value;var pt,dt=S.expr.attrHandle;S.fn.extend({attr:function(e,t){return $(this,S.attr,e,t,1<arguments.length)},removeAttr:function(e){return this.each(function(){S.removeAttr(this,e)})}}),S.extend({attr:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return"undefined"==typeof e.getAttribute?S.prop(e,t,n):(1===o&&S.isXMLDoc(e)||(i=S.attrHooks[t.toLowerCase()]||(S.expr.match.bool.test(t)?pt:void 0)),void 0!==n?null===n?void S.removeAttr(e,t):i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:(e.setAttribute(t,n+""),n):i&&"get"in i&&null!==(r=i.get(e,t))?r:null==(r=S.find.attr(e,t))?void 0:r)},attrHooks:{type:{set:function(e,t){if(!y.radioValue&&"radio"===t&&A(e,"input")){var n=e.value;return e.setAttribute("type",t),n&&(e.value=n),t}}}},removeAttr:function(e,t){var n,r=0,i=t&&t.match(P);if(i&&1===e.nodeType)while(n=i[r++])e.removeAttribute(n)}}),pt={set:function(e,t,n){return!1===t?S.removeAttr(e,n):e.setAttribute(n,n),n}},S.each(S.expr.match.bool.source.match(/\w+/g),function(e,t){var a=dt[t]||S.find.attr;dt[t]=function(e,t,n){var r,i,o=t.toLowerCase();return n||(i=dt[o],dt[o]=r,r=null!=a(e,t,n)?o:null,dt[o]=i),r}});var ht=/^(?:input|select|textarea|button)$/i,gt=/^(?:a|area)$/i;function vt(e){return(e.match(P)||[]).join(" ")}function yt(e){return e.getAttribute&&e.getAttribute("class")||""}function mt(e){return Array.isArray(e)?e:"string"==typeof e&&e.match(P)||[]}S.fn.extend({prop:function(e,t){return $(this,S.prop,e,t,1<arguments.length)},removeProp:function(e){return this.each(function(){delete this[S.propFix[e]||e]})}}),S.extend({prop:function(e,t,n){var r,i,o=e.nodeType;if(3!==o&&8!==o&&2!==o)return 1===o&&S.isXMLDoc(e)||(t=S.propFix[t]||t,i=S.propHooks[t]),void 0!==n?i&&"set"in i&&void 0!==(r=i.set(e,n,t))?r:e[t]=n:i&&"get"in i&&null!==(r=i.get(e,t))?r:e[t]},propHooks:{tabIndex:{get:function(e){var t=S.find.attr(e,"tabindex");return t?parseInt(t,10):ht.test(e.nodeName)||gt.test(e.nodeName)&&e.href?0:-1}}},propFix:{"for":"htmlFor","class":"className"}}),y.optSelected||(S.propHooks.selected={get:function(e){var t=e.parentNode;return t&&t.parentNode&&t.parentNode.selectedIndex,null},set:function(e){var t=e.parentNode;t&&(t.selectedIndex,t.parentNode&&t.parentNode.selectedIndex)}}),S.each(["tabIndex","readOnly","maxLength","cellSpacing","cellPadding","rowSpan","colSpan","useMap","frameBorder","contentEditable"],function(){S.propFix[this.toLowerCase()]=this}),S.fn.extend({addClass:function(t){var e,n,r,i,o,a,s,u=0;if(m(t))return this.each(function(e){S(this).addClass(t.call(this,e,yt(this)))});if((e=mt(t)).length)while(n=this[u++])if(i=yt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=e[a++])r.indexOf(" "+o+" ")<0&&(r+=o+" ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},removeClass:function(t){var e,n,r,i,o,a,s,u=0;if(m(t))return this.each(function(e){S(this).removeClass(t.call(this,e,yt(this)))});if(!arguments.length)return this.attr("class","");if((e=mt(t)).length)while(n=this[u++])if(i=yt(n),r=1===n.nodeType&&" "+vt(i)+" "){a=0;while(o=e[a++])while(-1<r.indexOf(" "+o+" "))r=r.replace(" "+o+" "," ");i!==(s=vt(r))&&n.setAttribute("class",s)}return this},toggleClass:function(i,t){var o=typeof i,a="string"===o||Array.isArray(i);return"boolean"==typeof t&&a?t?this.addClass(i):this.removeClass(i):m(i)?this.each(function(e){S(this).toggleClass(i.call(this,e,yt(this),t),t)}):this.each(function(){var e,t,n,r;if(a){t=0,n=S(this),r=mt(i);while(e=r[t++])n.hasClass(e)?n.removeClass(e):n.addClass(e)}else void 0!==i&&"boolean"!==o||((e=yt(this))&&Y.set(this,"__className__",e),this.setAttribute&&this.setAttribute("class",e||!1===i?"":Y.get(this,"__className__")||""))})},hasClass:function(e){var t,n,r=0;t=" "+e+" ";while(n=this[r++])if(1===n.nodeType&&-1<(" "+vt(yt(n))+" ").indexOf(t))return!0;return!1}});var xt=/\r/g;S.fn.extend({val:function(n){var r,e,i,t=this[0];return arguments.length?(i=m(n),this.each(function(e){var t;1===this.nodeType&&(null==(t=i?n.call(this,e,S(this).val()):n)?t="":"number"==typeof t?t+="":Array.isArray(t)&&(t=S.map(t,function(e){return null==e?"":e+""})),(r=S.valHooks[this.type]||S.valHooks[this.nodeName.toLowerCase()])&&"set"in r&&void 0!==r.set(this,t,"value")||(this.value=t))})):t?(r=S.valHooks[t.type]||S.valHooks[t.nodeName.toLowerCase()])&&"get"in r&&void 0!==(e=r.get(t,"value"))?e:"string"==typeof(e=t.value)?e.replace(xt,""):null==e?"":e:void 0}}),S.extend({valHooks:{option:{get:function(e){var t=S.find.attr(e,"value");return null!=t?t:vt(S.text(e))}},select:{get:function(e){var t,n,r,i=e.options,o=e.selectedIndex,a="select-one"===e.type,s=a?null:[],u=a?o+1:i.length;for(r=o<0?u:a?o:0;r<u;r++)if(((n=i[r]).selected||r===o)&&!n.disabled&&(!n.parentNode.disabled||!A(n.parentNode,"optgroup"))){if(t=S(n).val(),a)return t;s.push(t)}return s},set:function(e,t){var n,r,i=e.options,o=S.makeArray(t),a=i.length;while(a--)((r=i[a]).selected=-1<S.inArray(S.valHooks.option.get(r),o))&&(n=!0);return n||(e.selectedIndex=-1),o}}}}),S.each(["radio","checkbox"],function(){S.valHooks[this]={set:function(e,t){if(Array.isArray(t))return e.checked=-1<S.inArray(S(e).val(),t)}},y.checkOn||(S.valHooks[this].get=function(e){return null===e.getAttribute("value")?"on":e.value})}),y.focusin="onfocusin"in C;var bt=/^(?:focusinfocus|focusoutblur)$/,wt=function(e){e.stopPropagation()};S.extend(S.event,{trigger:function(e,t,n,r){var i,o,a,s,u,l,c,f,p=[n||E],d=v.call(e,"type")?e.type:e,h=v.call(e,"namespace")?e.namespace.split("."):[];if(o=f=a=n=n||E,3!==n.nodeType&&8!==n.nodeType&&!bt.test(d+S.event.triggered)&&(-1<d.indexOf(".")&&(d=(h=d.split(".")).shift(),h.sort()),u=d.indexOf(":")<0&&"on"+d,(e=e[S.expando]?e:new S.Event(d,"object"==typeof e&&e)).isTrigger=r?2:3,e.namespace=h.join("."),e.rnamespace=e.namespace?new RegExp("(^|\\.)"+h.join("\\.(?:.*\\.|)")+"(\\.|$)"):null,e.result=void 0,e.target||(e.target=n),t=null==t?[e]:S.makeArray(t,[e]),c=S.event.special[d]||{},r||!c.trigger||!1!==c.trigger.apply(n,t))){if(!r&&!c.noBubble&&!x(n)){for(s=c.delegateType||d,bt.test(s+d)||(o=o.parentNode);o;o=o.parentNode)p.push(o),a=o;a===(n.ownerDocument||E)&&p.push(a.defaultView||a.parentWindow||C)}i=0;while((o=p[i++])&&!e.isPropagationStopped())f=o,e.type=1<i?s:c.bindType||d,(l=(Y.get(o,"events")||Object.create(null))[e.type]&&Y.get(o,"handle"))&&l.apply(o,t),(l=u&&o[u])&&l.apply&&V(o)&&(e.result=l.apply(o,t),!1===e.result&&e.preventDefault());return e.type=d,r||e.isDefaultPrevented()||c._default&&!1!==c._default.apply(p.pop(),t)||!V(n)||u&&m(n[d])&&!x(n)&&((a=n[u])&&(n[u]=null),S.event.triggered=d,e.isPropagationStopped()&&f.addEventListener(d,wt),n[d](),e.isPropagationStopped()&&f.removeEventListener(d,wt),S.event.triggered=void 0,a&&(n[u]=a)),e.result}},simulate:function(e,t,n){var r=S.extend(new S.Event,n,{type:e,isSimulated:!0});S.event.trigger(r,null,t)}}),S.fn.extend({trigger:function(e,t){return this.each(function(){S.event.trigger(e,t,this)})},triggerHandler:function(e,t){var n=this[0];if(n)return S.event.trigger(e,t,n,!0)}}),y.focusin||S.each({focus:"focusin",blur:"focusout"},function(n,r){var i=function(e){S.event.simulate(r,e.target,S.event.fix(e))};S.event.special[r]={setup:function(){var e=this.ownerDocument||this.document||this,t=Y.access(e,r);t||e.addEventListener(n,i,!0),Y.access(e,r,(t||0)+1)},teardown:function(){var e=this.ownerDocument||this.document||this,t=Y.access(e,r)-1;t?Y.access(e,r,t):(e.removeEventListener(n,i,!0),Y.remove(e,r))}}});var Tt=C.location,Ct={guid:Date.now()},Et=/\?/;S.parseXML=function(e){var t;if(!e||"string"!=typeof e)return null;try{t=(new C.DOMParser).parseFromString(e,"text/xml")}catch(e){t=void 0}return t&&!t.getElementsByTagName("parsererror").length||S.error("Invalid XML: "+e),t};var St=/\[\]$/,kt=/\r?\n/g,At=/^(?:submit|button|image|reset|file)$/i,Nt=/^(?:input|select|textarea|keygen)/i;function Dt(n,e,r,i){var t;if(Array.isArray(e))S.each(e,function(e,t){r||St.test(n)?i(n,t):Dt(n+"["+("object"==typeof t&&null!=t?e:"")+"]",t,r,i)});else if(r||"object"!==w(e))i(n,e);else for(t in e)Dt(n+"["+t+"]",e[t],r,i)}S.param=function(e,t){var n,r=[],i=function(e,t){var n=m(t)?t():t;r[r.length]=encodeURIComponent(e)+"="+encodeURIComponent(null==n?"":n)};if(null==e)return"";if(Array.isArray(e)||e.jquery&&!S.isPlainObject(e))S.each(e,function(){i(this.name,this.value)});else for(n in e)Dt(n,e[n],t,i);return r.join("&")},S.fn.extend({serialize:function(){return S.param(this.serializeArray())},serializeArray:function(){return this.map(function(){var e=S.prop(this,"elements");return e?S.makeArray(e):this}).filter(function(){var e=this.type;return this.name&&!S(this).is(":disabled")&&Nt.test(this.nodeName)&&!At.test(e)&&(this.checked||!pe.test(e))}).map(function(e,t){var n=S(this).val();return null==n?null:Array.isArray(n)?S.map(n,function(e){return{name:t.name,value:e.replace(kt,"\r\n")}}):{name:t.name,value:n.replace(kt,"\r\n")}}).get()}});var jt=/%20/g,qt=/#.*$/,Lt=/([?&])_=[^&]*/,Ht=/^(.*?):[ \t]*([^\r\n]*)$/gm,Ot=/^(?:GET|HEAD)$/,Pt=/^\/\//,Rt={},Mt={},It="*/".concat("*"),Wt=E.createElement("a");function Ft(o){return function(e,t){"string"!=typeof e&&(t=e,e="*");var n,r=0,i=e.toLowerCase().match(P)||[];if(m(t))while(n=i[r++])"+"===n[0]?(n=n.slice(1)||"*",(o[n]=o[n]||[]).unshift(t)):(o[n]=o[n]||[]).push(t)}}function Bt(t,i,o,a){var s={},u=t===Mt;function l(e){var r;return s[e]=!0,S.each(t[e]||[],function(e,t){var n=t(i,o,a);return"string"!=typeof n||u||s[n]?u?!(r=n):void 0:(i.dataTypes.unshift(n),l(n),!1)}),r}return l(i.dataTypes[0])||!s["*"]&&l("*")}function $t(e,t){var n,r,i=S.ajaxSettings.flatOptions||{};for(n in t)void 0!==t[n]&&((i[n]?e:r||(r={}))[n]=t[n]);return r&&S.extend(!0,e,r),e}Wt.href=Tt.href,S.extend({active:0,lastModified:{},etag:{},ajaxSettings:{url:Tt.href,type:"GET",isLocal:/^(?:about|app|app-storage|.+-extension|file|res|widget):$/.test(Tt.protocol),global:!0,processData:!0,async:!0,contentType:"application/x-www-form-urlencoded; charset=UTF-8",accepts:{"*":It,text:"text/plain",html:"text/html",xml:"application/xml, text/xml",json:"application/json, text/javascript"},contents:{xml:/\bxml\b/,html:/\bhtml/,json:/\bjson\b/},responseFields:{xml:"responseXML",text:"responseText",json:"responseJSON"},converters:{"* text":String,"text html":!0,"text json":JSON.parse,"text xml":S.parseXML},flatOptions:{url:!0,context:!0}},ajaxSetup:function(e,t){return t?$t($t(e,S.ajaxSettings),t):$t(S.ajaxSettings,e)},ajaxPrefilter:Ft(Rt),ajaxTransport:Ft(Mt),ajax:function(e,t){"object"==typeof e&&(t=e,e=void 0),t=t||{};var c,f,p,n,d,r,h,g,i,o,v=S.ajaxSetup({},t),y=v.context||v,m=v.context&&(y.nodeType||y.jquery)?S(y):S.event,x=S.Deferred(),b=S.Callbacks("once memory"),w=v.statusCode||{},a={},s={},u="canceled",T={readyState:0,getResponseHeader:function(e){var t;if(h){if(!n){n={};while(t=Ht.exec(p))n[t[1].toLowerCase()+" "]=(n[t[1].toLowerCase()+" "]||[]).concat(t[2])}t=n[e.toLowerCase()+" "]}return null==t?null:t.join(", ")},getAllResponseHeaders:function(){return h?p:null},setRequestHeader:function(e,t){return null==h&&(e=s[e.toLowerCase()]=s[e.toLowerCase()]||e,a[e]=t),this},overrideMimeType:function(e){return null==h&&(v.mimeType=e),this},statusCode:function(e){var t;if(e)if(h)T.always(e[T.status]);else for(t in e)w[t]=[w[t],e[t]];return this},abort:function(e){var t=e||u;return c&&c.abort(t),l(0,t),this}};if(x.promise(T),v.url=((e||v.url||Tt.href)+"").replace(Pt,Tt.protocol+"//"),v.type=t.method||t.type||v.method||v.type,v.dataTypes=(v.dataType||"*").toLowerCase().match(P)||[""],null==v.crossDomain){r=E.createElement("a");try{r.href=v.url,r.href=r.href,v.crossDomain=Wt.protocol+"//"+Wt.host!=r.protocol+"//"+r.host}catch(e){v.crossDomain=!0}}if(v.data&&v.processData&&"string"!=typeof v.data&&(v.data=S.param(v.data,v.traditional)),Bt(Rt,v,t,T),h)return T;for(i in(g=S.event&&v.global)&&0==S.active++&&S.event.trigger("ajaxStart"),v.type=v.type.toUpperCase(),v.hasContent=!Ot.test(v.type),f=v.url.replace(qt,""),v.hasContent?v.data&&v.processData&&0===(v.contentType||"").indexOf("application/x-www-form-urlencoded")&&(v.data=v.data.replace(jt,"+")):(o=v.url.slice(f.length),v.data&&(v.processData||"string"==typeof v.data)&&(f+=(Et.test(f)?"&":"?")+v.data,delete v.data),!1===v.cache&&(f=f.replace(Lt,"$1"),o=(Et.test(f)?"&":"?")+"_="+Ct.guid+++o),v.url=f+o),v.ifModified&&(S.lastModified[f]&&T.setRequestHeader("If-Modified-Since",S.lastModified[f]),S.etag[f]&&T.setRequestHeader("If-None-Match",S.etag[f])),(v.data&&v.hasContent&&!1!==v.contentType||t.contentType)&&T.setRequestHeader("Content-Type",v.contentType),T.setRequestHeader("Accept",v.dataTypes[0]&&v.accepts[v.dataTypes[0]]?v.accepts[v.dataTypes[0]]+("*"!==v.dataTypes[0]?", "+It+"; q=0.01":""):v.accepts["*"]),v.headers)T.setRequestHeader(i,v.headers[i]);if(v.beforeSend&&(!1===v.beforeSend.call(y,T,v)||h))return T.abort();if(u="abort",b.add(v.complete),T.done(v.success),T.fail(v.error),c=Bt(Mt,v,t,T)){if(T.readyState=1,g&&m.trigger("ajaxSend",[T,v]),h)return T;v.async&&0<v.timeout&&(d=C.setTimeout(function(){T.abort("timeout")},v.timeout));try{h=!1,c.send(a,l)}catch(e){if(h)throw e;l(-1,e)}}else l(-1,"No Transport");function l(e,t,n,r){var i,o,a,s,u,l=t;h||(h=!0,d&&C.clearTimeout(d),c=void 0,p=r||"",T.readyState=0<e?4:0,i=200<=e&&e<300||304===e,n&&(s=function(e,t,n){var r,i,o,a,s=e.contents,u=e.dataTypes;while("*"===u[0])u.shift(),void 0===r&&(r=e.mimeType||t.getResponseHeader("Content-Type"));if(r)for(i in s)if(s[i]&&s[i].test(r)){u.unshift(i);break}if(u[0]in n)o=u[0];else{for(i in n){if(!u[0]||e.converters[i+" "+u[0]]){o=i;break}a||(a=i)}o=o||a}if(o)return o!==u[0]&&u.unshift(o),n[o]}(v,T,n)),!i&&-1<S.inArray("script",v.dataTypes)&&(v.converters["text script"]=function(){}),s=function(e,t,n,r){var i,o,a,s,u,l={},c=e.dataTypes.slice();if(c[1])for(a in e.converters)l[a.toLowerCase()]=e.converters[a];o=c.shift();while(o)if(e.responseFields[o]&&(n[e.responseFields[o]]=t),!u&&r&&e.dataFilter&&(t=e.dataFilter(t,e.dataType)),u=o,o=c.shift())if("*"===o)o=u;else if("*"!==u&&u!==o){if(!(a=l[u+" "+o]||l["* "+o]))for(i in l)if((s=i.split(" "))[1]===o&&(a=l[u+" "+s[0]]||l["* "+s[0]])){!0===a?a=l[i]:!0!==l[i]&&(o=s[0],c.unshift(s[1]));break}if(!0!==a)if(a&&e["throws"])t=a(t);else try{t=a(t)}catch(e){return{state:"parsererror",error:a?e:"No conversion from "+u+" to "+o}}}return{state:"success",data:t}}(v,s,T,i),i?(v.ifModified&&((u=T.getResponseHeader("Last-Modified"))&&(S.lastModified[f]=u),(u=T.getResponseHeader("etag"))&&(S.etag[f]=u)),204===e||"HEAD"===v.type?l="nocontent":304===e?l="notmodified":(l=s.state,o=s.data,i=!(a=s.error))):(a=l,!e&&l||(l="error",e<0&&(e=0))),T.status=e,T.statusText=(t||l)+"",i?x.resolveWith(y,[o,l,T]):x.rejectWith(y,[T,l,a]),T.statusCode(w),w=void 0,g&&m.trigger(i?"ajaxSuccess":"ajaxError",[T,v,i?o:a]),b.fireWith(y,[T,l]),g&&(m.trigger("ajaxComplete",[T,v]),--S.active||S.event.trigger("ajaxStop")))}return T},getJSON:function(e,t,n){return S.get(e,t,n,"json")},getScript:function(e,t){return S.get(e,void 0,t,"script")}}),S.each(["get","post"],function(e,i){S[i]=function(e,t,n,r){return m(t)&&(r=r||n,n=t,t=void 0),S.ajax(S.extend({url:e,type:i,dataType:r,data:t,success:n},S.isPlainObject(e)&&e))}}),S.ajaxPrefilter(function(e){var t;for(t in e.headers)"content-type"===t.toLowerCase()&&(e.contentType=e.headers[t]||"")}),S._evalUrl=function(e,t,n){return S.ajax({url:e,type:"GET",dataType:"script",cache:!0,async:!1,global:!1,converters:{"text script":function(){}},dataFilter:function(e){S.globalEval(e,t,n)}})},S.fn.extend({wrapAll:function(e){var t;return this[0]&&(m(e)&&(e=e.call(this[0])),t=S(e,this[0].ownerDocument).eq(0).clone(!0),this[0].parentNode&&t.insertBefore(this[0]),t.map(function(){var e=this;while(e.firstElementChild)e=e.firstElementChild;return e}).append(this)),this},wrapInner:function(n){return m(n)?this.each(function(e){S(this).wrapInner(n.call(this,e))}):this.each(function(){var e=S(this),t=e.contents();t.length?t.wrapAll(n):e.append(n)})},wrap:function(t){var n=m(t);return this.each(function(e){S(this).wrapAll(n?t.call(this,e):t)})},unwrap:function(e){return this.parent(e).not("body").each(function(){S(this).replaceWith(this.childNodes)}),this}}),S.expr.pseudos.hidden=function(e){return!S.expr.pseudos.visible(e)},S.expr.pseudos.visible=function(e){return!!(e.offsetWidth||e.offsetHeight||e.getClientRects().length)},S.ajaxSettings.xhr=function(){try{return new C.XMLHttpRequest}catch(e){}};var _t={0:200,1223:204},zt=S.ajaxSettings.xhr();y.cors=!!zt&&"withCredentials"in zt,y.ajax=zt=!!zt,S.ajaxTransport(function(i){var o,a;if(y.cors||zt&&!i.crossDomain)return{send:function(e,t){var n,r=i.xhr();if(r.open(i.type,i.url,i.async,i.username,i.password),i.xhrFields)for(n in i.xhrFields)r[n]=i.xhrFields[n];for(n in i.mimeType&&r.overrideMimeType&&r.overrideMimeType(i.mimeType),i.crossDomain||e["X-Requested-With"]||(e["X-Requested-With"]="XMLHttpRequest"),e)r.setRequestHeader(n,e[n]);o=function(e){return function(){o&&(o=a=r.onload=r.onerror=r.onabort=r.ontimeout=r.onreadystatechange=null,"abort"===e?r.abort():"error"===e?"number"!=typeof r.status?t(0,"error"):t(r.status,r.statusText):t(_t[r.status]||r.status,r.statusText,"text"!==(r.responseType||"text")||"string"!=typeof r.responseText?{binary:r.response}:{text:r.responseText},r.getAllResponseHeaders()))}},r.onload=o(),a=r.onerror=r.ontimeout=o("error"),void 0!==r.onabort?r.onabort=a:r.onreadystatechange=function(){4===r.readyState&&C.setTimeout(function(){o&&a()})},o=o("abort");try{r.send(i.hasContent&&i.data||null)}catch(e){if(o)throw e}},abort:function(){o&&o()}}}),S.ajaxPrefilter(function(e){e.crossDomain&&(e.contents.script=!1)}),S.ajaxSetup({accepts:{script:"text/javascript, application/javascript, application/ecmascript, application/x-ecmascript"},contents:{script:/\b(?:java|ecma)script\b/},converters:{"text script":function(e){return S.globalEval(e),e}}}),S.ajaxPrefilter("script",function(e){void 0===e.cache&&(e.cache=!1),e.crossDomain&&(e.type="GET")}),S.ajaxTransport("script",function(n){var r,i;if(n.crossDomain||n.scriptAttrs)return{send:function(e,t){r=S("<script>").attr(n.scriptAttrs||{}).prop({charset:n.scriptCharset,src:n.url}).on("load error",i=function(e){r.remove(),i=null,e&&t("error"===e.type?404:200,e.type)}),E.head.appendChild(r[0])},abort:function(){i&&i()}}});var Ut,Xt=[],Vt=/(=)\?(?=&|$)|\?\?/;S.ajaxSetup({jsonp:"callback",jsonpCallback:function(){var e=Xt.pop()||S.expando+"_"+Ct.guid++;return this[e]=!0,e}}),S.ajaxPrefilter("json jsonp",function(e,t,n){var r,i,o,a=!1!==e.jsonp&&(Vt.test(e.url)?"url":"string"==typeof e.data&&0===(e.contentType||"").indexOf("application/x-www-form-urlencoded")&&Vt.test(e.data)&&"data");if(a||"jsonp"===e.dataTypes[0])return r=e.jsonpCallback=m(e.jsonpCallback)?e.jsonpCallback():e.jsonpCallback,a?e[a]=e[a].replace(Vt,"$1"+r):!1!==e.jsonp&&(e.url+=(Et.test(e.url)?"&":"?")+e.jsonp+"="+r),e.converters["script json"]=function(){return o||S.error(r+" was not called"),o[0]},e.dataTypes[0]="json",i=C[r],C[r]=function(){o=arguments},n.always(function(){void 0===i?S(C).removeProp(r):C[r]=i,e[r]&&(e.jsonpCallback=t.jsonpCallback,Xt.push(r)),o&&m(i)&&i(o[0]),o=i=void 0}),"script"}),y.createHTMLDocument=((Ut=E.implementation.createHTMLDocument("").body).innerHTML="<form></form><form></form>",2===Ut.childNodes.length),S.parseHTML=function(e,t,n){return"string"!=typeof e?[]:("boolean"==typeof t&&(n=t,t=!1),t||(y.createHTMLDocument?((r=(t=E.implementation.createHTMLDocument("")).createElement("base")).href=E.location.href,t.head.appendChild(r)):t=E),o=!n&&[],(i=N.exec(e))?[t.createElement(i[1])]:(i=xe([e],t,o),o&&o.length&&S(o).remove(),S.merge([],i.childNodes)));var r,i,o},S.fn.load=function(e,t,n){var r,i,o,a=this,s=e.indexOf(" ");return-1<s&&(r=vt(e.slice(s)),e=e.slice(0,s)),m(t)?(n=t,t=void 0):t&&"object"==typeof t&&(i="POST"),0<a.length&&S.ajax({url:e,type:i||"GET",dataType:"html",data:t}).done(function(e){o=arguments,a.html(r?S("<div>").append(S.parseHTML(e)).find(r):e)}).always(n&&function(e,t){a.each(function(){n.apply(this,o||[e.responseText,t,e])})}),this},S.expr.pseudos.animated=function(t){return S.grep(S.timers,function(e){return t===e.elem}).length},S.offset={setOffset:function(e,t,n){var r,i,o,a,s,u,l=S.css(e,"position"),c=S(e),f={};"static"===l&&(e.style.position="relative"),s=c.offset(),o=S.css(e,"top"),u=S.css(e,"left"),("absolute"===l||"fixed"===l)&&-1<(o+u).indexOf("auto")?(a=(r=c.position()).top,i=r.left):(a=parseFloat(o)||0,i=parseFloat(u)||0),m(t)&&(t=t.call(e,n,S.extend({},s))),null!=t.top&&(f.top=t.top-s.top+a),null!=t.left&&(f.left=t.left-s.left+i),"using"in t?t.using.call(e,f):("number"==typeof f.top&&(f.top+="px"),"number"==typeof f.left&&(f.left+="px"),c.css(f))}},S.fn.extend({offset:function(t){if(arguments.length)return void 0===t?this:this.each(function(e){S.offset.setOffset(this,t,e)});var e,n,r=this[0];return r?r.getClientRects().length?(e=r.getBoundingClientRect(),n=r.ownerDocument.defaultView,{top:e.top+n.pageYOffset,left:e.left+n.pageXOffset}):{top:0,left:0}:void 0},position:function(){if(this[0]){var e,t,n,r=this[0],i={top:0,left:0};if("fixed"===S.css(r,"position"))t=r.getBoundingClientRect();else{t=this.offset(),n=r.ownerDocument,e=r.offsetParent||n.documentElement;while(e&&(e===n.body||e===n.documentElement)&&"static"===S.css(e,"position"))e=e.parentNode;e&&e!==r&&1===e.nodeType&&((i=S(e).offset()).top+=S.css(e,"borderTopWidth",!0),i.left+=S.css(e,"borderLeftWidth",!0))}return{top:t.top-i.top-S.css(r,"marginTop",!0),left:t.left-i.left-S.css(r,"marginLeft",!0)}}},offsetParent:function(){return this.map(function(){var e=this.offsetParent;while(e&&"static"===S.css(e,"position"))e=e.offsetParent;return e||re})}}),S.each({scrollLeft:"pageXOffset",scrollTop:"pageYOffset"},function(t,i){var o="pageYOffset"===i;S.fn[t]=function(e){return $(this,function(e,t,n){var r;if(x(e)?r=e:9===e.nodeType&&(r=e.defaultView),void 0===n)return r?r[i]:e[t];r?r.scrollTo(o?r.pageXOffset:n,o?n:r.pageYOffset):e[t]=n},t,e,arguments.length)}}),S.each(["top","left"],function(e,n){S.cssHooks[n]=$e(y.pixelPosition,function(e,t){if(t)return t=Be(e,n),Me.test(t)?S(e).position()[n]+"px":t})}),S.each({Height:"height",Width:"width"},function(a,s){S.each({padding:"inner"+a,content:s,"":"outer"+a},function(r,o){S.fn[o]=function(e,t){var n=arguments.length&&(r||"boolean"!=typeof e),i=r||(!0===e||!0===t?"margin":"border");return $(this,function(e,t,n){var r;return x(e)?0===o.indexOf("outer")?e["inner"+a]:e.document.documentElement["client"+a]:9===e.nodeType?(r=e.documentElement,Math.max(e.body["scroll"+a],r["scroll"+a],e.body["offset"+a],r["offset"+a],r["client"+a])):void 0===n?S.css(e,t,i):S.style(e,t,n,i)},s,n?e:void 0,n)}})}),S.each(["ajaxStart","ajaxStop","ajaxComplete","ajaxError","ajaxSuccess","ajaxSend"],function(e,t){S.fn[t]=function(e){return this.on(t,e)}}),S.fn.extend({bind:function(e,t,n){return this.on(e,null,t,n)},unbind:function(e,t){return this.off(e,null,t)},delegate:function(e,t,n,r){return this.on(t,e,n,r)},undelegate:function(e,t,n){return 1===arguments.length?this.off(e,"**"):this.off(t,e||"**",n)},hover:function(e,t){return this.mouseenter(e).mouseleave(t||e)}}),S.each("blur focus focusin focusout resize scroll click dblclick mousedown mouseup mousemove mouseover mouseout mouseenter mouseleave change select submit keydown keypress keyup contextmenu".split(" "),function(e,n){S.fn[n]=function(e,t){return 0<arguments.length?this.on(n,null,e,t):this.trigger(n)}});var Gt=/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g;S.proxy=function(e,t){var n,r,i;if("string"==typeof t&&(n=e[t],t=e,e=n),m(e))return r=s.call(arguments,2),(i=function(){return e.apply(t||this,r.concat(s.call(arguments)))}).guid=e.guid=e.guid||S.guid++,i},S.holdReady=function(e){e?S.readyWait++:S.ready(!0)},S.isArray=Array.isArray,S.parseJSON=JSON.parse,S.nodeName=A,S.isFunction=m,S.isWindow=x,S.camelCase=X,S.type=w,S.now=Date.now,S.isNumeric=function(e){var t=S.type(e);return("number"===t||"string"===t)&&!isNaN(e-parseFloat(e))},S.trim=function(e){return null==e?"":(e+"").replace(Gt,"")},"function"==typeof define&&define.amd&&define("jquery",[],function(){return S});var Yt=C.jQuery,Qt=C.$;return S.noConflict=function(e){return C.$===S&&(C.$=Qt),e&&C.jQuery===S&&(C.jQuery=Yt),S},"undefined"==typeof e&&(C.jQuery=C.$=S),S});
</script>
<script type="text/javascript">
/*
 * jQuery Templates Plugin 1.0.0pre
 * http://github.com/jquery/jquery-tmpl
 * Requires jQuery 1.4.2
 *
 * Copyright Software Freedom Conservancy, Inc.
 * Dual licensed under the MIT or GPL Version 2 licenses.
 * http://jquery.org/license
 */
(function(a){var r=a.fn.domManip,d="_tmplitem",q=/^[^<]*(<[\w\W]+>)[^>]*$|\{\{\! /,b={},f={},e,p={key:0,data:{}},i=0,c=0,l=[];function g(g,d,h,e){var c={data:e||(e===0||e===false)?e:d?d.data:{},_wrap:d?d._wrap:null,tmpl:null,parent:d||null,nodes:[],calls:u,nest:w,wrap:x,html:v,update:t};g&&a.extend(c,g,{nodes:[],parent:d});if(h){c.tmpl=h;c._ctnt=c._ctnt||c.tmpl(a,c);c.key=++i;(l.length?f:b)[i]=c}return c}a.each({appendTo:"append",prependTo:"prepend",insertBefore:"before",insertAfter:"after",replaceAll:"replaceWith"},function(f,d){a.fn[f]=function(n){var g=[],i=a(n),k,h,m,l,j=this.length===1&&this[0].parentNode;e=b||{};if(j&&j.nodeType===11&&j.childNodes.length===1&&i.length===1){i[d](this[0]);g=this}else{for(h=0,m=i.length;h<m;h++){c=h;k=(h>0?this.clone(true):this).get();a(i[h])[d](k);g=g.concat(k)}c=0;g=this.pushStack(g,f,i.selector)}l=e;e=null;a.tmpl.complete(l);return g}});a.fn.extend({tmpl:function(d,c,b){return a.tmpl(this[0],d,c,b)},tmplItem:function(){return a.tmplItem(this[0])},template:function(b){return a.template(b,this[0])},domManip:function(d,m,k){if(d[0]&&a.isArray(d[0])){var g=a.makeArray(arguments),h=d[0],j=h.length,i=0,f;while(i<j&&!(f=a.data(h[i++],"tmplItem")));if(f&&c)g[2]=function(b){a.tmpl.afterManip(this,b,k)};r.apply(this,g)}else r.apply(this,arguments);c=0;!e&&a.tmpl.complete(b);return this}});a.extend({tmpl:function(d,h,e,c){var i,k=!c;if(k){c=p;d=a.template[d]||a.template(null,d);f={}}else if(!d){d=c.tmpl;b[c.key]=c;c.nodes=[];c.wrapped&&n(c,c.wrapped);return a(j(c,null,c.tmpl(a,c)))}if(!d)return[];if(typeof h==="function")h=h.call(c||{});e&&e.wrapped&&n(e,e.wrapped);i=a.isArray(h)?a.map(h,function(a){return a?g(e,c,d,a):null}):[g(e,c,d,h)];return k?a(j(c,null,i)):i},tmplItem:function(b){var c;if(b instanceof a)b=b[0];while(b&&b.nodeType===1&&!(c=a.data(b,"tmplItem"))&&(b=b.parentNode));return c||p},template:function(c,b){if(b){if(typeof b==="string")b=o(b);else if(b instanceof a)b=b[0]||{};if(b.nodeType)b=a.data(b,"tmpl")||a.data(b,"tmpl",o(b.innerHTML));return typeof c==="string"?(a.template[c]=b):b}return c?typeof c!=="string"?a.template(null,c):a.template[c]||a.template(null,q.test(c)?c:a(c)):null},encode:function(a){return(""+a).split("&").join("&amp;").split("<").join("&lt;").split(">").join("&gt;").split('"').join("&#34;").split("'").join("&#39;")}});a.extend(a.tmpl,{tag:{tmpl:{_default:{$2:"null"},open:"if($notnull_1){__=__.concat($item.nest($1,$2));}"},wrap:{_default:{$2:"null"},open:"$item.calls(__,$1,$2);__=[];",close:"call=$item.calls();__=call._.concat($item.wrap(call,__));"},each:{_default:{$2:"$index, $value"},open:"if($notnull_1){$.each($1a,function($2){with(this){",close:"}});}"},"if":{open:"if(($notnull_1) && $1a){",close:"}"},"else":{_default:{$1:"true"},open:"}else if(($notnull_1) && $1a){"},html:{open:"if($notnull_1){__.push($1a);}"},"=":{_default:{$1:"$data"},open:"if($notnull_1){__.push($.encode($1a));}"},"!":{open:""}},complete:function(){b={}},afterManip:function(f,b,d){var e=b.nodeType===11?a.makeArray(b.childNodes):b.nodeType===1?[b]:[];d.call(f,b);m(e);c++}});function j(e,g,f){var b,c=f?a.map(f,function(a){return typeof a==="string"?e.key?a.replace(/(<\w+)(?=[\s>])(?![^>]*_tmplitem)([^>]*)/g,"$1 "+d+'="'+e.key+'" $2'):a:j(a,e,a._ctnt)}):e;if(g)return c;c=c.join("");c.replace(/^\s*([^<\s][^<]*)?(<[\w\W]+>)([^>]*[^>\s])?\s*$/,function(f,c,e,d){b=a(e).get();m(b);if(c)b=k(c).concat(b);if(d)b=b.concat(k(d))});return b?b:k(c)}function k(c){var b=document.createElement("div");b.innerHTML=c;return a.makeArray(b.childNodes)}function o(b){return new Function("jQuery","$item","var $=jQuery,call,__=[],$data=$item.data;with($data){__.push('"+a.trim(b).replace(/([\\'])/g,"\\$1").replace(/[\r\t\n]/g," ").replace(/\$\{([^\}]*)\}/g,"{{= $1}}").replace(/\{\{(\/?)(\w+|.)(?:\(((?:[^\}]|\}(?!\}))*?)?\))?(?:\s+(.*?)?)?(\(((?:[^\}]|\}(?!\}))*?)\))?\s*\}\}/g,function(m,l,k,g,b,c,d){var j=a.tmpl.tag[k],i,e,f;if(!j)throw"Unknown template tag: "+k;i=j._default||[];if(c&&!/\w$/.test(b)){b+=c;c=""}if(b){b=h(b);d=d?","+h(d)+")":c?")":"";e=c?b.indexOf(".")>-1?b+h(c):"("+b+").call($item"+d:b;f=c?e:"(typeof("+b+")==='function'?("+b+").call($item):("+b+"))"}else f=e=i.$1||"null";g=h(g);return"');"+j[l?"close":"open"].split("$notnull_1").join(b?"typeof("+b+")!=='undefined' && ("+b+")!=null":"true").split("$1a").join(f).split("$1").join(e).split("$2").join(g||i.$2||"")+"__.push('"})+"');}return __;")}function n(c,b){c._wrap=j(c,true,a.isArray(b)?b:[q.test(b)?b:a(b).html()]).join("")}function h(a){return a?a.replace(/\\'/g,"'").replace(/\\\\/g,"\\"):null}function s(b){var a=document.createElement("div");a.appendChild(b.cloneNode(true));return a.innerHTML}function m(o){var n="_"+c,k,j,l={},e,p,h;for(e=0,p=o.length;e<p;e++){if((k=o[e]).nodeType!==1)continue;j=k.getElementsByTagName("*");for(h=j.length-1;h>=0;h--)m(j[h]);m(k)}function m(j){var p,h=j,k,e,m;if(m=j.getAttribute(d)){while(h.parentNode&&(h=h.parentNode).nodeType===1&&!(p=h.getAttribute(d)));if(p!==m){h=h.parentNode?h.nodeType===11?0:h.getAttribute(d)||0:0;if(!(e=b[m])){e=f[m];e=g(e,b[h]||f[h]);e.key=++i;b[i]=e}c&&o(m)}j.removeAttribute(d)}else if(c&&(e=a.data(j,"tmplItem"))){o(e.key);b[e.key]=e;h=a.data(j.parentNode,"tmplItem");h=h?h.key:0}if(e){k=e;while(k&&k.key!=h){k.nodes.push(j);k=k.parent}delete e._ctnt;delete e._wrap;a.data(j,"tmplItem",e)}function o(a){a=a+n;e=l[a]=l[a]||g(e,b[e.parent.key+n]||e.parent)}}}function u(a,d,c,b){if(!a)return l.pop();l.push({_:a,tmpl:d,item:this,data:c,options:b})}function w(d,c,b){return a.tmpl(a.template(d),c,b,this)}function x(b,d){var c=b.options||{};c.wrapped=d;return a.tmpl(a.template(b.tmpl),b.data,c,b.item)}function v(d,c){var b=this._wrap;return a.map(a(a.isArray(b)?b.join(""):b).filter(d||"*"),function(a){return c?a.innerText||a.textContent:a.outerHTML||s(a)})}function t(){var b=this.nodes;a.tmpl(null,null,null,this).insertBefore(b[0]);a(b).remove()}})(jQuery);
</script>
<script type="text/javascript">
!function(e){"function"==typeof define&&define.amd?define(["jquery"],e):"object"==typeof module&&"object"==typeof module.exports?module.exports=e(require("jquery")):e(jQuery)}(function(e){return function(e){"use strict";var t=e.tablesorter={version:"2.30.5",parsers:[],widgets:[],defaults:{theme:"default",widthFixed:!1,showProcessing:!1,headerTemplate:"{content}",onRenderTemplate:null,onRenderHeader:null,cancelSelection:!0,tabIndex:!0,dateFormat:"mmddyyyy",sortMultiSortKey:"shiftKey",sortResetKey:"ctrlKey",usNumberFormat:!0,delayInit:!1,serverSideSorting:!1,resort:!0,headers:{},ignoreCase:!0,sortForce:null,sortList:[],sortAppend:null,sortStable:!1,sortInitialOrder:"asc",sortLocaleCompare:!1,sortReset:!1,sortRestart:!1,emptyTo:"bottom",stringTo:"max",duplicateSpan:!0,textExtraction:"basic",textAttribute:"data-text",textSorter:null,numberSorter:null,initWidgets:!0,widgetClass:"widget-{name}",widgets:[],widgetOptions:{zebra:["even","odd"]},initialized:null,tableClass:"",cssAsc:"",cssDesc:"",cssNone:"",cssHeader:"",cssHeaderRow:"",cssProcessing:"",cssChildRow:"tablesorter-childRow",cssInfoBlock:"tablesorter-infoOnly",cssNoSort:"tablesorter-noSort",cssIgnoreRow:"tablesorter-ignoreRow",cssIcon:"tablesorter-icon",cssIconNone:"",cssIconAsc:"",cssIconDesc:"",cssIconDisabled:"",pointerClick:"click",pointerDown:"mousedown",pointerUp:"mouseup",selectorHeaders:"> thead th, > thead td",selectorSort:"th, td",selectorRemove:".remove-me",debug:!1,headerList:[],empties:{},strings:{},parsers:[],globalize:0,imgAttr:0},css:{table:"tablesorter",cssHasChild:"tablesorter-hasChildRow",childRow:"tablesorter-childRow",colgroup:"tablesorter-colgroup",header:"tablesorter-header",headerRow:"tablesorter-headerRow",headerIn:"tablesorter-header-inner",icon:"tablesorter-icon",processing:"tablesorter-processing",sortAsc:"tablesorter-headerAsc",sortDesc:"tablesorter-headerDesc",sortNone:"tablesorter-headerUnSorted"},language:{sortAsc:"Ascending sort applied, ",sortDesc:"Descending sort applied, ",sortNone:"No sort applied, ",sortDisabled:"sorting is disabled",nextAsc:"activate to apply an ascending sort",nextDesc:"activate to apply a descending sort",nextNone:"activate to remove the sort"},regex:{templateContent:/\{content\}/g,templateIcon:/\{icon\}/g,templateName:/\{name\}/i,spaces:/\s+/g,nonWord:/\W/g,formElements:/(input|select|button|textarea)/i,chunk:/(^([+\-]?(?:\d*)(?:\.\d*)?(?:[eE][+\-]?\d+)?)?$|^0x[0-9a-f]+$|\d+)/gi,chunks:/(^\\0|\\0$)/,hex:/^0x[0-9a-f]+$/i,comma:/,/g,digitNonUS:/[\s|\.]/g,digitNegativeTest:/^\s*\([.\d]+\)/,digitNegativeReplace:/^\s*\(([.\d]+)\)/,digitTest:/^[\-+(]?\d+[)]?$/,digitReplace:/[,.'"\s]/g},string:{max:1,min:-1,emptymin:1,emptymax:-1,zero:0,none:0,"null":0,top:!0,bottom:!1},keyCodes:{enter:13},dates:{},instanceMethods:{},setup:function(r,o){if(r&&r.tHead&&0!==r.tBodies.length&&!0!==r.hasInitialized){var s="",a=e(r),n=e.metadata;r.hasInitialized=!1,r.isProcessing=!0,r.config=o,e.data(r,"tablesorter",o),t.debug(o,"core")&&(console[console.group?"group":"log"]("Initializing tablesorter v"+t.version),e.data(r,"startoveralltimer",new Date)),o.supportsDataObject=function(e){return e[0]=parseInt(e[0],10),e[0]>1||1===e[0]&&parseInt(e[1],10)>=4}(e.fn.jquery.split(".")),o.emptyTo=o.emptyTo.toLowerCase(),o.stringTo=o.stringTo.toLowerCase(),o.last={sortList:[],clickedIndex:-1},/tablesorter\-/.test(a.attr("class"))||(s=""!==o.theme?" tablesorter-"+o.theme:""),o.namespace?o.namespace="."+o.namespace.replace(t.regex.nonWord,""):o.namespace=".tablesorter"+Math.random().toString(16).slice(2),o.table=r,o.$table=a.addClass(t.css.table+" "+o.tableClass+s+" "+o.namespace.slice(1)).attr("role","grid"),o.$headers=a.find(o.selectorHeaders),o.$table.children().children("tr").attr("role","row"),o.$tbodies=a.children("tbody:not(."+o.cssInfoBlock+")").attr({"aria-live":"polite","aria-relevant":"all"}),o.$table.children("caption").length&&((s=o.$table.children("caption")[0]).id||(s.id=o.namespace.slice(1)+"caption"),o.$table.attr("aria-labelledby",s.id)),o.widgetInit={},o.textExtraction=o.$table.attr("data-text-extraction")||o.textExtraction||"basic",t.buildHeaders(o),t.fixColumnWidth(r),t.addWidgetFromClass(r),t.applyWidgetOptions(r),t.setupParsers(o),o.totalRows=0,o.debug&&t.validateOptions(o),o.delayInit||t.buildCache(o),t.bindEvents(r,o.$headers,!0),t.bindMethods(o),o.supportsDataObject&&void 0!==a.data().sortlist?o.sortList=a.data().sortlist:n&&a.metadata()&&a.metadata().sortlist&&(o.sortList=a.metadata().sortlist),t.applyWidget(r,!0),o.sortList.length>0?t.sortOn(o,o.sortList,{},!o.initWidgets):(t.setHeadersCss(o),o.initWidgets&&t.applyWidget(r,!1)),o.showProcessing&&a.unbind("sortBegin"+o.namespace+" sortEnd"+o.namespace).bind("sortBegin"+o.namespace+" sortEnd"+o.namespace,function(e){clearTimeout(o.timerProcessing),t.isProcessing(r),"sortBegin"===e.type&&(o.timerProcessing=setTimeout(function(){t.isProcessing(r,!0)},500))}),r.hasInitialized=!0,r.isProcessing=!1,t.debug(o,"core")&&(console.log("Overall initialization time:"+t.benchmark(e.data(r,"startoveralltimer"))),t.debug(o,"core")&&console.groupEnd&&console.groupEnd()),a.triggerHandler("tablesorter-initialized",r),"function"==typeof o.initialized&&o.initialized(r)}else t.debug(o,"core")&&(r.hasInitialized?console.warn("Stopping initialization. Tablesorter has already been initialized"):console.error("Stopping initialization! No table, thead or tbody",r))},bindMethods:function(r){var o=r.$table,s=r.namespace,a="sortReset update updateRows updateAll updateHeaders addRows updateCell updateComplete sorton appendCache updateCache applyWidgetId applyWidgets refreshWidgets destroy mouseup mouseleave ".split(" ").join(s+" ");o.unbind(a.replace(t.regex.spaces," ")).bind("sortReset"+s,function(e,r){e.stopPropagation(),t.sortReset(this.config,function(e){e.isApplyingWidgets?setTimeout(function(){t.applyWidget(e,"",r)},100):t.applyWidget(e,"",r)})}).bind("updateAll"+s,function(e,r,o){e.stopPropagation(),t.updateAll(this.config,r,o)}).bind("update"+s+" updateRows"+s,function(e,r,o){e.stopPropagation(),t.update(this.config,r,o)}).bind("updateHeaders"+s,function(e,r){e.stopPropagation(),t.updateHeaders(this.config,r)}).bind("updateCell"+s,function(e,r,o,s){e.stopPropagation(),t.updateCell(this.config,r,o,s)}).bind("addRows"+s,function(e,r,o,s){e.stopPropagation(),t.addRows(this.config,r,o,s)}).bind("updateComplete"+s,function(){this.isUpdating=!1}).bind("sorton"+s,function(e,r,o,s){e.stopPropagation(),t.sortOn(this.config,r,o,s)}).bind("appendCache"+s,function(r,o,s){r.stopPropagation(),t.appendCache(this.config,s),e.isFunction(o)&&o(this)}).bind("updateCache"+s,function(e,r,o){e.stopPropagation(),t.updateCache(this.config,r,o)}).bind("applyWidgetId"+s,function(e,r){e.stopPropagation(),t.applyWidgetId(this,r)}).bind("applyWidgets"+s,function(e,r){e.stopPropagation(),t.applyWidget(this,!1,r)}).bind("refreshWidgets"+s,function(e,r,o){e.stopPropagation(),t.refreshWidgets(this,r,o)}).bind("removeWidget"+s,function(e,r,o){e.stopPropagation(),t.removeWidget(this,r,o)}).bind("destroy"+s,function(e,r,o){e.stopPropagation(),t.destroy(this,r,o)}).bind("resetToLoadState"+s,function(o){o.stopPropagation(),t.removeWidget(this,!0,!1);var s=e.extend(!0,{},r.originalSettings);(r=e.extend(!0,{},t.defaults,s)).originalSettings=s,this.hasInitialized=!1,t.setup(this,r)})},bindEvents:function(r,o,s){var a,n=(r=e(r)[0]).config,i=n.namespace,l=null;!0!==s&&(o.addClass(i.slice(1)+"_extra_headers"),(a=t.getClosest(o,"table")).length&&"TABLE"===a[0].nodeName&&a[0]!==r&&e(a[0]).addClass(i.slice(1)+"_extra_table")),a=(n.pointerDown+" "+n.pointerUp+" "+n.pointerClick+" sort keyup ").replace(t.regex.spaces," ").split(" ").join(i+" "),o.find(n.selectorSort).add(o.filter(n.selectorSort)).unbind(a).bind(a,function(r,o){var s,a,i,d=e(r.target),c=" "+r.type+" ";if(!(1!==(r.which||r.button)&&!c.match(" "+n.pointerClick+" | sort | keyup ")||" keyup "===c&&r.which!==t.keyCodes.enter||c.match(" "+n.pointerClick+" ")&&void 0!==r.which||c.match(" "+n.pointerUp+" ")&&l!==r.target&&!0!==o)){if(c.match(" "+n.pointerDown+" "))return l=r.target,void("1"===(i=d.jquery.split("."))[0]&&i[1]<4&&r.preventDefault());if(l=null,s=t.getClosest(e(this),"."+t.css.header),t.regex.formElements.test(r.target.nodeName)||d.hasClass(n.cssNoSort)||d.parents("."+n.cssNoSort).length>0||s.hasClass("sorter-false")||d.parents("button").length>0)return!n.cancelSelection;n.delayInit&&t.isEmptyObject(n.cache)&&t.buildCache(n),n.last.clickedIndex=s.attr("data-column")||s.index(),(a=n.$headerIndexed[n.last.clickedIndex][0])&&!a.sortDisabled&&t.initSort(n,a,r)}}),n.cancelSelection&&o.attr("unselectable","on").bind("selectstart",!1).css({"user-select":"none",MozUserSelect:"none"})},buildHeaders:function(r){var o,s,a,n;for(r.headerList=[],r.headerContent=[],r.sortVars=[],t.debug(r,"core")&&(a=new Date),r.columns=t.computeColumnIndex(r.$table.children("thead, tfoot").children("tr")),s=r.cssIcon?'<i class="'+(r.cssIcon===t.css.icon?t.css.icon:r.cssIcon+" "+t.css.icon)+'"></i>':"",r.$headers=e(e.map(r.$table.find(r.selectorHeaders),function(o,a){var n,i,l,d,c,g=e(o);if(!t.getClosest(g,"tr").hasClass(r.cssIgnoreRow))return/(th|td)/i.test(o.nodeName)||(c=t.getClosest(g,"th, td"),g.attr("data-column",c.attr("data-column"))),n=t.getColumnData(r.table,r.headers,a,!0),r.headerContent[a]=g.html(),""===r.headerTemplate||g.find("."+t.css.headerIn).length||(d=r.headerTemplate.replace(t.regex.templateContent,g.html()).replace(t.regex.templateIcon,g.find("."+t.css.icon).length?"":s),r.onRenderTemplate&&(i=r.onRenderTemplate.apply(g,[a,d]))&&"string"==typeof i&&(d=i),g.html('<div class="'+t.css.headerIn+'">'+d+"</div>")),r.onRenderHeader&&r.onRenderHeader.apply(g,[a,r,r.$table]),l=parseInt(g.attr("data-column"),10),o.column=l,c=t.getOrder(t.getData(g,n,"sortInitialOrder")||r.sortInitialOrder),r.sortVars[l]={count:-1,order:c?r.sortReset?[1,0,2]:[1,0]:r.sortReset?[0,1,2]:[0,1],lockedOrder:!1},void 0!==(c=t.getData(g,n,"lockedOrder")||!1)&&!1!==c&&(r.sortVars[l].lockedOrder=!0,r.sortVars[l].order=t.getOrder(c)?[1,1]:[0,0]),r.headerList[a]=o,g.addClass(t.css.header+" "+r.cssHeader),t.getClosest(g,"tr").addClass(t.css.headerRow+" "+r.cssHeaderRow).attr("role","row"),r.tabIndex&&g.attr("tabindex",0),o})),r.$headerIndexed=[],n=0;n<r.columns;n++)t.isEmptyObject(r.sortVars[n])&&(r.sortVars[n]={}),o=r.$headers.filter('[data-column="'+n+'"]'),r.$headerIndexed[n]=o.length?o.not(".sorter-false").length?o.not(".sorter-false").filter(":last"):o.filter(":last"):e();r.$table.find(r.selectorHeaders).attr({scope:"col",role:"columnheader"}),t.updateHeader(r),t.debug(r,"core")&&(console.log("Built headers:"+t.benchmark(a)),console.log(r.$headers))},addInstanceMethods:function(r){e.extend(t.instanceMethods,r)},setupParsers:function(e,r){var o,s,a,n,i,l,d,c,g,p,u,f,h,m,b=e.table,y=0,w=t.debug(e,"core"),x={};if(e.$tbodies=e.$table.children("tbody:not(."+e.cssInfoBlock+")"),h=void 0===r?e.$tbodies:r,0===(m=h.length))return w?console.warn("Warning: *Empty table!* Not building a parser cache"):"";for(w&&(f=new Date,console[console.group?"group":"log"]("Detecting parsers for each column")),s={extractors:[],parsers:[]};y<m;){if((o=h[y].rows).length)for(i=0,n=e.columns,l=0;l<n;l++){if((d=e.$headerIndexed[i])&&d.length&&(c=t.getColumnData(b,e.headers,i),u=t.getParserById(t.getData(d,c,"extractor")),p=t.getParserById(t.getData(d,c,"sorter")),g="false"===t.getData(d,c,"parser"),e.empties[i]=(t.getData(d,c,"empty")||e.emptyTo||(e.emptyToBottom?"bottom":"top")).toLowerCase(),e.strings[i]=(t.getData(d,c,"string")||e.stringTo||"max").toLowerCase(),g&&(p=t.getParserById("no-parser")),u||(u=!1),p||(p=t.detectParserForColumn(e,o,-1,i)),w&&(x["("+i+") "+d.text()]={parser:p.id,extractor:u?u.id:"none",string:e.strings[i],empty:e.empties[i]}),s.parsers[i]=p,s.extractors[i]=u,(a=d[0].colSpan-1)>0))for(i+=a,n+=a;a+1>0;)s.parsers[i-a]=p,s.extractors[i-a]=u,a--;i++}y+=s.parsers.length?m:1}w&&(t.isEmptyObject(x)?console.warn("  No parsers detected!"):console[console.table?"table":"log"](x),console.log("Completed detecting parsers"+t.benchmark(f)),console.groupEnd&&console.groupEnd()),e.parsers=s.parsers,e.extractors=s.extractors},addParser:function(e){var r,o=t.parsers.length,s=!0;for(r=0;r<o;r++)t.parsers[r].id.toLowerCase()===e.id.toLowerCase()&&(s=!1);s&&(t.parsers[t.parsers.length]=e)},getParserById:function(e){if("false"==e)return!1;var r,o=t.parsers.length;for(r=0;r<o;r++)if(t.parsers[r].id.toLowerCase()===e.toString().toLowerCase())return t.parsers[r];return!1},detectParserForColumn:function(r,o,s,a){for(var n,i,l,d=t.parsers.length,c=!1,g="",p=t.debug(r,"core"),u=!0;""===g&&u;)(l=o[++s])&&s<50?l.className.indexOf(t.cssIgnoreRow)<0&&(c=o[s].cells[a],g=t.getElementText(r,c,a),i=e(c),p&&console.log("Checking if value was empty on row "+s+", column: "+a+': "'+g+'"')):u=!1;for(;--d>=0;)if((n=t.parsers[d])&&"text"!==n.id&&n.is&&n.is(g,r.table,c,i))return n;return t.getParserById("text")},getElementText:function(r,o,s){if(!o)return"";var a,n=r.textExtraction||"",i=o.jquery?o:e(o);return"string"==typeof n?"basic"===n&&void 0!==(a=i.attr(r.textAttribute))?e.trim(a):e.trim(o.textContent||i.text()):"function"==typeof n?e.trim(n(i[0],r.table,s)):"function"==typeof(a=t.getColumnData(r.table,n,s))?e.trim(a(i[0],r.table,s)):e.trim(i[0].textContent||i.text())},getParsedText:function(e,r,o,s){void 0===s&&(s=t.getElementText(e,r,o));var a=""+s,n=e.parsers[o],i=e.extractors[o];return n&&(i&&"function"==typeof i.format&&(s=i.format(s,e.table,r,o)),a="no-parser"===n.id?"":n.format(""+s,e.table,r,o),e.ignoreCase&&"string"==typeof a&&(a=a.toLowerCase())),a},buildCache:function(r,o,s){var a,n,i,l,d,c,g,p,u,f,h,m,b,y,w,x,v,C,$,I,D,R,T=r.table,L=r.parsers,A=t.debug(r,"core");if(r.$tbodies=r.$table.children("tbody:not(."+r.cssInfoBlock+")"),g=void 0===s?r.$tbodies:s,r.cache={},r.totalRows=0,!L)return A?console.warn("Warning: *Empty table!* Not building a cache"):"";for(A&&(m=new Date),r.showProcessing&&t.isProcessing(T,!0),c=0;c<g.length;c++){for(x=[],a=r.cache[c]={normalized:[]},b=g[c]&&g[c].rows.length||0,l=0;l<b;++l)if(y={child:[],raw:[]},p=e(g[c].rows[l]),u=[],!p.hasClass(r.selectorRemove.slice(1)))if(p.hasClass(r.cssChildRow)&&0!==l)for(D=a.normalized.length-1,(w=a.normalized[D][r.columns]).$row=w.$row.add(p),p.prev().hasClass(r.cssChildRow)||p.prev().addClass(t.css.cssHasChild),f=p.children("th, td"),D=w.child.length,w.child[D]=[],C=0,I=r.columns,d=0;d<I;d++)(h=f[d])&&(w.child[D][d]=t.getParsedText(r,h,d),(v=f[d].colSpan-1)>0&&(C+=v,I+=v)),C++;else{for(y.$row=p,y.order=l,C=0,I=r.columns,d=0;d<I;++d){if((h=p[0].cells[d])&&C<r.columns&&(!($=void 0!==L[C])&&A&&console.warn("No parser found for row: "+l+", column: "+d+'; cell containing: "'+e(h).text()+'"; does it have a header?'),n=t.getElementText(r,h,C),y.raw[C]=n,i=t.getParsedText(r,h,C,n),u[C]=i,$&&"numeric"===(L[C].type||"").toLowerCase()&&(x[C]=Math.max(Math.abs(i)||0,x[C]||0)),(v=h.colSpan-1)>0)){for(R=0;R<=v;)i=r.duplicateSpan||0===R?n:"string"!=typeof r.textExtraction?t.getElementText(r,h,C+R)||"":"",y.raw[C+R]=i,u[C+R]=i,R++;C+=v,I+=v}C++}u[r.columns]=y,a.normalized[a.normalized.length]=u}a.colMax=x,r.totalRows+=a.normalized.length}if(r.showProcessing&&t.isProcessing(T),A){for(D=Math.min(5,r.cache[0].normalized.length),console[console.group?"group":"log"]("Building cache for "+r.totalRows+" rows (showing "+D+" rows in log) and "+r.columns+" columns"+t.benchmark(m)),n={},d=0;d<r.columns;d++)for(C=0;C<D;C++)n["row: "+C]||(n["row: "+C]={}),n["row: "+C][r.$headerIndexed[d].text()]=r.cache[0].normalized[C][d];console[console.table?"table":"log"](n),console.groupEnd&&console.groupEnd()}e.isFunction(o)&&o(T)},getColumnText:function(r,o,s,a){var n,i,l,d,c,g,p,u,f,h,m="function"==typeof s,b="all"===o,y={raw:[],parsed:[],$cell:[]},w=(r=e(r)[0]).config;if(!t.isEmptyObject(w)){for(c=w.$tbodies.length,n=0;n<c;n++)for(g=(l=w.cache[n].normalized).length,i=0;i<g;i++)d=l[i],a&&!d[w.columns].$row.is(a)||(h=!0,u=b?d.slice(0,w.columns):d[o],d=d[w.columns],p=b?d.raw:d.raw[o],f=b?d.$row.children():d.$row.children().eq(o),m&&(h=s({tbodyIndex:n,rowIndex:i,parsed:u,raw:p,$row:d.$row,$cell:f})),!1!==h&&(y.parsed[y.parsed.length]=u,y.raw[y.raw.length]=p,y.$cell[y.$cell.length]=f));return y}t.debug(w,"core")&&console.warn("No cache found - aborting getColumnText function!")},setHeadersCss:function(r){var o,s,a=r.sortList,n=a.length,i=t.css.sortNone+" "+r.cssNone,l=[t.css.sortAsc+" "+r.cssAsc,t.css.sortDesc+" "+r.cssDesc],d=[r.cssIconAsc,r.cssIconDesc,r.cssIconNone],c=["ascending","descending"],g=function(e,r){e.removeClass(i).addClass(l[r]).attr("aria-sort",c[r]).find("."+t.css.icon).removeClass(d[2]).addClass(d[r])},p=r.$table.find("tfoot tr").children("td, th").add(e(r.namespace+"_extra_headers")).removeClass(l.join(" ")),u=r.$headers.add(e("thead "+r.namespace+"_extra_headers")).removeClass(l.join(" ")).addClass(i).attr("aria-sort","none").find("."+t.css.icon).removeClass(d.join(" ")).end();for(u.not(".sorter-false").find("."+t.css.icon).addClass(d[2]),r.cssIconDisabled&&u.filter(".sorter-false").find("."+t.css.icon).addClass(r.cssIconDisabled),o=0;o<n;o++)if(2!==a[o][1]){if(u=r.$headers.filter(function(e){for(var o=!0,s=r.$headers.eq(e),a=parseInt(s.attr("data-column"),10),n=a+t.getClosest(s,"th, td")[0].colSpan;a<n;a++)o=!!o&&(o||t.isValueInArray(a,r.sortList)>-1);return o}),(u=u.not(".sorter-false").filter('[data-column="'+a[o][0]+'"]'+(1===n?":last":""))).length)for(s=0;s<u.length;s++)u[s].sortDisabled||g(u.eq(s),a[o][1]);p.length&&g(p.filter('[data-column="'+a[o][0]+'"]'),a[o][1])}for(n=r.$headers.length,o=0;o<n;o++)t.setColumnAriaLabel(r,r.$headers.eq(o))},getClosest:function(t,r){return e.fn.closest?t.closest(r):t.is(r)?t:t.parents(r).filter(":first")},setColumnAriaLabel:function(r,o,s){if(o.length){var a=parseInt(o.attr("data-column"),10),n=r.sortVars[a],i=o.hasClass(t.css.sortAsc)?"sortAsc":o.hasClass(t.css.sortDesc)?"sortDesc":"sortNone",l=e.trim(o.text())+": "+t.language[i];o.hasClass("sorter-false")||!1===s?l+=t.language.sortDisabled:(i=(n.count+1)%n.order.length,s=n.order[i],l+=t.language[0===s?"nextAsc":1===s?"nextDesc":"nextNone"]),o.attr("aria-label",l)}},updateHeader:function(e){var r,o,s,a,n=e.table,i=e.$headers.length;for(r=0;r<i;r++)s=e.$headers.eq(r),a=t.getColumnData(n,e.headers,r,!0),o="false"===t.getData(s,a,"sorter")||"false"===t.getData(s,a,"parser"),t.setColumnSort(e,s,o)},setColumnSort:function(e,t,r){var o=e.table.id;t[0].sortDisabled=r,t[r?"addClass":"removeClass"]("sorter-false").attr("aria-disabled",""+r),e.tabIndex&&(r?t.removeAttr("tabindex"):t.attr("tabindex","0")),o&&(r?t.removeAttr("aria-controls"):t.attr("aria-controls",o))},updateHeaderSortCount:function(r,o){var s,a,n,i,l,d,c,g,p=o||r.sortList,u=p.length;for(r.sortList=[],i=0;i<u;i++)if(c=p[i],(s=parseInt(c[0],10))<r.columns){switch(r.sortVars[s].order||(g=t.getOrder(r.sortInitialOrder)?r.sortReset?[1,0,2]:[1,0]:r.sortReset?[0,1,2]:[0,1],r.sortVars[s].order=g,r.sortVars[s].count=0),g=r.sortVars[s].order,a=(""+c[1]).match(/^(1|d|s|o|n)/),a=a?a[0]:""){case"1":case"d":a=1;break;case"s":a=l||0;break;case"o":a=0===(d=g[(l||0)%g.length])?1:1===d?0:2;break;case"n":a=g[++r.sortVars[s].count%g.length];break;default:a=0}l=0===i?a:l,n=[s,parseInt(a,10)||0],r.sortList[r.sortList.length]=n,a=e.inArray(n[1],g),r.sortVars[s].count=a>=0?a:n[1]%g.length}},updateAll:function(e,r,o){var s=e.table;s.isUpdating=!0,t.refreshWidgets(s,!0,!0),t.buildHeaders(e),t.bindEvents(s,e.$headers,!0),t.bindMethods(e),t.commonUpdate(e,r,o)},update:function(e,r,o){e.table.isUpdating=!0,t.updateHeader(e),t.commonUpdate(e,r,o)},updateHeaders:function(e,r){e.table.isUpdating=!0,t.buildHeaders(e),t.bindEvents(e.table,e.$headers,!0),t.resortComplete(e,r)},updateCell:function(r,o,s,a){if(e(o).closest("tr").hasClass(r.cssChildRow))console.warn('Tablesorter Warning! "updateCell" for child row content has been disabled, use "update" instead');else{if(t.isEmptyObject(r.cache))return t.updateHeader(r),void t.commonUpdate(r,s,a);r.table.isUpdating=!0,r.$table.find(r.selectorRemove).remove();var n,i,l,d,c,g,p=r.$tbodies,u=e(o),f=p.index(t.getClosest(u,"tbody")),h=r.cache[f],m=t.getClosest(u,"tr");if(o=u[0],p.length&&f>=0){if(l=p.eq(f).find("tr").not("."+r.cssChildRow).index(m),c=h.normalized[l],(g=m[0].cells.length)!==r.columns)for(d=0,n=!1,i=0;i<g;i++)n||m[0].cells[i]===o?n=!0:d+=m[0].cells[i].colSpan;else d=u.index();n=t.getElementText(r,o,d),c[r.columns].raw[d]=n,n=t.getParsedText(r,o,d,n),c[d]=n,"numeric"===(r.parsers[d].type||"").toLowerCase()&&(h.colMax[d]=Math.max(Math.abs(n)||0,h.colMax[d]||0)),!1!==(n="undefined"!==s?s:r.resort)?t.checkResort(r,n,a):t.resortComplete(r,a)}else t.debug(r,"core")&&console.error("updateCell aborted, tbody missing or not within the indicated table"),r.table.isUpdating=!1}},addRows:function(r,o,s,a){var n,i,l,d,c,g,p,u,f,h,m,b,y,w="string"==typeof o&&1===r.$tbodies.length&&/<tr/.test(o||""),x=r.table;if(w)o=e(o),r.$tbodies.append(o);else if(!(o&&o instanceof e&&t.getClosest(o,"table")[0]===r.table))return t.debug(r,"core")&&console.error("addRows method requires (1) a jQuery selector reference to rows that have already been added to the table, or (2) row HTML string to be added to a table with only one tbody"),!1;if(x.isUpdating=!0,t.isEmptyObject(r.cache))t.updateHeader(r),t.commonUpdate(r,s,a);else{for(c=o.filter("tr").attr("role","row").length,l=r.$tbodies.index(o.parents("tbody").filter(":first")),r.parsers&&r.parsers.length||t.setupParsers(r),d=0;d<c;d++){for(f=0,p=o[d].cells.length,u=r.cache[l].normalized.length,m=[],h={child:[],raw:[],$row:o.eq(d),order:u},g=0;g<p;g++)b=o[d].cells[g],n=t.getElementText(r,b,f),h.raw[f]=n,i=t.getParsedText(r,b,f,n),m[f]=i,"numeric"===(r.parsers[f].type||"").toLowerCase()&&(r.cache[l].colMax[f]=Math.max(Math.abs(i)||0,r.cache[l].colMax[f]||0)),(y=b.colSpan-1)>0&&(f+=y),f++;m[r.columns]=h,r.cache[l].normalized[u]=m}t.checkResort(r,s,a)}},updateCache:function(e,r,o){e.parsers&&e.parsers.length||t.setupParsers(e,o),t.buildCache(e,r,o)},appendCache:function(e,r){var o,s,a,n,i,l,d,c=e.table,g=e.$tbodies,p=[],u=e.cache;if(t.isEmptyObject(u))return e.appender?e.appender(c,p):c.isUpdating?e.$table.triggerHandler("updateComplete",c):"";for(t.debug(e,"core")&&(d=new Date),l=0;l<g.length;l++)if((a=g.eq(l)).length){for(n=t.processTbody(c,a,!0),s=(o=u[l].normalized).length,i=0;i<s;i++)p[p.length]=o[i][e.columns].$row,e.appender&&(!e.pager||e.pager.removeRows||e.pager.ajax)||n.append(o[i][e.columns].$row);t.processTbody(c,n,!1)}e.appender&&e.appender(c,p),t.debug(e,"core")&&console.log("Rebuilt table"+t.benchmark(d)),r||e.appender||t.applyWidget(c),c.isUpdating&&e.$table.triggerHandler("updateComplete",c)},commonUpdate:function(e,r,o){e.$table.find(e.selectorRemove).remove(),t.setupParsers(e),t.buildCache(e),t.checkResort(e,r,o)},initSort:function(r,o,s){if(r.table.isUpdating)return setTimeout(function(){t.initSort(r,o,s)},50);var a,n,i,l,d,c,g,p=!s[r.sortMultiSortKey],u=r.table,f=r.$headers.length,h=t.getClosest(e(o),"th, td"),m=parseInt(h.attr("data-column"),10),b=r.sortVars[m].order;if(h=h[0],r.$table.triggerHandler("sortStart",u),c=(r.sortVars[m].count+1)%b.length,r.sortVars[m].count=s[r.sortResetKey]?2:c,r.sortRestart)for(i=0;i<f;i++)g=r.$headers.eq(i),m!==(c=parseInt(g.attr("data-column"),10))&&(p||g.hasClass(t.css.sortNone))&&(r.sortVars[c].count=-1);if(p){if(r.sortList=[],r.last.sortList=[],null!==r.sortForce)for(a=r.sortForce,n=0;n<a.length;n++)a[n][0]!==m&&(r.sortList[r.sortList.length]=a[n]);if((l=b[r.sortVars[m].count])<2&&(r.sortList[r.sortList.length]=[m,l],h.colSpan>1))for(n=1;n<h.colSpan;n++)r.sortList[r.sortList.length]=[m+n,l],r.sortVars[m+n].count=e.inArray(l,b)}else if(r.sortList=e.extend([],r.last.sortList),t.isValueInArray(m,r.sortList)>=0)for(n=0;n<r.sortList.length;n++)(c=r.sortList[n])[0]===m&&(c[1]=b[r.sortVars[m].count],2===c[1]&&(r.sortList.splice(n,1),r.sortVars[m].count=-1));else if((l=b[r.sortVars[m].count])<2&&(r.sortList[r.sortList.length]=[m,l],h.colSpan>1))for(n=1;n<h.colSpan;n++)r.sortList[r.sortList.length]=[m+n,l],r.sortVars[m+n].count=e.inArray(l,b);if(r.last.sortList=e.extend([],r.sortList),r.sortList.length&&r.sortAppend&&(a=e.isArray(r.sortAppend)?r.sortAppend:r.sortAppend[r.sortList[0][0]],!t.isEmptyObject(a)))for(n=0;n<a.length;n++)if(a[n][0]!==m&&t.isValueInArray(a[n][0],r.sortList)<0){if(l=a[n][1],d=(""+l).match(/^(a|d|s|o|n)/))switch(c=r.sortList[0][1],d[0]){case"d":l=1;break;case"s":l=c;break;case"o":l=0===c?1:0;break;case"n":l=(c+1)%b.length;break;default:l=0}r.sortList[r.sortList.length]=[a[n][0],l]}r.$table.triggerHandler("sortBegin",u),setTimeout(function(){t.setHeadersCss(r),t.multisort(r),t.appendCache(r),r.$table.triggerHandler("sortBeforeEnd",u),r.$table.triggerHandler("sortEnd",u)},1)},multisort:function(e){var r,o,s,a,n=e.table,i=[],l=0,d=e.textSorter||"",c=e.sortList,g=c.length,p=e.$tbodies.length;if(!e.serverSideSorting&&!t.isEmptyObject(e.cache)){if(t.debug(e,"core")&&(o=new Date),"object"==typeof d)for(s=e.columns;s--;)"function"==typeof(a=t.getColumnData(n,d,s))&&(i[s]=a);for(r=0;r<p;r++)s=e.cache[r].colMax,e.cache[r].normalized.sort(function(r,o){var a,p,u,f,h,m,b;for(a=0;a<g;a++){if(u=c[a][0],f=c[a][1],l=0===f,e.sortStable&&r[u]===o[u]&&1===g)return r[e.columns].order-o[e.columns].order;if(p=/n/i.test(t.getSortType(e.parsers,u)),p&&e.strings[u]?(p="boolean"==typeof t.string[e.strings[u]]?(l?1:-1)*(t.string[e.strings[u]]?-1:1):e.strings[u]?t.string[e.strings[u]]||0:0,h=e.numberSorter?e.numberSorter(r[u],o[u],l,s[u],n):t["sortNumeric"+(l?"Asc":"Desc")](r[u],o[u],p,s[u],u,e)):(m=l?r:o,b=l?o:r,h="function"==typeof d?d(m[u],b[u],l,u,n):"function"==typeof i[u]?i[u](m[u],b[u],l,u,n):t["sortNatural"+(l?"Asc":"Desc")](r[u],o[u],u,e)),h)return h}return r[e.columns].order-o[e.columns].order});t.debug(e,"core")&&console.log("Applying sort "+c.toString()+t.benchmark(o))}},resortComplete:function(t,r){t.table.isUpdating&&t.$table.triggerHandler("updateComplete",t.table),e.isFunction(r)&&r(t.table)},checkResort:function(r,o,s){var a=e.isArray(o)?o:r.sortList;!1===(void 0===o?r.resort:o)||r.serverSideSorting||r.table.isProcessing?(t.resortComplete(r,s),t.applyWidget(r.table,!1)):a.length?t.sortOn(r,a,function(){t.resortComplete(r,s)},!0):t.sortReset(r,function(){t.resortComplete(r,s),t.applyWidget(r.table,!1)})},sortOn:function(r,o,s,a){var n=r.table;r.$table.triggerHandler("sortStart",n),t.updateHeaderSortCount(r,o),t.setHeadersCss(r),r.delayInit&&t.isEmptyObject(r.cache)&&t.buildCache(r),r.$table.triggerHandler("sortBegin",n),t.multisort(r),t.appendCache(r,a),r.$table.triggerHandler("sortBeforeEnd",n),r.$table.triggerHandler("sortEnd",n),t.applyWidget(n),e.isFunction(s)&&s(n)},sortReset:function(r,o){r.sortList=[],t.setHeadersCss(r),t.multisort(r),t.appendCache(r);var s;for(s=0;s<r.columns;s++)r.sortVars[s].count=-1;e.isFunction(o)&&o(r.table)},getSortType:function(e,t){return e&&e[t]?e[t].type||"":""},getOrder:function(e){return/^d/i.test(e)||1===e},sortNatural:function(e,r){if(e===r)return 0;e=e.toString(),r=r.toString();var o,s,a,n,i,l,d=t.regex;if(d.hex.test(r)){if(o=parseInt((e||"").match(d.hex),16),s=parseInt((r||"").match(d.hex),16),o<s)return-1;if(o>s)return 1}for(o=(e||"").replace(d.chunk,"\\0$1\\0").replace(d.chunks,"").split("\\0"),s=(r||"").replace(d.chunk,"\\0$1\\0").replace(d.chunks,"").split("\\0"),l=Math.max(o.length,s.length),i=0;i<l;i++){if(a=isNaN(o[i])?o[i]||0:parseFloat(o[i])||0,n=isNaN(s[i])?s[i]||0:parseFloat(s[i])||0,isNaN(a)!==isNaN(n))return isNaN(a)?1:-1;if(typeof a!=typeof n&&(a+="",n+=""),a<n)return-1;if(a>n)return 1}return 0},sortNaturalAsc:function(e,r,o,s){if(e===r)return 0;var a=t.string[s.empties[o]||s.emptyTo];return""===e&&0!==a?"boolean"==typeof a?a?-1:1:-a||-1:""===r&&0!==a?"boolean"==typeof a?a?1:-1:a||1:t.sortNatural(e,r)},sortNaturalDesc:function(e,r,o,s){if(e===r)return 0;var a=t.string[s.empties[o]||s.emptyTo];return""===e&&0!==a?"boolean"==typeof a?a?-1:1:a||1:""===r&&0!==a?"boolean"==typeof a?a?1:-1:-a||-1:t.sortNatural(r,e)},sortText:function(e,t){return e>t?1:e<t?-1:0},getTextValue:function(e,t,r){if(r){var o,s=e?e.length:0,a=r+t;for(o=0;o<s;o++)a+=e.charCodeAt(o);return t*a}return 0},sortNumericAsc:function(e,r,o,s,a,n){if(e===r)return 0;var i=t.string[n.empties[a]||n.emptyTo];return""===e&&0!==i?"boolean"==typeof i?i?-1:1:-i||-1:""===r&&0!==i?"boolean"==typeof i?i?1:-1:i||1:(isNaN(e)&&(e=t.getTextValue(e,o,s)),isNaN(r)&&(r=t.getTextValue(r,o,s)),e-r)},sortNumericDesc:function(e,r,o,s,a,n){if(e===r)return 0;var i=t.string[n.empties[a]||n.emptyTo];return""===e&&0!==i?"boolean"==typeof i?i?-1:1:i||1:""===r&&0!==i?"boolean"==typeof i?i?1:-1:-i||-1:(isNaN(e)&&(e=t.getTextValue(e,o,s)),isNaN(r)&&(r=t.getTextValue(r,o,s)),r-e)},sortNumeric:function(e,t){return e-t},addWidget:function(e){e.id&&!t.isEmptyObject(t.getWidgetById(e.id))&&console.warn('"'+e.id+'" widget was loaded more than once!'),t.widgets[t.widgets.length]=e},hasWidget:function(t,r){return(t=e(t)).length&&t[0].config&&t[0].config.widgetInit[r]||!1},getWidgetById:function(e){var r,o,s=t.widgets.length;for(r=0;r<s;r++)if((o=t.widgets[r])&&o.id&&o.id.toLowerCase()===e.toLowerCase())return o},applyWidgetOptions:function(r){var o,s,a,n=r.config,i=n.widgets.length;if(i)for(o=0;o<i;o++)(s=t.getWidgetById(n.widgets[o]))&&s.options&&(a=e.extend(!0,{},s.options),n.widgetOptions=e.extend(!0,a,n.widgetOptions),e.extend(!0,t.defaults.widgetOptions,s.options))},addWidgetFromClass:function(e){var r,o,s=e.config,a="^"+s.widgetClass.replace(t.regex.templateName,"(\\S+)+")+"$",n=new RegExp(a,"g"),i=(e.className||"").split(t.regex.spaces);if(i.length)for(r=i.length,o=0;o<r;o++)i[o].match(n)&&(s.widgets[s.widgets.length]=i[o].replace(n,"$1"))},applyWidgetId:function(r,o,s){var a,n,i,l=(r=e(r)[0]).config,d=l.widgetOptions,c=t.debug(l,"core"),g=t.getWidgetById(o);g&&(i=g.id,a=!1,e.inArray(i,l.widgets)<0&&(l.widgets[l.widgets.length]=i),c&&(n=new Date),!s&&l.widgetInit[i]||(l.widgetInit[i]=!0,r.hasInitialized&&t.applyWidgetOptions(r),"function"==typeof g.init&&(a=!0,c&&console[console.group?"group":"log"]("Initializing "+i+" widget"),g.init(r,g,l,d))),s||"function"!=typeof g.format||(a=!0,c&&console[console.group?"group":"log"]("Updating "+i+" widget"),g.format(r,l,d,!1)),c&&a&&(console.log("Completed "+(s?"initializing ":"applying ")+i+" widget"+t.benchmark(n)),console.groupEnd&&console.groupEnd()))},applyWidget:function(r,o,s){var a,n,i,l,d,c=(r=e(r)[0]).config,g=t.debug(c,"core"),p=[];if(!1===o||!r.hasInitialized||!r.isApplyingWidgets&&!r.isUpdating){if(g&&(d=new Date),t.addWidgetFromClass(r),clearTimeout(c.timerReady),c.widgets.length){for(r.isApplyingWidgets=!0,c.widgets=e.grep(c.widgets,function(t,r){return e.inArray(t,c.widgets)===r}),n=(i=c.widgets||[]).length,a=0;a<n;a++)(l=t.getWidgetById(i[a]))&&l.id?(l.priority||(l.priority=10),p[a]=l):g&&console.warn('"'+i[a]+'" was enabled, but the widget code has not been loaded!');for(p.sort(function(e,t){return e.priority<t.priority?-1:e.priority===t.priority?0:1}),n=p.length,g&&console[console.group?"group":"log"]("Start "+(o?"initializing":"applying")+" widgets"),a=0;a<n;a++)(l=p[a])&&l.id&&t.applyWidgetId(r,l.id,o);g&&console.groupEnd&&console.groupEnd()}c.timerReady=setTimeout(function(){r.isApplyingWidgets=!1,e.data(r,"lastWidgetApplication",new Date),c.$table.triggerHandler("tablesorter-ready"),o||"function"!=typeof s||s(r),g&&(l=c.widgets.length,console.log("Completed "+(!0===o?"initializing ":"applying ")+l+" widget"+(1!==l?"s":"")+t.benchmark(d)))},10)}},removeWidget:function(r,o,s){var a,n,i,l,d=(r=e(r)[0]).config;if(!0===o)for(o=[],l=t.widgets.length,i=0;i<l;i++)(n=t.widgets[i])&&n.id&&(o[o.length]=n.id);else o=(e.isArray(o)?o.join(","):o||"").toLowerCase().split(/[\s,]+/);for(l=o.length,a=0;a<l;a++)n=t.getWidgetById(o[a]),(i=e.inArray(o[a],d.widgets))>=0&&!0!==s&&d.widgets.splice(i,1),n&&n.remove&&(t.debug(d,"core")&&console.log((s?"Refreshing":"Removing")+' "'+o[a]+'" widget'),n.remove(r,d,d.widgetOptions,s),d.widgetInit[o[a]]=!1);d.$table.triggerHandler("widgetRemoveEnd",r)},refreshWidgets:function(r,o,s){var a,n,i=(r=e(r)[0]).config.widgets,l=t.widgets,d=l.length,c=[],g=function(t){e(t).triggerHandler("refreshComplete")};for(a=0;a<d;a++)(n=l[a])&&n.id&&(o||e.inArray(n.id,i)<0)&&(c[c.length]=n.id);t.removeWidget(r,c.join(","),!0),!0!==s?(t.applyWidget(r,o||!1,g),o&&t.applyWidget(r,!1,g)):g(r)},benchmark:function(e){return" ("+((new Date).getTime()-e.getTime())+" ms)"},log:function(){console.log(arguments)},debug:function(e,t){return e&&(!0===e.debug||"string"==typeof e.debug&&e.debug.indexOf(t)>-1)},isEmptyObject:function(e){for(var t in e)return!1;return!0},isValueInArray:function(e,t){var r,o=t&&t.length||0;for(r=0;r<o;r++)if(t[r][0]===e)return r;return-1},formatFloat:function(r,o){if("string"!=typeof r||""===r)return r;var s;return r=(o&&o.config?!1!==o.config.usNumberFormat:void 0===o||o)?r.replace(t.regex.comma,""):r.replace(t.regex.digitNonUS,"").replace(t.regex.comma,"."),t.regex.digitNegativeTest.test(r)&&(r=r.replace(t.regex.digitNegativeReplace,"-$1")),s=parseFloat(r),isNaN(s)?e.trim(r):s},isDigit:function(e){return isNaN(e)?t.regex.digitTest.test(e.toString().replace(t.regex.digitReplace,"")):""!==e},computeColumnIndex:function(r,o){var s,a,n,i,l,d,c,g,p,u,f=o&&o.columns||0,h=[],m=new Array(f);for(s=0;s<r.length;s++)for(d=r[s].cells,a=0;a<d.length;a++){for(c=s,g=(l=d[a]).rowSpan||1,p=l.colSpan||1,void 0===h[c]&&(h[c]=[]),n=0;n<h[c].length+1;n++)if(void 0===h[c][n]){u=n;break}for(f&&l.cellIndex===u||(l.setAttribute?l.setAttribute("data-column",u):e(l).attr("data-column",u)),n=c;n<c+g;n++)for(void 0===h[n]&&(h[n]=[]),m=h[n],i=u;i<u+p;i++)m[i]="x"}return t.checkColumnCount(r,h,m.length),m.length},checkColumnCount:function(e,t,r){var o,s,a=!0,n=[];for(o=0;o<t.length;o++)if(t[o]&&(s=t[o].length,t[o].length!==r)){a=!1;break}a||(e.each(function(e,t){var r=t.parentElement.nodeName;n.indexOf(r)<0&&n.push(r)}),console.error("Invalid or incorrect number of columns in the "+n.join(" or ")+"; expected "+r+", but found "+s+" columns"))},fixColumnWidth:function(r){var o,s,a,n,i,l=(r=e(r)[0]).config,d=l.$table.children("colgroup");if(d.length&&d.hasClass(t.css.colgroup)&&d.remove(),l.widthFixed&&0===l.$table.children("colgroup").length){for(d=e('<colgroup class="'+t.css.colgroup+'">'),o=l.$table.width(),n=(a=l.$tbodies.find("tr:first").children(":visible")).length,i=0;i<n;i++)s=parseInt(a.eq(i).width()/o*1e3,10)/10+"%",d.append(e("<col>").css("width",s));l.$table.prepend(d)}},getData:function(t,r,o){var s,a,n="",i=e(t);return i.length?(s=!!e.metadata&&i.metadata(),a=" "+(i.attr("class")||""),void 0!==i.data(o)||void 0!==i.data(o.toLowerCase())?n+=i.data(o)||i.data(o.toLowerCase()):s&&void 0!==s[o]?n+=s[o]:r&&void 0!==r[o]?n+=r[o]:" "!==a&&a.match(" "+o+"-")&&(n=a.match(new RegExp("\\s"+o+"-([\\w-]+)"))[1]||""),e.trim(n)):""},getColumnData:function(t,r,o,s,a){if("object"!=typeof r||null===r)return r;var n,i=(t=e(t)[0]).config,l=a||i.$headers,d=i.$headerIndexed&&i.$headerIndexed[o]||l.find('[data-column="'+o+'"]:last');if(void 0!==r[o])return s?r[o]:r[l.index(d)];for(n in r)if("string"==typeof n&&d.filter(n).add(d.find(n)).length)return r[n]},isProcessing:function(r,o,s){var a=(r=e(r))[0].config,n=s||r.find("."+t.css.header);o?(void 0!==s&&a.sortList.length>0&&(n=n.filter(function(){return!this.sortDisabled&&t.isValueInArray(parseFloat(e(this).attr("data-column")),a.sortList)>=0})),r.add(n).addClass(t.css.processing+" "+a.cssProcessing)):r.add(n).removeClass(t.css.processing+" "+a.cssProcessing)},processTbody:function(t,r,o){if(t=e(t)[0],o)return t.isProcessing=!0,r.before('<colgroup class="tablesorter-savemyplace"/>'),e.fn.detach?r.detach():r.remove();var s=e(t).find("colgroup.tablesorter-savemyplace");r.insertAfter(s),s.remove(),t.isProcessing=!1},clearTableBody:function(t){e(t)[0].config.$tbodies.children().detach()},characterEquivalents:{a:"áàâãäąå",A:"ÁÀÂÃÄĄÅ",c:"çćč",C:"ÇĆČ",e:"éèêëěę",E:"ÉÈÊËĚĘ",i:"íìİîïı",I:"ÍÌİÎÏ",o:"óòôõöō",O:"ÓÒÔÕÖŌ",ss:"ß",SS:"ẞ",u:"úùûüů",U:"ÚÙÛÜŮ"},replaceAccents:function(e){var r,o="[",s=t.characterEquivalents;if(!t.characterRegex){t.characterRegexArray={};for(r in s)"string"==typeof r&&(o+=s[r],t.characterRegexArray[r]=new RegExp("["+s[r]+"]","g"));t.characterRegex=new RegExp(o+"]")}if(t.characterRegex.test(e))for(r in s)"string"==typeof r&&(e=e.replace(t.characterRegexArray[r],r));return e},validateOptions:function(r){var o,s,a,n,i="headers sortForce sortList sortAppend widgets".split(" "),l=r.originalSettings;if(l){t.debug(r,"core")&&(n=new Date);for(o in l)if("undefined"===(a=typeof t.defaults[o]))console.warn('Tablesorter Warning! "table.config.'+o+'" option not recognized');else if("object"===a)for(s in l[o])a=t.defaults[o]&&typeof t.defaults[o][s],e.inArray(o,i)<0&&"undefined"===a&&console.warn('Tablesorter Warning! "table.config.'+o+"."+s+'" option not recognized');t.debug(r,"core")&&console.log("validate options time:"+t.benchmark(n))}},restoreHeaders:function(r){var o,s,a=e(r)[0].config,n=a.$table.find(a.selectorHeaders),i=n.length;for(o=0;o<i;o++)(s=n.eq(o)).find("."+t.css.headerIn).length&&s.html(a.headerContent[o])},destroy:function(r,o,s){if((r=e(r)[0]).hasInitialized){t.removeWidget(r,!0,!1);var a,n=e(r),i=r.config,l=n.find("thead:first"),d=l.find("tr."+t.css.headerRow).removeClass(t.css.headerRow+" "+i.cssHeaderRow),c=n.find("tfoot:first > tr").children("th, td");!1===o&&e.inArray("uitheme",i.widgets)>=0&&(n.triggerHandler("applyWidgetId",["uitheme"]),n.triggerHandler("applyWidgetId",["zebra"])),l.find("tr").not(d).remove(),a="sortReset update updateRows updateAll updateHeaders updateCell addRows updateComplete sorton appendCache updateCache applyWidgetId applyWidgets refreshWidgets removeWidget destroy mouseup mouseleave "+"keypress sortBegin sortEnd resetToLoadState ".split(" ").join(i.namespace+" "),n.removeData("tablesorter").unbind(a.replace(t.regex.spaces," ")),i.$headers.add(c).removeClass([t.css.header,i.cssHeader,i.cssAsc,i.cssDesc,t.css.sortAsc,t.css.sortDesc,t.css.sortNone].join(" ")).removeAttr("data-column").removeAttr("aria-label").attr("aria-disabled","true"),d.find(i.selectorSort).unbind("mousedown mouseup keypress ".split(" ").join(i.namespace+" ").replace(t.regex.spaces," ")),t.restoreHeaders(r),n.toggleClass(t.css.table+" "+i.tableClass+" tablesorter-"+i.theme,!1===o),n.removeClass(i.namespace.slice(1)),r.hasInitialized=!1,delete r.config.cache,"function"==typeof s&&s(r),t.debug(i,"core")&&console.log("tablesorter has been removed")}}};e.fn.tablesorter=function(r){return this.each(function(){var o=this,s=e.extend(!0,{},t.defaults,r,t.instanceMethods);s.originalSettings=r,!o.hasInitialized&&t.buildTable&&"TABLE"!==this.nodeName?t.buildTable(o,s):t.setup(o,s)})},window.console&&window.console.log||(t.logs=[],console={},console.log=console.warn=console.error=console.table=function(){var e=arguments.length>1?arguments:arguments[0];t.logs[t.logs.length]={date:Date.now(),log:e}}),t.addParser({id:"no-parser",is:function(){return!1},format:function(){return""},type:"text"}),t.addParser({id:"text",is:function(){return!0},format:function(r,o){var s=o.config;return r&&(r=e.trim(s.ignoreCase?r.toLocaleLowerCase():r),r=s.sortLocaleCompare?t.replaceAccents(r):r),r},type:"text"}),t.regex.nondigit=/[^\w,. \-()]/g,t.addParser({id:"digit",is:function(e){return t.isDigit(e)},format:function(r,o){var s=t.formatFloat((r||"").replace(t.regex.nondigit,""),o);return r&&"number"==typeof s?s:r?e.trim(r&&o.config.ignoreCase?r.toLocaleLowerCase():r):r},type:"numeric"}),t.regex.currencyReplace=/[+\-,. ]/g,t.regex.currencyTest=/^\(?\d+[\u00a3$\u20ac\u00a4\u00a5\u00a2?.]|[\u00a3$\u20ac\u00a4\u00a5\u00a2?.]\d+\)?$/,t.addParser({id:"currency",is:function(e){return e=(e||"").replace(t.regex.currencyReplace,""),t.regex.currencyTest.test(e)},format:function(r,o){var s=t.formatFloat((r||"").replace(t.regex.nondigit,""),o);return r&&"number"==typeof s?s:r?e.trim(r&&o.config.ignoreCase?r.toLocaleLowerCase():r):r},type:"numeric"}),t.regex.urlProtocolTest=/^(https?|ftp|file):\/\//,t.regex.urlProtocolReplace=/(https?|ftp|file):\/\/(www\.)?/,t.addParser({id:"url",is:function(e){return t.regex.urlProtocolTest.test(e)},format:function(r){return r?e.trim(r.replace(t.regex.urlProtocolReplace,"")):r},type:"text"}),t.regex.dash=/-/g,t.regex.isoDate=/^\d{4}[\/\-]\d{1,2}[\/\-]\d{1,2}/,t.addParser({id:"isoDate",is:function(e){return t.regex.isoDate.test(e)},format:function(e){var r=e?new Date(e.replace(t.regex.dash,"/")):e;return r instanceof Date&&isFinite(r)?r.getTime():e},type:"numeric"}),t.regex.percent=/%/g,t.regex.percentTest=/(\d\s*?%|%\s*?\d)/,t.addParser({id:"percent",is:function(e){return t.regex.percentTest.test(e)&&e.length<15},format:function(e,r){return e?t.formatFloat(e.replace(t.regex.percent,""),r):e},type:"numeric"}),t.addParser({id:"image",is:function(e,t,r,o){return o.find("img").length>0},format:function(t,r,o){return e(o).find("img").attr(r.config.imgAttr||"alt")||t},parsed:!0,type:"text"}),t.regex.dateReplace=/(\S)([AP]M)$/i,t.regex.usLongDateTest1=/^[A-Z]{3,10}\.?\s+\d{1,2},?\s+(\d{4})(\s+\d{1,2}:\d{2}(:\d{2})?(\s+[AP]M)?)?$/i,t.regex.usLongDateTest2=/^\d{1,2}\s+[A-Z]{3,10}\s+\d{4}/i,t.addParser({id:"usLongDate",is:function(e){return t.regex.usLongDateTest1.test(e)||t.regex.usLongDateTest2.test(e)},format:function(e){var r=e?new Date(e.replace(t.regex.dateReplace,"$1 $2")):e;return r instanceof Date&&isFinite(r)?r.getTime():e},type:"numeric"}),t.regex.shortDateTest=/(^\d{1,2}[\/\s]\d{1,2}[\/\s]\d{4})|(^\d{4}[\/\s]\d{1,2}[\/\s]\d{1,2})/,t.regex.shortDateReplace=/[\-.,]/g,t.regex.shortDateXXY=/(\d{1,2})[\/\s](\d{1,2})[\/\s](\d{4})/,t.regex.shortDateYMD=/(\d{4})[\/\s](\d{1,2})[\/\s](\d{1,2})/,t.convertFormat=function(e,r){e=(e||"").replace(t.regex.spaces," ").replace(t.regex.shortDateReplace,"/"),"mmddyyyy"===r?e=e.replace(t.regex.shortDateXXY,"$3/$1/$2"):"ddmmyyyy"===r?e=e.replace(t.regex.shortDateXXY,"$3/$2/$1"):"yyyymmdd"===r&&(e=e.replace(t.regex.shortDateYMD,"$1/$2/$3"));var o=new Date(e);return o instanceof Date&&isFinite(o)?o.getTime():""},t.addParser({id:"shortDate",is:function(e){return e=(e||"").replace(t.regex.spaces," ").replace(t.regex.shortDateReplace,"/"),t.regex.shortDateTest.test(e)},format:function(e,r,o,s){if(e){var a=r.config,n=a.$headerIndexed[s],i=n.length&&n.data("dateFormat")||t.getData(n,t.getColumnData(r,a.headers,s),"dateFormat")||a.dateFormat;return n.length&&n.data("dateFormat",i),t.convertFormat(e,i)||e}return e},type:"numeric"}),t.regex.timeTest=/^(0?[1-9]|1[0-2]):([0-5]\d)(\s[AP]M)$|^((?:[01]\d|[2][0-4]):[0-5]\d)$/i,t.regex.timeMatch=/(0?[1-9]|1[0-2]):([0-5]\d)(\s[AP]M)|((?:[01]\d|[2][0-4]):[0-5]\d)/i,t.addParser({id:"time",is:function(e){return t.regex.timeTest.test(e)},format:function(e){var r,o=(e||"").match(t.regex.timeMatch),s=new Date(e),a=e&&(null!==o?o[0]:"00:00 AM"),n=a?new Date("2000/01/01 "+a.replace(t.regex.dateReplace,"$1 $2")):a;return n instanceof Date&&isFinite(n)?(r=s instanceof Date&&isFinite(s)?s.getTime():0,r?parseFloat(n.getTime()+"."+s.getTime()):n.getTime()):e},type:"numeric"}),t.addParser({id:"metadata",is:function(){return!1},format:function(t,r,o){var s=r.config,a=s.parserMetadataName?s.parserMetadataName:"sortValue";return e(o).metadata()[a]},type:"numeric"}),t.addWidget({id:"zebra",priority:90,format:function(t,r,o){var s,a,n,i,l,d,c,g=new RegExp(r.cssChildRow,"i"),p=r.$tbodies.add(e(r.namespace+"_extra_table").children("tbody:not(."+r.cssInfoBlock+")"));for(l=0;l<p.length;l++)for(n=0,c=(s=p.eq(l).children("tr:visible").not(r.selectorRemove)).length,d=0;d<c;d++)a=s.eq(d),g.test(a[0].className)||n++,i=n%2==0,a.removeClass(o.zebra[i?1:0]).addClass(o.zebra[i?0:1])},remove:function(e,r,o,s){if(!s){var a,n,i=r.$tbodies,l=(o.zebra||["even","odd"]).join(" ");for(a=0;a<i.length;a++)(n=t.processTbody(e,i.eq(a),!0)).children().removeClass(l),t.processTbody(e,n,!1)}}})}(e),e.tablesorter});
</script>
<script type="text/javascript">
/*
    Copyright 2008-2013
        Matthias Ehmann,
        Michael Gerhaeuser,
        Carsten Miller,
        Bianca Valentin,
        Alfred Wassermann,
        Peter Wilfahrt
    Dual licensed under the Apache License Version 2.0, or LGPL Version 3 licenses.
    You should have received a copy of the GNU Lesser General Public License
    along with JSXCompressor.  If not, see <http://www.gnu.org/licenses/>.
    You should have received a copy of the Apache License along with JSXCompressor.
    If not, see <http://www.apache.org/licenses/>.
*/
(function(){var e,r,n;(function(t){function o(e,r){return C.call(e,r)}function i(e,r){var n,t,o,i,a,u,c,f,s,l,p=r&&r.split("/"),h=k.map,d=h&&h["*"]||{};if(e&&"."===e.charAt(0))if(r){for(p=p.slice(0,p.length-1),e=p.concat(e.split("/")),f=0;e.length>f;f+=1)if(l=e[f],"."===l)e.splice(f,1),f-=1;else if(".."===l){if(1===f&&(".."===e[2]||".."===e[0]))break;f>0&&(e.splice(f-1,2),f-=2)}e=e.join("/")}else 0===e.indexOf("./")&&(e=e.substring(2));if((p||d)&&h){for(n=e.split("/"),f=n.length;f>0;f-=1){if(t=n.slice(0,f).join("/"),p)for(s=p.length;s>0;s-=1)if(o=h[p.slice(0,s).join("/")],o&&(o=o[t])){i=o,a=f;break}if(i)break;!u&&d&&d[t]&&(u=d[t],c=f)}!i&&u&&(i=u,a=c),i&&(n.splice(0,a,i),e=n.join("/"))}return e}function a(e,r){return function(){return h.apply(t,v.call(arguments,0).concat([e,r]))}}function u(e){return function(r){return i(r,e)}}function c(e){return function(r){b[e]=r}}function f(e){if(o(m,e)){var r=m[e];delete m[e],y[e]=!0,p.apply(t,r)}if(!o(b,e)&&!o(y,e))throw Error("No "+e);return b[e]}function s(e){var r,n=e?e.indexOf("!"):-1;return n>-1&&(r=e.substring(0,n),e=e.substring(n+1,e.length)),[r,e]}function l(e){return function(){return k&&k.config&&k.config[e]||{}}}var p,h,d,g,b={},m={},k={},y={},C=Object.prototype.hasOwnProperty,v=[].slice;d=function(e,r){var n,t=s(e),o=t[0];return e=t[1],o&&(o=i(o,r),n=f(o)),o?e=n&&n.normalize?n.normalize(e,u(r)):i(e,r):(e=i(e,r),t=s(e),o=t[0],e=t[1],o&&(n=f(o))),{f:o?o+"!"+e:e,n:e,pr:o,p:n}},g={require:function(e){return a(e)},exports:function(e){var r=b[e];return r!==void 0?r:b[e]={}},module:function(e){return{id:e,uri:"",exports:b[e],config:l(e)}}},p=function(e,r,n,i){var u,s,l,p,h,k,C=[];if(i=i||e,"function"==typeof n){for(r=!r.length&&n.length?["require","exports","module"]:r,h=0;r.length>h;h+=1)if(p=d(r[h],i),s=p.f,"require"===s)C[h]=g.require(e);else if("exports"===s)C[h]=g.exports(e),k=!0;else if("module"===s)u=C[h]=g.module(e);else if(o(b,s)||o(m,s)||o(y,s))C[h]=f(s);else{if(!p.p)throw Error(e+" missing "+s);p.p.load(p.n,a(i,!0),c(s),{}),C[h]=b[s]}l=n.apply(b[e],C),e&&(u&&u.exports!==t&&u.exports!==b[e]?b[e]=u.exports:l===t&&k||(b[e]=l))}else e&&(b[e]=n)},e=r=h=function(e,r,n,o,i){return"string"==typeof e?g[e]?g[e](r):f(d(e,r).f):(e.splice||(k=e,r.splice?(e=r,r=n,n=null):e=t),r=r||function(){},"function"==typeof n&&(n=o,o=i),o?p(t,e,r,n):setTimeout(function(){p(t,e,r,n)},4),h)},h.config=function(e){return k=e,k.deps&&h(k.deps,k.callback),h},n=function(e,r,n){r.splice||(n=r,r=[]),o(b,e)||o(m,e)||(m[e]=[e,r,n])},n.amd={jQuery:!0}})(),n("../node_modules/almond/almond",function(){}),n("jxg",[],function(){var e={};return"object"!=typeof JXG||JXG.extend||(e=JXG),e.extend=function(e,r,n,t){var o,i;n=n||!1,t=t||!1;for(o in r)(!n||n&&r.hasOwnProperty(o))&&(i=t?o.toLowerCase():o,e[i]=r[o])},e.extend(e,{boards:{},readers:{},elements:{},registerElement:function(e,r){e=e.toLowerCase(),this.elements[e]=r},registerReader:function(e,r){var n,t;for(n=0;r.length>n;n++)t=r[n].toLowerCase(),"function"!=typeof this.readers[t]&&(this.readers[t]=e)},shortcut:function(e,r){return function(){return e[r].apply(this,arguments)}},getRef:function(e,r){return e.select(r)},getReference:function(e,r){return e.select(r)},debugInt:function(){var e,r;for(e=0;arguments.length>e;e++)r=arguments[e],"object"==typeof window&&window.console&&console.log?console.log(r):"object"==typeof document&&document.getElementById("debug")&&(document.getElementById("debug").innerHTML+=r+"<br/>")},debugWST:function(){var r=Error();e.debugInt.apply(this,arguments),r&&r.stack&&(e.debugInt("stacktrace"),e.debugInt(r.stack.split("\n").slice(1).join("\n")))},debugLine:function(){var r=Error();e.debugInt.apply(this,arguments),r&&r.stack&&e.debugInt("Called from",r.stack.split("\n").slice(2,3).join("\n"))},debug:function(){e.debugInt.apply(this,arguments)}}),e}),n("utils/zip",["jxg"],function(e){var r=[0,128,64,192,32,160,96,224,16,144,80,208,48,176,112,240,8,136,72,200,40,168,104,232,24,152,88,216,56,184,120,248,4,132,68,196,36,164,100,228,20,148,84,212,52,180,116,244,12,140,76,204,44,172,108,236,28,156,92,220,60,188,124,252,2,130,66,194,34,162,98,226,18,146,82,210,50,178,114,242,10,138,74,202,42,170,106,234,26,154,90,218,58,186,122,250,6,134,70,198,38,166,102,230,22,150,86,214,54,182,118,246,14,142,78,206,46,174,110,238,30,158,94,222,62,190,126,254,1,129,65,193,33,161,97,225,17,145,81,209,49,177,113,241,9,137,73,201,41,169,105,233,25,153,89,217,57,185,121,249,5,133,69,197,37,165,101,229,21,149,85,213,53,181,117,245,13,141,77,205,45,173,109,237,29,157,93,221,61,189,125,253,3,131,67,195,35,163,99,227,19,147,83,211,51,179,115,243,11,139,75,203,43,171,107,235,27,155,91,219,59,187,123,251,7,135,71,199,39,167,103,231,23,151,87,215,55,183,119,247,15,143,79,207,47,175,111,239,31,159,95,223,63,191,127,255],n=[3,4,5,6,7,8,9,10,11,13,15,17,19,23,27,31,35,43,51,59,67,83,99,115,131,163,195,227,258,0,0],t=[0,0,0,0,0,0,0,0,1,1,1,1,2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,0,99,99],o=[1,2,3,4,5,7,9,13,17,25,33,49,65,97,129,193,257,385,513,769,1025,1537,2049,3073,4097,6145,8193,12289,16385,24577],i=[0,0,0,0,1,1,2,2,3,3,4,4,5,5,6,6,7,7,8,8,9,9,10,10,11,11,12,12,13,13],a=[16,17,18,0,8,7,9,6,10,5,11,4,12,3,13,2,14,1,15],u=256;return e.Util=e.Util||{},e.Util.Unzip=function(c){function f(){return R+=8,O>X?c[X++]:-1}function s(){B=1}function l(){var e;try{return R++,e=1&B,B>>=1,0===B&&(B=f(),e=1&B,B=128|B>>1),e}catch(r){throw r}}function p(e){var n=0,t=e;try{for(;t--;)n=n<<1|l();e&&(n=r[n]>>8-e)}catch(o){throw o}return n}function h(){J=0}function d(e){j++,G[J++]=e,z.push(String.fromCharCode(e)),32768===J&&(J=0)}function g(){this.b0=0,this.b1=0,this.jump=null,this.jumppos=-1}function b(){for(;;){if(M[H]>=x)return-1;if(U[M[H]]===H)return M[H]++;M[H]++}}function m(){var e,r=P[F];if(17===H)return-1;if(F++,H++,e=b(),e>=0)r.b0=e;else if(r.b0=32768,m())return-1;if(e=b(),e>=0)r.b1=e,r.jump=null;else if(r.b1=32768,r.jump=P[F],r.jumppos=F,m())return-1;return H--,0}function k(e,r,n){var t;for(P=e,F=0,U=n,x=r,t=0;17>t;t++)M[t]=0;return H=0,m()?-1:0}function y(e){for(var r,n,t,o=0,i=e[o];;)if(t=l()){if(!(32768&i.b1))return i.b1;for(i=i.jump,r=e.length,n=0;r>n;n++)if(e[n]===i){o=n;break}}else{if(!(32768&i.b0))return i.b0;o++,i=e[o]}}function C(){var u,c,b,m,C,v,A,j,w,U,x,S,z,I,E,L,O;do if(u=l(),b=p(2),0===b)for(s(),U=f(),U|=f()<<8,S=f(),S|=f()<<8,65535&(U^~S)&&e.debug("BlockLen checksum mismatch\n");U--;)c=f(),d(c);else if(1===b)for(;;)if(C=r[p(7)]>>1,C>23?(C=C<<1|l(),C>199?(C-=128,C=C<<1|l()):(C-=48,C>143&&(C+=136))):C+=256,256>C)d(C);else{if(256===C)break;for(C-=257,w=p(t[C])+n[C],C=r[p(5)]>>3,i[C]>8?(x=p(8),x|=p(i[C]-8)<<8):x=p(i[C]),x+=o[C],C=0;w>C;C++)c=G[32767&J-x],d(c)}else if(2===b){for(A=Array(320),I=257+p(5),E=1+p(5),L=4+p(4),C=0;19>C;C++)A[C]=0;for(C=0;L>C;C++)A[a[C]]=p(3);for(w=q.length,m=0;w>m;m++)q[m]=new g;if(k(q,19,A,0))return h(),1;for(z=I+E,m=0,O=-1;z>m;)if(O++,C=y(q),16>C)A[m++]=C;else if(16===C){if(C=3+p(2),m+C>z)return h(),1;for(v=m?A[m-1]:0;C--;)A[m++]=v}else{if(C=17===C?3+p(3):11+p(7),m+C>z)return h(),1;for(;C--;)A[m++]=0}for(w=T.length,m=0;w>m;m++)T[m]=new g;if(k(T,I,A,0))return h(),1;for(w=T.length,m=0;w>m;m++)q[m]=new g;for(j=[],m=I;A.length>m;m++)j[m-I]=A[m];if(k(q,E,j,0))return h(),1;for(;;)if(C=y(T),C>=256){if(C-=256,0===C)break;for(C-=1,w=p(t[C])+n[C],C=y(q),i[C]>8?(x=p(8),x|=p(i[C]-8)<<8):x=p(i[C]),x+=o[C];w--;)c=G[32767&J-x],d(c)}else d(C)}while(!u);return h(),s(),0}function v(){var e,r,n,t,o,i,a,c,s=[];try{if(z=[],L=!1,s[0]=f(),s[1]=f(),120===s[0]&&218===s[1]&&(C(),E[I]=[z.join(""),"geonext.gxt"],I++),31===s[0]&&139===s[1]&&(S(),E[I]=[z.join(""),"file"],I++),80===s[0]&&75===s[1]&&(L=!0,s[2]=f(),s[3]=f(),3===s[2]&&4===s[3])){for(s[0]=f(),s[1]=f(),A=f(),A|=f()<<8,c=f(),c|=f()<<8,f(),f(),f(),f(),a=f(),a|=f()<<8,a|=f()<<16,a|=f()<<24,i=f(),i|=f()<<8,i|=f()<<16,i|=f()<<24,o=f(),o|=f()<<8,o|=f()<<16,o|=f()<<24,t=f(),t|=f()<<8,n=f(),n|=f()<<8,e=0,N=[];t--;)r=f(),"/"===r|":"===r?e=0:u-1>e&&(N[e++]=String.fromCharCode(r));for(w||(w=N),e=0;n>e;)r=f(),e++;j=0,8===c&&(C(),E[I]=Array(2),E[I][0]=z.join(""),E[I][1]=N.join(""),I++),S()}}catch(l){throw l}}var A,j,w,U,x,S,z=[],I=0,E=[],G=Array(32768),J=0,L=!1,O=c.length,X=0,B=1,R=0,T=Array(288),q=Array(32),F=0,P=null,H=(Array(64),Array(64),0),M=Array(17),N=[];M[0]=0,S=function(){var e,r,n,t,o,i,a=[];if(8&A&&(a[0]=f(),a[1]=f(),a[2]=f(),a[3]=f(),80===a[0]&&75===a[1]&&7===a[2]&&8===a[3]?(e=f(),e|=f()<<8,e|=f()<<16,e|=f()<<24):e=a[0]|a[1]<<8|a[2]<<16|a[3]<<24,r=f(),r|=f()<<8,r|=f()<<16,r|=f()<<24,n=f(),n|=f()<<8,n|=f()<<16,n|=f()<<24),L&&v(),a[0]=f(),8===a[0]){if(A=f(),f(),f(),f(),f(),f(),t=f(),4&A)for(a[0]=f(),a[2]=f(),H=a[0]+256*a[1],o=0;H>o;o++)f();if(8&A)for(o=0,N=[],i=f();i;)("7"===i||":"===i)&&(o=0),u-1>o&&(N[o++]=i),i=f();if(16&A)for(i=f();i;)i=f();2&A&&(f(),f()),C(),e=f(),e|=f()<<8,e|=f()<<16,e|=f()<<24,n=f(),n|=f()<<8,n|=f()<<16,n|=f()<<24,L&&v()}},e.Util.Unzip.prototype.unzipFile=function(e){var r;for(this.unzip(),r=0;E.length>r;r++)if(E[r][1]===e)return E[r][0];return""},e.Util.Unzip.prototype.unzip=function(){return v(),E}},e.Util}),n("utils/encoding",["jxg"],function(e){var r=0,n=[0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,9,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,7,8,8,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,2,10,3,3,3,3,3,3,3,3,3,3,3,3,4,3,3,11,6,6,6,5,8,8,8,8,8,8,8,8,8,8,8,0,12,24,36,60,96,84,12,12,12,48,72,12,12,12,12,12,12,12,12,12,12,12,12,12,0,12,12,12,12,12,0,12,0,12,12,12,24,12,12,12,12,12,24,12,24,12,12,12,12,12,12,12,12,12,24,12,12,12,12,12,24,12,12,12,12,12,12,12,24,12,12,12,12,12,12,12,12,12,36,12,36,12,12,12,36,12,12,12,12,12,36,12,36,12,12,12,36,12,12,12,12,12,12,12,12,12,12];return e.Util=e.Util||{},e.Util.UTF8={encode:function(e){var r,n,t="",o=e.length;if(e=e.replace(/\r\n/g,"\n"),"function"==typeof unescape&&"function"==typeof encodeURIComponent)return unescape(encodeURIComponent(e));for(r=0;o>r;r++)n=e.charCodeAt(r),128>n?t+=String.fromCharCode(n):n>127&&2048>n?(t+=String.fromCharCode(192|n>>6),t+=String.fromCharCode(128|63&n)):(t+=String.fromCharCode(224|n>>12),t+=String.fromCharCode(128|63&n>>6),t+=String.fromCharCode(128|63&n));return t},decode:function(e){var t,o,i,a=0,u=0,c=r,f=[],s=e.length,l=[];for(t=0;s>t;t++)o=e.charCodeAt(t),i=n[o],u=c!==r?63&o|u<<6:255>>i&o,c=n[256+c+i],c===r&&(u>65535?f.push(55232+(u>>10),56320+(1023&u)):f.push(u),a++,0===a%1e4&&(l.push(String.fromCharCode.apply(null,f)),f=[]));return l.push(String.fromCharCode.apply(null,f)),l.join("")},asciiCharCodeAt:function(e,r){var n=e.charCodeAt(r);if(n>255)switch(n){case 8364:n=128;break;case 8218:n=130;break;case 402:n=131;break;case 8222:n=132;break;case 8230:n=133;break;case 8224:n=134;break;case 8225:n=135;break;case 710:n=136;break;case 8240:n=137;break;case 352:n=138;break;case 8249:n=139;break;case 338:n=140;break;case 381:n=142;break;case 8216:n=145;break;case 8217:n=146;break;case 8220:n=147;break;case 8221:n=148;break;case 8226:n=149;break;case 8211:n=150;break;case 8212:n=151;break;case 732:n=152;break;case 8482:n=153;break;case 353:n=154;break;case 8250:n=155;break;case 339:n=156;break;case 382:n=158;break;case 376:n=159;break;default:}return n}},e.Util.UTF8}),n("utils/base64",["jxg","utils/encoding"],function(e,r){function n(e,r){return 255&e.charCodeAt(r)}function t(e,r){var n=o.indexOf(e.charAt(r));if(-1===n)throw Error("JSXGraph/utils/base64: Can't decode string (invalid character).");return n}var o="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/",i="=";return e.Util=e.Util||{},e.Util.Base64={encode:function(e){var t,a,u,c,f,s=[];for(f=r.encode(e),u=f.length,c=u%3,t=0;u-c>t;t+=3)a=n(f,t)<<16|n(f,t+1)<<8|n(f,t+2),s.push(o.charAt(a>>18),o.charAt(63&a>>12),o.charAt(63&a>>6),o.charAt(63&a));switch(c){case 1:a=n(f,u-1),s.push(o.charAt(a>>2),o.charAt(63&a<<4),i,i);break;case 2:a=n(f,u-2)<<8|n(f,u-1),s.push(o.charAt(a>>10),o.charAt(63&a>>4),o.charAt(63&a<<2),i)}return s.join("")},decode:function(e,n){var o,a,u,c,f,s,l=[],p=[];if(o=e.replace(/[^A-Za-z0-9\+\/=]/g,""),u=o.length,0!==u%4)throw Error("JSXGraph/utils/base64: Can't decode string (invalid input length).");for(o.charAt(u-1)===i&&(c=1,o.charAt(u-2)===i&&(c=2),u-=4),a=0;u>a;a+=4)f=t(o,a)<<18|t(o,a+1)<<12|t(o,a+2)<<6|t(o,a+3),p.push(f>>16,255&f>>8,255&f),0===a%1e4&&(l.push(String.fromCharCode.apply(null,p)),p=[]);switch(c){case 1:f=t(o,u)<<12|t(o,u+1)<<6|t(o,u+2),p.push(f>>10,255&f>>2);break;case 2:f=t(o,a)<<6|t(o,a+1),p.push(f>>4)}return l.push(String.fromCharCode.apply(null,p)),s=l.join(""),n&&(s=r.decode(s)),s},decodeAsArray:function(e){var r,n=this.decode(e),t=[],o=n.length;for(r=0;o>r;r++)t[r]=n.charCodeAt(r);return t}},e.Util.Base64}),n("../build/compressor.deps.js",["jxg","utils/zip","utils/base64"],function(e,r,n){return e.decompress=function(e){return unescape(new r.Unzip(n.decodeAsArray(e)).unzip()[0][0])},e}),window.JXG=r("../build/compressor.deps.js")})();
</script>
<script type="text/javascript">
window.fileLoading = (function () {
    var fileLoadingCallbacks = {};
    var timestamp = new Date().getTime();
    function loadKeywordsFile(filename, callback) {
        fileLoadingCallbacks[filename] = callback;
        var script = document.createElement('script');
        script.type = 'text/javascript';
        // timestamp as an argument to prevent browsers from caching scripts
        // see: http://stackoverflow.com/questions/866619/how-to-force-ie-to-reload-javascript
        script.src = filename+'?time='+timestamp;
        document.getElementsByTagName("head")[0].appendChild(script);
    }
    function getCallbackHandlerForKeywords(parent) {
        var callableList = [];
        return function (callable) {
            if (!parent.isChildrenLoaded) {
                callableList.push(callable);
                if (callableList.length == 1) {
                    loadKeywordsFile(parent.childFileName, function () {
                        parent.isChildrenLoaded = true;
                        for (var i = 0; i < callableList.length; i++) {
                            callableList[i]();
                        }
                    });
                }
            } else {
                callable();
            }
        }
    }
    function notifyFileLoaded(filename) {
        fileLoadingCallbacks[filename]();
    }
    return {
        getCallbackHandlerForKeywords: getCallbackHandlerForKeywords,
        notify: notifyFileLoaded
    }
}());
</script>
<script type="text/javascript">
window.model = (function () {
    function Suite(data) {
        var suite = createModelObject(data);
        suite.source = data.source;
        suite.relativeSource = data.relativeSource;
        suite.fullName = data.parent ? data.parent.fullName + '.' + data.name : data.name;
        suite.type = 'suite';
        suite.template = 'suiteTemplate';
        setStats(suite, data.statistics);
        suite.metadata = data.metadata;
        suite.populateKeywords = createIterablePopulator('Keyword');
        suite.populateTests = createIterablePopulator('Test');
        suite.populateSuites = createIterablePopulator('Suite');
        suite.childrenNames = ['keyword', 'suite', 'test'];
        suite.callWhenChildrenReady = function (callable) { callable(); };
        suite.message = data.message;
        suite.children = function () {
            return suite.keywords().concat(suite.tests()).concat(suite.suites());
        };
        suite.searchTests = function (predicate) {
            var tests = [];
            var suites = this.suites();
            for (var i in suites)
                tests = tests.concat(suites[i].searchTests(predicate));
            return tests.concat(util.filter(this.tests(), predicate));
        };
        suite.searchTestsInSuite = function (pattern, matcher) {
            if (!matcher)
                matcher = util.Matcher(pattern);
            if (matcher.matchesAny([suite.fullName, suite.name]))
                return suite.allTests();
            var tests = [];
            var suites = this.suites();
            for (var i in suites)
                tests = tests.concat(suites[i].searchTestsInSuite(pattern, matcher));
            return tests;
        };
        suite.searchTestsByTag = function (tag) {
            return suite.searchTests(function (test) {
                if (tag.combined)
                    return containsTagPattern(test.tags, tag.combined);
                return containsTag(test.tags, tag.label);
            });
        };
        suite.findSuiteByName = function (name) {
            return findSuiteByName(suite, name);
        };
        suite.allTests = function () {
            return suite.searchTests(function (test) {
                return true;
            });
        };
        return suite;
    }
    function containsTag(testTags, tagname) {
        testTags = util.map(testTags, util.normalize);
        return util.contains(testTags, util.normalize(tagname));
    }
    function containsTagPattern(testTags, pattern) {
        var patterns;
        if (pattern.indexOf('NOT') != -1) {
            patterns = pattern.split('NOT');
            if (!util.normalize(patterns[0]))
                return util.all(util.map(patterns.slice(1), function (p) {
                    return !containsTagPattern(testTags, p);
                }));
            return containsTagPattern(testTags, patterns[0]) &&
                util.all(util.map(patterns.slice(1), function (p) {
                    return !containsTagPattern(testTags, p);
                }));
        }
        if (pattern.indexOf('OR') != -1) {
            patterns = pattern.split('OR');
            return util.any(util.map(patterns, function (p) {
                return containsTagPattern(testTags, p);
            }));
        }
        if (pattern.indexOf('AND') != -1) {
            patterns = pattern.split('AND');
            return util.all(util.map(patterns, function (p) {
                return containsTagPattern(testTags, p);
            }));
        }
        return util.Matcher(pattern).matchesAny(testTags);
    }
    function findSuiteByName(suite, name) {
        if (suite.fullName == name)
            return suite;
        var subSuites = suite.suites();
        for (var i in subSuites) {
            var match = findSuiteByName(subSuites[i], name);
            if (match)
                return match;
        }
        return null;
    }
    function setStats(suite, stats) {
        for (var name in stats) {
            suite[name] = stats[name];
        }
    }
    function createModelObject(data) {
        return {
            name: data.name,
            doc: data.doc,
            status: data.status,
            times: data.times,
            id: data.parent ? data.parent.id + '-' + data.id : data.id
        };
    }
    function Test(data) {
        var test = createModelObject(data);
        test.type = 'test';
        test.template = 'testTemplate';
        test.fullName = data.parent.fullName + '.' + test.name;
        test.formatParentName = function () { return util.formatParentName(test); };
        test.timeout = data.timeout;
        test.populateKeywords = createIterablePopulator('Keyword');
        test.childrenNames = ['keyword'];
        test.isChildrenLoaded = data.isChildrenLoaded;
        test.callWhenChildrenReady = window.fileLoading.getCallbackHandlerForKeywords(test);
        test.children = function () {
            if (test.isChildrenLoaded)
                return test.keywords();
        };
        test.tags = data.tags;
        test.message = data.message;
        test.matchesTagPattern = function (pattern) {
            return containsTagPattern(test.tags, pattern);
        };
        test.matchesNamePattern = function (pattern) {
            return util.Matcher(pattern).matchesAny([test.name, test.fullName]);
        };
        return test;
    }
    function Keyword(data) {
        var kw = createModelObject(data);
        var flatTypes = ['RETURN', 'BREAK', 'CONTINUE'];
        kw.libname = data.libname;
        kw.fullName = (kw.libname ? kw.libname + '.' : '') + kw.name;
        kw.type = data.type;
        kw.template = 'keywordTemplate';
        kw.arguments = data.args;
        kw.assign = data.assign + (data.assign ? ' =' : '');
        kw.tags = data.tags;
        kw.timeout = data.timeout;
        kw.populateKeywords = createIterablePopulator('Keyword');
        kw.childrenNames = ['keyword'];
        kw.isChildrenLoaded = data.isChildrenLoaded;
        kw.callWhenChildrenReady = window.fileLoading.getCallbackHandlerForKeywords(kw);
        kw.children = function () {
            if (kw.isChildrenLoaded)
                return kw.keywords();
        };
        return kw;
    }
    function Message(level, date, text, link) {
        var message = {
            type: 'message',
            template: 'messageTemplate',
            level: level,
            time: util.timeFromDate(date),
            date: util.dateFromDate(date),
            text: text,
            link: link
        };
        message.callWhenChildrenReady = function (callable) { callable(); };
        return message;
    }
    function Times(timedata) {
        var start = timedata[0];
        var end = timedata[1];
        var elapsed = timedata[2];
        return {
            elapsedMillis: elapsed,
            elapsedTime: util.formatElapsed(elapsed),
            startTime: util.dateTimeFromDate(start),
            endTime:  util.dateTimeFromDate(end)
        };
    }
    function createIterablePopulator(name) {
        return function (populator) {
            populateIterable(this, name, populator);
        };
    }
    function populateIterable(obj, name, populator) {
        name = name.toLowerCase() + 's';
        obj[name] = createGetAllFunction(populator.numberOfItems, populator.creator);
    }
    function createGetAllFunction(numberOfElements, creator) {
        var cached = null;
        return function () {
            if (cached === null) {
                cached = [];
                for (var i = 0; i < numberOfElements(); i++) {
                    cached.push(creator(i));
                }
            }
            return cached;
        };
    }
    return {
        Suite: Suite,
        Test: Test,
        Keyword: Keyword,
        Message: Message,
        Times: Times,
        containsTag: containsTag,  // Exposed for tests
        containsTagPattern: containsTagPattern  // Exposed for tests
    };
}());
window.stats = (function () {
    function Statistics(totalElems, tagElems, suiteElems) {
        return {total: util.map(totalElems, totalStatElem),
                tag:   util.map(tagElems, tagStatElem),
                suite: util.map(suiteElems, suiteStatElem)};
    }
    function statElem(stat) {
        stat.total = stat.pass + stat.fail + stat.skip;
        var percents = calculatePercents(stat.total, stat.pass, stat.fail, stat.skip);
        stat.passPercent = percents[0];
        stat.skipPercent = percents[1];
        stat.failPercent = percents[2];
        var widths = calculateWidths(stat.passPercent, stat.skipPercent, stat.failPercent);
        stat.passWidth = widths[0];
        stat.skipWidth = widths[1];
        stat.failWidth = widths[2];
        return stat;
    }
    function totalStatElem(data) {
        var stat = statElem(data);
        stat.type = 'all';
        return stat;
    }
    function tagStatElem(data) {
        var stat = statElem(data);
        stat.links = parseLinks(stat.links);
        return stat;
    }
    function suiteStatElem(data) {
        var stat = statElem(data);
        stat.fullName = stat.label;
        stat.formatParentName = function () { return util.formatParentName(stat); };
        return stat;
    }
    function parseLinks(linksData) {
        if (!linksData)
            return [];
        return util.map(linksData.split(':::'), function (link) {
                var index = link.indexOf(':');
                return {title: link.slice(0, index), url: link.slice(index+1)};
            });
    }
    function calculatePercents(total, passed, failed, skipped) {
        if (total == 0) {
            return [0.0, 0.0, 0.0];
        }
        var pass = 100.0 * passed / total;
        var skip = 100.0 * skipped / total;
        var fail = 100.0 * failed / total;
        if (pass > 0 && pass < 0.1)
            pass = 0.1
        if (fail > 0 && fail < 0.1)
            fail = 0.1
        if (skip > 0 && skip < 0.1)
            skip = 0.1
        if (pass > 99.95 && pass < 100)
            pass = 99.9
        if (fail > 99.95 && fail < 100)
            fail = 99.9
        if (skip > 99.95 && skip < 100)
            skip = 99.9
        return [Math.round(pass*10)/10, Math.round(skip*10)/10, Math.round(fail*10)/10];
    }
    function calculateWidths(num1, num2, num3) {
        if (num1 + num2 + num3 === 0)
            return [0.0, 0.0, 0.0];
        // Make small percentages better visible
        if (num1 > 0 && num1 < 1)
            num1 = 1
        if (num2 > 0 && num2 < 1)
            num2 = 1
        if (num3 > 0 && num3 < 1)
            num3 = 1
        // Handle situation where some are rounded up
        while (num1 + num2 + num3 > 100) {
            if (num1 > num2 && num1 > num3)
                num1 -= 0.1;
            else if (num2 > num1 && num2 > num3)
                num2 -= 0.1;
            else if (num3 > num1 && num3 > num2)
                num3 -= 0.1;
            else if (num1 > num3 && num1 == num2) {
                num1 -= 0.1;
                num2 -= 0.1;
            }
            else if (num1 > num2 && num1 == num3) {
                num1 -= 0.1;
                num3 -= 0.1;
            }
            else if (num2 > num1 && num2 == num3) {
                num2 -= 0.1;
                num3 -= 0.1;
            }
        }
        return [Math.ceil(num1*10)/10, Math.ceil(num2*10)/10, Math.ceil(num3*10)/10];
    }
    return {
        Statistics: Statistics
    };
}());
</script>
<script type="text/javascript">
window.util = function () {
    function map(elems, func) {
        var ret = [];
        for (var i = 0, len = elems.length; i < len; i++) {
            ret[i] = func(elems[i]);
        }
        return ret;
    }
    function filter(elems, predicate) {
        var ret = [];
        for (var i = 0, len = elems.length; i < len; i++) {
            if (predicate(elems[i]))
                ret.push(elems[i]);
        }
        return ret;
    }
    function all(elems) {
        for (var i = 0, len = elems.length; i < len; i++) {
            if (!elems[i])
                return false;
        }
        return true;
    }
    function any(elems) {
        for (var i = 0, len = elems.length; i < len; i++) {
            if (elems[i])
                return elems[i];
        }
        return false;
    }
    function contains(elems, e) {
        for (var i = 0, len = elems.length; i < len; i++) {
            if (elems[i] == e)
                return true;
        }
        return false;
    }
    function last(items) {
        return items[items.length-1];
    }
    function unescape(string) {
        return string.replace(/&lt;/g, '<').replace(/&gt;/g, '>').replace(/&amp;/g, '&');
    }
    function escape(string) {
        return string.replace(/&/g, '&amp;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
    }
    function normalize(string) {
        return string.toLowerCase().replace(/ /g, '').replace(/_/g, '');
    }
    function regexpEscape(string) {
        return string.replace(/[-[\]{}()+?*.,\\^$|#]/g, "\\$&");
    }
    function Matcher(pattern) {
        pattern = regexpEscape(normalize(pattern));
        var rePattern = '^' + pattern.replace(/\\\?/g, '.').replace(/\\\*/g, '[\\s\\S]*') + '$';
        var regexp = new RegExp(rePattern);
        function matches(string) {
            return regexp.test(normalize(string));
        }
        return {
            matches: matches,
            matchesAny: function (strings) {
                for (var i = 0, len = strings.length; i < len; i++)
                    if (matches(strings[i]))
                        return true;
                return false;
            }
        };
    }
    function formatParentName(item) {
        var parentName = item.fullName.slice(0, item.fullName.length - item.name.length);
        return parentName.replace(/\./g, ' . ');
    }
    function timeFromDate(date) {
        if (!date)
            return 'N/A';
        return formatTime(date.getHours(), date.getMinutes(),
                          date.getSeconds(), date.getMilliseconds());
    }
    function dateFromDate(date) {
        if (!date)
            return 'N/A';
        return padTo(date.getFullYear(), 4) +
               padTo(date.getMonth() + 1, 2) +
               padTo(date.getDate(), 2);
    }
    function dateTimeFromDate(date) {
        if (!date)
            return 'N/A';
        return dateFromDate(date) + ' ' + timeFromDate(date);
    }
    function formatTime(hours, minutes, seconds, milliseconds) {
        return padTo(hours, 2) + ':' +
               padTo(minutes, 2) + ':' +
               padTo(seconds, 2) + '.' +
               padTo(milliseconds, 3);
    }
    function formatElapsed(elapsed) {
        var millis = elapsed;
        var hours = Math.floor(millis / (60 * 60 * 1000));
        millis -= hours * 60 * 60 * 1000;
        var minutes = Math.floor(millis / (60 * 1000));
        millis -= minutes * 60 * 1000;
        var seconds = Math.floor(millis / 1000);
        millis -= seconds * 1000;
        return formatTime(hours, minutes, seconds, millis);
    }
    function padTo(number, len) {
        var numString = number + "";
        while (numString.length < len) numString = "0" + numString;
        return numString;
    }
    function timestamp(millis) {
        // used also by tools that do not set window.output.baseMillis
        var base = window.output ? window.output.baseMillis : 0;
        return new Date(base + millis);
    }
    function createGeneratedString(timestamp) {
        var date = new Date(timestamp);
        var dt = dateTimeFromDate(date).slice(0, 17);  // drop millis
        var offset = date.getTimezoneOffset();
        var sign = offset > 0 ? '-' : '+';
        var hh = Math.floor(Math.abs(offset) / 60);
        var mm = Math.abs(offset) % 60;
        return dt + ' UTC' + sign + padTo(hh, 2) + ':' + padTo(mm, 2);
    }
    function createGeneratedAgoString(timestamp) {
        function timeString(time, shortUnit) {
            var unit = {y: 'year', d: 'day', h: 'hour', m: 'minute',
                        s: 'second'}[shortUnit];
            var end = time == 1 ? ' ' : 's ';
            return time + ' ' + unit + end;
        }
        function compensateLeapYears(days, years) {
            // Not a perfect algorithm but ought to be enough
            return days - Math.floor(years / 4);
        }
        var generated = Math.round(timestamp / 1000);
        var current = Math.round(new Date().getTime() / 1000);
        var elapsed = current - generated;
        var prefix = '';
        if (elapsed < 0) {
            prefix = '- ';
            elapsed = Math.abs(elapsed);
        }
        var secs  = elapsed % 60;
        var mins  = Math.floor(elapsed / 60) % 60;
        var hours = Math.floor(elapsed / (60*60)) % 24;
        var days  = Math.floor(elapsed / (60*60*24)) % 365;
        var years = Math.floor(elapsed / (60*60*24*365));
        if (years) {
            days = compensateLeapYears(days, years);
            return prefix + timeString(years, 'y') + timeString(days, 'd');
        } else if (days) {
            return prefix + timeString(days, 'd') + timeString(hours, 'h');
        } else if (hours) {
            return prefix + timeString(hours, 'h') + timeString(mins, 'm');
        } else if (mins) {
            return prefix + timeString(mins, 'm') + timeString(secs, 's');
        } else {
            return prefix + timeString(secs, 's');
        }
    }
    function parseQueryString(query) {
        var result = {};
        if (!query)
            return result;
        var params = query.split('&');
        var parts;
        function decode(item) {
            return decodeURIComponent(item.replace('+', ' '));
        }
        for (var i = 0, len = params.length; i < len; i++) {
            parts = params[i].split('=');
            result[decode(parts.shift())] = decode(parts.join('='));
        }
        return result;
    }
    return {
        map: map,
        filter: filter,
        all: all,
        any: any,
        contains: contains,
        last: last,
        escape: escape,
        unescape: unescape,
        normalize: normalize,
        regexpEscape: regexpEscape,
        Matcher: Matcher,
        formatParentName: formatParentName,
        timeFromDate: timeFromDate,
        dateFromDate: dateFromDate,
        dateTimeFromDate: dateTimeFromDate,
        formatElapsed: formatElapsed,
        timestamp: timestamp,
        createGeneratedString: createGeneratedString,
        createGeneratedAgoString: createGeneratedAgoString,
        parseQueryString: parseQueryString
    };
}();
</script>
<script type="text/javascript">
window.testdata = function () {
    var elementsById = {};
    var idCounter = 0;
    var _statistics = null;
    var LEVELS = ['TRACE', 'DEBUG', 'INFO', 'WARN', 'ERROR', 'FAIL', 'SKIP'];
    var STATUSES = ['FAIL', 'PASS', 'SKIP', 'NOT RUN'];
    var KEYWORD_TYPES = ['KEYWORD', 'SETUP', 'TEARDOWN', 'FOR', 'ITERATION', 'IF', 'ELSE IF', 'ELSE', 'RETURN',
                         'TRY', 'EXCEPT', 'FINALLY', 'WHILE', 'CONTINUE', 'BREAK', 'ERROR'];
    function addElement(elem) {
        if (!elem.id)
            elem.id = uniqueId();
        elementsById[elem.id] = elem;
        return elem;
    }
    function uniqueId() {
        idCounter++;
        return 'element-id-' + idCounter;
    }
    function times(stats) {
        var startMillis = stats[1];
        var elapsed = stats[2];
        if (startMillis === null)
            return [null, null, elapsed];
        return [util.timestamp(startMillis),
                util.timestamp(startMillis + elapsed),
                elapsed];
    }
    function createMessage(element, strings) {
        return model.Message(LEVELS[element[1]],
                             util.timestamp(element[0]),
                             strings.get(element[2]),
                             strings.get(element[3]));
    }
    function parseStatus(stats) {
        return STATUSES[stats[0]];
    }
    function childCreator(parent, childType) {
        return function (elem, strings, index) {
            return addElement(childType(parent, elem, strings, index));
        };
    }
    function createBodyItem(parent, element, strings, index) {
        if (element.length < 5)
            return createMessage(element, strings);
        var messages = util.filter(parent.children(), function (child) {
            return child.type == 'message';
        })
        return createKeyword(parent, element, strings, index - messages.length);
    }
    function createKeyword(parent, element, strings, index) {
        var kw = model.Keyword({
            parent: parent,
            type: KEYWORD_TYPES[element[0]],
            id: 'k' + (index + 1),
            name: strings.get(element[1]),
            libname: strings.get(element[2]),
            timeout: strings.get(element[3]),
            args: strings.get(element[5]),
            assign: strings.get(element[6]),
            tags: strings.get(element[7]),
            doc: function () {
                var doc = strings.get(element[4]);
                this.doc = function () { return doc; };
                return doc;
            },
            status: parseStatus(element[8], strings),
            times: model.Times(times(element[8])),
            isChildrenLoaded: typeof(element[9]) !== 'number'
        });
        lazyPopulateKeywordsFromFile(kw, element[9], strings);
        return kw;
    }
    function lazyPopulateKeywordsFromFile(parent, modelOrIndex, strings) {
        var model, index, populator;
        var creator = childCreator(parent, createBodyItem);
        if (parent.isChildrenLoaded) {
            model = modelOrIndex;
            populator = Populator(model, strings, creator);
        } else {
            index = modelOrIndex;
            parent.childFileName = window.settings['splitLogBase'] + '-' + index + '.js';
            populator = SplitLogPopulator(index, creator);
        }
        parent.populateKeywords(populator);
    }
    function tags(taglist, strings) {
        return util.map(taglist, strings.get);
    }
    function createTest(parent, element, strings, index) {
        var status = element[4];
        var test = model.Test({
            parent: parent,
            id: 't' + (index + 1),
            name: strings.get(element[0]),
            doc: function () {
                var doc = strings.get(element[2]);
                this.doc = function () { return doc; };
                return doc;
            },
            timeout: strings.get(element[1]),
            status: parseStatus(status),
            message: function () {
                var msg = status.length == 4 ? strings.get(status[3]) : '';
                this.message = function () { return msg; };
                return msg;
            },
            times: model.Times(times(status)),
            tags: tags(element[3], strings),
            isChildrenLoaded: typeof(element[5]) !== 'number'
        });
        lazyPopulateKeywordsFromFile(test, element[5], strings);
        return test;
    }
    function createSuite(parent, element, strings, index) {
        var status = element[5];
        var suite = model.Suite({
            parent: parent,
            id: 's' + ((index || 0) + 1),
            name: strings.get(element[0]),
            source: strings.get(element[1]),
            relativeSource: strings.get(element[2]),
            doc: function () {
                var doc = strings.get(element[3]);
                this.doc = function () { return doc; };
                return doc;
            },
            status: parseStatus(status),
            message: function () {
                var msg = status.length == 4 ? strings.get(status[3]) : '';
                this.message = function () { return msg; };
                return msg;
            },
            times: model.Times(times(status)),
            statistics: suiteStats(util.last(element)),
            metadata: parseMetadata(element[4], strings)
        });
        suite.populateKeywords(Populator(element[8], strings, childCreator(suite, createKeyword)));
        suite.populateTests(Populator(element[7], strings, childCreator(suite, createTest)));
        suite.populateSuites(Populator(element[6], strings, childCreator(suite, createSuite)));
        return suite;
    }
    function parseMetadata(data, strings) {
        var metadata = [];
        for (var i=0; i<data.length; i+=2) {
            metadata.push([strings.get(data[i]), strings.get(data[i+1])]);
        }
        return metadata;
    }
    function suiteStats(stats) {
        return {
            total: stats[0],
            pass: stats[1],
            fail: stats[2],
            skip: stats[3]
        };
    }
    function Populator(items, strings, creator) {
        return {
            numberOfItems: function () {
                return items.length;
            },
            creator: function (index) {
                return creator(items[index], strings, index);
            }
        };
    }
    function SplitLogPopulator(structureIndex, creator) {
        return {
            numberOfItems: function () {
                return window['keywords'+structureIndex].length;
            },
            creator: function (index) {
                return creator(window['keywords'+structureIndex][index],
                               StringStore(window['strings'+structureIndex]),
                               index);
            }
        };
    }
    function suite() {
        var elem = window.output.suite;
        if (elementsById[elem.id])
            return elem;
        var root = addElement(createSuite(null, elem, StringStore(window.output.strings)));
        window.output.suite = root;
        return root;
    }
    function findLoaded(id) {
        return elementsById[id];
    }
    function ensureLoaded(id, callback) {
        var ids = id.split('-');
        var root = suite();
        ids.shift();
        loadItems(ids, root, [root.id], callback);
    }
    function loadItems(ids, current, result, callback) {
        if (!ids.length) {
            callback(result);
            return;
        }
        current.callWhenChildrenReady(function () {
            var id = ids.shift();
            var type = id[0];
            var index = parseInt(id.substring(1)) - 1;
            var item = selectFrom(current, type, index);
            if (item)
                result.push(item.id);
            else    // Invalid id. Should this be reported somewhere?
                ids = [];
            loadItems(ids, item, result, callback);
        });
    }
    function selectFrom(element, type, index) {
        if (type === 'k') {
            var keywords = util.filter(element.keywords(), function (kw) {
                return kw.type != 'message';
            });
            return keywords[index];
        } else if (type === 't') {
            return element.tests()[index];
        } else {
            return element.suites()[index];
        }
    }
    function errorIterator() {
        return {
            next: function () {
                return addElement(createMessage(window.output.errors.shift(),
                                                StringStore(window.output.strings)));
            },
            hasNext: function () {
                return window.output.errors.length > 0;
            }
        };
    }
    function statistics() {
        if (!_statistics) {
            var statData = window.output.stats;
            _statistics = stats.Statistics(statData[0], statData[1], statData[2]);
        }
        return _statistics;
    }
    function StringStore(strings) {
        function getText(id) {
            var text = strings[id];
            if (!text)
                return '';
            if (text[0] == '*')
                return text.substring(1);
            var extracted = extract(text);
            strings[id] = '*' + extracted;
            return extracted;
        }
        function extract(text) {
            var decoded = JXG.Util.Base64.decodeAsArray(text);
            var extracted = (new JXG.Util.Unzip(decoded)).unzip()[0][0];
            return JXG.Util.UTF8.decode(extracted);
        }
        function get(id) {
            if (id === null) return null;
            return getText(id);
        }
        return {get: get};
    }
    return {
        suite: suite,
        errorIterator: errorIterator,
        findLoaded: findLoaded,
        ensureLoaded: ensureLoaded,
        statistics: statistics,
        StringStore: StringStore,  // exposed for tests
        LEVELS: LEVELS
    };
}();
</script>
<script type="text/javascript">
function removeJavaScriptDisabledWarning() {
    // Not using jQuery here for maximum speed
    document.getElementById('javascript-disabled').style.display = 'none';
}
function addJavaScriptDisabledWarning(error) {
    if (window.console)
        console.error('Opening failed: ' + error.name + ': ' + error.message);
    document.getElementById('javascript-disabled').style.display = 'block';
}
function initLayout(suiteName, type) {
    parseTemplates();
    setTitle(suiteName, type);
    addHeader();
    addReportOrLogLink(type);
}
function parseTemplates() {
    $('script[type="text/x-jquery-tmpl"]').map(function (idx, elem) {
        $.template(elem.id, elem.text);
    });
}
function testOrTask(text) {
    return text.replace(/{(.*)}/, function (match, group, offset, string) {
        if (!window.settings.rpa)
            return group;
        return {'TEST': 'TASK', 'Test': 'Task', 'test': 'task'}[group];
    });
}
function setTitle(suiteName, type) {
    var givenTitle = window.settings.title;
    var title = givenTitle ? givenTitle : suiteName + " " + type;
    document.title = util.unescape(title);
}
function addHeader() {
    var generated = util.timestamp(window.output.generated);
    $.tmpl('<h1>${title}</h1>' +
           '<div id="generated">' +
             '<span>Generated<br>${generated}</span><br>' +
             '<span id="generated-ago">${ago} ago</span>' +
           '</div>' +
           '<div id="top-right-header">' +
             '<div id="report-or-log-link"><a href="#"></a></div>' +
           '</div>', {
        generated: util.createGeneratedString(generated),
        ago: util.createGeneratedAgoString(generated),
        title: document.title
    }).appendTo($('#header'));
}
function addReportOrLogLink(myType) {
    var url;
    var text;
    var container = $('#report-or-log-link');
    if (myType == 'Report') {
        url = window.settings.logURL;
        text = 'LOG';
    } else {
        url = window.settings.reportURL;
        text = 'REPORT';
    }
    if (url) {
        container.find('a').attr('href', url);
        container.find('a').text(text);
    } else {
        container.remove();
    }
}
function addStatistics() {
    var statHeaders =
        '<th class="stats-col-stat">Total</th>' +
        '<th class="stats-col-stat">Pass</th>' +
        '<th class="stats-col-stat">Fail</th>' +
        '<th class="stats-col-stat">Skip</th>' +
        '<th class="stats-col-elapsed">Elapsed</th>' +
        '<th class="stats-col-graph">Pass / Fail / Skip</th>';
    var statTable =
        '<h2>{Test} Statistics</h2>' +
        '<table class="statistics" id="total-stats"><thead><tr>' +
        '<th class="stats-col-name">Total Statistics</th>' + statHeaders +
        '</tr></thead></table>' +
        '<table class="statistics" id="tag-stats"><thead><tr>' +
        '<th class="stats-col-name">Statistics by Tag</th>' + statHeaders +
        '</tr></thead></table>' +
        '<table class="statistics" id="suite-stats"><thead><tr>' +
        '<th class="stats-col-name">Statistics by Suite</th>' + statHeaders +
        '</tr></thead></table>';
    $(testOrTask(statTable)).appendTo('#statistics-container');
    util.map(['total', 'tag', 'suite'], addStatTable);
    addTooltipsToElapsedTimes();
    enableStatisticsSorter();
}
function addTooltipsToElapsedTimes() {
    $('.stats-col-elapsed').attr('title',
        testOrTask('Total execution time of these {test}s. ') +
        'Excludes suite setups and teardowns.');
    $('#suite-stats').find('.stats-col-elapsed').attr('title',
        'Total execution time of this suite.');
}
function enableStatisticsSorter() {
    $.tablesorter.addParser({
        id: 'statName',
        type: 'numeric',
        is: function(s) {
            return false;  // do not auto-detect
        },
        format: function(string, table, cell, cellIndex) {
            // Rows have class in format 'row-<index>'.
            var index = $(cell).parent().attr('class').substring(4);
            return parseInt(index);
        }
    });
    $(".statistics").tablesorter({
        sortInitialOrder: 'desc',
        headers: {0: {sorter: 'statName', sortInitialOrder: 'asc'},
                  6: {sorter: false}}
    });
}
function addStatTable(tableName) {
    var stats = window.testdata.statistics()[tableName];
    if (tableName == 'tag' && stats.length == 0) {
        renderNoTagStatTable();
    } else {
        renderStatTable(tableName, stats);
    }
}
function renderNoTagStatTable() {
    $('<tbody><tr class="row-0">' +
        '<td class="stats-col-name">No Tags</td>' +
        '<td class="stats-col-stat"></td>' +
        '<td class="stats-col-stat"></td>' +
        '<td class="stats-col-stat"></td>' +
        '<td class="stats-col-stat"></td>' +
        '<td class="stats-col-elapsed"></td>' +
        '<td class="stats-col-graph">' +
          '<div class="empty-graph"></div>' +
        '</td>' +
      '</tr></tbody>').appendTo('#tag-stats');
}
function renderStatTable(tableName, stats) {
    var template = tableName + 'StatisticsRowTemplate';
    var tbody = $('<tbody></tbody>');
    for (var i = 0, len = stats.length; i < len; i++) {
        $.tmpl(template, stats[i], {index: i}).appendTo(tbody);
    }
    tbody.appendTo('#' + tableName + '-stats');
}
$.template('statColumnsTemplate',
    '<td class="stats-col-stat">${total}</td>' +
    '<td class="stats-col-stat">${pass}</td>' +
    '<td class="stats-col-stat">${fail}</td>' +
    '<td class="stats-col-stat">${skip}</td>' +
    '<td class="stats-col-elapsed">${elapsed}</td>' +
    '<td class="stats-col-graph">' +
      '{{if total}}' +
      '<div class="graph">' +
        '<div class="pass-bar" style="width: ${passWidth}%" title="${passPercent}%"></div>' +
        '<div class="fail-bar" style="width: ${failWidth}%" title="${failPercent}%"></div>' +
        '<div class="skip-bar" style="width: ${skipWidth}%" title="${skipPercent}%"></div>' +
      '</div>' +
      '{{else}}' +
      '<div class="empty-graph"></div>' +
      '{{/if}}' +
    '</td>'
);
$.template('suiteStatusMessageTemplate',
    '${total} {{= testOrTask("{test}")}}{{if total != 1}}s{{/if}} total, ' +
    '${pass} passed, ${fail} failed, ${skip} skipped'
);
// For complete cross-browser experience..
// http://www.quirksmode.org/js/events_order.html
function stopPropagation(event) {
    var event = event || window.event;
    event.cancelBubble = true;
    if (event.stopPropagation)
        event.stopPropagation();
}
</script>
<script type="text/javascript">
window.output = {};
</script>
<script type="text/javascript">
window.output["suite"] = [1,2,3,0,[],[1,0,6530],[],[[4,0,0,[5],[1,207,464],[[0,6,7,0,0,0,0,0,[1,207,16],[[0,8,7,0,0,0,0,0,[1,215,8],[[0,9,10,0,11,12,13,0,[1,215,0],[[215,2,14]]],[0,15,16,0,17,18,0,0,[1,215,8],[[223,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,223,440],[[5,22,0,0,0,0,0,0,[3,228,0],[[0,23,21,0,0,0,0,0,[3,228,0],[]]]],[7,0,0,0,0,0,0,0,[1,228,6],[[0,24,21,0,0,0,0,0,[1,228,6],[[0,25,26,0,27,28,29,0,[1,228,4],[[231,2,30]]],[0,31,10,0,32,33,0,0,[1,232,2],[[234,2,34]]],[0,35,26,0,36,29,29,0,[1,234,0],[[234,2,37]]],[0,31,10,0,32,38,0,0,[1,234,0],[[234,2,39]]]]]]],[0,40,21,0,0,0,0,0,[1,234,429],[[0,41,26,0,42,43,44,0,[1,234,6],[[239,2,45],[240,2,46]]],[0,47,16,0,48,49,50,0,[1,240,418],[[654,2,51],[654,2,52],[654,2,53],[658,2,54]]],[0,55,10,0,56,57,0,0,[1,658,0],[[658,2,58]]],[0,31,10,0,32,50,0,0,[1,658,5],[[663,2,54]]]]]]],[0,59,7,0,0,0,0,0,[1,663,8],[[0,60,7,0,0,61,0,0,[1,663,8],[[0,55,10,0,56,62,0,0,[1,663,0],[[663,2,63]]],[0,64,16,0,65,66,0,0,[1,663,8],[]]]]]],[0,67,21,0,0,0,0,0,[1,671,0],[[0,68,69,0,70,71,0,0,[1,671,0],[]]]]]],[72,0,0,[73],[1,679,520],[[0,6,7,0,0,0,0,0,[1,679,8],[[0,8,7,0,0,0,0,0,[1,679,8],[[0,9,10,0,11,12,13,0,[1,679,0],[[679,2,14]]],[0,15,16,0,17,18,0,0,[1,687,0],[[687,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,687,504],[[5,22,0,0,0,0,0,0,[3,687,0],[[0,23,21,0,0,0,0,0,[3,687,0],[]]]],[7,0,0,0,0,0,0,0,[1,687,13],[[0,24,21,0,0,0,0,0,[1,687,10],[[0,25,26,0,27,28,29,0,[1,695,0],[[695,2,74]]],[0,31,10,0,32,33,0,0,[1,695,0],[[695,2,75]]],[0,35,26,0,36,29,29,0,[1,697,0],[[697,2,76]]],[0,31,10,0,32,38,0,0,[1,697,0],[[697,2,77]]]]]]],[0,40,21,0,0,0,0,0,[1,700,491],[[0,41,26,0,42,43,44,0,[1,700,3],[[700,2,78],[703,2,79]]],[0,47,16,0,48,49,50,0,[1,704,479],[[1183,2,80],[1183,2,81],[1183,2,53],[1183,2,82]]],[0,55,10,0,56,57,0,0,[1,1183,8],[[1183,2,83]]],[0,31,10,0,32,50,0,0,[1,1191,0],[[1191,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,1191,8],[[0,60,7,0,0,61,0,0,[1,1191,8],[[0,55,10,0,56,62,0,0,[1,1191,8],[[1191,2,85]]],[0,64,16,0,65,66,0,0,[1,1199,0],[]]]]]]]],[86,0,0,[87],[1,1204,507],[[0,6,7,0,0,0,0,0,[1,1204,3],[[0,8,7,0,0,0,0,0,[1,1207,0],[[0,9,10,0,11,12,13,0,[1,1207,0],[[1207,2,14]]],[0,15,16,0,17,18,0,0,[1,1207,0],[[1207,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,1207,494],[[5,22,0,0,0,0,0,0,[3,1207,8],[[0,23,21,0,0,0,0,0,[3,1215,0],[]]]],[7,0,0,0,0,0,0,0,[1,1215,8],[[0,24,21,0,0,0,0,0,[1,1215,8],[[0,25,26,0,27,28,29,0,[1,1215,0],[[1215,2,88]]],[0,31,10,0,32,33,0,0,[1,1215,0],[[1215,2,89]]],[0,35,26,0,36,29,29,0,[1,1215,0],[[1215,2,90]]],[0,31,10,0,32,38,0,0,[1,1215,8],[[1223,2,91]]]]]]],[0,40,21,0,0,0,0,0,[1,1227,474],[[0,41,26,0,42,43,44,0,[1,1227,5],[[1227,2,92],[1232,2,93]]],[0,47,16,0,48,49,50,0,[1,1232,461],[[1693,2,94],[1693,2,95],[1693,2,53],[1693,2,82]]],[0,55,10,0,56,57,0,0,[1,1693,8],[[1693,2,96]]],[0,31,10,0,32,50,0,0,[1,1701,0],[[1701,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,1701,9],[[0,60,7,0,0,61,0,0,[1,1701,9],[[0,55,10,0,56,62,0,0,[1,1701,0],[[1701,2,85]]],[0,64,16,0,65,66,0,0,[1,1709,0],[]]]]]]]],[97,0,0,[98],[1,1711,410],[[0,6,7,0,0,0,0,0,[1,1717,0],[[0,8,7,0,0,0,0,0,[1,1717,0],[[0,9,10,0,11,12,13,0,[1,1717,0],[[1717,2,14]]],[0,15,16,0,17,18,0,0,[1,1717,0],[[1717,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,1725,387],[[5,22,0,0,0,0,0,0,[3,1725,0],[[0,23,21,0,0,0,0,0,[3,1725,0],[]]]],[7,0,0,0,0,0,0,0,[1,1725,9],[[0,24,21,0,0,0,0,0,[1,1725,9],[[0,25,26,0,27,28,29,0,[1,1725,0],[[1725,2,99]]],[0,31,10,0,32,33,0,0,[1,1725,9],[[1734,2,100]]],[0,35,26,0,36,29,29,0,[1,1734,0],[[1734,2,101]]],[0,31,10,0,32,38,0,0,[1,1734,0],[[1734,2,102]]]]]]],[0,40,21,0,0,0,0,0,[1,1734,378],[[0,41,26,0,42,43,44,0,[1,1742,0],[[1742,2,103],[1742,2,104]]],[0,47,16,0,48,49,50,0,[1,1742,362],[[2104,2,105],[2104,2,106],[2104,2,53],[2104,2,82]]],[0,55,10,0,56,57,0,0,[1,2104,0],[[2104,2,107]]],[0,31,10,0,32,50,0,0,[1,2104,0],[[2104,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,2112,3],[[0,60,7,0,0,61,0,0,[1,2115,0],[[0,55,10,0,56,62,0,0,[1,2115,0],[[2115,2,85]]],[0,64,16,0,65,66,0,0,[1,2115,0],[]]]]]]]],[108,0,0,[109],[1,2123,512],[[0,6,7,0,0,0,0,0,[1,2125,4],[[0,8,7,0,0,0,0,0,[1,2125,4],[[0,9,10,0,11,12,13,0,[1,2125,0],[[2125,2,14]]],[0,15,16,0,17,18,0,0,[1,2125,4],[[2125,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,2129,493],[[5,22,0,0,0,0,0,0,[3,2129,0],[[0,23,21,0,0,0,0,0,[3,2129,0],[]]]],[7,0,0,0,0,0,0,0,[1,2129,8],[[0,24,21,0,0,0,0,0,[1,2129,8],[[0,25,26,0,27,28,29,0,[1,2129,8],[[2137,2,110]]],[0,31,10,0,32,33,0,0,[1,2137,0],[[2137,2,111]]],[0,35,26,0,36,29,29,0,[1,2137,0],[[2137,2,112]]],[0,31,10,0,32,38,0,0,[1,2137,0],[[2137,2,113]]]]]]],[0,40,21,0,0,0,0,0,[1,2145,477],[[0,41,26,0,42,43,44,0,[1,2145,0],[[2145,2,114],[2145,2,115]]],[0,47,16,0,48,49,50,0,[1,2145,471],[[2616,2,116],[2616,2,117],[2616,2,53],[2616,2,82]]],[0,55,10,0,56,57,0,0,[1,2622,0],[[2622,2,118]]],[0,31,10,0,32,50,0,0,[1,2622,0],[[2622,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,2622,13],[[0,60,7,0,0,61,0,0,[1,2630,0],[[0,55,10,0,56,62,0,0,[1,2630,0],[[2630,2,85]]],[0,64,16,0,65,66,0,0,[1,2630,0],[]]]]]]]],[119,0,0,[120],[1,2639,505],[[0,6,7,0,0,0,0,0,[1,2639,8],[[0,8,7,0,0,0,0,0,[1,2639,8],[[0,9,10,0,11,12,13,0,[1,2639,0],[[2639,2,14]]],[0,15,16,0,17,18,0,0,[1,2639,8],[[2639,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,2647,489],[[5,22,0,0,0,0,0,0,[3,2647,0],[[0,23,21,0,0,0,0,0,[3,2647,0],[]]]],[7,0,0,0,0,0,0,0,[1,2647,9],[[0,24,21,0,0,0,0,0,[1,2647,9],[[0,25,26,0,27,28,29,0,[1,2647,7],[[2647,2,121]]],[0,31,10,0,32,33,0,0,[1,2654,2],[[2655,2,122]]],[0,35,26,0,36,29,29,0,[1,2656,0],[[2656,2,123]]],[0,31,10,0,32,38,0,0,[1,2656,0],[[2656,2,124]]]]]]],[0,40,21,0,0,0,0,0,[1,2656,480],[[0,41,26,0,42,43,44,0,[1,2664,0],[[2664,2,125],[2664,2,126]]],[0,47,16,0,48,49,50,0,[1,2664,466],[[3130,2,127],[3130,2,128],[3130,2,53],[3130,2,54]]],[0,55,10,0,56,57,0,0,[1,3130,6],[[3136,2,129]]],[0,31,10,0,32,50,0,0,[1,3136,0],[[3136,2,54]]]]]]],[0,59,7,0,0,0,0,0,[1,3136,8],[[0,60,7,0,0,61,0,0,[1,3141,3],[[0,55,10,0,56,62,0,0,[1,3142,2],[[3142,2,63]]],[0,64,16,0,65,66,0,0,[1,3144,0],[]]]]]],[0,67,21,0,0,0,0,0,[1,3144,0],[[0,68,69,0,70,71,0,0,[1,3144,0],[]]]]]],[130,0,0,[131],[1,3152,502],[[0,6,7,0,0,0,0,0,[1,3152,8],[[0,8,7,0,0,0,0,0,[1,3152,8],[[0,9,10,0,11,12,13,0,[1,3152,0],[[3152,2,14]]],[0,15,16,0,17,18,0,0,[1,3152,8],[[3160,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,3160,486],[[5,22,0,0,0,0,0,0,[3,3160,4],[[0,23,21,0,0,0,0,0,[3,3160,4],[]]]],[7,0,0,0,0,0,0,0,[1,3164,4],[[0,24,21,0,0,0,0,0,[1,3164,4],[[0,25,26,0,27,28,29,0,[1,3164,0],[[3164,2,132]]],[0,31,10,0,32,33,0,0,[1,3164,4],[[3168,2,133]]],[0,35,26,0,36,29,29,0,[1,3168,0],[[3168,2,134]]],[0,31,10,0,32,38,0,0,[1,3168,0],[[3168,2,135]]]]]]],[0,40,21,0,0,0,0,0,[1,3168,478],[[0,41,26,0,42,43,44,0,[1,3176,2],[[3178,2,136],[3178,2,137]]],[0,47,16,0,48,49,50,0,[1,3178,460],[[3638,2,138],[3638,2,139],[3638,2,53],[3638,2,82]]],[0,55,10,0,56,57,0,0,[1,3638,8],[[3646,2,140]]],[0,31,10,0,32,50,0,0,[1,3646,0],[[3646,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,3646,8],[[0,60,7,0,0,61,0,0,[1,3654,0],[[0,55,10,0,56,62,0,0,[1,3654,0],[[3654,2,85]]],[0,64,16,0,65,66,0,0,[1,3654,0],[]]]]]]]],[141,0,0,[142],[1,3662,503],[[0,6,7,0,0,0,0,0,[1,3662,0],[[0,8,7,0,0,0,0,0,[1,3662,0],[[0,9,10,0,11,12,13,0,[1,3662,0],[[3662,2,14]]],[0,15,16,0,17,18,0,0,[1,3662,0],[[3662,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,3662,494],[[5,22,0,0,0,0,0,0,[3,3670,0],[[0,23,21,0,0,0,0,0,[3,3670,0],[]]]],[7,0,0,0,0,0,0,0,[1,3670,8],[[0,24,21,0,0,0,0,0,[1,3670,8],[[0,25,26,0,27,28,29,0,[1,3670,0],[[3670,2,143]]],[0,31,10,0,32,33,0,0,[1,3670,0],[[3670,2,144]]],[0,35,26,0,36,29,29,0,[1,3678,0],[[3678,2,145]]],[0,31,10,0,32,38,0,0,[1,3678,0],[[3678,2,146]]]]]]],[0,40,21,0,0,0,0,0,[1,3678,478],[[0,41,26,0,42,43,44,0,[1,3678,8],[[3686,2,147],[3686,2,148]]],[0,47,16,0,48,49,50,0,[1,3686,469],[[4151,2,149],[4151,2,150],[4151,2,53],[4151,2,82]]],[0,55,10,0,56,57,0,0,[1,4156,0],[[4156,2,151]]],[0,31,10,0,32,50,0,0,[1,4156,0],[[4156,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,4156,9],[[0,60,7,0,0,61,0,0,[1,4162,3],[[0,55,10,0,56,62,0,0,[1,4163,0],[[4163,2,85]]],[0,64,16,0,65,66,0,0,[1,4165,0],[]]]]]]]],[152,0,0,[153],[1,4168,516],[[0,6,7,0,0,0,0,0,[1,4168,5],[[0,8,7,0,0,0,0,0,[1,4173,0],[[0,9,10,0,11,12,13,0,[1,4173,0],[[4173,2,14]]],[0,15,16,0,17,18,0,0,[1,4173,0],[[4173,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,4173,504],[[5,22,0,0,0,0,0,0,[3,4173,8],[[0,23,21,0,0,0,0,0,[3,4181,0],[]]]],[7,0,0,0,0,0,0,0,[1,4181,8],[[0,24,21,0,0,0,0,0,[1,4181,8],[[0,25,26,0,27,28,29,0,[1,4181,0],[[4181,2,154]]],[0,31,10,0,32,33,0,0,[1,4181,0],[[4181,2,155]]],[0,35,26,0,36,29,29,0,[1,4181,0],[[4181,2,156]]],[0,31,10,0,32,38,0,0,[1,4181,8],[[4181,2,157]]]]]]],[0,40,21,0,0,0,0,0,[1,4189,488],[[0,41,26,0,42,43,44,0,[1,4189,0],[[4189,2,158],[4189,2,159]]],[0,47,16,0,48,49,50,0,[1,4197,470],[[4659,2,160],[4667,2,161],[4667,2,53],[4667,2,82]]],[0,55,10,0,56,57,0,0,[1,4672,0],[[4672,2,162]]],[0,31,10,0,32,50,0,0,[1,4676,1],[[4677,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,4677,7],[[0,60,7,0,0,61,0,0,[1,4677,7],[[0,55,10,0,56,62,0,0,[1,4677,0],[[4677,2,85]]],[0,64,16,0,65,66,0,0,[1,4684,0],[]]]]]]]],[163,0,0,[164],[1,4684,508],[[0,6,7,0,0,0,0,0,[1,4692,0],[[0,8,7,0,0,0,0,0,[1,4692,0],[[0,9,10,0,11,12,13,0,[1,4692,0],[[4692,2,14]]],[0,15,16,0,17,18,0,0,[1,4692,0],[[4692,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,4692,493],[[5,22,0,0,0,0,0,0,[3,4700,0],[[0,23,21,0,0,0,0,0,[3,4700,0],[]]]],[7,0,0,0,0,0,0,0,[1,4700,8],[[0,24,21,0,0,0,0,0,[1,4700,8],[[0,25,26,0,27,28,29,0,[1,4700,0],[[4700,2,165]]],[0,31,10,0,32,33,0,0,[1,4700,0],[[4700,2,166]]],[0,35,26,0,36,29,29,0,[1,4700,8],[[4700,2,167]]],[0,31,10,0,32,38,0,0,[1,4708,0],[[4708,2,168]]]]]]],[0,40,21,0,0,0,0,0,[1,4708,477],[[0,41,26,0,42,43,44,0,[1,4708,0],[[4708,2,169],[4708,2,170]]],[0,47,16,0,48,49,50,0,[1,4708,473],[[5176,2,171],[5177,2,172],[5177,2,53],[5180,2,82]]],[0,55,10,0,56,57,0,0,[1,5181,2],[[5183,2,173]]],[0,31,10,0,32,50,0,0,[1,5184,1],[[5185,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,5187,5],[[0,60,7,0,0,61,0,0,[1,5187,5],[[0,55,10,0,56,62,0,0,[1,5189,1],[[5190,2,85]]],[0,64,16,0,65,66,0,0,[1,5191,1],[]]]]]]]],[174,0,0,[175],[1,5192,513],[[0,6,7,0,0,0,0,0,[1,5200,8],[[0,8,7,0,0,0,0,0,[1,5200,8],[[0,9,10,0,11,12,13,0,[1,5200,0],[[5200,2,14]]],[0,15,16,0,17,18,0,0,[1,5200,8],[[5200,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,5208,484],[[5,22,0,0,0,0,0,0,[3,5208,0],[[0,23,21,0,0,0,0,0,[3,5208,0],[]]]],[7,0,0,0,0,0,0,0,[1,5208,16],[[0,24,21,0,0,0,0,0,[1,5208,16],[[0,25,26,0,27,28,29,0,[1,5208,0],[[5208,2,176]]],[0,31,10,0,32,33,0,0,[1,5208,8],[[5216,2,177]]],[0,35,26,0,36,29,29,0,[1,5218,0],[[5218,2,178]]],[0,31,10,0,32,38,0,0,[1,5218,6],[[5218,2,179]]]]]]],[0,40,21,0,0,0,0,0,[1,5224,468],[[0,41,26,0,42,43,44,0,[1,5224,0],[[5224,2,180],[5224,2,181]]],[0,47,16,0,48,49,50,0,[1,5224,468],[[5684,2,182],[5684,2,183],[5684,2,53],[5692,2,82]]],[0,55,10,0,56,57,0,0,[1,5692,0],[[5692,2,173]]],[0,31,10,0,32,50,0,0,[1,5692,0],[[5692,2,82]]]]]]],[0,84,7,0,0,0,0,0,[1,5700,5],[[0,60,7,0,0,61,0,0,[1,5700,4],[[0,55,10,0,56,62,0,0,[1,5700,0],[[5700,2,85]]],[0,64,16,0,65,66,0,0,[1,5700,4],[]]]]]]]],[184,0,0,[185],[1,5708,816],[[0,6,7,0,0,0,0,0,[1,5708,0],[[0,8,7,0,0,0,0,0,[1,5708,0],[[0,9,10,0,11,12,13,0,[1,5708,0],[[5708,2,14]]],[0,15,16,0,17,18,0,0,[1,5708,0],[[5708,2,19]]]]]]],[0,20,21,0,0,0,0,0,[1,5708,501],[[5,22,0,0,0,0,0,0,[1,5716,0],[[0,23,21,0,0,0,0,0,[1,5716,0],[[0,31,10,0,32,186,0,0,[1,5716,0],[[5716,2,187]]],[0,31,10,0,32,188,0,0,[1,5716,0],[[5716,2,189]]]]]]],[7,0,0,0,0,0,0,0,[3,5716,8],[[0,24,21,0,0,0,0,0,[3,5724,0],[]]]],[0,40,21,0,0,0,0,0,[1,5724,485],[[0,41,26,0,42,43,44,0,[1,5724,0],[[5724,2,190],[5724,2,191]]],[0,47,16,0,48,49,50,0,[1,5724,477],[[6201,2,192],[6201,2,193],[6201,2,53],[6201,2,82]]],[0,55,10,0,56,57,0,0,[1,6201,8],[[6209,2,194]]],[0,31,10,0,32,50,0,0,[1,6209,0],[[6209,2,82]]]]]]],[0,195,21,0,0,0,0,0,[1,6209,305],[[0,23,21,0,0,0,0,0,[1,6209,9],[[0,31,10,0,32,186,0,0,[1,6209,8],[[6209,2,187]]],[0,31,10,0,32,188,0,0,[1,6218,0],[[6218,2,189]]]]],[0,20,21,0,0,0,0,0,[1,6218,296],[[5,22,0,0,0,0,0,0,[1,6220,0],[[0,23,21,0,0,0,0,0,[1,6220,0],[[0,31,10,0,32,186,0,0,[1,6220,0],[[6220,2,187]]],[0,31,10,0,32,188,0,0,[1,6220,0],[[6220,2,189]]]]]]],[7,0,0,0,0,0,0,0,[3,6220,4],[[0,24,21,0,0,0,0,0,[3,6220,0],[]]]],[0,40,21,0,0,0,0,0,[1,6224,290],[[0,41,26,0,42,43,44,0,[1,6224,4],[[6228,2,190],[6228,2,191]]],[0,47,16,0,48,49,50,0,[1,6228,278],[[6506,2,192],[6506,2,196],[6506,2,53],[6506,2,82]]],[0,55,10,0,56,57,0,0,[1,6506,8],[[6514,2,194]]],[0,31,10,0,32,50,0,0,[1,6514,0],[[6514,2,82]]]]]]]]],[0,84,7,0,0,0,0,0,[1,6514,10],[[0,60,7,0,0,61,0,0,[1,6514,10],[[0,55,10,0,56,62,0,0,[1,6522,1],[[6522,2,85]]],[0,64,16,0,65,66,0,0,[1,6524,0],[]]]]]]]]],[],[12,12,0,0]];
</script>
<script type="text/javascript">
window.output["strings"] = [];
</script>
<script type="text/javascript">
window.output["strings"] = window.output["strings"].concat(["*","*Api Cadastrousuario","*c:\\Users\\mgaje\\OneDrive\\Área de Trabalho\\testesAPI\\tests\\api_cadastrousuario.robot","eNq9jTEKwlAQBa8igd/6NDYSYkCSxkoLreXFbMyX6Mruj+c3eAhhGKabkovBpN9lfRylAFAXuLiY43nnQ3B8SWPxIwj1JmzXJgz5qpNZZ2PLcVAk8Zn96fArB9/xemNHT6aTT7SoS9NWU1b9YVKC1Rf63EmK","*CT01: Cadastrar um usuário - Sucesso","*S01CT01","*Dado que estou conectado na api","*CommonsResources","*Conectar na api","*Create Dictionary","*BuiltIn","*<p>Creates and returns a dictionary based on the given <code>items\x3c/code>.\x3c/p>","*Content-Type=application/json, accept=application/json","*${headers}","*${headers} = {'Content-Type': 'application/json', 'accept': 'application/json'}","*Create Session","*RequestsLibrary","*<p>Create Session: create a HTTP session to a server\x3c/p>","*${ALIAS}, ${URL}, ${headers}","eNptjjEOwjAMRa/irUugzJUyVWJkAC4Q2g8NlDjEDgIh7k4KjPX2/rO+3SY49eFEO4h4DpRloobc6J3YLW4ZojukO5KhnEY7qEZp6lq+WZHLHndDA1yPJPZVtRwUQRf7Z0TVUOViHH1XrnCoz8KhMiXrOkSdtW9Dc9MxXzxKf/Eu62A3HGBI/RWc9U8x8WNa+lF5zx+fdu1GwXxpj0M+2RV9AIRYVJ4=","*Quando realizo um cadastro de usuario","*API_CadastroUsuarioResources","*'${TEST_TAGS[0]}' == 'S01CT12'","*Quando realizo um cadastro de usuario com um email já existente","*Criar um usuario aleatorio","*Generate Random String","*String","*<p>Generates a string with a desired <code>length\x3c/code> from the given <code>chars\x3c/code>.\x3c/p>","*length=5, chars=[LETTERS]","*${palavra_aleatoria}","*${palavra_aleatoria} = IPBub","*Set Test Variable","*<p>Makes a variable available everywhere within the scope of the current test.\x3c/p>","*${NOME}, ${palavra_aleatoria}","*${NOME} = IPBub","*Convert To Lower Case","*<p>Converts string to lower case.\x3c/p>","*${palavra_aleatoria} = ipbub","*${EMAIL_TESTE}, ${palavra_aleatoria}@emailteste.com","*${EMAIL_TESTE} = ipbub@emailteste.com","*Realiza a requisicao api de cadastro","*Format String","*<p>Formats a <code>template\x3c/code> using the given <code>positional\x3c/code> and <code>named\x3c/code> arguments.\x3c/p>","*C:/Users/mgaje/OneDrive/Área de Trabalho/testesAPI/resources/data/API_Cadastro/${TEST_TAGS[0]}.json, nome=${NOME}, email_teste=${EMAIL_TESTE}","*${BODY}","eNq1zD0KwkAQhuGrDDlATFqJAVkbK4PGbkBG98sfya7MrPaezYuZSwhv9RTvGeLH0FPC8pwlgTqNC3XjDKqEBkW3y9yWrwY1XnqZwKeAg45v8PejEPKgVuUu8xA5wdb2zZEVFl/6gLGXJLzSzYkXSxr5UpSuLcp8shiy+p/3aiN1/gNuGVNI","*${BODY} = {\n    \"nome\": \"IPBub\",\n    \"email\": \"ipbub@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"true\"\n}","*POST On Session","*<p>Sends a POST request on a previously created HTTP Session.\x3c/p>","*${ALIAS}, ${URL}${ENDEPONT_USUARIOS}, data=${BODY}, expected_status=any","*${response}","eNp9jz1PxDAMhvf+iqhLln5QYKp0EgdiQELiBMeM3MS0gTYJiVNUTvx3kh4nMeHN7/NYtncPT3v2iB8BPbGWBTduBiLr27r26GZ0Ma8kznXwAZwynmXMAg0vyfwbDggSnd8c+HMcLLc9auIt43ahwejSHVf4+ry6aKozXjC+FQItlbdaGKl0n+T+S9mCSXwdgTA5sDoJgbWjEkDK6PrNG53ojdEaRYqS8Y5oSxjVjL+M4gnlfrH4z/zq3KPuaUhW01zy7/hNZ+SyOWQsVq7NhHnL8rvddejy4hjiBGpMqbJd6K7WluKDWAkznSQL3n8aJ5O3whMAOSmtPDmQxq3UBcyztPkHdPeA+g==","eNpVkl9v2jAUxd/7KSxeIk14OAETCMrDRFvE1j9ToVvfJmPfgLfEN7KdFlbtu88mq9T5xQ/nd4+Pdc/X+82WPIBr0TggBelsXR68b10xGjmwz2DB+Y8Knked64TV6MgFcV74zpUZS4fEgnBoymW4PaggHkAosK58TYSU4ByVaLzFmoq6xheKVu+1SQqSfEiGJDlSZRxtLVTg5eGNjTJWVQ9UVjRAsfU6ZIzK5tPt1f3DerW+i4DzVktPvRUm/MJ66kB2VvtTRBtxpGIPZco5zxhjC6KNrDsFm253iY3QwbFPgS+mRqHev2MQWzC9HoOBCc+cWvifcUa/JT26+BX0IKMe5XRBGlRQ7mqUv3qoQXC66vOKM0i1imw+nXO223GaZ7M5naiKUZGmFZ1XLOdsxvNpPosW76PEOdG2tZYiOo1+hl0siDwI68CXna/oeeSJLmvsFN1aIYEuo8HRx9mx5Go8YSqdTRjPqinwccZzlU7yTGZBWmCZRoPLsNzIX1s9JOmUfO4MyVg2JowVbFqwnKxutxHcnDsT0RXivgZybc9xVRSX/5LfgNn7Q4RmWfIndGaH6lS+XpBwBk3oTFjZoCCDpVAirBdjyWr9WygkEhviutgrHAz7gR9aRfjL4/dva82bKzmbbJ/uHgcX0fkvTrHovQ==","eNqtjzFPwzAQhXd+xakMZalDVDEQlUoVDCB1iGgrFi9X+5oYHDv4LkH99zhq+QdM9+707tN7z5U+MCXWXYOfpDd9/4KCehsNel2n2CTsWNdnaWO4jmVZ6q07anZCix7NFzbEekjeu+NSmxgCGXEx9DF61Z+r8v7xoYK3wGSGRO/0PRDLB6bgQlPBIYyU3MmRhdf9vt5BuhjAMRwpW6BDSyAR2piv8xw2P2SDsjTOFWysnUyGkmSKQSG4ALPMISYMS4qh8WdAOzomq2BHVMEKoU10epq1Ij1XRXGtoBKhlZZsNKxcLCgUPmNZivyPwZBdDJw7q1Y6fyueFz+XMjxb/xtqVeD6BuBvVZO4+wWL953c","*${response} = &lt;Response [201]&gt;","*Log","*<p>Logs the given message with the given level.\x3c/p>","*${response.json()}","*{'message': 'Cadastro realizado com sucesso', '_id': 'KUWVIi5mEc84TXNU'}","*Então a requisição deve ocorrer com sucesso (status_code=201)","*Conferir o status da requisição","*${status_code}, ${response}","*status_code retornado:${resultado}","*status_code retornado:&lt;Response [201]&gt;","*Status Should Be","*<p>Fails if response status code is different than the expected.\x3c/p>","*${status_code}, ${resultado}, msg=O status code não é o esperado pelo teste: status obtido ${resultado}","*E verifico se o usuario foi cadastrado","*Dictionary Should Contain Key","*Collections","*<p>Fails if <code>key\x3c/code> is not found from <code>dictionary\x3c/code>.\x3c/p>","*${response.json()}, _id","*CT02: Cadastrar um usuário sem informar o campo nome - (motivo falha: campo nome não informado)","*S01CT02","*${palavra_aleatoria} = EyZlM","*${NOME} = EyZlM","*${palavra_aleatoria} = eyzlm","*${EMAIL_TESTE} = eyzlm@emailteste.com","eNq1zDEOgkAQRuGrTDgAoqVBEoONFUaxm8SM7g8sYVkzs9p7Ni8mlzB51Ve8M8T5uaeE8JwkgTqNgTo/gUqhQdHtsnrLV4Mah15GcDPjoP4N/n4UQg7UqtxlGiIn2NL+dGSFxZc+YOwkCS90q8WJJY18KdZ1W2zy0eKcVf+8lyup8h9ujVNK","*${BODY} = {\n    \"email\": \"eyzlm@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"true\"\n}","eNp9jz1PxDAMhvf+iqhLln4AN1HpJE6IDQkEx4xMYtpAmoTYLeqd+O8kPZCY8BS/z2M5vr973IsH/JiQWHRiinY7MAfq2pYwzhhT3mic24kmiMaTKEQAHp6z+TccEDRG2h7lUxqsdz06lp2QYeHBuzqeVlB70WzOmzNZCblTCgPXN055bVyf5f5gQiU0vlpgzA6sTkYQgjUK2HjXvpF3mV5751DlKBvviKEGa2b8YZy+UO+XgP/Mr84tup6HbF1u5Fc65sXrZXssRKoSRzC27NJjOdjxam05nYKN8mNZnaQARJ8+6uyt8BeAHo0zxBG0jyuNE5ZFXvINKXB79g==","*POST Response : url=https://serverest.dev/usuarios \n status=400, reason=Bad Request \n headers={'access-control-allow-origin': '*', 'x-dns-prefetch-control': 'off', 'x-frame-options': 'SAMEORIGIN', 'strict-transport-security': 'max-age=15552000; includeSubDomains', 'x-download-options': 'noopen', 'x-content-type-options': 'nosniff', 'x-xss-protection': '1; mode=block', 'x-moesif-transaction-id': 'a87cd06e-19a8-4aa9-ab11-2aa3b758a1f0', 'content-type': 'application/json; charset=utf-8', 'X-Cloud-Trace-Context': 'e4d71f4703159f212688b1f338d18c3f', 'Date': 'Fri, 16 Jun 2023 00:06:07 GMT', 'Server': 'Google Frontend', 'Content-Length': '38'} \n body={\n    \"nome\": \"nome é obrigatório\"\n} \n ","*${response} = &lt;Response [400]&gt;","*{'nome': 'nome é obrigatório'}","*Então a requisição deve ocorrer sem sucesso (status_code=400)","*status_code retornado:&lt;Response [400]&gt;","*CT03: Cadastrar um usuário sem informar o campo email - (motivo falha: campo email não informado)","*S01CT03","*${palavra_aleatoria} = ftUts","*${NOME} = ftUts","*${palavra_aleatoria} = ftuts","*${EMAIL_TESTE} = ftuts@emailteste.com","eNq1zDEOgkAQRuGrTDgAYuwMkhhsrDCK3SRmdH9gCcuamdXes3kxuYTJq77inSHOzz0lhOckCdRpDNT5CVQKDYpul9VbvhrUOPQygpsZB/Vv8PejEHKgVuUu0xA5wZb2pyMrLL70AWMnSXihWy1OLGnkS7Gu22KTjxbnrPrnvVxJlf8AbwFTTA==","*${BODY} = {\n    \"nome\": \"ftUts\",\n    \"password\": \"teste\",\n    \"administrador\": \"true\"\n}","eNp9j7tOxDAQRft8hZXGTR48ipUipVghOiQQ7NZoiGcTQ3ZsPJOgsOLfsbMgUTHlPWdeD/dPO/WI7xOyqEZNYWwHEc9NXTOGGUPMK4NzPfEEwTpWmfIgw3My/4YDgsHA7UnvY2O57ZFEN0r7RQZHZTiv4Pqqur6sLnSh9Lbr0Et5S50zlvok95/WF8rgYQTB5MDqJATej7YDsY7qV3aU6I0jwi5FyXhD9CWMdsYfJvGEcrd4/Kd/de6QehmStdnor/jMizNLe8pUrJzcEfNG5QfZC+fFOfTA/OGCSUDiX/gLwBwtWZYAxoWVhgnzLA39Bi2Udao=","*POST Response : url=https://serverest.dev/usuarios \n status=400, reason=Bad Request \n headers={'access-control-allow-origin': '*', 'x-dns-prefetch-control': 'off', 'x-frame-options': 'SAMEORIGIN', 'strict-transport-security': 'max-age=15552000; includeSubDomains', 'x-download-options': 'noopen', 'x-content-type-options': 'nosniff', 'x-xss-protection': '1; mode=block', 'x-moesif-transaction-id': '8ca51172-284f-4039-8b3e-8c08022b9d4c', 'content-type': 'application/json; charset=utf-8', 'X-Cloud-Trace-Context': '76800238c1c8bc60b453393d1c427bbf', 'Date': 'Fri, 16 Jun 2023 00:06:08 GMT', 'Server': 'Google Frontend', 'Content-Length': '40'} \n body={\n    \"email\": \"email é obrigatório\"\n} \n ","*{'email': 'email é obrigatório'}","*CT04: Cadastrar um usuário sem informar o campo password - (motivo falha: campo password não informado)","*S01CT04","*${palavra_aleatoria} = YvEIg","*${NOME} = YvEIg","*${palavra_aleatoria} = yveig","*${EMAIL_TESTE} = yveig@emailteste.com","eNq1zDEKwkAQRuGrDDlAjGAlMSCxsYpo7AZkdP8kG7JZmVntPZsXM5cQXvUV7wxxfu4pITwnSaBOY6DOT6BSaFB0u6ze8tWgxqGXEdzMOKh/g78fhZADtSp3mYbICba0Px1ZYfGlDxg7ScIL3WpxYkkjX4p13RabfLQ4Z9U/7+VKqvwHb3VTTg==","*${BODY} = {\n    \"nome\": \"YvEIg\",\n    \"email\": \"yveig@emailteste.com\",\n    \"administrador\": \"true\"\n}","*POST Request : url=https://serverest.dev/usuarios \n path_url=/usuarios \n headers={'User-Agent': 'python-requests/2.31.0', 'Accept-Encoding': 'gzip, deflate', 'accept': 'application/json', 'Connection': 'keep-alive', 'Content-Type': 'application/json', 'Content-Length': '89'} \n body={\n    \"nome\": \"YvEIg\",\n    \"email\": \"yveig@emailteste.com\",\n    \"administrador\": \"true\"\n} \n ","eNpVkkFu2zAQRfc+BeGNgMKsKclybBlatE5jpGiaIvai2xE5stnKHJWkYhtBD9R1j5CLlbQbNOWKwH//zyc4X+7XG/aAriPjkJWst221875z5Xjs0D6iReffKnwc964Hq8mxAXMefO+qiRAjZhEcmeo9qBDzow90AHYICq2rnhKQEp3jkoy31HJoWzpwsnqrTVKy5E0yYsmRK+N4Z7FBL3cvbJSpaS5AY2GPnDqvQ8+orN/dfbh/uF3dfo6A81ZLz70FE15iPXcoe6v9KaJ7OHLYYpUWRZEJIRZMG9n2Ctd9fU170CHx0oIOpiVQr+cYog7NRY/F0IQxpw7/Z5zRL02PLj6FPMqoRzldsD0prOqW5PcLtCd0urn0hTPItYrsHACzq6zgqETBJ9Mm4/MszXmhGllLJeUshxjxukr0Qde1WkJMGn8L/7FgcgfWoa963/BZtHzly5Z6xTcWJPJlDDj680yZp1KleZ5Nr4o51kJlTaZQ5kWeCjXLovka/HnOjdUjlk7Zx96wTGQ5E6IU01LM2OpuE8H1eWciuiLatshu7LmqiuLyb+tPaLZ+F6HJNPkZ9qUmdaqeBiycYQfOHciqYfnvzp5/MarD1oB//h2WcDiIrj9pluLt","*{'password': 'password é obrigatório'}","*CT05: Cadastrar um usuário sem informar o campo administrador - (motivo falha: campo administrador não informado)","*S01CT05","*${palavra_aleatoria} = dJHBd","*${NOME} = dJHBd","*${palavra_aleatoria} = djhbd","*${EMAIL_TESTE} = djhbd@emailteste.com","eNq1zDEOgkAQRuGrTDgAYmFjkMRgY4VR7CYxo/sDS1jWzKz2ns2LySVMXvUV7wxxfu4pITwnSaBOY6DOT6BSaFB0u6ze8tWgxqGXEdzMOKh/g78fhZADtSp3mYbICba0Px1ZYfGlDxg7ScIL3WpxYkkjX4p13RabfLQ4Z9U/7+VKqvwHb+lTUA==","*${BODY} = {\n    \"nome\": \"dJHBd\",\n    \"email\": \"djhbd@emailteste.com\",\n    \"password\": \"teste\"\n}","eNp9j01LxDAQhu/9FaGXXPqxKoIUCq6LICIoup4lm4xN1jSJybRSF/+7SVbBk3PL8z4zk3m4f9qSR3ifICDpyOR1LxFd6No2gJ/BR94ImNspTMwrG0hBHEP5ksy/UAIT4EN/oM+xsV4PYJB2hLoFpTW1P64I7WlzdtKsaEXomnNwWF8bboUyQ5KHT+UqIuBVM4TksOykiDmnFWeorGn3wZqUbqwxwBNKxhuAq5lWM/xkGL9QbxcH//Rn5w7MgDJZF+f0Kx6zs2LpDwWJVRo7QtmRUtzeXImyOkIYmdKZ7uVOXOYnxvug4Xb8lRwL4cN6kbwclkUa/g3UsXfc","eNpdkkFu2zAQRfc+BeGNgMKsKUWSKxlatE5jpEiaIvai2xE5tNlKpEpSiY2gB+q6R8jFStoNkJZL/vf/fILz5W6zJffoBqMdkpqMtmv23g+uns8d2ge06PxbgQ/z0Y1glXFkQpwHP7omZ2xGLIIzuvkAIsT8GAMdgD2CQOuapwQ4R+coN9pb01HoOvNIjVU7pZOaJG+SGUkOVGhHB4sSPd+/sFE2Up4BaaFHagavQs+obN7ffry7v15ff46A81ZxT70FHV5iPXXIR6v8MaI9HCjssEmLosgYY0uiNO9GgZuxvTQ9qJB4bmEedWdAvJ6jjRlQn/VYDHUYcxzwX8Zp9dL04OJTjEce9SinS9IbgU3bGf79DPUGnZLnvnACqRKRLXnWyooLyjLJaQ4LQaEQFU1bIThbXFStbGPE6yrRB8PQKQ4xaf4t/MeS8D1Yh74ZvaTvouUrXXVmFHRrgSNdxYCDj962kimTWJRZnmYZYtqWouQVpHm+kHlWRvMl+NOcK6tmJC3Jp1GTjGUXhLGalTWryPp2G8HNaWciujZm1yG5sqeqIoqrv61vUO/8PkJFmfwM+9IacWyeJiScKYheaRV+FISx0/q/C/L8i5g27A/4599hHaeT6P8DGObnhA==","*{'administrador': 'administrador é obrigatório'}","*CT06: Cadastrar um usuário informando o campo administrador como false - Sucesso","*S01CT06","*${palavra_aleatoria} = xlqDh","*${NOME} = xlqDh","*${palavra_aleatoria} = xlqdh","*${EMAIL_TESTE} = xlqdh@emailteste.com","eNq1zDEOgkAQRuGrTDgAYmNhkMRgY4VR7CYxo/sDS1jWzKz2ns2LySVMXvUV7wxxfu4pITwnSaBOY6DOT6BSaFB0u6ze8tWgxqGXEdzMOKh/g78fhZADtSp3mYbICba0Px1ZYfGlDxg7ScIL3WpxYkkjX4p13RabfLQ4Z9U/7+VKqvwHcF1TUg==","*${BODY} = {\n    \"nome\": \"xlqDh\",\n    \"email\": \"xlqdh@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"false\"\n}","eNp9j01PwzAMhu/9FVEvvfSDgrhUqsQE3JBAMM7IJF4TSJMscQtj4r+TdJu0E775fR7L9tPjy5o943bCQKxjk9e9JHKha5qAfkYf81rg3ExhAq9sYBlzQPItmeehRBDoQ78vXuNgtRrQUNGxwu1IWlP5w4rQXNZXbX1RlKxYcY6OqnvDrVBmSPLwo1zJBG40ECYHFichcE4rDqSsaT6CNYneWmOQpygZn4iuAq1mPDKKJ1TrncN/5hfnAc1AMllte138xm/erdj1+4zFyo0dMe9Y/q23dzIvDyGOoPQxFfJmaSk+iDW340lyEMKX9SJ5CzwBEKMyKpAHYX2iG9AB8yyt/gMbtoGk","eNpVks1u2zAQhO9+CsIXAYVZ68dWJBk6FEpjpGiaIjbQtJeCIlcyW4krkJRjJ+i7l7QaIOWFh/lmOcvdr/e7PXkAM6AyQAoy6q48WDuYYrk0oI+gwdj3Ao7L0YxMSzRkRoxldjRlHEYLooEZVGXlbgvCiQdgArQpXwLGORhDOSqrsaOs6/CJopatVEFBgnfBggQnKpShg4YGLD+8sl7GppmARrMeKA5Wuoxe2X24+3j/cLu9/eIBY7XkllrNlOtCW2qAj1ras0d7dqKshTJar9dxGIYbIhXvRgG7sb7GnklXcUqBT6pDJt6+oxAHUJPug4Fyz5wH+J8xSr4mPRnfClrgXvdytCE9CijrDvnvCeoRjGymvOwCUik8m+VZWidXawpRndEVrFbU/WBIcwbrKAtFzLLUl3gbxfvYMHSSM19p+cvNYkP4gWkDthxtQzNveaRVh6Oge8040MoXOFnvTa5yliZ5niasydM6b7IsgVhk6zgKV5zX3nztBuvZGy0XJErJp1GROIwTEoZFmBZhTrZ3ew/uLvvi0S1i2wG50ZeowovVv9SfQbX2cOk3Dv64falRnMuXGXFn3rt9ceOaF2ReMcHcaNEvWCefmUDCsSdm9DuF88Vk+CmFh4/fj8/fjmkrq/ZHEj9G85mv/Bf8lulZ","*{'message': 'Cadastro realizado com sucesso', '_id': 'vYvzWv6giCgZ32X1'}","*CT07: Cadastrar um usuário informando um valor invalido no campo nome - (motivo falha: campo com valor invalido)","*S01CT07","*${palavra_aleatoria} = gFVMf","*${NOME} = gFVMf","*${palavra_aleatoria} = gfvmf","*${EMAIL_TESTE} = gfvmf@emailteste.com","eNq1zDEKwkAQRuGrDDlAjJUgMSCxsYpo7AZkdP8kG7JZmVntPZsXM5cQXvUV7wxxfu4pITwnSaBOY6DOT6BSaFB0u6ze8tWgxqGXEdzMOKh/g78fhZADtSp3mYbICba0Px1ZYfGlDxg7ScIL3WpxYkkjX4p13RabfLQ4Z9U/7+VKqvwHcNFTVA==","*${BODY} = {\n    \"nome\": 12345,\n    \"email\": \"gfvmf@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"false\"\n}","eNp9jz1PxDAMhvf+iqhLln7QKyyVKnFCbEggOGZkGrcNpElI3KJy4r+T9A6JCW9+n8ey/XD/dGCP+DGjJ9aw2al2JLK+KUuPbkEX8kLgUs5+BieNZwmzQONLNP+GI4JA59sjfw6D+X5ATbxh3K40Gp270wpf7oq6Ki54xvi+69BSfqs7I6Qeojx8SZsxgb0CwujA5kQE1irZAUmjyzdvdKQ3RmvsYhSNd0Sbg5ILnhmFE/LDavGf+c25Qz3QGK2qqvl3+ObViLU9JixUqs2EacOqXX15lZ0inECqkKVDv0z99dZSeA+LzkzpWbLg/adxInob/AUgJqmlJwfCuEh7UB7TJC7+Ac+7gFE=","eNpVkk9v2zAMxe/9FEIuBoZocVwncRz4sKVr0KFdhyaHXWmJTrTZoqc/bYJi332SvQKdLjq8H/keQX5/3B/YE9qetEVWMm/a6uRcb8vZzKJ5RoPWfZT4PPPWg1Fk2RWzDpy3VZ6mU2YQLOnqM8jQ5rcPdABOCBKNrV4TEAKt5YK0M9RyaFt64WTUUemkZMmHZMqSM5fa8t5gg06c3tgoU9OMQGOgQ069UyFnVPafHr48Pt3t7r5FwDqjhOPOgA6TGMctCm+Uu0S0gzOHI1bzxWKRpWm6YUqL1kvc+/qGOlCh45iCXnRLIN/7aKIe9ajHYKiDzaXH/xmr1VvSs42jkEMR9SjPN6wjiVXdkvg1Qh2hVc2YFwaQKzmw1wCrDJGv1wA8x8WKrwu55LnEoliJdYOjz/sosQ76vlUCYqfZz7CPDRMnMBZd5V3Di1jyg29b8pIfDAjk29jg7AZPmYp6ma8KkdVFsERY5FmDucibog5SLL4BN/jcGjVl8yX76jXL0uyapWmZLst5ynYPhwjuh5uJ6I7o2CK7NUNUGcXtv9T3qI/uFKE8S/6Ee6lJXqrXKxbeRFOHk3L8WTg8ZOEOme+AxS3r4+QqVvwFWjvgPA==","*{'nome': 'nome deve ser uma string'}","*CT08: Cadastrar um usuário informando um valor invalido no campo email - (motivo falha: campo com valor invalido)","*S01CT08","*${palavra_aleatoria} = gIlGm","*${NOME} = gIlGm","*${palavra_aleatoria} = gilgm","*${EMAIL_TESTE} = gilgm@emailteste.com","eNq1zDEOgkAQRuGrTDgAYmcMkhhsrDCK3SRmdH9gCcuamdXes3kxuYTJq77inSHOzz0lhOckCdRpDNT5CVQKDYpul9VbvhrUOPQygpsZB/Vv8PejEHKgVuUu0xA5wZb2pyMrLL70AWMnSXihWy1OLGnkS7Gu22KTjxbnrPrnvVxJlf8AcUVTVg==","*${BODY} = {\n    \"nome\": \"gIlGm\",\n    \"email\": 12345,\n    \"password\": \"teste\",\n    \"administrador\": \"false\"\n}","eNp9j01LxDAQhu/9FaGXXvrh7ipooYdFRARB0fUsYzPbRtMkZqaVuvjfTfYDPDnH532Gmffx4XkjnvBzRGJRi9Hrpmd2VFcVoZ/QB15KnKqRRvDKkkiEA+5fo/kX9ggSPTW77CUsFusODWe1yNzMvTWFP5ygalmuFuVZlots3bbouLgxrZXKdFHuvpXLhcStBsbowN6JETinVQusrKneyZqYXltjsI0oGh+IrgCtJjxmHF4oNrPDf/b3zj2ajvtoXV1mP6HMm5Vzs0tEmNTYAdNapN2dvh3S/ABxAKUDXSxX5xdH5oDoy3oZZQ5d8SSDHJRRxB6k9THdgiZMk3jpF6Cfeg0=","eNpVkstu2zAQRff+CsIbAYVZUy9HkaFF6zRGiqYpYi+6pciRzVbiqHwkNoL+e0krAVKuCNwzdy458+NhtyePYEfUFkhNvOmbo3OjrZdLC+YJDFj3UcLT0lvPjUJLZsQ67rxtCsYWxAC3qJvPXAabPz7QATgCl2Bs85JwIcBaKlA7gz3lfY/PFI06KJ3UJPmQLEhyolJbOhrowInjGxtl7LoJ6AwfgOLoVMgZld2n+y8Pj3fbu+8RsM4o4agzXIeXGEctCG+UO0d04CfKD9CkZVlmjLE1UVr0XsLOtzc4cBUcpxT4rHvk8n0fjTiCnvQYDHRocx7hf8Zq9Zb0ZONT0IGIepTTNRlQQtP2KH5P0IBgVTfl5ReQKhnZPKtWeVFlFNqU0YJVKeVZKaisYFUU1arorq6jxfsosY6PY68Ej07LX2EeayKO3FhwjXcdrWLJT7rp0Uu6N1wA3USDk7vkK64ltFV21co2B1aKvMs7nralqGT4sDIW33B36XNr1IKkK/LVa5KxLCeM1WxVp4xs7/cR3F12JqJbxEMP5NZcosoobl5TfwN9cMcIFUXyN+xLi/LcvMxIOHMIE+nn9euFhNUDEjaR+IGTOGd9mM9izT9DU98j","*{'email': 'email deve ser uma string'}","*CT09: Cadastrar um usuário informando um valor invalido no campo passaword - (motivo falha: campo com valor invalido)","*S01CT09","*${palavra_aleatoria} = WFreq","*${NOME} = WFreq","*${palavra_aleatoria} = wfreq","*${EMAIL_TESTE} = wfreq@emailteste.com","eNq1zDEOgkAQRuGrTDgAYqlBEoONFUaxm8SM7g8sYVkzs9p7Ni8mlzB51Ve8M8T5uaeE8JwkgTqNgTo/gUqhQdHtsnrLV4Mah15GcDPjoP4N/n4UQg7UqtxlGiIn2NL+dGSFxZc+YOwkCS90q8WJJY18KdZ1W2zy0eKcVf+8lyup8h9xuVNY","*${BODY} = {\n    \"nome\": \"WFreq\",\n    \"email\": \"wfreq@emailteste.com\",\n    \"password\": 12345,\n    \"administrador\": \"true\"\n}","eNp9jz1PwzAQhvf8CiuLl3yQFJZIkagQTEggKGJEV/uaGBLb2JdUoeK/Y7dFYsKbn/c5n9/Hh+cNe8LPCT2xhk1uaHsi65uy9OhmdIEXEudy8hM4ZTxLmAXq36L5F/YIEp1vD/wlDObrDjXxhnG7UG907k4rfFkXq6q44BnjayHQUn6rhZFKd1HuvpTNmMTdAITRgaMTI7B2UAJIGV2+e6NjemO0RhFRND4QbQ6DmvGcUfhCvlks/jN/dO5Rd9RHq6pq/h3abI1c2kPCwkm1GTFtWPp6F0qk2QniCGqIdL8L9Pp4pVAQC2HGX8mC93vjZPCqenV5dcYgR6WVJwfSuPgGuQnTJO79AWxcf9Q=","eNpVks1u2zAQhO9+CsIXAYVZU4pk2TJ0aJ3GSNE0RexDrxS5stlKXJU/sY2g717SatBUJwHzzewQu98ed3vyBHZAbYFUxJuuPjo32Go+t2CewYB17yU8z7313Ci0ZEKs487bOmdsRgxwi7r+yGWI+eUDHYAjcAnG1i8JFwKspQK1M9hR3nV4omjUQemkIsm7ZEaSM5Xa0sFAC04cX9koY9uOQGt4DxQHp0LPqOw+PHx6fLrf3n+NgHVGCUed4Tq8xDhqQXij3CWiPT9TfoA6LYoiY4ytidKi8xJ2vrnFnquQOLbAk+6Qy7dzNOIAetRjMdBhzGWA/xmr1WvTs41PQQci6lFO16RHCXXTofg5Qj2CVe3Yl19BqmRkOQNeFlDQsslamqdS0tVKFjRr8hKWRSlaATHibZWrbxg6JXhMmv8I+1gTceTGgqu9a+kyWr7TTYde0r3hAugmBpxd9DZsJUuRrfIVy/KlWCxvGh5WsSgbASwr8mi+5e46586oGUkX5LPXJGPZDWGsYosqTcn2YR/B3fVmIrpFPHRA7sy1qozi5m/rL6AP7hihgiW/w700KC/1y4SEbzpwa09o5LT690/CAQIJ90h8z0nctj5MJ9H5ByEI4ys=","*{'password': 'password deve ser uma string'}","*CT10: Cadastrar um usuário informando um valor invalido no campo administrador - (motivo falha: campo com valor invalido)","*S01CT10","*${palavra_aleatoria} = KDoFF","*${NOME} = KDoFF","*${palavra_aleatoria} = kdoff","*${EMAIL_TESTE} = kdoff@emailteste.com","eNq1zD0KwkAQhuGrDDlATFqJAVkbK4PGbkBG98sfya7MrPaezYuZSwhv9RTvGeLH0FPC8pwlgTqNC3XjDKqEBkW3y9yWrwY1XnqZwKeAg45v8PejEPKgVuUu8xA5wdb2zZEVFl/6gLGXJLzSzYkXSxr5UpSuLYt8shiy+p/3aiN1/gNuG1NI","*${BODY} = {\n    \"nome\": \"KDoFF\",\n    \"email\": \"kdoff@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": 12345\n}","eNp9j01PwzAMhu/9FVEvvfSDrnCpVIkJ2AUkEIwzConbhrVxSNyiMfHfSbpN4oRvfp/Hsv30+LJlz/A5gSNWs8kOTU9kXF0UDuwM1ue5hLmY3MStQsciZjj1b8H8G/bAJVjXHJJXP5itO9CU1Cwxe+pRZ/a4whWrvCrziyRlyVoIMJTdaYFS6S7I3bcyKZPQDpwgOHxxAuLGDEpwUqiLD4c60BvUGkSIgrEDMBkf1AwnRv6EbLs38M/84jyA7qgPVllWyY//5h3lvjlEzFescYS4ZvH9LW42cXoMYeRqCOlOYtteLy35ByEXOJ4lw537QiuDt8Az4HJUWjmyXKL1tFxVl1dRWPwL23l/xA==","eNpdks1u2zAQhO95CsIXAYVZU7IkxzJ0aJ3GSNE0RexDrytyabOVSJU/iY2g717SboC0PHK+nZ3F7reH7Y48ohuNdkgaEmzfHrwfXTObObRPaNH59wKfZsEFsMo4ckWcBx9cWzI2JRbBGd1+BBFtfoVIR+CAINC69iUDztE5yo321vQU+t48U2PVXumsIdm7bEqyIxXa0dGiRM8Pr2ySjZQXQFoYkJrRq5gzKdsP958eHu82d18T4LxV3FNvQcdJrKcOebDKnxI6wJHCHtu8qqqCMbYiSvM+CNyG7sYMoKLjJYV51r0B8baPNmZEfdFTMNSxzWnEfxmn1WvSo0ujGI886UnOV2QwAtuuN/znBRoMOiUveeEMUiUSW+R5WcpyQbFYzmkJlaBLzgu6EGxZ1tedFItzn7dRUh2MY684JKfZj7iPFeEHsA59G7yk16nkO133Jgi6s8CRrpPB0afaTtTLvJZSVEXBK84kdgXIvF7Oxbwo2TwV34A/97m1akrymnwOmhSsmBPGGlY3eU4297sEbs83k9CNMfseya09RxVJXP9N/QX13h8SVC+y3/FeOiNO7csViW8CYlBaxY2CMHbS/PdB4ikiiZdJMm8DZsQEkknoHWaTq2T1B7tI6CA=","*{'administrador': \"administrador deve ser 'true' ou 'false'\"}","*CT11: Cadastrar um usuário informando um valor diferente de true ou false no campo administrador - (motivo falha: campo com valor invalido)","*S01CT11","*${palavra_aleatoria} = orHCH","*${NOME} = orHCH","*${palavra_aleatoria} = orhch","*${EMAIL_TESTE} = orhch@emailteste.com","eNq1zDEKwkAQRuGrDDlANK3EgMTGStHYDcjo/kk27GZlZrX3bF7MXEJ41Ve8M8T5eaCM+AySQb2mSL0PoFpoVPTbot3w1aDGcZAJfJyxV/8Gfz8KIQfqVO4SxsQZtrQ7HVhh6aUPGDvJwgvdWnFiWRNf1lXbVVU5WZqL5p/3eiVN+QNuj1NK","*${BODY} = {\n    \"nome\": \"orHCH\",\n    \"email\": \"orhch@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"teste\"\n}","eNp9j01LxDAQhu/7K0IvufTDKl4KBZdF2IOg6HqWMRmbaJvEZFqpi//dpHXRk3Ob93mGmbm7fTiwe3wfMRBr2Oj7VhG50FRVQD+hj3kpcarGMILXNrANc0DqKZl/Q4Ug0Yf2yB/jYLHt0BBvGHczKWsKv64I1Xl5UZdnPGd8KwQ6Kq6NsFKbLsndp3Y5k/jSA2FyYHESAud6LYC0NdVrsCbRnTUGRYqS8YboCuj1hD+M4gnFYXb4z/zi3KDpSCWrri/5V/zm2cq5PW5YrMzYAbOGZdbvd/ssX0McQPdrqoS6WlqKD2Ip7HCSHITwYb1M3gJPAOSgjQ7kQVr/Szdp9Tf6doFk","eNpdks1u2zAQhO95CsIXAYVZU7IlRzJ0aJ3GSNE0RexDrxS5stlSXJU/iY2g717SboC0PHK+nZ3F7reH7Y48ghvROCANCVa3B+9H18xmDuwTWHD+vYSnWXCBW4WOXBHnuQ+uXTA2JRa4Q9N+5DLa/AqRjsABuATr2peMCwHOUYHGW9SUa43PFK3aK5M1JHuXTUl2pNI4OlrowYvDK5tk7PsL0Fs+AMXRq5gzKdsP958eHu82d18T4LxVwlNvuYmTWE8diGCVPyV04EfK99DmZVkWjLEVUUboIGEbuhscuIqOlxT4bDRy+baPQRzBXPQUDExscxrhX8YZ9Zr06NIo6EEkPcn5igwooe00ip8XaEBwqr/k5WeQKpnYqi7LWkigwCpGF3MpaCe6mtbXVV2Jvq9FXyeLt1FSHR9HrQRPTrMfcR8rIg7cOvBt8D29TiXf6VpjkHRnuQC6TgZHn2rn0bqYd0tWFksAUUsQBavyed/lVVEtRCq+4f7c59aqKckr8jkYUrBiThhrWNXkBdnc7xK4Pd9MQjeIew3k1p6jyiSu/6b+AmbvD+d5l9nveC8dylP7ckXim3A5KKPiRrlEO2n++yDxFIHEyySZtwEygoFkPdcOsslVsvoDF+roQQ==","*CT12: Cadastrar um usuário informando um email já cadastrado - (motivo falha: email já utilizado)","*S01CT12","*${NOME}, marina","*${NOME} = marina","*${EMAIL_TESTE}, ${NOME}@emailteste.com","*${EMAIL_TESTE} = marina@emailteste.com","eNq1zDEOgkAQRuGrTDgAiqVBEoONFUaxm8SM7g8sYVkzs9p7Ni8mlzB51Ve8M8T5uaeE8JwkgTqNgTo/gUqhQdHtsnrLV4Mah15GcDPjoP4N/n4UQg7UqtxlGiIn2NL+dGSFxZc+YOwkCS90q8WJJY18WRd1W2zy0eKcVf+8lyup8h9vA1NM","*${BODY} = {\n    \"nome\": \"marina\",\n    \"email\": \"marina@emailteste.com\",\n    \"password\": \"teste\",\n    \"administrador\": \"true\"\n}","eNp9j01LxDAQhu/9FaGXXPphFTwUCi7iTVB0PcuYjG20ncRkWlkX/7tJ10VPm1ve5xlm3vu7x614wI8ZA4tWzH7sBmYX2roO6Bf0Ma80LvUcZvDGBpEJBzw8J/N/OCBo9KHby6c4WG56JJatkG7Hg6XSH1aE+ry6aKozWQi5UQodlzekrDbUJ7n/Mq4QGl9HYEwOrE5C4NxoFLCxVL8FS4leWyJUKUrGO6IrYTQL/jKOJ5TbncMT86tzi9TzkKymuZTfsc2L1btun4n4crIT5q3Ip1iVIC8OKU5gxr/4av1zrIiVstPRchDCp/U6iSs8AtCTIRPYg7Z+pX7GPEu7fwCxEoIo","*POST Response : url=https://serverest.dev/usuarios \n status=400, reason=Bad Request \n headers={'access-control-allow-origin': '*', 'x-dns-prefetch-control': 'off', 'x-frame-options': 'SAMEORIGIN', 'strict-transport-security': 'max-age=15552000; includeSubDomains', 'x-download-options': 'noopen', 'x-content-type-options': 'nosniff', 'x-xss-protection': '1; mode=block', 'x-moesif-transaction-id': '436be602-a38e-4b39-b6c2-02f1a6e18e1c', 'content-type': 'application/json; charset=utf-8', 'X-Cloud-Trace-Context': '931c3b15480b532485033f98c681b6f6', 'Date': 'Fri, 16 Jun 2023 00:06:12 GMT', 'Server': 'Google Frontend', 'Content-Length': '53'} \n body={\n    \"message\": \"Este email já está sendo usado\"\n} \n ","*{'message': 'Este email já está sendo usado'}","*E realizo novamente um cadastro com o mesmo email","eNpVkktu2zAQhvc5BeGNgMKsJctybBlatE5ipEiaIvai2xE5splKHJWPxEbQw/QsvVhJuQFSLbSZ738QM98etjv2iLYnbZGVzJu2OjjX23IysWie0aB1HyU+T7z1YBRZdsGsA+dtNUvTMTMIlnT1GWSw+ekDHYADgkRjq9cEhEBruSDtDLUc2pZeOBm1VzopWfIhGbPkyKW2vDfYoBOHNzaOqWnOQGOgQ069U6FnnGw/3V8/PN5ubr9GwDqjhOPOgA4vMY5bFN4od4poB0cOe6yyoiimaZqumNKi9RK3vr6iDlRwPLegF90SyPc5mqhHfZ7HYqhDzKnH/xmr1VvTo41PIYcizuM4W7GOJFZ1S+LHGeoIrWrOfWEAuZKRlQ3UTSbmvFgUl3yGiylfygx5XsAyFzNsRCajxfsqUQd93yoB0WnyFPaxYuIAxqKrvGv4Ikq+83VLXvKdAYF8HQ2OLmqLupmnRQ64XGbZJeYAMBd5Pc0Q8zqkRvEVuCHnxqgxy+bsi9dsmk5zlqZlOi+znG3udxHcDjcT0Q3RvkV2Y4aqQ+v1v9Z3qPfuMGTnya9wLzXJU/V6wcI36sK9hHWNSja6tg4Zhg217OnPbxZuK/xtMCPmLUgaXUTxXwh45R0="]);
</script>
<script type="text/javascript">
window.output["stats"] = [[{"elapsed":"00:00:06","fail":0,"label":"All Tests","pass":12,"skip":0}],[{"elapsed":"00:00:00","fail":0,"label":"S01CT01","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT02","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT03","pass":1,"skip":0},{"elapsed":"00:00:00","fail":0,"label":"S01CT04","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT05","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT06","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT07","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT08","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT09","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT10","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT11","pass":1,"skip":0},{"elapsed":"00:00:01","fail":0,"label":"S01CT12","pass":1,"skip":0}],[{"elapsed":"00:00:07","fail":0,"id":"s1","label":"Api Cadastrousuario","name":"Api Cadastrousuario","pass":12,"skip":0}]];
</script>
<script type="text/javascript">
window.output["errors"] = [];
</script>
<script type="text/javascript">
window.output["baseMillis"] = 1686873966713;
</script>
<script type="text/javascript">
window.output["generated"] = 6619;
</script>
<script type="text/javascript">
window.output["expand_keywords"] = null;
</script>
<script type="text/javascript">
window.settings = {"defaultLevel":"INFO","minLevel":"INFO","reportURL":"report.html","rpa":false,"splitLogBase":"log","title":""};
</script>
<title></title>
</head>
<body>
<div id="javascript-disabled">
  <h1>Opening Robot Framework log failed</h1>
  <ul>
    <li>Verify that you have <b>JavaScript enabled</b> in your browser.</li>
    <li>Make sure you are using a <b>modern enough browser</b>. If using Internet Explorer, version 11 is required.</li>
    <li>Check are there messages in your browser's <b>JavaScript error log</b>. Please report the problem if you suspect you have encountered a bug.</li>
  </ul>
</div>
<script type="text/javascript">removeJavaScriptDisabledWarning();</script>

<div id="header"></div>
<div id="statistics-container"></div>

<script type="text/javascript">
$(document).ready(function() {
    try {
        var topsuite = window.testdata.suite();
    } catch (error) {
        addJavaScriptDisabledWarning(error);
        return;
    }
    initLayout(topsuite.name, 'Log');
    addStatistics();
    addErrors();
    addExecutionLog(topsuite);
    addLogLevelSelector(window.settings['minLevel'], window.settings['defaultLevel']);
    if (window.location.hash) {
        makeElementVisible(window.location.hash.substring(1));
    } else {
        expandSuite(topsuite);
    }
    setTimeout(function () { loadAndExpandElementIds(window.output['expand_keywords']); }, 100);
});

function addLogLevelSelector(minLevel, defaultLevel) {
    var controller = LogLevelController(minLevel, defaultLevel);
    if (controller.showLogLevelSelector()) {
        var selector = $.tmpl('logLevelSelectorTemplate', controller);
        selector.find('select').val(controller.defaultLogLevel());
        selector.appendTo($('#top-right-header'));
        $('#report-or-log-link').find('a').css({'border-bottom-left-radius': '0'});
        setMessageVisibility(controller.defaultLogLevel());
    }
}

function addErrors() {
    var errors = window.testdata.errorIterator();
    if (errors.hasNext()) {
        $.tmpl('errorHeaderTemplate').appendTo($('body'));
        drawErrorsRecursively(errors, $('#errors'));
    }
}

function drawErrorsRecursively(errors, target) {
    var elements = popFromIterator(errors, 10);
    $.tmpl('errorTemplate', elements).appendTo(target);
    if (errors.hasNext())
        setTimeout(function () { drawErrorsRecursively(errors, target); }, 0);
    else {
        // Errors may have moved scroll position. Resetting location re-scrolls.
        if (window.location.hash)
            window.location.replace(window.location.hash);
        highlightLinkTarget();
    }
}

function highlightLinkTarget() {
    if (window.location.hash) {
        var target = $(window.location.hash);
        highlight(target);
    }
}

function highlight(element, color) {
    if (color === undefined)
        color = 242;
    if (color < 255) {
        element.css({'background-color': 'rgb('+color+','+color+','+color+')'});
        setTimeout(function () { highlight(element, color+1); }, 300);
    } else {
        element.css({'background-color': ''});
    }
}

function popFromIterator(iterator, upTo) {
    var result = [];
    while (iterator.hasNext() > 0 && result.length < upTo)
        result.push(iterator.next());
    return result;
}

function makeElementVisible(id) {
    window.testdata.ensureLoaded(id, function (ids) {
        util.map(ids, expandElementWithId);
        if (ids.length) {
            expandFailed(window.testdata.findLoaded(util.last(ids)));
            window.location.hash = id;
            document.getElementById(id).scrollIntoView();
            highlightLinkTarget();
        }
    });
}

function addExecutionLog(main) {
    $('body').append($(testOrTask('<h2>{Test} Execution Log</h2>')),
                     $.tmpl('suiteTemplate', main));
}
</script>

<script type="text/x-jquery-tmpl" id="totalStatisticsRowTemplate">
  <tr class="row-${$item.index}">
    <td class="stats-col-name">
      <div class="stat-name">
        <span>{{html label}}</span>
      </div>
    </td>
    {{tmpl($data) 'statColumnsTemplate'}}
  </tr>
</script>

<script type="text/x-jquery-tmpl" id="tagStatisticsRowTemplate">
  <tr class="row-${$item.index}">
    <td class="stats-col-name" title="{{html doc}}">
      <div class="stat-name">
        <span>{{html label}}</span>
        {{if info}}(${info}){{/if}}
      </div>
      <div class="tag-links">
        {{each links}}
        <span>[<a href="{{html $value.url}}" title="{{html $value.url}}">{{html $value.title}}</a>]</span>
        {{/each}}
      </div>
    </td>
    {{tmpl($data) 'statColumnsTemplate'}}
  </tr>
</script>

<script type="text/x-jquery-tmpl" id="suiteStatisticsRowTemplate">
  <tr onclick="makeElementVisible('${id}')" class="row-${$item.index}">
    <td class="stats-col-name" title="{{html label}}">
      <div class="stat-name">
        <a href="#${id}"><span class="parent-name">{{html formatParentName}}</span>{{html name}}</a>
      </div>
    </td>
    {{tmpl($data) 'statColumnsTemplate'}}
  </tr>
</script>

<script type="text/x-jquery-tmpl" id="errorHeaderTemplate">
  <h2>{{= testOrTask('{Test}')}} Execution Errors</h2>
  <table id="errors"></table>
</script>

<script type="text/x-jquery-tmpl" id="errorTemplate">
  <tr id="${id}" class="message-row">
    <td class="error-time">
      {{if link}}
      <a onclick="makeElementVisible('${link}')" href="#${link}" title="Link to details">${date} ${time}</a>
      {{else}}
      ${date} ${time}
      {{/if}}
    </td>
    <td class="${level.toLowerCase()} level"><span class="label ${level.toLowerCase()}">${level}</span></td>
    <td class="message">{{html text}}</td>
    <td class="select-message" onclick="javascript:selectMessage('${id}')" title="Select message text">
      <div></div>
    </td>
  </tr>
</script>

<script type="text/x-jquery-tmpl" id="suiteTemplate">
  <div id="${id}" class="suite">
    <div class="element-header closed" onclick="toggleSuite('${id}')">
      <div class="element-header-left" title="SUITE  {{html name}}  [${status}]">
        <span class="elapsed" title="Elapsed time">${times.elapsedTime}</span>
        <span class="label ${status.toLowerCase()}">SUITE</span>
        <span class="name">{{html name}}</span>
      </div>
      <div class="element-header-right" onclick="stopPropagation(event)" title="">
        <a class="expand" title="Expand all" href="javascript:expandAll('${id}')"></a>
        <a class="collapse" title="Collapse all" href="javascript:collapseAll('${id}')"></a>
        <a class="link" title="Link to this suite" href="#${id}" onclick="makeElementVisible('${id}')"></a>
      </div>
      <div class="element-header-toggle" title="Toggle visibility"></div>
    </div>
    <div class="children">
      <table class="metadata">
        <tr>
          <th>Full Name:</th>
          <td>{{html fullName}}</td>
        </tr>
        {{if doc()}}
        <tr>
          <th>Documentation:</th>
          <td class="doc">{{html doc()}}</td>
        </tr>
        {{/if}}
        {{each metadata}}
        <tr>
          <th>{{html $value[0]}}:</th>
          <td class="doc">{{html $value[1]}}</td>
        </tr>
        {{/each}}
        {{if source}}
        <tr>
          <th>Source:</th>
          {{if relativeSource}}
          <td><a href="${relativeSource}">{{html source}}</a></td>
          {{else}}
          <td>{{html source}}</td>
          {{/if}}
        </tr>
        {{/if}}
        <tr>
          <th>Start / End / Elapsed:</th>
          <td>${times.startTime} / ${times.endTime} / ${times.elapsedTime}</td>
        </tr>
        <tr>
          <th>Status:</th>
          <td>{{tmpl($data) 'suiteStatusMessageTemplate'}}</td>
        </tr>
        {{if message()}}
        <tr>
          <th>Message:</th>
          <td class="message">{{html message()}}</td>
        </tr>
        {{/if}}
      </table>
    </div>
  </div>
</script>

<script type="text/x-jquery-tmpl" id="testTemplate">
  <div id="${id}" class="test">
    <div class="element-header closed" onclick="toggleTest('${id}')">
      <div class="element-header-left" title="{{= testOrTask('{TEST}')}}  {{html name}}  [${status}]">
        <span class="elapsed" title="Elapsed time">${times.elapsedTime}</span>
        <span class="label ${status.toLowerCase()}">{{= testOrTask('{TEST}')}}</span>
        <span class="name">{{html name}}</span>
      </div>
      <div class="element-header-right" onclick="stopPropagation(event)" title="">
        <a class="expand" title="Expand all" href="javascript:expandAll('${id}')"></a>
        <a class="collapse" title="Collapse all" href="javascript:collapseAll('${id}')"></a>
        <a class="link" title="Link to this {{= testOrTask('{test}')}}" href="#${id}" onclick="makeElementVisible('${id}')"></a>
      </div>
      <div class="element-header-toggle" title="Toggle visibility"></div>
    </div>
    <div class="children">
      <table class="metadata">
        <tr>
          <th>Full Name:</th>
          <td>{{html fullName}}</td>
        </tr>
        {{if doc()}}
        <tr>
          <th>Documentation:</th>
          <td class="doc">{{html doc()}}</td>
        </tr>
        {{/if}}
        {{if tags.length}}
        <tr>
          <th>Tags:</th>
          <td>{{html tags.join(', ')}}</td>
        </tr>
        {{/if}}
        {{if timeout}}
        <tr>
          <th>Timeout:</th>
          <td>{{html timeout}}</td>
        </tr>
        {{/if}}
        <tr>
          <th>Start / End / Elapsed:</th>
          <td>${times.startTime} / ${times.endTime} / ${times.elapsedTime}</td>
        </tr>
        <tr>
          <th>Status:</th>
          <td><span class="label ${status.toLowerCase()}">${status}</span></td>
        </tr>
        {{if message()}}
        <tr>
          <th>Message:</th>
          <td class="message">{{html message()}}</td>
        </tr>
        {{/if}}
      </table>
    </div>
  </div>
</script>

<script type="text/x-jquery-tmpl" id="keywordTemplate">
  <div id="${id}" class="keyword">
    <div class="element-header closed" onclick="toggleKeyword('${id}')">
      <div class="element-header-left" title="${type}  {{if name}}{{html fullName}}  {{/if}}[${status}]">
        <span class="elapsed" title="Elapsed time">${times.elapsedTime}</span>
        <span class="label ${status.toLowerCase()}">${type}</span>
        <span>{{html assign}}</span>
        <span class="name"><span class="parent-name">{{html libname}}{{if libname}} . {{/if}}</span>{{html name}}</span>
        <span class="arg">{{html arguments}}</span>
      </div>
      <div class="element-header-right" onclick="stopPropagation(event)">
        <a class="expand" title="Expand all" href="javascript:expandAll('${id}')"></a>
        <a class="collapse" title="Collapse all" href="javascript:collapseAll('${id}')"></a>
        <a class="link" title="Link to this item" href="#${id}" onclick="makeElementVisible('${id}')"></a>
      </div>
      <div class="element-header-toggle" title="Toggle visibility"></div>
    </div>
    <div class="children">
      <table class="metadata keyword-metadata">
        {{if doc()}}
        <tr>
          <th>Documentation:</th>
          <td class="doc">{{html doc()}}</td>
        </tr>
        {{/if}}
        {{if tags}}
        <tr>
          <th>Tags:</th>
          <td>{{html tags}}</td>
        </tr>
        {{/if}}
        {{if timeout}}
        <tr>
          <th>Timeout:</th>
          <td>{{html timeout}}</td>
        </tr>
        {{/if}}
        <tr>
          <th>Start / End / Elapsed:</th>
          <td>${times.startTime} / ${times.endTime} / ${times.elapsedTime}</td>
        </tr>
      </table>
    </div>
  </div>
</script>

<script type="text/x-jquery-tmpl" id="messageTemplate">
  <table id="${id}" class="messages ${level.toLowerCase()}-message">
    <tr class="message-row">
      <td class="time">${time}</td>
      <td class="${level.toLowerCase()} level"><span class="label ${level.toLowerCase()}">${level}</span></td>
      <td class="message">{{html text}}</td>
      <td class="select-message" onclick="javascript:selectMessage('${id}')" title="Select message text">
        <div></div>
      </td>
    </tr>
  </table>
</script>

<script type="text/x-jquery-tmpl" id="logLevelSelectorTemplate">
  <div id="log-level-selector">
  Log level:
    <select onchange="logLevelSelected(this.options[selectedIndex].value)">
      <option value="2">INFO</option>
      <option value="1">DEBUG</option>
      {{if showTrace()}}<option value="0">TRACE</option>{{/if}}
    </select>
  </div>
</script>

</body>
</html>
<br/>
<br/>
<strong>Log API LISTA USUARIO

<br/>
<br/>
<strong>Log API LOGIN

<br/>
<br/>
