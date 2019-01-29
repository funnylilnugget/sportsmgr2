/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

console.log('Hello World from Webpacker')





Vue.component("dash", {
  props: ['sport'],
  template: "#dash"
});

new Vue({
  el: "#app",
  data() {
    return {
      sports: [
        {
          name: 'Players',
          img: '/assets/player.svg',
          desc: `Step 1 - Add your players`,
          path: '/players'
        },
        {
          name: 'Teams',
          img: '/assets/team.png',
          desc: `Step 2 - Add payers to your teams`,
          path: '/teams'
        },
         {
          name: 'Games',
          img: '/assets/game.svg',
          desc: `Step 3 - Create your game.`,
          path: '/games'
        },
      ]
    };
  }
});
