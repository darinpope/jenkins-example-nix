with (import <nixpkgs> {});
mkShell {
  buildInputs = [
    maven
    hugo
    gh
  ];
}