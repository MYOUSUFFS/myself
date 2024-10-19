# MySelf Package

[![Pub Version](https://img.shields.io/pub/v/myself.svg?color=42a5f5&style=plastic)](https://pub.dev/packages/myself)
[![GitHub License](https://img.shields.io/github/license/MYOUSUFFS/my_widget.svg?color=FFA500&style=plastic)](https://github.com/MYOUSUFFS/my_widget/blob/master/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/MYOUSUFFS/my_widget.svg?&style=plastic)](https://github.com/MYOUSUFFS/myself/issues)
[![Views](https://hits.sh/github.com/MYOUSUFFS/portfolio.svg?label=views&color=red&style=plastic)](https://hits.sh/github.com/MYOUSUFFS/myself/)
[![GitHub stars](https://img.shields.io/github/stars/MYOUSUFFS/my_widget.svg)](https://github.com/MYOUSUFFS/myself/stargazers)

## About

MySelf is a Flutter package that provides Animation, Form validation, and Beautiful Pre-defined Input Decorations.

They provide functionality for printing colored text in the console (Now only working on Android Device debug). It offers methods to print text in predefined colors, custom RGB colors, material colors, and hexadecimal colors. (dev) It's help to find colorful bugs in our code.

## Features

### MyValidation

> The MyValidation class provides a set of validators for commonly used input fields such as names, mobile numbers, email addresses, and various identification numbers like GST, PAN, and Aadhaar. This package aims to simplify form validation in Flutter applications by providing reusable validation methods

- Name Validator (nameValidator)

  > Ensures the name field is not empty and contains only alphabetical characters.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().nameValidator(name);
    },
  );
  ```

- IFSC Validator (ifscValidator)

  > Validates Indian IFSC codes, ensuring the input follows the required format (4 characters, a '0', and 6 alphanumeric characters).

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().ifscValidator(ifsc);
    },
  );
  ```

- Account Number Validator (accNumValidator)

  > Ensures the account number contains only digits.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().accNumValidator(accountNumber);
    },
  );
  ```

- Mobile Number Validator (mobileNumValidator)

  > Validates Indian mobile numbers, ensuring they start with digits between 6 and 9 and are 10 digits long.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().mobileNumValidator(mobileNumber);
    },
  );
  ```

- Full Name Validator (fullNameValidate)

  > Ensures the name field is not empty and contains only alphabetic characters, spaces, commas, periods, and hyphens.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().fullNameValidate(fullName);
    },
  );
  ```

- Email Validator (emailValidator)

  > Validates standard email formats, ensuring the email field is not empty and follows common email patterns.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().emailValidator(email);
    },
  );
  ```

- Password Validator (passwordValidator)

  > Validates passwords based on the following criteria:

  Usage:

  - At least one uppercase letter (A-Z)
  - At least one lowercase letter (a-z)
  - At least one number (0-9)
  - At least one special character (!@#$&\*~)
  - Minimum length of 8 characters

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().passwordValidator(password);
    },
  );
  ```

- GST Number Validator (gstValidator)

  > Validates Indian GST numbers based on the format: two digits, five letters, four digits, one letter, one alphanumeric character, a 'Z', and another alphanumeric character. It also checks that the first two digits are less than 38.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().gstValidator(gstNumber);
    },
  );
  ```

- PAN Number Validator (panNumberValidator)

  > Validates Indian PAN numbers, ensuring they follow the correct format: three letters, one character indicating the type of holder, one letter, four digits, and one final letter.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().panNumberValidator(panNumber);
    },
  );
  ```

- Aadhaar Number Validator (aadhaarNumberValidator)

  > Validates Indian Aadhaar numbers, ensuring they are exactly 12 digits long.

  Usage:

  ```dart
  TextFormField(
  validator: (value) {
    return MyValidation().aadhaarNumberValidator(aadhaarNumber);
    },
  );
  ```

---

### MySelfColor

- Print text in predefined colors for success, error, and warning messages.
- Print text in custom RGB colors.
- Print text in material colors by providing a `Color` object.
- Print text in colors specified by hexadecimal color codes.
- Convert hexadecimal color codes to RGB values for color printing.

---

### MyAppSize

> This class have 3 diffent major global screen size to help to make responsive screens.

---

## Installation

To use MySelf in your Flutter project, add it as a dependency in your `pubspec.yaml` file:

```yaml
dependencies:
  myself: ^1.0.0
```

## Usage

Import the package in your Dart file:

```dart
import 'package:myself/myself.dart';
```

## MySelfColor

Instantiate the `MySelfColor` class to utilize its color printing methods:

```dart
MySelfColor mySelfColor = MySelfColor();
```

## Print in Default Colors

```dart
mySelfColor.printSuccess(text: "Operation successful");
mySelfColor.printError(text: "Error occurred");
mySelfColor.printWarning(text: "Proceed with caution");
```

## Print in RGB Color

```dart
mySelfColor.printRGB(255, 0, 0, "Custom red color");
```

## Print in Material Color

```dart
mySelfColor.colorPrint(Colors.blue, "Blue text");
```

## Print in Hexadecimal Color

```dart
mySelfColor.printHex("#FFA500", "Orange text");
```

**This is only for the MySelfColor Class example. Please check other class in the** [Others.]()

## Contributing

Contributions to MySelf are welcome! If you encounter any issues or have suggestions for improvements, please open an issue or submit a pull request on [GitHub](https://github.com/MYOUSUFFS/myself).

## License

This package is licensed under the MIT [License](https://github.com/MYOUSUFFS/myself/blob/master/LICENSE). See the LICENSE file for details.
