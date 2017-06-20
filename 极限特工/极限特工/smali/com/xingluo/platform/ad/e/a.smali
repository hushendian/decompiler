.class public Lcom/xingluo/platform/ad/e/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/e/a;
.implements Lcom/xingluo/platform/single/net/INetListener;


# static fields
.field private static a:Lcom/xingluo/platform/ad/e/a;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/xingluo/platform/single/util/i;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/ad/e/a;->b:Landroid/content/Context;

    const-class v0, Lcom/xingluo/platform/ad/e/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/ad/e/a;
    .locals 2

    const-class v1, Lcom/xingluo/platform/ad/e/a;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/ad/e/a;->a:Lcom/xingluo/platform/ad/e/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/ad/e/a;

    invoke-direct {v0}, Lcom/xingluo/platform/ad/e/a;-><init>()V

    sput-object v0, Lcom/xingluo/platform/ad/e/a;->a:Lcom/xingluo/platform/ad/e/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/ad/e/a;->a:Lcom/xingluo/platform/ad/e/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/e/a;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/ad/e/a;Lcom/xingluo/platform/single/item/LogoInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/ad/e/a;->a(Lcom/xingluo/platform/single/item/LogoInfo;)V

    return-void
.end method

.method private a(Lcom/xingluo/platform/single/item/LogoInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "saveLogo logoinfo = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/LogoInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/LogoInfo;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveLogo idinfile = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/LogoInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->i:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/LogoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->i:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/item/LogoInfo;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/xingluo/platform/ad/e/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/a;->a()Lcom/xingluo/platform/gameplus/d/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/gameplus/d/d;->a()Lcom/xingluo/platform/gameplus/d/g;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/gameplus/d/h;->a()Lcom/xingluo/platform/gameplus/d/i;

    move-result-object v2

    invoke-interface {v0, v1, p0, v2}, Lcom/xingluo/platform/single/net/f;->a(Lcom/xingluo/platform/single/json/AbstractJsonBuilder;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method

.method public b(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/xingluo/platform/ad/e/a;->b:Landroid/content/Context;

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/ad/e/a;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/xingluo/platform/ad/e/b;

    invoke-direct {v0, p0, p1}, Lcom/xingluo/platform/ad/e/b;-><init>(Lcom/xingluo/platform/ad/e/a;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/ad/e/b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 3

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->o()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, "------- error code is dc ok"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/util/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->j:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_recommendgamedata_limit"

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p2}, Lcom/xingluo/platform/ad/net/response/CrossRecommendResult;->a()Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->getInstance()Lcom/xingluo/platform/ad/XLADSinglePlatform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/ad/XLADSinglePlatform;->setCrossRecommendData(Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/xingluo/platform/ad/e/c;

    invoke-direct {v2, p0, v0}, Lcom/xingluo/platform/ad/e/c;-><init>(Lcom/xingluo/platform/ad/e/a;Lcom/xingluo/platform/ad/pojos/XLCrossRecommendData;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, "suspension window is show"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, "-------find XLCrossRecommendData is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    const-string v1, "----error code is not ok"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/ad/e/a;->c:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onNetResponseErr  errorCode = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/ad/e/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "xl_recommendgamedata_limit"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/util/y;->d:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/util/y;->j:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
