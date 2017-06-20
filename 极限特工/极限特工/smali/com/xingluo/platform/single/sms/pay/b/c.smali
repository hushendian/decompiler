.class public Lcom/xingluo/platform/single/sms/pay/b/c;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/pay/b/c$a;,
        Lcom/xingluo/platform/single/sms/pay/b/c$b;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field a:Lcom/xingluo/platform/single/util/i;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/app/PendingIntent;

.field private j:Lcom/xingluo/platform/single/order/Order;

.field private k:Lcom/xingluo/platform/single/sms/pay/c;

.field private l:I

.field private m:Landroid/content/Context;

.field private n:Lcom/xingluo/platform/single/util/t;

.field private o:Z

.field private p:Lcom/xingluo/platform/single/sms/pay/b/c$a;

.field private q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

.field private r:Landroid/telephony/SmsManager;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:I

.field private y:I

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xingluo/platform/single/sms/pay/b/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/b/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->a:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->c:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->d:Z

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->e:Z

    const/16 v0, 0x2710

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->g:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->l:I

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->o:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->s:Ljava/lang/String;

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->x:I

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->y:I

    iput-object p4, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->j:Lcom/xingluo/platform/single/order/Order;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->u:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->v:Ljava/lang/String;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->z:Z

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->k:Lcom/xingluo/platform/single/sms/pay/c;

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/xingluo/platform/single/sms/pay/b/c;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->j:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/c;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->d:Z

    return-void
.end method

.method static synthetic c()I
    .locals 1

    sget v0, Lcom/xingluo/platform/single/sms/pay/b/c;->b:I

    return v0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/c;)Lcom/xingluo/platform/single/sms/pay/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->k:Lcom/xingluo/platform/single/sms/pay/c;

    return-object v0
.end method

.method private d()V
    .locals 6

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->i()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->r:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->i:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->z:Z

    return v0
.end method

.method private e()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->r:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->u:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->w:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->h:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->f()V

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->p:Lcom/xingluo/platform/single/sms/pay/b/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->p:Lcom/xingluo/platform/single/sms/pay/b/c$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->p:Lcom/xingluo/platform/single/sms/pay/b/c$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->e()V

    return-void
.end method

.method private g()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    :cond_0
    const-string v0, ","

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/xingluo/platform/single/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->j:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->a:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/b/c;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->e:Z

    return v0
.end method

.method private h()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    sput-object v0, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    :cond_0
    const-string v0, ","

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/xingluo/platform/single/util/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    sget-object v3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->j:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->a:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private i()V
    .locals 8

    const-string v5, "5328"

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->d:Ljava/lang/String;

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->a:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->j:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/xingluo/platform/single/order/Order;->f:Ljava/lang/String;

    sget-object v6, Lcom/xingluo/platform/single/order/Order;->b:Ljava/lang/String;

    sget-object v7, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/makeOrder"

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    iput v4, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->x:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->o:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->n:Lcom/xingluo/platform/single/util/t;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/c$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/c$a;-><init>(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->p:Lcom/xingluo/platform/single/sms/pay/b/c$a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->p:Lcom/xingluo/platform/single/sms/pay/b/c$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.multi.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/c$b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/c$b;-><init>(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->q:Lcom/xingluo/platform/single/sms/pay/b/c$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.multi.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->m:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->i:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->s:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->r:Landroid/telephony/SmsManager;

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->z:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->w:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->w:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->e:Z

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->d:Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->c:Ljava/util/Timer;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/d;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/b/d;-><init>(Lcom/xingluo/platform/single/sms/pay/b/c;)V

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/c;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 0

    return-void
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/c;->d()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
