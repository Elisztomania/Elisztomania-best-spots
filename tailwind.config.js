module.exports = {
  purge: [],
  darkMode: false, // or 'media' or 'class'
  theme: {
    extend: {
      colors: {
        'golden' : '#FFD27A',
      },
      boxShadow: {
        'golden': '10px 10px 0 0 rgba(255,210,122, 0.8)',
      },
      height: {
        '100': '27rem',
        '104': '31rem',
        '106': '36rem',
        '110': '38rem',
        '120': '42rem',
        '140': '48.4375rem',
      },
      width: {
        '100': '27rem',
        '104': '31rem',
        '105': '35rem',
        '110': '38rem',
        '120': '42rem',
      },
      fontSize: {
        'xxs': '0.5rem',
      },
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
