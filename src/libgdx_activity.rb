require 'ruboto/widget'

class LibgdxActivity
  def onCreate(bundle)
    super
    # TODO: AndroidLauncher integration
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end
end
