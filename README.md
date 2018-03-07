# cocoapods-unchanged-source

A small CocoaPods plugin for assuming specs source repos are always out
of date. This is a workaround for this issue:
https://github.com/CocoaPods/CocoaPods/issues/7447

If you're using the official specs repo, this isn't recommended, since
the reason this check exists is to decreases the load on GitHub, and
avoids unnecessary `git pull`s. But if you're using a custom specs repo,
where the overhead of just doing a `git pull` isn't significant, this
can be useful.

## Installation

```sh
$ gem install cocoapods-unchanged-source
```

## Usage

In your `Podfile` add:

```ruby
plugin 'cocoapods-unchanged-source'
```
