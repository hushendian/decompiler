.class public Lcom/xingluo/platform/single/sms/pay/b/l;
.super Ljava/lang/Thread;


# instance fields
.field private A:I

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private H:Z

.field private I:Landroid/os/Handler;

.field private a:Lcom/xingluo/platform/single/util/i;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/xingluo/platform/single/order/Order;

.field private f:Lcom/xingluo/platform/single/sms/pay/c;

.field private g:Z

.field private h:Ljava/util/Timer;

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Lcom/xingluo/platform/single/sms/d/a;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/String;

.field private y:I

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/order/Order;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/b/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    iput-boolean v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->h:Ljava/util/Timer;

    const v0, 0xea60

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->i:I

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->l:Z

    const-string v0, "271458320000251922"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->m:Ljava/lang/String;

    const-string v0, "90214879"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->n:Ljava/lang/String;

    const-string v0, "hkajsd"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->o:Ljava/lang/String;

    const-string v0, "5cd1567e8610122aa2d1bfef7991301e"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->p:Ljava/lang/String;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->r:Lcom/xingluo/platform/single/sms/d/a;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->s:Ljava/lang/String;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->t:Ljava/lang/String;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    iput v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->y:I

    iput v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->z:I

    iput v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    const-string v0, "00"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->B:Ljava/lang/String;

    const-string v0, "0"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->C:Ljava/lang/String;

    const-string v0, "01"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->D:Ljava/lang/String;

    const-string v0, "02"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->E:Ljava/lang/String;

    const-string v0, "03"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->F:Ljava/lang/String;

    const-string v0, "04"

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->G:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->H:Z

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/m;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/m;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->I:Landroid/os/Handler;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/c;

    invoke-direct {v0}, Lcom/xingluo/platform/single/sms/pay/c;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gostswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    invoke-static {p1}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    const-string v1, "xl_extra_gost_deleteswitch"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/t;->d(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/d/a;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/sms/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->r:Lcom/xingluo/platform/single/sms/d/a;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    const-string v0, "\\|"

    invoke-virtual {p3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-ge v1, v4, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "code length <2"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->H:Z

    :goto_0
    return-void

    :cond_0
    aget-object v1, v0, v2

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->m:Ljava/lang/String;

    aget-object v1, v0, v3

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->n:Ljava/lang/String;

    aget-object v0, v0, v4

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->p:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "appid="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "paycode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "appsecret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->p:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a(ILjava/lang/String;)V
    .locals 5

    new-instance v0, Lcom/xingluo/platform/single/sms/pay/b/t;

    invoke-direct {v0, p0}, Lcom/xingluo/platform/single/sms/pay/b/t;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v2, "--ZWLY\u652f\u4ed8\u7ed3\u679c\u5f00\u59cb\u4e0a\u62a5"

    invoke-virtual {v1, v2}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "appid"

    sget-object v3, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "paychannel"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v3}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->q:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "--\u8054\u5408\u652f\u4ed8orderid\u4e3anull,\u65e0\u9700\u4e0a\u62a5\u670d\u52a1\u5668"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "orderid"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->q:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "success"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "msg"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->r:Lcom/xingluo/platform/single/sms/d/a;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v1, v0}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/l;I)V
    .locals 0

    iput p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->u:I

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/l;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/b/l;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/l;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "xlRequestOrder start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    new-instance v2, Lcom/xingluo/platform/single/sms/pay/b/q;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/single/sms/pay/b/q;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v0, "appid"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "paychannel="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    const-string v1, "paychannel"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemid"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/order/Order;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v0}, Lcom/xingluo/platform/single/order/Order;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "amount"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    sget-object v1, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_CHANNELID:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ua"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "spjd_ua"

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v4, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6, v6, v6, v6}, Landroid/webkit/WebView;->layout(IIII)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const-string v1, "video_ua"

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imei"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "imsi"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->h(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iccid"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/q;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "phone"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "op"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/xingluo/platform/single/util/s;->a(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/xingluo/platform/single/util/MNCType;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "province"

    sget-object v1, Lcom/xingluo/platform/single/util/a;->mM:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ver"

    const-string v1, "1.0"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sign"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "transp"

    sget-object v1, Lcom/xingluo/platform/single/order/Order;->g:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/sms/f/j;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    const-string v1, ""

    const-string v0, ""

    if-eqz v4, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bsc_lac"

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bsc_cid"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v4, "bsc_lac"

    invoke-virtual {v3, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bsc_cid"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "zwly_time"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "zwly_sign"

    const-string v1, "utf-8"

    invoke-static {p3, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "zwly_time:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "zwly_sign:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "utf-8"

    invoke-static {p3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->r:Lcom/xingluo/platform/single/sms/d/a;

    invoke-virtual {v0, p4, v3, v2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->g()V

    return-void
.end method

.method static synthetic b(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->j:Ljava/lang/String;

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "phone is null"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->D:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "app_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&pay_code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&phone="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ffcs/crypt/CryptSign;

    invoke-direct {v2}, Lcom/ffcs/crypt/CryptSign;-><init>()V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/ffcs/crypt/CryptSign;->authSign(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->q:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/xingluo/platform/single/sms/pay/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    return v0
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/b/l;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->z:I

    return v0
.end method

.method static synthetic d(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->t:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/b/l;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->u:I

    return v0
.end method

.method private e()V
    .locals 3

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_0
    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getMoblieNum()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    new-instance v2, Lcom/xingluo/platform/single/sms/pay/b/o;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/single/sms/pay/b/o;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    invoke-static {v0, v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/order/Order;Lcom/xingluo/platform/single/sms/d/b$a;)Lcom/xingluo/platform/single/sms/pay/b/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/g;->a(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->j:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e(Lcom/xingluo/platform/single/sms/pay/b/l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->s:Ljava/lang/String;

    return-void
.end method

.method static synthetic f(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->B:Ljava/lang/String;

    return-object v0
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    const-string v1, "input_Text_number"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xingluo/platform/single/sms/f/g;->a:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/p;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/b/p;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/f/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/sms/c/b;)V

    return-void
.end method

.method static synthetic g(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/util/i;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    return-object v0
.end method

.method private g()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "verificationCode start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->h()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->s:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    if-nez v0, :cond_4

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->y:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->y:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->I:Landroid/os/Handler;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_1
    return-void

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->s:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keyWorld:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iput v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->y:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8fdb\u884c\u9a8c\u8bc1\u7801\u5f39\u6846--->"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->i()V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "60S\u5185\u65e0\u77ed\u4fe1\uff0c\u901a\u77e5CP\u652f\u4ed8\u5931\u8d25"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getGost()Lcom/xingluo/platform/single/net/a/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xingluo/platform/single/net/a/c;->e(Z)V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->u:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->C:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(ILjava/lang/String;)V

    goto/16 :goto_1
.end method

.method private h()V
    .locals 7

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

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

    const-string v3, " date >  "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x2710

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " AND type = 1 AND read = 0"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v1, "content://sms/"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v4, 0x0

    const-string v5, "date DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "address"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "body"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->v:Ljava/lang/String;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getSmsFromPhone=="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->v:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/xingluo/platform/single/sms/pay/b/l;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    return v0
.end method

.method private i()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->l:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    const-string v1, "input_Text_code"

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/util/r;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xingluo/platform/single/sms/f/g;->a:I

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/r;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/b/r;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    invoke-static {v0, v1}, Lcom/xingluo/platform/single/sms/f/g;->a(Landroid/content/Context;Lcom/xingluo/platform/single/sms/c/b;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->u:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(ILjava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic i(Lcom/xingluo/platform/single/sms/pay/b/l;)V
    .locals 0

    invoke-direct {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->f()V

    return-void
.end method

.method static synthetic j(Lcom/xingluo/platform/single/sms/pay/b/l;)I
    .locals 1

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    return v0
.end method

.method static synthetic k(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->D:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic l(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->j:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/xingluo/platform/single/sms/pay/b/l;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic n(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/xingluo/platform/single/sms/pay/b/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->I:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic p(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->E:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic q(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->F:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic r(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/order/Order;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    return-object v0
.end method

.method static synthetic s(Lcom/xingluo/platform/single/sms/pay/b/l;)Lcom/xingluo/platform/single/sms/pay/c;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    return-object v0
.end method

.method static synthetic t(Lcom/xingluo/platform/single/sms/pay/b/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->G:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->x:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->t:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->A:I

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->u:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/xingluo/platform/single/sms/pay/b/l;->a(ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v7, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    sget-boolean v0, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->GHOST_IS_SUPPORT:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->d()V

    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "trade_id="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&verifyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/ffcs/crypt/CryptSign;

    invoke-direct {v2}, Lcom/ffcs/crypt/CryptSign;-><init>()V

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->p:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v4}, Lcom/ffcs/crypt/CryptSign;->signAuth(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xingluo/platform/single/sms/pay/b/s;

    invoke-direct {v2, p0}, Lcom/xingluo/platform/single/sms/pay/b/s;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "appid"

    sget-object v5, Lcom/xingluo/platform/single/setting/XLSingleSDKSettings;->SDK_APPID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "paychannel"

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->e:Lcom/xingluo/platform/single/order/Order;

    invoke-virtual {v5}, Lcom/xingluo/platform/single/order/Order;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "orderid"

    iget-object v5, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->q:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "verifycode"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "zwly_time"

    invoke-virtual {v3, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v4, "zwly_sign"

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "zwly_time:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "zwly_sign:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "utf-8"

    invoke-static {v1, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->r:Lcom/xingluo/platform/single/sms/d/a;

    invoke-virtual {v0, v7, v3, v2}, Lcom/xingluo/platform/single/sms/d/a;->a(ILandroid/os/Bundle;Lcom/xingluo/platform/single/sms/d/a$a;)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "ZWLYSMSPayment start"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->d(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->H:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->c()V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    const-string v1, "code length <2"

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/util/i;->f(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->g:Z

    invoke-virtual {p0}, Lcom/xingluo/platform/single/sms/pay/b/l;->start()V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->h:Ljava/util/Timer;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->h:Ljava/util/Timer;

    new-instance v1, Lcom/xingluo/platform/single/sms/pay/b/n;

    invoke-direct {v1, p0}, Lcom/xingluo/platform/single/sms/pay/b/n;-><init>(Lcom/xingluo/platform/single/sms/pay/b/l;)V

    iget v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->i:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    goto :goto_0
.end method

.method protected c()V
    .locals 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/xingluo/platform/single/order/Order;->l:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    iget-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->k:Z

    invoke-virtual {v0, v1}, Lcom/xingluo/platform/single/sms/pay/c;->a(Z)V

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->f:Lcom/xingluo/platform/single/sms/pay/c;

    iget-object v0, v0, Lcom/xingluo/platform/single/sms/pay/c;->b:Lcom/xingluo/platform/single/callback/OrderStatusCallback;

    invoke-interface {v0}, Lcom/xingluo/platform/single/callback/OrderStatusCallback;->closeActivity()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v0, "content://sms/"

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->v:Ljava/lang/String;

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->a:Lcom/xingluo/platform/single/util/i;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "deleteSMS address =="

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xingluo/platform/single/util/i;->c(Ljava/lang/String;)V

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

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

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

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "content://sms/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "thread_id=?"

    new-array v5, v7, [Ljava/lang/String;

    aput-object v1, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "\u7a7a"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/l;->I:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
