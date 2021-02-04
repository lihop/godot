{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  nativeBuildInputs = with pkgs;
    [
      alsaLib
      #dotnet-sdk
      dotnetCorePackages.sdk_5_0
      freetype
      libGL
      libGLU
      libpulseaudio
      mono
      #msbuild
      openssl
      pkg-config
      scons
      xorg.libX11
      xorg.libXcursor
      xorg.libXext
      xorg.libXfixes
      xorg.libXi
      xorg.libXinerama
      xorg.libXrandr
      xorg.libXrender
    ];

  MONO_PREFIX = "${pkgs.mono}";
}
