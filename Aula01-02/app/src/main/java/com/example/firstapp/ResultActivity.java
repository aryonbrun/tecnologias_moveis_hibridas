package com.example.firstapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;

import androidx.annotation.Nullable;

public class ResultActivity extends Activity {


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_result);

        Intent intent = getIntent();
        String valorUm;
        valorUm = intent.getStringExtra(MainActivity.EXTRA_VALOR_UM);
        String valorDois;
        valorDois = intent.getStringExtra(MainActivity.EXTRA_VALOR_DOIS);
        TextView resultView = findViewById(R.id.ResultTextView);
        double valorUmBack = Double.parseDouble(valorUm);
        double valorDoisBack = Double.parseDouble(valorDois);
        double resultado = valorUmBack + valorDoisBack;

        if(resultado >= 0.7){
            resultView.setText("abasteça com gasolina!");
        } else {
            resultView.setText("abasteça com alcool!");
        }

       // resultView.setText(valorUm);


        Button backButton = findViewById(R.id.back_button);
        backButton.setOnClickListener(new View.OnClickListener(){
            @Override
            public void onClick(View view){
                ResultActivity.super.onBackPressed();
            }
        });


    }


}
