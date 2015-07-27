require 'ruboto/widget'
require 'ruboto/util/toast'

class LibgdxActivity
  def onCreate(bundle)
    super
    # TODO: AndroidLauncher integration
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end

  private

  def butterfly
    @text_view.text = 'What hath Matz wrought!'
    toast 'Flipped a bit via butterfly'
  end

end
