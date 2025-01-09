{ stdenv, cmake }:

stdenv.mkDerivation rec {
  pname = "hellolib";
  version = "0.1.0";
  src = ./hellolib;
  nativeBuildInputs = [ cmake ];
  
  cmakeFlags = [ "-DCMAKE_INSTALL_PREFIX=$out" ];

  meta = {
    description = "A sample library";
  };
  
}
