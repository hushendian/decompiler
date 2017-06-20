.class public Lcom/xingluo/platform/single/pay/d;
.super Lcom/xingluo/platform/single/pay/b;

# interfaces
.implements Lcom/xingluo/platform/single/pay/listener/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/pay/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/pay/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/pay/d$a;->a:Lcom/xingluo/platform/single/pay/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xingluo/platform/single/pay/PayParameter;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->b:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/EventType;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->d:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v3

    invoke-virtual {v3, v0, v2, v1}, Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;->updateView(Lcom/xingluo/platform/single/pay/EventType;Ljava/lang/Object;I)V

    return-void
.end method

.method public b()Lcom/xingluo/platform/single/pay/b;
    .locals 0

    return-object p0
.end method
