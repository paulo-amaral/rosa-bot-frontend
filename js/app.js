var APP = {
    apiUrl: 'https://chatbot-rosa.herokuapp.com/',
    apiKey: 'ROSABOT',
    lang: localStorage.getItem('lang') || 'te',
    getApiUrl: function(action, params){
        var url = new URL(this.apiUrl + action);

        if(params){
            Object.keys(params).forEach(function(key) {
                url.searchParams.append(key, params[key]);
            });            
        }

        url.searchParams.append('key', this.apiKey);
        return url.toString();
    },
};

i18n.init(APP.lang);

riot.mount('*');