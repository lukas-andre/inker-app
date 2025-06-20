(()=>{var P=()=>navigator.vendor==="Google Inc."||navigator.agent==="Edg/",E=()=>typeof ImageDecoder>"u"?!1:P(),L=()=>typeof Intl.v8BreakIterator<"u"&&typeof Intl.Segmenter<"u",W=()=>{let n=[0,97,115,109,1,0,0,0,1,5,1,95,1,120,0];return WebAssembly.validate(new Uint8Array(n))},w={hasImageCodecs:E(),hasChromiumBreakIterators:L(),supportsWasmGC:W(),crossOriginIsolated:window.crossOriginIsolated};function l(...n){return new URL(C(...n),document.baseURI).toString()}function C(...n){return n.filter(t=>!!t).map((t,i)=>i===0?_(t):j(_(t))).filter(t=>t.length).join("/")}function j(n){let t=0;for(;t<n.length&&n.charAt(t)==="/";)t++;return n.substring(t)}function _(n){let t=n.length;for(;t>0&&n.charAt(t-1)==="/";)t--;return n.substring(0,t)}function T(n,t){return n.canvasKitBaseUrl?n.canvasKitBaseUrl:t.engineRevision&&!t.useLocalCanvasKit?C("https://www.gstatic.com/flutter-canvaskit",t.engineRevision):"canvaskit"}var v=class{constructor(){this._scriptLoaded=!1}setTrustedTypesPolicy(t){this._ttPolicy=t}async loadEntrypoint(t){let{entrypointUrl:i=l("main.dart.js"),onEntrypointLoaded:r,nonce:e}=t||{};return this._loadJSEntrypoint(i,r,e)}async load(t,i,r,e,a){a??=o=>{o.initializeEngine(r).then(c=>c.runApp())};let{entryPointBaseUrl:s}=r;if(t.compileTarget==="dart2wasm")return this._loadWasmEntrypoint(t,i,s,a);{let o=t.mainJsPath??"main.dart.js",c=l(s,o);return this._loadJSEntrypoint(c,a,e)}}didCreateEngineInitializer(t){typeof this._didCreateEngineInitializerResolve=="function"&&(this._didCreateEngineInitializerResolve(t),this._didCreateEngineInitializerResolve=null,delete _flutter.loader.didCreateEngineInitializer),typeof this._onEntrypointLoaded=="function"&&this._onEntrypointLoaded(t)}_loadJSEntrypoint(t,i,r){let e=typeof i=="function";if(!this._scriptLoaded){this._scriptLoaded=!0;let a=this._createScriptTag(t,r);if(e)console.debug("Injecting <script> tag. Using callback."),this._onEntrypointLoaded=i,document.head.append(a);else return new Promise((s,o)=>{console.debug("Injecting <script> tag. Using Promises. Use the callback approach instead!"),this._didCreateEngineInitializerResolve=s,a.addEventListener("error",o),document.head.append(a)})}}async _loadWasmEntrypoint(t,i,r,e){if(!this._scriptLoaded){this._scriptLoaded=!0,this._onEntrypointLoaded=e;let{mainWasmPath:a,jsSupportRuntimePath:s}=t,o=l(r,a),c=l(r,s);this._ttPolicy!=null&&(c=this._ttPolicy.createScriptURL(c));let d=(await import(c)).compileStreaming(fetch(o)),f;t.renderer==="skwasm"?f=(async()=>{let m=await i.skwasm;return window._flutter_skwasmInstance=m,{skwasm:m.wasmExports,skwasmWrapper:m,ffi:{memory:m.wasmMemory}}})():f=Promise.resolve({}),await(await(await d).instantiate(await f)).invokeMain()}}_createScriptTag(t,i){let r=document.createElement("script");r.type="application/javascript",i&&(r.nonce=i);let e=t;return this._ttPolicy!=null&&(e=this._ttPolicy.createScriptURL(t)),r.src=e,r}};async function I(n,t,i){if(t<0)return n;let r,e=new Promise((a,s)=>{r=setTimeout(()=>{s(new Error(`${i} took more than ${t}ms to resolve. Moving on.`,{cause:I}))},t)});return Promise.race([n,e]).finally(()=>{clearTimeout(r)})}var y=class{setTrustedTypesPolicy(t){this._ttPolicy=t}loadServiceWorker(t){if(!t)return console.debug("Null serviceWorker configuration. Skipping."),Promise.resolve();if(!("serviceWorker"in navigator)){let o="Service Worker API unavailable.";return window.isSecureContext||(o+=`
The current context is NOT secure.`,o+=`
Read more: https://developer.mozilla.org/en-US/docs/Web/Security/Secure_Contexts`),Promise.reject(new Error(o))}let{serviceWorkerVersion:i,serviceWorkerUrl:r=l(`flutter_service_worker.js?v=${i}`),timeoutMillis:e=4e3}=t,a=r;this._ttPolicy!=null&&(a=this._ttPolicy.createScriptURL(a));let s=navigator.serviceWorker.register(a).then(o=>this._getNewServiceWorker(o,i)).then(this._waitForServiceWorkerActivation);return I(s,e,"prepareServiceWorker")}async _getNewServiceWorker(t,i){if(!t.active&&(t.installing||t.waiting))return console.debug("Installing/Activating first service worker."),t.installing||t.waiting;if(t.active.scriptURL.endsWith(i))return console.debug("Loading from existing service worker."),t.active;{let r=await t.update();return console.debug("Updating service worker."),r.installing||r.waiting||r.active}}async _waitForServiceWorkerActivation(t){if(!t||t.state==="activated")if(t){console.debug("Service worker already active.");return}else throw new Error("Cannot activate a null service worker!");return new Promise((i,r)=>{t.addEventListener("statechange",()=>{t.state==="activated"&&(console.debug("Activated new service worker."),i())})})}};var g=class{constructor(t,i="flutter-js"){let r=t||[/\.js$/,/\.mjs$/];window.trustedTypes&&(this.policy=trustedTypes.createPolicy(i,{createScriptURL:function(e){if(e.startsWith("blob:"))return e;let a=new URL(e,window.location),s=a.pathname.split("/").pop();if(r.some(c=>c.test(s)))return a.toString();console.error("URL rejected by TrustedTypes policy",i,":",e,"(download prevented)")}}))}};var k=n=>{let t=WebAssembly.compileStreaming(fetch(n));return(i,r)=>((async()=>{let e=await t,a=await WebAssembly.instantiate(e,i);r(a,e)})(),{})};var b=(n,t,i,r)=>(window.flutterCanvasKitLoaded=(async()=>{if(window.flutterCanvasKit)return window.flutterCanvasKit;let e=i.hasChromiumBreakIterators&&i.hasImageCodecs;if(!e&&t.canvasKitVariant=="chromium")throw"Chromium CanvasKit variant specifically requested, but unsupported in this browser";let a=e&&t.canvasKitVariant!=="full",s=r;a&&(s=l(s,"chromium"));let o=l(s,"canvaskit.js");n.flutterTT.policy&&(o=n.flutterTT.policy.createScriptURL(o));let c=k(l(s,"canvaskit.wasm")),p=await import(o);return window.flutterCanvasKit=await p.default({instantiateWasm:c}),window.flutterCanvasKit})(),window.flutterCanvasKitLoaded);var U=async(n,t,i,r)=>{let e=i.crossOriginIsolated&&!t.forceSingleThreadedSkwasm?"skwasm":"skwasm_st",s=l(r,`${e}.js`);n.flutterTT.policy&&(s=n.flutterTT.policy.createScriptURL(s));let o=k(l(r,`${e}.wasm`));return await(await import(s)).default({instantiateWasm:o,mainScriptUrlOrBlob:new Blob([`import '${s}'`],{type:"application/javascript"})})};var S=class{async loadEntrypoint(t){let{serviceWorker:i,...r}=t||{},e=new g,a=new y;a.setTrustedTypesPolicy(e.policy),await a.loadServiceWorker(i).catch(o=>{console.warn("Exception while loading service worker:",o)});let s=new v;return s.setTrustedTypesPolicy(e.policy),this.didCreateEngineInitializer=s.didCreateEngineInitializer.bind(s),s.loadEntrypoint(r)}async load({serviceWorkerSettings:t,onEntrypointLoaded:i,nonce:r,config:e}={}){e??={};let a=_flutter.buildConfig;if(!a)throw"FlutterLoader.load requires _flutter.buildConfig to be set";let s=u=>{switch(u){case"skwasm":return w.hasChromiumBreakIterators&&w.hasImageCodecs&&w.supportsWasmGC;default:return!0}},o=(u,m)=>{switch(u.renderer){case"auto":return m=="canvaskit"||m=="html";default:return u.renderer==m}},c=u=>u.compileTarget==="dart2wasm"&&!w.supportsWasmGC||e.renderer&&!o(u,e.renderer)?!1:s(u.renderer),p=a.builds.find(c);if(!p)throw"FlutterLoader could not find a build compatible with configuration and environment.";let d={};d.flutterTT=new g,t&&(d.serviceWorkerLoader=new y,d.serviceWorkerLoader.setTrustedTypesPolicy(d.flutterTT.policy),await d.serviceWorkerLoader.loadServiceWorker(t).catch(u=>{console.warn("Exception while loading service worker:",u)}));let f=T(e,a);p.renderer==="canvaskit"?d.canvasKit=b(d,e,w,f):p.renderer==="skwasm"&&(d.skwasm=U(d,e,w,f));let h=new v;return h.setTrustedTypesPolicy(d.flutterTT.policy),this.didCreateEngineInitializer=h.didCreateEngineInitializer.bind(h),h.load(p,d,e,r,i)}};window._flutter||(window._flutter={});window._flutter.loader||(window._flutter.loader=new S);})();
//# sourceMappingURL=flutter.js.map

if (!window._flutter) {
  window._flutter = {};
}
_flutter.buildConfig = {"engineRevision":"18b71d647a292a980abb405ac7d16fe1f0b20434","builds":[{"compileTarget":"dart2js","renderer":"canvaskit","mainJsPath":"main.dart.js"}]};


// Custom loading screen elements
const createLoadingScreen = () => {
  const container = document.createElement('div');
  container.id = 'custom-loading';
  container.className = 'loading-container';
  
  container.innerHTML = `
    <img src="icons/Icon-192.png" alt="Inker Studio Logo" class="loading-logo">
    <h1 class="loading-title">Inker Studio</h1>
    <p class="loading-subtitle">Tu app de tatuajes favorita (o eso esperamos)</p>
    
    <div class="loading-progress">
      <div class="loading-bar" id="loading-bar"></div>
    </div>
    
    <p class="loading-text" id="loading-text">
      Despertando la app
      <span class="loading-dots">
        <div></div>
        <div></div>
        <div></div>
      </span>
    </p>
    
    <p class="loading-tips" id="loading-tips">
      💡 Cargando... sí, a veces somos lentos, pero valemos la pena 😅
    </p>
  `;
  
  document.body.appendChild(container);
  return container;
};

// Loading progress manager
class LoadingManager {
  constructor() {
    this.progress = 0;
    this.messageIndex = 0;
    this.loadingBar = null;
    this.loadingText = null;
    this.loadingTips = null;
    this.container = null;
    
    this.messages = [
      'Despertando la app',
      'Cargando pinceles digitales',
      'Buscando artistas cerca de ti',
      'Afilando las agujas virtuales',
      'Calibrando la tinta invisible',
      'Ya casi... respira profundo'
    ];
    
    this.tips = [
      '🎨 Prometemos que los diseños salen mejor que este loading',
      '☕ Mientras esperas, ¿un cafecito? (nosotros invitamos... mentalmente)',
      '🤖 Nuestra IA está aprendiendo... igual que nosotros',
      '📱 Somos nuevos, pero con ganas de tatuar todo Chile',
      '✨ La cotización es transparente, como este mensaje de carga',
      '🚀 Loading powered by esperanza y café',
      '💪 Estamos trabajando para ser más rápidos, lo juramos',
      '🎯 Conectándote con artistas reales (no imaginarios)',
      '⏰ Vale la pena la espera... eso dicen nuestras mamás',
      '🔥 Cargando con la velocidad de un tatuador perfeccionista'
    ];
  }
  
  init() {
    this.container = createLoadingScreen();
    this.loadingBar = document.getElementById('loading-bar');
    this.loadingText = document.getElementById('loading-text');
    this.loadingTips = document.getElementById('loading-tips');
    
    // Start animations
    this.startProgressAnimation();
    this.startMessageAnimation();
    this.startTipsAnimation();
  }
  
  updateProgress(value) {
    this.progress = Math.min(value, 100);
    if (this.loadingBar) {
      this.loadingBar.style.width = this.progress + '%';
    }
  }
  
  startProgressAnimation() {
    const animate = () => {
      if (this.progress < 85) {
        const increment = Math.random() * 8 + 2;
        this.updateProgress(this.progress + increment);
        setTimeout(animate, 150);
      }
    };
    animate();
  }
  
  startMessageAnimation() {
    const animate = () => {
      if (this.messageIndex < this.messages.length && this.loadingText) {
        this.loadingText.innerHTML = this.messages[this.messageIndex] + 
          '<span class="loading-dots"><div></div><div></div><div></div></span>';
        this.messageIndex++;
        setTimeout(animate, 1200);
      }
    };
    animate();
  }
  
  startTipsAnimation() {
    const animate = () => {
      const tipIndex = Math.floor(Math.random() * this.tips.length);
      if (this.loadingTips) {
        this.loadingTips.textContent = this.tips[tipIndex];
      }
      setTimeout(animate, 3000);
    };
    animate();
  }
  
  setStage(stage) {
    switch(stage) {
      case 'entrypoint':
        this.updateProgress(90);
        if (this.loadingText) {
          this.loadingText.innerHTML = 'Inicializando Flutter<span class="loading-dots"><div></div><div></div><div></div></span>';
        }
        break;
      case 'initializing':
        this.updateProgress(95);
        if (this.loadingText) {
          this.loadingText.innerHTML = 'Preparando la magia<span class="loading-dots"><div></div><div></div><div></div></span>';
        }
        break;
      case 'ready':
        this.updateProgress(100);
        if (this.loadingText) {
          this.loadingText.innerHTML = '¡Ya llegamos! 🎉';
        }
        break;
    }
  }
  
  remove() {
    if (this.container) {
      this.container.classList.add('loading-fade-out');
      setTimeout(() => {
        this.container?.remove();
        document.body.style.background = 'transparent';
      }, 400);
    }
  }
}

// Initialize loading manager
const loadingManager = new LoadingManager();
loadingManager.init();

// Load Flutter with custom configuration
_flutter.loader.load({
  onEntrypointLoaded: async function(engineInitializer) {
    loadingManager.setStage('entrypoint');
    
    // Initialize engine
    loadingManager.setStage('initializing');
    const appRunner = await engineInitializer.initializeEngine();
    
    // Run app
    loadingManager.setStage('ready');
    await appRunner.runApp();
    
    // Remove loading screen after a short delay
    setTimeout(() => {
      loadingManager.remove();
    }, 300);
  }
});