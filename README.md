# editable_pin_field

An editable pin code text field for Flutter. Use this plugin for creating custom OTP value forms.

Supports
- Focus change to next field on number enter
- Focus change to previous on backspace
- Enter only 1 digit value per field

## Getting Started

See the project example for getting started with this plugin.

![](https://github.com/psovit/editable_pin_field/blob/master/demo.gif)


## Notes

As shown on the example, you should limit `maxLines` and `maxLength` value to 1 & 2 respectively.

```
PinCodeTextField(
	maxLines: 1,
	maxLength: 2,
	...
```