## DOMWeigher -- CLI tool and a gem to find the heavy DOM nodes

```bash
gem install domweigher
```

```none
$ domweigher
usage:  domweigher [--mult <n>] <file.htm>

$ domweigher file.htm
468629 html
456568  body.inner-page-winter
121618   div
121532    svg
329049   div.wrapper
288929    header
283185     div.header-bottom
283122      div.container
283055       nav.main-nav
282218        ul.main-nav__list
 51552         li.main-nav__item
 51373          div.main-nav-hide
 51302           div.container
 51227            div.main-nav-submenu
```

Prints nodes until they weigh less than the whole HTML document weight divided by 10.  
Divisor is configurabl via optional CLI arg `--mult`.  
An SVG node is another stop.
