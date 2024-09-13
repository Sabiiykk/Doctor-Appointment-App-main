import { FlutterLoader } from '../build/web/flutter'

window.addEventListener('load', function(ev) {
  // Ensure flutter.js is loaded and FlutterLoader is available
  try {
    FlutterLoader.load({
      serviceWorker: {
        serviceWorkerVersion: '{{flutter_service_worker_version}}',
      },
      onEntrypointLoaded: function(engineInitializer) {
        console.log('Entrypoint loaded');
        engineInitializer.initializeEngine().then(function(appRunner) {
          appRunner.runApp();
        });
      }
    });
  } catch (e) {
    console.error('FlutterLoader is not defined. Make sure flutter.js is loaded correctly.');
  }
});