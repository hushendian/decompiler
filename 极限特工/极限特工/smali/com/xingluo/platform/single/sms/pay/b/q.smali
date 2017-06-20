.class Lcom/xingluo/platform/single/sms/pay/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/sms/d/a$a;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/l;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->j(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->q(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    const-string v2, "orderid"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->c(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V

    new-instance v1, Lorg/json/JSONArray;

    const-string v2, "actions"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_0
    if-lt v0, v2, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trade_id:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->n(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->n(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->o(Lcom/xingluo/platform/single/sms/pay/b/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_2
    return-void

    :cond_0
    :try_start_1
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    const-string v5, "act"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;I)V

    new-instance v4, Lorg/json/JSONObject;

    const-string v5, "info"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    const-string v6, "trade_id"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/xingluo/platform/single/sms/pay/b/l;->d(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    new-instance v5, Ljava/lang/String;

    const-string v6, "regular"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-static {v3, v6}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/sms/pay/b/l;->e(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->j(Lcom/xingluo/platform/single/sms/pay/b/l;)I

    move-result v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/q;->a:Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->p(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V

    goto :goto_2
.end method
