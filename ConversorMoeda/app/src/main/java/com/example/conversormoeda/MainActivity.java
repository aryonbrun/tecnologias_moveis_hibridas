package com.example.conversormoeda;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;

public class MainActivity extends AppCompatActivity {
    EditText Real;
    EditText Dolar;
    EditText Libra;
    EditText Euro;
    Button bt_converter;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Real = findViewById(R.id.Real);
        Dolar = findViewById(R.id.Dolar);
        Libra = findViewById(R.id.Libra);
        Euro = findViewById(R.id.Euro);
        bt_converter = findViewById(R.id.Converter_button);

        bt_converter.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                double valorReal = Double.parseDouble(Real.getText().toString());

                double valorDolares = valorReal * 0.19;
                double valorEuro = valorReal * 0.19;
                double valorLibra = valorReal * 0.17;

                Libra.setText(String.valueOf(valorLibra));
                Euro.setText(String.valueOf(valorEuro));
                Dolar.setText(String.valueOf(valorDolares));
            }
        });
    }
}