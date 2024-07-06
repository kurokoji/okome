import dlangui;

mixin APP_ENTRY_POINT;

extern (C) int UIAppMain(string[] args) {
  Window window = Platform.instance.createWindow("Okome", null);

  auto button = (new Button()).text("Hello"d).margins(Rect(20, 20, 20, 20));

  window.mainWidget = button;

  window.show();

  return Platform.instance.enterMessageLoop;
}
