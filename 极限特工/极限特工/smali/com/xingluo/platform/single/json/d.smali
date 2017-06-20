.class public final Lcom/xingluo/platform/single/json/d;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "JSONParser"

.field private static c:Lcom/xingluo/platform/single/json/d;


# instance fields
.field private b:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/json/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/json/d;->b:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/json/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/json/d;->c:Lcom/xingluo/platform/single/json/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/json/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/json/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/json/d;->c:Lcom/xingluo/platform/single/json/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/json/d;->c:Lcom/xingluo/platform/single/json/d;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v1, 0x0

    new-instance v3, Lcom/xingluo/platform/single/net/a/c;

    invoke-direct {v3}, Lcom/xingluo/platform/single/net/a/c;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/single/net/a/c;->a(Ljava/lang/String;)V

    const-string v0, "open_2confirm"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v1}, Lcom/xingluo/platform/single/net/a/c;->d(Z)V

    :goto_0
    const-string v0, "secret_open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v3, v12}, Lcom/xingluo/platform/single/net/a/c;->a(Z)V

    const-string v0, "secret_money"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xingluo/platform/single/net/a/c;->b(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sms_deletes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    move v0, v1

    :goto_1
    if-lt v0, v6, :cond_1

    invoke-virtual {v3, v4}, Lcom/xingluo/platform/single/net/a/c;->a(Ljava/util/HashMap;)V

    :goto_2
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    const-string v0, "sms_verifys"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, ";"

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :goto_3
    if-lt v0, v5, :cond_5

    :goto_4
    invoke-virtual {v3, v2}, Lcom/xingluo/platform/single/net/a/c;->b(Ljava/util/HashMap;)V

    const-string v0, "sms_delete_open"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_6

    invoke-virtual {v3, v12}, Lcom/xingluo/platform/single/net/a/c;->b(Z)V

    :goto_5
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->setGost(Lcom/xingluo/platform/single/net/a/c;)V

    return-void

    :cond_0
    invoke-virtual {v3, v12}, Lcom/xingluo/platform/single/net/a/c;->d(Z)V

    goto :goto_0

    :cond_1
    aget-object v2, v5, v0

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const-string v8, ","

    invoke-virtual {v2, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    array-length v2, v8

    if-ne v2, v13, :cond_2

    aget-object v2, v8, v12

    const-string v9, "#"

    invoke-virtual {v2, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v10, v9

    move v2, v1

    :goto_6
    if-lt v2, v10, :cond_3

    :cond_2
    aget-object v2, v8, v1

    invoke-virtual {v4, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    aget-object v11, v9, v2

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_4
    invoke-virtual {v3, v1}, Lcom/xingluo/platform/single/net/a/c;->a(Z)V

    goto :goto_2

    :cond_5
    :try_start_1
    aget-object v6, v4, v0

    new-instance v7, Lcom/xingluo/platform/single/net/a/b;

    invoke-direct {v7}, Lcom/xingluo/platform/single/net/a/b;-><init>()V

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->a(Ljava/lang/String;)V

    const/4 v8, 0x1

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->b(Ljava/lang/String;)V

    const/4 v8, 0x2

    aget-object v8, v6, v8

    invoke-virtual {v7, v8}, Lcom/xingluo/platform/single/net/a/b;->c(Ljava/lang/String;)V

    const/4 v8, 0x3

    aget-object v6, v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v7, v6}, Lcom/xingluo/platform/single/net/a/b;->a(I)V

    invoke-virtual {v7}, Lcom/xingluo/platform/single/net/a/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    :cond_6
    invoke-virtual {v3, v1}, Lcom/xingluo/platform/single/net/a/c;->b(Z)V

    goto :goto_5
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 7

    iget-object v0, p0, Lcom/xingluo/platform/single/json/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag 3 json is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/net/a/g;

    invoke-direct {v1}, Lcom/xingluo/platform/single/net/a/g;-><init>()V

    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/g;->g(I)V

    :try_start_0
    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v2, :cond_0

    const-string v4, "accept_time"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "orderid"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "orderstatus"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v4}, Lcom/xingluo/platform/single/net/a/g;->l(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/net/a/g;->a(I)V

    invoke-virtual {v1, v5}, Lcom/xingluo/platform/single/net/a/g;->a(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/g;->f(I)V

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/single/net/a/g;->k(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    const/16 v2, 0xbb8

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/g;->f(I)V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/g;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/net/a/a;

    invoke-direct {v1}, Lcom/xingluo/platform/single/net/a/a;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "errormsg"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/a;->f(I)V

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/single/net/a/a;->k(Ljava/lang/String;)V

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "accept_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/a;->l(Ljava/lang/String;)V

    :cond_0
    const-string v2, "tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/net/a/a;->g(I)V

    return-object v1
.end method

.method public c(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/json/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag 220 json is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/net/a/d;

    invoke-direct {v1}, Lcom/xingluo/platform/single/net/a/d;-><init>()V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/d;->f(I)V

    const-string v2, "location"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/d;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a/d;->a()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xingluo/platform/single/util/a;->mM:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/json/d;->a(Lorg/json/JSONObject;)V

    return-object v1
.end method

.method public d(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xingluo/platform/single/json/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag 141 json is = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v4, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v9, Lcom/xingluo/platform/single/net/a/e;

    invoke-direct {v9}, Lcom/xingluo/platform/single/net/a/e;-><init>()V

    :try_start_0
    const-string v1, "errorcode"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v10

    const-string v1, "errormsg"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v10, :cond_0

    const-string v1, "accept_time"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/xingluo/platform/single/net/a/e;->l(Ljava/lang/String;)V

    const-string v1, "support"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-lt v3, v1, :cond_1

    const-string v1, "payorder"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Lcom/xingluo/platform/single/net/a/e;->a(Ljava/lang/String;)V

    const-string v1, "props"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v13

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v8, v1

    :goto_1
    if-lt v8, v13, :cond_3

    invoke-virtual {v9, v14}, Lcom/xingluo/platform/single/net/a/e;->a(Ljava/util/ArrayList;)V

    :cond_0
    invoke-virtual {v9, v10}, Lcom/xingluo/platform/single/net/a/e;->f(I)V

    invoke-virtual {v9, v11}, Lcom/xingluo/platform/single/net/a/e;->k(Ljava/lang/String;)V

    :goto_2
    return-object v9

    :cond_1
    invoke-virtual {v5, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_0

    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iget-object v8, v9, Lcom/xingluo/platform/single/net/a/e;->a:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v8, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v1

    const/16 v2, 0xbb8

    invoke-virtual {v9, v2}, Lcom/xingluo/platform/single/net/a/e;->f(I)V

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :cond_3
    :try_start_1
    invoke-virtual {v12, v8}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "propsid"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "price"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v4, "channel"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    :goto_4
    :try_start_3
    const-string v4, "code"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "dest"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v4, "group"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getMoblieNum()[Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0x1

    aget-object v4, v4, v16

    invoke-direct/range {v1 .. v7}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v15}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->a(Ljava/lang/String;)V

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v8, 0x1

    move v8, v1

    goto/16 :goto_1

    :catch_1
    move-exception v4

    const-string v5, "mdo"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4
.end method

.method public e(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/json/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tag 145 json is = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/net/a/f;

    invoke-direct {v1, v0}, Lcom/xingluo/platform/single/net/a/f;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/net/a/f;->f(I)V

    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/net/a/f;->k(Ljava/lang/String;)V

    return-object v1
.end method
