import 'package:get/get.dart';

import '../modules/About/bindings/about_binding.dart';
import '../modules/About/views/about_view.dart';
import '../modules/Basic/bindings/basic_binding.dart';
import '../modules/Basic/views/basic_view.dart';
import '../modules/Cart/bindings/cart_binding.dart';
import '../modules/Cart/views/cart_view.dart';
import '../modules/Change_password/bindings/change_password_binding.dart';
import '../modules/Change_password/views/change_password_view.dart';
import '../modules/Chat/bindings/chat_binding.dart';
import '../modules/Chat/views/chat_view.dart';
import '../modules/Confirm_order/bindings/confirm_order_binding.dart';
import '../modules/Confirm_order/views/confirm_order_view.dart';
import '../modules/Confirm_order_delivery/bindings/confirm_order_delivery_binding.dart';
import '../modules/Confirm_order_delivery/views/confirm_order_delivery_view.dart';
import '../modules/Confirm_order_insideCafe/bindings/confirm_order_inside_cafe_binding.dart';
import '../modules/Confirm_order_insideCafe/views/confirm_order_inside_cafe_view.dart';
import '../modules/Confirm_order_table_later/bindings/confirm_order_table_later_binding.dart';
import '../modules/Confirm_order_table_later/views/confirm_order_table_later_view.dart';
import '../modules/Confirm_order_table_now/bindings/confirm_order_table_now_binding.dart';
import '../modules/Confirm_order_table_now/views/confirm_order_table_now_view.dart';
import '../modules/DashBord/bindings/dash_bord_binding.dart';
import '../modules/DashBord/views/dash_bord_view.dart';
import '../modules/Detials_item/bindings/detials_item_binding.dart';
import '../modules/Detials_item/views/detials_item_view.dart';
import '../modules/Detials_item2/bindings/detials_item2_binding.dart';
import '../modules/Detials_item2/views/detials_item2_view.dart';
import '../modules/Edit_profile/bindings/edit_profile_binding.dart';
import '../modules/Edit_profile/views/edit_profile_view.dart';
import '../modules/Enter_reset_password/bindings/enter_reset_password_binding.dart';
import '../modules/Enter_reset_password/views/enter_reset_password_view.dart';
import '../modules/Favorite/bindings/favorite_binding.dart';
import '../modules/Favorite/views/favorite_view.dart';
import '../modules/Get_Location/bindings/get_location_binding.dart';
import '../modules/Get_Location/views/get_location_view.dart';
import '../modules/History_order/bindings/history_order_binding.dart';
import '../modules/History_order/views/history_order_view.dart';
import '../modules/List_order/bindings/list_order_binding.dart';
import '../modules/List_order/views/list_order_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/Otp/bindings/otp_binding.dart';
import '../modules/Otp/views/otp_view.dart';
import '../modules/Otp_reset_password/bindings/otp_reset_password_binding.dart';
import '../modules/Otp_reset_password/views/otp_reset_password_view.dart';
import '../modules/Profile/bindings/profile_binding.dart';
import '../modules/Profile/views/profile_view.dart';
import '../modules/Rating/bindings/rating_binding.dart';
import '../modules/Rating/views/rating_view.dart';
import '../modules/Reservation/bindings/reservation_binding.dart';
import '../modules/Reservation/views/reservation_view.dart';
import '../modules/Reset_password/bindings/reset_password_binding.dart';
import '../modules/Reset_password/views/reset_password_view.dart';
import '../modules/Setting/bindings/setting_binding.dart';
import '../modules/Setting/views/setting_view.dart';
import '../modules/Sign_up/bindings/sign_up_binding.dart';
import '../modules/Sign_up/views/sign_up_view.dart';
import '../modules/boarding/bindings/boarding_binding.dart';
import '../modules/boarding/views/boarding_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BASIC;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BOARDING,
      page: () => BoardingView(),
      binding: BoardingBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.OTP,
      page: () => OtpView(),
      binding: OtpBinding(),
    ),
    GetPage(
      name: _Paths.DETIALS_ITEM,
      page: () => DetialsItemView(),
      binding: DetialsItemBinding(),
    ),
    GetPage(
      name: _Paths.CART,
      page: () => CartView(),
      binding: CartBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
    GetPage(
      name: _Paths.RESERVATION,
      page: () => ReservationView(),
      binding: ReservationBinding(),
    ),
    GetPage(
      name: _Paths.LIST_ORDER,
      page: () => ListOrderView(),
      binding: ListOrderBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER,
      page: () => ConfirmOrderView(),
      binding: ConfirmOrderBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.CHAT,
      page: () => ChatView(),
      binding: ChatBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE,
      page: () => FavoriteView(),
      binding: FavoriteBinding(),
    ),
    GetPage(
      name: _Paths.BASIC,
      page: () => BasicView(),
      binding: BasicBinding(),
    ),
    GetPage(
      name: _Paths.DASH_BORD,
      page: () => DashBordView(),
      binding: DashBordBinding(),
    ),
    GetPage(
      name: _Paths.GET_LOCATION,
      page: () => GetLocationView(),
      binding: GetLocationBinding(),
    ),
    GetPage(
      name: _Paths.SIGN_UP,
      page: () => SignUpView(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT,
      page: () => const AboutView(),
      binding: AboutBinding(),
    ),
    GetPage(
      name: _Paths.RATING,
      page: () => const RatingView(),
      binding: RatingBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER_INSIDE_CAFE,
      page: () => const ConfirmOrderInsideCafeView(),
      binding: ConfirmOrderInsideCafeBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER_DELIVERY,
      page: () => const ConfirmOrderDeliveryView(),
      binding: ConfirmOrderDeliveryBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER_TABLE_LATER,
      page: () => const ConfirmOrderTableLaterView(),
      binding: ConfirmOrderTableLaterBinding(),
    ),
    GetPage(
      name: _Paths.CONFIRM_ORDER_TABLE_NOW,
      page: () => const ConfirmOrderTableNowView(),
      binding: ConfirmOrderTableNowBinding(),
    ),
    GetPage(
      name: _Paths.DETIALS_ITEM2,
      page: () => DetialsItem2View(),
      binding: DetialsItem2Binding(),
    ),
    GetPage(
      name: _Paths.ENTER_RESET_PASSWORD,
      page: () => const EnterResetPasswordView(),
      binding: EnterResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.OTP_RESET_PASSWORD,
      page: () => const OtpResetPasswordView(),
      binding: OtpResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.RESET_PASSWORD,
      page: () => const ResetPasswordView(),
      binding: ResetPasswordBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PASSWORD,
      page: () => const ChangePasswordView(),
      binding: ChangePasswordBinding(),
    ),
    GetPage(
      name: _Paths.HISTORY_ORDER,
      page: () => const HistoryOrderView(),
      binding: HistoryOrderBinding(),
    ),
    GetPage(
      name: _Paths.EDIT_PROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBinding(),
    ),
  ];
}
