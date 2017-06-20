.class final Lcom/tendcloud/tenddata/game/e;
.super Landroid/os/Handler;
.source "td"


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 156
    invoke-static {}, Lcom/tendcloud/tenddata/game/cc;->b()Lcom/tendcloud/tenddata/game/cc;

    .line 157
    invoke-static {}, Lcom/tendcloud/tenddata/game/bz;->b()Lcom/tendcloud/tenddata/game/bz;

    .line 159
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/zz$a;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/zz$a;

    .line 162
    :try_start_0
    invoke-static {}, Lcom/tendcloud/tenddata/game/as;->a()Lcom/tendcloud/tenddata/game/as;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tendcloud/tenddata/game/as;->post(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 163
    :catch_0
    move-exception v0

    goto :goto_0
.end method
