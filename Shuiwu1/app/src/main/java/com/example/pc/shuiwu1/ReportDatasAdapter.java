package com.example.pc.shuiwu1;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import report.ReportDatas;

public class ReportDatasAdapter extends BaseAdapter {
    public Context mcontext;
    public ArrayList<ReportDatas> reportDatasArrayList;
    public ReportDatasAdapter(Context mcontext, ArrayList<ReportDatas> reportDatasArrayList) {
        super();
        this.mcontext = mcontext;
        this.reportDatasArrayList = reportDatasArrayList;
    }
    @Override
    public int getCount() {
        return reportDatasArrayList.size();
    }

    @Override
    public Object getItem(int i) {
        return null;
    }

    @Override
    public long getItemId(int i) {
        return 0;
    }

    @Override
    public View getView(int position, View convertView, ViewGroup parent) {
        View view;
        if(convertView==null){
            view= LayoutInflater.from(mcontext).inflate(R.layout.reportdatas,null);
        }else{
            view=convertView;
        }
        ReportDatas reportDatas=reportDatasArrayList.get(position);
        TextView textView= (TextView) view.findViewById(R.id.textView);
        TextView textView1= (TextView) view.findViewById(R.id.textView2);
        textView.setText(reportDatas.gettName());
        Date data = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("最后更新于: HH:mm:ss");
        textView1.setText(simpleDateFormat.format(data));
        return view;
    }
}
