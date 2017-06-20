.class final Lcom/yuelan/dreampay/pay/Y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Lcom/yuelan/dreampay/date/AppInfo;

.field private final synthetic c:Landroid/app/Dialog;

.field private final synthetic d:Lcom/yuelan/dreampay/listen/ExitListener;

.field private final synthetic e:Lcom/yuelan/dreampay/view/BaseTisDiaolog;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;Landroid/app/Dialog;Lcom/yuelan/dreampay/listen/ExitListener;Lcom/yuelan/dreampay/view/BaseTisDiaolog;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/Y;->c:Landroid/app/Dialog;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/Y;->d:Lcom/yuelan/dreampay/listen/ExitListener;

    iput-object p5, p0, Lcom/yuelan/dreampay/pay/Y;->e:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 14

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->hasNetWork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/yuelan/codelib/utils/NetWorkUtil;->getNetWork(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v3}, Lcom/yuelan/dreampay/date/AppInfo;->getAppUrl()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    new-instance v5, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/yuelan/dreampay/date/ConFigFile;->SD_APKPath:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iget-object v7, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v10}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->d:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/ExitListener;->download()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    const/4 v2, 0x1

    const-string v3, "\u5f00\u542fWIFI"

    const-string v4, "\u7ee7\u7eed\u4e0b\u8f7d"

    const-string v5, "\u5f53\u524d\u4f7f\u7528\u7684\u79fb\u52a8\u7f51\u7edc\u4f1a\u4ea7\u751f\u6570\u636e\u4fe1\u606f\u8d39\u5efa\n\u8bae\u60a8\u5f00\u542fWIFI\u540e\u4e0b\u8f7d\uff0c\u662f\u5426\u7ee7\u7eed\uff1f"

    new-instance v7, Lcom/yuelan/dreampay/pay/Z;

    iget-object v8, p0, Lcom/yuelan/dreampay/pay/Y;->a:Landroid/content/Context;

    iget-object v9, p0, Lcom/yuelan/dreampay/pay/Y;->b:Lcom/yuelan/dreampay/date/AppInfo;

    iget-object v10, p0, Lcom/yuelan/dreampay/pay/Y;->d:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-direct {v7, p0, v8, v9, v10}, Lcom/yuelan/dreampay/pay/Z;-><init>(Lcom/yuelan/dreampay/pay/Y;Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;Lcom/yuelan/dreampay/listen/ExitListener;)V

    invoke-direct/range {v0 .. v7}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;-><init>(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/yuelan/dreampay/listen/DialogClickListener;)V

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Y;->e:Lcom/yuelan/dreampay/view/BaseTisDiaolog;

    invoke-virtual {v0}, Lcom/yuelan/dreampay/view/BaseTisDiaolog;->show()V

    goto :goto_0
.end method
