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
      
      <center><p><strong>NARET FUMIGATION AND GENERAL CLEANNESS</strong>{{$date_invo}}-sales Invoice---{{$staffing_invoice[0]->invoice_number}}---</p></center>

    </div>
      </section>
          <section>
          <img src="assets2/img/furm.jpg" alt="logo" height="200" style="float:right">
    
         
             
    <div class="box" width="100%">
        <h4 class="text-uppercase" >
            <strong>Invoice</strong>
        </h4>
  </div>
          </section>
         

        {{-- Seller - Buyer --}}
        <table class="table" style="margin-top:150px;">
            <tbody>
                <tr>
                    <td class="px-0">
                   
                            <p class="seller-name">
                                <strong>{{$staffing_invoice[0]->name}}</strong>
                            </p>
                   

                     
                            <p class="seller-address">
                                Email: {{$staffing_invoice[0]->email}}
                            </p>
                    

                  
                            <p class="seller-code">
                          Phone Number: {{ $staffing_invoice[0]->phone }}
                            </p>
                   

                            <p class="seller-vat">
                              Location:{{$staffing_invoice[0]->location}}
                            </p>
                            <p class="seller-vat">
                             Tin Number:{{$staffing_invoice[0]->tin_number}}
                            </p>
                            
                            <p class="seller-vat">
                             VRN:{{$staffing_invoice[0]->vrn}}
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
                              {{$staffing_invoice[0]->invoice_number}}
                                </p>
                   
                    
                    </td>
                    <td class="vl" ></td>
                    <td class="px-0">
                             <p class="buyer-name">
                                <strong>NARET FUMIGATION AND GENERAL CLEANESS</strong>
                            </p>
                      

                     
                            <p class="buyer-address">
                           Email:naretfumigation@gmail.com
                            </p>
                      
                    
                            <p class="buyer-code">
                             Phone Number: 0753995084/0754687775
                            </p>
                            <p class="buyer-vat">
                            Location:  P.O.Box 6230,Dar es salam
                            </p>
                            <p class="buyer-phone">
                                Tin Number: 116809958
                             </td>
                </tr>
                </tr>
            </tbody>
        </table>

        {{-- Table --}}
        <table class="table">
            <thead>
                <tr>
                <th scope="col" class="border-0 pl-0">#</th> 
                <th scope="col" class="border-0 pl-0">Title</th>
                    <th scope="col" class="border-0 pl-0">Description</th>
                    <th scope="col" class="text-right border-0 pr-0">Qty</th>
                    <th scope="col" class="text-right border-0 pr-0">Unity Price</th>
                    <th scope="col" class="text-right border-0 pr-0">Amount</th>
                </tr>
            </thead>
            <tbody>
            <?php $sn=1;?>
                {{-- Items --}}
                @foreach(
                $staffing_invoice as $invoice)
                <tr>
                <td class="pl-0">
                      {{$sn++}}
                    </td>
                    
                <td class="pl-0">
                      {{$invoice->title}}
                    </td>
                    <td class="pl-0" style="word-wrap:break-word">
                      {{$invoice->description}}
                    </td>
                
                   
                    <td class="text-right">
                    {{$invoice->qty}}
                        </td>
                        <td class="text-right">
                    {{number_format($invoice->price,2)}}
                        </td>
                 
                        <td class="text-right">
                    {{number_format($invoice->amt,2)}}
                        </td>
               

                    <td class="text-right pr-0">
                    
                    </td>
               
                </tr>
                @endforeach   
            
                <tr>
                    <td >
                      <td></td>
                      <td></td>
                      <td></td>
                        <td class="text-right">
                       TOTAL INCLUSIVE OF VAT:
                        </td>
                      <td class="text-right" >
                       <strong style="color:#4682B4"> {{number_format($staffing_invoice[0]->sub_total,2)}}</strong>
                        </td>
                      
               

                    <td>
                    
                    </td>
                </tr>
                <tr  style="border:0px">
                    <td >
                    <td></td>
                     <td></td>
                    <td></td>
                        <td class="text-right">
                       TOTAL EXCLUSIVE OF VAT
                        </td>
                 
                        <td class="text-right">
                        <strong>{{number_format($staffing_invoice[0]->net_total,2)}}</strong>
                        </td>
                    <td>
                    
                    </td>
                </tr>
                <tr>
                    <td >
                 
                
                   
                      <td></td>
                      <td></td>
                      <td></td>
                        <td class="text-right">
                      VAT(18%):
                        </td>
                 
                        <td class="text-right">
                        <strong style="color:#4682B4">{{number_format($staffing_invoice[0]->vat,2)}}</strong>
                        </td>
               

                    <td class="text-right pr-0">
                    
                    </td>
                </tr>
                <tr>
                    <td>
                      <td></td>
                      <td></td>
                      <td></td>
                        <td class="text-right">
                       WITH HOLDING TAX(5%)
                        </td>
                        <td class="text-right">
                        <strong class='text-infor'>{{number_format($staffing_invoice[0]->withhold_amount,2)}}</strong>
                        </td>
                    <td >
                    
                    </td>
                </tr>
                <tr>
                    <td>
                 
                
                   
                      <td></td>
                      <td></td>
                      <td></td>
                        <td class="text-right">
                        DIS COUNT
                        </td>
                        <td class="text-right">
                        <strong class='text-infor'>{{number_format($staffing_invoice[0]->discount,2)}}</strong>
                        </td>
                    <td >
                    
                    </td>
                </tr>
           
                <tr style="border:0px">
                    <td class="pl-0">
                      <td></td>
                      <td></td>
                      <td></td>
                        <td class="text-right">
                      AMOUNT DUE
                        </td>
                        <td class="text-right">
                        <!-- <strong  style="color:#B22222">{{$staffing_invoice[0]->currency}}:{{number_format($staffing_invoice[0]->amount_due,2)}}</strong> -->
                        <strong  style="color:#B22222">{{$staffing_invoice[0]->currency}}:{{number_format($staffing_invoice[0]->sub_total,2)}}</strong>
                        </td>

                    <td>
                    
                    </td>
                </tr>
            
                </tbody>
               </table>
               <h3>Payment Method:</h3>
                Kindly issue cheque/cash Bank:EQUITY BANK,MWENGE BRANCH
                <h3>Payment Method:</h3>
                <p>Kindly issue cheque/cash Bank:<strong>EQUITY BANK,MWENGE BRANCH</strong></p>
                <p>Account Name:<strong>NARET FURMIGATION AND GENERAL CLEANESS</strong></p>
            
                <p>Mpesa:<strong>+255742495218</strong></p>
                <p>Banks Account No:<strong>TZS/USD:3007211570753</strong></p>
               
                 <hr>
                {{-- <p>Dry Bags Only:<strong>AZANIA-MWENGE BRANCH</p>
                 <p>Account Name:<strong>NARET FUMIGATION AND GENERAL CLEANNESS</strong></p>
                 <p>Banks Account No:<strong>TZS/USD:008000056317</strong></p>
                 <hr> --}}
                 <p><strong>Remarks</strong></p>
                 @foreach($remark as $remark)
                 <p>{{$remark->remarks}}</p>
                 @endforeach 

        <script type="text/php">
            if (isset($pdf) && $PAGE_COUNT > 1) {
                $text = "Page {PAGE_NUM} / {PAGE_COUNT}";
                $size = 10;
                $font = $fontMetrics->getFont("Verdana");
                $width = $fontMetrics->get_text_width($text, $font, $size) / 2;
                $x = ($pdf->get_width() - $width);
                $y = $pdf->get_height() - 35;
                $pdf->page_text($x, $y, $text, $font, $size);
            }
        </script>
    </body>
</html>