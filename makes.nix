{fetchNixpkgs, ...}: {
  formatNix = {
    enable = true;
    targets = ["/"];
  };
  formatPython = {
    enable = true;
    targets = ["/"];
  };
  extendingMakesDirs = ["/"];
  imports = [
    ./api/makes.nix
  ];
  inputs = {
    nixpkgs = fetchNixpkgs {
      rev = "f88fc7a04249cf230377dd11e04bf125d45e9abe";
      sha256 = "1dkwcsgwyi76s1dqbrxll83a232h9ljwn4cps88w9fam68rf8qv3";
    };
  };
  lintGitCommitMsg = {
    enable = true;
    config = "/.lint-git-commit-msg/config.js";
    parser = "/.lint-git-commit-msg/parser.js";
  };
  lintGitMailMap = {
    enable = true;
  };
  lintNix = {
    enable = true;
    targets = ["/"];
  };
}