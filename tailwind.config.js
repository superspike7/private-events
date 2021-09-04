module.exports = {
  mode: 'jit',
  purge: [
    './app/**/*.html.erb',
    './app/helpers/**/*.rb',
    './app/assets/javascripts/**/*.js'
  ],
  darkMode: false, // or 'media' or 'class'
  plugins: [
    require('daisyui')
  ],
}
