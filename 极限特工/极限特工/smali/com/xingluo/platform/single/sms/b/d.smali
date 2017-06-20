.class public Lcom/xingluo/platform/single/sms/b/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/xingluo/platform/single/sms/b/d;


# instance fields
.field private b:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/b/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/b/d;->b:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public static a()Lcom/xingluo/platform/single/sms/b/d;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sms/b/d;->a:Lcom/xingluo/platform/single/sms/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/b/d;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/b/d;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sms/b/d;->a:Lcom/xingluo/platform/single/sms/b/d;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/b/d;->a:Lcom/xingluo/platform/single/sms/b/d;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xingluo/platform/single/net/a/a;
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/b/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "145:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/sms/d/a/b;

    invoke-direct {v1, v0}, Lcom/xingluo/platform/single/sms/d/a/b;-><init>(Lorg/json/JSONObject;)V

    const-string v2, "errorcode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/sms/d/a/b;->f(I)V

    const-string v2, "errormsg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sms/d/a/b;->k(Ljava/lang/String;)V

    return-object v1
.end method
