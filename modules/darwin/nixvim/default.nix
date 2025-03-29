{
  inputs,
  pkgs,
  ...
}: {
  home-manager.sharedModules = [
    (_: {
	home.packages = with pkgs; [
	  inputs.nixvim.packages.${system}.default
	] ++ (lib.optionals (!stdenv.isDarwin) [
	  csharp-ls
	]);
    })
  ];
}
