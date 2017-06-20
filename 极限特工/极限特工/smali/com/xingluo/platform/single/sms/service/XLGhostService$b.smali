.class Lcom/xingluo/platform/single/sms/service/XLGhostService$b;
.super Landroid/database/ContentObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xingluo/platform/single/sms/service/XLGhostService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/service/XLGhostService;


# direct methods
.method public constructor <init>(Lcom/xingluo/platform/single/sms/service/XLGhostService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    # getter for: Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->access$0(Lcom/xingluo/platform/single/sms/service/XLGhostService;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    const-string v1, "service\u76d1\u542c\u5230\u77ed\u4fe1\u6570\u636e\u5e93\u53d8\u5316"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    const-string v1, "gost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    const-string v1, "replys"

    const-string v3, ""

    invoke-interface {v2, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/xingluo/platform/single/sms/service/XLGhostService;->getReplys(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->access$1(Lcom/xingluo/platform/single/sms/service/XLGhostService;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    const-string v3, "gost"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v2

    iput-object v2, v0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    # invokes: Lcom/xingluo/platform/single/sms/service/XLGhostService;->parseGost(Lorg/json/JSONObject;)Lcom/xingluo/platform/single/net/a/c;
    invoke-static {v2, v1}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->access$2(Lcom/xingluo/platform/single/sms/service/XLGhostService;Lorg/json/JSONObject;)Lcom/xingluo/platform/single/net/a/c;

    move-result-object v1

    iput-object v1, v0, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    # getter for: Lcom/xingluo/platform/single/sms/service/XLGhostService;->mLogger:Lcom/xingluo/platform/single/util/i;
    invoke-static {v0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->access$0(Lcom/xingluo/platform/single/sms/service/XLGhostService;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    iget-object v1, v1, Lcom/xingluo/platform/single/sms/service/XLGhostService;->gost:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/net/a/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-eqz v0, :cond_1

    :goto_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/service/XLGhostService$b;->a:Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/service/XLGhostService;->deleteReplySMS()V

    goto :goto_2
.end method
