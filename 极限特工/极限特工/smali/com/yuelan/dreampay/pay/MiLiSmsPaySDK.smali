.class public Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;
.super Ljava/lang/Object;


# static fields
.field public static REDIALOG_ISSHOW:Z

.field public static closeExitDialogTime:Ljava/lang/String;

.field public static closeStopDialogTime:Ljava/lang/String;

.field public static index:I

.field public static payMode:I

.field public static showExitDialogTime:Ljava/lang/String;

.field public static showStopDialogTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showExitDialogTime:Ljava/lang/String;

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeExitDialogTime:Ljava/lang/String;

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->showStopDialogTime:Ljava/lang/String;

    sput-object v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->closeStopDialogTime:Ljava/lang/String;

    const/4 v0, 0x1

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    sput-boolean v1, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->REDIALOG_ISSHOW:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeWindow(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->removeSmallWindow(Landroid/content/Context;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/yuelan/dreampay/pay/MiLiSmsPay;->payListNum:I

    sget-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_ThemePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/SDCardUtil;->createFolder(Ljava/lang/String;)Ljava/io/File;

    sget-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/SDCardUtil;->createFolder(Ljava/lang/String;)Ljava/io/File;

    sget-object v0, Lcom/yuelan/dreampay/date/ConFigFile;->SD_PICTURE:Ljava/lang/String;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/SDCardUtil;->createFolder(Ljava/lang/String;)Ljava/io/File;

    invoke-static {p0}, Lcom/yuelan/dreampay/common/AppDo;->getUserBaseDeviceInfo(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "netConnectionType"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "appId"

    const-string v3, "MILI_PAY_APPID"

    invoke-static {p0, v3}, Lcom/yuelan/codelib/utils/AppUtil;->getMeTAInt(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/yuelan/dreampay/pay/L;

    invoke-direct {v2, p0}, Lcom/yuelan/dreampay/pay/L;-><init>(Landroid/content/Context;)V

    new-instance v3, Lcom/yuelan/codelib/comm/MyPreference;

    invoke-direct {v3, p0}, Lcom/yuelan/codelib/comm/MyPreference;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/yuelan/dreampay/thread/GetSdkInfoThread;

    invoke-direct {v5}, Lcom/yuelan/dreampay/thread/GetSdkInfoThread;-><init>()V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/yuelan/dreampay/thread/SetAlarmThread;

    invoke-direct {v5, v2, v1}, Lcom/yuelan/dreampay/thread/SetAlarmThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/yuelan/dreampay/date/ConFigFile;->Url_JSMain:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/initMobileInfoapiInitMobile.do"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/yuelan/dreampay/thread/SdkStartInitThread;

    invoke-direct {v4, v1, p0, v6, v0}, Lcom/yuelan/dreampay/thread/SdkStartInitThread;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/yuelan/dreampay/thread/GetPVUrlThread;

    invoke-direct {v2, v6, v0}, Lcom/yuelan/dreampay/thread/GetPVUrlThread;-><init>(Landroid/os/Handler;Ljava/util/Map;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;

    invoke-direct {v1, p0}, Lcom/yuelan/dreampay/thread/GoOnFankuiThread;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :goto_0
    const-string v0, "sdkinit"

    const-string v1, "ok"

    invoke-virtual {v3, v0, v1}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.yuelan.milipay.ShieldSmsService.init"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_0
    const-string v0, "province"

    const-string v1, ""

    invoke-virtual {v3, v0, v1}, Lcom/yuelan/codelib/comm/MyPreference;->write(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static setPayMode(I)V
    .locals 0

    sput p0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->payMode:I

    return-void
.end method

.method public static setReDialog(Z)V
    .locals 0

    sput-boolean p0, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->REDIALOG_ISSHOW:Z

    return-void
.end method

.method public static showExitDialog(Landroid/content/Context;Lcom/yuelan/dreampay/listen/ExitListener;Z)V
    .locals 15

    const-string v2, "\u9000\u51fa"

    const-string v1, "\u53d6\u6d88"

    const-string v3, "set_alarm.info"

    invoke-static {v3, p0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v12, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v12}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    new-instance v4, Lcom/yuelan/dreampay/common/AnalysisAdData;

    invoke-direct {v4, p0}, Lcom/yuelan/dreampay/common/AnalysisAdData;-><init>(Landroid/content/Context;)V

    const-string v5, "type3"

    invoke-virtual {v4, v5}, Lcom/yuelan/dreampay/common/AnalysisAdData;->analysisData(Ljava/lang/String;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v13

    if-eqz v3, :cond_0

    const-string v4, "no"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "type3"

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "buttonText3"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "buttonText4"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    move-object v11, v1

    move-object v9, v2

    :goto_0
    new-instance v1, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    const/4 v3, 0x1

    const-string v4, ""

    const-string v5, "\u786e\u5b9a"

    const-string v6, "\u68c0\u6d4b\u5230\u60a8\u672a\u5f00\u542f\u7f51\u7edc\n\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u91cd\u65b0\u5c1d\u8bd5"

    const/4 v7, 0x0

    new-instance v8, Lcom/yuelan/dreampay/pay/V;

    invoke-direct {v8}, Lcom/yuelan/dreampay/pay/V;-><init>()V

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    new-instance v14, Landroid/app/Dialog;

    const-string v2, "style"

    const-string v3, "mili_smspay_dialog"

    invoke-static {p0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v14, p0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move/from16 v0, p2

    invoke-virtual {v14, v0}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const-string v3, "layout"

    const-string v4, "mili_smspay_closedialog"

    invoke-static {p0, v3, v4}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v14, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    const-string v2, "id"

    const-string v3, "mili_smspay_dialog_tis_exit"

    invoke-static {p0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/TextView;

    const-string v2, "id"

    const-string v3, "mili_smspay_dialog_tc_txt_defult"

    invoke-static {p0, v2, v3}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "id"

    const-string v5, "mili_smspay_dialog_tis_exit_download"

    invoke-static {p0, v3, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v9, v3

    check-cast v9, Landroid/widget/TextView;

    const-string v3, "id"

    const-string v5, "mili_smspay_close_dialog_x"

    invoke-static {p0, v3, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v3, "id"

    const-string v5, "img_alert"

    invoke-static {p0, v3, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Landroid/widget/ImageView;

    if-eqz v13, :cond_1

    invoke-virtual {v13}, Lcom/yuelan/dreampay/date/AppInfo;->getImgUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/yuelan/dreampay/pay/W;

    invoke-direct {v6, v5}, Lcom/yuelan/dreampay/pay/W;-><init>(Landroid/widget/ImageView;)V

    const/16 v7, 0xc8

    move-object v2, v12

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    invoke-virtual {v13}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v6, Lcom/yuelan/dreampay/pay/X;

    invoke-direct {v6}, Lcom/yuelan/dreampay/pay/X;-><init>()V

    const/16 v7, 0x64

    move-object v2, v12

    move-object v5, p0

    invoke-virtual/range {v2 .. v7}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    new-instance v2, Lcom/yuelan/dreampay/pay/Y;

    move-object v3, p0

    move-object v4, v13

    move-object v5, v14

    move-object/from16 v6, p1

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/yuelan/dreampay/pay/Y;-><init>(Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/ExitListener;Lcom/yuelan/dreampay/view/BaseTisDiaolog;)V

    invoke-virtual {v9, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    new-instance v1, Lcom/yuelan/dreampay/pay/ab;

    invoke-direct {v1, v14}, Lcom/yuelan/dreampay/pay/ab;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/yuelan/dreampay/pay/ac;

    move-object/from16 v0, p1

    invoke-direct {v1, v14, v0}, Lcom/yuelan/dreampay/pay/ac;-><init>(Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/ExitListener;)V

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/yuelan/dreampay/pay/ad;

    invoke-direct {v1}, Lcom/yuelan/dreampay/pay/ad;-><init>()V

    invoke-virtual {v14, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    new-instance v1, Lcom/yuelan/dreampay/pay/M;

    move-object/from16 v0, p1

    invoke-direct {v1, v0, v13, p0}, Lcom/yuelan/dreampay/pay/M;-><init>(Lcom/yuelan/dreampay/listen/ExitListener;Lcom/yuelan/dreampay/date/AppInfo;Landroid/content/Context;)V

    invoke-virtual {v14, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v14}, Landroid/app/Dialog;->show()V

    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    move-object v11, v1

    move-object v9, v2

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Lcom/yuelan/dreampay/pay/aa;

    invoke-direct {v1, v14}, Lcom/yuelan/dreampay/pay/aa;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static showWindow(Landroid/content/Context;)V
    .locals 2

    const-string v0, "set_alarm.info"

    invoke-static {v0, p0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "no"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/netmonitor/MyWindowMannager;->createSmallWindow(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static showstopDialog(Landroid/content/Context;Z)V
    .locals 24

    const-string v4, "\u6362\u4e00\u4e2a"

    const-string v3, "\u514d\u8d39\u8bd5\u73a9"

    const-string v5, "set_alarm.info"

    move-object/from16 v0, p0

    invoke-static {v5, v0}, Lcom/yuelan/codelib/utils/FileUtil;->readDateFile(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v3, "NO_API"

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void

    :cond_0
    new-instance v6, Ljava/util/Random;

    invoke-direct {v6}, Ljava/util/Random;-><init>()V

    new-instance v13, Lcom/yuelan/dreampay/thread/ImageDownloader;

    invoke-direct {v13}, Lcom/yuelan/dreampay/thread/ImageDownloader;-><init>()V

    const-string v6, "anim"

    const-string v7, "mili_smspay_translation_animation"

    move-object/from16 v0, p0

    invoke-static {v0, v6, v7}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p0

    invoke-static {v0, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v20

    new-instance v21, Lcom/yuelan/dreampay/common/AnalysisAdData;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/yuelan/dreampay/common/AnalysisAdData;-><init>(Landroid/content/Context;)V

    const-string v6, "type2"

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/yuelan/dreampay/common/AnalysisAdData;->analysisData(Ljava/lang/String;)Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v5, :cond_4

    const-string v6, "no"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "type2"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "buttonText1"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "buttonText2"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object/from16 v18, v3

    move-object/from16 v17, v4

    :goto_1
    new-instance v3, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    const/4 v5, 0x1

    const-string v6, ""

    const-string v7, "\u786e\u5b9a"

    const-string v8, "\u68c0\u6d4b\u5230\u60a8\u672a\u5f00\u542f\u7f51\u7edc\n\u8bf7\u5f00\u542f\u7f51\u7edc\u540e\u91cd\u65b0\u5c1d\u8bd5"

    const/4 v9, 0x0

    new-instance v10, Lcom/yuelan/dreampay/pay/N;

    invoke-direct {v10}, Lcom/yuelan/dreampay/pay/N;-><init>()V

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v10}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    new-instance v22, Landroid/app/Dialog;

    const-string v4, "style"

    const-string v5, "mili_smspay_dialog"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const-string v5, "layout"

    const-string v6, "mii_smspay_stop_dialog"

    move-object/from16 v0, p0

    invoke-static {v0, v5, v6}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v23

    const-string v4, "id"

    const-string v5, "mili_smspy_stop_dialog_game_name_text"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v14, v4

    check-cast v14, Landroid/widget/TextView;

    const-string v4, "id"

    const-string v5, "mili_smspy_stop_dialog_game_app_size"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    const-string v4, "id"

    const-string v5, "mili_smspy_stop_dialog_people"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Landroid/widget/TextView;

    const-string v4, "id"

    const-string v5, "mili_smspy_stop_dialog_game_introduce"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    const-string v4, "id"

    const-string v5, "mili_smspy_stop_dialog_game_icon"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    const-string v4, "id"

    const-string v5, "mili_smspay_stop_dialog_tis_change"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v16, v4

    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v17}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "id"

    const-string v5, "mili_smspay_stop_dialog_tis_demo"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v17, v4

    check-cast v17, Landroid/widget/TextView;

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v4, "id"

    const-string v5, "mili_smspay_stop_dialog_close"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v18, v4

    check-cast v18, Landroid/widget/ImageView;

    const-string v4, "id"

    const-string v5, "mili_smspay_stop_dialog_layout"

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Lcom/yuelan/codelib/comm/App;->getIdByName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v19, v4

    check-cast v19, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eqz v4, :cond_2

    sget v4, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v4, v5, :cond_1

    const/4 v4, 0x0

    sput v4, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    :cond_1
    move-object/from16 v0, v21

    iget-object v5, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    iget-object v4, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    sget v6, Lcom/yuelan/dreampay/pay/MiLiSmsPaySDK;->index:I

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/yuelan/dreampay/date/AppInfo;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/yuelan/dreampay/date/AppInfo;->getPlayerNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "M"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/yuelan/dreampay/date/AppInfo;->getSlogan()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-instance v8, Lcom/yuelan/dreampay/pay/O;

    invoke-direct {v8, v12}, Lcom/yuelan/dreampay/pay/O;-><init>(Landroid/widget/ImageView;)V

    const/16 v9, 0xc8

    move-object v4, v13

    move-object/from16 v7, p0

    invoke-virtual/range {v4 .. v9}, Lcom/yuelan/dreampay/thread/ImageDownloader;->imageDownload(Ljava/lang/String;Landroid/widget/ImageView;Landroid/content/Context;Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;I)V

    new-instance v4, Lcom/yuelan/dreampay/pay/P;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v22

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/yuelan/dreampay/pay/P;-><init>(Lcom/yuelan/dreampay/common/AnalysisAdData;Landroid/content/Context;Landroid/app/Dialog;Lcom/yuelan/dreampay/view/BaseTisDiaolog;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    new-instance v3, Lcom/yuelan/dreampay/pay/R;

    move-object/from16 v4, v19

    move-object/from16 v5, v20

    move-object/from16 v6, v21

    move-object/from16 v7, p0

    move-object v8, v15

    move-object v9, v14

    invoke-direct/range {v3 .. v13}, Lcom/yuelan/dreampay/pay/R;-><init>(Landroid/widget/RelativeLayout;Landroid/view/animation/Animation;Lcom/yuelan/dreampay/common/AnalysisAdData;Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/yuelan/dreampay/thread/ImageDownloader;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/yuelan/dreampay/pay/T;

    move-object/from16 v0, v22

    invoke-direct {v3, v0}, Lcom/yuelan/dreampay/pay/T;-><init>(Landroid/app/Dialog;)V

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Lcom/yuelan/dreampay/pay/U;

    invoke-direct {v3}, Lcom/yuelan/dreampay/pay/U;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    move-object/from16 v0, v21

    iget-object v3, v0, Lcom/yuelan/dreampay/common/AnalysisAdData;->appNoExitList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {v22 .. v22}, Landroid/app/Dialog;->show()V

    :cond_3
    move-object/from16 v0, v22

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    const/4 v3, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual/range {v22 .. v23}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    move-object/from16 v18, v3

    move-object/from16 v17, v4

    goto/16 :goto_1
.end method
