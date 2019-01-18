# Sapling

This repo lets a user try out `elm` without installing anything to
or changing their local environment. Credit is mostly due to the
official [Introduction to Elm](https://guide.elm-lang.org).

## Starting
To run the demo app, move to the root directory and run
  * `npm start`
  * `open localhost:8000/src/Main.elm`

Once you make changes to the `src/Main.elm` file, you can reload in
your browser to see the results. If there are any type errors, you
will see them in the browser.

## Optimization 
Elm can generate *really* small bundles, about 8K (gzipped, minified)
for a "hello world" app, and not much more (about 30K?) for a modest
sized app (about 3,000 lines of code) with lots of libraries
( e.g.`elm/browser`, `elm/core`, `elm/html`, `elm/http`, `elm/json`,
`elm/regex`, `elm/time`, `elm/url`, `elm-explorations/test`,
`justinmimbs/time-extra`, `justinmimbs/timezone-data`,
`krisajenkins/elm-exts`, `rtfeldman/elm-css`, `truqu/elm-base64`)

To see this in action, run `npm run prod`. Run your favorite local
server and view the optimized-index.html file. For example, if you
have python3 installed, run `python3 -m http.server 9001` from the
root directory of the repo and view `localhost:9001/optimized-index.html`
in your browser.

The bundling script is based on a script by Evan Czaplicki.
See [Small Assets without the Headache](https://elm-lang.org/blog/small-assets-without-the-headache)
and [How to optimize Elm code](https://elm-lang.org/0.19.0/optimize)

## Ideas for experimenting
  * Add a static `h1` element
  * Add a simple counter with increment and decrementing buttons
  * Add another field from the JSON api to the view.
  * Add a style library, e.g. [elm-css](https://github.com/rtfeldman/elm-css) or [elm-ui](https://github.com/mdgriffith/elm-ui)
  * Add tests (consider [elm-test](https://github.com/elm-explorations/test))

## Elm and React Comparison

```
Concern         | React             | Elm
----------------|-------------------|--------
View            | React (JSX)       | elm/html (Elm)
State           | Redux/local state | TEA
HTTP            | Axios             | elm/http
Effects         | Sagas/async       | Commands/Subscriptions
3rd party       | ES6 import        | Ports/Web Components
Broswer APIs    | DOM API           | Ports/Web Components
Immutability    | Immutable         | Elm
Types           | TypeScript        | Elm
Tests           | Jest              | elm-community/elm-test
Error Tracking  | TrackJS           | N/A
Client Routing  | React Router      | elm/browser
Date wrangling  | Moment            | elm/time
Packages        | yarn/npm          | package.elm-lang.org
Build tool      | Webpack           | Elm Reactor or Webpack
Formatter       | prettier/eslint   | elm-format
Linter          | eslint            | elm-format?
Versioning      | semver            | enforced semver
```

Also good to think about, React was written in SML. It was rewritten in JSX because people thought it was weird. ReasonML/ReasonReact is ML like.

## Notable elm talks
###### The Life of a File
  Why big files are ok in Elm.
  https://www.youtube.com/watch?v=XpDsk374LDE

###### What is Success?
  Philosophy of Elm, process of Elm language design. Elm <3 Python, https://www.youtube.com/watch?v=uGlzRt-FYto

###### Let's be Mainstream
  Elm should be highly learnable and easy to use, https://www.youtube.com/watch?v=oYk8CKH7OhE

###### Making Impossible States Impossible
  Leveraging the type system to write sound code, https://www.youtube.com/watch?v=oYk8CKH7OhE

###### Convergent Evolution
  Comparison by Evan of Elm and React and their development https://www.youtube.com/watch?v=jl1tGiUiTtI

###### The Hard Parts of Open Source
  Thoughts by Evan on ideal versus real-life open source communities, https://www.youtube.com/watch?v=o_4EX4dPppA
