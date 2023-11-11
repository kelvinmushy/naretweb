                 var html = '';
                 html += '<span id="row'+count_charge +'"><div class="row">';
                 html += '<div class="col-md-4">';
                 html += '<input type="text" name="exp_name[]" id="exp_name'+count_charge+'" class="form-control selectpicker" data-live-search="true" required  placeholder="name">';
                 html += '</div>';
                 html += '<div class="col-md-4">';
                 html += '<input type="text" name="exp_cost[]"  id="exp_cost'+count_charge+'" class="form-control" required placeholder="cost"/>';
                 html += '</div>';
                 html += '<div class="col-md-4">';
                 if(count_charge == '')
                 {
                 html += '<button type="button" name="more_charge" id="more_charge" class="btn btn-success btn-xs">+</button>';
                 }
                  else
                  {
                  html += '<button type="button" name="remove" id="'+count_charge +'" class="btn btn-danger btn-xs remove">-</button>';
                   }
                  html += '</div>';
                html += '</div></div><br /></span>';
                $('#expensive').append(html);