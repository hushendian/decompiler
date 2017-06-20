.class public Lcom/tendcloud/tenddata/game/bn;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/bn;

.field private static final b:Landroid/os/HandlerThread;

.field private static c:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 292
    sput-object v2, Lcom/tendcloud/tenddata/game/bn;->a:Lcom/tendcloud/tenddata/game/bn;

    .line 293
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PauseEventThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bn;->b:Landroid/os/HandlerThread;

    .line 295
    sput-object v2, Lcom/tendcloud/tenddata/game/bn;->c:Landroid/os/Handler;

    .line 298
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->b:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 299
    new-instance v0, Lcom/tendcloud/tenddata/game/bo;

    sget-object v1, Lcom/tendcloud/tenddata/game/bn;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tendcloud/tenddata/game/bo;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/tendcloud/tenddata/game/bn;->c:Landroid/os/Handler;

    .line 328
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bn;->a()Lcom/tendcloud/tenddata/game/bn;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    :goto_0
    return-void

    .line 329
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bn;
    .locals 2

    .prologue
    .line 274
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Lcom/tendcloud/tenddata/game/bn;

    if-nez v0, :cond_1

    .line 275
    const-class v1, Lcom/tendcloud/tenddata/game/bn;

    monitor-enter v1

    .line 276
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Lcom/tendcloud/tenddata/game/bn;

    if-nez v0, :cond_0

    .line 277
    new-instance v0, Lcom/tendcloud/tenddata/game/bn;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bn;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Lcom/tendcloud/tenddata/game/bn;

    .line 279
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->a:Lcom/tendcloud/tenddata/game/bn;

    return-object v0

    .line 279
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private a(JLcom/tendcloud/tenddata/game/a;)V
    .locals 8

    .prologue
    const-wide/16 v0, 0x0

    .line 136
    :try_start_0
    const-string v2, "[Session] - New session!"

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 137
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    .line 138
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Session] - Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 139
    invoke-static {p3}, Lcom/tendcloud/tenddata/game/r;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v5

    .line 140
    sub-long v2, p1, v5

    .line 141
    cmp-long v5, v0, v5

    if-nez v5, :cond_1

    move-wide v1, v0

    .line 143
    :goto_0
    invoke-static {v4, p3}, Lcom/tendcloud/tenddata/game/r;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 144
    invoke-static {p1, p2, p3}, Lcom/tendcloud/tenddata/game/r;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 147
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/tendcloud/tenddata/game/cg;->setSessionId(Ljava/lang/String;)V

    .line 148
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/tendcloud/tenddata/game/cg;->setSessionStartTime(J)V

    .line 150
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 151
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ad;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 153
    :goto_1
    new-instance v3, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 154
    const-string v5, "session"

    iput-object v5, v3, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 155
    const-string v5, "begin"

    iput-object v5, v3, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 156
    new-instance v5, Ljava/util/TreeMap;

    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 157
    const-string v6, "sessionId"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v4, "interval"

    const-wide/16 v6, 0x3e8

    div-long/2addr v1, v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v1, "isConnected"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v5, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iput-object v5, v3, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 161
    iput-object p3, v3, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 163
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p3}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GAME"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0, p3}, Lcom/tendcloud/tenddata/game/bn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :cond_0
    :goto_2
    return-void

    :cond_1
    move-wide v1, v2

    .line 141
    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, -0x1

    goto :goto_1

    .line 177
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private a(Lcom/tendcloud/tenddata/game/a;)V
    .locals 8

    .prologue
    .line 92
    :try_start_0
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/r;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v2

    .line 93
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 94
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/r;->b(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    .line 95
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/r;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v0

    .line 96
    sub-long/2addr v0, v3

    .line 97
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 98
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "APP_SQL"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 99
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TRACKING"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 100
    :cond_0
    const-wide/16 v5, 0x1f4

    cmp-long v5, v0, v5

    if-gez v5, :cond_1

    const-wide/16 v0, -0x3e8

    .line 103
    :cond_1
    new-instance v5, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v5}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 104
    const-string v6, "session"

    iput-object v6, v5, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 105
    const-string v6, "end"

    iput-object v6, v5, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 106
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 107
    const-string v7, "sessionId"

    invoke-interface {v6, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v2, "start"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v2, "duration"

    const-wide/16 v3, 0x3e8

    div-long/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v6, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    iput-object v6, v5, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 111
    iput-object p1, v5, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 112
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 122
    invoke-direct {p0, p1}, Lcom/tendcloud/tenddata/game/bn;->b(Lcom/tendcloud/tenddata/game/a;)V

    .line 124
    const/4 v0, 0x0

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/r;->a(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_2
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 255
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/tendcloud/tenddata/TDGAAccount;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/tendcloud/tenddata/TDGAAccount;

    .line 258
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 259
    const-string v1, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 265
    const-string v2, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v2, "custom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cg;->setAccount(Lorg/json/JSONObject;)V

    .line 270
    :cond_0
    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 59
    :try_start_0
    const-string v0, "occurTime"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 60
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 61
    invoke-static {v1, v2, v0}, Lcom/tendcloud/tenddata/game/r;->b(JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 288
    sget-object v0, Lcom/tendcloud/tenddata/game/bn;->c:Landroid/os/Handler;

    return-object v0
.end method

.method private b(Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 207
    new-instance v0, Lcom/tendcloud/tenddata/game/bu;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bu;-><init>()V

    .line 208
    iput-object p1, v0, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    .line 209
    sget-object v1, Lcom/tendcloud/tenddata/game/bu$a;->a:Lcom/tendcloud/tenddata/game/bu$a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    .line 210
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 211
    return-void
.end method

.method private final b(Ljava/util/HashMap;)V
    .locals 7

    .prologue
    .line 70
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 71
    const-string v1, "occurTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 72
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->c(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v3

    sub-long v3, v1, v3

    sget-wide v5, Lcom/tendcloud/tenddata/game/ab;->D:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 73
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 74
    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/game/bn;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 75
    const-string v0, ""

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->setLastActivity(Ljava/lang/String;)V

    .line 88
    :goto_0
    return-void

    .line 77
    :cond_0
    const-string v1, "[Session] - Same session as before!"

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 78
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/cg;->setSessionId(Ljava/lang/String;)V

    .line 80
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/r;->b(Lcom/tendcloud/tenddata/game/a;)J

    move-result-wide v0

    .line 81
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tendcloud/tenddata/game/cg;->setSessionStartTime(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private final c(Ljava/util/HashMap;)V
    .locals 5

    .prologue
    .line 186
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 187
    const-string v1, "occurTime"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 188
    const-string v3, "sessionEnd"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 204
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v3, "pageName"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 193
    const-string v3, "pageName"

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 194
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/r;->setLastActivity(Ljava/lang/String;)V

    .line 196
    :cond_1
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GAME"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 197
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->b(Lcom/tendcloud/tenddata/game/a;)V

    .line 199
    :cond_2
    invoke-static {v1, v2, v0}, Lcom/tendcloud/tenddata/game/r;->b(JLcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private d(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 215
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/game/bn;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 217
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->b(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private e(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 227
    :try_start_0
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/tendcloud/tenddata/game/r;->b(JLcom/tendcloud/tenddata/game/a;)V

    .line 229
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->a(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :goto_0
    return-void

    .line 230
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private f(Ljava/util/HashMap;)V
    .locals 3

    .prologue
    .line 238
    const-string v0, "service"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 239
    const-string v1, "account"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    if-eqz v2, :cond_0

    .line 241
    check-cast v1, Lcom/tendcloud/tenddata/TDGAAccount$a;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2, v0}, Lcom/tendcloud/tenddata/game/r;->b(JLcom/tendcloud/tenddata/game/a;)V

    .line 244
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->a(Lcom/tendcloud/tenddata/game/a;)V

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p0, v1, v2, v0}, Lcom/tendcloud/tenddata/game/bn;->a(JLcom/tendcloud/tenddata/game/a;)V

    .line 249
    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->b(Lcom/tendcloud/tenddata/game/a;)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public final onTDEBEventSession(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 2

    .prologue
    .line 32
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 37
    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 38
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->b(Ljava/util/HashMap;)V

    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    goto :goto_0

    .line 40
    :cond_2
    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 41
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->c(Ljava/util/HashMap;)V

    goto :goto_0

    .line 44
    :cond_3
    const/16 v1, 0xc

    if-ne v0, v1, :cond_4

    .line 45
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->d(Ljava/util/HashMap;)V

    goto :goto_0

    .line 46
    :cond_4
    const/16 v1, 0xd

    if-ne v0, v1, :cond_5

    .line 47
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->a(Ljava/util/HashMap;)V

    goto :goto_0

    .line 48
    :cond_5
    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    .line 49
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lcom/tendcloud/tenddata/game/bn;->e(Ljava/util/HashMap;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
