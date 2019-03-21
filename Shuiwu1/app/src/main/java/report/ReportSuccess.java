package report;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;

import com.example.pc.shuiwu1.R;

public class ReportSuccess extends Activity {
    WebView webView;
    ImageButton imageButton;
    ProgressDialog progressDialog;
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_report_success);
        webView = (WebView) findViewById(R.id.webView);
        imageButton = (ImageButton) findViewById(R.id.imageButton);
        Intent intent = getIntent();
        String url = intent.getStringExtra("extra_data");
        imageButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                Intent intent1=new Intent(ReportSuccess.this,ReportSkip.class);
                startActivity(intent1);
                finish();
            }
        });
        if (webView != null) {
            webView.setWebViewClient(new WebViewClient() {
                @Override
                public void onPageFinished(WebView view, String url) {
                    progressDialog.dismiss();
                }
            });
            WebSettings webSettings = webView.getSettings();
            webSettings.setJavaScriptEnabled(true);
            webSettings.setCacheMode(WebSettings.LOAD_NO_CACHE);
            webSettings.setSupportZoom(true);
            webSettings.setBuiltInZoomControls(true);
            loadUrl(url);
        }
    }
    public void loadUrl(String url) {
        if (webView != null) {
            webView.loadUrl(url);
            progressDialog = ProgressDialog.show(this, null, "正在加载，请稍后..");
            webView.reload();
        }
    }
    @Override
    protected void onDestroy(){
        super.onDestroy();
    }
}
