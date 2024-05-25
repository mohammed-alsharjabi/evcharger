
class AppLink {

  static const String post="https://jsonplaceholder.typicode.com/posts";


  static const String server = "https://mohammed.com/vehicle";
  static const String imageststatic = "https://mohammed.com/vehicle/upload";

//========================== Image ============================
  static const String imagestCategories = "$imageststatic/categories";
  static const String imagestItems = "$imageststatic/items";
// =============================================================
//
  static const String test = "$server/test.php";

// ================================= Auth ========================== //

  static const String signUp = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";
  static const String verifycodessignup = "$server/auth/verfiycode.php";
  static const String resend = "$server/auth/resend.php";

// ================================= ForgetPassword ========================== //

  static const String checkEmail = "$server/forgetpassword/checkemail.php";
  static const String resetPassword = "$server/forgetpassword/resetpassword.php";
  static const String verifycodeforgetpassword = "$server/forgetpassword/verifycode.php";

// Home

  static const String homepage = "$server/home.php";
// items
  static const String items = "$server/items/items.php";
  static const String searchitems = "$server/items/search.php";

// Favorite
  static const String favoriteAdd = "$server/favorite/add.php";
  static const String favoriteRemove = "$server/favorite/remove.php";
  static const String favoriteView = "$server/favorite/view.php";
  static const String favoriteDelete = "$server/favorite/deletefromfavroite.php";


  // Station
  static const String stationView = "$server/address/view.php";
  static const String stationAdd = "$server/address/add.php";
  static const String stationEdit = "$server/address/edit.php";
  static const String stationDelete = "$server/address/delete.php";

  // Booking
  static const String bookMyBookingView = "$server/address/view.php";
  static const String bookStationBookedView = "$server/address/view.php";
  static const String bookStationHistoryView = "$server/address/view.php";
  static const String bookAdd = "$server/address/add.php";
  static const String bookEdit = "$server/address/edit.php";
  static const String bookDelete = "$server/address/delete.php";


  // connector
  static const String connectorView = "$server/address/view.php";
  static const String connectorAdd = "$server/address/add.php";
  static const String connectorEdit = "$server/address/edit.php";
  static const String connectorDelete = "$server/address/delete.php";


  // Vehicle
  static const String vehicleAdd  = "$server/address/view.php";
  static const String vehicleDelete  = "$server/address/view.php";
  static const String vehicleView  = "$server/address/view.php";
  static const String vehicleEdite = "$server/address/view.php";
  static const String vehicleAll = "$server/address/view.php";

}
