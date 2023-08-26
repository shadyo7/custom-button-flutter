# custom_button_flutter

A new Flutter project.
Parameters: The CustomButton widget accepts several parameters to customize its appearance and behavior. Here's an overview of these parameters:

-bgColor: The background color of the button.
-titleColor: The text color of the button's label.
-title: The text to be displayed on the button.
-height: The height of the button.
-width: The width of the button.
-onPress: A callback function to be executed when the button is pressed.
-fontSize: The font size of the button's label.
-isSelected: A boolean value indicating whether the button is selected or disabled.
-fontWeight: The font weight of the button's label.
-borderRadius: The border radius of the button.
-Constructor: The constructor for CustomButton is designed with default values for some parameters. This allows you to create buttons quickly without specifying every detail if you   don't need to.

-Container: The button is wrapped in a Container widget, which allows you to set the height, width, and background decoration.

-Decoration: The BoxDecoration is used to define the button's appearance, including its background color and border radius. When the button is disabled (onPress is null or  isSelected  is false), the background color is given 50% opacity.

-TextButton: The actual button is implemented using a TextButton. The onPressed property is conditionally set based on the isSelected value, making it clickable only when the button is enabled.

-Text: The button's label is displayed using the Text widget, with customizable text properties like color, font size, and font weight.
