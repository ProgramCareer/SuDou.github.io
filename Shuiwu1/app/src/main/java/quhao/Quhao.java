package quhao;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.Toast;

import com.example.pc.shuiwu1.R;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;

public class Quhao extends Activity implements View.OnClickListener{
    ImageButton ButtonReturn;
    Button button,button2,button3,button4,button5,button6;
    Handler handler;
    String str1,result,message,message1;
    Integer id;
    ProgressDialog progressDialog;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_quhao);
        ButtonReturn= (ImageButton) findViewById(R.id.imageButton);
        button= (Button) findViewById(R.id.button);
        button2= (Button) findViewById(R.id.button2);
        button3= (Button) findViewById(R.id.button3);
        button4= (Button) findViewById(R.id.button4);
        button5= (Button) findViewById(R.id.button5);
        button6= (Button) findViewById(R.id.button6);
        button.setOnClickListener(this);
        button2.setOnClickListener(this);
        button3.setOnClickListener(this);
        button4.setOnClickListener(this);
        button5.setOnClickListener(this);
        button6.setOnClickListener(this);
        IdDatas();
        ButtonReturn.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });

        handler = new Handler() {
            @Override
            public void handleMessage(Message msg) {
                switch (msg.what) {
                    case 001:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 002:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 003:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 004:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 005:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                    case 006:
                        try {
                            msg.obj = URLDecoder.decode(msg.obj + "", "UTF-8");
                            DatasJSON(result);
                            Intent();
                            progressDialog = ProgressDialog.show(Quhao.this, null, "正在办理，请稍后..");
                            finish();
                        } catch (UnsupportedEncodingException e) {
                            e.printStackTrace();
                        }
                        break;
                }
            }
        };

    }

    @Override
    public void onClick(View v) {
        if(v.getId()==R.id.button){
            Toast.makeText(Quhao.this,"你选择了税收办理业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode("UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"001");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 001;
                            message.obj = s.toString();
                            handler.sendMessage(message);
                        }

                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
        if(v.getId()==R.id.button2){
            Toast.makeText(Quhao.this,"你选择了税收证明业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode( "UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"002");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 002;
                            message.obj = s.toString();
                            handler.sendMessage(message);

                        }
                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
        if(v.getId()==R.id.button3){
            Toast.makeText(Quhao.this,"你选择了申报退税业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode( "UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"003");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 003;
                            message.obj = s.toString();
                            handler.sendMessage(message);

                        }
                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
        if(v.getId()==R.id.button4){
            Toast.makeText(Quhao.this,"你选择了发票开具业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode("UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"004");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 004;
                            message.obj = s.toString();
                            handler.sendMessage(message);

                        }
                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
        if(v.getId()==R.id.button5){
            Toast.makeText(Quhao.this,"你选择了登记办理业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode("UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"005");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 005;
                            message.obj = s.toString();
                            handler.sendMessage(message);

                        }
                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
        if(v.getId()==R.id.button6){
            Toast.makeText(Quhao.this,"你选择了税收证明业务",Toast.LENGTH_LONG).show();
            new Thread(new Runnable() {
                @Override
                public void run() {
                    HttpURLConnection connection;
                    try {
                        id++;
                        //用GET方法向服务器传送数据，在链接里面传值
                        str1 = URLEncoder.encode( "UTF-8");
                        URL url = new URL("http://47.94.195.37:8080/BankLeader/saveOrder?id="+id+"&mName="+"006");
                        connection = (HttpURLConnection) url.openConnection();
                        connection.setReadTimeout(5000);
                        connection.setRequestMethod("GET");
                        connection.setRequestProperty("charset", "UTF-8");
                        connection.setConnectTimeout(5000);
                        connection.setDoInput(true);
                        if (connection.getResponseCode() == 200) {
                            InputStream in = connection.getInputStream();
                            BufferedReader reader = new BufferedReader(new InputStreamReader(in));
                            StringBuilder s = new StringBuilder();
                            String line;
                            while ((line = reader.readLine()) != null) {
                                s.append(line);
                                result=line;
                            }
                            reader.close();
                            Message message = new Message();
                            message.what = 006;
                            message.obj = s.toString();
                            handler.sendMessage(message);

                        }
                    } catch (Exception e) {
                        Log.i("ok", "有错误！");
                    }
                }
            }).start();
        }
    }

    public void DatasJSON(String jsonDatas){
        try{
            JSONObject jsonObject = new JSONObject(jsonDatas);
            String id = jsonObject.getString("id");
            String mName = jsonObject.getString("mName");
            String count = jsonObject.getString("count");
            message = "您当前的号码是: "+id+"号"+"\n"+"办理的业务类型是: " + mName +"\n"+ "前方还有 " + count + " 人在办理";
            message1="办理成功,您当前的号码是,"+id+"号,"+"请等待";
            Log.d("message", message);
        } catch (JSONException e) {
            e.printStackTrace();
        }
//            finish();
    }
    public void Intent(){
        Intent intent = new Intent(Quhao.this, Success.class);
        intent.putExtra("extra_data", message);
        intent.putExtra("extra_data1",message1);
        startActivity(intent);
//    finish();
    }
    private void IdDatas(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getOrderId")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    IdJSON(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void   IdJSON(String jsonData) {
        try {
            JSONObject jsonObject = new JSONObject(jsonData);
            id=jsonObject.getInt("id");
            Log.d("id1212121",id.toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
