.class public Lcom/tendcloud/tenddata/game/cp;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 13
    const-string v0, "tid"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/u;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 15
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 16
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 17
    if-eqz v0, :cond_0

    .line 18
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "imei"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 19
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 20
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "imei"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 23
    :cond_0
    const-string v0, "imeis"

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 28
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/u;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 30
    const-string v1, "wifiMacs"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 32
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/u;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 33
    const-string v1, "androidId"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    const-string v0, "adId"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/u;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 36
    const-string v1, "serialNo"

    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 38
    return-void

    .line 36
    :cond_1
    invoke-static {}, Lcom/tendcloud/tenddata/game/u;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 24
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 2

    .prologue
    .line 41
    const-string v0, "adId"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/u;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/cp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    return-void
.end method
