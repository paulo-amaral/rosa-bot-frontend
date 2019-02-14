window.i18n = {    
    jsonDictionary: {},
    init: function (lang) {
        var getUrl = window.location;
        var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
        var url = baseUrl + 'lang/' + lang + '.json';

        Request.get(url, function (json) {
            localStorage.setItem('lang', lang);
            localStorage.setItem(lang, JSON.stringify(json));
        });

        var localStorageDictionary = localStorage.getItem(lang);
        if (localStorageDictionary) {
            this.jsonDictionary = JSON.parse(localStorageDictionary);
        }
    },
    getText: function (key) {
        if (this.jsonDictionary) {
            return this.jsonDictionary[key] || key;
        }

        return key;
    }
}

function _t(key){
    return i18n.getText(key);
}