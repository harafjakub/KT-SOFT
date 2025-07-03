const skipLink = document.querySelector('.skip-link');
const mainContent = document.getElementById('main');

skipLink.addEventListener('click', (e) => {
  e.preventDefault();

  mainContent.setAttribute('tabindex', '-1');

  mainContent.scrollIntoView();

  mainContent.focus();

  window.location.hash = 'main';
});