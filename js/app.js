var APP = {
    apiUrl: 'https://chatbot-rosa.herokuapp.com/',
    apiKey: 'ROSABOT',
    lang: localStorage.getItem('lang') || (navigator.language || navigator.userLanguage),
    getApiUrl: function(action){
        return this.apiUrl + action + '?key=' + this.apiKey;
    },
};


i18nInit(APP.lang);

riot.mount('*');