.class public Lcom/yuelan/dreampay/thread/FanKuiThread;
.super Lcom/yuelan/dreampay/thread/BaseHttpThread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/yuelan/dreampay/thread/BaseHttpThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/FanKuiThread;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/updateRecordapiReceiveReport.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/yuelan/dreampay/thread/FanKuiThread;->doSafeBaseHttp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "NO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/FanKuiThread;->maps:Ljava/util/Map;

    const-string v2, "createTime"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/FanKuiThread;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/updateRecordapiReceiveReport.do"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yuelan/dreampay/thread/FanKuiThread;->maps:Ljava/util/Map;

    invoke-static {v2, v0, v3, v4}, Lcom/yuelan/dreampay/common/CacheHelper;->writeCache(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/FanKuiThread;->maps:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/yuelan/dreampay/thread/FanKuiThread;->getFullUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "==="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    return-void
.end method
