.class Lcom/xingluo/platform/single/sms/pay/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/xingluo/platform/single/net/INetListener;


# instance fields
.field final synthetic a:Lcom/xingluo/platform/single/sms/pay/b/a;


# direct methods
.method constructor <init>(Lcom/xingluo/platform/single/sms/pay/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/xingluo/platform/single/sms/pay/b/b;->a:Lcom/xingluo/platform/single/sms/pay/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownLoadProgressCurSize(JJI)V
    .locals 0

    return-void
.end method

.method public onDownLoadStatus(Lcom/xingluo/platform/single/net/INetListener$DownLoadStatus;I)V
    .locals 0

    return-void
.end method

.method public onNetResponse(ILcom/xingluo/platform/single/net/a/a;I)V
    .locals 5

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    check-cast p2, Lcom/xingluo/platform/single/net/a/g;

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/g;->o()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/xingluo/platform/single/net/a/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v1, 0x11

    if-ge v3, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    rsub-int/lit8 v2, v3, 0x11

    if-lt v1, v2, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/b;->a:Lcom/xingluo/platform/single/sms/pay/b/a;

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xingluo/platform/single/sms/pay/b/a;->a(Lcom/xingluo/platform/single/sms/pay/b/a;Landroid/telephony/SmsManager;)V

    iget-object v1, p0, Lcom/xingluo/platform/single/sms/pay/b/b;->a:Lcom/xingluo/platform/single/sms/pay/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "HD"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "200"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xingluo/platform/single/sms/pay/b/a;->a(Lcom/xingluo/platform/single/sms/pay/b/a;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "0"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method public onNetResponseErr(IIILjava/lang/String;)V
    .locals 0

    return-void
.end method
