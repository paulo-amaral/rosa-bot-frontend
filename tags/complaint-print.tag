<complaint-print>
    <script>
        var tag = this;
        tag.data = opts.data || {};   
        tag.on('mount', onMount);
        
        function onMount(){
            window.print();
            window.close();
        }
    </script>
    <div class="container">
        <h1 class="text-center text-uppercase">{ _t('title_print') }</h1>
        <h5 class="text-center text-capitalize">{ _t('subtitle_print') }</h5>
        <br>
        <div class="mt-2">
            <h4 class="text-capitalize">{ _t('part')} 1: { _t('about_complaint') }</h4>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">A. { _t('data_about_complaint') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complaint_number') }</td>
                        <td class="text-bold">{ data._id }</td>
                        <td class="text-capitalize">{ _t('date_complaint') }</td>
                        <td class="text-bold">{ data.dataqueixa }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complaint_channel') }</td>
                        <td class="text-bold" colspan="3">{ data.canal }</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="6">B. { _t('data_about_complainant') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('name_complainant') }</td>
                        <td class="text-bold">{ data.usename }</td>
                        <td class="text-capitalize">{ _t('gender_complainant') }</td>
                        <td class="text-bold">{ data.genero }</td>
                        <td class="text-capitalize">{ _t('age_complainant') }</td>
                        <td class="text-bold">{ data.idade }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('facebook_profile') }</td>
                        <td class="text-bold" colspan="5">{ data.facebook_profile }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('place_residence_complainant') }</td>
                        <td class="text-bold">{ data.municipio }</td>
                        <td class="text-capitalize">{ _t('complainant_telephone') }</td>
                        <td class="text-bold" colspan="3">{ data.numerotelefone }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession_complainant') }</td>
                        <td class="text-bold" colspan="5">{ data.profissao }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('place_work_study') }</td>
                        <td class="text-bold">{ data.entidadepublica }</td>
                        <td class="text-capitalize">{ _t('municipality_work_study') }</td>
                        <td class="text-bold" colspan="3">{ data.municipiotrabalho }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('pmsi_number') }</td>
                        <td class="text-bold" colspan="5">{ data.pmsi_number }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('complainant_is_victim') }</td>
                        <td class="text-bold" colspan="5">{ data.complainant_is_victim }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('victim_name') }</td>
                        <td class="text-bold">{ data.vitima }</td>
                        <td class="text-capitalize">{ _t('gender_victim') }</td>
                        <td class="text-bold">{ data.generovitima }</td>
                        <td class="text-capitalize">{ _t('age_victim') }</td>
                        <td class="text-bold">{ data.idadevitima }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('info_victim_whereabouts') }</td>
                        <td class="text-bold">{ data.encontrarvitima }</td>
                        <td class="text-capitalize">{ _t('victim_telephone') }</td>
                        <td class="text-bold" colspan="3">{ data.telefonevitima }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('potential_additional_victims') }</td>
                        <td class="text-bold">{ data.potential_additional_victims }</td>
                        <td class="text-capitalize">{ _t('identification_additional_victims') }</td>
                        <td class="text-bold" colspan="3">{ data.outrasvitimas }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('emotional_state') }</td>
                        <td class="text-bold" colspan="5">{ data.estmocional }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('impact_harassment') }</td>
                        <td class="text-bold" colspan="5">{ data.consequencias }</td>
                    </tr>
                </tbody>
            </table>
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">C. { _t('data_about_aggressor') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('name_agressor') }</td>
                        <td class="text-bold">{ data.nomeinfrator }</td>
                        <td class="text-capitalize">{ _t('aggressor_gender') }</td>
                        <td class="text-bold">{ data.generoinfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('profession_agressor') }</td>
                        <td class="text-bold">{ data.profession_agressor }</td>
                        <td class="text-capitalize">{ _t('aggressor_workplace') }</td>
                        <td class="text-bold">{ data.infratorondetrabalha }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_is_civil_servant') }</td>
                        <td class="text-bold" colspan="3">{ data.agressor_is_civil_servant }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('pmsi_number') }</td>
                        <td class="text-bold">{ data.pmsi_number }</td>
                        <td class="text-capitalize">{ _t('other_additional_info_aggressor') }</td>
                        <td class="text-bold">{ data.infosobreinfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('number_aggressors') }</td>
                        <td class="text-bold">{ data.nrpessoas }</td>
                        <td class="text-capitalize">{ _t('info_case_aggressor') }</td>
                        <td class="text-bold">{ data.infoidentificacainfrator }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_abuse_authority') }</td>
                        <td class="text-bold" colspan="3">{ data.agressor_abuse_authority }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('agressor_is_boss') }</td>
                        <td class="text-bold" colspan="3">{ data.agressor_is_boss }</td>
                    </tr>       
                </tbody>
            </table>            
            <br>
            <table class="table table-bordered">
                <tbody>
                    <tr>
                        <td class="text-capitalize bg-gray " colspan="4">D. { _t('data_about_harassment') }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('date_harassment') }</td>
                        <td class="text-bold">{ data.qtdvezes }</td>
                        <td class="text-capitalize">{ _t('place_harassment') }</td>
                        <td class="text-bold">{ data.localassedio }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('frequency_offence') }</td>
                        <td class="text-bold">{ data.datassedio }</td>
                        <td class="text-capitalize">{ _t('last_date_harassment') }</td>
                        <td class="text-bold">{ data.datautimoassedio }</td>
                    </tr>
                    <tr>
                        <td class="text-capitalize">{ _t('victim_reaction') }</td>
                        <td class="text-bold" colspan="3">{ data.reacao }</td>
                    </tr>  
                    <tr>
                        <td class="text-capitalize">{ _t('more_info_what_happened') }</td>
                        <td class="text-bold" colspan="3">{ data.infratorfazianolocal }</td>
                    </tr> 
                </tbody>
            </table>
            <br>
        </div>
    </div>
</complaint-print>