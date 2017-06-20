.class public Lcom/tendcloud/tenddata/game/co;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 12
    const-string v0, "manufacture"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 13
    const-string v0, "brand"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    const-string v0, "model"

    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 17
    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->k()[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 18
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 19
    aget-object v4, v3, v0

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 18
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const-string v0, "cpuInfo"

    invoke-virtual {p0, v0, v2}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 23
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 31
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 32
    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->m()[I

    move-result-object v2

    .line 33
    :goto_1
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 34
    aget v3, v2, v1

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 36
    :cond_1
    const-string v1, "memoryInfo"

    invoke-virtual {p0, v1, v0}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/co;->b:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/w;->a(Landroid/content/Context;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 38
    const-string v0, "totalDiskSpace"

    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/co;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    return-void
.end method

.method private b()I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 44
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/w;->n()[I

    move-result-object v1

    .line 46
    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x2

    aget v0, v1, v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    add-int/2addr v0, v2

    .line 49
    :goto_0
    return v0

    .line 47
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public setSlots(I)V
    .locals 2

    .prologue
    .line 53
    const-string v0, "slots"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/co;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    return-void
.end method
