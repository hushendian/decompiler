.class public Lcom/xingluo/platform/single/sdk/callback/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/cmgame/billing/api/GameInterface$IPayCallback;


# instance fields
.field private final a:Lcom/xingluo/platform/single/sdk/c/f;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/single/sdk/c/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/callback/a;->a:Lcom/xingluo/platform/single/sdk/c/f;

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;Ljava/lang/Object;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/callback/a;->a:Lcom/xingluo/platform/single/sdk/c/f;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/f;->c()V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/callback/a;->a:Lcom/xingluo/platform/single/sdk/c/f;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/f;->b()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/callback/a;->a:Lcom/xingluo/platform/single/sdk/c/f;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/f;->c()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
