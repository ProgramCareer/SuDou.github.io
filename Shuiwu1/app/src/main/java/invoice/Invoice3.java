package invoice;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.text.method.ScrollingMovementMethod;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;

import com.example.pc.shuiwu1.R;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import org.json.JSONObject;

import quhao.Quhao;

public class Invoice3 extends Activity implements View.OnClickListener{

    ImageButton ButtonReturn,imageButton;
    Button first;
    TextView textView;
    String content;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_invoice3);
        ButtonReturn= (ImageButton) findViewById(R.id.imageButton);
        imageButton= (ImageButton) findViewById(R.id.imageButton2);
        first= (Button) findViewById(R.id.button);
        first.setOnClickListener(this);
        textView= (TextView) findViewById(R.id.textView2);
        textView.setMovementMethod(ScrollingMovementMethod.getInstance());
        ButtonReturn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent=new Intent(Invoice3.this, Quhao.class);
                startActivity(intent);
            }
        });
    }
    @Override
    public void onClick(View v) {
        if (v.getId() == R.id.button) {
            first.setBackgroundResource(R.drawable.bg_selector);
            HttpContent1();
        } else {
            first.setBackgroundResource(R.color.default_color);
        }
    }
    private void HttpContent1(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=312")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News(responseData);
                    showResponse1(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse1(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content = content.replace("\n","");
                content = content.replace("\t","");
                textView.setText(Html.fromHtml(content));
            }
        });
    }
    private  void  News(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
