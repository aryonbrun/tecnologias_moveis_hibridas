package com.example.firstapp;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;


import androidx.annotation.Nullable;

public class MainActivity extends Activity {

    public static final String EXTRA_VALOR_UM = "VALOR_UM";
    public static final String EXTRA_VALOR_DOIS = "VALOR_DOIS";
    private Button karculaButton;
    private EditText ValorUmEditText;
    private EditText ValorDoisEditText;


    @Override
    protected void onCreate(@Nullable Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        ValorUmEditText = findViewById(R.id.valor_um_edit_text);
        ValorDoisEditText = findViewById(R.id.valor_dois_edit_text);
        karculaButton = findViewById(R.id.karcula_button);
        karculaButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view){
                changeToResultScreen();
            }
        });
    }
    //preparando componentes da tela para outra
    private void changeToResultScreen(){
        Intent intent = new Intent(this, ResultActivity.class); //comunicação da activity
        EditText valorUm = (EditText) findViewById(R.id.valor_um_edit_text);
        EditText valorDois = (EditText) findViewById(R.id.valor_dois_edit_text);
        intent.putExtra(EXTRA_VALOR_UM, valorUm.getText().toString()); //
        intent.putExtra(EXTRA_VALOR_DOIS, valorDois.getText().toString());
        startActivity(intent);

    }

        // Toast.makeText( this, "Surprise MothefucKer", Toast.LENGTH_LONG).show();
        // setContentView(R.layout.activity_main);

}
