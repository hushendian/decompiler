.class public Lcom/xingluo/platform/single/sms/d/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;
.implements Lcom/xingluo/platform/single/sms/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/d/a$a;
    }
.end annotation


# static fields
.field public static a:Ljava/lang/String; = null

.field public static final b:Ljava/lang/String; = "/createorder"

.field public static final c:Ljava/lang/String; = "/commitverify"

.field public static final d:Ljava/lang/String; = "/payfinished"

.field public static final e:I = 0x0

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static h:I

.field private static i:Landroid/content/Context;

.field private static k:Lcom/xingluo/platform/single/sms/d/a;


# instance fields
.field private j:Lcom/xingluo/platform/single/sms/d/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "http://xlsdk.sdk.sinraten.com/sdkServer/openapi/unionpay"

    sput-object v0, Lcom/xingluo/platform/single/sms/d/a;->a:Ljava/lang/String;

    sput-object v1, Lcom/xingluo/platform/single/sms/d/a;->i:Landroid/content/Context;

    const/4 v0, -0x1

    sput v0, Lcom/xingluo/platform/single/sms/d/a;->h:I

    sput-object v1, Lcom/xingluo/platform/single/sms/d/a;->k:Lcom/xingluo/platform/single/sms/d/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xingluo/platform/single/sms/d/a;->i:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/a;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sms/d/a;->k:Lcom/xingluo/platform/single/sms/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/d/a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/d/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/single/sms/d/a;->k:Lcom/xingluo/platform/single/sms/d/a;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/d/a;->k:Lcom/xingluo/platform/single/sms/d/a;

    return-object v0
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xingluo/platform/single/sms/d/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "/createorder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "/commitverify"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    const-string v1, "/payfinished"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/xingluo/platform/single/sms/d/a;->j:Lcom/xingluo/platform/single/sms/d/a$a;

    sput p1, Lcom/xingluo/platform/single/sms/d/a;->h:I

    invoke-virtual {p0, p1, p2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v5, Lcom/xingluo/platform/single/sms/b/b;

    invoke-direct {v5, p0}, Lcom/xingluo/platform/single/sms/b/b;-><init>(Lcom/xingluo/platform/single/sms/c/c;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    sget v2, Lcom/xingluo/platform/single/sms/d/a;->h:I

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/util/LinkedList;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    new-instance v5, Lorg/apache/http/message/BasicNameValuePair;

    invoke-direct {v5, v0, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILorg/json/JSONObject;Lcom/xingluo/platform/single/sms/d/a$a;)V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Lcom/xingluo/platform/single/sms/d/a$a;->a(Landroid/os/Bundle;)V

    return-void

    :pswitch_1
    const-string v1, "amount"

    const-string v2, "amount"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "orderid"

    const-string v2, "orderid"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "paychannel"

    const-string v2, "paychannel"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "actions"

    const-string v2, "actions"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "errcode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/xingluo/platform/single/sms/d/a;->h:I

    if-nez v1, :cond_0

    sget v1, Lcom/xingluo/platform/single/sms/d/a;->h:I

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/d/a;->j:Lcom/xingluo/platform/single/sms/d/a$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILorg/json/JSONObject;Lcom/xingluo/platform/single/sms/d/a$a;)V

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/xingluo/platform/single/sms/d/a;->h:I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/d/a;->j:Lcom/xingluo/platform/single/sms/d/a$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILorg/json/JSONObject;Lcom/xingluo/platform/single/sms/d/a$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/d/a;->j:Lcom/xingluo/platform/single/sms/d/a$a;

    sget v2, Lcom/xingluo/platform/single/sms/d/a;->h:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/xingluo/platform/single/sms/d/a;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":\u901a\u8baf\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xingluo/platform/single/sms/d/a$a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/xingluo/platform/single/sms/d/a;->j:Lcom/xingluo/platform/single/sms/d/a$a;

    sget v2, Lcom/xingluo/platform/single/sms/d/a;->h:I

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u8fd4\u56de\u9519\u8bef\u4fe1\u606f:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "err"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/xingluo/platform/single/sms/d/a$a;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

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
    .locals 0

    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method
