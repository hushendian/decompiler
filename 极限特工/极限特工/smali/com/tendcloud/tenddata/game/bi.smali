.class public Lcom/tendcloud/tenddata/game/bi;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/bi;

.field private static b:Z

.field private static c:Z

.field private static d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 348
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->a()Lcom/tendcloud/tenddata/game/bi;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/as;->register(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/tendcloud/tenddata/game/bi;->a:Lcom/tendcloud/tenddata/game/bi;

    .line 354
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bi;->b:Z

    .line 355
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bi;->c:Z

    .line 356
    sput-boolean v2, Lcom/tendcloud/tenddata/game/bi;->d:Z

    return-void

    .line 349
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 344
    return-void
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bi;
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/tendcloud/tenddata/game/bi;->a:Lcom/tendcloud/tenddata/game/bi;

    if-nez v0, :cond_1

    .line 334
    const-class v1, Lcom/tendcloud/tenddata/game/bi;

    monitor-enter v1

    .line 335
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bi;->a:Lcom/tendcloud/tenddata/game/bi;

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lcom/tendcloud/tenddata/game/bi;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bi;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bi;->a:Lcom/tendcloud/tenddata/game/bi;

    .line 338
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bi;->a:Lcom/tendcloud/tenddata/game/bi;

    return-object v0

    .line 338
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 198
    if-eqz p0, :cond_1

    .line 199
    :try_start_0
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 208
    :goto_0
    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V
    .locals 3

    .prologue
    .line 121
    sget-boolean v0, Lcom/tendcloud/tenddata/game/bi;->c:Z

    if-nez v0, :cond_1

    .line 123
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TalkingData Game Analytics init...\n\tSDK_VERSION is: Android+TD+V4.0.2 gp Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 124
    invoke-static {}, Lcom/tendcloud/tenddata/game/ab;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp ID is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 125
    invoke-static {p1, p2}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tApp Channel is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 126
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/ab;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n\tSDK_OVC is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "TDOVC+011ea602205a5d29627253d4941a8776+SaaS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 133
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAAccount;->a:Lcom/tendcloud/tenddata/TDGAAccount;

    .line 136
    :cond_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->p()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tendcloud/tenddata/TDGAMission;->a:Ljava/lang/String;

    .line 138
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/tendcloud/tenddata/TDGAAccount;->getTDGAccount(Landroid/content/Context;)Lcom/tendcloud/tenddata/TDGAAccount;

    move-result-object v0

    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->p()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/tendcloud/tenddata/game/a;->e:Lcom/tendcloud/tenddata/game/a;

    invoke-direct {p0, v0, v1, v2}, Lcom/tendcloud/tenddata/game/bi;->a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 143
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 144
    new-instance v1, Lcom/tendcloud/tenddata/game/bj;

    invoke-direct {v1, p0}, Lcom/tendcloud/tenddata/game/bj;-><init>(Lcom/tendcloud/tenddata/game/bi;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 164
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/bi;->c:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    :goto_0
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    const-string v1, "[SDKInit] Failed to initialize!"

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private a(Lcom/tendcloud/tenddata/TDGAAccount;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    .prologue
    .line 174
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v0

    invoke-static {p3}, Lcom/tendcloud/tenddata/game/r;->a(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tendcloud/tenddata/game/cg;->setSessionId(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 176
    const-string v1, "accountId"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v1, "name"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAccountType()Lcom/tendcloud/tenddata/TDGAAccount$AccountType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$AccountType;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "gender"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGender()Lcom/tendcloud/tenddata/TDGAAccount$Gender;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tendcloud/tenddata/TDGAAccount$Gender;->index()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string v1, "age"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getAge()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 182
    const-string v2, "level"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getLevel()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    const-string v2, "gameServer"

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/TDGAAccount;->getGameServer()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    invoke-static {p2}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    const-string v2, "mission"

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_0
    const-string v2, "custom"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    invoke-static {}, Lcom/tendcloud/tenddata/game/cg;->a()Lcom/tendcloud/tenddata/game/cg;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/cg;->setAccount(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    return-void

    .line 190
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 260
    const/16 v0, 0x16

    :try_start_0
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    invoke-static {}, Lcom/tendcloud/tenddata/game/ai;->b()Z

    move-result v0

    .line 282
    :goto_0
    return v0

    .line 263
    :cond_0
    const-string v0, "activity"

    .line 264
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 266
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 269
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_2

    .line 271
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 272
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v5, :cond_1

    .line 273
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    const/4 v0, 0x1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    move v0, v1

    .line 282
    goto :goto_0
.end method

.method private static b()V
    .locals 4

    .prologue
    .line 219
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->e()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/r;->setInitTime(J)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 222
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 223
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 224
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ap;->e:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 226
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static c()V
    .locals 4

    .prologue
    .line 286
    :try_start_0
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 287
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 288
    const-string v1, "getProp"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 289
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 290
    const-string v2, "sysproperty"

    invoke-static {}, Lcom/tendcloud/tenddata/game/ap;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 292
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 293
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static sendInitEvent(Lcom/tendcloud/tenddata/game/a;)V
    .locals 6

    .prologue
    .line 234
    :try_start_0
    new-instance v1, Ljava/util/TreeMap;

    invoke-direct {v1}, Ljava/util/TreeMap;-><init>()V

    .line 235
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->e()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1388

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 236
    :goto_0
    const-string v2, "first"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    new-instance v2, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v2}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 239
    const-string v3, "app"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 240
    const-string v3, "init"

    iput-object v3, v2, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 241
    iput-object v1, v2, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 242
    iput-object p0, v2, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 243
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 245
    new-instance v1, Lcom/tendcloud/tenddata/game/bu;

    invoke-direct {v1}, Lcom/tendcloud/tenddata/game/bu;-><init>()V

    .line 246
    iput-object p0, v1, Lcom/tendcloud/tenddata/game/bu;->a:Lcom/tendcloud/tenddata/game/a;

    .line 247
    sget-object v2, Lcom/tendcloud/tenddata/game/bu$a;->a:Lcom/tendcloud/tenddata/game/bu$a;

    iput-object v2, v1, Lcom/tendcloud/tenddata/game/bu;->b:Lcom/tendcloud/tenddata/game/bu$a;

    .line 248
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 250
    if-eqz v0, :cond_0

    .line 251
    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->c()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    :cond_0
    :goto_1
    return-void

    .line 235
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final onTDEBEventInitEvent(Lcom/tendcloud/tenddata/game/zz$a;)V
    .locals 7

    .prologue
    .line 40
    :try_start_0
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "apiType"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "action"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 44
    iget-object v0, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v1, "service"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 45
    const-string v1, "install"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v3, "TRACKING"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 46
    new-instance v3, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v3}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 47
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v4, "data"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    iget-object v4, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v5, "domain"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 49
    iput-object v2, v3, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 50
    if-eqz v1, :cond_2

    instance-of v2, v1, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 51
    check-cast v1, Ljava/util/Map;

    iput-object v1, v3, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 53
    :cond_2
    iput-object v0, v3, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 54
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    goto :goto_0

    .line 55
    :cond_3
    const-string v1, "init"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 56
    sget-object v5, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    .line 58
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "appId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 59
    iget-object v1, p1, Lcom/tendcloud/tenddata/game/zz$a;->a:Ljava/util/HashMap;

    const-string v2, "channelId"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v6, 0x80

    invoke-virtual {v2, v3, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 64
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 65
    const-string v3, "TD_APP_ID"

    invoke-static {v2, v3}, Lcom/tendcloud/tenddata/game/bi;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 66
    const-string v6, "TD_CHANNEL_ID"

    invoke-static {v2, v6}, Lcom/tendcloud/tenddata/game/bi;->a(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 69
    :goto_1
    invoke-static {v2}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 72
    :goto_2
    const-string v1, "ChannelConfig.json"

    invoke-static {v5, v1}, Lcom/tendcloud/tenddata/game/ap;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 75
    :goto_3
    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 77
    :goto_4
    invoke-static {v3}, Lcom/tendcloud/tenddata/game/ap;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 78
    const-string v0, "[SDKInit] TD AppId is null"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->eForDeveloper(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object v3, v4

    .line 68
    goto :goto_1

    :cond_5
    move-object v2, v1

    .line 69
    goto :goto_2

    :cond_6
    move-object v1, v2

    .line 73
    goto :goto_3

    .line 75
    :cond_7
    const-string v1, "Default"

    goto :goto_4

    .line 83
    :cond_8
    invoke-static {v3, v1, v0}, Lcom/tendcloud/tenddata/game/ab;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 89
    invoke-static {}, Lcom/tendcloud/tenddata/game/bn;->a()Lcom/tendcloud/tenddata/game/bn;

    .line 91
    invoke-static {v5}, Lcom/tendcloud/tenddata/game/bi;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 94
    invoke-static {}, Lcom/tendcloud/tenddata/game/bf;->a()Lcom/tendcloud/tenddata/game/bf;

    .line 95
    invoke-static {}, Lcom/tendcloud/tenddata/game/bh;->a()Lcom/tendcloud/tenddata/game/bh;

    .line 96
    invoke-static {}, Lcom/tendcloud/tenddata/game/bg;->a()Lcom/tendcloud/tenddata/game/bg;

    .line 100
    :cond_9
    invoke-static {}, Lcom/tendcloud/tenddata/game/bi;->b()V

    .line 103
    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GAME"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 104
    invoke-direct {p0, v5, v0}, Lcom/tendcloud/tenddata/game/bi;->a(Landroid/content/Context;Lcom/tendcloud/tenddata/game/a;)V

    .line 108
    :cond_a
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bi;->sendInitEvent(Lcom/tendcloud/tenddata/game/a;)V

    goto/16 :goto_0

    .line 110
    :cond_b
    const-string v1, "sendInit"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bi;->sendInitEvent(Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0
.end method
