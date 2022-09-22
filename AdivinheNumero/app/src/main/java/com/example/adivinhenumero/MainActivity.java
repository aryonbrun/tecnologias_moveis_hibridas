package com.example.adivinhenumero;

import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;

import java.util.Random;

public class MainActivity extends AppCompatActivity {
    int n;
    String message = "";

    public void randomNumberGenerator() {
        Random rand = new Random();
        n = rand.nextInt(100) + 1;

    }

    public void guess(View view) {

        EditText guess = (EditText) findViewById(R.id.guess);
        int guessInt = Integer.parseInt(guess.getText().toString());

        if(guessInt > n && guessInt < n + 5) {
            message = "Um pouco menos";
        }else if(guessInt < n && guessInt > n - 5){
            message = "Um pouco mais";
        }else if(n > guessInt){
            message = "Mais";
        }else if(n < guessInt){
            message = "Menos";
        }else if(n == guessInt){
            message = "Acertou MISERAVI!";
            randomNumberGenerator();
        }

        Toast.makeText(this, message, Toast.LENGTH_SHORT).show();
    }

    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        randomNumberGenerator();

    }
}