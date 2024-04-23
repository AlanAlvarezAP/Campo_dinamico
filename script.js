const btt_agre = document.querySelector(".adiccion");
const btt_agre2 = document.querySelector(".adiccion2");
const btt_agre3 = document.querySelector(".adiccion3");
const btt_agre4 = document.querySelector(".adiccion4");
const input_exp = document.querySelector(".infoo");
const input_forma = document.querySelector(".infoo2");
const input_idiom = document.querySelector(".infoo3");
const input_ap = document.querySelector(".infoo4");

function remove() {
    this.parentElement.remove();
}

function addExperiencia(container) {
    const txt=document.createElement("h4");
    txt.textContent="Experiencia laboral";
    const saltoLinea = document.createElement("br");
    const Expe = document.createElement("select");
    Expe.name = "experiencia[]";
    const options = [
        "menos de 1 año",
        "1 año",
        "2 años",
        "3 años",
        "4 años",
        "5 años"
    ];

    options.forEach(option => {
        const opt = document.createElement("option");
        opt.value = option;
        opt.text = option;
        Expe.appendChild(opt);
    });
    const txt2=document.createElement("h4");
    txt2.textContent="Empresa en la que trabajo";
    const Form = document.createElement("input");
    Form.type = "text";
    Form.name = "empresa[]";
    Form.placeholder = "Organización";

    const txt3=document.createElement("h4");
    txt3.textContent="Rol en la empresa";
    const Rol = document.createElement("input");
    Rol.type = "text";
    Rol.name = "rol[]";
    Rol.placeholder = "Rol";

    const botton = document.createElement("a");
    botton.className = "Borrar";
    botton.innerHTML = "&times";
    botton.addEventListener("click", remove);

    const ff = document.createElement("div");
    ff.className = "flex";

    container.appendChild(ff);
    ff.appendChild(txt);
    ff.appendChild(Expe);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt2);
    ff.appendChild(Form);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt3);
    ff.appendChild(Rol);
    ff.appendChild(saltoLinea);
    ff.appendChild(botton);
}


function createFormacionElements(container2) {
    const txt=document.createElement("h4");
    txt.textContent="Institución a la que pertenece";
    const saltoLinea = document.createElement("br");
    const Institucion = document.createElement("input");
    Institucion.type = "text";
    Institucion.name = "institucion[]";
    Institucion.placeholder = "Nombre de la institución educativa";

    const txt2=document.createElement("h4");
    txt2.textContent="Titulo que tiene";
    const Titulo = document.createElement("select");
    Titulo.name = "Titulo[]";

    const tituloOptions = [
        "Ingeniero",
        "Licenciado",
        "Médico",
        "Abogado",
        "Otros"
    ];

    tituloOptions.forEach(option => {
        const opt = document.createElement("option");
        opt.value = option;
        opt.text = option;
        Titulo.appendChild(opt);
    });
    
    const txt3=document.createElement("h4");
    txt3.textContent="Fecha de inicio de trabajo";
    const FechaInicio = document.createElement("input");
    FechaInicio.type = "date";
    FechaInicio.name = "fecha_inicio[]";
    FechaInicio.placeholder = "Fecha de inicio";
    
    const botton2 = document.createElement("a");
    botton2.className = "Borrar";
    botton2.innerHTML = "&times";
    botton2.addEventListener("click", remove);

    const ff = document.createElement("div");
    ff.className = "flex";

    container2.appendChild(ff);
    ff.appendChild(txt);
    ff.appendChild(Institucion);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt2);
    ff.appendChild(Titulo);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt3);
    ff.appendChild(FechaInicio);
    ff.appendChild(saltoLinea);
    ff.appendChild(botton2);

}
function addIdiomas(container) {
    const txt=document.createElement("h4");
    txt.textContent="Idioma que sabe";
    const saltoLinea = document.createElement("br");
    const Idioma = document.createElement("input");
    Idioma.type = "text";
    Idioma.name = "idioma[]";
    Idioma.placeholder = "Idioma";

    const txt2=document.createElement("h4");
    txt2.textContent="Nivel que tiene";
    const Nivel = document.createElement("select");
    Nivel.name = "nivel_idioma[]";

    const nivelOptions = [
        "Básico",
        "Intermedio",
        "Avanzado",
        "Fluido",
        "Nativo"
    ];

    nivelOptions.forEach(option => {
        const opt = document.createElement("option");
        opt.value = option;
        opt.text = option;
        Nivel.appendChild(opt);
    });

    const botton = document.createElement("a");
    botton.className = "Borrar";
    botton.innerHTML = "&times";
    botton.addEventListener("click", remove);

    const ff = document.createElement("div");
    ff.className = "flex";

    container.appendChild(ff);
    ff.appendChild(txt);
    ff.appendChild(Idioma);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt2);
    ff.appendChild(Nivel);
    ff.appendChild(saltoLinea);
    ff.appendChild(botton);
}

function addAptitudes(container) {
    const txt=document.createElement("h4");
    txt.textContent="Habilidad que tiene";
    const saltoLinea = document.createElement("br");
    const Habilidad = document.createElement("input");
    Habilidad.type = "text";
    Habilidad.name = "habilidad[]";
    Habilidad.placeholder = "Tipo de habilidad";
    const txt2=document.createElement("h4");
    txt2.textContent="Nivel de esa habilidad";
    const Nivel = document.createElement("select");
    Nivel.name = "nivel_habilidad[]";

    const nivelOptions = [
        "Débil",
        "Fuerte"
    ];

    nivelOptions.forEach(option => {
        const opt = document.createElement("option");
        opt.value = option;
        opt.text = option;
        Nivel.appendChild(opt);
    });

    const botton = document.createElement("a");
    botton.className = "Borrar";
    botton.innerHTML = "&times";
    botton.addEventListener("click", remove);

    const ff = document.createElement("div");
    ff.className = "flex";

    container.appendChild(ff);
    ff.appendChild(txt);
    ff.appendChild(Habilidad);
    ff.appendChild(saltoLinea);
    ff.appendChild(txt2);
    ff.appendChild(Nivel);
    ff.appendChild(saltoLinea);
    ff.appendChild(botton);
}
btt_agre.addEventListener("click", () => addExperiencia(input_exp));
btt_agre2.addEventListener("click", () => createFormacionElements(input_forma));
btt_agre3.addEventListener("click", () => addIdiomas(input_idiom));
btt_agre4.addEventListener("click", () => addAptitudes(input_ap));
