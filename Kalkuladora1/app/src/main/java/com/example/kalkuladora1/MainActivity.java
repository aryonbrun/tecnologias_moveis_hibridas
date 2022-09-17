package com.example.kalkuladora1;

import androidx.appcompat.app.AppCompatActivity;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;

import java.util.ArrayList;

import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;
import javax.script.ScriptException;


public class MainActivity extends AppCompatActivity {

    TextView calculoTV;
    TextView solucaoTV;

    String calculos = "";

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        initTextViews();
    }

    private void initTextViews() {
       calculoTV = (TextView)findViewById(R.id.calculoTextView);
       solucaoTV = (TextView)findViewById(R.id.solucaoTextView);
    }

    private void SetCalulos(String givenValue)
    {
        calculos = calculos + givenValue;
        calculoTV.setText(calculos);
    }
    private void setCalculos(String givenValue)
    {
        calculos = calculos + givenValue;
        calculoTV.setText(calculos);
    }

    public void equalsOnClick(View view)
    {
        Double result = null;
        ScriptEngine engine = new ScriptEngineManager(.getEngineByName("rhino"));
    }

    public void clearOnClick(View view) 
    {
        calculoTV.setText("");
        calculos = "";
        solucaoTV.setText("");
    }

    public void openBracket(View view)
    {
        setCalculos("(");
    }


    public void closeBracket(View view)
    {
        setCalculos(")");
    }

    public void clickDivide(View view)
    {
        setCalculos("/");
    }


    public void click7(View view)
    {
        setCalculos("7");
    }

    public void click8(View view)
    {
        setCalculos("8");
    }

    public void click9(View view)
    {
        setCalculos("9");
    }

    public void clickMultiplicar(View view)
    {
        setCalculos("*");
    }

    public void cick4(View view)
    {
        setCalculos("4");
    }

    public void click5(View view)
    {
        setCalculos("5");
    }

    public void click6(View view)
    {
        setCalculos("6");
    }

    public void clickSomar(View view)
    {
        setCalculos("+");
    }

    public void click1(View view)
    {
        setCalculos("1");
    }

    public void click2(View view)
    {
        setCalculos("2");
    }

    public void click3(View view)
    {
        setCalculos("3");
    }

    public void cluckSubtrair(View view)
    {
        setCalculos("-");
    }

    public void clearAc(View view)
    {
        setCalculos("AC");
    }

    public void click0(View view)
    {
        setCalculos("0");
    }

    public void clickdot(View view)
    {
        setCalculos(",");
    }

    public void clickIgual(View view)
    {
        setCalculos("=");
    }

}