.class final Lcom/tendcloud/tenddata/game/i;
.super Ljava/lang/Object;
.source "td"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method static a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 2

    .prologue
    .line 25
    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    invoke-static {p1}, Lcom/tendcloud/tenddata/game/r;->d(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/tendcloud/tenddata/game/r;->d(Lcom/tendcloud/tenddata/game/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    new-instance v0, Lcom/tendcloud/tenddata/game/j;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/j;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->execute(Ljava/lang/Runnable;)V

    .line 39
    :cond_0
    const-string v0, "0"

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/r;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 40
    invoke-static {}, Lcom/tendcloud/tenddata/game/bn;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 41
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getChangingConfigurations()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_1

    .line 42
    const-string v0, "Ignore page changing during screen switch"

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/q;->iForDeveloper(Ljava/lang/String;)V

    .line 44
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/zz;->x:Z

    .line 66
    :goto_0
    return-void

    .line 48
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/k;

    invoke-direct {v0, p1}, Lcom/tendcloud/tenddata/game/k;-><init>(Lcom/tendcloud/tenddata/game/a;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 63
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    .locals 4

    .prologue
    .line 71
    :try_start_0
    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/tendcloud/tenddata/game/a;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_SQL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    :cond_0
    const-string v0, "1"

    invoke-static {v0, p1}, Lcom/tendcloud/tenddata/game/r;->b(Ljava/lang/String;Lcom/tendcloud/tenddata/game/a;)V

    .line 73
    invoke-static {}, Lcom/tendcloud/tenddata/game/bn;->b()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 74
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 75
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 76
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 77
    invoke-static {}, Lcom/tendcloud/tenddata/game/bn;->b()Landroid/os/Handler;

    move-result-object v1

    sget-wide v2, Lcom/tendcloud/tenddata/game/ab;->D:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 79
    :cond_1
    new-instance v0, Lcom/tendcloud/tenddata/game/l;

    invoke-direct {v0, p1, p0}, Lcom/tendcloud/tenddata/game/l;-><init>(Lcom/tendcloud/tenddata/game/a;Landroid/app/Activity;)V

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ap;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method
