require 'ruboto/widget'

class LibgdxActivity
  def onCreate(bundle)
    super
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end
end

start_ruboto_activity "com.terrace.libgdx.android.AndroudLauncher"
