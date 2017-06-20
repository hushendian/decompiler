.class public Lcom/xingluo/platform/single/pay/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/xingluo/platform/single/util/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/pay/c;->a:Lcom/xingluo/platform/single/util/i;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/b;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-lt v2, v4, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/a;->h()I

    move-result v0

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;)V

    return-object p1

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->o:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {p1, p3}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_TC:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->p:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {p1, p3}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {p1, p3}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 1

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    return-object p1
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;)Z
    .locals 8

    const/4 v2, 0x0

    if-eqz p6, :cond_0

    invoke-static {p2}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v4

    const-string v0, "xl_sequence_of_mobile_billing"

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/pay/c;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checkAvaliableChannelFromCpParam   sequence ="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :goto_0
    move v1, v2

    :goto_1
    array-length v3, v0

    if-lt v1, v3, :cond_3

    :cond_0
    :goto_2
    return v2

    :cond_1
    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->MNC:Lcom/xingluo/platform/single/util/MNCType;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/PayOrderChannel;->getDefaultPayChannels(Lcom/xingluo/platform/single/util/MNCType;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v1, v2

    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/c;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "avaliableCpParam  ="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v3, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_3
    aget-object v3, v0, v1

    invoke-virtual {p6}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getParamsType()Ljava/util/Collection;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelCanUse(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {p5, v3}, Lcom/xingluo/platform/single/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xingluo/platform/single/util/t;->c(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, v3, v5, p3, p5}, Lcom/xingluo/platform/single/pay/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-direct {p0, p1, v3, p4, p6}, Lcom/xingluo/platform/single/pay/c;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;)Z

    move-result v2

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;Lcom/xingluo/platform/single/pay/data/XLAllParams;)Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->k:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    :goto_0
    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->l:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p4}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isMdoData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->m:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    invoke-virtual {p1, p2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->n:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {p1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    const/4 v3, 0x1

    const/4 v6, -0x1

    const/16 v0, 0xc8

    const/16 v1, 0x64

    const/4 v2, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v4

    invoke-static {p4, p1}, Lcom/xingluo/platform/single/util/y;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v6}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v6, :cond_b

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getMoblieNum()[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v3

    sget-object v5, Lcom/xingluo/platform/single/util/MNCType;->a:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v5, v5, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    sget-object v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MM:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v4, v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_0
    :goto_0
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_TC:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, p2

    :cond_2
    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/xingluo/platform/single/util/q;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v4

    invoke-virtual {v4, v1, v5, p1, p4}, Lcom/xingluo/platform/single/b/a;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    invoke-static {p3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    int-to-double v8, v0

    cmpg-double v1, v4, v8

    if-gez v1, :cond_3

    add-double/2addr v4, v6

    int-to-double v0, v0

    cmpg-double v0, v4, v0

    if-lez v0, :cond_a

    :cond_3
    move v0, v3

    :goto_1
    return v0

    :cond_4
    sget-object v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GB_SDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v4, v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    invoke-virtual {v4, p1}, Lcom/xingluo/platform/single/util/PayOrderChannel;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    move v0, v1

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->b:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_UNICOM_WOSTORESDK:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    sget-object v0, Lcom/xingluo/platform/single/util/MNCType;->c:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_EGAME:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x3e8

    goto/16 :goto_0

    :cond_8
    move v0, v1

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :cond_a
    move v0, v2

    goto :goto_1

    :cond_b
    move v0, p2

    goto/16 :goto_0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 8

    const/4 v0, 0x0

    new-instance v3, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-direct {v3}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;-><init>()V

    invoke-static {p1}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/b;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xingluo/platform/single/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    move v1, v0

    :goto_0
    if-lt v2, v5, :cond_1

    :cond_0
    invoke-direct {p0, v3, p2}, Lcom/xingluo/platform/single/pay/c;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/a;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/a;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v7, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    sget-object v7, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    move v0, v1

    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/a;->h()I

    move-result v0

    invoke-direct {p0, v6, v0, p2, p3}, Lcom/xingluo/platform/single/pay/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/a;

    iget-object v0, v0, Lcom/xingluo/platform/single/pay/data/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    if-eqz v0, :cond_5

    invoke-direct {p0, v3, v0, v6}, Lcom/xingluo/platform/single/pay/c;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    goto :goto_1

    :cond_3
    if-nez v1, :cond_4

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/a;->h()I

    move-result v0

    invoke-direct {p0, v6, v0, p2, p3}, Lcom/xingluo/platform/single/pay/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/a;

    iget-object v0, v0, Lcom/xingluo/platform/single/pay/data/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    if-eqz v0, :cond_5

    invoke-direct {p0, v3, v0, v6}, Lcom/xingluo/platform/single/pay/c;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/b/d;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/b/d;->e()Lcom/xingluo/platform/single/pay/data/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/xingluo/platform/single/pay/data/a;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 8

    const/4 v7, 0x0

    new-instance v1, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-direct {v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;-><init>()V

    invoke-static {p1}, Lcom/xingluo/platform/single/b/i;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/i;

    move-result-object v0

    invoke-static {p1}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p2, p3, v2}, Lcom/xingluo/platform/single/b/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    move-result-object v4

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/c;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "channelInfo ..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xingluo/platform/single/util/c;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/xingluo/platform/single/pay/c;->a(Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;Landroid/content/Context;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;Ljava/lang/String;Lcom/xingluo/platform/single/pay/data/XLAllParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/pay/c;->a:Lcom/xingluo/platform/single/util/i;

    const-string v2, "checkAvaliableChannelFromCpParam is use"

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    :goto_0
    return-object v1

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, ""

    invoke-direct {p0, p1, p3, v0, v7}, Lcom/xingluo/platform/single/pay/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    goto :goto_0

    :cond_1
    if-eqz v4, :cond_b

    const-string v0, ""

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_2
    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    sget-object v2, Lcom/xingluo/platform/single/util/MNCType;->d:Lcom/xingluo/platform/single/util/MNCType;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/MNCType;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const-string v0, ""

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {v1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    invoke-direct {p0, p3}, Lcom/xingluo/platform/single/pay/c;->b(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, p1, p3, v5, v7}, Lcom/xingluo/platform/single/pay/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p3, v5, v0}, Lcom/xingluo/platform/single/pay/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/xingluo/platform/single/pay/c;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_a

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_WOSTORE:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    sget-object v0, Lcom/xingluo/platform/single/pay/ViewType;->d:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_WOSTORE:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    :goto_1
    new-instance v0, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p3, v2, v3, v4}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;)V

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_LL:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    :cond_7
    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->o:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_TC:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->p:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    sget-object v2, Lcom/xingluo/platform/single/pay/ViewType;->c:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_a
    invoke-direct {p0, p1, p3, v5, v0}, Lcom/xingluo/platform/single/pay/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    goto/16 :goto_0

    :cond_b
    const-string v0, ""

    invoke-direct {p0, p1, p3, v0, v7}, Lcom/xingluo/platform/single/pay/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v1

    invoke-virtual {v1, p4}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;
    .locals 2

    new-instance v0, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    invoke-direct {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Ljava/lang/String;)V

    sget-object v1, Lcom/xingluo/platform/single/pay/ViewType;->f:Lcom/xingluo/platform/single/pay/ViewType;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Lcom/xingluo/platform/single/pay/ViewType;)V

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/pay/c;->b(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->a(Z)V

    return-object v0
.end method
