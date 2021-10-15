let ButtonsData = [];
let Buttons = [];
let Button = [];

window.addEventListener("message", (event) => {
    if (event.data.type === "open_context") {
        CreateContext(event.data.data)
    };
});

window.addEventListener("click", (event) => {
    let $target = $(event.target);
    if ($target.closest(".btn").length && $(".btn").is(":visible")) {
        let id = event.target.id;
        if (!Button[id]) return 
        OnClick(id);
    }
});

window.addEventListener("keyup", (event) => {
    switch(event.which) {
        case 8:
            CancelContext();
            break;
        case 27:
            CancelContext();
        return;
    }
});

function CreateContext(data) {
    ButtonsData = data;
    for (let i = 0; i < ButtonsData.length; i++) {
        let id = ButtonsData[i].id;
        let title = ButtonsData[i].title;
        let description = ButtonsData[i].description;
        let element = $(`<div class="btn" id=` + id +`><div class="title" id=` + id +`>` + title + `</div><div class="description" id=` + id + `>` + description + `</div></div>`);
        $("#buttons").append(element);
        Buttons[id] = element;
        if (ButtonsData[i].settings) {
            Button[id] = ButtonsData[i].settings
        };
    };
};

function CloseContext() {
    for (let i = 0; i < ButtonsData.length; i++) {
        let id = ButtonsData[i].id
        $(".btn").remove();
    }
    ButtonsData = [];
    Buttons = [];
    Button = [];
};

function CancelContext() {
    $.post(`https://dl-context/CloseContext`)
    CloseContext();
};

function OnClick(id) {
    $.post(`https://dl-context/OnClick`, JSON.stringify(Button[id]))
    CloseContext();
};
