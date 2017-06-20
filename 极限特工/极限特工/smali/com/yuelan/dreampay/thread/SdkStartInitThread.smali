.class public Lcom/yuelan/dreampay/thread/SdkStartInitThread;
.super Lcom/yuelan/dreampay/thread/BaseHttpThread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/yuelan/dreampay/thread/BaseHttpThread;-><init>(Ljava/lang/String;Landroid/os/Handler;Ljava/util/Map;)V

    iput-object p2, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v1, Lcom/yuelan/codelib/comm/MyPreference;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/yuelan/codelib/comm/MyPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    sget-object v4, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->API_KEY:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/yuelan/codelib/utils/encryption/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yuelan/codelib/utils/encryption/MD5Encoder;->EncoderByMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->maps:Ljava/util/Map;

    const-string v4, "signkey"

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->maps:Ljava/util/Map;

    const-string v3, "reqTime"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->url:Ljava/lang/String;

    iget-object v2, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->maps:Ljava/util/Map;

    invoke-static {v2}, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "province"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "province"

    invoke-virtual {v1, v3, v0}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const-string v0, "NO"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->handler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v0

    const-string v3, "province"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->msg:Landroid/os/Message;

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->msg:Landroid/os/Message;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/SdkStartInitThread;->msg:Landroid/os/Message;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
