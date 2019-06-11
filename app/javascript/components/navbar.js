const initUpdateNavbarOnScroll = () => {
  const navbar = document.querySelector('.navbar-fixed');
  if (navbar) {
    window.addEventListener('scroll', () => {
      if (window.scrollY >= 200) {
        navbar.classList.add('navbar-fixed-white');
      } else {
        navbar.classList.remove('navbar-fixed-white');
      }
    });
  }
}

export { initUpdateNavbarOnScroll };
