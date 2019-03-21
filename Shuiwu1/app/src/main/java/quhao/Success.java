package quhao;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.robot.speech.SpeechManager;
import android.robot.speech.SpeechService;
import android.speech.tts.TextToSpeech;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;

import com.example.pc.shuiwu1.MainActivity;
import com.example.pc.shuiwu1.R;

import java.util.Locale;

public class Success extends Activity {
    TextView textView;
    ImageButton imageButton;
//    TextToSpeech tts;
    String voice;
    SpeechManager speechManager;
    InputMethodManager inputMethodManager;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_success);
        textView= (TextView) findViewById(R.id.textView2);
        imageButton= (ImageButton) findViewById(R.id.imageButton4);
        Intent intent = getIntent();
        String data = intent.getStringExtra("extra_data");
        voice=intent.getStringExtra("extra_data1");
        textView.setText(data);
        initData();

//        tts = new TextToSpeech(this, new TextToSpeech.OnInitListener() {
//            @Override
//            public void onInit(int status) {
//                // 如果装载TTS引擎成功
//                if (status == TextToSpeech.SUCCESS) {
//                    tts.setSpeechRate(1.0f);
//                    // 设置使用美式英语朗读
//                    int result = tts.setLanguage(Locale.CHINA);
//                    // 如果不支持所设置的语言
//                    if (result != TextToSpeech.LANG_COUNTRY_AVAILABLE&& result != TextToSpeech.LANG_AVAILABLE) {
//                        Toast.makeText(Success.this,	"TTS暂时不支持这种语言的朗读！", Toast.LENGTH_LONG).show();
//                    }
//                }
//                tts.speak(voice, TextToSpeech.QUEUE_ADD,null);
//            }
//        });
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                finish();
            }
        });
    }
    @SuppressLint("WrongConstant")
    public void initData(){
        speechManager= (SpeechManager) getSystemService(SpeechService.SERVICE_NAME);
//        inputMethodManager= (InputMethodManager) this.getApplicationContext().getSystemService(Context.INPUT_METHOD_SERVICE);
        if(!voice.isEmpty()) {
            speechManager.startSpeaking(voice);
        }
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
//        if (tts != null) {
//            tts.shutdown();
//        }
    }
}
