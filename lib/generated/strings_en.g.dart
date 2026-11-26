///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  _meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		_meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	final TranslationMetadata<AppLocale, Translations> _meta;
	@override TranslationMetadata<AppLocale, Translations> get $meta => _meta;

	/// Access flat map
	dynamic operator[](String key) => _meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations

	/// en: 'App'
	String get comment__1 => 'App';

	/// en: 'Doctor Hunt'
	String get appName => 'Doctor Hunt';

	/// en: 'Onboarding'
	String get comment__2 => 'Onboarding';

	/// en: 'Find Trusted Doctors'
	String get onboarding1Title => 'Find Trusted Doctors';

	/// en: 'Choose Best Doctors'
	String get onboarding2Title => 'Choose Best Doctors';

	/// en: 'Easy Appointments'
	String get onboarding3Title => 'Easy Appointments';

	/// en: 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.'
	String get onboardingDescription => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.';

	/// en: 'Next'
	String get next => 'Next';

	/// en: 'Skip'
	String get skip => 'Skip';

	/// en: 'Get Started'
	String get getStarted => 'Get Started';

	/// en: 'Role Selection'
	String get comment__3 => 'Role Selection';

	/// en: 'Choose your role'
	String get chooseRoleTittle => 'Choose your role';

	/// en: 'The selected role determines the experience and available features.'
	String get chooseRoleDescription => 'The selected role determines the experience and available features.';

	/// en: 'Patient'
	String get patient => 'Patient';

	/// en: 'Find doctors, book appointments, and manage your medical records.'
	String get chooseRolePatientDescription => 'Find doctors, book appointments, and manage your medical records.';

	/// en: 'Admin'
	String get admin => 'Admin';

	/// en: 'Manage doctors, appointments, users, and the platform.'
	String get chooseRoleAdminDescription => 'Manage doctors, appointments, users, and the platform.';

	/// en: 'Authentication'
	String get comment__4 => 'Authentication';

	/// en: 'Join us to start searching'
	String get signupTittle => 'Join us to start searching';

	/// en: 'Welcome back'
	String get loginTittle => 'Welcome back';

	/// en: 'You can search course, apply course and find scholarship for abroad studies'
	String get signDescription => 'You can search course, apply course and find scholarship for abroad studies';

	/// en: 'Google'
	String get google => 'Google';

	/// en: 'Name'
	String get name => 'Name';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'I agree with the Terms of Service & Privacy Policy'
	String get agreePrivacyPolicy => 'I agree with the Terms of Service & Privacy Policy';

	/// en: 'Sign up'
	String get signup => 'Sign up';

	/// en: 'Have an account? Log in'
	String get haveAccount => 'Have an account? Log in';

	/// en: 'Login'
	String get login => 'Login';

	/// en: 'Don’t have an account? Join us'
	String get DoNotHaveAccount => 'Don’t have an account? Join us';

	/// en: 'Admin Login'
	String get adminLogin => 'Admin Login';

	/// en: 'Sign in to access your admin dashboard'
	String get adminLoginDescription => 'Sign in to access your admin dashboard';

	/// en: 'Send Reset Link'
	String get sendResetLink => 'Send Reset Link';

	/// en: 'Reset link sent successfully! Please check your email'
	String get resetLinkSentSuccessfully => 'Reset link sent successfully! Please check your email';

	/// en: 'Password Recovery'
	String get comment__5 => 'Password Recovery';

	/// en: 'Forgot Password'
	String get forgotPassword => 'Forgot Password';

	/// en: 'Enter your email address and we'll send you a password reset link.'
	String get forgotPasswordDescription => 'Enter your email address and we\'ll send you a password reset link.';

	/// en: 'Enter 4 Digits Code'
	String get enterDigitsTittle => 'Enter 4 Digits Code';

	/// en: 'Enter the 4 digits code that you received on your email.'
	String get enterDigitsDescription => 'Enter the 4 digits code that you received on your email.';

	/// en: 'Reset Password'
	String get resetPasswordTittle => 'Reset Password';

	/// en: 'Set the new password for your account so you can login and access all the features.'
	String get resetPasswordDescription => 'Set the new password for your account so you can login and access all the features.';

	/// en: 'New Password'
	String get newPassword => 'New Password';

	/// en: 'Re-enter Password'
	String get reEnterPassword => 'Re-enter Password';

	/// en: 'Continue'
	String get kContinue => 'Continue';

	/// en: 'Update Password'
	String get updatePassword => 'Update Password';

	/// en: 'Doctors Management'
	String get comment__6 => 'Doctors Management';

	/// en: 'Doctors'
	String get doctors => 'Doctors';

	/// en: 'Active Doctors'
	String get activeDoctors => 'Active Doctors';

	/// en: 'Total Doctors'
	String get totalDoctors => 'Total Doctors';

	/// en: 'Search doctors...'
	String get searchDoctors => 'Search doctors...';

	/// en: 'No Doctors Found'
	String get noDoctorsFound => 'No Doctors Found';

	/// en: 'There are currently no doctors registered on Doctor Hunt. Add your first doctor to get started.'
	String get noDoctorsFoundDescription => 'There are currently no doctors registered on Doctor Hunt. Add your first doctor to get started.';

	/// en: 'Add Doctor'
	String get addDoctor => 'Add Doctor';

	/// en: 'Create Doctor'
	String get createDoctor => 'Create Doctor';

	/// en: 'Add Photo'
	String get addPhoto => 'Add Photo';

	/// en: 'Doctor Name'
	String get doctorName => 'Doctor Name';

	/// en: 'e.g. Dr. Ahmed Ali'
	String get doctorNameExample => 'e.g. Dr. Ahmed Ali';

	/// en: 'Medical Specialty'
	String get medicalSpecialty => 'Medical Specialty';

	/// en: 'Select Specialty'
	String get selectSpecialty => 'Select Specialty';

	/// en: 'Edit Doctor'
	String get editDoctor => 'Edit Doctor';

	/// en: 'Tap photo to change'
	String get tapPhotoToChange => 'Tap photo to change';

	/// en: 'Specialty'
	String get specialty => 'Specialty';

	/// en: 'Doctor Status'
	String get doctorStatus => 'Doctor Status';

	/// en: 'Save Changes'
	String get saveChanges => 'Save Changes';

	/// en: 'Delete Doctor'
	String get deleteDoctor => 'Delete Doctor';

	/// en: 'Admin Settings'
	String get comment__7 => 'Admin Settings';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'Admin Profile'
	String get adminProfile => 'Admin Profile';

	/// en: 'Edit super admin details & permissions'
	String get adminProfileDescription => 'Edit super admin details & permissions';

	/// en: 'Change Password'
	String get changePassword => 'Change Password';

	/// en: 'Update master security credentials'
	String get changePasswordDescription => 'Update master security credentials';

	/// en: 'App Information'
	String get appInformation => 'App Information';

	/// en: 'Build version '
	String get buildVersion  => 'Build version ';

	/// en: 'Logout'
	String get Logout => 'Logout';

	/// en: 'Log out?'
	String get logoutConfirmationTitle => 'Log out?';

	/// en: 'Are you sure you want to log out?'
	String get logoutConfirmationMessage => 'Are you sure you want to log out?';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Yes'
	String get yes => 'Yes';

	/// en: 'Profile'
	String get comment__8 => 'Profile';

	/// en: 'Edit Profile'
	String get editProfile => 'Edit Profile';

	/// en: 'Full Name'
	String get fullName => 'Full Name';

	/// en: 'Email Address'
	String get emailAddress => 'Email Address';

	/// en: 'Doctor Details'
	String get doctorDetails => 'Doctor Details';

	/// en: 'Account Status'
	String get accountStatus => 'Account Status';

	/// en: 'Active'
	String get active => 'Active';

	/// en: 'Inactive'
	String get inactive => 'Inactive';

	/// en: 'Administrator'
	String get administrator => 'Administrator';

	/// en: 'admin@doctorhunt.com'
	String get adminAccount => 'admin@doctorhunt.com';

	/// en: 'Validation & Messages'
	String get comment__9 => 'Validation & Messages';

	/// en: 'Please select specialty'
	String get pleaseSelectSpecialty => 'Please select specialty';

	/// en: 'This field is required'
	String get thisFieldIsRequired => 'This field is required';

	/// en: 'Name must be at least 3 characters'
	String get invalidName => 'Name must be at least 3 characters';

	/// en: 'Please enter a valid email address'
	String get invalidEmail => 'Please enter a valid email address';

	/// en: 'Password must be at least 8 characters'
	String get invalidPassword => 'Password must be at least 8 characters';

	/// en: 'You must agree to the privacy policy'
	String get youMustAgreeToThePrivacyPolicy => 'You must agree to the privacy policy';

	/// en: 'Doctor added successfully!'
	String get doctorAddedSuccessfully => 'Doctor added successfully!';

	/// en: 'Doctor edited successfully!'
	String get doctorEditedSuccessfully => 'Doctor edited successfully!';

	/// en: 'Doctor deleted successfully!'
	String get doctorDeletedSuccessfully => 'Doctor deleted successfully!';

	/// en: 'Profile edited successfully!'
	String get profileEditedSuccessfully => 'Profile edited successfully!';

	/// en: 'Home'
	String get comment__10 => 'Home';

	/// en: 'Find Your Doctor'
	String get findYourDoctor => 'Find Your Doctor';

	/// en: 'Popular Doctors'
	String get popularDoctors => 'Popular Doctors';

	/// en: 'Top Rated Doctors'
	String get topRatedDoctors => 'Top Rated Doctors';

	/// en: 'See all'
	String get seeAll => 'See all';

	/// en: 'Find Doctors'
	String get findDoctors => 'Find Doctors';

	/// en: 'No popular doctors available right now.'
	String get noPopularDoctors => 'No popular doctors available right now.';

	/// en: 'No top rated doctors available right now.'
	String get noTopRatedDoctors => 'No top rated doctors available right now.';

	/// en: 'No doctors available for this specialty right now.'
	String get noDoctorsAvailableForThisSpecialty => 'No doctors available for this specialty right now.';

	/// en: 'Please choose role'
	String get pleaseChooseRole => 'Please choose role';

	/// en: 'Privacy Policy'
	String get privacyPolicy => 'Privacy Policy';

	/// en: 'Doctor Hunt App Privacy Policy'
	String get privacyPolicyTitle => 'Doctor Hunt App Privacy Policy';

	/// en: 'We value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, store, and protect your data when you use the Doctor Hunt application. By using our app, you agree to the practices described in this policy.'
	String get privacyPolicyDescription => 'We value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, store, and protect your data when you use the Doctor Hunt application. By using our app, you agree to the practices described in this policy.';

	/// en: 'We collect personal information such as your name, email address, and other details necessary to provide our services.'
	String get privacyPolicyPoint1 => 'We collect personal information such as your name, email address, and other details necessary to provide our services.';

	/// en: 'Your information is used to improve your experience, provide our services, and ensure the proper functionality of the application.'
	String get privacyPolicyPoint2 => 'Your information is used to improve your experience, provide our services, and ensure the proper functionality of the application.';

	/// en: 'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, or disclosure.'
	String get privacyPolicyPoint3 => 'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, or disclosure.';

	/// en: 'We do not sell or share your personal information with third parties, except when necessary to provide our services or comply with legal obligations.'
	String get privacyPolicyPoint4 => 'We do not sell or share your personal information with third parties, except when necessary to provide our services or comply with legal obligations.';

	/// en: 'We may update this Privacy Policy from time to time. Any changes will be reflected on this page. We encourage you to review this policy regularly to stay informed about how we protect your privacy.'
	String get privacyPolicyFooter => 'We may update this Privacy Policy from time to time. Any changes will be reflected on this page. We encourage you to review this policy regularly to stay informed about how we protect your privacy.';

	/// en: 'Change'
	String get change => 'Change';

	/// en: 'Current Password'
	String get currentPassword => 'Current Password';

	/// en: 'Confirm Password'
	String get confirmPassword => 'Confirm Password';

	/// en: 'Password changed successfully.'
	String get passwordChangedSuccessfully => 'Password changed successfully.';

	/// en: 'Passwords do not match.'
	String get passwordsDoNotMatch => 'Passwords do not match.';

	/// en: 'Favorite Doctors'
	String get favoriteDoctors => 'Favorite Doctors';

	/// en: 'You haven't added any favorite doctors yet.'
	String get noFavoriteDoctors => 'You haven\'t added any favorite doctors yet.';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'Consultation Fee'
	String get consultationFee => 'Consultation Fee';

	/// en: 'Manage Availability'
	String get manageAvailability => 'Manage Availability';

	/// en: 'Reviews'
	String get reviews => 'Reviews';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'comment__1' => 'App',
			'appName' => 'Doctor Hunt',
			'comment__2' => 'Onboarding',
			'onboarding1Title' => 'Find Trusted Doctors',
			'onboarding2Title' => 'Choose Best Doctors',
			'onboarding3Title' => 'Easy Appointments',
			'onboardingDescription' => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
			'next' => 'Next',
			'skip' => 'Skip',
			'getStarted' => 'Get Started',
			'comment__3' => 'Role Selection',
			'chooseRoleTittle' => 'Choose your role',
			'chooseRoleDescription' => 'The selected role determines the experience and available features.',
			'patient' => 'Patient',
			'chooseRolePatientDescription' => 'Find doctors, book appointments, and manage your medical records.',
			'admin' => 'Admin',
			'chooseRoleAdminDescription' => 'Manage doctors, appointments, users, and the platform.',
			'comment__4' => 'Authentication',
			'signupTittle' => 'Join us to start searching',
			'loginTittle' => 'Welcome back',
			'signDescription' => 'You can search course, apply course and find scholarship for abroad studies',
			'google' => 'Google',
			'name' => 'Name',
			'email' => 'Email',
			'password' => 'Password',
			'agreePrivacyPolicy' => 'I agree with the Terms of Service & Privacy Policy',
			'signup' => 'Sign up',
			'haveAccount' => 'Have an account? Log in',
			'login' => 'Login',
			'DoNotHaveAccount' => 'Don’t have an account? Join us',
			'adminLogin' => 'Admin Login',
			'adminLoginDescription' => 'Sign in to access your admin dashboard',
			'sendResetLink' => 'Send Reset Link',
			'resetLinkSentSuccessfully' => 'Reset link sent successfully! Please check your email',
			'comment__5' => 'Password Recovery',
			'forgotPassword' => 'Forgot Password',
			'forgotPasswordDescription' => 'Enter your email address and we\'ll send you a password reset link.',
			'enterDigitsTittle' => 'Enter 4 Digits Code',
			'enterDigitsDescription' => 'Enter the 4 digits code that you received on your email.',
			'resetPasswordTittle' => 'Reset Password',
			'resetPasswordDescription' => 'Set the new password for your account so you can login and access all the features.',
			'newPassword' => 'New Password',
			'reEnterPassword' => 'Re-enter Password',
			'kContinue' => 'Continue',
			'updatePassword' => 'Update Password',
			'comment__6' => 'Doctors Management',
			'doctors' => 'Doctors',
			'activeDoctors' => 'Active Doctors',
			'totalDoctors' => 'Total Doctors',
			'searchDoctors' => 'Search doctors...',
			'noDoctorsFound' => 'No Doctors Found',
			'noDoctorsFoundDescription' => 'There are currently no doctors registered on Doctor Hunt. Add your first doctor to get started.',
			'addDoctor' => 'Add Doctor',
			'createDoctor' => 'Create Doctor',
			'addPhoto' => 'Add Photo',
			'doctorName' => 'Doctor Name',
			'doctorNameExample' => 'e.g. Dr. Ahmed Ali',
			'medicalSpecialty' => 'Medical Specialty',
			'selectSpecialty' => 'Select Specialty',
			'editDoctor' => 'Edit Doctor',
			'tapPhotoToChange' => 'Tap photo to change',
			'specialty' => 'Specialty',
			'doctorStatus' => 'Doctor Status',
			'saveChanges' => 'Save Changes',
			'deleteDoctor' => 'Delete Doctor',
			'comment__7' => 'Admin Settings',
			'settings' => 'Settings',
			'adminProfile' => 'Admin Profile',
			'adminProfileDescription' => 'Edit super admin details & permissions',
			'changePassword' => 'Change Password',
			'changePasswordDescription' => 'Update master security credentials',
			'appInformation' => 'App Information',
			'buildVersion ' => 'Build version ',
			'Logout' => 'Logout',
			'logoutConfirmationTitle' => 'Log out?',
			'logoutConfirmationMessage' => 'Are you sure you want to log out?',
			'cancel' => 'Cancel',
			'yes' => 'Yes',
			'comment__8' => 'Profile',
			'editProfile' => 'Edit Profile',
			'fullName' => 'Full Name',
			'emailAddress' => 'Email Address',
			'doctorDetails' => 'Doctor Details',
			'accountStatus' => 'Account Status',
			'active' => 'Active',
			'inactive' => 'Inactive',
			'administrator' => 'Administrator',
			'adminAccount' => 'admin@doctorhunt.com',
			'comment__9' => 'Validation & Messages',
			'pleaseSelectSpecialty' => 'Please select specialty',
			'thisFieldIsRequired' => 'This field is required',
			'invalidName' => 'Name must be at least 3 characters',
			'invalidEmail' => 'Please enter a valid email address',
			'invalidPassword' => 'Password must be at least 8 characters',
			'youMustAgreeToThePrivacyPolicy' => 'You must agree to the privacy policy',
			'doctorAddedSuccessfully' => 'Doctor added successfully!',
			'doctorEditedSuccessfully' => 'Doctor edited successfully!',
			'doctorDeletedSuccessfully' => 'Doctor deleted successfully!',
			'profileEditedSuccessfully' => 'Profile edited successfully!',
			'comment__10' => 'Home',
			'findYourDoctor' => 'Find Your Doctor',
			'popularDoctors' => 'Popular Doctors',
			'topRatedDoctors' => 'Top Rated Doctors',
			'seeAll' => 'See all',
			'findDoctors' => 'Find Doctors',
			'noPopularDoctors' => 'No popular doctors available right now.',
			'noTopRatedDoctors' => 'No top rated doctors available right now.',
			'noDoctorsAvailableForThisSpecialty' => 'No doctors available for this specialty right now.',
			'pleaseChooseRole' => 'Please choose role',
			'privacyPolicy' => 'Privacy Policy',
			'privacyPolicyTitle' => 'Doctor Hunt App Privacy Policy',
			'privacyPolicyDescription' => 'We value your privacy and are committed to protecting your personal information. This Privacy Policy explains how we collect, use, store, and protect your data when you use the Doctor Hunt application. By using our app, you agree to the practices described in this policy.',
			'privacyPolicyPoint1' => 'We collect personal information such as your name, email address, and other details necessary to provide our services.',
			'privacyPolicyPoint2' => 'Your information is used to improve your experience, provide our services, and ensure the proper functionality of the application.',
			'privacyPolicyPoint3' => 'We implement appropriate security measures to protect your personal information against unauthorized access, alteration, or disclosure.',
			'privacyPolicyPoint4' => 'We do not sell or share your personal information with third parties, except when necessary to provide our services or comply with legal obligations.',
			'privacyPolicyFooter' => 'We may update this Privacy Policy from time to time. Any changes will be reflected on this page. We encourage you to review this policy regularly to stay informed about how we protect your privacy.',
			'change' => 'Change',
			'currentPassword' => 'Current Password',
			'confirmPassword' => 'Confirm Password',
			'passwordChangedSuccessfully' => 'Password changed successfully.',
			'passwordsDoNotMatch' => 'Passwords do not match.',
			'favoriteDoctors' => 'Favorite Doctors',
			'noFavoriteDoctors' => 'You haven\'t added any favorite doctors yet.',
			'rating' => 'Rating',
			'consultationFee' => 'Consultation Fee',
			'manageAvailability' => 'Manage Availability',
			'reviews' => 'Reviews',
			_ => null,
		};
	}
}
