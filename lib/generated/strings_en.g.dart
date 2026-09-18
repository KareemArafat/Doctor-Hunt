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

	/// en: 'Doctor Hunt'
	String get appName => 'Doctor Hunt';

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

	/// en: 'Forgot Password'
	String get forgotPassword => 'Forgot Password';

	/// en: 'Enter your email for the verification process, we will send 4 digits code to your email.'
	String get forgotPasswordDescription => 'Enter your email for the verification process, we will send 4 digits code to your email.';

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

	/// en: 'continue'
	String get kContinue => 'continue';

	/// en: 'Update Password'
	String get updatePassword => 'Update Password';

	/// en: 'Admin Login'
	String get adminLogin => 'Admin Login';

	/// en: 'Sign in to access your admin dashboard'
	String get adminLoginDescription => 'Sign in to access your admin dashboard';

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

	/// en: 'There are currently no doctors registered onDoctor Hunt. Add your first doctor to get started.'
	String get noDoctorsFoundDescription => 'There are currently no doctors registered onDoctor Hunt. Add your first doctor to get started.';

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

	/// en: 'Active & Available'
	String get activeAndAvailable => 'Active & Available';

	/// en: 'Save Changes'
	String get saveChanges => 'Save Changes';

	/// en: 'Delete Doctor'
	String get deleteDoctor => 'Delete Doctor';

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
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'appName' => 'Doctor Hunt',
			'onboarding1Title' => 'Find Trusted Doctors',
			'onboarding2Title' => 'Choose Best Doctors',
			'onboarding3Title' => 'Easy Appointments',
			'onboardingDescription' => 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of it over 2000 years old.',
			'next' => 'Next',
			'skip' => 'Skip',
			'getStarted' => 'Get Started',
			'chooseRoleTittle' => 'Choose your role',
			'chooseRoleDescription' => 'The selected role determines the experience and available features.',
			'patient' => 'Patient',
			'chooseRolePatientDescription' => 'Find doctors, book appointments, and manage your medical records.',
			'admin' => 'Admin',
			'chooseRoleAdminDescription' => 'Manage doctors, appointments, users, and the platform.',
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
			'forgotPassword' => 'Forgot Password',
			'forgotPasswordDescription' => 'Enter your email for the verification process, we will send 4 digits code to your email.',
			'enterDigitsTittle' => 'Enter 4 Digits Code',
			'enterDigitsDescription' => 'Enter the 4 digits code that you received on your email.',
			'resetPasswordTittle' => 'Reset Password',
			'resetPasswordDescription' => 'Set the new password for your account so you can login and access all the features.',
			'newPassword' => 'New Password',
			'reEnterPassword' => 'Re-enter Password',
			'kContinue' => 'continue',
			'updatePassword' => 'Update Password',
			'adminLogin' => 'Admin Login',
			'adminLoginDescription' => 'Sign in to access your admin dashboard',
			'doctors' => 'Doctors',
			'activeDoctors' => 'Active Doctors',
			'totalDoctors' => 'Total Doctors',
			'searchDoctors' => 'Search doctors...',
			'noDoctorsFound' => 'No Doctors Found',
			'noDoctorsFoundDescription' => 'There are currently no doctors registered onDoctor Hunt. Add your first doctor to get started.',
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
			'activeAndAvailable' => 'Active & Available',
			'saveChanges' => 'Save Changes',
			'deleteDoctor' => 'Delete Doctor',
			'settings' => 'Settings',
			'adminProfile' => 'Admin Profile',
			'adminProfileDescription' => 'Edit super admin details & permissions',
			'changePassword' => 'Change Password',
			'changePasswordDescription' => 'Update master security credentials',
			'appInformation' => 'App Information',
			'buildVersion ' => 'Build version ',
			'Logout' => 'Logout',
			'editProfile' => 'Edit Profile',
			'fullName' => 'Full Name',
			'emailAddress' => 'Email Address',
			'doctorDetails' => 'Doctor Details',
			'accountStatus' => 'Account Status',
			'active' => 'Active',
			'inactive' => 'Inactive',
			'administrator' => 'Administrator',
			'adminAccount' => 'admin@doctorhunt.com',
			_ => null,
		};
	}
}
