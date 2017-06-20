.class public Lcom/yuelan/dreampay/thread/GoOnFankuiThread;
.super Lcom/yuelan/dreampay/thread/BaseHttpThread;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/yuelan/dreampay/thread/BaseHttpThread;-><init>()V

    iput-object p1, p0, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "goonpost.info"

    iget-object v1, p0, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "json"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/yuelan/codelib/utils/JsonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "posturl"

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "postmaps"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/yuelan/codelib/utils/JsonUtil;->jsonToMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v4

    invoke-static {v4}, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;->getPostParams(Ljava/util/Map;)Ljava/util/List;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/yuelan/codelib/utils/HttpConnent;->doHttpPost(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "NO"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "goonpost.info"

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "utf-8"

    invoke-virtual {v1, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v4, p0, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;->a:Landroid/content/Context;

    invoke-static {v0, v1, v4}, Lcom/yuelan/codelib/utils/FileUtil;->writeDateFile(Ljava/lang/String;[BLandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->e(Ljava/lang/Exception;)V

    goto :goto_1
.end method
