Git Utils
=========

tickets
-------

### Flags

* `--from / -f` : Default to the latest annotated tag on master.
* `--to / -t` : Default to master.
* `--alias / -a` : Which git log alias to use. Defaults to `log`.
* `--oneline` : Simple format of commit log to only use one line.
* `--regex` : Change the regex used to find ticket numbers.

### Examples

* `git-tickets --alias lg` : Will use `git lg` instead of `git log`
* `git-tickets --oneline` : Will format each result as a single line.
* `git-tickets --from basebranch --to featurebranch` : Will return ticket numbers which would be merged into `basebranch` if `featurebranch` was merged in.
