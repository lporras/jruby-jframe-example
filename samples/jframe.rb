require "java"

java_import javax.swing.JFrame
java_import javax.swing.JButton
java_import javax.swing.JOptionPane

class HelloWorld < JFrame
  def initialize
    super "JSwing Example"

    set_size(240, 100)
    set_default_close_operation(JFrame::EXIT_ON_CLOSE)
    set_location_relative_to(nil)

    button = JButton.new("Say Hello")
    add(button)

    button.add_action_listener do |e|
      JOptionPane.show_message_dialog(nil, "Hello World")
    end

    set_visible(true)
  end
end
