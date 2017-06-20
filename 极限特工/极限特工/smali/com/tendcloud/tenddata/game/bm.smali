.class Lcom/tendcloud/tenddata/game/bm;
.super Landroid/os/Handler;
.source "td"


# instance fields
.field final synthetic a:Lcom/tendcloud/tenddata/game/bl;


# direct methods
.method constructor <init>(Lcom/tendcloud/tenddata/game/bl;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 107
    :goto_0
    return-void

    .line 91
    :pswitch_0
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bl;->a(Lcom/tendcloud/tenddata/game/bl;)V

    goto :goto_0

    .line 94
    :pswitch_1
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bl;->b(Lcom/tendcloud/tenddata/game/bl;)V

    goto :goto_0

    .line 97
    :pswitch_2
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bl;->c(Lcom/tendcloud/tenddata/game/bl;)V

    goto :goto_0

    .line 100
    :pswitch_3
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bl;->a(Lcom/tendcloud/tenddata/game/bl;)V

    .line 102
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    invoke-static {v0}, Lcom/tendcloud/tenddata/game/bl;->c(Lcom/tendcloud/tenddata/game/bl;)V

    .line 104
    iget-object v0, p0, Lcom/tendcloud/tenddata/game/bm;->a:Lcom/tendcloud/tenddata/game/bl;

    const/4 v1, 0x2

    const-wide/32 v2, 0x927c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/tendcloud/tenddata/game/bl;->a(IJ)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
