.class Lcom/xingluo/platform/single/sdk/control/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/pay/listener/b;


# instance fields
.field a:Lcom/xingluo/platform/single/sdk/c/i;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcom/xingluo/platform/single/pay/b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/control/e;->a:Lcom/xingluo/platform/single/sdk/c/i;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/i;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/c/i;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/control/e;->a:Lcom/xingluo/platform/single/sdk/c/i;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/control/e;->a:Lcom/xingluo/platform/single/sdk/c/i;

    return-object v0
.end method
