.class final Lcom/yuelan/dreampay/adapter/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/yuelan/dreampay/listen/DialogClickListener;


# instance fields
.field final synthetic a:Lcom/yuelan/dreampay/adapter/c;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yuelan/dreampay/adapter/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/yuelan/dreampay/adapter/d;->a:Lcom/yuelan/dreampay/adapter/c;

    iput-object p2, p0, Lcom/yuelan/dreampay/adapter/d;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/yuelan/dreampay/adapter/d;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/yuelan/dreampay/adapter/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/yuelan/dreampay/adapter/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/yuelan/dreampay/adapter/d;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/yuelan/dreampay/adapter/d;->g:Ljava/lang/String;

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

    iget-object v0, p0, Lcom/yuelan/dreampay/adapter/d;->a:Lcom/yuelan/dreampay/adapter/c;

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/c;->a(Lcom/yuelan/dreampay/adapter/c;)Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;

    move-result-object v0

    invoke-static {v0}, Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;->a(Lcom/yuelan/dreampay/adapter/DownLoadListViewAdapter;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yuelan/dreampay/adapter/d;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/yuelan/dreampay/adapter/d;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/yuelan/dreampay/adapter/d;->d:Ljava/lang/String;

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

    iget-object v7, p0, Lcom/yuelan/dreampay/adapter/d;->e:Ljava/lang/String;

    iget-object v8, p0, Lcom/yuelan/dreampay/adapter/d;->f:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/yuelan/dreampay/adapter/d;->g:Ljava/lang/String;

    const-string v11, "2"

    const-string v12, "\u5b89\u88c5\u4e4b\u540e\u6709\u60ca\u559c\u54e6!"

    const-string v13, "1"

    invoke-static/range {v0 .. v13}, Lcom/yuelan/codelib/download/DownloadFileUtil;->goToDownloadApkSelectInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
