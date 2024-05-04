const { execSync } = require('child_process');

function getUltimateTurboModalPath() {
  const path = execSync('bundle show ultimate_turbo_modal').toString().trim();
  return `${path}/**/*.{erb,html,rb}`;
}

module.exports = {
  content: [
    './public/*.html',
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*.{erb,haml,html,slim}',
    getUltimateTurboModalPath()
  ],
  theme: {
    extend: {
      colors: {
        'brown': '#7C3F00',
      }
    },
  }
}
