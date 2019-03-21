package invoice;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import com.example.pc.shuiwu1.MainActivity;
import com.example.pc.shuiwu1.R;

import quhao.Quhao;

public class InvoiceSkip extends Activity {
    Button first,second,third,fource;
    ImageButton imageButton,quhao;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_invoice_skip);
        first= (Button) findViewById(R.id.button);
        second= (Button) findViewById(R.id.button2);
        third= (Button) findViewById(R.id.button3);
        fource= (Button) findViewById(R.id.button4);
        imageButton= (ImageButton) findViewById(R.id.imageButton);
        quhao= (ImageButton) findViewById(R.id.imageButton2);
        first.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(InvoiceSkip.this, Invoice.class);
                startActivity(intent);
            }
        });
        second.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(InvoiceSkip.this, Invoice1.class);
                startActivity(intent);
            }
        });
        third.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(InvoiceSkip.this, Invoice2.class);
                startActivity(intent);
            }
        });
        fource.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(InvoiceSkip.this, Invoice3.class);
                startActivity(intent);
            }
        });

        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        quhao.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(InvoiceSkip.this, Quhao.class);
                startActivity(intent);
            }
        });
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
