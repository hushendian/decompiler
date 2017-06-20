.class final Lcom/yuelan/dreampay/pay/P;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Lcom/yuelan/dreampay/common/AnalysisAdData;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/app/Dialog;

.field private final synthetic d:Lcom/yuelan/dreampay/view/BaseTisDiaolog;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/common/AnalysisAdData;Landroid/content/Context;Landroid/app/Dialog;Lcom/yuelan/dreampay/view/BaseTisDiaolog;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/P;->a:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/P;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/P;->d:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->a:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iget-object v2, v1, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->a:Lcom/yuelan/dreampay/common/AnalysisAdData;

    iget-object v1, v1, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    sget v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "WIFI"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "3"

    new-instance v6, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x3

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "2"

    const-string v13, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v14, "1"

    invoke-static/range {v1 .. v14}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->c:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->get24NowTime()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :try_start_1
    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    :goto_0
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    sub-long v1, v3, v1

    const-wide/16 v3, 0x3e8

    div-long v5, v1, v3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    const/4 v2, 0x3

    sget-object v3, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    sget-object v4, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v15}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :catch_0
    move-exception v2

    move-object/from16 v16, v2

    move-object v2, v3

    move-object/from16 v3, v16

    :goto_2
    invoke-virtual {v3}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    const/4 v3, 0x1

    const-string v4, "\u5f00\u542fWIFI"

    const-string v5, "\u7ee7\u7eed\u4e0b\u8f7d"

    const-string v6, "\u5f53\u524d\u4f7f\u7528\u7684\u79fb\u52a8\u7f51\u7edc\u4f1a\u4ea7\u751f\u6570\u636e\u4fe1\u606f\u8d39\u5efa\n\u8bae\u60a8\u5f00\u542fWIFI\u540e\u4e0b\u8f7d\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    const/4 v7, 0x0

    new-instance v8, Lcom/yuelan/dreampay/pay/Q;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/yuelan/dreampay/pay/P;->b:Landroid/content/Context;

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v9, v15}, Lcom/yuelan/dreampay/pay/Q;-><init>(Lcom/yuelan/dreampay/pay/P;Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;)V

    invoke-direct/range {v1 .. v8}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/yuelan/dreampay/pay/P;->d:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method
