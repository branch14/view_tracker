ViewTracker
===========

ViewTracker tracks the views which gets rendered by rails.

    gem 'view_tracker'

On the controller it provides an instance variable `@render_options`,
which holds the normalized args passed to render.

Additionally it provides the helper methods `view_name`,
`main_template`, and `display_main_template`, which return the naively
guessed template, the actual template and resp. a combination of both.

Extracted from work at [Panter llc](http://panter.ch).

This project uses MIT-LICENSE.