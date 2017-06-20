.class public Lcom/xingluo/platform/single/e/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/e/a;
.implements Lcom/xingluo/platform/single/net/INetListener;


# static fields
.field private static b:Lcom/xingluo/platform/single/e/b;


# instance fields
.field private a:Lcom/xingluo/platform/single/util/i;

.field private c:Landroid/content/Context;

.field private d:Lcom/xingluo/platform/single/util/t;

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/e/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/b;->a:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/b;->c:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized a()Lcom/xingluo/platform/single/e/b;
    .locals 2

    const-class v1, Lcom/xingluo/platform/single/e/b;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/xingluo/platform/single/e/b;->b:Lcom/xingluo/platform/single/e/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/e/b;

    invoke-direct {v0}, Lcom/xingluo/platform/single/e/b;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/e/b;->b:Lcom/xingluo/platform/single/e/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/e/b;->b:Lcom/xingluo/platform/single/e/b;
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

    iput-object p1, p0, Lcom/xingluo/platform/single/e/b;->c:Landroid/content/Context;

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/e/b;->d:Lcom/xingluo/platform/single/util/t;

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-static {p1}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/e/b;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tag 145 operator = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v1

    const-string v2, "paychannel_configuration_version"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/t;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/xingluo/platform/single/e/b;->e:I

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v1

    iget v2, p0, Lcom/xingluo/platform/single/e/b;->e:I

    invoke-virtual {v1, v0, v2}, Lcom/xingluo/platform/single/json/a;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/pay"

    const/16 v2, 0x91

    const/4 v5, 0x0

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/e/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/b;

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

    const/16 v0, 0x91

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/xingluo/platform/single/net/a/f;

    iget-object v0, p0, Lcom/xingluo/platform/single/e/b;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/b;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/f;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/f;->b()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/b/b;->a(Ljava/util/List;I)V

    :cond_0
    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/e/b;->a:Lcom/xingluo/platform/single/util/i;

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

    return-void
.end method
