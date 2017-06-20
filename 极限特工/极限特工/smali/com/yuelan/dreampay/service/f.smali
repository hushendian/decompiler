.class final Lcom/yuelan/dreampay/service/f;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/ShieldSmsService;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/service/ShieldSmsService;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "select * from download_info where packagename = ?"

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->b(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    new-instance v2, Lcom/yuelan/codelib/download/DownloadDB;

    iget-object v3, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {v2, v3}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/codelib/download/DownloadDB;)V

    :cond_0
    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->b(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/yuelan/codelib/download/DownloadDB;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "0"

    invoke-static {v1, v2, v3}, Lcom/yuelan/dreampay/common/AppDo;->InstallApkRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_4
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "select * from download_info where packagename = ?"

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->b(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    new-instance v2, Lcom/yuelan/codelib/download/DownloadDB;

    iget-object v3, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-direct {v2, v3}, Lcom/yuelan/codelib/download/DownloadDB;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v2}, Lcom/yuelan/dreampay/service/ShieldSmsService;->a(Lcom/yuelan/dreampay/service/ShieldSmsService;Lcom/yuelan/codelib/download/DownloadDB;)V

    :cond_5
    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    invoke-static {v1}, Lcom/yuelan/dreampay/service/ShieldSmsService;->b(Lcom/yuelan/dreampay/service/ShieldSmsService;)Lcom/yuelan/codelib/download/DownloadDB;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/yuelan/codelib/download/DownloadDB;->query(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yuelan/codelib/utils/AppUtil;->checkApkExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/yuelan/dreampay/service/f;->a:Lcom/yuelan/dreampay/service/ShieldSmsService;

    const/16 v2, 0xb

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/yuelan/dreampay/common/AppDo;->InstallApkRecord(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method
