package com.example.kalkuladora;

import androidx.appcompat.app.AppCompatActivity;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import com.google.android.material.button.MaterialButton;
//import org.mozilla.javascript.Context;
//import org.mozilla.javascript.Scriptable;

public class MainActivity extends AppCompatActivity implements View.OnClickListener{

    TextView resultado, solucao;
    MaterialButton buttonC, buttonBrackOpen, buttonBrackClose;
    MaterialButton buttonDivide, buttonMultiplicar, buttonSomar, buttonSubtrair, buttonIgual;
    MaterialButton button0, button1, button2, button3, button4, button5, button6, button7, button8, button9;
    MaterialButton buttonAC, buttonDot;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        resultado = findViewById(R.id.resultado_tv);
        solucao =  findViewById(R.id.solucao_tv);

        assignId(buttonC, R.id.button_c);
        assignId(buttonBrackOpen, R.id.button_open_bracket);
        assignId(buttonBrackClose, R.id.button_closed_bracket);
        assignId(buttonDivide, R.id.button_divide);
        assignId(buttonMultiplicar, R.id.button_multiplicar);
        assignId(buttonSomar, R.id.button_somar);
        assignId(buttonSubtrair, R.id.button_subtrair);
        assignId(buttonIgual, R.id.button_igual);
        assignId(button0, R.id.button_0);
        assignId(button1, R.id.button_1);
        assignId(button2, R.id.button_2);
        assignId(button3, R.id.button_3);
        assignId(button4, R.id.button_4);
        assignId(button5, R.id.button_5);
        assignId(button6, R.id.button_6);
        assignId(button7, R.id.button_7);
        assignId(button8, R.id.button_8);
        assignId(button9, R.id.button_9);
        assignId(buttonAC, R.id.button_ac);
        assignId(buttonDot, R.id.button_ponto);


    }

    void assignId(MaterialButton btn, int id){
        btn = findViewById(id);
        btn.setOnClickListener(this);
    }

    @Override
    public void onClick(View view){

        MaterialButton button =(MaterialButton) view;
        String buttonText = button.getText().toString();
        solucao.setText(buttonText);
        String dataCalculo = solucao.getText().toString();

        if(buttonText.equals("AC")){
            solucao.setText("");
            resultado.setText("0");
            return;
        }
        if(buttonText.equals("=")){
            solucao.setText(resultado.getText());
            return;
        }
        if(buttonText.equals("C")){
            dataCalculo = dataCalculo.substring(0,dataCalculo.length()-1);
        }else{
            dataCalculo = dataCalculo+buttonText;
        }

        solucao.setText(dataCalculo);

        String finalResultado = getResultado(dataCalculo);

        if(finalResultado.equals("Err")){
            resultado.setText(finalResultado);
        }




    }

    String getResultado(String data){
        try{
//            Context context = Context.();
//            context.(-1);
//            scriptable = context.; ();
//            String finalResultado = context.(scriptable, data, "Javascript", 1, null);
//           if(finalResultado.endsWith(".0")){
//               finalResultado = finalResultado.replace(".0", "");
//           }
//            return finalResultado;
        }catch (Exception e){
            return "Err";
        }
        return null;
    }

}