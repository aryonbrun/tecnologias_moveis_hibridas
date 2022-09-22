package com.example.triangulolados;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {

    double lado1, lado2, lado3;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        Button btn_verificar = (Button) findViewById(R.id.btn_verificar);
        Button btn_limpar = (Button) findViewById(R.id.btn_limpar);

        TextView tv_resultado = (TextView) findViewById(R.id.tv_resultado);
        EditText et_lado1 = (EditText) findViewById(R.id.editTextLado1);
        EditText et_lado2 = (EditText) findViewById(R.id.editTextLado2);
        EditText et_lado3 = (EditText) findViewById(R.id.editTextLado3);

        btn_verificar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                lado1 = Double.parseDouble(et_lado1.getText().toString());
                lado2 = Double.parseDouble(et_lado2.getText().toString());
                lado3 = Double.parseDouble(et_lado3.getText().toString());

                if (lado1 == lado2 && lado1 == lado3) {
                    tv_resultado.setText("Triângulo Equilátero");
                } else if (lado1 != lado2 && lado1 != lado3 && lado2 != lado3) {
                    tv_resultado.setText("Triângulo escaleno");
                } else {
                    tv_resultado.setText("Triângulo isóceles");
                }

            }
        });

        btn_limpar.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                et_lado1.setText("");
                et_lado2.setText("");
                et_lado3.setText("");
                tv_resultado.setText("");

                et_lado1.requestFocus();


            }
        });

    }
}