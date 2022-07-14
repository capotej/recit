# recit

personal productivity system backed by [recfiles](https://en.wikipedia.org/wiki/Recfiles)

# dependencies

* [recutils](https://www.gnu.org/software/recutils/)
* uuidgen
* any perl

# workflows

You can use `recit` to track things like:

* What needs to be done today?
* What did you do yesterday?
* What did you talk about in that 1:1 a few weeks ago?
* Where did you leave off on that project you started last year?
* What did you do last year?

# usage

`recit setup` gets you started

## add some entries

`recit add-entry` opens `$EDITOR` to let you add an entry at that moment in time, which is the same
as `recit add-entry now` or `recit add-entry today`. If the notes are short, you can just 
pass it as a 3rd argument, like `recit add-entry now "this is the entry"`

You can also add entries in the future by running `recit add-entry tomorrow` or any date like `recit add-entry 2022-07-22`.


## view entries

`recit today` or `recit tomorrow` (also `recit yesterday`)

## edit entries

you'll notice that `recit add-entry` returns a UUID, you can pass this UUID to `recit edit-entry` 
to edit the entry