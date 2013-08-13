// Generated by CoffeeScript 1.6.3
var main, setup;

main = function() {
  document.querySelector('#up').onclick = function() {
    return chrome.runtime.sendMessage(null, 'up');
  };
  document.querySelector('#down').onclick = function() {
    return chrome.runtime.sendMessage(null, 'down');
  };
  return document.querySelector('a#login').href = localStorage.getItem('login_url');
};

setup = function() {
  return chrome.tabs.create({
    url: chrome.extension.getURL('options.html')
  });
};

if ((localStorage.getItem('login_url')) && (localStorage.getItem('kintai_url'))) {
  main();
} else {
  setup();
}