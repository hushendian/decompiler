.class public Lcom/xingluo/platform/single/sms/XLSingleSMSPay;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

.field private static logger:Lcom/xingluo/platform/single/util/i;


# instance fields
.field private activity:Landroid/app/Activity;

.field private callBack:Lcom/xingluo/platform/single/callback/IXLSDKCallBack;

.field private channelNeedPhone:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private hasSend:Z

.field private verifyList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/xingluo/platform/single/sms/a/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    sput-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->channelNeedPhone:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->hasSend:Z

    return-void
.end method

.method public static getInstance()Lcom/xingluo/platform/single/sms/XLSingleSMSPay;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->instance:Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

    if-nez v0, :cond_0

    new-instance v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;-><init>()V

    sput-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->instance:Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->instance:Lcom/xingluo/platform/single/sms/XLSingleSMSPay;

    return-object v0
.end method


# virtual methods
.method public addVerifyObject(Ljava/lang/String;Lcom/xingluo/platform/single/sms/a/a;)V
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public doGostPay(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/xingluo/platform/single/item/XLPropsChannelInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v2, "xl_extra_gostMoney"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "channelList is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->hasSend:Z

    if-nez v4, :cond_4

    iput-boolean v8, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->hasSend:Z

    new-instance v4, Lcom/xingluo/platform/single/item/GamePropsInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->b()Ljava/lang/String;

    move-result-object v0

    const-string v5, ""

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "HD"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    invoke-static {v7}, Lcom/xingluo/platform/single/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v0, v2, v5, v6}, Lcom/xingluo/platform/single/item/GamePropsInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v5, "HD start"

    invoke-virtual {v0, v5}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/sms/service/b;->a()Lcom/xingluo/platform/single/sms/service/b;

    move-result-object v0

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v5, v4}, Lcom/xingluo/platform/single/sms/service/b;->b(Landroid/content/Context;Lcom/xingluo/platform/single/item/GamePropsInfo;)V

    goto :goto_1

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    if-eqz v1, :cond_3

    sget-boolean v4, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->mdohd:Z

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->hasSend:Z

    if-nez v4, :cond_3

    iput-boolean v8, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->hasSend:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->mdohd:Z

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/a;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->e()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/xingluo/platform/single/sms/pay/b/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;)V

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sms/pay/b/a;->start()V

    goto/16 :goto_0
.end method

.method public getChannelNeedPhone()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->channelNeedPhone:Ljava/util/HashMap;

    return-object v0
.end method

.method public getVerifyObject(Ljava/lang/String;)Lcom/xingluo/platform/single/sms/a/a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->verifyList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/sms/a/a;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init(Landroid/app/Activity;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init pay sms start..."

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/xingluo/platform/single/sms/service/XLGhostService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "init pay sms end!"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method public initPaychannle(Landroid/app/Activity;)V
    .locals 1

    invoke-static {}, Lcom/xingluo/platform/single/sms/service/a;->a()Lcom/xingluo/platform/single/sms/service/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xingluo/platform/single/sms/service/a;->a(Landroid/content/Context;)V

    return-void
.end method

.method public pay(Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;Lcom/xingluo/platform/single/pay/ViewType;Lcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/order/Order;Landroid/view/ViewGroup;Lcom/xingluo/platform/single/callback/IXLSDKCallBack;)V
    .locals 2

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "SMS pay start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-nez p7, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "Payment callback can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->logger:Lcom/xingluo/platform/single/util/i;

    const-string v1, "GamePropsInfo can not be null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, p3, v1, p5}, Lcom/xingluo/platform/single/sms/e/a;->a(Landroid/content/Context;ZLcom/xingluo/platform/single/item/GamePropsInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;Lcom/xingluo/platform/single/order/Order;)Lcom/xingluo/platform/single/sms/e/a;

    move-result-object v0

    invoke-virtual {v0, p6, p4, p2}, Lcom/xingluo/platform/single/sms/e/a;->a(Landroid/view/ViewGroup;Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0
.end method

.method public saveReply(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->activity:Landroid/app/Activity;

    const-string v1, "gost"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "replys"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setChannelNeedPhone(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/XLSingleSMSPay;->channelNeedPhone:Ljava/util/HashMap;

    return-void
.end method
