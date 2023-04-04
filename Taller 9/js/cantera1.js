const labels = document.querySelectorAll('.label');

labels.forEach(label => {
  label.addEventListener('click', () => {
    const content = label.nextElementSibling;

    if (content.classList.contains('open')) {
      content.classList.remove('open');
    } else {
      content.classList.add('open');
    }
 });
});


const themes = {
    theme1: {
        width: "1024px",
        margin:"31px auto",
        backgroundColor: "white",
        color: "black"
    },
    theme2: {
        width: "1024px",
        margin:"31px auto",
        backgroundColor: "#d3d3d3",
        color: "#1a2f43"
    },
    theme3: {
        width: "1024px",
        margin:"31px auto",
        backgroundColor: "#0f3c5c",
        color: "#9A8C98"
    }
  };
  
  function changeTheme(theme) {
    const body = document.querySelector("body");
    body.style.backgroundColor = themes[theme].backgroundColor;
    body.style.color = themes[theme].color;
    body.style.width = themes[theme].width;
    body.style.margin = themes[theme].margin;
  }

  