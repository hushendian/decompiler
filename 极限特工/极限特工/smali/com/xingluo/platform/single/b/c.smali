.class Lcom/xingluo/platform/single/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/xingluo/platform/single/pay/data/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/b/b;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/b/c;->a:Lcom/xingluo/platform/single/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/xingluo/platform/single/pay/data/a;Lcom/xingluo/platform/single/pay/data/a;)I
    .locals 2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/a;->i()I

    move-result v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/a;->i()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/xingluo/platform/single/pay/data/a;

    check-cast p2, Lcom/xingluo/platform/single/pay/data/a;

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/b/c;->a(Lcom/xingluo/platform/single/pay/data/a;Lcom/xingluo/platform/single/pay/data/a;)I

    move-result v0

    return v0
.end method
