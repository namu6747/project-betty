const modal = document.getElementById("modal")

function modalOn() {
    modal.style.display = "flex"
}

function isModalOn() {
    return modal.style.display === "flex"
}

function modalOff() {
    modal.style.display = "none"
}

const btnModal = document.getElementById("modal_btn")
btnModal.addEventListener("click", e => {
    modalOn()
})

const closeBtn = modal.querySelector(".close-area" || "#cancel-button")
closeBtn.addEventListener("click", e => {
    modalOff()
})


// esc 누르면 modal 종료
window.addEventListener("keyup", e => {
    if(isModalOn() && e.key === "Escape") {
        modalOff()
    }
})

document.querySelector('.can-btn').addEventListener('click', modalOff);
             