<complaint-list>    
    <div class="columns">

        <div class="column col-8">
            <div class="input-group">
                <input class="form-input" type="text" placeholder="search...">
                <button class="btn btn-secondary input-group-btn">{ _t("search") }</button>
            </div>
        </div>
        <div class="column col-4">
            <a class="btn bg-secondary float-right" href="{ APP.getApiUrl('complaint/csv') }">{ _t("export_csv") }</a>
        </div>
    </div>

    <div class="columns mt-2">
        <div class="column col-12">
            <table class="table table-striped table-hover">
                <thead>
                    <tr class="bg-secondary">
                        <td>{ _t("id") }</td>
                        <td>{ _t("username") }</td>
                        <td>{ _t("dataassedio") }</td>
                        <td>{ _t("vitima") }</td>
                        <td>{ _t("id") }</td>
                        <td>{ _t("id") }</td>
                        <td>{ _t("id") }</td>
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
                        <td><a href="#view/{ item._id }" class="btn btn-sm">Edit</a></td>
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