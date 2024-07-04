const container = document.getElementById('container');
const registerBtn = document.getElementById('AdminLogin');
const loginBtn = document.getElementById('EditeProfile');

registerBtn.addEventListener('click', () => {
    container.classList.add("active");
});

loginBtn.addEventListener('click', () => {
    container.classList.remove("active");
});