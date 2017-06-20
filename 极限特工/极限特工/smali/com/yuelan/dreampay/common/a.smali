.class final Lcom/yuelan/dreampay/common/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/thread/ImageDownloader$OnImageDownload;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDownloadSucc(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 10

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v9, Lcom/yuelan/codelib/download/NotifyView;

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {v9, v0}, Lcom/yuelan/codelib/download/NotifyView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v1}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/yuelan/dreampay/service/StartReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "notifycationdownload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "nid"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filename"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apkUrl"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "apksize"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "iconbitmap"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "iconurl"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "packagename"

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v1}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v2}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-static {}, Lcom/yuelan/codelib/utils/TimeUtil;->getNowTime()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->b(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v3, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v3}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v5

    iget-object v3, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v3}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v6

    move-object v3, v2

    invoke-static/range {v0 .. v6}, Lcom/yuelan/dreampay/common/AppDo;->CloseDialogTimesRecord(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getSlogan()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/yuelan/dreampay/common/a;->a:Lcom/yuelan/dreampay/common/AnalysisNotifycationData;

    invoke-static {v0}, Lcom/yuelan/dreampay/common/AnalysisNotifycationData;->a(Lcom/yuelan/dreampay/common/AnalysisNotifycationData;)Lcom/yuelan/dreampay/date/AppInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/yuelan/codelib/download/NotifyView;->showBaseView(Ljava/lang/String;Landroid/graphics/Bitmap;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
