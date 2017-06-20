.class public Lcom/yuelan/dreampay/thread/DoPayThread;
.super Lcom/yuelan/dreampay/thread/BaseHttpThread;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/thread/BaseHttpThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/receiveReqapisdkreq.do?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yuelan/dreampay/thread/DoPayThread;->doSafeBaseHttp(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
