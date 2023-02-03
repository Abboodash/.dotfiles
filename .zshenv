export GTK_IM_MODULE='fcitx'
export QT_IM_MODULE='fcitx'
export SDL_IM_MODULE='fcitx'
export XMODIFIERS='@im=fcitx'
export GTK_THEME='Aesthetic-Night'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/.cargo/bin/rustc"
PATH="/home/abboodash/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/abboodash/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/abboodash/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/abboodash/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/abboodash/perl5"; export PERL_MM_OPT;


. "$HOME/.cargo/env"
