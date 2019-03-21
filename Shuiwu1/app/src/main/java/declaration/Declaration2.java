package declaration;

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

public class Declaration2 extends Activity implements View.OnClickListener{

    ImageButton ButtonReturn,imageButton;
    Button first,second,third,fource;
    TextView textView;
    String content,content1,content2,content3;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_declaration2);
        ButtonReturn= (ImageButton) findViewById(R.id.imageButton);
        imageButton= (ImageButton) findViewById(R.id.imageButton2);
        first= (Button) findViewById(R.id.button);
        second= (Button) findViewById(R.id.button2);
        third= (Button) findViewById(R.id.button3);
        fource= (Button) findViewById(R.id.button4);
        first.setOnClickListener(this);
        second.setOnClickListener(this);
        third.setOnClickListener(this);
        fource.setOnClickListener(this);
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
                Intent intent=new Intent(Declaration2.this, Quhao.class);
                startActivity(intent);
            }
        });
    }

    @Override
    public void onClick(View v) {
        if(v.getId()==R.id.button){
            first.setBackgroundResource(R.drawable.bg_selector);
            HttpContent1();
        }else{
            first.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button2){
            second.setBackgroundResource(R.drawable.bg_selector);
            HttpContent2();
        }else{
            second.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button3){
            third.setBackgroundResource(R.drawable.bg_selector);
            HttpContent3();
        }else{
            third.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button4){
            fource.setBackgroundResource(R.drawable.bg_selector);
            HttpContent4();
        }else{
            fource.setBackgroundResource(R.color.default_color);
        }
    }
    private void HttpContent1(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=209")
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

    private void HttpContent2(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=210")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News1(responseData);
                    showResponse2(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse2(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content1 = content1.replace("\n","");
                content1 = content1.replace("\t","");
                textView.setText(Html.fromHtml(content1));
            }
        });
    }
    private  void  News1(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content1 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content1);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent3(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=211")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News3(responseData);
                    showResponse3(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse3(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content2 = content2.replace("\n","");
                content2 = content2.replace("\t","");
                textView.setText(Html.fromHtml(content2));
            }
        });
    }
    private  void  News3(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content2 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content2);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent4(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=212")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News4(responseData);
                    showResponse4(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse4(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content3 = content3.replace("\n","");
                content3 = content3.replace("\t","");
                textView.setText(Html.fromHtml(content3));
            }
        });
    }
    private  void  News4(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content3 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content3);

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
