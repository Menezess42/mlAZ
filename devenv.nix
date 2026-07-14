{ pkgs, lib, config, inputs, ... }:
{
    packages = [
        pkgs.pyright
    ];
    languages.python = {
        enable = true;
        package = pkgs.python313.withPackages (p: with p; [
            kagglehub
            numpy
            scipy
            pandas
            matplotlib
            pytest
            ipykernel
            ipython
            kaggle
            plotly
            nbformat
            pyqt5
            scikit-learn
            pip
            jedi
            jedi-language-server
            black
            flake8
            sentinel
            python-lsp-server
            virtualenv
            pyflakes
            isort
            debugpy
        ]);
        venv.enable = true;
        venv.requirements = ''
            apyori==1.1.2
        '';
    };
    enterShell = ''
      echo "$(python --version) — venv ativo"
    '';
}
# { pkgs, lib, config, inputs, ... }:
#
# {
#     packages = [
#         pkgs.pyright
#     ];
#
#     languages.python = {
#         enable = true;
#         package = pkgs.python313.withPackages (p: with p; [
#             kagglehub
#             numpy
#             scipy
#             pandas
#             matplotlib
#             #apyori
#             pytest
#             ipykernel
#             ipython
#             kaggle
#             plotly
#             nbformat
#             pyqt5
#             scikit-learn
#             pip
#             jedi
#             jedi-language-server
#             black
#             flake8
#             sentinel
#             python-lsp-server
#             virtualenv
#             pyflakes
#             isort
#             debugpy
#         ]);
#         venv.enable = true;
#     };
#
#     enterShell = ''
#       echo "$(python --version) — venv ativo"
#     '';
# }
