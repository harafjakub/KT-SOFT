const themeToggleBtn = document.querySelector('.toggle-theme');
const body = document.body;

if (localStorage.getItem('theme') === 'dark') {
  body.classList.add('dark');
}

themeToggleBtn.addEventListener('click', () => {
  body.classList.toggle('dark');

  if (body.classList.contains('dark')) {
    localStorage.setItem('theme', 'dark');
  } else {
    localStorage.setItem('theme', 'light');
  }
});