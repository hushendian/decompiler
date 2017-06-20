.class Lcom/xingluo/platform/single/platform/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/single/update/listener/CheckUpdateListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/platform/a;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/platform/a;->a:Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    # getter for: Lcom/xingluo/platform/single/platform/XLSinglePlatform;->logger:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->access$0(Lcom/xingluo/platform/single/platform/XLSinglePlatform;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "SDK Update resultCode"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    return-void
.end method
