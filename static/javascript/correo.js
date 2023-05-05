// correo

function validate() {
  let name = document.querySelector(".name");
  let email = document.querySelector(".email");
  let msg = document.querySelector(".message");
  let sendBtn = document.querySelector(".send-btn");

  sendBtn.addEventListener("click", (e) => {
    e.preventDefault();

    if (name.value == "" || email.value == "" || msg.value == "") {
      emptyerror();
    } else {
      sendmail(name.value, email.value, msg.value);
      sucess();
    }
  });
}

validate();

function sendmail(name, email, msg) {
  emailjs.send("service_t97gs49", "template_7a1v6pj", {
    to_name: name,
    from_name: email,
    message: msg,
  });
}

function emptyerror() {
  swal({
    title: "Oh Noo...",
    text: "Complete este campo",
    icon: "error",
  });
}

function sucess() {
  swal({
    title: "Correo enviado con exito",
    text: "Trataremos de responder en 24 horas",
    icon: "success",
  });
}
