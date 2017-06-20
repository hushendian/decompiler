.class final Lcom/tendcloud/tenddata/game/bq;
.super Landroid/content/BroadcastReceiver;
.source "td"


# instance fields
.field a:Lcom/tendcloud/tenddata/game/bd;

.field b:Ljava/util/ArrayList;

.field c:Lorg/json/JSONArray;

.field d:Lcom/tendcloud/tenddata/game/bc;

.field e:Lcom/tendcloud/tenddata/game/bc;

.field f:D

.field g:J

.field h:J

.field private i:J

.field private j:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 315
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 303
    new-instance v0, Lcom/tendcloud/tenddata/game/bd;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bd;-><init>()V

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->a:Lcom/tendcloud/tenddata/game/bd;

    .line 309
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bq;->f:D

    .line 310
    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/bq;->g:J

    .line 311
    iput-wide v2, p0, Lcom/tendcloud/tenddata/game/bq;->h:J

    .line 312
    const-wide/32 v0, 0x2bf20

    iput-wide v0, p0, Lcom/tendcloud/tenddata/game/bq;->i:J

    .line 316
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bq;->j:Landroid/net/wifi/WifiManager;

    .line 317
    return-void
.end method

.method static synthetic a(Lcom/tendcloud/tenddata/game/bq;)J
    .locals 2

    .prologue
    .line 302
    iget-wide v0, p0, Lcom/tendcloud/tenddata/game/bq;->i:J

    return-wide v0
.end method

.method private a()Lcom/tendcloud/tenddata/game/bc;
    .locals 1

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->c:Lorg/json/JSONArray;

    .line 354
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bq;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->d:Lcom/tendcloud/tenddata/game/bc;

    return-object v0

    .line 355
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/bc;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 389
    const/4 v1, 0x0

    .line 390
    if-eqz p1, :cond_1

    .line 391
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    .line 392
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 394
    :try_start_0
    invoke-virtual {p1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 395
    new-instance v0, Lcom/tendcloud/tenddata/game/ay;

    const-string v1, "SSID"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BSSID"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 396
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 400
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/bc;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bc;-><init>()V

    .line 401
    invoke-virtual {v0, v7}, Lcom/tendcloud/tenddata/game/bc;->setBsslist(Ljava/util/List;)V

    .line 403
    :goto_2
    return-object v0

    .line 397
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method

.method private b()Lcom/tendcloud/tenddata/game/bc;
    .locals 5

    .prologue
    .line 362
    :try_start_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    .line 365
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_1

    .line 367
    :try_start_1
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 368
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 369
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    const/16 v3, -0x4b

    if-ge v0, v3, :cond_0

    .line 368
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 370
    :cond_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 371
    const-string v4, "SSID"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 372
    const-string v4, "BSSID"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 373
    const-string v4, "level"

    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 374
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 378
    :catch_0
    move-exception v0

    .line 385
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->e:Lcom/tendcloud/tenddata/game/bc;

    return-object v0

    .line 376
    :cond_2
    :try_start_2
    iput-object v2, p0, Lcom/tendcloud/tenddata/game/bq;->c:Lorg/json/JSONArray;

    .line 377
    invoke-direct {p0, v2}, Lcom/tendcloud/tenddata/game/bq;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    iput-object v0, p0, Lcom/tendcloud/tenddata/game/bq;->e:Lcom/tendcloud/tenddata/game/bc;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 382
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static synthetic b(Lcom/tendcloud/tenddata/game/bq;)Lcom/tendcloud/tenddata/game/bc;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bq;->a()Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/tendcloud/tenddata/game/bq;)Lcom/tendcloud/tenddata/game/bc;
    .locals 1

    .prologue
    .line 302
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bq;->b()Lcom/tendcloud/tenddata/game/bc;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 320
    sget-object v0, Lcom/tendcloud/tenddata/game/bl;->a:Landroid/os/Handler;

    new-instance v1, Lcom/tendcloud/tenddata/game/br;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/br;-><init>(Lcom/tendcloud/tenddata/game/bq;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 349
    return-void
.end method
