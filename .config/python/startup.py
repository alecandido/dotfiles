def __load_histfile():
    try:
        import atexit
        import os
        import pathlib
        import readline

        histfile = str(
            (pathlib.Path(os.environ["XDG_CACHE_HOME"]) / "python_history").absolute()
        )

        try:
            readline.read_history_file(histfile)
        except OSError:
            pass

        def write_history():
            try:
                readline.write_history_file(histfile)
            except OSError:
                pass

        atexit.register(write_history)
    except ImportError:
        return


__load_histfile()
