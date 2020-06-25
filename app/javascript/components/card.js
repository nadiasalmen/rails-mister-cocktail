import Typed from 'typed.js';

const loadDynamicCardText = () => {
  new Typed('#card-typed-text', {
    strings: ["Change your life", "Learn to code"],
    typeSpeed: 50,
    loop: true
  });
}

export { loadDynamicCardText };
