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
        '68': '17rem',
        '100': '27rem',
        '102': '28.5rem',
        '104': '31rem',
        '106': '36rem',
        '110': '39.5rem',
        '120': '42rem',
        '122': '43rem',
        '124': '44rem',
        '140': '48.063rem',
        '146': '50rem',
        '150': '59.25rem',
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
      animation: {
        'spin-slow': 'spin 10s linear infinite',
      }
    },
  },
  variants: {
    extend: {},
  },
  plugins: [],
};
