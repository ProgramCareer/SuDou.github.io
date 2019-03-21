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

import hotQuestion.HotDatas;

public class HotDatasAdapter extends BaseAdapter {
    public Context mcontext;
    public ArrayList<HotDatas> hotDatasArrayList;
    public HotDatasAdapter(Context mcontext, ArrayList<HotDatas> hotDatasArrayList) {
        super();
        this.mcontext = mcontext;
        this.hotDatasArrayList = hotDatasArrayList;
    }

    @Override
    public int getCount() {
        return hotDatasArrayList.size();
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
        HotDatas hotDatas=hotDatasArrayList.get(position);
        TextView textView= (TextView) view.findViewById(R.id.textView);
        TextView textView1= (TextView) view.findViewById(R.id.textView2);
        textView.setText(hotDatas.gettName());
        Date data = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("最后更新于: HH:mm:ss");
        textView1.setText(simpleDateFormat.format(data));
        return view;
    }
}
