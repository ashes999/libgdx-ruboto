require 'ruboto/widget'
#require 'ruby_terrace_game'
#java_import com.terrace.libgdx.TerraceGame


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
		Gdx.gl.glClearColor(0, 0.25, 0.5, 1)
		Gdx.gl.glClear(GL20.GL_COLOR_BUFFER_BIT)
		@batch.begin
		@batch.draw(@img, 32, 64)
		@batch.end
	end
end

class LibgdxActivity
  def onCreate(bundle)
    super
    Java::ComTerraceLibgdx.LibgdxActivity.mainGame = RubyTerraceGame.new
    game_class_name = 'RubyTerraceGame'
    start_ruboto_activity "AndroidLauncher", {
      :java_class => Java::ComTerraceLibgdxAndroid::AndroidLauncher,
      :extras => { :game_class_name => game_class_name }
    }
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
		#super.onCreate(savedInstanceState)
		config = AndroidApplicationConfiguration.new
		super.initialize(TerraceGame.new, config)
    #super.initialize(RubyTerraceGame.new, config)
	end
end

=end
