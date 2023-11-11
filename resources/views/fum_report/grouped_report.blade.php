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
         #watermark {
                position: fixed;
                bottom:   0px;
                left:     0px;

                /** The width and height may change 
                    according to the dimensions of your letterhead
                **/
                width:    21.8cm;
                height:   28cm;

                /** Your watermark should be behind every content**/
                z-index:  -1000;
            }
        </style>
    </head>

    <body>
        {{-- Header --}}
        <div id="watermark">
   
       <img src="assets2/img/furm.jpg" height="100%" width="100%" style="opacity: 0.05;"/>
        </div>
      <section>
      <div class="box">
      
      <center><p><strong>NARET FUMIGATION AND GENERAL CLEANNESS</strong></p></center>

    </div>
      </section>
          <section>
          <img src="assets2/img/furm.jpg" alt="logo" height="200" style="float:right">
    
         
             
    <div class="box" width="100%">
        <h4 class="text-uppercase" >
            <strong>Invoice's </strong>
        </h4> <p style="font-size:10px;font-weigth: 30px">of  <span style="color:blue; font-size:10px;font-weigth: 30px;">{{$invoice_fumigation_invoice[0]->name}}</span></p>
  </div>
          </section>
         

        {{--
        <table class="table" style="margin-top:150px;">
            <tbody>
                <tr>
                    <td class="px-0">
                   
                            <p class="seller-name">
                                <strong>{{$invoice_fumigation_invoice[0]->name}}</strong>
                            </p>
                   

                     
                            <p class="seller-address">
                                Email: {{$invoice_fumigation_invoice[0]->email}}
                            </p>
                    

                  
                            <p class="seller-code">
                          Phone Number: {{ $invoice_fumigation_invoice[0]->phone }}
                            </p>
                   

                            <p class="seller-vat">
                              Location:{{$invoice_fumigation_invoice[0]->location}}
                            </p>
                            <p class="seller-vat">
                             Tin Number:{{$invoice_fumigation_invoice[0]->tin_number}}
                            </p>
                            
                            <p class="seller-vat">
                             VRN:{{$invoice_fumigation_invoice[0]->vrn}}
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
                            <strong>Due Date </strong>
                            </p>
                    

                     
                            <p class="buyer-address">
                            {{$date_due}}
                            </p>
                            <p class="buyer-code">
                            <strong>Invoice Number </strong>
                            </p>
                              <p class="buyer-phone">
                              {{$invoice_fumigation_invoice[0]->invoice_number}}
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
        --}}
    
        <table class="table" style="margin-top:150px;">
            <thead>
                <tr>
                <th scope="col" class="text-right border-0 pr-0">Invoice Number</th>
                  <th scope="col" class="text-right border-0 pr-0">Invoice Date</th>
                    <th scope="col" class="text-right border-0 pr-0">Invoice Amount</th>
                    <th scope="col" class="text-right border-0 pr-0">Vat</th>
                    <th scope="col" class="text-right border-0 pr-0">Amount Paid</th>
                    <th scope="col" class="text-right border-0 pr-0">Amount Remain</th>
                    <th scope="col" class="text-right border-0 pr-0">Paid Status</th>
                    <th scope="col" class="text-right border-0 pr-0">Currency</th> 
                </tr>
            </thead>
            <tbody>
                {{-- Items --}}
              
                $paid=0;
                $remain=0;
                $vat=0;
                <?php $total = 0 ?>
                <?php $vat = 0?>
                <?php $amount_paid  = 0 ;?>
                <?php $amount_due = 0?>
                
                @foreach(
                $invoice_fumigation_invoice as $invoice)
                <tr>
                <td class="text-right">{{$invoice->invoice_number}}</td>
                <td class="text-right">{{$invoice->date_in}}</td>
                <td class="text-right">{{$invoice->net_total}}</td>
                <td class="text-right">{{$invoice->vat}}</td>
                <td class="text-right">{{$invoice->amount_paid}}</td>
                <td class="text-right">{{$invoice->amount_due}}</td>
                <td class="text-right">{{$invoice->payment_status}}</td>
                @if($invoice->currency=="Tsh")
                <td class="text-right">{{$invoice->currency}}</td>
                @else
                <td class="text-right">USD To Tsh</td> 
                @endif
             
                </tr>
                
                     <?php $total += $invoice->net_total ?>
                      <?php $vat += $invoice->vat ?>
                      <?php $amount_paid  += $invoice->amount_paid ?>
                      <?php $amount_due += $invoice->amount_due ?>

                @endforeach 
              
                <tr>
                      <td >Total:</td>
                      <td></td>
                      
                      <td class="text-right" >{{$total}}
                      </td>
                     <td class="text-right" >{{$vat}}
                     </td>  
                      <td class="text-right" >{{$amount_paid }}
                     </td>   
                     <td class="text-right" >{{$amount_due}}
                     </td>
                     <td>
                    </td>
                    <td>
                    </td>
                </tr>
              
            
            
                </tbody>
               </table>
             
    </body>
</html>