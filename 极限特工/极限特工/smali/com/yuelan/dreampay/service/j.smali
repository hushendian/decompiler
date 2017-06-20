.class final Lcom/yuelan/dreampay/service/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/DialogClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/service/StartReceiver;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/service/StartReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/service/j;->a:Lcom/yuelan/dreampay/service/StartReceiver;

    iput-object p2, p0, Lcom/yuelan/dreampay/service/j;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

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

    iget-object v0, p0, Lcom/yuelan/dreampay/service/j;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v2, "nid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v3, "filename"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v4, "apkUrl"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v7, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v8, "apksize"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v9, "iconurl"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x4

    iget-object v10, p0, Lcom/yuelan/dreampay/service/j;->c:Landroid/content/Intent;

    const-string v11, "packagename"

    invoke-virtual {v10, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
