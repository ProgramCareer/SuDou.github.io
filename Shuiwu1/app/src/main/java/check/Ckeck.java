package check;

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

public class Ckeck extends Activity implements View.OnClickListener {

    ImageButton ButtonReturn,imageButton;
    Button first,second,third,fource,fifth,sixth,seventh,eighth,ninth,tenth;
    TextView textView;
    String content,content1,content2,content3,content4,content5,content6,content7,content8,content9;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_ckeck);
        ButtonReturn= (ImageButton) findViewById(R.id.imageButton);
        imageButton= (ImageButton) findViewById(R.id.imageButton2);
        first= (Button) findViewById(R.id.button);
        second= (Button) findViewById(R.id.button2);
        third= (Button) findViewById(R.id.button3);
        fource= (Button) findViewById(R.id.button4);
        fifth= (Button) findViewById(R.id.button5);
        sixth= (Button) findViewById(R.id.button6);
        seventh= (Button) findViewById(R.id.button7);
        eighth= (Button) findViewById(R.id.button8);
        ninth= (Button) findViewById (R.id.button9);
        tenth= (Button) findViewById (R.id.button10);
        first.setOnClickListener(this);
        second.setOnClickListener(this);
        third.setOnClickListener(this);
        fource.setOnClickListener(this);
        fifth.setOnClickListener(this);
        sixth.setOnClickListener(this);
        seventh.setOnClickListener(this);
        eighth.setOnClickListener(this);
        ninth.setOnClickListener (this);
        tenth.setOnClickListener (this);
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
                Intent intent=new Intent(Ckeck.this, Quhao.class);
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
        if(v.getId()==R.id.button5){
            fifth.setBackgroundResource(R.drawable.bg_selector);
            HttpContent5();
        }else{
            fifth.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button6){
            sixth.setBackgroundResource(R.drawable.bg_selector);
            HttpContent6();
        }else{
            sixth.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button7){
            seventh.setBackgroundResource(R.drawable.bg_selector);
            HttpContent7();
        }else{
            seventh.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button8){
            eighth.setBackgroundResource(R.drawable.bg_selector);
            HttpContent8();
        }else{
            eighth.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button9){
            eighth.setBackgroundResource(R.drawable.bg_selector);
            HttpContent9();
        }else{
            eighth.setBackgroundResource(R.color.default_color);
        }
        if(v.getId()==R.id.button10){
            eighth.setBackgroundResource(R.drawable.bg_selector);
            HttpContent10();
        }else{
            eighth.setBackgroundResource(R.color.default_color);
        }
    }

    private void HttpContent1(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=401")
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
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=402")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News2(responseData);
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
    private  void  News2(String jsonData) {
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
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=403")
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
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=404")
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

    private void HttpContent5(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=405")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News5(responseData);
                    showResponse5(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse5(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content4 = content4.replace("\n","");
                content4 = content4.replace("\t","");
                textView.setText(Html.fromHtml(content4));
            }
        });
    }
    private  void  News5(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content4 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content4);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent6(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=406")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News6(responseData);
                    showResponse6(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse6(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content5 = content5.replace("\n","");
                content5 = content5.replace("\t","");
                textView.setText(Html.fromHtml(content5));
            }
        });
    }
    private  void  News6(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content5 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content5);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent7(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=407")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News7(responseData);
                    showResponse7(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse7(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content6 = content6.replace("\n","");
                content6 = content6.replace("\t","");
                textView.setText(Html.fromHtml(content6));
            }
        });
    }
    private  void  News7(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content6 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content6);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent8(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=408")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News8(responseData);
                    showResponse8(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse8(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content7 = content7.replace("\n","");
                content7 = content7.replace("\t","");
                textView.setText(Html.fromHtml(content7));
            }
        });
    }
    private  void  News8(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content7 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content7);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent9(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=409")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News9(responseData);
                    showResponse9(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse9(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content8 = content8.replace("\n","");
                content8 = content8.replace("\t","");
                textView.setText(Html.fromHtml(content8));
            }
        });
    }
    private  void  News9(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content8 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content8);

//                Data data=new Data(content);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void HttpContent10(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getData?id=410")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    News10(responseData);
                    showResponse10(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showResponse10(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                content9 = content9.replace("\n","");
                content9 = content9.replace("\t","");
                textView.setText(Html.fromHtml(content9));
            }
        });
    }
    private  void  News10(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            content9 = jsonObject.getString("content");
            Log.d("MainActivity", "title is" + content9);

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
