.class public Lcom/xingluo/platform/single/sms/pay/b/e;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/pay/b/e$a;,
        Lcom/xingluo/platform/single/sms/pay/b/e$b;,
        Lcom/xingluo/platform/single/sms/pay/b/e$c;
    }
.end annotation


# static fields
.field private static b:I


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:Z

.field private D:Lcom/xingluo/platform/single/sms/pay/b/e$c;

.field private E:Landroid/net/Uri;

.field private F:Z

.field private G:Lcom/xingluo/platform/single/sms/pay/c;

.field a:Lcom/xingluo/platform/single/util/i;

.field private c:Ljava/util/Timer;

.field private d:Z

.field private e:Z

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Landroid/app/PendingIntent;

.field private i:Landroid/app/PendingIntent;

.field private j:Lcom/xingluo/platform/single/order/Order;

.field private k:I

.field private l:Landroid/content/Context;

.field private m:Lcom/xingluo/platform/single/util/t;

.field private n:Z

.field private o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

.field private p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

.field private q:Landroid/telephony/SmsManager;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:I

.field private x:I

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xingluo/platform/single/sms/pay/b/e;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/net/a/b;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/b/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->c:Ljava/util/Timer;

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->d:Z

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->e:Z

    const v0, 0xea60

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->g:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->k:I

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->n:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->r:Ljava/lang/String;

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->w:I

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->x:I

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->C:Z

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->E:Landroid/net/Uri;

    iput-object p4, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->j:Lcom/xingluo/platform/single/order/Order;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->t:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->u:Ljava/lang/String;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-virtual {p5}, Lcom/xingluo/platform/single/net/a/b;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->y:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/xingluo/platform/single/net/a/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->z:Ljava/lang/String;

    invoke-virtual {p5}, Lcom/xingluo/platform/single/net/a/b;->d()I

    move-result v0

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->B:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->F:Z

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->G:Lcom/xingluo/platform/single/sms/pay/c;

    return-void
.end method

.method static synthetic a(I)V
    .locals 0

    sput p0, Lcom/xingluo/platform/single/sms/pay/b/e;->b:I

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/e;Lcom/xingluo/platform/single/sms/pay/b/e$c;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->D:Lcom/xingluo/platform/single/sms/pay/b/e$c;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->A:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->e:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->q:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->t:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Y"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->h:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->F:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->j:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/e;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/b/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->C:Z

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->G:Lcom/xingluo/platform/single/sms/pay/c;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/e;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->d:Z

    return-void
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Lcom/xingluo/platform/single/sms/pay/b/e;->b:I

    return v0
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/b/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->F:Z

    return v0
.end method

.method private e()V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Z)Z

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->i()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->q:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->t:Ljava/lang/String;

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->v:Ljava/lang/String;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->i:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/b/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->f()V

    return-void
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/b/e;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->D:Lcom/xingluo/platform/single/sms/pay/b/e$c;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->D:Lcom/xingluo/platform/single/sms/pay/b/e$c;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->D:Lcom/xingluo/platform/single/sms/pay/b/e$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/b/e;)Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->E:Landroid/net/Uri;

    return-object v0
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

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->u:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->j:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sms/pay/b/e;)Lcom/xingluo/platform/single/sms/pay/b/e$c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->D:Lcom/xingluo/platform/single/sms/pay/b/e$c;

    return-object v0
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

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->u:Ljava/lang/String;

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

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->j:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    sget-object v2, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

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

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->j:Lcom/xingluo/platform/single/order/Order;

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

.method static synthetic i(Lcom/xingluo/platform/single/sms/pay/b/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->C:Z

    return v0
.end method

.method private j()Ljava/lang/String;
    .locals 9

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "address"

    aput-object v3, v2, v1

    const/4 v1, 0x1

    const-string v3, "body"

    aput-object v3, v2, v1

    const/4 v1, 0x2

    const-string v3, "date"

    aput-object v3, v2, v1

    const/4 v1, 0x3

    const-string v3, "type"

    aput-object v3, v2, v1

    const/4 v1, 0x4

    const-string v3, "read"

    aput-object v3, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " address = \'"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->y:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\' "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "AND date >  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x2710

    sub-long/2addr v5, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND type = 1 AND read = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->E:Landroid/net/Uri;

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->y:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->z:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->z:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->B:I

    add-int/2addr v2, v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method static synthetic j(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic k(Lcom/xingluo/platform/single/sms/pay/b/e;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/xingluo/platform/single/sms/pay/b/e;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->e:Z

    return v0
.end method


# virtual methods
.method public a()V
    .locals 6

    const/high16 v5, 0x10000000

    const/4 v4, 0x0

    iput v4, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->w:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->n:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->m:Lcom/xingluo/platform/single/util/t;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/e$a;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/e$a;-><init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->o:Lcom/xingluo/platform/single/sms/pay/b/e$a;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.multi.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/e$b;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/e$b;-><init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->p:Lcom/xingluo/platform/single/sms/pay/b/e$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.duoku.sms.send"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->h:Landroid/app/PendingIntent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.multi.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-static {v1, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->i:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->r:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->q:Landroid/telephony/SmsManager;

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->F:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->v:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->v:Ljava/lang/String;

    goto :goto_0
.end method

.method public b()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "\u5f00\u542f\u53d1\u9001\u77ed\u4fe1\u8fdb\u7a0b"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->e:Z

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->d:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->C:Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->c:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->c:Ljava/util/Timer;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/f;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/b/f;-><init>(Lcom/xingluo/platform/single/sms/pay/b/e;)V

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->f:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public c()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "content://sms/"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->y:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " address = \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v5, "thread_id"

    aput-object v5, v2, v6

    const-string v5, "address"

    aput-object v5, v2, v7

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_1
    return-void

    :cond_0
    const-string v1, "thread_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->l:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "thread_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/e;->a:Lcom/xingluo/platform/single/util/i;

    const-string v2, "\u5220\u9664\u77ed\u4fe1"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
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

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/e;->e()V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
