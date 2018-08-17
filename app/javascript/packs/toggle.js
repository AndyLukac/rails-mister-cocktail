const checkbox = document.querySelector('ing');
const input = document.getElementById('dose');
checkbox.addEventListener('click', function () {
    if (input.style.display != 'block') {
        input.style.display = 'block';
    } else {
        input.style.display = '';
    }
});
