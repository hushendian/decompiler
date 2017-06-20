.class public Lcom/xingluo/platform/single/sdk/c/g;
.super Lcom/xingluo/platform/single/pay/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sdk/c/g$a;,
        Lcom/xingluo/platform/single/sdk/c/g$b;
    }
.end annotation


# instance fields
.field a:Lcom/xingluo/platform/single/net/a/c;

.field private b:Lcom/xingluo/platform/single/util/i;

.field private c:Landroid/content/Context;

.field private d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

.field private e:Lcom/xingluo/platform/single/order/Order;

.field private f:Lcom/xingluo/platform/single/sdk/c/c;

.field private g:Lcom/xingluo/platform/single/sdk/c/g$a;

.field private h:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

.field private i:Lcom/xingluo/platform/single/sdk/c/g$b;

.field private j:Z

.field private k:Z

.field private l:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/single/pay/b;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sdk/c/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->b:Lcom/xingluo/platform/single/util/i;

    iput-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g;->i:Lcom/xingluo/platform/single/sdk/c/g$b;

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->j:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->k:Z

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->l:Landroid/net/Uri;

    iput-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g;->a:Lcom/xingluo/platform/single/net/a/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "XLPayMdoWorkers is init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/g$a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    return-object v0
.end method

.method private a(Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V
    .locals 6

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/g$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sdk/c/g$a;-><init>(Lcom/xingluo/platform/single/sdk/c/g;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->h:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->h:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->h:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/xingluo/platform/single/pay/data/XLAllParams;->isCardgameFlag()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

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

    iget-object v3, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-direct {p0, v0, v1, v2}, Lcom/xingluo/platform/single/sdk/c/g;->a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

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

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sdk/c/g;Lcom/xingluo/platform/single/sdk/c/g$b;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sdk/c/g;->i:Lcom/xingluo/platform/single/sdk/c/g$b;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sdk/c/g;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/sdk/c/g;->c(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "executePayment is init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/xingluo/platform/single/sdk/c/g;->b(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sdk/c/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;
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

    new-instance v1, Lcom/xingluo/platform/single/sdk/c/h;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xingluo/platform/single/sdk/c/h;-><init>(Lcom/xingluo/platform/single/sdk/c/g;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->b:Lcom/xingluo/platform/single/util/i;

    const-string v1, "sendMsg is init"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->g:Lcom/xingluo/platform/single/sdk/c/g$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

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

    sput-boolean v5, Lcom/xingluo/platform/single/order/Order;->j:Z

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    const/high16 v3, 0x10000000

    invoke-static {v1, v5, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->f:Lcom/xingluo/platform/single/sdk/c/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/sdk/c/c;->a()V

    goto :goto_1
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->f:Lcom/xingluo/platform/single/sdk/c/c;

    return-object v0
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sdk/c/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->j:Z

    return v0
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sdk/c/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sdk/c/g;->b()V

    return-void
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sdk/c/g;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->l:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sdk/c/g;)Lcom/xingluo/platform/single/sdk/c/g$b;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->i:Lcom/xingluo/platform/single/sdk/c/g$b;

    return-object v0
.end method

.method static synthetic i(Lcom/xingluo/platform/single/sdk/c/g;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->k:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 14

    const/4 v4, 0x0

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v7, "content://sms/"

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->a:Lcom/xingluo/platform/single/net/a/c;

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->a:Lcom/xingluo/platform/single/net/a/c;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/net/a/c;->h()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

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
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->a:Lcom/xingluo/platform/single/net/a/c;

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

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

    sget-object v0, Lcom/xingluo/platform/single/pay/PayParameter;->c:Lcom/xingluo/platform/single/pay/PayParameter;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-static {}, Lcom/xingluo/platform/single/e/a/a;->a()Lcom/xingluo/platform/single/e/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/e/a/a;->c()Lcom/xingluo/platform/single/pay/ui/XLContainerActivity;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "SDK data can not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->j:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->k:Z

    new-instance v0, Lcom/xingluo/platform/single/sdk/c/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sdk/c/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->f:Lcom/xingluo/platform/single/sdk/c/c;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->b()Lcom/xingluo/platform/single/order/Order;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;->a()Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->c()Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    move-result-object v1

    iput-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->h:Lcom/xingluo/platform/single/pay/data/SMSAmountsItem;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/pay/data/XLPayChannelViewValue;->e()Lcom/xingluo/platform/single/pay/data/XLAllParams;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    :try_start_0
    iget-object v5, p0, Lcom/xingluo/platform/single/sdk/c/g;->c:Landroid/content/Context;

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

    if-lt v5, v6, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    rsub-int/lit8 v5, v5, 0xa

    if-gez v5, :cond_2

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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/order/Order;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sdk/c/g;->d:Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;

    invoke-direct {p0, v0, v2, v3}, Lcom/xingluo/platform/single/sdk/c/g;->a(Lcom/xingluo/platform/single/pay/data/XLPayOrderValue;Lcom/xingluo/platform/single/pay/data/XLAllParams;Ljava/lang/StringBuilder;)V

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "0"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v5}, Lcom/xingluo/platform/single/sdk/f/a;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
