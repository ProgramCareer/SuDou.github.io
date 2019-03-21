package com.example.pc.shuiwu1;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;

import certificate.CertificateSkip;
import check.CkeckSkip;
import declaration.DeclarationSkip;
import hotQuestion.HotQuestionSkip;
import invoice.InvoiceSkip;
import perferential.PreferentialSkip;
import quhao.Quhao;
import report.ReportSkip;

public class MainActivity extends Activity {
    ImageButton first,second,third,fource,fifth,sixth,seventh,eight,buttonback;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        first= (ImageButton) findViewById(R.id.imageButton6);
        second= (ImageButton) findViewById(R.id.imageButton7);
        third= (ImageButton) findViewById(R.id.imageButton8);
        fource= (ImageButton) findViewById(R.id.imageButton9);
        fifth= (ImageButton) findViewById(R.id.imageButton10);
        sixth= (ImageButton) findViewById(R.id.imageButton11);
        seventh= (ImageButton) findViewById(R.id.imageButton12);
        eight= (ImageButton) findViewById(R.id.imageButton13);
        buttonback=(ImageButton) findViewById(R.id.buttonback);
        buttonback.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        first.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, PreferentialSkip.class);
                startActivity(intent);
            }
        });
        second.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, DeclarationSkip.class);
                startActivity(intent);
            }
        });
        third.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, InvoiceSkip.class);
                startActivity(intent);
            }
        });
        fource.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, CkeckSkip.class);
                startActivity(intent);
            }
        });
        fifth.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, CertificateSkip.class);
                startActivity(intent);
            }
        });
        sixth.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, ReportSkip.class);
                startActivity(intent);
            }
        });
        seventh.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, HotQuestionSkip.class);
                startActivity(intent);
            }
        });
        eight.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(MainActivity.this, Quhao.class);
                startActivity(intent);
            }
        });
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
