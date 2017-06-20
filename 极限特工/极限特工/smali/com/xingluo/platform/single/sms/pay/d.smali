.class public Lcom/xingluo/platform/single/sms/pay/d;
.super Lcom/xingluo/platform/single/pay/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/pay/d$a;,
        Lcom/xingluo/platform/single/sms/pay/d$b;
    }
.end annotation


# instance fields
.field a:Lcom/xingluo/platform/single/net/a/c;

.field private b:Lcom/xingluo/platform/single/util/i;

.field private c:Landroid/content/Context;

.field private d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private e:Lcom/xingluo/platform/single/order/Order;

.field private f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

.field private g:Lcom/xingluo/platform/single/sms/pay/d$a;

.field private h:Lcom/xingluo/platform/single/sms/pay/d$b;

.field private i:Landroid/net/Uri;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/xingluo/platform/single/sms/pay/c;

.field private n:Ljava/lang/String;

.field private o:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->h:Lcom/xingluo/platform/single/sms/pay/d$b;

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->i:Landroid/net/Uri;

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->j:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->l:Z

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/e;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/e;-><init>(Lcom/xingluo/platform/single/sms/pay/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->o:Landroid/os/Handler;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->a:Lcom/xingluo/platform/single/net/a/c;

    return-void
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V
    .locals 5

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setSmsIsNetPay channel:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_LDYS:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->h:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->i:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->j:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->k:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    const-string v2, "CHANNEL_CM_LDYS start"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/a;

    invoke-direct {v1}, Lcom/xingluo/platform/single/sms/pay/a/a;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sms/pay/a/a;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_YFKJ:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->A:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->B:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->C:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->D:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/k;

    invoke-direct {v1}, Lcom/xingluo/platform/single/sms/pay/a/k;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sms/pay/a/k;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ct_zwly is == :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_ZWLY:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->A:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->B:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->C:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->D:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/l;

    invoke-direct {v1}, Lcom/xingluo/platform/single/sms/pay/a/l;-><init>()V

    invoke-virtual {v1, v0}, Lcom/xingluo/platform/single/sms/pay/a/l;->a(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getChannels()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "group start ="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move-object v1, v0

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_PAY_CHANNEL:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSmsIsNetPay channel:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setSmsIsNetPay group:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->R:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->S:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->T:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v2}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/xingluo/platform/single/pay/PayParameter;->U:Lcom/xingluo/platform/single/pay/PayParameter;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    const-string v2, "SMSUnifyPayment start"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/a/b;

    invoke-direct {v1, v0}, Lcom/xingluo/platform/single/sms/pay/a/b;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lcom/xingluo/platform/single/sms/pay/a/b;->a()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    goto/16 :goto_0

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->a()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {p0, v0, p1, p2}, Lcom/xingluo/platform/single/sms/pay/d;->a(Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V

    goto/16 :goto_0
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/d$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/d$a;-><init>(Lcom/xingluo/platform/single/sms/pay/d;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getChannelNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "QP"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x9

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lcom/xingluo/platform/single/util/u;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-direct {p0, v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/b/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/b/a;->a(Lcom/xingluo/platform/single/order/Order;)I

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getChannelNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->getDest()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-direct {p0, v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/d;->b()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/d;Lcom/xingluo/platform/single/sms/pay/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/d;->h:Lcom/xingluo/platform/single/sms/pay/d$b;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/d;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/sms/pay/d;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/d;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/d;->j:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 8

    const/high16 v7, 0x41200000    # 10.0f

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/sms/pay/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, ""

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_APEX:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GAMEBASE:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_SFYZ:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_TYRD:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    const-string v0, ","

    :goto_1
    const-string v1, ""

    const-string v2, ""

    const-string v1, ""

    const-string v3, ""

    const-string v4, ""

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v3, v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v6, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    :goto_2
    sget-object v6, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    sget-object v7, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    if-eqz v7, :cond_2

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    :cond_2
    iget-boolean v7, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    if-eqz v7, :cond_c

    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/xingluo/platform/single/sms/pay/d;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    goto/16 :goto_0

    :cond_3
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_SHENGFENG:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v7

    if-ltz v0, :cond_4

    const-string v0, ","

    goto :goto_1

    :cond_4
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_TCDC:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, ","

    goto/16 :goto_1

    :cond_5
    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_LT:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, ","

    goto/16 :goto_1

    :cond_6
    const-string v0, ","

    goto/16 :goto_1

    :cond_7
    sget-object v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_SHENGFENG:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v3, v3, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v6, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    cmpl-float v3, v3, v7

    if-ltz v3, :cond_8

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    sget-object v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CT_SFYZ:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v2, v2, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-static {v2}, Lcom/xingluo/platform/single/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2

    :cond_9
    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CU_TCDC:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_a
    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "0.01"

    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-object v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_GAMEBASE:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v1, v1, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    sget-object v6, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "test"

    goto/16 :goto_2

    :cond_b
    invoke-virtual {p3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    :cond_c
    invoke-virtual {v5, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_3
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/f;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xingluo/platform/single/sms/pay/f;-><init>(Lcom/xingluo/platform/single/sms/pay/d;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/sms/pay/d$a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 7

    const/4 v2, 0x0

    const/4 v6, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->g:Lcom/xingluo/platform/single/sms/pay/d$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->m:Lcom/xingluo/platform/single/sms/pay/c;

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/xingluo/platform/single/order/Order;->i:J

    sput-boolean v6, Lcom/xingluo/platform/single/order/Order;->j:Z

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v1, v6, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iput-boolean v6, p0, Lcom/xingluo/platform/single/sms/pay/d;->j:Z

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/g;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/g;-><init>(Lcom/xingluo/platform/single/sms/pay/d;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_1
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/d;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/sms/pay/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->m:Lcom/xingluo/platform/single/sms/pay/c;

    return-object v0
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    return v0
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/d;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->i:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sms/pay/d;)Lcom/xingluo/platform/single/sms/pay/d$b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->h:Lcom/xingluo/platform/single/sms/pay/d$b;

    return-object v0
.end method

.method static synthetic i(Lcom/xingluo/platform/single/sms/pay/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->l:Z

    return v0
.end method

.method static synthetic j(Lcom/xingluo/platform/single/sms/pay/d;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->j:Z

    return v0
.end method

.method static synthetic k(Lcom/xingluo/platform/single/sms/pay/d;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->o:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 14

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v7, "content://sms/"

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->a:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " address = \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "thread_id"

    aput-object v5, v2, v12

    const-string v5, "address"

    aput-object v5, v2, v13

    const/4 v5, 0x2

    const-string v9, "body"

    aput-object v9, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_5

    :cond_2
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "thread_id"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v0, "body"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->a:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v5, "thread_id=?"

    new-array v9, v13, [Ljava/lang/String;

    aput-object v2, v9, v12

    invoke-virtual {v0, v3, v5, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->a:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "content://sms/"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    const-string v10, "thread_id=?"

    new-array v11, v13, [Ljava/lang/String;

    aput-object v2, v11, v12

    invoke-virtual {v0, v9, v10, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/xingluo/platform/single/pay/PayParameter;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "SMS Pay doPay Start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SMS data can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v0, Lcom/xingluo/platform/single/sms/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->m:Lcom/xingluo/platform/single/sms/pay/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->l:Z

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->k:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xingluo/platform/single/sms/service/b;->a()Lcom/xingluo/platform/single/sms/service/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sms/service/b;->b()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->e()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v3

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->c()Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->f:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/xingluo/platform/single/sms/pay/d;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "xlsdk_channel"

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    if-gez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    const/16 v7, 0xa

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->e:Lcom/xingluo/platform/single/order/Order;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/xingluo/platform/single/net/ConnectManagerHelper;->a()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/d;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {p0, v0, v3, v2}, Lcom/xingluo/platform/single/sms/pay/d;->a(Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V

    :goto_4
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/xingluo/platform/single/sms/f/e;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    const/16 v0, 0xf

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/e;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    invoke-direct {p0, v3, v2}, Lcom/xingluo/platform/single/sms/pay/d;->a(Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V

    goto :goto_4
.end method
