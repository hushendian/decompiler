.class public Lcom/xingluo/platform/single/net/a/a;
.super Ljava/lang/Object;


# static fields
.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;


# instance fields
.field protected mAccepTime:Ljava/lang/String;

.field protected mErrorCode:I

.field protected mErrorString:Ljava/lang/String;

.field protected mTag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "errorcode"

    sput-object v0, Lcom/xingluo/platform/single/net/a/a;->b:Ljava/lang/String;

    const-string v0, "tag"

    sput-object v0, Lcom/xingluo/platform/single/net/a/a;->c:Ljava/lang/String;

    const-string v0, "errormsg"

    sput-object v0, Lcom/xingluo/platform/single/net/a/a;->d:Ljava/lang/String;

    const-string v0, "accept_time"

    sput-object v0, Lcom/xingluo/platform/single/net/a/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorCode:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/net/a/a;->mTag:I

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorString:Ljava/lang/String;

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/net/a/a;->mAccepTime:Ljava/lang/String;

    return-void
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorCode:I

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorString:Ljava/lang/String;

    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/net/a/a;->mAccepTime:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/net/a/a;->mTag:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BaseResult [mErrorCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mErrorString="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/net/a/a;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAccepTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/net/a/a;->mAccepTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/xingluo/platform/single/net/a/a;->mTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
