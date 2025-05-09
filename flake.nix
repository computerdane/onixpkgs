{
  description = "a template based on onix";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    onix.url = "github:computerdane/onix";
    onix.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { onix, ... }: onix.init { src = ./.; };
}
