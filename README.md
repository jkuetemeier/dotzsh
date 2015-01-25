dotzsh - My Zsh configuration
====================================

My Zsh configuration is based on [sorin-ionescu/prezto](https://github.com/sorin-ionescu/prezto)
with some enhancements (at last for me) and configuration customizations.

Installation
------------

This configuration will work with any recent release of Zsh, but the minimum required
version is 4.3.17.

  1. Check for and launch a zsh:

        zsh

  2. Fetch install-script and excute:

        curl https://raw.githubusercontent.com/jkuetemeier/dotzsh/master/install.zsh | zsh

  3. Open a new Zsh terminal window or tab. Test around.

  4. Set Zsh as your default shell:

        chsh -s /bin/zsh


### Troubleshooting

If you are not able to find certain commands after switching to my configuration,
modify the `PATH` variable in *~/.zprofile* then open a new Zsh terminal
window or tab.

Updating
--------

Pull the latest changes and update submodules.

    git pull && git submodule update --init --recursive

Customization
-------------

The project is managed via [Git][3]. It is highly recommended that you fork this
project; so, that you can commit your changes and push them to [GitHub][4] to
not lose them. If you do not know how to use Git, follow this [tutorial][5] and
bookmark this [reference][6].

Resources
---------

The [Zsh Reference Card][7] and the [zsh-lovers][8] man page are indispensable.

License
-------

(The MIT License)

Copyright (c) 2009-2011 Robby Russell and contributors.
Copyright (c) 2011-2014 Sorin Ionescu and contributors.

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
of the Software, and to permit persons to whom the Software is furnished to do
so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

[1]: http://www.zsh.org
[2]: http://i.imgur.com/AzjmpwM.png "sorin theme"
[3]: http://git-scm.com
[4]: https://github.com
[5]: http://gitimmersion.com
[6]: http://gitref.org
[7]: http://www.bash2zsh.com/zsh_refcard/refcard.pdf
[8]: http://grml.org/zsh/zsh-lovers.html
