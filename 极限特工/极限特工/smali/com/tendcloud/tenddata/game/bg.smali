.class public final Lcom/tendcloud/tenddata/game/bg;
.super Ljava/lang/Object;
.source "td"


# static fields
.field private static volatile a:Lcom/tendcloud/tenddata/game/bg;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/tendcloud/tenddata/game/bg;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bg;->c()V

    .line 55
    invoke-direct {p0}, Lcom/tendcloud/tenddata/game/bg;->d()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static a()Lcom/tendcloud/tenddata/game/bg;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/bg;

    if-nez v0, :cond_1

    .line 42
    const-class v1, Lcom/tendcloud/tenddata/game/bg;

    monitor-enter v1

    .line 43
    :try_start_0
    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/bg;

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/tendcloud/tenddata/game/bg;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bg;-><init>()V

    sput-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/bg;

    .line 46
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/bg;->a:Lcom/tendcloud/tenddata/game/bg;

    return-object v0

    .line 46
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private c()V
    .locals 5

    .prologue
    .line 69
    :try_start_0
    const-string v0, ""

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 71
    const/16 v0, 0x15

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-static {}, Lcom/tendcloud/tenddata/game/ai;->a()Ljava/util/List;

    move-result-object v0

    .line 73
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tendcloud/tenddata/game/n;

    .line 74
    iget-object v3, v0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    const-string v4, "android."

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    const-string v4, "system"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 76
    iget-object v0, v0, Lcom/tendcloud/tenddata/game/n;->c:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 105
    :catch_0
    move-exception v0

    .line 108
    :goto_1
    return-void

    .line 79
    :cond_1
    sget-object v0, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    const-string v2, "activity"

    .line 80
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 81
    sget-object v2, Lcom/tendcloud/tenddata/game/ab;->f:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 83
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 86
    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 89
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 91
    :catch_1
    move-exception v0

    goto :goto_2

    .line 96
    :cond_3
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/util/Map;

    const-string v2, "ras"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/tendcloud/tenddata/game/r;->setCollectRunningTime(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1
.end method

.method private d()V
    .locals 2

    .prologue
    .line 126
    new-instance v0, Lcom/tendcloud/tenddata/game/bx;

    invoke-direct {v0}, Lcom/tendcloud/tenddata/game/bx;-><init>()V

    .line 127
    const-string v1, "env"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->b:Ljava/lang/String;

    .line 128
    const-string v1, "apps"

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->c:Ljava/lang/String;

    .line 129
    sget-object v1, Lcom/tendcloud/tenddata/game/bg;->b:Ljava/util/Map;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->d:Ljava/util/Map;

    .line 130
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->d:Lcom/tendcloud/tenddata/game/a;

    iput-object v1, v0, Lcom/tendcloud/tenddata/game/bx;->a:Lcom/tendcloud/tenddata/game/a;

    .line 131
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V

    .line 132
    return-void
.end method


# virtual methods
.method b()Z
    .locals 4

    .prologue
    .line 112
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/r;->g()J

    move-result-wide v0

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0xa4cb80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 114
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
