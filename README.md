# Aplicación de Contador Simple

Esta es una aplicación simple de contador desarrollada con Flutter. La aplicación permite incrementar, decrementar y reiniciar un contador de clicks.

Desarrollado por el estudiante Diego A. Marte Toledo, ID: 10155301 para la materia de Desarrollo de Aplicaciones Moviles impartido por la profesora Natalia D. Polanco Peguero.

## Características

- Muestra el número actual de clicks
- Botón para incrementar el contador (+)
- Botón para decrementar el contador (-)
- Botón para reiniciar el contador a 0
- El contador no puede ser menor que 0
- Interfaz de usuario simple y fácil de usar

## Requisitos Previos

Para ejecutar esta aplicación, necesitas tener instalado:

1. [Flutter SDK](https://flutter.dev/docs/get-started/install) (herramienta de desarrllo)
2. [Android Studio](https://developer.android.com/studio) (IDE recomendado para desarrollo Flutter)
3. [Xcode](https://apps.apple.com/us/app/xcode/id497799835) (para desarrollo en iOS/macOS)
4. [Git](https://git-scm.com/downloads) (para clonar el repositorio, control de versiones, contribuciones)

## Cómo Ejecutar la Aplicación

1. **Clonar el repositorio**
   ```bash
   git clone [https://github.com/Diegomarte9/counterApp.git]
   cd counter_app
   ```

2. **Obtener las dependencias**
   ```bash
   flutter pub get
   ```

3. **Ejecutar la aplicación**

   Para iOS/macOS:
   ```bash
   # Abrir el simulador de iOS
   open -a Simulator
   
   # Ejecutar la aplicación
   flutter run
   ```

   Para Android:
   ```bash
   # Asegúrate de tener un emulador de Android abierto o un dispositivo conectado
   flutter run
   ```

## Estructura del Proyecto

```
counter_app/
├── lib/
│   └── main.dart      # Código principal de la aplicación
├── ios/               # Configuración para iOS
├── macos/             # Configuración para macOS
└── pubspec.yaml       # Configuración de dependencias
```

## Comandos Útiles

- `flutter run`: Ejecuta la aplicación
- `flutter clean`: Limpia la build
- `flutter pub get`: Obtiene las dependencias
- `flutter doctor`: Verifica que todo esté correctamente configurado

## Solución de Problemas

Si encuentras algún problema al ejecutar la aplicación:

1. Ejecuta `flutter doctor` para verificar que todo esté correctamente configurado
2. Asegúrate de tener todas las dependencias instaladas con `flutter pub get`
3. Verifica que el simulador o emulador esté funcionando correctamente

## Contribuir

Siéntete libre de contribuir a este proyecto. Puedes:
- Reportar bugs
- Sugerir nuevas características
- Enviar pull requests

## Licencia

Este proyecto está abierto para uso personal y educativo.
