.class public Lcom/xingluo/platform/single/sms/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;
.implements Lcom/xingluo/platform/single/sms/c/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/d/b$a;
    }
.end annotation


# static fields
.field public static final a:I = 0x0

.field public static final b:I = 0x1

.field public static c:I = 0x0

.field private static d:Ljava/lang/String; = null

.field private static final e:Ljava/lang/String; = "/phone/getnumber.jsp"

.field private static final f:Ljava/lang/String; = "/phone/query.jsp"

.field private static g:Landroid/content/Context;

.field private static h:Lcom/xingluo/platform/single/sms/d/b;


# instance fields
.field private i:Lcom/xingluo/platform/single/sms/d/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, "http://xluser.sdk.sinraten.com/userServer"

    sput-object v0, Lcom/xingluo/platform/single/sms/d/b;->d:Ljava/lang/String;

    sput-object v1, Lcom/xingluo/platform/single/sms/d/b;->g:Landroid/content/Context;

    sput-object v1, Lcom/xingluo/platform/single/sms/d/b;->h:Lcom/xingluo/platform/single/sms/d/b;

    const/4 v0, -0x1

    sput v0, Lcom/xingluo/platform/single/sms/d/b;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/xingluo/platform/single/sms/d/b;->g:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/b;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sms/d/b;->h:Lcom/xingluo/platform/single/sms/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/d/b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/d/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xingluo/platform/single/sms/d/b;->h:Lcom/xingluo/platform/single/sms/d/b;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/d/b;->h:Lcom/xingluo/platform/single/sms/d/b;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xingluo/platform/single/sms/d/b;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v1, "/phone/getnumber.jsp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    const-string v1, "/phone/query.jsp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/b$a;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iput-object p3, p0, Lcom/xingluo/platform/single/sms/d/b;->i:Lcom/xingluo/platform/single/sms/d/b$a;

    sput p1, Lcom/xingluo/platform/single/sms/d/b;->c:I

    invoke-virtual {p0, p1}, Lcom/xingluo/platform/single/sms/d/b;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    new-instance v5, Lcom/xingluo/platform/single/sms/b/b;

    invoke-direct {v5, p0}, Lcom/xingluo/platform/single/sms/b/b;-><init>(Lcom/xingluo/platform/single/sms/c/c;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "code"

    const-string v4, "code"

    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    sget v2, Lcom/xingluo/platform/single/sms/d/b;->c:I

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/util/LinkedList;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(ILorg/json/JSONObject;Lcom/xingluo/platform/single/sms/d/b$a;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p3, v0}, Lcom/xingluo/platform/single/sms/d/b$a;->a(Landroid/os/Bundle;)V

    return-void

    :pswitch_0
    const-string v1, "res"

    const-string v2, "res"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "res"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v1, "key"

    const-string v2, "key"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "info"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "address"

    const-string v3, "number"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "context"

    const-string v3, "txt"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "res"

    const-string v2, "res"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "res"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_1

    const-string v1, "phone"

    const-string v2, "phone"

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "phone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/xingluo/platform/single/sms/d/b;->c:I

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/d/b;->i:Lcom/xingluo/platform/single/sms/d/b$a;

    invoke-virtual {p0, v1, v0, v2}, Lcom/xingluo/platform/single/sms/d/b;->a(ILorg/json/JSONObject;Lcom/xingluo/platform/single/sms/d/b$a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/d/b;->i:Lcom/xingluo/platform/single/sms/d/b$a;

    sget v2, Lcom/xingluo/platform/single/sms/d/b;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    sget v4, Lcom/xingluo/platform/single/sms/d/b;->c:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":\u901a\u8baf\u89e3\u6790\u5f02\u5e38"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/xingluo/platform/single/sms/d/b$a;->a(ILjava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

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
