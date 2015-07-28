package com.terrace.libgdx.android;

import android.os.Bundle;

import com.badlogic.gdx.backends.android.AndroidApplication;
import com.badlogic.gdx.backends.android.AndroidApplicationConfiguration;
//import com.terrace.libgdx.TerraceGame;
import com.badlogic.gdx.ApplicationAdapter;
import com.terrace.libgdx.LibgdxActivity;

public class AndroidLauncher extends AndroidApplication {
	@Override
	protected void onCreate (Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);

		/*
		Bundle extras = getIntent().getExtras();
		String gameClassName = extras.getString("game_class_name");
		if (gameClassName == null || gameClassName.length() == 0) {
			throw new RuntimeException("CoreClassName extra is not defined; don't know what Game class to run");
		}

		AndroidApplicationConfiguration config = new AndroidApplicationConfiguration();
		try {
			Class gameClass = Class.forName(gameClassName);
			if (gameClass == null) {
				throw new RuntimeException("Can't find Class for " + gameClassName);
			}

			ApplicationAdapter gameInstance = (ApplicationAdapter)gameClass.newInstance();
			if (gameInstance == null) {
				throw new RuntimeException("Failed to create instance of " + gameClassName);
			}
			initialize(gameInstance, config);
		} catch (Exception e) {
			throw new RuntimeException("Failed to call Class.forName for " + gameClassName, e);
		}
		*/

		ApplicationAdapter gameInstance = LibgdxActivity.mainGame;
		if (gameInstance == null) {
			throw new RuntimeException("@@@ NULL GAME INSTANCE @@@");
		}

		initialize(gameInstance, new AndroidApplicationConfiguration());
	}
}
