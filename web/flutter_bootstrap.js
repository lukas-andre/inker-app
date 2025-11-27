{{flutter_js}}
{{flutter_build_config}}

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