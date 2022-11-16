const tabs = document.querySelectorAll('[data-tab-target]')
const tabContents = document.querySelectorAll('[data-tab-content]')

tabs.forEach(tab => {
  tab.addEventListener('click', () => {
    const target = document.querySelector(tab.dataset.tabTarget);
    tabContents.forEach(tabContent => {
      tabContent.classList.remove('active')
    });
    tabs.forEach(tab => {
      tab.classList.remove('active')
    });
    tab.classList.add('active')
    target.classList.add('active')
  });
});



const myButton = document.getElementById("myButton");
const myAnimation = document.getElementById("myDiv");
myButton.addEventListener("click", begin);

// make animation rotate
function begin() {
  let timerId = null;
  let degrees = 0;
  let x = 0;
  let y = 0;

  timerId = setInterval(frame, 5);

  function frame() {
    if(x >= 997 || y >= 400) {
      clearInterval(timerId);

    }
    else{
      degrees += 2.5; // increasing degress will make rectangle roll faster 
      x+=1;
     // y+=1;
      myAnimation.style.left = x + "px"; 
     // myAnimation.style.top = y + "px";
      myAnimation.style.transform = "rotateY("+degrees+"deg)";
    }
  }
};
     
// Canvas API 

let canvas = document.getElementById("myCanvas");
let context = canvas.getContext("2d");

// DRAW TEXT 

context.font = "25px MV Boli";
context.fillStyle = "black";

context.textAlign = "center";
context.strokeStyle = "black";
context.lineWidth = 4;
context.strokeRect(125, 15, 220, 35);

context.fillText("Confusion Matrix", canvas.width/2, 40);
context.fillText("Predicted 0", 250, 75);
context.fillText("Actual 0", 50, 125);
context.fillText("Actual 1", 50, 175);
context.fillText("71914", canvas.width / 2, 125);


context.textAlign = "right";
context.fillText("Predicted 1", 450, 75);
context.fillText("21526", 415, 175);

context.textAlign = "left";
context.fillText("12590", 350, 125);
context.fillText("29928", 205, 175);


context.strokeStyle = "red";
context.lineWidth = 10;
context.strokeRect(70, 230, 325, 60);
context.fillStyle = "black";
context.font = "30px MV Boli";
context.textAlign = "center";
context.fillText("Accuracy Score: 69%", canvas.width/2, 275);



     
