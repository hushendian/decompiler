.class final Lcom/yuelan/dreampay/common/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/common/h;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yuelan/dreampay/common/h;->b:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/16 v1, 0x64

    const/4 v2, 0x0

    const-string v3, ""

    new-instance v4, Lcom/yuelan/codelib/comm/MyPreference;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/h;->a:Landroid/content/Context;

    invoke-direct {v4, v0}, Lcom/yuelan/codelib/comm/MyPreference;-><init>(Landroid/content/Context;)V

    :goto_0
    const/4 v0, 0x6

    if-lt v2, v0, :cond_0

    move v0, v2

    :goto_1
    if-ne v0, v1, :cond_2

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/h;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/common/h;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTimeNum()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v7, 0x0

    sget-object v8, Lcom/yuelan/dreampay/thread/BaseHttpThread;->API_KEY:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/yuelan/codelib/utils/encryption/AESEncryptor;->decrypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/yuelan/codelib/utils/encryption/MD5Encoder;->EncoderByMd5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "signkey"

    invoke-interface {v0, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "reqTime"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/queryMobileInfoapiInitMobile.do"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Lcom/yuelan/dreampay/thread/BaseHttpThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "province"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "province"

    invoke-virtual {v4, v5, v0}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v0, "province"

    const-string v5, ""

    invoke-virtual {v4, v0, v5}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const-wide/16 v5, 0x7d0

    :try_start_1
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/yuelan/dreampay/common/h;->b:Landroid/os/Handler;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_2
.end method
