.class public Lcom/xingluo/platform/single/sms/b/a;
.super Lcom/xingluo/platform/single/json/AbstractJsonBuilder;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/b/a;->a:Ljava/lang/String;

    iput p2, p0, Lcom/xingluo/platform/single/sms/b/a;->b:I

    return-void
.end method

.method public buildJsonString(Lorg/json/JSONObject;)V
    .locals 2

    :try_start_0
    const-string v0, "version"

    const-string v1, "2.0.0"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tag"

    const/16 v1, 0x91

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "operator"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/b/a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "checkId"

    iget v1, p0, Lcom/xingluo/platform/single/sms/b/a;->b:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "location"

    sget-object v1, Lcom/xingluo/platform/single/util/a;->mM:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
