{ pkgs, lib, config, inputs, ... }:

{
    packages = [
        pkgs.pyright
        # pkgs.qt5.qtbase.bin
        # pkgs.qt5.qtwayland.bin
    ];

    # env = {
    #     QT_QPA_PLATFORM_PLUGIN_PATH = "${pkgs.qt5.qtbase.bin}/lib/qt-5.15/plugins";
    # };
    #
    languages.python = {
        enable = true;
        package = pkgs.python313.withPackages (p: with p; [
            kagglehub
            numpy
            scipy
            pandas
            matplotlib
            # scikit-image
            pytest
            ipykernel
            ipython
            kaggle
            plotly
            nbformat
            # (p.opencv4.override { enableGtk3 = true; enableFfmpeg = true; })
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
    };

    enterShell = ''
      echo "$(python --version) — venv ativo"
    '';
}
