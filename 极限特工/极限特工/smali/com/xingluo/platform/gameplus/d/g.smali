.class public Lcom/xingluo/platform/gameplus/d/g;
.super Lcom/xingluo/platform/single/json/AbstractJsonBuilder;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/json/AbstractJsonBuilder;-><init>(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public buildJsonString(Lorg/json/JSONObject;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    sget v2, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SCREEN_ORIENT:I

    if-ne v2, v0, :cond_0

    :goto_0
    const-string v1, "screen_orientation"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "packageName_list"

    new-instance v1, Lorg/json/JSONArray;

    invoke-static {}, Lcom/xingluo/platform/single/json/a;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/json/a;->c()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "tag"

    const-string v1, "45"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
