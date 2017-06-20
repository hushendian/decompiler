.class public Lcom/xingluo/platform/gameplus/d/f;
.super Lcom/xingluo/platform/single/json/AbstractJsonBuilder;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/d/f;->a:I

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/d/f;->b:I

    return-void
.end method

.method public buildJsonString(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "tag"

    const-string v1, "46"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "moretype"

    iget v1, p0, Lcom/xingluo/platform/gameplus/d/f;->a:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "page"

    iget v1, p0, Lcom/xingluo/platform/gameplus/d/f;->b:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "datacount"

    iget v1, p0, Lcom/xingluo/platform/gameplus/d/f;->c:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "packageName_list"

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/json/a;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/d/f;->c:I

    return-void
.end method
