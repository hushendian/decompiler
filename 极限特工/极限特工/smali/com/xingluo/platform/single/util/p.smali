.class Lcom/xingluo/platform/single/util/p;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xingluo/platform/single/util/PayOrderChannel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/single/util/PayOrderChannel;Lcom/xingluo/platform/single/util/PayOrderChannel;)I
    .locals 2

    iget v0, p1, Lcom/xingluo/platform/single/util/PayOrderChannel;->defaultPayOrder:I

    iget v1, p2, Lcom/xingluo/platform/single/util/PayOrderChannel;->defaultPayOrder:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xingluo/platform/single/util/PayOrderChannel;

    check-cast p2, Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/util/p;->a(Lcom/xingluo/platform/single/util/PayOrderChannel;Lcom/xingluo/platform/single/util/PayOrderChannel;)I

    move-result v0

    return v0
.end method
