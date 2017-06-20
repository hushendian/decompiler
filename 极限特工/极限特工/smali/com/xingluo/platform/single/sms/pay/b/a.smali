.class public Lcom/xingluo/platform/single/sms/pay/b/a;
.super Ljava/lang/Thread;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# static fields
.field private static b:I


# instance fields
.field a:Lcom/xingluo/platform/single/util/i;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/PendingIntent;

.field private e:Landroid/app/PendingIntent;

.field private f:Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

.field private g:I

.field private h:Landroid/content/Context;

.field private i:Lcom/xingluo/platform/single/util/t;

.field private j:Z

.field private k:Z

.field private l:Landroid/telephony/SmsManager;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/xingluo/platform/single/sms/pay/b/a;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/xingluo/platform/single/item/XLPropsChannelInfo;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-class v0, Lcom/xingluo/platform/single/sms/pay/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xingluo/platform/single/util/i;->a(Ljava/lang/String;)Lcom/xingluo/platform/single/util/i;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->a:Lcom/xingluo/platform/single/util/i;

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->c:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->g:I

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->j:Z

    iput-boolean v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->k:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->m:Ljava/lang/String;

    iput-object p4, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->f:Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    iput-object p2, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->o:Ljava/lang/String;

    iput-object p3, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->p:Ljava/lang/String;

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->h:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/a;Landroid/telephony/SmsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->l:Landroid/telephony/SmsManager;

    return-void
.end method

.method static synthetic a(Lcom/xingluo/platform/single/sms/pay/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xingluo/platform/single/sms/pay/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 6

    const/4 v2, 0x0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v3, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->h:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v1, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->d:Landroid/app/PendingIntent;

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->l:Landroid/telephony/SmsManager;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->o:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->p:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->d:Landroid/app/PendingIntent;

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 8

    invoke-static {}, Lcom/xingluo/platform/single/json/c;->a()Lcom/xingluo/platform/single/json/a;

    move-result-object v0

    const-string v2, ""

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->f:Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->c()Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->f:Lcom/xingluo/platform/single/item/XLPropsChannelInfo;

    invoke-virtual {v1}, Lcom/xingluo/platform/single/item/XLPropsChannelInfo;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    const-string v6, "HD_pay"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v7, "HD"

    invoke-direct {v1, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->h:Landroid/content/Context;

    invoke-static {v7}, Lcom/xingluo/platform/single/util/q;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/xingluo/platform/single/json/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/xingluo/platform/single/net/g;->b()Lcom/xingluo/platform/single/net/f;

    move-result-object v0

    const-string v1, "http://xlsdk.sdk.sinraten.com/sdkServer/makeOrder"

    const/4 v2, 0x3

    new-instance v4, Lcom/xingluo/platform/single/sms/pay/b/b;

    invoke-direct {v4, p0}, Lcom/xingluo/platform/single/sms/pay/b/b;-><init>(Lcom/xingluo/platform/single/sms/pay/b/a;)V

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/xingluo/platform/single/net/f;->a(Ljava/lang/String;ILjava/lang/String;Lcom/xingluo/platform/single/net/INetListener;Lcom/xingluo/platform/single/json/AbstractJSONHelper;)I

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->j:Z

    iget-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->h:Landroid/content/Context;

    invoke-static {v0}, Lcom/xingluo/platform/single/util/t;->a(Landroid/content/Context;)Lcom/xingluo/platform/single/util/t;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->i:Lcom/xingluo/platform/single/util/t;

    invoke-static {}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->getInstance()Lcom/xingluo/platform/single/platform/XLSinglePlatform;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xingluo/platform/single/platform/XLSinglePlatform;->isFlagFindMobile()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->k:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.duoku.sms.send"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "orderid"

    iget-object v2, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->h:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->d:Landroid/app/PendingIntent;

    invoke-static {}, Lcom/xingluo/platform/single/util/y;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->m:Ljava/lang/String;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xingluo/platform/single/sms/pay/b/a;->l:Landroid/telephony/SmsManager;

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
    .locals 1

    sget-object v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->CHANNEL_CM_MDO:Lcom/xingluo/platform/single/util/PayOrderChannel;

    iget-object v0, v0, Lcom/xingluo/platform/single/util/PayOrderChannel;->channelName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/xingluo/platform/single/sms/pay/b/a;->b(Ljava/lang/String;)V

    invoke-super {p0}, Ljava/lang/Thread;->run()V

    return-void
.end method
