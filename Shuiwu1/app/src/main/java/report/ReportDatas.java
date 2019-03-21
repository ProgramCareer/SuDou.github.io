package report;

public class ReportDatas {
    public String tName;
    public String url;
    public ReportDatas(String tName,String url){
        this.tName=tName;
        this.url=url;
    }

    public String gettName() {
        return tName;
    }

    public void settName(String tName) {
        this.tName = tName;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getUrl() {
        return url;
    }
}
