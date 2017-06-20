.class public Lcom/tendcloud/tenddata/game/cx;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static a:Lcom/tendcloud/tenddata/game/cj;

.field private static b:Lcom/tendcloud/tenddata/game/cm;

.field private static c:Lcom/tendcloud/tenddata/game/cq;

.field private static d:Lcom/tendcloud/tenddata/game/cn;

.field private static volatile e:Lcom/tendcloud/tenddata/game/cx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    .line 27
    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->b:Lcom/tendcloud/tenddata/game/cm;

    .line 28
    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    .line 29
    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->d:Lcom/tendcloud/tenddata/game/cn;

    .line 134
    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->e:Lcom/tendcloud/tenddata/game/cx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/cx;
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->e:Lcom/tendcloud/tenddata/game/cx;

    if-nez v0, :cond_1

    .line 138
    const-class v1, Lcom/tendcloud/tenddata/game/cx;

    monitor-enter v1

    .line 139
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->e:Lcom/tendcloud/tenddata/game/cx;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/tendcloud/tenddata/game/cx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cx;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->e:Lcom/tendcloud/tenddata/game/cx;

    .line 142
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->e:Lcom/tendcloud/tenddata/game/cx;

    return-object v0

    .line 142
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/ci;Z)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/tendcloud/tenddata/game/cx;->a(Lcom/tendcloud/tenddata/game/ci;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Lcom/tendcloud/tenddata/game/ci;ZLcom/tendcloud/tenddata/game/a;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 37
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ci;->a_()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_2

    .line 39
    :cond_0
    const/4 v0, 0x0

    .line 132
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 41
    :cond_2
    :try_start_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    if-nez v0, :cond_3

    .line 42
    invoke-static {}, Lcom/tendcloud/tenddata/game/cj;->b()Lcom/tendcloud/tenddata/game/cj;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    .line 43
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/cw;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/cj;->setUniqueId(Ljava/lang/String;)V

    .line 46
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    sget-object v1, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cj;->setAppChannel(Ljava/lang/String;)V

    .line 48
    :cond_3
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    invoke-virtual {v0, p3}, Lcom/tendcloud/tenddata/game/cj;->setSubmitAppId(Lcom/tendcloud/tenddata/game/a;)V

    .line 50
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    if-nez v0, :cond_7

    .line 51
    new-instance v0, Lcom/tendcloud/tenddata/game/cq;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cq;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    .line 56
    :goto_1
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->b:Lcom/tendcloud/tenddata/game/cm;

    if-nez v0, :cond_4

    .line 57
    new-instance v0, Lcom/tendcloud/tenddata/game/cm;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cm;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->b:Lcom/tendcloud/tenddata/game/cm;

    .line 60
    :cond_4
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->d:Lcom/tendcloud/tenddata/game/cn;

    if-nez v0, :cond_5

    .line 61
    new-instance v0, Lcom/tendcloud/tenddata/game/cn;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/cn;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/cx;->d:Lcom/tendcloud/tenddata/game/cn;

    .line 62
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->d:Lcom/tendcloud/tenddata/game/cn;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cn;->b()V

    .line 64
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cq;->c()Lcom/tendcloud/tenddata/game/co;

    move-result-object v0

    sget v1, Lcom/tendcloud/tenddata/game/an;->a:I

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/co;->setSlots(I)V

    .line 67
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    :try_start_2
    const-string v1, "version"

    const-string v2, "2.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "action"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/ci;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v1, "device"

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cq;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v1, "app"

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->a:Lcom/tendcloud/tenddata/game/cj;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cj;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    const-string v1, "sdk"

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->b:Lcom/tendcloud/tenddata/game/cm;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cm;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v1, "appContext"

    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cg;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v1, "user"

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->d:Lcom/tendcloud/tenddata/game/cn;

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cn;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 87
    const-string v3, "ts"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 89
    const-string v3, "fingerprint"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 91
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/cw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    .line 92
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cq;->b()Lcom/tendcloud/tenddata/game/cr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cr;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    .line 93
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cq;->b()Lcom/tendcloud/tenddata/game/cr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/cr;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 90
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ap;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    if-eqz p2, :cond_1

    .line 103
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 104
    new-instance v2, Lcom/tendcloud/tenddata/game/ct;

    sget-object v3, Lcom/tendcloud/tenddata/game/cv;->a:Lcom/tendcloud/tenddata/game/cv;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/ct;-><init>(Lcom/tendcloud/tenddata/game/cv;)V

    .line 105
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ct;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 107
    new-instance v2, Lcom/tendcloud/tenddata/game/ct;

    sget-object v3, Lcom/tendcloud/tenddata/game/cv;->b:Lcom/tendcloud/tenddata/game/cv;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/ct;-><init>(Lcom/tendcloud/tenddata/game/cv;)V

    .line 108
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ct;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 112
    :try_start_3
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v3, "android.permission.BLUETOOTH"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/ap;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 114
    new-instance v2, Lcom/tendcloud/tenddata/game/ct;

    sget-object v3, Lcom/tendcloud/tenddata/game/cv;->c:Lcom/tendcloud/tenddata/game/cv;

    invoke-direct {v2, v3}, Lcom/tendcloud/tenddata/game/ct;-><init>(Lcom/tendcloud/tenddata/game/cv;)V

    .line 115
    invoke-virtual {v2}, Lcom/tendcloud/tenddata/game/ct;->a_()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 121
    :cond_6
    :goto_2
    :try_start_4
    const-string v2, "networks"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    new-instance v1, Lcom/tendcloud/tenddata/game/ck;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/ck;-><init>()V

    .line 124
    const-string v2, "locations"

    invoke-virtual {v1}, Lcom/tendcloud/tenddata/game/ck;->a_()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 128
    :catch_0
    move-exception v1

    goto/16 :goto_0

    .line 53
    :cond_7
    :try_start_5
    sget-object v0, Lcom/tendcloud/tenddata/game/cx;->c:Lcom/tendcloud/tenddata/game/cq;

    sget-object v0, Lcom/tendcloud/tenddata/game/cq;->g:Lcom/tendcloud/tenddata/game/cp;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/cp;->b()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 117
    :catch_1
    move-exception v2

    goto :goto_2
.end method
