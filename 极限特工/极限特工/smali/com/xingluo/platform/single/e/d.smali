.class public Lcom/xingluo/platform/single/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/e/a;
.implements Lcom/xingluo/platform/single/net/INetListener;


# static fields
.field private static a:Lcom/xingluo/platform/single/e/d;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/xingluo/platform/single/util/t;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/d;->b:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/single/e/d;
    .locals 2

    const-class v1, Lcom/xingluo/platform/single/e/d;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/e/d;->a:Lcom/xingluo/platform/single/e/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/e/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/e/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/e/d;->a:Lcom/xingluo/platform/single/e/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/e/d;->a:Lcom/xingluo/platform/single/e/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 6

    const/16 v2, 0x8d

    iput-object p1, p0, Lcom/xingluo/platform/single/e/d;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/d;->e:Lcom/xingluo/platform/single/util/t;

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/xingluo/platform/single/e/d;->c:Ljava/lang/String;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/xingluo/platform/single/e/d;->d:Ljava/lang/String;

    aput-object v4, v1, v3

    invoke-virtual {v0, v2, v1}, Lcom/xingluo/platform/single/json/a;->a(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/pay"

    const/4 v5, 0x0

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/e/d;->c:Ljava/lang/String;

    iput-object p2, p0, Lcom/xingluo/platform/single/e/d;->d:Ljava/lang/String;

    return-void
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
    .locals 8

    const/4 v7, 0x1

    const/16 v0, 0x8d

    if-ne p1, v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/xingluo/platform/single/net/a/e;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/a;->o()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xingluo/platform/single/e/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, v0, Lcom/xingluo/platform/single/net/a/e;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xingluo/platform/single/e/d;->e:Lcom/xingluo/platform/single/util/t;

    const-string v2, "xl_sequence_of_mobile_billing"

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/xingluo/platform/single/net/a/e;->a:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xingluo/platform/single/net/a/e;->a:Ljava/util/Map;

    const-string v2, "mdo"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/xingluo/platform/single/net/a/e;->a:Ljava/util/Map;

    const-string v2, "mdo"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v7, :cond_0

    sput-boolean v7, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->mdohd:Z

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/e/d;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "xl_extra_gostswitch"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/e;->a()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_1

    sput-boolean v7, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->HD:Z

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->setChannels(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->setChannelsExt(Ljava/util/ArrayList;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/e/d;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/xingluo/platform/single/b/i;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/i;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xingluo/platform/single/b/i;->a(Ljava/util/List;)V

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->PAY_SMS_SUPPORT:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->doGostHDAndMDOPay(Ljava/util/ArrayList;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v5, "dmax"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    const-string v6, "_dmax"

    invoke-virtual {v2, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xingluo/platform/single/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/xingluo/platform/single/e/d;->e:Lcom/xingluo/platform/single/util/t;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v5, v2, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/Integer;)Z

    goto/16 :goto_0

    :cond_3
    iget-object v5, p0, Lcom/xingluo/platform/single/e/d;->e:Lcom/xingluo/platform/single/util/t;

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

    goto/16 :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method
