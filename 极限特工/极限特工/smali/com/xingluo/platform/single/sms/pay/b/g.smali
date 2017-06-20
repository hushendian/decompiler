.class public Lcom/xingluo/platform/single/sms/pay/b/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xingluo/platform/single/sms/pay/b/g$a;
    }
.end annotation


# static fields
.field private static b:Lcom/xingluo/platform/single/sms/pay/b/g;


# instance fields
.field private a:Lcom/xingluo/platform/single/util/i;

.field private c:Landroid/content/Context;

.field private d:Lcom/xingluo/platform/single/util/t;

.field private e:Ljava/lang/String;

.field private f:Landroid/app/PendingIntent;

.field private g:Landroid/telephony/SmsManager;

.field private h:Lcom/xingluo/platform/single/order/Order;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Landroid/net/Uri;

.field private m:Lcom/xingluo/platform/single/sms/pay/b/g$a;

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Lcom/xingluo/platform/single/sms/d/b$a;

.field private r:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/xingluo/platform/single/sms/pay/b/g;->b:Lcom/xingluo/platform/single/sms/pay/b/g;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/sms/d/b$a;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->a:Lcom/xingluo/platform/single/util/i;

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->l:Landroid/net/Uri;

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->n:I

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->o:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->p:Z

    iput-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/h;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/h;-><init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->r:Landroid/os/Handler;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->h:Lcom/xingluo/platform/single/order/Order;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->g:Landroid/telephony/SmsManager;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/sms/d/b$a;)Lcom/xingluo/platform/single/sms/pay/b/g;
    .locals 1

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/g;

    invoke-direct {v0, p0, p1, p2}, Lcom/xingluo/platform/single/sms/pay/b/g;-><init>(Landroid/content/Context;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/sms/d/b$a;)V

    sput-object v0, Lcom/xingluo/platform/single/sms/pay/b/g;->b:Lcom/xingluo/platform/single/sms/pay/b/g;

    sget-object v0, Lcom/xingluo/platform/single/sms/pay/b/g;->b:Lcom/xingluo/platform/single/sms/pay/b/g;

    return-object v0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/util/t;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    return-object v0
.end method

.method private a()V
    .locals 4

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/k;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/k;-><init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xingluo/platform/single/sms/d/b;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1, v0}, Lcom/xingluo/platform/single/sms/d/b;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/b$a;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->n:I

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;Landroid/app/PendingIntent;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->f:Landroid/app/PendingIntent;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;Lcom/xingluo/platform/single/sms/pay/b/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->m:Lcom/xingluo/platform/single/sms/pay/b/g$a;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->g:Landroid/telephony/SmsManager;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->f:Landroid/app/PendingIntent;

    move-object v1, p1

    move-object v3, p2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->m:Lcom/xingluo/platform/single/sms/pay/b/g$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->m:Lcom/xingluo/platform/single/sms/pay/b/g$a;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->m:Lcom/xingluo/platform/single/sms/pay/b/g$a;
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

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->j:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/d/b$a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    return-object v0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/g;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->k:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/b/g;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->n:I

    return v0
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/b/g;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->r:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/g;->b()V

    return-void
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sms/pay/b/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/g;->a()V

    return-void
.end method

.method static synthetic i(Lcom/xingluo/platform/single/sms/pay/b/g;)Lcom/xingluo/platform/single/sms/pay/b/g$a;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->m:Lcom/xingluo/platform/single/sms/pay/b/g$a;

    return-object v0
.end method

.method static synthetic j(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/xingluo/platform/single/sms/pay/b/g;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->k:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/q;->n(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPhoneNumber ----phoneNo==="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    iput-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    const-string v1, "+861"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iput-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    const-string v1, "phoneimsi"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    invoke-static {v2}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;Ljava/lang/String;)Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/sms/d/b$a;->a(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    const-string v1, "phoneimsi"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->d:Lcom/xingluo/platform/single/util/t;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/sms/d/b$a;->a(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_5

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/j;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/j;-><init>(Lcom/xingluo/platform/single/sms/pay/b/g;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    :cond_5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "phone"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/g;->q:Lcom/xingluo/platform/single/sms/d/b$a;

    invoke-interface {v1, v0}, Lcom/xingluo/platform/single/sms/d/b$a;->a(Landroid/os/Bundle;)V

    goto :goto_0
.end method
