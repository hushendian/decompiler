.class public Lcom/xingluo/platform/single/third/b/d;
.super Lcom/xingluo/platform/single/json/AbstractJsonBuilder;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/third/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public buildJsonString(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "wxPayInfo"

    iget-object v1, p0, Lcom/xingluo/platform/single/third/b/d;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tag"

    const/16 v1, 0x95

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method
