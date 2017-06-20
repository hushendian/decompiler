.class final Lcom/yuelan/dreampay/pay/Z;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/DialogClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/pay/Y;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Lcom/yuelan/dreampay/date/AppInfo;

.field private final synthetic d:Lcom/yuelan/dreampay/listen/ExitListener;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/pay/Y;Landroid/content/Context;Lcom/yuelan/dreampay/date/AppInfo;Lcom/yuelan/dreampay/listen/ExitListener;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/pay/Z;->a:Lcom/yuelan/dreampay/pay/Y;

    iput-object p2, p0, Lcom/yuelan/dreampay/pay/Z;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    iput-object p4, p0, Lcom/yuelan/dreampay/pay/Z;->d:Lcom/yuelan/dreampay/listen/ExitListener;

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
    .locals 14

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Z;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v1}, Lcom/yuelan/dreampay/date/AppInfo;->getAppId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v2}, Lcom/yuelan/dreampay/date/AppInfo;->getAppName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

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

    iget-object v7, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v7}, Lcom/yuelan/dreampay/date/AppInfo;->getAppSize()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v8}, Lcom/yuelan/dreampay/date/AppInfo;->getIconUrl()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x2

    iget-object v10, p0, Lcom/yuelan/dreampay/pay/Z;->c:Lcom/yuelan/dreampay/date/AppInfo;

    invoke-virtual {v10}, Lcom/yuelan/dreampay/date/AppInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/yuelan/dreampay/pay/Z;->d:Lcom/yuelan/dreampay/listen/ExitListener;

    invoke-interface {v0}, Lcom/yuelan/dreampay/listen/ExitListener;->download()V

    return-void
.end method
