.class public Lcom/yuelan/dreampay/thread/PayThread;
.super Lcom/yuelan/dreampay/thread/BaseHttpThread;


# static fields
.field public static payurl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/smsPayapiPay.do"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/thread/PayThread;->payurl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/yuelan/dreampay/thread/BaseHttpThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    sget-object v3, Lcom/yuelan/dreampay/thread/PayThread;->API_KEY:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/yuelan/codelib/utils/encryption/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/encryption/MD5Encoder;->EncoderByMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/PayThread;->maps:Ljava/util/Map;

    const-string v3, "signkey"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->maps:Ljava/util/Map;

    const-string v2, "reqTime"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/yuelan/dreampay/thread/PayThread;->payurl:Ljava/lang/String;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->maps:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/yuelan/dreampay/thread/PayThread;->getFullUrl(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    sget-object v0, Lcom/yuelan/dreampay/thread/PayThread;->payurl:Ljava/lang/String;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->maps:Ljava/util/Map;

    invoke-static {v1}, Lcom/yuelan/dreampay/thread/PayThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->handler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const-string v1, "NO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/PayThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "info"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lcom/yuelan/dreampay/date/PayOtherInfo;

    invoke-direct {v2, v1}, Lcom/yuelan/dreampay/date/PayOtherInfo;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getShowTheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const-string v3, "2"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/img1_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg1()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/yuelan/codelib/utils/HttpConnent;->download(Ljava/lang/String;Ljava/io/File;)I

    :cond_2
    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/img2_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg2()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/yuelan/codelib/utils/HttpConnent;->download(Ljava/lang/String;Ljava/io/File;)I

    :cond_3
    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg3()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/img3_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg3()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/yuelan/codelib/utils/HttpConnent;->download(Ljava/lang/String;Ljava/io/File;)I

    :cond_4
    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/img4_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg4()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/yuelan/codelib/utils/HttpConnent;->download(Ljava/lang/String;Ljava/io/File;)I

    :cond_5
    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg5()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "/img5_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/PayOtherInfo;->getImg5()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v3}, Lcom/yuelan/codelib/utils/HttpConnent;->download(Ljava/lang/String;Ljava/io/File;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->msg:Landroid/os/Message;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->msg:Landroid/os/Message;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/PayThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/PayThread;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method
