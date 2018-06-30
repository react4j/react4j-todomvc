// Defer this command, since this will be folded into the App js impl,
// and if it runs right away, will not have its dependencies resolved yet (at least while
// running in BUNDLE).
setTimeout(function() {
  // Call the java "constructor" method, `new` will only work if it is a @JsType, or maybe
  // once optimized. Without this, in BUNDLE mode, `new` doesn't include the clinit, so
  // static imports haven't been resolved yet.
  var app = App.$create__();
  // Invoke onModuleLoad to start the app.
  app.m_onModuleLoad__();
}, 0);
