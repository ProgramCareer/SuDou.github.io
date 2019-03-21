package certificate;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;

import com.example.pc.shuiwu1.MainActivity;
import com.example.pc.shuiwu1.R;

import quhao.Quhao;

public class CertificateSkip extends Activity {
    Button first;
    ImageButton imageButton,quhao;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_certificate_skip);
        first= (Button) findViewById(R.id.button);
        imageButton= (ImageButton) findViewById(R.id.imageButton);
        quhao= (ImageButton) findViewById(R.id.imageButton2);
        first.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(CertificateSkip.this,Certificate.class);
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
                Intent intent=new Intent(CertificateSkip.this, Quhao.class);
                startActivity(intent);
            }
        });
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
