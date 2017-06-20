.class public Lcom/xingluo/platform/single/sdk/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;
.implements Lcom/xingluo/platform/single/sdk/d/a;


# static fields
.field private static a:Lcom/xingluo/platform/single/sdk/d/b;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

.field private e:Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;

.field private f:Landroid/content/Context;

.field private g:Lcom/xingluo/platform/single/util/t;

.field private h:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->f:Landroid/content/Context;

    const-class v0, Lcom/xingluo/platform/single/sdk/d/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/single/sdk/d/b;
    .locals 2

    const-class v1, Lcom/xingluo/platform/single/sdk/d/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/d/b;->a:Lcom/xingluo/platform/single/sdk/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sdk/d/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/d/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sdk/d/b;->a:Lcom/xingluo/platform/single/sdk/d/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sdk/d/b;->a:Lcom/xingluo/platform/single/sdk/d/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private b(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--------------------initMM "

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/sdk/c/d;->a()Lcom/xingluo/platform/single/sdk/c/d;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->f:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getMMkey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xingluo/platform/single/sdk/c/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "initGBSDK "

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "megjb"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/xingluo/platform/single/sdk/c/f;->a()Lcom/xingluo/platform/single/sdk/c/f;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->f:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sdk/c/f;->a(Landroid/app/Activity;)V

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getGameName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCpServerNum()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sdk/c/f;->a([Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    const/16 v2, 0x90

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "---SDK--initDataFromServer"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/d/b;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->g:Lcom/xingluo/platform/single/util/t;

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/d/b;->b:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xingluo/platform/single/sdk/d/b;->c:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/xingluo/platform/single/json/a;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "request data"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/pay"

    invoke-static {}, Lcom/xingluo/platform/single/sdk/a/b;->a()Lcom/xingluo/platform/single/sdk/a/c;

    move-result-object v5

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    return-void
.end method

.method public a(Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/d/b;->e:Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/d/b;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/sdk/d/b;->c:Ljava/lang/String;

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMMdata()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "tag 144 request failure and china mobile mm is init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/sdk/d/b;->b(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isGBData()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "tag 144 request failure and china mobile gameBase is init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/sdk/d/b;->c(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "tag 144 request failure , china mobile mm and gameBase both nil~~~~~~~~~~"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

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
    .locals 7

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->h:Lcom/xingluo/platform/single/util/i;

    const-string v1, "----144 onNetResponse"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const/16 v0, 0x90

    if-ne p1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/xingluo/platform/single/sdk/b/a;

    if-eqz v0, :cond_5

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/a;->o()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/xingluo/platform/single/sdk/b/a;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMMdata()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-direct {p0, v1}, Lcom/xingluo/platform/single/sdk/d/b;->b(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isGBData()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->d:Lcom/xingluo/platform/single/pay/data/XLAllParams;

    invoke-direct {p0, v1}, Lcom/xingluo/platform/single/sdk/d/b;->c(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    :cond_1
    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/d/b;->g:Lcom/xingluo/platform/single/util/t;

    const-string v2, "xl_sequence_of_mobile_billing"

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/b/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->e:Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;

    invoke-interface {v0}, Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;->onComplete()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "dmax"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    const-string v6, "_dmax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xingluo/platform/single/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/d/b;->g:Lcom/xingluo/platform/single/util/t;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v2, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/Integer;)Z

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/d/b;->g:Lcom/xingluo/platform/single/util/t;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "_support"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v2, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/Integer;)Z

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/xingluo/platform/single/sdk/d/b;->b()V

    goto :goto_1
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 1

    const/16 v0, 0x90

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sdk/d/b;->b()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/d/b;->e:Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;

    invoke-interface {v0}, Lcom/xingluo/platform/single/sdk/callback/XLRecommendInitCallBack;->onComplete()V

    :cond_0
    return-void
.end method
