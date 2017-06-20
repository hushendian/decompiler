.class final Lcom/yuelan/dreampay/pay/M;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private final synthetic a:Lcom/yuelan/dreampay/listen/ExitListener;

.field private final synthetic b:Lcom/yuelan/dreampay/date/AppInfo;

.field private final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/listen/ExitListener;Lcom/yuelan/dreampay/date/AppInfo;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/M;->a:Lcom/yuelan/dreampay/listen/ExitListener;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/M;->b:Lcom/yuelan/dreampay/date/AppInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/M;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/M;->a:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-interface {v1}, Lcom/yuelan/dreampay/listen/ExitListener;->cancel()V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeExitDialogTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showExitDialogTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :try_start_0
    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showExitDialogTime:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeExitDialogTime:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long v0, v2, v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/M;->b:Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/M;->c:Landroid/content/Context;

    const/4 v1, 0x2

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showExitDialogTime:Ljava/lang/String;

    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeExitDialogTime:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/yuelan/dreampay/pay/M;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v5}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yuelan/dreampay/pay/M;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v6}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v2, v1

    move-object v1, v0

    :goto_1
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
