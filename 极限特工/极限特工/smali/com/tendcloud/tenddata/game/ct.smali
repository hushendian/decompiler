.class public Lcom/tendcloud/tenddata/game/ct;
.super Lcom/tendcloud/tenddata/game/cl;
.source "td"


# static fields
.field public static a:Lcom/tendcloud/tenddata/game/bc;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ct;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/tendcloud/tenddata/game/cv;)V
    .locals 6

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/cl;-><init>()V

    .line 24
    sget-object v0, Lcom/tendcloud/tenddata/game/cu;->a:[I

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/cv;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 89
    :goto_0
    return-void

    .line 26
    :pswitch_0
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->a:Lcom/tendcloud/tenddata/game/cv;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    const-string v0, "available"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->e(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 28
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 29
    const-string v0, "connected"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v0, "current"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->v(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->w(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v0

    .line 32
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ct;->a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/bc;

    move-result-object v1

    .line 33
    sget-object v2, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/bc;

    if-nez v2, :cond_1

    .line 34
    const-string v2, "scannable"

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 35
    sput-object v1, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/bc;

    .line 47
    :goto_1
    const-string v0, "configured"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->u(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    const-string v0, "ip"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 52
    :goto_2
    invoke-static {}, Lcom/tendcloud/tenddata/game/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, "proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    :cond_0
    const-string v0, "scannableFingerId"

    sget-object v1, Lcom/tendcloud/tenddata/game/ct;->c:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 37
    :cond_1
    new-instance v2, Lcom/tendcloud/tenddata/game/bd;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/bd;-><init>()V

    sget-object v3, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/bc;

    invoke-virtual {v2, v3, v1}, Lcom/tendcloud/tenddata/game/bd;->a(Lcom/tendcloud/tenddata/game/bc;Lcom/tendcloud/tenddata/game/bc;)D

    move-result-wide v2

    .line 38
    const-wide v4, 0x3fe999999999999aL    # 0.8

    cmpl-double v2, v2, v4

    if-lez v2, :cond_2

    .line 39
    const-string v0, "scannable"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 41
    :cond_2
    const-string v2, "scannable"

    invoke-virtual {p0, v2, v0}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    sput-object v1, Lcom/tendcloud/tenddata/game/ct;->a:Lcom/tendcloud/tenddata/game/bc;

    .line 43
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/ct;->c:Ljava/lang/String;

    goto :goto_1

    .line 50
    :cond_3
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_2

    .line 60
    :pswitch_1
    :try_start_0
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->b:Lcom/tendcloud/tenddata/game/cv;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    const-string v0, "available"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->f(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string v0, "connected"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->h(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 63
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 64
    const-string v0, "current"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->s(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    :cond_4
    invoke-static {}, Lcom/tendcloud/tenddata/game/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    const-string v0, "proxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Landroid/net/Proxy;->getDefaultPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    :cond_5
    const-string v0, "scannable"

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ad;->t(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 70
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 78
    :pswitch_2
    :try_start_1
    const-string v0, "type"

    sget-object v1, Lcom/tendcloud/tenddata/game/cv;->c:Lcom/tendcloud/tenddata/game/cv;

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/cv;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/tendcloud/tenddata/game/ct;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 79
    :catch_1
    move-exception v0

    goto/16 :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static a(Lorg/json/JSONArray;)Lcom/tendcloud/tenddata/game/bc;
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 91
    const/4 v1, 0x0

    .line 92
    if-eqz p0, :cond_1

    .line 93
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move v6, v0

    .line 94
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 96
    :try_start_0
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 97
    new-instance v0, Lcom/tendcloud/tenddata/game/ay;

    const-string v1, "name"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "level"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-byte v3, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/tendcloud/tenddata/game/ay;-><init>(Ljava/lang/String;Ljava/lang/String;BBB)V

    .line 98
    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    :goto_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    .line 102
    :cond_0
    new-instance v0, Lcom/tendcloud/tenddata/game/bc;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bc;-><init>()V

    .line 103
    invoke-virtual {v0, v7}, Lcom/tendcloud/tenddata/game/bc;->setBsslist(Ljava/util/List;)V

    .line 105
    :goto_2
    return-object v0

    .line 99
    :catch_0
    move-exception v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2
.end method
