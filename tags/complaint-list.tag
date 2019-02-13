<complaint-list>    
    <div class="columns">
        <div class="column col-4">
            <div class="input-group">
                <input class="form-input" type="text" placeholder="{ _t('search') }">
                <button class="btn btn-secondary input-group-btn">
                    <i class="icon icon-search"></i>
                    { _t('search') }
                </button>
            </div>
        </div>
        <div class="column col-8">
            <a class="btn btn-secondary float-right" href="{ APP.getApiUrl('complaint/csv') }">
                <i class="icon icon-download"></i>
                { _t("export_csv") }
            </a>
        </div>
    </div>

    <div class="columns mt-2">
        <div class="column col-12">
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="bg-secondary">
                        <th class="col-1">{ _t("id") }</th>
                        <th class="col-2">{ _t("username") }</th>
                        <th class="col-2">{ _t("dataassedio") }</th>
                        <th class="col-2">{ _t("vitima") }</th>
                        <th class="col-2">{ _t("id") }</th>
                        <th class="col-2">{ _t("id") }</th>
                        <th class="col-1">{ _t("actions") }</th>
                    </tr>
                </thead>
                <tbody> 
                    <tr if="{ items.length <= 0 }">
                        <td colspan="7">
                            <div class="loading loading-lg"></div>
                        </td>
                    </tr>
                    <tr if="{ items.length > 0 }" each="{ item in items }">
                        <td>{ item._id }</td>
                        <td>{ item.username }</td>
                        <td>{ item.dataassedio }</td>
                        <td>{ item.vitima }</td>
                        <td></td>
                        <td></td>
                        <td><a href="#view/{ item._id }" class="btn btn-link">{ _t('view') }</a></td>
                    </tr>
                </tbody>
            </table>
            <pagination></pagination>            
        </div>
    </div>

    <script>
        var tag = this;        
        tag.items = opts.items || [];
        tag.on('mount', onMount);

        function onMount()
        {   
            Request.get(opts.api, function (json) {
                console.log(json);
                tag.update({'items': json.items});
                riot.mount('pagination', json);
            });
        }
    </script>
</complaint-list>