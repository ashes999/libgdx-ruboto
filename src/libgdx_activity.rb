require 'ruboto/widget'
java_import org.ruboto.EntryPointActivity
#java_import com.terrace.libgdx.Android.AndroidLauncher

class LibgdxActivity
  def onCreate(bundle)
    super
    start_ruboto_activity "AndroidLauncher", { :java_class => Java::ComTerraceLibgdxAndroid::AndroidLauncher }
    #start_ruboto_activity "ComTerraceLibgdxAndroidAndroidLauncher"
    #start_ruboto_activity "AndroidActivity"
    #start_ruboto_activity "RubyAndroidLauncher"
  rescue Exception
    puts "Exception creating activity: #{$!}"
    puts $!.backtrace.join("\n")
  end
end

=begin
java_import android.os.Bundle
java_import com.badlogic.gdx.backends.android.AndroidApplication
java_import com.badlogic.gdx.backends.android.AndroidApplicationConfiguration
java_import com.terrace.libgdx.TerraceGame

class RubyAndroidLauncher < AndroidApplication
	def onCreate (savedInstanceState)
		super.onCreate(savedInstanceState)
		config = AndroidApplicationConfiguration.new
		super.initialize(TerraceGame.new, config)
    #super.initialize(RubyTerraceGame.new, config)
	end
end

java_import com.badlogic.gdx.ApplicationAdapter
java_import com.badlogic.gdx.Gdx
java_import com.badlogic.gdx.graphics.GL20
java_import com.badlogic.gdx.graphics.Texture
java_import com.badlogic.gdx.graphics.g2d.SpriteBatch

class RubyTerraceGame < ApplicationAdapter
	def create
		@batch = SpriteBatch.new
		@img = Texture.new("badlogic.jpg");
	end

	def render
		Gdx.gl.glClearColor(0, 0, 0, 1)
		Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT)
		batch.begin
		batch.draw(img, 32, 64)
		batch.end
	end
end
=end
