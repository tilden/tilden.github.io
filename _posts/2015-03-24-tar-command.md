---
layout: post
title:  "Why it it so difficult to write valid &ldquo;tar&rdquo; commands from memory?"
# title:  "The importance of convention in design: why the Unix tar utility is so  difficult to use"
date:   2015-03-24 16:05:21
thumbnail: "/images/posts/tar/post_banner.png"
---

![XKCD Comic: tar](http://imgs.xkcd.com/comics/tar.png)

<div class="caption">via <a href="https://xkcd.com/1168/">XKCD</a></div>

The `tar` utility, used to consolidate multiple files or directories into a single
archive file, is ubiquitous among Unix-like operating systems; whenever source
code is made available for download, it is almost always archived using tar.
Nonetheless, the `tar` utility remains notorious for being difficult to use. Why is that?

The answer, I suspect, lies in the order of the command's arguments. To illustrate, we'll create a tar file
called "destination.tar" containing 3 files. To create this file, the  `tar` command
takes the following form:

    tar cf destination.tar file1.txt file2.txt file3.txt

That's not *so* bad, right? However, the command's confusing nature doesn't necessarily
relate to its inherent properties -- rather, it relates to how it *differs* from
*other* common Unix commands. Every other Unix command that specifies
one or more source files with a destination has them ordered the other way around: with the source file(s) followed by
the destination.

For example, to copy several files to a directory, you would use the `cp` command like this:

    cp file1.txt file2.txt file3.txt destination/

Similarly to *move* the files instead of copying them, the `mv` command is used in the same way:

    mv file1.txt file2.txt file3.txt destination/

Other commands that also take on this form include...

* [`ln`](http://www.gnu.org/software/coreutils/manual/html_node/ln-invocation.html) (used to create symbolic links, among other things)
* [`rsync`](http://en.wikipedia.org/wiki/Rsync#Uses) (used to copy large amounts of files to/from a remote server)
* [`scp`](http://en.wikipedia.org/wiki/Secure_copy#SCP_program) (used to copy files over SSH)

### How it happened

To determine why `tar` takes this unusual form, we must examine the history of the command.
The command was initially released with Version 7 Unix in 1979[^unixv7] as a utility
which "saves and restores files on magtape"[^tar_original_manpage]. *(`tar` is actually short for <b>TA</b>pe a<b>R</b>chive.)* As such, the default form of `tar`, without any arguments, accepts a list of source files
and writes them to your *magnetic tape device*[^tar_original_manpage]. (Your computer *does* have one of those,
right?)

Naturally, `tar` is never really used in this way anymore. Instead, the `c` and `f` flags are used, which
cause the command to `c`reate a new `f`ile for use as the archive. (Tellingly, every example command listed
in the manual for the current version `tar` contains the `f` flag [^gnutar].)

Going back to our original example command:

    tar cf destination.tar file1.txt file2.txt file3.txt

We can now see why "destination.tar" must be specified first:
the filename is actually part of the `f` flag, and therefore must directly follow it.

### Implications for design

The `tar` command is not difficult to remember because it is inherently the wrong order, but because it fails to maintain **consistency** with other, similar commands. When designing any user interface (not just command line ones), it's important to maintain a sense of consistency -- failing to do so will, as we see here, often result in unexpected behavior, which in turn leads to frustration.

[^tar_original_manpage]: ["tar – tape archiver". Unix Programmer’s Manual, Seventh Ed. Vol 1, Jan 1979, pp179-180.]({{ site.url }}/files/posts/unix_v7_manual_tar.pdf) Retrieved from [http://cm.bell-labs.com/7thEdMan/bswv7.html](http://cm.bell-labs.com/7thEdMan/bswv7.html).
[^unixv7]: [Version 7 Unix: Wikipedia](http://en.wikipedia.org/wiki/Version_7_Unix#New_features_in_Version_7)
[^gnutar]: [tar - The GNU version of the tar archiving utility](http://linuxcommand.org/man_pages/tar1.html)
