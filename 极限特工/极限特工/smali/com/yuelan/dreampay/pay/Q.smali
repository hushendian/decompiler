.class final Lcom/yuelan/dreampay/pay/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/DialogClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/P;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/yuelan/dreampay/date/AppInfo;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/P;Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/Q;->a:Lcom/yuelan/dreampay/pay/P;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/Q;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final one()V
    .locals 0

    return-void
.end method

.method public final two()V
    .locals 15

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Q;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x3

    iget-object v10, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v10}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :try_start_1
    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
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

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Q;->b:Landroid/content/Context;

    const/4 v1, 0x3

    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v5}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/yuelan/dreampay/pay/Q;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v6}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :catch_0
    move-exception v1

    move-object v14, v1

    move-object v1, v2

    move-object v2, v14

    :goto_1
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_1
.end method
