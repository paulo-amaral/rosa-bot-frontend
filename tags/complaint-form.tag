<complaint-form>
    <form method="POST" class="form-horizontal">

        <div class="card" if="{ Object.keys(data).length > 0 }">
            <div class="card-header">
                <div class="float-left">
                    <div class="card-title text-uppercase"> { _t('complaint') }: #{ data._id } </div>
                    <div class="card-subtitle text-gray">{ _t('datassedio') }</div>
                </div>
                <div class="float-right">
                    <a class="btn btn-link mr-1" href="/#"><i class="icon icon-back"></i> Back</a>
                    <a class="btn btn-secondary mr-1" href="/"><i class="icon icon-edit"></i> Edit</a>
                </div>
            </div>
            <div class="card-body">
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('usename') }</label>
                            <span>{ data.username }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('datassedio') }</label>
                            <span>{ data.datassedio }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="sexo_pac">{ _t('anoassedio') }</label>
                            <span>{ data.anoassedio }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_social">{ _t('cidadeassedio') }</label>
                            <span>{ data.cidadeassedio }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('vitima') }</label>
                            <span>{ data.vitima }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('genero') }</label>
                            <span>{ data.genero }</span>
                        </div>
                    </div>

                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_social">{ _t('idade') }</label>
                            <span>{ data.idade }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="sexo_pac">{ _t('estmocional') }</label>
                            <span>{ data.estmocional }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('firstName') }</label>
                            <span>{ data.firstName }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('lastName') }</label>
                            <span>{ data.lastName }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_social">{ _t('telefone') }</label>
                            <span>{ data.telefone }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="sexo_pac">{ _t('phone') }</label>
                            <span>{ data.phone }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('cidadeassedio') }</label>
                            <span>{ data.cidadeassedio }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('entidadepublica') }</label>
                            <span>{ data.entidadepublica }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_social">{ _t('municipio') }</label>
                            <span>{ data.municipio }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="sexo_pac">{ _t('municipiotrabalho') }</label>
                            <span>{ data.municipiotrabalho }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('nomeagressor') }</label>
                            <span>{ data.nomeagressor }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('nomeinfrator') }</label>
                            <span>{ data.nomeinfrator }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_social">{ _t('queixacontra') }</label>
                            <span>{ data.queixacontra }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="sexo_pac">{ _t('generoinfrator') }</label>
                            <span>{ data.generoinfrator }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="nome_pac">{ _t('es') }</label>
                            <span>{ data.es }</span>
                        </div>
                    </div>
                    <div class="column col-3 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="cod_prnt">{ _t('mesassedio') }</label>
                            <span>{ data.mesassedio }</span>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-2 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="observacoes">{ _t('status') }</label>
                            <select class="form-select">
                                <option value="">Pendente</option>
                                <option value="">Resolvido</option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="columns">
                    <div class="column col-12 col-md-12">
                        <div class="form-group">
                            <label class="form-label text-capitalize" for="observacoes">{ _t('obs') }</label>
                            <textarea class="form-input"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>


    <style>
        span {
            font-weight: bold;
            width: 100%;
            padding-bottom: 10px;
        }
    </style>

    <script>
        var tag = this;
        tag.data = opts.data || {};
    </script>
</complaint-form>