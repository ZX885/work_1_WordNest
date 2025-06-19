const form = document.getElementById('profileForm');
const progressFill = document.getElementById('progressFill');
const preview = document.getElementById('profilePreview');

form.addEventListener('input', updateProgress);
form.photo.addEventListener('change', e => {
    const file = e.target.files[0];
    if (file) preview.src = URL.createObjectURL(file);
    updateProgress();
});

function updateProgress() {
    const fields = ['fname', 'lname', 'gender', 'age', 'photo'];
    let filled = 0;
    fields.forEach(id => {
        const el = form[id];
        if (el && ((el.type === 'file' && el.files.length) || (el.value && el.value.trim() !== ''))) {
            filled++;
        }
    });
    const percent = (filled / fields.length) * 100;
    progressFill.style.width = percent + '%';
}

function saveProfile() {
    ['fname', 'lname', 'gender', 'age'].forEach(id => {
        localStorage.setItem(id, form[id].value);
    });
    alert("Profile saved!");
}

// Restore saved data
window.addEventListener('DOMContentLoaded', () => {
    ['fname', 'lname', 'gender', 'age'].forEach(id => {
        if (localStorage.getItem(id)) {
            form[id].value = localStorage.getItem(id);
        }
    });
    updateProgress();
});