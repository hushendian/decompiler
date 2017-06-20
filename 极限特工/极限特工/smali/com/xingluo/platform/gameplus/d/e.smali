.class public Lcom/xingluo/platform/gameplus/d/e;
.super Lcom/xingluo/platform/single/json/AbstractJsonBuilder;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xingluo/platform/gameplus/d/e;->a:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/gameplus/d/e;->a:I

    return-void
.end method

.method public buildJsonString(Lorg/json/JSONObject;)V
    .locals 2

    const-string v0, "tag"

    const-string v1, "101"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "statistics_id"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "statistics_value"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "statistics_desc"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "stat_type"

    iget v1, p0, Lcom/xingluo/platform/gameplus/d/e;->a:I

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-void
.end method
