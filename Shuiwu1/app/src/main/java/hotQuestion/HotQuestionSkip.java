package hotQuestion;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ImageButton;
import android.widget.ListView;

import com.example.pc.shuiwu1.HotDatasAdapter;
import com.example.pc.shuiwu1.MainActivity;
import com.example.pc.shuiwu1.R;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;

import org.json.JSONArray;
import org.json.JSONObject;

import java.util.ArrayList;

public class HotQuestionSkip extends Activity {

    ImageButton imageButton;
    ListView listView;
    public ArrayList<HotDatas> hotDatasArrayList;
    public HotDatasAdapter hotDatasAdapter;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_hot_question);
        imageButton= (ImageButton) findViewById(R.id.imageButton);
        listView= (ListView) findViewById(R.id.listview);
        ReportDatas();
        hotDatasArrayList=new ArrayList<HotDatas>();
        hotDatasAdapter=new HotDatasAdapter(HotQuestionSkip.this,hotDatasArrayList);
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
        listView.setOnItemClickListener(new AdapterView.OnItemClickListener() {
            @Override
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                HotDatas hotDatas=hotDatasArrayList.get(position);
                String url="http://47.94.195.37:8080/BankLeader/"+hotDatas.getUrl();
                Log.d("url",url);
                Intent intent=new Intent(HotQuestionSkip.this, HotSuccess.class);
                intent.putExtra("extra_data",url);
                startActivity(intent);
                finish();
            }
        });
    }
    private void ReportDatas(){
        new  Thread(new Runnable() {
            @Override
            public void run() {
                try{
                    OkHttpClient client = new OkHttpClient();
                    Request request =new Request.Builder()
                            .url("http://47.94.195.37:8080/BankLeader/getService?mId=007")
                            .build();
                    Response response = client.newCall(request).execute();
                    String responseData =response.body().string();
                    Datas(responseData);
                    showDatas1(responseData);
                }catch (Exception e){
                    e.printStackTrace();
                }
            }
        }).start();
    }
    private  void showDatas1(final String reponse){
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                listView.setAdapter(hotDatasAdapter);
            }
        });
    }
    private  void  Datas(String jsonData) {
        try {
            JSONArray jsonArray = new JSONArray(jsonData);
            for (int i = 0; i < jsonArray.length(); i++) {
                JSONObject jsonObject = jsonArray.getJSONObject(i);
                String tName = jsonObject.getString("tName");
                String url = jsonObject.getString("url");
                Log.d("MainActivity", "title is" + tName);
                Log.d("MainActivity", "content is" + url);
                HotDatas hotDatas = new HotDatas(tName,url);
//                Random random=new Random();
                hotDatasArrayList.add(hotDatas);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
