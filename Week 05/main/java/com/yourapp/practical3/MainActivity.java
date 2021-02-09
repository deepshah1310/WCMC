package com.yourapp.practical3;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.widget.Chronometer;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    private Chronometer chronometer;
    private int time;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        chronometer=(Chronometer)findViewById(R.id.chronometer);
        chronometer.start();
        time=0;
        chronometer.setOnChronometerTickListener(new Chronometer.OnChronometerTickListener() {
            @Override
            public void onChronometerTick(Chronometer chronometer) {
                time++;
                if(time%11==0){
                    Toast.makeText(getApplicationContext(),"10 Seconds Happened",Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}