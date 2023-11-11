<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\CustomerController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProductInController;
use App\Http\Controllers\ProductOutController;
use App\Http\Controllers\SaleController;
use App\Http\Controllers\ExpensiveController;
use App\Http\Controllers\SupplierController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\HomeFurmController;
use App\Http\Controllers\TaskController;
use App\Http\Controllers\FurmandCleanessController;
use App\Http\Controllers\EquipmentController;
use App\Http\Controllers\CausalLabourController;
use App\Http\Controllers\HomeCasualLabour;
use App\Http\Controllers\CompanyInforController;
use App\Http\Controllers\CompanyController; 
use App\Http\Controllers\TruckController;
use App\Http\Controllers\StaffingController;
use App\Http\Controllers\PaymentController;
use App\Http\Controllers\ContainersController;
use App\Http\Controllers\PaymentInfoController;
use App\Http\Controllers\RemarkController;
use App\Http\Controllers\Paymenthistory;
use App\Http\Controllers\LabourController;
use App\Http\Controllers\ExpensiveStaffing;
use App\Http\Controllers\AccountController;
use App\Http\Controllers\SalesController;
use App\Http\Controllers\FumigationAccount;
use App\Http\Controllers\FumigationExpensive;
use App\Http\Controllers\DepositeController;
use App\Http\Controllers\DepositeFumigationController;
use App\Http\Controllers\PaymentFumigation;
use App\Http\Controllers\LabourFumigation;
use App\Http\Controllers\HomeAsaliController;
use App\Http\Controllers\WelcomeHomeController;
use App\Http\Controllers\AsaliAccountController;
use App\Http\Controllers\AsaliExpensiveController;
use App\Http\Controllers\AsaliDepositeController;
use App\Http\Controllers\TransferCoroller;
use App\Http\Controllers\FumigationTransfer;
use App\Http\Controllers\AsaliTransfer;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\NormalUserController;
use App\Http\Controllers\CompanyProfileController;
use App\Http\Controllers\PurchaseInvoice;
use App\Http\Controllers\SupplierFumController;
use App\Http\Controllers\PurchaseFumInvoice;
use App\Http\Controllers\CompanyFumController;
use App\Http\Controllers\Acontroller;
use App\Http\Controllers\BackupController;
use App\Http\Controllers\PurchasePayment;
use App\Http\Controllers\PurchasePayment1;
use App\Http\Controllers\TryControler;
Auth::routes();
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/signIn', function () {
	return view('auth.login');
});

Route::get('/', function () {
	return view('website.font.index');
});
Route::get('/about', function () {
	return view('website.font.about');
});
Route::get('/miscellaneous_port_services', function () {
	return view('website.font.port_services');
});
Route::get('/fumigation', function () {
	return view('website.font.fumigation');
});
Route::get('/contact', function () {
	return view('website.font.contact');
});

Route::get('/container_desicants', function () {
	return view('website.font.desiccants');
});

Route::resource('/try',TryControler::class);

Route::get('/forgot', function () {
	return view('auth.passwords.forgot');
});
Route::get('/a',[Acontroller::class,'index']);


Route::group(['middleware' => 'auth'], function () {
	Route::get('backup', [BackupController::class,'index']);
	Route::get('backup/create', [BackupController::class,'create']);
	Route::get('backup/download/{file_name}', [BackupController::class,'download']);
	Route::get('backup/delete/{file_name}', [BackupController::class,'delete']);


	Route::get('/homeuser',[NormalUserController::class,'index']);
	Route::get('/home', [HomeCasualLabour::class,'index']);
	Route::get('/asali', [HomeController::class,'index'])->name('asali');
	route::resource('/homefurm',HomeFurmController::class);
Route::get('cat',[CategoryController::class,'index']);
Route::resource('categories', CategoryController::class);
//Route::get('editCat/{id}',[CategoryController::class,'edit']);




//Customer route will be here
Route::resource('/customers',CustomerController::class);
Route::get('/apiCustomer', [CustomerController::class,'apiCustomers']);

//Company Profile will be here

Route::resource('/cprofile',CompanyProfileController::class);
Route::get('/apiProfile', [CompanyProfileController::class,'apiProfile']);

//Route::get('products',[ProductController::class,'index']);
Route::resource('/products', ProductController::class);

Route::post('postProduct',[ProductController::class,'update']);

//Supplier Route will be here
Route::resource('suppliers',SupplierController::class);
Route::get('/apiSuppliers', [SupplierController::class,'apiSuppliers']);
//Supplier Route will be here
Route::resource('suppliers1',SupplierFumController::class);
Route::get('/apiSuppliers1', [SupplierFumController::class,'apiSuppliers']);
//Sales Route will be here
Route::resource('sales',SaleController::class);
Route::get('salesApi',[SaleController::class,'salesApi']);

//Product In will be here
Route::get('/get_litre/{id}', [ProductInController::class,'get_litre']);
Route::resource('productsIn',ProductInController::class);

Route::get('/apiProducts_in', [ProductInController::class,'apiProducts_in']);
Route::get('/exportProduct_inAll', [ProductInController::class,'exportProduct_inAll']);
Route::get('/exportProduct_inAllExcel', [ProductInController::class,'exportExcel']);
//Product Out will be here

Route::resource('productsOut',ProductOutController::class);

Route::get('/apiProducts_out', [ProductOutController::class,'apiProducts_out']);
Route::get('/exportProduct_outAll', [ProductOutController::class,'exportProduct_OutAll']);
Route::get('/exportProduct_outAllExcel', [ProductOutController::class,'exportExcel']);


Route::get('/apiProducts', [ProductController::class,'apiProducts']);
Route::get('/apiCategories', [CategoryController::class,'apiCategories']);


//User Route here 
Route::resource('/user',UserController::class);
Route::get('/apiUser', [UserController::class,'apiUsers']);



//Furmigation and cleanness

Route::resource('/expensive',ExpensiveController::class);
Route::get('/apiExpensive', [ExpensiveController::class,'apiExpensive']);
Route::get('/exportProduct_inAll', [ProductInController::class,'exportProduct_inAll']);
Route::get('/exportProduct_inAllExcel', [ProductInController::class,'exportExcel']);



//Furm home route


//furm task will be here
route::resource('/task',TaskController::class);
Route::get('/apiTask', [TaskController::class,'apiTask']);

//furm and cleaness 
route::resource('/furm',FurmandCleanessController::class);
Route::get('/apiFurm', [FurmandCleanessController::class,'apiFurm']);
route::get('/view/{id}',[FurmandCleanessController::class,'edit']);
//furm equipment route will be here
route::resource('/equipment',EquipmentController::class);
Route::get('/apiEquipment', [EquipmentController::class,'apiEquipment']);


//causal labour 
route::resource('/casual_labour',CausalLabourController::class);
route::resource('/homecasual',HomeCasualLabour::class);

//campony information
route::resource('/company_info',CompanyInforController ::class);
route::get('/apiCompany_info', [CompanyInforController::class,'apiCompany_info']);

route::get('/view_company/{id}',[CompanyInforController::class,'view_company']);

route::get('/view_company_fumigation/{id}',[CompanyFumController::class,'view_company_fumigation']);
route::post('/exportCustomerInvoiceF',[CompanyFumController::class,'exportCustomerInvoice']);

route::resource('/company_info1',CompanyFumController ::class);
route::get('/apiCompany_info1', [CompanyFumController::class,'apiCompany_info']);

route::post('/exportCustomerInvoice',[CompanyInforController::class,'exportCustomerInvoice']);


//Truck information
route::resource('/truck',TruckController::class);
route::get('/apiTruck', [TruckController::class,'apiTruck']);


//Staffing Route
route::resource('/staffing',StaffingController::class);
route::get('/apiStaffing', [StaffingController::class,'apiStaffing']);
route::get('/apiCloseStaffing', [StaffingController::class,'apiCloseStaffing']);
route::get('/view_details/{id}',[StaffingController::class,'edit']);


Route::get('/exportStaffing/{id}',  [StaffingController::class,'exportStaffing']);
Route::get('/exportStaffingLim/{id}',  [StaffingController::class,'exportStaffingLim']);
//prove invoice will be here
route::get('/approve/{id}',[StaffingController::class,'approve']);
route::get('/approve1/{id}',[FurmandCleanessController::class,'approve']);

Route::get('/exportProforma/{id}',  [StaffingController::class,'proformaInvoice']);

Route::get('/exportProformaLim/{id}',  [StaffingController::class,'proformaInvoiceLim']);

route::post('/exportinvoice',[StaffingController::class,'exportsearch']);
route::post('/search',[StaffingController::class,'searchStaffing']);




//Contaier information
route::resource('/invoice',ContainersController::class);
route::get('/apiInvoice', [ContainersController::class,'apiInvoice']);


//payment information
route::resource('/payment_info',PaymentInfoController ::class);
route::get('/apiPayInfo', [PaymentInfoController ::class,'apiPayInfo']);

//Remark information
route::resource('/remarks',RemarkController::class);
route::get('/apiRemark', [RemarkController ::class,'apiRemark']);


//Payment for Staffing and Distaffing
route::resource('/payment',PaymentController::class);
route::get('/apiPayment', [PaymentController::class,'apiPayment']);


route::get('/pay_hist', [Paymenthistory::class,'apiPaymenthist']);
route::resource('/payment_history', Paymenthistory::class);


//labour payment will be here

route::get('/labourApi', [LabourController::class,'apiLabour']);
route::resource('/labour', LabourController::class);

//expensive for staffing
route::get('/ExpensiveApi', [ExpensiveStaffing::class,'ExpensiveApi']);
route::resource('/expensive_staff', ExpensiveStaffing::class);

route::get('/accountApi', [AccountController::class,'accountApi']);
route::resource('/account_staff', AccountController::class);

//new controller for Fumigation
route::get('/apiSales', [SalesController::class,'apiSales']);
route::resource('/sales',SalesController::class);

//furm and cleaness 
route::resource('/invoice1',FurmandCleanessController::class);
Route::get('/apiInvoice1', [FurmandCleanessController::class,'apiInvoice1']);
Route::get('/apiCloseInvoice1', [FurmandCleanessController::class,'apiCloseInvoice1']);

Route::get('/exportFurmigation/{id}',  [FurmandCleanessController::class,'exportStaffing']);
Route::get('/exportFurmigation_lm/{id}',  [FurmandCleanessController::class,'exportStaffingLim']);

route::get('/view_details1/{id}',[FurmandCleanessController::class,'edit']);
Route::get('/exportProforma1/{id}',  [FurmandCleanessController::class,'proformaInvoice']);
Route::get('/exportProforma1_lm/{id}',  [FurmandCleanessController::class,'proformaInvoiceLim']);
//fumigation account will be here
route::resource('/fumAccount',FumigationAccount::class);
Route::get('/apiFumigation', [FumigationAccount::class,'apiFumigation']);

//expensive fumigation will be here
route::resource('/fumExpensive',FumigationExpensive::class);
Route::get('/apiFumExpensive', [FumigationExpensive::class,'apiFumExpensive']);


//deposite route will be here
//expensive fumigation will be here
route::resource('/deposite_history',DepositeController::class);
Route::get('/apiDeposite', [DepositeController::class,'apiDeposite']);
Route::get('/check_account/{id}', [DepositeController::class,'check_account']);

Route::get('/check_balance/{id}', [DepositeController::class,'check_balance']);

route::resource('/deposite_furm',DepositeFumigationController::class);
Route::get('/apiDeposite1', [DepositeFumigationController::class,'apiDeposite1']);

//fumigation payment history
//Payment for Staffing and Distaffing
route::resource('/payment1',PaymentFumigation::class);
route::get('/apiPayment1', [PaymentFumigation::class,'apiPayment1']);

//labour fumigation will be here
route::resource('/labour1',LabourFumigation::class);
route::get('/labourApi1', [LabourFumigation::class,'labourApi1']);

//Asali will be here
route::resource('/asaliAccount',AsaliAccountController::class);
route::get('/asaliAccountApi', [AsaliAccountController::class,'asaliAccountApi']);
//Asali expensive will be here
route::resource('/asaliExpensive',AsaliExpensiveController::class);
route::get('/asaliExpensiveApi', [AsaliExpensiveController::class,'asaliExpensiveApi']);
route::resource('/userasaliExpensive',UserAsaliExpensiveController::class);
route::resource('/deposite_asali',AsaliDepositeController::class);
route::get('/asaliDepositeApi', [AsaliDepositeController::class,'asaliDepositeApi']);

//transfer route will be here 
route::resource('/transfer',TransferCoroller::class);
route::get('/apiTransfer', [TransferCoroller::class,'apiTransfer']);
//transfer for fumigation
route::resource('/transfer1',FumigationTransfer::class);
route::get('/apiTransfer1', [FumigationTransfer::class,'apiTransfer']);

route::resource('/transfer2',AsaliTransfer::class);
route::get('/apiTransfer2', [AsaliTransfer ::class,'apiTransfer']);


//route for users

route::resource('/purchase_invoice',PurchaseInvoice::class);
route::get('/apiPurchase', [PurchaseInvoice::class,'apiPurchase']);
route::get('/exportCasual/{id}', [PurchaseInvoice::class,'exportStaffing']);
route::get('/view_detail/{id}',[PurchaseInvoice::class,'edit']);
// route for admin

route::resource('/purchase_invoice1',PurchaseFumInvoice::class);
route::get('/apiPurchase1', [PurchaseFumInvoice::class,'apiPurchase']);
route::get('/view_detail1/{id}',[PurchaseFumInvoice::class,'edit']);
Route::get('/exportPurchase/{id}',  [PurchaseFumInvoice::class,'exportStaffing']);

route::resource('/purchase_history',PurchasePayment::class);
route::get('/apiPurchaseHistory', [PurchasePayment::class,'apiPurchaseHistory']);


route::resource('/purchase_history1',PurchasePayment1::class);
route::get('/apiPurchaseHistory1', [PurchasePayment1::class,'apiPurchaseHistory']);
 });




