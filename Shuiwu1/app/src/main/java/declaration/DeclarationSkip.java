package declaration;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import com.example.pc.shuiwu1.MainActivity;
import com.example.pc.shuiwu1.R;

import quhao.Quhao;

public class DeclarationSkip extends Activity {

    Button first, second, third, fouce;
    ImageButton imageButton, quhao;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_declaration_skip);
        first = (Button) findViewById(R.id.button);
        second = (Button) findViewById(R.id.button2);
        third = (Button) findViewById(R.id.button3);
        fouce = (Button) findViewById(R.id.button4);
        imageButton = (ImageButton) findViewById(R.id.imageButton);
        quhao = (ImageButton) findViewById(R.id.imageButton2);
        first.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DeclarationSkip.this, Declaration.class);
                startActivity(intent);
            }
        });
        second.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DeclarationSkip.this, Declaration1.class);
                startActivity(intent);
            }
        });
        third.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DeclarationSkip.this, Declaration2.class);
                startActivity(intent);
            }
        });
        fouce.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent = new Intent(DeclarationSkip.this, Declaration3.class);
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
                Intent intent=new Intent(DeclarationSkip.this, Quhao.class);
                startActivity(intent);
            }
        });
    }

    @Override
    protected void onDestroy() {
        super.onDestroy();
    }
}
