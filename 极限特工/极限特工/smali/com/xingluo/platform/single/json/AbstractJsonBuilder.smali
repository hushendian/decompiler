.class public abstract Lcom/xingluo/platform/single/json/AbstractJsonBuilder;
.super Ljava/lang/Object;


# instance fields
.field private jsonObject:Lorg/json/JSONObject;

.field private requestTag:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/json/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->jsonObject:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->url:Ljava/lang/String;

    iput p2, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->requestTag:I

    return-void
.end method


# virtual methods
.method public buildJson()Ljava/lang/String;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->buildJsonString(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public abstract buildJsonString(Lorg/json/JSONObject;)V
.end method

.method public getRequestTag()I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->requestTag:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;->url:Ljava/lang/String;

    return-object v0
.end method
