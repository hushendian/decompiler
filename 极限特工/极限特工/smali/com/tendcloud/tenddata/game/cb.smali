.class Lcom/tendcloud/tenddata/game/cb;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bz;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bz;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 344
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/cb;->a:Lcom/tendcloud/tenddata/game/bz;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .prologue
    .line 349
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 360
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->a:Lcom/tendcloud/tenddata/game/bz;

    invoke-virtual {v0}, Lcom/tendcloud/tenddata/game/bz;->a()V

    .line 365
    :goto_1
    return-void

    .line 351
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/tendcloud/tenddata/game/a;

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/tendcloud/tenddata/game/a;

    .line 353
    iget-object v1, p0, Lcom/tendcloud/tenddata/game/cb;->a:Lcom/tendcloud/tenddata/game/bz;

    invoke-static {v1, v0}, Lcom/tendcloud/tenddata/game/bz;->a(Lcom/tendcloud/tenddata/game/bz;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    :catch_0
    move-exception v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 357
    :sswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/cb;->a:Lcom/tendcloud/tenddata/game/bz;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bz;->a(Lcom/tendcloud/tenddata/game/bz;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 349
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x5 -> :sswitch_0
    .end sparse-switch
.end method
