
import "../../sass/categorytest.scss";
import "../../sass/layout/_header.scss";
import "../../sass/layout/_footer.scss";
import "../../sass/main.scss";

import "./delay-hyperlink.js";


class Home {
  constructor() {
  
  }

  start() {
   
    console.log("Homepage running...");
  }
}

(() => {
  const script = new Home();
  script.start();
})();
