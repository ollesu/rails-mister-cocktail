import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed', {
    strings: ["Cocktail ideas for your next gathering"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicBannerText };

