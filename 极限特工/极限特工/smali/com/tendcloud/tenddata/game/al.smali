.class Lcom/tendcloud/tenddata/game/al;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/ak;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/ak;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/al;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 35
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 37
    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/al;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->a(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/al;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/ak;->a(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v1, p0, Lcom/tendcloud/tenddata/game/al;->a:Lcom/tendcloud/tenddata/game/ak;

    invoke-static {v1}, Lcom/tendcloud/tenddata/game/ak;->b(Lcom/tendcloud/tenddata/game/ak;)Landroid/hardware/SensorEventListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    goto :goto_0

    .line 35
    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
