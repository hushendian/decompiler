.class Lcom/xingluo/platform/single/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/d/c;

.field private final synthetic b:Lcom/xingluo/platform/single/d/c$a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/d/c;Lcom/xingluo/platform/single/d/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/d/d;->a:Lcom/xingluo/platform/single/d/c;

    iput-object p2, p0, Lcom/xingluo/platform/single/d/d;->b:Lcom/xingluo/platform/single/d/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 1

    check-cast p2, Lcom/xingluo/platform/single/net/a/d;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/d;->a()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/util/a;->mM:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/d/d;->b:Lcom/xingluo/platform/single/d/c$a;

    invoke-interface {v0}, Lcom/xingluo/platform/single/d/c$a;->a()V

    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/d/d;->b:Lcom/xingluo/platform/single/d/c$a;

    invoke-interface {v0}, Lcom/xingluo/platform/single/d/c$a;->a()V

    return-void
.end method
