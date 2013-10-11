package com.example;
import android.app.Activity;
import android.os.Bundle;
import android.widget.TextView;
public class Hellojnicpp extends Activity {
      /** Called when the activity is first created. */
      @Override
      public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            /** Create a TextView and set it to display
            * text from a constant string.
            */
            TextView tv = new TextView(this);
            tv.setText(“Hello from Java!”);
            setContentView(tv);
      }
}