.class public Lcom/xingluo/platform/single/sdk/d/c;
.super Lcom/xingluo/platform/single/pay/AbstractPayUICommand;


# instance fields
.field a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

.field private b:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/AbstractPayUICommand;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/d/c;->b:Lcom/xingluo/platform/single/util/i;

    return-void
.end method


# virtual methods
.method public onUICommand(Lcom/xingluo/platform/single/pay/ViewType;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/c;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "onUICommand is init "

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/ViewType;->a()I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/ViewType;->a()I

    move-result v0

    const/16 v1, 0xc8

    if-ge v0, v1, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/d/c;->a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/c;->a:Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/control/EventTypeSDK;->a()Lcom/xingluo/platform/single/pay/listener/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xingluo/platform/single/pay/listener/b;->b()Lcom/xingluo/platform/single/pay/b;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/xingluo/platform/single/pay/PayParameter;->a:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xingluo/platform/single/pay/PayParameter;->b:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {v1, v2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {v1, v2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/xingluo/platform/single/pay/PayParameter;->d:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/b;->a(Ljava/util/Map;)V

    :cond_0
    return-void
.end method
