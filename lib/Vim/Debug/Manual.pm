# ABSTRACT: Integrate the Perl debugger with Vim

=head1 What is VimDebug?

VimDebug integrates the Perl debugger with Vim, allowing developers to
visually step through their code, examine variables, set or clear
breakpoints, etc.

VimDebug is known to work under Unix/Ubuntu/OSX. It requires Perl 5.FIXME or
later and some CPAN modules may need to be installed.  It also requires Vim
7.FIXME or later that was built with the +signs and +perl extensions.

=head1 How do I install VimDebug?

VimDebug has a Perl component and a Vim component. The Vim component
happens to be supplied with the Perl component.

The Perl component, Vim::Debug, can be obtained from CPAN. A simple
way to install it is to use L<cpanminus's|https://metacpan.org/module/App::cpanminus> C<cpanm>
program. First, install C<cpanminus>:

    curl -L http://cpanmin.us | perl - --sudo App::cpanminus

Then, install VimDebug's Perl files:

    cpanm Vim::Debug

To install the Vim component, execute the following program,
which was installed with the Perl component:

    vimdebug-install -d ~/.vim

You may want to replace C<~/.vim> by some other directory that your
Vim recognizes as a runtimepath directory. See Vim's C<:help
'runtimepath'> for more information.

Finally, launch Vim and install and read the Vim help file, which
describes how to use VimDebug:

    :helptags ~/.vim/doc
    :help VimDebug

Make sure that the directory where that C<doc> directory resides is in
your Vim runtimepath, else Vim won't find its help information even if
it manages to build the help index.

=head1 Improving VimDebug

VimDebug is on github: https://github.com/kablamo/VimDebug.git

To do development work on VimDebug, clone its git repo and read
./documentation/DEVELOPER.

In principle, the VimDebug code can be extended to handle other
debuggers, like the one for Ruby or Python, but that remains to be
done.

Please note that this code is in beta.

=cut

package Vim::Debug::Manual;

# VERSION

