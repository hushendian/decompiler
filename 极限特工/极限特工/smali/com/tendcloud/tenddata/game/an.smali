.class public Lcom/tendcloud/tenddata/game/an;
.super Ljava/lang/Object;
.source "td"


# static fields
.field public static a:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput v0, Lcom/tendcloud/tenddata/game/an;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 6

    .prologue
    .line 19
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 20
    sget-boolean v0, Lcom/tendcloud/tenddata/game/ap;->b:Z

    if-nez v0, :cond_0

    move-object v0, v1

    .line 65
    :goto_0
    return-object v0

    .line 24
    :cond_0
    const/16 v0, 0x17

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 25
    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 27
    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "location"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    .line 33
    const-string v2, "gps"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    .line 34
    const-string v3, "network"

    invoke-virtual {v0, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v3

    .line 35
    if-nez v2, :cond_2

    if-eqz v3, :cond_8

    .line 36
    :cond_2
    const-string v2, "passive"

    invoke-virtual {v0, v2}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    if-eqz v0, :cond_8

    .line 40
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    const-string v3, "lat"

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 42
    const-string v3, "lng"

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 43
    const-string v3, "ts"

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 44
    const/16 v3, 0x11

    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 45
    const-string v3, "elapsed"

    invoke-virtual {v0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 46
    :cond_3
    invoke-virtual {v0}, Landroid/location/Location;->hasAltitude()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 47
    const-string v3, "altitude"

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 48
    :cond_4
    invoke-virtual {v0}, Landroid/location/Location;->hasAccuracy()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 50
    const-string v3, "hAccuracy"

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 51
    :cond_5
    invoke-virtual {v0}, Landroid/location/Location;->hasBearing()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 52
    const-string v3, "bearing"

    invoke-virtual {v0}, Landroid/location/Location;->getBearing()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 53
    :cond_6
    invoke-virtual {v0}, Landroid/location/Location;->hasSpeed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 54
    const-string v3, "speed"

    invoke-virtual {v0}, Landroid/location/Location;->getSpeed()F

    move-result v4

    float-to-double v4, v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 55
    :cond_7
    const-string v3, "provider"

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_1
    move-object v0, v1

    .line 65
    goto/16 :goto_0

    .line 62
    :catch_0
    move-exception v0

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public static b(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 8

    .prologue
    .line 118
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 120
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/an;->c(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object v2

    .line 121
    if-eqz v2, :cond_0

    .line 122
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 125
    const-string v6, "type"

    iget-object v7, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    const-string v6, "name"

    iget-object v4, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 135
    :cond_0
    :try_start_2
    invoke-static {p0}, Lcom/tendcloud/tenddata/game/ad;->x(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    sput v2, Lcom/tendcloud/tenddata/game/an;->a:I

    .line 137
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 138
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 139
    const-string v3, "type"

    const-string v4, "sim"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v3, "extra"

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 143
    :cond_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    if-lez v1, :cond_2

    .line 150
    :goto_2
    return-object v0

    .line 146
    :catch_0
    move-exception v0

    .line 150
    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    .line 128
    :catch_1
    move-exception v4

    goto :goto_1
.end method

.method public static c(Landroid/content/Context;)[Landroid/accounts/Account;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-static {p0, v0}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    :cond_0
    return-object v1
.end method

.method public static d(Landroid/content/Context;)[[Ljava/lang/Long;
    .locals 1

    .prologue
    .line 167
    const/4 v0, 0x3

    new-array v0, v0, [[Ljava/lang/Long;

    .line 168
    return-object v0
.end method
