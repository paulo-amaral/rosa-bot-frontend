<menu>
    <header class="navbar">
        <section class="navbar-section">
            <div class="tile tile-centered">
                <div class="tile-icon">
                    <img src="img/logo-min.jpeg" alt="logo">
                </div>
                <div class="tile-content">
                    <span class="title text-bold">{ _t("title") }</span>
                </div>
            </div>
        </section>
        <section class="navbar-section">
            <button class="btn btn-link { lang == 'pt-BR' ? 'text-primary' : 'text-gray' }" data-lang="pt-BR"
                onclick="{ setLang }">Pt-Br</button>
            <span>|</span>
            <button class="btn btn-link { lang == 'en' ? 'text-primary' : 'text-gray' }" data-lang="en" onclick="{ setLang }">En</button>
        </section>
    </header>

    <script>
        var tag = this;
        tag.lang = opts.lang;
        tag.setLang = setLang;

        function setLang(event) {
            i18n.init(event.target.dataset.lang);
            window.location.reload();
        }
    </script>
</menu>