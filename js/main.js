// let post = document.querySelector('.post')

// function openOverlay(content){

// }

// При нажатии на любой .post — показать overlay
// document.querySelectorAll(".post").forEach(post => {
//     post.addEventListener("click", () => {
//         const img = post.querySelector(".post-image").src;
//         const username = post.querySelector(".post-username").innerText;
//         const caption = post.querySelector(".post-caption").innerText;

//         document.getElementById("overlay-img").src = img;
//         document.getElementById("overlay-username").innerText = username;
//         document.getElementById("overlay-caption").innerText = caption;

//         document.getElementById("post-overlay").style.display = "flex";
//     });
// });

// // Закрытие при клике вне блока
// document.getElementById("post-overlay").addEventListener("click", () => {
//     document.getElementById("post-overlay").style.display = "none";
// });

// // Предотвратить закрытие при клике внутри контента
// document.querySelector(".overlay-content").addEventListener("click", (e) => {
//     e.stopPropagation();
// });

// ////////////////////////////////////
document.querySelectorAll(".post").forEach(post => {
    post.addEventListener("click", () => {
        const img = post.querySelector(".post-image").src;
        const username = post.querySelector(".post-username").innerText;
        const caption = post.querySelector(".post-caption").innerText;

        document.getElementById("overlay-img").src = img;
        document.getElementById("overlay-username").innerText = username;
        document.getElementById("overlay-caption").innerText = caption;

        document.getElementById("post-overlay").style.display = "flex";
        document.body.style.overflow = "hidden"; // 🚫 запрет прокрутки
    });
});

document.getElementById("post-overlay").addEventListener("click", () => {
    document.getElementById("post-overlay").style.display = "none";
    document.body.style.overflow = ""; // ✅ вернуть прокрутку
});

document.querySelector(".overlay-content").addEventListener("click", (e) => {
    e.stopPropagation();
});

function toggleSidebar(){
    document.querySelector('.sidebar').classList.toggle('show')
}