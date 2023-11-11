<!DOCTYPE html>
<html lang="en">
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

        <style type="text/css" media="screen">
            html {
                font-family: sans-serif;
                line-height: 1.15;
                margin: 0;
            }
            body {
                font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, "Noto Sans", sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
                font-weight: 400;
                line-height: 1.5;
                color: #212529;
                text-align: left;
                background-color: #fff;
                font-size: 10px;
                margin: 36pt;
            }
            h4 {
                margin-top: 0;
                margin-bottom: 0;
            }
            p {
                margin-top: 0;
                margin-bottom: 0;
            }
            strong {
                font-weight: bolder;
            }
            img {
                vertical-align: middle;
                border-style: none;
            }
            table {
                border-collapse: collapse;
            }
            th {
                text-align: inherit;
            }
            h4, .h4 {
                margin-bottom: 0.5rem;
                font-weight: 500;
                line-height: 1.2;
            }
            h4, .h4 {
                font-size: 1.5rem;
            }
            .table {
                width: 100%;
                margin-bottom: 1rem;
                color: #212529;
            }
            .table th,
            .table td {
                padding: 0.75rem;
                vertical-align: top;
                border-top: 1px solid #dee2e6;
            }
            .table thead th {
                vertical-align: bottom;
                border-bottom: 2px solid #dee2e6;
            }
            .table tbody + tbody {
                border-top: 2px solid #dee2e6;
            }
            .mt-5 {
                margin-top: 3rem !important;
            }
            .pr-0,
            .px-0 {
                padding-right: 0 !important;
            }
            .pl-0,
            .px-0 {
                padding-left: 0 !important;
            }
            .text-right {
                text-align: right !important;
            }
            .text-center {
                text-align: center !important;
            }
            .text-uppercase {
                text-transform: uppercase !important;
            }
            * {
                font-family: "DejaVu Sans";
            }
            body, h1, h2, h3, h4, h5, h6, table, th, tr, td, p, div {
                line-height: 1.1;
            }
            .party-header {
                font-size: 1.5rem;
                font-weight: 400;
            }
            .total-amount {
                font-size: 12px;
                font-weight: 700;
            }
            .border-0 {
                border: none !important;
            }
            .vl {
        border-left: 3px solid black;
     
         margin-top:150px;
         }
        </style>
    </head>

    <body>
        {{-- Header --}}
      <section>
      <div class="box">
      
      <center><p><strong>NARET FUMIGATION AND GENERAL CLEANNESS</strong>{{$date_invo}}-Purchase Invoice---{{$purchase_invoice[0]->purchase_invoice1}}---</p></center>

    </div>
      </section>
          <section>
          <img src="assets2/img/furm.jpg" alt="logo" height="200" style="float:right">
    
         
             
    <div class="box" width="100%">
        <h4 class="text-uppercase" >
            <strong style="color:#87C0EC"> Purchase INVOICE</strong>
        </h4>
  </div>
          </section>
         

        {{-- Seller - Buyer --}}
        <table class="table" style="margin-top:150px;">
            <tbody>
                <tr>
                    <td class="px-0">
                   
                            <p class="seller-name">
                                <strong>{{$purchase_invoice [0]->name}}</strong>
                            </p>
                   

                     
                            <p class="seller-address">
                                Email: {{$purchase_invoice [0]->email}}
                            </p>
                    

                  
                            <p class="seller-code">
                          Phone Number: {{ $purchase_invoice [0]->phone }}
                            </p>
                   

                            <p class="seller-vat">
                              Location:{{$purchase_invoice [0]->address}}
                            </p>
                            <p class="seller-vat">
                             Tin Number:{{$purchase_invoice [0]->tin_number}}
                            </p>
                            <p class="seller-vat">
                             VRN:{{$purchase_invoice [0]->vrn}}
                            </p>
                            
                            
                    
                    </td>
                    <td class="px-0">
                     
                            <p class="buyer-name">
                                <strong>Invoice Date</strong>
                            </p>
                      

                     
                            <p class="buyer-address">
                            {{$date_invo}}
                            </p>
        
                            <p class="buyer-code">
                            <strong>Invoice Number </strong>
                            </p>
                              <p class="buyer-phone">
                              {{$purchase_invoice [0]->purchase_invoice1}}
                                </p>
                   
                    
                    </td>
                    <td class="vl" ></td>
                    <td class="px-0">
                           @foreach($owner as $owner)
                            <p class="buyer-name">
                                <strong>{{$owner->name}}</strong>
                            </p>
                      

                     
                            <p class="buyer-address">
                           Email:{{$owner->email}}
                            </p>
                     

                    
                            <p class="buyer-code">
                         Phone Number: {{$owner->phone}}
                            </p>
                    

                     
                            <p class="buyer-vat">
                            Location: {{$owner->location }}
                            </p>
                 
                            <p class="buyer-phone">
                                Tin Number: {{ $owner->tin_number }}
                   
                            @endforeach
                             </td>
                               </tr>
            </tbody>
        </table>

        {{-- Table --}}
        <table class="table table-bordered">
            <thead>
                <tr style="background-color:#87C0EC;width:100%">  
              
                    <th scope="col" class="border-0 pl-0">Item names</th>
                    <th scope="col" class="text-right border-0 pr-0">Qty</th>
                    <th scope="col" class="text-right border-0 pr-0">Unity Price</th>
                    <th scope="col" class="text-right border-0 pr-0">Amount</th>
                </tr>
            </thead>
            <tbody>
                {{-- Items --}}
                @foreach(
                $purchase_invoice  as $invoice)
                <tr>
                 
                    <td class="pl-0">
                      {{$invoice->item_name}}
                    </td>
                    <td class="text-right">
                    {{$invoice->qty}}
                        </td>
                        <td class="text-right">
                    {{$invoice->price}}
                        </td>
                 
                        <td class="text-right">
                    {{$invoice->amt}}
                        </td>
               

                   
               
                </tr>
                @endforeach   
            
                <tr>
                    <td >
                      <td></td>
                 
                        <td class="text-right">
                        SUB TOTAL:
                        </td>
                      <td class="text-right" >
                       <strong style="color:#4682B4"> Tsh:{{$purchase_invoice [0]->sub_total}}/=</strong>
                        </td>
                      
               

                    
                </tr>
           
                <tr>
                    <td >
                 
                
                   
                      <td></td>
                        <td class="text-right">
                      VAT(18%):
                        </td>
                 
                        <td class="text-right">
                        <strong style="color:#4682B4">Tsh:{{$purchase_invoice [0]->vat}}/=</strong>
                        </td>
                </tr>

                <tr>
                    <td>
                      <td></td>
                        <td class="text-right">
                        DIS COUNT
                        </td>
                        <td class="text-right">
                        <strong class='text-infor'>Tsh:{{$purchase_invoice [0]->discount}}/=</strong>
                        </td>
                </tr>
                <tr  style="border:0px">  
                <td>
                 <td></td>
                        <td class="text-right">
                       NET TOTAL
                        </td>
                        <td class="text-right">
                        <strong>Tsh:{{$purchase_invoice [0]->net_paid}}/=</strong>
                        </td>
                  
                </tr>
                <tr style="background-color:#87C0EC;width:100%">
                    <td class="pl-0">
                    
                      <td></td>
                        <td class="text-right">
                      AMOUNT PAID
                        </td>
                        <td class="text-right">
                        <strong  style="color:#B22222">Tsh:{{$purchase_invoice [0]->amount_paid}}/=</strong>
                        </td>
                </tr>
                </tbody>
               </table>
               

   
    </body>
</html>