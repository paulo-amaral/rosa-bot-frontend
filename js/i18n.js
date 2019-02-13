var i18nJsonTexts = {};

function i18nInit(lang)
{    
    var getUrl = window.location;
    var baseUrl = getUrl.protocol + "//" + getUrl.host + "/" + getUrl.pathname.split('/')[1];
    var url = baseUrl + 'lang/' + lang + '.json';

    Request.get(url, function (json) {        
        localStorage.setItem('lang', lang);
        localStorage.setItem(lang, JSON.stringify(json));
    });
    
    var localStorageTexts = localStorage.getItem(lang);
    if(localStorageTexts){
        i18nJsonTexts = JSON.parse(localStorageTexts);
    }
}


function _t(key)
{   
    if(i18nJsonTexts){
        return i18nJsonTexts[key] || key;
    }

    return key;
}