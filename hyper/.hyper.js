"use strict";
// Future versions of Hyper may add additional config options,
// which will not automatically be merged into this file.
// See https://hyper.is#cfg for all currently supported options.

module.exports = {
  config: {
    updateChannel: 'stable',
    fontSize: 15,
    fontFamily: "FiraCode Nerd Font",
    fontWeight: 'normal',
    fontWeightBold: 'bold',
    lineHeight: 1,
    letterSpacing: 0,
    cursorColor: 'rgba(248,28,229,0.8)',
    cursorAccentColor: '#000',
    cursorShape: 'BLOCK',
    cursorBlink: false,
    foregroundColor: '#fff',
    selectionColor: 'rgba(248,28,229,0.3)',
    borderColor: '#333',
    padding: '15px 20px',
    css: `
        .terms_terms {
            background: url('file:///Users/disornthitikornkovit/Downloads/ayano-bg.png') center;
            background-size: cover;
        }
        .terms_termGroup {
            background: rgba(0,0,0,0.5) !important
        }
    `,
    
    // Disable WebGL for better transparency support
    webGLRenderer: false,

    // Other settings...
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false,
    defaultSSHApp: true,
    quickEdit: false,
    macOptionSelectionMode: 'vertical',
    screenReaderMode: false,
    preserveCWD: true,
  },

  plugins: ['hyper-transparent'],  // Ensure this plugin is installed for transparency

  localPlugins: [],
  keymaps: {
    'editor:moveLeft': 'alt+left',
  },
};
